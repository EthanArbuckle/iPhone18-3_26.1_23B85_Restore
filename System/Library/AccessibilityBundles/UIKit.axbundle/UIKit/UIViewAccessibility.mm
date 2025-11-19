@interface UIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
+ (void)_axTriggerNextContextMenuInteractionInQueue:(void *)a3 forElement:(void *)a4 targetPointValue:;
- (BOOL)_accessibilityDisplayFocusIndicatorForFocusEverywhereView;
- (BOOL)_accessibilityFKAShouldBeProcessed;
- (BOOL)_accessibilityInTopLevelTabLoop;
- (BOOL)_accessibilityIsDescendantOfHostingView;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)_accessibilityIsInCollectionCell;
- (BOOL)_accessibilityIsInTableCell;
- (BOOL)_accessibilityIsSoftwareKeyboardMimic;
- (BOOL)_accessibilityIsUserInteractionEnabledChain;
- (BOOL)_accessibilityObscuredScreenAllowsView:(id)a3;
- (BOOL)_accessibilityOnlyComparesByXAxis;
- (BOOL)_accessibilityPointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)_accessibilityPreventOcclusionForViewFromAboveFocusRegionForFocusEverywhereView;
- (BOOL)_accessibilityShowContextMenuForElement:(id)a3 targetPointValue:(id)a4;
- (BOOL)_accessibilityUnfocusableViewCanBeFocusedForFocusEverywhere;
- (BOOL)_accessibilityViewIsBeingHitTested:(uint64_t)a1;
- (BOOL)_axHasNoVisibleAxElements;
- (BOOL)_axViewIsOffScreen:(uint64_t)a1;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)_prefersFocusContainment;
- (BOOL)accessibilityElementIsFocused;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)accessibilityViewIsModal;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGRect)_accessibilityBounds;
- (CGRect)accessibilityFrame;
- (double)_accessibilityFrameForView:(uint64_t)a1;
- (id)__accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityAllDragSourceDescriptors;
- (id)_accessibilityAllDropPointDescriptors;
- (id)_accessibilityAuditIssuesWithOptions:(id)a3;
- (id)_accessibilityAutomaticIdentifier;
- (id)_accessibilityCapturedImages;
- (id)_accessibilityCheckForAllowedModalView:(double)a3 event:(double)a4;
- (id)_accessibilityCirclePathBasedOnBoundsWidth;
- (id)_accessibilityFocusRingTintColor;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityImageData;
- (id)_accessibilityLastFocusedChild;
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)_accessibilityRetrieveIvarText;
- (id)_accessibilityRetrieveLabelFromTableViewCell;
- (id)_accessibilitySortedElementsWithin;
- (id)_accessibilitySortedElementsWithinWithOptions:(id)a3;
- (id)_accessibilitySubviewMatchingFKAView:(void *)a1;
- (id)_accessibilitySupportGesturesAttributes;
- (id)_accessibilityUserTestingSubviewsSorted:(void *)a1;
- (id)_accessibilityViewController;
- (id)_accessibilityViewMatchingFKAView:(void *)a3 inArray:;
- (id)_axBackgroundViewForCornerRadius;
- (id)_axResponderChain;
- (id)_axSubviews;
- (id)_axViewIsProbablyDimmingViewCachedValue;
- (id)_childFocusViews;
- (id)_clippedViewHierarchyDescription;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)accessibilityContainer;
- (id)accessibilityPath;
- (id)automationElements;
- (id)focusItemsInRect:(CGRect)a3;
- (id)preferredFocusEnvironments;
- (int64_t)_accessibilityHorizontalSizeClass;
- (int64_t)_accessibilityVerticalSizeClass;
- (uint64_t)_accessibilityDidLoadAccessibilityInformation;
- (uint64_t)_accessibilityHasButtonLikeGestureRecognizer;
- (uint64_t)_accessibilityIsSiblingOfModalizingBlocker;
- (uint64_t)_accessibilityModalViewBlocksView:(void *)a3 blockerView:;
- (uint64_t)_accessibilityViewIsProbablyDimmingView;
- (uint64_t)_axHasSingleFocusableSubview;
- (uint64_t)_setAccessibilityDidLoadAccessibilityInformation:(uint64_t)result;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCapturedImagesWithDepth:(void *)a3 capturedImages:;
- (void)_accessibilityPostNotification:(id)a3;
- (void)_axPrintSubviews:(int64_t)a3 string:(id)a4;
- (void)_axSetViewIsProbablyDimmingView:(void *)a1;
- (void)_notifyReferenceViewSizeChange;
- (void)setAlpha:(double)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = @"UIView";
  v8 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"_childFocusViews" withFullSignature:{v8, 0}];
  v3 = "B";
  [location[0] validateClass:v7 hasInstanceMethod:@"canBecomeFocused" withFullSignature:0];
  [location[0] validateClass:v7 hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{v3, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_isFocusInteractionEnabled" withFullSignature:{v3, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_defaultFocusRegionFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_containerViewForLegacyFocusRing" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"preferredFocusEnvironments" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_normalInheritedTintColor" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"focusGroupIdentifier" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_systemDefaultFocusGroupIdentifier" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_containingScrollView" withFullSignature:{v8, 0}];
  v5 = "v";
  [location[0] validateClass:v7 hasInstanceMethod:@"didUpdateFocusInContext:withAnimationCoordinator:" withFullSignature:{v8, v8, 0}];
  v4 = @"UIContextMenuInteraction";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"presentationsByIdentifier" withFullSignature:{v8, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_interactionShouldBeginAtPoint:completion:" withFullSignature:{v5, "{CAPoint3D=ddd}", "@?", 0}];
  v6 = @"_UIContextMenuUIController";
  [location[0] validateClass:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"platterContainerView" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_clippedViewHierarchyDescription" withFullSignature:{v8, 0}];
  objc_storeStrong(v10, v9);
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v23 = *MEMORY[0x29EDCA608];
  v20 = self;
  v19 = a2;
  if (([(UIViewAccessibility *)self _accessibilityViewIsProbablyDimmingView]& 1) != 0)
  {
    location = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    v10 = [(UIViewAccessibility *)v20 superview];
    v9 = [v10 subviews];
    obj = [v9 reverseObjectEnumerator];
    MEMORY[0x29EDC9740](v9);
    v12 = [obj countByEnumeratingWithState:__b objects:v22 count:{16, MEMORY[0x29EDC9740](v10).n128_f64[0]}];
    if (v12)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v12;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(__b[1] + 8 * v7);
        if (v16 == v20)
        {
          break;
        }

        [location addObject:v16];
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
          if (!v8)
          {
            goto LABEL_11;
          }
        }
      }

      v14 = 2;
    }

    else
    {
LABEL_11:
      v14 = 0;
    }

    *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    if ([location count])
    {
      v21 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v13.receiver = v20;
      v13.super_class = UIViewAccessibility;
      v21 = [(UIViewAccessibility *)&v13 _accessibilityObscuredScreenAllowedViews];
    }

    v14 = 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v18.receiver = v20;
    v18.super_class = UIViewAccessibility;
    v21 = [(UIViewAccessibility *)&v18 _accessibilityObscuredScreenAllowedViews];
  }

  v3 = v21;

  return v3;
}

- (uint64_t)_accessibilityViewIsProbablyDimmingView
{
  v64 = a1;
  if (a1)
  {
    v63 = MEMORY[0x29EDC9748](v64);
    [v63 bounds];
    v62.origin.x = v1;
    v62.origin.y = v2;
    v62.size.width = v3;
    v62.size.height = v4;
    v24 = [MEMORY[0x29EDC7C40] mainScreen];
    [v24 bounds];
    v61.origin.x = v5;
    v61.origin.y = v6;
    v61.size.width = v7;
    v61.size.height = v8;
    v25 = CGRectEqualToRect(v62, v61);
    MEMORY[0x29EDC9740](v24);
    if (v25)
    {
      v23 = [(UIViewAccessibility *)v64 _axViewIsProbablyDimmingViewCachedValue];
      MEMORY[0x29EDC9740](v23);
      if (v23)
      {
        v22 = [(UIViewAccessibility *)v64 _axViewIsProbablyDimmingViewCachedValue];
        v65 = [v22 BOOLValue] & 1;
        MEMORY[0x29EDC9740](v22);
        v60 = 1;
LABEL_27:
        objc_storeStrong(&v63, 0);
        return v65 & 1;
      }

      v53 = MEMORY[0x29EDCA5F8];
      v54 = -1073741824;
      v55 = 0;
      v56 = __62__UIViewAccessibility__accessibilityViewIsProbablyDimmingView__block_invoke;
      v57 = &unk_29F30E158;
      v58 = MEMORY[0x29EDC9748](v64);
      v59 = MEMORY[0x29ED3E4C0](&v53);
      v46 = MEMORY[0x29EDCA5F8];
      v47 = -1073741824;
      v48 = 0;
      v49 = __62__UIViewAccessibility__accessibilityViewIsProbablyDimmingView__block_invoke_2;
      v50 = &unk_29F30E180;
      v51 = MEMORY[0x29EDC9748](v63);
      v52 = MEMORY[0x29ED3E4C0](&v46);
      v39 = MEMORY[0x29EDCA5F8];
      v40 = -1073741824;
      v41 = 0;
      v42 = __62__UIViewAccessibility__accessibilityViewIsProbablyDimmingView__block_invoke_3;
      v43 = &unk_29F30E1A8;
      v44 = MEMORY[0x29EDC9748](v52);
      v45 = MEMORY[0x29ED3E4C0](&v39);
      v32 = MEMORY[0x29EDCA5F8];
      v33 = -1073741824;
      v34 = 0;
      v35 = __62__UIViewAccessibility__accessibilityViewIsProbablyDimmingView__block_invoke_4;
      v36 = &unk_29F30CEB0;
      v37 = MEMORY[0x29EDC9748](v63);
      v38 = MEMORY[0x29ED3E4C0](&v32);
      v30 = 0;
      v28 = 0;
      v21 = 1;
      if (([v63 isHidden] & 1) == 0)
      {
        v31 = [v63 layer];
        v30 = 1;
        v21 = 1;
        if (([v31 isHidden] & 1) == 0)
        {
          v29 = [v63 layer];
          v28 = 1;
          [v29 opacity];
          v21 = v9 == 0.0;
        }
      }

      if (v28)
      {
        MEMORY[0x29EDC9740](v29);
      }

      if (v30)
      {
        MEMORY[0x29EDC9740](v31);
      }

      if (v21)
      {
        v65 = (*(v59 + 2))(v59, 0) & 1;
        v60 = 1;
      }

      else
      {
        v27 = [v63 backgroundColor];
        if (v27)
        {
          v19 = v59;
          LOBYTE(v20) = 0;
          if ((*(v45 + 2))(v45, v27))
          {
            v20 = (*(v38 + 2))() ^ 1;
          }

          v65 = v19[2](v19, v20 & 1) & 1;
          v60 = 1;
        }

        else
        {
          v17 = [v63 layer];
          v18 = [v17 backgroundColor];
          *&v10 = MEMORY[0x29EDC9740](v17).n128_u64[0];
          if (v18)
          {
            v13 = MEMORY[0x29EDC7A00];
            v14 = [v63 layer];
            location = [v13 colorWithCGColor:{objc_msgSend(v14, "backgroundColor")}];
            v11 = MEMORY[0x29EDC9740](v14);
            v15 = v59;
            LOBYTE(v16) = 0;
            if ((*(v45 + 2))(v45, location, v11))
            {
              v16 = (*(v38 + 2))() ^ 1;
            }

            v65 = v15[2](v15, v16 & 1) & 1;
            v60 = 1;
            objc_storeStrong(&location, 0);
          }

          else
          {
            v60 = 0;
          }
        }

        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v52, 0);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&v59, 0);
      objc_storeStrong(&v58, 0);
      if (v60)
      {
        goto LABEL_27;
      }
    }

    v65 = 0;
    v60 = 1;
    goto LABEL_27;
  }

  v65 = 0;
  return v65 & 1;
}

- (id)_accessibilityViewController
{
  v6 = self;
  location[1] = a2;
  location[0] = [MEMORY[0x29EDC7DA8] viewControllerForView:self];
  if (!location[0])
  {
    obj = [(UIViewAccessibility *)v6 safeValueForKey:@"viewDelegate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(location, obj);
    }

    objc_storeStrong(&obj, 0);
  }

  v3 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

- (BOOL)accessibilityElementIsFocused
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = self;
  location[1] = a2;
  location[0] = _UIAccessibilityFocusedElements();
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](location[0]);
  v11 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v17;
        v2 = [(UIAccessibilityElementMockView *)v15 view];
        v18 = v5 == v2;
        MEMORY[0x29EDC9740](v2);
        v13 = 1;
        goto LABEL_12;
      }

      if (v17 == v15)
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v9)
        {
          goto LABEL_11;
        }
      }
    }

    v18 = 1;
    v13 = 1;
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

LABEL_12:
  *&v3 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  if (!v13)
  {
    v12.receiver = v17;
    v12.super_class = UIViewAccessibility;
    v18 = [(UIViewAccessibility *)&v12 accessibilityElementIsFocused];
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (void)_accessibilityPostNotification:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  notification = 0;
  if ([location[0] isEqualToString:@"AXLayoutChange"])
  {
    notification = *MEMORY[0x29EDC7ED8];
  }

  if (notification)
  {
    UIAccessibilityPostNotification(notification, 0);
  }

  objc_storeStrong(location, 0);
}

- (double)_accessibilityFrameForView:(uint64_t)a1
{
  v15 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v15)
  {
    [location bounds];
    rect.origin.x = v2;
    rect.origin.y = v3;
    rect.size.width = v4;
    rect.size.height = v5;
    [location _accessibilityFrameExpansion];
    CGRectInset(rect, -v6, -v7);
    UIAccessibilityFrameForBounds();
    *&v16 = v8;
    *(&v16 + 1) = v9;
    *&v17 = v10;
    *(&v17 + 1) = v11;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  objc_storeStrong(&location, 0);
  return *&v16;
}

- (CGRect)_accessibilityBounds
{
  [(UIViewAccessibility *)self bounds:a2];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_accessibilityCirclePathBasedOnBoundsWidth
{
  v15 = self;
  v14 = a2;
  [(UIViewAccessibility *)self _accessibilityBounds];
  path[1] = v2;
  path[2] = v3;
  v12 = v4;
  v13 = v5;
  v9 = MEMORY[0x29EDC7948];
  AX_CGRectGetCenter();
  path[0] = [v9 bezierPathWithArcCenter:1 radius:v6 startAngle:v7 endAngle:v12 / 2.0 clockwise:{0.0, 6.28318531}];
  v10 = UIAccessibilityConvertPathToScreenCoordinates(path[0], v15);
  objc_storeStrong(path, 0);

  return v10;
}

- (id)accessibilityPath
{
  v41 = self;
  v40 = a2;
  v39.receiver = self;
  v39.super_class = UIViewAccessibility;
  v20 = [(UIViewAccessibility *)&v39 accessibilityPath];
  *&v2 = MEMORY[0x29EDC9740](v20).n128_u64[0];
  if (v20)
  {
    v38.receiver = v41;
    v38.super_class = UIViewAccessibility;
    v42 = [(UIViewAccessibility *)&v38 accessibilityPath];
  }

  else
  {
    v36 = 0;
    objc_opt_class();
    v19 = [(UIViewAccessibility *)v41 safeValueForKey:@"layer"];
    v35 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v19);
    v34 = MEMORY[0x29EDC9748](v35);
    objc_storeStrong(&v35, 0);
    v37 = v34;
    [v34 cornerRadius];
    if (v3 > 0.0 && ([(UIViewAccessibility *)v41 clipsToBounds]& 1) != 0)
    {
      v18 = MEMORY[0x29EDC7948];
      [(UIViewAccessibility *)v41 accessibilityFrame];
      v29 = v4;
      v30 = v5;
      v31 = v6;
      v32 = v7;
      [v37 cornerRadius];
      v33 = [v18 _bezierPathWithArcRoundedRect:v29 cornerRadius:{v30, v31, v32, v8}];
      v42 = MEMORY[0x29EDC9748](v33);
      v28 = 1;
      objc_storeStrong(&v33, 0);
    }

    else
    {
      v27 = [(UIViewAccessibility *)v41 _axBackgroundViewForCornerRadius];
      if (v27)
      {
        v16 = MEMORY[0x29EDC7948];
        [v27 accessibilityFrame];
        v22 = v9;
        v23 = v10;
        v24 = v11;
        v25 = v12;
        v17 = [v27 layer];
        [v17 cornerRadius];
        v26 = [v16 _bezierPathWithArcRoundedRect:v22 cornerRadius:{v23, v24, v25, v13}];
        MEMORY[0x29EDC9740](v17);
        v42 = MEMORY[0x29EDC9748](v26);
        v28 = 1;
        objc_storeStrong(&v26, 0);
      }

      else
      {
        v28 = 0;
      }

      objc_storeStrong(&v27, 0);
      if (!v28)
      {
        v21.receiver = v41;
        v21.super_class = UIViewAccessibility;
        v42 = [(UIViewAccessibility *)&v21 accessibilityPath];
        v28 = 1;
      }
    }

    objc_storeStrong(&v37, 0);
  }

  v14 = v42;

  return v14;
}

