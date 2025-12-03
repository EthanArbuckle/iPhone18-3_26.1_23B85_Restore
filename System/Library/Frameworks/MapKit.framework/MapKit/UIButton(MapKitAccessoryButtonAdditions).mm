@interface UIButton(MapKitAccessoryButtonAdditions)
- (id)_mapkit_accessoryControlToExtendWithCallout;
@end

@implementation UIButton(MapKitAccessoryButtonAdditions)

- (id)_mapkit_accessoryControlToExtendWithCallout
{
  if (([self buttonType] - 2) > 2)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end