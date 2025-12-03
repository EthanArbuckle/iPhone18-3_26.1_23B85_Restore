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
- (BOOL)accessibilityScrollToVisibleWithChild:(id)child;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityMaxScrubberPosition;
- (CGPoint)_accessibilityMinScrubberPosition;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (CGRect)_accessibilityChargedLineBoundsForRange:(_NSRange)range;
- (CGRect)accessibilityFrame;
- (UITableViewCell)realTableViewCell;
- (UITableViewCell)tableViewCell;
- (_NSRange)_accessibilityIndexPathAsRange;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityAbsoluteValue;
- (id)_accessibilityCapturedImages;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme;
- (id)_accessibilityEquivalenceTag;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)_accessibilitySemanticContextForElement:(id)element;
- (id)_accessibilitySpeakThisString;
- (id)_accessibilityTableViewCellContentSubviews;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityElementAtIndex:(int64_t)index;
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
- (int64_t)_accessibilityCompareElement:(id)element toElement:(id)toElement;
- (int64_t)_accessibilityScannerActivateBehavior;
- (int64_t)_accessibilityUserTestingChildrenCount;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
- (uint64_t)indexPath;
- (uint64_t)usingRealTableViewCell;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCopy;
- (void)_accessibilityCut;
- (void)_accessibilityMarkElementForVisiblePointHitTest:(BOOL)test;
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
- (void)registerMockChild:(id)child;
- (void)setIndexPath:(uint64_t)path;
- (void)unregisterAllChildren;
- (void)unregisterMockChild:(id)child;
@end

@implementation UITableViewCellAccessibilityElement

- (UITableViewCell)realTableViewCell
{
  selfCopy = self;
  v44[1] = a2;
  v43 = 0;
  objc_opt_class();
  accessibilityContainer = [(UITableViewCellAccessibilityElement *)selfCopy accessibilityContainer];
  v42 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](accessibilityContainer);
  v41 = MEMORY[0x29EDC9748](v42);
  objc_storeStrong(&v42, 0);
  v44[0] = v41;
  objc_opt_class();
  v39 = 0;
  v37 = 0;
  v8 = 1;
  if (objc_opt_isKindOfClass())
  {
    dataSource = [v44[0] dataSource];
    v39 = 1;
    v8 = 1;
    if (dataSource)
    {
      superview = [v44[0] superview];
      v37 = 1;
      v8 = superview == 0;
    }
  }

  if (v37)
  {
    MEMORY[0x29EDC9740](superview);
  }

  if (v39)
  {
    MEMORY[0x29EDC9740](dataSource);
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
    v35 = [v44[0] _existingCellForRowAtIndexPath:selfCopy->_indexPath];
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
      v21[0] = MEMORY[0x29EDC9748](selfCopy);
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
      superview2 = [v30[5] superview];
      v12 = 1;
      v7 = superview2 == 0;
    }

    if (v12)
    {
      MEMORY[0x29EDC9740](superview2);
    }

    if (v7)
    {
      v11[1] = &v29;
      v10 = MEMORY[0x29EDC9748](v44[0]);
      v11[0] = MEMORY[0x29EDC9748](selfCopy);
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
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  v4 = realTableViewCell != 0;
  MEMORY[0x29EDC9740](realTableViewCell);
  return v4;
}

- (id)existingTableViewCell
{
  if (self)
  {
    v2 = MEMORY[0x29EDC9748](*(self + 56));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64_t)_accessibilityUserTestingChildrenCount
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityUserTestingChildrenCount = [(UITableViewCell *)tableViewCell _accessibilityUserTestingChildrenCount];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityUserTestingChildrenCount;
}

