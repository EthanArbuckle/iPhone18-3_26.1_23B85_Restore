@interface ASDPromiseResult
+ (id)resultWithError:(id)error;
+ (id)resultWithValue:(id)value;
- (id)_initWithValue:(void *)value error:;
@end

@implementation ASDPromiseResult

+ (id)resultWithError:(id)error
{
  errorCopy = error;
  v4 = [[ASDPromiseResult alloc] _initWithValue:errorCopy error:?];

  return v4;
}

- (id)_initWithValue:(void *)value error:
{
  v6 = a2;
  valueCopy = value;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = ASDPromiseResult;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      if (v6)
      {
        v9 = v8 + 2;
        valueCopy2 = a2;
      }

      else
      {
        if (!valueCopy)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PromiseResult must represent either a value or an error"];
          goto LABEL_8;
        }

        v9 = v8 + 1;
        valueCopy2 = value;
      }

      objc_storeStrong(v9, valueCopy2);
    }
  }

LABEL_8:

  return self;
}

+ (id)resultWithValue:(id)value
{
  valueCopy = value;
  v4 = [[ASDPromiseResult alloc] _initWithValue:valueCopy error:0];

  return v4;
}

@end