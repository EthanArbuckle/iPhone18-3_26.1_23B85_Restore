@interface AKSignatureAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKSignatureAnnotation)initWithCoder:(id)a3;
- (CGRect)hitTestBounds;
- (CGRect)rectangle;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (id)strokeColorForOptions:(id)a3;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)setStrokeColor:(id)a3;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKSignatureAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKSignatureAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA800];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKSignatureAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA818];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"rectangle"])
  {
    v5 = @"Bounds";
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"signature"])
  {
    v5 = @"Signature Shape";
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"strokeColor"])
  {
    v5 = @"Signature Color";
LABEL_7:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKSignatureAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
LABEL_9:

  return v7;
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (v5 && [v5 akIsEDR])
  {
    [(AKSignatureAnnotation *)self setStrokeColorHDR:v5];
    v4 = [v5 akToSDR];
    [(AKSignatureAnnotation *)self setStrokeColorSDR:v4];
  }

  else
  {
    [(AKSignatureAnnotation *)self setStrokeColorHDR:0];
    [(AKSignatureAnnotation *)self setStrokeColorSDR:v5];
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
  v7 = [(AKSignatureAnnotation *)self strokeColorHDR];
  v8 = v7;
  if (v6 == 0.0)
  {
    if (v7 && ([v4 allowHDR] & 1) != 0)
    {
      v13 = [(AKSignatureAnnotation *)self strokeColorHDR];
    }

    else
    {
      v13 = [(AKSignatureAnnotation *)self strokeColorSDR];
    }

    v12 = v13;
  }

  else
  {
    if (v7 && [v4 allowHDR])
    {
      v9 = [(AKSignatureAnnotation *)self strokeColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v9 = [(AKSignatureAnnotation *)self strokeColorSDR];
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

- (id)displayName
{
  v3 = [(AKSignatureAnnotation *)self signature];
  v4 = [v3 descriptionTag];

  if (v4)
  {
    v5 = [(AKSignatureAnnotation *)self signature];
    if (v4 == -1)
    {
      [v5 customDescription];
    }

    else
    {
      +[AKSignatureDescription stringValueForSignatureDescriptionTag:](AKSignatureDescription, "stringValueForSignatureDescriptionTag:", [v5 descriptionTag]);
    }
    v6 = ;
  }

  else
  {
    v5 = +[AKController akBundle];
    v6 = [v5 localizedStringForKey:@"Signature" value:&stru_28519E870 table:@"AnnotationStrings"];
  }

  v7 = v6;

  return v7;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKSignatureAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA830];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKSignatureAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA848];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKSignatureAnnotation *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:self];
  v12 = v11;
  v14 = v13;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v26 = CGRectInset(v25, v12, v14);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  [(AKSignatureAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v19];
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKSignatureAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKSignatureAnnotation *)self rectangle];
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
  [(AKSignatureAnnotation *)self setRectangle:?];
}

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:a3];
  [(AKSignatureAnnotation *)self rectangle];
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
  [(AKSignatureAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKSignatureAnnotation *)self rectangle];
    [(AKSignatureAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AKSignatureAnnotation;
  [(AKAnnotation *)&v10 encodeWithCoder:v4];
  [(AKSignatureAnnotation *)self rectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v11);
  [v4 encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  v6 = [(AKSignatureAnnotation *)self signature];
  [v4 encodeObject:v6 forKey:@"signature"];

  v7 = [(AKSignatureAnnotation *)self strokeColorSDR];
  [v4 akEncodeColor:v7 forKey:@"strokeColorString"];

  v8 = [(AKSignatureAnnotation *)self strokeColorHDR];

  if (v8)
  {
    v9 = [(AKSignatureAnnotation *)self strokeColorHDR];
    [v4 akEncodeColor:v9 forKey:@"strokeColorHDRString"];
  }
}

- (AKSignatureAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AKSignatureAnnotation;
  v5 = [(AKAnnotation *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    [(AKSignatureAnnotation *)v5 setSignature:v11];

    if ([v4 containsValueForKey:@"strokeColorHDRString"])
    {
      v12 = [v4 akDecodeColorForKey:@"strokeColorHDRString"];
      [(AKSignatureAnnotation *)v5 setStrokeColorHDR:v12];
    }

    if ([v4 containsValueForKey:@"strokeColorString"])
    {
      v13 = [v4 akDecodeColorForKey:@"strokeColorSDRString"];
      [(AKSignatureAnnotation *)v5 setStrokeColorSDR:v13];
    }

    else
    {
      if (![v4 containsValueForKey:@"strokeColor"])
      {
LABEL_10:

        goto LABEL_11;
      }

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
      if (v13)
      {
        v14 = [MEMORY[0x277D75348] akColorWithCIColor:v13];
        [(AKSignatureAnnotation *)v5 setStrokeColor:v14];
      }
    }

    goto LABEL_10;
  }

LABEL_11:

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