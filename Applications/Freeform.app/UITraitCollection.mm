@interface UITraitCollection
+ (id)crl_baseTraitCollection;
+ (id)crl_elevatedTraitCollection;
+ (void)crl_withTraitCollectionAsCurrent:(id)current performBlock:(id)block;
- (BOOL)crl_hasSameUserInterfaceStyleWith:(id)with;
- (BOOL)crl_isCompactHeight;
- (BOOL)crl_isCompactWidth;
@end

@implementation UITraitCollection

- (BOOL)crl_isCompactWidth
{
  horizontalSizeClass = [(UITraitCollection *)self horizontalSizeClass];
  if (horizontalSizeClass == UIUserInterfaceSizeClassUnspecified)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138EA14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138EA28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138EAC8();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
    }

    v5 = [NSString stringWithUTF8String:"[UITraitCollection(CRLAdditions) crl_isCompactWidth]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UITraitCollection_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:22 isFatal:0 description:"expected inequality between %{public}s and %{public}s", "horizontalSizeClass", "UIUserInterfaceSizeClassUnspecified"];
  }

  verticalSizeClass = [(UITraitCollection *)self verticalSizeClass];
  if (verticalSizeClass == UIUserInterfaceSizeClassUnspecified)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138EAF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138EB18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138EBB8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v8);
    }

    v9 = [NSString stringWithUTF8String:"[UITraitCollection(CRLAdditions) crl_isCompactWidth]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UITraitCollection_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:27 isFatal:0 description:"expected inequality between %{public}s and %{public}s", "verticalSizeClass", "UIUserInterfaceSizeClassUnspecified"];
  }

  v12 = horizontalSizeClass == UIUserInterfaceSizeClassRegular && verticalSizeClass == UIUserInterfaceSizeClassCompact;
  return horizontalSizeClass == UIUserInterfaceSizeClassCompact || v12;
}

- (BOOL)crl_isCompactHeight
{
  verticalSizeClass = [(UITraitCollection *)self verticalSizeClass];
  if (verticalSizeClass != UIUserInterfaceSizeClassCompact)
  {
    if (verticalSizeClass == UIUserInterfaceSizeClassUnspecified)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138EBE0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138EBF4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138EC94();
      }

      v3 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v3);
      }

      v4 = [NSString stringWithUTF8String:"[UITraitCollection(CRLAdditions) crl_isCompactHeight]"];
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/UITraitCollection_CRLAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:48 isFatal:0 description:"expected inequality between %{public}s and %{public}s", "verticalSizeClass", "UIUserInterfaceSizeClassUnspecified"];
    }

    LOBYTE(verticalSizeClass) = 0;
  }

  return verticalSizeClass;
}

- (BOOL)crl_hasSameUserInterfaceStyleWith:(id)with
{
  withCopy = with;
  userInterfaceStyle = [(UITraitCollection *)self userInterfaceStyle];
  userInterfaceStyle2 = [withCopy userInterfaceStyle];

  return userInterfaceStyle == userInterfaceStyle2;
}

+ (void)crl_withTraitCollectionAsCurrent:(id)current performBlock:(id)block
{
  blockCopy = block;
  currentCopy = current;
  v7 = +[UITraitCollection currentTraitCollection];
  [UITraitCollection setCurrentTraitCollection:currentCopy];

  blockCopy[2](blockCopy);
  [UITraitCollection setCurrentTraitCollection:v7];
}

+ (id)crl_baseTraitCollection
{
  if (qword_101A354D0 != -1)
  {
    sub_10138ECBC();
  }

  v3 = qword_101A354C0;

  return v3;
}

+ (id)crl_elevatedTraitCollection
{
  if (qword_101A354D8 != -1)
  {
    sub_10138ECD0();
  }

  v3 = qword_101A354C8;

  return v3;
}

@end