@interface AVMicaPackage
+ (NSDictionary)classSubstitions;
+ (void)asynchronouslyPrepareMicaPackageWithName:(id)name layoutDirection:(int64_t)direction completion:(id)completion;
- (AVMicaPackage)initWithPackageName:(id)name layoutDirection:(int64_t)direction;
- (CALayer)rootLayer;
- (CGSize)targetSize;
- (CGSize)unscaledSize;
- (Class)CAMLParser:(id)parser didFailToFindClassWithName:(id)name;
- (id)_recursivelyFindSublayerWithName:(id)name rootLayer:(id)layer;
- (id)availableStates;
- (id)availableStatesOnLayer:(id)layer;
- (id)sublayerWithName:(id)name;
- (void)_loadRootLayerIfNeeded;
- (void)_recursivelyRemoveCompositingFiltersWithName:(id)name rootLayer:(id)layer;
- (void)_recursivelySetFillColor:(CGColor *)color rootLayer:(id)layer;
- (void)_setState:(id)state;
- (void)removeCompositingFiltersWithName:(id)name;
- (void)setState:(id)state color:(CGColor *)color;
- (void)setTargetSize:(CGSize)size;
- (void)transitionToStateWithName:(id)name;
- (void)transitionToStateWithName:(id)name onLayer:(id)layer;
@end

@implementation AVMicaPackage

- (CGSize)unscaledSize
{
  width = self->_unscaledSize.width;
  height = self->_unscaledSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_loadRootLayerIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_rootLayer)
  {
    packageName = [(AVMicaPackage *)self packageName];
    packageName2 = [(AVMicaPackage *)self packageName];
    if ([packageName2 isEqualToString:@"VolumeGlyph"])
    {
      layoutDirection = [(AVMicaPackage *)self layoutDirection];

      if (layoutDirection != 1)
      {
        goto LABEL_6;
      }

      [packageName stringByAppendingString:@"-RTL"];
      packageName = packageName2 = packageName;
    }

LABEL_6:
    v6 = AVBundle();
    v7 = [v6 URLForResource:packageName withExtension:@"caml"];

    if (!v7)
    {
      v18 = _AVLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412290;
        v26 = packageName;
        _os_log_error_impl(&dword_18B49C000, v18, OS_LOG_TYPE_ERROR, "Unexpectedly missing URL for CAML file. %@", &v25, 0xCu);
      }

      goto LABEL_22;
    }

    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    parser = [MEMORY[0x1E69793B0] parser];
    [parser setDelegate:self];
    [parser parseContentsOfURL:v7];
    result = [parser result];
    rootLayer = self->_rootLayer;
    self->_rootLayer = result;

    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      [MEMORY[0x1E6979518] commit];
    }

    v11 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:self->_rootLayer];
    stateController = self->_stateController;
    self->_stateController = v11;

    [(CAStateController *)self->_stateController setDelegate:self];
    [(CALayer *)self->_rootLayer bounds];
    self->_unscaledSize.width = v13;
    self->_unscaledSize.height = v14;
    packageName3 = [(AVMicaPackage *)self packageName];
    v16 = [packageName3 isEqualToString:@"VolumeGlyph"];

    if (v16)
    {
      _Q0 = xmmword_18B6EC560;
    }

    else
    {
      packageName4 = [(AVMicaPackage *)self packageName];
      v20 = [packageName4 isEqualToString:@"AVRoutePickerViewCircularAirPlayGlyph"];

      if (!v20)
      {
LABEL_19:
        if ([MEMORY[0x1E696AF00] isMainThread])
        {
          [(AVMicaPackage *)self setTargetSize:self->_unscaledSize.width, self->_unscaledSize.height];
        }

LABEL_22:
        return;
      }

      __asm { FMOV            V0.2D, #18.0 }
    }

    self->_unscaledSize = _Q0;
    goto LABEL_19;
  }
}

- (id)sublayerWithName:(id)name
{
  nameCopy = name;
  rootLayer = [(AVMicaPackage *)self rootLayer];
  v6 = [(AVMicaPackage *)self _recursivelyFindSublayerWithName:nameCopy rootLayer:rootLayer];

  return v6;
}

