@interface UITableViewCellAccessibilityElement
- (BOOL)_accessibilityBackingElementIsValid;
- (BOOL)_accessibilityCanBecomeNativeFocused;
- (BOOL)_accessibilityCanPerformEscapeAction;
- (BOOL)_accessibilityHasNativeFocus;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityImplementsDefaultRowRange;
- (BOOL)_accessibilityIsAwayAlertElement;
- (BOOL)_accessibilityIsOutsideParentBounds;
- (BOOL)_accessibilityIsSpeakThisElement;
- (BOOL)_accessibilityRetainsCustomRotorActionSetting;
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)_accessibilityShouldIncludeRowRangeInElementDescription;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilityUserTestingIsCancelButton;
- (BOOL)_accessibilityUserTestingIsDefaultButton;
- (BOOL)_accessibilityUserTestingIsDestructiveButton;
- (BOOL)_accessibilityUserTestingIsPreferredButton;
- (BOOL)_accessibilityViewHierarchyHasNativeFocus;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityMaxScrubberPosition;
- (CGPoint)_accessibilityMinScrubberPosition;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3;
- (CGRect)_accessibilityChargedLineBoundsForRange:(_NSRange)a3;
- (CGRect)accessibilityFrame;
- (UITableViewCell)realTableViewCell;
- (UITableViewCell)tableViewCell;
- (_NSRange)_accessibilityIndexPathAsRange;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityAbsoluteValue;
- (id)_accessibilityCapturedImages;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_accessibilityDataDetectorScheme:(CGPoint)a3;
- (id)_accessibilityEquivalenceTag;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)_accessibilitySemanticContextForElement:(id)a3;
- (id)_accessibilitySpeakThisString;
- (id)_accessibilityTableViewCellContentSubviews;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityHeaderElements;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityLocalizationBundleID;
- (id)accessibilityLocalizationBundlePath;
- (id)accessibilityLocalizedStringKey;
- (id)accessibilityLocalizedStringTableName;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)automationCustomProperties;
- (id)automationElements;
- (id)description;
- (id)existingTableViewCell;
- (int64_t)_accessibilityCompareElement:(id)a3 toElement:(id)a4;
- (int64_t)_accessibilityScannerActivateBehavior;
- (int64_t)_accessibilityUserTestingChildrenCount;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (uint64_t)indexPath;
- (uint64_t)usingRealTableViewCell;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCopy;
- (void)_accessibilityCut;
- (void)_accessibilityMarkElementForVisiblePointHitTest:(BOOL)a3;
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
- (void)registerMockChild:(id)a3;
- (void)setIndexPath:(uint64_t)a1;
- (void)unregisterAllChildren;
- (void)unregisterMockChild:(id)a3;
@end

@implementation UITableViewCellAccessibilityElement

- (UITableViewCell)realTableViewCell
{
  v45 = self;
  v44[1] = a2;
  v43 = 0;
  objc_opt_class();
  v9 = [(UITableViewCellAccessibilityElement *)v45 accessibilityContainer];
  v42 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v9);
  v41 = MEMORY[0x29EDC9748](v42);
  objc_storeStrong(&v42, 0);
  v44[0] = v41;
  objc_opt_class();
  v39 = 0;
  v37 = 0;
  v8 = 1;
  if (objc_opt_isKindOfClass())
  {
    v40 = [v44[0] dataSource];
    v39 = 1;
    v8 = 1;
    if (v40)
    {
      v38 = [v44[0] superview];
      v37 = 1;
      v8 = v38 == 0;
    }
  }

  if (v37)
  {
    MEMORY[0x29EDC9740](v38);
  }

  if (v39)
  {
    MEMORY[0x29EDC9740](v40);
  }

  if (v8)
  {
    v46 = 0;
    v36 = 1;
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 838860800;
    v32 = 48;
    v33 = __Block_byref_object_copy__24;
    v34 = __Block_byref_object_dispose__24;
    v35 = [v44[0] _existingCellForRowAtIndexPath:v45->_indexPath];
    if (!v30[5])
    {
      v22 = 0;
      v23 = &v22;
      v24 = 838860800;
      v25 = 48;
      v26 = __Block_byref_object_copy__24;
      v27 = __Block_byref_object_dispose__24;
      v28 = 0;
      v15 = MEMORY[0x29EDCA5F8];
      v16 = -1073741824;
      v17 = 0;
      v18 = __56__UITableViewCellAccessibilityElement_realTableViewCell__block_invoke;
      v19 = &unk_29F30C860;
      v21[1] = &v22;
      v20 = MEMORY[0x29EDC9748](v44[0]);
      v21[0] = MEMORY[0x29EDC9748](v45);
      AXPerformSafeBlock();
      v14 = MEMORY[0x29EDC9748](v23[5]);
      objc_storeStrong(v21, 0);
      objc_storeStrong(&v20, 0);
      _Block_object_dispose(&v22, 8);
      objc_storeStrong(&v28, 0);
      v2 = v30[5];
      v30[5] = v14;
      MEMORY[0x29EDC9740](v2);
    }

    v3 = v30[5];
    v12 = 0;
    v7 = 0;
    if (v3)
    {
      v13 = [v30[5] superview];
      v12 = 1;
      v7 = v13 == 0;
    }

    if (v12)
    {
      MEMORY[0x29EDC9740](v13);
    }

    if (v7)
    {
      v11[1] = &v29;
      v10 = MEMORY[0x29EDC9748](v44[0]);
      v11[0] = MEMORY[0x29EDC9748](v45);
      AXPerformSafeBlock();
      v4 = [v44[0] safeValueForKey:@"_updateVisibleCellsImmediatelyIfNecessary"];
      objc_storeStrong(v11, 0);
      objc_storeStrong(&v10, 0);
    }

    v46 = MEMORY[0x29EDC9748](v30[5]);
    v36 = 1;
    _Block_object_dispose(&v29, 8);
    objc_storeStrong(&v35, 0);
  }

  objc_storeStrong(v44, 0);
  v5 = v46;

  return v5;
}

