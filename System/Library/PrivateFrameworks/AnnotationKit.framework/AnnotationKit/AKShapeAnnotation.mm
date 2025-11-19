@interface AKShapeAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKShapeAnnotation)initWithCoder:(id)a3;
- (id)displayName;
- (id)fillColorForOptions:(id)a3;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)a3;
- (void)setFillColor:(id)a3;
@end

@implementation AKShapeAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if (![v4 containsString:@"fillColor"] || (+[AKController akBundle](AKController, "akBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Fill Color", &stru_28519E870, @"AnnotationStrings"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___AKShapeAnnotation;
    v6 = objc_msgSendSuper2(&v8, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
  }

  return v6;
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (v5 && [v5 akIsEDR])
  {
    [(AKShapeAnnotation *)self setFillColorHDR:v5];
    v4 = [v5 akToSDR];
    [(AKShapeAnnotation *)self setFillColorSDR:v4];
  }

  else
  {
    [(AKShapeAnnotation *)self setFillColorHDR:0];
    [(AKShapeAnnotation *)self setFillColorSDR:v5];
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
  v7 = [(AKShapeAnnotation *)self fillColorHDR];
  v8 = v7;
  if (v6 == 0.0)
  {
    if (v7 && ([v4 allowHDR] & 1) != 0)
    {
      v13 = [(AKShapeAnnotation *)self fillColorHDR];
    }

    else
    {
      v13 = [(AKShapeAnnotation *)self fillColorSDR];
    }

    v12 = v13;
  }

  else
  {
    if (v7 && [v4 allowHDR])
    {
      v9 = [(AKShapeAnnotation *)self fillColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v9 = [(AKShapeAnnotation *)self fillColorSDR];
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
  v4.receiver = self;
  v4.super_class = AKShapeAnnotation;
  v2 = [(AKStrokedAnnotation *)&v4 displayName];

  return v2;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKShapeAnnotation;
  v3 = [(AKStrokedAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB028];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKShapeAnnotation;
  v3 = [(AKStrokedAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB040];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKShapeAnnotation;
  [(AKStrokedAnnotation *)&v8 encodeWithCoder:v4];
  v5 = [(AKShapeAnnotation *)self fillColorSDR];
  [v4 akEncodeColor:v5 forKey:@"fillColorString"];

  v6 = [(AKShapeAnnotation *)self fillColorHDR];

  if (v6)
  {
    v7 = [(AKShapeAnnotation *)self fillColorHDR];
    [v4 akEncodeColor:v7 forKey:@"fillColorHDRString"];
  }
}

- (AKShapeAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AKShapeAnnotation;
  v5 = [(AKStrokedAnnotation *)&v10 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"fillColorHDRString"])
    {
      v6 = [v4 akDecodeColorForKey:@"fillColorHDRString"];
      [(AKShapeAnnotation *)v5 setFillColorHDR:v6];
    }

    if ([v4 containsValueForKey:@"fillColorString"])
    {
      v7 = [v4 akDecodeColorForKey:@"fillColorString"];
      [(AKShapeAnnotation *)v5 setFillColorSDR:v7];
LABEL_9:

      goto LABEL_10;
    }

    if ([v4 containsValueForKey:@"fillColor"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fillColor"];
      if (v7)
      {
        v8 = [MEMORY[0x277D75348] akColorWithCIColor:v7];
        [(AKShapeAnnotation *)v5 setFillColor:v8];
      }

      goto LABEL_9;
    }
  }

LABEL_10:

  return v5;
}

@end