- (UITableViewCell)tableViewCell
{
  v28 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v24[1] = a2;
  v24[0] = [(UITableViewCellAccessibilityElement *)self _accessibilityParentView];
  superview = [v24[0] superview];
  MEMORY[0x29EDC9740](superview);
  if (superview)
  {
    context = objc_autoreleasePoolPush();
    realTableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy realTableViewCell];
    if (realTableViewCell)
    {
      tableViewCell = selfCopy->_tableViewCell;
      v16 = 0;
      LOBYTE(v8) = 1;
      if (realTableViewCell == tableViewCell)
      {
        _accessibilityIndexPath = [realTableViewCell _accessibilityIndexPath];
        v16 = 1;
        v8 = [_accessibilityIndexPath isEqual:selfCopy->_indexPath] ^ 1;
      }

      if (v16)
      {
        MEMORY[0x29EDC9740](_accessibilityIndexPath);
      }

      if (v8)
      {
        v15 = MEMORY[0x29EDC9748](selfCopy->_tableViewCell);
        [(UITableViewCellAccessibilityElement *)selfCopy setTableViewCell:realTableViewCell];
        if (v15)
        {
          [realTableViewCell layoutSubviews];
          [(UITableViewCellAccessibility *)realTableViewCell _accessibilityReuseChildren:v15 forMockParent:selfCopy];
          if (v15 != selfCopy->_tableViewCell)
          {
            [v15 _accessibilityRemoveValueForKey:@"AXInternalData"];
          }
        }

        else
        {
          [realTableViewCell _accessibilityRemoveValueForKey:@"AXInternalData"];
          [(UITableViewCellAccessibility *)realTableViewCell _setAccessibilityMockParent:selfCopy];
          [realTableViewCell layoutSubviews];
        }

        selfCopy->_usingRealTableViewCell = 1;
        objc_storeStrong(&v15, 0);
      }
    }

    else
    {
      if (selfCopy->_tableViewCell)
      {
        _accessibilityIndexPath2 = [(UITableViewCell *)selfCopy->_tableViewCell _accessibilityIndexPath];
        v11 = [_accessibilityIndexPath2 isEqual:selfCopy->_indexPath];
        *&v4 = MEMORY[0x29EDC9740](_accessibilityIndexPath2).n128_u64[0];
        if ((v11 & 1) == 0)
        {
          accessibilityContainer = [(UITableViewCellAccessibilityElement *)selfCopy accessibilityContainer];
          v19 = [accessibilityContainer accessibilityCellForRowAtIndexPath:selfCopy->_indexPath];
          MEMORY[0x29EDC9740](accessibilityContainer);
          [(UITableViewCellAccessibility *)v19 _setAccessibilityMockParent:selfCopy];
          [v19 layoutSubviews];
          [v19 removeFromSuperview];
          v18 = MEMORY[0x29EDC9748](selfCopy->_tableViewCell);
          [(UITableViewCellAccessibilityElement *)selfCopy setTableViewCell:v19];
          [(UITableViewCellAccessibility *)v19 _accessibilityReuseChildren:v18 forMockParent:selfCopy];
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
        accessibilityContainer2 = [(UITableViewCellAccessibilityElement *)selfCopy accessibilityContainer];
        v2 = [accessibilityContainer2 accessibilityCellForRowAtIndexPath:selfCopy->_indexPath];
        v3 = selfCopy->_tableViewCell;
        selfCopy->_tableViewCell = v2;
        MEMORY[0x29EDC9740](v3);
        MEMORY[0x29EDC9740](accessibilityContainer2);
        [(UITableViewCellAccessibility *)selfCopy->_tableViewCell _setAccessibilityMockParent:selfCopy];
        [(UITableViewCell *)selfCopy->_tableViewCell removeFromSuperview];
      }

      selfCopy->_usingRealTableViewCell = 0;
    }

    objc_storeStrong(&realTableViewCell, 0);
    objc_autoreleasePoolPop(context);
    v26 = MEMORY[0x29EDC9748](selfCopy->_tableViewCell);
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

- (int64_t)_accessibilityCompareElement:(id)element toElement:(id)toElement
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v7 = 0;
  objc_storeStrong(&v7, toElement);
  v6 = [(UITableViewCell *)selfCopy->_tableViewCell _accessibilityCompareElement:location[0] toElement:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(UITableViewCell *)self->_tableViewCell _accessibilityRemoveValueForKey:@"AXInternalData"];
  v2.receiver = selfCopy;
  v2.super_class = UITableViewCellAccessibilityElement;
  [(UITableViewCellAccessibilityElement *)&v2 dealloc];
}

- (void)unregisterAllChildren
{
  v16 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v13 = a2;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](selfCopy->_mockChildren);
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
      accessibilityContainer = [v12 accessibilityContainer];
      v3 = selfCopy;
      *&v2 = MEMORY[0x29EDC9740](accessibilityContainer).n128_u64[0];
      if (accessibilityContainer == v3)
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
  objc_storeStrong(&selfCopy->_mockChildren, 0);
}

- (void)registerMockChild:(id)child
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  if (location[0])
  {
    accessibilityContainer = [location[0] accessibilityContainer];
    if (accessibilityContainer != selfCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [accessibilityContainer unregisterMockChild:location[0]];
    }

    if (!selfCopy->_mockChildren)
    {
      v3 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
      mockChildren = selfCopy->_mockChildren;
      selfCopy->_mockChildren = v3;
      MEMORY[0x29EDC9740](mockChildren);
    }

    if (([(NSMutableArray *)selfCopy->_mockChildren containsObject:location[0]]& 1) == 0)
    {
      [(NSMutableArray *)selfCopy->_mockChildren addObject:location[0]];
    }

    objc_storeStrong(&accessibilityContainer, 0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)unregisterMockChild:(id)child
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  if (location[0])
  {
    accessibilityContainer = [location[0] accessibilityContainer];
    v4 = selfCopy;
    *&v3 = MEMORY[0x29EDC9740](accessibilityContainer).n128_u64[0];
    if (accessibilityContainer == v4)
    {
      [location[0] setAccessibilityContainer:{0, v3}];
    }

    [(NSMutableArray *)selfCopy->_mockChildren removeObjectIdenticalTo:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityAXAttributedLabel = [(UITableViewCell *)tableViewCell _accessibilityAXAttributedLabel];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityAXAttributedLabel;
}

- (id)accessibilityLocalizedStringKey
{
  v8[2] = self;
  v8[1] = a2;
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8[0] = [(UITableViewCell *)tableViewCell accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](tableViewCell).n128_u64[0];
  _accessibilityAttributedLocalizedString = [v8[0] _accessibilityAttributedLocalizedString];
  v6 = [_accessibilityAttributedLocalizedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringKey"];
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)accessibilityLocalizationBundleID
{
  v8[2] = self;
  v8[1] = a2;
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8[0] = [(UITableViewCell *)tableViewCell accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](tableViewCell).n128_u64[0];
  _accessibilityAttributedLocalizedString = [v8[0] _accessibilityAttributedLocalizedString];
  v6 = [_accessibilityAttributedLocalizedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringBundleID"];
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)accessibilityLocalizationBundlePath
{
  v8[2] = self;
  v8[1] = a2;
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8[0] = [(UITableViewCell *)tableViewCell accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](tableViewCell).n128_u64[0];
  _accessibilityAttributedLocalizedString = [v8[0] _accessibilityAttributedLocalizedString];
  v6 = [_accessibilityAttributedLocalizedString attributeValueForKey:@"UIAccessibilityTokenLocalizationBundlePath"];
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)accessibilityLocalizedStringTableName
{
  v8[2] = self;
  v8[1] = a2;
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8[0] = [(UITableViewCell *)tableViewCell accessibilityLabel];
  *&v2 = MEMORY[0x29EDC9740](tableViewCell).n128_u64[0];
  _accessibilityAttributedLocalizedString = [v8[0] _accessibilityAttributedLocalizedString];
  v6 = [_accessibilityAttributedLocalizedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringTableName"];
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&_accessibilityAttributedLocalizedString, 0);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityCustomActionGroupIdentifier = [(UITableViewCell *)tableViewCell _accessibilityCustomActionGroupIdentifier];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityCustomActionGroupIdentifier;
}

- (id)accessibilityValue
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityAXAttributedValue = [(UITableViewCell *)tableViewCell _accessibilityAXAttributedValue];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityAXAttributedValue;
}

- (id)accessibilityIdentifier
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityIdentifier = [(UITableViewCell *)tableViewCell accessibilityIdentifier];
  MEMORY[0x29EDC9740](tableViewCell);

  return accessibilityIdentifier;
}

- (unint64_t)accessibilityTraits
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  *&v2 = MEMORY[0x29EDC9740](tableViewCell).n128_u64[0];
  if (!tableViewCell)
  {
    return *MEMORY[0x29EDC7578];
  }

  tableViewCell2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityTraits = [(UITableViewCell *)tableViewCell2 accessibilityTraits];
  MEMORY[0x29EDC9740](tableViewCell2);
  return accessibilityTraits;
}

- (void)_accessibilityMarkElementForVisiblePointHitTest:(BOOL)test
{
  selfCopy = self;
  v7 = a2;
  testCopy = test;
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityMarkElementForVisiblePointHitTest:testCopy];
  *&v3 = MEMORY[0x29EDC9740](tableViewCell).n128_u64[0];
  v5.receiver = selfCopy;
  v5.super_class = UITableViewCellAccessibilityElement;
  [(UITableViewCellAccessibilityElement *)&v5 _accessibilityMarkElementForVisiblePointHitTest:testCopy, v3];
}