double __56__UITableViewCellAccessibilityElement_realTableViewCell__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cellForRowAtIndexPath:*(*(a1 + 40) + 48)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

void __56__UITableViewCellAccessibilityElement_realTableViewCell__block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v1 = [*(a1 + 32) _createPreparedCellForRowAtIndexPath:*(*(a1 + 40) + 48) willDisplay:1];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  location[0] = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [location[0] tableView:*(a1 + 32) didEndDisplayingCell:*(*(*(a1 + 48) + 8) + 40) forRowAtIndexPath:*(*(a1 + 40) + 48)];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityBackingElementIsValid
{
  v2 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  return v4;
}

- (id)existingTableViewCell
{
  if (a1)
  {
    v2 = MEMORY[0x29EDC9748](*(a1 + 56));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64_t)_accessibilityUserTestingChildrenCount
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityUserTestingChildrenCount];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (UITableViewCell)tableViewCell
{
  v28 = *MEMORY[0x29EDCA608];
  v25 = self;
  v24[1] = a2;
  v24[0] = [(UITableViewCellAccessibilityElement *)self _accessibilityParentView];
  v14 = [v24[0] superview];
  MEMORY[0x29EDC9740](v14);
  if (v14)
  {
    context = objc_autoreleasePoolPush();
    v20 = [(UITableViewCellAccessibilityElement *)v25 realTableViewCell];
    if (v20)
    {
      tableViewCell = v25->_tableViewCell;
      v16 = 0;
      LOBYTE(v8) = 1;
      if (v20 == tableViewCell)
      {
        v17 = [v20 _accessibilityIndexPath];
        v16 = 1;
        v8 = [v17 isEqual:v25->_indexPath] ^ 1;
      }

      if (v16)
      {
        MEMORY[0x29EDC9740](v17);
      }

      if (v8)
      {
        v15 = MEMORY[0x29EDC9748](v25->_tableViewCell);
        [(UITableViewCellAccessibilityElement *)v25 setTableViewCell:v20];
        if (v15)
        {
          [v20 layoutSubviews];
          [(UITableViewCellAccessibility *)v20 _accessibilityReuseChildren:v15 forMockParent:v25];
          if (v15 != v25->_tableViewCell)
          {
            [v15 _accessibilityRemoveValueForKey:@"AXInternalData"];
          }
        }

        else
        {
          [v20 _accessibilityRemoveValueForKey:@"AXInternalData"];
          [(UITableViewCellAccessibility *)v20 _setAccessibilityMockParent:v25];
          [v20 layoutSubviews];
        }

        v25->_usingRealTableViewCell = 1;
        objc_storeStrong(&v15, 0);
      }
    }

    else
    {
      if (v25->_tableViewCell)
      {
        v10 = [(UITableViewCell *)v25->_tableViewCell _accessibilityIndexPath];
        v11 = [v10 isEqual:v25->_indexPath];
        *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
        if ((v11 & 1) == 0)
        {
          v9 = [(UITableViewCellAccessibilityElement *)v25 accessibilityContainer];
          v19 = [v9 accessibilityCellForRowAtIndexPath:v25->_indexPath];
          MEMORY[0x29EDC9740](v9);
          [(UITableViewCellAccessibility *)v19 _setAccessibilityMockParent:v25];
          [v19 layoutSubviews];
          [v19 removeFromSuperview];
          v18 = MEMORY[0x29EDC9748](v25->_tableViewCell);
          [(UITableViewCellAccessibilityElement *)v25 setTableViewCell:v19];
          [(UITableViewCellAccessibility *)v19 _accessibilityReuseChildren:v18 forMockParent:v25];
          if (v18 != v19)
          {
            [v18 _accessibilityRemoveValueForKey:@"AXInternalData"];
          }

          objc_storeStrong(&v18, 0);
          objc_storeStrong(&v19, 0);
        }
      }

      else
      {
        v12 = [(UITableViewCellAccessibilityElement *)v25 accessibilityContainer];
        v2 = [v12 accessibilityCellForRowAtIndexPath:v25->_indexPath];
        v3 = v25->_tableViewCell;
        v25->_tableViewCell = v2;
        MEMORY[0x29EDC9740](v3);
        MEMORY[0x29EDC9740](v12);
        [(UITableViewCellAccessibility *)v25->_tableViewCell _setAccessibilityMockParent:v25];
        [(UITableViewCell *)v25->_tableViewCell removeFromSuperview];
      }

      v25->_usingRealTableViewCell = 0;
    }

    objc_storeStrong(&v20, 0);
    objc_autoreleasePoolPop(context);
    v26 = MEMORY[0x29EDC9748](v25->_tableViewCell);
    v21 = 1;
  }

  else
  {
    location = AXLogUIA();
    v22 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v27, v24[0]);
      _os_log_impl(&dword_29C4D6000, location, v22, "No parent view for table cell: %@", v27, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v26 = 0;
    v21 = 1;
  }

  objc_storeStrong(v24, 0);
  v6 = v26;

  return v6;
}

- (int64_t)_accessibilityCompareElement:(id)a3 toElement:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(UITableViewCell *)v9->_tableViewCell _accessibilityCompareElement:location[0] toElement:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(UITableViewCell *)self->_tableViewCell _accessibilityRemoveValueForKey:@"AXInternalData"];
  v2.receiver = v4;
  v2.super_class = UITableViewCellAccessibilityElement;
  [(UITableViewCellAccessibilityElement *)&v2 dealloc];
}

- (void)unregisterAllChildren
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = self;
  v13 = a2;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v14->_mockChildren);
  v10 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v7);
      v4 = [v12 accessibilityContainer];
      v3 = v14;
      *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      if (v4 == v3)
      {
        [v12 setAccessibilityContainer:{0, v2}];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UITableTextAccessibilityElement *)v12 setTextDelegate:?];
        [(UITableTextAccessibilityElement *)v12 setAttributeDelegate:?];
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(&v14->_mockChildren, 0);
}

