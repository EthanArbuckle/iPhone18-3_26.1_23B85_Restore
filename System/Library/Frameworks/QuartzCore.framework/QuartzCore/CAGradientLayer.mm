@interface CAGradientLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
+ (id)defaultValueForKey:(id)a3;
- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3;
- (BOOL)premultiplied;
- (CAGradientLayerType)type;
- (CGColorSpace)colorSpace;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)interpolations;
- (NSArray)locations;
- (double)noiseScale;
- (id)colorMap;
- (id)implicitAnimationForKeyPath:(id)a3;
- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)a3;
- (void)_colorSpaceDidChange;
- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5;
- (void)_renderBackgroundInContext:(CGContext *)a3;
- (void)didChangeValueForKey:(id)a3;
- (void)setColorMap:(id)a3;
- (void)setColorSpace:(CGColorSpace *)a3;
- (void)setColors:(NSArray *)colors;
- (void)setEndPoint:(CGPoint)endPoint;
- (void)setInterpolations:(id)a3;
- (void)setLocations:(NSArray *)locations;
- (void)setNoiseScale:(double)a3;
- (void)setPremultiplied:(BOOL)a3;
- (void)setStartPoint:(CGPoint)startPoint;
- (void)setType:(CAGradientLayerType)type;
@end

@implementation CAGradientLayer

- (CGColorSpace)colorSpace
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x76u, 2, v3);
  return v3[0];
}

- (id)colorMap
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x70u, 2, v3);
  return v3[0];
}

- (NSArray)colors
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x79u, 3, v3);
  return v3[0];
}

- (NSArray)locations
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1EAu, 3, v3);
  return v3[0];
}

- (NSArray)interpolations
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1BEu, 3, v3);
  return v3[0];
}

- (CAGradientLayerType)type
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2D5u, 3, v3);
  return v3[0];
}

- (CGPoint)startPoint
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x2ABu, 0x13, &v4);
  v2 = v4;
  v3 = v5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)endPoint
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0xEDu, 0x13, &v4);
  v2 = v4;
  v3 = v5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)premultiplied
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x242u, 6, &v3);
  return v3;
}

- (double)noiseScale
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x214u, 0x12, v3);
  return *v3;
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CAGradientLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

- (void)setColorSpace:(CGColorSpace *)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x76, 2, v3);
}

- (void)setPremultiplied:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CA::Layer::setter(self->super._attr.layer, 0x242, 6, &v3);
}

- (void)setInterpolations:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x1BE, 3, v3);
}

- (void)setType:(CAGradientLayerType)type
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = type;
  CA::Layer::setter(self->super._attr.layer, 0x2D5, 3, v3);
}

- (void)setEndPoint:(CGPoint)endPoint
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = endPoint;
  CA::Layer::setter(self->super._attr.layer, 0xED, 0x13, &v3.x);
}

- (void)setStartPoint:(CGPoint)startPoint
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = startPoint;
  CA::Layer::setter(self->super._attr.layer, 0x2AB, 0x13, &v3.x);
}

- (void)setLocations:(NSArray *)locations
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = locations;
  CA::Layer::setter(self->super._attr.layer, 0x1EA, 3, v3);
}

- (void)setColors:(NSArray *)colors
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = colors;
  CA::Layer::setter(self->super._attr.layer, 0x79, 3, v3);
}

- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_20;
  }

  if (![a4 isEqualToString:@"colors"])
  {
    if ([a4 isEqualToString:@"locations"] || objc_msgSend(a4, "isEqualToString:", @"interpolations"))
    {
      objc_opt_class();

      return CAObject_validateArrayOfClass(a3);
    }

LABEL_20:
    v13.receiver = self;
    v13.super_class = CAGradientLayer;
    return [(CALayer *)&v13 CA_validateValue:a3 forKey:a4];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(a3);
      }

      v11 = CFGetTypeID(*(*(&v15 + 1) + 8 * v10));
      if (v11 != CGColorGetTypeID())
      {
        return 0;
      }

      if (v8 == ++v10)
      {
        v8 = [a3 countByEnumeratingWithState:&v15 objects:v14 count:16];
        result = 1;
        if (v8)
        {
          goto LABEL_6;
        }

        return result;
      }
    }
  }

  return 1;
}

- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)a3
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while (defines_property::atoms[v3] != a3)
  {
    if (++v3 == 9)
    {
      v5.receiver = self;
      v5.super_class = CAGradientLayer;
      return [(CALayer *)&v5 _renderLayerPropertyAnimationFlags:?];
    }
  }

  return 32;
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)a3
{
  v3 = 0;
  v6 = *MEMORY[0x1E69E9840];
  while (defines_property::atoms[v3] != a3)
  {
    if (++v3 == 9)
    {
      v5.receiver = self;
      v5.super_class = CAGradientLayer;
      return [(CALayer *)&v5 _renderLayerDefinesProperty:?];
    }
  }

  return 1;
}

- (void)_colorSpaceDidChange
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAGradientLayer;
  v3 = [(CALayer *)&v5 _colorSpaceDidChange];
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(v3);
  }

  CA::Layer::set_commit_needed(self->super._attr.layer, v4, 0x10000);
}

- (void)_copyRenderLayer:(void *)a3 layerFlags:(unsigned int)a4 commitFlags:(unsigned int *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CAGradientLayer;
  v8 = [(CALayer *)&v32 _copyRenderLayer:a3 layerFlags:*&a4 commitFlags:?];
  if (v8 && (*(a5 + 2) & 1) != 0)
  {
    v10 = [(CAGradientLayer *)self colorSpace];
    if (!v10)
    {
      v10 = CA::Context::current_colorspace(a3, v9);
    }

    v11 = [(CAGradientLayer *)self colorMap];
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v12 = [(CAGradientLayer *)self colors];
      v16 = [(NSArray *)v12 count];
      v13 = [(CAGradientLayer *)self locations];
      v14 = [(CAGradientLayer *)self interpolations];
      v15 = v16;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v17 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x90uLL, 0xDEEC3011uLL);
    v18 = v17;
    if (v17)
    {
      if (v14)
      {
        v19 = (2 * (v13 != 0)) | 4;
      }

      else
      {
        v19 = 2 * (v13 != 0);
      }

      v17[2] = 1;
      v17[3] = 20;
      ++dword_1ED4EAA88;
      *v17 = &unk_1EF204CF8;
      CA::Render::InterpolatedFunction::InterpolatedFunction((v17 + 4), v15, 5, v19);
      *(v18 + 2) = &unk_1EF1FBF20;
      *(v18 + 18) = 0u;
      *(v18 + 22) = 0u;
      *(v18 + 13) = 0x3F80000000000000;
      *(v18 + 7) = 0u;
      *(v18 + 8) = 0u;
    }

    if (v11)
    {
      v20 = [v11 CA_copyRenderValue];
      v21 = *(v18 + 14);
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

        *(v18 + 14) = v22;
        v23 = (*(*v20 + 80))(v20);
        if (v23 && (*(v23 + 13) & 0x10) != 0)
        {
          v18[3] |= 0x1000u;
        }

        v18[3] |= 0x800u;
      }

      v24 = *(v18 + 15);
      if (v24)
      {
        if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v24 + 16))(v24);
        }

        *(v18 + 15) = 0;
      }

      if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v20 + 16))(v20);
      }
    }

    else
    {
      if (v12)
      {
        CA::Render::Gradient::set_colors((v18 + 4), v12, v10);
      }

      if (v13)
      {
        CA::Render::InterpolatedFunction::set_locations((v18 + 4), v13);
      }

      if (v14)
      {
        CA::Render::InterpolatedFunction::set_interpolations((v18 + 4), v14);
      }
    }

    v18[26] = CAInternAtom([(CAGradientLayer *)self type], 0);
    [(CAGradientLayer *)self startPoint];
    *(v18 + 9) = v25;
    *(v18 + 10) = v26;
    [(CAGradientLayer *)self endPoint];
    *(v18 + 11) = v27;
    *(v18 + 12) = v28;
    X::CFRef<CGColorSpace *>::operator=(v18 + 16, v10);
    if ([(CAGradientLayer *)self premultiplied])
    {
      v29 = 4096;
    }

    else
    {
      v29 = 0;
    }

    v18[7] = v18[7] & 0xFFFFEFFF | v29;
    [(CAGradientLayer *)self noiseScale];
    *&v30 = v30;
    v18[27] = LODWORD(v30);
    CA::Render::Layer::set_subclass(v8, v18);
    if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 16))(v18);
    }
  }

  return v8;
}