- (CGPoint)accessibilityActivationPoint
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell accessibilityActivationPoint];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](tableViewCell);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)accessibilityHeaderElements
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityHeaderElements = [(UITableViewCell *)tableViewCell accessibilityHeaderElements];
  MEMORY[0x29EDC9740](tableViewCell);

  return accessibilityHeaderElements;
}

- (BOOL)_accessibilityIsAwayAlertElement
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityIsAwayAlertElement = [(UITableViewCell *)tableViewCell _accessibilityIsAwayAlertElement];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityIsAwayAlertElement;
}

- (id)accessibilityHint
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityAXAttributedHint = [(UITableViewCell *)tableViewCell _accessibilityAXAttributedHint];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityAXAttributedHint;
}

- (_NSRange)accessibilityRowRange
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityRowRange = [(UITableViewCell *)tableViewCell accessibilityRowRange];
  v7 = v2;
  MEMORY[0x29EDC9740](tableViewCell);
  v3 = accessibilityRowRange;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)_accessibilityImplementsDefaultRowRange
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityImplementsDefaultRowRange = [(UITableViewCell *)tableViewCell _accessibilityImplementsDefaultRowRange];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityImplementsDefaultRowRange;
}

- (_NSRange)_accessibilityIndexPathAsRange
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityIndexPathAsRange = [(UITableViewCell *)tableViewCell _accessibilityIndexPathAsRange];
  v7 = v2;
  MEMORY[0x29EDC9740](tableViewCell);
  v3 = _accessibilityIndexPathAsRange;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v21[1] = a2;
  if (self->_indexPath)
  {
    v21[0] = [(UITableViewCellAccessibilityElement *)selfCopy accessibilityContainer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
      objc_opt_class();
      v17 = __UIAccessibilityCastAsClass();
      v16 = MEMORY[0x29EDC9748](v17);
      objc_storeStrong(&v17, 0);
      v19 = v16;
      numberOfSections = [v16 numberOfSections];
      if ([(NSIndexPath *)selfCopy->_indexPath section]< numberOfSections && numberOfSections)
      {
        v14 = [v19 numberOfRowsInSection:{-[NSIndexPath section](selfCopy->_indexPath, "section")}];
        if ([(NSIndexPath *)selfCopy->_indexPath row]< v14 && v14)
        {
          [v19 rectForRowAtIndexPath:selfCopy->_indexPath];
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
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityLanguage = [(UITableViewCell *)tableViewCell accessibilityLanguage];
  MEMORY[0x29EDC9740](tableViewCell);

  return accessibilityLanguage;
}

- (BOOL)isAccessibilityElement
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  isAccessibilityElement = [(UITableViewCell *)tableViewCell isAccessibilityElement];
  MEMORY[0x29EDC9740](tableViewCell);
  return isAccessibilityElement;
}

- (void)accessibilityIncrement
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell accessibilityIncrement];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (void)accessibilityDecrement
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell accessibilityDecrement];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (CGPoint)_accessibilityMinScrubberPosition
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityMinScrubberPosition];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](tableViewCell);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_accessibilityMaxScrubberPosition
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityMaxScrubberPosition];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](tableViewCell);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (BOOL)accessibilityActivate
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityActivate = [(UITableViewCell *)tableViewCell accessibilityActivate];
  MEMORY[0x29EDC9740](tableViewCell);
  return accessibilityActivate;
}

- (id)automationCustomProperties
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  automationCustomProperties = [(UITableViewCell *)tableViewCell automationCustomProperties];
  MEMORY[0x29EDC9740](tableViewCell);

  return automationCustomProperties;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilitySupportsActivateAction = [(UITableViewCell *)tableViewCell _accessibilitySupportsActivateAction];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilitySupportsActivateAction;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v5 = [(UITableViewCell *)tableViewCell _accessibilityDataDetectorScheme:scheme.x, scheme.y];
  MEMORY[0x29EDC9740](tableViewCell);

  return v5;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v5 = [(UITableViewCell *)tableViewCell _accessibilityLineNumberAndColumnForPoint:point.x, point.y];
  MEMORY[0x29EDC9740](tableViewCell);

  return v5;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, column);
  tableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy tableViewCell];
  v9 = [(UITableViewCell *)tableViewCell _accessibilityRangeForLineNumberAndColumn:location[0]];
  v10 = v3;
  MEMORY[0x29EDC9740](tableViewCell);
  objc_storeStrong(location, 0);
  v4 = v9;
  v5 = v10;
  result.length = v5;
  result.location = v4;
  return result;
}

