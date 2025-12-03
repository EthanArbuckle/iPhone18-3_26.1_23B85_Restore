@interface UITableViewIndexAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_updateSectionForTouch:(id)touch withEvent:(id)event;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityDisplayTitle;
- (id)_accessibilityIndexData;
- (id)_accessibilityKeyCommands;
- (id)_accessibilityValueToPost:(uint64_t)post;
- (id)_axDetermineTableCellLabel:(id)label;
- (id)accessibilityFlowToElements;
- (id)accessibilityUserInputLabels;
- (int64_t)_accessibilityTableIndexAdjustment;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityBumpValue:(void *)value;
- (void)_accessibilityJumpToTableIndex:(id)index;
- (void)_accessibilityMoveToIndexAtPosition:(void *)position;
@end

@implementation UITableViewIndexAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v7 = "@";
  [location[0] validateClass:@"UIControl" hasInstanceMethod:@"_sendActionsForEvents:withEvent:" withFullSignature:{"v", "Q", "@", 0}];
  v6 = @"UITableViewIndex";
  [location[0] validateClass:v7 hasInstanceMethod:v7 withFullSignature:0];
  v4 = "q";
  v3 = @"_sectionIndexChangedToIndex:title:";
  [location[0] validateClass:@"UICollectionView" hasInstanceMethod:"q" withFullSignature:{v7, 0}];
  v5 = @"UITableView";
  [location[0] validateClass:v4 hasInstanceMethod:v7 withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceVariable:@"_sectionIndexTitlesForTableView" withType:"NSArray"];
  [location[0] validateClass:v6 isKindOfClass:@"UIView"];
  [location[0] validateClass:v6 hasInstanceMethod:@"titles" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"_displayTitles" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

- (id)_accessibilityIndexData
{
  selfCopy = self;
  if (self)
  {
    v3 = [selfCopy _accessibilityValueForKey:@"AXInternalData"];
    if (!v3)
    {
      v3 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
      [selfCopy _accessibilitySetRetainedValue:v3 forKey:{@"AXInternalData", MEMORY[0x29EDC9740](0).n128_f64[0]}];
    }

    v5 = MEMORY[0x29EDC9748](v3);
    objc_storeStrong(&v3, 0);
  }

  else
  {
    v5 = 0;
  }

  v1 = v5;

  return v1;
}

- (int64_t)_accessibilityTableIndexAdjustment
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITableViewIndexAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  delegate = [location[0] delegate];
  v8 = objc_opt_respondsToSelector();
  *&v2 = MEMORY[0x29EDC9740](delegate).n128_u64[0];
  if (v8)
  {
    v5 = [location[0] safeValueForKey:{@"delegate", v2}];
    v4 = [v5 safeValueForKey:@"_accessibilityTableViewIndexAdjustment"];
    integerValue = [v4 integerValue];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    v10 = integerValue;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10;
}

- (void)_accessibilityJumpToTableIndex:(id)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, index);
  if ([location[0] length])
  {
    v13 = [location[0] rangeOfComposedCharacterSequenceAtIndex:0];
    v14 = v4;
    v5 = [location[0] substringWithRange:{v13, v4}];
    v6 = location[0];
    location[0] = v5;
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  }

  v12 = [(UITableViewIndexAccessibility *)selfCopy safeArrayForKey:@"titles", v3];
  uppercaseString = [location[0] uppercaseString];
  v10 = [v12 indexOfObject:?];
  *&v7 = MEMORY[0x29EDC9740](uppercaseString).n128_u64[0];
  v11 = v10;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL || (v8 = [location[0] lowercaseString], v11 = objc_msgSend(v12, "indexOfObject:"), MEMORY[0x29EDC9740](v8), v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    [(UITableViewIndexAccessibility *)selfCopy _accessibilityMoveToIndexAtPosition:v11];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityMoveToIndexAtPosition:(void *)position
{
  positionCopy = position;
  v25 = a2;
  if (position)
  {
    _accessibilityIndexData = [(UITableViewIndexAccessibility *)positionCopy _accessibilityIndexData];
    v23 = [positionCopy safeArrayForKey:@"titles"];
    v22 = v25 + [positionCopy _accessibilityTableIndexAdjustment];
    if (v25 < 0 || v25 >= [v23 count])
    {
      _UIAccessibilitySetAssociatedElementContextForNextNotification();
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7478], 0);
    }

    else
    {
      v21 = 0;
      if (v22 < [v23 count])
      {
        v2 = [v23 objectAtIndex:v22];
        v3 = v21;
        v21 = v2;
        MEMORY[0x29EDC9740](v3);
      }

      v20 = [(UITableViewIndexAccessibility *)positionCopy _accessibilityValueToPost:v21];
      v8 = [MEMORY[0x29EDBA070] numberWithInteger:v25];
      [_accessibilityIndexData setObject:? forKey:?];
      v9 = [MEMORY[0x29EDBA070] numberWithInteger:{v25, MEMORY[0x29EDC9740](v8).n128_f64[0]}];
      [positionCopy setValue:? forKey:?];
      MEMORY[0x29EDC9740](v9);
      v14[1] = MEMORY[0x29EDCA5F8];
      v15 = -1073741824;
      v16 = 0;
      v17 = __69__UITableViewIndexAccessibility__accessibilityMoveToIndexAtPosition___block_invoke;
      v18 = &unk_29F30C7C8;
      v19 = MEMORY[0x29EDC9748](positionCopy);
      AXPerformSafeBlock();
      traitCollection = [positionCopy traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];
      *&v4 = MEMORY[0x29EDC9740](traitCollection).n128_u64[0];
      if (userInterfaceIdiom == 3)
      {
        v14[0] = [positionCopy _accessibilityFindViewAncestor:&__block_literal_global_42 startWithSelf:{0, v4}];
        if (v14[0])
        {
          if (objc_opt_respondsToSelector())
          {
            v12 = MEMORY[0x29EDC9748](v14[0]);
            v13[1] = v25;
            v13[0] = MEMORY[0x29EDC9748](v20);
            AXPerformSafeBlock();
            objc_storeStrong(v13, 0);
            objc_storeStrong(&v12, 0);
          }
        }

        objc_storeStrong(v14, 0);
      }

      v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v20];
      v6 = v20;
      v20 = v5;
      *&v7 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      [v20 setAttribute:MEMORY[0x29EDB8EB0] forKey:{*MEMORY[0x29EDBD848], v7}];
      _UIAccessibilitySetAssociatedElementContextForNextNotification();
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7478], v20);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&_accessibilityIndexData, 0);
  }
}

