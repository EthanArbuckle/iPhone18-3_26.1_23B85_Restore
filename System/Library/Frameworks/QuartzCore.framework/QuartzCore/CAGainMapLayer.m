@interface CAGainMapLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
+ (id)defaultValueForKey:(id)a3;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3;
- (NSString)renderMode;
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
- (void)didChangeValueForKey:(id)a3;
- (void)setRenderMode:(id)a3;
@end

@implementation CAGainMapLayer

- (NSString)renderMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x25Au, 3, v3);
  return v3[0];
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CAGainMapLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

- (void)setRenderMode:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x25A, 3, v3);
}

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CAGainMapLayer;
  v7 = [(CALayer *)&v13 _copyRenderLayer:a3 layerFlags:*&a4 commitFlags:?];
  if (!v7 || (*(a5 + 2) & 1) == 0)
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

  v10 = [(CAGainMapLayer *)self renderMode];
  if ([(NSString *)v10 isEqualToString:@"gainBorder"])
  {
    v11 = 1;
LABEL_13:
    *(v9 + 16) = v11;
    goto LABEL_14;
  }

  if ([(NSString *)v10 isEqualToString:@"gainFill"])
  {
    v11 = 2;
    goto LABEL_13;
  }

  if ([(NSString *)v10 isEqualToString:@"gainBorderRenderFill"])
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

- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (a3 == 602)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CAGainMapLayer;
  return [(CALayer *)&v4 _renderLayerDefinesProperty:?];
}

- (void)didChangeValueForKey:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  if (v5 == 602)
  {
    v6 = CA::Transaction::ensure_compat(v5);
    CA::Layer::set_commit_needed(self->super._attr.layer, v6, 0x10000);
  }

  v7.receiver = self;
  v7.super_class = CAGainMapLayer;
  [(CAGainMapLayer *)&v7 didChangeValueForKey:a3];
}

+ (id)defaultValueForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"renderMode"])
  {
    return @"gainBorder";
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CAGainMapLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, a3);
}

@end