- (id)_axBackgroundViewForCornerRadius
{
  v28 = *MEMORY[0x29EDCA608];
  v25 = a1;
  if (a1)
  {
    location = 0;
    v23 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
    [v23 addObject:v25];
    do
    {
      if (![v23 count])
      {
        break;
      }

      v22 = [v23 firstObject];
      [v23 removeObjectAtIndex:0];
      v21 = 0;
      v14 = [v22 layer];
      [v14 cornerRadius];
      v15 = v1;
      MEMORY[0x29EDC9740](v14);
      if (v15 <= 0.0)
      {
        memset(__b, 0, sizeof(__b));
        obj = [v22 subviews];
        v13 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (v13)
        {
          v9 = *__b[2];
          v10 = 0;
          v11 = v13;
          while (1)
          {
            v8 = v10;
            if (*__b[2] != v9)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(__b[1] + 8 * v10);
            [v20 frame];
            v17 = v2;
            v18 = v3;
            [v22 frame];
            if (!__CGSizeEqualToSize_3(v17, v18, v4, v5))
            {
              break;
            }

            [v23 addObject:v20];
            ++v10;
            if (v8 + 1 >= v11)
            {
              v10 = 0;
              v11 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
              if (!v11)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](obj);
      }

      else
      {
        objc_storeStrong(&location, v22);
        v21 = 1;
      }

      v16 = (v21 & 1) != 0 ? 3 : 0;
      objc_storeStrong(&v22, 0);
    }

    while (!v16);
    v26 = MEMORY[0x29EDC9748](location);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&location, 0);
  }

  else
  {
    v26 = 0;
  }

  v6 = v26;

  return v6;
}

- (BOOL)_accessibilityOnlyComparesByXAxis
{
  v8 = self;
  v7 = a2;
  v5 = [(UIViewAccessibility *)self _accessibilityValueForKey:@"_accessibilityOnlyComparesByXAxis"];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v6.receiver = v8;
    v6.super_class = UIViewAccessibility;
    return [(UIViewAccessibility *)&v6 _accessibilityOnlyComparesByXAxis];
  }

  else
  {
    v4 = [(UIViewAccessibility *)v8 _accessibilityViewController];
    v9 = [v4 _accessibilityOnlyComparesByXAxis] & 1;
    MEMORY[0x29EDC9740](v4);
  }

  return v9;
}

- (CGRect)accessibilityFrame
{
  v11 = self;
  location[1] = a2;
  location[0] = [(UIViewAccessibility *)self accessibilityUserDefinedFrame];
  if (location[0])
  {
    [location[0] rectValue];
    v12 = v5;
  }

  else
  {
    v12 = [(UIViewAccessibility *)v11 _accessibilityFrameForView:v11];
  }

  v13 = v2;
  v14 = v3;
  v15 = v4;
  objc_storeStrong(location, 0);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (uint64_t)_accessibilityIsSiblingOfModalizingBlocker
{
  v6 = a1;
  if (a1)
  {
    v9 = &_accessibilityIsSiblingOfModalizingBlocker_onceToken;
    location = 0;
    objc_storeStrong(&location, &__block_literal_global_53);
    if (*v9 != -1)
    {
      dispatch_once(v9, location);
    }

    objc_storeStrong(&location, 0);
    v3 = [v6 superview];
    v5 = [v3 subviews];
    v4 = 1;
    if (([v5 ax_containsObjectUsingBlock:{&__block_literal_global_411_0, MEMORY[0x29EDC9740](v3).n128_f64[0]}] & 1) == 0)
    {
      v2 = 0;
      if (![v5 indexOfObject:v6])
      {
        v2 = [v5 count] > 1;
      }

      v4 = v2;
    }

    v7 = v4;
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

double __65__UIViewAccessibility__accessibilityIsSiblingOfModalizingBlocker__block_invoke()
{
  v5 = MEMORY[0x29EDB8E50];
  v4 = MEMORY[0x29EDB8D80];
  v3 = NSClassFromString(&cfstr_Uialertcontrol_6.isa);
  v6 = [v4 axArrayByIgnoringNilElementsWithCount:{2, v3, NSClassFromString(&cfstr_Uipopoverview.isa)}];
  v0 = [v5 setWithArray:?];
  v1 = _accessibilityIsSiblingOfModalizingBlocker_ClassSet;
  _accessibilityIsSiblingOfModalizingBlocker_ClassSet = v0;
  MEMORY[0x29EDC9740](v1);
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

uint64_t __65__UIViewAccessibility__accessibilityIsSiblingOfModalizingBlocker__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [_accessibilityIsSiblingOfModalizingBlocker_ClassSet containsObject:objc_opt_class()];
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)accessibilityViewIsModal
{
  v5 = [(UIViewAccessibility *)self storedAccessibilityViewIsModal];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return ([(UIViewAccessibility *)self _accessibilityViewIsProbablyDimmingView]& 1) != 0 && ([(UIViewAccessibility *)self _accessibilityIsSiblingOfModalizingBlocker]& 1) == 0;
  }

  v4 = [(UIViewAccessibility *)self storedAccessibilityViewIsModal];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (unint64_t)accessibilityTraits
{
  v9 = self;
  v8 = a2;
  v6.receiver = self;
  v6.super_class = UIViewAccessibility;
  v7 = [(UIViewAccessibility *)&v6 accessibilityTraits];
  location = [(UIViewAccessibility *)v9 accessibilityUserDefinedTraits];
  if (location)
  {
    v2 = [location unsignedLongLongValue];
    v7 |= v2;
  }

  v4 = v7;
  objc_storeStrong(&location, 0);
  return v4;
}

- (uint64_t)_accessibilityHasButtonLikeGestureRecognizer
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = a1;
  if (a1)
  {
    location = [v12 gestureRecognizers];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v7 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
    if (v7)
    {
      v3 = *__b[2];
      v4 = 0;
      v5 = v7;
      while (1)
      {
        v2 = v4;
        if (*__b[2] != v3)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(__b[1] + 8 * v4);
        if ([v10 isEnabled])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }
        }

        ++v4;
        if (v2 + 1 >= v5)
        {
          v4 = 0;
          v5 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
          if (!v5)
          {
            goto LABEL_13;
          }
        }
      }

      v13 = 1;
      v8 = 1;
    }

    else
    {
LABEL_13:
      v8 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    if (!v8)
    {
      v13 = 0;
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)isAccessibilityElement
{
  v6 = self;
  v5 = a2;
  if (UIAccessibilityIsSwitchControlRunning() && ([(UIViewAccessibility *)v6 _accessibilityShouldBeScannedIfAncestorCanScroll]& 1) != 0)
  {
    v3 = 0;
    if ([(UIViewAccessibility *)v6 _axHasNoVisibleAxElements])
    {
      v3 = [(UIViewAccessibility *)v6 _accessibilityCanScrollInAtLeastOneDirection];
    }

    return v3 & 1;
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UIViewAccessibility;
    return [(UIViewAccessibility *)&v4 isAccessibilityElement];
  }
}

- (BOOL)_axHasNoVisibleAxElements
{
  v10 = a1;
  if (a1)
  {
    v2 = v10;
    v3 = MEMORY[0x29EDCA5F8];
    v4 = -1073741824;
    v5 = 0;
    v6 = __48__UIViewAccessibility__axHasNoVisibleAxElements__block_invoke;
    v7 = &unk_29F30C818;
    v8 = MEMORY[0x29EDC9748](v10);
    location = [v2 _accessibilityFindSubviewDescendant:&v3];
    v11 = location == 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v8, 0);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v6 = self;
  v5 = a2;
  if (UIAccessibilityIsSwitchControlRunning() && ([(UIViewAccessibility *)v6 _accessibilityShouldBeScannedIfAncestorCanScroll]& 1) != 0)
  {
    v3 = 0;
    if ([(UIViewAccessibility *)v6 _axHasNoVisibleAxElements])
    {
      v3 = [(UIViewAccessibility *)v6 _accessibilityCanScrollInAtLeastOneDirection];
    }

    return v3 & 1;
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UIViewAccessibility;
    return [(UIViewAccessibility *)&v4 accessibilityRespondsToUserInteraction];
  }
}

uint64_t __48__UIViewAccessibility__axHasNoVisibleAxElements__block_invoke(uint64_t *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v8 = 0;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  v4 = 0;
  if (location[0] != a1[4])
  {
    v4 = 0;
    if ([v9[0] _accessibilityViewIsVisible])
    {
      v4 = 0;
      if (![(UIViewAccessibility *)a1[4] _axViewIsOffScreen:?])
      {
        if (([v9[0] isAccessibilityElement] & 1) == 0 || (isKindOfClass = 1, (objc_msgSend(v9[0], "accessibilityRespondsToUserInteraction") & 1) == 0))
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        v4 = isKindOfClass;
      }
    }
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)_axViewIsOffScreen:(uint64_t)a1
{
  v9 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v9)
  {
    [location _accessibilityVisibleFrame];
    rect2.origin.x = v2;
    rect2.origin.y = v3;
    rect2.size.width = v4;
    rect2.size.height = v5;
    v10 = CGRectEqualToRect(*MEMORY[0x29EDB90E0], rect2);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&location, 0);
  return v10;
}

- (id)_accessibilityAutomaticIdentifier
{
  v3 = [(UIViewAccessibility *)self safeValueForKey:@"tag"];
  v4 = [v3 integerValue];
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%ld", MEMORY[0x29EDC9740](v3).n128_f64[0], v4];
}

- (int64_t)_accessibilityHorizontalSizeClass
{
  v8[2] = self;
  v8[1] = a2;
  v7 = 0;
  v6 = __UIAccessibilitySafeClass();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = [v5 traitCollection];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v4 = [v8[0] horizontalSizeClass];
  objc_storeStrong(v8, 0);
  return v4;
}

- (int64_t)_accessibilityVerticalSizeClass
{
  v8[2] = self;
  v8[1] = a2;
  v7 = 0;
  v6 = __UIAccessibilitySafeClass();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = [v5 traitCollection];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v4 = [v8[0] verticalSizeClass];
  objc_storeStrong(v8, 0);
  return v4;
}

- (BOOL)_accessibilityObscuredScreenAllowsView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (uint64_t)_accessibilityModalViewBlocksView:(void *)a3 blockerView:
{
  v44 = *MEMORY[0x29EDCA608];
  v40 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v38 = a3;
  if (v40)
  {
    v36 = MEMORY[0x29EDC9748](location);
    v35 = [location _accessibilityParentView];
    while (v35)
    {
      v23 = [v35 superview];
      v22 = [v23 subviews];
      v21 = [v22 reverseObjectEnumerator];
      v34 = [v21 allObjects];
      MEMORY[0x29EDC9740](v21);
      MEMORY[0x29EDC9740](v22);
      MEMORY[0x29EDC9740](v23);
      v33 = 0;
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v34);
      v25 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
      if (v25)
      {
        v18 = *__b[2];
        v19 = 0;
        v20 = v25;
        while (1)
        {
          v17 = v19;
          if (*__b[2] != v18)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(__b[1] + 8 * v19);
          if ([v32 accessibilityViewIsModal] & 1) != 0 && (objc_msgSend(v32, "_accessibilityViewIsVisible"))
          {
            break;
          }

          ++v19;
          if (v17 + 1 >= v20)
          {
            v19 = 0;
            v20 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
            if (!v20)
            {
              goto LABEL_14;
            }
          }
        }

        objc_storeStrong(&v33, v32);
        v37 = 4;
      }

      else
      {
LABEL_14:
        v37 = 0;
      }

      *&v3 = MEMORY[0x29EDC9740](obj).n128_u64[0];
      if (v33)
      {
        if ([v33 _accessibilityObscuredScreenAllowsView:{location, v3}])
        {
          v41 = 0;
          v37 = 1;
        }

        else if ([v35 _accessibilityIsViewDescendantOfElement:v33])
        {
          v41 = 0;
          v37 = 1;
        }

        else
        {
          v30 = [v33 _accessibilityObscuredScreenAllowedViews];
          v29 = [v33 _accessibilityHitTestingObscuredScreenAllowedViews];
          if (v29)
          {
            if (v30)
            {
              v4 = [v30 arrayByAddingObjectsFromArray:v29];
              v5 = v30;
              v30 = v4;
              MEMORY[0x29EDC9740](v5);
            }

            else
            {
              objc_storeStrong(&v30, v29);
            }
          }

          memset(v27, 0, sizeof(v27));
          v15 = MEMORY[0x29EDC9748](v30);
          v16 = [v15 countByEnumeratingWithState:v27 objects:v42 count:16];
          if (v16)
          {
            v12 = *v27[2];
            v13 = 0;
            v14 = v16;
            while (1)
            {
              v11 = v13;
              if (*v27[2] != v12)
              {
                objc_enumerationMutation(v15);
              }

              v28 = *(v27[1] + 8 * v13);
              if ([v36 _accessibilityIsDescendantOfElement:v28])
              {
                break;
              }

              ++v13;
              if (v11 + 1 >= v14)
              {
                v13 = 0;
                v14 = [v15 countByEnumeratingWithState:v27 objects:v42 count:16];
                if (!v14)
                {
                  goto LABEL_32;
                }
              }
            }

            v41 = 0;
            v37 = 1;
          }

          else
          {
LABEL_32:
            v37 = 0;
          }

          MEMORY[0x29EDC9740](v15);
          if (!v37)
          {
            v10 = v33;
            v6 = v33;
            *v38 = v10;
            v41 = 1;
            v37 = 1;
          }

          objc_storeStrong(&v29, 0);
          objc_storeStrong(&v30, 0);
        }
      }

      else
      {
        v7 = [v35 superview];
        v8 = v35;
        v35 = v7;
        MEMORY[0x29EDC9740](v8);
        v37 = 0;
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      if (v37)
      {
        goto LABEL_40;
      }
    }

    v41 = 0;
    v37 = 1;
LABEL_40:
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    v41 = 0;
    v37 = 1;
  }

  objc_storeStrong(&location, 0);
  return v41 & 1;
}

- (id)_axViewIsProbablyDimmingViewCachedValue
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &AXViewIsProbablyDimmingView);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __62__UIViewAccessibility__accessibilityViewIsProbablyDimmingView__block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x29EDBA070] numberWithBool:a2 & 1];
  [(UIViewAccessibility *)v3 _axSetViewIsProbablyDimmingView:v4];
  MEMORY[0x29EDC9740](v4);
  return a2 & 1;
}

- (void)_axSetViewIsProbablyDimmingView:(void *)a1
{
  v42 = *MEMORY[0x29EDCA608];
  v39 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v39)
  {
    v36 = 0;
    v35 = [(UIViewAccessibility *)v39 _axViewIsProbablyDimmingViewCachedValue];
    if (v35)
    {
      v17 = [v35 BOOLValue];
      v36 = v17 != [location BOOLValue];
    }

    else if (location)
    {
      v36 = ([location BOOLValue] & 1) != 0;
    }

    objc_setAssociatedObject(v39, &AXViewIsProbablyDimmingView, location, 1);
    if (v36)
    {
      v34 = 1;
      v33 = [v39 _accessibilityObscuredScreenAllowedViews];
      memset(__b, 0, sizeof(__b));
      obj = _UIAccessibilityFocusedElements();
      v16 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
      if (v16)
      {
        v12 = *__b[2];
        v13 = 0;
        v14 = v16;
        while (1)
        {
          v11 = v13;
          if (*__b[2] != v12)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(__b[1] + 8 * v13);
          memset(v29, 0, sizeof(v29));
          v9 = MEMORY[0x29EDC9748](v33);
          v10 = [v9 countByEnumeratingWithState:v29 objects:v40 count:16];
          if (v10)
          {
            v6 = *v29[2];
            v7 = 0;
            v8 = v10;
            while (1)
            {
              v5 = v7;
              if (*v29[2] != v6)
              {
                objc_enumerationMutation(v9);
              }

              v30 = *(v29[1] + 8 * v7);
              v24 = 0;
              v25 = &v24;
              v26 = 0x20000000;
              v27 = 32;
              v28 = 0;
              v4 = v32;
              v18 = MEMORY[0x29EDCA5F8];
              v19 = -1073741824;
              v20 = 0;
              v21 = __55__UIViewAccessibility__axSetViewIsProbablyDimmingView___block_invoke;
              v22 = &unk_29F30DE68;
              v23[0] = MEMORY[0x29EDC9748](v30);
              v23[1] = &v24;
              v2 = [v4 _accessibilityFindAncestor:&v18 startWithSelf:1];
              v34 = v2 == 0;
              MEMORY[0x29EDC9740](v2);
              v37 = (v25[3] & 1) != 0 ? 4 : 0;
              objc_storeStrong(v23, 0);
              _Block_object_dispose(&v24, 8);
              if (v37)
              {
                break;
              }

              ++v7;
              if (v5 + 1 >= v8)
              {
                v7 = 0;
                v8 = [v9 countByEnumeratingWithState:v29 objects:v40 count:16];
                if (!v8)
                {
                  goto LABEL_22;
                }
              }
            }
          }

          else
          {
LABEL_22:
            v37 = 0;
          }

          *&v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
          if (!v34)
          {
            break;
          }

          ++v13;
          if (v11 + 1 >= v14)
          {
            v13 = 0;
            v14 = [obj countByEnumeratingWithState:__b objects:v41 count:{16, v3}];
            if (!v14)
            {
              goto LABEL_27;
            }
          }
        }

        v37 = 2;
      }

      else
      {
LABEL_27:
        v37 = 0;
      }

      MEMORY[0x29EDC9740](obj);
      if (v34)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
      }

      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  objc_storeStrong(&location, 0);
}

