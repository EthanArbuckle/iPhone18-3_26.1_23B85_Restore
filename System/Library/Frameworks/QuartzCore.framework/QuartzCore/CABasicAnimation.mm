@interface CABasicAnimation
- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4;
- (BOOL)roundsToInteger;
- (double)endAngle;
- (double)startAngle;
- (id)byValue;
- (id)fromValue;
- (id)toValue;
- (void)CA_prepareRenderValue;
- (void)_copyRenderAnimationForLayer:(id)a3;
- (void)applyForTime:(double)a3 presentationObject:(id)a4 modelObject:(id)a5;
- (void)setByValue:(id)byValue;
- (void)setEndAngle:(double)a3;
- (void)setFromValue:(id)fromValue;
- (void)setRoundsToInteger:(BOOL)a3;
- (void)setStartAngle:(double)a3;
- (void)setToValue:(id)toValue;
@end

@implementation CABasicAnimation

- (id)byValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 86, 2, v3);
  return v3[0];
}

- (void)CA_prepareRenderValue
{
  [-[CABasicAnimation fromValue](self "fromValue")];
  [-[CABasicAnimation toValue](self "toValue")];
  v3 = [(CABasicAnimation *)self byValue];

  [v3 CA_prepareRenderValue];
}

- (id)fromValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 275, 2, v3);
  return v3[0];
}

- (id)toValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 708, 2, v3);
  return v3[0];
}

- (BOOL)roundsToInteger
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 619, 6, &v3);
  return v3;
}

- (double)startAngle
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 682, 0x11, &v3);
  return v3;
}

- (double)endAngle
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  CAAnimation_getter(self, 236, 0x11, &v3);
  return v3;
}

- (void)applyForTime:(double)a3 presentationObject:(id)a4 modelObject:(id)a5
{
  v43[1] = *MEMORY[0x1E69E9840];
  v43[0] = a3;
  if (![(CAAnimation *)self isEnabled])
  {
    return;
  }

  v8 = [(CAPropertyAnimation *)self keyPath];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v42 = 0;
  if (!mapAnimationTime(&self->super.super, v43, &v42))
  {
    return;
  }

  v10 = [(CABasicAnimation *)self fromValue];
  v11 = [(CABasicAnimation *)self toValue];
  v12 = [(CABasicAnimation *)self byValue];
  v13 = v12;
  if (v10 && v11)
  {
    goto LABEL_18;
  }

  if (!v10 || !v12)
  {
    if (v11 && v12)
    {
      v16 = [(objc_object *)v11 CA_addValue:v12 multipliedBy:0xFFFFFFFFLL];
    }

    else
    {
      if (v10)
      {
        v15 = [a5 valueForKeyPath:v9];
        goto LABEL_17;
      }

      if (!v11)
      {
        if (!v12)
        {
          return;
        }

        v14 = [a4 valueForKeyPath:v9];
        v10 = v14;
        goto LABEL_9;
      }

      v16 = [a4 valueForKeyPath:v9];
    }

    v10 = v16;
    if (!v16)
    {
      return;
    }

    goto LABEL_19;
  }

  v14 = v10;
LABEL_9:
  v15 = [(objc_object *)v14 CA_addValue:v13 multipliedBy:1];
LABEL_17:
  v11 = v15;
LABEL_18:
  if (!v10)
  {
    return;
  }

LABEL_19:
  if (!v11)
  {
    return;
  }

  v17 = v43[0];
  v18 = v10;
  if (v43[0] <= 0.0)
  {
    goto LABEL_30;
  }

  v18 = v11;
  if (v43[0] >= 1.0)
  {
    goto LABEL_30;
  }

  [(CABasicAnimation *)self _timeFunction:v43[0]];
  v20 = v19;
  v43[0] = v19;
  [(CABasicAnimation *)self startAngle];
  v22 = v21;
  [(CABasicAnimation *)self endAngle];
  v24 = v23;
  if (v22 != 0.0 || v23 != 0.0) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (v25 = [(objc_object *)v10 objCType]) != 0 && !strcmp(v25, "{CGPoint=dd}"))
  {
    v29 = [(objc_object *)v10 objCType];
    v30 = MEMORY[0x1E696AA78];
    if (v29 && !strcmp(v29, "{CGPoint=dd}"))
    {
      [(objc_object *)v10 pointValue];
      v31.f64[1] = v32;
    }

    else
    {
      v31 = *v30;
    }

    v33 = [(objc_object *)v11 objCType];
    if (v33 && !strcmp(v33, "{CGPoint=dd}"))
    {
      [(objc_object *)v11 pointValue];
      v37.f64[0] = v38;
      v37.f64[1] = v39;
    }

    else
    {
      v37 = *v30;
    }

    v41 = 0uLL;
    CA::Render::point_interpolate(&v41, v34, v35, v36, v40, v37, v20, v22, v24);
    v26 = [MEMORY[0x1E696B098] valueWithPoint:{v41.f64[0], v41.f64[1]}];
  }

  else
  {
    *&v23 = v20;
    v18 = [(objc_object *)v10 CA_interpolateValue:v11 byFraction:v23];
    if (![(CABasicAnimation *)self roundsToInteger])
    {
      goto LABEL_30;
    }

    v26 = [(objc_object *)v18 CA_roundToIntegerFromValue:v10];
  }

  v18 = v26;
