@interface BLSPeekingEnumerator
+ (id)peekingEnumeratorWithEnumerator:(id)a3;
- (id)initWithEnumerator:(id *)a1;
- (id)nextObject;
- (id)peekNextObject;
@end

@implementation BLSPeekingEnumerator

+ (id)peekingEnumeratorWithEnumerator:(id)a3
{
  v3 = a3;
  v4 = [[BLSPeekingEnumerator alloc] initWithEnumerator:v3];

  return v4;
}

- (id)nextObject
{
  v3 = self->_peekedObject;
  if (v3)
  {
    v4 = v3;
    peekedObject = self->_peekedObject;
    self->_peekedObject = 0;
  }

  else
  {
    v4 = [(NSEnumerator *)self->_enumerator nextObject];
  }

  return v4;
}

- (id)peekNextObject
{
  v3 = self->_peekedObject;
  if (!v3)
  {
    v3 = [(NSEnumerator *)self->_enumerator nextObject];
    objc_storeStrong(&self->_peekedObject, v3);
  }

  return v3;
}

- (id)initWithEnumerator:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = BLSPeekingEnumerator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

@end