@interface AKNoteAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKAnnotation)childAnnotation;
- (AKNoteAnnotation)initWithCoder:(id)coder;
- (CGRect)rectangle;
- (id)displayName;
- (id)fillColorForOptions:(id)options;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)coder;
- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size;
- (void)setFillColor:(id)color;
- (void)translateBy:(CGPoint)by;
@end

@implementation AKNoteAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKNoteAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BADD0];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKNoteAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BADE8];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"rectangle"])
  {
    v5 = @"Bounds";
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"fillColor"])
  {
    v5 = @"Color";
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = @"Contents";
LABEL_7:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKNoteAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_9:

  return v7;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKNoteAnnotation;
  keysForValuesToObserveForUndo = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BAE00];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKNoteAnnotation;
  keysForValuesToObserveForRedrawing = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BAE18];

  return v4;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Note_Annotation" value:@"Note" table:@"AnnotationStrings"];

  return v3;
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (colorCopy && [colorCopy akIsEDR])
  {
    [(AKNoteAnnotation *)self setFillColorHDR:colorCopy];
    akToSDR = [colorCopy akToSDR];
    [(AKNoteAnnotation *)self setFillColorSDR:akToSDR];
  }

  else
  {
    [(AKNoteAnnotation *)self setFillColorHDR:0];
    [(AKNoteAnnotation *)self setFillColorSDR:colorCopy];
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
  fillColorHDR = [(AKNoteAnnotation *)self fillColorHDR];
  v8 = fillColorHDR;
  if (v6 == 0.0)
  {
    if (fillColorHDR && ([optionsCopy allowHDR] & 1) != 0)
    {
      fillColorHDR2 = [(AKNoteAnnotation *)self fillColorHDR];
    }

    else
    {
      fillColorHDR2 = [(AKNoteAnnotation *)self fillColorSDR];
    }

    v12 = fillColorHDR2;
  }

  else
  {
    if (fillColorHDR && [optionsCopy allowHDR])
    {
      fillColorHDR3 = [(AKNoteAnnotation *)self fillColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      fillColorHDR3 = [(AKNoteAnnotation *)self fillColorSDR];
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

- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:orientation];
  [(AKNoteAnnotation *)self rectangle];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memset(&v16[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper affineTransformFlatteningOriginalModelExif:orientation withOriginalModelSize:width, height];
  v16[0] = v16[1];
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  v18 = CGRectApplyAffineTransform(v17, v16);
  [(AKNoteAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    isTranslating = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKNoteAnnotation *)self rectangle];
    [(AKNoteAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:isTranslating];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AKNoteAnnotation;
  [(AKAnnotation *)&v10 encodeWithCoder:coderCopy];
  [(AKNoteAnnotation *)self rectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v11);
  [coderCopy encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  fillColorSDR = [(AKNoteAnnotation *)self fillColorSDR];
  [coderCopy akEncodeColor:fillColorSDR forKey:@"fillColor"];

  fillColorHDR = [(AKNoteAnnotation *)self fillColorHDR];

  if (fillColorHDR)
  {
    fillColorHDR2 = [(AKNoteAnnotation *)self fillColorHDR];
    [coderCopy akEncodeColor:fillColorHDR2 forKey:@"fillColorHDR"];
  }

  contents = [(AKNoteAnnotation *)self contents];
  [coderCopy encodeObject:contents forKey:@"contents"];
}

- (AKNoteAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AKNoteAnnotation;
  v5 = [(AKAnnotation *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    v11 = [coderCopy akDecodeColorForKey:@"fillColor"];
    [(AKNoteAnnotation *)v5 setFillColorSDR:v11];

    v12 = [coderCopy akDecodeColorForKey:@"fillColorHDR"];
    [(AKNoteAnnotation *)v5 setFillColorHDR:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contents"];
    [(AKNoteAnnotation *)v5 setContents:v13];
  }

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

- (AKAnnotation)childAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_childAnnotation);

  return WeakRetained;
}

@end