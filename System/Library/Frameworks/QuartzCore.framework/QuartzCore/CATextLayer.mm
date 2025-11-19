@interface CATextLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
+ (id)defaultValueForKey:(id)a3;
- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4;
- (BOOL)allowsFontSubpixelQuantization;
- (BOOL)isTruncated;
- (BOOL)isWrapped;
- (CATextLayer)init;
- (CATextLayerAlignmentMode)alignmentMode;
- (CATextLayerTruncationMode)truncationMode;
- (CFTypeRef)font;
- (CGColorRef)foregroundColor;
- (CGFloat)fontSize;
- (CGSize)_preferredSize;
- (__CTLine)_createTruncationToken;
- (__CTTypesetter)_retainTypesetter;
- (id)_createStringDict;
- (id)implicitAnimationForKeyPath:(id)a3;
- (id)string;
- (id)truncationString;
- (void)_applyLinesToFunction:(void *)a3 info:(void *)a4 truncated:(BOOL *)a5;
- (void)_drawLine:(__CTLine *)a3 inContext:(CGContext *)a4 atPoint:(CGPoint)a5;
- (void)_prepareContext:(CGContext *)a3;
- (void)dealloc;
- (void)didChangeValueForKey:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)setAlignmentMode:(CATextLayerAlignmentMode)alignmentMode;
- (void)setAllowsFontSubpixelQuantization:(BOOL)allowsFontSubpixelQuantization;
- (void)setFont:(CFTypeRef)font;
- (void)setFontSize:(CGFloat)fontSize;
- (void)setForegroundColor:(CGColorRef)foregroundColor;
- (void)setString:(id)string;
- (void)setTruncationMode:(CATextLayerTruncationMode)truncationMode;
- (void)setTruncationString:(id)a3;
- (void)setWrapped:(BOOL)wrapped;
@end

@implementation CATextLayer

- (BOOL)allowsFontSubpixelQuantization
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x12u, 7, &v3);
  return v3 != 0;
}

- (__CTTypesetter)_retainTypesetter
{
  state = self->_state;
  if (!state)
  {
    v5 = [(CATextLayer *)self string];
    state = v5;
    if (!v5)
    {
      return state;
    }

    v6 = CFGetTypeID(v5);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [(CATextLayer *)self _createStringDict];
      v8 = CFAttributedStringCreate(0, state, v7);

      self->_state = CTTypesetterCreateWithAttributedString(v8);
      CFRelease(v8);
    }

    else if (v6 == CFAttributedStringGetTypeID())
    {
      state = CTTypesetterCreateWithAttributedString(state);
      self->_state = state;
      if (!state)
      {
        return state;
      }

      goto LABEL_2;
    }

    state = self->_state;
    if (!state)
    {
      return state;
    }
  }

LABEL_2:
  CFRetain(state);
  return state;
}

- (id)string
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2B0u, 3, v3);
  return v3[0];
}

- (id)_createStringDict
{
  if (([CATextLayer _createStringDict]::initialized & 1) == 0)
  {
    [CATextLayer _createStringDict]::NSFont_class = NSClassFromString(&cfstr_Nsfont.isa);
    [CATextLayer _createStringDict]::initialized = 1;
  }

  v3 = [(CATextLayer *)self font];
  [(CATextLayer *)self fontSize];
  if (!v3)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v3);
  if (v6 == CGFontGetTypeID())
  {
    CopyWithAttributes = CTFontCreateWithGraphicsFont(v3, v5, 0, 0);
  }

  else if (v6 == CFStringGetTypeID())
  {
    CopyWithAttributes = CTFontCreateWithName(v3, v5, 0);
  }

  else
  {
    if (v6 != CTFontGetTypeID() && (![CATextLayer _createStringDict]::NSFont_class || (objc_opt_isKindOfClass() & 1) == 0))
    {
      return 0;
    }

    if (CTFontGetSize(v3) == v5)
    {
      CopyWithAttributes = CFRetain(v3);
    }

    else
    {
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v3, v5, 0, 0);
    }
  }

  v8 = CopyWithAttributes;
  if (CopyWithAttributes)
  {
    v9 = [(CATextLayer *)self foregroundColor];
    v10 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v10 initWithObjectsAndKeys:{v8, *MEMORY[0x1E6965658], v9, *MEMORY[0x1E69659D8], 0}];
    CFRelease(v8);
    return v11;
  }

  return 0;
}

