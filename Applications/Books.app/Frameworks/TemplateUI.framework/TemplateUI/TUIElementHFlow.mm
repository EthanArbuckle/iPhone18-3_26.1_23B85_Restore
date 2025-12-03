@interface TUIElementHFlow
+ (id)containerAttributes;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
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

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v10 = [attributesCopy stringForAttribute:96 node:var0];
  [boxCopy setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v10)}];

  v11 = [attributesCopy lengthForAttribute:101 node:var0];
  [boxCopy setHspacing:{v11, v12}];
  v13 = [attributesCopy lengthForAttribute:223 node:var0];
  [boxCopy setVspacing:{v13, v14}];
  v15 = [attributesCopy stringForAttribute:120 node:var0];

  [boxCopy setLayoutMode:{+[TUIBox layoutModeFromString:](TUIBox, "layoutModeFromString:", v15)}];
}

@end