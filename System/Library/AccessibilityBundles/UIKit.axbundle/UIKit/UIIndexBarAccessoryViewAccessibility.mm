@interface UIIndexBarAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsDelegateSelectable;
- (BOOL)_didSelectEntry:(id)entry atIndex:(int64_t)index location:(CGPoint)location;
- (BOOL)isAccessibilityElement;
- (id)_accessibiityDisplayEntryNearestToContentOffset:(double)offset;
- (id)_accessibilityTableIndexTitles;
- (id)_axEntries;
- (id)_axLabelForEntry:(uint64_t)entry;
- (id)accessibilityFlowToElements;
- (id)accessibilityUserInputLabels;
- (uint64_t)_axCurrentPosition;
- (void)_accessibilityJumpToTableIndex:(id)index;
- (void)_accessibilityMoveToIndexAtPosition:(void *)position;
- (void)_axMoveToFirstVisibleIndex:(int64_t)index;
- (void)_axPostNotificationForEntry:(uint64_t)entry;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation UIIndexBarAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v12 = location;
  v11 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIIndexBarAccessoryView";
  v5 = @"UIIndexBarView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"UIIndexBarView" isKindOfClass:@"UIControl"];
  v6 = "@";
  [location[0] validateClass:@"UIIndexBarAccessoryView" hasInstanceMethod:@"scrollView" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"entries" withFullSignature:{v6, 0}];
  v8 = "q";
  [location[0] validateClass:v5 hasInstanceMethod:@"_didSelectEntry:atIndex:location:" withFullSignature:{"B", v6, "q", "{CGPoint=dd}", 0}];
  v4 = @"UIIndexBarEntry";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"type" withFullSignature:{v8, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"indexPath" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"delegate" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"displayEntries" withFullSignature:{v6, 0}];
  v7 = @"UIIndexBarDisplayEntry";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"entryIndex" withFullSignature:{v8, 0}];
  v9 = 1;
  v10 = 0;
  [location[0] validateProtocol:@"UIIndexBarAccessoryViewDelegate" hasMethod:@"indexBarAccessoryView:contentOffsetForEntry:atIndex:" isInstanceMethod:1 isRequired:0];
  [location[0] validateProtocol:@"UIIndexBarViewDelegate" hasMethod:@"indexBarView:didSelectEntry:atIndex:" isInstanceMethod:v9 & 1 isRequired:v10 & 1];
  objc_storeStrong(v12, v11);
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIIndexBarAccessoryViewAccessibility *)self safeValueForKey:@"scrollView"];
  _axEntries = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axEntries];
  v5 = 0;
  if ([_axEntries count])
  {
    objc_opt_class();
    _accessibilityIsDelegateSelectable = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _accessibilityIsDelegateSelectable = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _accessibilityIsDelegateSelectable];
    }

    v5 = _accessibilityIsDelegateSelectable;
  }

  MEMORY[0x29EDC9740](_axEntries);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (id)_axEntries
{
  if (self)
  {
    v2 = [self safeArrayForKey:@"entries"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityUserInputLabels
{
  v6[2] = *MEMORY[0x29EDCA608];
  v5 = accessibilityLocalizedString(@"section.index.label");
  v6[0] = v5;
  v3 = accessibilityLocalizedString(@"scroll.bar");
  v6[1] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:2];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v5);

  return v4;
}

- (void)accessibilityIncrement
{
  v17 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v14 = a2;
  _axCurrentPosition = [(UIIndexBarAccessoryViewAccessibility *)self _axCurrentPosition];
  _axEntries = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axEntries];
  v4 = _axCurrentPosition == [_axEntries count] - 1;
  MEMORY[0x29EDC9740](_axEntries);
  v12 = v4;
  while (_axCurrentPosition > 0)
  {
    _axEntries2 = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axEntries];
    v10 = [_axEntries2 objectAtIndexedSubscript:_axCurrentPosition];
    v9[1] = (_axCurrentPosition - 1);
    v9[0] = [_axEntries2 objectAtIndexedSubscript:_axCurrentPosition - 1];
    v8 = [v10 safeValueForKey:?];
    location = [v9[0] safeValueForKey:@"indexPath"];
    if (v8 && location)
    {
      v6 = ([v8 isEqual:location] & 1) != 0 ? 0 : 2;
    }

    else
    {
      oslog = AXLogAppAccessibility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        __os_log_helper_16_2_1_8_64(v16, selfCopy);
        _os_log_error_impl(&dword_29C4D6000, log, OS_LOG_TYPE_ERROR, "Unexpectedly had no index paths for index bar in collection view: %@", v16, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v6 = 2;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(v9, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&_axEntries2, 0);
    if (v6)
    {
      break;
    }

    --_axCurrentPosition;
  }

  if (_axCurrentPosition > 0)
  {
    if (v12)
    {
      [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axMoveToFirstVisibleIndex:_axCurrentPosition];
    }

    else
    {
      [(UIIndexBarAccessoryViewAccessibility *)selfCopy _accessibilityMoveToIndexAtPosition:?];
    }
  }
}

- (uint64_t)_axCurrentPosition
{
  selfCopy = self;
  if (!self)
  {
    return 0;
  }

  v9 = 0;
  objc_opt_class();
  v4 = [selfCopy safeValueForKey:@"scrollView"];
  v8 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10 = v7;
  [v7 contentOffset];
  v6[1] = v1;
  v6[2] = v2;
  v6[0] = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _accessibiityDisplayEntryNearestToContentOffset:*&v2];
  v5 = 0;
  if (v6[0])
  {
    v5 = [v6[0] safeIntegerForKey:@"entryIndex"];
  }

  v12 = v5;
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v10, 0);
  return v12;
}

