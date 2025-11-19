@interface CAPropertyAnimation
+ (CAPropertyAnimation)animationWithKeyPath:(NSString *)path;
- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4;
- (BOOL)isAdditive;
- (BOOL)isCumulative;
- (CAValueFunction)valueFunction;
- (NSString)keyPath;
- (unsigned)_propertyFlagsForLayer:(id)a3;
- (void)setAdditive:(BOOL)additive;
- (void)setCumulative:(BOOL)cumulative;
- (void)setKeyPath:(NSString *)keyPath;
- (void)setValueFunction:(CAValueFunction *)valueFunction;
@end

@implementation CAPropertyAnimation

- (NSString)keyPath
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 461, 3, v3);
  return v3[0];
}

- (BOOL)isAdditive
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 3, 7, &v3);
  return v3 != 0;
}

- (BOOL)isCumulative
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 175, 7, &v3);
  return v3 != 0;
}

- (CAValueFunction)valueFunction
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 733, 2, v3);
  return v3[0];
}

- (void)setValueFunction:(CAValueFunction *)valueFunction
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = valueFunction;
  CAAnimation_setter(self, 0x2DD, 2, v3);
}

- (void)setCumulative:(BOOL)cumulative
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = cumulative;
  CAAnimation_setter(self, 0xAF, 7, &v3);
}

- (void)setKeyPath:(NSString *)keyPath
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = keyPath;
  CAAnimation_setter(self, 0x1CD, 3, v3);
}

- (void)setAdditive:(BOOL)additive
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = additive;
  CAAnimation_setter(self, 3, 7, &v3);
}

- (unsigned)_propertyFlagsForLayer:(id)a3
{
  v4 = [(CAPropertyAnimation *)self keyPath];

  return animation_property_flags(v4, a3);
}

- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v7 = [(CAPropertyAnimation *)self keyPath];
  CA::Render::key_path_set(v21, v7, v8);
  v10 = v21[0];
  if (!v21[0])
  {
LABEL_5:
    v11 = 0;
    goto LABEL_7;
  }

  if ((v21[0] & 1) == 0)
  {
    if (*v21[0])
    {
      v11 = *(v21[0] + 4);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v11 = LODWORD(v21[0]) >> 1;
LABEL_7:
  CA::Render::key_path_free(*(a3 + 12), v9);
  *(a3 + 12) = v10;
  if (a4)
  {
    v12 = [a4 _renderLayerDefinesProperty:v11];
    if (!v12)
    {
      return v12;
    }

    v13 = [a4 _renderLayerPropertyAnimationFlags:v11];
  }

  else
  {
    v13 = 0;
  }

  v20.receiver = self;
  v20.super_class = CAPropertyAnimation;
  v12 = [(CAAnimation *)&v20 _setCARenderAnimation:a3 layer:a4];
  if (v12)
  {
    if (key_path_affects_container(v10))
    {
      v14 = v13 | 0x400;
    }

    else
    {
      v14 = v13;
    }

    if ([(CAPropertyAnimation *)self isAdditive])
    {
      v14 |= 2u;
    }

    if ([(CAPropertyAnimation *)self isCumulative])
    {
      v14 |= 4u;
    }

    v15 = [(CAPropertyAnimation *)self valueFunction];
    if (v15)
    {
      v16 = [(CAValueFunction *)v15 CA_copyRenderValue];
      v17 = *(a3 + 13);
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

        *(a3 + 13) = v18;
      }

      if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v16 + 16))(v16);
      }
    }

    if (v14)
    {
      *(a3 + 3) |= v14 << 8;
    }

    LOBYTE(v12) = 1;
  }

  return v12;
}

+ (CAPropertyAnimation)animationWithKeyPath:(NSString *)path
{
  v4 = objc_alloc_init(a1);
  [v4 setKeyPath:path];

  return v4;
}

@end