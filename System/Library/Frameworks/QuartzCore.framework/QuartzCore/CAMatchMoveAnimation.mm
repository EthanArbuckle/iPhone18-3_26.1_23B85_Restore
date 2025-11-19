@interface CAMatchMoveAnimation
+ (id)defaultValueForKey:(id)a3;
- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4;
- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4;
- (BOOL)appliesRotation;
- (BOOL)appliesScale;
- (BOOL)appliesX;
- (BOOL)appliesY;
- (BOOL)isAdditive;
- (BOOL)targetsSuperlayer;
- (BOOL)usesNormalizedCoordinates;
- (CALayer)sourceLayer;
- (NSArray)sourcePoints;
- (NSString)keyPath;
- (unint64_t)sourceLayerRenderId;
- (unsigned)_propertyFlagsForLayer:(id)a3;
- (unsigned)sourceContextId;
- (void)_copyRenderAnimationForLayer:(id)a3;
- (void)applyForTime:(double)a3 presentationObject:(id)a4 modelObject:(id)a5;
- (void)applyForTime:(void *)a1 presentationObject:(float64x2_t *)this modelObject:(double *)a3;
- (void)setAdditive:(BOOL)a3;
- (void)setAppliesRotation:(BOOL)a3;
- (void)setAppliesScale:(BOOL)a3;
- (void)setAppliesX:(BOOL)a3;
- (void)setAppliesY:(BOOL)a3;
- (void)setKeyPath:(id)a3;
- (void)setSourceContextId:(unsigned int)a3;
- (void)setSourceLayer:(id)a3;
- (void)setSourceLayerRenderId:(unint64_t)a3;
- (void)setSourcePoints:(id)a3;
- (void)setTargetsSuperlayer:(BOOL)a3;
- (void)setUsesNormalizedCoordinates:(BOOL)a3;
@end

@implementation CAMatchMoveAnimation

- (NSString)keyPath
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 461, 3, v3);
  return v3[0];
}

- (BOOL)targetsSuperlayer
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 702, 7, &v3);
  return v3 != 0;
}

- (CALayer)sourceLayer
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 665, 4, v3);
  return v3[0];
}

- (NSArray)sourcePoints
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CAAnimation_getter(self, 670, 3, v3);
  return v3[0];
}

- (BOOL)appliesX
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 45, 7, &v3);
  return v3 != 0;
}

- (BOOL)appliesY
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 46, 7, &v3);
  return v3 != 0;
}

- (BOOL)appliesScale
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 44, 7, &v3);
  return v3 != 0;
}

- (BOOL)appliesRotation
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 43, 7, &v3);
  return v3 != 0;
}

- (BOOL)usesNormalizedCoordinates
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 730, 7, &v3);
  return v3 != 0;
}

- (BOOL)isAdditive
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CAAnimation_getter(self, 3, 7, &v3);
  return v3 != 0;
}

+ (id)defaultValueForKey:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  if ((v5 - 43) < 4)
  {
    return *MEMORY[0x1E695E4D0];
  }

  if (v5 == 461)
  {
    return @"position";
  }

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CAMatchMoveAnimation;
  return objc_msgSendSuper2(&v7, sel_defaultValueForKey_, a3);
}

- (void)setAdditive:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 3, 7, &v3);
}

- (void)setAppliesRotation:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x2B, 7, &v3);
}

- (void)setAppliesScale:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x2C, 7, &v3);
}

- (void)setAppliesY:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x2E, 7, &v3);
}

- (void)setAppliesX:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x2D, 7, &v3);
}

- (void)setUsesNormalizedCoordinates:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x2DA, 7, &v3);
}

- (void)setTargetsSuperlayer:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CAAnimation_setter(self, 0x2BE, 7, &v3);
}

- (void)setKeyPath:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAAnimation_setter(self, 0x1CD, 3, v3);
}

- (void)setSourcePoints:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CAAnimation_setter(self, 0x29E, 3, v3);
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

- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 && [a4 isEqualToString:@"sourcePoints"])
  {
    objc_opt_class();

    return CAObject_validateArrayOfClass(a3);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CAMatchMoveAnimation;
    return [&v8 CA_validateValue:a3 forKey:a4];
  }
}

