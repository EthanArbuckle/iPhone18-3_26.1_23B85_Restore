@interface PDFBorder
- (BOOL)_isRectangular;
- (BOOL)setBorderCharacteristicsFromArray:(CGPDFArray *)array;
- (NSDictionary)borderKeyValues;
- (PDFBorder)init;
- (PDFBorder)initWithAnnotationDictionary:(CGPDFDictionary *)dictionary forPage:(id)page;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setDashFromArray:(CGPDFArray *)array;
- (void)_setStyleFromDictionary:(CGPDFDictionary *)dictionary;
- (void)_updateDashPatternRaw;
- (void)dealloc;
- (void)drawInRect:(CGRect)rect;
- (void)drawInRect:(CGRect)rect inContext:(CGContext *)CurrentContext;
- (void)encodeWithCoder:(id)coder;
- (void)setDashPattern:(NSArray *)dashPattern;
- (void)setLineWidth:(CGFloat)lineWidth;
- (void)setStyle:(PDFBorderStyle)style;
- (void)updateCornerBorderStyle;
@end

@implementation PDFBorder

- (PDFBorder)init
{
  v8.receiver = self;
  v8.super_class = PDFBorder;
  v2 = [(PDFBorder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(PDFBorderPrivateVars);
    v4 = v2->_private;
    v2->_private = v3;

    objc_storeWeak(&v2->_private->annotation, 0);
    v2->_private->style = 0;
    v2->_private->hCornerRadius = 0.0;
    v2->_private->vCornerRadius = 0.0;
    v2->_private->lineWidth = 1.0;
    v2->_private->dashCount = 0;
    v5 = v2->_private;
    dashPattern = v5->dashPattern;
    v5->dashPattern = 0;

    v2->_private->dashPatternRaw = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setStyle:{-[PDFBorder style](self, "style")}];
  [(PDFBorder *)self lineWidth];
  [v4 setLineWidth:?];
  dashPattern = [(PDFBorder *)self dashPattern];
  [v4 setDashPattern:dashPattern];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PDFBorder style](self forKey:{"style"), @"PDFBorderStyle"}];
  [(PDFBorder *)self lineWidth];
  [coderCopy encodeDouble:@"PDFBorderLineWidth" forKey:?];
  dashPattern = [(PDFBorder *)self dashPattern];
  [coderCopy encodeObject:dashPattern forKey:@"PDFBorderDashPattern"];
}

- (void)dealloc
{
  v3 = self->_private;
  dashPatternRaw = v3->dashPatternRaw;
  if (dashPatternRaw)
  {
    free(dashPatternRaw);
    v3 = self->_private;
  }

  v3->dashPatternRaw = 0;
  v5.receiver = self;
  v5.super_class = PDFBorder;
  [(PDFBorder *)&v5 dealloc];
}

- (id)description
{
  style = self->_private->style;
  if (style > 4)
  {
    v5 = @"<unknown>";
  }

  else
  {
    v5 = off_1E8151CF8[style];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"PDFBorder: {%@ lineWidth:%.1f hCorner:%.1f vCorner:%.1f dashCount:%lu dashPattern:%@}", v5, *&self->_private->lineWidth, *&self->_private->hCornerRadius, *&self->_private->vCornerRadius, self->_private->dashCount, self->_private->dashPattern, v2, v3];
}

- (void)setStyle:(PDFBorderStyle)style
{
  self->_private->style = style;
  style = [(PDFBorder *)self style];
  v5 = self->_private;
  if (style == kPDFBorderStyleDashed && !v5->dashPattern)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:3];
    [v6 addObject:v7];

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    [v6 addObject:v8];

    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6];
    v10 = self->_private;
    dashPattern = v10->dashPattern;
    v10->dashPattern = v9;

    self->_private->dashCount = 2;
    [(PDFBorder *)self _updateDashPatternRaw];

    v5 = self->_private;
  }

  WeakRetained = objc_loadWeakRetained(&v5->annotation);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    [WeakRetained updateAnnotationEffect];
    WeakRetained = v13;
  }
}

- (void)setLineWidth:(CGFloat)lineWidth
{
  v3 = self->_private;
  v4 = v3->lineWidth;
  v3->lineWidth = lineWidth;
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained updateAnnotationEffect];
    v6 = objc_alloc_init(PDFBorder);
    [(PDFBorder *)v6 setLineWidth:v4];
    [v7 presentRedactionDiscoverabilityAlertWithOldValue:v6 forAnnotationKey:@"/Border"];

    WeakRetained = v7;
  }
}

