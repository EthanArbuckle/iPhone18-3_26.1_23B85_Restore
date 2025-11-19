@interface UIButton(MapKitAccessoryButtonAdditions)
- (id)_mapkit_accessoryControlToExtendWithCallout;
@end

@implementation UIButton(MapKitAccessoryButtonAdditions)

- (id)_mapkit_accessoryControlToExtendWithCallout
{
  if (([a1 buttonType] - 2) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

@end