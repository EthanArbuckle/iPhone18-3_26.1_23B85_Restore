@interface CRLBezierPathSource
+ (id)pathSourceWithBezierPath:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transformToNaturalSize;
- (CGSize)naturalSize;
- (CRLBezierPathSource)initWithBezierPath:(id)a3;
- (CRLBezierPathSource)initWithNaturalSize:(CGSize)a3;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)inferredAccessibilityDescriptionNoShapeNames;
- (id)name;
- (unint64_t)hash;
- (void)p_setBezierPath:(id)a3;
- (void)setNaturalSize:(CGSize)a3;
@end

@implementation CRLBezierPathSource

+ (id)pathSourceWithBezierPath:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBezierPath:v3];

  return v4;
}

- (CRLBezierPathSource)initWithBezierPath:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CRLBezierPathSource;
  v5 = [(CRLBezierPathSource *)&v16 init];
  if (v5)
  {
    if ([v4 elementCount] < 1)
    {
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }

    else
    {
      [v4 controlPointBounds];
    }

    v8 = width == CGSizeZero.width && height == CGSizeZero.height;
    if (v8 || sub_100122890())
    {
      v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132D130();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132D158(v4, v9, v10);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132D214();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLBezierPathSource initWithBezierPath:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBezierPathSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:31 isFatal:0 description:"Ignoring invalid bezier path %@", v4];

      v14 = +[CRLBezierPath bezierPathWithDefaultsForErrorCases];

      v4 = v14;
    }

    if (v4)
    {
      [(CRLBezierPathSource *)v5 p_setBezierPath:v4];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (CRLBezierPathSource)initWithNaturalSize:(CGSize)a3
{
  v4 = [CRLBezierPath bezierPathWithRect:0.0, 0.0, a3.width, a3.height];
  v5 = [(CRLBezierPathSource *)self initWithBezierPath:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(CRLBezierPath *)self->mPath copy];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithBezierPath:", v5}];
  [v6 setHasHorizontalFlip:{-[CRLPathSource hasHorizontalFlip](self, "hasHorizontalFlip")}];
  [v6 setHasVerticalFlip:{-[CRLPathSource hasVerticalFlip](self, "hasVerticalFlip")}];
  v7 = [(CRLPathSource *)self localizationKey];
  [v6 setLocalizationKey:v7];

  v8 = [(CRLPathSource *)self userDefinedIdentifier];
  [v6 setUserDefinedIdentifier:v8];

  v9 = [(CRLPathSource *)self userDefinedName];
  [v6 setUserDefinedName:v9];

  [(CRLBezierPathSource *)self naturalSize];
  [v6 setNaturalSize:?];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, v4);
    v8 = v6 && (v10.receiver = self, v10.super_class = CRLBezierPathSource, [(CRLPathSource *)&v10 isEqual:v4]) && ((mPath = self->mPath, mPath == *(v6 + 56)) || [(CRLBezierPath *)mPath isEqual:?]) && self->mIsRectangular == *(v6 + 64) && sub_10011ECC8(self->mNaturalSize.width, self->mNaturalSize.height, *(v6 + 72), *(v6 + 80));
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = CRLBezierPathSource;
  v3 = [(CRLBezierPathSource *)&v10 description];
  v4 = [v3 mutableCopy];

  v5 = [(CRLPathSource *)self localizationKey];
  v6 = [(CRLPathSource *)self userDefinedName];
  v7 = NSStringFromCGSize(self->mNaturalSize);
  v8 = [NSString stringWithFormat:@" localizationKey=%@; userDefinedName=%@; naturalSize=%@; path=%@; isRectangular=%d", v5, v6, v7, self->mPath, self->mIsRectangular];;
  [v4 appendString:v8];

  return v4;
}

- (void)setNaturalSize:(CGSize)a3
{
  self->mNaturalSize = a3;
  mBezierPathWithoutFlips = self->mBezierPathWithoutFlips;
  self->mBezierPathWithoutFlips = 0;
}