- (id)availableStatesOnLayer:(id)layer
{
  v3 = MEMORY[0x1E695DF70];
  layerCopy = layer;
  array = [v3 array];
  states = [layerCopy states];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AVMicaPackage_availableStatesOnLayer___block_invoke;
  v9[3] = &unk_1E7209398;
  v7 = array;
  v10 = v7;
  [states enumerateObjectsUsingBlock:v9];

  return v7;
}

void __40__AVMicaPackage_availableStatesOnLayer___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

- (id)availableStates
{
  rootLayer = [(AVMicaPackage *)self rootLayer];
  v4 = [(AVMicaPackage *)self availableStatesOnLayer:rootLayer];

  return v4;
}

- (void)transitionToStateWithName:(id)name onLayer:(id)layer
{
  layerCopy = layer;
  v9 = [layerCopy stateWithName:name];
  stateController = [(AVMicaPackage *)self stateController];
  LODWORD(v8) = 1.0;
  [stateController setState:v9 ofLayer:layerCopy transitionSpeed:v8];
}

- (void)transitionToStateWithName:(id)name
{
  nameCopy = name;
  rootLayer = [(AVMicaPackage *)self rootLayer];
  [(AVMicaPackage *)self transitionToStateWithName:nameCopy onLayer:rootLayer];
}

