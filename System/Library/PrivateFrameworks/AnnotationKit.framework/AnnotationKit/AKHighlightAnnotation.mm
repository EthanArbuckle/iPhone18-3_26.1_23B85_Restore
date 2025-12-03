@interface AKHighlightAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKHighlightAnnotation)initWithCoder:(id)coder;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)coder;
- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size;
- (void)translateBy:(CGPoint)by;
@end

@implementation AKHighlightAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKHighlightAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA8D8];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKHighlightAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA8F0];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"style"])
  {
    v5 = @"Style";
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"color"])
  {
    v5 = @"Color";
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"quadPoints"])
  {
    v5 = @"Range";
LABEL_7:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKHighlightAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_9:

  return v7;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKHighlightAnnotation;
  keysForValuesToObserveForUndo = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BA908];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKHighlightAnnotation;
  keysForValuesToObserveForRedrawing = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BA920];

  return v4;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Highlight" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x277D85DE8];
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:orientation];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  [AKGeometryHelper affineTransformFlatteningOriginalModelExif:orientation withOriginalModelSize:width, height];
  v8 = MEMORY[0x277CBEB18];
  quadPoints = [(AKHighlightAnnotation *)self quadPoints];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(quadPoints, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  quadPoints2 = [(AKHighlightAnnotation *)self quadPoints];
  v12 = [quadPoints2 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(quadPoints2);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        if (v16)
        {
          [v16 quadrilateralValue];
        }

        v18[0] = v19;
        v18[1] = v20;
        v18[2] = v21;
        v18[3] = v22;
        v17 = [MEMORY[0x277CCAE60] valueWithQuadrilateral:v18];
        [v10 addObject:v17];
      }

      v13 = [quadPoints2 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v13);
  }

  [(AKHighlightAnnotation *)self setQuadPoints:v10];
}

- (void)translateBy:(CGPoint)by
{
  v34 = *MEMORY[0x277D85DE8];
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    y = by.y;
    isTranslating = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    v6 = MEMORY[0x277CBEB18];
    quadPoints = [(AKHighlightAnnotation *)self quadPoints];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(quadPoints, "count")}];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    quadPoints2 = [(AKHighlightAnnotation *)self quadPoints];
    v10 = [quadPoints2 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      v13.f64[0] = x;
      v13.f64[1] = y;
      v23 = v13;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(quadPoints2);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = 0uLL;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          if (v15)
          {
            [v15 quadrilateralValue];
            v16 = v25;
            v17 = v26;
            v19 = v27;
            v18 = v28;
          }

          else
          {
            v17 = 0uLL;
            v19 = 0uLL;
            v18 = 0uLL;
          }

          v25 = vaddq_f64(v23, v16);
          v26 = vaddq_f64(v23, v17);
          v27 = vaddq_f64(v23, v19);
          v28 = vaddq_f64(v23, v18);
          v24[0] = v25;
          v24[1] = v26;
          v24[2] = v27;
          v24[3] = v28;
          v20 = [MEMORY[0x277CCAE60] valueWithQuadrilateral:v24];
          [v8 addObject:v20];
        }

        v11 = [quadPoints2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    [(AKHighlightAnnotation *)self setQuadPoints:v8];
    [(AKAnnotation *)self setIsTranslating:isTranslating];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v29 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = AKHighlightAnnotation;
  [(AKAnnotation *)&v27 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[AKHighlightAnnotation style](self forKey:{"style"), @"style"}];
  color = [(AKHighlightAnnotation *)self color];
  [coderCopy akEncodeColor:color forKey:@"color"];

  quadPoints = [(AKHighlightAnnotation *)self quadPoints];

  if (quadPoints)
  {
    v7 = MEMORY[0x277CBEB18];
    quadPoints2 = [(AKHighlightAnnotation *)self quadPoints];
    v9 = [v7 arrayWithCapacity:{objc_msgSend(quadPoints2, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    quadPoints3 = [(AKHighlightAnnotation *)self quadPoints];
    v11 = [quadPoints3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(quadPoints3);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          if (v15)
          {
            [v15 quadrilateralValue];
          }

          v18[0] = v19;
          v18[1] = v20;
          v18[2] = v21;
          v18[3] = v22;
          v16 = AKQuadrilateralCreateDictionaryRepresentation(v18);
          [v9 addObject:v16];
        }

        v12 = [quadPoints3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }

    v17 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
    [coderCopy encodeObject:v17 forKey:@"quadPoints"];
  }
}

- (AKHighlightAnnotation)initWithCoder:(id)coder
{
  v31[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = AKHighlightAnnotation;
  v5 = [(AKAnnotation *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    -[AKHighlightAnnotation setStyle:](v5, "setStyle:", [coderCopy decodeIntegerForKey:@"style"]);
    v6 = [coderCopy akDecodeColorForKey:@"color"];
    [(AKHighlightAnnotation *)v5 setColor:v6];

    if ([coderCopy containsValueForKey:@"quadPoints"])
    {
      v7 = MEMORY[0x277CBEB98];
      v31[0] = objc_opt_class();
      v31[1] = objc_opt_class();
      v31[2] = objc_opt_class();
      v31[3] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
      v9 = [v7 setWithArray:v8];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"quadPoints"];

      v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          v16 = 0;
          do
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v25 + 1) + 8 * v16);
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            AKQuadrilateralMakeWithDictionaryRepresentation(v17, &v21);
            v20[0] = v21;
            v20[1] = v22;
            v20[2] = v23;
            v20[3] = v24;
            v18 = [MEMORY[0x277CCAE60] valueWithQuadrilateral:v20];
            [v11 addObject:v18];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v14);
      }

      [(AKHighlightAnnotation *)v5 setQuadPoints:v11];
    }
  }

  return v5;
}

@end