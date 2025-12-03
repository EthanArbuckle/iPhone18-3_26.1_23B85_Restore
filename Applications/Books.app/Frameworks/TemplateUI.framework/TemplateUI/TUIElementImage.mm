@interface TUIElementImage
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementImage

+ (id)supportedAttributes
{
  if (qword_2E6510 != -1)
  {
    sub_19B6E8();
  }

  v3 = qword_2E6508;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  contextCopy = context;
  v11 = [attributesCopy stringForAttribute:174 node:node.var0];
  [boxCopy setLoad:TUIResourceLoadFromString(v11)];

  v12 = [attributesCopy stringForAttribute:87 node:node.var0];
  [boxCopy setFilter:v12];

  v13 = [attributesCopy stringForAttribute:86 node:node.var0];
  v14 = [TUIBox layerContentsGravityFromString:v13];
  [boxCopy setContentsGravity:v14];

  v15 = [attributesCopy lengthForAttribute:115 node:node.var0];
  [boxCopy setIntrinsicWidth:{v15, v16}];
  v17 = [attributesCopy lengthForAttribute:114 node:node.var0];
  [boxCopy setIntrinsicHeight:{v17, v18}];
  v19 = [attributesCopy colorForAttribute:126 node:node.var0];
  [boxCopy setMaskColor:v19];

  [attributesCopy floatForAttribute:60 node:node.var0];
  [boxCopy setCornerRadius:?];
  [boxCopy setContinuousCorners:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 59, 1, node.var0)}];
  v20 = [attributesCopy colorForAttribute:80 node:node.var0];
  [boxCopy setFallbackColor:v20];

  [boxCopy setHflipForRTL:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 99, node.var0)}];
  [boxCopy setCrossfadesContents:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 63, node.var0)}];
  [boxCopy setShouldRasterize:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 163, node.var0)}];
  [attributesCopy floatForAttribute:146 withDefault:node.var0 node:1.0];
  v22 = fmin(v21, 1.0);
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  [boxCopy setOpacity:v22];
  v23 = [attributesCopy stringForAttribute:37 node:node.var0];
  v24 = [(TUIBox *)TUIImageBox blendModeFromString:v23];
  [boxCopy setBlendMode:v24];

  [attributesCopy floatForAttribute:127 withDefault:node.var0 node:NAN];
  [boxCopy setMaxAspectRatio:?];
  v25 = [attributesCopy stringForAttribute:215 node:node.var0];
  if (v25)
  {
    [boxCopy setUrlString:v25];
    v26 = [contextCopy baseURLForNode:node.var0];
    [boxCopy setBaseURL:v26];
  }

  else
  {
    v27 = [attributesCopy stringForAttribute:173 node:node.var0];
    [boxCopy setResourceKind:v27];

    v28 = [attributesCopy objectForAttribute:172 node:node.var0];
    [boxCopy setResourceInstance:v28];

    v26 = [attributesCopy objectForAttribute:175 node:node.var0];
    [boxCopy setResourceOptions:v26];
  }
}

@end