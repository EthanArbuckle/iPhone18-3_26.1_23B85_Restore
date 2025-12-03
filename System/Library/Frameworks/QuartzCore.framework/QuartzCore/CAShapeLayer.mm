@interface CAShapeLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (CAShapeLayerFillRule)fillRule;
- (CAShapeLayerLineCap)lineCap;
- (CAShapeLayerLineJoin)lineJoin;
- (CGColorRef)fillColor;
- (CGColorRef)strokeColor;
- (CGFloat)lineDashPhase;
- (CGFloat)lineWidth;
- (CGFloat)miterLimit;
- (CGFloat)strokeEnd;
- (CGFloat)strokeStart;
- (CGPathRef)path;
- (NSArray)lineDashPattern;
- (id)implicitAnimationForKeyPath:(id)path;
- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)flags;
- (void)_colorSpaceDidChange;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)_renderForegroundInContext:(CGContext *)context;
- (void)didChangeValueForKey:(id)key;
- (void)setFillColor:(CGColorRef)fillColor;
- (void)setFillRule:(CAShapeLayerFillRule)fillRule;
- (void)setLineCap:(CAShapeLayerLineCap)lineCap;
- (void)setLineDashPattern:(NSArray *)lineDashPattern;
- (void)setLineDashPhase:(CGFloat)lineDashPhase;
- (void)setLineJoin:(CAShapeLayerLineJoin)lineJoin;
- (void)setLineWidth:(CGFloat)lineWidth;
- (void)setMiterLimit:(CGFloat)miterLimit;
- (void)setPath:(CGPathRef)path;
- (void)setStrokeColor:(CGColorRef)strokeColor;
- (void)setStrokeEnd:(CGFloat)strokeEnd;
- (void)setStrokeStart:(CGFloat)strokeStart;
@end

@implementation CAShapeLayer

- (CGPathRef)path
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x22Au, 2, v3);
  return v3[0];
}

- (CGColorRef)fillColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xF6u, 2, v3);
  return v3[0];
}

- (CAShapeLayerFillRule)fillRule
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xFBu, 3, v3);
  return v3[0];
}

- (CGColorRef)strokeColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2B1u, 2, v3);
  return v3[0];
}

- (CGFloat)strokeStart
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2B3u, 0x12, v3);
  return *v3;
}

- (CGFloat)strokeEnd
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2B2u, 0x12, v3);
  return *v3;
}

- (CGFloat)lineWidth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1E3u, 0x12, v3);
  return *v3;
}

- (CGFloat)miterLimit
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x209u, 0x12, v3);
  return *v3;
}

- (CAShapeLayerLineJoin)lineJoin
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1E2u, 3, v3);
  return v3[0];
}

- (CAShapeLayerLineCap)lineCap
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1DFu, 3, v3);
  return v3[0];
}

- (CGFloat)lineDashPhase
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1E1u, 0x12, v3);
  return *v3;
}

- (NSArray)lineDashPattern
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1E0u, 3, v3);
  return v3[0];
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAShapeLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setLineDashPhase:(CGFloat)lineDashPhase
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = lineDashPhase;
  CA::Layer::setter(self->super._attr.layer, 0x1E1, 0x12, v3);
}

- (void)setLineDashPattern:(NSArray *)lineDashPattern
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = lineDashPattern;
  CA::Layer::setter(self->super._attr.layer, 0x1E0, 3, v3);
}

- (void)setLineCap:(CAShapeLayerLineCap)lineCap
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = lineCap;
  CA::Layer::setter(self->super._attr.layer, 0x1DF, 3, v3);
}

- (void)setLineJoin:(CAShapeLayerLineJoin)lineJoin
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = lineJoin;
  CA::Layer::setter(self->super._attr.layer, 0x1E2, 3, v3);
}

- (void)setMiterLimit:(CGFloat)miterLimit
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = miterLimit;
  CA::Layer::setter(self->super._attr.layer, 0x209, 0x12, v3);
}

- (void)setLineWidth:(CGFloat)lineWidth
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = lineWidth;
  CA::Layer::setter(self->super._attr.layer, 0x1E3, 0x12, v3);
}

