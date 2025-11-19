@interface UICollectionViewCellAccessibilityElement
- (BOOL)_accessibilityBackingElementIsValid;
- (BOOL)_accessibilityCanBecomeNativeFocused;
- (BOOL)_accessibilityHasNativeFocus;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityImplementsDefaultRowRange;
- (BOOL)_accessibilityIsAwayAlertElement;
- (BOOL)_accessibilityIsOutsideParentBounds;
- (BOOL)_accessibilityIsSpeakThisElement;
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)_accessibilityShouldAttemptScrollToFrameOnParentView;
- (BOOL)_accessibilityShouldIncludeRowRangeInElementDescription;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilityUserTestingIsCancelButton;
- (BOOL)_accessibilityUserTestingIsDefaultButton;
- (BOOL)_accessibilityUserTestingIsDestructiveButton;
- (BOOL)_accessibilityUserTestingIsPreferredButton;
- (BOOL)_accessibilityViewHierarchyHasNativeFocus;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (UICollectionViewCell)cell;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityCollectionViewCellContentSubviews;
- (id)_accessibilityDataDetectorScheme:(CGPoint)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilitySemanticContextForElement:(id)a3;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityValue;
- (id)automationCustomProperties;
- (id)automationElements;
- (id)realCell;
- (int64_t)_accessibilityScannerActivateBehavior;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCopy;
- (void)_accessibilityCut;
- (void)_accessibilityPaste;
- (void)_accessibilityRedo;
- (void)_accessibilitySelect;
- (void)_accessibilitySelectAll;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)_accessibilityUndo;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
- (void)dealloc;
@end

@implementation UICollectionViewCellAccessibilityElement

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(UICollectionViewCell *)self->_cell setAccessibilityContainer:0];
  v2.receiver = v4;
  v2.super_class = UICollectionViewCellAccessibilityElement;
  [(UICollectionViewCellAccessibilityElement *)&v2 dealloc];
}

- (id)realCell
{
  v16 = a1;
  if (a1)
  {
    v15 = [v16 accessibilityContainer];
    objc_opt_class();
    v13 = 0;
    v8 = 1;
    if (objc_opt_isKindOfClass())
    {
      v14 = [v15 superview];
      v13 = 1;
      v8 = v14 == 0;
    }

    if (v13)
    {
      MEMORY[0x29EDC9740](v14);
    }

    if (v8)
    {
      v17 = 0;
      v12 = 1;
    }

    else
    {
      v7 = [v15 dataSource];
      *&v1 = MEMORY[0x29EDC9740](v7).n128_u64[0];
      if (v7)
      {
        v11 = [v15 cellForItemAtIndexPath:{*(v16 + 8), v1}];
        v9 = 0;
        v6 = 0;
        if (v11)
        {
          v10 = [v11 superview];
          v9 = 1;
          v6 = v10 == 0;
        }

        if (v9)
        {
          MEMORY[0x29EDC9740](v10);
        }

        if (v6)
        {
          v2 = [v15 accessibilityCreatePrepareCellForIndexPath:*(v16 + 8)];
          v3 = v11;
          v11 = v2;
          MEMORY[0x29EDC9740](v3);
        }

        v17 = MEMORY[0x29EDC9748](v11);
        v12 = 1;
        objc_storeStrong(&v11, 0);
      }

      else
      {
        v17 = 0;
        v12 = 1;
      }
    }

    objc_storeStrong(&v15, 0);
  }

  else
  {
    v17 = 0;
  }

  v4 = v17;

  return v4;
}

- (BOOL)_accessibilityBackingElementIsValid
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self realCell];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

