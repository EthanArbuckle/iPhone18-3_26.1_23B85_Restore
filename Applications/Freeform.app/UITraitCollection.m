@interface UITraitCollection
+ (id)crl_baseTraitCollection;
+ (id)crl_elevatedTraitCollection;
+ (void)crl_withTraitCollectionAsCurrent:(id)a3 performBlock:(id)a4;
- (BOOL)crl_hasSameUserInterfaceStyleWith:(id)a3;
- (BOOL)crl_isCompactHeight;
- (BOOL)crl_isCompactWidth;
@end

@implementation UITraitCollection

- (BOOL)crl_isCompactWidth
{
  v3 = [(UITraitCollection *)self horizontalSizeClass];
  if (v3 == UIUserInterfaceSizeClassUnspecified)
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

  v7 = [(UITraitCollection *)self verticalSizeClass];
  if (v7 == UIUserInterfaceSizeClassUnspecified)
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

  v12 = v3 == UIUserInterfaceSizeClassRegular && v7 == UIUserInterfaceSizeClassCompact;
  return v3 == UIUserInterfaceSizeClassCompact || v12;
}

- (BOOL)crl_isCompactHeight
{
  v2 = [(UITraitCollection *)self verticalSizeClass];
  if (v2 != UIUserInterfaceSizeClassCompact)
  {
    if (v2 == UIUserInterfaceSizeClassUnspecified)
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

    LOBYTE(v2) = 0;
  }

  return v2;
}

- (BOOL)crl_hasSameUserInterfaceStyleWith:(id)a3
{
  v4 = a3;
  v5 = [(UITraitCollection *)self userInterfaceStyle];
  v6 = [v4 userInterfaceStyle];

  return v5 == v6;
}

+ (void)crl_withTraitCollectionAsCurrent:(id)a3 performBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UITraitCollection currentTraitCollection];
  [UITraitCollection setCurrentTraitCollection:v6];

  v5[2](v5);
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