- (CGAffineTransform)transformToNaturalSize
{
  [(CRLBezierPath *)self->mPath bounds];
  v6 = v5;
  v8 = v7;
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result = sub_10011ECC8(v5, v7, width, height);
  if (result)
  {
    v12 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v12;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    v13 = 1.0;
    v14 = 1.0;
    if (v6 > 0.01)
    {
      v15 = width / v6;
      v14 = v15;
    }

    if (v8 > 0.01)
    {
      v16 = height / v8;
      v13 = v16;
    }

    if (width == 0.0)
    {
      v14 = 1.0;
    }

    v17 = v14;
    if (height == 0.0)
    {
      v13 = 1.0;
    }

    v18 = v13;
    return CGAffineTransformMakeScale(retstr, v17, v18);
  }

  return result;
}

- (id)bezierPathWithoutFlips
{
  v3 = [(CRLBezierPath *)self->mBezierPathWithoutFlips copy];
  if (!v3)
  {
    v4 = [(CRLBezierPath *)self->mPath copy];
    memset(&v7[1], 0, sizeof(CGAffineTransform));
    [(CRLBezierPathSource *)self transformToNaturalSize];
    v7[0] = v7[1];
    if (!CGAffineTransformIsIdentity(v7))
    {
      v7[0] = v7[1];
      [(CRLBezierPath *)v4 transformUsingAffineTransform:v7];
    }

    v3 = [(CRLBezierPath *)v4 copy];
    mBezierPathWithoutFlips = self->mBezierPathWithoutFlips;
    self->mBezierPathWithoutFlips = v4;
  }

  return v3;
}

- (id)name
{
  v3 = [(CRLPathSource *)self userDefinedName];
  if (!v3)
  {
    v4 = +[CRLShapeLibrary sharedLibrary];
    v5 = [(CRLPathSource *)self localizationKey];
    v6 = [v4 shapeWithLocalizationKey:v5];

    v3 = [v6 name];
  }

  return v3;
}

- (void)p_setBezierPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132D23C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132D250(v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132D30C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLBezierPathSource p_setBezierPath:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBezierPathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:178 isFatal:0 description:"invalid nil value for '%{public}s'", "path"];
  }

  [(CRLBezierPath *)v4 bounds];
  v11 = v10;
  v13 = v12;
  if (!sub_10011ECC8(v10, v12, CGPointZero.x, CGPointZero.y))
  {
    CGAffineTransformMakeTranslation(&v19, -v11, -v13);
    [(CRLBezierPath *)v4 transformUsingAffineTransform:&v19];
  }

  mPath = self->mPath;
  self->mPath = v4;
  v15 = v4;

  [(CRLBezierPath *)self->mPath bounds];
  self->mNaturalSize.width = v16;
  self->mNaturalSize.height = v17;
  self->mIsRectangular = [(CRLBezierPath *)self->mPath isRectangular];
  mBezierPathWithoutFlips = self->mBezierPathWithoutFlips;
  self->mBezierPathWithoutFlips = 0;
}

- (id)inferredAccessibilityDescriptionNoShapeNames
{
  v3 = [(CRLPathSource *)self userDefinedName];
  if (![v3 length])
  {
    v4 = [(CRLBezierPath *)self->mPath inferredAccessibilityDescription];

    v3 = v4;
  }

  return v3;
}

- (id)inferredAccessibilityDescription
{
  v3 = [(CRLPathSource *)self userDefinedName];
  if (![v3 length])
  {
    v4 = +[CRLShapeLibrary sharedLibrary];
    v5 = [(CRLPathSource *)self localizationKey];
    v6 = [v4 shapeWithLocalizationKey:v5];

    v7 = [v6 name];

    v3 = v7;
  }

  if (![v3 length])
  {
    v8 = [(CRLBezierPath *)self->mPath inferredAccessibilityDescription];

    v3 = v8;
  }

  return v3;
}

- (CGSize)naturalSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end