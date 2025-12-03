@interface CRLUITableViewCellAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)accessibilityScrollToVisible;
- (id)_accessibilityTableViewSwitch;
- (void)crlaxClearChildrenWorkaroundFor20458918;
@end

@implementation CRLUITableViewCellAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)crlaxClearChildrenWorkaroundFor20458918
{
  [(CRLUITableViewCellAccessibility *)self _accessibilityClearChildren];

  CRLAccessibilityPostLayoutChangedNotification(0);
}

- (id)_accessibilityTableViewSwitch
{
  _crlaxAccessibilityTableViewSwitch = [(CRLUITableViewCellAccessibility *)self _crlaxAccessibilityTableViewSwitch];
  if (!_crlaxAccessibilityTableViewSwitch)
  {
    v5.receiver = self;
    v5.super_class = CRLUITableViewCellAccessibility;
    _crlaxAccessibilityTableViewSwitch = [(CRLUITableViewCellAccessibility *)&v5 _accessibilityTableViewSwitch];
  }

  return _crlaxAccessibilityTableViewSwitch;
}

- (BOOL)accessibilityScrollToVisible
{
  v20.receiver = self;
  v20.super_class = CRLUITableViewCellAccessibility;
  if ([(CRLUITableViewCellAccessibility *)&v20 accessibilityScrollToVisible])
  {
    v3 = 1;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10054ECB0;
    v18 = sub_10054ECC0;
    v19 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10054ECC8;
    v13[3] = &unk_101839FF8;
    v13[4] = self;
    v13[5] = &v14;
    if (__CRLAccessibilityPerformSafeBlock(v13))
    {
      abort();
    }

    v4 = v15[5];
    _Block_object_dispose(&v14, 8);

    if (v4)
    {
      visibleCells = [v4 visibleCells];
      v6 = [visibleCells sortedArrayUsingSelector:NSSelectorFromString(@"accessibilityCompareGeometry:")];

      if ([v6 count] < 2)
      {
        v8 = 0;
      }

      else
      {
        v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
        v8 = v7 == self;
      }

      if ([v6 count])
      {
        v9 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];
        v10 = v9 == self;
      }

      else
      {
        v10 = 0;
      }

      v3 = v8 || v10;
      if (v3)
      {
        v11 = [v4 indexPathForCell:self];
        [v4 scrollToRowAtIndexPath:v11 atScrollPosition:2 animated:0];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

@end