- (void)_accessibilityBumpValue:(void *)value
{
  valueCopy = value;
  v5 = a2;
  if (value)
  {
    location = [(UITableViewIndexAccessibility *)valueCopy _accessibilityIndexData];
    v2 = [location objectForKey:@"position"];
    integerValue = [v2 integerValue];
    MEMORY[0x29EDC9740](v2);
    if (v5)
    {
      [(UITableViewIndexAccessibility *)valueCopy _accessibilityMoveToIndexAtPosition:?];
    }

    else
    {
      [(UITableViewIndexAccessibility *)valueCopy _accessibilityMoveToIndexAtPosition:?];
    }

    objc_storeStrong(&location, 0);
  }
}

- (id)_accessibilityValueToPost:(uint64_t)post
{
  postCopy = post;
  location = 0;
  objc_storeStrong(&location, a2);
  if (postCopy)
  {
    _accessibilityAXAttributedLabel = [location _accessibilityAXAttributedLabel];
    if (![_accessibilityAXAttributedLabel length])
    {
      if ([location isEqualToString:*MEMORY[0x29EDC8238]])
      {
        lowercaseString = accessibilityLocalizedString(@"search.button");
      }

      else
      {
        lowercaseString = [location lowercaseString];
      }

      v3 = _accessibilityAXAttributedLabel;
      _accessibilityAXAttributedLabel = lowercaseString;
      MEMORY[0x29EDC9740](v3);
    }

    v10 = MEMORY[0x29EDC9748](_accessibilityAXAttributedLabel);
    v7 = 1;
    objc_storeStrong(&_accessibilityAXAttributedLabel, 0);
  }

  else
  {
    v10 = 0;
    v7 = 1;
  }

  objc_storeStrong(&location, 0);
  v4 = v10;

  return v4;
}

