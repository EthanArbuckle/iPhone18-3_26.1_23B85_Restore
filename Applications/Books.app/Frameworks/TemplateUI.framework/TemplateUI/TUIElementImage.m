@interface TUIElementImage
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
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

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v29 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v9 stringForAttribute:174 node:a4.var0];
  [v29 setLoad:TUIResourceLoadFromString(v11)];

  v12 = [v9 stringForAttribute:87 node:a4.var0];
  [v29 setFilter:v12];

  v13 = [v9 stringForAttribute:86 node:a4.var0];
  v14 = [TUIBox layerContentsGravityFromString:v13];
  [v29 setContentsGravity:v14];

  v15 = [v9 lengthForAttribute:115 node:a4.var0];
  [v29 setIntrinsicWidth:{v15, v16}];
  v17 = [v9 lengthForAttribute:114 node:a4.var0];
  [v29 setIntrinsicHeight:{v17, v18}];
  v19 = [v9 colorForAttribute:126 node:a4.var0];
  [v29 setMaskColor:v19];

  [v9 floatForAttribute:60 node:a4.var0];
  [v29 setCornerRadius:?];
  [v29 setContinuousCorners:{objc_msgSend(v9, "BOOLForAttribute:withDefault:node:", 59, 1, a4.var0)}];
  v20 = [v9 colorForAttribute:80 node:a4.var0];
  [v29 setFallbackColor:v20];

  [v29 setHflipForRTL:{objc_msgSend(v9, "BOOLForAttribute:node:", 99, a4.var0)}];
  [v29 setCrossfadesContents:{objc_msgSend(v9, "BOOLForAttribute:node:", 63, a4.var0)}];
  [v29 setShouldRasterize:{objc_msgSend(v9, "BOOLForAttribute:node:", 163, a4.var0)}];
  [v9 floatForAttribute:146 withDefault:a4.var0 node:1.0];
  v22 = fmin(v21, 1.0);
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  [v29 setOpacity:v22];
  v23 = [v9 stringForAttribute:37 node:a4.var0];
  v24 = [(TUIBox *)TUIImageBox blendModeFromString:v23];
  [v29 setBlendMode:v24];

  [v9 floatForAttribute:127 withDefault:a4.var0 node:NAN];
  [v29 setMaxAspectRatio:?];
  v25 = [v9 stringForAttribute:215 node:a4.var0];
  if (v25)
  {
    [v29 setUrlString:v25];
    v26 = [v10 baseURLForNode:a4.var0];
    [v29 setBaseURL:v26];
  }

  else
  {
    v27 = [v9 stringForAttribute:173 node:a4.var0];
    [v29 setResourceKind:v27];

    v28 = [v9 objectForAttribute:172 node:a4.var0];
    [v29 setResourceInstance:v28];

    v26 = [v9 objectForAttribute:175 node:a4.var0];
    [v29 setResourceOptions:v26];
  }
}

@end