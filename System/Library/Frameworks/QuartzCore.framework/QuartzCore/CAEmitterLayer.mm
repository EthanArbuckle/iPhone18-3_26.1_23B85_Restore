@interface CAEmitterLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)CA_validateValue:(id)value forKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (BOOL)preservesDepth;
- (CAEmitterLayerEmitterMode)emitterMode;
- (CAEmitterLayerEmitterShape)emitterShape;
- (CAEmitterLayerRenderMode)renderMode;
- (CGFloat)emitterDepth;
- (CGFloat)emitterZPosition;
- (CGPath)emitterPath;
- (CGPoint)emitterPosition;
- (CGRect)cullRect;
- (CGSize)emitterSize;
- (NSArray)emitterBehaviors;
- (NSArray)emitterCells;
- (NSArray)emitterRects;
- (double)cullMaxZ;
- (double)cullMinZ;
- (double)updateInterval;
- (float)birthRate;
- (float)emitterDuration;
- (float)lifetime;
- (float)scale;
- (float)spin;
- (float)spinBias;
- (float)velocity;
- (id)implicitAnimationForKeyPath:(id)path;
- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)flags;
- (unsigned)seed;
- (void)_colorSpaceDidChange;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)didChangeValueForKey:(id)key;
- (void)reloadValueForKeyPath:(id)path;
- (void)setBirthRate:(float)birthRate;
- (void)setCullMaxZ:(double)z;
- (void)setCullMinZ:(double)z;
- (void)setCullRect:(CGRect)rect;
- (void)setEmitterBehaviors:(id)behaviors;
- (void)setEmitterCells:(NSArray *)emitterCells;
- (void)setEmitterDepth:(CGFloat)emitterDepth;
- (void)setEmitterDuration:(float)duration;
- (void)setEmitterMode:(CAEmitterLayerEmitterMode)emitterMode;
- (void)setEmitterPath:(CGPath *)path;
- (void)setEmitterPosition:(CGPoint)emitterPosition;
- (void)setEmitterRects:(id)rects;
- (void)setEmitterShape:(CAEmitterLayerEmitterShape)emitterShape;
- (void)setEmitterSize:(CGSize)emitterSize;
- (void)setEmitterZPosition:(CGFloat)emitterZPosition;
- (void)setLifetime:(float)lifetime;
- (void)setPreservesDepth:(BOOL)preservesDepth;
- (void)setRenderMode:(CAEmitterLayerRenderMode)renderMode;
- (void)setScale:(float)scale;
- (void)setSeed:(unsigned int)seed;
- (void)setSpin:(float)spin;
- (void)setSpinBias:(float)bias;
- (void)setUpdateInterval:(double)interval;
- (void)setVelocity:(float)velocity;
@end

@implementation CAEmitterLayer

- (float)birthRate
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x45u, 0x11, &v3);
  return v3;
}

- (float)lifetime
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x1D8u, 0x11, &v3);
  return v3;
}

- (float)emitterDuration
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0xE1u, 0x11, &v3);
  return v3;
}

- (CGPoint)emitterPosition
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0xE4u, 0x13, &v4);
  v2 = v4;
  v3 = v5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGFloat)emitterZPosition
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xE8u, 0x12, v3);
  return *v3;
}

- (CGSize)emitterSize
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0xE7u, 0x14, &v4);
  v2 = v4;
  v3 = v5;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGFloat)emitterDepth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xE0u, 0x12, v3);
  return *v3;
}

- (float)velocity
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x2E2u, 0x11, &v3);
  return v3;
}

- (float)scale
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x26Du, 0x11, &v3);
  return v3;
}

- (float)spin
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x2A1u, 0x11, &v3);
  return v3;
}

- (float)spinBias
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x2A2u, 0x11, &v3);
  return v3;
}

- (CGRect)cullRect
{
  v2 = CALayer_getter_kCAValueRect(self->super._attr.layer, 0xAEu);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)cullMinZ
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xADu, 0x12, v3);
  return *v3;
}

- (double)cullMaxZ
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xACu, 0x12, v3);
  return *v3;
}

- (NSArray)emitterCells
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xDFu, 3, v3);
  return v3[0];
}

- (NSArray)emitterBehaviors
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xDEu, 3, v3);
  return v3[0];
}

