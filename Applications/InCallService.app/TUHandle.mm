@interface TUHandle
- (CNGeminiHandle)cnHandle;
@end

@implementation TUHandle

- (CNGeminiHandle)cnHandle
{
  value = [(TUHandle *)self value];
  if (value)
  {
    type = [(TUHandle *)self type];
    if (type == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    if (type == 3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = [[CNGeminiHandle alloc] initWithString:value type:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end