- (void)_accessibilityMoveToIndexAtPosition:(void *)position
{
  positionCopy = position;
  v11 = a2;
  if (position)
  {
    _axEntries = [(UIIndexBarAccessoryViewAccessibility *)positionCopy _axEntries];
    v10 = [_axEntries objectAtIndexedSubscript:v11];
    MEMORY[0x29EDC9740](_axEntries);
    v3 = MEMORY[0x29EDCA5F8];
    v4 = -1073741824;
    v5 = 0;
    v6 = __76__UIIndexBarAccessoryViewAccessibility__accessibilityMoveToIndexAtPosition___block_invoke;
    v7 = &unk_29F30CF28;
    v8 = MEMORY[0x29EDC9748](positionCopy);
    v9[0] = MEMORY[0x29EDC9748](v10);
    v9[1] = v11;
    AXPerformSafeBlock();
    [(UIIndexBarAccessoryViewAccessibility *)positionCopy _axPostNotificationForEntry:v10];
    objc_storeStrong(v9, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v10, 0);
  }
}

- (void)_axMoveToFirstVisibleIndex:(int64_t)index
{
  selfCopy = self;
  v13 = a2;
  indexCopy = index;
  _axEntries = [(UIIndexBarAccessoryViewAccessibility *)self _axEntries];
  while (1)
  {
    v7 = 0;
    if ((indexCopy & 0x8000000000000000) == 0)
    {
      v6 = indexCopy;
      v7 = 0;
      if (v6 < [_axEntries count])
      {
        _axCurrentPosition = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axCurrentPosition];
        v7 = _axCurrentPosition == [_axEntries count] - 1;
      }
    }

    if (!v7)
    {
      break;
    }

    v10 = [_axEntries objectAtIndexedSubscript:indexCopy - 1];
    v4 = [_axEntries objectAtIndexedSubscript:indexCopy];
    v9 = [v4 safeValueForKey:?];
    *&v3 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    location = [v10 safeValueForKey:{@"indexPath", v3}];
    if (v9 && location && ([v9 isEqual:location] & 1) == 0)
    {
      [(UIIndexBarAccessoryViewAccessibility *)selfCopy _accessibilityMoveToIndexAtPosition:indexCopy];
    }

    --indexCopy;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&_axEntries, 0);
}

