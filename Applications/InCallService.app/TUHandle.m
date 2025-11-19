@interface TUHandle
- (CNGeminiHandle)cnHandle;
@end

@implementation TUHandle

- (CNGeminiHandle)cnHandle
{
  v3 = [(TUHandle *)self value];
  if (v3)
  {
    v4 = [(TUHandle *)self type];
    if (v4 == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    if (v4 == 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = [[CNGeminiHandle alloc] initWithString:v3 type:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end