- (CGPath)emitterPath
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xE3u, 2, v3);
  return v3[0];
}

- (NSArray)emitterRects
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xE5u, 3, v3);
  return v3[0];
}

- (CAEmitterLayerEmitterShape)emitterShape
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xE6u, 3, v3);
  return v3[0];
}

- (CAEmitterLayerEmitterMode)emitterMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xE2u, 3, v3);
  return v3[0];
}

- (CAEmitterLayerRenderMode)renderMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x25Au, 3, v3);
  return v3[0];
}

- (BOOL)preservesDepth
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x244u, 7, &v3);
  return v3 != 0;
}

- (unsigned)seed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x275u, 0xC, &v3);
  return v3;
}

- (double)updateInterval
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2D8u, 0x12, v3);
  return *v3;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAEmitterLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setSeed:(unsigned int)seed
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = seed;
  CA::Layer::setter(self->super._attr.layer, 0x275, 0xC, &v3);
}

- (void)setPreservesDepth:(BOOL)preservesDepth
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = preservesDepth;
  CA::Layer::setter(self->super._attr.layer, 0x244, 7, &v3);
}

- (void)setRenderMode:(CAEmitterLayerRenderMode)renderMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = renderMode;
  CA::Layer::setter(self->super._attr.layer, 0x25A, 3, v3);
}

- (void)setSpin:(float)spin
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = spin;
  CA::Layer::setter(self->super._attr.layer, 0x2A1, 0x11, &v3);
}

- (void)setScale:(float)scale
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = scale;
  CA::Layer::setter(self->super._attr.layer, 0x26D, 0x11, &v3);
}

- (void)setVelocity:(float)velocity
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = velocity;
  CA::Layer::setter(self->super._attr.layer, 0x2E2, 0x11, &v3);
}

- (void)setEmitterDepth:(CGFloat)emitterDepth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = emitterDepth;
  CA::Layer::setter(self->super._attr.layer, 0xE0, 0x12, v3);
}

- (void)setEmitterSize:(CGSize)emitterSize
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = emitterSize;
  CA::Layer::setter(self->super._attr.layer, 0xE7, 0x14, &v3.width);
}

- (void)setEmitterZPosition:(CGFloat)emitterZPosition
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = emitterZPosition;
  CA::Layer::setter(self->super._attr.layer, 0xE8, 0x12, v3);
}

- (void)setEmitterPosition:(CGPoint)emitterPosition
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = emitterPosition;
  CA::Layer::setter(self->super._attr.layer, 0xE4, 0x13, &v3.x);
}

- (void)setEmitterMode:(CAEmitterLayerEmitterMode)emitterMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = emitterMode;
  CA::Layer::setter(self->super._attr.layer, 0xE2, 3, v3);
}

- (void)setEmitterShape:(CAEmitterLayerEmitterShape)emitterShape
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = emitterShape;
  CA::Layer::setter(self->super._attr.layer, 0xE6, 3, v3);
}

- (void)setLifetime:(float)lifetime
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = lifetime;
  CA::Layer::setter(self->super._attr.layer, 0x1D8, 0x11, &v3);
}

- (void)setBirthRate:(float)birthRate
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = birthRate;
  CA::Layer::setter(self->super._attr.layer, 0x45, 0x11, &v3);
}

- (void)setEmitterCells:(NSArray *)emitterCells
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = emitterCells;
  CA::Layer::setter(self->super._attr.layer, 0xDF, 3, v3);
}

- (BOOL)CA_validateValue:(id)value forKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  if (value && ([key isEqualToString:@"emitterCells"] || objc_msgSend(key, "isEqualToString:", @"emitterRects") || objc_msgSend(key, "isEqualToString:", @"emitterBehaviors")))
  {
    objc_opt_class();

    return CAObject_validateArrayOfClass(value);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CAEmitterLayer;
    return [(CALayer *)&v8 CA_validateValue:value forKey:key];
  }
}

- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)flags
{
  v3 = *&flags;
  v7 = *MEMORY[0x1E69E9840];
  if (CAAtomIndexInArray(23, &defines_property::atoms, flags) != -1)
  {
    return 32;
  }

  v6.receiver = self;
  v6.super_class = CAEmitterLayer;
  return [(CALayer *)&v6 _renderLayerPropertyAnimationFlags:v3];
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v3 = *&property;
  v7 = *MEMORY[0x1E69E9840];
  if (CAAtomIndexInArray(23, &defines_property::atoms, property) != -1)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAEmitterLayer;
  return [(CALayer *)&v6 _renderLayerDefinesProperty:v3];
}

