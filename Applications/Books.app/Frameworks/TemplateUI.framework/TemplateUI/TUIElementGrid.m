@interface TUIElementGrid
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementGrid

+ (id)supportedAttributes
{
  if (qword_2E65A8 != -1)
  {
    sub_19BC54();
  }

  v3 = qword_2E65A0;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v11 = a3;
  [v8 insetsForAttribute:112 node:var0];
  [v11 setInsets:?];
  [v11 setColumns:{fmax(objc_msgSend(v8, "integerForAttribute:withDefault:node:", 52, 1, var0), 1.0)}];
  [v8 floatForAttribute:195 node:var0];
  v10 = v9;

  [v11 setSpacing:v10];
}

@end