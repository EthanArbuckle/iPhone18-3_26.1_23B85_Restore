@interface AKStrokedAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKStrokedAnnotation)initWithCoder:(id)a3;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (id)strokeColorForOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation AKStrokedAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKStrokedAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BABA8];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKStrokedAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BABC0];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"strokeWidth"])
  {
    v5 = @"Border Line Width";
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"strokeColor"])
  {
    v5 = @"Border Color";
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"dashed"])
  {
    v5 = @"Border Dashed";
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"hasShadow"])
  {
    v5 = @"Shadow";
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"brushStyle"])
  {
    v5 = @"Brush Style";
LABEL_11:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_13;
    }
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKStrokedAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
LABEL_13:

  return v7;
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (v5 && [v5 akIsEDR])
  {
    [(AKStrokedAnnotation *)self setStrokeColorHDR:v5];
    v4 = [v5 akToSDR];
    [(AKStrokedAnnotation *)self setStrokeColorSDR:v4];
  }

  else
  {
    [(AKStrokedAnnotation *)self setStrokeColorHDR:0];
    [(AKStrokedAnnotation *)self setStrokeColorSDR:v5];
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
  v7 = [(AKStrokedAnnotation *)self strokeColorHDR];
  v8 = v7;
  if (v6 == 0.0)
  {
    if (v7 && ([v4 allowHDR] & 1) != 0)
    {
      v13 = [(AKStrokedAnnotation *)self strokeColorHDR];
    }

    else
    {
      v13 = [(AKStrokedAnnotation *)self strokeColorSDR];
    }

    v12 = v13;
  }

  else
  {
    if (v7 && [v4 allowHDR])
    {
      v9 = [(AKStrokedAnnotation *)self strokeColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v9 = [(AKStrokedAnnotation *)self strokeColorSDR];
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
  v4.super_class = AKStrokedAnnotation;
  v2 = [(AKAnnotation *)&v4 displayName];

  return v2;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStrokedAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BABD8];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStrokedAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BABF0];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKStrokedAnnotation;
  [(AKAnnotation *)&v8 encodeWithCoder:v4];
  v5 = [(AKStrokedAnnotation *)self strokeColorSDR];
  [v4 akEncodeColor:v5 forKey:@"strokeColorString"];

  v6 = [(AKStrokedAnnotation *)self strokeColorHDR];

  if (v6)
  {
    v7 = [(AKStrokedAnnotation *)self strokeColorHDR];
    [v4 akEncodeColor:v7 forKey:@"strokeColorHDRString"];
  }

  [(AKStrokedAnnotation *)self strokeWidth];
  [v4 encodeDouble:@"strokeWidth" forKey:?];
  [v4 encodeBool:-[AKStrokedAnnotation isDashed](self forKey:{"isDashed"), @"dashed"}];
  [v4 encodeBool:-[AKStrokedAnnotation hasShadow](self forKey:{"hasShadow"), @"hasShadow"}];
  [v4 encodeInteger:-[AKStrokedAnnotation brushStyle](self forKey:{"brushStyle"), @"brushStyle"}];
}

- (AKStrokedAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AKStrokedAnnotation;
  v5 = [(AKAnnotation *)&v10 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"strokeColorHDRString"])
    {
      v6 = [v4 akDecodeColorForKey:@"strokeColorHDRString"];
      [(AKStrokedAnnotation *)v5 setStrokeColorHDR:v6];
    }

    if ([v4 containsValueForKey:@"strokeColorString"])
    {
      v7 = [v4 akDecodeColorForKey:@"strokeColorString"];
      [(AKStrokedAnnotation *)v5 setStrokeColorSDR:v7];
    }

    else
    {
      if (![v4 containsValueForKey:@"strokeColor"])
      {
LABEL_10:
        [v4 decodeDoubleForKey:@"strokeWidth"];
        [(AKStrokedAnnotation *)v5 setStrokeWidth:?];
        -[AKStrokedAnnotation setDashed:](v5, "setDashed:", [v4 decodeBoolForKey:@"dashed"]);
        -[AKStrokedAnnotation setHasShadow:](v5, "setHasShadow:", [v4 decodeBoolForKey:@"hasShadow"]);
        -[AKStrokedAnnotation setBrushStyle:](v5, "setBrushStyle:", [v4 decodeIntegerForKey:@"brushStyle"]);
        goto LABEL_11;
      }

      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
      if (v7)
      {
        v8 = [MEMORY[0x277D75348] akColorWithCIColor:v7];
        [(AKStrokedAnnotation *)v5 setStrokeColor:v8];
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

@end