uint64_t __62__UIViewAccessibility__accessibilityViewIsProbablyDimmingView__block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = a1;
  v6 = location[0];
  v5 = [MEMORY[0x29EDC7A00] clearColor];
  MEMORY[0x29EDC9740](v5);
  if (v6 == v5)
  {
    v18 = 0;
    v15 = 1;
  }

  else
  {
    v14 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    if (([location[0] getRed:&v14 green:&v13 blue:&v12 alpha:&v11] & 1) == 0)
    {
      goto LABEL_13;
    }

    if ((*(a1[4] + 16))(v11) == 0.0)
    {
      v18 = 0;
      v15 = 1;
      goto LABEL_14;
    }

    v10 = [MEMORY[0x29EDC7A00] colorWithRed:v14 green:v13 blue:v12 alpha:v11];
    v9 = 0;
    v8 = 0;
    v7 = 0;
    if (([v10 getHue:&v9 saturation:&v8 brightness:&v7 alpha:&v11] & 1) != 0 && (AXColorGetLuma(), v2 < 0.00999999978) && (*(a1[4] + 16))(v11) >= 0.100000001 && (*(a1[4] + 16))(v11) <= 0.899999976)
    {
      v18 = 1;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    objc_storeStrong(&v10, 0);
    if (!v15)
    {
LABEL_13:
      v18 = 0;
      v15 = 1;
    }
  }

LABEL_14:
  objc_storeStrong(location, 0);
  return v18 & 1;
}

uint64_t __62__UIViewAccessibility__accessibilityViewIsProbablyDimmingView__block_invoke_4(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x29EDC9748](a1[4]);
  while (1)
  {
    v19 = [location[0] subviews];
    v20 = [v19 count];
    *&v1 = MEMORY[0x29EDC9740](v19).n128_u64[0];
    if (v20 != 1)
    {
      break;
    }

    v15 = [location[0] subviews];
    v2 = [v15 firstObject];
    v3 = location[0];
    location[0] = v2;
    MEMORY[0x29EDC9740](v3);
    [location[0] bounds];
    v24.origin.x = v4;
    v24.origin.y = v5;
    v24.size.width = v6;
    v24.size.height = v7;
    v16 = [MEMORY[0x29EDC7C40] mainScreen];
    [v16 bounds];
    rect2.origin.x = v8;
    rect2.origin.y = v9;
    rect2.size.width = v10;
    rect2.size.height = v11;
    v17 = CGRectEqualToRect(v24, rect2);
    v12 = MEMORY[0x29EDC9740](v16).n128_u64[0];
    v21 = 0;
    v18 = 0;
    if (v17)
    {
      v18 = 0;
      if ([location[0] _accessibilityViewIsVisible])
      {
        v22 = [location[0] backgroundColor];
        v21 = 1;
        [v22 alphaComponent];
        v18 = *&v12 == 1.0;
      }
    }

    if (v21)
    {
      v12 = MEMORY[0x29EDC9740](v22).n128_u64[0];
    }

    if (v18)
    {
      v26 = 1;
      goto LABEL_16;
    }

    if (v17 || ([location[0] clipsToBounds] & 1) == 0)
    {
      [location[0] alpha];
      if (v13 >= 1.0)
      {
        continue;
      }
    }

    v26 = 0;
    goto LABEL_16;
  }

  v26 = 0;
LABEL_16:
  objc_storeStrong(location, 0);
  return v26 & 1;
}

BOOL __55__UIViewAccessibility__axSetViewIsProbablyDimmingView___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0] == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v3 = location[0] == *(a1 + 32);
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)_accessibilityPointInside:(CGPoint)a3 withEvent:(id)a4
{
  v24 = a3;
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if ([(UIViewAccessibility *)v23 _accessibilityUseAccessibilityFrameForHittest])
  {
    v21.x = 0.0;
    v21.y = 0.0;
    v20 = 0;
    objc_opt_class();
    v19 = __UIAccessibilityCastAsClass();
    v18 = MEMORY[0x29EDC9748](v19);
    objc_storeStrong(&v19, 0);
    UIAccessibilityPointForPoint();
    v21.x = v4;
    v21.y = v5;
    *&v6 = MEMORY[0x29EDC9740](v18).n128_u64[0];
    [(UIViewAccessibility *)v23 accessibilityFrame];
    v17 = v26;
    v25 = CGRectContainsPoint(v26, v21);
    v16 = 1;
  }

  else if ([(UIViewAccessibility *)v23 isAccessibilityElement]|| ([(UIViewAccessibility *)v23 _accessibilityOverridesInvalidFrames]& 1) == 0)
  {
    v25 = [(UIViewAccessibility *)v23 pointInside:location[0] withEvent:v24.x, v24.y]& 1;
    v16 = 1;
  }

  else
  {
    point.x = 0.0;
    point.y = 0.0;
    v14 = 0;
    objc_opt_class();
    v13 = __UIAccessibilityCastAsClass();
    v12 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    UIAccessibilityPointForPoint();
    point.x = v7;
    point.y = v8;
    *&v9 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    v11 = [(UIViewAccessibility *)v23 subviews];
    [v11 accessibilityFrame];
    v25 = CGRectContainsPoint(v27, point);
    MEMORY[0x29EDC9740](v11);
    v16 = 1;
  }

  objc_storeStrong(location, 0);
  return v25 & 1;
}

- (BOOL)_accessibilityIsUserInteractionEnabledChain
{
  if (a1)
  {
    v1 = [a1 _accessibilityFindViewAncestor:&__block_literal_global_444_0 startWithSelf:1];
    v3 = v1 != 0;
    MEMORY[0x29EDC9740](v1);
    return !v3;
  }

  else
  {
    return 0;
  }
}

uint64_t __66__UIViewAccessibility__accessibilityIsUserInteractionEnabledChain__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  LOBYTE(v3) = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [location[0] isUserInteractionEnabled] ^ 1;
  }

  objc_storeStrong(location, 0);
  return v3 & 1;
}

+ (void)_axTriggerNextContextMenuInteractionInQueue:(void *)a3 forElement:(void *)a4 targetPointValue:
{
  v42 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v40 = 0;
  objc_storeStrong(&v40, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v42 = objc_opt_self();
  v38 = [location firstObject];
  v20 = [v38 safeDictionaryForKey:@"presentationsByIdentifier"];
  v21 = [v20 count];
  *&v4 = MEMORY[0x29EDC9740](v20).n128_u64[0];
  if (v21)
  {
    v37 = AXLogAppAccessibility();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      log = v37;
      type = v36;
      __os_log_helper_16_0_0(v35);
      _os_log_impl(&dword_29C4D6000, log, type, "Already showing a presentation for this interaction. Skipping attempt to fast-track context menu.", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC73A8], &unk_2A238E8A0);
    v34 = 1;
  }

  else
  {
    v15 = [v38 view];
    [v40 accessibilityActivationPoint];
    v31 = v5;
    v32 = v6;
    UIAccessibilityPointToPoint();
    *&v33 = v7;
    *(&v33 + 1) = v8;
    *&v9 = MEMORY[0x29EDC9740](v15).n128_u64[0];
    if (v39)
    {
      [v39 pointValue];
      v29 = v10;
      v30 = v11;
      v14 = [v38 view];
      UIAccessibilityPointToPoint();
      *&v28 = v12;
      *(&v28 + 1) = v13;
      v33 = v28;
      MEMORY[0x29EDC9740](v14);
    }

    v22 = MEMORY[0x29EDC9748](v38);
    v26 = v33;
    v23 = MEMORY[0x29EDC9748](location);
    v27 = v42;
    v24 = MEMORY[0x29EDC9748](v40);
    v25 = MEMORY[0x29EDC9748](v39);
    AXPerformSafeBlock();
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    v34 = 0;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
}

void __95__UIViewAccessibility__axTriggerNextContextMenuInteractionInQueue_forElement_targetPointValue___block_invoke(uint64_t a1)
{
  v19 = a1;
  v18 = a1;
  v5 = *(a1 + 32);
  CAPoint3DMakeWithCGPoint();
  v15 = v1;
  v16 = v2;
  v17 = v3;
  v6 = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __95__UIViewAccessibility__axTriggerNextContextMenuInteractionInQueue_forElement_targetPointValue___block_invoke_2;
  v10 = &unk_29F30E1D0;
  v11 = MEMORY[0x29EDC9748](*(a1 + 32));
  v12 = MEMORY[0x29EDC9748](*(a1 + 40));
  v14[1] = *(a1 + 80);
  v13 = MEMORY[0x29EDC9748](*(a1 + 48));
  v14[0] = MEMORY[0x29EDC9748](*(a1 + 56));
  [v5 _interactionShouldBeginAtPoint:v15 completion:{v16, v17}];
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
}

void __95__UIViewAccessibility__axTriggerNextContextMenuInteractionInQueue_forElement_targetPointValue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = a2;
  v19 = a1;
  if (a2)
  {
    if ([*(a1 + 40) count] <= 1)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC73A8], &unk_2A238E8A0);
    }

    else
    {
      v5 = *(a1 + 40);
      v23 = 1;
      v22 = [v5 count] - 1;
      v24 = 1;
      v25 = v22;
      v13[0] = [v5 subarrayWithRange:{1, v22}];
      [(UIViewAccessibility *)*(a1 + 64) _axTriggerNextContextMenuInteractionInQueue:*(a1 + 48) forElement:*(a1 + 56) targetPointValue:?];
      objc_storeStrong(v13, 0);
    }
  }

  else
  {
    v18 = 0;
    objc_opt_class();
    v11 = [*(a1 + 32) safeValueForKey:@"presentationInteraction"];
    v17 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v11);
    v16 = MEMORY[0x29EDC9748](v17);
    objc_storeStrong(&v17, 0);
    [v16 present];
    v9 = [*(a1 + 32) safeDictionaryForKey:{@"presentationsByIdentifier", MEMORY[0x29EDC9740](v16).n128_f64[0]}];
    v10 = [v9 count] != 0;
    *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v15 = v10;
    if (v10 || [*(a1 + 40) count] <= 1)
    {
      notification = *MEMORY[0x29EDC73A8];
      if (v15)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      v7 = [MEMORY[0x29EDBA070] numberWithInt:{v4, v2}];
      UIAccessibilityPostNotification(notification, v7);
      MEMORY[0x29EDC9740](v7);
    }

    else
    {
      v8 = *(a1 + 40);
      v3 = [v8 count];
      v27 = 1;
      v26 = v3 - 1;
      v28 = 1;
      v29 = v3 - 1;
      v13[1] = 1;
      v13[2] = (v3 - 1);
      v14 = [v8 subarrayWithRange:{1, v3 - 1}];
      [(UIViewAccessibility *)*(a1 + 64) _axTriggerNextContextMenuInteractionInQueue:v14 forElement:*(a1 + 48) targetPointValue:*(a1 + 56)];
      objc_storeStrong(&v14, 0);
    }
  }
}