- (void)accessibilityDecrement
{
  _axCurrentPosition = [(UIIndexBarAccessoryViewAccessibility *)self _axCurrentPosition];
  _axEntries = [(UIIndexBarAccessoryViewAccessibility *)self _axEntries];
  v3 = [_axEntries count];
  MEMORY[0x29EDC9740](_axEntries);
  if (_axCurrentPosition < v3 - 1)
  {
    [(UIIndexBarAccessoryViewAccessibility *)self _accessibilityMoveToIndexAtPosition:?];
  }
}

- (id)_accessibilityTableIndexTitles
{
  v16 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axEntries];
  v9 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
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

      v12 = *(__b[1] + 8 * v6);
      location = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axLabelForEntry:v12];
      if ([location length])
      {
        [v13[0] addObject:location];
      }

      objc_storeStrong(&location, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v3 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(v13, 0);

  return v3;
}

- (id)_axLabelForEntry:(uint64_t)entry
{
  entryCopy = entry;
  location = 0;
  objc_storeStrong(&location, a2);
  if (entryCopy)
  {
    v11 = 0;
    v10 = [location safeIntegerForKey:@"type"];
    if (v10 == 2)
    {
      v5 = accessibilityLocalizedString(@"section.index.numbers.label");
      v6 = v11;
      v11 = v5;
      v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    }

    else
    {
      if (v10 == 3)
      {
        v2 = accessibilityLocalizedString(@"section.index.search.label");
      }

      else
      {
        v2 = [location safeStringForKey:@"title"];
      }

      v3 = v11;
      v11 = v2;
      v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    }

    v9 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v11, *&v4}];
    [v9 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD848]];
    v15 = MEMORY[0x29EDC9748](v9);
    v12 = 1;
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v15 = 0;
    v12 = 1;
  }

  objc_storeStrong(&location, 0);
  v7 = v15;

  return v7;
}

- (id)accessibilityFlowToElements
{
  v39 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v35 = a2;
  if ([(UIIndexBarAccessoryViewAccessibility *)self _axDidSelectEntry])
  {
    v32.receiver = selfCopy;
    v32.super_class = UIIndexBarAccessoryViewAccessibility;
    accessibilityFlowToElements = [(UIIndexBarAccessoryViewAccessibility *)&v32 accessibilityFlowToElements];
    _axEntries = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axEntries];
    if ([_axEntries count])
    {
      _axCurrentPosition = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axCurrentPosition];
      if ((_axCurrentPosition & 0x8000000000000000) != 0 || _axCurrentPosition >= [_axEntries count])
      {
        v5 = _axCurrentPosition;
        v6 = [_axEntries count];
        _AXAssert();
      }

      if ((_axCurrentPosition & 0x8000000000000000) == 0 && _axCurrentPosition < [_axEntries count])
      {
        v29 = [_axEntries objectAtIndexedSubscript:_axCurrentPosition];
        v27 = 0;
        objc_opt_class();
        v17 = [v29 safeValueForKey:@"indexPath"];
        v26 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v17);
        v25 = MEMORY[0x29EDC9748](v26);
        objc_storeStrong(&v26, 0);
        v28 = v25;
        v24 = [(UIIndexBarAccessoryViewAccessibility *)selfCopy safeValueForKey:@"scrollView"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = MEMORY[0x29EDC9748](v24);
          indexPathsForVisibleItems = [v23 indexPathsForVisibleItems];
          v22 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];
          MEMORY[0x29EDC9740](indexPathsForVisibleItems);
          memset(__b, 0, sizeof(__b));
          obj = MEMORY[0x29EDC9748](v22);
          v16 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
          if (v16)
          {
            v11 = *__b[2];
            v12 = 0;
            v13 = v16;
            while (1)
            {
              v10 = v12;
              if (*__b[2] != v11)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(__b[1] + 8 * v12);
              section = [v21 section];
              if (section >= [v28 section])
              {
                v8 = [v23 cellForItemAtIndexPath:v21];
                options = [MEMORY[0x29EDC7328] options];
                v19 = [v8 _accessibilityLeafDescendantsWithCount:1 options:?];
                MEMORY[0x29EDC9740](options);
                *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
                if ([v19 count])
                {
                  objc_storeStrong(&accessibilityFlowToElements, v19);
                  v18 = 4;
                }

                else
                {
                  v18 = 0;
                }

                objc_storeStrong(&v19, 0);
                if (v18)
                {
                  break;
                }
              }

              ++v12;
              if (v10 + 1 >= v13)
              {
                v12 = 0;
                v13 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
                if (!v13)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x29EDC9740](obj);
          objc_storeStrong(&v22, 0);
          objc_storeStrong(&v23, 0);
        }

        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
      }
    }

    accessibilityFlowToElements2 = MEMORY[0x29EDC9748](accessibilityFlowToElements);
    objc_storeStrong(&_axEntries, 0);
    objc_storeStrong(&accessibilityFlowToElements, 0);
  }

  else
  {
    v34.receiver = selfCopy;
    v34.super_class = UIIndexBarAccessoryViewAccessibility;
    accessibilityFlowToElements2 = [(UIIndexBarAccessoryViewAccessibility *)&v34 accessibilityFlowToElements];
  }

  v3 = accessibilityFlowToElements2;

  return v3;
}