- (CFTypeRef)font
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x105u, 2, v3);
  return v3[0];
}

- (CGFloat)fontSize
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x106u, 0x12, v3);
  return *v3;
}

- (CGColorRef)foregroundColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x109u, 2, v3);
  return v3[0];
}

- (BOOL)isWrapped
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2F3u, 7, &v3);
  return v3 != 0;
}

- (CATextLayerAlignmentMode)alignmentMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 8u, 3, v3);
  return v3[0];
}

- (CATextLayerTruncationMode)truncationMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2D3u, 3, v3);
  return v3[0];
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state)
  {
    CFRelease(state);
  }

  v4.receiver = self;
  v4.super_class = CATextLayer;
  [(CALayer *)&v4 dealloc];
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CATextLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

- (void)setAllowsFontSubpixelQuantization:(BOOL)allowsFontSubpixelQuantization
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = allowsFontSubpixelQuantization;
  CA::Layer::setter(self->super._attr.layer, 0x12, 7, &v3);
}

- (void)setAlignmentMode:(CATextLayerAlignmentMode)alignmentMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = alignmentMode;
  CA::Layer::setter(self->super._attr.layer, 8, 3, v3);
}

- (void)setTruncationMode:(CATextLayerTruncationMode)truncationMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = truncationMode;
  CA::Layer::setter(self->super._attr.layer, 0x2D3, 3, v3);
}

- (void)setWrapped:(BOOL)wrapped
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = wrapped;
  CA::Layer::setter(self->super._attr.layer, 0x2F3, 7, &v3);
}

- (void)setForegroundColor:(CGColorRef)foregroundColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = foregroundColor;
  CA::Layer::setter(self->super._attr.layer, 0x109, 2, v3);
}

- (void)setFont:(CFTypeRef)font
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = font;
  CA::Layer::setter(self->super._attr.layer, 0x105, 2, v3);
}

- (void)setFontSize:(CGFloat)fontSize
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = fontSize;
  CA::Layer::setter(self->super._attr.layer, 0x106, 0x12, v3);
}

- (void)setString:(id)string
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = string;
  CA::Layer::setter(self->super._attr.layer, 0x2B0, 3, v3);
}

- (void)_prepareContext:(CGContext *)a3
{
  CGContextSetShouldSmoothFonts(a3, 0);
  v5 = [(CATextLayer *)self allowsFontSubpixelQuantization];

  CGContextSetAllowsFontSubpixelQuantization(a3, v5);
}

