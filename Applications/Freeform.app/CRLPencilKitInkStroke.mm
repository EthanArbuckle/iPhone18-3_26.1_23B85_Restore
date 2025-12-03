@interface CRLPencilKitInkStroke
+ (CGRect)boundsOfStrokes:(id)strokes;
+ (double)adjustedStrokeWidthFromWidth:(double)width forInkType:(id)type;
+ (double)unadjustedStrokeWidthFromAdjustedWidth:(double)width forInkType:(id)type;
- (BOOL)canDrawWithOtherStroke:(id)stroke;
- (BOOL)isEqual:(id)equal;
- (CRLPencilKitInkStroke)initWithInk:(id)ink adjustedWidth:(double)width;
- (CRLPencilKitInkStroke)initWithInk:(id)ink unadjustedPencilKitWidth:(double)width;
- (CRLPencilKitInkStroke)initWithInkType:(id)type color:(id)color adjustedWidth:(double)width;
- (CRLPencilKitInkStroke)initWithInkType:(id)type color:(id)color adjustedWidth:(double)width isFountainPenInkV2:(BOOL)v2;
- (CRLPencilKitInkStroke)initWithInkType:(id)type color:(id)color unadjustedPencilKitWidth:(double)width;
- (CRLSmartStroke)fallbackSmartStrokeForPersistence;
- (double)widthForDefaultAndDowngradePersistence;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
@end

@implementation CRLPencilKitInkStroke

- (CRLPencilKitInkStroke)initWithInkType:(id)type color:(id)color adjustedWidth:(double)width isFountainPenInkV2:(BOOL)v2
{
  typeCopy = type;
  colorCopy = color;
  v13 = +[CRLStrokePattern solidPattern];
  if (([typeCopy isEqualToString:PKInkTypePencil] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", PKInkTypeCrayon))
  {
    v14 = 0;
    v15 = 1.0;
  }

  else
  {
    v15 = 4.0;
    v14 = 1;
  }

  v19.receiver = self;
  v19.super_class = CRLPencilKitInkStroke;
  v16 = [(CRLStroke *)&v19 initWithColor:colorCopy width:1 cap:v14 join:v13 pattern:width miterLimit:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_inkType, type);
    v17->_isFountainPenInkV2 = v2;
  }

  return v17;
}

- (CRLPencilKitInkStroke)initWithInkType:(id)type color:(id)color adjustedWidth:(double)width
{
  colorCopy = color;
  typeCopy = type;
  v10 = -[CRLPencilKitInkStroke initWithInkType:color:adjustedWidth:isFountainPenInkV2:](self, "initWithInkType:color:adjustedWidth:isFountainPenInkV2:", typeCopy, colorCopy, [typeCopy isEqualToString:PKInkTypeFountainPen], width);

  return v10;
}

- (CRLPencilKitInkStroke)initWithInkType:(id)type color:(id)color unadjustedPencilKitWidth:(double)width
{
  colorCopy = color;
  typeCopy = type;
  [CRLPencilKitInkStroke adjustedStrokeWidthFromWidth:typeCopy forInkType:width];
  v11 = -[CRLPencilKitInkStroke initWithInkType:color:adjustedWidth:isFountainPenInkV2:](self, "initWithInkType:color:adjustedWidth:isFountainPenInkV2:", typeCopy, colorCopy, [typeCopy isEqualToString:PKInkTypeFountainPen], v10);

  return v11;
}

- (CRLPencilKitInkStroke)initWithInk:(id)ink adjustedWidth:(double)width
{
  inkCopy = ink;
  color = [inkCopy color];
  v8 = [CRLColor colorWithUIColor:color];

  _isFountainPenInkV2 = [inkCopy _isFountainPenInkV2];
  inkType = [inkCopy inkType];

  v11 = [(CRLPencilKitInkStroke *)self initWithInkType:inkType color:v8 adjustedWidth:_isFountainPenInkV2 isFountainPenInkV2:width];
  return v11;
}

- (CRLPencilKitInkStroke)initWithInk:(id)ink unadjustedPencilKitWidth:(double)width
{
  inkCopy = ink;
  inkType = [inkCopy inkType];
  [CRLPencilKitInkStroke adjustedStrokeWidthFromWidth:inkType forInkType:width];
  v9 = v8;

  v10 = [(CRLPencilKitInkStroke *)self initWithInk:inkCopy adjustedWidth:v9];
  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutablePencilKitInkStroke alloc];
  inkType = [(CRLPencilKitInkStroke *)self inkType];
  color = [(CRLStroke *)self color];
  [(CRLStroke *)self width];
  v7 = [(CRLPencilKitInkStroke *)v4 initWithInkType:inkType color:color adjustedWidth:?];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  inkType = [(CRLPencilKitInkStroke *)self inkType];
  [(CRLStroke *)self width];
  v7 = [NSString stringWithFormat:@"<%@ %p inkType='%@' width=%f>", v4, self, inkType, v6];

  return v7;
}

