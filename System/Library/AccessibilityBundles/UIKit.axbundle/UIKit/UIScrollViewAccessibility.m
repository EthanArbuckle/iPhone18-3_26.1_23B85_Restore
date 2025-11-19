@interface UIScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityContentOffsetForScrollDirection:(int)a3 newContentOffset:(CGPoint *)a4 distanceMultiplier:(double)a5;
- (BOOL)_accessibilityIsGroupedParent;
- (BOOL)_accessibilityIsScrollAncestor;
- (BOOL)_accessibilityRemembersLastFocusedChild;
- (BOOL)_accessibilityScrollPageInDirection:(int)a3;
- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4;
- (BOOL)_accessibilityScrollingEnabled;
- (BOOL)_accessibilityShouldAnimateScroll;
- (BOOL)_accessibilityShouldUseFallbackForVisibleContentInset;
- (BOOL)_axBaseScrollDownPageSupported;
- (BOOL)_axBaseScrollLeftPageSupported;
- (BOOL)_axBaseScrollRightPageSupported;
- (BOOL)_axBaseScrollUpPageSupported;
- (BOOL)_axShowsHorizontalScrollBar;
- (BOOL)_axShowsVerticalScrollBar;
- (BOOL)accessibilityShouldEnableScrollIndicator:(id)a3;
- (CGFloat)_axPageAlignedContentOffsetForPoint:(double)a3 forValidation:(double)a4;
- (CGFloat)accessibilityValidateScrollContentOffset:(CGFloat)a3;
- (CGPoint)_accessibilityContentOffset;
- (CGPoint)_accessibilityVisibleScrollArea:(BOOL)a3;
- (CGPoint)_newScrollOffsetForScrubReturningAnimated:(BOOL *)a3;
- (CGRect)_accessibilityContentFrame;
- (CGRect)_accessibilityScrollViewVisibleFrame;
- (CGRect)_defaultFocusRegionFrame;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrameForScrollIndicator:(id)a3;
- (CGSize)_axPageSize;
- (UIEdgeInsets)_accessibilityContentInset;
- (UIEdgeInsets)_accessibilityNavigationControllerInset;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (double)_accessibilityAnnounceDelayedStatus;
- (double)_accessibilityScrollHeightDistance;
- (double)_accessibilityScrollWidthDistance;
- (double)_axAllowedPagingOverlap;
- (double)_axAnnounceScrubForDirection:(void *)a1;
- (double)_axContentOffsetForAddedProgress:(double)a3 inDirection:;
- (double)_axMaximumContentOffset;
- (double)_axMinimumContentOffset;
- (double)_axProgressForDirection:(void *)a1;
- (double)accessibilityProgressForScrollIndicator:(id)a3;
- (id)_accessibilityDelegateScrollStatus;
- (id)_accessibilityElementsFilteredByPagingScrollView:(void *)a1;
- (id)_accessibilityFindRefreshControl;
- (id)_accessibilityFirstLastOpaqueElement:(id)obj options:;
- (id)_accessibilityFirstOpaqueElement;
- (id)_accessibilityFirstOpaqueElementWithOptions:(id)a3;
- (id)_accessibilityFocusAbsoluteFirstLastOpaqueElement:(BOOL)a3 technology:(id)a4 honorsGroups:(BOOL)a5 shouldAlwaysScroll:(BOOL)a6;
- (id)_accessibilityHorizontalScrollBarElement;
- (id)_accessibilityLastOpaqueElement;
- (id)_accessibilityLastOpaqueElementWithOptions:(id)a3;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySubviews;
- (id)_accessibilityUIViewAccessibilityFrame;
- (id)_accessibilityVerticalScrollBarElement;
- (id)_axHorizontalScrollIndicator;
- (id)_axVerticalScrollIndicator;
- (id)_staticScrollBar;
- (id)accessibilityPath;
- (id)automationElements;
- (int64_t)_accessibilityPageCount;
- (int64_t)_accessibilityPageIndex;
- (int64_t)accessibilityContainerType;
- (int64_t)accessibilityNumberOfPagesForScrollIndicator:(id)a3;
- (uint64_t)_accessibilityCanHandleContentPullDown;
- (uint64_t)_axScrollViewPagingEnabled;
- (unint64_t)_accessibilityBoundaryEdges;
- (void)_accessibilityCurrentPage:(uint64_t *)a3 totalPages:(char)a4 forVerticalDirection:;
- (void)_accessibilityCurrentPage:(uint64_t *)a3 totalPages:(int)a4 type:;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityScrollToTopWithAnnouncement:(id)obj touchLocation:(double)a4 originalHandler:(double)a5;
- (void)_accessibilitySendScrollStatus;
- (void)_accessibilitySetNavigationControllerInset:(UIEdgeInsets)a3;
- (void)_accessibilitySetScrollStatus:(id)a3;
- (void)_accessibilitySetShouldUseFallbackForVisibleContentInset:(BOOL)a3;
- (void)_accessibilitySetStoredShouldUseFallbackForVisibleContentInset:(uint64_t)a1;
- (void)_accessibilitySetStoredVisibleContentInset:(uint64_t)a1;
- (void)_accessibilitySetVisibleContentInset:(UIEdgeInsets)a3;
- (void)_accessibilityZoomAtPoint:(CGPoint)a3 zoomIn:(BOOL)a4;
- (void)_adjustScrollerIndicators:(BOOL)a3 alwaysShowingThem:(BOOL)a4;
- (void)_axAnnotateScrollBars;
- (void)_axManipulateWithRefreshControl:(void *)a1;
- (void)_axSetHorizontalScrollBar:(id)a3;
- (void)_axSetLastEdgeBoundaries:(id)a3;
- (void)_axSetLastScrubAnnouncementDate:(id)a3;
- (void)_axSetOverrideShowsHorizontallScrollBars:(id)a3;
- (void)_axSetOverrideShowsVerticalScrollBars:(id)a3;
- (void)_axSetVerticalScrollBar:(id)a3;
- (void)_didEndDirectManipulationWithScrubbingDirection:(int64_t)a3;
- (void)_hideScrollIndicators;
- (void)_notifyDidScroll;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4;
- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4;
- (void)_scrollViewDidEndDeceleratingForDelegate;
- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5;
- (void)accessibilityApplyScrollContent:(int)a3 sendScrollStatus:(CGFloat)a4 animateWithDuration:(CGFloat)a5 animationCurve:(double)a6;
- (void)accessibilityScrollIndicator:(id)a3 addProgress:(double)a4;
- (void)accessibilityScrollIndicator:(id)a3 didBecomeFocused:(BOOL)a4;
@end

@implementation UIScrollViewAccessibility

- (void)_axSetVerticalScrollBar:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_axSetHorizontalScrollBar:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_axSetOverrideShowsVerticalScrollBars:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_axSetOverrideShowsHorizontallScrollBars:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_axSetLastEdgeBoundaries:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v13 = location;
  v12 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = @"UIScrollView";
  v4 = @"_staticScrollBar";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v3 = "UIView<_UIScrollViewScrollIndicator>";
  [location[0] validateClass:@"UIScrollView" hasInstanceVariable:@"_verticalScrollIndicator" withType:?];
  [location[0] validateClass:@"UIScrollView" hasInstanceVariable:@"_horizontalScrollIndicator" withType:"UIView<_UIScrollViewScrollIndicator>"];
  v6 = @"UIView";
  [location[0] validateClass:@"_UIScrollViewScrollIndicator" isKindOfClass:?];
  [location[0] validateClass:@"UIScrollView" isKindOfClass:@"UIView"];
  v5 = "@";
  [location[0] validateClass:@"UIScrollView" hasInstanceMethod:@"_staticScrollBar" withFullSignature:0];
  v9 = "v";
  [location[0] validateClass:v10 hasInstanceMethod:@"setDelegate:" withFullSignature:{v5, 0}];
  v8 = "{CGPoint=dd}";
  [location[0] validateClass:v10 hasInstanceMethod:@"_setContentOffset: duration: animationCurve:" withFullSignature:{v9, "{CGPoint=dd}", "d", "i", 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_notifyDidScroll" withFullSignature:{v9, 0}];
  v7 = "B";
  [location[0] validateClass:v10 hasInstanceMethod:@"_forwardsToParentScroller" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"_defaultFocusRegionFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_scrollViewDidEndDeceleratingForDelegate" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_animatedTargetOffset" withFullSignature:{v8, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_minimumContentOffset" withFullSignature:{v8, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_maximumContentOffset" withFullSignature:{v8, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_focusTargetOffset" withFullSignature:{v8, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_adjustScrollerIndicators:alwaysShowingThem:" withFullSignature:{v9, v7, v7, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_hideScrollIndicators" withFullSignature:{v9, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_newScrollOffsetForScrubReturningAnimated:" withFullSignature:{v8, "^B", 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_didEndDirectManipulationWithScrubbingDirection:" withFullSignature:{v9, "q", 0}];
  v11 = "{UIEdgeInsets=dddd}";
  [location[0] validateClass:v10 hasInstanceMethod:@"_effectiveVerticalScrollIndicatorInsets" withFullSignature:0];
  [location[0] validateClass:v10 hasInstanceMethod:@"_effectiveHorizontalScrollIndicatorInsets" withFullSignature:{v11, 0}];
  [location[0] validateClass:@"UIPopoverPresentationController" hasInstanceMethod:@"_additionalSafeAreaInsets" withFullSignature:{v11, 0}];
  objc_storeStrong(v13, v12);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UIScrollViewAccessibility *)v4 _axAnnotateScrollBars];
}

- (void)_axAnnotateScrollBars
{
  v3 = a1;
  if (a1)
  {
    v2 = [(UIScrollViewAccessibility *)v3 _axVerticalScrollIndicator];
    [_UIScrollViewScrollIndicatorAccessibility setAccessibilityScrollDirection:v2];
    [(_UIScrollViewScrollIndicatorAccessibility *)v2 setAccessibilityScrollIndicatorDelegate:v3];
    v1 = [(UIScrollViewAccessibility *)v3 _axHorizontalScrollIndicator];
    [_UIScrollViewScrollIndicatorAccessibility setAccessibilityScrollDirection:v1];
    [(_UIScrollViewScrollIndicatorAccessibility *)v1 setAccessibilityScrollIndicatorDelegate:v3];
    objc_storeStrong(&v1, 0);
    objc_storeStrong(&v2, 0);
  }
}

- (BOOL)_axShowsVerticalScrollBar
{
  v7 = [(UIScrollViewAccessibility *)self _axOverrideShowsVerticalScrollBars];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v7)
  {
    v6 = [(UIScrollViewAccessibility *)self _axOverrideShowsVerticalScrollBars];
    v9 = [v6 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v6);
  }

  else
  {
    v5 = 0;
    if (([(UIScrollViewAccessibility *)self showsVerticalScrollIndicator]& 1) != 0)
    {
      v4 = 1;
      if (![(UIScrollViewAccessibility *)self _axBaseScrollUpPageSupported])
      {
        return [(UIScrollViewAccessibility *)self _axBaseScrollDownPageSupported];
      }

      return v4;
    }

    return v5;
  }

  return v9;
}

- (BOOL)_axBaseScrollUpPageSupported
{
  if (a1)
  {
    v5 = [(UIScrollViewAccessibility *)a1 _accessibilityFindRefreshControl];
    *&v1 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if (v5)
    {
      return 1;
    }

    else
    {
      [a1 contentOffset];
      v7 = v2;
      v6 = 0.0;
      if ([a1 _accessibilityUseContentInset])
      {
        [a1 _accessibilityContentInset];
        v6 = 0.0 - v3;
      }

      return v7 > v6;
    }
  }

  else
  {
    return 0;
  }
}

- (BOOL)_axBaseScrollDownPageSupported
{
  v12 = a1;
  if (a1)
  {
    [v12 _accessibilityContentSize];
    location[1] = v1;
    v11 = v2;
    location[0] = MEMORY[0x29EDC9748](v12);
    [location[0] contentOffset];
    v9 = v3;
    [location[0] visibleBounds];
    v8 = v4;
    v7 = v11;
    if ([v12 _accessibilityUseContentInset])
    {
      [v12 _accessibilityContentInset];
      v7 = v11 + v5;
    }

    v13 = v9 + v8 < v7;
    objc_storeStrong(location, 0);
  }

  else
  {
    return 0;
  }

  return v13;
}

- (BOOL)_axShowsHorizontalScrollBar
{
  v7 = [(UIScrollViewAccessibility *)self _axOverrideShowsHorizontallScrollBars];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v7)
  {
    v6 = [(UIScrollViewAccessibility *)self _axOverrideShowsHorizontallScrollBars];
    v9 = [v6 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v6);
  }

  else
  {
    v5 = 0;
    if (([(UIScrollViewAccessibility *)self showsHorizontalScrollIndicator]& 1) != 0)
    {
      v4 = 1;
      if (![(UIScrollViewAccessibility *)self _axBaseScrollLeftPageSupported])
      {
        return [(UIScrollViewAccessibility *)self _axBaseScrollRightPageSupported];
      }

      return v4;
    }

    return v5;
  }

  return v9;
}

- (BOOL)_axBaseScrollLeftPageSupported
{
  if (a1)
  {
    [a1 contentOffset];
    return v1 < [(UIScrollViewAccessibility *)a1 _axMaximumContentOffset];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_axBaseScrollRightPageSupported
{
  if (a1)
  {
    [a1 contentOffset];
    return v1 > [(UIScrollViewAccessibility *)a1 _axMinimumContentOffset];
  }

  else
  {
    return 0;
  }
}

- (id)_accessibilityVerticalScrollBarElement
{
  v15 = self;
  v14[1] = a2;
  v6 = [(UIScrollViewAccessibility *)self _axVerticalScrollBar];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v6)
  {
    v16 = [(UIScrollViewAccessibility *)v15 _axVerticalScrollBar];
  }

  else if ([(UIScrollViewAccessibility *)v15 _axShowsVerticalScrollBar])
  {
    v14[0] = [[UIScrollBarIndicatorAccessibilityElement alloc] initWithAccessibilityContainer:v15];
    [(UIScrollBarIndicatorAccessibilityElement *)v14[0] setOrientation:?];
    objc_initWeak(&location, v15);
    v5 = v14[0];
    v7 = MEMORY[0x29EDCA5F8];
    v8 = -1073741824;
    v9 = 0;
    v10 = __67__UIScrollViewAccessibility__accessibilityVerticalScrollBarElement__block_invoke;
    v11 = &unk_29F30CAE8;
    objc_copyWeak(&v12, &location);
    [v5 _setAccessibilityFrameBlock:&v7];
    [(UIScrollViewAccessibility *)v15 _axSetVerticalScrollBar:v14[0]];
    v16 = MEMORY[0x29EDC9748](v14[0]);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    objc_storeStrong(v14, 0);
  }

  else
  {
    v16 = 0;
  }

  v3 = v16;

  return v3;
}

double __67__UIScrollViewAccessibility__accessibilityVerticalScrollBarElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeUIViewForKey:@"_verticalScrollIndicator"];
  [v3 accessibilityFrame];
  v5 = v1;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);
  return v5;
}

