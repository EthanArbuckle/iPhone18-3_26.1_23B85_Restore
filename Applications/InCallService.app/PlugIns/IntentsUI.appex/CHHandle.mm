@interface CHHandle
- (TUHandle)tuHandle;
@end

@implementation CHHandle

- (TUHandle)tuHandle
{
  value = [(CHHandle *)self value];
  if (value)
  {
    type = [(CHHandle *)self type];
    if (type > 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = qword_1000A1408[type];
    }

    v6 = [[TUHandle alloc] initWithType:v5 value:value];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end