- (void)drawInContext:(CGContext *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (([CATextLayer drawInContext:]::initialized & 1) == 0)
  {
    v5 = NSClassFromString(&cfstr_Nsgraphicscont.isa);
    [CATextLayer drawInContext:]::gfxCtx = v5;
    [CATextLayer drawInContext:]::initialized = 1;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [CATextLayer drawInContext:]::gfxCtx;
  if ([CATextLayer drawInContext:]::gfxCtx)
  {
LABEL_5:
    [(objc_class *)v5 saveGraphicsState];
    [-[CATextLayer drawInContext:]::gfxCtx setCurrentContext:{objc_msgSend(-[CATextLayer drawInContext:]::gfxCtx, "graphicsContextWithGraphicsPort:flipped:", a3, 0)}];
  }

LABEL_6:
  if ([(CALayer *)self contentsAreFlipped])
  {
    [(CALayer *)self size];
    transform.b = 0.0;
    transform.c = 0.0;
    transform.a = 1.0;
    *&transform.d = xmmword_183E20F00;
    transform.ty = v6;
    CGContextConcatCTM(a3, &transform);
  }

  [(CATextLayer *)self _applyLinesToFunction:drawLine info:a3];
  if ([CATextLayer drawInContext:]::gfxCtx)
  {
    [-[CATextLayer drawInContext:]::gfxCtx restoreGraphicsState];
  }
}

- (void)_drawLine:(__CTLine *)a3 inContext:(CGContext *)a4 atPoint:(CGPoint)a5
{
  CGContextSetTextPosition(a4, a5.x, a5.y);

  CTLineDraw(a3, a4);
}

- (void)_applyLinesToFunction:(void *)a3 info:(void *)a4 truncated:(BOOL *)a5
{
  v54[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(self);
  }

  v9 = *(v8 + 29);
  *(v8 + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v10 = [(CATextLayer *)self _retainTypesetter];
  if (!v10)
  {

    CA::Transaction::unlock(v8);
    return;
  }

  [(CALayer *)self bounds];
  v12 = v11;
  v14 = v13;
  v47 = *(MEMORY[0x1E695EFF8] + 8);
  v48 = *MEMORY[0x1E695EFF8];
  v51 = [(CATextLayer *)self isWrapped];
  v15 = [-[CATextLayer string](self "string")];
  v16 = [(CATextLayer *)self alignmentMode];
  if ([(__CFString *)v16 isEqual:@"natural"])
  {
    if (get_natural_alignment(void)::once_alignment != -1)
    {
      dispatch_once_f(&get_natural_alignment(void)::once_alignment, 0, init_alignment);
    }

    if ((natural_alignment & 1) == 0)
    {
      v50 = 0;
      v17 = 0.0;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v18 = CAInternAtom(v16, 0);
  if (v18 == 91)
  {
    v50 = 0;
    v17 = 0.5;
  }

  else
  {
    v17 = 0.0;
    if (v18 == 453)
    {
      v50 = 1;
    }

    else
    {
      if (v18 == 611)
      {
LABEL_19:
        v50 = 0;
        v17 = 1.0;
        goto LABEL_23;
      }

      v50 = 0;
    }
  }

LABEL_23:
  v19 = CAInternAtom([(CATextLayer *)self truncationMode], 0);
  v45 = a5;
  switch(v19)
  {
    case 235:
      v20 = 1;
      goto LABEL_29;
    case 681:
      truncationType = kCTLineTruncationStart;
LABEL_30:
      v21 = [(CATextLayer *)self _createTruncationToken];
      goto LABEL_32;
    case 517:
      v20 = 2;
LABEL_29:
      truncationType = v20;
      goto LABEL_30;
  }

  v21 = 0;
  truncationType = -1;
LABEL_32:
  CA::Transaction::unlock(v8);
  v46 = dyld_program_sdk_at_least();
  if (v14 > 0.0 && v15 >= 1)
  {
    v22 = 0;
    if (v51)
    {
      v23 = v12;
    }

    else
    {
      v23 = 1.0e10;
    }

    v24 = 0.0;
    while (1)
    {
      v53 = 0.0;
      v54[0] = 0.0;
      v52 = 0.0;
      v25 = CTTypesetterSuggestLineBreak(v10, v22, v23);
      v56.location = v22;
      v56.length = v25;
      Line = CTTypesetterCreateLine(v10, v56);
      v27 = Line;
      if (!Line)
      {
        goto LABEL_68;
      }

      if (v51)
      {
        get_line_bounds(Line, v54, &v53, &v52);
        if (v25 + v22 < v15)
        {
          v29 = v53;
          v28 = v54[0];
          v30 = v52;
          v57.length = CTTypesetterSuggestLineBreak(v10, v25 + v22, v12);
          v57.location = v25 + v22;
          v31 = CTTypesetterCreateLine(v10, v57);
          v32 = v31;
          if (!v31)
          {
            goto LABEL_68;
          }

          get_line_bounds(v31, v54, &v53, &v52);
          if (v28 + v24 + v29 + v30 + v54[0] + v53 + v52 > v14)
          {
            v25 = CTTypesetterSuggestLineBreak(v10, v22, 1.0e10);
            v58.location = v22;
            v58.length = v25;
            v33 = CTTypesetterCreateLine(v10, v58);
            CFRelease(v27);
            v27 = v33;
            if (!v33)
            {
              goto LABEL_68;
            }
          }

          CFRelease(v32);
        }
      }

      if (!v21)
      {
        goto LABEL_52;
      }

      BoundsWithOptions = CTLineGetBoundsWithOptions(v27, 0x10uLL);
      width = BoundsWithOptions.size.width;
      v60 = CTLineGetBoundsWithOptions(v21, 0x10uLL);
      if (v60.size.width >= width)
      {
        break;
      }

      TruncatedLine = CTLineCreateTruncatedLine(v27, v12, truncationType, v21);
      v61 = CTLineGetBoundsWithOptions(TruncatedLine, 0x10uLL);
      if (v45)
      {
        *v45 = width > v61.size.width;
      }

      CFRelease(v27);
      if (!TruncatedLine)
      {
        goto LABEL_68;
      }

LABEL_53:
      v22 += v25;
      v36 = v50;
      if (v22 >= v15)
      {
        v36 = 0;
      }

      if (v36 != 1 || (JustifiedLine = CTLineCreateJustifiedLine(TruncatedLine, 1.0, v12), CFRelease(TruncatedLine), (TruncatedLine = JustifiedLine) != 0))
      {
        get_line_bounds(TruncatedLine, v54, &v53, &v52);
        PenOffsetForFlush = 0.0;
        if (v17 != 0.0)
        {
          PenOffsetForFlush = CTLineGetPenOffsetForFlush(TruncatedLine, v17, v12);
        }

        v40 = v54[0] + v24;
        if (a3)
        {
          v38.n128_f64[0] = v14 - v40 + v47;
          v41 = floor(v38.n128_f64[0] + 0.5);
          if (!v46)
          {
            v38.n128_f64[0] = v41;
          }

          (a3)(self, a4, TruncatedLine, PenOffsetForFlush + v48, v38);
        }

        v43 = v52;
        v42 = v53;
        CFRelease(TruncatedLine);
        v24 = v42 + v43 + v40;
        if (v24 < v14 && v22 < v15)
        {
          continue;
        }
      }

      goto LABEL_68;
    }

    if (v12 < width)
    {
      if (v45)
      {
        *v45 = 1;
      }

      CFRelease(v27);
      goto LABEL_68;
    }

LABEL_52:
    TruncatedLine = v27;
    goto LABEL_53;
  }

LABEL_68:
  CFRelease(v10);
  if (v21)
  {
    CFRelease(v21);
  }
}

- (BOOL)isTruncated
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  [(CATextLayer *)self _applyLinesToFunction:0 info:0 truncated:&v3];
  return v3;
}

- (CGSize)_preferredSize
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(CATextLayer *)self isWrapped];
  if (v3)
  {
    [(CATextLayer *)self fontSize];
    v5 = v4;
    v6 = 1.0;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v7)
    {
      v7 = CA::Transaction::create(v3);
    }

    v8 = *(v7 + 29);
    *(v7 + 29) = v8 + 1;
    if (!v8)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v9 = [(CATextLayer *)self _retainTypesetter];
    v10 = [-[CATextLayer string](self "string")];
    CA::Transaction::unlock(v7);
    if (v9)
    {
      v11 = 0;
      v22 = 0.0;
      v23[0] = 0.0;
      v21 = 0.0;
      do
      {
        v12 = CTTypesetterSuggestLineBreak(v9, v11, 1.0e10);
        v24.location = v11;
        v24.length = v12;
        Line = CTTypesetterCreateLine(v9, v24);
        v14 = Line;
        if (Line)
        {
          v15 = get_line_bounds(Line, v23, &v22, &v21) + 1.0;
          if (v6 <= v15)
          {
            v6 = v15;
          }

          v16 = v21;
          v17 = v22;
          v18 = v23[0];
          CFRelease(v14);
          v5 = v16 + v5 + v17 + v18;
        }

        v11 += v12;
      }

      while (v11 < v10);
      CFRelease(v9);
    }
  }

  v19 = v6;
  v20 = v5;
  result.height = v20;
  result.width = v19;
  return result;
}