- (id)_accessibilityHorizontalScrollBarElement
{
  v15 = self;
  v14[1] = a2;
  v6 = [(UIScrollViewAccessibility *)self _axHorizontalScrollBar];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v6)
  {
    v16 = [(UIScrollViewAccessibility *)v15 _axHorizontalScrollBar];
  }

  else if ([(UIScrollViewAccessibility *)v15 _axShowsHorizontalScrollBar])
  {
    v14[0] = [[UIScrollBarIndicatorAccessibilityElement alloc] initWithAccessibilityContainer:v15];
    [(UIScrollBarIndicatorAccessibilityElement *)v14[0] setOrientation:?];
    objc_initWeak(&location, v15);
    v5 = v14[0];
    v7 = MEMORY[0x29EDCA5F8];
    v8 = -1073741824;
    v9 = 0;
    v10 = __69__UIScrollViewAccessibility__accessibilityHorizontalScrollBarElement__block_invoke;
    v11 = &unk_29F30CAE8;
    objc_copyWeak(&v12, &location);
    [v5 _setAccessibilityFrameBlock:&v7];
    [(UIScrollViewAccessibility *)v15 _axSetHorizontalScrollBar:v14[0]];
    v16 = MEMORY[0x29EDC9748](v14[0]);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    objc_storeStrong(v14, 0);
  }

  else
  {
    v16 = 0;
  }

  v3 = v16;

  return v3;
}

double __69__UIScrollViewAccessibility__accessibilityHorizontalScrollBarElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeUIViewForKey:@"_horizontalScrollIndicator"];
  [v3 accessibilityFrame];
  v5 = v1;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);
  return v5;
}

- (void)_accessibilityScrollToTopWithAnnouncement:(id)obj touchLocation:(double)a4 originalHandler:(double)a5
{
  v19 = a4;
  v20 = a5;
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v18)
  {
    v5 = v18;
    v7 = MEMORY[0x29EDCA5F8];
    v8 = -1073741824;
    v9 = 0;
    v10 = __101__UIScrollViewAccessibility__accessibilityScrollToTopWithAnnouncement_touchLocation_originalHandler___block_invoke;
    v11 = &unk_29F30DA70;
    v14 = v17 & 1;
    v12 = MEMORY[0x29EDC9748](v18);
    v13 = MEMORY[0x29EDC9748](location);
    v6.receiver = v5;
    v6.super_class = UIScrollViewAccessibility;
    objc_msgSendSuper2(&v6, sel__scrollToTopFromTouchAtScreenLocation_resultHandler_, &v7, v19, v20);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  objc_storeStrong(&location, 0);
}

void __101__UIScrollViewAccessibility__accessibilityScrollToTopWithAnnouncement_touchLocation_originalHandler___block_invoke(uint64_t a1, char a2)
{
  v11 = a1;
  v10 = a2;
  v9[1] = a1;
  if (*(a1 + 48))
  {
    v9[0] = [*(a1 + 32) safeValueForKey:@"delegate"];
    v8 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v2 = [*(a1 + 32) safeValueForKey:@"dataSource"];
      v3 = v8;
      v8 = v2;
      MEMORY[0x29EDC9740](v3);
    }

    v5 = MEMORY[0x29EDC9748](*(a1 + 32));
    v6 = MEMORY[0x29EDC9748](v9[0]);
    v7 = MEMORY[0x29EDC9748](v8);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v5, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(v9, 0);
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (double)_accessibilityAnnounceDelayedStatus
{
  if (a1)
  {
    notification = *MEMORY[0x29EDC7EA8];
    v3 = [a1 _accessibilityScrollStatus];
    UIAccessibilityPostNotification(notification, v3);
    *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  }

  return result;
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4
{
  v7 = a3;
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(UIScrollViewAccessibility *)v6 _accessibilityScrollToTopWithAnnouncement:location[0] touchLocation:v7.x originalHandler:v7.y];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UIScrollViewAccessibility;
    [(UIScrollViewAccessibility *)&v4 _scrollToTopFromTouchAtScreenLocation:location[0] resultHandler:v7.x, v7.y];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityScrollingEnabled
{
  v5 = self;
  location[1] = a2;
  location[0] = [(UIScrollViewAccessibility *)self _accessibilityUserDefinedScrollingEnabled];
  if (location[0])
  {
    v6 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v3 = [(UIScrollViewAccessibility *)v5 safeValueForKey:@"isScrollEnabled"];
    v6 = [v3 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v3);
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)_accessibilityIsScrollAncestor
{
  v5 = [(UIScrollViewAccessibility *)self isAccessibilityUserDefinedScrollAncestor];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return [(UIScrollViewAccessibility *)self _accessibilityScrollingEnabled];
  }

  v4 = [(UIScrollViewAccessibility *)self isAccessibilityUserDefinedScrollAncestor];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (CGRect)_accessibilityScrollViewVisibleFrame
{
  [(UIScrollViewAccessibility *)self visibleBounds:0];
  UIAccessibilityFrameForBounds();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_accessibilityFirstOpaqueElement
{
  v7 = self;
  location[1] = a2;
  location[0] = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v5 = MEMORY[0x29EDC9748](v7);
  if ((__61__UIScrollViewAccessibility__accessibilityFirstOpaqueElement__block_invoke)())
  {
    v8 = [(UIScrollViewAccessibility *)v7 _accessibilityFirstLastOpaqueElement:location[0] options:?];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&v5, 0);
  if (!v4)
  {
    v8 = [(UIScrollViewAccessibility *)v7 _accessibilityFirstOpaqueElementWithOptions:location[0]];
  }

  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

BOOL __61__UIScrollViewAccessibility__accessibilityFirstOpaqueElement__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &kUIScrollViewScrollVerticalStorageKey_block_invoke_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_32);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityFirstOpaqueElement);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilityFirstOpaqueElement);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != kUIScrollViewScrollVerticalStorageKey_block_invoke_BaseImplementation;
}

void __61__UIScrollViewAccessibility__accessibilityFirstOpaqueElement__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityFirstOpaqueElement);
  if (InstanceMethod)
  {
    kUIScrollViewScrollVerticalStorageKey_block_invoke_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilityFirstOpaqueElement);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_accessibilityFirstLastOpaqueElement:(id)obj options:
{
  v39 = *MEMORY[0x29EDCA608];
  v36 = a1;
  v35 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v36)
  {
    v24 = 1;
    if (([(UIView *)v36 _accessibilityOpaqueElementScrollsContentIntoView]& 1) == 0)
    {
      v24 = [(UIView *)v36 _axAlwaysScrollsContentIntoView];
    }

    v32 = v24 & 1;
    if ([(UIView *)v36 _accessibilityShouldPreventOpaqueScrolling]& 1) == 0 && (v32)
    {
      if (v35)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      [(UIView *)v36 _accessibilityScrollOpaqueElementIntoView:v3 previousScroller:0];
    }

    v31 = [(UIView *)v36 _accessibilitySortedElementsWithinWithOptions:location];
    if ((v35 & 1) == 0)
    {
      v23 = [v31 reverseObjectEnumerator];
      v4 = [v23 allObjects];
      v5 = v31;
      v31 = v4;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v23);
    }

    [(UIView *)v36 visibleBounds];
    rect = v41;
    v30 = UIAccessibilityConvertFrameToScreenCoordinates(v41, v36);
    memset(__b, 0, sizeof(__b));
    obja = MEMORY[0x29EDC9748](v31);
    v22 = [obja countByEnumeratingWithState:__b objects:v38 count:16];
    if (v22)
    {
      v18 = *__b[2];
      v19 = 0;
      v20 = v22;
      while (1)
      {
        v17 = v19;
        if (*__b[2] != v18)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(__b[1] + 8 * v19);
        NSClassFromString(&cfstr_Uiscrollviewsc_0.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v28 accessibilityFrame];
          r2.origin.x = v6;
          r2.origin.y = v7;
          r2.size.width = v8;
          r2.size.height = v9;
          v42 = CGRectIntersection(v30, r2);
          height = v42.size.height;
          if (([v28 _accessibilityIsNotFirstElement] & 1) == 0)
          {
            [v28 accessibilityFrame];
            v16 = v10;
            [(UIView *)v36 _accessibilityVisibleItemDenominator];
            if (height > v16 / v11)
            {
              break;
            }

            v15 = v30.size.height;
            [(UIView *)v36 _accessibilityVisibleItemDenominator];
            if (height > v15 / v12)
            {
              break;
            }
          }
        }

        ++v19;
        if (v17 + 1 >= v20)
        {
          v19 = 0;
          v20 = [obja countByEnumeratingWithState:__b objects:v38 count:16];
          if (!v20)
          {
            goto LABEL_24;
          }
        }
      }

      v37 = MEMORY[0x29EDC9748](v28);
      v33 = 1;
    }

    else
    {
LABEL_24:
      v33 = 0;
    }

    MEMORY[0x29EDC9740](obja);
    if (!v33)
    {
      v37 = 0;
      v33 = 1;
    }

    objc_storeStrong(&v31, 0);
  }

  else
  {
    v37 = 0;
    v33 = 1;
  }

  objc_storeStrong(&location, 0);
  v13 = v37;

  return v13;
}

- (id)_accessibilityFirstOpaqueElementWithOptions:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke;
  v11 = &unk_29F30CEB0;
  v12 = MEMORY[0x29EDC9748](v15);
  v13 = (__73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke)();
  v5 = MEMORY[0x29EDC9748](v15);
  v6 = (__73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke_433)();
  if (v13 & 1) == 0 || (v6)
  {
    v16 = [(UIScrollViewAccessibility *)v15 _accessibilityFirstLastOpaqueElement:location[0] options:?];
  }

  else
  {
    v16 = [(UIScrollViewAccessibility *)v15 _accessibilityFirstOpaqueElement];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v3 = v16;

  return v3;
}

BOOL __73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &kUIScrollViewScrollVerticalStorageKey_block_invoke_2_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_432);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityFirstOpaqueElement);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilityFirstOpaqueElement);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != kUIScrollViewScrollVerticalStorageKey_block_invoke_2_BaseImplementation;
}

void __73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityFirstOpaqueElement);
  if (InstanceMethod)
  {
    kUIScrollViewScrollVerticalStorageKey_block_invoke_2_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilityFirstOpaqueElement);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

BOOL __73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke_433(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &kUIScrollViewScrollVerticalStorageKey_block_invoke_3_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_436);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityFirstOpaqueElementWithOptions_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilityFirstOpaqueElementWithOptions_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != kUIScrollViewScrollVerticalStorageKey_block_invoke_3_BaseImplementation;
}

void __73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke_2_434(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityFirstOpaqueElementWithOptions_);
  if (InstanceMethod)
  {
    kUIScrollViewScrollVerticalStorageKey_block_invoke_3_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilityFirstOpaqueElementWithOptions_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_accessibilityLastOpaqueElement
{
  v7 = self;
  location[1] = a2;
  location[0] = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v5 = MEMORY[0x29EDC9748](v7);
  if ((__60__UIScrollViewAccessibility__accessibilityLastOpaqueElement__block_invoke)())
  {
    v8 = [(UIScrollViewAccessibility *)v7 _accessibilityFirstLastOpaqueElement:location[0] options:?];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&v5, 0);
  if (!v4)
  {
    v8 = [(UIScrollViewAccessibility *)v7 _accessibilityLastOpaqueElementWithOptions:location[0]];
  }

  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

BOOL __60__UIScrollViewAccessibility__accessibilityLastOpaqueElement__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &kUIScrollViewScrollVerticalStorageKey_block_invoke_4_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_440);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityLastOpaqueElement);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilityLastOpaqueElement);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != kUIScrollViewScrollVerticalStorageKey_block_invoke_4_BaseImplementation;
}

void __60__UIScrollViewAccessibility__accessibilityLastOpaqueElement__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityLastOpaqueElement);
  if (InstanceMethod)
  {
    kUIScrollViewScrollVerticalStorageKey_block_invoke_4_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilityLastOpaqueElement);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_accessibilityLastOpaqueElementWithOptions:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke;
  v11 = &unk_29F30CEB0;
  v12 = MEMORY[0x29EDC9748](v15);
  v13 = (__72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke)();
  v5 = MEMORY[0x29EDC9748](v15);
  v6 = (__72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke_445)();
  if (v13 & 1) == 0 || (v6)
  {
    v16 = [(UIScrollViewAccessibility *)v15 _accessibilityFirstLastOpaqueElement:location[0] options:?];
  }

  else
  {
    v16 = [(UIScrollViewAccessibility *)v15 _accessibilityLastOpaqueElement];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v3 = v16;

  return v3;
}

BOOL __72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &kUIScrollViewScrollVerticalStorageKey_block_invoke_5_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_444);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityLastOpaqueElement);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilityLastOpaqueElement);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != kUIScrollViewScrollVerticalStorageKey_block_invoke_5_BaseImplementation;
}

void __72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityLastOpaqueElement);
  if (InstanceMethod)
  {
    kUIScrollViewScrollVerticalStorageKey_block_invoke_5_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilityLastOpaqueElement);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

BOOL __72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke_445(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &kUIScrollViewScrollVerticalStorageKey_block_invoke_6_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_448);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityLastOpaqueElementWithOptions_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel__accessibilityLastOpaqueElementWithOptions_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != kUIScrollViewScrollVerticalStorageKey_block_invoke_6_BaseImplementation;
}

void __72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke_2_446(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilityLastOpaqueElementWithOptions_);
  if (InstanceMethod)
  {
    kUIScrollViewScrollVerticalStorageKey_block_invoke_6_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilityLastOpaqueElementWithOptions_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_accessibilityFocusAbsoluteFirstLastOpaqueElement:(BOOL)a3 technology:(id)a4 honorsGroups:(BOOL)a5 shouldAlwaysScroll:(BOOL)a6
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v13 = a5;
  v12 = a6;
  [(UIScrollViewAccessibility *)v17 _axSetAlwaysScrollsContentIntoView:a6];
  v10.receiver = v17;
  v10.super_class = UIScrollViewAccessibility;
  v11 = [(UIScrollViewAccessibility *)&v10 _accessibilityFocusAbsoluteFirstLastOpaqueElement:v15 technology:location honorsGroups:a5 shouldAlwaysScroll:a6];
  [(UIScrollViewAccessibility *)v17 _axSetAlwaysScrollsContentIntoView:0];
  v9 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);

  return v9;
}

- (CGPoint)_accessibilityContentOffset
{
  [(UIScrollViewAccessibility *)self contentOffset:a2];
  result.y = v3;
  result.x = v2;
  return result;
}

