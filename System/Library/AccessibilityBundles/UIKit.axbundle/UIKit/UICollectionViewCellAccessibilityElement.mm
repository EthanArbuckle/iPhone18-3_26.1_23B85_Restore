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
- (BOOL)accessibilityScrollToVisibleWithChild:(id)child;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (UICollectionViewCell)cell;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityCollectionViewCellContentSubviews;
- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilitySemanticContextForElement:(id)element;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)accessibilityElementAtIndex:(int64_t)index;
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
- (int64_t)indexOfAccessibilityElement:(id)element;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCopy;
- (void)_accessibilityCut;
- (void)_accessibilityPaste;
- (void)_accessibilityRedo;
- (void)_accessibilitySelect;
- (void)_accessibilitySelectAll;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
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
  selfCopy = self;
  v3 = a2;
  [(UICollectionViewCell *)self->_cell setAccessibilityContainer:0];
  v2.receiver = selfCopy;
  v2.super_class = UICollectionViewCellAccessibilityElement;
  [(UICollectionViewCellAccessibilityElement *)&v2 dealloc];
}

- (id)realCell
{
  selfCopy = self;
  if (self)
  {
    accessibilityContainer = [selfCopy accessibilityContainer];
    objc_opt_class();
    v13 = 0;
    v8 = 1;
    if (objc_opt_isKindOfClass())
    {
      superview = [accessibilityContainer superview];
      v13 = 1;
      v8 = superview == 0;
    }

    if (v13)
    {
      MEMORY[0x29EDC9740](superview);
    }

    if (v8)
    {
      v17 = 0;
      v12 = 1;
    }

    else
    {
      dataSource = [accessibilityContainer dataSource];
      *&v1 = MEMORY[0x29EDC9740](dataSource).n128_u64[0];
      if (dataSource)
      {
        v11 = [accessibilityContainer cellForItemAtIndexPath:{*(selfCopy + 8), v1}];
        v9 = 0;
        v6 = 0;
        if (v11)
        {
          superview2 = [v11 superview];
          v9 = 1;
          v6 = superview2 == 0;
        }

        if (v9)
        {
          MEMORY[0x29EDC9740](superview2);
        }

        if (v6)
        {
          v2 = [accessibilityContainer accessibilityCreatePrepareCellForIndexPath:*(selfCopy + 8)];
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

    objc_storeStrong(&accessibilityContainer, 0);
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
  realCell = [(UICollectionViewCellAccessibilityElement *)self realCell];
  v4 = realCell != 0;
  MEMORY[0x29EDC9740](realCell);
  return v4;
}

- (UICollectionViewCell)cell
{
  selfCopy = self;
  v22[1] = a2;
  v22[0] = [(UICollectionViewCellAccessibilityElement *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  superview = [v22[0] superview];
  MEMORY[0x29EDC9740](superview);
  if (superview)
  {
    realCell = [(UICollectionViewCellAccessibilityElement *)selfCopy realCell];
    if (realCell)
    {
      cell = selfCopy->_cell;
      v16 = 0;
      LOBYTE(v11) = 1;
      if (realCell == cell)
      {
        _accessibilityIndexPath = [realCell _accessibilityIndexPath];
        v16 = 1;
        v11 = [_accessibilityIndexPath isEqual:selfCopy->_indexPath] ^ 1;
      }

      if (v16)
      {
        MEMORY[0x29EDC9740](_accessibilityIndexPath);
      }

      if (v11)
      {
        v15 = MEMORY[0x29EDC9748](selfCopy->_cell);
        [(UICollectionViewCellAccessibilityElement *)selfCopy setCell:realCell];
        [realCell setAccessibilityContainer:selfCopy];
        if ([*MEMORY[0x29EDC8008] _accessibilityWantsOpaqueElementProviders] & 1) != 0 && (objc_msgSend(v22[0], "isAccessibilityOpaqueElementProvider"))
        {
          LOBYTE(v8) = 1;
          v9 = @"set cell - this call should not happen with VO on. %@";
          callStackSymbols = [MEMORY[0x29EDBA108] callStackSymbols];
          _AXLogWithFacility();
          MEMORY[0x29EDC9740](callStackSymbols);
        }

        [realCell layoutSubviews];
        if (v15)
        {
          [realCell accessibilityReuseChildren:v15 forMockParent:selfCopy];
          if (v15 != selfCopy->_cell)
          {
            [v15 accessibilityClearInternalData];
            [v15 setAccessibilityContainer:0];
          }
        }

        else
        {
          [realCell accessibilityClearInternalData];
          [realCell setAccessibilityContainer:selfCopy];
        }

        selfCopy->_usingRealCell = 1;
        objc_storeStrong(&v15, 0);
      }
    }

    else
    {
      if (selfCopy->_cell)
      {
        _accessibilityIndexPath2 = [(UICollectionViewCell *)selfCopy->_cell _accessibilityIndexPath];
        v13 = [_accessibilityIndexPath2 isEqual:selfCopy->_indexPath];
        *&v4 = MEMORY[0x29EDC9740](_accessibilityIndexPath2).n128_u64[0];
        if ((v13 & 1) == 0)
        {
          v19 = [v22[0] accessibilityCellForRowAtIndexPath:{selfCopy->_indexPath, v4}];
          [v19 setAccessibilityContainer:selfCopy];
          if ([*MEMORY[0x29EDC8008] _accessibilityWantsOpaqueElementProviders] & 1) != 0 && (objc_msgSend(v22[0], "isAccessibilityOpaqueElementProvider"))
          {
            LOBYTE(v8) = 1;
            v9 = @"set cell - this call should not happen with VO on. %@";
            callStackSymbols = [MEMORY[0x29EDBA108] callStackSymbols];
            _AXLogWithFacility();
            MEMORY[0x29EDC9740](callStackSymbols);
          }

          [v19 layoutSubviews];
          [v19 removeFromSuperview];
          location = MEMORY[0x29EDC9748](selfCopy->_cell);
          [(UICollectionViewCellAccessibilityElement *)selfCopy setCell:v19];
          [v19 accessibilityReuseChildren:location forMockParent:selfCopy];
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
        v2 = [v22[0] accessibilityCellForRowAtIndexPath:selfCopy->_indexPath];
        v3 = selfCopy->_cell;
        selfCopy->_cell = v2;
        [(UICollectionViewCell *)selfCopy->_cell setAccessibilityContainer:selfCopy, MEMORY[0x29EDC9740](v3).n128_f64[0]];
        [(UICollectionViewCell *)selfCopy->_cell removeFromSuperview];
      }

      selfCopy->_usingRealCell = 0;
    }

    v24 = MEMORY[0x29EDC9748](selfCopy->_cell);
    v21 = 1;
    objc_storeStrong(&realCell, 0);
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
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  isAccessibilityElement = [(UICollectionViewCell *)cell isAccessibilityElement];
  MEMORY[0x29EDC9740](cell);
  return isAccessibilityElement;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  cell = [(UICollectionViewCellAccessibilityElement *)selfCopy cell];
  accessibilityContainer = [(UICollectionViewCellAccessibilityElement *)selfCopy accessibilityContainer];
  cell2 = [(UICollectionViewCellAccessibilityElement *)selfCopy cell];
  [accessibilityContainer convertPoint:testCopy.x toView:testCopy.y];
  v10 = [(UICollectionViewCell *)cell _accessibilityHitTest:location[0] withEvent:v4, v5];
  MEMORY[0x29EDC9740](cell2);
  MEMORY[0x29EDC9740](accessibilityContainer);
  MEMORY[0x29EDC9740](cell);
  objc_storeStrong(location, 0);

  return v10;
}

- (int64_t)accessibilityElementCount
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  accessibilityElementCount = [(UICollectionViewCell *)cell accessibilityElementCount];
  MEMORY[0x29EDC9740](cell);
  return accessibilityElementCount;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  v5 = [(UICollectionViewCell *)cell accessibilityElementAtIndex:index];
  MEMORY[0x29EDC9740](cell);

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  cell = [(UICollectionViewCellAccessibilityElement *)selfCopy cell];
  v5 = [(UICollectionViewCell *)cell indexOfAccessibilityElement:location[0]];
  MEMORY[0x29EDC9740](cell);
  objc_storeStrong(location, 0);
  return v5;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v38[1] = a2;
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  v38[0] = [(UICollectionViewCell *)cell _accessibilityIndexPath];
  MEMORY[0x29EDC9740](cell);
  v36 = 0;
  objc_opt_class();
  accessibilityContainer = [(UICollectionViewCellAccessibilityElement *)selfCopy accessibilityContainer];
  v35 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](accessibilityContainer);
  v34 = MEMORY[0x29EDC9748](v35);
  objc_storeStrong(&v35, 0);
  v37 = v34;
  v32 = 0;
  v30 = 0;
  v22 = 0;
  if (v38[0])
  {
    cell2 = [(UICollectionViewCellAccessibilityElement *)selfCopy cell];
    v32 = 1;
    window = [(UICollectionViewCell *)cell2 window];
    v30 = 1;
    v22 = 0;
    if (!window)
    {
      v22 = v37 != 0;
    }
  }

  if (v30)
  {
    MEMORY[0x29EDC9740](window);
  }

  if (v32)
  {
    MEMORY[0x29EDC9740](cell2);
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
    window2 = [v37 window];
    MEMORY[0x29EDC9740](window2);
    if (window2 || ((v26 = -[UICollectionViewCellAccessibilityElement _accessibilityAncestorIsKindOf:](selfCopy, "_accessibilityAncestorIsKindOf:", objc_opt_class())) == 0 ? (v25 = 0) : ([v26 accessibilityFrame], *&v27 = *&v27 + v6, *(&v27 + 1) = *(&v27 + 1) + v7, v40 = v27, v41 = v28, v25 = 1), objc_storeStrong(&v26, 0), !v25))
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
    cell3 = [(UICollectionViewCellAccessibilityElement *)selfCopy cell];
    [(UICollectionViewCell *)cell3 accessibilityFrame];
    *&v40 = v12;
    *(&v40 + 1) = v13;
    *&v41 = v14;
    *(&v41 + 1) = v15;
    MEMORY[0x29EDC9740](cell3);
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
  selfCopy = self;
  if (self)
  {
    accessibilityContainer = [selfCopy accessibilityContainer];
    window = [accessibilityContainer window];
    [window accessibilityFrame];
    v8 = CGRectInset(v12, 0.0, 40.0);
    [selfCopy accessibilityFrame];
    rect2.origin.x = v1;
    rect2.origin.y = v2;
    rect2.size.width = v3;
    rect2.size.height = v4;
    v11 = !CGRectContainsRect(v8, rect2);
    MEMORY[0x29EDC9740](window);
    objc_storeStrong(&accessibilityContainer, 0);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)_accessibilityShouldAttemptScrollToFrameOnParentView
{
  selfCopy = self;
  location[1] = a2;
  realCell = [(UICollectionViewCellAccessibilityElement *)self realCell];
  MEMORY[0x29EDC9740](realCell);
  if (realCell)
  {
    return 1;
  }

  else if (AXDoesRequestingClientDeserveAutomation())
  {
    location[0] = [(UICollectionViewCellAccessibilityElement *)selfCopy accessibilityContainer];
    objc_opt_class();
    v9 = 0;
    v6 = 1;
    if (objc_opt_isKindOfClass())
    {
      superview = [location[0] superview];
      v9 = 1;
      v6 = superview == 0;
    }

    if (v9)
    {
      MEMORY[0x29EDC9740](superview);
    }

    if (v6)
    {
      v13 = 0;
    }

    else
    {
      dataSource = [location[0] dataSource];
      *&v2 = MEMORY[0x29EDC9740](dataSource).n128_u64[0];
      if (dataSource)
      {
        numberOfSections = [location[0] numberOfSections];
        v13 = -[NSIndexPath section](selfCopy->_indexPath, "section") < numberOfSections && numberOfSections && (v4 = -[NSIndexPath item](selfCopy->_indexPath, "item"), v4 < [location[0] numberOfItemsInSection:{-[NSIndexPath section](selfCopy->_indexPath, "section")}]);
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

- (BOOL)accessibilityScrollToVisibleWithChild:(id)child
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  v3 = AXRetainAutorelease();
  realCell = [(UICollectionViewCellAccessibilityElement *)selfCopy realCell];
  v56 = 0;
  objc_opt_class();
  accessibilityContainer = [(UICollectionViewCellAccessibilityElement *)selfCopy accessibilityContainer];
  v55 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](accessibilityContainer);
  v54 = MEMORY[0x29EDC9748](v55);
  objc_storeStrong(&v55, 0);
  v57 = v54;
  v53 = 0;
  v52 = 0;
  if (!v54 || realCell || (v27 = -[NSIndexPath section](selfCopy->_indexPath, "section"), v27 >= [v57 numberOfSections]) || (v26 = -[NSIndexPath item](selfCopy->_indexPath, "item"), v26 >= objc_msgSend(v57, "numberOfItemsInSection:", -[NSIndexPath section](selfCopy->_indexPath, "section"))))
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (v50 = [realCell accessibilityScrollToVisible], (v50))
    {
      v61 = v50 & 1;
      v51 = 1;
    }

    else
    {
      _accessibilityParentView = [location[0] _accessibilityParentView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _accessibilityParentView2 = [(UICollectionViewCellAccessibilityElement *)selfCopy _accessibilityParentView];
        v5 = _accessibilityParentView;
        _accessibilityParentView = _accessibilityParentView2;
        MEMORY[0x29EDC9740](v5);
      }

      v48 = [_accessibilityParentView _accessibilityViewAncestorIsKindOf:objc_opt_class()];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        indexPathsForVisibleItems = [v48 indexPathsForVisibleItems];
        v46 = MEMORY[0x29EDC9748](selfCopy->_indexPath);
        v45 = [indexPathsForVisibleItems indexOfObject:v46];
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
          [_accessibilityParentView frame];
          rect2.origin.x = v10;
          rect2.origin.y = v11;
          rect2.size.width = v12;
          rect2.size.height = v13;
          if (!CGRectContainsRect(v43, rect2) || !realCell)
          {
            MaxY = CGRectGetMaxY(rect2);
            v65 = MaxY - CGRectGetMinY(v43);
            if (fabs(v65) > -10.0 || (MinY = CGRectGetMinY(rect2), v64 = MinY - CGRectGetMaxY(v43), fabs(v64) > -10.0) || !realCell)
            {
              if (realCell)
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
            if (fabs(v63) > -10.0 || (MinX = CGRectGetMinX(rect2), v62 = MinX - CGRectGetMaxX(v43), fabs(v62) > -10.0) || !realCell)
            {
              v52 = 16;
            }
          }

          v44 = 1;
        }

        v40 = [indexPathsForVisibleItems count];
        if ((v44 & 1) == 0 && v40 && (v45 > 1 && v45 < v40 - 2 || v40 == 1))
        {
          v61 = 0;
          v51 = 1;
        }

        else
        {
          accessibilityElementCount = [v48 accessibilityElementCount];
          if (accessibilityElementCount != [indexPathsForVisibleItems count] || (v44 & 1) != 0)
          {
            numberOfSections = [v48 numberOfSections];
            if ([v46 section] < numberOfSections && numberOfSections && (v19 = objc_msgSend(v46, "item"), v19 < objc_msgSend(v48, "numberOfItemsInSection:", objc_msgSend(v46, "section"))))
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

              if (realCell && [(UICollectionViewCellAccessibilityElement *)selfCopy _accessibilityIsOutsideParentBounds])
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
                v36[0] = MEMORY[0x29EDC9748](selfCopy);
                AXPerformBlockOnMainThreadAfterDelay();
                if (!location[0])
                {
                  objc_storeStrong(location, realCell);
                }

                v29 = MEMORY[0x29EDC9748](selfCopy);
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
        objc_storeStrong(&indexPathsForVisibleItems, 0);
      }

      else
      {
        v61 = 0;
        v51 = 1;
      }

      objc_storeStrong(&v48, 0);
      objc_storeStrong(&_accessibilityParentView, 0);
    }
  }

  else
  {
    [v57 scrollToItemAtIndexPath:selfCopy->_indexPath atScrollPosition:v52 | v53 animated:0];
    v61 = 1;
    v51 = 1;
  }

  objc_storeStrong(&v57, 0);
  objc_storeStrong(&realCell, 0);
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
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  automationCustomProperties = [(UICollectionViewCell *)cell automationCustomProperties];
  MEMORY[0x29EDC9740](cell);

  return automationCustomProperties;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell _accessibilitySetSelectedTextRange:range.location, range.length];
  MEMORY[0x29EDC9740](cell);
}

- (_NSRange)_accessibilitySelectedTextRange
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilitySelectedTextRange = [(UICollectionViewCell *)cell _accessibilitySelectedTextRange];
  v7 = v2;
  MEMORY[0x29EDC9740](cell);
  v3 = _accessibilitySelectedTextRange;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityTextViewTextOperationResponder = [(UICollectionViewCell *)cell _accessibilityTextViewTextOperationResponder];
  MEMORY[0x29EDC9740](cell);

  return _accessibilityTextViewTextOperationResponder;
}

- (id)_accessibilityTextOperations
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityTextOperations = [(UICollectionViewCell *)cell _accessibilityTextOperations];
  MEMORY[0x29EDC9740](cell);

  return _accessibilityTextOperations;
}

- (void)_accessibilityCopy
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell _accessibilityCopy];
  MEMORY[0x29EDC9740](cell);
}

- (void)_accessibilityCut
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell _accessibilityCut];
  MEMORY[0x29EDC9740](cell);
}

- (void)accessibilityElementDidBecomeFocused
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell accessibilityElementDidBecomeFocused];
  MEMORY[0x29EDC9740](cell);
}

- (void)accessibilityElementDidLoseFocus
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell accessibilityElementDidLoseFocus];
  MEMORY[0x29EDC9740](cell);
}