- (void)registerMockChild:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v5 = [location[0] accessibilityContainer];
    if (v5 != v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 unregisterMockChild:location[0]];
    }

    if (!v8->_mockChildren)
    {
      v3 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
      mockChildren = v8->_mockChildren;
      v8->_mockChildren = v3;
      MEMORY[0x29EDC9740](mockChildren);
    }

    if (([(NSMutableArray *)v8->_mockChildren containsObject:location[0]]& 1) == 0)
    {
      [(NSMutableArray *)v8->_mockChildren addObject:location[0]];
    }

    objc_storeStrong(&v5, 0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)unregisterMockChild:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v5 = [location[0] accessibilityContainer];
    v4 = v7;
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if (v5 == v4)
    {
      [location[0] setAccessibilityContainer:{0, v3}];
    }

    [(NSMutableArray *)v7->_mockChildren removeObjectIdenticalTo:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityAXAttributedLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityLocalizedStringKey
{
  v8[2] = self;
  v8[1] = a2;
  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8[0] = [(UITableViewCell *)v4 accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v7 = [v8[0] _accessibilityAttributedLocalizedString];
  v6 = [v7 attributeValueForKey:@"UIAccessibilityTokenLocalizedStringKey"];
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)accessibilityLocalizationBundleID
{
  v8[2] = self;
  v8[1] = a2;
  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8[0] = [(UITableViewCell *)v4 accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v7 = [v8[0] _accessibilityAttributedLocalizedString];
  v6 = [v7 attributeValueForKey:@"UIAccessibilityTokenLocalizedStringBundleID"];
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)accessibilityLocalizationBundlePath
{
  v8[2] = self;
  v8[1] = a2;
  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8[0] = [(UITableViewCell *)v4 accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v7 = [v8[0] _accessibilityAttributedLocalizedString];
  v6 = [v7 attributeValueForKey:@"UIAccessibilityTokenLocalizationBundlePath"];
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)accessibilityLocalizedStringTableName
{
  v8[2] = self;
  v8[1] = a2;
  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8[0] = [(UITableViewCell *)v4 accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v7 = [v8[0] _accessibilityAttributedLocalizedString];
  v6 = [v7 attributeValueForKey:@"UIAccessibilityTokenLocalizedStringTableName"];
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityCustomActionGroupIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityAXAttributedValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityIdentifier
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v5 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return *MEMORY[0x29EDC7578];
  }

  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v7 = [(UITableViewCell *)v4 accessibilityTraits];
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (void)_accessibilityMarkElementForVisiblePointHitTest:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v4 _accessibilityMarkElementForVisiblePointHitTest:v6];
  *&v3 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v5.receiver = v8;
  v5.super_class = UITableViewCellAccessibilityElement;
  [(UITableViewCellAccessibilityElement *)&v5 _accessibilityMarkElementForVisiblePointHitTest:v6, v3];
}

- (CGPoint)accessibilityActivationPoint
{
  v6 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v6 accessibilityActivationPoint];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](v6);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)accessibilityHeaderElements
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityHeaderElements];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)_accessibilityIsAwayAlertElement
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityIsAwayAlertElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityHint
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityAXAttributedHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (_NSRange)accessibilityRowRange
{
  v5 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v6 = [(UITableViewCell *)v5 accessibilityRowRange];
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
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityImplementsDefaultRowRange];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (_NSRange)_accessibilityIndexPathAsRange
{
  v5 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v6 = [(UITableViewCell *)v5 _accessibilityIndexPathAsRange];
  v7 = v2;
  MEMORY[0x29EDC9740](v5);
  v3 = v6;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (CGRect)accessibilityFrame
{
  v22 = self;
  v21[1] = a2;
  if (self->_indexPath)
  {
    v21[0] = [(UITableViewCellAccessibilityElement *)v22 accessibilityContainer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
      objc_opt_class();
      v17 = __UIAccessibilityCastAsClass();
      v16 = MEMORY[0x29EDC9748](v17);
      objc_storeStrong(&v17, 0);
      v19 = v16;
      v15 = [v16 numberOfSections];
      if ([(NSIndexPath *)v22->_indexPath section]< v15 && v15)
      {
        v14 = [v19 numberOfRowsInSection:{-[NSIndexPath section](v22->_indexPath, "section")}];
        if ([(NSIndexPath *)v22->_indexPath row]< v14 && v14)
        {
          [v19 rectForRowAtIndexPath:v22->_indexPath];
          UIAccessibilityFrameForBounds();
          *&v23 = v6;
          *(&v23 + 1) = v7;
          *&v24 = v8;
          *(&v24 + 1) = v9;
          v20 = 1;
        }

        else
        {
          v23 = *MEMORY[0x29EDB90E0];
          v24 = *(MEMORY[0x29EDB90E0] + 16);
          v20 = 1;
        }
      }

      else
      {
        v23 = *MEMORY[0x29EDB90E0];
        v24 = *(MEMORY[0x29EDB90E0] + 16);
        v20 = 1;
      }

      objc_storeStrong(&v19, 0);
    }

    else
    {
      [v21[0] accessibilityFrame];
      *&v23 = v2;
      *(&v23 + 1) = v3;
      *&v24 = v4;
      *(&v24 + 1) = v5;
      v20 = 1;
    }

    objc_storeStrong(v21, 0);
  }

  else
  {
    v23 = *MEMORY[0x29EDB90E0];
    v24 = *(MEMORY[0x29EDB90E0] + 16);
  }

  v11 = *(&v23 + 1);
  v10 = *&v23;
  v13 = *(&v24 + 1);
  v12 = *&v24;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)accessibilityLanguage
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityLanguage];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 isAccessibilityElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (void)accessibilityIncrement
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 accessibilityIncrement];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityDecrement
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 accessibilityDecrement];
  MEMORY[0x29EDC9740](v2);
}