- (BOOL)_accessibilityShowContextMenuForElement:(id)a3 targetPointValue:(id)a4
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  v20 = [MEMORY[0x29EDB8DE8] array];
  v19 = MEMORY[0x29EDC9748](v24);
  while (v19)
  {
    memset(__b, 0, sizeof(__b));
    v13 = [v19 interactions];
    v14 = [v13 countByEnumeratingWithState:__b objects:v25 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(__b[1] + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = MEMORY[0x29EDC9748](v18);
          [v20 addObject:v16];
          objc_storeStrong(&v16, 0);
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [v13 countByEnumeratingWithState:__b objects:v25 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    *&v4 = MEMORY[0x29EDC9740](v13).n128_u64[0];
    v5 = [v19 superview];
    v6 = v19;
    v19 = v5;
    MEMORY[0x29EDC9740](v6);
  }

  objc_storeStrong(&v19, 0);
  if ([v20 count])
  {
    v21 = 1;
    [UIViewAccessibility _axTriggerNextContextMenuInteractionInQueue:v20 forElement:location[0] targetPointValue:v22];
  }

  v8 = v21;
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (id)__accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v282 = *MEMORY[0x29EDCA608];
  v258 = a3;
  v257 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v255 = [location[0] _accessibilityAutomationHitTest];
  v254 = [location[0] _accessibilityHitTestType] == 3;
  v253 = _AXSAutomationEnabled() != 0;
  if (v253)
  {
    v252 = AXLogUIA();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
    {
      log = v252;
      v134 = type;
      v132 = v257;
      v135 = NSStringFromCGPoint(v258);
      v250 = MEMORY[0x29EDC9748](v135);
      __os_log_helper_16_3_2_8_69_8_64(v281, v132, v250);
      _os_log_impl(&dword_29C4D6000, log, v134, "Hit test: %{sensitive}@ > %@", v281, 0x16u);
      MEMORY[0x29EDC9740](v135);
      objc_storeStrong(&v250, 0);
    }

    objc_storeStrong(&v252, 0);
  }

  if (![(UIViewAccessibility *)v257 accessibilityElementsHidden])
  {
    v245 = [(UIViewAccessibility *)v257 _accessibilityFuzzyHitTestElements];
    v244 = [(UIViewAccessibility *)v257 _accessibilityHitTestShouldFallbackToNearestChild];
    if ((v244 & 1) != 0 && (v255 & 1) == 0 && ([(UIViewAccessibility *)v257 isAccessibilityOpaqueElementProvider]& 1) == 0 && (v245 || ([(UIViewAccessibility *)v257 _accessibilityHasOrderedChildren]& 1) != 0))
    {
      v243.receiver = v257;
      v243.super_class = UIViewAccessibility;
      v259 = [(UIViewAccessibility *)&v243 _accessibilityHitTest:location[0] withEvent:v258.x, v258.y];
      v246 = 1;
      goto LABEL_317;
    }

    if (![(UIViewAccessibility *)v257 _accessibilityPointInside:location[0] withEvent:v258.x, v258.y])
    {
      if (v253)
      {
        v242 = AXLogUIA();
        v241 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v242, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_3_1_8_69(v280, v257);
          _os_log_impl(&dword_29C4D6000, v242, v241, "Point was not inside self %{sensitive}@", v280, 0xCu);
        }

        objc_storeStrong(&v242, 0);
      }

      if ([(UIViewAccessibility *)v257 _accessibilityBlocksInteraction])
      {
        v259 = MEMORY[0x29EDC9748](v257);
        v246 = 1;
        goto LABEL_317;
      }

      v240 = [(UIViewAccessibility *)v257 hitTest:location[0] withEvent:v258.x, v258.y];
      if (v240)
      {
        if (([(UIViewAccessibility *)v257 isDescendantOfView:v240]& 1) != 0)
        {
          v259 = 0;
          v246 = 1;
        }

        else
        {
          [v240 convertPoint:v257 fromView:{v258.x, v258.y}];
          v238[3] = v4;
          v238[4] = v5;
          v239 = [v240 _accessibilityHitTest:location[0] withEvent:{*&v4, *&v5}];
          if ([v240 isDescendantOfView:v257])
          {
            v6 = [v240 superview];
            v7 = v240;
            v240 = v6;
            MEMORY[0x29EDC9740](v7);
            while (1)
            {
              v129 = 0;
              if (!v239)
              {
                v129 = v240 != v257;
              }

              if (!v129)
              {
                break;
              }

              [v240 convertPoint:v257 fromView:{v258.x, v258.y}];
              v238[1] = v8;
              v238[2] = v9;
              v10 = [v240 _accessibilityHitTest:location[0] withEvent:{*&v8, *&v9}];
              v11 = v239;
              v239 = v10;
              v12 = [v240 superview];
              v13 = v240;
              v240 = v12;
              MEMORY[0x29EDC9740](v13);
            }
          }

          v259 = MEMORY[0x29EDC9748](v239);
          v246 = 1;
          objc_storeStrong(&v239, 0);
        }
      }

      else if (([(UIViewAccessibility *)v257 _accessibilityAllowOutOfBoundsHitTestAtPoint:location[0] withEvent:v258]& 1) != 0)
      {
        v246 = 0;
      }

      else
      {
        v259 = 0;
        v246 = 1;
      }

      objc_storeStrong(&v240, 0);
      if (v246)
      {
LABEL_317:
        objc_storeStrong(&v245, 0);
        goto LABEL_318;
      }
    }

    v128 = [location[0] _accessibilityHitTestOptions];
    v236 = 0;
    if (v128)
    {
      v14 = MEMORY[0x29EDC9748](v128);
    }

    else
    {
      v237 = [MEMORY[0x29EDC7340] defaultOptions];
      v236 = 1;
      v14 = MEMORY[0x29EDC9748](v237);
    }

    v238[0] = v14;
    if (v236)
    {
      MEMORY[0x29EDC9740](v237);
    }

    v126 = [v238[0] leafNodePredicate];
    v127 = 1;
    if ((v126[2](v126, v257) & 1) == 0)
    {
      v125 = 0;
      if (v255)
      {
        v125 = [(UIViewAccessibility *)v257 _accessibilityViewIsBeingHitTested:v257];
      }

      v127 = v125;
    }

    v15 = MEMORY[0x29EDC9740](v126).n128_u64[0];
    v235 = v127 & 1;
    v233 = 0;
    v124 = 0;
    if (v127)
    {
      [(UIViewAccessibility *)v257 alpha];
      if (v16 > 0.0 || (v124 = 0, ([(UIViewAccessibility *)v257 _accessibilityOverridesInvisibility]& 1) != 0))
      {
        v234 = [location[0] _accessibilityHitTestStartsAtElement];
        v233 = 1;
        v124 = 0;
        if (v234 != v257)
        {
          v124 = !v254;
        }
      }
    }

    if (v233)
    {
      v15 = MEMORY[0x29EDC9740](v234).n128_u64[0];
    }

    if (v124)
    {
      v232 = [(UIViewAccessibility *)v257 _accessibilityHitTestSupplementaryViews:location[0] event:v258.x, v258.y];
      if (v232)
      {
        v259 = MEMORY[0x29EDC9748](v232);
        v246 = 1;
      }

      else
      {
        if ((v255 & 1) == 0)
        {
          goto LABEL_89;
        }

        if (([location[0] _accessibilityAutomationHitTest] & 1) == 0 || (v123 = 1, (-[UIViewAccessibility _accessibilityAutomationHitTestReverseOrder](v257, "_accessibilityAutomationHitTestReverseOrder") & 1) == 0))
        {
          v123 = [(UIViewAccessibility *)v257 _accessibilityHitTestReverseOrder];
        }

        v231 = v123 & 1;
        v228 = 0;
        v226 = 0;
        v224 = 0;
        v222 = 0;
        if (v123)
        {
          v229 = [(UIViewAccessibility *)v257 automationElements];
          v228 = 1;
          v227 = [v229 reverseObjectEnumerator];
          v226 = 1;
          v17 = [v227 allObjects];
          v225 = v17;
          v224 = 1;
        }

        else
        {
          v17 = [(UIViewAccessibility *)v257 automationElements];
          v223 = v17;
          v222 = 1;
        }

        v230 = MEMORY[0x29EDC9748](v17);
        if (v222)
        {
          MEMORY[0x29EDC9740](v223);
        }

        if (v224)
        {
          MEMORY[0x29EDC9740](v225);
        }

        if (v226)
        {
          MEMORY[0x29EDC9740](v227);
        }

        if (v228)
        {
          MEMORY[0x29EDC9740](v229);
        }

        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x29EDC9748](v230);
        v122 = [obj countByEnumeratingWithState:__b objects:v279 count:16];
        if (v122)
        {
          v118 = *__b[2];
          v119 = 0;
          v120 = v122;
          while (1)
          {
            v117 = v119;
            if (*__b[2] != v118)
            {
              objc_enumerationMutation(obj);
            }

            v221 = *(__b[1] + 8 * v119);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v218 = 0.0;
              v219 = 0.0;
              [v221 convertPoint:v257 fromView:{v258.x, v258.y}];
              v218 = v18;
              v219 = v19;
              v217 = [v221 _accessibilityHitTest:location[0] withEvent:{v18, v19}];
              if (v217)
              {
                v259 = MEMORY[0x29EDC9748](v217);
                v246 = 1;
              }

              else
              {
                v246 = 0;
              }

              objc_storeStrong(&v217, 0);
              if (v246)
              {
                break;
              }
            }

            UIAccessibilityPointForPoint();
            v216.x = v20;
            v216.y = v21;
            [v221 accessibilityFrame];
            v215 = v284;
            if (CGRectContainsPoint(v284, v216))
            {
              v259 = MEMORY[0x29EDC9748](v221);
              v246 = 1;
              break;
            }

            ++v119;
            if (v117 + 1 >= v120)
            {
              v119 = 0;
              v120 = [obj countByEnumeratingWithState:__b objects:v279 count:16];
              if (!v120)
              {
                goto LABEL_85;
              }
            }
          }
        }

        else
        {
LABEL_85:
          v246 = 0;
        }

        MEMORY[0x29EDC9740](obj);
        if (!v246)
        {
          v246 = 0;
        }

        objc_storeStrong(&v230, 0);
        if (!v246)
        {
LABEL_89:
          if (v253)
          {
            v214 = AXLogUIA();
            v213 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
            {
              v114 = v214;
              v115 = v213;
              v116 = UIAXMassageElementDescription();
              v212 = MEMORY[0x29EDC9748](v116);
              __os_log_helper_16_2_1_8_64(v278, v212);
              _os_log_impl(&dword_29C4D6000, v114, v115, "Was valid accessibility element, and everything else checked out, so returning self %@", v278, 0xCu);
              MEMORY[0x29EDC9740](v116);
              objc_storeStrong(&v212, 0);
            }

            objc_storeStrong(&v214, 0);
          }

          v259 = MEMORY[0x29EDC9748](v257);
          v246 = 1;
        }
      }

      objc_storeStrong(&v232, 0);
      goto LABEL_316;
    }

    v112 = [(UIViewAccessibility *)v257 _accessibilityAdditionalElements];
    v113 = [v112 count];
    MEMORY[0x29EDC9740](v112);
    if (v113)
    {
      v211 = [(UIViewAccessibility *)v257 _accessibilityHitTestAdditionalElements:location[0] event:v258.x, v258.y];
      if (v211)
      {
        v259 = MEMORY[0x29EDC9748](v211);
        v246 = 1;
      }

      else
      {
        v246 = 0;
      }

      objc_storeStrong(&v211, 0);
      if (v246)
      {
        goto LABEL_316;
      }
    }

    v210 = [(UIViewAccessibility *)v257 _accessibilityHitTestSubviews];
    if ((-[UIViewAccessibility _accessibilityIsIgnored]() & 1) != 0 && ![v210 count])
    {
      v259 = 0;
      v246 = 1;
      goto LABEL_315;
    }

    v209 = 0;
    v207 = [v210 count];
    v206 = 0;
    v205 = 0;
    v204 = 3.40282347e38;
    for (i = v207 - 1; ; --i)
    {
      if (i < 0)
      {
LABEL_231:
        if (v206)
        {
          v72 = 1;
          if (([v206 accessibilityElementsHidden] & 1) == 0)
          {
            LOBYTE(v71) = 0;
            if (([v206 isAccessibilityElement] & 1) == 0)
            {
              LOBYTE(v71) = 0;
              if (([v206 _accessibilityIsTouchContainer] & 1) == 0)
              {
                v71 = [v206 accessibilityViewIsModal] ^ 1;
              }
            }

            v72 = v71;
          }

          v152 = v72 & 1;
          if ([(UIViewAccessibility *)v257 accessibilityIsWindow]& 1) != 0 && (v152 & 1) != 0 && (v255)
          {
            v152 = 0;
          }

          if ([(UIViewAccessibility *)v257 accessibilityViewIsModal]&& (v152 & 1) != 0)
          {
            v259 = MEMORY[0x29EDC9748](v257);
            v246 = 1;
          }

          else
          {
            v259 = MEMORY[0x29EDC9748](v206);
            v246 = 1;
          }
        }

        else
        {
          if (![(UIViewAccessibility *)v257 _accessibilityShouldHitTestLayers])
          {
            goto LABEL_262;
          }

          v68 = [(UIViewAccessibility *)v257 layer];
          v43 = [v68 sublayers];
          v44 = v210;
          v210 = v43;
          MEMORY[0x29EDC9740](v44);
          MEMORY[0x29EDC9740](v68);
          memset(v150, 0, sizeof(v150));
          v69 = [v210 reverseObjectEnumerator];
          v70 = [v69 countByEnumeratingWithState:v150 objects:v267 count:16];
          if (v70)
          {
            v65 = *v150[2];
            v66 = 0;
            v67 = v70;
            while (1)
            {
              v64 = v66;
              if (*v150[2] != v65)
              {
                objc_enumerationMutation(v69);
              }

              v151 = *(v150[1] + 8 * v66);
              v62 = v151;
              v61 = v151;
              v63 = [(UIViewAccessibility *)v257 layer];
              [v61 convertPoint:v258.x fromLayer:v258.y];
              v148[1] = v45;
              v148[2] = v46;
              v149 = [v62 _accessibilityHitTest:location[0] withEvent:{*&v45, *&v46}];
              MEMORY[0x29EDC9740](v63);
              if (v149)
              {
                v259 = MEMORY[0x29EDC9748](v149);
                v246 = 1;
              }

              else
              {
                v246 = 0;
              }

              objc_storeStrong(&v149, 0);
              if (v246)
              {
                break;
              }

              ++v66;
              if (v64 + 1 >= v67)
              {
                v66 = 0;
                v67 = [v69 countByEnumeratingWithState:v150 objects:v267 count:16];
                if (!v67)
                {
                  goto LABEL_256;
                }
              }
            }
          }

          else
          {
LABEL_256:
            v246 = 0;
          }

          *&v47 = MEMORY[0x29EDC9740](v69).n128_u64[0];
          if (!v246)
          {
            v60 = [(UIViewAccessibility *)v257 layer];
            v148[0] = [v60 _accessibilityHitTest:location[0] withEvent:v258];
            MEMORY[0x29EDC9740](v60);
            if (v148[0])
            {
              v259 = MEMORY[0x29EDC9748](v148[0]);
              v246 = 1;
            }

            else
            {
              v246 = 0;
            }

            objc_storeStrong(v148, 0);
            if (!v246)
            {
LABEL_262:
              v59 = 0;
              if ([(UIViewAccessibility *)v257 accessibilityViewIsModal])
              {
                v59 = [(UIViewAccessibility *)v257 _accessibilityViewIsVisible];
              }

              v147 = v59 & 1;
              if ((v59 & 1) == 0 || ([(UIViewAccessibility *)v257 _accessibilityAllowsSiblingsWhenOvergrown]& 1) != 0)
              {
                if ((v244 & 1) != 0 && v205)
                {
                  v259 = MEMORY[0x29EDC9748](v205);
                  v246 = 1;
                }

                else
                {
                  v56 = [v238[0] fallbackPredicate];
                  v57 = 1;
                  if ((v56[2](v56, v257) & 1) == 0)
                  {
                    v55 = 0;
                    if (v254)
                    {
                      objc_opt_class();
                      v55 = 0;
                      if (objc_opt_isKindOfClass())
                      {
                        v55 = [(UIViewAccessibility *)v257 _accessibilityScrollingEnabled];
                      }
                    }

                    v57 = v55;
                  }

                  MEMORY[0x29EDC9740](v56);
                  if (v57)
                  {
                    v259 = MEMORY[0x29EDC9748](v257);
                    v246 = 1;
                  }

                  else if ((v255 & 1) != 0 && [(UIViewAccessibility *)v257 _accessibilityIsUserInteractionEnabledChain]&& ![(UIViewAccessibility *)v257 _accessibilityIsDescendantOfHostingView])
                  {
                    v141 = [(UIViewAccessibility *)v257 hitTest:location[0] withEvent:v258.x, v258.y];
                    if (v253)
                    {
                      oslog = AXLogUIA();
                      v139 = OS_LOG_TYPE_INFO;
                      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
                      {
                        __os_log_helper_16_3_2_8_69_8_69(v266, v257, v141);
                        _os_log_impl(&dword_29C4D6000, oslog, v139, "Returning self or subview of self (self %{sensitive}@, result %{sensitive}@)", v266, 0x16u);
                      }

                      objc_storeStrong(&oslog, 0);
                    }

                    if (([v141 isEqual:v257] & 1) == 0 && (-[UIViewAccessibility _accessibilityIsViewDescendantOfElement:](v257, "_accessibilityIsViewDescendantOfElement:", v141) & 1) == 0)
                    {
                      v54 = v141;
                      [(UIViewAccessibility *)v257 convertPoint:v141 toView:v258.x, v258.y];
                      v138[1] = v48;
                      v138[2] = v49;
                      v50 = [v54 _accessibilityHitTest:location[0] withEvent:{*&v48, *&v49}];
                      v51 = v141;
                      v141 = v50;
                      MEMORY[0x29EDC9740](v51);
                      if (v253)
                      {
                        v138[0] = AXLogUIA();
                        v137 = OS_LOG_TYPE_INFO;
                        if (os_log_type_enabled(v138[0], OS_LOG_TYPE_INFO))
                        {
                          __os_log_helper_16_3_1_8_69(v265, v141);
                          _os_log_impl(&dword_29C4D6000, v138[0], v137, "Performed further axHitTest post process to get (result %{sensitive}@)", v265, 0xCu);
                        }

                        objc_storeStrong(v138, 0);
                      }
                    }

                    v259 = MEMORY[0x29EDC9748](v141);
                    v246 = 1;
                    objc_storeStrong(&v141, 0);
                  }

                  else
                  {
                    if (v253)
                    {
                      v136 = AXLogUIA();
                      if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
                      {
                        __os_log_helper_16_3_1_8_69(v264, v257);
                        _os_log_impl(&dword_29C4D6000, v136, OS_LOG_TYPE_INFO, "Returning nil because we didn't hit one of our subviews but the point is inside %{sensitive}@", v264, 0xCu);
                      }

                      objc_storeStrong(&v136, 0);
                    }

                    v259 = 0;
                    v246 = 1;
                  }
                }
              }

              else
              {
                v146 = [(UIViewAccessibility *)v257 _accessibilityCheckForAllowedModalView:v258.x event:v258.y];
                if (v146)
                {
                  v259 = MEMORY[0x29EDC9748](v146);
                  v246 = 1;
                }

                else if ((v147 & 1) != 0 || (v209 & 1) != 0 || [(UIViewAccessibility *)v257 isAccessibilityElement]|| ([(UIViewAccessibility *)v257 _accessibilityHasOrderedChildren]& 1) != 0 || ([(UIViewAccessibility *)v257 _accessibilityIsTouchContainer]& 1) != 0)
                {
                  v144 = 0;
                  v142 = 0;
                  v58 = 0;
                  if (([(UIViewAccessibility *)v257 _accessibilityAllowsSiblingsWhenOvergrown]& 1) != 0)
                  {
                    v145 = [(UIViewAccessibility *)v257 superview];
                    v144 = 1;
                    v143 = [v145 subviews];
                    v142 = 1;
                    v58 = [v143 count] > 1;
                  }

                  if (v142)
                  {
                    MEMORY[0x29EDC9740](v143);
                  }

                  if (v144)
                  {
                    MEMORY[0x29EDC9740](v145);
                  }

                  if (v58)
                  {
                    v259 = 0;
                  }

                  else
                  {
                    v259 = MEMORY[0x29EDC9748](v257);
                  }

                  v246 = 1;
                }

                else
                {
                  v259 = 0;
                  v246 = 1;
                }

                objc_storeStrong(&v146, 0);
              }
            }
          }
        }

LABEL_314:
        objc_storeStrong(&v205, 0);
        objc_storeStrong(&v206, 0);
LABEL_315:
        objc_storeStrong(&v210, 0);
LABEL_316:
        objc_storeStrong(v238, 0);
        goto LABEL_317;
      }

      v203 = [v210 objectAtIndex:i];
      v202 = 0;
      v261 = 720896;
      v262 = 720896;
      v263 = 0xB000000000002;
      v260 = 0xB000000000002;
      if (dyld_program_sdk_at_least())
      {
        [v203 alpha];
        if (v22 == 0.0 || ([v203 isHidden] & 1) != 0 || (LOBYTE(v111) = 0, (objc_msgSend(v203, "accessibilityElementsHidden") & 1) != 0))
        {
          v111 = [v203 _accessibilityOverridesInvisibility] ^ 1;
        }

        v202 = v111 & 1;
      }

      else
      {
        [v203 alpha];
        if (v23 == 0.0 || (LOBYTE(v110) = 0, ([v203 isHidden] & 1) != 0))
        {
          v110 = [v203 _accessibilityOverridesInvisibility] ^ 1;
        }

        v202 = v110 & 1;
      }

      if (v202)
      {
        v246 = 8;
        goto LABEL_227;
      }

      v209 = 1;
      v201.x = 0.0;
      v201.y = 0.0;
      [v203 convertPoint:v257 fromView:{v258.x, v258.y}];
      v201.x = v24;
      v201.y = v25;
      v200 = [v203 _accessibilityHitTest:location[0] withEvent:{v24, v25}];
      v199 = AXRemoteElementFromObject();
      if (v199 && ([v200 _accessibilityRemoteElementShouldHitTestHostProcess] & 1) != 0)
      {
        v246 = 8;
      }

      else
      {
        if (v253)
        {
          v198 = AXLogUIA();
          v197 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
          {
            v107 = v198;
            v108 = v197;
            v106 = v200;
            v109 = NSStringFromCGPoint(v201);
            v196 = MEMORY[0x29EDC9748](v109);
            __os_log_helper_16_3_3_8_69_8_64_8_64(v277, v106, v196, v203);
            _os_log_impl(&dword_29C4D6000, v107, v108, "AX hit test found %{sensitive}@ at converted point %@ for view: %@", v277, 0x20u);
            MEMORY[0x29EDC9740](v109);
            objc_storeStrong(&v196, 0);
          }

          objc_storeStrong(&v198, 0);
        }

        if (!v200 || (v255 & 1) == 0)
        {
          goto LABEL_161;
        }

        v195.x = 0.0;
        v195.y = 0.0;
        v194 = 0;
        objc_opt_class();
        v193 = __UIAccessibilityCastAsClass();
        if (v194)
        {
          abort();
        }

        v192 = MEMORY[0x29EDC9748](v193);
        objc_storeStrong(&v193, 0);
        v104 = v192;
        UIAccessibilityPointForPoint();
        v195.x = v26;
        v195.y = v27;
        MEMORY[0x29EDC9740](v104);
        v191 = [(UIViewAccessibility *)v257 _accessibilityViewIsBeingHitTested:v200];
        [v200 accessibilityFrame];
        v189 = v285;
        v105 = 0;
        if (CGRectContainsPoint(v285, v195))
        {
          objc_opt_class();
          v103 = 1;
          if (objc_opt_isKindOfClass())
          {
            v102 = 0;
            if ([v200 _accessibilityViewIsVisible])
            {
              v102 = [v200 isUserInteractionEnabled];
            }

            v103 = v102;
          }

          v105 = v103;
        }

        v190 = v105 & 1;
        if (!v191 && (v190 & 1) != 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v100 = v203;
            [(UIViewAccessibility *)v257 convertPoint:v203 toView:v258.x, v258.y];
            v186 = v28;
            v187 = v29;
            v188 = [v100 hitTest:location[0] withEvent:{v28, v29}];
            IsUserInteractionEnabled = 0;
            if ([v188 _accessibilityViewIsVisible])
            {
              IsUserInteractionEnabled = [(UIViewAccessibility *)v188 _accessibilityIsUserInteractionEnabledChain];
            }

            v190 = IsUserInteractionEnabled;
            v191 = [(UIViewAccessibility *)v257 _accessibilityViewIsBeingHitTested:v188];
            v185 = [v188 _accessibilityIsDescendantOfElement:v200];
            if (v191 || (v185 & 1) != 0)
            {
              if (!_CFMZEnabled() || (v185 & 1) == 0 || ([v188 isAccessibilityElement] & 1) != 0)
              {
                objc_storeStrong(&v200, v188);
                if (v253)
                {
                  v182 = AXLogUIA();
                  v181 = OS_LOG_TYPE_INFO;
                  if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
                  {
                    v96 = v182;
                    v97 = v181;
                    __os_log_helper_16_3_2_8_69_8_69(v275, v203, v188);
                    _os_log_impl(&dword_29C4D6000, v96, v97, "Found the view we were looking for through touch forwarding views %{sensitive}@ -> %{sensitive}@", v275, 0x16u);
                  }

                  objc_storeStrong(&v182, 0);
                }
              }
            }

            else
            {
              if (v253)
              {
                v184 = AXLogUIA();
                v183 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
                {
                  v98 = v184;
                  v99 = v183;
                  __os_log_helper_16_3_3_8_69_8_69_8_69(v276, v203, v200, v188);
                  _os_log_impl(&dword_29C4D6000, v98, v99, "Not using this view because it looks like it's a touch forwarding view: parent view: %{sensitive}@, foundView: %{sensitive}@ (forward to: %{sensitive}@)", v276, 0x20u);
                }

                objc_storeStrong(&v184, 0);
              }

              v190 = 0;
            }

            objc_storeStrong(&v188, 0);
          }
        }

        if (v191 || (v190 & 1) != 0)
        {
          if (v253)
          {
            v180 = AXLogUIA();
            v179 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
            {
              v94 = v180;
              v95 = v179;
              __os_log_helper_16_3_1_8_69(v274, v200);
              _os_log_impl(&dword_29C4D6000, v94, v95, "Returning the matching UIA test object: %{sensitive}@", v274, 0xCu);
            }

            objc_storeStrong(&v180, 0);
          }

          v259 = MEMORY[0x29EDC9748](v200);
          v246 = 1;
        }

        else
        {
LABEL_161:
          if (v200)
          {
            if (!v206)
            {
              objc_storeStrong(&v206, v200);
            }

            v178 = 0;
            v177 = 0;
            v93 = [(UIViewAccessibility *)v257 _accessibilityModalViewBlocksView:v200 blockerView:&v177];
            objc_storeStrong(&v178, v177);
            if (v93)
            {
              if (v253)
              {
                v176 = AXLogUIA();
                v175 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
                {
                  v91 = v176;
                  v92 = v175;
                  __os_log_helper_16_3_1_8_69(v273, v178);
                  _os_log_impl(&dword_29C4D6000, v91, v92, "Something blocks the view we found, so skipping it.  We also uncache our first good view for some reason...: %{sensitive}@", v273, 0xCu);
                }

                objc_storeStrong(&v176, 0);
              }

              objc_storeStrong(&v206, 0);
              v246 = 8;
            }

            else
            {
              v174 = 0;
              if (v255)
              {
                v30 = [v200 _accessibilityFindViewAncestor:&__block_literal_global_452 startWithSelf:1];
                v174 = v30 != 0;
                MEMORY[0x29EDC9740](v30);
                if (v253)
                {
                  v173 = AXLogUIA();
                  v172 = OS_LOG_TYPE_INFO;
                  if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
                  {
                    v89 = v173;
                    v90 = v172;
                    __os_log_helper_16_0_1_4_0(v272, v174);
                    _os_log_impl(&dword_29C4D6000, v89, v90, "Is this an expected hit test view? %d", v272, 8u);
                  }

                  objc_storeStrong(&v173, 0);
                }
              }

              v31 = [v200 accessibilityElementsHidden];
              v170 = 0;
              v88 = 1;
              if ((v31 & 1) == 0)
              {
                v171 = [v238[0] isEligibleElement];
                v170 = 1;
                v87 = 0;
                if ((v171[2](v171, v200) & 1) == 0)
                {
                  v87 = !v174;
                }

                v88 = v87;
              }

              if (v170)
              {
                MEMORY[0x29EDC9740](v171);
              }

              if (v88)
              {
                if (v253)
                {
                  v169 = AXLogUIA();
                  v168 = OS_LOG_TYPE_INFO;
                  if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
                  {
                    v85 = v169;
                    v86 = v168;
                    __os_log_helper_16_3_3_8_69_4_0_4_0(v271, v200, [v200 accessibilityElementsHidden], objc_msgSend(v200, "isAccessibilityElement"));
                    _os_log_impl(&dword_29C4D6000, v85, v86, "Can't use this view, so keep going: %{sensitive}@ hidden: %d iselement: %d", v271, 0x18u);
                  }

                  objc_storeStrong(&v169, 0);
                }

                if (v206 == v200)
                {
                  objc_storeStrong(&v206, 0);
                }

                v246 = 0;
              }

              else
              {
                if (v253)
                {
                  v167 = AXLogUIA();
                  v166 = OS_LOG_TYPE_INFO;
                  if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
                  {
                    v83 = v167;
                    v84 = v166;
                    __os_log_helper_16_3_1_8_69(v270, v200);
                    _os_log_impl(&dword_29C4D6000, v83, v84, "Returning the view we found via AX hit test %{sensitive}@", v270, 0xCu);
                  }

                  objc_storeStrong(&v167, 0);
                }

                v259 = MEMORY[0x29EDC9748](v200);
                v246 = 1;
              }
            }

            objc_storeStrong(&v178, 0);
            if (v246)
            {
              goto LABEL_226;
            }
          }

          else if (v244)
          {
            v165 = [v203 _accessibilityAccessibleDescendants];
            memset(v163, 0, sizeof(v163));
            v81 = MEMORY[0x29EDC9748](v165);
            v82 = [v81 countByEnumeratingWithState:v163 objects:v269 count:16];
            if (v82)
            {
              v78 = *v163[2];
              v79 = 0;
              v80 = v82;
              while (1)
              {
                v77 = v79;
                if (*v163[2] != v78)
                {
                  objc_enumerationMutation(v81);
                }

                v164 = *(v163[1] + 8 * v79);
                v162 = [v164 accessibilityElementsHidden];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v164 alpha];
                  if (v32 == 0.0 || (LOBYTE(v76) = 0, ([v164 isHidden] & 1) != 0))
                  {
                    v76 = [v164 _accessibilityOverridesInvisibility] ^ 1;
                  }

                  v162 = (v162 & 1 | v76 & 1) != 0;
                }

                if ((v162 & 1) == 0)
                {
                  v160 = 0;
                  v161 = 0;
                  UIAccessibilityPointForPoint();
                  v160 = v33;
                  v161 = v34;
                  [v164 accessibilityFrame];
                  v158[1] = v35;
                  v158[2] = v36;
                  v158[3] = v37;
                  v158[4] = v38;
                  AX_CGRectGetCenter();
                  v158[5] = v39;
                  v158[6] = v40;
                  AX_CGPointGetDistanceToPoint();
                  v159 = v41;
                  if (v41 < v204)
                  {
                    v75 = v159;
                    [(UIViewAccessibility *)v257 _accessibilityMaxFuzzyHitTestDistance];
                    if (v75 < v42)
                    {
                      v204 = v159;
                      objc_storeStrong(&v205, v164);
                    }
                  }
                }

                ++v79;
                if (v77 + 1 >= v80)
                {
                  v79 = 0;
                  v80 = [v81 countByEnumeratingWithState:v163 objects:v269 count:16];
                  if (!v80)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x29EDC9740](v81);
            objc_storeStrong(&v165, 0);
          }

          if ([v203 accessibilityViewIsModal] & 1) != 0 && (objc_msgSend(v203, "_accessibilityViewIsVisible"))
          {
            v157 = 0;
            objc_opt_class();
            v156 = __UIAccessibilityCastAsSafeCategory();
            if (v157)
            {
              abort();
            }

            v155 = MEMORY[0x29EDC9748](v156);
            objc_storeStrong(&v156, 0);
            v74 = v155;
            v158[0] = [(UIViewAccessibility *)v155 _accessibilityCheckForAllowedModalView:v201.x event:v201.y];
            MEMORY[0x29EDC9740](v74);
            if (v158[0])
            {
              if (v253)
              {
                v154 = AXLogUIA();
                v153 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
                {
                  v73 = v154;
                  __os_log_helper_16_3_1_8_69(v268, v158[0]);
                  _os_log_impl(&dword_29C4D6000, v73, v153, "Returning our allowed modal view %{sensitive}@", v268, 0xCu);
                }

                objc_storeStrong(&v154, 0);
              }

              v259 = MEMORY[0x29EDC9748](v158[0]);
              v246 = 1;
            }

            else
            {
              v246 = 6;
            }

            objc_storeStrong(v158, 0);
          }

          else
          {
            v246 = 0;
          }
        }
      }

LABEL_226:
      objc_storeStrong(&v199, 0);
      objc_storeStrong(&v200, 0);
LABEL_227:
      objc_storeStrong(&v203, 0);
      if (v246)
      {
        if (v246 == 6)
        {
          goto LABEL_231;
        }

        if (v246 != 8)
        {
          goto LABEL_314;
        }
      }
    }
  }

  if (v253)
  {
    v249 = AXLogUIA();
    v248 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v249, OS_LOG_TYPE_INFO))
    {
      v130 = v249;
      v131 = v248;
      __os_log_helper_16_0_0(v247);
      _os_log_impl(&dword_29C4D6000, v130, v131, "Elements were hidden, returning nil", v247, 2u);
    }

    objc_storeStrong(&v249, 0);
  }

  v259 = 0;
  v246 = 1;
