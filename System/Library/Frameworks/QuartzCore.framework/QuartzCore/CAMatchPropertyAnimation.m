@interface CAMatchPropertyAnimation
- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4;
- (BOOL)isAdditive;
- (CALayer)sourceLayer;
- (NSString)keyPath;
- (unint64_t)sourceLayerRenderId;
- (unsigned)_propertyFlagsForLayer:(id)a3;
- (unsigned)sourceContextId;
- (void)_copyRenderAnimationForLayer:(id)a3;
- (void)applyForTime:(double)a3 presentationObject:(id)a4 modelObject:(id)a5;
- (void)setAdditive:(BOOL)a3;
- (void)setKeyPath:(id)a3;
- (void)setSourceContextId:(unsigned int)a3;
- (void)setSourceLayer:(id)a3;
- (void)setSourceLayerRenderId:(unint64_t)a3;
@end

@implementation CAMatchPropertyAnimation

- (NSString)keyPath
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 461, 3, v3);
  return v3[0];
}

- (CALayer)sourceLayer
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 665, 4, v3);
  return v3[0];
}

- (BOOL)isAdditive
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 3, 7, &v3);
  return v3 != 0;
}

- (void)setAdditive:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 3, 7, &v3);
}

- (void)setKeyPath:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAAnimation_setter(self, 0x1CD, 3, v3);
}

- (void)setSourceContextId:(unsigned int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x297, 12, &v3);
}

- (unsigned)sourceContextId
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 663, 0xC, &v3);
  return v3;
}

- (void)setSourceLayerRenderId:(unint64_t)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAAnimation_setter(self, 0x29B, 16, v3);
}

- (unint64_t)sourceLayerRenderId
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 667, 0x10, v3);
  return v3[0];
}

- (void)setSourceLayer:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAAnimation_setter(self, 0x299, 4, v3);
}

- (unsigned)_propertyFlagsForLayer:(id)a3
{
  v4 = [(CAMatchPropertyAnimation *)self keyPath];

  return animation_property_flags(v4, a3);
}

- (void)_copyRenderAnimationForLayer:(id)a3
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x88uLL, 0xDEEC3011uLL);
  v6 = v5;
  if (v5)
  {
    *(v5 + 2) = 1;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 9) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 8) = 0;
    v5[92] &= ~1u;
    *(v5 + 13) = 0;
    *(v5 + 15) = 0;
    *(v5 + 16) = 0;
    *(v5 + 3) = 33;
    ++dword_1ED4EAABC;
    *v5 = &unk_1EF200BF0;
    if (![(CAMatchPropertyAnimation *)self _setCARenderAnimation:v5 layer:a3])
    {
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      return 0;
    }
  }

  else
  {
    [(CAMatchPropertyAnimation *)self _setCARenderAnimation:0 layer:a3];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CAMatchPropertyAnimation;
  v7 = [CAAnimation _setCARenderAnimation:sel__setCARenderAnimation_layer_ layer:?];
  if (!v7)
  {
    return v7;
  }

  v8 = [(CAMatchPropertyAnimation *)self keyPath];
  if (!v8)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v21 = 0;
  CA::Render::key_path_set(&v21, v8, v9);
  v11 = v21;
  if (!v21)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_10;
  }

  if ((v21 & 1) == 0)
  {
    if (*v21)
    {
      v12 = v21[1];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v12 = v21 >> 1;
LABEL_10:
  CA::Render::key_path_free(*(a3 + 15), v10);
  *(a3 + 15) = v11;
  if (a4)
  {
    v13 = [a4 _renderLayerPropertyAnimationFlags:v12] << 8;
  }

  else
  {
    v13 = 0;
  }

  if (key_path_affects_container(v11))
  {
    v13 |= 0x40000u;
  }

LABEL_15:
  v14 = [(CAMatchPropertyAnimation *)self isAdditive];
  *(a3 + 12) = CA::Render::Object::render_id(*(a4 + 2));
  v15 = [(CAMatchPropertyAnimation *)self sourceLayer];
  if (v15)
  {
    v16 = v15;
    *(a3 + 13) = CA::Render::Object::render_id(v15->_attr.layer);
    v17 = [-[CALayer context](v16 "context")];
LABEL_19:
    *(a3 + 28) = v17;
    goto LABEL_20;
  }

  v18 = [(CAMatchPropertyAnimation *)self sourceLayerRenderId];
  if (v18)
  {
    *(a3 + 13) = v18;
    v17 = [(CAMatchPropertyAnimation *)self sourceContextId];
    goto LABEL_19;
  }

LABEL_20:
  v19 = v13 | 0x200;
  if (!v14)
  {
    v19 = v13;
  }

  *(a3 + 3) |= v19;
  return v7;
}

- (void)applyForTime:(double)a3 presentationObject:(id)a4 modelObject:(id)a5
{
  if ([(CAAnimation *)self isEnabled])
  {
    v8 = [(CAMatchPropertyAnimation *)self sourceLayer];
    v9 = v8;
    if (v8)
    {
      while (v8 != a5)
      {
        v8 = [(CALayer *)v8 superlayer];
        if (!v8)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      v10 = a4;
      if (v9 != a5)
      {
        v10 = [(CALayer *)v9 presentationLayer];
      }

      if (v10)
      {
        v11 = [(CAMatchPropertyAnimation *)self keyPath];
        v12 = [(CALayer *)v10 valueForKeyPath:v11];
        if ([(CAMatchPropertyAnimation *)self isAdditive])
        {
          v12 = [objc_msgSend(a4 valueForKeyPath:{v11), "CA_addValue:multipliedBy:", v12, 1}];
        }

        [a4 setValue:v12 forKeyPath:v11];
      }
    }
  }
}

@end