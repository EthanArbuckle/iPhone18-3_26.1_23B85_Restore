@interface AKImageAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKImageAnnotation)initWithCoder:(id)coder;
- (CGRect)hitTestBounds;
- (CGRect)rectangle;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)coder;
- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size;
- (void)translateBy:(CGPoint)by;
@end

@implementation AKImageAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKImageAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAD70];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKImageAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAD88];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"rectangle"])
  {
    goto LABEL_2;
  }

  if ([keyCopy isEqualToString:@"hasShadow"])
  {
    v5 = @"Shadow";
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:@"horizontallyFlipped"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"verticallyFlipped"))
  {
LABEL_2:
    v5 = @"Bounds";
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:@"image"])
  {
    v5 = @"Image";
LABEL_5:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKImageAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_7:

  return v7;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"IMAGE_ANNOTATION_NAME" value:@"Image" table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKImageAnnotation;
  keysForValuesToObserveForUndo = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BADA0];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKImageAnnotation;
  keysForValuesToObserveForRedrawing = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BADB8];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKImageAnnotation *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AKImageAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:v4 angle:v6, v8, v10, v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKImageAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKImageAnnotation *)self rectangle];
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
  [(AKImageAnnotation *)self setRectangle:?];
}

- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:orientation];
  [(AKImageAnnotation *)self rectangle];
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
  [(AKImageAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    isTranslating = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKImageAnnotation *)self rectangle];
    [(AKImageAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:isTranslating];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AKImageAnnotation;
  coderCopy = coder;
  [(AKAnnotation *)&v7 encodeWithCoder:coderCopy];
  [(AKImageAnnotation *)self rectangle:v7.receiver];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v8);
  [coderCopy encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  [coderCopy encodeBool:-[AKImageAnnotation hasShadow](self forKey:{"hasShadow"), @"hasShadow"}];
  [coderCopy encodeBool:-[AKImageAnnotation verticallyFlipped](self forKey:{"verticallyFlipped"), @"verticallyFlipped"}];
  [coderCopy encodeBool:-[AKImageAnnotation horizontallyFlipped](self forKey:{"horizontallyFlipped"), @"horizontallyFlipped"}];
  image = [(AKImageAnnotation *)self image];
  [coderCopy akEncodeImage:image forKey:@"imageAsData"];
}

- (AKImageAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AKImageAnnotation;
  v5 = [(AKAnnotation *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    -[AKImageAnnotation setHasShadow:](v5, "setHasShadow:", [coderCopy decodeBoolForKey:@"hasShadow"]);
    -[AKImageAnnotation setVerticallyFlipped:](v5, "setVerticallyFlipped:", [coderCopy decodeBoolForKey:@"verticallyFlipped"]);
    -[AKImageAnnotation setHorizontallyFlipped:](v5, "setHorizontallyFlipped:", [coderCopy decodeBoolForKey:@"horizontallyFlipped"]);
    if ([coderCopy containsValueForKey:@"imageAsData"])
    {
      v11 = [coderCopy akDecodeImageForKey:@"imageAsData"];
      [(AKImageAnnotation *)v5 setImage:v11];
    }

    else
    {
      if (![coderCopy containsValueForKey:@"image"])
      {
LABEL_8:

        goto LABEL_9;
      }

      v11 = os_log_create("com.apple.annotationkit", "Serialization");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_23F4BD088(v11);
      }
    }

    goto LABEL_8;
  }

LABEL_9:

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