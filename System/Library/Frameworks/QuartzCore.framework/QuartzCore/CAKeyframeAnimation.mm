@interface CAKeyframeAnimation
- (BOOL)CA_validateValue:(id)value forKey:(id)key;
- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer;
- (CAAnimationCalculationMode)calculationMode;
- (CAAnimationRotationMode)rotationMode;
- (CGPathRef)path;
- (NSArray)biasValues;
- (NSArray)continuityValues;
- (NSArray)keyTimes;
- (NSArray)tensionValues;
- (NSArray)timingFunctions;
- (NSArray)values;
- (void)CA_prepareRenderValue;
- (void)_copyRenderAnimationForLayer:(id)layer;
- (void)applyForTime:(double)time presentationObject:(id)object modelObject:(id)modelObject;
- (void)setBiasValues:(NSArray *)biasValues;
- (void)setCalculationMode:(CAAnimationCalculationMode)calculationMode;
- (void)setContinuityValues:(NSArray *)continuityValues;
- (void)setKeyTimes:(NSArray *)keyTimes;
- (void)setPath:(CGPathRef)path;
- (void)setRotationMode:(CAAnimationRotationMode)rotationMode;
- (void)setTensionValues:(NSArray *)tensionValues;
- (void)setTimingFunctions:(NSArray *)timingFunctions;
- (void)setValues:(NSArray *)values;
@end

@implementation CAKeyframeAnimation

- (void)CA_prepareRenderValue
{
  values = [(CAKeyframeAnimation *)self values];
  if (values)
  {
    v3 = values;
    v4 = [(NSArray *)values count];
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

- (NSArray)values
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 736, 3, v3);
  return v3[0];
}

- (CAAnimationCalculationMode)calculationMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 88, 3, v3);
  return v3[0];
}

- (CGPathRef)path
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 554, 3, v3);
  return v3[0];
}

- (NSArray)keyTimes
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 465, 3, v3);
  return v3[0];
}

- (NSArray)timingFunctions
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 707, 3, v3);
  return v3[0];
}

- (NSArray)tensionValues
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 703, 3, v3);
  return v3[0];
}

- (NSArray)continuityValues
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 157, 3, v3);
  return v3[0];
}

- (NSArray)biasValues
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 68, 3, v3);
  return v3[0];
}

- (CAAnimationRotationMode)rotationMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 617, 3, v3);
  return v3[0];
}

- (void)setRotationMode:(CAAnimationRotationMode)rotationMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = rotationMode;
  CAAnimation_setter(self, 0x269, 3, v3);
}

- (void)setBiasValues:(NSArray *)biasValues
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = biasValues;
  CAAnimation_setter(self, 0x44, 3, v3);
}

- (void)setContinuityValues:(NSArray *)continuityValues
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = continuityValues;
  CAAnimation_setter(self, 0x9D, 3, v3);
}

- (void)setTensionValues:(NSArray *)tensionValues
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = tensionValues;
  CAAnimation_setter(self, 0x2BF, 3, v3);
}

