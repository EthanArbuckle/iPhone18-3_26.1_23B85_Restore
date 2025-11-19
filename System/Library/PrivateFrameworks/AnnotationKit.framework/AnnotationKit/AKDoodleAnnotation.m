@interface AKDoodleAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKDoodleAnnotation)initWithCoder:(id)a3;
- (CGRect)hitTestBounds;
- (CGRect)rectangle;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (id)strokeColorForOptions:(id)a3;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)setStrokeColor:(id)a3;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKDoodleAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKDoodleAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAE78];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKDoodleAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAE90];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"rectangle"])
  {
    v5 = @"Bounds";
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"path"])
  {
    v5 = @"Doodle Shape";
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"strokeWidth"])
  {
    v5 = @"Line Width";
    goto LABEL_15;
  }

  if ([v4 containsString:@"strokeColor"])
  {
    v5 = @"Color";
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"dashed"])
  {
    v5 = @"Dashed";
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"hasShadow"])
  {
    v5 = @"Shadow";
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"brushStyle"])
  {
    v5 = @"Brush Style";
LABEL_15:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_17;
    }
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKDoodleAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
LABEL_17:

  return v7;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Doodle" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKDoodleAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAEA8];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKDoodleAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAEC0];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKDoodleAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAED8];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKDoodleAnnotation *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:self];
  v12 = v11;
  v14 = v13;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v32 = CGRectInset(v31, v12, v14);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  [(AKDoodleAnnotation *)self strokeWidth];
  v20 = v19 * -0.5;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v34 = CGRectInset(v33, v20, v20);
  v21 = v34.origin.x;
  v22 = v34.origin.y;
  v23 = v34.size.width;
  v24 = v34.size.height;
  [(AKDoodleAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:v21 angle:v22, v23, v24, v25];
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKDoodleAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKDoodleAnnotation *)self rectangle];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  [AKGeometryHelper adjustRect:[AKGeometryHelper inverseExifOrientation:[(AKAnnotation *)self originalExifOrientation]] forExifOrientation:x aboutCenter:y, width, height, MidX, CGRectGetMidY(v10)];
  [(AKDoodleAnnotation *)self setRectangle:?];
}

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:a3];
  [(AKDoodleAnnotation *)self rectangle];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memset(&v16[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper affineTransformFlatteningOriginalModelExif:a3 withOriginalModelSize:width, height];
  v16[0] = v16[1];
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  v18 = CGRectApplyAffineTransform(v17, v16);
  [(AKDoodleAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKDoodleAnnotation *)self rectangle];
    [(AKDoodleAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:v7];
  }
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (v5 && [v5 akIsEDR])
  {
    [(AKDoodleAnnotation *)self setStrokeColorHDR:v5];
    v4 = [v5 akToSDR];
    [(AKDoodleAnnotation *)self setStrokeColorSDR:v4];
  }

  else
  {
    [(AKDoodleAnnotation *)self setStrokeColorHDR:0];
    [(AKDoodleAnnotation *)self setStrokeColorSDR:v5];
  }
}

