@interface INCallRecord(Deprecated)
- (INPerson)caller;
@end

@implementation INCallRecord(Deprecated)

- (INPerson)caller
{
  participants = [(INCallRecord *)self participants];
  v4 = [participants count];

  if (v4)
  {
    participants2 = [(INCallRecord *)self participants];
    v6 = [participants2 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end