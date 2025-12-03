@interface CAMatchPropertyAnimation
- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer;
- (BOOL)isAdditive;
- (CALayer)sourceLayer;
- (NSString)keyPath;
- (unint64_t)sourceLayerRenderId;
- (unsigned)_propertyFlagsForLayer:(id)layer;
- (unsigned)sourceContextId;
- (void)_copyRenderAnimationForLayer:(id)layer;
- (void)applyForTime:(double)time presentationObject:(id)object modelObject:(id)modelObject;
- (void)setAdditive:(BOOL)additive;
- (void)setKeyPath:(id)path;
- (void)setSourceContextId:(unsigned int)id;
- (void)setSourceLayer:(id)layer;
- (void)setSourceLayerRenderId:(unint64_t)id;
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

- (void)setAdditive:(BOOL)additive
{
  v4 = *MEMORY[0x1E69E9840];
  additiveCopy = additive;
  CAAnimation_setter(self, 3, 7, &additiveCopy);
}

- (void)setKeyPath:(id)path
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = path;
  CAAnimation_setter(self, 0x1CD, 3, v3);
}

- (void)setSourceContextId:(unsigned int)id
{
  v4 = *MEMORY[0x1E69E9840];
  idCopy = id;
  CAAnimation_setter(self, 0x297, 12, &idCopy);
}

- (unsigned)sourceContextId
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 663, 0xC, &v3);
  return v3;
}

- (void)setSourceLayerRenderId:(unint64_t)id
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = id;
  CAAnimation_setter(self, 0x29B, 16, v3);
}

- (unint64_t)sourceLayerRenderId
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 667, 0x10, v3);
  return v3[0];
}

- (void)setSourceLayer:(id)layer
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = layer;
  CAAnimation_setter(self, 0x299, 4, v3);
}

- (unsigned)_propertyFlagsForLayer:(id)layer
{
  keyPath = [(CAMatchPropertyAnimation *)self keyPath];

  return animation_property_flags(keyPath, layer);
}

- (void)_copyRenderAnimationForLayer:(id)layer
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
    if (![(CAMatchPropertyAnimation *)self _setCARenderAnimation:v5 layer:layer])
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
    [(CAMatchPropertyAnimation *)self _setCARenderAnimation:0 layer:layer];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer
{
  v23 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CAMatchPropertyAnimation;
  v7 = [CAAnimation _setCARenderAnimation:sel__setCARenderAnimation_layer_ layer:?];
  if (!v7)
  {
    return v7;
  }

  keyPath = [(CAMatchPropertyAnimation *)self keyPath];
  if (!keyPath)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v21 = 0;
  CA::Render::key_path_set(&v21, keyPath, v9);
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
  CA::Render::key_path_free(*(animation + 15), v10);
  *(animation + 15) = v11;
  if (layer)
  {
    v13 = [layer _renderLayerPropertyAnimationFlags:v12] << 8;
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
  isAdditive = [(CAMatchPropertyAnimation *)self isAdditive];
  *(animation + 12) = CA::Render::Object::render_id(*(layer + 2));
  sourceLayer = [(CAMatchPropertyAnimation *)self sourceLayer];
  if (sourceLayer)
  {
    v16 = sourceLayer;
    *(animation + 13) = CA::Render::Object::render_id(sourceLayer->_attr.layer);
    sourceContextId = [-[CALayer context](v16 "context")];
LABEL_19:
    *(animation + 28) = sourceContextId;
    goto LABEL_20;
  }

  sourceLayerRenderId = [(CAMatchPropertyAnimation *)self sourceLayerRenderId];
  if (sourceLayerRenderId)
  {
    *(animation + 13) = sourceLayerRenderId;
    sourceContextId = [(CAMatchPropertyAnimation *)self sourceContextId];
    goto LABEL_19;
  }

LABEL_20:
  v19 = v13 | 0x200;
  if (!isAdditive)
  {
    v19 = v13;
  }

  *(animation + 3) |= v19;
  return v7;
}

- (void)applyForTime:(double)time presentationObject:(id)object modelObject:(id)modelObject
{
  if ([(CAAnimation *)self isEnabled])
  {
    sourceLayer = [(CAMatchPropertyAnimation *)self sourceLayer];
    v9 = sourceLayer;
    if (sourceLayer)
    {
      while (sourceLayer != modelObject)
      {
        sourceLayer = [(CALayer *)sourceLayer superlayer];
        if (!sourceLayer)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      objectCopy = object;
      if (v9 != modelObject)
      {
        objectCopy = [(CALayer *)v9 presentationLayer];
      }

      if (objectCopy)
      {
        keyPath = [(CAMatchPropertyAnimation *)self keyPath];
        v12 = [(CALayer *)objectCopy valueForKeyPath:keyPath];
        if ([(CAMatchPropertyAnimation *)self isAdditive])
        {
          v12 = [objc_msgSend(object valueForKeyPath:{keyPath), "CA_addValue:multipliedBy:", v12, 1}];
        }

        [object setValue:v12 forKeyPath:keyPath];
      }
    }
  }
}

@end