- (void)applyForTime:(double)time presentationObject:(id)object modelObject:(id)modelObject
{
  objectCopy = object;
  v123 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  if (![(CAAnimation *)self isEnabled:object])
  {
    return;
  }

  keyPath = [(CAPropertyAnimation *)self keyPath];
  if (!keyPath)
  {
    return;
  }

  v8 = keyPath;
  v111 = 0;
  if (!mapAnimationTime(&self->super.super, &timeCopy, &v111))
  {
    return;
  }

  path = [(CAKeyframeAnimation *)self path];
  if (path)
  {
    v11 = CA::Render::Path::new_path(path, v10);
  }

  else
  {
    v11 = 0;
  }

  v113 = 0u;
  v114 = 0u;
  v12 = calcModeFromString([(CAKeyframeAnimation *)self calculationMode]);
  keyTimes = [(CAKeyframeAnimation *)self keyTimes];
  if (!keyTimes)
  {
    if (v11)
    {
      LODWORD(v22) = v11[4];
      if (v12 == 4 || v12 == 2)
      {
        v23 = CA::Render::Path::keyframe_lengths(v11);
        if (v23)
        {
          v21 = paced_keyframe(v23, v22, timeCopy, &v113);
          goto LABEL_41;
        }
      }
    }

    else
    {
      values = [(CAKeyframeAnimation *)self values];
      if (!values)
      {
        goto LABEL_40;
      }

      v30 = values;
      v31 = [(NSArray *)values count];
      v22 = (v31 - 1);
      if (v12 == 4 || v12 == 2)
      {
        if (v22 < 1)
        {
          goto LABEL_40;
        }

        if (v22 > 0x200)
        {
          v38 = malloc_type_malloc(8 * (v31 - 1), 0x100004000313F17uLL);
          if (!v38)
          {
            goto LABEL_27;
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](v31);
          v38 = &v97 - ((v37 + 15) & 0xFFFFFFFF0);
          bzero(v38, v37);
        }

        v98 = objectCopy;
        v86 = [(NSArray *)v30 objectAtIndex:0, 0];
        for (i = 0; i != v22; ++i)
        {
          v88 = [(NSArray *)v30 objectAtIndex:i + 1];
          [v86 CA_distanceToValue:v88];
          *&v38[8 * i] = v89;
          v86 = v88;
        }

        v21 = paced_keyframe(v38, v22, timeCopy, &v113);
        v11 = v97;
        if (v22 >= 0x201)
        {
          free(v38);
        }

        objectCopy = v98;
        goto LABEL_41;
      }

      if (!v12)
      {
        LODWORD(v22) = v31;
      }
    }

    if (v22 <= 0)
    {
      goto LABEL_40;
    }

LABEL_27:
    v32 = 1.0;
    v33 = 1.0 / v22;
    if (timeCopy <= 1.0)
    {
      v32 = timeCopy;
    }

    if (v32 < 0.0)
    {
      v32 = 0.0;
    }

    timeCopy = v32;
    v34 = v32 * v22;
    v35 = floor(v34);
    v21 = vcvtmd_s64_f64(v34);
    *&v113 = v33 * v35 - v33;
    *(&v113 + 1) = v33 * v35;
    *&v114 = v33 * v35 + v33;
    *(&v114 + 1) = *&v114 + v33;
    goto LABEL_41;
  }

  v14 = keyTimes;
  v15 = [(NSArray *)keyTimes count];
  v16 = (v15 - 2);
  if (v15 < 2)
  {
LABEL_40:
    v21 = 0;
    v113 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v114 = _Q0;
    goto LABEL_41;
  }

  v17 = timeCopy;
  v18 = 1;
  while (1)
  {
    v19 = v18;
    if (v18 - v16 == 1)
    {
      break;
    }

    [-[NSArray objectAtIndex:](v14 objectAtIndex:{v18), "doubleValue"}];
    v18 = v19 + 1;
    if (v20 > v17)
    {
      v21 = v19 - 1;
      v16 = v21;
      goto LABEL_19;
    }
  }

  v21 = v15 - 2;
LABEL_19:
  [-[NSArray objectAtIndex:](v14 objectAtIndex:{v16), "doubleValue"}];
  v25 = v24;
  *(&v113 + 1) = v24;
  [-[NSArray objectAtIndex:](v14 objectAtIndex:{(v21 + 1)), "doubleValue"}];
  v27 = v26;
  *&v114 = v26;
  if (v21)
  {
    [-[NSArray objectAtIndex:](v14 objectAtIndex:{(v21 - 1)), "doubleValue"}];
  }

  else
  {
    v28 = -(v26 + v25 * -2.0);
  }

  *&v113 = v28;
  if (v21 + 2 >= v15)
  {
    v36 = -(v25 + v27 * -2.0);
  }

  else
  {
    [-[NSArray objectAtIndex:](v14 "objectAtIndex:"doubleValue"")];
  }

  *(&v114 + 1) = v36;
LABEL_41:
  v44 = calcModeFromString([(CAKeyframeAnimation *)self calculationMode]);
  v45 = 0;
  if (v44 > 2)
  {
    if (v44 == 3)
    {
      v45 = 1;
    }

    else if (v44 == 4)
    {
      timingFunctions = 0;
      v45 = 1;
      goto LABEL_48;
    }

LABEL_51:
    timingFunctions = [(CAKeyframeAnimation *)self timingFunctions];
    v47 = 0;
    goto LABEL_52;
  }

  if (!v44)
  {
    v45 = 0;
    v47 = 0;
    timeCopy = 0.0;
    v48 = 0.0;
    goto LABEL_61;
  }

  if (v44 != 2)
  {
    goto LABEL_51;
  }

  timingFunctions = 0;
LABEL_48:
  v47 = 1;
LABEL_52:
  v49 = (timeCopy - *(&v113 + 1)) / (*&v114 - *(&v113 + 1));
  if (v49 > 1.0)
  {
    v49 = 1.0;
  }

  if (v49 >= 0.0)
  {
    v48 = v49;
  }

  else
  {
    v48 = 0.0;
  }

  timeCopy = v48;
  if (timingFunctions)
  {
    v50 = [(NSArray *)timingFunctions count];
    if ((v21 & 0x80000000) == 0 && v21 < v50)
    {
      v51 = [(NSArray *)timingFunctions objectAtIndex:v21];
      *&v52 = v48;
      [v51 _solveForInput:v52];
      v48 = v53;
      timeCopy = v53;
    }
  }

LABEL_61:
  if (v11)
  {
    v110 = 0uLL;
    v109 = 0uLL;
    v108 = 0uLL;
    v107 = 0.0;
    rotationMode = [(CAKeyframeAnimation *)self rotationMode];
    v55 = rotationMode;
    if (rotationMode)
    {
      if ([(NSString *)rotationMode isEqualToString:@"auto"])
      {
        LODWORD(v55) = 0x20000;
      }

      else if ([(NSString *)v55 isEqualToString:@"autoReverse"])
      {
        LODWORD(v55) = 0x40000;
      }

      else
      {
        LODWORD(v55) = 0;
      }
    }

    if (v55)
    {
      v67 = &v107;
    }

    else
    {
      v67 = 0;
    }

    v66 = v48;
    if (CA::Render::Path::interpolate(v11, v21, v47, &v110, &v109, &v108, v67, 0, v66, 0.0))
    {
      if ([(CAPropertyAnimation *)self isCumulative]&& v111)
      {
        autoreverses = [(CAAnimation *)self autoreverses];
        v69 = &v108;
        if (autoreverses)
        {
          v69 = &v109;
        }

        v110 = vmlaq_n_f64(v110, *v69, v111);
      }

      valueFunction = [(CAPropertyAnimation *)self valueFunction];
      if (valueFunction)
      {
        v71 = valueFunction;
        inputCount = [(CAValueFunction *)valueFunction inputCount];
        outputCount = [(CAValueFunction *)v71 outputCount];
        if (inputCount <= 2 && outputCount <= 2)
        {
          *&v115.f64[0] = self;
          *&v115.f64[1] = objectCopy;
          [(CAValueFunction *)v71 apply:&v110 result:&v110 parameterFunction:functionParam context:&v115];
        }
      }

      if ([(CAPropertyAnimation *)self isAdditive])
      {
        v74 = [(objc_object *)objectCopy valueForKeyPath:v8];
        objCType = [v74 objCType];
        if (objCType && !strcmp(objCType, "{CGPoint=dd}"))
        {
          [v74 pointValue];
        }

        else
        {
          v76 = *MEMORY[0x1E696AA78];
          v77 = *(MEMORY[0x1E696AA78] + 8);
        }

        v78 = v110.f64[0] + v76;
        v79 = v110.f64[1] + v77;
        v110.f64[0] = v78;
        v110.f64[1] = v79;
      }

      else
      {
        v79 = v110.f64[1];
        v78 = v110.f64[0];
      }

      -[objc_object setValue:forKeyPath:](objectCopy, "setValue:forKeyPath:", [MEMORY[0x1E696B098] valueWithPoint:{v78, v79}], v8);
      if (v55)
      {
        if (v55 >= 0x40000)
        {
          v107 = v107 + 3.14159265;
        }

        if (objectCopy)
        {
          [(objc_object *)objectCopy transform];
        }

        else
        {
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
        }

        v103 = v119;
        v104 = v120;
        v105 = v121;
        v106 = v122;
        v99 = v115;
        v100 = v116;
        v101 = v117;
        v102 = v118;
        v116 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = xmmword_183E20E00;
        v121 = 0u;
        v122 = xmmword_183E20E60;
        v83 = __sincos_stret(v107);
        *v82.i64 = v83.__cosval;
        *v81.i64 = v83.__sinval;
        if (fabs(v83.__sinval) >= 0.0000001)
        {
          if (fabs(v83.__cosval) < 0.0000001)
          {
            v82.i64[0] = 1.0;
            v85.f64[0] = NAN;
            v85.f64[1] = NAN;
            v81.i64[0] = vbslq_s8(vnegq_f64(v85), v82, v81).u64[0];
            v82.i64[0] = 0;
          }
        }

        else
        {
          v81.i64[0] = 1.0;
          v84.f64[0] = NAN;
          v84.f64[1] = NAN;
          v82.i64[0] = vbslq_s8(vnegq_f64(v84), v81, v82).u64[0];
          v81.i64[0] = 0;
        }

        *&v115.f64[0] = v82.i64[0];
        *&v115.f64[1] = v81.i64[0];
        *&v117 = -*v81.i64;
        *(&v117 + 1) = v82.i64[0];
        CA::Mat4Impl::mat4_concat(&v99, v115.f64, v99.f64, v80);
        v119 = v103;
        v120 = v104;
        v121 = v105;
        v122 = v106;
        v115 = v99;
        v116 = v100;
        v117 = v101;
        v118 = v102;
        [(objc_object *)objectCopy setTransform:&v115];
      }
    }

    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }

    return;
  }

  values2 = [(CAKeyframeAnimation *)self values];
  if (values2)
  {
    v57 = values2;
    *&v122 = 0;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = *&v48;
    if (v45)
    {
      setupHermiteInterpolator(self, &v115, v21, &v113);
    }

    v58 = [(NSArray *)v57 count];
    v59 = v58;
    if (v58 >= 2)
    {
      v60 = (v58 - 1);
      v61 = v21 >= v60 ? v58 - 1 : v21;
      v62 = [(NSArray *)v57 objectAtIndex:v61];
      v63 = v21 + 1 < v60 ? v21 + 1 : v60;
      v64 = [(NSArray *)v57 objectAtIndex:v63];
      if (v62)
      {
        if (v64)
        {
          v98 = v64;
          if (v45)
          {
            if (v21 < 1)
            {
              v65 = 0;
            }

            else
            {
              v65 = [(NSArray *)v57 objectAtIndex:(v21 - 1)];
            }

            v97 = v65;
            if (v21 + 2 < v59)
            {
              v90 = [(NSArray *)v57 objectAtIndex:v21 + 2];
LABEL_128:
              v91 = [(NSArray *)v57 objectAtIndex:0, v97];
              v92 = [(NSArray *)v57 objectAtIndex:v60];
              HIDWORD(v93) = 1062232653;
              if (fabs(v48) >= 0.001)
              {
                if (fabs(v48 + -1.0) >= 0.001)
                {
                  if (v97 | v90 && (v45 & 1) != 0)
                  {
                    v94 = [objc_object CA_interpolateValues:v62 interpolator:"CA_interpolateValues:::interpolator:"];
                  }

                  else
                  {
                    *&v93 = v48;
                    v94 = [(objc_object *)v62 CA_interpolateValue:v98 byFraction:v93];
                  }

                  v62 = v94;
                }

                else
                {
                  v62 = v98;
                }
              }

              if ([(CAPropertyAnimation *)self isCumulative]&& v111)
              {
                if ([(CAAnimation *)self autoreverses])
                {
                  v95 = v91;
                }

                else
                {
                  v95 = v92;
                }

                v62 = [(objc_object *)v62 CA_addValue:v95 multipliedBy:v111];
              }

              valueFunction2 = [(CAPropertyAnimation *)self valueFunction];
              if (valueFunction2)
              {
                v62 = applyValueFunction(valueFunction2, v62, &self->super, objectCopy);
              }

              if ([(CAPropertyAnimation *)self isAdditive])
              {
                v62 = [-[objc_object valueForKeyPath:](objectCopy valueForKeyPath:{v8), "CA_addValue:multipliedBy:", v62, 1}];
              }

              [(objc_object *)objectCopy setValue:v62 forKeyPath:v8];
              return;
            }
          }

          else
          {
            v97 = 0;
          }

          v90 = 0;
          goto LABEL_128;
        }
      }
    }
  }
}