- (uint64_t)_axScrollViewPagingEnabled
{
  if (a1)
  {
    v4 = [a1 _accessibilityPagingEnabled];
    *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    if (v4)
    {
      v3 = [a1 _accessibilityPagingEnabled];
      v6 = [v3 BOOLValue] & 1;
      MEMORY[0x29EDC9740](v3);
    }

    else
    {
      v6 = [a1 isPagingEnabled] & 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4
{
  v129 = *MEMORY[0x29EDCA608];
  v121 = a3;
  v120 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  [(UIScrollViewAccessibility *)v120 visibleBounds];
  recta.origin.x = v4;
  recta.origin.y = v5;
  recta.size.width = v6;
  recta.size.height = v7;
  oslog = AXLogScrollToVisible();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    log = oslog;
    v76 = type;
    v78 = NSStringFromCGRect(v121);
    v73 = MEMORY[0x29EDC9748](v78);
    v115 = v73;
    v74 = location[0];
    v77 = NSStringFromCGRect(recta);
    v114 = MEMORY[0x29EDC9748](v77);
    __os_log_helper_16_2_3_8_66_8_66_8_66(v128, v73, v74, v114);
    _os_log_debug_impl(&dword_29C4D6000, log, v76, "Original frame %{public}@, view %{public}@, scroller bounds %{public}@", v128, 0x20u);
    MEMORY[0x29EDC9740](v77);
    MEMORY[0x29EDC9740](v78);
    objc_storeStrong(&v114, 0);
    objc_storeStrong(&v115, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (location[0] == v120)
  {
    v113 = AXLogScrollToVisible();
    v112 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      v71 = v113;
      v72 = v112;
      __os_log_helper_16_0_0(v111);
      _os_log_debug_impl(&dword_29C4D6000, v71, v72, "Trying to scroll view within itself.  Doing nothing.", v111, 2u);
    }

    objc_storeStrong(&v113, 0);
  }

  else
  {
    UIAccessibilityFrameToBounds();
    v110.origin.x = v8;
    v110.origin.y = v9;
    v110.size.width = v10;
    v110.size.height = v11;
    v121 = v110;
  }

  v109 = AXLogScrollToVisible();
  v108 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
  {
    v68 = v109;
    v69 = v108;
    v70 = NSStringFromCGRect(v121);
    v107 = MEMORY[0x29EDC9748](v70);
    __os_log_helper_16_2_2_8_66_8_66(v127, v107, v120);
    _os_log_debug_impl(&dword_29C4D6000, v68, v69, "Will scroll to frame %{public}@ in bounds for %{public}@", v127, 0x16u);
    MEMORY[0x29EDC9740](v70);
    objc_storeStrong(&v107, 0);
  }

  objc_storeStrong(&v109, 0);
  v106 = 0;
  [(UIScrollViewAccessibility *)v120 _accessibilityVisibleContentInset];
  insets.top = v12;
  insets.left = v13;
  insets.bottom = v14;
  insets.right = v15;
  v104 = AXLogScrollToVisible();
  v103 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    v65 = v104;
    v66 = v103;
    v67 = NSStringFromUIEdgeInsets(insets);
    v102 = MEMORY[0x29EDC9748](v67);
    __os_log_helper_16_2_1_8_66(v126, v102);
    _os_log_debug_impl(&dword_29C4D6000, v65, v66, "Visible content inset is %{public}@", v126, 0xCu);
    MEMORY[0x29EDC9740](v67);
    objc_storeStrong(&v102, 0);
  }

  objc_storeStrong(&v104, 0);
  insets.top = CGFloatMin_0(0.0, -insets.top);
  insets.left = CGFloatMin_0(0.0, -insets.left);
  insets.bottom = CGFloatMin_0(0.0, -insets.bottom);
  insets.right = CGFloatMin_0(0.0, -insets.right);
  origin = v121.origin;
  v100.origin.x = UIEdgeInsetsInsetRect_0(v121.origin.x, v121.origin.y, v121.size.width, v121.size.height, insets.top, insets.left);
  v100.origin.y = v16;
  v100.size.width = v17;
  v100.size.height = v18;
  v121 = v100;
  if (([(UIScrollViewAccessibility *)v120 _axScrollViewPagingEnabled]& 1) == 0)
  {
    v99 = CGRectInset(v121, -*&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding, -*&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding);
    v121 = v99;
    v98 = CGRectInset(recta, *&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding, *&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding);
    recta = v98;
  }

  MinX = CGRectGetMinX(v121);
  if (MinX >= CGRectGetMinX(recta) || (v62 = CGRectGetMinX(v121), v19 = CGRectGetMinX(recta), v63 = 1, AXCGFAbs_0(v62 - v19) < 0.001))
  {
    MinY = CGRectGetMinY(v121);
    if (MinY >= CGRectGetMinY(recta) || (v60 = CGRectGetMinY(v121), v20 = CGRectGetMinY(recta), v63 = 1, AXCGFAbs_0(v60 - v20) < 0.001))
    {
      MaxX = CGRectGetMaxX(v121);
      if (MaxX <= CGRectGetMaxX(recta) || (v58 = CGRectGetMaxX(v121), v21 = CGRectGetMaxX(recta), v63 = 1, AXCGFAbs_0(v58 - v21) < 0.001))
      {
        MaxY = CGRectGetMaxY(v121);
        v57 = 0;
        if (MaxY > CGRectGetMaxY(recta))
        {
          v55 = CGRectGetMaxY(v121);
          v22 = CGRectGetMaxY(recta);
          v57 = AXCGFAbs_0(v55 - v22) >= 0.001;
        }

        v63 = v57;
      }
    }
  }

  v106 = v63;
  v97 = AXLogScrollToVisible();
  v96 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
  {
    v52 = v97;
    v53 = v96;
    v54 = NSStringFromCGRect(v121);
    v95 = MEMORY[0x29EDC9748](v54);
    __os_log_helper_16_2_2_8_66_4_0(v125, v95, v106 & 1);
    _os_log_debug_impl(&dword_29C4D6000, v52, v53, "After insetting, frame is %{public}@.  Should scroll: %i", v125, 0x12u);
    MEMORY[0x29EDC9740](v54);
    objc_storeStrong(&v95, 0);
  }

  objc_storeStrong(&v97, 0);
  if ((v106 & 1) == 0)
  {
    goto LABEL_47;
  }

  [(UIScrollViewAccessibility *)v120 bounds];
  v93 = CGRectInset(v130, *&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding, *&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding);
  rect1 = v93;
  if (CGRectContainsRect(v93, v121))
  {
    v82 = AXLogScrollToVisible();
    v81 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      v32 = v82;
      v33 = v81;
      v35 = NSStringFromCGRect(rect1);
      v31 = MEMORY[0x29EDC9748](v35);
      v80 = v31;
      v34 = NSStringFromCGRect(v121);
      v79 = MEMORY[0x29EDC9748](v34);
      __os_log_helper_16_2_2_8_66_8_66(v123, v31, v79);
      _os_log_debug_impl(&dword_29C4D6000, v32, v33, "Real bounds %{public}@ already contained frame %{public}@, so doing nothing.", v123, 0x16u);
      MEMORY[0x29EDC9740](v34);
      MEMORY[0x29EDC9740](v35);
      objc_storeStrong(&v79, 0);
      objc_storeStrong(&v80, 0);
    }

    objc_storeStrong(&v82, 0);
LABEL_47:
    v122 = 0;
    v83 = 1;
    goto LABEL_48;
  }

  [(UIScrollViewAccessibility *)v120 contentOffset];
  point.x = v23;
  point.y = v24;
  if ([(UIScrollViewAccessibility *)v120 _axShouldScrollToAlignWithPage])
  {
    v91.x = [(UIScrollViewAccessibility *)v120 _axPageAlignedContentOffsetForPoint:origin.x forValidation:origin.y];
    v91.y = v25;
    point = v91;
    v90 = AXLogScrollToVisible();
    v89 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      v50 = v90;
      v51 = v89;
      __os_log_helper_16_0_0(v88);
      _os_log_debug_impl(&dword_29C4D6000, v50, v51, "Aligning content offset for page.", v88, 2u);
    }

    objc_storeStrong(&v90, 0);
    goto LABEL_41;
  }

  Width = UIRectGetWidth(v121.origin.x, v121.origin.y, v121.size.width);
  if (Width > UIRectGetWidth(rect1.origin.x, rect1.origin.y, rect1.size.width))
  {
    goto LABEL_35;
  }

  v48 = UIRectGetMaxX(v121.origin.x, v121.origin.y, v121.size.width);
  if (v48 >= UIRectGetMaxX(rect1.origin.x, rect1.origin.y, rect1.size.width))
  {
    v47 = UIRectGetMaxX(v121.origin.x, v121.origin.y, v121.size.width);
    point.x = v47 - UIRectGetWidth(rect1.origin.x, rect1.origin.y, rect1.size.width);
    goto LABEL_36;
  }

  UIRectGetMinX();
  v46 = v26;
  UIRectGetMinX();
  if (v46 < v27)
  {
LABEL_35:
    UIRectGetMinX();
    point.x = v28;
  }

LABEL_36:
  Height = UIRectGetHeight(v121.origin.x, v121.origin.y, v121.size.width, v121.size.height);
  if (Height > UIRectGetHeight(rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height))
  {
    goto LABEL_40;
  }

  v44 = UIRectGetMaxY(v121.origin.x, v121.origin.y, v121.size.width, v121.size.height);
  if (v44 < UIRectGetMaxY(rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height))
  {
    v42 = UIRectGetMinY(v121.origin.x, v121.origin.y);
    if (v42 >= UIRectGetMinY(rect1.origin.x, rect1.origin.y))
    {
      goto LABEL_41;
    }

LABEL_40:
    point.y = UIRectGetMinY(v121.origin.x, v121.origin.y);
    goto LABEL_41;
  }

  v43 = UIRectGetMaxY(v121.origin.x, v121.origin.y, v121.size.width, v121.size.height);
  point.y = v43 - UIRectGetHeight(rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height);
LABEL_41:
  v87 = AXLogScrollToVisible();
  v86 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
  {
    v38 = v87;
    v39 = v86;
    v41 = NSStringFromCGPoint(point);
    v37 = MEMORY[0x29EDC9748](v41);
    v85 = v37;
    v40 = NSStringFromCGRect(rect1);
    v84 = MEMORY[0x29EDC9748](v40);
    __os_log_helper_16_2_2_8_66_8_66(v124, v37, v84);
    _os_log_debug_impl(&dword_29C4D6000, v38, v39, "Computed content offset: %{public}@.  Bounds: %{public}@", v124, 0x16u);
    MEMORY[0x29EDC9740](v40);
    MEMORY[0x29EDC9740](v41);
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, 0);
  }

  objc_storeStrong(&v87, 0);
  v36 = v120;
  v29 = [(UIScrollViewAccessibility *)v120 _accessibilityShouldAnimateScrollToVisible];
  [(UIScrollViewAccessibility *)v36 accessibilityApplyScrollContent:0 sendScrollStatus:v29 animated:point];
  v122 = 1;
  v83 = 1;
LABEL_48:
  objc_storeStrong(location, 0);
  return v122 & 1;
}

- (CGFloat)_axPageAlignedContentOffsetForPoint:(double)a3 forValidation:(double)a4
{
  v42 = *MEMORY[0x29EDCA608];
  v32 = a3;
  v33 = a4;
  v31 = a1;
  v30 = a2;
  if (a1)
  {
    [v31 _axPageSize];
    v28 = v4;
    v29 = v5;
    v27 = MEMORY[0x29EDC9748](v31);
    [v27 _pagingOrigin];
    point.x = v6;
    point.y = v7;
    v34 = point;
    oslog = AXLogScrollToVisible();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      log = oslog;
      v15 = type;
      v16 = NSStringFromCGPoint(point);
      v23 = MEMORY[0x29EDC9748](v16);
      __os_log_helper_16_2_1_8_64(v41, v23);
      _os_log_debug_impl(&dword_29C4D6000, log, v15, "Paging origin: %@", v41, 0xCu);
      MEMORY[0x29EDC9740](v16);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&oslog, 0);
    v8 = 0.00001;
    if ((v30 & 1) == 0)
    {
      v8 = 0.02;
    }

    v22 = (v32 - point.x) / v28;
    v21 = (v33 - point.y) / v29;
    v38 = v22;
    if (ceil(v22) - v22 >= v8)
    {
      v40 = (v32 - point.x) / v28;
      v13 = floor(v22);
    }

    else
    {
      v37 = (v32 - point.x) / v28;
      v13 = ceil(v22);
    }

    v34.x = v34.x + v13 * v28;
    v36 = (v33 - point.y) / v29;
    if (ceil(v21) - v21 >= v8)
    {
      v39 = (v33 - point.y) / v29;
      v12 = floor(v21);
    }

    else
    {
      v35 = (v33 - point.y) / v29;
      v12 = ceil(v21);
    }

    v34.y = v34.y + v12 * v29;
    v19 = [(UIScrollViewAccessibility *)v31 _axMinimumContentOffset];
    v20 = v9;
    v17 = [(UIScrollViewAccessibility *)v31 _axMaximumContentOffset];
    v18 = v10;
    v34.x = CGFloatMinMax_0(v34.x, v19, v17);
    v34.y = CGFloatMinMax_0(v34.y, v20, v18);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v34 = 0;
  }

  return v34.x;
}

- (int64_t)accessibilityContainerType
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UIScrollViewAccessibility *)self storedAccessibilityContainerType];
  if (location[0])
  {
    v4 = [location[0] integerValue];
  }

  else
  {
    v4 = 12;
  }

  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_accessibilityShouldAnimateScroll
{
  if (a1)
  {
    v2 = [MEMORY[0x29EDC7938] sharedApplication];
    v3 = [v2 applicationState];
    MEMORY[0x29EDC9740](v2);
    return v3 != 2;
  }

  else
  {
    return 0;
  }
}

- (double)_accessibilityScrollWidthDistance
{
  [(UIScrollViewAccessibility *)self visibleBounds];
  v6 = v2;
  [(UIScrollViewAccessibility *)self _accessibilityVisibleContentInset];
  return v6 - v3 - v4;
}

- (double)_accessibilityScrollHeightDistance
{
  [(UIScrollViewAccessibility *)self visibleBounds];
  v6 = v2;
  [(UIScrollViewAccessibility *)self _accessibilityVisibleContentInset];
  return v6 - v3 - v4;
}

- (void)_accessibilityCurrentPage:(uint64_t *)a3 totalPages:(int)a4 type:
{
  if (a1)
  {
    v8 = 1;
    v6 = [a1 _accessibilityValueForKey:@"kUIScrollViewScrollVerticalStorageKey"];
    v7 = [v6 intValue];
    *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    if (v7)
    {
      v8 = v7;
    }

    if (v8 == 3 || a4 == 3)
    {
      if (a4 == 2 || a4 == 1)
      {
        v8 = a4;
      }

      else
      {
        if ([a1 _accessibilityScrollStatusPrefersVertical])
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }

        v8 = v5;
      }
    }

    [(UIScrollViewAccessibility *)a1 _accessibilityCurrentPage:a2 totalPages:a3 forVerticalDirection:v8 == 1];
  }
}

