@interface UIViewController(EKUIFutureTraitEnvironment)
- (id)ekui_futureTraitCollection;
- (void)setEkui_futureTraitCollection:()EKUIFutureTraitEnvironment;
@end

@implementation UIViewController(EKUIFutureTraitEnvironment)

- (id)ekui_futureTraitCollection
{
  v2 = objc_getAssociatedObject(a1, [a1 ekui_futureTraitCollectionCategoryPropertyKey]);
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = [a1 parentViewController];

  if (!v3 || ([a1 parentViewController], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "ekui_futureTraitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v2 = [a1 traitCollection];
LABEL_5:
    v5 = v2;
  }

  return v5;
}

- (void)setEkui_futureTraitCollection:()EKUIFutureTraitEnvironment
{
  value = a3;
  v4 = [a1 ekui_futureTraitCollection];
  v5 = [v4 isEqual:value];

  if ((v5 & 1) == 0)
  {
    objc_setAssociatedObject(a1, [a1 ekui_futureTraitCollectionCategoryPropertyKey], value, 0x303);
  }
}

@end