uint64_t __69__UITableViewIndexAccessibility__accessibilityMoveToIndexAtPosition___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (CGPoint)accessibilityActivationPoint
{
  [(UITableViewIndexAccessibility *)self bounds:0];
  UIAccessibilityPointForPoint();
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)_axDetermineTableCellLabel:(id)label
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  accessibilityLabel = [location[0] accessibilityLabel];
  if (![accessibilityLabel length])
  {
    accessibilityValue = [location[0] accessibilityValue];
    v4 = accessibilityLabel;
    accessibilityLabel = accessibilityValue;
    MEMORY[0x29EDC9740](v4);
  }

  if (![accessibilityLabel length])
  {
    textLabel = [location[0] textLabel];
    text = [textLabel text];
    v6 = accessibilityLabel;
    accessibilityLabel = text;
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](textLabel);
  }

  if ([accessibilityLabel length])
  {
    lowercaseString = [accessibilityLabel lowercaseString];
  }

  else
  {
    lowercaseString = 0;
  }

  objc_storeStrong(&accessibilityLabel, 0);
  objc_storeStrong(location, 0);
  v7 = lowercaseString;

  return v7;
}

- (id)accessibilityFlowToElements
{
  v128[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v120[1] = a2;
  v120[0] = [(UITableViewIndexAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  if ([v120[0] isAccessibilityOpaqueElementProvider])
  {
    [v120[0] _accessibilityVisibleContentInset];
    v116 = v2;
    v117 = v3;
    v118 = v4;
    v119 = v5;
    [v120[0] _accessibilityContentOffset];
    v114[1] = v6;
    v115 = v7;
    v114[0] = [v120[0] tableHeaderView];
    if (!v114[0] || ([v120[0] adjustedContentInset], v110 = v9, v111 = v10, v112 = v11, v113 = v12, v68 = v9 + v115, objc_msgSend(v114[0], "frame"), rect = v130, MaxY = CGRectGetMaxY(v130), v8 = v68, v68 >= MaxY) || ((location = objc_msgSend(v114[0], "_accessibilityUnignoredDescendant", v68)) == 0 ? (v107 = 0) : (v128[0] = location, v122 = objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", v128, 1), v107 = 1), objc_storeStrong(&location, 0), !v107))
    {
      v106 = [v120[0] safeArrayForKey:{@"_sectionIndexTitlesForTableView", v8}];
      _accessibilityIndexData = [(UITableViewIndexAccessibility *)selfCopy _accessibilityIndexData];
      v67 = [_accessibilityIndexData objectForKey:@"position"];
      integerValue = [v67 integerValue];
      if (![v106 count] || (integerValue & 0x8000000000000000) != 0 || integerValue >= objc_msgSend(v106, "count"))
      {
        v92 = 0;
        memset(__b, 0, sizeof(__b));
        visibleCells = [v120[0] visibleCells];
        v58 = [visibleCells countByEnumeratingWithState:__b objects:v126 count:16];
        if (v58)
        {
          v54 = *__b[2];
          v55 = 0;
          v56 = v58;
          while (1)
          {
            v53 = v55;
            if (*__b[2] != v54)
            {
              objc_enumerationMutation(visibleCells);
            }

            v91 = *(__b[1] + 8 * v55);
            [v91 frame];
            v88 = v132;
            v89 = CGRectGetMinY(v132) - v115;
            if (v89 >= v116)
            {
              break;
            }

            ++v55;
            if (v53 + 1 >= v56)
            {
              v55 = 0;
              v56 = [visibleCells countByEnumeratingWithState:__b objects:v126 count:16];
              if (!v56)
              {
                goto LABEL_53;
              }
            }
          }

          objc_storeStrong(&v92, v91);
          v107 = 5;
        }

        else
        {
LABEL_53:
          v107 = 0;
        }

        *&v18 = MEMORY[0x29EDC9740](visibleCells).n128_u64[0];
        v87 = [v92 _accessibilityFindDescendant:{&__block_literal_global_379, v18}];
        if (v87 == selfCopy)
        {
          _accessibilitySortedElementsWithin = [v120[0] _accessibilitySortedElementsWithin];
          firstObject = [_accessibilitySortedElementsWithin firstObject];
          v52 = 0;
          if (firstObject == selfCopy)
          {
            v52 = [_accessibilitySortedElementsWithin count] > 1;
          }

          *&v19 = MEMORY[0x29EDC9740](firstObject).n128_u64[0];
          if (v52)
          {
            v50 = [_accessibilitySortedElementsWithin objectAtIndexedSubscript:{1, v19}];
            _accessibilityUnignoredDescendant = [v50 _accessibilityUnignoredDescendant];
            v21 = v87;
            v87 = _accessibilityUnignoredDescendant;
            MEMORY[0x29EDC9740](v21);
            MEMORY[0x29EDC9740](v50);
          }

          objc_storeStrong(&_accessibilitySortedElementsWithin, 0);
        }

        v122 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v87}];
        v107 = 1;
        objc_storeStrong(&v87, 0);
        objc_storeStrong(&v92, 0);
      }

      else
      {
        v66 = [v106 objectAtIndexedSubscript:integerValue];
        lowercaseString = [v66 lowercaseString];
        if ([lowercaseString length])
        {
          v65 = [lowercaseString characterAtIndex:0];
        }

        else
        {
          v65 = 0;
        }

        v102 = v65;
        if (v65)
        {
          v101 = 0;
          visibleCells2 = [v120[0] visibleCells];
          v64 = [visibleCells2 count];
          *&v14 = MEMORY[0x29EDC9740](visibleCells2).n128_u64[0];
          v100 = v64;
          if (v64)
          {
            for (i = 0; i < v100; ++i)
            {
              visibleCells3 = [v120[0] visibleCells];
              obj = [visibleCells3 objectAtIndexedSubscript:i];
              *&v15 = MEMORY[0x29EDC9740](visibleCells3).n128_u64[0];
              [obj frame];
              v96 = v131;
              v97 = CGRectGetMinY(v131) - v115;
              if (v97 < v116 || ((v95 = -[UITableViewIndexAccessibility _axDetermineTableCellLabel:](selfCopy, "_axDetermineTableCellLabel:", obj), ![v95 length]) ? (v61 = 0) : (v61 = objc_msgSend(v95, "characterAtIndex:", 0)), (v94 = v61) == 0 || v94 != v102 ? (v94 <= v102 ? (v107 = 0) : (v107 = 2)) : (objc_storeStrong(&v101, obj), v107 = 2), objc_storeStrong(&v95, 0), !v107))
              {
                v107 = 0;
              }

              objc_storeStrong(&obj, 0);
              if (v107)
              {
                break;
              }
            }

            if (!v101)
            {
              if (i)
              {
                v60 = (i - 1);
              }

              else
              {
                v60 = 0;
              }

              v93[1] = v60;
              visibleCells4 = [v120[0] visibleCells];
              v16 = [visibleCells4 objectAtIndexedSubscript:v60];
              v17 = v101;
              v101 = v16;
              MEMORY[0x29EDC9740](v17);
              MEMORY[0x29EDC9740](visibleCells4);
            }

            v93[0] = [v101 _accessibilityFindDescendant:&__block_literal_global_377];
            if (v93[0])
            {
              v127 = v93[0];
              v122 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v127 count:1];
            }

            else
            {
              v122 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
            }

            v107 = 1;
            objc_storeStrong(v93, 0);
          }

          else
          {
            v122 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
            v107 = 1;
          }

          objc_storeStrong(&v101, 0);
        }

        else
        {
          v122 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
          v107 = 1;
        }

        objc_storeStrong(&lowercaseString, 0);
      }

      objc_storeStrong(&_accessibilityIndexData, 0);
      objc_storeStrong(&v106, 0);
    }

    objc_storeStrong(v114, 0);
  }

  else
  {
    v85 = [v120[0] safeValueForKey:@"_accessibilityVisibleHeaderSections"];
    if (![v85 count])
    {
      goto LABEL_74;
    }

    [v120[0] adjustedContentInset];
    v80 = v23;
    v81 = v24;
    v82 = v25;
    v83 = v26;
    v84 = v23;
    [v120[0] contentOffset];
    v77 = v27;
    v78 = v28;
    v79 = v28;
    memset(v75, 0, sizeof(v75));
    v48 = MEMORY[0x29EDC9748](v85);
    v49 = [v48 countByEnumeratingWithState:v75 objects:v125 count:16];
    if (v49)
    {
      v45 = *v75[2];
      v46 = 0;
      v47 = v49;
      while (1)
      {
        v44 = v46;
        if (*v75[2] != v45)
        {
          objc_enumerationMutation(v48);
        }

        v76 = *(v75[1] + 8 * v46);
        [v120[0] rectForHeaderInSection:-[UITableViewSectionElement section](v76)];
        v74[1] = v29;
        v74[2] = v30;
        v74[3] = v31;
        v74[4] = v32;
        if (*&v30 - (v79 + v84) >= 0.0)
        {
          break;
        }

        ++v46;
        if (v44 + 1 >= v47)
        {
          v46 = 0;
          v47 = [v48 countByEnumeratingWithState:v75 objects:v125 count:16];
          if (!v47)
          {
            goto LABEL_72;
          }
        }
      }

      v74[0] = MEMORY[0x29EDC9748](v76);
      v42 = MEMORY[0x29EDB8DE8];
      accessibilityChildren = [(UITableViewSectionElement *)v74[0] accessibilityChildren];
      v73 = [v42 arrayWithArray:?];
      *&v33 = MEMORY[0x29EDC9740](accessibilityChildren).n128_u64[0];
      [v73 insertObject:v74[0] atIndex:{0, v33}];
      v122 = MEMORY[0x29EDC9748](v73);
      v107 = 1;
      objc_storeStrong(&v73, 0);
      objc_storeStrong(v74, 0);
    }

    else
    {
LABEL_72:
      v107 = 0;
    }

    *&v22 = MEMORY[0x29EDC9740](v48).n128_u64[0];
    if (!v107)
    {
LABEL_74:
      v72 = [v120[0] safeValueForKey:{@"_accessibilityUserTestingVisibleCells", v22}];
      if (![v72 count])
      {
        goto LABEL_88;
      }

      memset(v70, 0, sizeof(v70));
      v40 = MEMORY[0x29EDC9748](v72);
      v41 = [v40 countByEnumeratingWithState:v70 objects:v124 count:16];
      if (v41)
      {
        v37 = *v70[2];
        v38 = 0;
        v39 = v41;
        while (1)
        {
          v36 = v38;
          if (*v70[2] != v37)
          {
            objc_enumerationMutation(v40);
          }

          v71 = *(v70[1] + 8 * v38);
          if (([v71 _accessibilityIsFrameOutOfBounds] & 1) == 0)
          {
            _accessibilityUnignoredDescendant2 = [v71 _accessibilityUnignoredDescendant];
            if (_accessibilityUnignoredDescendant2)
            {
              v123 = _accessibilityUnignoredDescendant2;
              v122 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v123 count:1];
              v107 = 1;
            }

            else
            {
              v107 = 10;
            }

            objc_storeStrong(&_accessibilityUnignoredDescendant2, 0);
            if (v107 != 10)
            {
              break;
            }
          }

          ++v38;
          if (v36 + 1 >= v39)
          {
            v38 = 0;
            v39 = [v40 countByEnumeratingWithState:v70 objects:v124 count:16];
            if (!v39)
            {
              goto LABEL_86;
            }
          }
        }
      }

      else
      {
LABEL_86:
        v107 = 0;
      }

      MEMORY[0x29EDC9740](v40);
      if (!v107)
      {
LABEL_88:
        v122 = 0;
        v107 = 1;
      }

      objc_storeStrong(&v72, 0);
    }

    objc_storeStrong(&v85, 0);
  }

  objc_storeStrong(v120, 0);
  v34 = v122;

  return v34;
}

uint64_t __60__UITableViewIndexAccessibility_accessibilityFlowToElements__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] isAccessibilityElement];
  objc_storeStrong(location, 0);
  return v3;
}

