@interface UIScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityContentOffsetForScrollDirection:(int)direction newContentOffset:(CGPoint *)offset distanceMultiplier:(double)multiplier;
- (BOOL)_accessibilityIsGroupedParent;
- (BOOL)_accessibilityIsScrollAncestor;
- (BOOL)_accessibilityRemembersLastFocusedChild;
- (BOOL)_accessibilityScrollPageInDirection:(int)direction;
- (BOOL)_accessibilityScrollToFrame:(CGRect)frame forView:(id)view;
- (BOOL)_accessibilityScrollingEnabled;
- (BOOL)_accessibilityShouldAnimateScroll;
- (BOOL)_accessibilityShouldUseFallbackForVisibleContentInset;
- (BOOL)_axBaseScrollDownPageSupported;
- (BOOL)_axBaseScrollLeftPageSupported;
- (BOOL)_axBaseScrollRightPageSupported;
- (BOOL)_axBaseScrollUpPageSupported;
- (BOOL)_axShowsHorizontalScrollBar;
- (BOOL)_axShowsVerticalScrollBar;
- (BOOL)accessibilityShouldEnableScrollIndicator:(id)indicator;
- (CGFloat)_axPageAlignedContentOffsetForPoint:(double)point forValidation:(double)validation;
- (CGFloat)accessibilityValidateScrollContentOffset:(CGFloat)offset;
- (CGPoint)_accessibilityContentOffset;
- (CGPoint)_accessibilityVisibleScrollArea:(BOOL)area;
- (CGPoint)_newScrollOffsetForScrubReturningAnimated:(BOOL *)animated;
- (CGRect)_accessibilityContentFrame;
- (CGRect)_accessibilityScrollViewVisibleFrame;
- (CGRect)_defaultFocusRegionFrame;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrameForScrollIndicator:(id)indicator;
- (CGSize)_axPageSize;
- (UIEdgeInsets)_accessibilityContentInset;
- (UIEdgeInsets)_accessibilityNavigationControllerInset;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (double)_accessibilityAnnounceDelayedStatus;
- (double)_accessibilityScrollHeightDistance;
- (double)_accessibilityScrollWidthDistance;
- (double)_axAllowedPagingOverlap;
- (double)_axAnnounceScrubForDirection:(void *)direction;
- (double)_axContentOffsetForAddedProgress:(double)progress inDirection:;
- (double)_axMaximumContentOffset;
- (double)_axMinimumContentOffset;
- (double)_axProgressForDirection:(void *)direction;
- (double)accessibilityProgressForScrollIndicator:(id)indicator;
- (id)_accessibilityDelegateScrollStatus;
- (id)_accessibilityElementsFilteredByPagingScrollView:(void *)view;
- (id)_accessibilityFindRefreshControl;
- (id)_accessibilityFirstLastOpaqueElement:(id)obj options:;
- (id)_accessibilityFirstOpaqueElement;
- (id)_accessibilityFirstOpaqueElementWithOptions:(id)options;
- (id)_accessibilityFocusAbsoluteFirstLastOpaqueElement:(BOOL)element technology:(id)technology honorsGroups:(BOOL)groups shouldAlwaysScroll:(BOOL)scroll;
- (id)_accessibilityHorizontalScrollBarElement;
- (id)_accessibilityLastOpaqueElement;
- (id)_accessibilityLastOpaqueElementWithOptions:(id)options;
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
- (int64_t)accessibilityNumberOfPagesForScrollIndicator:(id)indicator;
- (uint64_t)_accessibilityCanHandleContentPullDown;
- (uint64_t)_axScrollViewPagingEnabled;
- (unint64_t)_accessibilityBoundaryEdges;
- (void)_accessibilityCurrentPage:(uint64_t *)page totalPages:(char)pages forVerticalDirection:;
- (void)_accessibilityCurrentPage:(uint64_t *)page totalPages:(int)pages type:;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityScrollToTopWithAnnouncement:(id)obj touchLocation:(double)location originalHandler:(double)handler;
- (void)_accessibilitySendScrollStatus;
- (void)_accessibilitySetNavigationControllerInset:(UIEdgeInsets)inset;
- (void)_accessibilitySetScrollStatus:(id)status;
- (void)_accessibilitySetShouldUseFallbackForVisibleContentInset:(BOOL)inset;
- (void)_accessibilitySetStoredShouldUseFallbackForVisibleContentInset:(uint64_t)inset;
- (void)_accessibilitySetStoredVisibleContentInset:(uint64_t)inset;
- (void)_accessibilitySetVisibleContentInset:(UIEdgeInsets)inset;
- (void)_accessibilityZoomAtPoint:(CGPoint)point zoomIn:(BOOL)in;
- (void)_adjustScrollerIndicators:(BOOL)indicators alwaysShowingThem:(BOOL)them;
- (void)_axAnnotateScrollBars;
- (void)_axManipulateWithRefreshControl:(void *)control;
- (void)_axSetHorizontalScrollBar:(id)bar;
- (void)_axSetLastEdgeBoundaries:(id)boundaries;
- (void)_axSetLastScrubAnnouncementDate:(id)date;
- (void)_axSetOverrideShowsHorizontallScrollBars:(id)bars;
- (void)_axSetOverrideShowsVerticalScrollBars:(id)bars;
- (void)_axSetVerticalScrollBar:(id)bar;
- (void)_didEndDirectManipulationWithScrubbingDirection:(int64_t)direction;
- (void)_hideScrollIndicators;
- (void)_notifyDidScroll;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler;
- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished;
- (void)_scrollViewDidEndDeceleratingForDelegate;
- (void)accessibilityApplyScrollContent:(CGPoint)content sendScrollStatus:(BOOL)status animated:(BOOL)animated;
- (void)accessibilityApplyScrollContent:(int)content sendScrollStatus:(CGFloat)status animateWithDuration:(CGFloat)duration animationCurve:(double)curve;
- (void)accessibilityScrollIndicator:(id)indicator addProgress:(double)progress;
- (void)accessibilityScrollIndicator:(id)indicator didBecomeFocused:(BOOL)focused;
@end

@implementation UIScrollViewAccessibility

- (void)_axSetVerticalScrollBar:(id)bar
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bar);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_axSetHorizontalScrollBar:(id)bar
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bar);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_axSetOverrideShowsVerticalScrollBars:(id)bars
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bars);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_axSetOverrideShowsHorizontallScrollBars:(id)bars
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bars);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_axSetLastEdgeBoundaries:(id)boundaries
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, boundaries);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v13 = location;
  v12 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UIScrollViewAccessibility *)selfCopy _axAnnotateScrollBars];
}

- (void)_axAnnotateScrollBars
{
  selfCopy = self;
  if (self)
  {
    _axVerticalScrollIndicator = [(UIScrollViewAccessibility *)selfCopy _axVerticalScrollIndicator];
    [_UIScrollViewScrollIndicatorAccessibility setAccessibilityScrollDirection:_axVerticalScrollIndicator];
    [(_UIScrollViewScrollIndicatorAccessibility *)_axVerticalScrollIndicator setAccessibilityScrollIndicatorDelegate:selfCopy];
    _axHorizontalScrollIndicator = [(UIScrollViewAccessibility *)selfCopy _axHorizontalScrollIndicator];
    [_UIScrollViewScrollIndicatorAccessibility setAccessibilityScrollDirection:_axHorizontalScrollIndicator];
    [(_UIScrollViewScrollIndicatorAccessibility *)_axHorizontalScrollIndicator setAccessibilityScrollIndicatorDelegate:selfCopy];
    objc_storeStrong(&_axHorizontalScrollIndicator, 0);
    objc_storeStrong(&_axVerticalScrollIndicator, 0);
  }
}

