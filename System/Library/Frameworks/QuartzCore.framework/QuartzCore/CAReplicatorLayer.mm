@interface CAReplicatorLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (BOOL)preservesDepth;
- (CAReplicatorLayer)init;
- (CATransform3D)instanceTransform;
- (CFTimeInterval)instanceDelay;
- (CGColorRef)instanceColor;
- (NSInteger)instanceCount;
- (float)instanceAlphaOffset;
- (float)instanceBlueOffset;
- (float)instanceGreenOffset;
- (float)instanceRedOffset;
- (id)implicitAnimationForKeyPath:(id)path;
- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)flags;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)_renderSublayersInContext:(CGContext *)context;
- (void)didChangeValueForKey:(id)key;
- (void)setInstanceAlphaOffset:(float)instanceAlphaOffset;
- (void)setInstanceBlueOffset:(float)instanceBlueOffset;
- (void)setInstanceColor:(CGColorRef)instanceColor;
- (void)setInstanceCount:(NSInteger)instanceCount;
- (void)setInstanceDelay:(CFTimeInterval)instanceDelay;
- (void)setInstanceGreenOffset:(float)instanceGreenOffset;
- (void)setInstanceRedOffset:(float)instanceRedOffset;
- (void)setPreservesDepth:(BOOL)preservesDepth;
@end

@implementation CAReplicatorLayer

- (CAReplicatorLayer)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAReplicatorLayer;
  v2 = [(CALayer *)&v5 init];
  v3 = v2;
  if (v2 && [(CAReplicatorLayer *)v2 preservesDepth])
  {
    atomic_fetch_or(v3->super._attr.layer + 1, 0x10000u);
  }

  return v3;
}

- (BOOL)preservesDepth
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x244u, 7, &v3);
  return v3 != 0;
}

- (float)instanceAlphaOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x1B6u, 0x11, &v3);
  return v3;
}

- (NSInteger)instanceCount
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1B9u, 0xB, &v3);
  return v3;
}

- (CFTimeInterval)instanceDelay
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1BAu, 0x12, v3);
  return *v3;
}

- (CATransform3D)instanceTransform
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CA::Layer::getter(self->super._attr.layer, 0x1BDu, 0x16, retstr);
  return result;
}

- (CGColorRef)instanceColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1B8u, 2, v3);
  return v3[0];
}

- (float)instanceRedOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x1BCu, 0x11, &v3);
  return v3;
}

- (float)instanceGreenOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x1BBu, 0x11, &v3);
  return v3;
}

- (float)instanceBlueOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x1B7u, 0x11, &v3);
  return v3;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAReplicatorLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setInstanceAlphaOffset:(float)instanceAlphaOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = instanceAlphaOffset;
  CA::Layer::setter(self->super._attr.layer, 0x1B6, 0x11, &v3);
}

- (void)setInstanceBlueOffset:(float)instanceBlueOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = instanceBlueOffset;
  CA::Layer::setter(self->super._attr.layer, 0x1B7, 0x11, &v3);
}

- (void)setInstanceGreenOffset:(float)instanceGreenOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = instanceGreenOffset;
  CA::Layer::setter(self->super._attr.layer, 0x1BB, 0x11, &v3);
}

- (void)setInstanceRedOffset:(float)instanceRedOffset
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = instanceRedOffset;
  CA::Layer::setter(self->super._attr.layer, 0x1BC, 0x11, &v3);
}

- (void)setInstanceColor:(CGColorRef)instanceColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = instanceColor;
  CA::Layer::setter(self->super._attr.layer, 0x1B8, 2, v3);
}

- (void)setInstanceDelay:(CFTimeInterval)instanceDelay
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = instanceDelay;
  CA::Layer::setter(self->super._attr.layer, 0x1BA, 0x12, v3);
}

- (void)setPreservesDepth:(BOOL)preservesDepth
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = preservesDepth;
  CA::Layer::setter(self->super._attr.layer, 0x244, 7, &v3);
}

- (void)setInstanceCount:(NSInteger)instanceCount
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = instanceCount;
  CA::Layer::setter(self->super._attr.layer, 0x1B9, 0xB, &v3);
}

- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)flags
{
  v5 = *MEMORY[0x1E69E9840];
  if (flags - 438 < 8)
  {
    return dword_183E31844[flags - 438];
  }

  v4.receiver = self;
  v4.super_class = CAReplicatorLayer;
  return [(CALayer *)&v4 _renderLayerPropertyAnimationFlags:?];
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v5 = *MEMORY[0x1E69E9840];
  if (property - 438 < 8)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CAReplicatorLayer;
  return [(CALayer *)&v4 _renderLayerDefinesProperty:?];
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v47 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CAReplicatorLayer;
  v8 = [(CALayer *)&v38 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (v8 && (*(commitFlags + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x48uLL, 0xDEEC3011uLL);
    if (v9)
    {
      v11 = v9;
      *(v9 + 2) = 1;
      ++dword_1ED4EAAF0;
      *v9 = &unk_1EF1F4F88;
      *(v9 + 12) = 0x10000002ELL;
      v39 = xmmword_183E20E00;
      v40 = 0u;
      v41 = xmmword_183E20E60;
      v42 = 0u;
      v43 = 0u;
      v44 = xmmword_183E20E00;
      v45 = 0u;
      v46 = xmmword_183E20E60;
      *(v9 + 3) = CA::Render::Vector::new_vector(0x10, &v39, v10);
      *(v11 + 2) = xmmword_183E21710;
      *(v11 + 12) = 1065353216;
      *(v11 + 60) = 0;
      *(v11 + 52) = 0;
      *(v11 + 4) = [(CAReplicatorLayer *)self instanceCount];
      [(CAReplicatorLayer *)self instanceDelay];
      *&v13 = v13;
      *(v11 + 8) = LODWORD(v13);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      if (self && ([(CAReplicatorLayer *)self instanceTransform], v30.f64[0] == 1.0))
      {
        v17 = 1;
        while (v17 != 16)
        {
          v18 = v17;
          v19 = v30.f64[v17];
          v20 = *(&CATransform3DIdentity.m11 + v17++);
          if (v19 != v20)
          {
            if ((v18 - 1) <= 0xE)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      else
      {
LABEL_8:
        v39 = v30;
        v40 = v31;
        v41 = v32;
        v42 = v33;
        v43 = v34;
        v44 = v35;
        v45 = v36;
        v46 = v37;
        v14 = CA::Render::Vector::new_vector(0x10, &v39, v12);
        v15 = *(v11 + 3);
        if (v15 != v14)
        {
          if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v15 + 16))(v15);
          }

          if (v14)
          {
            v16 = v14;
            if (!atomic_fetch_add(v14 + 2, 1u))
            {
              v16 = 0;
              atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v16 = 0;
          }

          *(v11 + 3) = v16;
        }

        if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v14 + 16))(v14);
        }
      }

      instanceColor = [(CAReplicatorLayer *)self instanceColor];
      if (instanceColor)
      {
        v23 = instanceColor;
        v24 = CA::Context::current_colorspace(layer, v22);
        v39 = 0u;
        v40 = 0u;
        CA_CGColorGetRGBComponents(v23, v24, &v39);
        *(v11 + 36) = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v40);
      }

      [(CAReplicatorLayer *)self instanceRedOffset];
      *(v11 + 13) = v25;
      [(CAReplicatorLayer *)self instanceGreenOffset];
      *(v11 + 14) = v26;
      [(CAReplicatorLayer *)self instanceBlueOffset];
      *(v11 + 15) = v27;
      [(CAReplicatorLayer *)self instanceAlphaOffset];
      *(v11 + 16) = v28;
      CA::Render::Layer::set_subclass(v8, v11);
      if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v11 + 16))(v11);
      }
    }
  }

  return v8;
}