- (void)_accessibilitySelect
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell _accessibilitySelect];
  MEMORY[0x29EDC9740](cell);
}

- (void)_accessibilityPaste
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell _accessibilityPaste];
  MEMORY[0x29EDC9740](cell);
}

- (void)_accessibilitySelectAll
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell _accessibilitySelectAll];
  MEMORY[0x29EDC9740](cell);
}

- (void)_accessibilityUndo
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell _accessibilityUndo];
  MEMORY[0x29EDC9740](cell);
}

- (void)_accessibilityRedo
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell _accessibilityRedo];
  MEMORY[0x29EDC9740](cell);
}

- (BOOL)_accessibilityHasTextOperations
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityHasTextOperations = [(UICollectionViewCell *)cell _accessibilityHasTextOperations];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityHasTextOperations;
}

- (id)accessibilityLabel
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityAXAttributedLabel = [(UICollectionViewCell *)cell _accessibilityAXAttributedLabel];
  MEMORY[0x29EDC9740](cell);

  return _accessibilityAXAttributedLabel;
}

- (id)accessibilityValue
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityAXAttributedValue = [(UICollectionViewCell *)cell _accessibilityAXAttributedValue];
  MEMORY[0x29EDC9740](cell);

  return _accessibilityAXAttributedValue;
}