LABEL_318:
  objc_storeStrong(location, 0);
  v52 = v259;

  return v52;
}

- (BOOL)_accessibilityViewIsBeingHitTested:(uint64_t)a1
{
  v5 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v5)
  {
    v2 = [location _accessibilityFindAncestor:&__block_literal_global_455_0 startWithSelf:1];
    v6 = v2 != 0;
    MEMORY[0x29EDC9740](v2);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&location, 0);
  return v6;
}

uint64_t __56__UIViewAccessibility___accessibilityHitTest_withEvent___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityElementIsBeingHitTested];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)_accessibilityCheckForAllowedModalView:(double)a3 event:(double)a4
{
  v43 = *MEMORY[0x29EDCA608];
  *&v40 = a3;
  *(&v40 + 1) = a4;
  v39 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v39)
  {
    v36 = [v39 _accessibilityObscuredScreenAllowedViews];
    v35 = [v39 _accessibilityHitTestingObscuredScreenAllowedViews];
    if (v35)
    {
      if (v36)
      {
        v4 = [v36 arrayByAddingObjectsFromArray:v35];
        v5 = v36;
        v36 = v4;
        MEMORY[0x29EDC9740](v5);
      }

      else
      {
        objc_storeStrong(&v36, v35);
      }
    }

    v34 = [v39 _accessibilityWindow];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v36);
    v21 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
    if (v21)
    {
      v17 = *__b[2];
      v18 = 0;
      v19 = v21;
      while (1)
      {
        v16 = v18;
        if (*__b[2] != v17)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(__b[1] + 8 * v18);
        if (v33 != v39 && v33 != v34)
        {
          v31 = v40;
          v30 = [v33 _accessibilityWindow];
          v28 = 0;
          v26 = 0;
          v15 = 0;
          if (v34)
          {
            v15 = 0;
            if (v30)
            {
              v14 = [v39 _accessibilityWindow];
              v29 = v14;
              v28 = 1;
              v27 = [v33 _accessibilityWindow];
              v26 = 1;
              v15 = v14 != v27;
            }
          }

          if (v26)
          {
            MEMORY[0x29EDC9740](v27);
          }

          if (v28)
          {
            MEMORY[0x29EDC9740](v29);
          }

          if (v15)
          {
            [v30 convertPoint:v39 fromView:v31];
            *&v25 = v6;
            *(&v25 + 1) = v7;
            v31 = v25;
            [v30 convertPoint:v33 toView:{v6, v7}];
            *&v24 = v8;
            *(&v24 + 1) = v9;
            v31 = v24;
          }

          else
          {
            [v33 convertPoint:v39 fromView:v40];
            *&v23 = v10;
            *(&v23 + 1) = v11;
            v31 = v23;
          }

          v22 = [v33 _accessibilityHitTest:location withEvent:v31];
          if (v22)
          {
            v41 = MEMORY[0x29EDC9748](v22);
            v37 = 1;
          }

          else
          {
            v37 = 0;
          }

          objc_storeStrong(&v22, 0);
          objc_storeStrong(&v30, 0);
          if (v37)
          {
            break;
          }
        }

        ++v18;
        if (v16 + 1 >= v19)
        {
          v18 = 0;
          v19 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
          if (!v19)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
LABEL_30:
      v37 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    if (!v37)
    {
      v41 = 0;
      v37 = 1;
    }

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    v41 = 0;
    v37 = 1;
  }

  objc_storeStrong(&location, 0);
  v12 = v41;

  return v12;
}

uint64_t __58__UIViewAccessibility__accessibilityViewIsBeingHitTested___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityBoolValueForKey:@"AXPerformingVisiblePointHitTest"];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v27 = a3;
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v24 = [(UIViewAccessibility *)v26 _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v16 = 0;
  v10 = 0;
  if ((v24 & 1) == 0)
  {
    v18 = MEMORY[0x29EDCA5F8];
    v19 = -1073741824;
    v20 = 0;
    v21 = __55__UIViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v22 = &unk_29F30CEB0;
    v23 = MEMORY[0x29EDC9748](v26);
    v17 = &v23;
    v16 = 1;
    v10 = (__55__UIViewAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v10)
  {
    [(UIViewAccessibility *)v26 _accessibilitySetBoolValue:1 forKey:?];
    v15 = [(UIViewAccessibility *)v26 accessibilityHitTest:location[0] withEvent:v27.x, v27.y];
    [(UIViewAccessibility *)v26 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v28 = MEMORY[0x29EDC9748](v15);
    v14 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v14 = 0;
  }

  if (v16)
  {
    objc_storeStrong(v17, 0);
  }

  if (!v14)
  {
    v13 = 0;
    v12 = [(UIViewAccessibility *)v26 accessibilityElementCount];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(UIViewAccessibility *)v26 __accessibilityHitTest:location[0] withEvent:v27.x, v27.y];
      v7 = v13;
      v13 = v6;
      MEMORY[0x29EDC9740](v7);
    }

    else
    {
      v11.receiver = v26;
      v11.super_class = UIViewAccessibility;
      v4 = [(UIViewAccessibility *)&v11 _accessibilityHitTest:location[0] withEvent:v27.x, v27.y];
      v5 = v13;
      v13 = v4;
      MEMORY[0x29EDC9740](v5);
    }

    v28 = MEMORY[0x29EDC9748](v13);
    v14 = 1;
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
  v8 = v28;

  return v8;
}

BOOL __55__UIViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &AXViewIsProbablyDimmingView_block_invoke_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_463);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
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
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
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

  return Implementation != AXViewIsProbablyDimmingView_block_invoke_BaseImplementation;
}

void __55__UIViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    AXViewIsProbablyDimmingView_block_invoke_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
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

