@interface CRLBezierPathSource
+ (id)pathSourceWithBezierPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transformToNaturalSize;
- (CGSize)naturalSize;
- (CRLBezierPathSource)initWithBezierPath:(id)path;
- (CRLBezierPathSource)initWithNaturalSize:(CGSize)size;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)inferredAccessibilityDescriptionNoShapeNames;
- (id)name;
- (unint64_t)hash;
- (void)p_setBezierPath:(id)path;
- (void)setNaturalSize:(CGSize)size;
@end

@implementation CRLBezierPathSource

+ (id)pathSourceWithBezierPath:(id)path
{
  pathCopy = path;
  v4 = [objc_alloc(objc_opt_class()) initWithBezierPath:pathCopy];

  return v4;
}

- (CRLBezierPathSource)initWithBezierPath:(id)path
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = CRLBezierPathSource;
  v5 = [(CRLBezierPathSource *)&v16 init];
  if (v5)
  {
    if ([pathCopy elementCount] < 1)
    {
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }

    else
    {
      [pathCopy controlPointBounds];
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
        sub_10132D158(pathCopy, v9, v10);
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
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:31 isFatal:0 description:"Ignoring invalid bezier path %@", pathCopy];

      v14 = +[CRLBezierPath bezierPathWithDefaultsForErrorCases];

      pathCopy = v14;
    }

    if (pathCopy)
    {
      [(CRLBezierPathSource *)v5 p_setBezierPath:pathCopy];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (CRLBezierPathSource)initWithNaturalSize:(CGSize)size
{
  v4 = [CRLBezierPath bezierPathWithRect:0.0, 0.0, size.width, size.height];
  v5 = [(CRLBezierPathSource *)self initWithBezierPath:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(CRLBezierPath *)self->mPath copy];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithBezierPath:", v5}];
  [v6 setHasHorizontalFlip:{-[CRLPathSource hasHorizontalFlip](self, "hasHorizontalFlip")}];
  [v6 setHasVerticalFlip:{-[CRLPathSource hasVerticalFlip](self, "hasVerticalFlip")}];
  localizationKey = [(CRLPathSource *)self localizationKey];
  [v6 setLocalizationKey:localizationKey];

  userDefinedIdentifier = [(CRLPathSource *)self userDefinedIdentifier];
  [v6 setUserDefinedIdentifier:userDefinedIdentifier];

  userDefinedName = [(CRLPathSource *)self userDefinedName];
  [v6 setUserDefinedName:userDefinedName];

  [(CRLBezierPathSource *)self naturalSize];
  [v6 setNaturalSize:?];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, equalCopy);
    v8 = v6 && (v10.receiver = self, v10.super_class = CRLBezierPathSource, [(CRLPathSource *)&v10 isEqual:equalCopy]) && ((mPath = self->mPath, mPath == *(v6 + 56)) || [(CRLBezierPath *)mPath isEqual:?]) && self->mIsRectangular == *(v6 + 64) && sub_10011ECC8(self->mNaturalSize.width, self->mNaturalSize.height, *(v6 + 72), *(v6 + 80));
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

  localizationKey = [(CRLPathSource *)self localizationKey];
  userDefinedName = [(CRLPathSource *)self userDefinedName];
  v7 = NSStringFromCGSize(self->mNaturalSize);
  v8 = [NSString stringWithFormat:@" localizationKey=%@; userDefinedName=%@; naturalSize=%@; path=%@; isRectangular=%d", localizationKey, userDefinedName, v7, self->mPath, self->mIsRectangular];;
  [v4 appendString:v8];

  return v4;
}

- (void)setNaturalSize:(CGSize)size
{
  self->mNaturalSize = size;
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
  userDefinedName = [(CRLPathSource *)self userDefinedName];
  if (!userDefinedName)
  {
    v4 = +[CRLShapeLibrary sharedLibrary];
    localizationKey = [(CRLPathSource *)self localizationKey];
    v6 = [v4 shapeWithLocalizationKey:localizationKey];

    userDefinedName = [v6 name];
  }

  return userDefinedName;
}

- (void)p_setBezierPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
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

  [(CRLBezierPath *)pathCopy bounds];
  v11 = v10;
  v13 = v12;
  if (!sub_10011ECC8(v10, v12, CGPointZero.x, CGPointZero.y))
  {
    CGAffineTransformMakeTranslation(&v19, -v11, -v13);
    [(CRLBezierPath *)pathCopy transformUsingAffineTransform:&v19];
  }

  mPath = self->mPath;
  self->mPath = pathCopy;
  v15 = pathCopy;

  [(CRLBezierPath *)self->mPath bounds];
  self->mNaturalSize.width = v16;
  self->mNaturalSize.height = v17;
  self->mIsRectangular = [(CRLBezierPath *)self->mPath isRectangular];
  mBezierPathWithoutFlips = self->mBezierPathWithoutFlips;
  self->mBezierPathWithoutFlips = 0;
}

- (id)inferredAccessibilityDescriptionNoShapeNames
{
  userDefinedName = [(CRLPathSource *)self userDefinedName];
  if (![userDefinedName length])
  {
    inferredAccessibilityDescription = [(CRLBezierPath *)self->mPath inferredAccessibilityDescription];

    userDefinedName = inferredAccessibilityDescription;
  }

  return userDefinedName;
}

- (id)inferredAccessibilityDescription
{
  userDefinedName = [(CRLPathSource *)self userDefinedName];
  if (![userDefinedName length])
  {
    v4 = +[CRLShapeLibrary sharedLibrary];
    localizationKey = [(CRLPathSource *)self localizationKey];
    v6 = [v4 shapeWithLocalizationKey:localizationKey];

    name = [v6 name];

    userDefinedName = name;
  }

  if (![userDefinedName length])
  {
    inferredAccessibilityDescription = [(CRLBezierPath *)self->mPath inferredAccessibilityDescription];

    userDefinedName = inferredAccessibilityDescription;
  }

  return userDefinedName;
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