- (id)accessibilityIdentifier
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  accessibilityIdentifier = [(UICollectionViewCell *)cell accessibilityIdentifier];
  MEMORY[0x29EDC9740](cell);

  return accessibilityIdentifier;
}

- (unint64_t)accessibilityTraits
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  *&v2 = MEMORY[0x29EDC9740](cell).n128_u64[0];
  if (!cell)
  {
    return *MEMORY[0x29EDC7578];
  }

  cell2 = [(UICollectionViewCellAccessibilityElement *)self cell];
  accessibilityTraits = [(UICollectionViewCell *)cell2 accessibilityTraits];
  MEMORY[0x29EDC9740](cell2);
  return accessibilityTraits;
}

- (CGPoint)accessibilityActivationPoint
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell accessibilityActivationPoint];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](cell);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (BOOL)_accessibilityIsAwayAlertElement
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityIsAwayAlertElement = [(UICollectionViewCell *)cell _accessibilityIsAwayAlertElement];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityIsAwayAlertElement;
}

- (id)accessibilityHint
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityAXAttributedHint = [(UICollectionViewCell *)cell _accessibilityAXAttributedHint];
  MEMORY[0x29EDC9740](cell);

  return _accessibilityAXAttributedHint;
}

- (_NSRange)accessibilityRowRange
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  accessibilityRowRange = [(UICollectionViewCell *)cell accessibilityRowRange];
  v7 = v2;
  MEMORY[0x29EDC9740](cell);
  v3 = accessibilityRowRange;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)_accessibilityImplementsDefaultRowRange
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityImplementsDefaultRowRange = [(UICollectionViewCell *)cell _accessibilityImplementsDefaultRowRange];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityImplementsDefaultRowRange;
}