- (__CTLine)_createTruncationToken
{
  v3 = [(CATextLayer *)self truncationString];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFStringGetTypeID())
  {
    if (v5 != CFAttributedStringGetTypeID())
    {
      return 0;
    }

    v8 = CTTypesetterCreateWithAttributedString(v4);
    if (!v8)
    {
      return 0;
    }

LABEL_7:
    v11.location = 0;
    v11.length = 0;
    Line = CTTypesetterCreateLine(v8, v11);
    CFRelease(v8);
    return Line;
  }

  v6 = [(CATextLayer *)self _createStringDict];
  v7 = CFAttributedStringCreate(0, v4, v6);

  v8 = CTTypesetterCreateWithAttributedString(v7);
  CFRelease(v7);
  if (v8)
  {
    goto LABEL_7;
  }

  return 0;
}

- (BOOL)CA_validateValue:(id)a3 forKey:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 && [a4 isEqualToString:@"font"])
  {
    v7 = CFGetTypeID(a3);
    return v7 == CGFontGetTypeID() || v7 == CFStringGetTypeID() || v7 == CTFontGetTypeID();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CATextLayer;
    return [(CALayer *)&v9 CA_validateValue:a3 forKey:a4];
  }
}

- (void)didChangeValueForKey:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  if (v5 <= 500)
  {
    if (v5 <= 260)
    {
      if (v5 != 8)
      {
        if (v5 != 18)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }
    }

    else if ((v5 - 261) >= 2)
    {
      if (v5 != 265)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  else if (((v5 - 692) > 0x3F || ((1 << (v5 + 76)) & 0x8000000180000001) == 0) && v5 != 688 && v5 != 501)
  {
    goto LABEL_23;
  }

  v5 = [(CATextLayer *)self isWrapped];
  if ((v5 & 1) == 0)
  {
    [(CALayer *)self setSizeRequisition:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v5 = [[(CALayer *)self superlayer] setNeedsLayout];
  }

LABEL_16:
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

  state = self->_state;
  if (state)
  {
    self->_state = 0;
    CA::Transaction::unlock(v6);
    CA::Transaction::release_object(v6, state);
  }

  else
  {
    CA::Transaction::unlock(v6);
  }

LABEL_23:
  v9.receiver = self;
  v9.super_class = CATextLayer;
  [(CATextLayer *)&v9 didChangeValueForKey:a3];
}

- (CATextLayer)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CATextLayer;
  return [(CALayer *)&v3 init];
}

- (id)implicitAnimationForKeyPath:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CATextLayer;
  result = [(CALayer *)&v7 implicitAnimationForKeyPath:?];
  if (!result)
  {
    v6 = CAInternAtom(a3, 0);
    if (v6 == 265 || v6 == 262)
    {
      return CALayerCreateImplicitAnimation(self, a3, v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (id)defaultValueForKey:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(a3, 0);
  if (v5 > 264)
  {
    if (v5 > 722)
    {
      if (v5 == 723)
      {
        return @"none";
      }

      if (v5 != 724)
      {
        goto LABEL_24;
      }

      result = +[CATextLayer defaultValueForKey:]::defTrunc;
      if (!+[CATextLayer defaultValueForKey:]::defTrunc)
      {
        result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&+[CATextLayer defaultValueForKey:]::mark length:1];
        +[CATextLayer defaultValueForKey:]::defTrunc = result;
      }
    }

    else
    {
      if (v5 != 265)
      {
        if (v5 == 529)
        {
          return *MEMORY[0x1E695E4D0];
        }

        goto LABEL_24;
      }

      result = +[CATextLayer defaultValueForKey:]::white;
      if (!+[CATextLayer defaultValueForKey:]::white)
      {
        v9 = CAGetColorSpace(36);
        result = CGColorCreate(v9, +[CATextLayer defaultValueForKey:]::comp);
        +[CATextLayer defaultValueForKey:]::white = result;
      }
    }
  }

  else
  {
    if (v5 <= 260)
    {
      if (v5 == 8)
      {
        return @"natural";
      }

      if (v5 == 144)
      {
        return @"topLeft";
      }

      goto LABEL_24;
    }

    if (v5 != 261)
    {
      if (v5 == 262)
      {
        result = +[CATextLayer defaultValueForKey:]::defFontSize;
        if (!+[CATextLayer defaultValueForKey:]::defFontSize)
        {
          v7 = objc_alloc(MEMORY[0x1E696AD98]);
          LODWORD(v8) = 1108344832;
          result = [v7 initWithFloat:v8];
          +[CATextLayer defaultValueForKey:]::defFontSize = result;
        }

        return result;
      }

LABEL_24:
      v10.receiver = a1;
      v10.super_class = &OBJC_METACLASS___CATextLayer;
      return objc_msgSendSuper2(&v10, sel_defaultValueForKey_, a3);
    }

    result = +[CATextLayer defaultValueForKey:]::defFont;
    if (!+[CATextLayer defaultValueForKey:]::defFont)
    {
      result = CTFontCreateWithName(@"Helvetica", 36.0, 0);
      +[CATextLayer defaultValueForKey:]::defFont = result;
    }
  }

  return result;
}

- (void)setTruncationString:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = a3;
  CA::Layer::setter(self->super._attr.layer, 0x2D4, 3, v3);
}

- (id)truncationString
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2D4u, 3, v3);
  return v3[0];
}

@end