@interface CLPlacemark(AssistantCardService)
- (id)acs_formattedNameOrStreetAddress;
@end

@implementation CLPlacemark(AssistantCardService)

- (id)acs_formattedNameOrStreetAddress
{
  name = [self name];
  if (![name length])
  {

LABEL_5:
    subThoroughfare = [self subThoroughfare];
    if ([subThoroughfare length])
    {
      subThoroughfare2 = [self subThoroughfare];
    }

    else
    {
      subThoroughfare2 = &stru_2853137F0;
    }

    thoroughfare = [self thoroughfare];
    if ([thoroughfare length])
    {
      thoroughfare2 = [self thoroughfare];
    }

    else
    {
      thoroughfare2 = &stru_2853137F0;
    }

    name2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", subThoroughfare2, thoroughfare2];

    goto LABEL_12;
  }

  name2 = [self name];

  if (!name2)
  {
    goto LABEL_5;
  }

LABEL_12:

  return name2;
}

@end