- (void)_accessibilityCurrentPage:(uint64_t *)a3 totalPages:(char)a4 forVerticalDirection:
{
  if (a1)
  {
    [a1 visibleBounds];
    v28 = v4;
    v29 = v5;
    v30 = v6;
    v31 = v7;
    [a1 _accessibilityScrollHeightDistance];
    v27 = v8;
    [a1 _accessibilityScrollWidthDistance];
    v26 = v9;
    [a1 _accessibilityContentSize];
    v24 = v10;
    v25 = v11;
    [a1 _accessibilityVisibleContentInset];
    v23.origin.x = UIEdgeInsetsInsetRect_0(v28, v29, v30, v31, v12, v13);
    v23.origin.y = v14;
    v23.size.width = v15;
    v23.size.height = v16;
    if ((a4 & 1) == 0 || v25 == v27)
    {
      if (v24 > v26)
      {
        v19 = v24 / v26;
        v32 = vcvtps_s32_f32(v19);
        v21 = CGRectGetMidX(v23) / v24;
        if (v21 > 1.0)
        {
          v21 = 1.0;
        }

        v20 = v21 * v32;
        v33 = vcvtms_s32_f32(v20) + 1;
      }

      else
      {
        v32 = 1;
        v33 = 1;
      }
    }

    else if (v25 > v27)
    {
      v17 = v25 / v27;
      v32 = vcvtps_s32_f32(v17);
      v22 = CGRectGetMidY(v23) / v25;
      if (v22 > 1.0)
      {
        v22 = 1.0;
      }

      v18 = v22 * v32;
      v33 = vcvtms_s32_f32(v18) + 1;
    }

    else
    {
      v32 = 1;
      v33 = 1;
    }

    if (a3)
    {
      *a3 = v32;
    }

    if (a2)
    {
      *a2 = v33;
    }
  }
}

- (double)_axMinimumContentOffset
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 safeCGPointForKey:@"_minimumContentOffset"];
  return v1;
}

- (double)_axMaximumContentOffset
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 safeCGPointForKey:@"_maximumContentOffset"];
  return v1;
}

- (id)_accessibilityFindRefreshControl
{
  v16 = *MEMORY[0x29EDCA608];
  v13 = a1;
  if (a1)
  {
    location = [v13 safeValueForKey:@"_refreshControl"];
    if (!location)
    {
      v11 = [v13 safeValueForKey:@"subviews"];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v11);
      v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
      if (v8)
      {
        v4 = *__b[2];
        v5 = 0;
        v6 = v8;
        while (1)
        {
          v3 = v5;
          if (*__b[2] != v4)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(__b[1] + 8 * v5);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          ++v5;
          if (v3 + 1 >= v6)
          {
            v5 = 0;
            v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
            if (!v6)
            {
              goto LABEL_12;
            }
          }
        }

        objc_storeStrong(&location, v10);
      }

LABEL_12:
      MEMORY[0x29EDC9740](obj);
      objc_storeStrong(&v11, 0);
    }

    v14 = MEMORY[0x29EDC9748](location);
    objc_storeStrong(&location, 0);
  }

  else
  {
    v14 = 0;
  }

  v1 = v14;

  return v1;
}

- (void)_scrollViewDidEndDeceleratingForDelegate
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v2 _scrollViewDidEndDeceleratingForDelegate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74C8], 0);
}

- (void)_notifyDidScroll
{
  v18 = self;
  v17 = a2;
  v16.receiver = self;
  v16.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v16 _notifyDidScroll];
  v15 = 0;
  v9 = 0;
  if (_AXSSpeakThisEnabled())
  {
    v9 = 0;
    if (_AXSQuickSpeakHighlightTextEnabled())
    {
      v9 = _AXSSpeakThisHighlightVisible() != 0;
    }
  }

  v15 = v9;
  v14 = 0;
  if (UIAccessibilityIsVoiceOverRunning() || _AXSAuditInspectionModeEnabled() || _AXSAssistiveTouchEnabled() || v15)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75C0], 0);
  }

  location = MEMORY[0x29EDC9748](v18);
  if ([location isFirstResponder])
  {
    v12 = [(UIScrollViewAccessibility *)v18 _accessibilityBoundaryEdges];
    v7 = [(UIScrollViewAccessibility *)v18 _axLastEdgeBoundaries];
    v10 = 0;
    v8 = 1;
    if (v7)
    {
      v11 = [(UIScrollViewAccessibility *)v18 _axLastEdgeBoundaries];
      v10 = 1;
      v8 = v12 != [v11 unsignedIntegerValue];
    }

    if (v10)
    {
      MEMORY[0x29EDC9740](v11);
    }

    *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    if (v8)
    {
      v5 = v18;
      v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{v12, v2}];
      [(UIScrollViewAccessibility *)v5 _axSetLastEdgeBoundaries:?];
      *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      if (v12)
      {
        v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{v12, v3}];
        UIAccessibilityPostNotification(0x434u, v4);
        MEMORY[0x29EDC9740](v4);
      }
    }
  }

  objc_storeStrong(&location, 0);
}

- (unint64_t)_accessibilityBoundaryEdges
{
  [(UIScrollViewAccessibility *)self contentOffset];
  v11 = v2;
  v12 = v3;
  v9 = [(UIScrollViewAccessibility *)self _axMinimumContentOffset];
  v10 = v4;
  v8 = [(UIScrollViewAccessibility *)self _axMaximumContentOffset];
  v7 = v12 <= v10;
  if (v12 >= v5)
  {
    v7 |= 4uLL;
  }

  if (v11 <= v9)
  {
    v7 |= 2uLL;
  }

  if (v11 >= v8)
  {
    v7 |= 8uLL;
  }

  return v7;
}

- (id)_accessibilityDelegateScrollStatus
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [(UIScrollViewAccessibility *)self _accessibilityRetrieveDelegate];
  v6 = MEMORY[0x29EDC9748](v8);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ((location = [v7[0] accessibilityAttributedScrollStatusForScrollView:v6]) == 0 ? (v4 = 0) : (v9 = objc_msgSend(objc_alloc(MEMORY[0x29EDBD7E8]), "initWithCFAttributedString:", location), v4 = 1), objc_storeStrong(&location, 0), !v4))
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v7[0] accessibilityScrollStatusForScrollView:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  v2 = v9;

  return v2;
}

- (double)_axAllowedPagingOverlap
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = [a1 _accessibilityAllowedPagingOverlap];
  *&v1 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 0.0;
  }

  v4 = [a1 _accessibilityAllowedPagingOverlap];
  [v4 doubleValue];
  v7 = v2;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (id)_accessibilityElementsFilteredByPagingScrollView:(void *)a1
{
  v43 = *MEMORY[0x29EDCA608];
  v40 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v40)
  {
    v37 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(location, "count")}];
    if (-[UIScrollViewAccessibility _axScrollViewPagingEnabled](v40) & 1) == 0 || ([v40 _accessibilityScrollAcrossPageBoundaries])
    {
      v41 = 0;
      v38 = 1;
    }

    else
    {
      v36 = 0;
      v29 = [v40 _accessibilityPagingEnabled];
      *&v2 = MEMORY[0x29EDC9740](v29).n128_u64[0];
      if (v29)
      {
        v28 = [v40 _accessibilityPagingEnabled];
        v36 = [v28 BOOLValue];
        MEMORY[0x29EDC9740](v28);
      }

      [v40 visibleBounds];
      v35.origin.x = v3;
      v35.origin.y = v4;
      v35.size.width = v5;
      v35.size.height = v6;
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](location);
      v27 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
      if (v27)
      {
        v23 = *__b[2];
        v24 = 0;
        v25 = v27;
        while (1)
        {
          v22 = v24;
          if (*__b[2] != v23)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(__b[1] + 8 * v24);
          v21 = v34;
          [v34 bounds];
          [v21 convertRect:v40 toView:{v7, v8, v9, v10}];
          r2.origin.x = v11;
          r2.origin.y = v12;
          r2.size.width = v13;
          r2.size.height = v14;
          if (v36)
          {
            v45 = CGRectIntersection(v35, r2);
            height = v45.size.height;
            if (v45.size.width >= [(UIScrollViewAccessibility *)v40 _axAllowedPagingOverlap]&& height >= [(UIScrollViewAccessibility *)v40 _axAllowedPagingOverlap])
            {
              [v37 addObject:{v34, height}];
            }
          }

          else
          {
            [v34 frame];
            rect2.origin.x = v15;
            rect2.origin.y = v16;
            rect2.size.width = v17;
            rect2.size.height = v18;
            if (CGRectIntersectsRect(v35, rect2))
            {
              [v37 addObject:v34];
            }
          }

          ++v24;
          if (v22 + 1 >= v25)
          {
            v24 = 0;
            v25 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
            if (!v25)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      v41 = MEMORY[0x29EDC9748](v37);
      v38 = 1;
    }

    objc_storeStrong(&v37, 0);
  }

  else
  {
    v41 = 0;
    v38 = 1;
  }

  objc_storeStrong(&location, 0);
  v19 = v41;

  return v19;
}

- (id)_accessibilitySubviews
{
  v11 = self;
  v10[1] = a2;
  v8 = [(UIScrollViewAccessibility *)self subviews];
  v10[0] = [(UIScrollViewAccessibility *)self _accessibilityElementsFilteredByPagingScrollView:v8];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (!v10[0])
  {
    v9.receiver = v11;
    v9.super_class = UIScrollViewAccessibility;
    v3 = [(UIScrollViewAccessibility *)&v9 _accessibilitySubviews];
    v4 = v10[0];
    v10[0] = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v6 = MEMORY[0x29EDC9748](v10[0]);
  objc_storeStrong(v10, 0);

  return v6;
}

- (int64_t)_accessibilityPageCount
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = 0;
  v3 = 0;
  [(UIScrollViewAccessibility *)self _accessibilityCurrentPage:v4 totalPages:3 type:?];
  return v4[0];
}

- (int64_t)_accessibilityPageIndex
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = 0;
  v3 = 0;
  [(UIScrollViewAccessibility *)self _accessibilityCurrentPage:v4 totalPages:3 type:?];
  return v3;
}

- (void)_accessibilitySetScrollStatus:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIScrollViewAccessibility *)v4 _accessibilitySetValue:location[0] forKey:@"accessibilityScrollStatus" storageMode:0];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityScrollStatus
{
  v21 = self;
  v20[1] = a2;
  v20[0] = [(UIScrollViewAccessibility *)self _accessibilityValueForKey:@"accessibilityScrollStatus"];
  if (![v20[0] length])
  {
    v2 = [(UIScrollViewAccessibility *)v21 _accessibilityDelegateScrollStatus];
    v3 = v20[0];
    v20[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  if (![v20[0] length])
  {
    v19 = 0;
    v18 = 0;
    v12 = [(UIScrollViewAccessibility *)v21 _accessibilityValueForKey:?];
    v13 = [v12 intValue];
    *&v4 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    [(UIScrollViewAccessibility *)v21 _accessibilitySetIntegerValue:3 forKey:@"kUIScrollViewScrollVerticalStorageKey", v4];
    [(UIScrollViewAccessibility *)v21 _accessibilityCurrentPage:&v19 totalPages:v13 type:?];
    v14 = MEMORY[0x29EDBA0F8];
    v17 = [(UIScrollViewAccessibility *)v21 _accessibilityScrollStatusFormatString];
    v16 = AXFormatInteger();
    v15 = AXFormatInteger();
    v5 = [v14 stringWithFormat:v17, v16, v15];
    v6 = v20[0];
    v20[0] = v5;
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v15);
    MEMORY[0x29EDC9740](v16);
    MEMORY[0x29EDC9740](v17);
    if (([(UIScrollViewAccessibility *)v21 _axScrollViewPagingEnabled]& 1) != 0 && v13 == 2)
    {
      v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v20[0]];
      v8 = v20[0];
      v20[0] = v7;
      *&v9 = MEMORY[0x29EDC9740](v8).n128_u64[0];
      [v20[0] setAttribute:MEMORY[0x29EDB8EB0] forKey:{*MEMORY[0x29EDBDB20], v9}];
    }

    [(UIScrollViewAccessibility *)v21 _accessibilitySetIntegerValue:v13 forKey:@"kUIScrollViewScrollVerticalStorageKey"];
  }

  v11 = MEMORY[0x29EDC9748](v20[0]);
  objc_storeStrong(v20, 0);

  return v11;
}

- (void)_accessibilitySendScrollStatus
{
  argument[2] = self;
  argument[1] = a2;
  argument[0] = [(UIScrollViewAccessibility *)self _accessibilityScrollStatus];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], argument[0]);
  objc_storeStrong(argument, 0);
}

- (void)_accessibilityZoomAtPoint:(CGPoint)a3 zoomIn:(BOOL)a4
{
  v19 = a3;
  v18 = self;
  v17 = a2;
  v16 = a4;
  v15 = MEMORY[0x29EDC9748](self);
  [v15 maximumZoomScale];
  v13 = v4;
  [v15 minimumZoomScale];
  v14 = (v13 - v5) / 10.0;
  if (!v16)
  {
    v14 = -v14;
  }

  v7 = v15;
  [v15 zoomScale];
  [v7 setZoomScale:v6 + v14];
  [v15 zoomScale];
  [v15 minimumZoomScale];
  notification = *MEMORY[0x29EDC7EA8];
  v8 = MEMORY[0x29EDBA0F8];
  v12 = accessibilityLocalizedString(@"zoom.level");
  v11 = AXFormatInteger();
  v10 = [v8 stringWithFormat:v12, v11];
  UIAccessibilityPostNotification(notification, v10);
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  MEMORY[0x29EDC9740](v12);
  objc_storeStrong(&v15, 0);
}

