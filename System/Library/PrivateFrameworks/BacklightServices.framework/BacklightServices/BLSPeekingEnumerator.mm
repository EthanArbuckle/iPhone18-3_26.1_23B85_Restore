@interface BLSPeekingEnumerator
+ (id)peekingEnumeratorWithEnumerator:(id)enumerator;
- (id)initWithEnumerator:(id *)enumerator;
- (id)nextObject;
- (id)peekNextObject;
@end

@implementation BLSPeekingEnumerator

+ (id)peekingEnumeratorWithEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v4 = [[BLSPeekingEnumerator alloc] initWithEnumerator:enumeratorCopy];

  return v4;
}

- (id)nextObject
{
  v3 = self->_peekedObject;
  if (v3)
  {
    nextObject = v3;
    peekedObject = self->_peekedObject;
    self->_peekedObject = 0;
  }

  else
  {
    nextObject = [(NSEnumerator *)self->_enumerator nextObject];
  }

  return nextObject;
}

- (id)peekNextObject
{
  nextObject = self->_peekedObject;
  if (!nextObject)
  {
    nextObject = [(NSEnumerator *)self->_enumerator nextObject];
    objc_storeStrong(&self->_peekedObject, nextObject);
  }

  return nextObject;
}

- (id)initWithEnumerator:(id *)enumerator
{
  v4 = a2;
  if (enumerator)
  {
    v7.receiver = enumerator;
    v7.super_class = BLSPeekingEnumerator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    enumerator = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return enumerator;
}

@end