- (void)setStrokeEnd:(CGFloat)strokeEnd
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = strokeEnd;
  CA::Layer::setter(self->super._attr.layer, 0x2B2, 0x12, v3);
}

- (void)setStrokeStart:(CGFloat)strokeStart
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = strokeStart;
  CA::Layer::setter(self->super._attr.layer, 0x2B3, 0x12, v3);
}

- (void)setStrokeColor:(CGColorRef)strokeColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = strokeColor;
  CA::Layer::setter(self->super._attr.layer, 0x2B1, 2, v3);
}

- (void)setFillRule:(CAShapeLayerFillRule)fillRule
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = fillRule;
  CA::Layer::setter(self->super._attr.layer, 0xFB, 3, v3);
}

- (void)setFillColor:(CGColorRef)fillColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = fillColor;
  CA::Layer::setter(self->super._attr.layer, 0xF6, 2, v3);
}

- (void)setPath:(CGPathRef)path
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = dyld_program_sdk_at_least();
  NumberOfElements = CGPathGetNumberOfElements();
  NumberOfPoints = CGPathGetNumberOfPoints();
  if (NumberOfElements >> 24 || NumberOfPoints >> 24)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = CGPathGetNumberOfElements();
    [v9 raise:@"CALayerInvalidCGPath" format:{@"CGPathRef with unreasonable count: [Elements: %ld, Points: %ld]", v10, CGPathGetNumberOfPoints()}];
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    *&v11[0] = path;
    CA::Layer::setter(self->super._attr.layer, 0x22A, 2, v11);
    return;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = MEMORY[0x1865E8EB0](path);
  *&v11[0] = v8;
  CA::Layer::setter(self->super._attr.layer, 0x22A, 2, v11);

  CGPathRelease(v8);
}

- (unsigned)_renderLayerPropertyAnimationFlags:(unsigned int)flags
{
  v3 = *&flags;
  v7 = *MEMORY[0x1E69E9840];
  if (CAAtomIndexInArray(12, &defines_property::atoms, flags) != -1)
  {
    return 32;
  }

  v6.receiver = self;
  v6.super_class = CAShapeLayer;
  return [(CALayer *)&v6 _renderLayerPropertyAnimationFlags:v3];
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v3 = *&property;
  v7 = *MEMORY[0x1E69E9840];
  if (CAAtomIndexInArray(12, &defines_property::atoms, property) != -1)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CAShapeLayer;
  return [(CALayer *)&v6 _renderLayerDefinesProperty:v3];
}

