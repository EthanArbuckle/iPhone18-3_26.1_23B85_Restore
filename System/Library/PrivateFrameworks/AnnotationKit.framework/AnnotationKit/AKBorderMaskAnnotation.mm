@interface AKBorderMaskAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKBorderMaskAnnotation)initWithCoder:(id)a3;
- (CGRect)hitTestBounds;
- (CGRect)rectangle;
- (id)displayName;
- (id)fillColorForOptions:(id)a3;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)setFillColor:(id)a3;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKBorderMaskAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKBorderMaskAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB058];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKBorderMaskAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB070];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"rectangle"])
  {
    v5 = @"Mask Bounds";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"fillColor"])
  {
    v5 = @"Mask Color";
LABEL_5:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKBorderMaskAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
LABEL_7:

  return v7;
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (v5 && [v5 akIsEDR])
  {
    [(AKBorderMaskAnnotation *)self setFillColorHDR:v5];
    v4 = [v5 akToSDR];
    [(AKBorderMaskAnnotation *)self setFillColorSDR:v4];
  }

  else
  {
    [(AKBorderMaskAnnotation *)self setFillColorHDR:0];
    [(AKBorderMaskAnnotation *)self setFillColorSDR:v5];
  }
}

- (id)fillColorForOptions:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[AKAnnotationRendererOptions defaultOptions];
  }

  [v4 scaleFactor];
  v6 = v5;
  v7 = [(AKBorderMaskAnnotation *)self fillColorHDR];
  v8 = v7;
  if (v6 == 0.0)
  {
    if (v7 && ([v4 allowHDR] & 1) != 0)
    {
      v13 = [(AKBorderMaskAnnotation *)self fillColorHDR];
    }

    else
    {
      v13 = [(AKBorderMaskAnnotation *)self fillColorSDR];
    }

    v12 = v13;
  }

  else
  {
    if (v7 && [v4 allowHDR])
    {
      v9 = [(AKBorderMaskAnnotation *)self fillColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v9 = [(AKBorderMaskAnnotation *)self fillColorSDR];
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
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Mask" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKBorderMaskAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB088];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKBorderMaskAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB0A0];

  return v4;
}

- (CGRect)hitTestBounds
{
  v2 = *MEMORY[0x277CBF390];
  v3 = *(MEMORY[0x277CBF390] + 8);
  v4 = *(MEMORY[0x277CBF390] + 16);
  v5 = *(MEMORY[0x277CBF390] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKBorderMaskAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKBorderMaskAnnotation *)self rectangle];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  if (!CGRectIsInfinite(v9))
  {
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    MidX = CGRectGetMidX(v10);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    [AKGeometryHelper adjustRect:[AKGeometryHelper inverseExifOrientation:[(AKAnnotation *)self originalExifOrientation]] forExifOrientation:x aboutCenter:y, width, height, MidX, CGRectGetMidY(v11)];
    [(AKBorderMaskAnnotation *)self setRectangle:?];
  }
}

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:a3];
  [(AKBorderMaskAnnotation *)self rectangle];
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
  [(AKBorderMaskAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    [(AKBorderMaskAnnotation *)self rectangle];
    v8 = x + v7;
    v10 = y + v9;

    [(AKBorderMaskAnnotation *)self setRectangle:v8, v10];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKBorderMaskAnnotation;
  [(AKAnnotation *)&v9 encodeWithCoder:v4];
  [(AKBorderMaskAnnotation *)self rectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v10);
  [v4 encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  v6 = [(AKBorderMaskAnnotation *)self fillColorSDR];
  [v4 akEncodeColor:v6 forKey:@"fillColorString"];

  v7 = [(AKBorderMaskAnnotation *)self fillColorHDR];

  if (v7)
  {
    v8 = [(AKBorderMaskAnnotation *)self fillColorHDR];
    [v4 akEncodeColor:v8 forKey:@"fillColorHDRString"];
  }
}

- (AKBorderMaskAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AKBorderMaskAnnotation;
  v5 = [(AKAnnotation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    if ([v4 containsValueForKey:@"fillColorHDRString"])
    {
      v11 = [v4 akDecodeColorForKey:@"fillColorHDRString"];
      [(AKBorderMaskAnnotation *)v5 setFillColorHDR:v11];
    }

    if ([v4 containsValueForKey:@"fillColorString"])
    {
      v12 = [v4 akDecodeColorForKey:@"fillColorString"];
      [(AKBorderMaskAnnotation *)v5 setFillColor:v12];
    }

    else
    {
      if (![v4 containsValueForKey:@"fillColor"])
      {
LABEL_10:

        goto LABEL_11;
      }

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fillColor"];
      if (v12)
      {
        v13 = [MEMORY[0x277D75348] akColorWithCIColor:v12];
        [(AKBorderMaskAnnotation *)v5 setFillColor:v13];
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