- (CGPoint)_accessibilityMinScrubberPosition
{
  v6 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v6 _accessibilityMinScrubberPosition];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](v6);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_accessibilityMaxScrubberPosition
{
  v6 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v6 _accessibilityMaxScrubberPosition];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](v6);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (BOOL)accessibilityActivate
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityActivate];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)automationCustomProperties
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 automationCustomProperties];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilitySupportsActivateAction];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)a3
{
  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v5 = [(UITableViewCell *)v4 _accessibilityDataDetectorScheme:a3.x, a3.y];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v5 = [(UITableViewCell *)v4 _accessibilityLineNumberAndColumnForPoint:a3.x, a3.y];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(UITableViewCellAccessibilityElement *)v8 tableViewCell];
  v9 = [(UITableViewCell *)v6 _accessibilityRangeForLineNumberAndColumn:location[0]];
  v10 = v3;
  MEMORY[0x29EDC9740](v6);
  objc_storeStrong(location, 0);
  v4 = v9;
  v5 = v10;
  result.length = v5;
  result.location = v4;
  return result;
}

- (CGRect)_accessibilityChargedLineBoundsForRange:(_NSRange)a3
{
  v11 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v11 _accessibilityChargedLineBoundsForRange:a3.location, a3.length];
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  MEMORY[0x29EDC9740](v11);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3
{
  v11 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v11 _accessibilityBoundsForRange:a3.location, a3.length];
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  MEMORY[0x29EDC9740](v11);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)_accessibilityEquivalenceTag
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityEquivalenceTag];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (int64_t)accessibilityElementCount
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityElementCount];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v44 = *MEMORY[0x29EDCA608];
  v42 = self;
  v41 = a2;
  v40 = a3;
  v30 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v39 = [(UITableViewCell *)v30 accessibilityElementAtIndex:v40];
  MEMORY[0x29EDC9740](v30);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x29EDC9748](v39);
  }

  else
  {
    v3 = MEMORY[0x29EDC9748](0);
  }

  v38 = v3;
  if (([v39 isAccessibilityElement] & 1) != 0 && v38 && -[UIAccessibilityElement representsSubview](v38))
  {
    v37 = [(UITableViewCellAccessibilityElement *)v42 realTableViewCell];
    if (v37)
    {
      v36 = [v37 safeValueForKey:@"subviews"];
      v25 = v36;
      v27 = [v37 safeValueForKey:@"contentView"];
      v26 = [v27 subviews];
      v4 = [v25 arrayByAddingObjectsFromArray:?];
      v5 = v36;
      v36 = v4;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v26);
      MEMORY[0x29EDC9740](v27);
      location = 0;
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v36);
      v29 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
      if (v29)
      {
        v22 = *__b[2];
        v23 = 0;
        v24 = v29;
        while (1)
        {
          v21 = v23;
          if (*__b[2] != v22)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(__b[1] + 8 * v23);
          if ([(UIAccessibilityElement *)v38 elementMatchesSubview:v34])
          {
            break;
          }

          ++v23;
          if (v21 + 1 >= v24)
          {
            v23 = 0;
            v24 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
            if (!v24)
            {
              goto LABEL_16;
            }
          }
        }

        objc_storeStrong(&location, v34);
      }

LABEL_16:
      *&v6 = MEMORY[0x29EDC9740](obj).n128_u64[0];
      if (location)
      {
        v16 = v39;
        v17 = [location accessibilityLabel];
        [v16 setAccessibilityLabel:?];
        *&v7 = MEMORY[0x29EDC9740](v17).n128_u64[0];
        v18 = v39;
        v19 = [location accessibilityValue];
        [v18 setAccessibilityValue:?];
        *&v8 = MEMORY[0x29EDC9740](v19).n128_u64[0];
        v20 = v39;
        [location accessibilityFrame];
        [v20 setAccessibilityFrame:{v9, v10, v11, v12}];
        [v39 setAccessibilityTraits:{objc_msgSend(location, "accessibilityTraits")}];
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v37, 0);
  }

  v31 = 0;
  v15 = 0;
  if (v38)
  {
    v32 = [v39 accessibilityContainer];
    v31 = 1;
    v15 = v32 != v42;
  }

  if (v31)
  {
    MEMORY[0x29EDC9740](v32);
  }

  if (v15)
  {
    [(UITableViewCellAccessibilityElement *)v42 registerMockChild:v39];
    [v39 setAccessibilityContainer:v42];
  }

  v14 = MEMORY[0x29EDC9748](v39);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);

  return v14;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(UITableViewCellAccessibilityElement *)v6 tableViewCell];
  if (v4)
  {
    v7 = [v4 indexOfAccessibilityElement:location[0]];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v21 = a3;
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v18 = 0;
  v17 = [(UITableViewCellAccessibilityElement *)v20 tableViewCell];
  v16 = [(UITableViewCellAccessibilityElement *)v20 accessibilityContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v17 convertPoint:v16 fromView:{v21.x, v21.y}];
    v6 = [v17 _accessibilityHitTest:location[0] withEvent:{v4, v5}];
    v7 = v18;
    v18 = v6;
    MEMORY[0x29EDC9740](v7);
  }

  objc_opt_class();
  v14 = 0;
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    v15 = [v18 accessibilityContainer];
    v14 = 1;
    v11 = v15 != v20;
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](v15);
  }

  if (v11)
  {
    v12 = 0;
    LOBYTE(v10) = 0;
    if (([v18 _accessibilityIsDescendantOfElement:v20] & 1) == 0)
    {
      v13 = [v18 _accessibilityOrderedChildrenContainer];
      v12 = 1;
      v10 = [v13 _accessibilityIsDescendantOfElement:v16] ^ 1;
    }

    if (v12)
    {
      MEMORY[0x29EDC9740](v13);
    }

    if (v10)
    {
      [(UITableViewCellAccessibilityElement *)v20 registerMockChild:v18];
      [v18 setAccessibilityContainer:v20];
    }
  }

  if (!v18 && ([location[0] _accessibilityAutomationHitTest] & 1) != 0)
  {
    objc_storeStrong(&v18, v20);
  }

  v9 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)description
{
  v4 = MEMORY[0x29EDBA0F8];
  v3 = objc_opt_class();
  v7 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v6 = [(UITableViewCellAccessibilityElement *)self indexPath];
  v5 = [(UITableViewCellAccessibilityElement *)self accessibilityLabel];
  v8 = [v4 stringWithFormat:@"[%@ - %p] %@ %@ - %@"], v3, self, v7, v6, v5);
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v7);

  return v8;
}

