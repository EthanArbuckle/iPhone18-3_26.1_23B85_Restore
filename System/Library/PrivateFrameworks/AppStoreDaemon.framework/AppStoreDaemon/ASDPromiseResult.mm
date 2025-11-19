@interface ASDPromiseResult
+ (id)resultWithError:(id)a3;
+ (id)resultWithValue:(id)a3;
- (id)_initWithValue:(void *)a3 error:;
@end

@implementation ASDPromiseResult

+ (id)resultWithError:(id)a3
{
  v3 = a3;
  v4 = [[ASDPromiseResult alloc] _initWithValue:v3 error:?];

  return v4;
}

- (id)_initWithValue:(void *)a3 error:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = ASDPromiseResult;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      if (v6)
      {
        v9 = v8 + 2;
        v10 = a2;
      }

      else
      {
        if (!v7)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PromiseResult must represent either a value or an error"];
          goto LABEL_8;
        }

        v9 = v8 + 1;
        v10 = a3;
      }

      objc_storeStrong(v9, v10);
    }
  }

LABEL_8:

  return a1;
}

+ (id)resultWithValue:(id)a3
{
  v3 = a3;
  v4 = [[ASDPromiseResult alloc] _initWithValue:v3 error:0];

  return v4;
}

@end