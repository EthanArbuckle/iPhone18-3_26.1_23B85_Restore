@interface INPerson(AssistantCardService)
- (id)acs_formattedPersonName;
@end

@implementation INPerson(AssistantCardService)

- (id)acs_formattedPersonName
{
  displayName = [self displayName];
  if ([displayName length])
  {
    displayName2 = [self displayName];
  }

  else
  {
    displayName2 = 0;
  }

  return displayName2;
}

@end