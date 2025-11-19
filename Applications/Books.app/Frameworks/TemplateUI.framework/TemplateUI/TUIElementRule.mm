@interface TUIElementRule
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementRule

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v10 = [v8 colorForAttribute:51 node:var0];
  [v9 setColor:v10];

  v11 = [v8 stringForAttribute:16 node:var0];

  [v9 setAxis:{+[TUIBox axisFromString:](TUIBox, "axisFromString:", v11)}];
}

@end