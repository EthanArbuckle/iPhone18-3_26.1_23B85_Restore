@interface _SFWebExtensionSettingsAlertItem
+ (id)buttonWithTitle:(id)a3 textStyle:(id)a4 icon:(id)a5 extension:(id)a6 handler:(id)a7;
@end

@implementation _SFWebExtensionSettingsAlertItem

+ (id)buttonWithTitle:(id)a3 textStyle:(id)a4 icon:(id)a5 extension:(id)a6 handler:(id)a7
{
  v12 = a6;
  v13 = [a1 singleLineButtonWithTitle:a3 textStyle:a4 icon:a5 action:29 handler:a7];
  v14 = v13[25];
  v13[25] = v12;

  return v13;
}

@end