- (void)setDashPattern:(NSArray *)dashPattern
{
  v10 = [(NSArray *)dashPattern copy];
  self->_private->dashCount = [v10 count];
  v4 = self->_private;
  if (v4->dashCount >= 11)
  {
    v4->dashCount = 10;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v10];
  v6 = self->_private;
  v7 = v6->dashPattern;
  v6->dashPattern = v5;

  [(PDFBorder *)self _updateDashPatternRaw];
  [(PDFBorder *)self setStyle:self->_private->dashCount != 0];
  WeakRetained = objc_loadWeakRetained(&self->_private->annotation);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateAnnotationEffect];
  }
}

- (void)drawInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = PDFGraphicsGetCurrentContext();

  [(PDFBorder *)self drawInRect:CurrentContext inContext:x, y, width, height];
}

- (NSDictionary)borderKeyValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_private->lineWidth];
  [v3 setValue:v4 forKey:@"W"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_private->style];
  [v3 setValue:v5 forKey:@"S"];

  dashPattern = self->_private->dashPattern;
  if (dashPattern)
  {
    v7 = [(NSArray *)dashPattern copyWithZone:0];
    [v3 setValue:v7 forKey:@"D"];
  }

  return v3;
}

- (PDFBorder)initWithAnnotationDictionary:(CGPDFDictionary *)dictionary forPage:(id)page
{
  pageCopy = page;
  v8 = 0;
  value = 0;
  if (dictionary)
  {
    self = [(PDFBorder *)self init];
    if (self)
    {
      if (CGPDFDictionaryGetDictionary(dictionary, "BS", &v8))
      {
        [(PDFBorder *)self _setStyleFromDictionary:v8];
LABEL_7:
        self = self;
        dictionary = self;
        goto LABEL_9;
      }

      if (!CGPDFDictionaryGetArray(dictionary, "Border", &value) || [(PDFBorder *)self setBorderCharacteristicsFromArray:value])
      {
        goto LABEL_7;
      }
    }

    dictionary = 0;
  }

LABEL_9:

  return dictionary;
}

- (__CFDictionary)createDictionaryRef
{
  [(PDFBorder *)self lineWidth];
  v4 = v3;
  valuePtr = v3;
  style = [(PDFBorder *)self style];
  if (v4 == 1.0 && style == kPDFBorderStyleSolid)
  {
    return 0;
  }

  v7 = style;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v4 != 1.0)
  {
    v10 = CFNumberCreate(v8, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"/W", v10);
    CFRelease(v10);
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v11 = @"/S";
      dashPattern = @"/I";
      goto LABEL_19;
    }

    if (v7 == 4)
    {
      v11 = @"/S";
      dashPattern = @"/U";
      goto LABEL_19;
    }
  }

  else if (v7 == 1)
  {
    CFDictionarySetValue(Mutable, @"/S", @"/D");
    v13 = self->_private;
    if (v13->dashCount >= 1)
    {
      dashPattern = v13->dashPattern;
      if (dashPattern)
      {
        v11 = @"/D";
        goto LABEL_19;
      }
    }
  }

  else if (v7 == 2)
  {
    v11 = @"/S";
    dashPattern = @"/B";
LABEL_19:
    CFDictionarySetValue(Mutable, v11, dashPattern);
  }

  return Mutable;
}

- (BOOL)_isRectangular
{
  [(PDFBorder *)self horizontalCornerRadius];
  if (v3 != 0.0)
  {
    return 0;
  }

  [(PDFBorder *)self verticalCornerRadius];
  return v4 == 0.0;
}

- (void)_updateDashPatternRaw
{
  v3 = self->_private;
  dashPatternRaw = v3->dashPatternRaw;
  if (dashPatternRaw)
  {
    free(dashPatternRaw);
    v3 = self->_private;
  }

  self->_private->dashPatternRaw = malloc_type_malloc(8 * v3->dashCount, 0x100004000313F17uLL);
  v5 = self->_private;
  if (v5->dashCount >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)v5->dashPattern objectAtIndex:v6];
      [v7 floatValue];
      self->_private->dashPatternRaw[v6] = v8;

      ++v6;
      v5 = self->_private;
    }

    while (v5->dashCount > v6);
  }
}

