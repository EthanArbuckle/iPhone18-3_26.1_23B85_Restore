@interface CABasicAnimation
- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer;
- (BOOL)roundsToInteger;
- (double)endAngle;
- (double)startAngle;
- (id)byValue;
- (id)fromValue;
- (id)toValue;
- (void)CA_prepareRenderValue;
- (void)_copyRenderAnimationForLayer:(id)layer;
- (void)applyForTime:(double)time presentationObject:(id)object modelObject:(id)modelObject;
- (void)setByValue:(id)byValue;
- (void)setEndAngle:(double)angle;
- (void)setFromValue:(id)fromValue;
- (void)setRoundsToInteger:(BOOL)integer;
- (void)setStartAngle:(double)angle;
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
  byValue = [(CABasicAnimation *)self byValue];

  [byValue CA_prepareRenderValue];
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

- (void)applyForTime:(double)time presentationObject:(id)object modelObject:(id)modelObject
{
  v43[1] = *MEMORY[0x1E69E9840];
  v43[0] = time;
  if (![(CAAnimation *)self isEnabled])
  {
    return;
  }

  keyPath = [(CAPropertyAnimation *)self keyPath];
  if (!keyPath)
  {
    return;
  }

  v9 = keyPath;
  v42 = 0;
  if (!mapAnimationTime(&self->super.super, v43, &v42))
  {
    return;
  }

  fromValue = [(CABasicAnimation *)self fromValue];
  toValue = [(CABasicAnimation *)self toValue];
  byValue = [(CABasicAnimation *)self byValue];
  v13 = byValue;
  if (fromValue && toValue)
  {
    goto LABEL_18;
  }

  if (!fromValue || !byValue)
  {
    if (toValue && byValue)
    {
      v16 = [(objc_object *)toValue CA_addValue:byValue multipliedBy:0xFFFFFFFFLL];
    }

    else
    {
      if (fromValue)
      {
        v15 = [modelObject valueForKeyPath:v9];
        goto LABEL_17;
      }

      if (!toValue)
      {
        if (!byValue)
        {
          return;
        }

        v14 = [object valueForKeyPath:v9];
        fromValue = v14;
        goto LABEL_9;
      }

      v16 = [object valueForKeyPath:v9];
    }

    fromValue = v16;
    if (!v16)
    {
      return;
    }

    goto LABEL_19;
  }

  v14 = fromValue;
LABEL_9:
  v15 = [(objc_object *)v14 CA_addValue:v13 multipliedBy:1];
LABEL_17:
  toValue = v15;
LABEL_18:
  if (!fromValue)
  {
    return;
  }

LABEL_19:
  if (!toValue)
  {
    return;
  }

  v17 = v43[0];
  v18 = fromValue;
  if (v43[0] <= 0.0)
  {
    goto LABEL_30;
  }

  v18 = toValue;
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
  if (v22 != 0.0 || v23 != 0.0) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (v25 = [(objc_object *)fromValue objCType]) != 0 && !strcmp(v25, "{CGPoint=dd}"))
  {
    objCType = [(objc_object *)fromValue objCType];
    v30 = MEMORY[0x1E696AA78];
    if (objCType && !strcmp(objCType, "{CGPoint=dd}"))
    {
      [(objc_object *)fromValue pointValue];
      v31.f64[1] = v32;
    }

    else
    {
      v31 = *v30;
    }

    objCType2 = [(objc_object *)toValue objCType];
    if (objCType2 && !strcmp(objCType2, "{CGPoint=dd}"))
    {
      [(objc_object *)toValue pointValue];
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
    v18 = [(objc_object *)fromValue CA_interpolateValue:toValue byFraction:v23];
    if (![(CABasicAnimation *)self roundsToInteger])
    {
      goto LABEL_30;
    }

    v26 = [(objc_object *)v18 CA_roundToIntegerFromValue:fromValue];
  }

  v18 = v26;
LABEL_30:
  if ([(CAPropertyAnimation *)self isCumulative]&& v42)
  {
    if ([(CAAnimation *)self autoreverses])
    {
      v27 = fromValue;
    }

    else
    {
      v27 = toValue;
    }

    v18 = [(objc_object *)v18 CA_addValue:v27 multipliedBy:v42];
  }

  valueFunction = [(CAPropertyAnimation *)self valueFunction];
  if (valueFunction)
  {
    v18 = applyValueFunction(valueFunction, v18, &self->super, object);
  }

  if ([(CAPropertyAnimation *)self isAdditive])
  {
    v18 = [objc_msgSend(object valueForKeyPath:{v9), "CA_addValue:multipliedBy:", v18, 1}];
  }

  [object setValue:v18 forKeyPath:v9];
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

- (void)_copyRenderAnimationForLayer:(id)layer
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
    if (![(CABasicAnimation *)self _setCARenderAnimation:v5 layer:layer])
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
    [(CABasicAnimation *)self _setCARenderAnimation:0 layer:layer];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = CABasicAnimation;
  v6 = [(CAPropertyAnimation *)&v20 _setCARenderAnimation:animation layer:layer];
  if (v6)
  {
    fromValue = [(CABasicAnimation *)self fromValue];
    if (fromValue)
    {
      cA_copyRenderValue = [fromValue CA_copyRenderValue];
      CA::Render::BasicAnimation0::set_from(animation, cA_copyRenderValue);
      if (cA_copyRenderValue)
      {
        if (atomic_fetch_add(cA_copyRenderValue + 2, 0xFFFFFFFF) == 1)
        {
          (*(*cA_copyRenderValue + 16))(cA_copyRenderValue);
        }
      }
    }

    toValue = [(CABasicAnimation *)self toValue];
    if (toValue)
    {
      cA_copyRenderValue2 = [toValue CA_copyRenderValue];
      v11 = *(animation + 15);
      if (v11 != cA_copyRenderValue2)
      {
        if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v11 + 16))(v11);
        }

        if (cA_copyRenderValue2)
        {
          v12 = cA_copyRenderValue2;
          if (!atomic_fetch_add(cA_copyRenderValue2 + 2, 1u))
          {
            v12 = 0;
            atomic_fetch_add(cA_copyRenderValue2 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v12 = 0;
        }

        *(animation + 15) = v12;
      }

      if (cA_copyRenderValue2 && atomic_fetch_add(cA_copyRenderValue2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*cA_copyRenderValue2 + 16))(cA_copyRenderValue2);
      }
    }

    byValue = [(CABasicAnimation *)self byValue];
    if (byValue)
    {
      cA_copyRenderValue3 = [byValue CA_copyRenderValue];
      v15 = *(animation + 16);
      if (v15 != cA_copyRenderValue3)
      {
        if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v15 + 16))(v15);
        }

        if (cA_copyRenderValue3)
        {
          v16 = cA_copyRenderValue3;
          if (!atomic_fetch_add(cA_copyRenderValue3 + 2, 1u))
          {
            v16 = 0;
            atomic_fetch_add(cA_copyRenderValue3 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v16 = 0;
        }

        *(animation + 16) = v16;
      }

      if (cA_copyRenderValue3 && atomic_fetch_add(cA_copyRenderValue3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*cA_copyRenderValue3 + 16))(cA_copyRenderValue3);
      }
    }

    if ([(CABasicAnimation *)self roundsToInteger])
    {
      *(animation + 3) |= 0x2000000u;
    }

    [(CABasicAnimation *)self startAngle];
    if (v17 != 0.0)
    {
      *(animation + 17) = v17;
    }

    [(CABasicAnimation *)self endAngle];
    if (v18 != 0.0)
    {
      *(animation + 18) = v18;
    }
  }

  return v6;
}

- (void)setEndAngle:(double)angle
{
  v5 = *MEMORY[0x1E69E9840];
  angleCopy = angle;
  v4 = angleCopy;
  CAAnimation_setter(self, 0xEC, 17, &v4);
}

- (void)setStartAngle:(double)angle
{
  v5 = *MEMORY[0x1E69E9840];
  angleCopy = angle;
  v4 = angleCopy;
  CAAnimation_setter(self, 0x2AA, 17, &v4);
}

- (void)setRoundsToInteger:(BOOL)integer
{
  v4 = *MEMORY[0x1E69E9840];
  integerCopy = integer;
  CAAnimation_setter(self, 0x26B, 6, &integerCopy);
}

@end