- (void)_colorSpaceDidChange
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CAShapeLayer;
  _colorSpaceDidChange = [(CALayer *)&v5 _colorSpaceDidChange];
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(_colorSpaceDidChange);
  }

  CA::Layer::set_commit_needed(self->super._attr.layer, v4, 0x10000);
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v64 = *MEMORY[0x1E69E9840];
  v63.receiver = self;
  v63.super_class = CAShapeLayer;
  v8 = [(CALayer *)&v63 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (v8 && (*(commitFlags + 2) & 1) != 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA8uLL, 0xDEEC3011uLL);
    if (v9)
    {
      v10 = v9;
      *(v9 + 2) = 1;
      *(v9 + 3) = 51;
      ++dword_1ED4EAB04;
      v9[2] = 0;
      v11 = v9 + 2;
      v9[6] = 0;
      v12 = v9 + 6;
      *v9 = &unk_1EF1F6830;
      v9[10] = 0;
      v13 = v9 + 10;
      v9[3] = 0;
      v9[4] = 0;
      *(v9 + 10) = 0;
      v9[7] = 0;
      v9[8] = 0;
      *(v9 + 18) = 0;
      v9[11] = 0;
      __asm { FMOV            V0.2D, #1.0 }

      *(v9 + 6) = _Q0;
      v9[15] = 0;
      v9[16] = 0;
      v9[14] = 0x4024000000000000;
      *(v9 + 34) = *(v9 + 139) << 24;
      v9[18] = 0;
      v9[19] = 0;
      v9[20] = 0x3FF0000000000000;
      path = [(CAShapeLayer *)self path];
      if (path)
      {
        v21 = CA::Render::Path::new_path(path, v20);
        if (v21)
        {
          v22 = v21;
          v23 = *v11;
          if (*v11 != v22)
          {
            if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v23 + 16))(v23);
            }

            v24 = v22;
            if (!atomic_fetch_add(v22 + 2, 1u))
            {
              v24 = 0;
              atomic_fetch_add(v22 + 2, 0xFFFFFFFF);
            }

            *v11 = v24;
          }

          CA::Render::ShapeLayer::invalidate_stroke_path(v10);
          if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v22 + 16))(v22);
          }
        }
      }

      v25 = CA::Context::current_colorspace(layer, v20);
      fillColor = [(CAShapeLayer *)self fillColor];
      if (fillColor)
      {
        v61 = 0uLL;
        v62 = 0;
        v60 = 0;
        CA::Render::convert_cgcolor(fillColor, v25, &v61, &v60, v27);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgtq_f32(vdupq_n_s32(0x3A800000u), vabsq_f32(v61))))))
        {
          *(v10 + 3) = v61;
          *(v10 + 10) = v62;
        }

        v28 = v60;
        if (v60)
        {
          v29 = *v12;
          if (*v12 != v60)
          {
            if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v29 + 16))(v29);
            }

            v30 = v28 + 2;
            if (!atomic_fetch_add(v28 + 2, 1u))
            {
              v28 = 0;
              atomic_fetch_add(v30, 0xFFFFFFFF);
            }

            *v12 = v28;
            v28 = v60;
          }

          if (atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v28 + 16))(v28);
          }
        }
      }

      fillRule = [(CAShapeLayer *)self fillRule];
      if (fillRule && fillRule != @"non-zero")
      {
        *(v10 + 136) = [(__CFString *)fillRule isEqualToString:@"even-odd"];
      }

      strokeColor = [(CAShapeLayer *)self strokeColor];
      if (strokeColor)
      {
        v61 = 0uLL;
        v62 = 0;
        v60 = 0;
        CA::Render::convert_cgcolor(strokeColor, v25, &v61, &v60, v33);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vcgtq_f32(vdupq_n_s32(0x3A800000u), vabsq_f32(v61))))))
        {
          *(v10 + 7) = v61;
          *(v10 + 18) = v62;
        }

        v34 = v60;
        if (v60)
        {
          v35 = *v13;
          if (*v13 != v60)
          {
            if (v35 && atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v35 + 16))(v35);
            }

            v36 = v34 + 2;
            if (!atomic_fetch_add(v34 + 2, 1u))
            {
              v34 = 0;
              atomic_fetch_add(v36, 0xFFFFFFFF);
            }

            *v13 = v34;
            v34 = v60;
          }

          if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v34 + 16))(v34);
          }
        }
      }

      [(CAShapeLayer *)self strokeStart];
      v10[11] = v37;
      CA::Render::ShapeLayer::invalidate_stroke_path(v10);
      [(CAShapeLayer *)self strokeEnd];
      v10[12] = v38;
      CA::Render::ShapeLayer::invalidate_stroke_path(v10);
      [(CAShapeLayer *)self lineWidth];
      v10[13] = v39;
      CA::Render::ShapeLayer::invalidate_stroke_path(v10);
      [(CAShapeLayer *)self miterLimit];
      v10[14] = v40;
      CA::Render::ShapeLayer::invalidate_stroke_path(v10);
      lineJoin = [(CAShapeLayer *)self lineJoin];
      if (lineJoin)
      {
        v42 = lineJoin;
        if (lineJoin != @"miter")
        {
          if (([(__CFString *)lineJoin isEqualToString:@"round"]& 1) != 0)
          {
            v43 = 256;
          }

          else if ([(__CFString *)v42 isEqualToString:@"bevel"])
          {
            v43 = 512;
          }

          else
          {
            v43 = 0;
          }

          *(v10 + 34) = v10[17] & 0xFFFF00FF | v43;
          CA::Render::ShapeLayer::invalidate_stroke_path(v10);
        }
      }

      lineCap = [(CAShapeLayer *)self lineCap];
      if (lineCap)
      {
        v45 = lineCap;
        if (lineCap != @"butt")
        {
          if (([(__CFString *)lineCap isEqualToString:@"round"]& 1) != 0)
          {
            v46 = 0x10000;
          }

          else if ([(__CFString *)v45 isEqualToString:@"square"])
          {
            v46 = 0x20000;
          }

          else
          {
            v46 = 0;
          }

          *(v10 + 34) = v10[17] & 0xFF00FFFF | v46;
          CA::Render::ShapeLayer::invalidate_stroke_path(v10);
        }
      }

      [(CAShapeLayer *)self lineDashPhase];
      v10[15] = v47;
      CA::Render::ShapeLayer::invalidate_stroke_path(v10);
      lineDashPattern = [(CAShapeLayer *)self lineDashPattern];
      if (lineDashPattern)
      {
        v49 = lineDashPattern;
        v50 = [(NSArray *)lineDashPattern count];
        if (v50)
        {
          v51 = v50;
          v52 = 8 * v50;
          if ((8 * v50) > 0x1000)
          {
            v53 = malloc_type_malloc(8 * v50, 0x55DDCF60uLL);
          }

          else
          {
            MEMORY[0x1EEE9AC00](v50);
            v53 = &v59 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v53, v52);
          }

          for (i = 0; i != v51; i = (i + 1))
          {
            [-[NSArray objectAtIndex:](v49 objectAtIndex:{i), "doubleValue"}];
            *&v53[8 * i] = v56;
          }

          v57 = CA::Render::Vector::new_vector(v51, v53, v55);
          CA::Render::ShapeLayer::set_dash_pattern(v10, v57);
          if (v57 && atomic_fetch_add(v57 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v57 + 16))(v57);
          }

          if (v52 > 0x1000)
          {
            free(v53);
          }
        }
      }

      CA::Render::Layer::set_subclass(v8, v10);
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v10 + 2))(v10);
      }
    }
  }

  return v8;
}