- (void)setPath:(CGPathRef)path
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = path;
  CAAnimation_setter(self, 0x22A, 3, v3);
}

- (void)setValues:(NSArray *)values
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = values;
  CAAnimation_setter(self, 0x2E0, 3, v3);
}

- (void)setTimingFunctions:(NSArray *)timingFunctions
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = timingFunctions;
  CAAnimation_setter(self, 0x2C3, 3, v3);
}

- (void)setKeyTimes:(NSArray *)keyTimes
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = keyTimes;
  CAAnimation_setter(self, 0x1D1, 3, v3);
}

- (void)setCalculationMode:(CAAnimationCalculationMode)calculationMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = calculationMode;
  CAAnimation_setter(self, 0x58, 3, v3);
}

- (BOOL)CA_validateValue:(id)value forKey:(id)key
{
  v10 = *MEMORY[0x1E69E9840];
  if (!value)
  {
    goto LABEL_12;
  }

  v7 = CAInternAtom(key, 0);
  if (v7 <= 464)
  {
    if (v7 != 67 && v7 != 157)
    {
      goto LABEL_12;
    }
  }

  else if (v7 != 465 && v7 != 707 && v7 != 703)
  {
LABEL_12:
    v9.receiver = self;
    v9.super_class = CAKeyframeAnimation;
    return [&v9 CA_validateValue:value forKey:key];
  }

  objc_opt_class();

  return CAObject_validateArrayOfClass(value);
}