- (void)_colorSpaceDidChange
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAEmitterLayer;
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
  v76 = *MEMORY[0x1E69E9840];
  v70.receiver = self;
  v70.super_class = CAEmitterLayer;
  v69 = [(CALayer *)&v70 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (v69 && (*(commitFlags + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA8uLL, 0xDEEC3011uLL);
    if (v7)
    {
      v8 = v7;
      *(v7 + 2) = 1;
      *(v7 + 3) = 15;
      ++dword_1ED4EAA74;
      *v7 = &unk_1EF1FE230;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      *(v7 + 7) = 0;
      *(v7 + 8) = 0x2EE00000237;
      *(v7 + 18) = 726;
      *(v7 + 76) = 0u;
      v9 = v7 + 76;
      *(v7 + 20) = 0;
      *(v7 + 92) = 0u;
      *(v7 + 108) = 0u;
      *(v7 + 124) = 0u;
      *(v7 + 140) = 0u;
      *(v7 + 2) = self;
      [(CAEmitterLayer *)self birthRate];
      *v9 = v10;
      [(CAEmitterLayer *)self lifetime];
      *(v8 + 20) = v11;
      [(CAEmitterLayer *)self emitterDuration];
      *(v8 + 21) = v12;
      [(CAEmitterLayer *)self emitterPosition];
      *&v13 = v13;
      *&v14 = v14;
      *(v8 + 22) = LODWORD(v13);
      *(v8 + 23) = LODWORD(v14);
      [(CAEmitterLayer *)self emitterZPosition];
      *&v15 = v15;
      *(v8 + 24) = LODWORD(v15);
      [(CAEmitterLayer *)self emitterSize];
      *&v16 = v16;
      *&v17 = v17;
      *(v8 + 25) = LODWORD(v16);
      *(v8 + 26) = LODWORD(v17);
      [(CAEmitterLayer *)self emitterDepth];
      *&v18 = v18;
      *(v8 + 27) = LODWORD(v18);
      [(CAEmitterLayer *)self velocity];
      *(v8 + 28) = v19;
      [(CAEmitterLayer *)self scale];
      *(v8 + 29) = v20;
      [(CAEmitterLayer *)self spin];
      *(v8 + 30) = v21;
      [(CAEmitterLayer *)self spinBias];
      *(v8 + 31) = v22;
      [(CAEmitterLayer *)self cullRect];
      x = v77.origin.x;
      y = v77.origin.y;
      width = v77.size.width;
      height = v77.size.height;
      if (CGRectIsInfinite(v77))
      {
        v27 = INFINITY;
        v28 = -INFINITY;
        v29 = -INFINITY;
        v30 = INFINITY;
      }

      else
      {
        v28 = x;
        v29 = y;
        v27 = x + width;
        v30 = y + height;
      }

      *(v8 + 32) = v28;
      *(v8 + 33) = v29;
      *(v8 + 34) = v27;
      *(v8 + 35) = v30;
      [(CAEmitterLayer *)self cullMinZ];
      *&v31 = v31;
      *(v8 + 36) = LODWORD(v31);
      [(CAEmitterLayer *)self cullMaxZ];
      *&v32 = v32;
      *(v8 + 37) = LODWORD(v32);
      emitterCells = [(CAEmitterLayer *)self emitterCells];
      if (emitterCells)
      {
        v34 = CA::Render::copy_render_array(emitterCells, 14);
        v35 = *(v8 + 4);
        if (v35 != v34)
        {
          if (v35 && atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v35 + 16))(v35);
          }

          if (v34)
          {
            v36 = v34;
            if (!atomic_fetch_add(v34 + 2, 1u))
            {
              v36 = 0;
              atomic_fetch_add(v34 + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v36 = 0;
          }

          *(v8 + 4) = v36;
        }

        if (v34 && atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v34 + 16))(v34);
        }
      }

      emitterBehaviors = [(CAEmitterLayer *)self emitterBehaviors];
      if (emitterBehaviors)
      {
        v38 = CA::Render::copy_render_array(emitterBehaviors, 13);
        v39 = *(v8 + 5);
        if (v39 != v38)
        {
          if (v39 && atomic_fetch_add(v39 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v39 + 16))(v39);
          }

          if (v38)
          {
            v40 = v38;
            if (!atomic_fetch_add(v38 + 2, 1u))
            {
              v40 = 0;
              atomic_fetch_add(v38 + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v40 = 0;
          }

          *(v8 + 5) = v40;
        }

        if (v38 && atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v38 + 16))(v38);
        }
      }

      emitterPath = [(CAEmitterLayer *)self emitterPath];
      if (emitterPath)
      {
        v43 = CA::Render::Path::new_path(emitterPath, v42);
        if (v43)
        {
          v44 = v43;
          v45 = *(v8 + 6);
          *(v8 + 6) = v44;
          if (v45)
          {
            if (atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v45 + 16))(v45);
            }
          }
        }
      }

      emitterRects = [(CAEmitterLayer *)self emitterRects];
      v47 = emitterRects;
      if (emitterRects)
      {
        v48 = [(NSArray *)emitterRects count];
        v68 = CA::Render::Vector::new_vector((5 * v48), 0, v49);
        if (v68)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v50 = [(NSArray *)v47 countByEnumeratingWithState:&v72 objects:v71 count:16];
          if (v50)
          {
            v51 = 0;
            v52 = *v73;
            v53 = &v68[8 * v48 + 6];
            v54 = v68 + 12;
            v55 = 0.0;
            do
            {
              v56 = 0;
              v57 = &v54[8 * v51];
              do
              {
                if (*v73 != v52)
                {
                  objc_enumerationMutation(v47);
                }

                [*(*(&v72 + 1) + 8 * v56) rectValue];
                v55 = v55 + v58 * v59;
                *(v57 - 3) = v60;
                *(v57 - 2) = v61;
                *(v57 - 1) = v58;
                *v57 = v59;
                *(v53 + 8 * v51++) = v55;
                ++v56;
                v57 += 4;
              }

              while (v50 != v56);
              v50 = [(NSArray *)v47 countByEnumeratingWithState:&v72 objects:v71 count:16];
            }

            while (v50);
          }

          v62 = *(v8 + 7);
          *(v8 + 7) = v68;
          if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v62 + 16))(v62);
          }
        }
      }

      emitterShape = [(CAEmitterLayer *)self emitterShape];
      if (emitterShape)
      {
        *(v8 + 16) = CAInternAtom(emitterShape, 0);
      }

      emitterMode = [(CAEmitterLayer *)self emitterMode];
      if (emitterMode)
      {
        *(v8 + 17) = CAInternAtom(emitterMode, 0);
      }

      renderMode = [(CAEmitterLayer *)self renderMode];
      if (renderMode)
      {
        *(v8 + 18) = CAInternAtom(renderMode, 0);
      }

      if ([(CAEmitterLayer *)self preservesDepth])
      {
        *(v8 + 3) |= 0x100u;
      }

      *(v8 + 38) = [(CAEmitterLayer *)self seed];
      [(CAEmitterLayer *)self updateInterval];
      *(v8 + 20) = v66;
      CA::Render::Layer::set_subclass(v69, v8);
      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
      }
    }
  }

  return v69;
}

