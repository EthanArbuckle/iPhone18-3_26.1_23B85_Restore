@interface TUIRenderContext
- (TUIRenderContext)initWithIdentifierMap:(id)a3 embeddedIdentifierMaps:(id)a4 embeddedUpdateControllerMap:(id)a5 embeddedUUIDMap:(id)a6 environment:(id)a7 uid:(id)a8 UUID:(id)a9 entry:(id)a10 layoutQueue:(id)a11 renderMode:(unint64_t)a12;
- (id)_convertDrawModel:(id)a3 toKind:(unint64_t)a4;
- (id)_convertLayerModel:(id)a3 toKind:(unint64_t)a4;
- (id)_convertModel:(id)a3 toKind:(unint64_t)a4;
- (id)embeddedIdentifierMapForIdentifier:(id)a3;
- (id)embeddedUUIDForIdentifier:(id)a3;
- (id)embeddedUpdateControllerForIdentifier:(id)a3 renderModel:(id)a4;
- (id)renderModelConvertModels:(id)a3 toKind:(unint64_t)a4;
- (id)renderModelForContainerLayout:(id)a3 kind:(unint64_t)a4;
- (id)renderModelForLayout:(id)a3 kind:(unint64_t)a4;
- (id)renderModelForLayout:(id)a3 submodels:(id)a4 kind:(unint64_t)a5;
- (unint64_t)_renderModelChildKind:(unint64_t)a3;
- (void)evaluateWithIdentifierMap:(id)a3 block:(id)a4;
- (void)evaluateWithLiveTransform:(id)a3 block:(id)a4;
- (void)evaluateWithPointer:(id)a3 block:(id)a4;
- (void)evaluateWithWidth:(double)a3 layoutDirection:(unint64_t)a4 block:(id)a5;
@end

@implementation TUIRenderContext

- (TUIRenderContext)initWithIdentifierMap:(id)a3 embeddedIdentifierMaps:(id)a4 embeddedUpdateControllerMap:(id)a5 embeddedUUIDMap:(id)a6 environment:(id)a7 uid:(id)a8 UUID:(id)a9 entry:(id)a10 layoutQueue:(id)a11 renderMode:(unint64_t)a12
{
  v48 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v47 = a7;
  v22 = a8;
  v23 = a9;
  v46 = a10;
  v45 = a11;
  v49.receiver = self;
  v49.super_class = TUIRenderContext;
  v24 = [(TUIRenderContext *)&v49 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_identifierMap, a3);
    v26 = [v19 copy];
    previousEmbeddedIdentifierMaps = v25->_previousEmbeddedIdentifierMaps;
    v25->_previousEmbeddedIdentifierMaps = v26;

    v28 = [v20 copy];
    previousEmbeddedUpdateControllerMap = v25->_previousEmbeddedUpdateControllerMap;
    v25->_previousEmbeddedUpdateControllerMap = v28;

    v30 = [v21 copy];
    previousEmbeddedUUIDMap = v25->_previousEmbeddedUUIDMap;
    v25->_previousEmbeddedUUIDMap = v30;

    objc_storeStrong(&v25->_layoutQueue, a11);
    objc_storeStrong(&v25->_environment, a7);
    environment = v25->_environment;
    if (environment)
    {
      [(TUIEnvironment *)environment contentsScale];
      v33 = v25->_environment;
      v25->_contentsScale = v34;
      if (v33)
      {
        [(TUIEnvironment *)v33 viewSize];
        v35 = v25->_environment;
        v25->_width = v36;
        if (v35)
        {
          v37 = [(TUIEnvironment *)v35 layoutDirection];
LABEL_9:
          v25->_layoutDirection = v37;
          currentLiveTransform = v25->_currentLiveTransform;
          v25->_currentLiveTransform = 0;

          v39 = [v22 copy];
          uid = v25->_uid;
          v25->_uid = v39;

          v41 = [v23 copy];
          UUID = v25->_UUID;
          v25->_UUID = v41;

          objc_storeStrong(&v25->_entry, a10);
          v25->_renderMode = a12;
          v43 = +[NSUserDefaults standardUserDefaults];
          v25->_debugVisualLayout = [v43 BOOLForKey:@"TUIDebugVisualLayout"];

          goto LABEL_10;
        }

LABEL_8:
        v37 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v25->_contentsScale = 2.0;
    }

    v25->_width = 0.0;
    goto LABEL_8;
  }

LABEL_10:

  return v25;
}

- (unint64_t)_renderModelChildKind:(unint64_t)a3
{
  v3 = a3 - 2;
  if (a3 - 2 < 8 && ((0xB1u >> v3) & 1) != 0)
  {
    return qword_24D5A0[v3];
  }

  if (a3 == 5)
  {
    return 6;
  }

  return a3;
}