- (void)_renderSublayersInContext:(CGContext *)context
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(self);
  }

  v6 = *(v5 + 29);
  *(v5 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v7 = [(NSArray *)[(CALayer *)self sublayers] copy];
  v8 = [v7 count];
  instanceCount = [(CAReplicatorLayer *)self instanceCount];
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  if (self)
  {
    [(CAReplicatorLayer *)self instanceTransform:0.0];
    v10 = 0uLL;
    v18 = v33;
    v17 = v34;
    v16 = v35;
    v15 = v36;
    v14 = v37;
    v13 = v38;
    v12 = v39;
    v11 = v40;
  }

  v41[0] = v18;
  v41[1] = v17;
  v41[2] = v16;
  v41[3] = v15;
  v41[4] = v14;
  v41[5] = v13;
  v41[6] = v12;
  v41[7] = v11;
  v33 = xmmword_183E20E00;
  v34 = v10;
  v35 = xmmword_183E20E60;
  v36 = v10;
  v37 = v10;
  v38 = xmmword_183E20E00;
  v39 = v10;
  v40 = xmmword_183E20E60;
  CA::Transaction::unlock(v5);
  CGContextSaveGState(context);
  if (instanceCount)
  {
    for (i = 0; i != instanceCount; ++i)
    {
      if (v8)
      {
        for (j = 0; j != v8; ++j)
        {
          v22 = [v7 objectAtIndex:j];
          CGContextSaveGState(context);
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          memset(v26, 0, sizeof(v26));
          CA::Layer::get_frame_transform(v22[2], v26, 0, &v33, 0, v23, v24);
          *&v25.a = v26[0];
          *&v25.c = v27;
          *&v25.tx = v31;
          CGContextConcatCTM(context, &v25);
          [v22 renderInContext:context];
          CGContextRestoreGState(context);
        }
      }

      CA::Mat4Impl::mat4_concat(&v33, v41, &v33, v19);
    }
  }

  CGContextRestoreGState(context);
}

- (id)implicitAnimationForKeyPath:(id)path
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CAReplicatorLayer;
  result = [(CALayer *)&v12 implicitAnimationForKeyPath:?];
  if (!result)
  {
    v6 = [path rangeOfString:@"."];
    if (!v7)
    {
      v10 = CAInternAtom(path, 0);
      v9 = v10;
      v11 = 0;
      while (v10 != [CAReplicatorLayer implicitAnimationForKeyPath:]::atoms[v11])
      {
        if (++v11 == 8)
        {
          return 0;
        }
      }

      return CALayerCreateImplicitAnimation(self, path, v9);
    }

    v8 = CAInternAtom([path substringToIndex:v6], 0);
    v9 = 0;
    if (v8 == 445)
    {
      return CALayerCreateImplicitAnimation(self, path, v9);
    }

    return 0;
  }

  return result;
}

- (void)didChangeValueForKey:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  v6 = v5;
  v7 = 0;
  while (v5 != [CAReplicatorLayer didChangeValueForKey:]::atoms[v7])
  {
    if (++v7 == 9)
    {
      goto LABEL_6;
    }
  }

  v8 = CA::Transaction::ensure_compat(v5);
  CA::Layer::set_commit_needed(self->super._attr.layer, v8, 0x10000);
LABEL_6:
  if (v6 == 580)
  {
    preservesDepth = [(CAReplicatorLayer *)self preservesDepth];
    v10 = (self->super._attr.layer + 4);
    if (preservesDepth)
    {
      atomic_fetch_or(v10, 0x10000u);
    }

    else
    {
      atomic_fetch_and(v10, 0xFFFEFFFF);
    }
  }

  v11.receiver = self;
  v11.super_class = CAReplicatorLayer;
  [(CAReplicatorLayer *)&v11 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 == 440)
  {
    result = +[CAReplicatorLayer defaultValueForKey:]::white;
    if (!+[CAReplicatorLayer defaultValueForKey:]::white)
    {
      v8 = CAGetColorSpace(36);
      result = CGColorCreate(v8, +[CAReplicatorLayer defaultValueForKey:]::values);
      +[CAReplicatorLayer defaultValueForKey:]::white = result;
    }
  }

  else if (v5 == 441)
  {
    v6 = MEMORY[0x1E696AD98];

    return [v6 numberWithInt:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___CAReplicatorLayer;
    return objc_msgSendSuper2(&v9, sel_defaultValueForKey_, key);
  }

  return result;
}

@end