- (void)_recursivelyRemoveCompositingFiltersWithName:(id)name rootLayer:(id)layer
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [layer sublayers];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        compositingFilter = [v11 compositingFilter];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          compositingFilter2 = [v11 compositingFilter];
          name = [compositingFilter2 name];
          v16 = [name isEqualToString:nameCopy];

          if (v16)
          {
            [v11 setCompositingFilter:0];
          }
        }

        [(AVMicaPackage *)self _recursivelyRemoveCompositingFiltersWithName:nameCopy rootLayer:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)_recursivelySetFillColor:(CGColor *)color rootLayer:(id)layer
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sublayers = [layer sublayers];
  v7 = [sublayers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(sublayers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setFillColor:color];
        }

        [(AVMicaPackage *)self _recursivelySetFillColor:color rootLayer:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [sublayers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)_recursivelyFindSublayerWithName:(id)name rootLayer:(id)layer
{
  nameCopy = name;
  layerCopy = layer;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__25553;
  v20 = __Block_byref_object_dispose__25554;
  v21 = 0;
  name = [layerCopy name];
  v9 = [name isEqualToString:nameCopy];

  if (v9)
  {
    objc_storeStrong(v17 + 5, layer);
  }

  else
  {
    sublayers = [layerCopy sublayers];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__AVMicaPackage__recursivelyFindSublayerWithName_rootLayer___block_invoke;
    v13[3] = &unk_1E7209370;
    v15 = &v16;
    v13[4] = self;
    v14 = nameCopy;
    [sublayers enumerateObjectsUsingBlock:v13];
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __60__AVMicaPackage__recursivelyFindSublayerWithName_rootLayer___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _recursivelyFindSublayerWithName:*(a1 + 40) rootLayer:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (void)_setState:(id)state
{
  stateCopy = state;
  if (![(NSString *)self->_state isEqualToString:?])
  {
    v4 = [stateCopy copy];
    state = self->_state;
    self->_state = v4;

    [(AVMicaPackage *)self transitionToStateWithName:stateCopy];
  }
}

- (Class)CAMLParser:(id)parser didFailToFindClassWithName:(id)name
{
  nameCopy = name;
  classSubstitions = [objc_opt_class() classSubstitions];
  v6 = [classSubstitions objectForKeyedSubscript:nameCopy];

  return v6;
}

- (void)removeCompositingFiltersWithName:(id)name
{
  nameCopy = name;
  rootLayer = [(AVMicaPackage *)self rootLayer];
  [(AVMicaPackage *)self _recursivelyRemoveCompositingFiltersWithName:nameCopy rootLayer:rootLayer];
}

- (void)setState:(id)state color:(CGColor *)color
{
  stateCopy = state;
  if (([stateCopy isEqualToString:@"on"] & 1) != 0 || objc_msgSend(stateCopy, "isEqualToString:", @"off"))
  {
    [(AVMicaPackage *)self _setState:0];
  }

  [(AVMicaPackage *)self _setState:stateCopy];
  if (color)
  {
    rootLayer = [(AVMicaPackage *)self rootLayer];
    [(AVMicaPackage *)self _recursivelySetFillColor:color rootLayer:rootLayer];
  }
}

- (void)setTargetSize:(CGSize)size
{
  if (self->_targetSize.width != size.width || self->_targetSize.height != size.height)
  {
    v14 = v6;
    v15 = v5;
    v16 = v3;
    v17 = v4;
    self->_targetSize = size;
    v9 = size.width / self->_unscaledSize.width;
    v10 = size.height / self->_unscaledSize.height;
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    rootLayer = [(AVMicaPackage *)self rootLayer];
    CATransform3DMakeScale(&v13, v11, -v11, 1.0);
    [rootLayer setTransform:&v13];

    [MEMORY[0x1E6979518] commit];
  }
}

- (CALayer)rootLayer
{
  [(AVMicaPackage *)self _loadRootLayerIfNeeded];
  rootLayer = self->_rootLayer;

  return rootLayer;
}

- (AVMicaPackage)initWithPackageName:(id)name layoutDirection:(int64_t)direction
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = AVMicaPackage;
  v8 = [(AVMicaPackage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_packageName, name);
    v9->_layoutDirection = direction;
  }

  return v9;
}

+ (NSDictionary)classSubstitions
{
  if (classSubstitions_onceToken != -1)
  {
    dispatch_once(&classSubstitions_onceToken, &__block_literal_global_55_25565);
  }

  v3 = classSubstitions__substitutions;

  return v3;
}

void __33__AVMicaPackage_classSubstitions__block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = @"LKState";
  v3[0] = objc_opt_class();
  v2[1] = @"LKEventHandler";
  v3[1] = objc_opt_class();
  v2[2] = @"LKStateAddAnimation";
  v3[2] = objc_opt_class();
  v2[3] = @"LKStateAddElement";
  v3[3] = objc_opt_class();
  v2[4] = @"LKStateElement";
  v3[4] = objc_opt_class();
  v2[5] = @"LKStateRemoveAnimation";
  v3[5] = objc_opt_class();
  v2[6] = @"LKStateRemoveElement";
  v3[6] = objc_opt_class();
  v2[7] = @"LKStateSetValue";
  v3[7] = objc_opt_class();
  v2[8] = @"LKStateSetProperty";
  v3[8] = objc_opt_class();
  v2[9] = @"LKStateTransition";
  v3[9] = objc_opt_class();
  v2[10] = @"LKStateTransitionElement";
  v3[10] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = classSubstitions__substitutions;
  classSubstitions__substitutions = v0;
}

+ (void)asynchronouslyPrepareMicaPackageWithName:(id)name layoutDirection:(int64_t)direction completion:(id)completion
{
  nameCopy = name;
  v8 = [completion copy];
  if (asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion__onceToken != -1)
  {
    dispatch_once(&asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion__onceToken, &__block_literal_global_25611);
  }

  v9 = asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion__micaPackageCreationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__AVMicaPackage_asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion___block_invoke_2;
  block[3] = &unk_1E7209348;
  v14 = v8;
  directionCopy = direction;
  v13 = nameCopy;
  v10 = v8;
  v11 = nameCopy;
  dispatch_async(v9, block);
}

void __85__AVMicaPackage_asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion___block_invoke_2(uint64_t a1)
{
  v2 = [[AVMicaPackage alloc] initWithPackageName:*(a1 + 32) layoutDirection:*(a1 + 48)];
  [(AVMicaPackage *)v2 _loadRootLayerIfNeeded];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__AVMicaPackage_asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion___block_invoke_3;
  v5[3] = &unk_1E720A040;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __85__AVMicaPackage_asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.avkit.caml", v2);
  v1 = asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion__micaPackageCreationQueue;
  asynchronouslyPrepareMicaPackageWithName_layoutDirection_completion__micaPackageCreationQueue = v0;
}

@end