- (id)renderModelForLayout:(id)a3 kind:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TUIRenderContext *)self _renderModelChildKind:a4];
  v8 = objc_opt_new();
  [v6 computedNaturalSize];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, v9 * 0.5, v10 * 0.5);
  v13 = v14;
  [v6 appendRenderModelCompatibleWithKind:v7 context:self transform:&v13 toModels:v8];
  v11 = [(TUIRenderContext *)self renderModelForLayout:v6 submodels:v8 kind:a4];

  return v11;
}

- (id)renderModelForContainerLayout:(id)a3 kind:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TUIRenderContext *)self _renderModelChildKind:a4];
  v8 = objc_opt_new();
  [v6 computedNaturalSize];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, v9 * 0.5, v10 * 0.5);
  v13 = v14;
  [v6 appendChildRenderModelCompatibleWithKind:v7 context:self transform:&v13 toModels:v8];
  v11 = [(TUIRenderContext *)self renderModelForLayout:v6 submodels:v8 kind:a4];

  return v11;
}

- (id)renderModelConvertModels:(id)a3 toKind:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(TUIRenderContext *)self _convertModel:*(*(&v15 + 1) + 8 * i) toKind:a4, v15];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)renderModelForLayout:(id)a3 submodels:(id)a4 kind:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TUIRenderContext *)self renderModelConvertModels:v9 toKind:[(TUIRenderContext *)self _renderModelChildKind:a5]];

  v11 = 0;
  if (a5 > 5)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        if (a5 != 9)
        {
          goto LABEL_17;
        }

        v12 = [[TUIRenderModelAuxiliary alloc] initWithNavigationItems:v10];
        goto LABEL_13;
      }

      v14 = objc_alloc_init(TUILayoutRenderModelCollector);
      [(TUILayoutRenderModelCollector *)v14 collectWithRoot:v8 options:6 entryUUID:self->_UUID];
      v15 = [(TUILayoutRenderModelCollector *)v14 finalizeImpressions];
      v16 = [(TUILayoutRenderModelCollector *)v14 finalizeLinkEntities];
      v17 = objc_opt_new();
      [v8 appendHoverRegions:v17 relativeToLayout:v8];
      memset(&v30[1], 0, 7);
      v18 = self->_layoutDirection == 2;
      width = self->_width;
      v20 = [v8 computeZIndexWithDefault:0];
      v21 = [TUIRenderModelSection alloc];
      entry = self->_entry;
      identifierMap = self->_identifierMap;
      layoutQueue = self->_layoutQueue;
      v30[0] = v18;
      v31 = width;
      v32 = v20;
      v11 = [(TUIRenderModelSection *)v21 initWithEntry:entry submodels:v10 config:v30 impressions:v15 linkEntities:v16 hoverRegions:v17 identifierMap:identifierMap layoutQueue:layoutQueue];

      goto LABEL_16;
    }

    v13 = TUIRenderModelSubviews;
LABEL_12:
    v12 = [[v13 alloc] initWithSubmodels:v10];
LABEL_13:
    v11 = v12;
    goto LABEL_17;
  }

  if (a5 == 2)
  {
    v13 = TUIRenderModelImage;
    goto LABEL_12;
  }

  if (a5 != 3)
  {
    if (a5 != 5)
    {
      goto LABEL_17;
    }

    v12 = [v8 newRenderModelCompatibleWithKind:5 context:self];
    goto LABEL_13;
  }

  v14 = [[TUIContainerLayerConfig alloc] initWithSize:CGSizeZero.width, CGSizeZero.height];
  v11 = [[TUIRenderModelLayer alloc] initWithSubmodels:v10 config:v14 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
LABEL_16:

LABEL_17:
  [v8 computedTransformedSize];
  [(TUIRenderModelLayer *)v11 setSize:TUISizeRoundedForScale(v25, v26, self->_contentsScale)];
  v27 = [v8 box];
  v28 = [v27 identifier];
  [(TUIRenderModelLayer *)v11 setIdentifier:v28];

  return v11;
}

