@interface TUIElementMediaBackdrop
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementMediaBackdrop

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  contextCopy = context;
  var0 = node.var0;
  v12 = [attributesCopy stringForAttribute:174 node:node.var0];
  [boxCopy setLoad:TUIResourceLoadFromString(v12)];

  v13 = [attributesCopy stringForAttribute:86 node:var0];
  v14 = [TUIBox layerContentsGravityFromString:v13];
  [boxCopy setContentsGravity:v14];

  [attributesCopy floatForAttribute:60 node:var0];
  [boxCopy setCornerRadius:?];
  [boxCopy setContinuousCorners:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 59, 1, var0)}];
  v15 = [attributesCopy colorForAttribute:80 node:var0];
  [boxCopy setFallbackColor:v15];

  [boxCopy setCrossfadesContents:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 63, var0)}];
  [boxCopy setShouldRasterize:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 163, var0)}];
  [attributesCopy floatForAttribute:146 withDefault:var0 node:1.0];
  v17 = fmin(v16, 1.0);
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  [boxCopy setOpacity:v17];
  v18 = [attributesCopy stringForAttribute:37 node:var0];
  v19 = [(TUIBox *)TUIImageBox blendModeFromString:v18];
  [boxCopy setBlendMode:v19];

  v20 = [attributesCopy stringForAttribute:215 node:var0];
  if (v20)
  {
    [boxCopy setUrlString:v20];
    v21 = [contextCopy baseURLForNode:var0];
    [boxCopy setBaseURL:v21];
  }

  else
  {
    v22 = [attributesCopy stringForAttribute:173 node:var0];
    [boxCopy setResourceKind:v22];

    v23 = [attributesCopy objectForAttribute:172 node:var0];
    [boxCopy setResourceInstance:v23];

    v21 = [attributesCopy objectForAttribute:175 node:var0];
    [boxCopy setResourceOptions:v21];
  }
}

@end