- (id)_accessibilityRetrieveIvarText
{
  v34 = *MEMORY[0x29EDCA608];
  v29 = a1;
  if (a1)
  {
    if (!_accessibilityRetrieveIvarText_IgnoreStringSet)
    {
      v1 = [objc_allocWithZone(MEMORY[0x29EDB8E20]) init];
      v2 = _accessibilityRetrieveIvarText_IgnoreStringSet;
      _accessibilityRetrieveIvarText_IgnoreStringSet = v1;
      [v1 addObject:{@"_reuseIdentifier", MEMORY[0x29EDC9740](v2).n128_f64[0]}];
      [_accessibilityRetrieveIvarText_IgnoreStringSet addObject:@"_backgroundColorSystemColorName"];
      [_accessibilityRetrieveIvarText_IgnoreStringSet addObject:@"_contentViewConfigurationIdentifier"];
    }

    v28 = 0;
    v3 = objc_opt_class();
    v27 = class_copyIvarList(v3, &v28);
    v26 = MEMORY[0x29EDC9748](&stru_2A2358AA8);
    for (i = v28 - 1; (i & 0x80000000) == 0; --i)
    {
      v24 = v27[i];
      __s1 = ivar_getTypeEncoding(v24);
      if (__s1 && !strcmp(__s1, "@NSString"))
      {
        Name = ivar_getName(v24);
        v21 = [MEMORY[0x29EDBA0F8] stringWithCString:Name encoding:1];
        if ([_accessibilityRetrieveIvarText_IgnoreStringSet containsObject:v21])
        {
          goto LABEL_26;
        }

        v20 = [v29 safeValueForKey:v21];
        if (v20)
        {
          Class = object_getClass(v20);
          if (Class)
          {
            v32 = &_accessibilityRetrieveIvarText_onceToken;
            location = 0;
            objc_storeStrong(&location, &__block_literal_global_482);
            if (*v32 != -1)
            {
              dispatch_once(v32, location);
            }

            objc_storeStrong(&location, 0);
            memset(__b, 0, sizeof(__b));
            obj = MEMORY[0x29EDC9748](_accessibilityRetrieveIvarText_AcceptableClasses);
            v15 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
            if (v15)
            {
              v11 = *__b[2];
              v12 = 0;
              v13 = v15;
              while (1)
              {
                v10 = v12;
                if (*__b[2] != v11)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(__b[1] + 8 * v12);
                if (v17 == Class)
                {
                  v5 = __UIAXStringForVariables();
                  v6 = v26;
                  v26 = v5;
                  *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
                }

                ++v12;
                if (v10 + 1 >= v13)
                {
                  v12 = 0;
                  v13 = [obj countByEnumeratingWithState:__b objects:v33 count:{16, v4}];
                  if (!v13)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x29EDC9740](obj);
            v19 = 0;
          }

          else
          {
            v19 = 4;
          }
        }

        else
        {
          v19 = 4;
        }

        objc_storeStrong(&v20, 0);
        if (!v19)
        {
LABEL_26:
          v19 = 0;
        }

        objc_storeStrong(&v21, 0);
      }
    }

    free(v27);
    if ([v26 length])
    {
      v7 = MEMORY[0x29EDC9748](v26);
    }

    else
    {
      v7 = MEMORY[0x29EDC9748](0);
    }

    v30 = v7;
    v19 = 1;
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v30 = 0;
  }

  v8 = v30;

  return v8;
}

Class __53__UIViewAccessibility__accessibilityRetrieveIvarText__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x29EDBA0A0]) initWithOptions:256];
  v1 = _accessibilityRetrieveIvarText_AcceptableClasses;
  _accessibilityRetrieveIvarText_AcceptableClasses = v0;
  MEMORY[0x29EDC9740](v1);
  [_accessibilityRetrieveIvarText_AcceptableClasses addPointer:objc_opt_class()];
  [_accessibilityRetrieveIvarText_AcceptableClasses addPointer:NSClassFromString(&cfstr_Nscfstring.isa)];
  [_accessibilityRetrieveIvarText_AcceptableClasses addPointer:NSClassFromString(&cfstr_Nscfconstantst.isa)];
  result = NSClassFromString(&cfstr_Nstaggedpointe.isa);
  if (result)
  {
    return [_accessibilityRetrieveIvarText_AcceptableClasses addPointer:result];
  }

  return result;
}

- (id)_accessibilityRetrieveLabelFromTableViewCell
{
  v32 = a1;
  if (a1)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 838860800;
    v28 = 48;
    v29 = __Block_byref_object_copy__27;
    v30 = __Block_byref_object_dispose__27;
    v31 = 0;
    v24 = [v32 safeValueForKey:@"superview"];
    while (1)
    {
      LOBYTE(v19) = 0;
      if (v24)
      {
        objc_opt_class();
        v19 = objc_opt_isKindOfClass() ^ 1;
      }

      if ((v19 & 1) == 0)
      {
        break;
      }

      v1 = [v24 superview];
      v2 = v24;
      v24 = v1;
      MEMORY[0x29EDC9740](v2);
    }

    if (v24)
    {
      if ([v24 isAccessibilityElement])
      {
        v3 = [v24 safeValueForKey:@"accessibilityLabel"];
        v4 = v26[5];
        v26[5] = v3;
        v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      }

      else
      {
        v6 = [v24 safeValueForKey:@"accessibilityTableViewCellText"];
        v7 = v26[5];
        v26[5] = v6;
        v5 = MEMORY[0x29EDC9740](v7).n128_u64[0];
        if (!v26[5])
        {
          v23 = [v24 safeValueForKey:{@"_accessibilityIndexPath", *&v5}];
          v22 = [v24 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
          if (v22)
          {
            v21 = 0;
            if ([*MEMORY[0x29EDC8008] _accessibilityWantsOpaqueElementProviders])
            {
              v8 = [v32 _accessibilityAncestorIsKindOf:objc_opt_class()];
            }

            else
            {
              v8 = [v22 accessibilityTableViewCellElementAtGlobalRow:{objc_msgSend(v22, "globalRowForRowAtIndexPath:", v23)}];
            }

            v9 = v21;
            v21 = v8;
            MEMORY[0x29EDC9740](v9);
            location = MEMORY[0x29EDC9748](v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v21 tableViewCell];
              v11 = location;
              location = v10;
              MEMORY[0x29EDC9740](v11);
            }

            objc_opt_class();
            v17 = __UIAccessibilityCastAsSafeCategory();
            IsFetching = [(UITableViewCellAccessibility *)v17 accessibilityIsFetchingChildren];
            *&v12 = MEMORY[0x29EDC9740](v17).n128_u64[0];
            if ((IsFetching & 1) == 0)
            {
              [v21 accessibilityEnumerateContainerElementsUsingBlock:v12];
            }

            objc_storeStrong(&location, 0);
            objc_storeStrong(&v21, 0);
          }

          objc_storeStrong(&v22, 0);
          objc_storeStrong(&v23, 0);
        }
      }

      if (!v26[5])
      {
        v13 = [v24 safeValueForKey:{@"text", *&v5}];
        v14 = v26[5];
        v26[5] = v13;
        MEMORY[0x29EDC9740](v14);
      }
    }

    v33 = MEMORY[0x29EDC9748](v26[5]);
    objc_storeStrong(&v24, 0);
    _Block_object_dispose(&v25, 8);
    objc_storeStrong(&v31, 0);
  }

  else
  {
    v33 = 0;
  }

  v15 = v33;

  return v15;
}

void __67__UIViewAccessibility__accessibilityRetrieveLabelFromTableViewCell__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [location[0] accessibilityLabel];
    v3 = *(a1[4] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)accessibilityElementsHidden
{
  v6 = [(UIViewAccessibility *)self storedAccessibilityElementsHidden];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v6)
  {
    v5 = [(UIViewAccessibility *)self storedAccessibilityElementsHidden];
    v8 = [v5 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v5);
  }

  else
  {
    LOBYTE(v4) = 0;
    if (([(UIViewAccessibility *)self isHidden]& 1) != 0)
    {
      v4 = [(UIViewAccessibility *)self _accessibilityOverridesInvisibility]^ 1;
    }

    return v4 & 1;
  }

  return v8;
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = [(UIViewAccessibility *)self _accessibilityBoolValueForKey:@"AXIsElementCheckingStatus"];
  if ((v6 & 1) == 0)
  {
    [(UIViewAccessibility *)v9 _accessibilitySetBoolValue:1 forKey:@"AXIsElementCheckingStatus"];
    location = [(UIViewAccessibility *)v9 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    if (location && v7 != [(UIViewAccessibility *)v9 isAccessibilityElement])
    {
      v3 = [location safeValueForKey:@"_accessibilityClearChildren"];
    }

    objc_storeStrong(&location, 0);
  }

  v4.receiver = v9;
  v4.super_class = UIViewAccessibility;
  [(UIViewAccessibility *)&v4 setIsAccessibilityElement:v7];
}

- (BOOL)_accessibilityIsInTableCell
{
  v2 = [(UIViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

- (BOOL)_accessibilityIsInCollectionCell
{
  v2 = [(UIViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v11 = self;
  v10 = a2;
  v8 = 0;
  v7 = __UIAccessibilitySafeClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v3 = [v6 traitCollection];
  v4 = [v3 userInterfaceIdiom];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v6);
  v9 = v4;
  v5 = 0;
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v5 = 0;
    if (v9 != 3)
    {
      return v9 != 2;
    }
  }

  return v5;
}

- (BOOL)_accessibilityInTopLevelTabLoop
{
  v3 = 0;
  if ([(UIViewAccessibility *)self isAccessibilityElement])
  {
    return [(UIViewAccessibility *)self accessibilityRespondsToUserInteraction];
  }

  return v3;
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v9 = self;
  location[1] = a2;
  v7.receiver = self;
  v7.super_class = UIViewAccessibility;
  location[0] = [(UIViewAccessibility *)&v7 _systemDefaultFocusGroupIdentifier];
  v5 = 0;
  v4 = 0;
  if (!location[0])
  {
    v4 = 0;
    if ([(UIViewAccessibility *)v9 _accessibilityIsFKARunningForFocusItem])
    {
      v6 = [(UIViewAccessibility *)v9 safeValueForKey:@"_containingScrollView"];
      v5 = 1;
      v4 = 0;
      if (!v6)
      {
        v4 = [(UIViewAccessibility *)v9 _accessibilityInTopLevelTabLoop];
      }
    }
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v4)
  {
    v10 = [(UIViewAccessibility *)v9 _accessibilityDefaultFocusGroupIdentifier];
  }

  else
  {
    v10 = MEMORY[0x29EDC9748](location[0]);
  }

  objc_storeStrong(location, 0);
  v2 = v10;

  return v2;
}

- (id)focusItemsInRect:(CGRect)a3
{
  v33 = a3;
  v32 = self;
  v31[1] = a2;
  v30.receiver = self;
  v30.super_class = UIViewAccessibility;
  v31[0] = [(UIViewAccessibility *)&v30 focusItemsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if ([(UIViewAccessibility *)v32 _accessibilityIsFKARunningForFocusItem])
  {
    [(UIViewAccessibility *)v32 accessibilityFrame];
    *&v27 = v3;
    *(&v27 + 1) = v4;
    *&v28 = v5;
    *(&v28 + 1) = v6;
    v26 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v25 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v17[1] = MEMORY[0x29EDCA5F8];
    v18 = -1073741824;
    v19 = 0;
    v20 = __40__UIViewAccessibility_focusItemsInRect___block_invoke;
    v21 = &__block_descriptor_64_e8_B16__0_8l;
    v22 = v27;
    v23 = v28;
    v24 = MEMORY[0x29ED3E4C0]();
    v9 = v31[0];
    v10 = MEMORY[0x29EDCA5F8];
    v11 = -1073741824;
    v12 = 0;
    v13 = __40__UIViewAccessibility_focusItemsInRect___block_invoke_2;
    v14 = &unk_29F30E240;
    v17[0] = MEMORY[0x29EDC9748](v24);
    v15 = MEMORY[0x29EDC9748](v26);
    v16 = MEMORY[0x29EDC9748](v25);
    [v9 enumerateObjectsUsingBlock:&v10];
    v34 = [MEMORY[0x29EDB8D80] axArrayWithPossiblyNilArrays:{2, v26, v25}];
    v29 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(v17, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v34 = MEMORY[0x29EDC9748](v31[0]);
    v29 = 1;
  }

  objc_storeStrong(v31, 0);
  v7 = v34;

  return v7;
}

uint64_t __40__UIViewAccessibility_focusItemsInRect___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] _accessibilityIsKindOfUIView])
  {
    v4 = 0;
  }

  else
  {
    [location[0] accessibilityFrame];
    v4 = AX_CGRectAlmostEqualToRect() & 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

void __40__UIViewAccessibility_focusItemsInRect___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ((*(*(a1 + 48) + 16))())
  {
    [*(a1 + 32) addObject:location[0]];
  }

  else
  {
    [*(a1 + 40) addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)accessibilityContainer
{
  v6 = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = UIViewAccessibility;
  location[0] = [(UIViewAccessibility *)&v4 accessibilityContainer];
  if (location[0])
  {
    v7 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v7 = [(UIViewAccessibility *)v6 superview];
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)_accessibilitySupportGesturesAttributes
{
  v35 = *MEMORY[0x29EDCA608];
  v32[2] = self;
  v32[1] = a2;
  v26 = [(UIViewAccessibility *)self gestureRecognizers];
  v32[0] = [v26 ax_filteredArrayUsingBlock:&__block_literal_global_535];
  if ([v32[0] count])
  {
    v30 = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v32[0]);
    v25 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
    if (v25)
    {
      v21 = *__b[2];
      v22 = 0;
      v23 = v25;
      while (1)
      {
        v20 = v22;
        if (*__b[2] != v21)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(__b[1] + 8 * v22);
        v27 = [MEMORY[0x29EDB8E00] dictionary];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 setObject:&unk_2A238E8B8 forKey:@"AXSupportedGestureTypeKey"];
          v16 = v27;
          v17 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v29, "numberOfTapsRequired")}];
          [v16 setObject:? forKey:?];
          *&v2 = MEMORY[0x29EDC9740](v17).n128_u64[0];
          v18 = v27;
          v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v29, "numberOfTouchesRequired", v2)}];
          [v18 setObject:? forKey:?];
          v3 = MEMORY[0x29EDC9740](v19).n128_u64[0];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v27 setObject:&unk_2A238E8D0 forKey:@"AXSupportedGestureTypeKey"];
            v12 = v27;
            v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v29, "numberOfTapsRequired")}];
            [v12 setObject:? forKey:?];
            *&v4 = MEMORY[0x29EDC9740](v13).n128_u64[0];
            v14 = v27;
            v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v29, "numberOfTouchesRequired", v4)}];
            [v14 setObject:? forKey:?];
            v3 = MEMORY[0x29EDC9740](v15).n128_u64[0];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 setObject:&unk_2A238E8E8 forKey:@"AXSupportedGestureTypeKey"];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v27 setObject:&unk_2A238E8E8 forKey:@"AXSupportedGestureTypeKey"];
                v8 = v27;
                v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v29, "direction")}];
                [v8 setObject:? forKey:?];
                *&v5 = MEMORY[0x29EDC9740](v9).n128_u64[0];
                v10 = v27;
                v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v29, "numberOfTouchesRequired", v5)}];
                [v10 setObject:? forKey:?];
                v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v27 setObject:&unk_2A238E900 forKey:@"AXSupportedGestureTypeKey"];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v27 setObject:&unk_2A238E918 forKey:@"AXSupportedGestureTypeKey"];
                  }
                }
              }
            }
          }
        }

        [v30 addObject:{v27, *&v3}];
        objc_storeStrong(&v27, 0);
        ++v22;
        if (v20 + 1 >= v23)
        {
          v22 = 0;
          v23 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
          if (!v23)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v33 = MEMORY[0x29EDC9748](v30);
    v31 = 1;
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v33 = 0;
    v31 = 1;
  }

  objc_storeStrong(v32, 0);
  v6 = v33;

  return v6;
}

uint64_t __62__UIViewAccessibility__accessibilitySupportGesturesAttributes__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityIsSupportedGestureRecognizer];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)_accessibilitySortedElementsWithin
{
  v7 = self;
  location[1] = a2;
  location[0] = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v5 = MEMORY[0x29EDC9748](v7);
  if ((__57__UIViewAccessibility__accessibilitySortedElementsWithin__block_invoke)())
  {
    v8 = [(UIViewAccessibility *)v7 _accessibilityViewChildrenWithOptions:location[0]];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&v5, 0);
  if (!v4)
  {
    v8 = [(UIViewAccessibility *)v7 _accessibilitySortedElementsWithinWithOptions:location[0]];
  }

  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

BOOL __57__UIViewAccessibility__accessibilitySortedElementsWithin__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &AXViewIsProbablyDimmingView_block_invoke_2_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_566);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
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
      v8 = NSStringFromSelector(sel__accessibilitySortedElementsWithin);
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

  return Implementation != AXViewIsProbablyDimmingView_block_invoke_2_BaseImplementation;
}

void __57__UIViewAccessibility__accessibilitySortedElementsWithin__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    AXViewIsProbablyDimmingView_block_invoke_2_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilitySortedElementsWithin);
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

- (id)_accessibilitySortedElementsWithinWithOptions:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __69__UIViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke;
  v11 = &unk_29F30CEB0;
  v12 = MEMORY[0x29EDC9748](v15);
  v13 = (__69__UIViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke)();
  v5 = MEMORY[0x29EDC9748](v15);
  v6 = (__69__UIViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_571)();
  if (v13 & 1) == 0 || (v6)
  {
    v16 = [(UIViewAccessibility *)v15 _accessibilityViewChildrenWithOptions:location[0]];
  }

  else
  {
    v16 = [(UIViewAccessibility *)v15 _accessibilitySortedElementsWithin];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v3 = v16;

  return v3;
}

BOOL __69__UIViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &AXViewIsProbablyDimmingView_block_invoke_3_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_570);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
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
      v8 = NSStringFromSelector(sel__accessibilitySortedElementsWithin);
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

  return Implementation != AXViewIsProbablyDimmingView_block_invoke_3_BaseImplementation;
}

void __69__UIViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithin);
  if (InstanceMethod)
  {
    AXViewIsProbablyDimmingView_block_invoke_3_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilitySortedElementsWithin);
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

BOOL __69__UIViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_571(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &AXViewIsProbablyDimmingView_block_invoke_4_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_574);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithinWithOptions_);
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
      v8 = NSStringFromSelector(sel__accessibilitySortedElementsWithinWithOptions_);
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

  return Implementation != AXViewIsProbablyDimmingView_block_invoke_4_BaseImplementation;
}

void __69__UIViewAccessibility__accessibilitySortedElementsWithinWithOptions___block_invoke_2_572(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel__accessibilitySortedElementsWithinWithOptions_);
  if (InstanceMethod)
  {
    AXViewIsProbablyDimmingView_block_invoke_4_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel__accessibilitySortedElementsWithinWithOptions_);
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

- (id)automationElements
{
  v6 = self;
  v5 = a2;
  if ([(UIViewAccessibility *)self isAccessibilityElement]|| ([(UIViewAccessibility *)v6 _accessibilityHasOrderedChildren]& 1) != 0)
  {
    v4.receiver = v6;
    v4.super_class = UIViewAccessibility;
    v7 = [(UIViewAccessibility *)&v4 automationElements];
  }

  else
  {
    v7 = [(UIViewAccessibility *)v6 _accessibilityUserTestingSubviewsSorted:?];
  }

  v2 = v7;

  return v2;
}