- (CGRect)_accessibilityChargedLineBoundsForRange:(_NSRange)range
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityChargedLineBoundsForRange:range.location, range.length];
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  MEMORY[0x29EDC9740](tableViewCell);
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

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityBoundsForRange:range.location, range.length];
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  MEMORY[0x29EDC9740](tableViewCell);
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
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityEquivalenceTag = [(UITableViewCell *)tableViewCell _accessibilityEquivalenceTag];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityEquivalenceTag;
}

- (int64_t)accessibilityElementCount
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityElementCount = [(UITableViewCell *)tableViewCell accessibilityElementCount];
  MEMORY[0x29EDC9740](tableViewCell);
  return accessibilityElementCount;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  v44 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v41 = a2;
  indexCopy = index;
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v39 = [(UITableViewCell *)tableViewCell accessibilityElementAtIndex:indexCopy];
  MEMORY[0x29EDC9740](tableViewCell);
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
    realTableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy realTableViewCell];
    if (realTableViewCell)
    {
      v36 = [realTableViewCell safeValueForKey:@"subviews"];
      v25 = v36;
      v27 = [realTableViewCell safeValueForKey:@"contentView"];
      subviews = [v27 subviews];
      v4 = [v25 arrayByAddingObjectsFromArray:?];
      v5 = v36;
      v36 = v4;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](subviews);
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
        accessibilityLabel = [location accessibilityLabel];
        [v16 setAccessibilityLabel:?];
        *&v7 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
        v18 = v39;
        accessibilityValue = [location accessibilityValue];
        [v18 setAccessibilityValue:?];
        *&v8 = MEMORY[0x29EDC9740](accessibilityValue).n128_u64[0];
        v20 = v39;
        [location accessibilityFrame];
        [v20 setAccessibilityFrame:{v9, v10, v11, v12}];
        [v39 setAccessibilityTraits:{objc_msgSend(location, "accessibilityTraits")}];
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&realTableViewCell, 0);
  }

  v31 = 0;
  v15 = 0;
  if (v38)
  {
    accessibilityContainer = [v39 accessibilityContainer];
    v31 = 1;
    v15 = accessibilityContainer != selfCopy;
  }

  if (v31)
  {
    MEMORY[0x29EDC9740](accessibilityContainer);
  }

  if (v15)
  {
    [(UITableViewCellAccessibilityElement *)selfCopy registerMockChild:v39];
    [v39 setAccessibilityContainer:selfCopy];
  }

  v14 = MEMORY[0x29EDC9748](v39);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);

  return v14;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  tableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy tableViewCell];
  if (tableViewCell)
  {
    v7 = [tableViewCell indexOfAccessibilityElement:location[0]];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_storeStrong(&tableViewCell, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v18 = 0;
  tableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy tableViewCell];
  accessibilityContainer = [(UITableViewCellAccessibilityElement *)selfCopy accessibilityContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [tableViewCell convertPoint:accessibilityContainer fromView:{testCopy.x, testCopy.y}];
    v6 = [tableViewCell _accessibilityHitTest:location[0] withEvent:{v4, v5}];
    v7 = v18;
    v18 = v6;
    MEMORY[0x29EDC9740](v7);
  }

  objc_opt_class();
  v14 = 0;
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    accessibilityContainer2 = [v18 accessibilityContainer];
    v14 = 1;
    v11 = accessibilityContainer2 != selfCopy;
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](accessibilityContainer2);
  }

  if (v11)
  {
    v12 = 0;
    LOBYTE(v10) = 0;
    if (([v18 _accessibilityIsDescendantOfElement:selfCopy] & 1) == 0)
    {
      _accessibilityOrderedChildrenContainer = [v18 _accessibilityOrderedChildrenContainer];
      v12 = 1;
      v10 = [_accessibilityOrderedChildrenContainer _accessibilityIsDescendantOfElement:accessibilityContainer] ^ 1;
    }

    if (v12)
    {
      MEMORY[0x29EDC9740](_accessibilityOrderedChildrenContainer);
    }

    if (v10)
    {
      [(UITableViewCellAccessibilityElement *)selfCopy registerMockChild:v18];
      [v18 setAccessibilityContainer:selfCopy];
    }
  }

  if (!v18 && ([location[0] _accessibilityAutomationHitTest] & 1) != 0)
  {
    objc_storeStrong(&v18, selfCopy);
  }

  v9 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&accessibilityContainer, 0);
  objc_storeStrong(&tableViewCell, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)description
{
  v4 = MEMORY[0x29EDBA0F8];
  v3 = objc_opt_class();
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  indexPath = [(UITableViewCellAccessibilityElement *)self indexPath];
  accessibilityLabel = [(UITableViewCellAccessibilityElement *)self accessibilityLabel];
  v8 = [v4 stringWithFormat:@"[%@ - %p] %@ %@ - %@"], v3, self, tableViewCell, indexPath, accessibilityLabel);
  MEMORY[0x29EDC9740](accessibilityLabel);
  MEMORY[0x29EDC9740](indexPath);
  MEMORY[0x29EDC9740](tableViewCell);

  return v8;
}

- (uint64_t)indexPath
{
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return 0;
  }
}

- (id)automationElements
{
  v19 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  location[0] = [(UITableViewCell *)tableViewCell automationElements];
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
    v11.super_class = UITableViewCellAccessibilityElement;
    automationElements = [(UITableViewCellAccessibilityElement *)&v11 automationElements];
    v12 = 1;
  }

  objc_storeStrong(location, 0);
  v2 = automationElements;

  return v2;
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityUserTestingIsCancelButton = [(UITableViewCell *)tableViewCell _accessibilityUserTestingIsCancelButton];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityUserTestingIsCancelButton;
}

- (BOOL)_accessibilityUserTestingIsDefaultButton
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityUserTestingIsDefaultButton = [(UITableViewCell *)tableViewCell _accessibilityUserTestingIsDefaultButton];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityUserTestingIsDefaultButton;
}