- (BOOL)canDrawWithOtherStroke:(id)stroke
{
  strokeCopy = stroke;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CRLSmartStroke)fallbackSmartStrokeForPersistence
{
  inkType = [(CRLPencilKitInkStroke *)self inkType];
  v4 = [inkType isEqualToString:PKInkTypePencil];

  if (v4)
  {
    v5 = &off_101852268;
LABEL_5:
    v8 = *v5;
    color = [(CRLStroke *)self color];
    [(CRLStroke *)self i_width];
    v10 = [(CRLSmartStroke *)CRLBrushStroke strokeWithName:v8 color:color width:?];

    goto LABEL_7;
  }

  inkType2 = [(CRLPencilKitInkStroke *)self inkType];
  v7 = [inkType2 isEqualToString:PKInkTypeCrayon];

  if (v7)
  {
    v5 = &off_101852270;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (double)widthForDefaultAndDowngradePersistence
{
  v8.receiver = self;
  v8.super_class = CRLPencilKitInkStroke;
  [(CRLStroke *)&v8 widthForDefaultAndDowngradePersistence];
  v4 = v3;
  inkType = [(CRLPencilKitInkStroke *)self inkType];
  v6 = [inkType isEqualToString:PKInkTypeWatercolor];

  result = v4 * 0.25;
  if (!v6)
  {
    return v4;
  }

  return result;
}

+ (double)adjustedStrokeWidthFromWidth:(double)width forInkType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:PKInkTypeMonoline])
  {
    width = width + width;
  }

  else if (([typeCopy isEqualToString:PKInkTypePen] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", PKInkTypeCrayon) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", PKInkTypeMarker))
  {
    v6 = sub_1004C3240((width + -5.0) / 21.0, 0.0, 1.0);
    width = sub_1004C3260(1.0, 0.5, v6) * width;
  }

  return width;
}

+ (double)unadjustedStrokeWidthFromAdjustedWidth:(double)width forInkType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:PKInkTypeMonoline])
  {
    widthCopy = width * 0.5;
  }

  else
  {
    if (([typeCopy isEqualToString:PKInkTypePen] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", PKInkTypeCrayon) & 1) == 0 && !objc_msgSend(typeCopy, "isEqualToString:", PKInkTypeMarker))
    {
      goto LABEL_11;
    }

    widthCopy = 0.0;
    if (width < 0.0)
    {
      goto LABEL_14;
    }

    if (width <= 5.0)
    {
LABEL_11:
      widthCopy = width;
      goto LABEL_14;
    }

    if (width <= 13.0)
    {
      widthCopy = (47.0 - sqrt(width * -168.0 + 2209.0)) * 0.5;
    }

    else if (width <= 13.1488095)
    {
      widthCopy = 23.5;
    }

    else
    {
      widthCopy = width + width;
    }
  }

LABEL_14:

  return widthCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6 && ([v6 inkType], v7 = objc_claimAutoreleasedReturnValue(), -[CRLPencilKitInkStroke inkType](self, "inkType"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    v12.receiver = self;
    v12.super_class = CRLPencilKitInkStroke;
    v10 = [(CRLStroke *)&v12 isEqual:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CRLPencilKitInkStroke;
  v3 = [(CRLStroke *)&v7 hash];
  inkType = [(CRLPencilKitInkStroke *)self inkType];
  v5 = [inkType hash];

  return v5 ^ v3;
}

+ (CGRect)boundsOfStrokes:(id)strokes
{
  strokesCopy = strokes;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [strokesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(strokesCopy);
        }

        [*(*(&v20 + 1) + 8 * v11) renderBounds];
        v29.origin.x = v12;
        v29.origin.y = v13;
        v29.size.width = v14;
        v29.size.height = v15;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v29);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [strokesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (CGRectIsNull(v27))
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CEE4C;
  block[3] = &unk_10183B230;
  v9 = &stru_1018463D0;
  if (qword_101A347F8 != -1)
  {
    dispatch_once(&qword_101A347F8, block);
  }
}

@end