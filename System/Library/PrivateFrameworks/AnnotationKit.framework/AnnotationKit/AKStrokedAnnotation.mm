@interface AKStrokedAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKStrokedAnnotation)initWithCoder:(id)coder;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (id)strokeColorForOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)setStrokeColor:(id)color;
@end

@implementation AKStrokedAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKStrokedAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BABA8];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKStrokedAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BABC0];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"strokeWidth"])
  {
    v5 = @"Border Line Width";
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"strokeColor"])
  {
    v5 = @"Border Color";
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"dashed"])
  {
    v5 = @"Border Dashed";
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"hasShadow"])
  {
    v5 = @"Shadow";
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"brushStyle"])
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

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKStrokedAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_13:

  return v7;
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (colorCopy && [colorCopy akIsEDR])
  {
    [(AKStrokedAnnotation *)self setStrokeColorHDR:colorCopy];
    akToSDR = [colorCopy akToSDR];
    [(AKStrokedAnnotation *)self setStrokeColorSDR:akToSDR];
  }

  else
  {
    [(AKStrokedAnnotation *)self setStrokeColorHDR:0];
    [(AKStrokedAnnotation *)self setStrokeColorSDR:colorCopy];
  }
}

- (id)strokeColorForOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = +[AKAnnotationRendererOptions defaultOptions];
  }

  [optionsCopy scaleFactor];
  v6 = v5;
  strokeColorHDR = [(AKStrokedAnnotation *)self strokeColorHDR];
  v8 = strokeColorHDR;
  if (v6 == 0.0)
  {
    if (strokeColorHDR && ([optionsCopy allowHDR] & 1) != 0)
    {
      strokeColorHDR2 = [(AKStrokedAnnotation *)self strokeColorHDR];
    }

    else
    {
      strokeColorHDR2 = [(AKStrokedAnnotation *)self strokeColorSDR];
    }

    v12 = strokeColorHDR2;
  }

  else
  {
    if (strokeColorHDR && [optionsCopy allowHDR])
    {
      strokeColorHDR3 = [(AKStrokedAnnotation *)self strokeColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      strokeColorHDR3 = [(AKStrokedAnnotation *)self strokeColorSDR];
      v11 = 0;
      v10 = 1;
    }

    [optionsCopy scaleFactor];
    v12 = [strokeColorHDR3 akScale:?];
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
  displayName = [(AKAnnotation *)&v4 displayName];

  return displayName;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStrokedAnnotation;
  keysForValuesToObserveForUndo = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BABD8];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStrokedAnnotation;
  keysForValuesToObserveForRedrawing = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BABF0];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AKStrokedAnnotation;
  [(AKAnnotation *)&v8 encodeWithCoder:coderCopy];
  strokeColorSDR = [(AKStrokedAnnotation *)self strokeColorSDR];
  [coderCopy akEncodeColor:strokeColorSDR forKey:@"strokeColorString"];

  strokeColorHDR = [(AKStrokedAnnotation *)self strokeColorHDR];

  if (strokeColorHDR)
  {
    strokeColorHDR2 = [(AKStrokedAnnotation *)self strokeColorHDR];
    [coderCopy akEncodeColor:strokeColorHDR2 forKey:@"strokeColorHDRString"];
  }

  [(AKStrokedAnnotation *)self strokeWidth];
  [coderCopy encodeDouble:@"strokeWidth" forKey:?];
  [coderCopy encodeBool:-[AKStrokedAnnotation isDashed](self forKey:{"isDashed"), @"dashed"}];
  [coderCopy encodeBool:-[AKStrokedAnnotation hasShadow](self forKey:{"hasShadow"), @"hasShadow"}];
  [coderCopy encodeInteger:-[AKStrokedAnnotation brushStyle](self forKey:{"brushStyle"), @"brushStyle"}];
}

- (AKStrokedAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AKStrokedAnnotation;
  v5 = [(AKAnnotation *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"strokeColorHDRString"])
    {
      v6 = [coderCopy akDecodeColorForKey:@"strokeColorHDRString"];
      [(AKStrokedAnnotation *)v5 setStrokeColorHDR:v6];
    }

    if ([coderCopy containsValueForKey:@"strokeColorString"])
    {
      v7 = [coderCopy akDecodeColorForKey:@"strokeColorString"];
      [(AKStrokedAnnotation *)v5 setStrokeColorSDR:v7];
    }

    else
    {
      if (![coderCopy containsValueForKey:@"strokeColor"])
      {
LABEL_10:
        [coderCopy decodeDoubleForKey:@"strokeWidth"];
        [(AKStrokedAnnotation *)v5 setStrokeWidth:?];
        -[AKStrokedAnnotation setDashed:](v5, "setDashed:", [coderCopy decodeBoolForKey:@"dashed"]);
        -[AKStrokedAnnotation setHasShadow:](v5, "setHasShadow:", [coderCopy decodeBoolForKey:@"hasShadow"]);
        -[AKStrokedAnnotation setBrushStyle:](v5, "setBrushStyle:", [coderCopy decodeIntegerForKey:@"brushStyle"]);
        goto LABEL_11;
      }

      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
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