- (BOOL)_accessibilityUserTestingIsDestructiveButton
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityUserTestingIsDestructiveButton = [(UITableViewCell *)tableViewCell _accessibilityUserTestingIsDestructiveButton];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityUserTestingIsDestructiveButton;
}

- (BOOL)_accessibilityUserTestingIsPreferredButton
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityUserTestingIsPreferredButton = [(UITableViewCell *)tableViewCell _accessibilityUserTestingIsPreferredButton];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityUserTestingIsPreferredButton;
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
    v11 = !CGRectIntersectsRect(v8, rect2);
    MEMORY[0x29EDC9740](window);
    objc_storeStrong(&accessibilityContainer, 0);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)child
{
  v180 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  accessibilityContainer = [(UITableViewCellAccessibilityElement *)selfCopy accessibilityContainer];
  if ([accessibilityContainer _accessibilityRespectsTableScrollEnabledFlag] & 1) == 0 || (objc_msgSend(accessibilityContainer, "safeBoolForKey:", @"isScrollEnabled"))
  {
    v3 = AXRetainAutorelease();
    tableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy tableViewCell];
    _accessibilityIndexPath = [tableViewCell _accessibilityIndexPath];
    _accessibilityIndexPath2 = [(UITableViewCellAccessibilityElement *)selfCopy _accessibilityIndexPath];
    v88 = [_accessibilityIndexPath isEqual:?];
    MEMORY[0x29EDC9740](_accessibilityIndexPath2);
    MEMORY[0x29EDC9740](_accessibilityIndexPath);
    v158 = v88;
    if (objc_opt_respondsToSelector() & 1) != 0 && (v158 & 1) != 0 && ([tableViewCell _accessibilityShouldBypassScrollToVisibleWithChild])
    {
      v166 = 0;
      v160 = 1;
LABEL_83:
      objc_storeStrong(&tableViewCell, 0);
      goto LABEL_84;
    }

    v157 = 0;
    if (objc_opt_respondsToSelector() & 1) != 0 && (v158)
    {
      v85 = [tableViewCell safeValueForKey:@"accessibilityScrollToVisible"];
      [v85 BOOLValue];
      MEMORY[0x29EDC9740](v85);
      v157 = 1;
      v156 = AXLogAppAccessibility();
      v155 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v178, tableViewCell);
        _os_log_impl(&dword_29C4D6000, v156, v155, "Asked table view cell to handle scrolling: %@", v178, 0xCu);
      }

      objc_storeStrong(&v156, 0);
    }

    v154 = AXLogAppAccessibility();
    v153 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      __os_log_helper_16_2_3_8_64_8_64_4_0(v177, v4, tableViewCell, v158 & 1);
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
        _accessibilityIndexPath3 = [tableViewCell _accessibilityIndexPath];
        v80 = MEMORY[0x29EDC9748](_accessibilityIndexPath3);
        v150 = v80;
        _accessibilityIndexPath4 = [(UITableViewCellAccessibilityElement *)selfCopy _accessibilityIndexPath];
        v149 = MEMORY[0x29EDC9748](_accessibilityIndexPath4);
        __os_log_helper_16_2_2_8_64_8_64(v176, v80, v149);
        _os_log_impl(&dword_29C4D6000, v81, v82, "Real tv cell path: %@, our path: %@", v176, 0x16u);
        MEMORY[0x29EDC9740](_accessibilityIndexPath4);
        MEMORY[0x29EDC9740](_accessibilityIndexPath3);
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

      indexPathsForVisibleRows = [accessibilityContainer indexPathsForVisibleRows];
      v147 = MEMORY[0x29EDC9748](selfCopy->_indexPath);
      v146 = [indexPathsForVisibleRows indexOfObject:v147];
      _accessibilityDefaultTableViewCellScrollPosition = [(UITableViewAccessibility *)accessibilityContainer _accessibilityDefaultTableViewCellScrollPosition];
      v144 = 0;
      if (_UIAXObjectIsBehindKeyboard())
      {
        _accessibilityDefaultTableViewCellScrollPosition = 1;
        v144 = 1;
      }

      [accessibilityContainer accessibilityFrame];
      rect1.origin.x = v5;
      rect1.origin.y = v6;
      rect1.size.width = v7;
      rect1.size.height = v8;
      [(UITableViewCellAccessibilityElement *)selfCopy accessibilityFrame];
      rect2.origin.x = v9;
      rect2.origin.y = v10;
      rect2.size.width = v11;
      rect2.size.height = v12;
      if (!CGRectContainsRect(rect1, rect2))
      {
        v144 = 1;
      }

      v79 = [accessibilityContainer safeValueForKey:@"visibleBounds"];
      [v79 rectValue];
      *&v140 = v13;
      *(&v140 + 1) = v14;
      *&v141 = v15;
      *(&v141 + 1) = v16;
      MEMORY[0x29EDC9740](v79);
      [accessibilityContainer adjustedContentInset];
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
      [(UITableViewCellAccessibilityElement *)selfCopy accessibilityFrame];
      v132.origin.x = v28;
      v132.origin.y = v29;
      v132.size.width = v30;
      v132.size.height = v31;
      if (!CGRectContainsRect(v133, v132))
      {
        _accessibilityDefaultTableViewCellScrollPosition = 1;
        if (!UIEdgeInsetsEqualToEdgeInsets_0(v136, v137, v138, v139, *MEMORY[0x29EDC80C8], *(MEMORY[0x29EDC80C8] + 8), *(MEMORY[0x29EDC80C8] + 16), *(MEMORY[0x29EDC80C8] + 24)))
        {
          v144 = 1;
        }
      }

      if ((v144 & 1) == 0 && [(UITableViewCellAccessibilityElement *)selfCopy _accessibilityIsOutsideParentBounds])
      {
        v144 = 1;
      }

      v131 = AXLogAppAccessibility();
      v130 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
      {
        v78 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v146];
        __os_log_helper_16_2_4_4_0_4_0_8_64_8_64(v175, v144 & 1, _accessibilityDefaultTableViewCellScrollPosition, v147, v78);
        _os_log_impl(&dword_29C4D6000, v131, v130, "UITableViewCEllAXElement must scroll: %d, position: %d - indexPath: %@ indexOfPath: %@", v175, 0x22u);
        MEMORY[0x29EDC9740](v78);
      }

      objc_storeStrong(&v131, 0);
      v129 = [indexPathsForVisibleRows count];
      if ((v144 & 1) == 0 && v129 && (v146 > 1 && v146 < v129 - 2 || v129 == 1))
      {
        v166 = 0;
        v160 = 1;
      }

      else
      {
        v128 = 0;
        numberOfSections = [accessibilityContainer numberOfSections];
        for (i = 0; i < numberOfSections; ++i)
        {
          v128 += [accessibilityContainer numberOfRowsInSection:i];
        }

        if ([indexPathsForVisibleRows count] != v128 || (v144 & 1) != 0)
        {
          if ([v147 section] < numberOfSections && numberOfSections && (v77 = objc_msgSend(v147, "row"), v77 < objc_msgSend(accessibilityContainer, "numberOfRowsInSection:", objc_msgSend(v147, "section"))))
          {
            _accessibilityDefaultTableViewCellScrollPosition = [accessibilityContainer _accessibilityScrollPositionForCellOverride:_accessibilityDefaultTableViewCellScrollPosition];
            v125 = AXLogAppAccessibility();
            v124 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_2_4_0_8_64(v174, _accessibilityDefaultTableViewCellScrollPosition, accessibilityContainer);
              _os_log_impl(&dword_29C4D6000, v125, v124, "UITableViewCEllAXElement override scrollPosition-> %d on parent: %@", v174, 0x12u);
            }

            objc_storeStrong(&v125, 0);
            [accessibilityContainer scrollToRowAtIndexPath:v147 atScrollPosition:_accessibilityDefaultTableViewCellScrollPosition animated:0];
            [accessibilityContainer _accessibilityOpaqueElementScrollCleanup];
            indexPathsForVisibleRows2 = [accessibilityContainer indexPathsForVisibleRows];
            v122 = 0;
            IsOutsideParent = 1;
            if ([indexPathsForVisibleRows2 containsObject:v147])
            {
              v123 = [accessibilityContainer cellForRowAtIndexPath:v147];
              v122 = 1;
              IsOutsideParent = [(UITableViewCellAccessibility *)v123 _accessibilityIsOutsideParentBounds];
            }

            if (v122)
            {
              MEMORY[0x29EDC9740](v123);
            }

            *&v32 = MEMORY[0x29EDC9740](indexPathsForVisibleRows2).n128_u64[0];
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
              [accessibilityContainer scrollToRowAtIndexPath:v147 atScrollPosition:2 animated:0];
              [accessibilityContainer _accessibilityOpaqueElementScrollCleanup];
              v119 = AXLogAppAccessibility();
              v118 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
              {
                __os_log_helper_16_2_1_8_64(v172, v147);
                _os_log_impl(&dword_29C4D6000, v119, v118, "UITableViewCEllAXElement scroll to middle position for %@", v172, 0xCu);
              }

              objc_storeStrong(&v119, 0);
            }

            v73 = [accessibilityContainer cellForRowAtIndexPath:{v147, v32}];
            _accessibilityIsOutsideParentBounds = [(UITableViewCellAccessibility *)v73 _accessibilityIsOutsideParentBounds];
            *&v33 = MEMORY[0x29EDC9740](v73).n128_u64[0];
            if (_accessibilityIsOutsideParentBounds)
            {
              v117 = AXLogAppAccessibility();
              v116 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
              {
                v70 = v117;
                v71 = v116;
                v72 = [accessibilityContainer cellForRowAtIndexPath:v147];
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
                window = [accessibilityContainer window];
                [window accessibilityFrame];
                rect = v181;
                v112 = CGRectInset(v181, 0.0, 40.0);
                v68 = [v63 valueWithBytes:&v112 objCType:?];
                v64 = MEMORY[0x29EDBA168];
                [(UITableViewCellAccessibilityElement *)selfCopy accessibilityFrame];
                v110[0] = v34;
                v110[1] = v35;
                v110[2] = v36;
                v110[3] = v37;
                v67 = [v64 valueWithBytes:v110 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
                __os_log_helper_16_2_2_8_64_8_64(v170, v68, v67);
                _os_log_impl(&dword_29C4D6000, v65, v66, "Outside bounds: window frame %@, self frame %@", v170, 0x16u);
                MEMORY[0x29EDC9740](v67);
                MEMORY[0x29EDC9740](v68);
                MEMORY[0x29EDC9740](window);
              }

              objc_storeStrong(&v114, 0);
              v62 = [accessibilityContainer cellForRowAtIndexPath:v147];
              [v62 frame];
              *&v108 = v38;
              *(&v108 + 1) = v39;
              *&v109 = v40;
              *(&v109 + 1) = v41;
              MEMORY[0x29EDC9740](v62);
              [accessibilityContainer scrollRectToVisible:0 animated:{v108, v109}];
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
              [accessibilityContainer _accessibilityOpaqueElementScrollCleanup];
            }

            v57 = [accessibilityContainer cellForRowAtIndexPath:{v147, v33}];
            _accessibilityIsOutsideParentBounds2 = [(UITableViewCellAccessibility *)v57 _accessibilityIsOutsideParentBounds];
            MEMORY[0x29EDC9740](v57);
            if (_accessibilityIsOutsideParentBounds2)
            {
              v104 = AXLogAppAccessibility();
              v103 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
              {
                v54 = v104;
                v55 = v103;
                v56 = [accessibilityContainer cellForRowAtIndexPath:v147];
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
                window2 = [accessibilityContainer window];
                [window2 accessibilityFrame];
                v98 = v182;
                v99 = CGRectInset(v182, 0.0, 40.0);
                v52 = [v47 valueWithBytes:&v99 objCType:?];
                v48 = MEMORY[0x29EDBA168];
                [(UITableViewCellAccessibilityElement *)selfCopy accessibilityFrame];
                v97[0] = v42;
                v97[1] = v43;
                v97[2] = v44;
                v97[3] = v45;
                v51 = [v48 valueWithBytes:v97 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
                __os_log_helper_16_2_2_8_64_8_64(v167, v52, v51);
                _os_log_impl(&dword_29C4D6000, v49, v50, "Still! Outside bounds: window frame %@, self frame %@", v167, 0x16u);
                MEMORY[0x29EDC9740](v51);
                MEMORY[0x29EDC9740](v52);
                MEMORY[0x29EDC9740](window2);
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
              v96 = MEMORY[0x29EDC9748](selfCopy);
              AXPerformBlockOnMainThreadAfterDelay();
              if (!location[0])
              {
                objc_storeStrong(location, tableViewCell);
              }

              v89 = MEMORY[0x29EDC9748](selfCopy);
              v90 = MEMORY[0x29EDC9748](location[0]);
              v91[0] = MEMORY[0x29EDC9748](accessibilityContainer);
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
      objc_storeStrong(&indexPathsForVisibleRows, 0);
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
    __os_log_helper_16_2_1_8_64(v179, accessibilityContainer);
    _os_log_impl(&dword_29C4D6000, oslog, type, "Scrolling disabled for parent: %@", v179, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v166 = 0;
  v160 = 1;
LABEL_84:
  objc_storeStrong(&accessibilityContainer, 0);
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

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibilityElement *)self _accessibilityTextViewTextOperationResponder];
  if (location[0])
  {
    [location[0] _accessibilitySetSelectedTextRange:{rangeCopy.location, rangeCopy.length}];
  }

  else
  {
    tableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy tableViewCell];
    [(UITableViewCell *)tableViewCell _accessibilitySetSelectedTextRange:rangeCopy.location, rangeCopy.length];
    MEMORY[0x29EDC9740](tableViewCell);
  }

  objc_storeStrong(location, 0);
}

- (_NSRange)_accessibilitySelectedTextRange
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibilityElement *)self _accessibilityTextViewTextOperationResponder];
  if (location[0])
  {
    _accessibilitySelectedTextRange = [location[0] _accessibilitySelectedTextRange];
    v10 = v2;
  }

  else
  {
    tableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy tableViewCell];
    _accessibilitySelectedTextRange = [(UITableViewCell *)tableViewCell _accessibilitySelectedTextRange];
    v10 = v3;
    MEMORY[0x29EDC9740](tableViewCell);
  }

  objc_storeStrong(location, 0);
  v4 = _accessibilitySelectedTextRange;
  v5 = v10;
  result.length = v5;
  result.location = v4;
  return result;
}

