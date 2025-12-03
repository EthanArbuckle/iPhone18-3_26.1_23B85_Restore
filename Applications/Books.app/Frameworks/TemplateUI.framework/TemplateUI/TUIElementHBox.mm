@interface TUIElementHBox
+ (id)containerAttributes;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureChildBox:(id)box withChildNode:(id)node attributes:(id)attributes builder:(id)builder context:(id)context;
@end

@implementation TUIElementHBox

+ (id)supportedAttributes
{
  if (qword_2E6110 != -1)
  {
    sub_199BAC();
  }

  v3 = qword_2E6108;

  return v3;
}

+ (id)containerAttributes
{
  if (qword_2E6120 != -1)
  {
    sub_199BC0();
  }

  v3 = qword_2E6118;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v10 = [attributesCopy stringForAttribute:96 node:var0];
  [boxCopy setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v10)}];

  v11 = [attributesCopy stringForAttribute:120 node:var0];

  [boxCopy setLayoutMode:{+[TUIBox layoutModeFromString:](TUIBox, "layoutModeFromString:", v11)}];
}

+ (void)configureChildBox:(id)box withChildNode:(id)node attributes:(id)attributes builder:(id)builder context:(id)context
{
  attributesCopy = attributes;
  boxCopy = box;
  v10 = [attributesCopy stringForAttribute:97 node:node.var0];
  [boxCopy setHcompressed:{+[TUIBox compressedFromString:](TUIBox, "compressedFromString:", v10)}];

  v11 = [attributesCopy lengthForAttribute:167 node:node.var0];
  [boxCopy setRelativeWidth:{v11, v12}];
  dynamicArrayWindowingBox = [boxCopy dynamicArrayWindowingBox];

  if (dynamicArrayWindowingBox)
  {
    [attributesCopy floatForAttribute:79 node:node.var0];
    [dynamicArrayWindowingBox setEstimatedWidth:?];
    [attributesCopy floatForAttribute:77 node:node.var0];
    [dynamicArrayWindowingBox setEstimatedHeight:?];
    [dynamicArrayWindowingBox estimatedHeight];
    [attributesCopy floatForAttribute:78 withDefault:node.var0 node:?];
    [dynamicArrayWindowingBox setEstimatedHeightAbovePivot:?];
  }
}

@end