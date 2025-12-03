@interface CAGainMapLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (NSString)renderMode;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)didChangeValueForKey:(id)key;
- (void)setRenderMode:(id)mode;
@end

@implementation CAGainMapLayer

- (NSString)renderMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x25Au, 3, v3);
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
  v6.super_class = &OBJC_METACLASS___CAGainMapLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setRenderMode:(id)mode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = mode;
  CA::Layer::setter(self->super._attr.layer, 0x25A, 3, v3);
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CAGainMapLayer;
  v7 = [(CALayer *)&v13 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (!v7 || (*(commitFlags + 2) & 1) == 0)
  {
    return v7;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0xDEEC3011uLL);
  v9 = v8;
  if (v8)
  {
    v8[2] = 0;
    *(v8 + 2) = 1;
    *(v8 + 3) = 19;
    ++dword_1ED4EAA84;
    *v8 = &unk_1EF2017B8;
  }

  renderMode = [(CAGainMapLayer *)self renderMode];
  if ([(NSString *)renderMode isEqualToString:@"gainBorder"])
  {
    v11 = 1;
LABEL_13:
    *(v9 + 16) = v11;
    goto LABEL_14;
  }

  if ([(NSString *)renderMode isEqualToString:@"gainFill"])
  {
    v11 = 2;
    goto LABEL_13;
  }

  if ([(NSString *)renderMode isEqualToString:@"gainBorderRenderFill"])
  {
    v11 = 3;
    goto LABEL_13;
  }

  *(v9 + 16) = 0;
LABEL_14:
  CA::Render::Layer::set_subclass(v7, v9);
  if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  return v7;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v5 = *MEMORY[0x1E69E9840];
  if (property == 602)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CAGainMapLayer;
  return [(CALayer *)&v4 _renderLayerDefinesProperty:?];
}

- (void)didChangeValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 == 602)
  {
    v6 = CA::Transaction::ensure_compat(v5);
    CA::Layer::set_commit_needed(self->super._attr.layer, v6, 0x10000);
  }

  v7.receiver = self;
  v7.super_class = CAGainMapLayer;
  [(CAGainMapLayer *)&v7 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"renderMode"])
  {
    return @"gainBorder";
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAGainMapLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, key);
}

@end