@interface ACDLazyArray
- (ACDLazyArray)initWithCoder:(id)coder;
- (ACDLazyArray)initWithInitializer:(id)initializer;
- (ACDLazyArray)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
@end

@implementation ACDLazyArray

- (ACDLazyArray)initWithInitializer:(id)initializer
{
  initializerCopy = initializer;
  v11.receiver = self;
  v11.super_class = ACDLazyArray;
  v5 = [(ACDLazyArray *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_initializationLock._os_unfair_lock_opaque = 0;
    v7 = [initializerCopy copy];
    initializationBlock = v6->_initializationBlock;
    v6->_initializationBlock = v7;

    underlyingArray = v6->_underlyingArray;
    v6->_underlyingArray = 0;
  }

  return v6;
}

- (ACDLazyArray)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = ACDLazyArray;
  v3 = [(ACDLazyArray *)&v8 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v3->_initializationLock._os_unfair_lock_opaque = 0;
    initializationBlock = v3->_initializationBlock;
    v3->_initializationBlock = 0;

    underlyingArray = v4->_underlyingArray;
    v4->_underlyingArray = 0;
  }

  return v4;
}

- (ACDLazyArray)initWithObjects:(const void *)objects count:(unint64_t)count
{
  [(ACDLazyArray *)self doesNotRecognizeSelector:a2, count];

  return 0;
}

- (unint64_t)count
{
  _ACDLazyArrayInitializeIfNecessary(self);
  underlyingArray = self->_underlyingArray;

  return [(NSArray *)underlyingArray count];
}

- (id)objectAtIndex:(unint64_t)index
{
  _ACDLazyArrayInitializeIfNecessary(self);
  underlyingArray = self->_underlyingArray;

  return [(NSArray *)underlyingArray objectAtIndex:index];
}

@end