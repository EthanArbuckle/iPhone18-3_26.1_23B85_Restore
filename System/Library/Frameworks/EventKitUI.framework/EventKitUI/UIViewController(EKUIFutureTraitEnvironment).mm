@interface UIViewController(EKUIFutureTraitEnvironment)
- (id)ekui_futureTraitCollection;
- (void)setEkui_futureTraitCollection:()EKUIFutureTraitEnvironment;
@end

@implementation UIViewController(EKUIFutureTraitEnvironment)

- (id)ekui_futureTraitCollection
{
  traitCollection = objc_getAssociatedObject(self, [self ekui_futureTraitCollectionCategoryPropertyKey]);
  if (traitCollection)
  {
    goto LABEL_5;
  }

  parentViewController = [self parentViewController];

  if (!parentViewController || ([self parentViewController], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "ekui_futureTraitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    traitCollection = [self traitCollection];
LABEL_5:
    v5 = traitCollection;
  }

  return v5;
}

- (void)setEkui_futureTraitCollection:()EKUIFutureTraitEnvironment
{
  value = a3;
  ekui_futureTraitCollection = [self ekui_futureTraitCollection];
  v5 = [ekui_futureTraitCollection isEqual:value];

  if ((v5 & 1) == 0)
  {
    objc_setAssociatedObject(self, [self ekui_futureTraitCollectionCategoryPropertyKey], value, 0x303);
  }
}

@end