@interface TUIMediaBackdropLayout
- (TUIMediaBackdropLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)_newImageResourcesWithContext:(id)context;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIMediaBackdropLayout

- (TUIMediaBackdropLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v8.receiver = self;
  v8.super_class = TUIMediaBackdropLayout;
  v5 = [(TUILayout *)&v8 initWithModel:model parent:parent controller:controller];
  v6 = v5;
  if (v5)
  {
    [(TUILayout *)v5 setSpecifiedWidthComputeInherited:1];
    [(TUILayout *)v6 setSpecifiedHeightComputeInherited:1];
  }

  return v6;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  if (kind < 3)
  {
    return 0;
  }

  contextCopy = context;
  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  v7 = v6;
  v9 = v8;
  v39 = [(TUIMediaBackdropLayout *)self _newImageResourcesWithContext:contextCopy];
  v10 = [v39 url];
  v11 = [(TUILayout *)self box];
  v36 = TUIResourceLoadForURL(v10, [v11 load]);

  v34 = [TUIImageLayerConfig alloc];
  [contextCopy contentsScale];
  v13 = v12;

  v38 = [(TUILayout *)self box];
  [v38 cornerRadius];
  v15 = v14;
  v37 = [(TUILayout *)self box];
  fallbackColor = [v37 fallbackColor];
  v35 = [(TUILayout *)self box];
  contentsGravity = [v35 contentsGravity];
  v16 = [(TUILayout *)self box];
  crossfadesContents = [v16 crossfadesContents];
  v18 = [(TUILayout *)self box];
  [v18 opacity];
  v20 = v19;
  v21 = [(TUILayout *)self box];
  LOBYTE(v10) = [v21 continuousCorners];
  v22 = [(TUILayout *)self box];
  shouldRasterize = [v22 shouldRasterize];
  v24 = [(TUILayout *)self box];
  blendMode = [v24 blendMode];
  BYTE1(v31) = shouldRasterize;
  LOBYTE(v31) = v10;
  v26 = [(TUIImageLayerConfig *)v34 initWithContentsScale:v39 resource:v36 load:fallbackColor cornerRadius:contentsGravity fallbackColor:0 contentsGravity:crossfadesContents hflip:v13 crossfadesContents:v15 opacity:v20 continuousCorners:v31 shouldRasterize:blendMode blendMode:?];

  v27 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v26 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(TUIRenderModelLayer *)v27 setSize:v7, v9];
  v28 = [(TUILayout *)self box];
  identifier = [v28 identifier];
  [(TUIRenderModelLayer *)v27 setIdentifier:identifier];

  return v27;
}

- (id)_newImageResourcesWithContext:(id)context
{
  contextCopy = context;
  [(TUILayout *)self computedNaturalSize];
  v6 = v5;
  v8 = v7;
  [contextCopy contentsScale];
  v10 = v9;
  controller = [(TUILayout *)self controller];
  manager = [controller manager];
  imageResourceCache = [manager imageResourceCache];

  v14 = [(TUILayout *)self box];
  urlString = [v14 urlString];

  v16 = [(TUILayout *)self box];
  controller2 = v16;
  if (urlString)
  {
    urlString2 = [v16 urlString];
    resourceKind2 = [(TUILayout *)self box];
    baseURL = [resourceKind2 baseURL];
    v21 = [imageResourceCache imageResourceForTemplatedURL:urlString2 baseURL:baseURL naturalSize:v6 contentsScale:{v8, v10}];
  }

  else
  {
    resourceKind = [v16 resourceKind];

    if (!resourceKind)
    {
LABEL_7:
      v30 = 0;
      goto LABEL_8;
    }

    controller2 = [(TUILayout *)self controller];
    urlString2 = [(TUILayout *)self box];
    resourceKind2 = [urlString2 resourceKind];
    baseURL = [(TUILayout *)self box];
    resourceInstance = [baseURL resourceInstance];
    v23 = [(TUILayout *)self box];
    resourceOptions = [v23 resourceOptions];
    v21 = [controller2 imageResourceForKind:resourceKind2 naturalSize:resourceInstance contentsScale:resourceOptions instance:v6 options:{v8, v10}];
  }

  if (!v21)
  {
    goto LABEL_7;
  }

  [(TUILayout *)self computedNaturalSize];
  v26 = v25;
  v28 = v27;
  [contextCopy contentsScale];
  v30 = [imageResourceCache mediaBackdropImageResourceFrom:v21 naturalSize:v26 contentScale:{v28, v29}];

LABEL_8:
  return v30;
}

@end