@interface TUIElementHoverRegion
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementHoverRegion

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  v9 = [a5 stringForAttribute:138 node:var0];
  [v8 setRegionName:v9];
}

@end