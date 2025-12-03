@interface CATransition
- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer;
- (CATransitionSubtype)subtype;
- (CATransitionType)type;
- (NSDictionary)options;
- (float)endProgress;
- (float)startProgress;
- (id)filter;
- (unsigned)transitionFlags;
- (void)_copyRenderAnimationForLayer:(id)layer;
- (void)setEndProgress:(float)endProgress;
- (void)setFilter:(id)filter;
- (void)setOptions:(id)options;
- (void)setStartProgress:(float)startProgress;
- (void)setSubtype:(CATransitionSubtype)subtype;
- (void)setTransitionFlags:(unsigned int)flags;
- (void)setType:(CATransitionType)type;
@end

@implementation CATransition

- (id)filter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 255, 2, v3);
  return v3[0];
}

- (CATransitionType)type
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 725, 3, v3);
  return v3[0];
}

- (CATransitionSubtype)subtype
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 699, 3, v3);
  return v3[0];
}

- (float)startProgress
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 684, 0x11, &v3);
  return v3;
}

- (float)endProgress
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 238, 0x11, &v3);
  return v3;
}

- (NSDictionary)options
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 543, 3, v3);
  return v3[0];
}

- (unsigned)transitionFlags
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 719, 0xC, &v3);
  return v3;
}

- (void)setFilter:(id)filter
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = filter;
  CAAnimation_setter(self, 0xFF, 2, v3);
}

- (void)setEndProgress:(float)endProgress
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = endProgress;
  CAAnimation_setter(self, 0xEE, 17, &v3);
}

- (void)setStartProgress:(float)startProgress
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = startProgress;
  CAAnimation_setter(self, 0x2AC, 17, &v3);
}

- (void)setSubtype:(CATransitionSubtype)subtype
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = subtype;
  CAAnimation_setter(self, 0x2BB, 3, v3);
}

- (void)setType:(CATransitionType)type
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = type;
  CAAnimation_setter(self, 0x2D5, 3, v3);
}

- (void)_copyRenderAnimationForLayer:(id)layer
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x90uLL, 0xDEEC3011uLL);
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
    *(v5 + 3) = 61;
    ++dword_1ED4EAB2C;
    *v5 = &unk_1EF202E00;
    *(v5 + 12) = 0;
    *(v5 + 13) = 0x3F80000000000000;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    if (![(CATransition *)self _setCARenderAnimation:v5 layer:layer])
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
    [(CATransition *)self _setCARenderAnimation:0 layer:layer];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CATransition;
  v6 = [(CAAnimation *)&v21 _setCARenderAnimation:animation layer:layer];
  if (v6)
  {
    filter = [(CATransition *)self filter];
    if (filter)
    {
      *(animation + 24) = 255;
      cA_copyRenderValue = [filter CA_copyRenderValue];
      v9 = *(animation + 14);
      if (v9 != cA_copyRenderValue)
      {
        if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v9 + 16))(v9);
        }

        if (cA_copyRenderValue)
        {
          v10 = cA_copyRenderValue;
          if (!atomic_fetch_add(cA_copyRenderValue + 2, 1u))
          {
            v10 = 0;
            atomic_fetch_add(cA_copyRenderValue + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v10 = 0;
        }

        *(animation + 14) = v10;
      }

      if (cA_copyRenderValue && atomic_fetch_add(cA_copyRenderValue + 2, 0xFFFFFFFF) == 1)
      {
        (*(*cA_copyRenderValue + 16))(cA_copyRenderValue);
      }
    }

    else
    {
      type = [(CATransition *)self type];
      if (type)
      {
        *(animation + 24) = CAInternAtom(type, 1);
      }
    }

    subtype = [(CATransition *)self subtype];
    if (subtype)
    {
      *(animation + 25) = CAInternAtom(subtype, 1);
    }

    [(CATransition *)self startProgress];
    if (v13 != 0.0)
    {
      *(animation + 26) = v13;
    }

    [(CATransition *)self endProgress];
    if (v14 != 1.0)
    {
      *(animation + 27) = v14;
    }

    options = [(CATransition *)self options];
    if (options)
    {
      cA_copyRenderKeyValueArray = [(NSDictionary *)options CA_copyRenderKeyValueArray];
      v17 = *(animation + 15);
      if (v17 != cA_copyRenderKeyValueArray)
      {
        if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v17 + 16))(v17);
        }

        if (cA_copyRenderKeyValueArray)
        {
          v18 = (cA_copyRenderKeyValueArray + 8);
          if (!atomic_fetch_add((cA_copyRenderKeyValueArray + 8), 1u))
          {
            cA_copyRenderKeyValueArray = 0;
            atomic_fetch_add(v18, 0xFFFFFFFF);
          }
        }

        *(animation + 15) = cA_copyRenderKeyValueArray;
      }
    }

    transitionFlags = [(CATransition *)self transitionFlags];
    if (transitionFlags)
    {
      *(animation + 3) |= 0x2000000u;
    }

    if ((transitionFlags & 2) != 0)
    {
      *(animation + 3) |= 0x4000000u;
    }
  }

  return v6;
}

- (void)setTransitionFlags:(unsigned int)flags
{
  v4 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  CAAnimation_setter(self, 0x2CF, 12, &flagsCopy);
}

- (void)setOptions:(id)options
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = options;
  CAAnimation_setter(self, 0x21F, 3, v3);
}

@end