- (BOOL)_accessibilityCanBecomeNativeFocused
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityCanBecomeNativeFocused = [(UITableViewCell *)tableViewCell _accessibilityCanBecomeNativeFocused];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityCanBecomeNativeFocused;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityTextViewTextOperationResponder = [(UITableViewCell *)tableViewCell _accessibilityTextViewTextOperationResponder];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityTextViewTextOperationResponder;
}

- (id)_accessibilityTextOperations
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityTextOperations = [(UITableViewCell *)tableViewCell _accessibilityTextOperations];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityTextOperations;
}

- (void)_accessibilityCopy
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityCopy];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (void)_accessibilityCut
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityCut];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (void)accessibilityElementDidBecomeFocused
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell accessibilityElementDidBecomeFocused];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (void)accessibilityElementDidLoseFocus
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell accessibilityElementDidLoseFocus];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (void)_accessibilitySelect
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilitySelect];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  if (!_accessibilityCanPerformEscapeAction_BaseNSObjectMethod_0)
  {
    v2 = objc_opt_class();
    _accessibilityCanPerformEscapeAction_BaseNSObjectMethod_0 = class_getInstanceMethod(v2, sel_accessibilityPerformEscape);
  }

  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, sel_accessibilityPerformEscape);
  MEMORY[0x29EDC9740](tableViewCell);
  v7 = 0;
  if (InstanceMethod)
  {
    return InstanceMethod != _accessibilityCanPerformEscapeAction_BaseNSObjectMethod_0;
  }

  return v7;
}

