@interface AKTextBoxAnnotation
+ (id)defaultPlaceholderText;
- (AKTextBoxAnnotation)init;
- (CGRect)hitTestBounds;
- (id)displayName;
- (id)highlightColor;
- (id)keysForValuesToObserveForRedrawing;
@end

@implementation AKTextBoxAnnotation

- (AKTextBoxAnnotation)init
{
  v7.receiver = self;
  v7.super_class = AKTextBoxAnnotation;
  v2 = [(AKRectangularShapeAnnotation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(AKAnnotation *)v2 setIsDetectedSignature:0];
    [(AKAnnotation *)v3 setTextIsFixedWidth:0];
    [(AKAnnotation *)v3 setTextIsFixedHeight:0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v5 = [systemBlueColor colorWithAlphaComponent:0.12];
    [(AKTextBoxAnnotation *)v3 setHighlightColor:v5];
  }

  return v3;
}

- (id)highlightColor
{
  if ([(AKAnnotation *)self isFormField]&& [(AKRectangularShapeAnnotation *)self isHighlighted]&& ![(AKAnnotation *)self isEditingText])
  {
    highlightColor = self->_highlightColor;
  }

  else
  {
    highlightColor = 0;
  }

  return highlightColor;
}

+ (id)defaultPlaceholderText
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"DEFAULT_TEXT_CONTENTS" value:@"Text" table:@"AnnotationStrings"];

  return v3;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Text Box" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKTextBoxAnnotation;
  keysForValuesToObserveForRedrawing = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BB0B8];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKRectangularShapeAnnotation *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:self];
  v12 = v11;
  v14 = v13;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v32 = CGRectInset(v31, v12, v14);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  [(AKStrokedAnnotation *)self strokeWidth];
  v20 = v19 * -0.5;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v34 = CGRectInset(v33, v20, 0.0);
  v21 = v34.origin.x;
  v22 = v34.origin.y;
  v23 = v34.size.width;
  v24 = v34.size.height;
  [(AKRectangularShapeAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:v21 angle:v22, v23, v24, v25];
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

@end