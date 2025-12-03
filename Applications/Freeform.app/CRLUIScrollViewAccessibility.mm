@interface CRLUIScrollViewAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_accessibilityScrollStatusPrefersVertical;
- (BOOL)_accessibilityScrollingEnabled;
- (BOOL)_accessibilityUseContentInset;
- (BOOL)accessibilityShouldEnableScrollIndicator:(id)indicator;
- (double)_accessibilityScrollAnimationDurationDelay;
- (id)_accessibilityScrollStatus;
- (id)_accessibilityScrollStatusFormatString;
- (void)accessibilityApplyScrollContent:(CGPoint)content sendScrollStatus:(BOOL)status animated:(BOOL)animated;
- (void)accessibilityScrollLeftPage;
- (void)accessibilityScrollRightPage;
@end

@implementation CRLUIScrollViewAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)accessibilityScrollLeftPage
{
  accessibilityIdentifier = [(CRLUIScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqual:@"nestedVScrollView"];

  if (!v4)
  {
    goto LABEL_7;
  }

  superview = [(CRLUIScrollViewAccessibility *)self superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v6.receiver = self;
    v6.super_class = CRLUIScrollViewAccessibility;
    [(CRLUIScrollViewAccessibility *)&v6 accessibilityScrollLeftPage];
    return;
  }

  [superview accessibilityScrollLeftPage];
}

- (void)accessibilityScrollRightPage
{
  accessibilityIdentifier = [(CRLUIScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqual:@"nestedVScrollView"];

  if (!v4)
  {
    goto LABEL_7;
  }

  superview = [(CRLUIScrollViewAccessibility *)self superview];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v6.receiver = self;
    v6.super_class = CRLUIScrollViewAccessibility;
    [(CRLUIScrollViewAccessibility *)&v6 accessibilityScrollRightPage];
    return;
  }

  [superview accessibilityScrollRightPage];
}

- (id)_accessibilityScrollStatus
{
  if (([(CRLUIScrollViewAccessibility *)self crlaxShouldIgnoreSiblingPageControl]& 1) != 0)
  {
    goto LABEL_13;
  }

  selfCopy = self;
  superview = [(CRLUIScrollViewAccessibility *)selfCopy superview];
  subviews = [superview subviews];

  NSClassFromString(@"CRLPageControl");
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = subviews;
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
          accessibilityValue = [v11 accessibilityValue];
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

  accessibilityValue = 0;
LABEL_12:

  if (!accessibilityValue)
  {
LABEL_13:
    v14.receiver = self;
    v14.super_class = CRLUIScrollViewAccessibility;
    accessibilityValue = [(CRLUIScrollViewAccessibility *)&v14 _accessibilityScrollStatus];
  }

  return accessibilityValue;
}

- (id)_accessibilityScrollStatusFormatString
{
  crlaxScrollStatusFormatString = [(CRLUIScrollViewAccessibility *)self crlaxScrollStatusFormatString];
  if (!crlaxScrollStatusFormatString)
  {
    v5.receiver = self;
    v5.super_class = CRLUIScrollViewAccessibility;
    crlaxScrollStatusFormatString = [(CRLUIScrollViewAccessibility *)&v5 _accessibilityScrollStatusFormatString];
  }

  return crlaxScrollStatusFormatString;
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

- (void)accessibilityApplyScrollContent:(CGPoint)content sendScrollStatus:(BOOL)status animated:(BOOL)animated
{
  animatedCopy = animated;
  statusCopy = status;
  y = content.y;
  x = content.x;
  if (status || (-[CRLUIScrollViewAccessibility accessibilityIdentifier](self, "accessibilityIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [&off_1018E12F0 containsObject:v10], v10, v11))
  {
    v14.receiver = self;
    v14.super_class = CRLUIScrollViewAccessibility;
    [(CRLUIScrollViewAccessibility *)&v14 accessibilityApplyScrollContent:statusCopy sendScrollStatus:animatedCopy animated:x, y];
  }

  if (!animatedCopy)
  {
    crlaxTarget = [(CRLUIScrollViewAccessibility *)self crlaxTarget];
    delegate = [crlaxTarget delegate];

    if (objc_opt_respondsToSelector())
    {
      [delegate crlaxScrollView:self didScrollToContentOffsetWithoutAnimation:{x, y}];
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

- (BOOL)accessibilityShouldEnableScrollIndicator:(id)indicator
{
  indicatorCopy = indicator;
  accessibilityIdentifier = [(CRLUIScrollViewAccessibility *)self accessibilityIdentifier];
  v6 = +[CRLAccessibility iOSBoardViewControllerScrollViewIdentifier];
  v7 = [accessibilityIdentifier isEqualToString:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLUIScrollViewAccessibility;
    v8 = [(CRLUIScrollViewAccessibility *)&v10 accessibilityShouldEnableScrollIndicator:indicatorCopy];
  }

  return v8;
}

@end