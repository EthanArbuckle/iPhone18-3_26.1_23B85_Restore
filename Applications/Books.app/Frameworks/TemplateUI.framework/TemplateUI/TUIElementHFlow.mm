@interface TUIElementHFlow
+ (id)containerAttributes;
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementHFlow

+ (id)supportedAttributes
{
  if (qword_2E62E0 != -1)
  {
    sub_19A00C();
  }

  v3 = qword_2E62D8;

  return v3;
}

+ (id)containerAttributes
{
  if (qword_2E62F0 != -1)
  {
    sub_19A020();
  }

  v3 = qword_2E62E8;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v10 = [v8 stringForAttribute:96 node:var0];
  [v9 setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v10)}];

  v11 = [v8 lengthForAttribute:101 node:var0];
  [v9 setHspacing:{v11, v12}];
  v13 = [v8 lengthForAttribute:223 node:var0];
  [v9 setVspacing:{v13, v14}];
  v15 = [v8 stringForAttribute:120 node:var0];

  [v9 setLayoutMode:{+[TUIBox layoutModeFromString:](TUIBox, "layoutModeFromString:", v15)}];
}

@end