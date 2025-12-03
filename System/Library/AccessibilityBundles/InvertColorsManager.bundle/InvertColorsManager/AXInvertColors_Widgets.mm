@interface AXInvertColors_Widgets
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Widgets

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WGWidgetListEditViewTableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"WGWidgetListEditViewTableViewCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

@end