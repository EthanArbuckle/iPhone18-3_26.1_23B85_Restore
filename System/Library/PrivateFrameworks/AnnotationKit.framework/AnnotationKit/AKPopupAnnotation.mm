@interface AKPopupAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKAnnotation)parentAnnotation;
- (AKPopupAnnotation)initWithCoder:(id)a3;
- (CGRect)openRectangle;
- (CGRect)rectangle;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKPopupAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKPopupAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB0D0];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKPopupAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB0E8];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"rectangle"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"openRectangle"))
  {
    v5 = @"Bounds";
    goto LABEL_4;
  }

  if ([v4 isEqualToString:@"contents"])
  {
    v5 = @"Contents";
LABEL_4:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKPopupAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
LABEL_9:

  return v7;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKPopupAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB100];

  return v4;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Popup" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:a3];
  [(AKPopupAnnotation *)self rectangle];
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
  [(AKPopupAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKPopupAnnotation *)self rectangle];
    [(AKPopupAnnotation *)self setRectangle:x + v8, y + v9];
    [(AKPopupAnnotation *)self openRectangle];
    [(AKPopupAnnotation *)self setOpenRectangle:x + v10, y + v11];

    [(AKAnnotation *)self setIsTranslating:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = AKPopupAnnotation;
  v4 = a3;
  [(AKAnnotation *)&v8 encodeWithCoder:v4];
  [v4 encodeInteger:-[AKPopupAnnotation visualStyle](self forKey:{"visualStyle", v8.receiver, v8.super_class), @"visualStyle"}];
  [(AKPopupAnnotation *)self rectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v9);
  [v4 encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  [(AKPopupAnnotation *)self openRectangle];
  v6 = CGRectCreateDictionaryRepresentation(v10);

  [v4 encodeObject:v6 forKey:@"openRectangle"];
  v7 = [(AKPopupAnnotation *)self contents];
  [v4 encodeObject:v7 forKey:@"contents"];
}

- (AKPopupAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AKPopupAnnotation;
  v5 = [(AKAnnotation *)&v19 initWithCoder:v4];
  if (v5)
  {
    v5->_visualStyle = [v4 decodeIntegerForKey:@"visualStyle"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rectangle"];

    if (v10)
    {
      CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    }

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"openRectangle"];

    if (v15)
    {
      CGRectMakeWithDictionaryRepresentation(v15, &v5->_openRectangle);
    }

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contents"];
    contents = v5->_contents;
    v5->_contents = v16;
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

- (CGRect)openRectangle
{
  objc_copyStruct(v6, &self->_openRectangle, 32, 1, 0);
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

- (AKAnnotation)parentAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentAnnotation);

  return WeakRetained;
}

@end