@interface TUIElementLayoutOption
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementLayoutOption

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v11 = a3;
  [v8 floatForAttribute:135 withDefault:var0 node:NAN];
  [v11 setMinScale:?];
  [v8 floatForAttribute:131 withDefault:var0 node:NAN];
  v10 = v9;

  [v11 setMaxScale:v10];
}

@end