- (id)_accessibilityUserTestingSubviewsSorted:(void *)a1
{
  v11 = a1;
  v10 = a2;
  if (a1)
  {
    v5 = [v11 _accessibilitySubviews];
    v9 = [v5 mutableCopy];
    v6 = 0;
    if ([v11 _accessibilityViewIsVisible])
    {
      v7 = [v9 indexesOfObjectsPassingTest:&__block_literal_global_584];
      v6 = 1;
      v2 = MEMORY[0x29EDC9748](v7);
    }

    else
    {
      v2 = MEMORY[0x29EDC9748](0);
    }

    location = v2;
    if (v6)
    {
      MEMORY[0x29EDC9740](v7);
    }

    if ([location count])
    {
      [v9 removeObjectsAtIndexes:location];
    }

    if (v10)
    {
      [v11 _accessibilitySortElementsUsingGeometry:v9];
    }

    v12 = MEMORY[0x29EDC9748](v9);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v12 = 0;
  }

  v3 = v12;

  return v3;
}

uint64_t __63__UIViewAccessibility__accessibilityUserTestingSubviewsSorted___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityViewIsVisible] ^ 1;
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)_axPrintSubviews:(int64_t)a3 string:(id)a4
{
  v44 = *MEMORY[0x29EDCA608];
  v42 = self;
  v41 = a2;
  v40 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (!v40)
  {
    v30 = location;
    v32 = [(UIViewAccessibility *)v42 description];
    v31 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    [v30 appendFormat:@"SELF: %@ {%@}\n", v32, v31];
    MEMORY[0x29EDC9740](v31);
    MEMORY[0x29EDC9740](v32);
  }

  memset(__b, 0, sizeof(__b));
  obj = [(UIViewAccessibility *)v42 subviews];
  v29 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
  if (v29)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v29;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(__b[1] + 8 * v26);
      for (i = 0; i < v40; ++i)
      {
        [location appendString:@"    "];
      }

      v35 = [MEMORY[0x29EDC7DA8] viewControllerForView:v38];
      v34 = MEMORY[0x29EDC9748](&stru_2A2358AA8);
      if (v35)
      {
        v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"VC:[%@] ", v35];
        v5 = v34;
        v34 = v4;
        MEMORY[0x29EDC9740](v5);
      }

      v33 = MEMORY[0x29EDC9748](&stru_2A2358AA8);
      if (objc_opt_respondsToSelector())
      {
        v22 = MEMORY[0x29EDBA0F8];
        v23 = [v38 safeValueForKey:@"delegate"];
        v6 = [v22 stringWithFormat:@"Delegate:[%@] ", v23];
        v7 = v33;
        v33 = v6;
        MEMORY[0x29EDC9740](v7);
        MEMORY[0x29EDC9740](v23);
      }

      v14 = location;
      v19 = [v38 description];
      v10 = [v38 accessibilityIgnoresInvertColors];
      v18 = [v38 layer];
      v17 = [v18 filters];
      v11 = [v17 ax_containsObjectUsingBlock:&__block_literal_global_608];
      v16 = [v38 backgroundColor];
      v12 = v34;
      v13 = v33;
      v15 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
      [v14 appendFormat:@"%@[INV:%d(L:%d), BG:{%@}] %@%@ {%@}\n", v19, v10 & 1, v11 & 1, v16, v12, v13, v15];
      MEMORY[0x29EDC9740](v15);
      MEMORY[0x29EDC9740](v16);
      MEMORY[0x29EDC9740](v17);
      MEMORY[0x29EDC9740](v18);
      *&v8 = MEMORY[0x29EDC9740](v19).n128_u64[0];
      v20 = [v38 subviews];
      v21 = [v20 count];
      *&v9 = MEMORY[0x29EDC9740](v20).n128_u64[0];
      if (v21)
      {
        [v38 _axPrintSubviews:v40 + 1 string:{location, v9}];
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(&location, 0);
}

uint64_t __47__UIViewAccessibility__axPrintSubviews_string___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] name];
  v7 = 0;
  v5 = 0;
  v4 = 1;
  if (([v3 isEqualToString:@"InvertColorsDoubleInvert"] & 1) == 0)
  {
    v8 = [location[0] name];
    v7 = 1;
    v4 = 1;
    if (([v8 isEqualToString:@"UIInvertColorsDoubleInvertPrivateKey"] & 1) == 0)
    {
      v6 = [location[0] name];
      v5 = 1;
      v4 = [v6 isEqualToString:@"InvertColorsDarkModeWindowFilter"];
    }
  }

  v10 = v4 & 1;
  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (id)_axSubviews
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x29EDBA050] string];
  [(UIViewAccessibility *)v5 _axPrintSubviews:0 string:v4[0]];
  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_axResponderChain
{
  v16 = self;
  v15[1] = a2;
  v15[0] = [MEMORY[0x29EDBA050] string];
  v14 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:5];
  v13 = 1;
  v9 = [(UIViewAccessibility *)v16 _accessibilityWindow];
  location = [v9 safeValueForKey:@"firstResponder"];
  *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (location)
  {
    [v15[0] appendFormat:@"First Responder:\n %@\nResponder Chain:\n", v2, location];
    [v14 addObject:location];
    while (1)
    {
      v8 = [location nextResponder];
      v3 = location;
      location = v8;
      *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
      if (!v8)
      {
        break;
      }

      [v14 addObject:{location, v4}];
    }

    for (i = [v14 count] - 1; (i & 0x8000000000000000) == 0; --i)
    {
      for (j = 0; j < v13; ++j)
      {
        [v15[0] appendString:@" "];
      }

      ++v13;
      v7 = [v14 objectAtIndex:i];
      [v15[0] appendFormat:@"%@\n", v7];
      MEMORY[0x29EDC9740](v7);
    }

    v17 = MEMORY[0x29EDC9748](v15[0]);
  }

  else
  {
    v17 = MEMORY[0x29EDC9748](@"This is no current first responder");
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
  v5 = v17;

  return v5;
}

- (id)_clippedViewHierarchyDescription
{
  v15 = self;
  v14[1] = a2;
  v14[0] = [(UIViewAccessibility *)self _iosAccessibilityAttributeValue:2041];
  v13 = 0;
  v12 = 0;
  v11 = [(UIViewAccessibility *)v15 superview];
  while (v11)
  {
    ++v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v13 = 1;
      break;
    }

    v2 = [v11 superview];
    v3 = v11;
    v11 = v2;
    MEMORY[0x29EDC9740](v3);
  }

  if (v13)
  {
    v10 = [v14[0] componentsSeparatedByString:?];
    v17 = 0;
    v16 = v12;
    v18 = 0;
    v19 = v12;
    v9 = [v10 subarrayWithRange:{0, v12}];
    v8 = [v9 componentsJoinedByString:@"-"];
    v4 = [v8 stringByAppendingString:@"-"];
    v5 = v14[0];
    v14[0] = v4;
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v8);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  v7 = MEMORY[0x29EDC9748](v14[0]);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v14, 0);

  return v7;
}

- (uint64_t)_accessibilityDidLoadAccessibilityInformation
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_setAccessibilityDidLoadAccessibilityInformation:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIViewAccessibility;
  [(UIViewAccessibility *)&v3 willMoveToWindow:location[0]];
  if (location[0] && ([(UIViewAccessibility *)v5 _accessibilityDidLoadAccessibilityInformation]& 1) == 0)
  {
    [(UIViewAccessibility *)v5 _accessibilityLoadAccessibilityInformation];
    [UIViewAccessibility _setAccessibilityDidLoadAccessibilityInformation:v5];
  }

  objc_storeStrong(location, 0);
}

- (void)_notifyReferenceViewSizeChange
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIViewAccessibility;
  [(UIViewAccessibility *)&v2 _notifyReferenceViewSizeChange];
  [(UIViewAccessibility *)v4 _axSetViewIsProbablyDimmingView:?];
}

- (void)setBackgroundColor:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = MEMORY[0x29EDC9748](v10);
  v4 = [v7 backgroundColor];
  v5 = AXColorsProbablyEqual();
  *&v3 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v8 = (v5 & 1) == 0;
  v6.receiver = v10;
  v6.super_class = UIViewAccessibility;
  [(UIViewAccessibility *)&v6 setBackgroundColor:location[0], v3];
  if (v8)
  {
    [(UIViewAccessibility *)v10 _axSetViewIsProbablyDimmingView:?];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)setAlpha:(double)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = MEMORY[0x29EDC9748](self);
  [location alpha];
  v6 = AXCGFAbs_2(v3 - v7) >= 0.001;
  v4.receiver = v9;
  v4.super_class = UIViewAccessibility;
  [(UIViewAccessibility *)&v4 setAlpha:v7];
  if (v6)
  {
    [(UIViewAccessibility *)v9 _axSetViewIsProbablyDimmingView:?];
  }

  objc_storeStrong(&location, 0);
}

- (void)setHidden:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  location = MEMORY[0x29EDC9748](self);
  v5 = [location isHidden] != v6;
  v3.receiver = v8;
  v3.super_class = UIViewAccessibility;
  [(UIViewAccessibility *)&v3 setHidden:v6];
  if (v5)
  {
    [(UIViewAccessibility *)v8 _axSetViewIsProbablyDimmingView:?];
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityAuditIssuesWithOptions:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12.receiver = v15;
  v12.super_class = UIViewAccessibility;
  v13 = [(UIViewAccessibility *)&v12 _accessibilityAuditIssuesWithOptions:location[0]];
  if (!v13)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = v13;
    v13 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v11 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD780] inDictionary:location[0]];
  v10 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*MEMORY[0x29EDBD7A8] inDictionary:v11];
  v9 = 0;
  if (v10)
  {
    v5 = [MEMORY[0x29EDC7370] _axAuditContrastDetectionForView:v15];
    v6 = v9;
    v9 = v5;
    MEMORY[0x29EDC9740](v6);
  }

  [v13 axSafelyAddObjectsFromArray:v9];
  v8 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_accessibilityImageData
{
  v37[2] = self;
  v37[1] = a2;
  v37[0] = MEMORY[0x29EDC9748](self);
  [v37[0] bounds];
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v36 = v5;
  v18 = CGCeiling(v4);
  [v37[0] bounds];
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  if (v18 * CGCeiling(v9) <= 4096.0)
  {
    v16 = objc_alloc(MEMORY[0x29EDC7AB8]);
    [v37[0] bounds];
    v24[1] = v10;
    v24[2] = v11;
    *&v25 = v12;
    *(&v25 + 1) = v13;
    v26 = v25;
    v27 = [v16 initWithSize:{v12, v13}];
    v17 = v27;
    v19 = MEMORY[0x29EDCA5F8];
    v20 = -1073741824;
    v21 = 0;
    v22 = __46__UIViewAccessibility__accessibilityImageData__block_invoke;
    v23 = &unk_29F30E2A8;
    v24[0] = MEMORY[0x29EDC9748](v37[0]);
    v38 = [v17 imageWithActions:&v19];
    objc_storeStrong(v24, 0);
    v28 = 1;
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v38 = 0;
    v28 = 1;
  }

  objc_storeStrong(v37, 0);
  v14 = v38;

  return v14;
}

void __46__UIViewAccessibility__accessibilityImageData__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = a1[4];
  [v7 bounds];
  [a1[4] bounds];
  CGRectMake_5();
  [v7 drawViewHierarchyInRect:0 afterScreenUpdates:{v2, v3, v4, v5}];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityCapturedImages
{
  v6 = self;
  v5[1] = a2;
  v5[0] = 0;
  v4 = [MEMORY[0x29EDB8DE8] array];
  [(UIViewAccessibility *)v6 _accessibilityCapturedImagesWithDepth:v5 capturedImages:v4];
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);

  return v3;
}

- (void)_accessibilityCapturedImagesWithDepth:(void *)a3 capturedImages:
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  if (v15)
  {
    if ((_UIApplicationIsExtension() & 1) != 0 || !v14 || *v14 >= 5uLL || [location count])
    {
      v12 = 1;
    }

    else
    {
      ++*v14;
      v11 = [v15 _accessibilityImageData];
      if (v11)
      {
        [location addObject:v11];
      }

      memset(__b, 0, sizeof(__b));
      obj = [v15 subviews];
      v8 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
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
          [(UIViewAccessibility *)v10 _accessibilityCapturedImagesWithDepth:v14 capturedImages:location];
          ++v5;
          if (v3 + 1 >= v6)
          {
            v5 = 0;
            v6 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
            if (!v6)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      objc_storeStrong(&v11, 0);
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityAllDragSourceDescriptors
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UIViewAccessibility *)self accessibilityDragSourceDescriptors];
  if (location[0])
  {
    v7 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4 = [(UIViewAccessibility *)v6 _accessibilityFindUnsortedSubviewDescendantsPassingTest:&__block_literal_global_655];
    v7 = [v4 axMapObjectsUsingBlock:&__block_literal_global_658];
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

uint64_t __61__UIViewAccessibility__accessibilityAllDragSourceDescriptors__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityHasDragSources];
  objc_storeStrong(location, 0);
  return v3;
}

id __61__UIViewAccessibility__accessibilityAllDragSourceDescriptors__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = objc_alloc(MEMORY[0x29EDC7900]);
  v4 = [v2 initWithName:*MEMORY[0x29EDBD7D0] view:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accessibilityAllDropPointDescriptors
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UIViewAccessibility *)self accessibilityDropPointDescriptors];
  if (location[0])
  {
    v7 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4 = [(UIViewAccessibility *)v6 _accessibilityFindUnsortedSubviewDescendantsPassingTest:&__block_literal_global_661];
    v7 = [v4 axMapObjectsUsingBlock:&__block_literal_global_663];
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

uint64_t __60__UIViewAccessibility__accessibilityAllDropPointDescriptors__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityHasDragDestinations];
  objc_storeStrong(location, 0);
  return v3;
}

id __60__UIViewAccessibility__accessibilityAllDropPointDescriptors__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = objc_alloc(MEMORY[0x29EDC7900]);
  v4 = [v2 initWithName:*MEMORY[0x29EDBD7D0] view:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)_isEligibleForFocusInteraction
{
  v13 = self;
  v12 = a2;
  v10.receiver = self;
  v10.super_class = UIViewAccessibility;
  v11 = [(UIViewAccessibility *)&v10 _isEligibleForFocusInteraction];
  if ([(UIViewAccessibility *)v13 _accessibilityIsFKARunningForFocusItem]|| ([(UIViewAccessibility *)v13 _accessibilityIsFocusForFocusEverywhereRunningForFocusItem]& 1) != 0)
  {
    location = MEMORY[0x29EDC9748](v13);
    v7 = 0;
    v6 = 0;
    if (([location isHidden] & 1) == 0)
    {
      [location alpha];
      v6 = 0;
      if (CGFAbs_2(v2 - 0.0) >= 2.22044605e-16)
      {
        v8 = [location _window];
        v7 = 1;
        v6 = v8 != 0;
      }
    }

    v11 = v6;
    if (v7)
    {
      MEMORY[0x29EDC9740](v8);
    }

    if ([(UIViewAccessibility *)v13 _accessibilityIsFKARunningForFocusItem])
    {
      v5 = 1;
      if (([location isUserInteractionEnabled] & 1) == 0)
      {
        v5 = [location accessibilityRespondsToUserInteraction];
      }

      v4 = 0;
      if (v11)
      {
        v4 = 0;
        if (v5)
        {
          v4 = [location safeBoolForKey:@"_isFocusInteractionEnabled"];
        }
      }

      v11 = v4 & 1;
    }

    v14 = v11 & 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v14 = v11 & 1;
  }

  return v14 & 1;
}

- (BOOL)_accessibilityIsSoftwareKeyboardMimic
{
  v7 = self;
  v6 = a2;
  v3 = [(UIViewAccessibility *)self _accessibilityViewController];
  v5 = objc_opt_class();
  MEMORY[0x29EDC9740](v3);
  if ([v5 isEqual:NSClassFromString(&cfstr_Uiemojiandstic.isa)] & 1) != 0 || (objc_msgSend(v5, "isEqual:", NSClassFromString(&cfstr_StickerkitLoca.isa)))
  {
    return 1;
  }

  v4.receiver = v7;
  v4.super_class = UIViewAccessibility;
  return [(UIViewAccessibility *)&v4 _accessibilityIsSoftwareKeyboardMimic];
}

- (BOOL)canBecomeFocused
{
  v12 = self;
  v11 = a2;
  v9.receiver = self;
  v9.super_class = UIViewAccessibility;
  v10 = [(UIViewAccessibility *)&v9 canBecomeFocused];
  if (![(UIViewAccessibility *)v12 _accessibilityIsFKARunningForFocusItem]&& ([(UIViewAccessibility *)v12 _accessibilityIsFocusForFocusEverywhereRunningForFocusItem]& 1) == 0)
  {
    return v10 & 1;
  }

  if (v10)
  {
    v10 = ([(UIViewAccessibility *)v12 _axHasSingleFocusableSubview]^ 1) & 1;
  }

  if ((v10 & 1) == 0 && ([(UIViewAccessibility *)v12 safeBoolForKey:@"_isFocusedOrAncestorOfFocusedView"]& 1) == 0)
  {
    v8 = [(UIViewAccessibility *)v12 _accessibilityGetBlockForAttribute:5010];
    if (v8)
    {
      v10 = (*(v8 + 2))();
    }

    else if ([(UIViewAccessibility *)v12 _accessibilityUnfocusableViewCanBeFocusedForFocusEverywhere])
    {
      v10 = 1;
    }

    if ([(UIViewAccessibility *)v12 _accessibilityIsFKARunningForFocusItem]&& ([(UIViewAccessibility *)v12 _accessibilityRemembersLastFocusedChild]& 1) != 0)
    {
      location = [(UIViewAccessibility *)v12 _accessibilityLastFocusedChild];
      v5 = 0;
      v4 = 0;
      if (location)
      {
        v6 = [location _accessibilityWindow];
        v5 = 1;
        v4 = v6 != 0;
      }

      if (v5)
      {
        MEMORY[0x29EDC9740](v6);
      }

      if (v4)
      {
        v10 = 1;
      }

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v8, 0);
  }

  if ((v10 & 1) == 0 && [(UIViewAccessibility *)v12 _accessibilityIsFKARunningForFocusItem])
  {
    v3 = 0;
    if ([(UIViewAccessibility *)v12 isAccessibilityElement])
    {
      v3 = [(UIViewAccessibility *)v12 accessibilityRespondsToUserInteraction];
    }

    v10 = v3;
  }

  return v10 & 1;
}

