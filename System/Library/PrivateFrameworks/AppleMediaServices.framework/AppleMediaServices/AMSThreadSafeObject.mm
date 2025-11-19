@interface AMSThreadSafeObject
- (AMSThreadSafeObject)initWithObject:(id)a3;
- (id)accessAndSetObjectWithBlock:(id)a3;
- (id)object;
- (id)underlyingObject;
- (void)read:(id)a3;
- (void)readWrite:(id)a3;
- (void)setObject:(id)a3;
- (void)setUnderlyingObject:(id)a3;
@end

@implementation AMSThreadSafeObject

- (id)underlyingObject
{
  os_unfair_lock_assert_owner(&self->_lock);
  underlyingObject = self->_underlyingObject;

  return underlyingObject;
}

- (AMSThreadSafeObject)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSThreadSafeObject;
  v6 = [(AMSThreadSafeObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_underlyingObject, a3);
  }

  return v7;
}

- (void)setUnderlyingObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  underlyingObject = self->_underlyingObject;
  self->_underlyingObject = v4;
}

- (void)read:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(AMSThreadSafeObject *)self underlyingObject];
  v4[2](v4, v5);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)readWrite:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(AMSThreadSafeObject *)self underlyingObject];
  v6 = v4[2](v4, v5);

  [(AMSThreadSafeObject *)self setUnderlyingObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)accessAndSetObjectWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(AMSThreadSafeObject *)self underlyingObject];
  v6 = v4[2](v4, v5);

  [(AMSThreadSafeObject *)self setUnderlyingObject:v6];
  os_unfair_lock_lock(&self->_lock);

  return v6;
}

- (id)object
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock_with_options();
  v3 = [(AMSThreadSafeObject *)self underlyingObject];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock_with_options();
  [(AMSThreadSafeObject *)self setUnderlyingObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end