- (UICollectionViewCell)cell
{
  v23 = self;
  v22[1] = a2;
  v22[0] = [(UICollectionViewCellAccessibilityElement *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v14 = [v22[0] superview];
  MEMORY[0x29EDC9740](v14);
  if (v14)
  {
    v20 = [(UICollectionViewCellAccessibilityElement *)v23 realCell];
    if (v20)
    {
      cell = v23->_cell;
      v16 = 0;
      LOBYTE(v11) = 1;
      if (v20 == cell)
      {
        v17 = [v20 _accessibilityIndexPath];
        v16 = 1;
        v11 = [v17 isEqual:v23->_indexPath] ^ 1;
      }

      if (v16)
      {
        MEMORY[0x29EDC9740](v17);
      }

      if (v11)
      {
        v15 = MEMORY[0x29EDC9748](v23->_cell);
        [(UICollectionViewCellAccessibilityElement *)v23 setCell:v20];
        [v20 setAccessibilityContainer:v23];
        if ([*MEMORY[0x29EDC8008] _accessibilityWantsOpaqueElementProviders] & 1) != 0 && (objc_msgSend(v22[0], "isAccessibilityOpaqueElementProvider"))
        {
          LOBYTE(v8) = 1;
          v9 = @"set cell - this call should not happen with VO on. %@";
          v10 = [MEMORY[0x29EDBA108] callStackSymbols];
          _AXLogWithFacility();
          MEMORY[0x29EDC9740](v10);
        }

        [v20 layoutSubviews];
        if (v15)
        {
          [v20 accessibilityReuseChildren:v15 forMockParent:v23];
          if (v15 != v23->_cell)
          {
            [v15 accessibilityClearInternalData];
            [v15 setAccessibilityContainer:0];
          }
        }

        else
        {
          [v20 accessibilityClearInternalData];
          [v20 setAccessibilityContainer:v23];
        }

        v23->_usingRealCell = 1;
        objc_storeStrong(&v15, 0);
      }
    }

    else
    {
      if (v23->_cell)
      {
        v12 = [(UICollectionViewCell *)v23->_cell _accessibilityIndexPath];
        v13 = [v12 isEqual:v23->_indexPath];
        *&v4 = MEMORY[0x29EDC9740](v12).n128_u64[0];
        if ((v13 & 1) == 0)
        {
          v19 = [v22[0] accessibilityCellForRowAtIndexPath:{v23->_indexPath, v4}];
          [v19 setAccessibilityContainer:v23];
          if ([*MEMORY[0x29EDC8008] _accessibilityWantsOpaqueElementProviders] & 1) != 0 && (objc_msgSend(v22[0], "isAccessibilityOpaqueElementProvider"))
          {
            LOBYTE(v8) = 1;
            v9 = @"set cell - this call should not happen with VO on. %@";
            v10 = [MEMORY[0x29EDBA108] callStackSymbols];
            _AXLogWithFacility();
            MEMORY[0x29EDC9740](v10);
          }

          [v19 layoutSubviews];
          [v19 removeFromSuperview];
          location = MEMORY[0x29EDC9748](v23->_cell);
          [(UICollectionViewCellAccessibilityElement *)v23 setCell:v19];
          [v19 accessibilityReuseChildren:location forMockParent:v23];
          if (location != v19)
          {
            [location accessibilityClearInternalData];
            [location setAccessibilityContainer:0];
          }

          objc_storeStrong(&location, 0);
          objc_storeStrong(&v19, 0);
        }
      }

      else
      {
        v2 = [v22[0] accessibilityCellForRowAtIndexPath:v23->_indexPath];
        v3 = v23->_cell;
        v23->_cell = v2;
        [(UICollectionViewCell *)v23->_cell setAccessibilityContainer:v23, MEMORY[0x29EDC9740](v3).n128_f64[0]];
        [(UICollectionViewCell *)v23->_cell removeFromSuperview];
      }

      v23->_usingRealCell = 0;
    }

    v24 = MEMORY[0x29EDC9748](v23->_cell);
    v21 = 1;
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v24 = 0;
    v21 = 1;
  }

  objc_storeStrong(v22, 0);
  v6 = v24;

  return v6;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 isAccessibilityElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v13 = a3;
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v9 = [(UICollectionViewCellAccessibilityElement *)v12 cell];
  v8 = [(UICollectionViewCellAccessibilityElement *)v12 accessibilityContainer];
  v7 = [(UICollectionViewCellAccessibilityElement *)v12 cell];
  [v8 convertPoint:v13.x toView:v13.y];
  v10 = [(UICollectionViewCell *)v9 _accessibilityHitTest:location[0] withEvent:v4, v5];
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  MEMORY[0x29EDC9740](v9);
  objc_storeStrong(location, 0);

  return v10;
}

- (int64_t)accessibilityElementCount
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 accessibilityElementCount];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v5 = [(UICollectionViewCell *)v4 accessibilityElementAtIndex:a3];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(UICollectionViewCellAccessibilityElement *)v7 cell];
  v5 = [(UICollectionViewCell *)v4 indexOfAccessibilityElement:location[0]];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (CGRect)accessibilityFrame
{
  v39 = self;
  v38[1] = a2;
  v23 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v38[0] = [(UICollectionViewCell *)v23 _accessibilityIndexPath];
  MEMORY[0x29EDC9740](v23);
  v36 = 0;
  objc_opt_class();
  v24 = [(UICollectionViewCellAccessibilityElement *)v39 accessibilityContainer];
  v35 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v24);
  v34 = MEMORY[0x29EDC9748](v35);
  objc_storeStrong(&v35, 0);
  v37 = v34;
  v32 = 0;
  v30 = 0;
  v22 = 0;
  if (v38[0])
  {
    v33 = [(UICollectionViewCellAccessibilityElement *)v39 cell];
    v32 = 1;
    v31 = [(UICollectionViewCell *)v33 window];
    v30 = 1;
    v22 = 0;
    if (!v31)
    {
      v22 = v37 != 0;
    }
  }

  if (v30)
  {
    MEMORY[0x29EDC9740](v31);
  }

  if (v32)
  {
    MEMORY[0x29EDC9740](v33);
  }

  if (!v22)
  {
    goto LABEL_18;
  }

  v29 = [v37 layoutAttributesForItemAtIndexPath:v38[0]];
  if (v29)
  {
    [v29 frame];
    *&v27 = v2;
    *(&v27 + 1) = v3;
    *&v28 = v4;
    *(&v28 + 1) = v5;
    v21 = [v37 window];
    MEMORY[0x29EDC9740](v21);
    if (v21 || ((v26 = -[UICollectionViewCellAccessibilityElement _accessibilityAncestorIsKindOf:](v39, "_accessibilityAncestorIsKindOf:", objc_opt_class())) == 0 ? (v25 = 0) : ([v26 accessibilityFrame], *&v27 = *&v27 + v6, *(&v27 + 1) = *(&v27 + 1) + v7, v40 = v27, v41 = v28, v25 = 1), objc_storeStrong(&v26, 0), !v25))
    {
      UIAccessibilityFrameForBounds();
      *&v40 = v8;
      *(&v40 + 1) = v9;
      *&v41 = v10;
      *(&v41 + 1) = v11;
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  objc_storeStrong(&v29, 0);
  if (!v25)
  {
LABEL_18:
    v20 = [(UICollectionViewCellAccessibilityElement *)v39 cell];
    [(UICollectionViewCell *)v20 accessibilityFrame];
    *&v40 = v12;
    *(&v40 + 1) = v13;
    *&v41 = v14;
    *(&v41 + 1) = v15;
    MEMORY[0x29EDC9740](v20);
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(v38, 0);
  v17 = *(&v40 + 1);
  v16 = *&v40;
  v19 = *(&v41 + 1);
  v18 = *&v41;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)_accessibilityIsOutsideParentBounds
{
  v10 = a1;
  if (a1)
  {
    v9 = [v10 accessibilityContainer];
    v6 = [v9 window];
    [v6 accessibilityFrame];
    v8 = CGRectInset(v12, 0.0, 40.0);
    [v10 accessibilityFrame];
    rect2.origin.x = v1;
    rect2.origin.y = v2;
    rect2.size.width = v3;
    rect2.size.height = v4;
    v11 = !CGRectContainsRect(v8, rect2);
    MEMORY[0x29EDC9740](v6);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)_accessibilityShouldAttemptScrollToFrameOnParentView
{
  v12 = self;
  location[1] = a2;
  v7 = [(UICollectionViewCellAccessibilityElement *)self realCell];
  MEMORY[0x29EDC9740](v7);
  if (v7)
  {
    return 1;
  }

  else if (AXDoesRequestingClientDeserveAutomation())
  {
    location[0] = [(UICollectionViewCellAccessibilityElement *)v12 accessibilityContainer];
    objc_opt_class();
    v9 = 0;
    v6 = 1;
    if (objc_opt_isKindOfClass())
    {
      v10 = [location[0] superview];
      v9 = 1;
      v6 = v10 == 0;
    }

    if (v9)
    {
      MEMORY[0x29EDC9740](v10);
    }

    if (v6)
    {
      v13 = 0;
    }

    else
    {
      v5 = [location[0] dataSource];
      *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
      if (v5)
      {
        v8 = [location[0] numberOfSections];
        v13 = -[NSIndexPath section](v12->_indexPath, "section") < v8 && v8 && (v4 = -[NSIndexPath item](v12->_indexPath, "item"), v4 < [location[0] numberOfItemsInSection:{-[NSIndexPath section](v12->_indexPath, "section")}]);
      }

      else
      {
        v13 = 0;
      }
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    return 0;
  }

  return v13;
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3
{
  v60 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = AXRetainAutorelease();
  v58 = [(UICollectionViewCellAccessibilityElement *)v60 realCell];
  v56 = 0;
  objc_opt_class();
  v28 = [(UICollectionViewCellAccessibilityElement *)v60 accessibilityContainer];
  v55 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v28);
  v54 = MEMORY[0x29EDC9748](v55);
  objc_storeStrong(&v55, 0);
  v57 = v54;
  v53 = 0;
  v52 = 0;
  if (!v54 || v58 || (v27 = -[NSIndexPath section](v60->_indexPath, "section"), v27 >= [v57 numberOfSections]) || (v26 = -[NSIndexPath item](v60->_indexPath, "item"), v26 >= objc_msgSend(v57, "numberOfItemsInSection:", -[NSIndexPath section](v60->_indexPath, "section"))))
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (v50 = [v58 accessibilityScrollToVisible], (v50))
    {
      v61 = v50 & 1;
      v51 = 1;
    }

    else
    {
      v49 = [location[0] _accessibilityParentView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [(UICollectionViewCellAccessibilityElement *)v60 _accessibilityParentView];
        v5 = v49;
        v49 = v4;
        MEMORY[0x29EDC9740](v5);
      }

      v48 = [v49 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = [v48 indexPathsForVisibleItems];
        v46 = MEMORY[0x29EDC9748](v60->_indexPath);
        v45 = [v47 indexOfObject:v46];
        v44 = 0;
        if (_UIAXObjectIsBehindKeyboard())
        {
          v53 = 1;
          v44 = 1;
        }

        if ((v44 & 1) == 0)
        {
          v25 = [v48 safeValueForKey:@"visibleBounds"];
          [v25 rectValue];
          v43.origin.x = v6;
          v43.origin.y = v7;
          v43.size.width = v8;
          v43.size.height = v9;
          MEMORY[0x29EDC9740](v25);
          v42 = -10.0;
          [v49 frame];
          rect2.origin.x = v10;
          rect2.origin.y = v11;
          rect2.size.width = v12;
          rect2.size.height = v13;
          if (!CGRectContainsRect(v43, rect2) || !v58)
          {
            MaxY = CGRectGetMaxY(rect2);
            v65 = MaxY - CGRectGetMinY(v43);
            if (fabs(v65) > -10.0 || (MinY = CGRectGetMinY(rect2), v64 = MinY - CGRectGetMaxY(v43), fabs(v64) > -10.0) || !v58)
            {
              if (v58)
              {
                v53 = 2;
              }

              else
              {
                v53 = 1;
              }
            }

            MaxX = CGRectGetMaxX(rect2);
            v63 = MaxX - CGRectGetMinX(v43);
            if (fabs(v63) > -10.0 || (MinX = CGRectGetMinX(rect2), v62 = MinX - CGRectGetMaxX(v43), fabs(v62) > -10.0) || !v58)
            {
              v52 = 16;
            }
          }

          v44 = 1;
        }

        v40 = [v47 count];
        if ((v44 & 1) == 0 && v40 && (v45 > 1 && v45 < v40 - 2 || v40 == 1))
        {
          v61 = 0;
          v51 = 1;
        }

        else
        {
          v20 = [v48 accessibilityElementCount];
          if (v20 != [v47 count] || (v44 & 1) != 0)
          {
            v39 = [v48 numberOfSections];
            if ([v46 section] < v39 && v39 && (v19 = objc_msgSend(v46, "item"), v19 < objc_msgSend(v48, "numberOfItemsInSection:", objc_msgSend(v46, "section"))))
            {
              [v48 contentOffset];
              v37 = v14;
              v38 = v15;
              [v48 scrollToItemAtIndexPath:v46 atScrollPosition:v52 | v53 animated:0];
              [v48 contentOffset];
              v36[1] = v16;
              v36[2] = v17;
              if (!__CGPointEqualToPoint(v37, v38, *&v16, *&v17))
              {
                [v48 _accessibilityCollectionViewUpdateVisibleCells];
              }

              if (v58 && [(UICollectionViewCellAccessibilityElement *)v60 _accessibilityIsOutsideParentBounds])
              {
                v61 = 0;
                v51 = 1;
              }

              else
              {
                v31[1] = MEMORY[0x29EDCA5F8];
                v32 = -1073741824;
                v33 = 0;
                v34 = __82__UICollectionViewCellAccessibilityElement_accessibilityScrollToVisibleWithChild___block_invoke;
                v35 = &unk_29F30C7C8;
                v36[0] = MEMORY[0x29EDC9748](v60);
                AXPerformBlockOnMainThreadAfterDelay();
                if (!location[0])
                {
                  objc_storeStrong(location, v58);
                }

                v29 = MEMORY[0x29EDC9748](v60);
                v30 = MEMORY[0x29EDC9748](location[0]);
                v31[0] = MEMORY[0x29EDC9748](v48);
                AXPerformBlockOnMainThreadAfterDelay();
                v61 = 1;
                v51 = 1;
                objc_storeStrong(v31, 0);
                objc_storeStrong(&v30, 0);
                objc_storeStrong(&v29, 0);
                objc_storeStrong(v36, 0);
              }
            }

            else
            {
              v61 = 0;
              v51 = 1;
            }
          }

          else
          {
            v61 = 0;
            v51 = 1;
          }
        }

        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v47, 0);
      }

      else
      {
        v61 = 0;
        v51 = 1;
      }

      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v49, 0);
    }
  }

  else
  {
    [v57 scrollToItemAtIndexPath:v60->_indexPath atScrollPosition:v52 | v53 animated:0];
    v61 = 1;
    v51 = 1;
  }

  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
  return v61 & 1;
}

id __82__UICollectionViewCellAccessibilityElement_accessibilityScrollToVisibleWithChild___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cell];

  return v1;
}