- (uint64_t)indexPath
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

- (id)automationElements
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = self;
  location[1] = a2;
  v10 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  location[0] = [(UITableViewCell *)v10 automationElements];
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
    v11.super_class = UITableViewCellAccessibilityElement;
    v17 = [(UITableViewCellAccessibilityElement *)&v11 automationElements];
    v12 = 1;
  }

  objc_storeStrong(location, 0);
  v2 = v17;

  return v2;
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityUserTestingIsCancelButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsDefaultButton
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityUserTestingIsDefaultButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsDestructiveButton
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityUserTestingIsDestructiveButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsPreferredButton
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityUserTestingIsPreferredButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
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
    v11 = !CGRectIntersectsRect(v8, rect2);
    MEMORY[0x29EDC9740](v6);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3
{
  v180 = *MEMORY[0x29EDCA608];
  v165 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v163 = [(UITableViewCellAccessibilityElement *)v165 accessibilityContainer];
  if ([v163 _accessibilityRespectsTableScrollEnabledFlag] & 1) == 0 || (objc_msgSend(v163, "safeBoolForKey:", @"isScrollEnabled"))
  {
    v3 = AXRetainAutorelease();
    v159 = [(UITableViewCellAccessibilityElement *)v165 tableViewCell];
    v87 = [v159 _accessibilityIndexPath];
    v86 = [(UITableViewCellAccessibilityElement *)v165 _accessibilityIndexPath];
    v88 = [v87 isEqual:?];
    MEMORY[0x29EDC9740](v86);
    MEMORY[0x29EDC9740](v87);
    v158 = v88;
    if (objc_opt_respondsToSelector() & 1) != 0 && (v158 & 1) != 0 && ([v159 _accessibilityShouldBypassScrollToVisibleWithChild])
    {
      v166 = 0;
      v160 = 1;
LABEL_83:
      objc_storeStrong(&v159, 0);
      goto LABEL_84;
    }

    v157 = 0;
    if (objc_opt_respondsToSelector() & 1) != 0 && (v158)
    {
      v85 = [v159 safeValueForKey:@"accessibilityScrollToVisible"];
      [v85 BOOLValue];
      MEMORY[0x29EDC9740](v85);
      v157 = 1;
      v156 = AXLogAppAccessibility();
      v155 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v178, v159);
        _os_log_impl(&dword_29C4D6000, v156, v155, "Asked table view cell to handle scrolling: %@", v178, 0xCu);
      }

      objc_storeStrong(&v156, 0);
    }

    v154 = AXLogAppAccessibility();
    v153 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      __os_log_helper_16_2_3_8_64_8_64_4_0(v177, v4, v159, v158 & 1);
      _os_log_impl(&dword_29C4D6000, v154, v153, "%@ tableViewCell: %@ had same index path as self: %d", v177, 0x1Cu);
    }

    objc_storeStrong(&v154, 0);
    if ((v158 & 1) == 0)
    {
      v152 = AXLogAppAccessibility();
      v151 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
      {
        v81 = v152;
        v82 = v151;
        v84 = [v159 _accessibilityIndexPath];
        v80 = MEMORY[0x29EDC9748](v84);
        v150 = v80;
        v83 = [(UITableViewCellAccessibilityElement *)v165 _accessibilityIndexPath];
        v149 = MEMORY[0x29EDC9748](v83);
        __os_log_helper_16_2_2_8_64_8_64(v176, v80, v149);
        _os_log_impl(&dword_29C4D6000, v81, v82, "Real tv cell path: %@, our path: %@", v176, 0x16u);
        MEMORY[0x29EDC9740](v83);
        MEMORY[0x29EDC9740](v84);
        objc_storeStrong(&v149, 0);
        objc_storeStrong(&v150, 0);
      }

      objc_storeStrong(&v152, 0);
    }

    if ((v157 & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v166 = 0;
        v160 = 1;
        goto LABEL_83;
      }

      v148 = [v163 indexPathsForVisibleRows];
      v147 = MEMORY[0x29EDC9748](v165->_indexPath);
      v146 = [v148 indexOfObject:v147];
      v145 = [(UITableViewAccessibility *)v163 _accessibilityDefaultTableViewCellScrollPosition];
      v144 = 0;
      if (_UIAXObjectIsBehindKeyboard())
      {
        v145 = 1;
        v144 = 1;
      }

      [v163 accessibilityFrame];
      rect1.origin.x = v5;
      rect1.origin.y = v6;
      rect1.size.width = v7;
      rect1.size.height = v8;
      [(UITableViewCellAccessibilityElement *)v165 accessibilityFrame];
      rect2.origin.x = v9;
      rect2.origin.y = v10;
      rect2.size.width = v11;
      rect2.size.height = v12;
      if (!CGRectContainsRect(rect1, rect2))
      {
        v144 = 1;
      }

      v79 = [v163 safeValueForKey:@"visibleBounds"];
      [v79 rectValue];
      *&v140 = v13;
      *(&v140 + 1) = v14;
      *&v141 = v15;
      *(&v141 + 1) = v16;
      MEMORY[0x29EDC9740](v79);
      [v163 adjustedContentInset];
      v136 = v17;
      v137 = v18;
      v138 = v19;
      v139 = v20;
      *&v134 = UIEdgeInsetsInsetRect_3(*&v140, *(&v140 + 1), *&v141, *(&v141 + 1), v17, v18);
      *(&v134 + 1) = v21;
      *&v135 = v22;
      *(&v135 + 1) = v23;
      v140 = v134;
      v141 = v135;
      UIAccessibilityFrameForBounds();
      v133.origin.x = v24;
      v133.origin.y = v25;
      v133.size.width = v26;
      v133.size.height = v27;
      [(UITableViewCellAccessibilityElement *)v165 accessibilityFrame];
      v132.origin.x = v28;
      v132.origin.y = v29;
      v132.size.width = v30;
      v132.size.height = v31;
      if (!CGRectContainsRect(v133, v132))
      {
        v145 = 1;
        if (!UIEdgeInsetsEqualToEdgeInsets_0(v136, v137, v138, v139, *MEMORY[0x29EDC80C8], *(MEMORY[0x29EDC80C8] + 8), *(MEMORY[0x29EDC80C8] + 16), *(MEMORY[0x29EDC80C8] + 24)))
        {
          v144 = 1;
        }
      }

      if ((v144 & 1) == 0 && [(UITableViewCellAccessibilityElement *)v165 _accessibilityIsOutsideParentBounds])
      {
        v144 = 1;
      }

      v131 = AXLogAppAccessibility();
      v130 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
      {
        v78 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v146];
        __os_log_helper_16_2_4_4_0_4_0_8_64_8_64(v175, v144 & 1, v145, v147, v78);
        _os_log_impl(&dword_29C4D6000, v131, v130, "UITableViewCEllAXElement must scroll: %d, position: %d - indexPath: %@ indexOfPath: %@", v175, 0x22u);
        MEMORY[0x29EDC9740](v78);
      }

      objc_storeStrong(&v131, 0);
      v129 = [v148 count];
      if ((v144 & 1) == 0 && v129 && (v146 > 1 && v146 < v129 - 2 || v129 == 1))
      {
        v166 = 0;
        v160 = 1;
      }

      else
      {
        v128 = 0;
        v127 = [v163 numberOfSections];
        for (i = 0; i < v127; ++i)
        {
          v128 += [v163 numberOfRowsInSection:i];
        }

        if ([v148 count] != v128 || (v144 & 1) != 0)
        {
          if ([v147 section] < v127 && v127 && (v77 = objc_msgSend(v147, "row"), v77 < objc_msgSend(v163, "numberOfRowsInSection:", objc_msgSend(v147, "section"))))
          {
            v145 = [v163 _accessibilityScrollPositionForCellOverride:v145];
            v125 = AXLogAppAccessibility();
            v124 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_2_4_0_8_64(v174, v145, v163);
              _os_log_impl(&dword_29C4D6000, v125, v124, "UITableViewCEllAXElement override scrollPosition-> %d on parent: %@", v174, 0x12u);
            }

            objc_storeStrong(&v125, 0);
            [v163 scrollToRowAtIndexPath:v147 atScrollPosition:v145 animated:0];
            [v163 _accessibilityOpaqueElementScrollCleanup];
            v75 = [v163 indexPathsForVisibleRows];
            v122 = 0;
            IsOutsideParent = 1;
            if ([v75 containsObject:v147])
            {
              v123 = [v163 cellForRowAtIndexPath:v147];
              v122 = 1;
              IsOutsideParent = [(UITableViewCellAccessibility *)v123 _accessibilityIsOutsideParentBounds];
            }

            if (v122)
            {
              MEMORY[0x29EDC9740](v123);
            }

            *&v32 = MEMORY[0x29EDC9740](v75).n128_u64[0];
            if (IsOutsideParent)
            {
              v121 = AXLogAppAccessibility();
              v120 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
              {
                __os_log_helper_16_2_1_8_64(v173, v147);
                _os_log_impl(&dword_29C4D6000, v121, v120, "UITableViewCEllAXElement index path still not visible -> %@", v173, 0xCu);
              }

              objc_storeStrong(&v121, 0);
              [v163 scrollToRowAtIndexPath:v147 atScrollPosition:2 animated:0];
              [v163 _accessibilityOpaqueElementScrollCleanup];
              v119 = AXLogAppAccessibility();
              v118 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
              {
                __os_log_helper_16_2_1_8_64(v172, v147);
                _os_log_impl(&dword_29C4D6000, v119, v118, "UITableViewCEllAXElement scroll to middle position for %@", v172, 0xCu);
              }

              objc_storeStrong(&v119, 0);
            }

            v73 = [v163 cellForRowAtIndexPath:{v147, v32}];
            v74 = [(UITableViewCellAccessibility *)v73 _accessibilityIsOutsideParentBounds];
            *&v33 = MEMORY[0x29EDC9740](v73).n128_u64[0];
            if (v74)
            {
              v117 = AXLogAppAccessibility();
              v116 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
              {
                v70 = v117;
                v71 = v116;
                v72 = [v163 cellForRowAtIndexPath:v147];
                v115 = MEMORY[0x29EDC9748](v72);
                __os_log_helper_16_2_1_8_64(v171, v115);
                _os_log_impl(&dword_29C4D6000, v70, v71, "UITableViewCEllAXElement after scrolling still outside parent bounds %@", v171, 0xCu);
                MEMORY[0x29EDC9740](v72);
                objc_storeStrong(&v115, 0);
              }

              objc_storeStrong(&v117, 0);
              v114 = AXLogAppAccessibility();
              v113 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
              {
                v65 = v114;
                v66 = v113;
                v63 = MEMORY[0x29EDBA168];
                v69 = [v163 window];
                [v69 accessibilityFrame];
                rect = v181;
                v112 = CGRectInset(v181, 0.0, 40.0);
                v68 = [v63 valueWithBytes:&v112 objCType:?];
                v64 = MEMORY[0x29EDBA168];
                [(UITableViewCellAccessibilityElement *)v165 accessibilityFrame];
                v110[0] = v34;
                v110[1] = v35;
                v110[2] = v36;
                v110[3] = v37;
                v67 = [v64 valueWithBytes:v110 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
                __os_log_helper_16_2_2_8_64_8_64(v170, v68, v67);
                _os_log_impl(&dword_29C4D6000, v65, v66, "Outside bounds: window frame %@, self frame %@", v170, 0x16u);
                MEMORY[0x29EDC9740](v67);
                MEMORY[0x29EDC9740](v68);
                MEMORY[0x29EDC9740](v69);
              }

              objc_storeStrong(&v114, 0);
              v62 = [v163 cellForRowAtIndexPath:v147];
              [v62 frame];
              *&v108 = v38;
              *(&v108 + 1) = v39;
              *&v109 = v40;
              *(&v109 + 1) = v41;
              MEMORY[0x29EDC9740](v62);
              [v163 scrollRectToVisible:0 animated:{v108, v109}];
              v107 = AXLogAppAccessibility();
              v106 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
              {
                v59 = v107;
                v60 = v106;
                v105[0] = v108;
                v105[1] = v109;
                v61 = [MEMORY[0x29EDBA168] valueWithBytes:v105 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
                __os_log_helper_16_2_1_8_64(v169, v61);
                _os_log_impl(&dword_29C4D6000, v59, v60, "Scroll rect to visible with frame %@", v169, 0xCu);
                MEMORY[0x29EDC9740](v61);
              }

              objc_storeStrong(&v107, 0);
              [v163 _accessibilityOpaqueElementScrollCleanup];
            }

            v57 = [v163 cellForRowAtIndexPath:{v147, v33}];
            v58 = [(UITableViewCellAccessibility *)v57 _accessibilityIsOutsideParentBounds];
            MEMORY[0x29EDC9740](v57);
            if (v58)
            {
              v104 = AXLogAppAccessibility();
              v103 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
              {
                v54 = v104;
                v55 = v103;
                v56 = [v163 cellForRowAtIndexPath:v147];
                v102 = MEMORY[0x29EDC9748](v56);
                __os_log_helper_16_2_1_8_64(v168, v102);
                _os_log_impl(&dword_29C4D6000, v54, v55, "After scrollRectToVisible! UITableViewCEllAXElement after scrolling still outside parent bounds %@", v168, 0xCu);
                MEMORY[0x29EDC9740](v56);
                objc_storeStrong(&v102, 0);
              }

              objc_storeStrong(&v104, 0);
              v101 = AXLogAppAccessibility();
              v100 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
              {
                v49 = v101;
                v50 = v100;
                v47 = MEMORY[0x29EDBA168];
                v53 = [v163 window];
                [v53 accessibilityFrame];
                v98 = v182;
                v99 = CGRectInset(v182, 0.0, 40.0);
                v52 = [v47 valueWithBytes:&v99 objCType:?];
                v48 = MEMORY[0x29EDBA168];
                [(UITableViewCellAccessibilityElement *)v165 accessibilityFrame];
                v97[0] = v42;
                v97[1] = v43;
                v97[2] = v44;
                v97[3] = v45;
                v51 = [v48 valueWithBytes:v97 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
                __os_log_helper_16_2_2_8_64_8_64(v167, v52, v51);
                _os_log_impl(&dword_29C4D6000, v49, v50, "Still! Outside bounds: window frame %@, self frame %@", v167, 0x16u);
                MEMORY[0x29EDC9740](v51);
                MEMORY[0x29EDC9740](v52);
                MEMORY[0x29EDC9740](v53);
              }

              objc_storeStrong(&v101, 0);
              v166 = 0;
              v160 = 1;
            }

            else
            {
              v91[1] = MEMORY[0x29EDCA5F8];
              v92 = -1073741824;
              v93 = 0;
              v94 = __77__UITableViewCellAccessibilityElement_accessibilityScrollToVisibleWithChild___block_invoke;
              v95 = &unk_29F30C7C8;
              v96 = MEMORY[0x29EDC9748](v165);
              AXPerformBlockOnMainThreadAfterDelay();
              if (!location[0])
              {
                objc_storeStrong(location, v159);
              }

              v89 = MEMORY[0x29EDC9748](v165);
              v90 = MEMORY[0x29EDC9748](location[0]);
              v91[0] = MEMORY[0x29EDC9748](v163);
              AXPerformBlockOnMainThreadAfterDelay();
              v157 = 1;
              objc_storeStrong(v91, 0);
              objc_storeStrong(&v90, 0);
              objc_storeStrong(&v89, 0);
              objc_storeStrong(&v96, 0);
              v160 = 0;
            }
          }

          else
          {
            v166 = 0;
            v160 = 1;
          }
        }

        else
        {
          v166 = 0;
          v160 = 1;
        }
      }

      objc_storeStrong(&v147, 0);
      objc_storeStrong(&v148, 0);
      if (v160)
      {
        goto LABEL_83;
      }
    }

    v166 = v157 & 1;
    v160 = 1;
    goto LABEL_83;
  }

  oslog = AXLogAppAccessibility();
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v179, v163);
    _os_log_impl(&dword_29C4D6000, oslog, type, "Scrolling disabled for parent: %@", v179, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v166 = 0;
  v160 = 1;
LABEL_84:
  objc_storeStrong(&v163, 0);
  objc_storeStrong(location, 0);
  return v166 & 1;
}