- (id)implicitAnimationForKeyPath:(id)path
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CAEmitterLayer;
  result = [(CALayer *)&v9 implicitAnimationForKeyPath:?];
  if (!result)
  {
    v6 = [path rangeOfString:@"."];
    if (v7)
    {
      v8 = 0;
      if ((CAInternAtom([path substringToIndex:v6], 0) & 0xFFFFFFFE) != 0xDE)
      {
        return 0;
      }
    }

    else
    {
      v8 = CAInternAtom(path, 0);
      if (CAAtomIndexInArray(14, &[CAEmitterLayer implicitAnimationForKeyPath:]::atoms, v8) == -1)
      {
        return 0;
      }
    }

    return CALayerCreateImplicitAnimation(self, path, v8);
  }

  return result;
}

- (void)reloadValueForKeyPath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [path rangeOfString:@"."];
  pathCopy = path;
  if (v7)
  {
    pathCopy = [path substringToIndex:v5];
  }

  v8 = [pathCopy isEqualToString:@"emitterCells"];
  if ((v8 & 1) != 0 || (v8 = [pathCopy isEqualToString:@"emitterBehaviors"], v8))
  {
    v9 = CA::Transaction::ensure_compat(v8);
    layer = self->super._attr.layer;

    CA::Layer::set_commit_needed(layer, v9, 0x10000);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CAEmitterLayer;
    [(CALayer *)&v11 reloadValueForKeyPath:path];
  }
}