id __82__UICollectionViewCellAccessibilityElement_accessibilityScrollToVisibleWithChild___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) _accessibilityWindow];
  v6 = [v4 firstResponder];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (([v6 _accessibilityIsDescendantOfElement:*(a1 + 32)] & 1) == 0)
  {
    v13 = [*(a1 + 32) _accessibilityParentView];
    v12 = 1;
    v11 = [v13 safeValueForKey:@"window"];
    v10 = 1;
    v9 = AXUIKeyboardWindow();
    v8 = 1;
    v7 = v11 != v9;
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  if (v10)
  {
    MEMORY[0x29EDC9740](v11);
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v4);
  if (v7)
  {
    _UIAXDismissKeyboardIfNecessary();
  }

  v1 = objc_opt_self();
  v2 = objc_opt_self();

  return v2;
}

- (id)automationCustomProperties
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 automationCustomProperties];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v3 _accessibilitySetSelectedTextRange:a3.location, a3.length];
  MEMORY[0x29EDC9740](v3);
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v5 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v6 = [(UICollectionViewCell *)v5 _accessibilitySelectedTextRange];
  v7 = v2;
  MEMORY[0x29EDC9740](v5);
  v3 = v6;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityTextViewTextOperationResponder];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityTextOperations
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityTextOperations];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (void)_accessibilityCopy
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 _accessibilityCopy];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilityCut
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 _accessibilityCut];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityElementDidBecomeFocused
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 accessibilityElementDidBecomeFocused];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityElementDidLoseFocus
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 accessibilityElementDidLoseFocus];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilitySelect
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 _accessibilitySelect];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilityPaste
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 _accessibilityPaste];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilitySelectAll
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 _accessibilitySelectAll];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilityUndo
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 _accessibilityUndo];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilityRedo
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 _accessibilityRedo];
  MEMORY[0x29EDC9740](v2);
}