id __77__UITableViewCellAccessibilityElement_accessibilityScrollToVisibleWithChild___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:{@"tableViewCell", a1, a1}];

  return v1;
}

id __77__UITableViewCellAccessibilityElement_accessibilityScrollToVisibleWithChild___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) _accessibilityWindow];
  v5 = [v6 firstResponder];
  v7 = [v5 _accessibilityIsDescendantOfElement:*(a1 + 32)];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  if ((v7 & 1) == 0)
  {
    _UIAXDismissKeyboardIfNecessary();
  }

  v1 = objc_opt_self();
  v2 = objc_opt_self();

  return v2;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v6 = a3;
  v5 = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibilityElement *)self _accessibilityTextViewTextOperationResponder];
  if (location[0])
  {
    [location[0] _accessibilitySetSelectedTextRange:{v6.location, v6.length}];
  }

  else
  {
    v3 = [(UITableViewCellAccessibilityElement *)v5 tableViewCell];
    [(UITableViewCell *)v3 _accessibilitySetSelectedTextRange:v6.location, v6.length];
    MEMORY[0x29EDC9740](v3);
  }

  objc_storeStrong(location, 0);
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v8 = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibilityElement *)self _accessibilityTextViewTextOperationResponder];
  if (location[0])
  {
    v9 = [location[0] _accessibilitySelectedTextRange];
    v10 = v2;
  }

  else
  {
    v6 = [(UITableViewCellAccessibilityElement *)v8 tableViewCell];
    v9 = [(UITableViewCell *)v6 _accessibilitySelectedTextRange];
    v10 = v3;
    MEMORY[0x29EDC9740](v6);
  }

  objc_storeStrong(location, 0);
  v4 = v9;
  v5 = v10;
  result.length = v5;
  result.location = v4;
  return result;
}