- (void)didChangeValueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  v6 = CAAtomIndexInArray(24, &[CAEmitterLayer didChangeValueForKey:]::atoms, v5);
  if (v6 != -1)
  {
    v7 = CA::Transaction::ensure_compat(v6);
    CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
  }

  v8.receiver = self;
  v8.super_class = CAEmitterLayer;
  [(CAEmitterLayer *)&v8 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 > 229)
  {
    if (v5 > 620)
    {
      if (v5 != 621 && v5 != 673 && v5 != 738)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v5 == 230)
      {
        return @"point";
      }

      if (v5 != 472)
      {
        if (v5 == 602)
        {
          return @"unordered";
        }

        goto LABEL_30;
      }
    }

    goto LABEL_19;
  }

  if (v5 <= 173)
  {
    if (v5 != 69)
    {
      if (v5 == 172)
      {
        v6 = MEMORY[0x1E696AD98];
        v7 = INFINITY;
        goto LABEL_27;
      }

      if (v5 == 173)
      {
        v6 = MEMORY[0x1E696AD98];
        v7 = -INFINITY;
LABEL_27:

        return [v6 numberWithDouble:v7];
      }

LABEL_30:
      v15.receiver = self;
      v15.super_class = &OBJC_METACLASS___CAEmitterLayer;
      return objc_msgSendSuper2(&v15, sel_defaultValueForKey_, key);
    }

    goto LABEL_19;
  }

  if (v5 != 174)
  {
    if (v5 != 225)
    {
      if (v5 == 226)
      {
        return @"volume";
      }

      goto LABEL_30;
    }

LABEL_19:
    v9 = MEMORY[0x1E696AD98];

    return [v9 numberWithInt:1];
  }

  v10 = MEMORY[0x1E696B098];
  v11 = *MEMORY[0x1E695F040];
  v12 = *(MEMORY[0x1E695F040] + 8);
  v13 = *(MEMORY[0x1E695F040] + 16);
  v14 = *(MEMORY[0x1E695F040] + 24);

  return [v10 valueWithRect:{v11, v12, v13, v14}];
}

- (void)setCullMaxZ:(double)z
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = z;
  CA::Layer::setter(self->super._attr.layer, 0xAC, 0x12, v3);
}

- (void)setCullMinZ:(double)z
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = z;
  CA::Layer::setter(self->super._attr.layer, 0xAD, 0x12, v3);
}

- (void)setCullRect:(CGRect)rect
{
  v4 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  CA::Layer::setter(self->super._attr.layer, 0xAE, 0x15, &rectCopy.origin.x);
}

- (void)setSpinBias:(float)bias
{
  v4 = *MEMORY[0x1E69E9840];
  biasCopy = bias;
  CA::Layer::setter(self->super._attr.layer, 0x2A2, 0x11, &biasCopy);
}

- (void)setUpdateInterval:(double)interval
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = interval;
  CA::Layer::setter(self->super._attr.layer, 0x2D8, 0x12, v3);
}

- (void)setEmitterDuration:(float)duration
{
  v4 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  CA::Layer::setter(self->super._attr.layer, 0xE1, 0x11, &durationCopy);
}

- (void)setEmitterBehaviors:(id)behaviors
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = behaviors;
  CA::Layer::setter(self->super._attr.layer, 0xDE, 3, v3);
}

- (void)setEmitterRects:(id)rects
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = rects;
  CA::Layer::setter(self->super._attr.layer, 0xE5, 3, v3);
}

- (void)setEmitterPath:(CGPath *)path
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v5 = MEMORY[0x1865E8EB0](path);
    *&v6[0] = v5;
    CA::Layer::setter(self->super._attr.layer, 0xE3, 2, v6);

    CGPathRelease(v5);
  }

  else
  {
    *&v6[0] = path;
    CA::Layer::setter(self->super._attr.layer, 0xE3, 2, v6);
  }
}

@end