@interface _SFWebExtensionSettingsAlertItem
+ (id)buttonWithTitle:(id)title textStyle:(id)style icon:(id)icon extension:(id)extension handler:(id)handler;
@end

@implementation _SFWebExtensionSettingsAlertItem

+ (id)buttonWithTitle:(id)title textStyle:(id)style icon:(id)icon extension:(id)extension handler:(id)handler
{
  extensionCopy = extension;
  v13 = [self singleLineButtonWithTitle:title textStyle:style icon:icon action:29 handler:handler];
  v14 = v13[25];
  v13[25] = extensionCopy;

  return v13;
}

@end