- (BOOL)accessibilityPerformEscape
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityPerformEscape = [(UITableViewCell *)tableViewCell accessibilityPerformEscape];
  MEMORY[0x29EDC9740](tableViewCell);
  return accessibilityPerformEscape;
}

- (BOOL)accessibilityPerformMagicTap
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  accessibilityPerformMagicTap = [(UITableViewCell *)tableViewCell accessibilityPerformMagicTap];
  MEMORY[0x29EDC9740](tableViewCell);
  return accessibilityPerformMagicTap;
}

- (void)_accessibilityPaste
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityPaste];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (void)_accessibilitySelectAll
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilitySelectAll];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (void)_accessibilityUndo
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityUndo];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (void)_accessibilityRedo
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  [(UITableViewCell *)tableViewCell _accessibilityRedo];
  MEMORY[0x29EDC9740](tableViewCell);
}

- (BOOL)_accessibilityHasTextOperations
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityIndexPath = [(UITableViewCell *)tableViewCell _accessibilityIndexPath];
  MEMORY[0x29EDC9740](_accessibilityIndexPath);
  *&v2 = MEMORY[0x29EDC9740](tableViewCell).n128_u64[0];
  if (!_accessibilityIndexPath)
  {
    return 0;
  }

  tableViewCell2 = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  v8 = [(UITableViewCell *)tableViewCell2 _accessibilityHasTextOperations]& 1;
  MEMORY[0x29EDC9740](tableViewCell2);
  return v8;
}

