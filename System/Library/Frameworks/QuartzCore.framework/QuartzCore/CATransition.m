@interface CATransition
- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4;
- (CATransitionSubtype)subtype;
- (CATransitionType)type;
- (NSDictionary)options;
- (float)endProgress;
- (float)startProgress;
- (id)filter;
- (unsigned)transitionFlags;
- (void)_copyRenderAnimationForLayer:(id)a3;
- (void)setEndProgress:(float)endProgress;
- (void)setFilter:(id)filter;
- (void)setOptions:(id)a3;
- (void)setStartProgress:(float)startProgress;
- (void)setSubtype:(CATransitionSubtype)subtype;
- (void)setTransitionFlags:(unsigned int)a3;
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

- (void)_copyRenderAnimationForLayer:(id)a3
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
    if (![(CATransition *)self _setCARenderAnimation:v5 layer:a3])
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
    [(CATransition *)self _setCARenderAnimation:0 layer:a3];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CATransition;
  v6 = [(CAAnimation *)&v21 _setCARenderAnimation:a3 layer:a4];
  if (v6)
  {
    v7 = [(CATransition *)self filter];
    if (v7)
    {
      *(a3 + 24) = 255;
      v8 = [v7 CA_copyRenderValue];
      v9 = *(a3 + 14);
      if (v9 != v8)
      {
        if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v9 + 16))(v9);
        }

        if (v8)
        {
          v10 = v8;
          if (!atomic_fetch_add(v8 + 2, 1u))
          {
            v10 = 0;
            atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v10 = 0;
        }

        *(a3 + 14) = v10;
      }

      if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
      }
    }

    else
    {
      v11 = [(CATransition *)self type];
      if (v11)
      {
        *(a3 + 24) = CAInternAtom(v11, 1);
      }
    }

    v12 = [(CATransition *)self subtype];
    if (v12)
    {
      *(a3 + 25) = CAInternAtom(v12, 1);
    }

    [(CATransition *)self startProgress];
    if (v13 != 0.0)
    {
      *(a3 + 26) = v13;
    }

    [(CATransition *)self endProgress];
    if (v14 != 1.0)
    {
      *(a3 + 27) = v14;
    }

    v15 = [(CATransition *)self options];
    if (v15)
    {
      v16 = [(NSDictionary *)v15 CA_copyRenderKeyValueArray];
      v17 = *(a3 + 15);
      if (v17 != v16)
      {
        if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v17 + 16))(v17);
        }

        if (v16)
        {
          v18 = (v16 + 8);
          if (!atomic_fetch_add((v16 + 8), 1u))
          {
            v16 = 0;
            atomic_fetch_add(v18, 0xFFFFFFFF);
          }
        }

        *(a3 + 15) = v16;
      }
    }

    v19 = [(CATransition *)self transitionFlags];
    if (v19)
    {
      *(a3 + 3) |= 0x2000000u;
    }

    if ((v19 & 2) != 0)
    {
      *(a3 + 3) |= 0x4000000u;
    }
  }

  return v6;
}

- (void)setTransitionFlags:(unsigned int)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x2CF, 12, &v3);
}

- (void)setOptions:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAAnimation_setter(self, 0x21F, 3, v3);
}

@end