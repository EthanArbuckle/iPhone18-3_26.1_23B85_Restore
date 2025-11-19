@interface CASDFElementLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
+ (id)defaultValueForKey:(id)a3;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3;
- (BOOL)hitTestsAsFill;
- (NSString)mode;
- (NSString)operation;
- (double)contentsOneValueDistance;
- (double)contentsZeroValueDistance;
- (double)gradientOvalization;
- (unsigned)_renderImageCopyFlags;
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
- (void)didChangeValueForKey:(id)a3;
- (void)setContentsOneValueDistance:(double)a3;
- (void)setContentsZeroValueDistance:(double)a3;
- (void)setGradientOvalization:(double)a3;
- (void)setHitTestsAsFill:(BOOL)a3;
- (void)setMode:(id)a3;
- (void)setOperation:(id)a3;
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

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CASDFElementLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

- (void)setHitTestsAsFill:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x12D, 6, &v3);
}

- (void)setGradientOvalization:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x120, 0x12, v3);
}

- (void)setContentsOneValueDistance:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x94, 0x12, v3);
}

- (void)setContentsZeroValueDistance:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x9B, 0x12, v3);
}

- (void)setOperation:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x21E, 3, v3);
}

- (void)setMode:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x20A, 3, v3);
}

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = CASDFElementLayer;
  v7 = [(CALayer *)&v18 _copyRenderLayer:a3 layerFlags:*&a4 commitFlags:?];
  if (!v7 || (*(a5 + 2) & 1) == 0)
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

  v10 = [(CASDFElementLayer *)self mode];
  if ([(NSString *)v10 isEqualToString:@"bounds"])
  {
    v11 = 0;
  }

  else
  {
    if (![(NSString *)v10 isEqualToString:@"contents"])
    {
      goto LABEL_12;
    }

    v11 = 1;
  }

  *(v9 + 16) = v11;
LABEL_12:
  v12 = [(CASDFElementLayer *)self operation];
  if ([(NSString *)v12 isEqualToString:@"union"])
  {
    v13 = 0;
  }

  else
  {
    if (![(NSString *)v12 isEqualToString:@"subtraction"])
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

- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while ([CASDFElementLayer _renderLayerDefinesProperty:]::atoms[v3] != a3)
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

- (void)didChangeValueForKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
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
  [(CASDFElementLayer *)&v8 didChangeValueForKey:a3];
}

+ (id)defaultValueForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"operation"])
  {
    return @"union";
  }

  if ([a3 isEqualToString:@"mode"])
  {
    return @"bounds";
  }

  if ([a3 isEqualToString:@"contentsZeroValueDistance"])
  {
    return &unk_1EF22B820;
  }

  if ([a3 isEqualToString:@"contentsOneValueDistance"])
  {
    return &unk_1EF22B830;
  }

  if ([a3 isEqualToString:@"gradientOvalization"])
  {
    return &unk_1EF22B820;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CASDFElementLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, a3);
}

@end