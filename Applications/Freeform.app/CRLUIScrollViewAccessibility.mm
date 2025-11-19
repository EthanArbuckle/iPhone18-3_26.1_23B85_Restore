@interface CRLUIScrollViewAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_accessibilityScrollStatusPrefersVertical;
- (BOOL)_accessibilityScrollingEnabled;
- (BOOL)_accessibilityUseContentInset;
- (BOOL)accessibilityShouldEnableScrollIndicator:(id)a3;
- (double)_accessibilityScrollAnimationDurationDelay;
- (id)_accessibilityScrollStatus;
- (id)_accessibilityScrollStatusFormatString;
- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5;
- (void)accessibilityScrollLeftPage;
- (void)accessibilityScrollRightPage;
@end

@implementation CRLUIScrollViewAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)accessibilityScrollLeftPage
{
  v3 = [(CRLUIScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqual:@"nestedVScrollView"];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [(CRLUIScrollViewAccessibility *)self superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v6.receiver = self;
    v6.super_class = CRLUIScrollViewAccessibility;
    [(CRLUIScrollViewAccessibility *)&v6 accessibilityScrollLeftPage];
    return;
  }

  [v5 accessibilityScrollLeftPage];
}

- (void)accessibilityScrollRightPage
{
  v3 = [(CRLUIScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqual:@"nestedVScrollView"];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [(CRLUIScrollViewAccessibility *)self superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v6.receiver = self;
    v6.super_class = CRLUIScrollViewAccessibility;
    [(CRLUIScrollViewAccessibility *)&v6 accessibilityScrollRightPage];
    return;
  }

  [v5 accessibilityScrollRightPage];
}

- (id)_accessibilityScrollStatus
{
  if (([(CRLUIScrollViewAccessibility *)self crlaxShouldIgnoreSiblingPageControl]& 1) != 0)
  {
    goto LABEL_13;
  }

  v3 = self;
  v4 = [(CRLUIScrollViewAccessibility *)v3 superview];
  v5 = [v4 subviews];

  NSClassFromString(@"CRLPageControl");
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 accessibilityValue];
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  if (!v12)
  {
LABEL_13:
    v14.receiver = self;
    v14.super_class = CRLUIScrollViewAccessibility;
    v12 = [(CRLUIScrollViewAccessibility *)&v14 _accessibilityScrollStatus];
  }

  return v12;
}

- (id)_accessibilityScrollStatusFormatString
{
  v3 = [(CRLUIScrollViewAccessibility *)self crlaxScrollStatusFormatString];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = CRLUIScrollViewAccessibility;
    v3 = [(CRLUIScrollViewAccessibility *)&v5 _accessibilityScrollStatusFormatString];
  }

  return v3;
}

- (double)_accessibilityScrollAnimationDurationDelay
{
  [(CRLUIScrollViewAccessibility *)self crlaxScrollAnnouncementDelay];
  if (result <= 0.0)
  {
    v4.receiver = self;
    v4.super_class = CRLUIScrollViewAccessibility;
    [(CRLUIScrollViewAccessibility *)&v4 _accessibilityScrollAnimationDurationDelay];
  }

  return result;
}

- (BOOL)_accessibilityUseContentInset
{
  v4.receiver = self;
  v4.super_class = CRLUIScrollViewAccessibility;
  if ([(CRLUIScrollViewAccessibility *)&v4 _accessibilityUseContentInset])
  {
    return 1;
  }

  else
  {
    return [(CRLUIScrollViewAccessibility *)self crlaxUseContentInset];
  }
}

- (BOOL)_accessibilityScrollingEnabled
{
  if (([(CRLUIScrollViewAccessibility *)self crlaxIsScrollingDisabled]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLUIScrollViewAccessibility;
  return [(CRLUIScrollViewAccessibility *)&v4 _accessibilityScrollingEnabled];
}

- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  y = a3.y;
  x = a3.x;
  if (a4 || (-[CRLUIScrollViewAccessibility accessibilityIdentifier](self, "accessibilityIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [&off_1018E12F0 containsObject:v10], v10, v11))
  {
    v14.receiver = self;
    v14.super_class = CRLUIScrollViewAccessibility;
    [(CRLUIScrollViewAccessibility *)&v14 accessibilityApplyScrollContent:v6 sendScrollStatus:v5 animated:x, y];
  }

  if (!v5)
  {
    v12 = [(CRLUIScrollViewAccessibility *)self crlaxTarget];
    v13 = [v12 delegate];

    if (objc_opt_respondsToSelector())
    {
      [v13 crlaxScrollView:self didScrollToContentOffsetWithoutAnimation:{x, y}];
    }
  }
}

- (BOOL)_accessibilityScrollStatusPrefersVertical
{
  if (([(CRLUIScrollViewAccessibility *)self crlaxScrollStatusPrefersHorizontal]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLUIScrollViewAccessibility;
  return [(CRLUIScrollViewAccessibility *)&v4 _accessibilityScrollStatusPrefersVertical];
}

- (BOOL)accessibilityShouldEnableScrollIndicator:(id)a3
{
  v4 = a3;
  v5 = [(CRLUIScrollViewAccessibility *)self accessibilityIdentifier];
  v6 = +[CRLAccessibility iOSBoardViewControllerScrollViewIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLUIScrollViewAccessibility;
    v8 = [(CRLUIScrollViewAccessibility *)&v10 accessibilityShouldEnableScrollIndicator:v4];
  }

  return v8;
}

@end