@interface TUIElementHFade
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementHFade

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v11 = a3;
  [v8 floatForAttribute:147 node:var0];
  [v11 setPadding:?];
  [v8 floatForAttribute:90 node:var0];
  v10 = v9;

  [v11 setGradientWidth:v10];
}

@end