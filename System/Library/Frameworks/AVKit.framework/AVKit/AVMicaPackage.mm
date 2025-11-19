@interface AVMicaPackage
+ (NSDictionary)classSubstitions;
+ (void)asynchronouslyPrepareMicaPackageWithName:(id)a3 layoutDirection:(int64_t)a4 completion:(id)a5;
- (AVMicaPackage)initWithPackageName:(id)a3 layoutDirection:(int64_t)a4;
- (CALayer)rootLayer;
- (CGSize)targetSize;
- (CGSize)unscaledSize;
- (Class)CAMLParser:(id)a3 didFailToFindClassWithName:(id)a4;
- (id)_recursivelyFindSublayerWithName:(id)a3 rootLayer:(id)a4;
- (id)availableStates;
- (id)availableStatesOnLayer:(id)a3;
- (id)sublayerWithName:(id)a3;
- (void)_loadRootLayerIfNeeded;
- (void)_recursivelyRemoveCompositingFiltersWithName:(id)a3 rootLayer:(id)a4;
- (void)_recursivelySetFillColor:(CGColor *)a3 rootLayer:(id)a4;
- (void)_setState:(id)a3;
- (void)removeCompositingFiltersWithName:(id)a3;
- (void)setState:(id)a3 color:(CGColor *)a4;
- (void)setTargetSize:(CGSize)a3;
- (void)transitionToStateWithName:(id)a3;
- (void)transitionToStateWithName:(id)a3 onLayer:(id)a4;
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
    v3 = [(AVMicaPackage *)self packageName];
    v4 = [(AVMicaPackage *)self packageName];
    if ([v4 isEqualToString:@"VolumeGlyph"])
    {
      v5 = [(AVMicaPackage *)self layoutDirection];

      if (v5 != 1)
      {
        goto LABEL_6;
      }

      [v3 stringByAppendingString:@"-RTL"];
      v3 = v4 = v3;
    }

LABEL_6:
    v6 = AVBundle();
    v7 = [v6 URLForResource:v3 withExtension:@"caml"];

    if (!v7)
    {
      v18 = _AVLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412290;
        v26 = v3;
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

    v8 = [MEMORY[0x1E69793B0] parser];
    [v8 setDelegate:self];
    [v8 parseContentsOfURL:v7];
    v9 = [v8 result];
    rootLayer = self->_rootLayer;
    self->_rootLayer = v9;

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
    v15 = [(AVMicaPackage *)self packageName];
    v16 = [v15 isEqualToString:@"VolumeGlyph"];

    if (v16)
    {
      _Q0 = xmmword_18B6EC560;
    }

    else
    {
      v19 = [(AVMicaPackage *)self packageName];
      v20 = [v19 isEqualToString:@"AVRoutePickerViewCircularAirPlayGlyph"];

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

- (id)sublayerWithName:(id)a3
{
  v4 = a3;
  v5 = [(AVMicaPackage *)self rootLayer];
  v6 = [(AVMicaPackage *)self _recursivelyFindSublayerWithName:v4 rootLayer:v5];

  return v6;
}

- (id)availableStatesOnLayer:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 array];
  v6 = [v4 states];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AVMicaPackage_availableStatesOnLayer___block_invoke;
  v9[3] = &unk_1E7209398;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

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
  v3 = [(AVMicaPackage *)self rootLayer];
  v4 = [(AVMicaPackage *)self availableStatesOnLayer:v3];

  return v4;
}

- (void)transitionToStateWithName:(id)a3 onLayer:(id)a4
{
  v6 = a4;
  v9 = [v6 stateWithName:a3];
  v7 = [(AVMicaPackage *)self stateController];
  LODWORD(v8) = 1.0;
  [v7 setState:v9 ofLayer:v6 transitionSpeed:v8];
}

- (void)transitionToStateWithName:(id)a3
{
  v4 = a3;
  v5 = [(AVMicaPackage *)self rootLayer];
  [(AVMicaPackage *)self transitionToStateWithName:v4 onLayer:v5];
}

- (void)_recursivelyRemoveCompositingFiltersWithName:(id)a3 rootLayer:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [a4 sublayers];
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
        v12 = [v11 compositingFilter];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [v11 compositingFilter];
          v15 = [v14 name];
          v16 = [v15 isEqualToString:v6];

          if (v16)
          {
            [v11 setCompositingFilter:0];
          }
        }

        [(AVMicaPackage *)self _recursivelyRemoveCompositingFiltersWithName:v6 rootLayer:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)_recursivelySetFillColor:(CGColor *)a3 rootLayer:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a4 sublayers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setFillColor:a3];
        }

        [(AVMicaPackage *)self _recursivelySetFillColor:a3 rootLayer:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)_recursivelyFindSublayerWithName:(id)a3 rootLayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__25553;
  v20 = __Block_byref_object_dispose__25554;
  v21 = 0;
  v8 = [v7 name];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    objc_storeStrong(v17 + 5, a4);
  }

  else
  {
    v10 = [v7 sublayers];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__AVMicaPackage__recursivelyFindSublayerWithName_rootLayer___block_invoke;
    v13[3] = &unk_1E7209370;
    v15 = &v16;
    v13[4] = self;
    v14 = v6;
    [v10 enumerateObjectsUsingBlock:v13];
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

- (void)_setState:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_state isEqualToString:?])
  {
    v4 = [v6 copy];
    state = self->_state;
    self->_state = v4;

    [(AVMicaPackage *)self transitionToStateWithName:v6];
  }
}

- (Class)CAMLParser:(id)a3 didFailToFindClassWithName:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() classSubstitions];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)removeCompositingFiltersWithName:(id)a3
{
  v4 = a3;
  v5 = [(AVMicaPackage *)self rootLayer];
  [(AVMicaPackage *)self _recursivelyRemoveCompositingFiltersWithName:v4 rootLayer:v5];
}

- (void)setState:(id)a3 color:(CGColor *)a4
{
  v7 = a3;
  if (([v7 isEqualToString:@"on"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"off"))
  {
    [(AVMicaPackage *)self _setState:0];
  }

  [(AVMicaPackage *)self _setState:v7];
  if (a4)
  {
    v6 = [(AVMicaPackage *)self rootLayer];
    [(AVMicaPackage *)self _recursivelySetFillColor:a4 rootLayer:v6];
  }
}

- (void)setTargetSize:(CGSize)a3
{
  if (self->_targetSize.width != a3.width || self->_targetSize.height != a3.height)
  {
    v14 = v6;
    v15 = v5;
    v16 = v3;
    v17 = v4;
    self->_targetSize = a3;
    v9 = a3.width / self->_unscaledSize.width;
    v10 = a3.height / self->_unscaledSize.height;
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
    v12 = [(AVMicaPackage *)self rootLayer];
    CATransform3DMakeScale(&v13, v11, -v11, 1.0);
    [v12 setTransform:&v13];

    [MEMORY[0x1E6979518] commit];
  }
}

- (CALayer)rootLayer
{
  [(AVMicaPackage *)self _loadRootLayerIfNeeded];
  rootLayer = self->_rootLayer;

  return rootLayer;
}

- (AVMicaPackage)initWithPackageName:(id)a3 layoutDirection:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AVMicaPackage;
  v8 = [(AVMicaPackage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_packageName, a3);
    v9->_layoutDirection = a4;
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

+ (void)asynchronouslyPrepareMicaPackageWithName:(id)a3 layoutDirection:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = [a5 copy];
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
  v15 = a4;
  v13 = v7;
  v10 = v8;
  v11 = v7;
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