- (BOOL)_accessibilityHasTextOperations
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityHasTextOperations];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityAXAttributedLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityAXAttributedValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityIdentifier
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 accessibilityIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v5 = [(UICollectionViewCellAccessibilityElement *)self cell];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return *MEMORY[0x29EDC7578];
  }

  v4 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v7 = [(UICollectionViewCell *)v4 accessibilityTraits];
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (CGPoint)accessibilityActivationPoint
{
  v6 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v6 accessibilityActivationPoint];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](v6);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (BOOL)_accessibilityIsAwayAlertElement
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityIsAwayAlertElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityHint
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityAXAttributedHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (_NSRange)accessibilityRowRange
{
  v5 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v6 = [(UICollectionViewCell *)v5 accessibilityRowRange];
  v7 = v2;
  MEMORY[0x29EDC9740](v5);
  v3 = v6;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)_accessibilityImplementsDefaultRowRange
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityImplementsDefaultRowRange];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityLanguage
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 accessibilityLanguage];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (void)accessibilityIncrement
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 accessibilityIncrement];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityDecrement
{
  v2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)v2 accessibilityDecrement];
  MEMORY[0x29EDC9740](v2);
}

- (BOOL)accessibilityActivate
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 accessibilityActivate];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_accessibilityCollectionViewCellContentSubviews
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityCollectionViewCellContentSubviews];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilitySupportsActivateAction];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)a3
{
  v4 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v5 = [(UICollectionViewCell *)v4 _accessibilityDataDetectorScheme:a3.x, a3.y];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  if ([(UICollectionViewCellAccessibilityElement *)self isAccessibilityElement])
  {
    return 1;
  }

  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 accessibilityElementCount];
  MEMORY[0x29EDC9740](v3);
  return v4 == 1;
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityScannerActivateBehavior];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityIsSpeakThisElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityShouldIncludeRowRangeInElementDescription
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityShouldIncludeRowRangeInElementDescription];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)automationElements
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = self;
  location[1] = a2;
  v10 = [(UICollectionViewCellAccessibilityElement *)self cell];
  location[0] = [(UICollectionViewCell *)v10 automationElements];
  if ([location[0] count])
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location[0]);
    v9 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(__b[1] + 8 * v6);
        [v14 setAccessibilityContainer:v16];
        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v17 = MEMORY[0x29EDC9748](location[0]);
    v12 = 1;
  }

  else
  {
    v11.receiver = v16;
    v11.super_class = UICollectionViewCellAccessibilityElement;
    v17 = [(UICollectionViewCellAccessibilityElement *)&v11 automationElements];
    v12 = 1;
  }

  objc_storeStrong(location, 0);
  v2 = v17;

  return v2;
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityUserTestingIsCancelButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsDefaultButton
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityUserTestingIsDefaultButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsDestructiveButton
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityUserTestingIsDestructiveButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsPreferredButton
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityUserTestingIsPreferredButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_accessibilitySemanticContextForElement:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(UICollectionViewCellAccessibilityElement *)v7 cell];
  v5 = [(UICollectionViewCell *)v4 _accessibilitySemanticContextForElement:location[0]];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_accessibilityCanBecomeNativeFocused
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityCanBecomeNativeFocused];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityHasNativeFocus
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityHasNativeFocus];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilitySetNativeFocus
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilitySetNativeFocus];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityViewHierarchyHasNativeFocus
{
  v3 = [(UICollectionViewCellAccessibilityElement *)self cell];
  v4 = [(UICollectionViewCell *)v3 _accessibilityViewHierarchyHasNativeFocus];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

@end