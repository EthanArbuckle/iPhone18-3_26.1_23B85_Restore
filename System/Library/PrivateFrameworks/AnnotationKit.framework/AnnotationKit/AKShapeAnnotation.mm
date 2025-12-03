@interface AKShapeAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKShapeAnnotation)initWithCoder:(id)coder;
- (id)displayName;
- (id)fillColorForOptions:(id)options;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)coder;
- (void)setFillColor:(id)color;
@end

@implementation AKShapeAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if (![keyCopy containsString:@"fillColor"] || (+[AKController akBundle](AKController, "akBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Fill Color", &stru_28519E870, @"AnnotationStrings"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___AKShapeAnnotation;
    v6 = objc_msgSendSuper2(&v8, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
  }

  return v6;
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (colorCopy && [colorCopy akIsEDR])
  {
    [(AKShapeAnnotation *)self setFillColorHDR:colorCopy];
    akToSDR = [colorCopy akToSDR];
    [(AKShapeAnnotation *)self setFillColorSDR:akToSDR];
  }

  else
  {
    [(AKShapeAnnotation *)self setFillColorHDR:0];
    [(AKShapeAnnotation *)self setFillColorSDR:colorCopy];
  }
}

- (id)fillColorForOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = +[AKAnnotationRendererOptions defaultOptions];
  }

  [optionsCopy scaleFactor];
  v6 = v5;
  fillColorHDR = [(AKShapeAnnotation *)self fillColorHDR];
  v8 = fillColorHDR;
  if (v6 == 0.0)
  {
    if (fillColorHDR && ([optionsCopy allowHDR] & 1) != 0)
    {
      fillColorHDR2 = [(AKShapeAnnotation *)self fillColorHDR];
    }

    else
    {
      fillColorHDR2 = [(AKShapeAnnotation *)self fillColorSDR];
    }

    v12 = fillColorHDR2;
  }

  else
  {
    if (fillColorHDR && [optionsCopy allowHDR])
    {
      fillColorHDR3 = [(AKShapeAnnotation *)self fillColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      fillColorHDR3 = [(AKShapeAnnotation *)self fillColorSDR];
      v11 = 0;
      v10 = 1;
    }

    [optionsCopy scaleFactor];
    v12 = [fillColorHDR3 akScale:?];
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
  displayName = [(AKStrokedAnnotation *)&v4 displayName];

  return displayName;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKShapeAnnotation;
  keysForValuesToObserveForUndo = [(AKStrokedAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BB028];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKShapeAnnotation;
  keysForValuesToObserveForRedrawing = [(AKStrokedAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BB040];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AKShapeAnnotation;
  [(AKStrokedAnnotation *)&v8 encodeWithCoder:coderCopy];
  fillColorSDR = [(AKShapeAnnotation *)self fillColorSDR];
  [coderCopy akEncodeColor:fillColorSDR forKey:@"fillColorString"];

  fillColorHDR = [(AKShapeAnnotation *)self fillColorHDR];

  if (fillColorHDR)
  {
    fillColorHDR2 = [(AKShapeAnnotation *)self fillColorHDR];
    [coderCopy akEncodeColor:fillColorHDR2 forKey:@"fillColorHDRString"];
  }
}

- (AKShapeAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AKShapeAnnotation;
  v5 = [(AKStrokedAnnotation *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"fillColorHDRString"])
    {
      v6 = [coderCopy akDecodeColorForKey:@"fillColorHDRString"];
      [(AKShapeAnnotation *)v5 setFillColorHDR:v6];
    }

    if ([coderCopy containsValueForKey:@"fillColorString"])
    {
      v7 = [coderCopy akDecodeColorForKey:@"fillColorString"];
      [(AKShapeAnnotation *)v5 setFillColorSDR:v7];
LABEL_9:

      goto LABEL_10;
    }

    if ([coderCopy containsValueForKey:@"fillColor"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fillColor"];
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