- (void)_copyRenderAnimationForLayer:(id)layer
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xB0uLL, 0xDEEC3011uLL);
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
    *(v5 + 3) = 27;
    ++dword_1ED4EAAA4;
    *v5 = &unk_1EF202D38;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    v5[144] = 1;
    *(v5 + 19) = 0;
    *(v5 + 20) = 0;
    *(v5 + 21) = 0;
    if (![(CAKeyframeAnimation *)self _setCARenderAnimation:v5 layer:layer])
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
    [(CAKeyframeAnimation *)self _setCARenderAnimation:0 layer:layer];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)animation layer:(id)layer
{
  v71 = *MEMORY[0x1E69E9840];
  v70.receiver = self;
  v70.super_class = CAKeyframeAnimation;
  v6 = [(CAPropertyAnimation *)&v70 _setCARenderAnimation:animation layer:layer];
  if (v6)
  {
    *(animation + 144) = calcModeFromString([(CAKeyframeAnimation *)self calculationMode]);
    path = [(CAKeyframeAnimation *)self path];
    if (path)
    {
      v9 = CA::Render::Path::new_path(path, v8);
      v10 = *(animation + 17);
      if (v10 != v9)
      {
        if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v10 + 16))(v10);
        }

        if (v9)
        {
          v11 = v9;
          if (!atomic_fetch_add(v9 + 2, 1u))
          {
            v11 = 0;
            atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
          }
        }

        else
        {
          v11 = 0;
        }

        *(animation + 17) = v11;
      }

      if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v9 + 16))(v9);
      }
    }

    else
    {
      values = [(CAKeyframeAnimation *)self values];
      if (values)
      {
        v13 = values;
        v14 = [(NSArray *)values count];
        if (v14)
        {
          v15 = v14;
          AtomInKeyPath = CAInternFirstAtomInKeyPath([(CAPropertyAnimation *)self keyPath]);
          v17 = AtomInKeyPath;
          v18 = *(animation + 144);
          v19 = 8 * v15;
          if ((8 * v15) > 0x1000)
          {
            v20 = malloc_type_malloc(8 * v15, 0x2004093837F09uLL);
          }

          else
          {
            MEMORY[0x1EEE9AC00](AtomInKeyPath);
            v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v20, 8 * v15);
          }

          for (i = 0; i != v15; i = (i + 1))
          {
            v22 = [(NSArray *)v13 objectAtIndexedSubscript:i];
            if (!v18)
            {
              if (v17 == 153)
              {
                v68 = MEMORY[0x1E696AD98];
                v25 = [(__CFString *)v22 isEqualToString:@"AAAA"];
                v22 = [v68 numberWithUnsignedChar:v25];
              }

              else if (v17 == 144)
              {
                v68 = MEMORY[0x1E696AD98];
                v24 = CA::Render::Layer::gravity_from_string(v22, v23);
                v22 = [v68 numberWithUnsignedInt:v24];
              }
            }

            *&v20[8 * i] = [(__CFString *)v22 CA_copyRenderValue];
          }

          v26 = CA::Render::Array::new_array(v15, v20, 0, 0);
          if (v26)
          {
            v27 = v26;
            v28 = *(v26 + 4);
            if (v28)
            {
              v29 = 8 * v28;
              v30 = v26 + 24;
              while (*v30 && *(*v30 + 12))
              {
                v30 += 8;
                v29 -= 8;
                if (!v29)
                {
                  goto LABEL_34;
                }
              }
            }

            else
            {
LABEL_34:
              v31 = *(animation + 14);
              if (v31 != v27)
              {
                if (v31 && atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v31 + 16))(v31);
                }

                v32 = v27;
                if (!atomic_fetch_add(v27 + 2, 1u))
                {
                  v32 = 0;
                  atomic_fetch_add(v27 + 2, 0xFFFFFFFF);
                }

                *(animation + 14) = v32;
              }
            }

            if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v27 + 16))(v27);
            }
          }

          if (v19 > 0x1000)
          {
            free(v20);
          }
        }
      }
    }

    v33 = *(animation + 144);
    if (v33 == 4 || v33 == 2)
    {
      CA::Render::KeyframeAnimation::update_paced_key_times(animation);
    }

    else
    {
      keyTimes = [(CAKeyframeAnimation *)self keyTimes];
      if (keyTimes)
      {
        v69 = 0;
        v40 = copyFloatVector(keyTimes, &v69);
        v41 = *(animation + 15);
        if (v41 != v40)
        {
          if (v41 && atomic_fetch_add(v41 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v41 + 16))(v41);
          }

          if (v40)
          {
            v42 = v40;
            if (!atomic_fetch_add(v40 + 2, 1u))
            {
              v42 = 0;
              atomic_fetch_add(v40 + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v42 = 0;
          }

          *(animation + 15) = v42;
        }

        if (v40 && atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v40 + 16))(v40);
        }

        if (v69)
        {
          *(animation + 3) |= 0x8000000u;
        }
      }

      timingFunctions = [(CAKeyframeAnimation *)self timingFunctions];
      if (timingFunctions)
      {
        v56 = timingFunctions;
        v57 = [(NSArray *)timingFunctions count];
        if (v57)
        {
          v58 = v57;
          v59 = 32 * v57;
          if ((32 * v57) > 0x1000)
          {
            v60 = malloc_type_malloc(32 * v57, 0x100004000313F17uLL);
          }

          else
          {
            MEMORY[0x1EEE9AC00](v57);
            v60 = &v67 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v60, v59);
          }

          v61 = 0;
          v62 = v60;
          do
          {
            [-[NSArray objectAtIndex:](v56 objectAtIndex:{v61++), "_getPoints:", v62}];
            v62 += 32;
          }

          while (v58 != v61);
          v64 = CA::Render::Vector::new_vector((4 * v58), v60, v63);
          v65 = *(animation + 16);
          if (v65 != v64)
          {
            if (v65 && atomic_fetch_add(v65 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v65 + 16))(v65);
            }

            if (v64)
            {
              v66 = v64;
              if (!atomic_fetch_add(v64 + 2, 1u))
              {
                v66 = 0;
                atomic_fetch_add(v64 + 2, 0xFFFFFFFF);
              }
            }

            else
            {
              v66 = 0;
            }

            *(animation + 16) = v66;
          }

          if (v64 && atomic_fetch_add(v64 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v64 + 16))(v64);
          }

          if (v59 > 0x1000)
          {
            free(v60);
          }
        }
      }
    }

    if (*(animation + 144) - 3 <= 1)
    {
      tensionValues = [(CAKeyframeAnimation *)self tensionValues];
      if (tensionValues)
      {
        v36 = copyFloatVector(tensionValues, 0);
        v37 = *(animation + 19);
        if (v37 != v36)
        {
          if (v37 && atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v37 + 16))(v37);
          }

          if (v36)
          {
            v38 = v36;
            if (!atomic_fetch_add(v36 + 2, 1u))
            {
              v38 = 0;
              atomic_fetch_add(v36 + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v38 = 0;
          }

          *(animation + 19) = v38;
        }

        if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v36 + 16))(v36);
        }
      }

      continuityValues = [(CAKeyframeAnimation *)self continuityValues];
      if (continuityValues)
      {
        v44 = copyFloatVector(continuityValues, 0);
        v45 = *(animation + 20);
        if (v45 != v44)
        {
          if (v45 && atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v45 + 16))(v45);
          }

          if (v44)
          {
            v46 = v44;
            if (!atomic_fetch_add(v44 + 2, 1u))
            {
              v46 = 0;
              atomic_fetch_add(v44 + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v46 = 0;
          }

          *(animation + 20) = v46;
        }

        if (v44 && atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v44 + 16))(v44);
        }
      }

      biasValues = [(CAKeyframeAnimation *)self biasValues];
      if (biasValues)
      {
        v48 = copyFloatVector(biasValues, 0);
        v49 = *(animation + 21);
        if (v49 != v48)
        {
          if (v49 && atomic_fetch_add(v49 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v49 + 16))(v49);
          }

          if (v48)
          {
            v50 = v48;
            if (!atomic_fetch_add(v48 + 2, 1u))
            {
              v50 = 0;
              atomic_fetch_add(v48 + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v50 = 0;
          }

          *(animation + 21) = v50;
        }

        if (v48 && atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v48 + 16))(v48);
        }
      }
    }

    rotationMode = [(CAKeyframeAnimation *)self rotationMode];
    if (rotationMode)
    {
      v52 = rotationMode;
      if ([(NSString *)rotationMode isEqualToString:@"auto"])
      {
        v53 = 0x2000000;
LABEL_104:
        *(animation + 3) |= v53;
        return v6;
      }

      if ([(NSString *)v52 isEqualToString:@"autoReverse"])
      {
        v53 = 0x4000000;
        goto LABEL_104;
      }
    }
  }

  return v6;
}

@end