- (void)_renderForegroundInContext:(CGContext *)context
{
  v41 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = CAShapeLayer;
  v5 = [(CALayer *)&v40 _renderForegroundInContext:?];
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

  path = [(CAShapeLayer *)self path];
  if (path)
  {
    fillColor = [(CAShapeLayer *)self fillColor];
    v10 = fillColor;
    if (fillColor && CGColorGetAlpha(fillColor) > 0.0)
    {
      v11 = [(NSString *)[(CAShapeLayer *)self fillRule] isEqualToString:@"even-odd"];
      CGContextSetFillColorWithColor(context, v10);
      CGContextAddPath(context, path);
      CGContextDrawPath(context, v11);
    }

    strokeColor = [(CAShapeLayer *)self strokeColor];
    v13 = strokeColor;
    if (strokeColor)
    {
      if (CGColorGetAlpha(strokeColor) > 0.0)
      {
        if ([(NSString *)[(CAShapeLayer *)self lineCap] isEqualToString:@"round"])
        {
          v14 = kCGLineCapRound;
        }

        else if ([(NSString *)[(CAShapeLayer *)self lineCap] isEqualToString:@"square"])
        {
          v14 = kCGLineCapSquare;
        }

        else
        {
          v14 = kCGLineCapButt;
        }

        if ([(NSString *)[(CAShapeLayer *)self lineJoin] isEqualToString:@"round"])
        {
          v15 = kCGLineJoinRound;
        }

        else if ([(NSString *)[(CAShapeLayer *)self lineJoin] isEqualToString:@"bevel"])
        {
          v15 = kCGLineJoinBevel;
        }

        else
        {
          v15 = kCGLineJoinMiter;
        }

        [(CAShapeLayer *)self lineWidth];
        if (v16 < 0.0)
        {
          v16 = *MEMORY[0x1E695F2F0];
        }

        CGContextSetLineWidth(context, v16);
        CGContextSetLineCap(context, v14);
        CGContextSetLineJoin(context, v15);
        [(CAShapeLayer *)self miterLimit];
        CGContextSetMiterLimit(context, v17);
        lineDashPattern = [(CAShapeLayer *)self lineDashPattern];
        v19 = lineDashPattern;
        if (lineDashPattern)
        {
          v20 = [(NSArray *)lineDashPattern count];
          MEMORY[0x1EEE9AC00](v20);
          v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v22, v21);
          if (v20)
          {
            for (i = 0; i != v20; ++i)
            {
              [-[NSArray objectAtIndex:](v19 objectAtIndex:{i), "doubleValue"}];
              *&v22[8 * i] = v24;
            }
          }

          [(CAShapeLayer *)self lineDashPhase];
          CGContextSetLineDash(context, v25, v22, v20);
        }

        CGContextSetStrokeColorWithColor(context, v13);
        [(CAShapeLayer *)self strokeStart];
        v27 = v26;
        [(CAShapeLayer *)self strokeEnd];
        v29 = fmax(v27, 0.0);
        v31 = fmin(v30, 1.0);
        if (v29 == 0.0 && v31 == 1.0)
        {
          v32 = MEMORY[0x1865E8EB0](path);
        }

        else
        {
          if (v29 >= v31)
          {
            goto LABEL_39;
          }

          v34 = CA::Render::Path::new_path(path, v28);
          if (!v34)
          {
            goto LABEL_39;
          }

          v35 = v34;
          v36 = CA::Render::Path::copy_subpath(v34, v29, v31);
          if (v36)
          {
            v37 = v36;
            v38 = CA::Render::Path::cg_path(v36);
            v32 = CGPathRetain(v38);
            if (atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v37 + 16))(v37);
            }
          }

          else
          {
            v32 = 0;
          }

          if (atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v35 + 16))(v35);
          }
        }

        if (v32)
        {
          CA::Transaction::unlock(v6);
          CGContextAddPath(context, v32);
          CGContextDrawPath(context, kCGPathStroke);
          CGPathRelease(v32);
          v33 = *(v6 + 29);
          *(v6 + 29) = v33 + 1;
          if (!v33)
          {
            os_unfair_lock_lock(&CA::Transaction::transaction_lock);
          }
        }
      }
    }
  }