- (id)_convertDrawModel:(id)a3 toKind:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 2)
  {
    v8 = [TUIRenderModelImage alloc];
    v17 = v7;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v10 = [(TUIRenderModelImage *)v8 initWithSubmodels:v9];
  }

  else
  {
    v11 = v6;
    if (a4 < 3)
    {
      goto LABEL_7;
    }

    v12 = [_TUIDrawLayerConfig alloc];
    v13 = [(TUIRenderModelImage *)v7 draw];
    v9 = [(_TUIDrawLayerConfig *)v12 initWithDraw:v13 contentsScale:self->_renderMode renderMode:self->_contentsScale];

    v14 = [TUIRenderModelLayer alloc];
    [(TUIRenderModelImage *)v7 eraseableInsets];
    v10 = [(TUIRenderModelLayer *)v14 initWithSubmodels:0 config:v9 erasableInsets:?];
  }

  v11 = v10;

  if (v11 != v7)
  {
    [(TUIRenderModelImage *)v7 size];
    [(TUIRenderModelImage *)v11 setSize:?];
    v15 = [(TUIRenderModelImage *)v7 identifier];
    [(TUIRenderModelImage *)v11 setIdentifier:v15];
  }

LABEL_7:

  return v11;
}

- (id)_convertLayerModel:(id)a3 toKind:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  v7 = v5;
  if (a4 >= 4)
  {
    v8 = [v5 identifier];
    v7 = [TUILayerContainerView renderModelWithLayerModel:v6 identifier:v8];

    if (v7 != v6)
    {
      [v6 size];
      [v7 setSize:?];
    }
  }

  return v7;
}

- (id)_convertModel:(id)a3 toKind:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ([v6 kind] < a4)
  {
    v7 = v6;
    if ([v6 kind] == &dword_0 + 1)
    {
      v7 = [(TUIRenderContext *)self _convertDrawModel:v6 toKind:a4];
    }
  }

  if ([v7 kind] < a4 && objc_msgSend(v7, "kind") == &dword_0 + 3)
  {
    v8 = [(TUIRenderContext *)self _convertLayerModel:v7 toKind:a4];

    v7 = v8;
  }

  return v7;
}

- (void)evaluateWithIdentifierMap:(id)a3 block:(id)a4
{
  v7 = a3;
  if (v7 && a4)
  {
    identifierMap = self->_identifierMap;
    p_identifierMap = &self->_identifierMap;
    v13 = v7;
    v10 = identifierMap;
    objc_storeStrong(p_identifierMap, a3);
    v11 = a4;
    v11[2]();

    v12 = *p_identifierMap;
    *p_identifierMap = v10;

    v7 = v13;
  }
}

- (void)evaluateWithWidth:(double)a3 layoutDirection:(unint64_t)a4 block:(id)a5
{
  if (a5)
  {
    width = self->_width;
    layoutDirection = self->_layoutDirection;
    self->_width = a3;
    self->_layoutDirection = a4;
    (*(a5 + 2))(a5, a2);
    self->_width = width;
    self->_layoutDirection = layoutDirection;
  }
}

- (void)evaluateWithLiveTransform:(id)a3 block:(id)a4
{
  v7 = a3;
  if (v7 && a4)
  {
    currentLiveTransform = self->_currentLiveTransform;
    p_currentLiveTransform = &self->_currentLiveTransform;
    v13 = v7;
    v10 = currentLiveTransform;
    objc_storeStrong(p_currentLiveTransform, a3);
    v11 = a4;
    v11[2]();

    v12 = *p_currentLiveTransform;
    *p_currentLiveTransform = v10;

    v7 = v13;
  }
}

- (void)evaluateWithPointer:(id)a3 block:(id)a4
{
  v7 = a3;
  if (a4)
  {
    currentPointer = self->_currentPointer;
    p_currentPointer = &self->_currentPointer;
    v13 = v7;
    v10 = currentPointer;
    objc_storeStrong(p_currentPointer, a3);
    v11 = a4;
    v11[2]();

    v12 = *p_currentPointer;
    *p_currentPointer = v10;

    v7 = v13;
  }
}

- (id)embeddedIdentifierMapForIdentifier:(id)a3
{
  v4 = a3;
  if (!v4 || ([(NSDictionary *)self->_previousEmbeddedIdentifierMaps objectForKeyedSubscript:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_alloc_init(TUIRenderModelIdentifierMap);
  }

  return v5;
}

- (id)embeddedUUIDForIdentifier:(id)a3
{
  v4 = a3;
  if (!v4 || ([(NSDictionary *)self->_previousEmbeddedUUIDMap objectForKeyedSubscript:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = +[NSUUID UUID];
  }

  return v5;
}

- (id)embeddedUpdateControllerForIdentifier:(id)a3 renderModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && ([(NSDictionary *)self->_previousEmbeddedUpdateControllerMap objectForKeyedSubscript:v6], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    if (v7)
    {
      v10 = [(TUIRenderContext *)self transactionGroup];
      [(TUIRenderUpdateCollectionController *)v9 updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:v10];
    }
  }

  else
  {
    v9 = [[TUIRenderUpdateCollectionController alloc] initWithLayoutQueue:self->_layoutQueue renderModel:v7];
  }

  return v9;
}

@end