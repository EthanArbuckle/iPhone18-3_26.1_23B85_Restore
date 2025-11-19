@interface AXInvertColors_Widgets
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Widgets

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WGWidgetListEditViewTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"WGWidgetListEditViewTableViewCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

@end