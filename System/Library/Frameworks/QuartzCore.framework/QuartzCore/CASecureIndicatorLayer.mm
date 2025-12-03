@interface CASecureIndicatorLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (NSArray)validDynamicPositions;
- (NSArray)validPositions;
- (NSString)privacyIndicatorType;
- (double)glyphScale;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)didChangeValueForKey:(id)key;
- (void)setGlyphScale:(double)scale;
- (void)setPrivacyIndicatorType:(id)type;
@end

@implementation CASecureIndicatorLayer

- (NSString)privacyIndicatorType
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x246u, 3, v3);
  return v3[0];
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CASecureIndicatorLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setGlyphScale:(double)scale
{
  v5 = *MEMORY[0x1E69E9840];
  scaleCopy = scale;
  v4 = scaleCopy;
  CA::Layer::setter(self->super._attr.layer, 0x11E, 0x11, &v4);
}

- (double)glyphScale
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x11Eu, 0x11, &v3);
  return v3;
}

- (void)setPrivacyIndicatorType:(id)type
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = type;
  CA::Layer::setter(self->super._attr.layer, 0x246, 3, v3);
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CASecureIndicatorLayer;
  v7 = [(CALayer *)&v13 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (v7 && (*(commitFlags + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    v9 = v8;
    if (v8)
    {
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      v8[2] = 1;
      v8[3] = 50;
      ++dword_1ED4EAB00;
      *v8 = &unk_1EF202900;
    }

    *(v8 + 12) = -1;
    [(CASecureIndicatorLayer *)self glyphScale];
    *&v10 = v10;
    v9[5] = LODWORD(v10);
    if (CADeviceSupportsMedina::once != -1)
    {
      dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
    }

    v11 = -1;
    if (CADeviceSupportsMedina::medina == 1)
    {
      v11 = indicator_id_from_name([(CASecureIndicatorLayer *)self privacyIndicatorType]);
      if (v11 == -1)
      {
        [MEMORY[0x1E695DF30] raise:@"CASecureIndicatorLayerInvalidName" format:{@"Invalid indicator name %@", -[CASecureIndicatorLayer privacyIndicatorType](self, "privacyIndicatorType")}];
        v11 = -1;
      }
    }

    v9[4] = v11;
    CA::Render::Layer::set_subclass(v7, v9);
    if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }
  }

  return v7;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v6 = *MEMORY[0x1E69E9840];
  result = 1;
  if (property != 286 && property != 582)
  {
    v5.receiver = self;
    v5.super_class = CASecureIndicatorLayer;
    return [(CALayer *)&v5 _renderLayerDefinesProperty:?];
  }

  return result;
}

- (void)didChangeValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 == 582 || v5 == 286)
  {
    v6 = CA::Transaction::ensure_compat(v5);
    CA::Layer::set_commit_needed(self->super._attr.layer, v6, 0x10000);
  }

  v7.receiver = self;
  v7.super_class = CASecureIndicatorLayer;
  [(CASecureIndicatorLayer *)&v7 didChangeValueForKey:key];
}

- (NSArray)validDynamicPositions
{
  privacyIndicatorType = [(CASecureIndicatorLayer *)self privacyIndicatorType];

  return CASecureIndicatorLayerValidDynamicPositionsForIndicator(privacyIndicatorType);
}

- (NSArray)validPositions
{
  privacyIndicatorType = [(CASecureIndicatorLayer *)self privacyIndicatorType];

  return CASecureIndicatorLayerValidPositionsForIndicator(privacyIndicatorType);
}

+ (id)defaultValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"privacyIndicatorType"])
  {
    return @"Microphone";
  }

  if ([key isEqualToString:@"glyphScale"])
  {
    v6 = MEMORY[0x1E696AD98];

    return [v6 numberWithFloat:0.0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CASecureIndicatorLayer;
    return objc_msgSendSuper2(&v7, sel_defaultValueForKey_, key);
  }
}

@end