uint64_t __60__UITableViewIndexAccessibility_accessibilityFlowToElements__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] isAccessibilityElement];
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)_updateSectionForTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, touch);
  v34 = 0;
  objc_storeStrong(&v34, event);
  v32.receiver = selfCopy;
  v32.super_class = UITableViewIndexAccessibility;
  v33 = [(UITableViewIndexAccessibility *)&v32 _updateSectionForTouch:location[0] withEvent:v34];
  if (v33)
  {
    v31 = [(UITableViewIndexAccessibility *)selfCopy safeValueForKey:@"selectedSectionTitle"];
    v30 = [(UITableViewIndexAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    delegate = [v30 delegate];
    v23 = objc_opt_respondsToSelector();
    *&v4 = MEMORY[0x29EDC9740](delegate).n128_u64[0];
    if (v23)
    {
      v29 = [(UITableViewIndexAccessibility *)selfCopy safeArrayForKey:@"titles", v4];
      v20 = [v30 safeValueForKey:@"delegate"];
      v19 = [v20 safeValueForKey:@"_accessibilityTableViewIndexAdjustment"];
      integerValue = [v19 integerValue];
      MEMORY[0x29EDC9740](v19);
      *&v5 = MEMORY[0x29EDC9740](v20).n128_u64[0];
      v28 = integerValue;
      if (integerValue > 0)
      {
        v18 = [(UITableViewIndexAccessibility *)selfCopy safeValueForKey:@"_selectedSection", v5];
        integerValue2 = [v18 integerValue];
        if (integerValue2 + v28 < [v29 count])
        {
          v6 = [v29 objectAtIndex:integerValue2 + v28];
          v7 = v31;
          v31 = v6;
          MEMORY[0x29EDC9740](v7);
        }
      }

      objc_storeStrong(&v29, 0);
    }

    if ([v31 length] && v31 != _updateSectionForTouch_withEvent__LastLetter)
    {
      v26 = [(UITableViewIndexAccessibility *)selfCopy _accessibilityValueToPost:v31];
      v8 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v26];
      v9 = v26;
      v26 = v8;
      *&v10 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      [v26 setAttribute:MEMORY[0x29EDB8EB0] forKey:{*MEMORY[0x29EDBD848], v10}];
      _UIAccessibilitySetAssociatedElementContextForNextNotification();
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7478], v26);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&_updateSectionForTouch_withEvent__LastLetter, v31);
    _accessibilityIndexData = [(UITableViewIndexAccessibility *)selfCopy _accessibilityIndexData];
    v14 = [(UITableViewIndexAccessibility *)selfCopy safeValueForKey:@"_selectedSection"];
    integerValue3 = [v14 integerValue];
    *&v11 = MEMORY[0x29EDC9740](v14).n128_u64[0];
    v16 = _accessibilityIndexData;
    v17 = [MEMORY[0x29EDBA070] numberWithInteger:{integerValue3, v11}];
    [v16 setObject:? forKey:?];
    MEMORY[0x29EDC9740](v17);
    objc_storeStrong(&_accessibilityIndexData, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  v13 = v33;
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (id)accessibilityUserInputLabels
{
  v8[3] = *MEMORY[0x29EDCA608];
  v6 = accessibilityLocalizedString(@"section.index.label");
  v8[0] = v6;
  v5 = accessibilityLocalizedString(@"scroll.bar");
  v8[1] = v5;
  _accessibilityDisplayTitle = [(UITableViewIndexAccessibility *)self _accessibilityDisplayTitle];
  v8[2] = _accessibilityDisplayTitle;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:3];
  MEMORY[0x29EDC9740](_accessibilityDisplayTitle);
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);

  return v4;
}

