@interface CASDFElementLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (BOOL)hitTestsAsFill;
- (NSString)mode;
- (NSString)operation;
- (double)contentsOneValueDistance;
- (double)contentsZeroValueDistance;
- (double)gradientOvalization;
- (unsigned)_renderImageCopyFlags;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)didChangeValueForKey:(id)key;
- (void)setContentsOneValueDistance:(double)distance;
- (void)setContentsZeroValueDistance:(double)distance;
- (void)setGradientOvalization:(double)ovalization;
- (void)setHitTestsAsFill:(BOOL)fill;
- (void)setMode:(id)mode;
- (void)setOperation:(id)operation;
@end

@implementation CASDFElementLayer

- (NSString)mode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x20Au, 3, v3);
  return v3[0];
}

- (NSString)operation
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x21Eu, 3, v3);
  return v3[0];
}

- (double)contentsZeroValueDistance
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x9Bu, 0x12, v3);
  return *v3;
}

- (double)contentsOneValueDistance
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x94u, 0x12, v3);
  return *v3;
}

- (double)gradientOvalization
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x120u, 0x12, v3);
  return *v3;
}

- (BOOL)hitTestsAsFill
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x12Du, 6, &v3);
  return v3;
}

- (unsigned)_renderImageCopyFlags
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CASDFElementLayer;
  return [(CALayer *)&v3 _renderImageCopyFlags]| 0x408;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CASDFElementLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setHitTestsAsFill:(BOOL)fill
{
  v4 = *MEMORY[0x1E69E9840];
  fillCopy = fill;
  CA::Layer::setter(self->super._attr.layer, 0x12D, 6, &fillCopy);
}

- (void)setGradientOvalization:(double)ovalization
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = ovalization;
  CA::Layer::setter(self->super._attr.layer, 0x120, 0x12, v3);
}

- (void)setContentsOneValueDistance:(double)distance
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = distance;
  CA::Layer::setter(self->super._attr.layer, 0x94, 0x12, v3);
}

- (void)setContentsZeroValueDistance:(double)distance
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = distance;
  CA::Layer::setter(self->super._attr.layer, 0x9B, 0x12, v3);
}

- (void)setOperation:(id)operation
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = operation;
  CA::Layer::setter(self->super._attr.layer, 0x21E, 3, v3);
}

- (void)setMode:(id)mode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = mode;
  CA::Layer::setter(self->super._attr.layer, 0x20A, 3, v3);
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CASDFElementLayer;
  v7 = [(CALayer *)&v18 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (!v7 || (*(commitFlags + 2) & 1) == 0)
  {
    return v7;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x28uLL, 0xDEEC3011uLL);
  v9 = v8;
  if (v8)
  {
    v8[2] = 1;
    v8[3] = 47;
    ++dword_1ED4EAAF4;
    *v8 = &unk_1EF1FEAC8;
    v8[6] = 1065353216;
  }

  mode = [(CASDFElementLayer *)self mode];
  if ([(NSString *)mode isEqualToString:@"bounds"])
  {
    v11 = 0;
  }

  else
  {
    if (![(NSString *)mode isEqualToString:@"contents"])
    {
      goto LABEL_12;
    }

    v11 = 1;
  }

  *(v9 + 16) = v11;
LABEL_12:
  operation = [(CASDFElementLayer *)self operation];
  if ([(NSString *)operation isEqualToString:@"union"])
  {
    v13 = 0;
  }

  else
  {
    if (![(NSString *)operation isEqualToString:@"subtraction"])
    {
      goto LABEL_17;
    }

    v13 = 1;
  }

  *(v9 + 17) = v13;
LABEL_17:
  [(CASDFElementLayer *)self contentsZeroValueDistance];
  *&v14 = v14;
  v9[5] = LODWORD(v14);
  [(CASDFElementLayer *)self contentsOneValueDistance];
  *&v15 = v15;
  v9[6] = LODWORD(v15);
  [(CASDFElementLayer *)self gradientOvalization];
  *&v16 = v16;
  v9[7] = LODWORD(v16);
  *(v9 + 32) = [(CASDFElementLayer *)self hitTestsAsFill];
  CA::Render::Layer::set_subclass(v7, v9);
  if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  return v7;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while ([CASDFElementLayer _renderLayerDefinesProperty:]::atoms[v3] != property)
  {
    if (++v3 == 6)
    {
      v5.receiver = self;
      v5.super_class = CASDFElementLayer;
      return [(CALayer *)&v5 _renderLayerDefinesProperty:?];
    }
  }

  return 1;
}

- (void)didChangeValueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  v6 = 0;
  while (v5 != [CASDFElementLayer didChangeValueForKey:]::atoms[v6])
  {
    if (++v6 == 6)
    {
      goto LABEL_6;
    }
  }

  v7 = CA::Transaction::ensure_compat(v5);
  CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
LABEL_6:
  v8.receiver = self;
  v8.super_class = CASDFElementLayer;
  [(CASDFElementLayer *)&v8 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"operation"])
  {
    return @"union";
  }

  if ([key isEqualToString:@"mode"])
  {
    return @"bounds";
  }

  if ([key isEqualToString:@"contentsZeroValueDistance"])
  {
    return &unk_1EF22B820;
  }

  if ([key isEqualToString:@"contentsOneValueDistance"])
  {
    return &unk_1EF22B830;
  }

  if ([key isEqualToString:@"gradientOvalization"])
  {
    return &unk_1EF22B820;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CASDFElementLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, key);
}

@end