- (void)drawInRect:(CGRect)rect inContext:(CGContext *)CurrentContext
{
  v85 = 0uLL;
  [(PDFBorder *)self lineWidth];
  if (v6 != 0.0)
  {
    v7 = v6;
    if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
    {
      v82 = v7;
      CGContextSaveGState(CurrentContext);
      style = [(PDFBorder *)self style];
      CTM = CGContextGetCTM(&transform, CurrentContext);
      a = transform.a;
      b = transform.b;
      c = transform.c;
      d = transform.d;
      v85 = *&transform.tx;
      v86.origin.x = PDFRectToCGRect(CTM);
      transform.a = a;
      transform.b = b;
      transform.c = c;
      transform.d = d;
      *&transform.tx = v85;
      v87 = CGRectApplyAffineTransform(v86, &transform);
      v88 = CGRectIntegral(v87);
      v14 = PDFRectFromCGRect(v88.origin.x, v88.origin.y, v88.size.width, v88.size.height);
      v81 = v15;
      v17 = v16;
      v19 = v18;
      v83.a = a;
      v83.b = b;
      v83.c = c;
      v83.d = d;
      *&v83.tx = v85;
      CGAffineTransformInvert(&transform, &v83);
      CGContextConcatCTM(CurrentContext, &transform);
      if ([(PDFBorder *)self _isRectangular])
      {
        v20 = MEMORY[0x1E69DC728];
        v89.origin.y = v81;
        v21 = v82;
        v89.origin.x = v14;
        v89.size.width = v17;
        v89.size.height = v19;
        v90 = PDFRectInset(v89, v82 * 0.5, v82 * 0.5);
        bezierPath = [v20 bezierPathWithRect:{v90.origin.x, v90.origin.y, v90.size.width, v90.size.height}];
      }

      else
      {
        [(PDFBorder *)self horizontalCornerRadius];
        v24 = v23;
        [(PDFBorder *)self verticalCornerRadius];
        v25 = fabs(c * v24 + a * v24);
        v27 = fabs(c * v26 + a * v26);
        bezierPath = [MEMORY[0x1E69DC728] bezierPath];
        v28 = v82 * 0.5 + PDFRectGetMinX(v14, v81, v17);
        MaxY = PDFRectGetMaxY(v14, v81, v17, v19);
        [bezierPath moveToPoint:{PDFPointMake(v28, MaxY - (v82 * 0.5 + v27))}];
        v30 = v25;
        v78 = PDFPointMake(v25, v27);
        v32 = v31;
        v79 = v17;
        v80 = v19;
        v33 = PDFPointMake(0.0, v27 * 0.55228);
        v34 = v17;
        v36 = v35;
        v37 = PDFPointMake(v30 - 0.55228 * v30, v27);
        PDFKitAddRelativeCurveToPoint(bezierPath, v78, v32, v33, v36, v37, v38);
        v39 = v30;
        v40 = PDFRectGetMaxX(v14, v81, v34) - (v82 * 0.5 + v30);
        v41 = PDFRectGetMaxY(v14, v81, v34, v80);
        v42 = PDFPointMake(v40, v41 - v82 * 0.5);
        PDFKitAddLineToPoint(bezierPath, v42);
        v43 = v39;
        v44 = PDFPointMake(v39, -v27);
        v46 = v45;
        v47 = PDFPointMake(v39 * 0.55228, 0.0);
        v49 = v48;
        v50 = PDFPointMake(v43, -(v27 - 0.55228 * v27));
        PDFKitAddRelativeCurveToPoint(bezierPath, v44, v46, v47, v49, v50, v51);
        v52 = PDFRectGetMaxX(v14, v81, v79) - v82 * 0.5;
        MinY = PDFRectGetMinY(v14, v81, v79, v80);
        v54 = PDFPointMake(v52, v82 * 0.5 + v27 + MinY);
        PDFKitAddLineToPoint(bezierPath, v54);
        v77 = PDFPointMake(-v43, -v27);
        v56 = v55;
        v57 = PDFPointMake(0.0, -(v27 * 0.55228));
        v59 = v58;
        v60 = PDFPointMake(-(v43 - 0.55228 * v43), -v27);
        PDFKitAddRelativeCurveToPoint(bezierPath, v77, v56, v57, v59, v60, v61);
        v62 = v43;
        v63 = v82 * 0.5 + v43 + PDFRectGetMinX(v14, v81, v79);
        v64 = PDFRectGetMinY(v14, v81, v79, v80);
        v65 = PDFPointMake(v63, v82 * 0.5 + v64);
        PDFKitAddLineToPoint(bezierPath, v65);
        v66 = -v43;
        v67 = PDFPointMake(v66, v27);
        v69 = v68;
        v70 = PDFPointMake(-(v62 * 0.55228), 0.0);
        v72 = v71;
        v73 = PDFPointMake(v66, v27 - 0.55228 * v27);
        v21 = v82;
        PDFKitAddRelativeCurveToPoint(bezierPath, v67, v69, v70, v72, v73, v74);
        [bezierPath closePath];
      }

      CGContextSetLineWidth(CurrentContext, v21);
      if (style == kPDFBorderStyleDashed)
      {
        [bezierPath setLineDash:self->_private->dashPatternRaw count:self->_private->dashCount phase:0.0];
      }

      v75 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{bezierPath, 0}];
      v76 = [PDFAnnotationDrawing createCGPathArrayWithBezierPaths:v75];
      if ([v75 count] && v76)
      {
        if (*v76)
        {
          CGContextAddPath(CurrentContext, *v76);
          CGContextStrokePath(CurrentContext);
          CGPathRelease(*v76);
          free(v76);
        }
      }

      CGContextRestoreGState(CurrentContext);
    }
  }
}

