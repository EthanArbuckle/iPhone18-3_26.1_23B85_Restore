@interface CRLUIMenuControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_crlaxShouldActuallyPreventMakingVisible;
- (void)setMenuItems:(id)items;
- (void)setMenuVisible:(BOOL)visible;
- (void)setMenuVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation CRLUIMenuControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)_crlaxShouldActuallyPreventMakingVisible
{
  v3 = +[CRLAccessibility sharedInstance];
  needsAccessibilityElements = [v3 needsAccessibilityElements];

  if (needsAccessibilityElements)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D505C;
    v7[3] = &unk_101839FF8;
    v7[4] = self;
    v7[5] = &v8;
    if (__CRLAccessibilityPerformSafeBlock(v7))
    {
      abort();
    }

    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)setMenuItems:(id)items
{
  selfCopy = self;
  itemsCopy = items;
  if ([(CRLUIMenuControllerAccessibility *)selfCopy _crlaxShouldPreventMutatingItems])
  {
    [(CRLUIMenuControllerAccessibility *)selfCopy _crlaxSetLastUpdatedMenuItemsWhilePreventingActualItemsMutation:itemsCopy];
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = CRLUIMenuControllerAccessibility;
    [(CRLUIMenuControllerAccessibility *)&v6 setMenuItems:itemsCopy];
  }
}

- (void)setMenuVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (!visible || ![(CRLUIMenuControllerAccessibility *)self _crlaxShouldActuallyPreventMakingVisible])
  {
    v5.receiver = self;
    v5.super_class = CRLUIMenuControllerAccessibility;
    [(CRLUIMenuControllerAccessibility *)&v5 setMenuVisible:visibleCopy];
  }
}

- (void)setMenuVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if (!visible || ![(CRLUIMenuControllerAccessibility *)self _crlaxShouldActuallyPreventMakingVisible])
  {
    v7.receiver = self;
    v7.super_class = CRLUIMenuControllerAccessibility;
    [(CRLUIMenuControllerAccessibility *)&v7 setMenuVisible:visibleCopy animated:animatedCopy];
  }
}

@end