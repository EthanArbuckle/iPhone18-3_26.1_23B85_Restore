@interface CADistanceFieldLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (BOOL)invertsShape;
- (CGColor)foregroundColor;
- (NSString)renderMode;
- (double)lineWidth;
- (double)offset;
- (double)sharpness;
- (unsigned)_renderImageCopyFlags;
- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)flags;
- (void)_colorSpaceDidChange;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)didChangeValueForKey:(id)key;
- (void)setForegroundColor:(CGColor *)color;
- (void)setInvertsShape:(BOOL)shape;
- (void)setLineWidth:(double)width;
- (void)setOffset:(double)offset;
- (void)setRenderMode:(id)mode;
- (void)setSharpness:(double)sharpness;
@end

@implementation CADistanceFieldLayer

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CADistanceFieldLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setForegroundColor:(CGColor *)color
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = color;
  CA::Layer::setter(self->super._attr.layer, 0x109, 2, v3);
}

- (CGColor)foregroundColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x109u, 2, v3);
  return v3[0];
}

- (void)setSharpness:(double)sharpness
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = sharpness;
  CA::Layer::setter(self->super._attr.layer, 0x288, 0x12, v3);
}

- (double)sharpness
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x288u, 0x12, v3);
  return *v3;
}

- (void)setOffset:(double)offset
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = offset;
  CA::Layer::setter(self->super._attr.layer, 0x216, 0x12, v3);
}

- (double)offset
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x216u, 0x12, v3);
  return *v3;
}

- (void)setLineWidth:(double)width
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = width;
  CA::Layer::setter(self->super._attr.layer, 0x1E3, 0x12, v3);
}

- (double)lineWidth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1E3u, 0x12, v3);
  return *v3;
}

- (void)setInvertsShape:(BOOL)shape
{
  v4 = *MEMORY[0x1E69E9840];
  shapeCopy = shape;
  CA::Layer::setter(self->super._attr.layer, 0x1C4, 6, &shapeCopy);
}

- (BOOL)invertsShape
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1C4u, 6, &v3);
  return v3;
}

- (void)setRenderMode:(id)mode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = mode;
  CA::Layer::setter(self->super._attr.layer, 0x25A, 3, v3);
}

- (NSString)renderMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x25Au, 3, v3);
  return v3[0];
}

- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)flags
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while (animatable_atoms[v3] != flags)
  {
    if (++v3 == 5)
    {
      v5.receiver = self;
      v5.super_class = CADistanceFieldLayer;
      return [(CALayer *)&v5 _renderLayerPropertyAnimationFlags:?];
    }
  }

  return 32;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while (all_atoms[v3] != property)
  {
    if (++v3 == 6)
    {
      v5.receiver = self;
      v5.super_class = CADistanceFieldLayer;
      return [(CALayer *)&v5 _renderLayerDefinesProperty:?];
    }
  }

  return 1;
}

- (unsigned)_renderImageCopyFlags
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CADistanceFieldLayer;
  return [(CALayer *)&v3 _renderImageCopyFlags]| 0x28;
}

- (void)_colorSpaceDidChange
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CADistanceFieldLayer;
  _colorSpaceDidChange = [(CALayer *)&v5 _colorSpaceDidChange];
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(_colorSpaceDidChange);
  }

  CA::Layer::set_commit_needed(self->super._attr.layer, v4, 0x10000);
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v25 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CADistanceFieldLayer;
  v8 = [(CALayer *)&v24 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (v8 && (*(commitFlags + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x28uLL, 0xDEEC3011uLL);
    v10 = v9;
    if (v9)
    {
      *(v9 + 2) = 1;
      *v9 = &unk_1EF201E80;
      *(v9 + 12) = 0x20000000CLL;
      ++dword_1ED4EAA68;
      *(v9 + 5) = 255;
      *(v9 + 3) = 0;
      *(v9 + 8) = 0;
    }

    renderMode = [(CADistanceFieldLayer *)self renderMode];
    if (renderMode)
    {
      v12 = renderMode;
      if ([(NSString *)renderMode isEqualToString:@"fill"])
      {
        v13 = 1;
      }

      else if ([(NSString *)v12 isEqualToString:@"stroke"])
      {
        v13 = 2;
      }

      else if ([(NSString *)v12 isEqualToString:@"innerStroke"])
      {
        v13 = 3;
      }

      else if ([(NSString *)v12 isEqualToString:@"outerStroke"])
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      v10[4] = v13;
    }

    foregroundColor = [(CADistanceFieldLayer *)self foregroundColor];
    if (foregroundColor)
    {
      v16 = foregroundColor;
      v17 = CA::Context::current_colorspace(layer, v15);
      v23 = 0;
      CA::Render::convert_cgcolor(v16, v17, &v23, 0, v18);
      v10[5] = v23;
    }

    [(CADistanceFieldLayer *)self lineWidth];
    *&v19 = v19;
    v10[6] = LODWORD(v19);
    [(CADistanceFieldLayer *)self offset];
    *&v20 = v20;
    v10[7] = LODWORD(v20);
    [(CADistanceFieldLayer *)self sharpness];
    *&v21 = v21;
    v10[8] = LODWORD(v21);
    if ([(CADistanceFieldLayer *)self invertsShape])
    {
      v10[3] |= 0x100u;
    }

    CA::Render::Layer::set_subclass(v8, v10);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v10 + 16))(v10);
    }
  }

  return v8;
}

- (void)didChangeValueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 1);
  v6 = 0;
  while (v5 != all_atoms[v6])
  {
    if (++v6 == 6)
    {
      goto LABEL_8;
    }
  }

  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v7)
  {
    v7 = CA::Transaction::create(v5);
  }

  CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
LABEL_8:
  v8.receiver = self;
  v8.super_class = CADistanceFieldLayer;
  [(CADistanceFieldLayer *)&v8 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 1);
  if (v5 == 602)
  {
    return @"fill";
  }

  if (v5 == 265)
  {
    {
      {
        +[CADistanceFieldLayer defaultValueForKey:]::color = black();
      }
    }

    return +[CADistanceFieldLayer defaultValueForKey:]::color;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CADistanceFieldLayer;
    return objc_msgSendSuper2(&v7, sel_defaultValueForKey_, key);
  }
}

@end