- (BOOL)_accessibilityCanBecomeNativeFocused
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityCanBecomeNativeFocused];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityTextViewTextOperationResponder];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityTextOperations
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityTextOperations];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (void)_accessibilityCopy
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 _accessibilityCopy];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilityCut
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 _accessibilityCut];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityElementDidBecomeFocused
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 accessibilityElementDidBecomeFocused];
  MEMORY[0x29EDC9740](v2);
}

- (void)accessibilityElementDidLoseFocus
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 accessibilityElementDidLoseFocus];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilitySelect
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 _accessibilitySelect];
  MEMORY[0x29EDC9740](v2);
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  if (!_accessibilityCanPerformEscapeAction_BaseNSObjectMethod_0)
  {
    v2 = objc_opt_class();
    _accessibilityCanPerformEscapeAction_BaseNSObjectMethod_0 = class_getInstanceMethod(v2, sel_accessibilityPerformEscape);
  }

  v5 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, sel_accessibilityPerformEscape);
  MEMORY[0x29EDC9740](v5);
  v7 = 0;
  if (InstanceMethod)
  {
    return InstanceMethod != _accessibilityCanPerformEscapeAction_BaseNSObjectMethod_0;
  }

  return v7;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityPerformEscape];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)accessibilityPerformMagicTap
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityPerformMagicTap];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (void)_accessibilityPaste
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 _accessibilityPaste];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilitySelectAll
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 _accessibilitySelectAll];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilityUndo
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 _accessibilityUndo];
  MEMORY[0x29EDC9740](v2);
}

