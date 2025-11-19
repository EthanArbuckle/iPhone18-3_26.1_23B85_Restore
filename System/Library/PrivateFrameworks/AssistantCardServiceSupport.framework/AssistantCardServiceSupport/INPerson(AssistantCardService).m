@interface INPerson(AssistantCardService)
- (id)acs_formattedPersonName;
@end

@implementation INPerson(AssistantCardService)

- (id)acs_formattedPersonName
{
  v2 = [a1 displayName];
  if ([v2 length])
  {
    v3 = [a1 displayName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end