- (unsigned)_propertyFlagsForLayer:(id)a3
{
  v4 = [(CAMatchMoveAnimation *)self keyPath];

  return animation_property_flags(v4, a3);
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
    *(v5 + 13) = 0;
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
    *(v5 + 15) = 0;
    *(v5 + 3) = 32;
    ++dword_1ED4EAAB8;
    *v5 = &unk_1EF200B38;
    if (![(CAMatchMoveAnimation *)self _setCARenderAnimation:v5 layer:a3])
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
    [(CAMatchMoveAnimation *)self _setCARenderAnimation:0 layer:a3];
  }

  return v6;
}

- (BOOL)_setCARenderAnimation:(void *)a3 layer:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CAMatchMoveAnimation;
  v7 = [CAAnimation _setCARenderAnimation:sel__setCARenderAnimation_layer_ layer:?];
  if (!v7)
  {
    return v7;
  }

  v8 = [(CAMatchMoveAnimation *)self keyPath];
  if (!v8)
  {
    goto LABEL_11;
  }

  v31 = 0;
  CA::Render::key_path_set(&v31, v8, v9);
  v11 = v31;
  if (!v31)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_9;
  }

  if ((v31 & 1) == 0)
  {
    if (*v31)
    {
      v12 = v31[1];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v12 = v31 >> 1;
LABEL_9:
  CA::Render::key_path_free(*(a3 + 15), v10);
  *(a3 + 15) = v11;
  if (a4)
  {
    v13 = ([a4 _renderLayerPropertyAnimationFlags:v12] << 8) | 0x40000;
    goto LABEL_12;
  }

LABEL_11:
  v13 = 0x40000;
LABEL_12:
  v14 = [(CAMatchMoveAnimation *)self targetsSuperlayer];
  *(a3 + 12) = CA::Render::Object::render_id(*(a4 + 2));
  v15 = [(CAMatchMoveAnimation *)self sourceLayer];
  if (v15)
  {
    v16 = v15;
    *(a3 + 13) = CA::Render::Object::render_id(v15->_attr.layer);
    v17 = [-[CALayer context](v16 "context")];
LABEL_16:
    *(a3 + 28) = v17;
    goto LABEL_17;
  }

  v18 = [(CAMatchMoveAnimation *)self sourceLayerRenderId];
  if (v18)
  {
    *(a3 + 13) = v18;
    v17 = [(CAMatchMoveAnimation *)self sourceContextId];
    goto LABEL_16;
  }

LABEL_17:
  v19 = [(CAMatchMoveAnimation *)self sourcePoints];
  if (v19)
  {
    v20 = point_vector_from_array(v19);
    v21 = *(a3 + 17);
    if (v21 != v20)
    {
      if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v21 + 16))(v21);
      }

      if (v20)
      {
        v22 = v20;
        if (!atomic_fetch_add(v20 + 2, 1u))
        {
          v22 = 0;
          atomic_fetch_add(v20 + 2, 0xFFFFFFFF);
        }
      }

      else
      {
        v22 = 0;
      }

      *(a3 + 17) = v22;
    }

    if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v20 + 16))(v20);
    }
  }

  v23 = [(CAMatchMoveAnimation *)self appliesX];
  v24 = [(CAMatchMoveAnimation *)self appliesY];
  v25 = [(CAMatchMoveAnimation *)self appliesScale];
  v26 = [(CAMatchMoveAnimation *)self appliesRotation];
  v27 = [(CAMatchMoveAnimation *)self usesNormalizedCoordinates];
  v28 = [(CAMatchMoveAnimation *)self isAdditive];
  v29 = v13 | 0x20000000;
  if (!v14)
  {
    v29 = v13;
  }

  if (v23)
  {
    v29 |= 0x2000000u;
  }

  if (v24)
  {
    v29 |= 0x4000000u;
  }

  if (v25)
  {
    v29 |= 0x8000000u;
  }

  if (v26)
  {
    v29 |= 0x10000000u;
  }

  if (v27)
  {
    v29 |= 0x40000000u;
  }

  if (v28)
  {
    v29 |= 0x200u;
  }

  *(a3 + 3) |= v29;
  return v7;
}

