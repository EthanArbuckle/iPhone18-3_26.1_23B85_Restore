@interface TUIElementAspectBox
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureChildBox:(id)a3 withChildNode:(id)a4 attributes:(id)a5 builder:(id)a6 context:(id)a7;
@end

@implementation TUIElementAspectBox

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  [a5 floatForAttribute:13 withDefault:var0 node:1.0];
  [v8 setAspectRatio:?];
}

+ (void)configureChildBox:(id)a3 withChildNode:(id)a4 attributes:(id)a5 builder:(id)a6 context:(id)a7
{
  var0 = a4.var0;
  v9 = a5;
  v10 = a3;
  v11 = [v9 stringForAttribute:96 node:var0];
  [v10 setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v11)}];

  v12 = [v9 stringForAttribute:218 node:var0];

  [v10 setValign:{+[TUIBox valignFromString:](TUIBox, "valignFromString:", v12)}];
}

@end