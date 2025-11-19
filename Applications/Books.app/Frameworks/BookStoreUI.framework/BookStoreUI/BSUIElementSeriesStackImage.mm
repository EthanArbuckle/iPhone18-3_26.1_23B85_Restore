@interface BSUIElementSeriesStackImage
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation BSUIElementSeriesStackImage

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v28 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v9 stringForAttribute:174 node:a4.var0];
  [v28 setLoad:TUIResourceLoadFromString()];

  v12 = [v9 stringForAttribute:87 node:a4.var0];
  [v28 setFilter:v12];

  v13 = [v9 stringForAttribute:86 node:a4.var0];
  v14 = [TUIBox layerContentsGravityFromString:v13];
  [v28 setContentsGravity:v14];

  v15 = [v9 lengthForAttribute:225 node:a4.var0];
  [v28 setWidth:{v15, v16}];
  v17 = [v9 lengthForAttribute:115 node:a4.var0];
  [v28 setIntrinsicWidth:{v17, v18}];
  v19 = [v9 lengthForAttribute:114 node:a4.var0];
  [v28 setIntrinsicHeight:{v19, v20}];
  [v9 floatForAttribute:127 withDefault:a4.var0 node:1.56];
  [v28 setMaxAspectRatio:?];
  v21 = [v9 colorForAttribute:80 node:a4.var0];
  [v28 setFallbackColor:v21];

  v22 = [v10 baseURLForNode:a4.var0];

  [v28 setBaseURL:v22];
  v23 = [v9 stringArrayForAttribute:61 node:a4.var0];
  if ([v23 count])
  {
    v24 = [v9 stringArrayForAttribute:62 node:a4.var0];
    [v28 setCoverFilters:v24];

    [v28 setCoverURLStrings:v23];
  }

  else
  {
    v25 = [v9 stringForAttribute:173 node:a4.var0];
    [v28 setResourceKind:v25];

    v26 = [v9 objectForAttribute:172 node:a4.var0];
    [v28 setResourceInstance:v26];

    v27 = [v9 objectForAttribute:175 node:a4.var0];
    [v28 setResourceOptions:v27];
  }
}

@end