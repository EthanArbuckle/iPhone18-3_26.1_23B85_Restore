@interface TUIRenderContext
- (TUIRenderContext)initWithIdentifierMap:(id)map embeddedIdentifierMaps:(id)maps embeddedUpdateControllerMap:(id)controllerMap embeddedUUIDMap:(id)dMap environment:(id)environment uid:(id)uid UUID:(id)d entry:(id)self0 layoutQueue:(id)self1 renderMode:(unint64_t)self2;
- (id)_convertDrawModel:(id)model toKind:(unint64_t)kind;
- (id)_convertLayerModel:(id)model toKind:(unint64_t)kind;
- (id)_convertModel:(id)model toKind:(unint64_t)kind;
- (id)embeddedIdentifierMapForIdentifier:(id)identifier;
- (id)embeddedUUIDForIdentifier:(id)identifier;
- (id)embeddedUpdateControllerForIdentifier:(id)identifier renderModel:(id)model;
- (id)renderModelConvertModels:(id)models toKind:(unint64_t)kind;
- (id)renderModelForContainerLayout:(id)layout kind:(unint64_t)kind;
- (id)renderModelForLayout:(id)layout kind:(unint64_t)kind;
- (id)renderModelForLayout:(id)layout submodels:(id)submodels kind:(unint64_t)kind;
- (unint64_t)_renderModelChildKind:(unint64_t)kind;
- (void)evaluateWithIdentifierMap:(id)map block:(id)block;
- (void)evaluateWithLiveTransform:(id)transform block:(id)block;
- (void)evaluateWithPointer:(id)pointer block:(id)block;
- (void)evaluateWithWidth:(double)width layoutDirection:(unint64_t)direction block:(id)block;
@end

@implementation TUIRenderContext

- (TUIRenderContext)initWithIdentifierMap:(id)map embeddedIdentifierMaps:(id)maps embeddedUpdateControllerMap:(id)controllerMap embeddedUUIDMap:(id)dMap environment:(id)environment uid:(id)uid UUID:(id)d entry:(id)self0 layoutQueue:(id)self1 renderMode:(unint64_t)self2
{
  mapCopy = map;
  mapsCopy = maps;
  controllerMapCopy = controllerMap;
  dMapCopy = dMap;
  environmentCopy = environment;
  uidCopy = uid;
  dCopy = d;
  entryCopy = entry;
  queueCopy = queue;
  v49.receiver = self;
  v49.super_class = TUIRenderContext;
  v24 = [(TUIRenderContext *)&v49 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_identifierMap, map);
    v26 = [mapsCopy copy];
    previousEmbeddedIdentifierMaps = v25->_previousEmbeddedIdentifierMaps;
    v25->_previousEmbeddedIdentifierMaps = v26;

    v28 = [controllerMapCopy copy];
    previousEmbeddedUpdateControllerMap = v25->_previousEmbeddedUpdateControllerMap;
    v25->_previousEmbeddedUpdateControllerMap = v28;

    v30 = [dMapCopy copy];
    previousEmbeddedUUIDMap = v25->_previousEmbeddedUUIDMap;
    v25->_previousEmbeddedUUIDMap = v30;

    objc_storeStrong(&v25->_layoutQueue, queue);
    objc_storeStrong(&v25->_environment, environment);
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
          layoutDirection = [(TUIEnvironment *)v35 layoutDirection];
LABEL_9:
          v25->_layoutDirection = layoutDirection;
          currentLiveTransform = v25->_currentLiveTransform;
          v25->_currentLiveTransform = 0;

          v39 = [uidCopy copy];
          uid = v25->_uid;
          v25->_uid = v39;

          v41 = [dCopy copy];
          UUID = v25->_UUID;
          v25->_UUID = v41;

          objc_storeStrong(&v25->_entry, entry);
          v25->_renderMode = mode;
          v43 = +[NSUserDefaults standardUserDefaults];
          v25->_debugVisualLayout = [v43 BOOLForKey:@"TUIDebugVisualLayout"];

          goto LABEL_10;
        }

LABEL_8:
        layoutDirection = 1;
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

- (unint64_t)_renderModelChildKind:(unint64_t)kind
{
  v3 = kind - 2;
  if (kind - 2 < 8 && ((0xB1u >> v3) & 1) != 0)
  {
    return qword_24D5A0[v3];
  }

  if (kind == 5)
  {
    return 6;
  }

  return kind;
}

- (id)renderModelForLayout:(id)layout kind:(unint64_t)kind
{
  layoutCopy = layout;
  v7 = [(TUIRenderContext *)self _renderModelChildKind:kind];
  v8 = objc_opt_new();
  [layoutCopy computedNaturalSize];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, v9 * 0.5, v10 * 0.5);
  v13 = v14;
  [layoutCopy appendRenderModelCompatibleWithKind:v7 context:self transform:&v13 toModels:v8];
  v11 = [(TUIRenderContext *)self renderModelForLayout:layoutCopy submodels:v8 kind:kind];

  return v11;
}

