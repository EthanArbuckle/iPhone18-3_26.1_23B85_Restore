@interface BCSContinuityCameraActionPickerItem
- (id)icon;
@end

@implementation BCSContinuityCameraActionPickerItem

- (id)icon
{
  UIImageClass = getUIImageClass();

  return [UIImageClass _systemImageNamed:@"appletv.fill"];
}

@end