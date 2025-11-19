@interface INCallRecord(Deprecated)
- (INPerson)caller;
@end

@implementation INCallRecord(Deprecated)

- (INPerson)caller
{
  v3 = [(INCallRecord *)self participants];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(INCallRecord *)self participants];
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end