- (id)renderModelForContainerLayout:(id)layout kind:(unint64_t)kind
{
  layoutCopy = layout;
  v7 = [(TUIRenderContext *)self _renderModelChildKind:kind];
  v8 = objc_opt_new();
  [layoutCopy computedNaturalSize];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, v9 * 0.5, v10 * 0.5);
  v13 = v14;
  [layoutCopy appendChildRenderModelCompatibleWithKind:v7 context:self transform:&v13 toModels:v8];
  v11 = [(TUIRenderContext *)self renderModelForLayout:layoutCopy submodels:v8 kind:kind];

  return v11;
}

- (id)renderModelConvertModels:(id)models toKind:(unint64_t)kind
{
  modelsCopy = models;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = modelsCopy;
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

        v13 = [(TUIRenderContext *)self _convertModel:*(*(&v15 + 1) + 8 * i) toKind:kind, v15];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)renderModelForLayout:(id)layout submodels:(id)submodels kind:(unint64_t)kind
{
  layoutCopy = layout;
  submodelsCopy = submodels;
  v10 = [(TUIRenderContext *)self renderModelConvertModels:submodelsCopy toKind:[(TUIRenderContext *)self _renderModelChildKind:kind]];

  v11 = 0;
  if (kind > 5)
  {
    if (kind != 6)
    {
      if (kind != 7)
      {
        if (kind != 9)
        {
          goto LABEL_17;
        }

        v12 = [[TUIRenderModelAuxiliary alloc] initWithNavigationItems:v10];
        goto LABEL_13;
      }

      v14 = objc_alloc_init(TUILayoutRenderModelCollector);
      [(TUILayoutRenderModelCollector *)v14 collectWithRoot:layoutCopy options:6 entryUUID:self->_UUID];
      finalizeImpressions = [(TUILayoutRenderModelCollector *)v14 finalizeImpressions];
      finalizeLinkEntities = [(TUILayoutRenderModelCollector *)v14 finalizeLinkEntities];
      v17 = objc_opt_new();
      [layoutCopy appendHoverRegions:v17 relativeToLayout:layoutCopy];
      memset(&v30[1], 0, 7);
      v18 = self->_layoutDirection == 2;
      width = self->_width;
      v20 = [layoutCopy computeZIndexWithDefault:0];
      v21 = [TUIRenderModelSection alloc];
      entry = self->_entry;
      identifierMap = self->_identifierMap;
      layoutQueue = self->_layoutQueue;
      v30[0] = v18;
      v31 = width;
      v32 = v20;
      v11 = [(TUIRenderModelSection *)v21 initWithEntry:entry submodels:v10 config:v30 impressions:finalizeImpressions linkEntities:finalizeLinkEntities hoverRegions:v17 identifierMap:identifierMap layoutQueue:layoutQueue];

      goto LABEL_16;
    }

    v13 = TUIRenderModelSubviews;
LABEL_12:
    v12 = [[v13 alloc] initWithSubmodels:v10];
LABEL_13:
    v11 = v12;
    goto LABEL_17;
  }

  if (kind == 2)
  {
    v13 = TUIRenderModelImage;
    goto LABEL_12;
  }

  if (kind != 3)
  {
    if (kind != 5)
    {
      goto LABEL_17;
    }

    v12 = [layoutCopy newRenderModelCompatibleWithKind:5 context:self];
    goto LABEL_13;
  }

  v14 = [[TUIContainerLayerConfig alloc] initWithSize:CGSizeZero.width, CGSizeZero.height];
  v11 = [[TUIRenderModelLayer alloc] initWithSubmodels:v10 config:v14 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
LABEL_16:

LABEL_17:
  [layoutCopy computedTransformedSize];
  [(TUIRenderModelLayer *)v11 setSize:TUISizeRoundedForScale(v25, v26, self->_contentsScale)];
  v27 = [layoutCopy box];
  identifier = [v27 identifier];
  [(TUIRenderModelLayer *)v11 setIdentifier:identifier];

  return v11;
}

- (id)_convertDrawModel:(id)model toKind:(unint64_t)kind
{
  modelCopy = model;
  v7 = modelCopy;
  if (kind == 2)
  {
    v8 = [TUIRenderModelImage alloc];
    v17 = v7;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v10 = [(TUIRenderModelImage *)v8 initWithSubmodels:v9];
  }

  else
  {
    v11 = modelCopy;
    if (kind < 3)
    {
      goto LABEL_7;
    }

    v12 = [_TUIDrawLayerConfig alloc];
    draw = [(TUIRenderModelImage *)v7 draw];
    v9 = [(_TUIDrawLayerConfig *)v12 initWithDraw:draw contentsScale:self->_renderMode renderMode:self->_contentsScale];

    v14 = [TUIRenderModelLayer alloc];
    [(TUIRenderModelImage *)v7 eraseableInsets];
    v10 = [(TUIRenderModelLayer *)v14 initWithSubmodels:0 config:v9 erasableInsets:?];
  }

  v11 = v10;

  if (v11 != v7)
  {
    [(TUIRenderModelImage *)v7 size];
    [(TUIRenderModelImage *)v11 setSize:?];
    identifier = [(TUIRenderModelImage *)v7 identifier];
    [(TUIRenderModelImage *)v11 setIdentifier:identifier];
  }

LABEL_7:

  return v11;
}

- (id)_convertLayerModel:(id)model toKind:(unint64_t)kind
{
  modelCopy = model;
  v6 = modelCopy;
  v7 = modelCopy;
  if (kind >= 4)
  {
    identifier = [modelCopy identifier];
    v7 = [TUILayerContainerView renderModelWithLayerModel:v6 identifier:identifier];

    if (v7 != v6)
    {
      [v6 size];
      [v7 setSize:?];
    }
  }

  return v7;
}

- (id)_convertModel:(id)model toKind:(unint64_t)kind
{
  modelCopy = model;
  v7 = modelCopy;
  if ([modelCopy kind] < kind)
  {
    v7 = modelCopy;
    if ([modelCopy kind] == &dword_0 + 1)
    {
      v7 = [(TUIRenderContext *)self _convertDrawModel:modelCopy toKind:kind];
    }
  }

  if ([v7 kind] < kind && objc_msgSend(v7, "kind") == &dword_0 + 3)
  {
    v8 = [(TUIRenderContext *)self _convertLayerModel:v7 toKind:kind];

    v7 = v8;
  }

  return v7;
}

- (void)evaluateWithIdentifierMap:(id)map block:(id)block
{
  mapCopy = map;
  if (mapCopy && block)
  {
    identifierMap = self->_identifierMap;
    p_identifierMap = &self->_identifierMap;
    v13 = mapCopy;
    v10 = identifierMap;
    objc_storeStrong(p_identifierMap, map);
    blockCopy = block;
    blockCopy[2]();

    v12 = *p_identifierMap;
    *p_identifierMap = v10;

    mapCopy = v13;
  }
}

- (void)evaluateWithWidth:(double)width layoutDirection:(unint64_t)direction block:(id)block
{
  if (block)
  {
    width = self->_width;
    layoutDirection = self->_layoutDirection;
    self->_width = width;
    self->_layoutDirection = direction;
    (*(block + 2))(block, a2);
    self->_width = width;
    self->_layoutDirection = layoutDirection;
  }
}

- (void)evaluateWithLiveTransform:(id)transform block:(id)block
{
  transformCopy = transform;
  if (transformCopy && block)
  {
    currentLiveTransform = self->_currentLiveTransform;
    p_currentLiveTransform = &self->_currentLiveTransform;
    v13 = transformCopy;
    v10 = currentLiveTransform;
    objc_storeStrong(p_currentLiveTransform, transform);
    blockCopy = block;
    blockCopy[2]();

    v12 = *p_currentLiveTransform;
    *p_currentLiveTransform = v10;

    transformCopy = v13;
  }
}

- (void)evaluateWithPointer:(id)pointer block:(id)block
{
  pointerCopy = pointer;
  if (block)
  {
    currentPointer = self->_currentPointer;
    p_currentPointer = &self->_currentPointer;
    v13 = pointerCopy;
    v10 = currentPointer;
    objc_storeStrong(p_currentPointer, pointer);
    blockCopy = block;
    blockCopy[2]();

    v12 = *p_currentPointer;
    *p_currentPointer = v10;

    pointerCopy = v13;
  }
}

- (id)embeddedIdentifierMapForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy || ([(NSDictionary *)self->_previousEmbeddedIdentifierMaps objectForKeyedSubscript:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_alloc_init(TUIRenderModelIdentifierMap);
  }

  return v5;
}

- (id)embeddedUUIDForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy || ([(NSDictionary *)self->_previousEmbeddedUUIDMap objectForKeyedSubscript:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = +[NSUUID UUID];
  }

  return v5;
}

- (id)embeddedUpdateControllerForIdentifier:(id)identifier renderModel:(id)model
{
  identifierCopy = identifier;
  modelCopy = model;
  if (identifierCopy && ([(NSDictionary *)self->_previousEmbeddedUpdateControllerMap objectForKeyedSubscript:identifierCopy], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    if (modelCopy)
    {
      transactionGroup = [(TUIRenderContext *)self transactionGroup];
      [(TUIRenderUpdateCollectionController *)v9 updateWithRenderModel:modelCopy viewState:0 flags:0 transactionGroup:transactionGroup];
    }
  }

  else
  {
    v9 = [[TUIRenderUpdateCollectionController alloc] initWithLayoutQueue:self->_layoutQueue renderModel:modelCopy];
  }

  return v9;
}

@end