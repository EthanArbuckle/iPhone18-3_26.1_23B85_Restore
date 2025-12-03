@interface CNBoundsPrediction
+ (id)_predictionFromInternal:(id)internal;
- (BOOL)isEqual:(id)equal;
- (CGRect)normalizedBounds;
- (id)_initWithNormalizedBounds:(CGRect)bounds confidence:(float)confidence;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CNBoundsPrediction

- (id)_initWithNormalizedBounds:(CGRect)bounds confidence:(float)confidence
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13.receiver = self;
  v13.super_class = CNBoundsPrediction;
  v9 = [(CNBoundsPrediction *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(CNBoundsPrediction *)v9 setNormalizedBounds:x, y, width, height];
    *&v11 = confidence;
    [(CNBoundsPrediction *)v10 setConfidence:v11];
  }

  return v10;
}

+ (id)_predictionFromInternal:(id)internal
{
  if (internal)
  {
    internalCopy = internal;
    v5 = objc_alloc_init(self);
    [internalCopy rect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [internalCopy confidence];
    v15 = v14;

    LODWORD(v16) = v15;
    v17 = [v5 _initWithNormalizedBounds:v7 confidence:{v9, v11, v13, v16}];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(CNBoundsPrediction *)self normalizedBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CNBoundsPrediction *)self confidence];
  LODWORD(v14) = v13;
  v15 = [v4 _initWithNormalizedBounds:v6 confidence:{v8, v10, v12, v14}];

  return v15;
}

- (unint64_t)hash
{
  [(CNBoundsPrediction *)self normalizedBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CNBoundsPrediction *)self confidence];
  v12 = v11;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v13 = CGRectGetMinX(v18) + v12;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v14 = v13 + CGRectGetMinY(v19);
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v15 = v14 + CGRectGetWidth(v20);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v16 = v15 + CGRectGetHeight(v21);
  return (v16 * 32767.0);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(CNBoundsPrediction *)self normalizedBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 normalizedBounds];
    v24.origin.x = v14;
    v24.origin.y = v15;
    v24.size.width = v16;
    v24.size.height = v17;
    v23.origin.x = v7;
    v23.origin.y = v9;
    v23.size.width = v11;
    v23.size.height = v13;
    if (CGRectEqualToRect(v23, v24))
    {
      [(CNBoundsPrediction *)self confidence];
      v19 = v18;
      [v5 confidence];
      v21 = v19 == v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (CGRect)normalizedBounds
{
  objc_copyStruct(v6, &self->_normalizedBounds, 32, 1, 0);
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