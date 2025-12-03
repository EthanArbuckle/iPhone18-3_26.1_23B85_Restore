@interface AMSThreadSafeObject
- (AMSThreadSafeObject)initWithObject:(id)object;
- (id)accessAndSetObjectWithBlock:(id)block;
- (id)object;
- (id)underlyingObject;
- (void)read:(id)read;
- (void)readWrite:(id)write;
- (void)setObject:(id)object;
- (void)setUnderlyingObject:(id)object;
@end

@implementation AMSThreadSafeObject

- (id)underlyingObject
{
  os_unfair_lock_assert_owner(&self->_lock);
  underlyingObject = self->_underlyingObject;

  return underlyingObject;
}

- (AMSThreadSafeObject)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = AMSThreadSafeObject;
  v6 = [(AMSThreadSafeObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_underlyingObject, object);
  }

  return v7;
}

- (void)setUnderlyingObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_assert_owner(&self->_lock);
  underlyingObject = self->_underlyingObject;
  self->_underlyingObject = objectCopy;
}

- (void)read:(id)read
{
  readCopy = read;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  underlyingObject = [(AMSThreadSafeObject *)self underlyingObject];
  readCopy[2](readCopy, underlyingObject);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)readWrite:(id)write
{
  writeCopy = write;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  underlyingObject = [(AMSThreadSafeObject *)self underlyingObject];
  v6 = writeCopy[2](writeCopy, underlyingObject);

  [(AMSThreadSafeObject *)self setUnderlyingObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)accessAndSetObjectWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  underlyingObject = [(AMSThreadSafeObject *)self underlyingObject];
  v6 = blockCopy[2](blockCopy, underlyingObject);

  [(AMSThreadSafeObject *)self setUnderlyingObject:v6];
  os_unfair_lock_lock(&self->_lock);

  return v6;
}

- (id)object
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock_with_options();
  underlyingObject = [(AMSThreadSafeObject *)self underlyingObject];
  os_unfair_lock_unlock(&self->_lock);

  return underlyingObject;
}

- (void)setObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock_with_options();
  [(AMSThreadSafeObject *)self setUnderlyingObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end