- (uint64_t)_accessibilityCanHandleContentPullDown
{
  if (a1)
  {
    if ((_accessibilityCanHandleContentPullDown__kAXCanHandleContentPullDownInitialized & 1) == 0)
    {
      v3 = [MEMORY[0x29EDB9F48] mainBundle];
      v2 = [v3 bundleIdentifier];
      _accessibilityCanHandleContentPullDown__kAXCanHandleContentPullDown = ([v2 hasPrefix:@"com.apple."] ^ 1) & 1;
      MEMORY[0x29EDC9740](v2);
      MEMORY[0x29EDC9740](v3);
      _accessibilityCanHandleContentPullDown__kAXCanHandleContentPullDownInitialized = 1;
    }

    v4 = _accessibilityCanHandleContentPullDown__kAXCanHandleContentPullDown & 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)_axManipulateWithRefreshControl:(void *)a1
{
  v21 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v21)
  {
    [location beginRefreshing];
    [location sendActionsForControlEvents:4096];
    v12 = v21;
    [v21 contentOffset];
    v18[1] = v2;
    v18[2] = v3;
    v13 = [location safeValueForKey:@"_refreshControlHeight"];
    [v13 floatValue];
    CGPointMake_6();
    v18[3] = v4;
    v18[4] = v5;
    [v12 setContentOffset:1 animated:{*&v4, *&v5}];
    *&v6 = MEMORY[0x29EDC9740](v13).n128_u64[0];
    v18[0] = [location _accessibilityAXAttributedLabel];
    v17 = [location _accessibilityAXAttributedHint];
    if (!v18[0])
    {
      v11 = [location attributedTitle];
      v18[0] = [v11 string];
      MEMORY[0x29EDC9740](0);
      MEMORY[0x29EDC9740](v11);
    }

    v7 = __UIAXStringForVariables();
    v8 = v18[0];
    v18[0] = v7;
    *&v9 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    notification = *MEMORY[0x29EDC7EA8];
    v15 = 0;
    if ([v18[0] length])
    {
      UIAccessibilityPostNotification(notification, v18[0]);
    }

    else
    {
      v16 = accessibilityLocalizedString(@"refreshing.content");
      v15 = 1;
      UIAccessibilityPostNotification(notification, v16);
    }

    if (v15)
    {
      MEMORY[0x29EDC9740](v16);
    }

    v14 = MEMORY[0x29EDC9748](location);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(v18, 0);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_accessibilityContentOffsetForScrollDirection:(int)a3 newContentOffset:(CGPoint *)a4 distanceMultiplier:(double)a5
{
  v71 = self;
  v70 = a2;
  v69 = a3;
  v68 = a4;
  v67 = a5;
  [(UIScrollViewAccessibility *)self visibleBounds];
  v66.origin.x = v5;
  v66.origin.y = v6;
  v66.size.width = v7;
  v66.size.height = v8;
  [(UIScrollViewAccessibility *)v71 _accessibilityScrollHeightDistance];
  v65 = v9 * v67;
  [(UIScrollViewAccessibility *)v71 _accessibilityScrollWidthDistance];
  v64 = v10 * v67;
  if (v69)
  {
    if (v69 == 1)
    {
      [(UIScrollViewAccessibility *)v71 _accessibilityContentSize];
      v47 = v18;
      if (v18 == v66.size.height)
      {
        v72 = 0;
        return v72 & 1;
      }

      if ([(UIScrollViewAccessibility *)v71 _accessibilityUseContentInset])
      {
        [(UIScrollViewAccessibility *)v71 _accessibilityContentInset];
        *&v45 = v19;
        *&v46 = v20;
      }

      else
      {
        v45 = *MEMORY[0x29EDC80C8];
        v46 = *(MEMORY[0x29EDC80C8] + 16);
      }

      if (v47 + *&v45 + *&v46 > v66.size.height)
      {
        CGRectGetMinY(v66);
        [(UIScrollViewAccessibility *)v71 _accessibilityUseContentInset];
        CGPointMake_6();
        v44.x = v21;
        v44.y = v22;
        *v68 = v44;
      }
    }

    else if (v69 == 2)
    {
      [(UIScrollViewAccessibility *)v71 _accessibilityContentSize];
      v43 = v23;
      if (v23 == v66.size.width)
      {
        v72 = 0;
        return v72 & 1;
      }

      if ([(UIScrollViewAccessibility *)v71 _accessibilityUseContentInset])
      {
        [(UIScrollViewAccessibility *)v71 _accessibilityContentInset];
        *(&v41 + 1) = v24;
        *(&v42 + 1) = v25;
      }

      else
      {
        v41 = *MEMORY[0x29EDC80C8];
        v42 = *(MEMORY[0x29EDC80C8] + 16);
      }

      if (v43 + *(&v41 + 1) + *(&v42 + 1) > v66.size.width)
      {
        CGRectGetMinX(v66);
        [(UIScrollViewAccessibility *)v71 _accessibilityUseContentInset];
        CGPointMake_6();
        v40.x = v26;
        v40.y = v27;
        *v68 = v40;
      }
    }

    else
    {
      [(UIScrollViewAccessibility *)v71 _accessibilityContentSize];
      if (v28 == v66.size.width)
      {
        v72 = 0;
        return v72 & 1;
      }

      if ([(UIScrollViewAccessibility *)v71 _accessibilityUseContentInset])
      {
        [(UIScrollViewAccessibility *)v71 _accessibilityContentInset];
      }

      CGPointMake_6();
      v39.x = v29;
      v39.y = v30;
      *v68 = v39;
    }

    goto LABEL_44;
  }

  [(UIScrollViewAccessibility *)v71 _accessibilityContentSize];
  v62 = v11;
  v63 = v12;
  if (v12 == v66.size.height)
  {
    v72 = 0;
    return v72 & 1;
  }

  v61 = v66.origin.y - v65;
  if (v66.origin.y >= 5.0)
  {
    goto LABEL_17;
  }

  v60 = [(UIScrollViewAccessibility *)v71 _accessibilityFindRefreshControl];
  if (v60)
  {
    [(UIScrollViewAccessibility *)v71 _axManipulateWithRefreshControl:v60];
    p_x = &v68->x;
    v53 = 0;
    v54 = &v53;
    v55 = 0x10000000;
    v56 = 48;
    v57 = &unk_29C6A1FE6;
    v58 = 0;
    v59 = 0;
    v52[1] = &v53;
    v52[0] = MEMORY[0x29EDC9748](v71);
    AXPerformSafeBlock();
    *p_x = *(v54 + 2);
    objc_storeStrong(v52, 0);
    _Block_object_dispose(&v53, 8);
    if (__CGPointEqualToPoint_1(v68->x, v68->y, *MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)))
    {
      v37 = &v68->x;
      [(UIScrollViewAccessibility *)v71 contentOffset];
      *&v51 = v13;
      *(&v51 + 1) = v14;
      *v37 = v51;
    }

    v72 = 1;
    v50 = 1;
  }

  else if (([(UIScrollViewAccessibility *)v71 _accessibilityCanHandleContentPullDown]& 1) != 0 && ([(UIScrollViewAccessibility *)v71 safeBoolForKey:@"bouncesZoom"]& 1) != 0)
  {
    [UIScrollViewAccessibility _axHandleScrollViewPullDown];
    v72 = 1;
    v50 = 1;
  }

  else
  {
    v50 = 0;
  }

  objc_storeStrong(&v60, 0);
  if (!v50)
  {
LABEL_17:
    v49 = 0.0;
    if ([(UIScrollViewAccessibility *)v71 _accessibilityUseContentInset])
    {
      [(UIScrollViewAccessibility *)v71 _accessibilityContentInset];
      v49 = 0.0 - v15;
    }

    if (v61 >= v49)
    {
      v36 = v61;
    }

    else
    {
      v36 = v49;
    }

    v61 = v36;
    v35 = &v68->x;
    CGPointMake_6();
    *&v48 = v16;
    *(&v48 + 1) = v17;
    *v35 = v48;
LABEL_44:
    [(UIScrollViewAccessibility *)v71 contentOffset];
    v34 = 0;
    if (AXCGFAbs_0(v31 - v68->x) < 0.001)
    {
      [(UIScrollViewAccessibility *)v71 contentOffset];
      v34 = AXCGFAbs_0(v32 - v68->y) < 0.001;
    }

    v72 = !v34;
  }

  return v72 & 1;
}

__n128 __111__UIScrollViewAccessibility__accessibilityContentOffsetForScrollDirection_newContentOffset_distanceMultiplier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _animatedTargetOffset];
  v5.n128_u64[0] = v1;
  v5.n128_u64[1] = v2;
  result = v5;
  *(*(*(a1 + 40) + 8) + 32) = v5;
  return result;
}