- (void)_accessibilityRedo
{
  v2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)v2 _accessibilityRedo];
  MEMORY[0x29EDC9740](v2);
}

- (BOOL)_accessibilityHasTextOperations
{
  v5 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v6 = [(UITableViewCell *)v5 _accessibilityIndexPath];
  MEMORY[0x29EDC9740](v6);
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v6)
  {
    return 0;
  }

  v4 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8 = [(UITableViewCell *)v4 _accessibilityHasTextOperations]& 1;
  MEMORY[0x29EDC9740](v4);
  return v8;
}

- (id)_accessibilityAbsoluteValue
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityAbsoluteValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v5 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v6 = [(UITableViewCell *)v5 accessibilityTraits];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if ((v6 & (*MEMORY[0x29EDC7FA8] | *MEMORY[0x29EDBDBD0])) != 0)
  {
    return 0;
  }

  if ([(UITableViewCellAccessibilityElement *)self isAccessibilityElement])
  {
    return 1;
  }

  v7 = 0;
  isKindOfClass = 0;
  if ([(NSMutableArray *)self->_mockChildren count]== 1)
  {
    v8 = [(NSMutableArray *)self->_mockChildren lastObject];
    v7 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  return (isKindOfClass & 1) != 0;
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityScannerActivateBehavior];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityIsSpeakThisElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_accessibilityTableViewCellContentSubviews
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityTableViewCellContentSubviews];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilitySpeakThisString
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilitySpeakThisString];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilitySemanticContextForElement:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(UITableViewCellAccessibilityElement *)v7 tableViewCell];
  v5 = [(UITableViewCell *)v4 _accessibilitySemanticContextForElement:location[0]];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_accessibilitySetNativeFocus
{
  v3 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilitySetNativeFocus];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityViewHierarchyHasNativeFocus
{
  v3 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityViewHierarchyHasNativeFocus];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityHasNativeFocus
{
  v3 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityHasNativeFocus];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityShouldIncludeRowRangeInElementDescription
{
  v3 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityShouldIncludeRowRangeInElementDescription];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityUserInputLabels];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityCustomActions
{
  v3 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityCustomActions];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_privateAccessibilityCustomActions
{
  v10 = self;
  v9[1] = a2;
  v9[0] = 0;
  v8 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v8)
  {
    v7 = [(UITableViewCellAccessibilityElement *)v10 realTableViewCell];
    v3 = [(UITableViewCell *)v7 _privateAccessibilityCustomActions];
    v4 = v9[0];
    v9[0] = v3;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v7);
  }

  v6 = MEMORY[0x29EDC9748](v9[0]);
  objc_storeStrong(v9, 0);

  return v6;
}

- (BOOL)_accessibilityRetainsCustomRotorActionSetting
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityRetainsCustomRotorActionSetting];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityDragSourceDescriptors
{
  v3 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityDragSourceDescriptors];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityDropPointDescriptors
{
  v3 = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = [(UITableViewCell *)v3 accessibilityDropPointDescriptors];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityCapturedImages
{
  v3 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v4 = [(UITableViewCell *)v3 _accessibilityCapturedImages];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (void)setIndexPath:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (uint64_t)usingRealTableViewCell
{
  if (a1)
  {
    v2 = *(a1 + 72) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

@end