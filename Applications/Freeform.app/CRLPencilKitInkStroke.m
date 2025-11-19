@interface CRLPencilKitInkStroke
+ (CGRect)boundsOfStrokes:(id)a3;
+ (double)adjustedStrokeWidthFromWidth:(double)a3 forInkType:(id)a4;
+ (double)unadjustedStrokeWidthFromAdjustedWidth:(double)a3 forInkType:(id)a4;
- (BOOL)canDrawWithOtherStroke:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CRLPencilKitInkStroke)initWithInk:(id)a3 adjustedWidth:(double)a4;
- (CRLPencilKitInkStroke)initWithInk:(id)a3 unadjustedPencilKitWidth:(double)a4;
- (CRLPencilKitInkStroke)initWithInkType:(id)a3 color:(id)a4 adjustedWidth:(double)a5;
- (CRLPencilKitInkStroke)initWithInkType:(id)a3 color:(id)a4 adjustedWidth:(double)a5 isFountainPenInkV2:(BOOL)a6;
- (CRLPencilKitInkStroke)initWithInkType:(id)a3 color:(id)a4 unadjustedPencilKitWidth:(double)a5;
- (CRLSmartStroke)fallbackSmartStrokeForPersistence;
- (double)widthForDefaultAndDowngradePersistence;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
@end

@implementation CRLPencilKitInkStroke

- (CRLPencilKitInkStroke)initWithInkType:(id)a3 color:(id)a4 adjustedWidth:(double)a5 isFountainPenInkV2:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = +[CRLStrokePattern solidPattern];
  if (([v11 isEqualToString:PKInkTypePencil] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", PKInkTypeCrayon))
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
  v16 = [(CRLStroke *)&v19 initWithColor:v12 width:1 cap:v14 join:v13 pattern:a5 miterLimit:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_inkType, a3);
    v17->_isFountainPenInkV2 = a6;
  }

  return v17;
}

- (CRLPencilKitInkStroke)initWithInkType:(id)a3 color:(id)a4 adjustedWidth:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = -[CRLPencilKitInkStroke initWithInkType:color:adjustedWidth:isFountainPenInkV2:](self, "initWithInkType:color:adjustedWidth:isFountainPenInkV2:", v9, v8, [v9 isEqualToString:PKInkTypeFountainPen], a5);

  return v10;
}

- (CRLPencilKitInkStroke)initWithInkType:(id)a3 color:(id)a4 unadjustedPencilKitWidth:(double)a5
{
  v8 = a4;
  v9 = a3;
  [CRLPencilKitInkStroke adjustedStrokeWidthFromWidth:v9 forInkType:a5];
  v11 = -[CRLPencilKitInkStroke initWithInkType:color:adjustedWidth:isFountainPenInkV2:](self, "initWithInkType:color:adjustedWidth:isFountainPenInkV2:", v9, v8, [v9 isEqualToString:PKInkTypeFountainPen], v10);

  return v11;
}

- (CRLPencilKitInkStroke)initWithInk:(id)a3 adjustedWidth:(double)a4
{
  v6 = a3;
  v7 = [v6 color];
  v8 = [CRLColor colorWithUIColor:v7];

  v9 = [v6 _isFountainPenInkV2];
  v10 = [v6 inkType];

  v11 = [(CRLPencilKitInkStroke *)self initWithInkType:v10 color:v8 adjustedWidth:v9 isFountainPenInkV2:a4];
  return v11;
}

- (CRLPencilKitInkStroke)initWithInk:(id)a3 unadjustedPencilKitWidth:(double)a4
{
  v6 = a3;
  v7 = [v6 inkType];
  [CRLPencilKitInkStroke adjustedStrokeWidthFromWidth:v7 forInkType:a4];
  v9 = v8;

  v10 = [(CRLPencilKitInkStroke *)self initWithInk:v6 adjustedWidth:v9];
  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutablePencilKitInkStroke alloc];
  v5 = [(CRLPencilKitInkStroke *)self inkType];
  v6 = [(CRLStroke *)self color];
  [(CRLStroke *)self width];
  v7 = [(CRLPencilKitInkStroke *)v4 initWithInkType:v5 color:v6 adjustedWidth:?];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLPencilKitInkStroke *)self inkType];
  [(CRLStroke *)self width];
  v7 = [NSString stringWithFormat:@"<%@ %p inkType='%@' width=%f>", v4, self, v5, v6];

  return v7;
}

- (BOOL)canDrawWithOtherStroke:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CRLSmartStroke)fallbackSmartStrokeForPersistence
{
  v3 = [(CRLPencilKitInkStroke *)self inkType];
  v4 = [v3 isEqualToString:PKInkTypePencil];

  if (v4)
  {
    v5 = &off_101852268;
LABEL_5:
    v8 = *v5;
    v9 = [(CRLStroke *)self color];
    [(CRLStroke *)self i_width];
    v10 = [(CRLSmartStroke *)CRLBrushStroke strokeWithName:v8 color:v9 width:?];

    goto LABEL_7;
  }

  v6 = [(CRLPencilKitInkStroke *)self inkType];
  v7 = [v6 isEqualToString:PKInkTypeCrayon];

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
  v5 = [(CRLPencilKitInkStroke *)self inkType];
  v6 = [v5 isEqualToString:PKInkTypeWatercolor];

  result = v4 * 0.25;
  if (!v6)
  {
    return v4;
  }

  return result;
}

+ (double)adjustedStrokeWidthFromWidth:(double)a3 forInkType:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:PKInkTypeMonoline])
  {
    a3 = a3 + a3;
  }

  else if (([v5 isEqualToString:PKInkTypePen] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", PKInkTypeCrayon) & 1) != 0 || objc_msgSend(v5, "isEqualToString:", PKInkTypeMarker))
  {
    v6 = sub_1004C3240((a3 + -5.0) / 21.0, 0.0, 1.0);
    a3 = sub_1004C3260(1.0, 0.5, v6) * a3;
  }

  return a3;
}

+ (double)unadjustedStrokeWidthFromAdjustedWidth:(double)a3 forInkType:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:PKInkTypeMonoline])
  {
    v6 = a3 * 0.5;
  }

  else
  {
    if (([v5 isEqualToString:PKInkTypePen] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", PKInkTypeCrayon) & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", PKInkTypeMarker))
    {
      goto LABEL_11;
    }

    v6 = 0.0;
    if (a3 < 0.0)
    {
      goto LABEL_14;
    }

    if (a3 <= 5.0)
    {
LABEL_11:
      v6 = a3;
      goto LABEL_14;
    }

    if (a3 <= 13.0)
    {
      v6 = (47.0 - sqrt(a3 * -168.0 + 2209.0)) * 0.5;
    }

    else if (a3 <= 13.1488095)
    {
      v6 = 23.5;
    }

    else
    {
      v6 = a3 + a3;
    }
  }

LABEL_14:

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

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
  v4 = [(CRLPencilKitInkStroke *)self inkType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

+ (CGRect)boundsOfStrokes:(id)a3
{
  v3 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v3);
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
      v9 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
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