- (id)accessibilityLanguage
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  accessibilityLanguage = [(UICollectionViewCell *)cell accessibilityLanguage];
  MEMORY[0x29EDC9740](cell);

  return accessibilityLanguage;
}

- (void)accessibilityIncrement
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell accessibilityIncrement];
  MEMORY[0x29EDC9740](cell);
}

- (void)accessibilityDecrement
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  [(UICollectionViewCell *)cell accessibilityDecrement];
  MEMORY[0x29EDC9740](cell);
}

- (BOOL)accessibilityActivate
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  accessibilityActivate = [(UICollectionViewCell *)cell accessibilityActivate];
  MEMORY[0x29EDC9740](cell);
  return accessibilityActivate;
}

- (id)_accessibilityCollectionViewCellContentSubviews
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityCollectionViewCellContentSubviews = [(UICollectionViewCell *)cell _accessibilityCollectionViewCellContentSubviews];
  MEMORY[0x29EDC9740](cell);

  return _accessibilityCollectionViewCellContentSubviews;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilitySupportsActivateAction = [(UICollectionViewCell *)cell _accessibilitySupportsActivateAction];
  MEMORY[0x29EDC9740](cell);
  return _accessibilitySupportsActivateAction;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  v5 = [(UICollectionViewCell *)cell _accessibilityDataDetectorScheme:scheme.x, scheme.y];
  MEMORY[0x29EDC9740](cell);

  return v5;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  if ([(UICollectionViewCellAccessibilityElement *)self isAccessibilityElement])
  {
    return 1;
  }

  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  accessibilityElementCount = [(UICollectionViewCell *)cell accessibilityElementCount];
  MEMORY[0x29EDC9740](cell);
  return accessibilityElementCount == 1;
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityScannerActivateBehavior = [(UICollectionViewCell *)cell _accessibilityScannerActivateBehavior];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityScannerActivateBehavior;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityIsSpeakThisElement = [(UICollectionViewCell *)cell _accessibilityIsSpeakThisElement];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityIsSpeakThisElement;
}