- (id)_accessibiityDisplayEntryNearestToContentOffset:(double)offset
{
  *&v18 = a2;
  *(&v18 + 1) = offset;
  selfCopy = self;
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 838860800;
    v13 = 48;
    v14 = __Block_byref_object_copy__11;
    v15 = __Block_byref_object_dispose__11;
    v16 = 0;
    v9 = [selfCopy safeValueForKey:@"delegate"];
    if (objc_opt_respondsToSelector())
    {
      v5 = [selfCopy safeArrayForKey:@"displayEntries"];
      v6 = MEMORY[0x29EDC9748](v9);
      v7[0] = MEMORY[0x29EDC9748](selfCopy);
      v8 = v18;
      v7[1] = &v10;
      [v5 enumerateObjectsUsingBlock:?];
      MEMORY[0x29EDC9740](v5);
      objc_storeStrong(v7, 0);
      objc_storeStrong(&v6, 0);
    }

    v19 = MEMORY[0x29EDC9748](v11[5]);
    objc_storeStrong(&v9, 0);
    _Block_object_dispose(&v10, 8);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v19 = 0;
  }

  v3 = v19;

  return v3;
}

void __88__UIIndexBarAccessoryViewAccessibility__accessibiityDisplayEntryNearestToContentOffset___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = a3;
  v23 = a4;
  v22[1] = a1;
  v22[0] = [location[0] safeValueForKey:@"entry"];
  if (v22[0])
  {
    if ([v22[0] safeIntegerForKey:@"type"] == 1)
    {
      v21 = 1;
    }

    else
    {
      v20 = 0uLL;
      v13 = 0;
      v14 = &v13;
      v15 = 0x10000000;
      v16 = 48;
      v17 = &unk_29C6A1FE6;
      v18 = 0;
      v19 = 0;
      v12[1] = &v13;
      v9 = MEMORY[0x29EDC9748](*(a1 + 32));
      v10 = MEMORY[0x29EDC9748](*(a1 + 40));
      v11 = MEMORY[0x29EDC9748](v22[0]);
      v12[0] = MEMORY[0x29EDC9748](location[0]);
      AXPerformSafeBlock();
      v20 = *(v14 + 2);
      objc_storeStrong(v12, 0);
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v9, 0);
      _Block_object_dispose(&v13, 8);
      if (*(&v20 + 1) > *(a1 + 64) && ((v8 = *(&v20 + 1) - *(a1 + 64), v8 >= 0.0) ? (v4 = *(&v20 + 1) - *(a1 + 64)) : (v4 = -v8), v4 >= 5.0))
      {
        *v23 = 1;
      }

      else
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), location[0]);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 1;
  }

  objc_storeStrong(v22, 0);
  if (!v21)
  {
    v21 = 0;
  }

  objc_storeStrong(location, 0);
}

