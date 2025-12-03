@interface CASDFLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (BOOL)mergeElements;
- (CASDFEffect)effect;
- (CASDFLayer)initWithLayer:(id)layer;
- (double)effectOffset;
- (double)gaussianRadius;
- (double)smoothness;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)didChangeValueForKey:(id)key;
- (void)reloadValueForKeyPath:(id)path;
- (void)setEffect:(id)effect;
- (void)setEffectOffset:(double)offset;
- (void)setGaussianRadius:(double)radius;
- (void)setMergeElements:(BOOL)elements;
- (void)setSmoothness:(double)smoothness;
@end

@implementation CASDFLayer

- (CASDFEffect)effect
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xD9u, 2, v3);
  return v3[0];
}

- (double)smoothness
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x292u, 0x12, v3);
  return *v3;
}

- (double)effectOffset
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xDAu, 0x12, v3);
  return *v3;
}

- (void)setMergeElements:(BOOL)elements
{
  v4 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  CA::Layer::setter(self->super._attr.layer, 0x202, 7, &elementsCopy);
}

- (BOOL)mergeElements
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x202u, 7, &v3);
  return v3 != 0;
}

- (void)setEffectOffset:(double)offset
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = offset;
  CA::Layer::setter(self->super._attr.layer, 0xDA, 0x12, v3);
}

- (void)setGaussianRadius:(double)radius
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = radius;
  CA::Layer::setter(self->super._attr.layer, 0x119, 0x12, v3);
}

- (double)gaussianRadius
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x119u, 0x12, v3);
  return *v3;
}

- (void)setSmoothness:(double)smoothness
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = smoothness;
  CA::Layer::setter(self->super._attr.layer, 0x292, 0x12, v3);
}

- (void)setEffect:(id)effect
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = effect;
  CA::Layer::setter(self->super._attr.layer, 0xD9, 2, v3);
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CASDFLayer;
  v8 = [(CALayer *)&v17 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (v8 && (*(commitFlags + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA8uLL, 0xDEEC3011uLL);
    v10 = v9;
    if (v9)
    {
      v9[2] = 1;
      v9[3] = 48;
      ++dword_1ED4EAAF8;
      *v9 = &unk_1EF1FE9C0;
      *(v9 + 20) = 0;
    }

    [(CASDFLayer *)self smoothness];
    *&v11 = v11;
    v10[35] = LODWORD(v11);
    [(CASDFLayer *)self gaussianRadius];
    *&v12 = v12;
    v10[36] = LODWORD(v12);
    [(CASDFLayer *)self effectOffset];
    *&v13 = v13;
    v10[37] = LODWORD(v13);
    *(v10 + 152) = [(CASDFLayer *)self mergeElements];
    *(v10 + 2) = self;
    [(CASDFEffect *)[(CASDFLayer *)self effect] configureLayer:v10 transaction:layer];
    v14 = *(v10 + 136);
    if (v14 == 8)
    {
      v15 = *(v10 + 10);
      if (v15 <= *(v10 + 19))
      {
        v15 = *(v10 + 19);
      }
    }

    else
    {
      v15 = 1.0;
      if (v14 == 6)
      {
        v15 = *(v10 + 15);
      }
    }

    if (v15 > 1.001)
    {
      v8[5] |= 0x8000000000000000;
    }

    CA::Render::Layer::set_subclass(v8, v10);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v10 + 16))(v10);
    }
  }

  return v8;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while ([CASDFLayer _renderLayerDefinesProperty:]::atoms[v3] != property)
  {
    if (++v3 == 5)
    {
      v5.receiver = self;
      v5.super_class = CASDFLayer;
      return [(CALayer *)&v5 _renderLayerDefinesProperty:?];
    }
  }

  return 1;
}

- (void)reloadValueForKeyPath:(id)path
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [path hasPrefix:@"effect"];
  if (v5)
  {
    v6 = CA::Transaction::ensure_compat(v5);
    layer = self->super._attr.layer;

    CA::Layer::set_commit_needed(layer, v6, 0x10000);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CASDFLayer;
    [(CALayer *)&v8 reloadValueForKeyPath:path];
  }
}

- (void)didChangeValueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  v6 = 0;
  while (v5 != [CASDFLayer didChangeValueForKey:]::atoms[v6])
  {
    if (++v6 == 5)
    {
      goto LABEL_6;
    }
  }

  v7 = CA::Transaction::ensure_compat(v5);
  CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
LABEL_6:
  v8.receiver = self;
  v8.super_class = CASDFLayer;
  [(CASDFLayer *)&v8 didChangeValueForKey:key];
}

- (CASDFLayer)initWithLayer:(id)layer
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CASDFLayer;
  v4 = [(CALayer *)&v7 initWithLayer:?];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_msgSend(layer "effect")];
      [(CASDFLayer *)v4 setEffect:v5];
    }
  }

  return v4;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CASDFLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

+ (id)defaultValueForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"smoothness"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"gaussianRadius") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"effectOffset"))
  {
    return &unk_1EF22F918;
  }

  if ([key isEqualToString:@"mergeElements"])
  {
    return MEMORY[0x1E695E110];
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CASDFLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, key);
}

@end