- (void)applyForTime:(double)a3 presentationObject:(id)a4 modelObject:(id)a5
{
  v78 = *MEMORY[0x1E69E9840];
  if (![(CAAnimation *)self isEnabled])
  {
    return;
  }

  v8 = [(CAMatchMoveAnimation *)self sourceLayer];
  v9 = v8;
  if (!v8)
  {
LABEL_5:
    v10 = a4;
    if (v9 != a5)
    {
      v10 = [(CALayer *)v9 presentationLayer];
    }

    if (!v10)
    {
      return;
    }

    v11 = [(CAMatchMoveAnimation *)self keyPath];
    v12 = [(NSString *)v11 isEqualToString:@"position"];
    if (v12 || (v13 = a4, [(CAMatchMoveAnimation *)self targetsSuperlayer]))
    {
      v13 = [a4 superlayer];
      if (!v13)
      {
        return;
      }
    }

    v14 = [(CAMatchMoveAnimation *)self sourcePoints];
    v15 = [(NSArray *)v14 count];
    v16 = v15 >= 4 ? 4 : v15;
    if (!v15)
    {
      return;
    }

    v17 = v15;
    v61 = v12;
    v62 = v11;
    v18 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    do
    {
      v19 = [(NSArray *)v14 objectAtIndex:v18];
      v20 = [v19 objCType];
      if (v20 && !strcmp(v20, "{CGPoint=dd}"))
      {
        [v19 pointValue];
        *(&v21 + 1) = v22;
      }

      else
      {
        v21 = *MEMORY[0x1E696AA78];
      }

      *(&v74 + v18++) = v21;
    }

    while (v16 != v18);
    if ([(CAMatchMoveAnimation *)self usesNormalizedCoordinates])
    {
      [(CALayer *)v10 bounds];
      v24.f64[1] = v23;
      v25 = &v74;
      v26 = v16;
      do
      {
        *v25 = vmulq_f64(*v25, v24);
        ++v25;
        --v26;
      }

      while (v26);
    }

    *&v63[0] = &v74;
    *(&v63[0] + 1) = v16;
    *&v65.f64[0] = v63;
    *&v65.f64[1] = [CAMatchMoveAnimation applyForTime:presentationObject:modelObject:]::MapPoints::map;
    *&v66.f64[0] = [CAMatchMoveAnimation applyForTime:presentationObject:modelObject:]::MapPoints::unmap;
    CA::Layer::map_geometry(v10, v13, map_fun, map_unfun, &v65);
    v27 = [(CAMatchMoveAnimation *)self isAdditive];
    if (v17 == 2)
    {
      v28 = 0.5;
      if (v61)
      {
        [a4 anchorPoint];
      }

      v60 = vbslq_s8(vceqq_f64(v74, v75), v74, vmlaq_n_f64(v74, vsubq_f64(v75, v74), v28));
      v29 = [(CAMatchMoveAnimation *)self appliesScale];
      v30 = [(CAMatchMoveAnimation *)self appliesRotation];
      if (v61 && (v29 || v30))
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v31 = vsubq_f64(v75, v74);
        if (v30)
        {
          v59 = v31;
          v32 = atan2(v31.f64[1], v31.f64[0]);
          v68 = 0u;
          v69 = 0u;
          v70 = xmmword_183E20E00;
          v72 = xmmword_183E20E60;
          v36 = __sincos_stret(v32);
          *v34.i64 = v36.__cosval;
          *v33.i64 = v36.__sinval;
          if (fabs(v36.__sinval) >= 0.0000001)
          {
            v35.i64[0] = 1.0;
            v45.f64[0] = NAN;
            v45.f64[1] = NAN;
            v35.i64[0] = vbslq_s8(vnegq_f64(v45), v35, v33).u64[0];
            if (fabs(v36.__cosval) < 0.0000001)
            {
              *v33.i64 = 0.0;
            }

            else
            {
              *v35.i64 = v36.__sinval;
              *v33.i64 = v36.__cosval;
            }
          }

          else
          {
            v33.i64[0] = 1.0;
            v37 = -1;
            v35.i64[1] = -1;
            v33.i64[0] = vbslq_s8(vnegq_f64(v35), v33, v34).u64[0];
            v35.i64[0] = 0;
          }

          *&v65.f64[0] = v33.i64[0];
          *&v65.f64[1] = v35.i64[0];
          v67.f64[0] = -*v35.i64;
          *&v67.f64[1] = v33.i64[0];
          v31 = v59;
        }

        else
        {
          v65 = xmmword_183E20E00;
          v67 = xmmword_183E20E60;
          v68 = 0uLL;
          v69 = 0uLL;
          v70 = xmmword_183E20E00;
          v72 = xmmword_183E20E60;
        }

        if (v29)
        {
          v46 = sqrt(vaddvq_f64(vmulq_f64(v31, v31)));
          [a4 size];
          v48 = v46 / v47;
          v65 = vmulq_n_f64(v65, v48);
          v66 = vmulq_n_f64(0, v48);
          v67 = vmulq_n_f64(v67, v48);
          v68 = v66;
          v69 = 0u;
          v70 = xmmword_183E20E00;
        }

        v44 = &v65;
        goto LABEL_46;
      }
    }

    else
    {
      if (v17 == 1)
      {
        v60 = v74;
        goto LABEL_47;
      }

      if (v17 < 4)
      {
        return;
      }

      v38 = 0.5;
      v39 = 0.5;
      if (v61)
      {
        [a4 anchorPoint];
      }

      v64[0] = v38;
      v64[1] = v39;
      v40 = vbslq_s8(vceqq_f64(v74, v75), v74, vmlaq_n_f64(v74, vsubq_f64(v75, v74), v38));
      v41 = vbslq_s8(vceqq_f64(v77, v76), v77, vmlaq_n_f64(v77, vsubq_f64(v76, v77), v38));
      v60 = vbslq_s8(vceqq_f64(v40, v41), v40, vmlaq_n_f64(v40, vsubq_f64(v41, v40), v39));
      if (v61)
      {
        v73[0] = vsubq_f64(v74, v60);
        v73[1] = vsubq_f64(v75, v60);
        v73[2] = vsubq_f64(v76, v60);
        v73[3] = vsubq_f64(v77, v60);
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        [a4 size];
        *&v63[0] = v42;
        *(&v63[0] + 1) = v43;
        CA::Mat4Impl::mat4_set_corner_matrix(&v65, v73, v63, v64);
        v63[0] = v65;
        v63[1] = v66;
        v63[2] = v67;
        v63[3] = v68;
        v63[4] = v69;
        v63[5] = v70;
        v63[6] = v71;
        v63[7] = v72;
        v44 = v63;
LABEL_46:
        set_layer_transform(a4, v44, v27);
      }
    }

LABEL_47:
    v49 = [(CAMatchMoveAnimation *)self appliesX];
    v50 = [(CAMatchMoveAnimation *)self appliesY];
    v51 = v50;
    if (!v49 && !v50)
    {
      return;
    }

    v52 = 0uLL;
    if (v27 || !v49 || !v50)
    {
      if (v61)
      {
        [a4 position];
      }

      else
      {
        v54 = [a4 valueForKeyPath:{v62, 0.0}];
        v55 = [v54 objCType];
        if (!v55 || strcmp(v55, "{CGPoint=dd}"))
        {
          v52 = *MEMORY[0x1E696AA78];
          goto LABEL_56;
        }

        [v54 pointValue];
      }

      v52.f64[1] = v53;
    }

LABEL_56:
    v56.i64[0] = v49;
    v56.i64[1] = v51;
    v57 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v56, 0x3FuLL)), v60, v52);
    v58 = vdup_n_s32(v27);
    v56.i64[0] = v58.u32[0];
    v56.i64[1] = v58.u32[1];
    v65 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v56, 0x3FuLL)), vaddq_f64(v57, v52), v57);
    [a4 setValue:objc_msgSend(MEMORY[0x1E696B098] forKeyPath:{"valueWithBytes:objCType:", &v65, "{CGPoint=dd}"), v62}];
    return;
  }

  while (v8 != a5)
  {
    v8 = [(CALayer *)v8 superlayer];
    if (!v8)
    {
      goto LABEL_5;
    }
  }
}

- (void)applyForTime:(void *)a1 presentationObject:(float64x2_t *)this modelObject:(double *)a3
{
  if (a1[1])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CA::Mat4Impl::mat4_apply_to_point2(this, (*a1 + v5), a3);
      ++v6;
      v5 += 16;
    }

    while (v6 < a1[1]);
  }
}

@end