__n128 __88__UIIndexBarAccessoryViewAccessibility__accessibiityDisplayEntryNearestToContentOffset___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) indexBarAccessoryView:*(a1 + 40) contentOffsetForEntry:*(a1 + 48) atIndex:{objc_msgSend(*(a1 + 56), "safeIntegerForKey:", @"entryIndex"}];
  v5.n128_u64[0] = v1;
  v5.n128_u64[1] = v2;
  result = v5;
  *(*(*(a1 + 64) + 8) + 32) = v5;
  return result;
}

- (void)_accessibilityJumpToTableIndex:(id)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, index);
  if ([location[0] length])
  {
    v15 = [location[0] rangeOfComposedCharacterSequenceAtIndex:0];
    v16 = v3;
    v4 = [location[0] substringWithRange:{v15, v3}];
    v5 = location[0];
    location[0] = v4;
    MEMORY[0x29EDC9740](v5);
  }

  _axEntries = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axEntries];
  v6 = _axEntries;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __71__UIIndexBarAccessoryViewAccessibility__accessibilityJumpToTableIndex___block_invoke;
  v11 = &unk_29F30D318;
  v12 = MEMORY[0x29EDC9748](location[0]);
  v13 = [v6 indexOfObjectPassingTest:&v7];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UIIndexBarAccessoryViewAccessibility *)selfCopy _accessibilityMoveToIndexAtPosition:v13];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&_axEntries, 0);
  objc_storeStrong(location, 0);
}

BOOL __71__UIIndexBarAccessoryViewAccessibility__accessibilityJumpToTableIndex___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] safeStringForKey:@"title"];
  v5 = [v4 caseInsensitiveCompare:a1[4]] == 0;
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_axPostNotificationForEntry:(uint64_t)entry
{
  entryCopy = entry;
  location = 0;
  objc_storeStrong(&location, a2);
  if (entryCopy)
  {
    notification = *MEMORY[0x29EDC7478];
    v3 = [(UIIndexBarAccessoryViewAccessibility *)entryCopy _axLabelForEntry:?];
    UIAccessibilityPostNotification(notification, v3);
    MEMORY[0x29EDC9740](v3);
  }

  objc_storeStrong(&location, 0);
}

uint64_t __76__UIIndexBarAccessoryViewAccessibility__accessibilityMoveToIndexAtPosition___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  CGPointMake_5();
  [v4 _didSelectEntry:v5 atIndex:v6 location:{v1, v2}];
  return [*(a1 + 32) sendActionsForControlEvents:4096];
}

- (BOOL)_accessibilityIsDelegateSelectable
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UIIndexBarAccessoryViewAccessibility *)self safeValueForKey:@"delegate"];
  v3 = objc_opt_respondsToSelector();
  objc_storeStrong(v4, 0);
  return v3 & 1;
}

- (BOOL)_didSelectEntry:(id)entry atIndex:(int64_t)index location:(CGPoint)location
{
  locationCopy = location;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entry);
  indexCopy = index;
  _axCurrentPosition = [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axCurrentPosition];
  v8.receiver = selfCopy;
  v8.super_class = UIIndexBarAccessoryViewAccessibility;
  v9 = [(UIIndexBarAccessoryViewAccessibility *)&v8 _didSelectEntry:location[0] atIndex:index location:locationCopy.x, locationCopy.y];
  if (v9)
  {
    [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axDidSelectEntry:1];
    if (_axCurrentPosition != indexCopy)
    {
      [(UIIndexBarAccessoryViewAccessibility *)selfCopy _axPostNotificationForEntry:?];
    }
  }

  v6 = v9;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

@end