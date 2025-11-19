@interface CHHandle
- (TUHandle)tuHandle;
@end

@implementation CHHandle

- (TUHandle)tuHandle
{
  v3 = [(CHHandle *)self value];
  if (v3)
  {
    v4 = [(CHHandle *)self type];
    if (v4 > 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = qword_1000A1408[v4];
    }

    v6 = [[TUHandle alloc] initWithType:v5 value:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end