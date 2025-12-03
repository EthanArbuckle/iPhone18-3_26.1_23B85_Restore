@interface CAMediaLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (BOOL)allowedContentsHideSublayers;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)didChangeValueForKey:(id)key;
- (void)setAllowedContentsHideSublayers:(BOOL)sublayers;
@end

@implementation CAMediaLayer

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAMediaLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setAllowedContentsHideSublayers:(BOOL)sublayers
{
  v4 = *MEMORY[0x1E69E9840];
  sublayersCopy = sublayers;
  CA::Layer::setter(self->super._attr.layer, 9, 6, &sublayersCopy);
}

- (BOOL)allowedContentsHideSublayers
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 9u, 6, &v3);
  return v3;
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAMediaLayer;
  v7 = [(CALayer *)&v11 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (v7 && (*(commitFlags + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0xDEEC3011uLL);
    v9 = v8;
    if (v8)
    {
      v8[2] = 1;
      v8[3] = 34;
      ++dword_1ED4EAAC0;
      *v8 = &unk_1EF1F6940;
    }

    if ([(CAMediaLayer *)self allowedContentsHideSublayers])
    {
      v9[3] |= 0x100u;
      CA::Render::Layer::set_subclass(v7, v9);
    }

    else
    {
      CA::Render::Layer::set_subclass(v7, v9);
      if (!v9)
      {
        return v7;
      }
    }

    if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }
  }

  return v7;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v5 = *MEMORY[0x1E69E9840];
  if (property == 9)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CAMediaLayer;
  return [(CALayer *)&v4 _renderLayerDefinesProperty:?];
}

- (void)didChangeValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 == 9)
  {
    v6 = CA::Transaction::ensure_compat(v5);
    CA::Layer::set_commit_needed(self->super._attr.layer, v6, 0x10000);
  }

  v7.receiver = self;
  v7.super_class = CAMediaLayer;
  [(CAMediaLayer *)&v7 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"allowedContentsHideSublayers"])
  {
    return MEMORY[0x1E695E110];
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAMediaLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, key);
}

@end