LABEL_39:
  CA::Transaction::unlock(v6);
}

- (id)implicitAnimationForKeyPath:(id)path
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAShapeLayer;
  result = [(CALayer *)&v8 implicitAnimationForKeyPath:?];
  if (!result)
  {
    [path rangeOfString:@"."];
    if (!v6 && ((v7 = CAInternAtom(path, 0), v7 - 481 <= 0x28) && ((1 << (v7 + 31)) & 0x10000000005) != 0 || v7 - 689 < 3 || v7 == 246))
    {
      return CALayerCreateImplicitAnimation(self, path, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)didChangeValueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  v6 = CAAtomIndexInArray(12, &[CAShapeLayer didChangeValueForKey:]::atoms, v5);
  if (v6 != -1)
  {
    v7 = CA::Transaction::ensure_compat(v6);
    CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
  }

  v8.receiver = self;
  v8.super_class = CAShapeLayer;
  [(CAShapeLayer *)&v8 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 > 481)
  {
    if (v5 > 520)
    {
      if (v5 == 521)
      {
        v7 = MEMORY[0x1E696AD98];
        v8 = 10;
        goto LABEL_18;
      }

      if (v5 != 690)
      {
LABEL_15:
        v10.receiver = self;
        v10.super_class = &OBJC_METACLASS___CAShapeLayer;
        return objc_msgSendSuper2(&v10, sel_defaultValueForKey_, key);
      }
    }

    else
    {
      if (v5 == 482)
      {
        return @"miter";
      }

      if (v5 != 483)
      {
        goto LABEL_15;
      }
    }

    v7 = MEMORY[0x1E696AD98];
    v8 = 1;
LABEL_18:

    return [v7 numberWithInt:v8];
  }

  switch(v5)
  {
    case 246:
      result = +[CAShapeLayer defaultValueForKey:]::black;
      if (!+[CAShapeLayer defaultValueForKey:]::black)
      {
        v9 = CAGetColorSpace(36);
        result = CGColorCreate(v9, +[CAShapeLayer defaultValueForKey:]::values);
        +[CAShapeLayer defaultValueForKey:]::black = result;
      }

      break;
    case 251:
      return @"non-zero";
    case 479:
      return @"butt";
    default:
      goto LABEL_15;
  }

  return result;
}

@end