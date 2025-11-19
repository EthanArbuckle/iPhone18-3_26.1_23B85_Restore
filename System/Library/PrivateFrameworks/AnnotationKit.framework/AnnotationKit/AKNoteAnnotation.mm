@interface AKNoteAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKAnnotation)childAnnotation;
- (AKNoteAnnotation)initWithCoder:(id)a3;
- (CGRect)rectangle;
- (id)displayName;
- (id)fillColorForOptions:(id)a3;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)setFillColor:(id)a3;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKNoteAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKNoteAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BADD0];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKNoteAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BADE8];

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

  if ([v4 isEqualToString:@"fillColor"])
  {
    v5 = @"Color";
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"contents"])
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

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKNoteAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
LABEL_9:

  return v7;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKNoteAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAE00];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKNoteAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAE18];

  return v4;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Note_Annotation" value:@"Note" table:@"AnnotationStrings"];

  return v3;
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (v5 && [v5 akIsEDR])
  {
    [(AKNoteAnnotation *)self setFillColorHDR:v5];
    v4 = [v5 akToSDR];
    [(AKNoteAnnotation *)self setFillColorSDR:v4];
  }

  else
  {
    [(AKNoteAnnotation *)self setFillColorHDR:0];
    [(AKNoteAnnotation *)self setFillColorSDR:v5];
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
  v7 = [(AKNoteAnnotation *)self fillColorHDR];
  v8 = v7;
  if (v6 == 0.0)
  {
    if (v7 && ([v4 allowHDR] & 1) != 0)
    {
      v13 = [(AKNoteAnnotation *)self fillColorHDR];
    }

    else
    {
      v13 = [(AKNoteAnnotation *)self fillColorSDR];
    }

    v12 = v13;
  }

  else
  {
    if (v7 && [v4 allowHDR])
    {
      v9 = [(AKNoteAnnotation *)self fillColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v9 = [(AKNoteAnnotation *)self fillColorSDR];
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

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:a3];
  [(AKNoteAnnotation *)self rectangle];
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
  [(AKNoteAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKNoteAnnotation *)self rectangle];
    [(AKNoteAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AKNoteAnnotation;
  [(AKAnnotation *)&v10 encodeWithCoder:v4];
  [(AKNoteAnnotation *)self rectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v11);
  [v4 encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  v6 = [(AKNoteAnnotation *)self fillColorSDR];
  [v4 akEncodeColor:v6 forKey:@"fillColor"];

  v7 = [(AKNoteAnnotation *)self fillColorHDR];

  if (v7)
  {
    v8 = [(AKNoteAnnotation *)self fillColorHDR];
    [v4 akEncodeColor:v8 forKey:@"fillColorHDR"];
  }

  v9 = [(AKNoteAnnotation *)self contents];
  [v4 encodeObject:v9 forKey:@"contents"];
}

- (AKNoteAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AKNoteAnnotation;
  v5 = [(AKAnnotation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    v11 = [v4 akDecodeColorForKey:@"fillColor"];
    [(AKNoteAnnotation *)v5 setFillColorSDR:v11];

    v12 = [v4 akDecodeColorForKey:@"fillColorHDR"];
    [(AKNoteAnnotation *)v5 setFillColorHDR:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contents"];
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