- (BOOL)_accessibilityShouldIncludeRowRangeInElementDescription
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityShouldIncludeRowRangeInElementDescription = [(UICollectionViewCell *)cell _accessibilityShouldIncludeRowRangeInElementDescription];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityShouldIncludeRowRangeInElementDescription;
}

- (id)automationElements
{
  v19 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  location[0] = [(UICollectionViewCell *)cell automationElements];
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
        [v14 setAccessibilityContainer:selfCopy];
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
    automationElements = MEMORY[0x29EDC9748](location[0]);
    v12 = 1;
  }

  else
  {
    v11.receiver = selfCopy;
    v11.super_class = UICollectionViewCellAccessibilityElement;
    automationElements = [(UICollectionViewCellAccessibilityElement *)&v11 automationElements];
    v12 = 1;
  }

  objc_storeStrong(location, 0);
  v2 = automationElements;

  return v2;
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityUserTestingIsCancelButton = [(UICollectionViewCell *)cell _accessibilityUserTestingIsCancelButton];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityUserTestingIsCancelButton;
}

- (BOOL)_accessibilityUserTestingIsDefaultButton
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityUserTestingIsDefaultButton = [(UICollectionViewCell *)cell _accessibilityUserTestingIsDefaultButton];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityUserTestingIsDefaultButton;
}