LABEL_30:
  if ([(CAPropertyAnimation *)self isCumulative]&& v42)
  {
    if ([(CAAnimation *)self autoreverses])
    {
      v27 = v10;
    }

    else
    {
      v27 = v11;
    }

    v18 = [(objc_object *)v18 CA_addValue:v27 multipliedBy:v42];
  }

  v28 = [(CAPropertyAnimation *)self valueFunction];
  if (v28)
  {
    v18 = applyValueFunction(v28, v18, &self->super, a4);
  }

  if ([(CAPropertyAnimation *)self isAdditive])
  {
    v18 = [objc_msgSend(a4 valueForKeyPath:{v9), "CA_addValue:multipliedBy:", v18, 1}];
  }

  [a4 setValue:v18 forKeyPath:v9];
}

- (void)setByValue:(id)byValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = byValue;
  CAAnimation_setter(self, 0x56, 2, v3);
}

- (void)setToValue:(id)toValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = toValue;
  CAAnimation_setter(self, 0x2C4, 2, v3);
}

- (void)setFromValue:(id)fromValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = fromValue;
  CAAnimation_setter(self, 0x113, 2, v3);
}

- (void)_copyRenderAnimationForLayer:(id)a3
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x98uLL, 0xDEEC3011uLL);
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
    *(v5 + 12) = 0;
    *(v5 + 13) = 0;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 18) = 0;
    *(v5 + 3) = 5;
    ++dword_1ED4EAA4C;
    *v5 = &unk_1EF202EB8;
    if (![(CABasicAnimation *)self _setCARenderAnimation:v5 layer:a3])
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
    [(CABasicAnimation *)self _setCARenderAnimation:0 layer:a3];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = CABasicAnimation;
  v6 = [(CAPropertyAnimation *)&v20 _setCARenderAnimation:a3 layer:a4];
  if (v6)
  {
    v7 = [(CABasicAnimation *)self fromValue];
    if (v7)
    {
      v8 = [v7 CA_copyRenderValue];
      CA::Render::BasicAnimation0::set_from(a3, v8);
      if (v8)
      {
        if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v8 + 16))(v8);
        }
      }
    }

    v9 = [(CABasicAnimation *)self toValue];
    if (v9)
    {
      v10 = [v9 CA_copyRenderValue];
      v11 = *(a3 + 15);
      if (v11 != v10)
      {
        if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v11 + 16))(v11);
        }

        if (v10)
        {
          v12 = v10;
          if (!atomic_fetch_add(v10 + 2, 1u))
          {
            v12 = 0;
            atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v12 = 0;
        }

        *(a3 + 15) = v12;
      }

      if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v10 + 16))(v10);
      }
    }

    v13 = [(CABasicAnimation *)self byValue];
    if (v13)
    {
      v14 = [v13 CA_copyRenderValue];
      v15 = *(a3 + 16);
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

        *(a3 + 16) = v16;
      }

      if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v14 + 16))(v14);
      }
    }

    if ([(CABasicAnimation *)self roundsToInteger])
    {
      *(a3 + 3) |= 0x2000000u;
    }

    [(CABasicAnimation *)self startAngle];
    if (v17 != 0.0)
    {
      *(a3 + 17) = v17;
    }

    [(CABasicAnimation *)self endAngle];
    if (v18 != 0.0)
    {
      *(a3 + 18) = v18;
    }
  }

  return v6;
}

- (void)setEndAngle:(double)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  CAAnimation_setter(self, 0xEC, 17, &v4);
}

- (void)setStartAngle:(double)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  CAAnimation_setter(self, 0x2AA, 17, &v4);
}

- (void)setRoundsToInteger:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x26B, 6, &v3);
}

@end