- (BOOL)_axShowsVerticalScrollBar
{
  _axOverrideShowsVerticalScrollBars = [(UIScrollViewAccessibility *)self _axOverrideShowsVerticalScrollBars];
  *&v2 = MEMORY[0x29EDC9740](_axOverrideShowsVerticalScrollBars).n128_u64[0];
  if (_axOverrideShowsVerticalScrollBars)
  {
    _axOverrideShowsVerticalScrollBars2 = [(UIScrollViewAccessibility *)self _axOverrideShowsVerticalScrollBars];
    v9 = [_axOverrideShowsVerticalScrollBars2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](_axOverrideShowsVerticalScrollBars2);
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
  if (self)
  {
    _accessibilityFindRefreshControl = [(UIScrollViewAccessibility *)self _accessibilityFindRefreshControl];
    *&v1 = MEMORY[0x29EDC9740](_accessibilityFindRefreshControl).n128_u64[0];
    if (_accessibilityFindRefreshControl)
    {
      return 1;
    }

    else
    {
      [self contentOffset];
      v7 = v2;
      v6 = 0.0;
      if ([self _accessibilityUseContentInset])
      {
        [self _accessibilityContentInset];
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
  selfCopy = self;
  if (self)
  {
    [selfCopy _accessibilityContentSize];
    location[1] = v1;
    v11 = v2;
    location[0] = MEMORY[0x29EDC9748](selfCopy);
    [location[0] contentOffset];
    v9 = v3;
    [location[0] visibleBounds];
    v8 = v4;
    v7 = v11;
    if ([selfCopy _accessibilityUseContentInset])
    {
      [selfCopy _accessibilityContentInset];
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
  _axOverrideShowsHorizontallScrollBars = [(UIScrollViewAccessibility *)self _axOverrideShowsHorizontallScrollBars];
  *&v2 = MEMORY[0x29EDC9740](_axOverrideShowsHorizontallScrollBars).n128_u64[0];
  if (_axOverrideShowsHorizontallScrollBars)
  {
    _axOverrideShowsHorizontallScrollBars2 = [(UIScrollViewAccessibility *)self _axOverrideShowsHorizontallScrollBars];
    v9 = [_axOverrideShowsHorizontallScrollBars2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](_axOverrideShowsHorizontallScrollBars2);
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
  if (self)
  {
    [self contentOffset];
    return v1 < [(UIScrollViewAccessibility *)self _axMaximumContentOffset];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_axBaseScrollRightPageSupported
{
  if (self)
  {
    [self contentOffset];
    return v1 > [(UIScrollViewAccessibility *)self _axMinimumContentOffset];
  }

  else
  {
    return 0;
  }
}

- (id)_accessibilityVerticalScrollBarElement
{
  selfCopy = self;
  v14[1] = a2;
  _axVerticalScrollBar = [(UIScrollViewAccessibility *)self _axVerticalScrollBar];
  *&v2 = MEMORY[0x29EDC9740](_axVerticalScrollBar).n128_u64[0];
  if (_axVerticalScrollBar)
  {
    _axVerticalScrollBar2 = [(UIScrollViewAccessibility *)selfCopy _axVerticalScrollBar];
  }

  else if ([(UIScrollViewAccessibility *)selfCopy _axShowsVerticalScrollBar])
  {
    v14[0] = [[UIScrollBarIndicatorAccessibilityElement alloc] initWithAccessibilityContainer:selfCopy];
    [(UIScrollBarIndicatorAccessibilityElement *)v14[0] setOrientation:?];
    objc_initWeak(&location, selfCopy);
    v5 = v14[0];
    v7 = MEMORY[0x29EDCA5F8];
    v8 = -1073741824;
    v9 = 0;
    v10 = __67__UIScrollViewAccessibility__accessibilityVerticalScrollBarElement__block_invoke;
    v11 = &unk_29F30CAE8;
    objc_copyWeak(&v12, &location);
    [v5 _setAccessibilityFrameBlock:&v7];
    [(UIScrollViewAccessibility *)selfCopy _axSetVerticalScrollBar:v14[0]];
    _axVerticalScrollBar2 = MEMORY[0x29EDC9748](v14[0]);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    objc_storeStrong(v14, 0);
  }

  else
  {
    _axVerticalScrollBar2 = 0;
  }

  v3 = _axVerticalScrollBar2;

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
  selfCopy = self;
  v14[1] = a2;
  _axHorizontalScrollBar = [(UIScrollViewAccessibility *)self _axHorizontalScrollBar];
  *&v2 = MEMORY[0x29EDC9740](_axHorizontalScrollBar).n128_u64[0];
  if (_axHorizontalScrollBar)
  {
    _axHorizontalScrollBar2 = [(UIScrollViewAccessibility *)selfCopy _axHorizontalScrollBar];
  }

  else if ([(UIScrollViewAccessibility *)selfCopy _axShowsHorizontalScrollBar])
  {
    v14[0] = [[UIScrollBarIndicatorAccessibilityElement alloc] initWithAccessibilityContainer:selfCopy];
    [(UIScrollBarIndicatorAccessibilityElement *)v14[0] setOrientation:?];
    objc_initWeak(&location, selfCopy);
    v5 = v14[0];
    v7 = MEMORY[0x29EDCA5F8];
    v8 = -1073741824;
    v9 = 0;
    v10 = __69__UIScrollViewAccessibility__accessibilityHorizontalScrollBarElement__block_invoke;
    v11 = &unk_29F30CAE8;
    objc_copyWeak(&v12, &location);
    [v5 _setAccessibilityFrameBlock:&v7];
    [(UIScrollViewAccessibility *)selfCopy _axSetHorizontalScrollBar:v14[0]];
    _axHorizontalScrollBar2 = MEMORY[0x29EDC9748](v14[0]);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    objc_storeStrong(v14, 0);
  }

  else
  {
    _axHorizontalScrollBar2 = 0;
  }

  v3 = _axHorizontalScrollBar2;

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

- (void)_accessibilityScrollToTopWithAnnouncement:(id)obj touchLocation:(double)location originalHandler:(double)handler
{
  locationCopy = location;
  handlerCopy = handler;
  selfCopy = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (selfCopy)
  {
    v5 = selfCopy;
    v7 = MEMORY[0x29EDCA5F8];
    v8 = -1073741824;
    v9 = 0;
    v10 = __101__UIScrollViewAccessibility__accessibilityScrollToTopWithAnnouncement_touchLocation_originalHandler___block_invoke;
    v11 = &unk_29F30DA70;
    v14 = v17 & 1;
    v12 = MEMORY[0x29EDC9748](selfCopy);
    v13 = MEMORY[0x29EDC9748](location);
    v6.receiver = v5;
    v6.super_class = UIScrollViewAccessibility;
    objc_msgSendSuper2(&v6, sel__scrollToTopFromTouchAtScreenLocation_resultHandler_, &v7, locationCopy, handlerCopy);
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
  if (self)
  {
    notification = *MEMORY[0x29EDC7EA8];
    _accessibilityScrollStatus = [self _accessibilityScrollStatus];
    UIAccessibilityPostNotification(notification, _accessibilityScrollStatus);
    *&result = MEMORY[0x29EDC9740](_accessibilityScrollStatus).n128_u64[0];
  }

  return result;
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler
{
  locationCopy = location;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(UIScrollViewAccessibility *)selfCopy _accessibilityScrollToTopWithAnnouncement:location[0] touchLocation:locationCopy.x originalHandler:locationCopy.y];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UIScrollViewAccessibility;
    [(UIScrollViewAccessibility *)&v4 _scrollToTopFromTouchAtScreenLocation:location[0] resultHandler:locationCopy.x, locationCopy.y];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityScrollingEnabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIScrollViewAccessibility *)self _accessibilityUserDefinedScrollingEnabled];
  if (location[0])
  {
    v6 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v3 = [(UIScrollViewAccessibility *)selfCopy safeValueForKey:@"isScrollEnabled"];
    v6 = [v3 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v3);
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)_accessibilityIsScrollAncestor
{
  isAccessibilityUserDefinedScrollAncestor = [(UIScrollViewAccessibility *)self isAccessibilityUserDefinedScrollAncestor];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedScrollAncestor).n128_u64[0];
  if (!isAccessibilityUserDefinedScrollAncestor)
  {
    return [(UIScrollViewAccessibility *)self _accessibilityScrollingEnabled];
  }

  isAccessibilityUserDefinedScrollAncestor2 = [(UIScrollViewAccessibility *)self isAccessibilityUserDefinedScrollAncestor];
  v7 = [isAccessibilityUserDefinedScrollAncestor2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedScrollAncestor2);
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
  selfCopy = self;
  location[1] = a2;
  location[0] = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v5 = MEMORY[0x29EDC9748](selfCopy);
  if ((__61__UIScrollViewAccessibility__accessibilityFirstOpaqueElement__block_invoke)())
  {
    v8 = [(UIScrollViewAccessibility *)selfCopy _accessibilityFirstLastOpaqueElement:location[0] options:?];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&v5, 0);
  if (!v4)
  {
    v8 = [(UIScrollViewAccessibility *)selfCopy _accessibilityFirstOpaqueElementWithOptions:location[0]];
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
  selfCopy = self;
  v35 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (selfCopy)
  {
    _axAlwaysScrollsContentIntoView = 1;
    if (([(UIView *)selfCopy _accessibilityOpaqueElementScrollsContentIntoView]& 1) == 0)
    {
      _axAlwaysScrollsContentIntoView = [(UIView *)selfCopy _axAlwaysScrollsContentIntoView];
    }

    v32 = _axAlwaysScrollsContentIntoView & 1;
    if ([(UIView *)selfCopy _accessibilityShouldPreventOpaqueScrolling]& 1) == 0 && (v32)
    {
      if (v35)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      [(UIView *)selfCopy _accessibilityScrollOpaqueElementIntoView:v3 previousScroller:0];
    }

    v31 = [(UIView *)selfCopy _accessibilitySortedElementsWithinWithOptions:location];
    if ((v35 & 1) == 0)
    {
      reverseObjectEnumerator = [v31 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v5 = v31;
      v31 = allObjects;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](reverseObjectEnumerator);
    }

    [(UIView *)selfCopy visibleBounds];
    rect = v41;
    v30 = UIAccessibilityConvertFrameToScreenCoordinates(v41, selfCopy);
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
            [(UIView *)selfCopy _accessibilityVisibleItemDenominator];
            if (height > v16 / v11)
            {
              break;
            }

            v15 = v30.size.height;
            [(UIView *)selfCopy _accessibilityVisibleItemDenominator];
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

- (id)_accessibilityFirstOpaqueElementWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke;
  v11 = &unk_29F30CEB0;
  v12 = MEMORY[0x29EDC9748](selfCopy);
  v13 = (__73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke)();
  v5 = MEMORY[0x29EDC9748](selfCopy);
  v6 = (__73__UIScrollViewAccessibility__accessibilityFirstOpaqueElementWithOptions___block_invoke_433)();
  if (v13 & 1) == 0 || (v6)
  {
    _accessibilityFirstOpaqueElement = [(UIScrollViewAccessibility *)selfCopy _accessibilityFirstLastOpaqueElement:location[0] options:?];
  }

  else
  {
    _accessibilityFirstOpaqueElement = [(UIScrollViewAccessibility *)selfCopy _accessibilityFirstOpaqueElement];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v3 = _accessibilityFirstOpaqueElement;

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
  selfCopy = self;
  location[1] = a2;
  location[0] = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v5 = MEMORY[0x29EDC9748](selfCopy);
  if ((__60__UIScrollViewAccessibility__accessibilityLastOpaqueElement__block_invoke)())
  {
    v8 = [(UIScrollViewAccessibility *)selfCopy _accessibilityFirstLastOpaqueElement:location[0] options:?];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&v5, 0);
  if (!v4)
  {
    v8 = [(UIScrollViewAccessibility *)selfCopy _accessibilityLastOpaqueElementWithOptions:location[0]];
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

- (id)_accessibilityLastOpaqueElementWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke;
  v11 = &unk_29F30CEB0;
  v12 = MEMORY[0x29EDC9748](selfCopy);
  v13 = (__72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke)();
  v5 = MEMORY[0x29EDC9748](selfCopy);
  v6 = (__72__UIScrollViewAccessibility__accessibilityLastOpaqueElementWithOptions___block_invoke_445)();
  if (v13 & 1) == 0 || (v6)
  {
    _accessibilityLastOpaqueElement = [(UIScrollViewAccessibility *)selfCopy _accessibilityFirstLastOpaqueElement:location[0] options:?];
  }

  else
  {
    _accessibilityLastOpaqueElement = [(UIScrollViewAccessibility *)selfCopy _accessibilityLastOpaqueElement];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v3 = _accessibilityLastOpaqueElement;

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

- (id)_accessibilityFocusAbsoluteFirstLastOpaqueElement:(BOOL)element technology:(id)technology honorsGroups:(BOOL)groups shouldAlwaysScroll:(BOOL)scroll
{
  selfCopy = self;
  v16 = a2;
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, technology);
  groupsCopy = groups;
  scrollCopy = scroll;
  [(UIScrollViewAccessibility *)selfCopy _axSetAlwaysScrollsContentIntoView:scroll];
  v10.receiver = selfCopy;
  v10.super_class = UIScrollViewAccessibility;
  v11 = [(UIScrollViewAccessibility *)&v10 _accessibilityFocusAbsoluteFirstLastOpaqueElement:elementCopy technology:location honorsGroups:groups shouldAlwaysScroll:scroll];
  [(UIScrollViewAccessibility *)selfCopy _axSetAlwaysScrollsContentIntoView:0];
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
  if (self)
  {
    _accessibilityPagingEnabled = [self _accessibilityPagingEnabled];
    *&v1 = MEMORY[0x29EDC9740](_accessibilityPagingEnabled).n128_u64[0];
    if (_accessibilityPagingEnabled)
    {
      _accessibilityPagingEnabled2 = [self _accessibilityPagingEnabled];
      v6 = [_accessibilityPagingEnabled2 BOOLValue] & 1;
      MEMORY[0x29EDC9740](_accessibilityPagingEnabled2);
    }

    else
    {
      v6 = [self isPagingEnabled] & 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_accessibilityScrollToFrame:(CGRect)frame forView:(id)view
{
  v129 = *MEMORY[0x29EDCA608];
  frameCopy = frame;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  [(UIScrollViewAccessibility *)selfCopy visibleBounds];
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
    v78 = NSStringFromCGRect(frameCopy);
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
  if (location[0] == selfCopy)
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
    frameCopy = v110;
  }

  v109 = AXLogScrollToVisible();
  v108 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
  {
    v68 = v109;
    v69 = v108;
    v70 = NSStringFromCGRect(frameCopy);
    v107 = MEMORY[0x29EDC9748](v70);
    __os_log_helper_16_2_2_8_66_8_66(v127, v107, selfCopy);
    _os_log_debug_impl(&dword_29C4D6000, v68, v69, "Will scroll to frame %{public}@ in bounds for %{public}@", v127, 0x16u);
    MEMORY[0x29EDC9740](v70);
    objc_storeStrong(&v107, 0);
  }

  objc_storeStrong(&v109, 0);
  v106 = 0;
  [(UIScrollViewAccessibility *)selfCopy _accessibilityVisibleContentInset];
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
  origin = frameCopy.origin;
  v100.origin.x = UIEdgeInsetsInsetRect_0(frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height, insets.top, insets.left);
  v100.origin.y = v16;
  v100.size.width = v17;
  v100.size.height = v18;
  frameCopy = v100;
  if (([(UIScrollViewAccessibility *)selfCopy _axScrollViewPagingEnabled]& 1) == 0)
  {
    v99 = CGRectInset(frameCopy, -*&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding, -*&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding);
    frameCopy = v99;
    v98 = CGRectInset(recta, *&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding, *&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding);
    recta = v98;
  }

  MinX = CGRectGetMinX(frameCopy);
  if (MinX >= CGRectGetMinX(recta) || (v62 = CGRectGetMinX(frameCopy), v19 = CGRectGetMinX(recta), v63 = 1, AXCGFAbs_0(v62 - v19) < 0.001))
  {
    MinY = CGRectGetMinY(frameCopy);
    if (MinY >= CGRectGetMinY(recta) || (v60 = CGRectGetMinY(frameCopy), v20 = CGRectGetMinY(recta), v63 = 1, AXCGFAbs_0(v60 - v20) < 0.001))
    {
      MaxX = CGRectGetMaxX(frameCopy);
      if (MaxX <= CGRectGetMaxX(recta) || (v58 = CGRectGetMaxX(frameCopy), v21 = CGRectGetMaxX(recta), v63 = 1, AXCGFAbs_0(v58 - v21) < 0.001))
      {
        MaxY = CGRectGetMaxY(frameCopy);
        v57 = 0;
        if (MaxY > CGRectGetMaxY(recta))
        {
          v55 = CGRectGetMaxY(frameCopy);
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
    v54 = NSStringFromCGRect(frameCopy);
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

  [(UIScrollViewAccessibility *)selfCopy bounds];
  v93 = CGRectInset(v130, *&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding, *&_accessibilityScrollToFrame_forView__FingerSizeInsetPadding);
  rect1 = v93;
  if (CGRectContainsRect(v93, frameCopy))
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
      v34 = NSStringFromCGRect(frameCopy);
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

  [(UIScrollViewAccessibility *)selfCopy contentOffset];
  point.x = v23;
  point.y = v24;
  if ([(UIScrollViewAccessibility *)selfCopy _axShouldScrollToAlignWithPage])
  {
    v91.x = [(UIScrollViewAccessibility *)selfCopy _axPageAlignedContentOffsetForPoint:origin.x forValidation:origin.y];
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

  Width = UIRectGetWidth(frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width);
  if (Width > UIRectGetWidth(rect1.origin.x, rect1.origin.y, rect1.size.width))
  {
    goto LABEL_35;
  }

  v48 = UIRectGetMaxX(frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width);
  if (v48 >= UIRectGetMaxX(rect1.origin.x, rect1.origin.y, rect1.size.width))
  {
    v47 = UIRectGetMaxX(frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width);
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
  Height = UIRectGetHeight(frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height);
  if (Height > UIRectGetHeight(rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height))
  {
    goto LABEL_40;
  }

  v44 = UIRectGetMaxY(frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height);
  if (v44 < UIRectGetMaxY(rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height))
  {
    v42 = UIRectGetMinY(frameCopy.origin.x, frameCopy.origin.y);
    if (v42 >= UIRectGetMinY(rect1.origin.x, rect1.origin.y))
    {
      goto LABEL_41;
    }

LABEL_40:
    point.y = UIRectGetMinY(frameCopy.origin.x, frameCopy.origin.y);
    goto LABEL_41;
  }

  v43 = UIRectGetMaxY(frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height);
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
  v36 = selfCopy;
  _accessibilityShouldAnimateScrollToVisible = [(UIScrollViewAccessibility *)selfCopy _accessibilityShouldAnimateScrollToVisible];
  [(UIScrollViewAccessibility *)v36 accessibilityApplyScrollContent:0 sendScrollStatus:_accessibilityShouldAnimateScrollToVisible animated:point];
  v122 = 1;
  v83 = 1;
LABEL_48:
  objc_storeStrong(location, 0);
  return v122 & 1;
}

- (CGFloat)_axPageAlignedContentOffsetForPoint:(double)point forValidation:(double)validation
{
  v42 = *MEMORY[0x29EDCA608];
  pointCopy = point;
  validationCopy = validation;
  selfCopy = self;
  v30 = a2;
  if (self)
  {
    [selfCopy _axPageSize];
    v28 = v4;
    v29 = v5;
    v27 = MEMORY[0x29EDC9748](selfCopy);
    [v27 _pagingOrigin];
    point.x = v6;
    point.y = v7;
    pointCopy2 = point;
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

    v22 = (pointCopy - point.x) / v28;
    v21 = (validationCopy - point.y) / v29;
    v38 = v22;
    if (ceil(v22) - v22 >= v8)
    {
      v40 = (pointCopy - point.x) / v28;
      v13 = floor(v22);
    }

    else
    {
      v37 = (pointCopy - point.x) / v28;
      v13 = ceil(v22);
    }

    pointCopy2.x = pointCopy2.x + v13 * v28;
    v36 = (validationCopy - point.y) / v29;
    if (ceil(v21) - v21 >= v8)
    {
      v39 = (validationCopy - point.y) / v29;
      v12 = floor(v21);
    }

    else
    {
      v35 = (validationCopy - point.y) / v29;
      v12 = ceil(v21);
    }

    pointCopy2.y = pointCopy2.y + v12 * v29;
    _axMinimumContentOffset = [(UIScrollViewAccessibility *)selfCopy _axMinimumContentOffset];
    v20 = v9;
    _axMaximumContentOffset = [(UIScrollViewAccessibility *)selfCopy _axMaximumContentOffset];
    v18 = v10;
    pointCopy2.x = CGFloatMinMax_0(pointCopy2.x, _axMinimumContentOffset, _axMaximumContentOffset);
    pointCopy2.y = CGFloatMinMax_0(pointCopy2.y, v20, v18);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    pointCopy2 = 0;
  }

  return pointCopy2.x;
}

- (int64_t)accessibilityContainerType
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UIScrollViewAccessibility *)self storedAccessibilityContainerType];
  if (location[0])
  {
    integerValue = [location[0] integerValue];
  }

  else
  {
    integerValue = 12;
  }

  objc_storeStrong(location, 0);
  return integerValue;
}

- (BOOL)_accessibilityShouldAnimateScroll
{
  if (self)
  {
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    applicationState = [mEMORY[0x29EDC7938] applicationState];
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]);
    return applicationState != 2;
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

- (void)_accessibilityCurrentPage:(uint64_t *)page totalPages:(int)pages type:
{
  if (self)
  {
    pagesCopy = 1;
    v6 = [self _accessibilityValueForKey:@"kUIScrollViewScrollVerticalStorageKey"];
    intValue = [v6 intValue];
    *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    if (intValue)
    {
      pagesCopy = intValue;
    }

    if (pagesCopy == 3 || pages == 3)
    {
      if (pages == 2 || pages == 1)
      {
        pagesCopy = pages;
      }

      else
      {
        if ([self _accessibilityScrollStatusPrefersVertical])
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }

        pagesCopy = v5;
      }
    }

    [(UIScrollViewAccessibility *)self _accessibilityCurrentPage:a2 totalPages:page forVerticalDirection:pagesCopy == 1];
  }
}

- (void)_accessibilityCurrentPage:(uint64_t *)page totalPages:(char)pages forVerticalDirection:
{
  if (self)
  {
    [self visibleBounds];
    v28 = v4;
    v29 = v5;
    v30 = v6;
    v31 = v7;
    [self _accessibilityScrollHeightDistance];
    v27 = v8;
    [self _accessibilityScrollWidthDistance];
    v26 = v9;
    [self _accessibilityContentSize];
    v24 = v10;
    v25 = v11;
    [self _accessibilityVisibleContentInset];
    v23.origin.x = UIEdgeInsetsInsetRect_0(v28, v29, v30, v31, v12, v13);
    v23.origin.y = v14;
    v23.size.width = v15;
    v23.size.height = v16;
    if ((pages & 1) == 0 || v25 == v27)
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

    if (page)
    {
      *page = v32;
    }

    if (a2)
    {
      *a2 = v33;
    }
  }
}

- (double)_axMinimumContentOffset
{
  if (!self)
  {
    return 0.0;
  }

  [self safeCGPointForKey:@"_minimumContentOffset"];
  return v1;
}

- (double)_axMaximumContentOffset
{
  if (!self)
  {
    return 0.0;
  }

  [self safeCGPointForKey:@"_maximumContentOffset"];
  return v1;
}

- (id)_accessibilityFindRefreshControl
{
  v16 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    location = [selfCopy safeValueForKey:@"_refreshControl"];
    if (!location)
    {
      v11 = [selfCopy safeValueForKey:@"subviews"];
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
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v2 _scrollViewDidEndDeceleratingForDelegate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74C8], 0);
}

- (void)_notifyDidScroll
{
  selfCopy = self;
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

  location = MEMORY[0x29EDC9748](selfCopy);
  if ([location isFirstResponder])
  {
    _accessibilityBoundaryEdges = [(UIScrollViewAccessibility *)selfCopy _accessibilityBoundaryEdges];
    _axLastEdgeBoundaries = [(UIScrollViewAccessibility *)selfCopy _axLastEdgeBoundaries];
    v10 = 0;
    v8 = 1;
    if (_axLastEdgeBoundaries)
    {
      _axLastEdgeBoundaries2 = [(UIScrollViewAccessibility *)selfCopy _axLastEdgeBoundaries];
      v10 = 1;
      v8 = _accessibilityBoundaryEdges != [_axLastEdgeBoundaries2 unsignedIntegerValue];
    }

    if (v10)
    {
      MEMORY[0x29EDC9740](_axLastEdgeBoundaries2);
    }

    *&v2 = MEMORY[0x29EDC9740](_axLastEdgeBoundaries).n128_u64[0];
    if (v8)
    {
      v5 = selfCopy;
      v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{_accessibilityBoundaryEdges, v2}];
      [(UIScrollViewAccessibility *)v5 _axSetLastEdgeBoundaries:?];
      *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      if (_accessibilityBoundaryEdges)
      {
        v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{_accessibilityBoundaryEdges, v3}];
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
  _axMinimumContentOffset = [(UIScrollViewAccessibility *)self _axMinimumContentOffset];
  v10 = v4;
  _axMaximumContentOffset = [(UIScrollViewAccessibility *)self _axMaximumContentOffset];
  v7 = v12 <= v10;
  if (v12 >= v5)
  {
    v7 |= 4uLL;
  }

  if (v11 <= _axMinimumContentOffset)
  {
    v7 |= 2uLL;
  }

  if (v11 >= _axMaximumContentOffset)
  {
    v7 |= 8uLL;
  }

  return v7;
}

- (id)_accessibilityDelegateScrollStatus
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [(UIScrollViewAccessibility *)self _accessibilityRetrieveDelegate];
  v6 = MEMORY[0x29EDC9748](selfCopy);
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
  if (!self)
  {
    return 0.0;
  }

  _accessibilityAllowedPagingOverlap = [self _accessibilityAllowedPagingOverlap];
  *&v1 = MEMORY[0x29EDC9740](_accessibilityAllowedPagingOverlap).n128_u64[0];
  if (!_accessibilityAllowedPagingOverlap)
  {
    return 0.0;
  }

  _accessibilityAllowedPagingOverlap2 = [self _accessibilityAllowedPagingOverlap];
  [_accessibilityAllowedPagingOverlap2 doubleValue];
  v7 = v2;
  MEMORY[0x29EDC9740](_accessibilityAllowedPagingOverlap2);
  return v7;
}

- (id)_accessibilityElementsFilteredByPagingScrollView:(void *)view
{
  v43 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  location = 0;
  objc_storeStrong(&location, a2);
  if (viewCopy)
  {
    v37 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(location, "count")}];
    if (-[UIScrollViewAccessibility _axScrollViewPagingEnabled](viewCopy) & 1) == 0 || ([viewCopy _accessibilityScrollAcrossPageBoundaries])
    {
      v41 = 0;
      v38 = 1;
    }

    else
    {
      bOOLValue = 0;
      _accessibilityPagingEnabled = [viewCopy _accessibilityPagingEnabled];
      *&v2 = MEMORY[0x29EDC9740](_accessibilityPagingEnabled).n128_u64[0];
      if (_accessibilityPagingEnabled)
      {
        _accessibilityPagingEnabled2 = [viewCopy _accessibilityPagingEnabled];
        bOOLValue = [_accessibilityPagingEnabled2 BOOLValue];
        MEMORY[0x29EDC9740](_accessibilityPagingEnabled2);
      }

      [viewCopy visibleBounds];
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
          [v21 convertRect:viewCopy toView:{v7, v8, v9, v10}];
          r2.origin.x = v11;
          r2.origin.y = v12;
          r2.size.width = v13;
          r2.size.height = v14;
          if (bOOLValue)
          {
            v45 = CGRectIntersection(v35, r2);
            height = v45.size.height;
            if (v45.size.width >= [(UIScrollViewAccessibility *)viewCopy _axAllowedPagingOverlap]&& height >= [(UIScrollViewAccessibility *)viewCopy _axAllowedPagingOverlap])
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
  selfCopy = self;
  v10[1] = a2;
  subviews = [(UIScrollViewAccessibility *)self subviews];
  v10[0] = [(UIScrollViewAccessibility *)self _accessibilityElementsFilteredByPagingScrollView:subviews];
  *&v2 = MEMORY[0x29EDC9740](subviews).n128_u64[0];
  if (!v10[0])
  {
    v9.receiver = selfCopy;
    v9.super_class = UIScrollViewAccessibility;
    _accessibilitySubviews = [(UIScrollViewAccessibility *)&v9 _accessibilitySubviews];
    v4 = v10[0];
    v10[0] = _accessibilitySubviews;
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

- (void)_accessibilitySetScrollStatus:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  [(UIScrollViewAccessibility *)selfCopy _accessibilitySetValue:location[0] forKey:@"accessibilityScrollStatus" storageMode:0];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityScrollStatus
{
  selfCopy = self;
  v20[1] = a2;
  v20[0] = [(UIScrollViewAccessibility *)self _accessibilityValueForKey:@"accessibilityScrollStatus"];
  if (![v20[0] length])
  {
    _accessibilityDelegateScrollStatus = [(UIScrollViewAccessibility *)selfCopy _accessibilityDelegateScrollStatus];
    v3 = v20[0];
    v20[0] = _accessibilityDelegateScrollStatus;
    MEMORY[0x29EDC9740](v3);
  }

  if (![v20[0] length])
  {
    v19 = 0;
    v18 = 0;
    v12 = [(UIScrollViewAccessibility *)selfCopy _accessibilityValueForKey:?];
    intValue = [v12 intValue];
    *&v4 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    [(UIScrollViewAccessibility *)selfCopy _accessibilitySetIntegerValue:3 forKey:@"kUIScrollViewScrollVerticalStorageKey", v4];
    [(UIScrollViewAccessibility *)selfCopy _accessibilityCurrentPage:&v19 totalPages:intValue type:?];
    v14 = MEMORY[0x29EDBA0F8];
    _accessibilityScrollStatusFormatString = [(UIScrollViewAccessibility *)selfCopy _accessibilityScrollStatusFormatString];
    v16 = AXFormatInteger();
    v15 = AXFormatInteger();
    v5 = [v14 stringWithFormat:_accessibilityScrollStatusFormatString, v16, v15];
    v6 = v20[0];
    v20[0] = v5;
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v15);
    MEMORY[0x29EDC9740](v16);
    MEMORY[0x29EDC9740](_accessibilityScrollStatusFormatString);
    if (([(UIScrollViewAccessibility *)selfCopy _axScrollViewPagingEnabled]& 1) != 0 && intValue == 2)
    {
      v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v20[0]];
      v8 = v20[0];
      v20[0] = v7;
      *&v9 = MEMORY[0x29EDC9740](v8).n128_u64[0];
      [v20[0] setAttribute:MEMORY[0x29EDB8EB0] forKey:{*MEMORY[0x29EDBDB20], v9}];
    }

    [(UIScrollViewAccessibility *)selfCopy _accessibilitySetIntegerValue:intValue forKey:@"kUIScrollViewScrollVerticalStorageKey"];
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

- (void)_accessibilityZoomAtPoint:(CGPoint)point zoomIn:(BOOL)in
{
  pointCopy = point;
  selfCopy = self;
  v17 = a2;
  inCopy = in;
  v15 = MEMORY[0x29EDC9748](self);
  [v15 maximumZoomScale];
  v13 = v4;
  [v15 minimumZoomScale];
  v14 = (v13 - v5) / 10.0;
  if (!inCopy)
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
  if (self)
  {
    if ((_accessibilityCanHandleContentPullDown__kAXCanHandleContentPullDownInitialized & 1) == 0)
    {
      mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      _accessibilityCanHandleContentPullDown__kAXCanHandleContentPullDown = ([bundleIdentifier hasPrefix:@"com.apple."] ^ 1) & 1;
      MEMORY[0x29EDC9740](bundleIdentifier);
      MEMORY[0x29EDC9740](mainBundle);
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

- (void)_axManipulateWithRefreshControl:(void *)control
{
  controlCopy = control;
  location = 0;
  objc_storeStrong(&location, a2);
  if (controlCopy)
  {
    [location beginRefreshing];
    [location sendActionsForControlEvents:4096];
    v12 = controlCopy;
    [controlCopy contentOffset];
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
    _accessibilityAXAttributedHint = [location _accessibilityAXAttributedHint];
    if (!v18[0])
    {
      attributedTitle = [location attributedTitle];
      v18[0] = [attributedTitle string];
      MEMORY[0x29EDC9740](0);
      MEMORY[0x29EDC9740](attributedTitle);
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
    objc_storeStrong(&_accessibilityAXAttributedHint, 0);
    objc_storeStrong(v18, 0);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_accessibilityContentOffsetForScrollDirection:(int)direction newContentOffset:(CGPoint *)offset distanceMultiplier:(double)multiplier
{
  selfCopy = self;
  v70 = a2;
  directionCopy = direction;
  offsetCopy = offset;
  multiplierCopy = multiplier;
  [(UIScrollViewAccessibility *)self visibleBounds];
  v66.origin.x = v5;
  v66.origin.y = v6;
  v66.size.width = v7;
  v66.size.height = v8;
  [(UIScrollViewAccessibility *)selfCopy _accessibilityScrollHeightDistance];
  v65 = v9 * multiplierCopy;
  [(UIScrollViewAccessibility *)selfCopy _accessibilityScrollWidthDistance];
  v64 = v10 * multiplierCopy;
  if (directionCopy)
  {
    if (directionCopy == 1)
    {
      [(UIScrollViewAccessibility *)selfCopy _accessibilityContentSize];
      v47 = v18;
      if (v18 == v66.size.height)
      {
        v72 = 0;
        return v72 & 1;
      }

      if ([(UIScrollViewAccessibility *)selfCopy _accessibilityUseContentInset])
      {
        [(UIScrollViewAccessibility *)selfCopy _accessibilityContentInset];
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
        [(UIScrollViewAccessibility *)selfCopy _accessibilityUseContentInset];
        CGPointMake_6();
        v44.x = v21;
        v44.y = v22;
        *offsetCopy = v44;
      }
    }

    else if (directionCopy == 2)
    {
      [(UIScrollViewAccessibility *)selfCopy _accessibilityContentSize];
      v43 = v23;
      if (v23 == v66.size.width)
      {
        v72 = 0;
        return v72 & 1;
      }

      if ([(UIScrollViewAccessibility *)selfCopy _accessibilityUseContentInset])
      {
        [(UIScrollViewAccessibility *)selfCopy _accessibilityContentInset];
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
        [(UIScrollViewAccessibility *)selfCopy _accessibilityUseContentInset];
        CGPointMake_6();
        v40.x = v26;
        v40.y = v27;
        *offsetCopy = v40;
      }
    }

    else
    {
      [(UIScrollViewAccessibility *)selfCopy _accessibilityContentSize];
      if (v28 == v66.size.width)
      {
        v72 = 0;
        return v72 & 1;
      }

      if ([(UIScrollViewAccessibility *)selfCopy _accessibilityUseContentInset])
      {
        [(UIScrollViewAccessibility *)selfCopy _accessibilityContentInset];
      }

      CGPointMake_6();
      v39.x = v29;
      v39.y = v30;
      *offsetCopy = v39;
    }

    goto LABEL_44;
  }

  [(UIScrollViewAccessibility *)selfCopy _accessibilityContentSize];
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

  _accessibilityFindRefreshControl = [(UIScrollViewAccessibility *)selfCopy _accessibilityFindRefreshControl];
  if (_accessibilityFindRefreshControl)
  {
    [(UIScrollViewAccessibility *)selfCopy _axManipulateWithRefreshControl:_accessibilityFindRefreshControl];
    p_x = &offsetCopy->x;
    v53 = 0;
    v54 = &v53;
    v55 = 0x10000000;
    v56 = 48;
    v57 = &unk_29C6A1FE6;
    v58 = 0;
    v59 = 0;
    v52[1] = &v53;
    v52[0] = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    *p_x = *(v54 + 2);
    objc_storeStrong(v52, 0);
    _Block_object_dispose(&v53, 8);
    if (__CGPointEqualToPoint_1(offsetCopy->x, offsetCopy->y, *MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)))
    {
      v37 = &offsetCopy->x;
      [(UIScrollViewAccessibility *)selfCopy contentOffset];
      *&v51 = v13;
      *(&v51 + 1) = v14;
      *v37 = v51;
    }

    v72 = 1;
    v50 = 1;
  }

  else if (([(UIScrollViewAccessibility *)selfCopy _accessibilityCanHandleContentPullDown]& 1) != 0 && ([(UIScrollViewAccessibility *)selfCopy safeBoolForKey:@"bouncesZoom"]& 1) != 0)
  {
    [UIScrollViewAccessibility _axHandleScrollViewPullDown];
    v72 = 1;
    v50 = 1;
  }

  else
  {
    v50 = 0;
  }

  objc_storeStrong(&_accessibilityFindRefreshControl, 0);
  if (!v50)
  {
LABEL_17:
    v49 = 0.0;
    if ([(UIScrollViewAccessibility *)selfCopy _accessibilityUseContentInset])
    {
      [(UIScrollViewAccessibility *)selfCopy _accessibilityContentInset];
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
    v35 = &offsetCopy->x;
    CGPointMake_6();
    *&v48 = v16;
    *(&v48 + 1) = v17;
    *v35 = v48;
LABEL_44:
    [(UIScrollViewAccessibility *)selfCopy contentOffset];
    v34 = 0;
    if (AXCGFAbs_0(v31 - offsetCopy->x) < 0.001)
    {
      [(UIScrollViewAccessibility *)selfCopy contentOffset];
      v34 = AXCGFAbs_0(v32 - offsetCopy->y) < 0.001;
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

- (BOOL)_accessibilityScrollPageInDirection:(int)direction
{
  selfCopy = self;
  v21 = a2;
  directionCopy = direction;
  v19 = 0;
  if (direction)
  {
    switch(direction)
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

  if (([(UIScrollViewAccessibility *)selfCopy _accessibilityHasActionBlockForKey:v19]& 1) == 0 || ((v18 = 0, v17 = 0, v16 = 0, v15 = 0, [(UIScrollViewAccessibility *)selfCopy _accessibilityActionBlock:&v16 andValue:&v15 forKey:v19], v3 = MEMORY[0x29ED3E4C0](v16), v4 = v18, v18 = v3, MEMORY[0x29EDC9740](v4), objc_storeStrong(&v17, v15), !v18) ? (v14 = 0) : (v23 = (*(v18 + 2))(v18, v17) & 1, v14 = 1), objc_storeStrong(&v17, 0), objc_storeStrong(&v18, 0), !v14))
  {
    v11 = 1;
    if (directionCopy)
    {
      v11 = directionCopy == 1;
    }

    v13 = v11;
    v9 = selfCopy;
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
    if ([(UIScrollViewAccessibility *)selfCopy _accessibilityScrollingEnabled])
    {
      v12 = 0uLL;
      v12 = *MEMORY[0x29EDB90B8];
      if ([(UIScrollViewAccessibility *)selfCopy _accessibilityContentOffsetForScrollDirection:directionCopy newContentOffset:&v12 distanceMultiplier:1.0])
      {
        ShouldAnimate = [(UIScrollViewAccessibility *)selfCopy _accessibilityShouldAnimateScroll];
        [(UIScrollViewAccessibility *)selfCopy accessibilityApplyScrollContent:1 sendScrollStatus:ShouldAnimate animated:v12];
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

- (CGFloat)accessibilityValidateScrollContentOffset:(CGFloat)offset
{
  v28 = *MEMORY[0x29EDCA608];
  v25.x = a2;
  v25.y = offset;
  selfCopy = self;
  if (self)
  {
    if ([selfCopy _axShouldScrollToAlignWithPage])
    {
      [selfCopy _axPageSize];
      v22 = v3;
      v23 = v4;
      CGPointMake_6();
      oslog[1] = v5;
      oslog[2] = v6;
      v21.x = [(UIScrollViewAccessibility *)selfCopy _axPageAlignedContentOffsetForPoint:*&v5 forValidation:*&v6];
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
      _axMinimumContentOffset = [(UIScrollViewAccessibility *)selfCopy _axMinimumContentOffset];
      v17 = v8;
      _axMaximumContentOffset = [(UIScrollViewAccessibility *)selfCopy _axMaximumContentOffset];
      v15 = v9;
      v25.x = CGFloatMinMax_0(v25.x, _axMinimumContentOffset, _axMaximumContentOffset);
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

- (void)accessibilityApplyScrollContent:(CGPoint)content sendScrollStatus:(BOOL)status animated:(BOOL)animated
{
  v5 = 0.0;
  if (animated)
  {
    if (UIAccessibilityIsSwitchControlRunning())
    {
      [(UIScrollViewAccessibility *)self accessibilityApplyScrollContent:status sendScrollStatus:1 animateWithDuration:content.x animationCurve:content.y, 1.0];
      return;
    }

    v5 = 0.15;
  }

  [(UIScrollViewAccessibility *)self accessibilityApplyScrollContent:status sendScrollStatus:0 animateWithDuration:content.x animationCurve:content.y, v5];
}

- (void)accessibilityApplyScrollContent:(int)content sendScrollStatus:(CGFloat)status animateWithDuration:(CGFloat)duration animationCurve:(double)curve
{
  v50 = *MEMORY[0x29EDCA608];
  v48.x = status;
  v48.y = duration;
  selfCopy = self;
  v46 = a2;
  curveCopy = curve;
  contentCopy = content;
  if (self)
  {
    v43 = curveCopy > 0.0;
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
    v39.x = [(UIScrollViewAccessibility *)selfCopy accessibilityValidateScrollContentOffset:v48.y];
    v39.y = v6;
    v48 = v39;
    [selfCopy contentOffset];
    v37 = v7;
    v38 = v8;
    if (!__CGPointEqualToPoint_1(v7, v8, v48.x, v48.y))
    {
      v36 = [selfCopy safeValueForKey:@"delegate"];
      if (objc_opt_respondsToSelector())
      {
        [v36 scrollViewWillBeginDragging:selfCopy];
      }

      if (objc_opt_respondsToSelector())
      {
        v35 = v48;
        [v36 scrollViewWillEndDragging:selfCopy withVelocity:&v48 targetContentOffset:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
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
      _contentOffsetRoundingEnabled = [v27 _contentOffsetRoundingEnabled];
      [v30 _setContentOffsetRoundingEnabled:0];
      v17[1] = MEMORY[0x29EDCA5F8];
      v18 = -1073741824;
      v19 = 0;
      v20 = __113__UIScrollViewAccessibility_accessibilityApplyScrollContent_sendScrollStatus_animateWithDuration_animationCurve___block_invoke;
      v21 = &unk_29F30DA98;
      v22 = MEMORY[0x29EDC9748](selfCopy);
      v23 = v48;
      v24 = curveCopy;
      v25 = contentCopy;
      AXPerformSafeBlock();
      v17[0] = [selfCopy safeValueForKey:@"_animation"];
      if (v43 && !v17[0])
      {
        v43 = 0;
      }

      if (v43)
      {
        [selfCopy _accessibilitySetBoolValue:v46 & 1 forKey:@"_accessibilityScrollViewSendScrollStatus"];
        [selfCopy _accessibilitySetBoolValue:1 forKey:@"_accessibilityScrollViewAnimationEndedShouldHandleDelegateCallbacks"];
        [v30 _setContentOffsetRoundingEnabled:_contentOffsetRoundingEnabled & 1];
      }

      else
      {
        v13 = MEMORY[0x29EDC9748](selfCopy);
        v15 = v46 & 1;
        v14 = MEMORY[0x29EDC9748](v30);
        v16 = _contentOffsetRoundingEnabled & 1;
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

- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ended);
  finishedCopy = finished;
  v31 = [(UIScrollViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"_accessibilityScrollViewAnimationEndedShouldHandleDelegateCallbacks"];
  if (v31)
  {
    v30 = [(UIScrollViewAccessibility *)selfCopy _accessibilityBoolValueForKey:?];
    [(UIScrollViewAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"_accessibilityScrollViewSendScrollStatus"];
    [(UIScrollViewAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"_accessibilityScrollViewAnimationEndedShouldHandleDelegateCallbacks"];
    v29 = [(UIScrollViewAccessibility *)selfCopy safeValueForKey:@"delegate"];
    if (objc_opt_respondsToSelector())
    {
      v27 = 0;
      v28 = 0;
      [(UIScrollViewAccessibility *)selfCopy contentOffset];
      v27 = v4;
      v28 = v5;
      [v29 scrollViewWillEndDragging:selfCopy withVelocity:&v27 targetContentOffset:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v29 scrollViewDidEndDragging:selfCopy willDecelerate:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [v29 scrollViewWillBeginDecelerating:selfCopy];
    }

    v21[1] = MEMORY[0x29EDCA5F8];
    v22 = -1073741824;
    v23 = 0;
    v24 = __64__UIScrollViewAccessibility__scrollViewAnimationEnded_finished___block_invoke;
    v25 = &unk_29F30C7C8;
    v26 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    v6 = MEMORY[0x29EDC7DA0];
    v16 = MEMORY[0x29EDCA5F8];
    v17 = -1073741824;
    v18 = 0;
    v19 = __64__UIScrollViewAccessibility__scrollViewAnimationEnded_finished___block_invoke_2;
    v20 = &unk_29F30C7C8;
    v21[0] = MEMORY[0x29EDC9748](selfCopy);
    v9 = MEMORY[0x29EDCA5F8];
    v10 = -1073741824;
    v11 = 0;
    v12 = __64__UIScrollViewAccessibility__scrollViewAnimationEnded_finished___block_invoke_3;
    v13 = &unk_29F30DAE8;
    v15 = v30 & 1;
    v14 = MEMORY[0x29EDC9748](selfCopy);
    [v6 animateWithDuration:&v16 animations:&v9 completion:0.15];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(v21, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = UIScrollViewAccessibility;
    [(UIScrollViewAccessibility *)&v8 _scrollViewAnimationEnded:location[0] finished:finishedCopy];
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

- (CGPoint)_accessibilityVisibleScrollArea:(BOOL)area
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
  accessibilityLabel = [(UIScrollViewAccessibility *)self accessibilityLabel];
  v4 = [accessibilityLabel length];
  MEMORY[0x29EDC9740](accessibilityLabel);
  return v4 != 0;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIScrollViewAccessibility *)self accessibilityUserDefinedFrame];
  if (location[0])
  {
    [location[0] rectValue];
  }

  else
  {
    v10.receiver = selfCopy;
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
  _accessibilityStoredShouldUseFallbackForVisibleContentInset = [(UIScrollViewAccessibility *)self _accessibilityStoredShouldUseFallbackForVisibleContentInset];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityStoredShouldUseFallbackForVisibleContentInset).n128_u64[0];
  if (_accessibilityStoredShouldUseFallbackForVisibleContentInset)
  {
    _accessibilityStoredShouldUseFallbackForVisibleContentInset2 = [(UIScrollViewAccessibility *)self _accessibilityStoredShouldUseFallbackForVisibleContentInset];
    v20 = [_accessibilityStoredShouldUseFallbackForVisibleContentInset2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](_accessibilityStoredShouldUseFallbackForVisibleContentInset2);
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

- (void)_accessibilitySetStoredShouldUseFallbackForVisibleContentInset:(uint64_t)inset
{
  insetCopy = inset;
  location = 0;
  objc_storeStrong(&location, a2);
  if (insetCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (void)_accessibilitySetShouldUseFallbackForVisibleContentInset:(BOOL)inset
{
  v4 = [MEMORY[0x29EDBA070] numberWithBool:inset];
  [(UIScrollViewAccessibility *)self _accessibilitySetStoredShouldUseFallbackForVisibleContentInset:v4];
  MEMORY[0x29EDC9740](v4);
}

- (void)_accessibilitySetStoredVisibleContentInset:(uint64_t)inset
{
  insetCopy = inset;
  location = 0;
  objc_storeStrong(&location, a2);
  if (insetCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  selfCopy = self;
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
    [(UIScrollViewAccessibility *)selfCopy _accessibilityContentInset];
    *&v33 = v6;
    *(&v33 + 1) = v7;
    *&v34 = v8;
    *(&v34 + 1) = v9;
    v39 = v33;
    v40 = v34;
    [(UIScrollViewAccessibility *)selfCopy bounds];
    v32.origin.x = v10;
    v32.origin.y = v11;
    v32.size.width = v12;
    v32.size.height = v13;
    if ([(UIScrollViewAccessibility *)selfCopy _accessibilityShouldUseFallbackForVisibleContentInset])
    {
      [(UIScrollViewAccessibility *)selfCopy _accessibilityNavigationControllerInset];
      *&v30 = v14;
      *(&v30 + 1) = v15;
      *&v31 = v16;
      *(&v31 + 1) = v17;
      v39 = v30;
      v40 = v31;
      [(UIScrollViewAccessibility *)selfCopy _accessibilityContentInset];
      if (v18 > *&v31 && ([*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardCoversElement:{selfCopy, v18}] & 1) != 0)
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

- (void)_accessibilitySetVisibleContentInset:(UIEdgeInsets)inset
{
  v4 = [MEMORY[0x29EDBA168] valueWithUIEdgeInsets:{inset.top, inset.left, inset.bottom, inset.right}];
  [(UIScrollViewAccessibility *)self _accessibilitySetStoredVisibleContentInset:v4];
  MEMORY[0x29EDC9740](v4);
}

- (void)_accessibilitySetNavigationControllerInset:(UIEdgeInsets)inset
{
  v4 = [MEMORY[0x29EDBA168] valueWithUIEdgeInsets:{inset.top, inset.left, inset.bottom, inset.right}];
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
  selfCopy = self;
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
  selfCopy = self;
  v19[1] = a2;
  v18.receiver = self;
  v18.super_class = UIScrollViewAccessibility;
  automationElements = [(UIScrollViewAccessibility *)&v18 automationElements];
  v15 = [automationElements mutableCopy];
  v16 = 0;
  if (v15)
  {
    v2 = MEMORY[0x29EDC9748](v15);
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v16 = 1;
    v2 = MEMORY[0x29EDC9748](array);
  }

  v19[0] = v2;
  if (v16)
  {
    MEMORY[0x29EDC9740](array);
  }

  MEMORY[0x29EDC9740](v15);
  *&v3 = MEMORY[0x29EDC9740](automationElements).n128_u64[0];
  v7 = v19[0];
  v8 = [(UIScrollViewAccessibility *)selfCopy safeValueForKey:@"_staticScrollBar", v3];
  [v7 axSafelyAddObject:?];
  *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v9 = v19[0];
  v10 = [(UIScrollViewAccessibility *)selfCopy safeValueForKey:@"_verticalScrollIndicator", v4];
  [v9 axSafelyAddObject:?];
  *&v5 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v11 = v19[0];
  v12 = [(UIScrollViewAccessibility *)selfCopy safeValueForKey:@"_horizontalScrollIndicator", v5];
  [v11 axSafelyAddObject:?];
  MEMORY[0x29EDC9740](v12);
  v13 = MEMORY[0x29EDC9748](v19[0]);
  objc_storeStrong(v19, 0);

  return v13;
}

- (id)accessibilityPath
{
  v103[4] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v100[1] = a2;
  v99 = 0;
  objc_opt_class();
  v56 = [(UIScrollViewAccessibility *)selfCopy _accessibilityFindAncestor:&__block_literal_global_538 startWithSelf:1];
  _accessibilityViewController = [v56 _accessibilityViewController];
  v54 = [_accessibilityViewController safeValueForKey:@"popoverPresentationController"];
  v98 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v54);
  MEMORY[0x29EDC9740](_accessibilityViewController);
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
  [(UIScrollViewAccessibility *)selfCopy accessibilityFrame];
  v78 = v105;
  v79 = CGRectIntegral(v105);
  [(UIScrollViewAccessibility *)selfCopy safeAreaInsets];
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
  _accessibilityWindow = [(UIScrollViewAccessibility *)selfCopy _accessibilityWindow];
  [_accessibilityWindow accessibilityFrame];
  v70.origin.x = v9;
  v70.origin.y = v10;
  v70.size.width = v11;
  v70.size.height = v12;
  v69 = (*(v72 + 2))(v73.origin.x, v73.origin.y, v73.size.width, v73.size.height, v9, v10, v11, v12);
  *v68 = 0uLL;
  *v68 = *MEMORY[0x29EDB90E8];
  if (!(*(v72 + 2))(v73.origin.x, v73.origin.y, v73.size.width, v73.size.height, v70.origin.x, v70.origin.y, v70.size.width, v70.size.height))
  {
    v63 = [(UIScrollViewAccessibility *)selfCopy _accessibilityFindViewAncestor:&__block_literal_global_549 startWithSelf:0];
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
      layer = [v63 layer];
      [layer cornerRadius];
      v45 = v22;
      MEMORY[0x29EDC9740](layer);
      if (v45 <= 0.0)
      {
        v39 = MEMORY[0x29EDC7948];
        v40 = v69;
        v41 = MEMORY[0x29EDBA168];
        layer2 = [v63 layer];
        if (layer2)
        {
          [layer2 cornerRadii];
        }

        else
        {
          memset(&v58[15], 0, 0x40uLL);
        }

        v58[19] = v58[18];
        v36 = [v41 valueWithCGSize:{*&v58[18], *(&v58[18] + 1)}];
        v103[0] = v36;
        v37 = MEMORY[0x29EDBA168];
        layer3 = [v63 layer];
        if (layer3)
        {
          [layer3 cornerRadii];
        }

        else
        {
          memset(&v58[10], 0, 0x40uLL);
        }

        v58[14] = v58[12];
        v33 = [v37 valueWithCGSize:{*&v58[12], *(&v58[12] + 1)}];
        v103[1] = v33;
        v34 = MEMORY[0x29EDBA168];
        layer4 = [v63 layer];
        if (layer4)
        {
          [layer4 cornerRadii];
        }

        else
        {
          memset(&v58[5], 0, 0x40uLL);
        }

        v58[9] = v58[5];
        v30 = [v34 valueWithCGSize:v58[5]];
        v103[2] = v30;
        v31 = MEMORY[0x29EDBA168];
        layer5 = [v63 layer];
        if (layer5)
        {
          [layer5 cornerRadii];
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
        MEMORY[0x29EDC9740](layer5);
        MEMORY[0x29EDC9740](v30);
        MEMORY[0x29EDC9740](layer4);
        MEMORY[0x29EDC9740](v33);
        MEMORY[0x29EDC9740](layer3);
        MEMORY[0x29EDC9740](v36);
        MEMORY[0x29EDC9740](layer2);
        v57 = 1;
LABEL_44:
        objc_storeStrong(&v63, 0);
        if (v57)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      layer6 = [v63 layer];
      [layer6 cornerRadius];
      layer7 = [v63 layer];
      [layer7 cornerRadius];
      CGSizeMake_2();
      *&v59 = v23;
      *(&v59 + 1) = v24;
      *v68 = v59;
      MEMORY[0x29EDC9740](layer7);
      MEMORY[0x29EDC9740](layer6);
    }

    v57 = 0;
    goto LABEL_44;
  }

  mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
  [mainScreen bounds];
  v66 = v106;
  Height = CGRectGetHeight(v106);
  v47 = CGRectGetHeight(v70);
  *&v13 = MEMORY[0x29EDC9740](mainScreen).n128_u64[0];
  v67 = Height != v47;
  v64 = 0;
  if (Height == v47)
  {
    traitCollection = [(UIScrollViewAccessibility *)selfCopy traitCollection];
    v64 = 1;
    [traitCollection displayCornerRadius];
    v46 = v14;
  }

  else
  {
    v46 = 10.0;
  }

  v68[0] = v46;
  if (v64)
  {
    MEMORY[0x29EDC9740](traitCollection);
  }

  v68[1] = v68[0];
LABEL_45:
  v102 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:v69 byRoundingCorners:v79.origin.x cornerRadii:{v79.origin.y, v79.size.width, v79.size.height, v68[0], v68[1]}];
LABEL_46:
  objc_storeStrong(&_accessibilityWindow, 0);
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
  selfCopy = self;
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
  if (([(UIScrollViewAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    [(UIScrollViewAccessibility *)selfCopy safeAreaInsets];
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
  focusGroupIdentifier = [(UIScrollViewAccessibility *)self focusGroupIdentifier];
  v4 = focusGroupIdentifier != 0;
  MEMORY[0x29EDC9740](focusGroupIdentifier);
  return v4;
}

- (id)_axVerticalScrollIndicator
{
  selfCopy = self;
  if (self)
  {
    v6 = 0;
    objc_opt_class();
    v3 = [selfCopy safeValueForKey:@"_verticalScrollIndicator"];
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
  selfCopy = self;
  if (self)
  {
    v6 = 0;
    objc_opt_class();
    v3 = [selfCopy safeValueForKey:@"_horizontalScrollIndicator"];
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

- (void)_adjustScrollerIndicators:(BOOL)indicators alwaysShowingThem:(BOOL)them
{
  selfCopy = self;
  v7 = a2;
  indicatorsCopy = indicators;
  themCopy = them;
  v4.receiver = self;
  v4.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v4 _adjustScrollerIndicators:indicators alwaysShowingThem:them];
  [(UIScrollViewAccessibility *)selfCopy _axAnnotateScrollBars];
}

- (void)_hideScrollIndicators
{
  selfCopy = self;
  v8 = a2;
  _axVerticalScrollIndicator = [(UIScrollViewAccessibility *)self _axVerticalScrollIndicator];
  accessibilityScrollIndicatorIsFocused = [(_UIScrollViewScrollIndicatorAccessibility *)_axVerticalScrollIndicator accessibilityScrollIndicatorIsFocused];
  MEMORY[0x29EDC9740](_axVerticalScrollIndicator);
  if ((accessibilityScrollIndicatorIsFocused & 1) == 0)
  {
    _axHorizontalScrollIndicator = [(UIScrollViewAccessibility *)selfCopy _axHorizontalScrollIndicator];
    accessibilityScrollIndicatorIsFocused2 = [(_UIScrollViewScrollIndicatorAccessibility *)_axHorizontalScrollIndicator accessibilityScrollIndicatorIsFocused];
    *&v2 = MEMORY[0x29EDC9740](_axHorizontalScrollIndicator).n128_u64[0];
    if ((accessibilityScrollIndicatorIsFocused2 & 1) == 0)
    {
      v7.receiver = selfCopy;
      v7.super_class = UIScrollViewAccessibility;
      [(UIScrollViewAccessibility *)&v7 _hideScrollIndicators];
    }
  }
}

- (BOOL)accessibilityShouldEnableScrollIndicator:(id)indicator
{
  v13 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indicator);
  if (MEMORY[0x29ED3DD50]())
  {
    if (UIAccessibilityIsWidgetExtension())
    {
      v11 = 0;
      v8 = 1;
    }

    else
    {
      _axShowsVerticalScrollBar = 0;
      accessibilityScrollDirection = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
      if (accessibilityScrollDirection == 1)
      {
        _axShowsVerticalScrollBar = [(UIScrollViewAccessibility *)selfCopy _axShowsVerticalScrollBar];
      }

      else if (accessibilityScrollDirection == 2)
      {
        _axShowsVerticalScrollBar = [(UIScrollViewAccessibility *)selfCopy _axShowsHorizontalScrollBar];
      }

      else
      {
        oslog = AXLogAppAccessibility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
        {
          accessibilityScrollDirection2 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
          __os_log_helper_16_0_1_8_0(v12, accessibilityScrollDirection2);
          _os_log_fault_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_FAULT, "Unexpected direction for indicator: %ld", v12, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      if (_axShowsVerticalScrollBar)
      {
        _axShowsVerticalScrollBar = [(UIScrollViewAccessibility *)selfCopy accessibilityNumberOfPagesForScrollIndicator:location[0]]>= 5;
      }

      v11 = _axShowsVerticalScrollBar;
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

- (void)accessibilityScrollIndicator:(id)indicator didBecomeFocused:(BOOL)focused
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indicator);
  focusedCopy = focused;
  v6 = MEMORY[0x29EDC9748](selfCopy);
  if (focused)
  {
    [v6 flashScrollIndicators];
  }

  else
  {
    v5 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)accessibilityScrollIndicator:(id)indicator addProgress:(double)progress
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indicator);
  v7 = selfCopy;
  accessibilityScrollDirection = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
  v8 = [(UIScrollViewAccessibility *)v7 _axContentOffsetForAddedProgress:accessibilityScrollDirection inDirection:progress];
  [(UIScrollViewAccessibility *)selfCopy setContentOffset:v8, v5];
  objc_storeStrong(location, 0);
}

- (double)_axContentOffsetForAddedProgress:(double)progress inDirection:
{
  v36 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  progressCopy = progress;
  v31 = a2;
  if (self)
  {
    location = MEMORY[0x29EDC9748](selfCopy);
    [location contentOffset];
    *&v29 = v3;
    *(&v29 + 1) = v4;
    v34 = v29;
    if (v31 == 1)
    {
      _axMinimumContentOffset = [(UIScrollViewAccessibility *)selfCopy _axMinimumContentOffset];
      v27 = v5;
      v28 = v5;
      _axMaximumContentOffset = [(UIScrollViewAccessibility *)selfCopy _axMaximumContentOffset];
      v24 = v6;
      v25 = v6;
      if (v28 < v6)
      {
        v7 = CGFloatMin_0(*(&v29 + 1) + progressCopy * (v25 - v28), v25);
        v22 = CGFloatMax_0(v7, v28);
        *(&v34 + 1) = v22;
      }
    }

    else if (v31 == 2)
    {
      mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x29EDC7938] userInterfaceLayoutDirection];
      MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]);
      if (userInterfaceLayoutDirection == 1)
      {
        progressCopy = progressCopy * -1.0;
      }

      _axMinimumContentOffset2 = [(UIScrollViewAccessibility *)selfCopy _axMinimumContentOffset];
      v20 = v8;
      v21 = _axMinimumContentOffset2;
      _axMaximumContentOffset2 = [(UIScrollViewAccessibility *)selfCopy _axMaximumContentOffset];
      v17 = v9;
      v18 = _axMaximumContentOffset2;
      if (_axMinimumContentOffset2 < _axMaximumContentOffset2)
      {
        v10 = CGFloatMin_0(*&v29 + progressCopy * (v18 - v21), v18);
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

- (int64_t)accessibilityNumberOfPagesForScrollIndicator:(id)indicator
{
  v12 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indicator);
  v8 = 0;
  accessibilityScrollDirection = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
  if (accessibilityScrollDirection == 1)
  {
    [(UIScrollViewAccessibility *)selfCopy _accessibilityCurrentPage:&v8 totalPages:1 forVerticalDirection:?];
  }

  else if (accessibilityScrollDirection == 2)
  {
    [(UIScrollViewAccessibility *)selfCopy _accessibilityCurrentPage:&v8 totalPages:0 forVerticalDirection:?];
  }

  else
  {
    oslog = AXLogAppAccessibility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      accessibilityScrollDirection2 = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
      __os_log_helper_16_0_1_8_0(v11, accessibilityScrollDirection2);
      _os_log_fault_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_FAULT, "Unexpected direction for indicator: %ld", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  return v5;
}

- (double)accessibilityProgressForScrollIndicator:(id)indicator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indicator);
  v5 = selfCopy;
  accessibilityScrollDirection = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
  v6 = [(UIScrollViewAccessibility *)v5 _axProgressForDirection:accessibilityScrollDirection];
  objc_storeStrong(location, 0);
  return v6;
}

- (double)_axProgressForDirection:(void *)direction
{
  v31 = *MEMORY[0x29EDCA608];
  directionCopy = direction;
  v27 = a2;
  if (!direction)
  {
    return 0.0;
  }

  v26 = 0.0;
  v25 = 0.0;
  v24 = 0.0;
  v23 = 0.0;
  location = MEMORY[0x29EDC9748](directionCopy);
  [location contentOffset];
  v20 = v2;
  v21 = v3;
  v19 = 0;
  if (v27 == 1)
  {
    _axMinimumContentOffset = [(UIScrollViewAccessibility *)directionCopy _axMinimumContentOffset];
    v18 = v4;
    v25 = v4;
    _axMaximumContentOffset = [(UIScrollViewAccessibility *)directionCopy _axMaximumContentOffset];
    v16 = v5;
    v24 = v5;
    v23 = v21;
  }

  else if (v27 == 2)
  {
    _axMinimumContentOffset2 = [(UIScrollViewAccessibility *)directionCopy _axMinimumContentOffset];
    v14 = v6;
    v25 = _axMinimumContentOffset2;
    _axMaximumContentOffset2 = [(UIScrollViewAccessibility *)directionCopy _axMaximumContentOffset];
    v12 = v7;
    v24 = _axMaximumContentOffset2;
    v23 = v20;
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    v19 = [mEMORY[0x29EDC7938] userInterfaceLayoutDirection] == 1;
    MEMORY[0x29EDC9740](mEMORY[0x29EDC7938]);
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

- (CGRect)accessibilityFrameForScrollIndicator:(id)indicator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indicator);
  v87 = MEMORY[0x29EDC9748](selfCopy);
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
  accessibilityScrollDirection = [(_UIScrollViewScrollIndicatorAccessibility *)location[0] accessibilityScrollDirection];
  if (accessibilityScrollDirection == 1)
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

  else if (accessibilityScrollDirection == 2)
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

- (void)_axSetLastScrubAnnouncementDate:(id)date
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (double)_axAnnounceScrubForDirection:(void *)direction
{
  if (direction)
  {
    notification = *MEMORY[0x29EDC7EA8];
    [(UIScrollViewAccessibility *)direction _axProgressForDirection:a2];
    v4 = AXFormatFloatWithPercentage();
    UIAccessibilityPostNotification(notification, v4);
    *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  return result;
}

- (CGPoint)_newScrollOffsetForScrubReturningAnimated:(BOOL *)animated
{
  selfCopy = self;
  v16 = a2;
  animatedCopy = animated;
  v18 = 0.0;
  v19 = 0.0;
  v14.receiver = self;
  v14.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v14 _newScrollOffsetForScrubReturningAnimated:animated];
  v18 = v3;
  v19 = v4;
  date = [MEMORY[0x29EDB8DB0] date];
  location = [(UIScrollViewAccessibility *)selfCopy _axLastScrubAnnouncementDate];
  [(UIScrollViewAccessibility *)selfCopy contentOffset];
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
    if (!location || ([date timeIntervalSinceDate:{location, v7}], v7 > 1.0))
    {
      [(UIScrollViewAccessibility *)selfCopy _axSetLastScrubAnnouncementDate:date, v7];
      [(UIScrollViewAccessibility *)selfCopy _axAnnounceScrubForDirection:v10];
    }
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&date, 0);
  v8 = v18;
  v9 = v19;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_didEndDirectManipulationWithScrubbingDirection:(int64_t)direction
{
  selfCopy = self;
  v6 = a2;
  directionCopy = direction;
  v4.receiver = self;
  v4.super_class = UIScrollViewAccessibility;
  [(UIScrollViewAccessibility *)&v4 _didEndDirectManipulationWithScrubbingDirection:direction];
  if (directionCopy == 2 || directionCopy == 1)
  {
    if (directionCopy == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    [(UIScrollViewAccessibility *)selfCopy _axAnnounceScrubForDirection:v3];
  }
}

@end