- (BOOL)_accessibilityScrollPageInDirection:(int)a3
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  if (a3)
  {
    switch(a3)
    {
      case 1:
        v19 = 2006;
        break;
      case 2:
        v19 = 2009;
        break;
      case 3:
        v19 = 2008;
        break;
    }
  }

  else
  {
    v19 = 2007;
  }

  if (([(UIScrollViewAccessibility *)v22 _accessibilityHasActionBlockForKey:v19]& 1) == 0 || ((v18 = 0, v17 = 0, v16 = 0, v15 = 0, [(UIScrollViewAccessibility *)v22 _accessibilityActionBlock:&v16 andValue:&v15 forKey:v19], v3 = MEMORY[0x29ED3E4C0](v16), v4 = v18, v18 = v3, MEMORY[0x29EDC9740](v4), objc_storeStrong(&v17, v15), !v18) ? (v14 = 0) : (v23 = (*(v18 + 2))(v18, v17) & 1, v14 = 1), objc_storeStrong(&v17, 0), objc_storeStrong(&v18, 0), !v14))
  {
    v11 = 1;
    if (v20)
    {
      v11 = v20 == 1;
    }

    v13 = v11;
    v9 = v22;
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v10 = [MEMORY[0x29EDBA070] numberWithInt:v5];
    [UIScrollViewAccessibility _accessibilitySetRetainedValue:v9 forKey:"_accessibilitySetRetainedValue:forKey:"];
    *&v6 = MEMORY[0x29EDC9740](v10).n128_u64[0];
    if ([(UIScrollViewAccessibility *)v22 _accessibilityScrollingEnabled])
    {
      v12 = 0uLL;
      v12 = *MEMORY[0x29EDB90B8];
      if ([(UIScrollViewAccessibility *)v22 _accessibilityContentOffsetForScrollDirection:v20 newContentOffset:&v12 distanceMultiplier:1.0])
      {
        ShouldAnimate = [(UIScrollViewAccessibility *)v22 _accessibilityShouldAnimateScroll];
        [(UIScrollViewAccessibility *)v22 accessibilityApplyScrollContent:1 sendScrollStatus:ShouldAnimate animated:v12];
        v23 = 1;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23 & 1;
}

- (CGSize)_axPageSize
{
  v27 = *MEMORY[0x29EDCA608];
  v24[2] = self;
  v24[1] = a2;
  v24[0] = MEMORY[0x29EDC9748](self);
  [v24[0] _interpageSpacing];
  v23.width = v2;
  v23.height = v3;
  [v24[0] bounds];
  v21[1] = v4;
  v21[2] = v5;
  v22.width = v6;
  v22.height = v7;
  v25 = v22;
  v21[0] = AXLogScrollToVisible();
  v20 = 2;
  if (os_log_type_enabled(v21[0], OS_LOG_TYPE_DEBUG))
  {
    log = v21[0];
    type = v20;
    v16 = NSStringFromCGSize(v25);
    v12 = MEMORY[0x29EDC9748](v16);
    v19 = v12;
    v15 = NSStringFromCGSize(v23);
    v18 = MEMORY[0x29EDC9748](v15);
    __os_log_helper_16_2_2_8_64_8_64(v26, v12, v18);
    _os_log_debug_impl(&dword_29C4D6000, log, type, "Bounds: %@, interpage spacing: %@", v26, 0x16u);
    MEMORY[0x29EDC9740](v15);
    MEMORY[0x29EDC9740](v16);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(v21, 0);
  v25.width = v25.width + v23.width;
  v25.height = v25.height + v23.height;
  UISizeRoundToViewScale();
  v17.width = v8;
  v17.height = v9;
  v25 = v17;
  objc_storeStrong(v24, 0);
  height = v25.height;
  width = v25.width;
  result.height = height;
  result.width = width;
  return result;
}

- (CGFloat)accessibilityValidateScrollContentOffset:(CGFloat)a3
{
  v28 = *MEMORY[0x29EDCA608];
  v25.x = a2;
  v25.y = a3;
  v24 = a1;
  if (a1)
  {
    if ([v24 _axShouldScrollToAlignWithPage])
    {
      [v24 _axPageSize];
      v22 = v3;
      v23 = v4;
      CGPointMake_6();
      oslog[1] = v5;
      oslog[2] = v6;
      v21.x = [(UIScrollViewAccessibility *)v24 _axPageAlignedContentOffsetForPoint:*&v5 forValidation:*&v6];
      v21.y = v7;
      v25 = v21;
      oslog[0] = AXLogScrollToVisible();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
      {
        log = oslog[0];
        v12 = type;
        v13 = NSStringFromCGPoint(v25);
        v18 = MEMORY[0x29EDC9748](v13);
        __os_log_helper_16_2_1_8_64(v27, v18);
        _os_log_debug_impl(&dword_29C4D6000, log, v12, "Validated: %@", v27, 0xCu);
        MEMORY[0x29EDC9740](v13);
        objc_storeStrong(&v18, 0);
      }

      objc_storeStrong(oslog, 0);
    }

    else
    {
      v16 = [(UIScrollViewAccessibility *)v24 _axMinimumContentOffset];
      v17 = v8;
      v14 = [(UIScrollViewAccessibility *)v24 _axMaximumContentOffset];
      v15 = v9;
      v25.x = CGFloatMinMax_0(v25.x, v16, v14);
      v25.y = CGFloatMinMax_0(v25.y, v17, v15);
    }

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  return v26.x;
}

- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5
{
  v5 = 0.0;
  if (a5)
  {
    if (UIAccessibilityIsSwitchControlRunning())
    {
      [(UIScrollViewAccessibility *)self accessibilityApplyScrollContent:a4 sendScrollStatus:1 animateWithDuration:a3.x animationCurve:a3.y, 1.0];
      return;
    }

    v5 = 0.15;
  }

  [(UIScrollViewAccessibility *)self accessibilityApplyScrollContent:a4 sendScrollStatus:0 animateWithDuration:a3.x animationCurve:a3.y, v5];
}

- (void)accessibilityApplyScrollContent:(int)a3 sendScrollStatus:(CGFloat)a4 animateWithDuration:(CGFloat)a5 animationCurve:(double)a6
{
  v50 = *MEMORY[0x29EDCA608];
  v48.x = a4;
  v48.y = a5;
  v47 = a1;
  v46 = a2;
  v45 = a6;
  v44 = a3;
  if (a1)
  {
    v43 = v45 > 0.0;
    v42 = AXLogScrollToVisible();
    v41 = 2;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      log = v42;
      type = v41;
      v9 = v43;
      v12 = NSStringFromCGPoint(v48);
      v40 = MEMORY[0x29EDC9748](v12);
      __os_log_helper_16_2_2_4_0_8_64(v49, v9, v40);
      _os_log_debug_impl(&dword_29C4D6000, log, type, "Scrolling content animated: %i, to: %@", v49, 0x12u);
      MEMORY[0x29EDC9740](v12);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    v39.x = [(UIScrollViewAccessibility *)v47 accessibilityValidateScrollContentOffset:v48.y];
    v39.y = v6;
    v48 = v39;
    [v47 contentOffset];
    v37 = v7;
    v38 = v8;
    if (!__CGPointEqualToPoint_1(v7, v8, v48.x, v48.y))
    {
      v36 = [v47 safeValueForKey:@"delegate"];
      if (objc_opt_respondsToSelector())
      {
        [v36 scrollViewWillBeginDragging:v47];
      }

      if (objc_opt_respondsToSelector())
      {
        v35 = v48;
        [v36 scrollViewWillEndDragging:v47 withVelocity:&v48 targetContentOffset:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
        if (AXCGFAbs_0(v37 - v48.x) >= 0.001 || AXCGFAbs_0(v38 - v48.y) >= 0.001)
        {
          if (AXCGFAbs_0(v35.x - v48.x) >= 0.001 || AXCGFAbs_0(v35.y - v48.y) >= 0.001)
          {
            if ((v34 = v35.x - v37, v33 = v35.y - v38, v32 = v48.x - v37, v31 = v48.y - v38, v35.x - v37 > 0.0) && v32 < 0.0 || v34 < 0.0 && v32 > 0.0 || v33 > 0.0 && v31 < 0.0 || v33 < 0.0 && v31 > 0.0)
            {
              v48 = v35;
            }
          }
        }

        else
        {
          v48 = v35;
        }
      }

      v29 = 0;
      objc_opt_class();
      v28 = __UIAccessibilityCastAsClass();
      v27 = MEMORY[0x29EDC9748](v28);
      objc_storeStrong(&v28, 0);
      v30 = v27;
      v26 = [v27 _contentOffsetRoundingEnabled];
      [v30 _setContentOffsetRoundingEnabled:0];
      v17[1] = MEMORY[0x29EDCA5F8];
      v18 = -1073741824;
      v19 = 0;
      v20 = __113__UIScrollViewAccessibility_accessibilityApplyScrollContent_sendScrollStatus_animateWithDuration_animationCurve___block_invoke;
      v21 = &unk_29F30DA98;
      v22 = MEMORY[0x29EDC9748](v47);
      v23 = v48;
      v24 = v45;
      v25 = v44;
      AXPerformSafeBlock();
      v17[0] = [v47 safeValueForKey:@"_animation"];
      if (v43 && !v17[0])
      {
        v43 = 0;
      }

      if (v43)
      {
        [v47 _accessibilitySetBoolValue:v46 & 1 forKey:@"_accessibilityScrollViewSendScrollStatus"];
        [v47 _accessibilitySetBoolValue:1 forKey:@"_accessibilityScrollViewAnimationEndedShouldHandleDelegateCallbacks"];
        [v30 _setContentOffsetRoundingEnabled:v26 & 1];
      }

      else
      {
        v13 = MEMORY[0x29EDC9748](v47);
        v15 = v46 & 1;
        v14 = MEMORY[0x29EDC9748](v30);
        v16 = v26 & 1;
        AXPerformBlockOnMainThreadAfterDelay();
        objc_storeStrong(&v14, 0);
        objc_storeStrong(&v13, 0);
      }

      objc_storeStrong(v17, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v36, 0);
    }
  }
}

void __113__UIScrollViewAccessibility_accessibilityApplyScrollContent_sendScrollStatus_animateWithDuration_animationCurve___block_invoke_2(uint64_t a1)
{
  v16[2] = a1;
  v16[1] = a1;
  v16[0] = [*(a1 + 32) safeValueForKey:@"delegate"];
  if (objc_opt_respondsToSelector())
  {
    v14 = 0;
    v15 = 0;
    [*(a1 + 32) contentOffset];
    v14 = v1;
    v15 = v2;
    [v16[0] scrollViewWillEndDragging:*(a1 + 32) withVelocity:&v14 targetContentOffset:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v16[0] scrollViewDidEndDragging:*(a1 + 32) willDecelerate:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v16[0] scrollViewWillBeginDecelerating:*(a1 + 32)];
  }

  v8 = MEMORY[0x29EDCA5F8];
  v9 = -1073741824;
  v10 = 0;
  v11 = __113__UIScrollViewAccessibility_accessibilityApplyScrollContent_sendScrollStatus_animateWithDuration_animationCurve___block_invoke_3;
  v12 = &unk_29F30C7C8;
  v13 = MEMORY[0x29EDC9748](*(a1 + 32));
  AXPerformSafeBlock();
  [*(a1 + 32) _accessibilityScrollAnimationDurationDelay];
  v6 = *(a1 + 48) & 1;
  v4 = MEMORY[0x29EDC9748](*(a1 + 32));
  v5 = MEMORY[0x29EDC9748](*(a1 + 40));
  v7 = *(a1 + 49) & 1;
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v16, 0);
}

uint64_t __113__UIScrollViewAccessibility_accessibilityApplyScrollContent_sendScrollStatus_animateWithDuration_animationCurve___block_invoke_4(uint64_t result)
{
  v1 = result;
  if (*(result + 48))
  {
    [*(result + 32) _accessibilitySendScrollStatus];
    return [*(v1 + 40) _setContentOffsetRoundingEnabled:*(v1 + 49) & 1];
  }

  return result;
}

- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = a4;
  v31 = [(UIScrollViewAccessibility *)v34 _accessibilityBoolValueForKey:@"_accessibilityScrollViewAnimationEndedShouldHandleDelegateCallbacks"];
  if (v31)
  {
    v30 = [(UIScrollViewAccessibility *)v34 _accessibilityBoolValueForKey:?];
    [(UIScrollViewAccessibility *)v34 _accessibilitySetBoolValue:0 forKey:@"_accessibilityScrollViewSendScrollStatus"];
    [(UIScrollViewAccessibility *)v34 _accessibilitySetBoolValue:0 forKey:@"_accessibilityScrollViewAnimationEndedShouldHandleDelegateCallbacks"];
    v29 = [(UIScrollViewAccessibility *)v34 safeValueForKey:@"delegate"];
    if (objc_opt_respondsToSelector())
    {
      v27 = 0;
      v28 = 0;
      [(UIScrollViewAccessibility *)v34 contentOffset];
      v27 = v4;
      v28 = v5;
      [v29 scrollViewWillEndDragging:v34 withVelocity:&v27 targetContentOffset:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v29 scrollViewDidEndDragging:v34 willDecelerate:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [v29 scrollViewWillBeginDecelerating:v34];
    }

    v21[1] = MEMORY[0x29EDCA5F8];
    v22 = -1073741824;
    v23 = 0;
    v24 = __64__UIScrollViewAccessibility__scrollViewAnimationEnded_finished___block_invoke;
    v25 = &unk_29F30C7C8;
    v26 = MEMORY[0x29EDC9748](v34);
    AXPerformSafeBlock();
    v6 = MEMORY[0x29EDC7DA0];
    v16 = MEMORY[0x29EDCA5F8];
    v17 = -1073741824;
    v18 = 0;
    v19 = __64__UIScrollViewAccessibility__scrollViewAnimationEnded_finished___block_invoke_2;
    v20 = &unk_29F30C7C8;
    v21[0] = MEMORY[0x29EDC9748](v34);
    v9 = MEMORY[0x29EDCA5F8];
    v10 = -1073741824;
    v11 = 0;
    v12 = __64__UIScrollViewAccessibility__scrollViewAnimationEnded_finished___block_invoke_3;
    v13 = &unk_29F30DAE8;
    v15 = v30 & 1;
    v14 = MEMORY[0x29EDC9748](v34);
    [v6 animateWithDuration:&v16 animations:&v9 completion:0.15];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(v21, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v8.receiver = v34;
    v8.super_class = UIScrollViewAccessibility;
    [(UIScrollViewAccessibility *)&v8 _scrollViewAnimationEnded:location[0] finished:v32];
  }

  objc_storeStrong(location, 0);
}

id __64__UIScrollViewAccessibility__scrollViewAnimationEnded_finished___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:{@"_adjustContentOffsetIfNecessary", a1, a1}];

  return v1;
}

void __64__UIScrollViewAccessibility__scrollViewAnimationEnded_finished___block_invoke_3(uint64_t a1, char a2)
{
  v5 = a1;
  v4 = a2;
  v3[1] = a1;
  if (*(a1 + 40))
  {
    [*(a1 + 32) _accessibilityScrollAnimationDurationDelay];
    v3[0] = MEMORY[0x29EDC9748](*(a1 + 32));
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(v3, 0);
  }
}

- (CGPoint)_accessibilityVisibleScrollArea:(BOOL)a3
{
  [(UIScrollViewAccessibility *)self visibleBounds];
  [(UIScrollViewAccessibility *)self _accessibilityContentSize];
  CGPointMake_6();
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)_accessibilityIsGroupedParent
{
  v3 = [(UIScrollViewAccessibility *)self accessibilityLabel];
  v4 = [v3 length];
  MEMORY[0x29EDC9740](v3);
  return v4 != 0;
}

- (CGRect)accessibilityFrame
{
  v13 = self;
  location[1] = a2;
  location[0] = [(UIScrollViewAccessibility *)self accessibilityUserDefinedFrame];
  if (location[0])
  {
    [location[0] rectValue];
  }

  else
  {
    v10.receiver = v13;
    v10.super_class = UIScrollViewAccessibility;
    [(UIScrollViewAccessibility *)&v10 accessibilityFrame];
  }

  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v11 = 1;
  objc_storeStrong(location, 0);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_accessibilityContentFrame
{
  [(UIScrollViewAccessibility *)self bounds];
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  [(UIScrollViewAccessibility *)self _accessibilityVisibleContentInset];
  UIEdgeInsetsInsetRect_0(v12, v13, v14, v15, v6, v7);
  UIAccessibilityFrameForBounds();
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (UIEdgeInsets)_accessibilityContentInset
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = MEMORY[0x29EDC9748](self);
  v15 = 0u;
  v16 = 0u;
  [v14[0] adjustedContentInset];
  *&v15 = v2;
  *(&v15 + 1) = v3;
  *&v16 = v4;
  *(&v16 + 1) = v5;
  UIRoundToViewScale();
  *&v15 = v6;
  UIRoundToViewScale();
  *(&v15 + 1) = v7;
  UIRoundToViewScale();
  *&v16 = v8;
  UIRoundToViewScale();
  *(&v16 + 1) = v9;
  objc_storeStrong(v14, 0);
  v11 = *(&v15 + 1);
  v10 = *&v15;
  v13 = *(&v16 + 1);
  v12 = *&v16;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (BOOL)_accessibilityShouldUseFallbackForVisibleContentInset
{
  v14 = [(UIScrollViewAccessibility *)self _accessibilityStoredShouldUseFallbackForVisibleContentInset];
  *&v2 = MEMORY[0x29EDC9740](v14).n128_u64[0];
  if (v14)
  {
    v13 = [(UIScrollViewAccessibility *)self _accessibilityStoredShouldUseFallbackForVisibleContentInset];
    v20 = [v13 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v13);
  }

  else
  {
    [(UIScrollViewAccessibility *)self _accessibilityContentInset];
    v17 = v3;
    v18 = v4;
    [(UIScrollViewAccessibility *)self bounds];
    v15 = v5;
    v16 = v6;
    UIEdgeInsetsInsetRect_0(v7, v8, v5, v6, v17, v18);
    v12 = 1;
    if (v9 > 0.0)
    {
      v12 = 1;
      if (v10 > 0.0)
      {
        v12 = 1;
        if (v9 <= v15)
        {
          return v10 > v16;
        }
      }
    }

    return v12;
  }

  return v20;
}

- (void)_accessibilitySetStoredShouldUseFallbackForVisibleContentInset:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (void)_accessibilitySetShouldUseFallbackForVisibleContentInset:(BOOL)a3
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a3];
  [(UIScrollViewAccessibility *)self _accessibilitySetStoredShouldUseFallbackForVisibleContentInset:v4];
  MEMORY[0x29EDC9740](v4);
}

- (void)_accessibilitySetStoredVisibleContentInset:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  v38 = self;
  location[1] = a2;
  v39 = 0u;
  v40 = 0u;
  v39 = *MEMORY[0x29EDC80C8];
  v40 = *(MEMORY[0x29EDC80C8] + 16);
  location[0] = [(UIScrollViewAccessibility *)self _accessibilityStoredVisibleContentInset];
  if (location[0])
  {
    [location[0] UIEdgeInsetsValue];
    *&v35 = v2;
    *(&v35 + 1) = v3;
    *&v36 = v4;
    *(&v36 + 1) = v5;
    v39 = v35;
    v40 = v36;
  }

  else
  {
    [(UIScrollViewAccessibility *)v38 _accessibilityContentInset];
    *&v33 = v6;
    *(&v33 + 1) = v7;
    *&v34 = v8;
    *(&v34 + 1) = v9;
    v39 = v33;
    v40 = v34;
    [(UIScrollViewAccessibility *)v38 bounds];
    v32.origin.x = v10;
    v32.origin.y = v11;
    v32.size.width = v12;
    v32.size.height = v13;
    if ([(UIScrollViewAccessibility *)v38 _accessibilityShouldUseFallbackForVisibleContentInset])
    {
      [(UIScrollViewAccessibility *)v38 _accessibilityNavigationControllerInset];
      *&v30 = v14;
      *(&v30 + 1) = v15;
      *&v31 = v16;
      *(&v31 + 1) = v17;
      v39 = v30;
      v40 = v31;
      [(UIScrollViewAccessibility *)v38 _accessibilityContentInset];
      if (v18 > *&v31 && ([*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardCoversElement:{v38, v18}] & 1) != 0)
      {
        [*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardAccessibilityFrame];
        UIAccessibilityFrameToBounds();
        r2.origin.x = v19;
        r2.origin.y = v20;
        r2.size.width = v21;
        r2.size.height = v22;
        v41 = CGRectIntersection(v32, r2);
        rect_24 = v41.size.height;
        if (!CGRectIsNull(v41))
        {
          if (rect_24 >= *&v40)
          {
            v27 = rect_24;
          }

          else
          {
            v27 = *&v40;
          }

          *&v40 = v27;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  v24 = *(&v39 + 1);
  v23 = *&v39;
  v26 = *(&v40 + 1);
  v25 = *&v40;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (void)_accessibilitySetVisibleContentInset:(UIEdgeInsets)a3
{
  v4 = [MEMORY[0x29EDBA168] valueWithUIEdgeInsets:{a3.top, a3.left, a3.bottom, a3.right}];
  [(UIScrollViewAccessibility *)self _accessibilitySetStoredVisibleContentInset:v4];
  MEMORY[0x29EDC9740](v4);
}

- (void)_accessibilitySetNavigationControllerInset:(UIEdgeInsets)a3
{
  v4 = [MEMORY[0x29EDBA168] valueWithUIEdgeInsets:{a3.top, a3.left, a3.bottom, a3.right}];
  objc_setAssociatedObject(self, &_NavigationControllerInsetStorage, v4, 0x301);
  MEMORY[0x29EDC9740](v4);
}

- (UIEdgeInsets)_accessibilityNavigationControllerInset
{
  v10 = objc_getAssociatedObject(self, &_NavigationControllerInsetStorage);
  [v10 UIEdgeInsetsValue];
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  MEMORY[0x29EDC9740](v10);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (id)_accessibilityUIViewAccessibilityFrame
{
  v14 = self;
  v13 = a2;
  v7 = MEMORY[0x29EDBA168];
  v8.receiver = self;
  v8.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v8 accessibilityFrame];
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return [v7 valueWithCGRect:{v2, v3, v4, v5}];
}

- (id)_staticScrollBar
{
  v5[2] = self;
  v5[1] = a2;
  v4.receiver = self;
  v4.super_class = UIScrollViewAccessibility;
  v5[0] = [(UIScrollViewAccessibility *)&v4 _staticScrollBar];
  [v5[0] _accessibilityLoadAccessibilityInformation];
  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (id)automationElements
{
  v20 = self;
  v19[1] = a2;
  v18.receiver = self;
  v18.super_class = UIScrollViewAccessibility;
  v14 = [(UIScrollViewAccessibility *)&v18 automationElements];
  v15 = [v14 mutableCopy];
  v16 = 0;
  if (v15)
  {
    v2 = MEMORY[0x29EDC9748](v15);
  }

  else
  {
    v17 = [MEMORY[0x29EDB8DE8] array];
    v16 = 1;
    v2 = MEMORY[0x29EDC9748](v17);
  }

  v19[0] = v2;
  if (v16)
  {
    MEMORY[0x29EDC9740](v17);
  }

  MEMORY[0x29EDC9740](v15);
  *&v3 = MEMORY[0x29EDC9740](v14).n128_u64[0];
  v7 = v19[0];
  v8 = [(UIScrollViewAccessibility *)v20 safeValueForKey:@"_staticScrollBar", v3];
  [v7 axSafelyAddObject:?];
  *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v9 = v19[0];
  v10 = [(UIScrollViewAccessibility *)v20 safeValueForKey:@"_verticalScrollIndicator", v4];
  [v9 axSafelyAddObject:?];
  *&v5 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v11 = v19[0];
  v12 = [(UIScrollViewAccessibility *)v20 safeValueForKey:@"_horizontalScrollIndicator", v5];
  [v11 axSafelyAddObject:?];
  MEMORY[0x29EDC9740](v12);
  v13 = MEMORY[0x29EDC9748](v19[0]);
  objc_storeStrong(v19, 0);

  return v13;
}

- (id)accessibilityPath
{
  v103[4] = *MEMORY[0x29EDCA608];
  v101 = self;
  v100[1] = a2;
  v99 = 0;
  objc_opt_class();
  v56 = [(UIScrollViewAccessibility *)v101 _accessibilityFindAncestor:&__block_literal_global_538 startWithSelf:1];
  v55 = [v56 _accessibilityViewController];
  v54 = [v55 safeValueForKey:@"popoverPresentationController"];
  v98 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v54);
  MEMORY[0x29EDC9740](v55);
  MEMORY[0x29EDC9740](v56);
  v97 = MEMORY[0x29EDC9748](v98);
  objc_storeStrong(&v98, 0);
  v100[0] = v97;
  v96 = v97 != 0;
  v94 = 0u;
  *v95 = 0u;
  if (v97)
  {
    v87 = 0;
    v88 = &v87;
    v89 = 0x10000000;
    v90 = 64;
    v91 = &unk_29C6A1FE6;
    v92 = 0u;
    v93 = 0u;
    v81 = MEMORY[0x29EDCA5F8];
    v82 = -1073741824;
    v83 = 0;
    v84 = __46__UIScrollViewAccessibility_accessibilityPath__block_invoke_2;
    v85 = &unk_29F30CC70;
    v86[1] = &v87;
    v86[0] = MEMORY[0x29EDC9748](v100[0]);
    AXPerformSafeBlock();
    v94 = *(v88 + 2);
    *v95 = *(v88 + 3);
    objc_storeStrong(v86, 0);
    _Block_object_dispose(&v87, 8);
  }

  else
  {
    v94 = *MEMORY[0x29EDC80C8];
    *v95 = *(MEMORY[0x29EDC80C8] + 16);
  }

  v80 = 44.0;
  [(UIScrollViewAccessibility *)v101 accessibilityFrame];
  v78 = v105;
  v79 = CGRectIntegral(v105);
  [(UIScrollViewAccessibility *)v101 safeAreaInsets];
  v74 = v2;
  v75 = v3;
  v76 = v4;
  v77 = v5;
  if (v2 <= 44.0)
  {
    v53 = *&v94;
  }

  else
  {
    v53 = v74;
  }

  v74 = v53;
  if (v75 <= v80)
  {
    v52 = *(&v94 + 1);
  }

  else
  {
    v52 = v75;
  }

  v75 = v52;
  if (v77 <= v80)
  {
    v51 = v95[1];
  }

  else
  {
    v51 = v77;
  }

  v77 = v51;
  if (v76 <= v80)
  {
    v50 = v95[0];
  }

  else
  {
    v50 = v76;
  }

  v76 = v50;
  v73.origin.x = UIEdgeInsetsInsetRect_0(v79.origin.x, v79.origin.y, v79.size.width, v79.size.height, v74, v75);
  v73.origin.y = v6;
  v73.size.width = v7;
  v73.size.height = v8;
  v79 = v73;
  v72 = MEMORY[0x29ED3E4C0](&__block_literal_global_545);
  v71 = [(UIScrollViewAccessibility *)v101 _accessibilityWindow];
  [v71 accessibilityFrame];
  v70.origin.x = v9;
  v70.origin.y = v10;
  v70.size.width = v11;
  v70.size.height = v12;
  v69 = (*(v72 + 2))(v73.origin.x, v73.origin.y, v73.size.width, v73.size.height, v9, v10, v11, v12);
  *v68 = 0uLL;
  *v68 = *MEMORY[0x29EDB90E8];
  if (!(*(v72 + 2))(v73.origin.x, v73.origin.y, v73.size.width, v73.size.height, v70.origin.x, v70.origin.y, v70.size.width, v70.size.height))
  {
    v63 = [(UIScrollViewAccessibility *)v101 _accessibilityFindViewAncestor:&__block_literal_global_549 startWithSelf:0];
    if (v63)
    {
      [v63 accessibilityFrame];
      v62.origin.x = v15;
      v62.origin.y = v16;
      v62.size.width = v17;
      v62.size.height = v18;
      if (v96)
      {
        v61.origin.x = UIEdgeInsetsInsetRect_0(v62.origin.x, v62.origin.y, v62.size.width, v62.size.height, *&v94, *(&v94 + 1));
        v61.origin.y = v19;
        v61.size.width = v20;
        v61.size.height = v21;
        v62 = v61;
      }

      v60 = CGRectIntegral(v62);
      v62 = v60;
      if (CGRectContainsRect(v79, v60))
      {
        v79 = v62;
      }

      v69 = (*(v72 + 2))(v79.origin.x, v79.origin.y, v79.size.width, v79.size.height, v62.origin.x, v62.origin.y, v62.size.width, v62.size.height);
      v44 = [v63 layer];
      [v44 cornerRadius];
      v45 = v22;
      MEMORY[0x29EDC9740](v44);
      if (v45 <= 0.0)
      {
        v39 = MEMORY[0x29EDC7948];
        v40 = v69;
        v41 = MEMORY[0x29EDBA168];
        v38 = [v63 layer];
        if (v38)
        {
          [v38 cornerRadii];
        }

        else
        {
          memset(&v58[15], 0, 0x40uLL);
        }

        v58[19] = v58[18];
        v36 = [v41 valueWithCGSize:{*&v58[18], *(&v58[18] + 1)}];
        v103[0] = v36;
        v37 = MEMORY[0x29EDBA168];
        v35 = [v63 layer];
        if (v35)
        {
          [v35 cornerRadii];
        }

        else
        {
          memset(&v58[10], 0, 0x40uLL);
        }

        v58[14] = v58[12];
        v33 = [v37 valueWithCGSize:{*&v58[12], *(&v58[12] + 1)}];
        v103[1] = v33;
        v34 = MEMORY[0x29EDBA168];
        v32 = [v63 layer];
        if (v32)
        {
          [v32 cornerRadii];
        }

        else
        {
          memset(&v58[5], 0, 0x40uLL);
        }

        v58[9] = v58[5];
        v30 = [v34 valueWithCGSize:v58[5]];
        v103[2] = v30;
        v31 = MEMORY[0x29EDBA168];
        v29 = [v63 layer];
        if (v29)
        {
          [v29 cornerRadii];
        }

        else
        {
          memset(v58, 0, 0x40uLL);
        }

        v58[4] = v58[1];
        v28 = [v31 valueWithCGSize:v58[1]];
        v103[3] = v28;
        v27 = [MEMORY[0x29EDB8D80] arrayWithObjects:v103 count:4];
        v102 = [v39 roundedRectBezierPath:v40 withRoundedCorners:v79.origin.x withCornerRadii:{v79.origin.y, v79.size.width, v79.size.height}];
        MEMORY[0x29EDC9740](v27);
        MEMORY[0x29EDC9740](v28);
        MEMORY[0x29EDC9740](v29);
        MEMORY[0x29EDC9740](v30);
        MEMORY[0x29EDC9740](v32);
        MEMORY[0x29EDC9740](v33);
        MEMORY[0x29EDC9740](v35);
        MEMORY[0x29EDC9740](v36);
        MEMORY[0x29EDC9740](v38);
        v57 = 1;
LABEL_44:
        objc_storeStrong(&v63, 0);
        if (v57)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v43 = [v63 layer];
      [v43 cornerRadius];
      v42 = [v63 layer];
      [v42 cornerRadius];
      CGSizeMake_2();
      *&v59 = v23;
      *(&v59 + 1) = v24;
      *v68 = v59;
      MEMORY[0x29EDC9740](v42);
      MEMORY[0x29EDC9740](v43);
    }

    v57 = 0;
    goto LABEL_44;
  }

  v49 = [MEMORY[0x29EDC7C40] mainScreen];
  [v49 bounds];
  v66 = v106;
  Height = CGRectGetHeight(v106);
  v47 = CGRectGetHeight(v70);
  *&v13 = MEMORY[0x29EDC9740](v49).n128_u64[0];
  v67 = Height != v47;
  v64 = 0;
  if (Height == v47)
  {
    v65 = [(UIScrollViewAccessibility *)v101 traitCollection];
    v64 = 1;
    [v65 displayCornerRadius];
    v46 = v14;
  }

  else
  {
    v46 = 10.0;
  }

  v68[0] = v46;
  if (v64)
  {
    MEMORY[0x29EDC9740](v65);
  }

  v68[1] = v68[0];
LABEL_45:
  v102 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:v69 byRoundingCorners:v79.origin.x cornerRadii:{v79.origin.y, v79.size.width, v79.size.height, v68[0], v68[1]}];
LABEL_46:
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(v100, 0);
  v25 = v102;

  return v25;
}

BOOL __46__UIScrollViewAccessibility_accessibilityPath__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] _accessibilityViewController];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  objc_storeStrong(location, 0);
  return v4;
}

__n128 __46__UIScrollViewAccessibility_accessibilityPath__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _additionalSafeAreaInsets];
  *&v8 = v1;
  *(&v8 + 1) = v2;
  v9.n128_u64[0] = v3;
  v9.n128_u64[1] = v4;
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v8;
  result = v9;
  *(v5 + 48) = v9;
  return result;
}

uint64_t __46__UIScrollViewAccessibility_accessibilityPath__block_invoke_3(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *v27 = a1;
  *&v27[8] = a2;
  *&v27[16] = a3;
  *&v27[24] = a4;
  *v26 = a5;
  *&v26[8] = a6;
  *&v26[16] = a7;
  *&v26[24] = a8;
  MinX = CGRectGetMinX(*&a1);
  v23 = 0;
  if (MinX == CGRectGetMinX(*v26))
  {
    MinY = CGRectGetMinY(*v27);
    v23 = MinY == CGRectGetMinY(*v26);
  }

  MaxX = CGRectGetMaxX(*v27);
  v20 = 0;
  if (MaxX == CGRectGetMaxX(*v26))
  {
    v18 = CGRectGetMinY(*v27);
    v20 = v18 == CGRectGetMinY(*v26);
  }

  v8 = 0;
  if (v20)
  {
    v8 = 2;
  }

  v24 = v23 | v8;
  v16 = CGRectGetMinX(*v27);
  v17 = 0;
  if (v16 == CGRectGetMinX(*v26))
  {
    MaxY = CGRectGetMaxY(*v27);
    v17 = MaxY == CGRectGetMaxY(*v26);
  }

  v9 = 0;
  if (v17)
  {
    v9 = 4;
  }

  v25 = v24 | v9;
  v13 = CGRectGetMaxX(*v27);
  v14 = 0;
  if (v13 == CGRectGetMaxX(*v26))
  {
    v12 = CGRectGetMaxY(*v27);
    v14 = v12 == CGRectGetMaxY(*v26);
  }

  v10 = 0;
  if (v14)
  {
    v10 = 8;
  }

  return v25 | v10;
}

uint64_t __46__UIScrollViewAccessibility_accessibilityPath__block_invoke_4(void *a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = a3;
  v14 = a1;
  v8 = [location[0] layer];
  [v8 cornerRadius];
  v11 = 0;
  LOBYTE(v9) = 1;
  if (v3 <= 0.0)
  {
    v5 = [location[0] layer];
    v12 = v5;
    v11 = 1;
    if (v5)
    {
      [v5 cornerRadii];
    }

    else
    {
      memset(__b, 0, sizeof(__b));
    }

    memcpy(__dst, MEMORY[0x29EDBBA68], sizeof(__dst));
    v9 = CACornerRadiiEqualToRadii() ^ 1;
  }

  v17 = v9 & 1;
  if (v11)
  {
    MEMORY[0x29EDC9740](v12);
  }

  MEMORY[0x29EDC9740](v8);
  objc_storeStrong(location, 0);
  return v17 & 1;
}

- (CGRect)_defaultFocusRegionFrame
{
  v19 = self;
  v18 = a2;
  v20 = 0u;
  v21 = 0u;
  v17.receiver = self;
  v17.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v17 _defaultFocusRegionFrame];
  *&v20 = v2;
  *(&v20 + 1) = v3;
  *&v21 = v4;
  *(&v21 + 1) = v5;
  if (([(UIScrollViewAccessibility *)v19 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    [(UIScrollViewAccessibility *)v19 safeAreaInsets];
    *&v15 = UIEdgeInsetsInsetRect_0(*&v20, *(&v20 + 1), *&v21, *(&v21 + 1), v6, v7);
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v20 = v15;
    v21 = v16;
  }

  v12 = *(&v20 + 1);
  v11 = *&v20;
  v14 = *(&v21 + 1);
  v13 = *&v21;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_accessibilityRemembersLastFocusedChild
{
  v2 = [(UIScrollViewAccessibility *)self focusGroupIdentifier];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

- (id)_axVerticalScrollIndicator
{
  v7 = a1;
  if (a1)
  {
    v6 = 0;
    objc_opt_class();
    v3 = [v7 safeValueForKey:@"_verticalScrollIndicator"];
    v5 = __UIAccessibilityCastAsSafeCategory();
    MEMORY[0x29EDC9740](v3);
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v1 = v8;

  return v1;
}

- (id)_axHorizontalScrollIndicator
{
  v7 = a1;
  if (a1)
  {
    v6 = 0;
    objc_opt_class();
    v3 = [v7 safeValueForKey:@"_horizontalScrollIndicator"];
    v5 = __UIAccessibilityCastAsSafeCategory();
    MEMORY[0x29EDC9740](v3);
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v1 = v8;

  return v1;
}

- (void)_adjustScrollerIndicators:(BOOL)a3 alwaysShowingThem:(BOOL)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  v4.receiver = self;
  v4.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v4 _adjustScrollerIndicators:a3 alwaysShowingThem:a4];
  [(UIScrollViewAccessibility *)v8 _axAnnotateScrollBars];
}

- (void)_hideScrollIndicators
{
  v9 = self;
  v8 = a2;
  v5 = [(UIScrollViewAccessibility *)self _axVerticalScrollIndicator];
  v6 = [(_UIScrollViewScrollIndicatorAccessibility *)v5 accessibilityScrollIndicatorIsFocused];
  MEMORY[0x29EDC9740](v5);
  if ((v6 & 1) == 0)
  {
    v3 = [(UIScrollViewAccessibility *)v9 _axHorizontalScrollIndicator];
    v4 = [(_UIScrollViewScrollIndicatorAccessibility *)v3 accessibilityScrollIndicatorIsFocused];
    *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    if ((v4 & 1) == 0)
    {
      v7.receiver = v9;
      v7.super_class = UIScrollViewAccessibility;
      [(UIScrollViewAccessibility *)&v7 _hideScrollIndicators];
    }
  }
}

- (BOOL)accessibilityShouldEnableScrollIndicator:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (MEMORY[0x29ED3DD50]())
  {
    if (UIAccessibilityIsWidgetExtension())
    {
      v11 = 0;
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v5 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
      if (v5 == 1)
      {
        v7 = [(UIScrollViewAccessibility *)v10 _axShowsVerticalScrollBar];
      }

      else if (v5 == 2)
      {
        v7 = [(UIScrollViewAccessibility *)v10 _axShowsHorizontalScrollBar];
      }

      else
      {
        oslog = AXLogAppAccessibility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
        {
          v3 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
          __os_log_helper_16_0_1_8_0(v12, v3);
          _os_log_fault_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_FAULT, "Unexpected direction for indicator: %ld", v12, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      if (v7)
      {
        v7 = [(UIScrollViewAccessibility *)v10 accessibilityNumberOfPagesForScrollIndicator:location[0]]>= 5;
      }

      v11 = v7;
      v8 = 1;
    }
  }

  else
  {
    v11 = 0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  return v11;
}

- (void)accessibilityScrollIndicator:(id)a3 didBecomeFocused:(BOOL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  v6 = MEMORY[0x29EDC9748](v9);
  if (a4)
  {
    [v6 flashScrollIndicators];
  }

  else
  {
    v5 = MEMORY[0x29EDC9748](v9);
    AXPerformSafeBlock();
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)accessibilityScrollIndicator:(id)a3 addProgress:(double)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = v10;
  v4 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
  v8 = [(UIScrollViewAccessibility *)v7 _axContentOffsetForAddedProgress:v4 inDirection:a4];
  [(UIScrollViewAccessibility *)v10 setContentOffset:v8, v5];
  objc_storeStrong(location, 0);
}

- (double)_axContentOffsetForAddedProgress:(double)a3 inDirection:
{
  v36 = *MEMORY[0x29EDCA608];
  v33 = a1;
  v32 = a3;
  v31 = a2;
  if (a1)
  {
    location = MEMORY[0x29EDC9748](v33);
    [location contentOffset];
    *&v29 = v3;
    *(&v29 + 1) = v4;
    v34 = v29;
    if (v31 == 1)
    {
      v26 = [(UIScrollViewAccessibility *)v33 _axMinimumContentOffset];
      v27 = v5;
      v28 = v5;
      v23 = [(UIScrollViewAccessibility *)v33 _axMaximumContentOffset];
      v24 = v6;
      v25 = v6;
      if (v28 < v6)
      {
        v7 = CGFloatMin_0(*(&v29 + 1) + v32 * (v25 - v28), v25);
        v22 = CGFloatMax_0(v7, v28);
        *(&v34 + 1) = v22;
      }
    }

    else if (v31 == 2)
    {
      v12 = [MEMORY[0x29EDC7938] sharedApplication];
      v13 = [v12 userInterfaceLayoutDirection];
      MEMORY[0x29EDC9740](v12);
      if (v13 == 1)
      {
        v32 = v32 * -1.0;
      }

      v19 = [(UIScrollViewAccessibility *)v33 _axMinimumContentOffset];
      v20 = v8;
      v21 = v19;
      v16 = [(UIScrollViewAccessibility *)v33 _axMaximumContentOffset];
      v17 = v9;
      v18 = v16;
      if (v19 < v16)
      {
        v10 = CGFloatMin_0(*&v29 + v32 * (v18 - v21), v18);
        v15 = CGFloatMax_0(v10, v21);
        *&v34 = v15;
      }
    }

    else
    {
      oslog = AXLogAppAccessibility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_0_1_8_0(v35, v31);
        _os_log_fault_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_FAULT, "Unexpected direction for indicator: %ld", v35, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v34 = 0uLL;
  }

  return *&v34;
}

- (int64_t)accessibilityNumberOfPagesForScrollIndicator:(id)a3
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  v6 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
  if (v6 == 1)
  {
    [(UIScrollViewAccessibility *)v10 _accessibilityCurrentPage:&v8 totalPages:1 forVerticalDirection:?];
  }

  else if (v6 == 2)
  {
    [(UIScrollViewAccessibility *)v10 _accessibilityCurrentPage:&v8 totalPages:0 forVerticalDirection:?];
  }

  else
  {
    oslog = AXLogAppAccessibility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      v3 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
      __os_log_helper_16_0_1_8_0(v11, v3);
      _os_log_fault_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_FAULT, "Unexpected direction for indicator: %ld", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  return v5;
}

- (double)accessibilityProgressForScrollIndicator:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v8;
  v3 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
  v6 = [(UIScrollViewAccessibility *)v5 _axProgressForDirection:v3];
  objc_storeStrong(location, 0);
  return v6;
}

- (double)_axProgressForDirection:(void *)a1
{
  v31 = *MEMORY[0x29EDCA608];
  v28 = a1;
  v27 = a2;
  if (!a1)
  {
    return 0.0;
  }

  v26 = 0.0;
  v25 = 0.0;
  v24 = 0.0;
  v23 = 0.0;
  location = MEMORY[0x29EDC9748](v28);
  [location contentOffset];
  v20 = v2;
  v21 = v3;
  v19 = 0;
  if (v27 == 1)
  {
    v17 = [(UIScrollViewAccessibility *)v28 _axMinimumContentOffset];
    v18 = v4;
    v25 = v4;
    v15 = [(UIScrollViewAccessibility *)v28 _axMaximumContentOffset];
    v16 = v5;
    v24 = v5;
    v23 = v21;
  }

  else if (v27 == 2)
  {
    v13 = [(UIScrollViewAccessibility *)v28 _axMinimumContentOffset];
    v14 = v6;
    v25 = v13;
    v11 = [(UIScrollViewAccessibility *)v28 _axMaximumContentOffset];
    v12 = v7;
    v24 = v11;
    v23 = v20;
    v9 = [MEMORY[0x29EDC7938] sharedApplication];
    v19 = [v9 userInterfaceLayoutDirection] == 1;
    MEMORY[0x29EDC9740](v9);
  }

  else
  {
    oslog = AXLogAppAccessibility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_1_8_0(v30, v27);
      _os_log_fault_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_FAULT, "Unexpected direction for indicator: %ld", v30, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (v25 < v24)
  {
    if (v23 > v25)
    {
      if (v23 >= v24 || v24 == 0.0)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = (v23 - v25) / (v24 - v25);
      }
    }

    else
    {
      v26 = 0.0;
    }
  }

  if (v19)
  {
    v26 = 1.0 - v26;
  }

  v29 = v26;
  objc_storeStrong(&location, 0);
  return v29;
}

- (CGRect)accessibilityFrameForScrollIndicator:(id)a3
{
  v89 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v87 = MEMORY[0x29EDC9748](v89);
  v85 = 0;
  objc_opt_class();
  v84 = __UIAccessibilityCastAsClass();
  v83 = MEMORY[0x29EDC9748](v84);
  objc_storeStrong(&v84, 0);
  v86 = v83;
  [v83 bounds];
  v78 = v3;
  v79 = v4;
  v80 = v5;
  v81 = v6;
  [v83 convertRect:v87 toView:{v3, v4, v5, v6}];
  v82.origin.x = v7;
  v82.origin.y = v8;
  v82.size.width = v9;
  v82.size.height = v10;
  v77 = 30.0;
  v76 = 0.5;
  v33 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
  if (v33 == 1)
  {
    v74 = 0u;
    v75 = 0u;
    [v87 bounds];
    v70 = v11;
    v71 = v12;
    v72 = v13;
    v73 = v14;
    v61 = 0;
    v62 = &v61;
    v63 = 0x10000000;
    v64 = 64;
    v65 = &unk_29C6A1FE6;
    v66 = 0u;
    v67 = 0u;
    v55 = MEMORY[0x29EDCA5F8];
    v56 = -1073741824;
    v57 = 0;
    v58 = __66__UIScrollViewAccessibility_accessibilityFrameForScrollIndicator___block_invoke;
    v59 = &unk_29F30CC70;
    v60[1] = &v61;
    v60[0] = MEMORY[0x29EDC9748](v87);
    AXPerformSafeBlock();
    v68 = *(v62 + 2);
    v69 = *(v62 + 3);
    objc_storeStrong(v60, 0);
    _Block_object_dispose(&v61, 8);
    *&v74 = UIEdgeInsetsInsetRect_0(v70, v71, v72, v73, *&v68, *(&v68 + 1));
    *(&v74 + 1) = v15;
    *&v75 = v16;
    *(&v75 + 1) = v17;
    v82.origin.y = v15;
    v82.size.height = v17;
    [v87 bounds];
    recta = v94;
    v54 = 0.5 * CGRectGetWidth(v94);
    v52 = CGFloatMin_0(30.0, v54);
    v82.origin.x = CGRectGetMaxX(v82) - v52;
    v82.size.width = v52;
  }

  else if (v33 == 2)
  {
    v50 = 0u;
    v51 = 0u;
    [v87 bounds];
    v46 = v18;
    v47 = v19;
    v48 = v20;
    v49 = v21;
    v37 = 0;
    v38 = &v37;
    v39 = 0x10000000;
    v40 = 64;
    v41 = &unk_29C6A1FE6;
    v42 = 0u;
    v43 = 0u;
    v36[1] = &v37;
    v36[0] = MEMORY[0x29EDC9748](v87);
    AXPerformSafeBlock();
    v44 = *(v38 + 2);
    v45 = *(v38 + 3);
    objc_storeStrong(v36, 0);
    _Block_object_dispose(&v37, 8);
    *&v50 = UIEdgeInsetsInsetRect_0(v46, v47, v48, v49, *&v44, *(&v44 + 1));
    *(&v50 + 1) = v22;
    *&v51 = v23;
    *(&v51 + 1) = v24;
    *&v82.origin.x = v50;
    v82.size.width = v23;
    [v87 bounds];
    v35 = 0.5 * CGRectGetHeight(v95);
    v34 = CGFloatMin_0(30.0, v35);
    v82.origin.y = CGRectGetMaxY(v82) - v34;
    v82.size.height = v34;
  }

  UIAccessibilityFrameForBounds();
  v90 = v25;
  v91 = v26;
  v92 = v27;
  v93 = v28;
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(location, 0);
  v29 = v90;
  v30 = v91;
  v31 = v92;
  v32 = v93;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

__n128 __66__UIScrollViewAccessibility_accessibilityFrameForScrollIndicator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _effectiveVerticalScrollIndicatorInsets];
  *&v8 = v1;
  *(&v8 + 1) = v2;
  v9.n128_u64[0] = v3;
  v9.n128_u64[1] = v4;
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v8;
  result = v9;
  *(v5 + 48) = v9;
  return result;
}

__n128 __66__UIScrollViewAccessibility_accessibilityFrameForScrollIndicator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _effectiveHorizontalScrollIndicatorInsets];
  *&v8 = v1;
  *(&v8 + 1) = v2;
  v9.n128_u64[0] = v3;
  v9.n128_u64[1] = v4;
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v8;
  result = v9;
  *(v5 + 48) = v9;
  return result;
}

- (void)_axSetLastScrubAnnouncementDate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (double)_axAnnounceScrubForDirection:(void *)a1
{
  if (a1)
  {
    notification = *MEMORY[0x29EDC7EA8];
    [(UIScrollViewAccessibility *)a1 _axProgressForDirection:a2];
    v4 = AXFormatFloatWithPercentage();
    UIAccessibilityPostNotification(notification, v4);
    *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  return result;
}

- (CGPoint)_newScrollOffsetForScrubReturningAnimated:(BOOL *)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v18 = 0.0;
  v19 = 0.0;
  v14.receiver = self;
  v14.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v14 _newScrollOffsetForScrubReturningAnimated:a3];
  v18 = v3;
  v19 = v4;
  v13 = [MEMORY[0x29EDB8DB0] date];
  location = [(UIScrollViewAccessibility *)v17 _axLastScrubAnnouncementDate];
  [(UIScrollViewAccessibility *)v17 contentOffset];
  v11 = v6;
  v7 = v18;
  if (v18 == v11)
  {
    v7 = v19;
    v10 = v19 != v5;
  }

  else
  {
    v10 = 2;
  }

  if (v10)
  {
    if (!location || ([v13 timeIntervalSinceDate:{location, v7}], v7 > 1.0))
    {
      [(UIScrollViewAccessibility *)v17 _axSetLastScrubAnnouncementDate:v13, v7];
      [(UIScrollViewAccessibility *)v17 _axAnnounceScrubForDirection:v10];
    }
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v13, 0);
  v8 = v18;
  v9 = v19;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_didEndDirectManipulationWithScrubbingDirection:(int64_t)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v4 _didEndDirectManipulationWithScrubbingDirection:a3];
  if (v5 == 2 || v5 == 1)
  {
    if (v5 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    [(UIScrollViewAccessibility *)v7 _axAnnounceScrubForDirection:v3];
  }
}

@end