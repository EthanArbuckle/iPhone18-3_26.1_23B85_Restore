@interface BSUIElementSeriesStackImage
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation BSUIElementSeriesStackImage

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  contextCopy = context;
  v11 = [attributesCopy stringForAttribute:174 node:node.var0];
  [boxCopy setLoad:TUIResourceLoadFromString()];

  v12 = [attributesCopy stringForAttribute:87 node:node.var0];
  [boxCopy setFilter:v12];

  v13 = [attributesCopy stringForAttribute:86 node:node.var0];
  v14 = [TUIBox layerContentsGravityFromString:v13];
  [boxCopy setContentsGravity:v14];

  v15 = [attributesCopy lengthForAttribute:225 node:node.var0];
  [boxCopy setWidth:{v15, v16}];
  v17 = [attributesCopy lengthForAttribute:115 node:node.var0];
  [boxCopy setIntrinsicWidth:{v17, v18}];
  v19 = [attributesCopy lengthForAttribute:114 node:node.var0];
  [boxCopy setIntrinsicHeight:{v19, v20}];
  [attributesCopy floatForAttribute:127 withDefault:node.var0 node:1.56];
  [boxCopy setMaxAspectRatio:?];
  v21 = [attributesCopy colorForAttribute:80 node:node.var0];
  [boxCopy setFallbackColor:v21];

  v22 = [contextCopy baseURLForNode:node.var0];

  [boxCopy setBaseURL:v22];
  v23 = [attributesCopy stringArrayForAttribute:61 node:node.var0];
  if ([v23 count])
  {
    v24 = [attributesCopy stringArrayForAttribute:62 node:node.var0];
    [boxCopy setCoverFilters:v24];

    [boxCopy setCoverURLStrings:v23];
  }

  else
  {
    v25 = [attributesCopy stringForAttribute:173 node:node.var0];
    [boxCopy setResourceKind:v25];

    v26 = [attributesCopy objectForAttribute:172 node:node.var0];
    [boxCopy setResourceInstance:v26];

    v27 = [attributesCopy objectForAttribute:175 node:node.var0];
    [boxCopy setResourceOptions:v27];
  }
}

@end