- (void)_renderBackgroundInContext:(CGContext *)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = CAGradientLayer;
  v5 = [(CALayer *)&v42 _renderBackgroundInContext:?];
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v6)
  {
    v6 = CA::Transaction::create(v5);
  }

  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v8 = [(CAGradientLayer *)self colors];
  v9 = [(NSArray *)v8 count];
  if (v9 >= 2)
  {
    v10 = [(CAGradientLayer *)self locations];
    v11 = v10;
    if (v10)
    {
      v12 = [(NSArray *)v10 count];
      if (v12 != v9)
      {
        goto LABEL_29;
      }

      MEMORY[0x1EEE9AC00](v12);
      v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v14, v13);
      for (i = 0; i != v9; ++i)
      {
        [-[NSArray objectAtIndex:](v11 objectAtIndex:{i), "doubleValue"}];
        *&v14[8 * i] = v16;
      }
    }

    else
    {
      v14 = 0;
    }

    if ([(CAGradientLayer *)self premultiplied])
    {
      v43 = *MEMORY[0x1E695F258];
      v44[0] = MEMORY[0x1E695E118];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v17 = CGGradientCreateWithColorsAndOptions();
    }

    else
    {
      v17 = CGGradientCreateWithColors(0, v8, v14);
    }

    v18 = v17;
    if (v17)
    {
      [(CALayer *)self bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      CGContextSaveGState(a3);
      if ([(CALayer *)self _usesCornerRadii])
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        if (self)
        {
          [(CALayer *)self cornerRadii:v38];
        }

        CA_CGContextAddUnevenRoundRect(a3, &v38, v20, v22, v24, v26);
        CGContextClip(a3);
      }

      else
      {
        [(CALayer *)self cornerRadius];
        if (v27 <= 0.0)
        {
          v50.origin.x = v20;
          v50.origin.y = v22;
          v50.size.width = v24;
          v50.size.height = v26;
          CGContextClipToRect(a3, v50);
        }

        else
        {
          CA_CGContextAddRoundRect(a3, [(CALayer *)self _continuousCorners], v20, v22, v24, v26, v27);
          CGContextClip(a3);
        }
      }

      [(CAGradientLayer *)self startPoint:v38];
      v29 = v28;
      v31 = v30;
      [(CAGradientLayer *)self endPoint];
      v33 = v32;
      v35 = v34;
      if ([(NSString *)[(CAGradientLayer *)self type] isEqualToString:@"axial"])
      {
        CA::Transaction::unlock(v6);
        CGContextTranslateCTM(a3, v20, v22);
        CGContextScaleCTM(a3, v24, v26);
        v45.x = v29;
        v45.y = v31;
        v48.x = v33;
        v48.y = v35;
        CGContextDrawLinearGradient(a3, v18, v45, v48, 3u);
      }

      else if ([(NSString *)[(CAGradientLayer *)self type] isEqualToString:@"radial"])
      {
        CA::Transaction::unlock(v6);
        CGContextTranslateCTM(a3, v20, v22);
        CGContextScaleCTM(a3, v24, v26);
        CGContextTranslateCTM(a3, v29, v31);
        CGContextScaleCTM(a3, vabdd_f64(v33, v29), vabdd_f64(v35, v31));
        v46 = **&MEMORY[0x1E695EFF8];
        v49.x = *MEMORY[0x1E695EFF8];
        v49.y = v46.y;
        CGContextDrawRadialGradient(a3, v18, *MEMORY[0x1E695EFF8], 0.0, v49, 1.0, 3u);
      }

      else
      {
        if (![(NSString *)[(CAGradientLayer *)self type] isEqualToString:@"conic"])
        {
LABEL_28:
          CGContextRestoreGState(a3);
          CGGradientRelease(v18);
          goto LABEL_29;
        }

        CA::Transaction::unlock(v6);
        v36 = atan2(v35 - v31, v33 - v29);
        CGContextTranslateCTM(a3, v20, v22);
        CGContextScaleCTM(a3, v24, v26);
        v47.x = v29;
        v47.y = v31;
        CGContextDrawConicGradient(a3, v18, v47, v36);
      }

      v37 = *(v6 + 29);
      *(v6 + 29) = v37 + 1;
      if (!v37)
      {
        os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  CA::Transaction::unlock(v6);
}

- (id)implicitAnimationForKeyPath:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CAGradientLayer;
  result = [(CALayer *)&v10 implicitAnimationForKeyPath:?];
  if (!result)
  {
    v6 = [a3 rangeOfString:@"."];
    if (v7)
    {
      v8 = CAInternAtom([a3 substringToIndex:v6], 0);
      v9 = 0;
      result = 0;
      if (v8 <= 489)
      {
        if (v8 != 121 && v8 != 446)
        {
          return result;
        }

        return CALayerCreateImplicitAnimation(self, a3, v9);
      }

      if (v8 == 578 || v8 == 490)
      {
        return CALayerCreateImplicitAnimation(self, a3, v9);
      }
    }

    else
    {
      v9 = CAInternAtom(a3, 0);
      result = 0;
      if (v9 <= 489)
      {
        if (v9 == 121 || v9 == 237 || v9 == 446)
        {
          return CALayerCreateImplicitAnimation(self, a3, v9);
        }
      }

      else if (v9 > 577)
      {
        if (v9 == 578 || v9 == 683)
        {
          return CALayerCreateImplicitAnimation(self, a3, v9);
        }
      }

      else if (v9 == 490 || v9 == 532)
      {
        return CALayerCreateImplicitAnimation(self, a3, v9);
      }
    }
  }

  return result;
}