- (id)strokeColorForOptions:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[AKAnnotationRendererOptions defaultOptions];
  }

  [v4 scaleFactor];
  v6 = v5;
  v7 = [(AKDoodleAnnotation *)self strokeColorHDR];
  v8 = v7;
  if (v6 == 0.0)
  {
    if (v7 && ([v4 allowHDR] & 1) != 0)
    {
      v13 = [(AKDoodleAnnotation *)self strokeColorHDR];
    }

    else
    {
      v13 = [(AKDoodleAnnotation *)self strokeColorSDR];
    }

    v12 = v13;
  }

  else
  {
    if (v7 && [v4 allowHDR])
    {
      v9 = [(AKDoodleAnnotation *)self strokeColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v9 = [(AKDoodleAnnotation *)self strokeColorSDR];
      v11 = 0;
      v10 = 1;
    }

    [v4 scaleFactor];
    v12 = [v9 akScale:?];
    if (v10)
    {
    }

    if (v11)
    {
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AKDoodleAnnotation;
  [(AKAnnotation *)&v12 encodeWithCoder:v4];
  [(AKDoodleAnnotation *)self rectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v13);
  [v4 encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  v6 = [(AKDoodleAnnotation *)self path];
  v7 = [v6 newCGPathForPlatformBezierPath];

  v8 = [MEMORY[0x277CBEA90] encodeCGPath:v7];
  [v4 encodeObject:v8 forKey:@"path"];
  CGPathRelease(v7);
  v9 = [(AKDoodleAnnotation *)self strokeColorSDR];
  [v4 akEncodeColor:v9 forKey:@"strokeColorString"];

  v10 = [(AKDoodleAnnotation *)self strokeColorHDR];

  if (v10)
  {
    v11 = [(AKDoodleAnnotation *)self strokeColorHDR];
    [v4 akEncodeColor:v11 forKey:@"strokeColorHDRString"];
  }

  [(AKDoodleAnnotation *)self strokeWidth];
  [v4 encodeDouble:@"strokeWidth" forKey:?];
  [v4 encodeBool:-[AKDoodleAnnotation isDashed](self forKey:{"isDashed"), @"dashed"}];
  [v4 encodeBool:-[AKDoodleAnnotation hasShadow](self forKey:{"hasShadow"), @"hasShadow"}];
  [v4 encodeInteger:-[AKDoodleAnnotation brushStyle](self forKey:{"brushStyle"), @"brushStyle"}];
  [v4 encodeBool:-[AKDoodleAnnotation pathIsPrestroked](self forKey:{"pathIsPrestroked"), @"pathIsPrestroked"}];
  [v4 encodeBool:-[AKDoodleAnnotation pathIsDot](self forKey:{"pathIsDot"), @"pathIsDot"}];
}

- (AKDoodleAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AKDoodleAnnotation;
  v5 = [(AKAnnotation *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v12 = [MEMORY[0x277CBEA90] newCGPathDecodedFromData:v11];
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x277D75208] bezierPathWithCGPath:v12];
      [(AKDoodleAnnotation *)v5 setPath:v14];

      CGPathRelease(v13);
    }

    if ([v4 containsValueForKey:@"pathIsPrestroked"])
    {
      v15 = [v4 decodeBoolForKey:@"pathIsPrestroked"];
    }

    else
    {
      v15 = 0;
    }

    [(AKDoodleAnnotation *)v5 setPathIsPrestroked:v15];
    if ([v4 containsValueForKey:@"pathIsDot"])
    {
      v16 = [v4 decodeBoolForKey:@"pathIsDot"];
    }

    else
    {
      v16 = 0;
    }

    [(AKDoodleAnnotation *)v5 setPathIsDot:v16];
    if ([v4 containsValueForKey:@"strokeColorHDRString"])
    {
      v17 = [v4 akDecodeColorForKey:@"strokeColorHDRString"];
      [(AKDoodleAnnotation *)v5 setStrokeColorHDR:v17];
    }

    if ([v4 containsValueForKey:@"strokeColorString"])
    {
      v18 = [v4 akDecodeColorForKey:@"strokeColorString"];
      [(AKDoodleAnnotation *)v5 setStrokeColorSDR:v18];
    }

    else
    {
      if (![v4 containsValueForKey:@"strokeColor"])
      {
LABEL_18:
        [v4 decodeDoubleForKey:@"strokeWidth"];
        [(AKDoodleAnnotation *)v5 setStrokeWidth:?];
        -[AKDoodleAnnotation setDashed:](v5, "setDashed:", [v4 decodeBoolForKey:@"dashed"]);
        -[AKDoodleAnnotation setHasShadow:](v5, "setHasShadow:", [v4 decodeBoolForKey:@"hasShadow"]);
        -[AKDoodleAnnotation setBrushStyle:](v5, "setBrushStyle:", [v4 decodeIntegerForKey:@"brushStyle"]);

        goto LABEL_19;
      }

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
      if (v18)
      {
        v19 = [MEMORY[0x277D75348] akColorWithCIColor:v18];
        [(AKDoodleAnnotation *)v5 setStrokeColor:v19];
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return v5;
}

- (CGRect)rectangle
{
  objc_copyStruct(v6, &self->_rectangle, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end