- (id)_accessibilityDisplayTitle
{
  v21 = *MEMORY[0x29EDCA608];
  v19[2] = self;
  v19[1] = a2;
  v19[0] = [(UITableViewIndexAccessibility *)self safeArrayForKey:@"_displayTitles"];
  v18 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v19[0]);
  v14 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
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
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = MEMORY[0x29EDC9748](v17);
        if ([v15 isEqualToString:@"•"])
        {
          v2 = accessibilityLocalizedString(@"scroll.bar.to");
          v3 = v15;
          v15 = v2;
          MEMORY[0x29EDC9740](v3);
        }

        if ([v15 isEqualToString:@"#"])
        {
          v4 = accessibilityLocalizedString(@"scroll.bar.hashtag");
          v5 = v15;
          v15 = v4;
          MEMORY[0x29EDC9740](v5);
        }

        [v18 addObject:v15];
        objc_storeStrong(&v15, 0);
      }

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  *&v6 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  v8 = [v18 componentsJoinedByString:{@" ", v6}];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v6 = 0;
  accessibilityContainer = [(UITableViewIndexAccessibility *)self accessibilityContainer];
  accessibilityTraits = [accessibilityContainer accessibilityTraits];
  v5 = accessibilityTraits & *MEMORY[0x29EDBDAF0];
  MEMORY[0x29EDC9740](accessibilityContainer);
  if (v5)
  {
    v6 = *MEMORY[0x29EDBDAF0];
  }

  return *MEMORY[0x29EDC7590] | *MEMORY[0x29EDC7F60] | v6;
}

- (id)_accessibilityKeyCommands
{
  v6[2] = *MEMORY[0x29EDCA608];
  v5 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:*MEMORY[0x29EDC8178] modifierFlags:? action:?];
  v6[0] = v5;
  v3 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:*MEMORY[0x29EDC8160] modifierFlags:0 action:sel_accessibilityDecrement];
  v6[1] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:2];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v5);

  return v4;
}

@end