- (void)_setStyleFromDictionary:(CGPDFDictionary *)dictionary
{
  v14 = 0;
  value = 0.0;
  v13 = 0;
  if (CGPDFDictionaryGetNumber(dictionary, "W", &value))
  {
    self->_private->lineWidth = value;
  }

  if (CGPDFDictionaryGetName(dictionary, "S", &v13))
  {
    v5 = *v13;
    if (v5 <= 0x48)
    {
      if (v5 == 66)
      {
        if (v13[1])
        {
          goto LABEL_21;
        }

        v6 = 2;
        goto LABEL_20;
      }

      if (v5 == 68 && !v13[1])
      {
        v6 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 == 73)
      {
        if (v13[1])
        {
          goto LABEL_21;
        }

        v6 = 3;
        goto LABEL_20;
      }

      if (v5 == 85)
      {
        if (v13[1])
        {
          goto LABEL_21;
        }

        v6 = 4;
        goto LABEL_20;
      }

      if (v5 == 83 && !v13[1])
      {
        v6 = 0;
LABEL_20:
        self->_private->style = v6;
      }
    }
  }

LABEL_21:
  if ([(PDFBorder *)self style]== kPDFBorderStyleDashed)
  {
    if (CGPDFDictionaryGetArray(dictionary, "D", &v14))
    {
      [(PDFBorder *)self _setDashFromArray:v14];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:3];
      [v7 addObject:v8];

      v9 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      [v7 addObject:v9];

      v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7];
      v11 = self->_private;
      dashPattern = v11->dashPattern;
      v11->dashPattern = v10;

      self->_private->dashCount = 2;
      [(PDFBorder *)self _updateDashPatternRaw];
    }
  }
}

- (void)_setDashFromArray:(CGPDFArray *)array
{
  value = 0.0;
  Count = CGPDFArrayGetCount(array);
  if (Count)
  {
    if (Count >= 0xA)
    {
      v6 = 10;
    }

    else
    {
      v6 = Count;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = 0;
    v9 = 0.0;
    while (CGPDFArrayGetNumber(array, v8, &value))
    {
      v10 = value;
      if (value < 0.0)
      {
        value = 0.0;
        v10 = 0.0;
      }

      v9 = v9 + v10;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      [v7 addObject:v11];

      if (v6 == ++v8)
      {
        if (v9 < 0.0001)
        {
          self->_private->lineWidth = 0.0;
        }

        v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7];
        v13 = self->_private;
        dashPattern = v13->dashPattern;
        v13->dashPattern = v12;

        self->_private->dashCount = v6;
        [(PDFBorder *)self _updateDashPatternRaw];
        break;
      }
    }
  }
}

- (BOOL)setBorderCharacteristicsFromArray:(CGPDFArray *)array
{
  Count = CGPDFArrayGetCount(array);
  v6 = Count - 3;
  if (Count - 3 <= 1)
  {
    v7 = Count;
    value = 0.0;
    if (CGPDFArrayGetNumber(array, 0, &value))
    {
      self->_private->hCornerRadius = value;
    }

    if (CGPDFArrayGetNumber(array, 1uLL, &value))
    {
      self->_private->vCornerRadius = value;
    }

    Number = CGPDFArrayGetNumber(array, 2uLL, &value);
    v9 = value;
    if (!Number)
    {
      v9 = 0.0;
    }

    self->_private->lineWidth = v9;
    if (v7 == 4)
    {
      v11 = 0;
      if (CGPDFArrayGetArray(array, 3uLL, &v11))
      {
        [(PDFBorder *)self _setDashFromArray:v11];
      }
    }

    else
    {
      self->_private->style = 0;
    }
  }

  return v6 < 2;
}

- (void)updateCornerBorderStyle
{
  if ([(PDFBorder *)self style]>= kPDFBorderStyleBeveled)
  {
    v3 = [(PDFBorder *)self dashCountRaw]!= 0;

    [(PDFBorder *)self setStyle:v3];
  }
}

@end