- (void)didChangeValueForKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  v6 = 0;
  while (v5 != [CAGradientLayer didChangeValueForKey:]::atoms[v6])
  {
    if (++v6 == 9)
    {
      goto LABEL_6;
    }
  }

  v7 = CA::Transaction::ensure_compat(v5);
  CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
LABEL_6:
  v8.receiver = self;
  v8.super_class = CAGradientLayer;
  [(CAGradientLayer *)&v8 didChangeValueForKey:a3];
}

+ (id)defaultValueForKey:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  if (v5 <= 577)
  {
    if (v5 == 237)
    {
      v6 = MEMORY[0x1E696B098];
      v7 = 0.5;
      v8 = 1.0;
      goto LABEL_12;
    }

    if (v5 == 532)
    {
      return &unk_1EF22B960;
    }

LABEL_15:
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___CAGradientLayer;
    return objc_msgSendSuper2(&v10, sel_defaultValueForKey_, a3);
  }

  if (v5 == 578)
  {
    return *MEMORY[0x1E695E4C0];
  }

  if (v5 == 725)
  {
    return @"axial";
  }

  if (v5 != 683)
  {
    goto LABEL_15;
  }

  v6 = MEMORY[0x1E696B098];
  v7 = 0.5;
  v8 = 0.0;
LABEL_12:

  return [v6 valueWithPoint:{v7, v8}];
}

- (void)setNoiseScale:(double)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x214, 0x12, v3);
}

- (void)setColorMap:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x70, 2, v3);
}

@end