- (uint64_t)_axHasSingleFocusableSubview
{
  v9 = a1;
  if (a1)
  {
    location = MEMORY[0x29EDC9748](v9);
    while (1)
    {
      v6 = [location subviews];
      v7 = [v6 count];
      *&v1 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      if (v7 != 1)
      {
        break;
      }

      v5 = [location subviews];
      v2 = [v5 firstObject];
      v3 = location;
      location = v2;
      MEMORY[0x29EDC9740](v3);
      if ([location safeBoolForKey:{@"_isEligibleForFocusInteraction", MEMORY[0x29EDC9740](v5).n128_f64[0]}] & 1) != 0 && ((objc_msgSend(location, "canBecomeFocused") & 1) != 0 || (objc_msgSend(location, "isFocused")))
      {
        v10 = 1;
        goto LABEL_11;
      }
    }

    v10 = 0;
LABEL_11:
    objc_storeStrong(&location, 0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x29EDCA608];
  v9 = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = UIViewAccessibility;
  v8[0] = [(UIViewAccessibility *)&v7 preferredFocusEnvironments];
  if ([(UIViewAccessibility *)v9 _accessibilityIsFKARunningForFocusItem]&& ([(UIViewAccessibility *)v9 _accessibilityRemembersLastFocusedChild]& 1) != 0)
  {
    location = [(UIViewAccessibility *)v9 _accessibilityLastFocusedChild];
    if (location)
    {
      v10[0] = location;
      v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
      v3 = v8[0];
      v8[0] = v2;
      MEMORY[0x29EDC9740](v3);
    }

    objc_storeStrong(&location, 0);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)_accessibilityLastFocusedChild
{
  v13 = self;
  v12[1] = a2;
  v11 = 0;
  objc_opt_class();
  v6 = [(UIViewAccessibility *)v13 _axGetLastFocusedChild];
  v10 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v6);
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v12[0] = v9;
  v7 = 0;
  v5 = 0;
  if (v9)
  {
    v4 = 1;
    if (([v12[0] isHidden] & 1) == 0)
    {
      v8 = [v12[0] window];
      v7 = 1;
      v4 = v8 == 0;
    }

    v5 = v4;
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  if (v5)
  {
    [(UIViewAccessibility *)v13 _axSetLastFocusedChild:0];
  }

  v3 = [(UIViewAccessibility *)v13 _axGetLastFocusedChild];
  objc_storeStrong(v12, 0);

  return v3;
}

- (id)_childFocusViews
{
  v78 = self;
  v77[1] = a2;
  v76.receiver = self;
  v76.super_class = UIViewAccessibility;
  v31 = [(UIViewAccessibility *)&v76 _childFocusViews];
  v77[0] = [v31 mutableCopy];
  *&v2 = MEMORY[0x29EDC9740](v31).n128_u64[0];
  if ([(UIViewAccessibility *)v78 _accessibilityIsFKARunningForFocusItem])
  {
    if (![(UIViewAccessibility *)v78 accessibilityElementsHidden]&& ([(UIViewAccessibility *)v78 _accessibilityFKAShouldProcessChildren]& 1) != 0)
    {
      if (![v77[0] count])
      {
        v73 = 0;
        objc_opt_class();
        v30 = [(UIViewAccessibility *)v78 safeValueForKey:@"_viewDelegate"];
        v72 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v30);
        v71 = MEMORY[0x29EDC9748](v72);
        objc_storeStrong(&v72, 0);
        v74 = v71;
        v70 = [v71 presentedViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v68 = 0;
          objc_opt_class();
          v67 = __UIAccessibilityCastAsClass();
          v66 = MEMORY[0x29EDC9748](v67);
          objc_storeStrong(&v67, 0);
          v69 = v66;
          if (v66)
          {
            v28 = [v69 searchResultsController];
            v64 = 0;
            v62 = 0;
            v60 = 0;
            v58 = 0;
            v56 = 0;
            v29 = 1;
            if (v28)
            {
              v65 = [v69 view];
              v64 = 1;
              v63 = [v69 searchResultsController];
              v62 = 1;
              v61 = [v63 view];
              v60 = 1;
              v29 = 1;
              if ([v65 containsView:?])
              {
                v59 = [v69 searchResultsController];
                v58 = 1;
                v57 = [v59 view];
                v56 = 1;
                v29 = [v57 isHidden];
              }
            }

            if (v56)
            {
              MEMORY[0x29EDC9740](v57);
            }

            if (v58)
            {
              MEMORY[0x29EDC9740](v59);
            }

            if (v60)
            {
              MEMORY[0x29EDC9740](v61);
            }

            if (v62)
            {
              MEMORY[0x29EDC9740](v63);
            }

            if (v64)
            {
              MEMORY[0x29EDC9740](v65);
            }

            *&v3 = MEMORY[0x29EDC9740](v28).n128_u64[0];
            if (v29)
            {
              v26 = v77[0];
              v27 = [(UIViewAccessibility *)v78 subviews];
              [v26 axSafelyAddObjectsFromArray:?];
              MEMORY[0x29EDC9740](v27);
            }
          }

          objc_storeStrong(&v69, 0);
        }

        else
        {
          v24 = [v74 presentedViewController];
          v25 = [v24 modalPresentationStyle];
          *&v4 = MEMORY[0x29EDC9740](v24).n128_u64[0];
          if (v25 == 7)
          {
            v22 = [v74 presentedViewController];
            v21 = [v22 popoverPresentationController];
            v55 = [v21 passthroughViews];
            MEMORY[0x29EDC9740](v21);
            MEMORY[0x29EDC9740](v22);
            v23 = v78;
            v48 = MEMORY[0x29EDCA5F8];
            v49 = -1073741824;
            v50 = 0;
            v51 = __39__UIViewAccessibility__childFocusViews__block_invoke;
            v52 = &unk_29F30C818;
            v53 = MEMORY[0x29EDC9748](v55);
            v54 = [(UIViewAccessibility *)v23 _accessibilityFindAncestor:&v48 startWithSelf:1];
            if (v54)
            {
              v19 = v77[0];
              v20 = [(UIViewAccessibility *)v78 subviews];
              [v19 axSafelyAddObjectsFromArray:?];
              MEMORY[0x29EDC9740](v20);
            }

            objc_storeStrong(&v54, 0);
            objc_storeStrong(&v53, 0);
            objc_storeStrong(&v55, 0);
          }

          else
          {
            v17 = [v70 presentationController];
            NSClassFromString(&cfstr_Uicontextmenuu_0.isa);
            isKindOfClass = objc_opt_isKindOfClass();
            *&v5 = MEMORY[0x29EDC9740](v17).n128_u64[0];
            if (isKindOfClass)
            {
              v15 = [v70 presentationController];
              v47 = [v15 safeUIViewForKey:@"platterContainerView"];
              MEMORY[0x29EDC9740](v15);
              v16 = v47;
              v40 = MEMORY[0x29EDCA5F8];
              v41 = -1073741824;
              v42 = 0;
              v43 = __39__UIViewAccessibility__childFocusViews__block_invoke_2;
              v44 = &unk_29F30C818;
              v45 = MEMORY[0x29EDC9748](v78);
              v46 = [v16 _accessibilityFindAncestor:&v40 startWithSelf:0];
              if (v46)
              {
                [v77[0] axSafelyAddObject:v47];
              }

              objc_storeStrong(&v46, 0);
              objc_storeStrong(&v45, 0);
              objc_storeStrong(&v47, 0);
            }

            else if (v70)
            {
              v39 = [v70 view];
              v14 = v39;
              v32 = MEMORY[0x29EDCA5F8];
              v33 = -1073741824;
              v34 = 0;
              v35 = __39__UIViewAccessibility__childFocusViews__block_invoke_3;
              v36 = &unk_29F30C818;
              v37 = MEMORY[0x29EDC9748](v78);
              v38 = [v14 _accessibilityFindAncestor:&v32 startWithSelf:0];
              if (v38)
              {
                [v77[0] axSafelyAddObject:v39];
              }

              objc_storeStrong(&v38, 0);
              objc_storeStrong(&v37, 0);
              objc_storeStrong(&v39, 0);
            }
          }
        }

        objc_storeStrong(&v70, 0);
        objc_storeStrong(&v74, 0);
      }

      v8 = MEMORY[0x29EDC7DA0];
      v13 = [v77[0] reverseObjectEnumerator];
      v12 = [v13 allObjects];
      v11 = [v8 _subviewsReplacedByModalViewSubviewsIfNecessary:?];
      v10 = [v11 reverseObjectEnumerator];
      v9 = [v10 allObjects];
      v79 = [v9 ax_filteredArrayUsingBlock:&__block_literal_global_686];
      MEMORY[0x29EDC9740](v9);
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](v11);
      MEMORY[0x29EDC9740](v12);
      MEMORY[0x29EDC9740](v13);
      v75 = 1;
    }

    else
    {
      v79 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
      v75 = 1;
    }
  }

  else
  {
    v79 = MEMORY[0x29EDC9748](v77[0]);
    v75 = 1;
  }

  objc_storeStrong(v77, 0);
  v6 = v79;

  return v6;
}

uint64_t __39__UIViewAccessibility__childFocusViews__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] containsObject:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

BOOL __39__UIViewAccessibility__childFocusViews__block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0] == a1[4];
  objc_storeStrong(location, 0);
  return v4;
}

BOOL __39__UIViewAccessibility__childFocusViews__block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0] == a1[4];
  objc_storeStrong(location, 0);
  return v4;
}

uint64_t __39__UIViewAccessibility__childFocusViews__block_invoke_4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityFKAShouldBeProcessed];
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)_prefersFocusContainment
{
  v3 = 1;
  if (([(UIViewAccessibility *)self conformsToProtocol:&unk_2A23AAC78]& 1) == 0)
  {
    v3 = 1;
    if (([(UIViewAccessibility *)self _accessibilityIsTouchContainer]& 1) == 0)
    {
      v3 = [(UIViewAccessibility *)self shouldGroupAccessibilityChildren];
    }
  }

  return v3 & 1;
}

- (BOOL)_accessibilityUnfocusableViewCanBeFocusedForFocusEverywhere
{
  v6 = self;
  v5 = a2;
  if (([(UIViewAccessibility *)self _accessibilityIsFocusForFocusEverywhereRunningForFocusItem]& 1) == 0)
  {
    return 0;
  }

  v4.receiver = v6;
  v4.super_class = UIViewAccessibility;
  LOBYTE(v3) = 0;
  if (![(UIViewAccessibility *)&v4 canBecomeFocused])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), LOBYTE(v3) = 0, (objc_opt_isKindOfClass()))
    {
      LOBYTE(v3) = 0;
      if ([(UIViewAccessibility *)v6 isAccessibilityElement])
      {
        v3 = ![(UIViewAccessibility *)v6 _accessibilityIsInFocusableCell];
      }
    }
  }

  return v3 & 1;
}

- (BOOL)_accessibilityDisplayFocusIndicatorForFocusEverywhereView
{
  v6 = self;
  v5[1] = a2;
  v5[0] = [(UIViewAccessibility *)self _accessibilityGetBlockForAttribute:5010];
  if ([(UIViewAccessibility *)v6 _accessibilityUnfocusableViewCanBeFocusedForFocusEverywhere]|| v5[0] && ((*(v5[0] + 2))() & 1) != 0)
  {
    location = [(UIViewAccessibility *)v6 _accessibilityGetBlockForAttribute:5013];
    if (location)
    {
      v7 = (*(location + 2))() & 1;
    }

    else
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass() & 1;
    }

    v4 = 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v7 = 0;
    v4 = 1;
  }

  objc_storeStrong(v5, 0);
  return v7 & 1;
}

- (BOOL)_accessibilityPreventOcclusionForViewFromAboveFocusRegionForFocusEverywhereView
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UIViewAccessibility *)self _accessibilityGetBlockForAttribute:5014];
  if (location[0])
  {
    v4 = (*(location[0] + 2))() & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)_accessibilityFKAShouldBeProcessed
{
  if (([(UIViewAccessibility *)self _accessibilityViewIsVisible]& 1) == 0)
  {
    return 0;
  }

  v9 = 0;
  v7 = 0;
  v6 = 0;
  if ((UIAccessibilityIsWidgetExtension() & 1) == 0)
  {
    objc_opt_class();
    v5 = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [(UIViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
      v9 = 1;
      v5 = 1;
      if (!v10)
      {
        objc_opt_class();
        v5 = 1;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = [(UIViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
          v7 = 1;
          v5 = v8 != 0;
        }
      }
    }

    v6 = v5;
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  if (v9)
  {
    MEMORY[0x29EDC9740](v10);
  }

  if (v6)
  {
    return 1;
  }

  v3 = [*MEMORY[0x29EDC8008] _accessibilityContainerToStopVisibilityCheck];
  v4 = 0;
  if (!v3)
  {
    v4 = [(UIViewAccessibility *)self _accessibilityIsFrameOutOfBounds];
  }

  MEMORY[0x29EDC9740](v3);
  return (v4 & 1) == 0;
}

- (id)_accessibilityFocusRingTintColor
{
  v7 = self;
  location[1] = a2;
  v5.receiver = self;
  v5.super_class = UIViewAccessibility;
  location[0] = [(UIViewAccessibility *)&v5 _accessibilityFocusRingTintColor];
  if (location[0])
  {
    v8 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4 = [(UIViewAccessibility *)v7 superview];
    v8 = [v4 _accessibilityFocusRingTintColor];
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)_accessibilitySubviewMatchingFKAView:(void *)a1
{
  v15 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v15)
  {
    v12 = MEMORY[0x29EDC9748](v15);
    v4 = v15;
    v5 = MEMORY[0x29EDCA5F8];
    v6 = -1073741824;
    v7 = 0;
    v8 = __60__UIViewAccessibility__accessibilitySubviewMatchingFKAView___block_invoke;
    v9 = &unk_29F30D510;
    v10 = MEMORY[0x29EDC9748](location);
    v11 = MEMORY[0x29EDC9748](v12);
    v16 = [v4 _accessibilityFindSubviewDescendant:&v5];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
    v13 = 1;
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v16 = 0;
    v13 = 1;
  }

  objc_storeStrong(&location, 0);
  v2 = v16;

  return v2;
}

uint64_t __60__UIViewAccessibility__accessibilitySubviewMatchingFKAView___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v16 = 0;
    objc_opt_class();
    v15 = __UIAccessibilityCastAsClass();
    v14 = MEMORY[0x29EDC9748](v15);
    objc_storeStrong(&v15, 0);
    v17 = v14;
    if (v14 && *(a1 + 32))
    {
      v11 = v17;
      [v17 safeCGRectForKey:?];
      [v11 convertRect:*(a1 + 40) toView:{v2, v3, v4, v5}];
      v12 = v17;
      [*(a1 + 32) safeCGRectForKey:@"_defaultFocusRegionFrame"];
      [v12 convertRect:*(a1 + 40) toView:{v6, v7, v8, v9}];
      v18 = AX_CGRectAlmostEqualToRect();
    }

    v21 = v18 & 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(location, 0);
  return v21 & 1;
}

- (id)_accessibilityViewMatchingFKAView:(void *)a3 inArray:
{
  v17 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  if (v17)
  {
    v5 = v15;
    v8 = MEMORY[0x29EDCA5F8];
    v9 = -1073741824;
    v10 = 0;
    v11 = __65__UIViewAccessibility__accessibilityViewMatchingFKAView_inArray___block_invoke;
    v12 = &unk_29F30D318;
    v13 = MEMORY[0x29EDC9748](location);
    v6 = [v5 ax_filteredArrayUsingBlock:&v8];
    v18 = [v6 firstObject];
    MEMORY[0x29EDC9740](v6);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v18 = 0;
  }

  v14 = 1;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
  v3 = v18;

  return v3;
}

uint64_t __65__UIViewAccessibility__accessibilityViewMatchingFKAView_inArray___block_invoke(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = a3;
  v15 = a4;
  v14 = a1;
  v13 = 0;
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v12 = v9;
  if (v9)
  {
    [v12 frame];
    [a1[4] frame];
    v13 = AX_CGRectAlmostEqualToRect();
  }

  *v15 = v13 & 1;
  v5 = v13;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_accessibilityIsDescendantOfHostingView
{
  v2 = [(UIViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_752 startWithSelf:0];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

uint64_t __62__UIViewAccessibility__accessibilityIsDescendantOfHostingView__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityIsSwiftUIHostingView];
  objc_storeStrong(location, 0);
  return v3;
}

@end