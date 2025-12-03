@interface _LSErrorEnumerator
- (_LSErrorEnumerator)initWithPreparationError:(id)error;
@end

@implementation _LSErrorEnumerator

- (_LSErrorEnumerator)initWithPreparationError:(id)error
{
  v7.receiver = self;
  v7.super_class = _LSErrorEnumerator;
  v4 = [(LSEnumerator *)&v7 _initWithContext:0];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 4, error);
  }

  return v5;
}

@end