- (id)_accessibilityAbsoluteValue
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityAbsoluteValue = [(UITableViewCell *)tableViewCell _accessibilityAbsoluteValue];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityAbsoluteValue;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  accessibilityTraits = [(UITableViewCell *)realTableViewCell accessibilityTraits];
  *&v2 = MEMORY[0x29EDC9740](realTableViewCell).n128_u64[0];
  if ((accessibilityTraits & (*MEMORY[0x29EDC7FA8] | *MEMORY[0x29EDBDBD0])) != 0)
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
    lastObject = [(NSMutableArray *)self->_mockChildren lastObject];
    v7 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](lastObject);
  }

  return (isKindOfClass & 1) != 0;
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityScannerActivateBehavior = [(UITableViewCell *)tableViewCell _accessibilityScannerActivateBehavior];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityScannerActivateBehavior;
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityIsSpeakThisElement = [(UITableViewCell *)tableViewCell _accessibilityIsSpeakThisElement];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityIsSpeakThisElement;
}

- (id)_accessibilityTableViewCellContentSubviews
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityTableViewCellContentSubviews = [(UITableViewCell *)tableViewCell _accessibilityTableViewCellContentSubviews];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityTableViewCellContentSubviews;
}

- (id)_accessibilitySpeakThisString
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilitySpeakThisString = [(UITableViewCell *)tableViewCell _accessibilitySpeakThisString];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilitySpeakThisString;
}

- (id)_accessibilitySemanticContextForElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  tableViewCell = [(UITableViewCellAccessibilityElement *)selfCopy tableViewCell];
  v5 = [(UITableViewCell *)tableViewCell _accessibilitySemanticContextForElement:location[0]];
  MEMORY[0x29EDC9740](tableViewCell);
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)_accessibilitySetNativeFocus
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  _accessibilitySetNativeFocus = [(UITableViewCell *)realTableViewCell _accessibilitySetNativeFocus];
  MEMORY[0x29EDC9740](realTableViewCell);
  return _accessibilitySetNativeFocus;
}

- (BOOL)_accessibilityViewHierarchyHasNativeFocus
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  _accessibilityViewHierarchyHasNativeFocus = [(UITableViewCell *)realTableViewCell _accessibilityViewHierarchyHasNativeFocus];
  MEMORY[0x29EDC9740](realTableViewCell);
  return _accessibilityViewHierarchyHasNativeFocus;
}

- (BOOL)_accessibilityHasNativeFocus
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  _accessibilityHasNativeFocus = [(UITableViewCell *)realTableViewCell _accessibilityHasNativeFocus];
  MEMORY[0x29EDC9740](realTableViewCell);
  return _accessibilityHasNativeFocus;
}

- (BOOL)_accessibilityShouldIncludeRowRangeInElementDescription
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  _accessibilityShouldIncludeRowRangeInElementDescription = [(UITableViewCell *)realTableViewCell _accessibilityShouldIncludeRowRangeInElementDescription];
  MEMORY[0x29EDC9740](realTableViewCell);
  return _accessibilityShouldIncludeRowRangeInElementDescription;
}

- (id)accessibilityUserInputLabels
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  accessibilityUserInputLabels = [(UITableViewCell *)realTableViewCell accessibilityUserInputLabels];
  MEMORY[0x29EDC9740](realTableViewCell);

  return accessibilityUserInputLabels;
}

- (id)accessibilityCustomActions
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  accessibilityCustomActions = [(UITableViewCell *)realTableViewCell accessibilityCustomActions];
  MEMORY[0x29EDC9740](realTableViewCell);

  return accessibilityCustomActions;
}

- (id)_privateAccessibilityCustomActions
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = 0;
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  *&v2 = MEMORY[0x29EDC9740](realTableViewCell).n128_u64[0];
  if (realTableViewCell)
  {
    realTableViewCell2 = [(UITableViewCellAccessibilityElement *)selfCopy realTableViewCell];
    _privateAccessibilityCustomActions = [(UITableViewCell *)realTableViewCell2 _privateAccessibilityCustomActions];
    v4 = v9[0];
    v9[0] = _privateAccessibilityCustomActions;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](realTableViewCell2);
  }

  v6 = MEMORY[0x29EDC9748](v9[0]);
  objc_storeStrong(v9, 0);

  return v6;
}

- (BOOL)_accessibilityRetainsCustomRotorActionSetting
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityRetainsCustomRotorActionSetting = [(UITableViewCell *)tableViewCell _accessibilityRetainsCustomRotorActionSetting];
  MEMORY[0x29EDC9740](tableViewCell);
  return _accessibilityRetainsCustomRotorActionSetting;
}

- (id)accessibilityDragSourceDescriptors
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  accessibilityDragSourceDescriptors = [(UITableViewCell *)realTableViewCell accessibilityDragSourceDescriptors];
  MEMORY[0x29EDC9740](realTableViewCell);

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityDropPointDescriptors
{
  realTableViewCell = [(UITableViewCellAccessibilityElement *)self realTableViewCell];
  accessibilityDropPointDescriptors = [(UITableViewCell *)realTableViewCell accessibilityDropPointDescriptors];
  MEMORY[0x29EDC9740](realTableViewCell);

  return accessibilityDropPointDescriptors;
}

- (id)_accessibilityCapturedImages
{
  tableViewCell = [(UITableViewCellAccessibilityElement *)self tableViewCell];
  _accessibilityCapturedImages = [(UITableViewCell *)tableViewCell _accessibilityCapturedImages];
  MEMORY[0x29EDC9740](tableViewCell);

  return _accessibilityCapturedImages;
}

- (void)setIndexPath:(uint64_t)path
{
  if (path)
  {
    objc_storeStrong((path + 48), a2);
  }
}

- (uint64_t)usingRealTableViewCell
{
  if (self)
  {
    v2 = *(self + 72) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

@end