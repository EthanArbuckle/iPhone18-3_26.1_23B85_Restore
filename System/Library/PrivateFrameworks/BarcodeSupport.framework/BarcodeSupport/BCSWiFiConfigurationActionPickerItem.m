@interface BCSWiFiConfigurationActionPickerItem
- (UIImage)icon;
@end

@implementation BCSWiFiConfigurationActionPickerItem

- (UIImage)icon
{
  icon = self->_icon;
  if (icon)
  {
    v3 = icon;
  }

  else
  {
    v3 = [getUIImageClass() systemImageNamed:@"wifi"];
  }

  return v3;
}

@end