@interface CAAnimationGroup
- (NSArray)animations;
- (unsigned)_propertyFlagsForLayer:(id)layer;
- (void)CA_prepareRenderValue;
- (void)_copyRenderAnimationForLayer:(id)layer;
- (void)applyForTime:(double)time presentationObject:(id)object modelObject:(id)modelObject;
- (void)setAnimations:(NSArray *)animations;
- (void)setDefaultDuration:(double)duration;
@end

@implementation CAAnimationGroup

- (NSArray)animations
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 41, 3, v3);
  return v3[0];
}

- (void)CA_prepareRenderValue
{
  animations = [(CAAnimationGroup *)self animations];
  if (animations)
  {
    v3 = animations;
    v4 = [(NSArray *)animations count];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [-[NSArray objectAtIndex:](v3 objectAtIndex:{i), "CA_prepareRenderValue"}];
      }
    }
  }
}

- (void)setAnimations:(NSArray *)animations
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = animations;
  CAAnimation_setter(self, 0x29, 3, v3);
}

- (unsigned)_propertyFlagsForLayer:(id)layer
{
  animations = [(CAAnimationGroup *)self animations];
  if (!animations)
  {
    return 0;
  }

  v5 = animations;
  v6 = [(NSArray *)animations count];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  do
  {
    v9 |= [-[NSArray objectAtIndex:](v5 objectAtIndex:{v8++), "_propertyFlagsForLayer:", layer}];
  }

  while (v7 != v8);
  return v9;
}

- (void)_copyRenderAnimationForLayer:(id)layer
{
  v22 = *MEMORY[0x1E69E9840];
  animations = [(CAAnimationGroup *)self animations];
  v6 = [(NSArray *)animations count];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 8 * v6;
  if ((8 * v6) > 0x1000)
  {
    v9 = malloc_type_malloc(8 * v6, 0x898D4540uLL);
    if (v9)
    {
      goto LABEL_5;
    }

    return 0;
  }

  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
LABEL_5:
  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    v13 = [-[NSArray objectAtIndex:](animations objectAtIndex:{v10), "_copyRenderAnimationForLayer:", layer}];
    if (v13)
    {
      v11 |= *(v13 + 12) >> 8;
      *&v9[8 * v12] = v13;
      v12 = (v12 + 1);
    }

    ++v10;
  }

  while (v7 != v10);
  if (!v12)
  {
    goto LABEL_26;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x68uLL, 0xDEEC3011uLL);
  v15 = v14;
  if (v14)
  {
    *(v14 + 2) = 1;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 9) = 0;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 8) = 0;
    v14[92] &= ~1u;
    *(v14 + 3) = 21;
    ++dword_1ED4EAA8C;
    *v14 = &unk_1EF202F80;
    *(v14 + 12) = 0;
  }

  v21.receiver = self;
  v21.super_class = CAAnimationGroup;
  if ([(CAAnimation *)&v21 _setCARenderAnimation:v14 layer:layer])
  {
    v16 = CA::Render::Array::new_array(v12, v9, 0, 0);
    v17 = *(v15 + 12);
    if (v17 != v16)
    {
      if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v17 + 16))(v17);
      }

      if (v16)
      {
        v18 = v16;
        if (!atomic_fetch_add(v16 + 2, 1u))
        {
          v18 = 0;
          atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
        }
      }

      else
      {
        v18 = 0;
      }

      *(v15 + 12) = v18;
    }

    if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v16 + 16))(v16);
    }

    *(v15 + 3) |= (v11 << 8) & 0x11D3000;
    goto LABEL_33;
  }

  if (v15)
  {
    if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }

LABEL_26:
    v15 = 0;
  }

LABEL_33:
  if (v8 > 0x1000)
  {
    free(v9);
  }

  return v15;
}

- (void)applyForTime:(double)time presentationObject:(id)object modelObject:(id)modelObject
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = time;
  if ([(CAAnimation *)self isEnabled])
  {
    animations = [(CAAnimationGroup *)self animations];
    v9 = [(NSArray *)animations count];
    if (v9)
    {
      v10 = v9;
      if (mapAnimationTime(&self->super, v15, 0))
      {
        v11 = v15[0];
        [(CAAnimation *)self duration];
        v12 = 0;
        v14 = v13 * v11;
        do
        {
          [-[NSArray objectAtIndex:](animations objectAtIndex:{v12++), "applyForTime:presentationObject:modelObject:", object, modelObject, v14}];
        }

        while (v10 != v12);
      }
    }
  }
}

- (void)setDefaultDuration:(double)duration
{
  [(CAAnimation *)self duration];
  durationCopy = v5;
  if (v5 <= 0.0)
  {
    [(CAAnimation *)self setDuration:duration];
    durationCopy = duration;
  }

  animations = [(CAAnimationGroup *)self animations];
  v8 = [(NSArray *)animations count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      [-[NSArray objectAtIndex:](animations objectAtIndex:{i), "setDefaultDuration:", durationCopy}];
    }
  }
}

@end