- (BOOL)_accessibilityUserTestingIsDestructiveButton
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityUserTestingIsDestructiveButton = [(UICollectionViewCell *)cell _accessibilityUserTestingIsDestructiveButton];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityUserTestingIsDestructiveButton;
}

- (BOOL)_accessibilityUserTestingIsPreferredButton
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityUserTestingIsPreferredButton = [(UICollectionViewCell *)cell _accessibilityUserTestingIsPreferredButton];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityUserTestingIsPreferredButton;
}

- (id)_accessibilitySemanticContextForElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  cell = [(UICollectionViewCellAccessibilityElement *)selfCopy cell];
  v5 = [(UICollectionViewCell *)cell _accessibilitySemanticContextForElement:location[0]];
  MEMORY[0x29EDC9740](cell);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_accessibilityCanBecomeNativeFocused
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityCanBecomeNativeFocused = [(UICollectionViewCell *)cell _accessibilityCanBecomeNativeFocused];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityCanBecomeNativeFocused;
}

- (BOOL)_accessibilityHasNativeFocus
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityHasNativeFocus = [(UICollectionViewCell *)cell _accessibilityHasNativeFocus];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityHasNativeFocus;
}

- (BOOL)_accessibilitySetNativeFocus
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilitySetNativeFocus = [(UICollectionViewCell *)cell _accessibilitySetNativeFocus];
  MEMORY[0x29EDC9740](cell);
  return _accessibilitySetNativeFocus;
}

- (BOOL)_accessibilityViewHierarchyHasNativeFocus
{
  cell = [(UICollectionViewCellAccessibilityElement *)self cell];
  _accessibilityViewHierarchyHasNativeFocus = [(UICollectionViewCell *)cell _accessibilityViewHierarchyHasNativeFocus];
  MEMORY[0x29EDC9740](cell);
  return _accessibilityViewHierarchyHasNativeFocus;
}

@end