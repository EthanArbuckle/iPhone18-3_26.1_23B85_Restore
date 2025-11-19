@interface UITableViewSectionElement
- (CGRect)accessibilityFrame;
- (UITableViewSectionElement)initWithAccessibilityContainer:(id)a3;
- (double)_accessibilityClearChildren;
- (id)_accessibilityAccessibleElementsInView:(void *)a1;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_textChildWithTitle:(id)a3;
- (id)accessibilityChildren;
- (id)accessibilityIdentifier;
- (id)description;
- (uint64_t)isHeader;
- (uint64_t)section;
- (uint64_t)setIsHeader:(uint64_t)result;
- (uint64_t)setSection:(uint64_t)result;
- (void)accessibilityScrollToVisibleWithChild:(id)a3;
- (void)dealloc;
- (void)updateMockView:(id)a3;
@end

@implementation UITableViewSectionElement

- (UITableViewSectionElement)initWithAccessibilityContainer:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = UITableViewSectionElement;
  v9 = [(UITableViewSectionElement *)&v7 initWithAccessibilityContainer:location[0]];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v6 = [MEMORY[0x29EDBA068] defaultCenter];
    [v6 addObserver:v9 selector:sel__acccessibilityClearChildCache name:*MEMORY[0x29EDC8378] object:0];
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)_accessibilityAccessibleElementsInView:(void *)a1
{
  v11 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v11)
  {
    if (location)
    {
      v8 = [MEMORY[0x29EDB8DE8] arrayWithObject:location];
      v7 = [MEMORY[0x29EDB8DE8] array];
      while ([v8 count])
      {
        v6 = [v8 lastObject];
        [v8 removeLastObject];
        if ([v6 isAccessibilityElement] & 1) != 0 || (objc_msgSend(v6, "_accessibilityHasOrderedChildren"))
        {
          [v7 addObject:v6];
        }

        else
        {
          v4 = v8;
          v5 = [v6 subviews];
          [v4 addObjectsFromArray:?];
          MEMORY[0x29EDC9740](v5);
        }

        objc_storeStrong(&v6, 0);
      }

      [v11 _accessibilitySortElementsUsingGeometry:v7];
      v12 = MEMORY[0x29EDC9748](v7);
      v9 = 1;
      objc_storeStrong(&v7, 0);
      objc_storeStrong(&v8, 0);
    }

    else
    {
      v12 = 0;
      v9 = 1;
    }
  }

  else
  {
    v12 = 0;
    v9 = 1;
  }

  objc_storeStrong(&location, 0);
  v2 = v12;

  return v2;
}

- (double)_accessibilityClearChildren
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = a1;
  if (a1)
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](*(v12 + 64));
    v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
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

        v11 = *(__b[1] + 8 * v5);
        [v11 setAccessibilityContainer:{0, location}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          location = &v9;
          v9 = MEMORY[0x29EDC9748](v11);
          [(UIAccessibilityElementMockView *)v9 setDelegate:?];
          [(UIAccessibilityElementMockView *)v9 setView:?];
          objc_storeStrong(&v9, 0);
        }

        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    *&result = MEMORY[0x29EDC9740](obj).n128_u64[0];
  }

  return result;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:v6 name:*MEMORY[0x29EDC8378] object:0];
  MEMORY[0x29EDC9740](v3);
  v2 = [(UITableViewSectionElement *)v6 _accessibilityClearChildren];
  v4.receiver = v6;
  v4.super_class = UITableViewSectionElement;
  [(UITableViewSectionElement *)&v4 dealloc];
}

- (CGRect)accessibilityFrame
{
  v24 = self;
  v23[1] = a2;
  v23[0] = [(UITableViewSectionElement *)self accessibilityContainer];
  v22 = [(UITableViewSectionElement *)v24 section];
  if (v22 < [v23[0] numberOfSections])
  {
    v19 = 0u;
    v20 = 0u;
    v12 = 0;
    v13 = &v12;
    v14 = 0x10000000;
    v15 = 64;
    v16 = &unk_29C6A1FE6;
    v17 = 0u;
    v18 = 0u;
    v11[1] = &v12;
    v10 = MEMORY[0x29EDC9748](v24);
    v11[0] = MEMORY[0x29EDC9748](v23[0]);
    v11[2] = v22;
    AXPerformSafeBlock();
    v19 = *(v13 + 2);
    v20 = *(v13 + 3);
    objc_storeStrong(v11, 0);
    objc_storeStrong(&v10, 0);
    _Block_object_dispose(&v12, 8);
    UIAccessibilityFrameForBounds();
    *&v25 = v2;
    *(&v25 + 1) = v3;
    *&v26 = v4;
    *(&v26 + 1) = v5;
  }

  else
  {
    v25 = *MEMORY[0x29EDB90E0];
    v26 = *(MEMORY[0x29EDB90E0] + 16);
  }

  v21 = 1;
  objc_storeStrong(v23, 0);
  v7 = *(&v25 + 1);
  v6 = *&v25;
  v9 = *(&v26 + 1);
  v8 = *&v26;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (uint64_t)section
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

__n128 __47__UITableViewSectionElement_accessibilityFrame__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    [*(a1 + 40) _floatingRectForHeaderInSection:*(a1 + 56) heightCanBeGuessed:0];
  }

  else
  {
    [*(a1 + 40) _floatingRectForFooterInSection:*(a1 + 56) heightCanBeGuessed:0];
  }

  *&v8 = v1;
  *(&v8 + 1) = v2;
  v9.n128_u64[0] = v3;
  v9.n128_u64[1] = v4;
  v5 = *(*(a1 + 48) + 8);
  *(v5 + 32) = v8;
  result = v9;
  *(v5 + 48) = v9;
  return result;
}

- (id)_textChildWithTitle:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = location[0];
  v8 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:?];
  v9 = [v7 length];
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  if (v9)
  {
    v3 = [UITableSectionPart alloc];
    v11 = [(UITableSectionPart *)v3 initWithAccessibilityContainer:v13];
    [(UITableSectionPart *)v11 setAccessibilityLabel:location[0]];
    v10 = *MEMORY[0x29EDC7FD0];
    if (v13->_isHeader)
    {
      v10 |= *MEMORY[0x29EDC7F80];
    }

    [(UITableSectionPart *)v11 setAccessibilityTraits:v10];
    v14 = MEMORY[0x29EDC9748](v11);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v14;

  return v4;
}

- (id)accessibilityChildren
{
  v72 = *MEMORY[0x29EDCA608];
  v69 = a1;
  if (!a1)
  {
    v70 = 0;
    goto LABEL_86;
  }

  v68 = [v69 accessibilityContainer];
  if (v69[8])
  {
    v32 = [(UITableViewSectionElement *)v69 section];
    if (v32 < [v68 numberOfSections])
    {
      v70 = MEMORY[0x29EDC9748](v69[8]);
    }

    else
    {
      [(UITableViewSectionElement *)v69 _accessibilityClearChildren];
      objc_storeStrong(v69 + 8, 0);
      v70 = 0;
    }

    v67 = 1;
    goto LABEL_85;
  }

  v66 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
  v65 = [(UITableViewSectionElement *)v69 section];
  v64 = [v68 delegate];
  v63 = [v68 dataSource];
  v1 = *(v69 + 48);
  v60 = 0;
  v31 = 0;
  if (v1)
  {
    v61 = [v68 safeValueForKey:@"_delegateImplementsViewForHeaderInSection"];
    v60 = 1;
    v31 = [v61 BOOLValue];
  }

  if (v60)
  {
    MEMORY[0x29EDC9740](v61);
  }

  v62 = v31 & 1;
  v2 = *(v69 + 48);
  v57 = 0;
  v30 = 0;
  if ((v2 & 1) == 0)
  {
    v58 = [v68 safeValueForKey:@"_delegateImplementsViewForFooterInSection"];
    v57 = 1;
    v30 = [v58 BOOLValue];
  }

  if (v57)
  {
    MEMORY[0x29EDC9740](v58);
  }

  v59 = v30 & 1;
  location = 0;
  if ((v62 & 1) == 0 && (v59 & 1) == 0)
  {
    goto LABEL_68;
  }

  v3 = *(v69 + 48);
  v54 = 0;
  v52 = 0;
  if (v3)
  {
    v55 = [v68 _visibleHeaderViewForSection:v65];
    v54 = 1;
    objc_storeStrong(&location, v55);
  }

  else
  {
    v53 = [v68 _visibleFooterViewForSection:v65];
    v52 = 1;
    objc_storeStrong(&location, v53);
  }

  if (v52)
  {
    MEMORY[0x29EDC9740](v53);
  }

  if (v54)
  {
    MEMORY[0x29EDC9740](v55);
  }

  if (!location)
  {
    v4 = *(v69 + 48);
    v50 = 0;
    v48 = 0;
    if (v4)
    {
      v51 = [v64 tableView:v68 viewForHeaderInSection:v65];
      v50 = 1;
      objc_storeStrong(&location, v51);
    }

    else
    {
      v49 = [v64 tableView:v68 viewForFooterInSection:v65];
      v48 = 1;
      objc_storeStrong(&location, v49);
    }

    if (v48)
    {
      MEMORY[0x29EDC9740](v49);
    }

    if (v50)
    {
      MEMORY[0x29EDC9740](v51);
    }
  }

  if (!location || ([location accessibilityElementsHidden] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v69;
      v29 = [location _accessibilityAXAttributedLabel];
      v47 = [v28 _textChildWithTitle:?];
      *&v5 = MEMORY[0x29EDC9740](v29).n128_u64[0];
      if (v47)
      {
        [v66 addObject:{v47, v5}];
        v27 = [location accessibilityLanguage];
        [v47 setAccessibilityLanguage:?];
        MEMORY[0x29EDC9740](v27);
      }

      objc_storeStrong(&v47, 0);
    }

    else if (location)
    {
      v46 = [(UITableViewSectionElement *)v69 _accessibilityAccessibleElementsInView:?];
      v45 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      memset(__b, 0, sizeof(__b));
      v25 = MEMORY[0x29EDC9748](v46);
      v26 = [v25 countByEnumeratingWithState:__b objects:v71 count:16];
      if (v26)
      {
        v22 = *__b[2];
        v23 = 0;
        v24 = v26;
        while (1)
        {
          v21 = v23;
          if (*__b[2] != v22)
          {
            objc_enumerationMutation(v25);
          }

          v44 = *(__b[1] + 8 * v23);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            if (([v45 containsObject:v44] & 1) == 0)
            {
              v6 = [UIAccessibilityElementMockView alloc];
              v42 = [(UIAccessibilityElementMockView *)v6 initWithAccessibilityContainer:v69];
              [(UIAccessibilityElementMockView *)v42 setDelegate:v69];
              [(UIAccessibilityElementMockView *)v42 setView:v44];
              v41 = [v44 _accessibilityNativeTraits];
              if ([v46 count] == 1 && (v41 & (*MEMORY[0x29EDBDC00] | *MEMORY[0x29EDC7F70])) == 0)
              {
                if (v69[6])
                {
                  v20 = *MEMORY[0x29EDC7F80];
                }

                else
                {
                  v20 = *MEMORY[0x29EDBDAE0];
                }

                v7 = [v44 accessibilityTraits];
                [v44 setAccessibilityTraits:v20 | v7];
              }

              [v66 addObject:v42];
              objc_storeStrong(&v42, 0);
            }
          }

          else
          {
            [v44 setAccessibilityContainer:v69];
            [v66 addObject:v44];
          }

          ++v23;
          if (v21 + 1 >= v24)
          {
            v23 = 0;
            v24 = [v25 countByEnumeratingWithState:__b objects:v71 count:16];
            if (!v24)
            {
              break;
            }
          }
        }
      }

      *&v8 = MEMORY[0x29EDC9740](v25).n128_u64[0];
      if (![v66 count])
      {
        v40 = [(UIViewAccessibility *)location _accessibilityRetrieveIvarText];
        if ([v40 length])
        {
          v18 = v66;
          v19 = [v69 _textChildWithTitle:v40];
          [v18 addObject:?];
          MEMORY[0x29EDC9740](v19);
        }

        else
        {
          v39 = 0;
          if (objc_opt_respondsToSelector())
          {
            v9 = [location safeValueForKey:@"text"];
            v10 = v39;
            v39 = v9;
            MEMORY[0x29EDC9740](v10);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v39 length])
              {
                v16 = v66;
                v17 = [v69 _textChildWithTitle:v39];
                [v16 axSafelyAddObject:?];
                MEMORY[0x29EDC9740](v17);
              }
            }
          }

          objc_storeStrong(&v39, 0);
        }

        objc_storeStrong(&v40, 0);
      }

      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
    }

LABEL_68:
    if (![v66 count] && ((v69[6] & 1) != 0 && (objc_msgSend(v68, "_delegateWantsHeaderTitleForSection:", v65) & 1) != 0 || (v69[6] & 1) == 0 && (objc_msgSend(v68, "_delegateWantsFooterTitleForSection:", v65) & 1) != 0))
    {
      v11 = *(v69 + 48);
      v36 = 0;
      v34 = 0;
      if (v11)
      {
        v37 = [v63 tableView:v68 titleForHeaderInSection:v65];
        v36 = 1;
        v12 = MEMORY[0x29EDC9748](v37);
      }

      else
      {
        v35 = [v63 tableView:v68 titleForFooterInSection:v65];
        v34 = 1;
        v12 = MEMORY[0x29EDC9748](v35);
      }

      v38 = v12;
      if (v34)
      {
        MEMORY[0x29EDC9740](v35);
      }

      if (v36)
      {
        MEMORY[0x29EDC9740](v37);
      }

      v33 = [v69 _textChildWithTitle:v38];
      if (v33)
      {
        [v66 addObject:v33];
        v15 = [v38 accessibilityLanguage];
        [v33 setAccessibilityLanguage:?];
        MEMORY[0x29EDC9740](v15);
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(v69 + 8, v66);
    v70 = MEMORY[0x29EDC9748](v69[8]);
    v67 = 1;
    goto LABEL_84;
  }

  v70 = 0;
  v67 = 1;
LABEL_84:
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v66, 0);
LABEL_85:
  objc_storeStrong(&v68, 0);
LABEL_86:
  v13 = v70;

  return v13;
}

- (void)updateMockView:(id)a3
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = AXRetainAutorelease();
  v31 = [(UITableViewSectionElement *)v33 accessibilityContainer];
  v30 = [(UITableViewSectionElement *)v33 section];
  isHeader = v33->_isHeader;
  v27 = 0;
  v25 = 0;
  if (isHeader)
  {
    v28 = [v31 _visibleHeaderViewForSection:v30];
    v27 = 1;
    v5 = MEMORY[0x29EDC9748](v28);
  }

  else
  {
    v26 = [v31 _visibleFooterViewForSection:v30];
    v25 = 1;
    v5 = MEMORY[0x29EDC9748](v26);
  }

  v29 = v5;
  if (v25)
  {
    MEMORY[0x29EDC9740](v26);
  }

  if (v27)
  {
    MEMORY[0x29EDC9740](v28);
  }

  if (v29)
  {
    v24 = [(UITableViewSectionElement *)v33 _accessibilityAccessibleElementsInView:v29];
    v23 = 0;
    v22 = [v24 count];
    v21 = v22 == [(NSMutableArray *)v33->_children count];
    if (!v21)
    {
      v6 = [(UITableViewSectionElement *)v33 _accessibilityClearChildren];
      [(NSMutableArray *)v33->_children removeAllObjects];
      objc_storeStrong(&v33->_children, 0);
      v7 = [(UITableViewSectionElement *)&v33->super.super.super.isa accessibilityChildren];
    }

    while (v23 < v22)
    {
      v20 = 0;
      if (v21)
      {
        v8 = [(NSMutableArray *)v33->_children objectAtIndex:v23];
        v9 = v20;
        v20 = v8;
        *&v10 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      }

      else
      {
        v11 = [UIAccessibilityElementMockView alloc];
        v12 = [(UIAccessibilityElementMockView *)v11 initWithAccessibilityContainer:v33];
        v13 = v20;
        v20 = v12;
        MEMORY[0x29EDC9740](v13);
        [(UIAccessibilityElementMockView *)v20 setDelegate:v33];
        [(NSMutableArray *)v33->_children addObject:v20];
      }

      v16 = [v24 objectAtIndex:{v23, v10}];
      [(UIAccessibilityElementMockView *)v20 setView:v16];
      MEMORY[0x29EDC9740](v16);
      v18 = 0;
      isKindOfClass = 0;
      if (v22 == 1)
      {
        v19 = [(UIAccessibilityElementMockView *)v20 view];
        v18 = 1;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      if (v18)
      {
        MEMORY[0x29EDC9740](v19);
      }

      if (isKindOfClass)
      {
        v14 = *MEMORY[0x29EDC7F80];
        v15 = [(UIAccessibilityElementMockView *)v20 view];
        [v15 setAccessibilityTraits:v14];
        MEMORY[0x29EDC9740](v15);
      }

      objc_storeStrong(&v20, 0);
      ++v23;
    }

    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)accessibilityScrollToVisibleWithChild:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [(UITableViewSectionElement *)v15 accessibilityContainer];
  v12 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:v15->_section];
  v11 = [v13 numberOfRowsInSection:v15->_section];
  if (([(UITableViewSectionElement *)v15 isHeader]& 1) == 0 && v11)
  {
    v3 = [MEMORY[0x29EDB9FE0] indexPathForRow:v11 - 1 inSection:v15->_section];
    v4 = v12;
    v12 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  if (v11 > 0 && v12 && (section = v15->_section, section < [v13 numberOfSections]) && objc_msgSend(v12, "row") < v11)
  {
    [v13 scrollToRowAtIndexPath:v12 atScrollPosition:2 animated:0];
  }

  else
  {
    [(UITableViewSectionElement *)v15 accessibilityFrame];
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = v8;
    [v13 _accessibilityScrollToFrame:0 forView:{*&v5, *&v6, *&v7, *&v8}];
  }

  v10[0] = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (uint64_t)isHeader
{
  if (a1)
  {
    v2 = *(a1 + 48) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v50 = *MEMORY[0x29EDCA608];
  v48 = a3;
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v26 = [(UITableViewSectionElement *)&v47->super.super.super.isa accessibilityChildren];
  v45 = [v26 copy];
  *&v4 = MEMORY[0x29EDC9740](v26).n128_u64[0];
  v27 = [(UITableViewSectionElement *)v47 _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v44.x = v5;
  v44.y = v6;
  MEMORY[0x29EDC9740](v27);
  v43 = 0;
  CGSizeMake_4();
  *&v42 = v7;
  *(&v42 + 1) = v8;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v45);
  v29 = [obj countByEnumeratingWithState:__b objects:v49 count:16];
  if (v29)
  {
    v23 = *__b[2];
    v24 = 0;
    v25 = v29;
    while (1)
    {
      v22 = v24;
      if (*__b[2] != v23)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(__b[1] + 8 * v24);
      v39 = v48;
      v38 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [(UITableViewSectionElement *)v47 accessibilityContainer];
        [v21 convertPoint:v41 toView:v39];
        v37.x = v9;
        v37.y = v10;
        v39 = v37;
        MEMORY[0x29EDC9740](v21);
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v35 = 0;
        v20 = 0;
        if (isKindOfClass)
        {
          v36 = [(UIAccessibilityElementMockView *)v41 view];
          v35 = 1;
          objc_opt_class();
          v20 = objc_opt_isKindOfClass();
        }

        if (v35)
        {
          MEMORY[0x29EDC9740](v36);
        }

        if (v20)
        {
          v19 = [(UITableViewSectionElement *)v47 accessibilityContainer];
          v18 = [(UIAccessibilityElementMockView *)v41 view];
          [v19 convertPoint:v39 toView:?];
          v34.x = v12;
          v34.y = v13;
          v39 = v34;
          MEMORY[0x29EDC9740](v18);
          MEMORY[0x29EDC9740](v19);
          v38 = 1;
        }
      }

      v33 = [v41 _accessibilityHitTest:location[0] withEvent:v39];
      if (v33)
      {
        v31 = 0;
        v17 = 0;
        if (v38)
        {
          v16 = v33;
          v32 = [(UIAccessibilityElementMockView *)v41 view];
          v31 = 1;
          v17 = [v16 isEqual:?];
        }

        if (v31)
        {
          MEMORY[0x29EDC9740](v32);
        }

        if (v17)
        {
          objc_storeStrong(&v33, v41);
        }

        [v33 accessibilityFrame];
        *&rect_16 = v52.size.width;
        *(&rect_16 + 1) = *&v52.size.height;
        if (CGRectContainsPoint(v52, v44) && *&v42 > *&rect_16 && *(&v42 + 1) > *(&rect_16 + 1))
        {
          v42 = rect_16;
          objc_storeStrong(&v43, v33);
        }
      }

      objc_storeStrong(&v33, 0);
      ++v24;
      if (v22 + 1 >= v25)
      {
        v24 = 0;
        v25 = [obj countByEnumeratingWithState:__b objects:v49 count:16];
        if (!v25)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v15 = MEMORY[0x29EDC9748](v43);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);

  return v15;
}

- (id)accessibilityIdentifier
{
  v37 = self;
  v36[1] = a2;
  v36[0] = 0;
  v35 = [(UITableViewSectionElement *)self accessibilityContainer];
  v34 = [(UITableViewSectionElement *)v37 section];
  v33 = [v35 delegate];
  isHeader = v37->_isHeader;
  v30 = 0;
  v15 = 0;
  if (isHeader)
  {
    v31 = [v35 safeValueForKey:@"_delegateImplementsViewForHeaderInSection"];
    v30 = 1;
    v15 = [v31 BOOLValue];
  }

  if (v30)
  {
    MEMORY[0x29EDC9740](v31);
  }

  v32 = v15 & 1;
  v3 = v37->_isHeader;
  v27 = 0;
  v14 = 0;
  if (!v3)
  {
    v28 = [v35 safeValueForKey:@"_delegateImplementsViewForFooterInSection"];
    v27 = 1;
    v14 = [v28 BOOLValue];
  }

  if (v27)
  {
    MEMORY[0x29EDC9740](v28);
  }

  v29 = v14 & 1;
  location = 0;
  if (v32 & 1) != 0 || (v29)
  {
    v4 = v37->_isHeader;
    v24 = 0;
    v22 = 0;
    if (v4)
    {
      v25 = [v35 _visibleHeaderViewForSection:v34];
      v24 = 1;
      objc_storeStrong(&location, v25);
    }

    else
    {
      v23 = [v35 _visibleFooterViewForSection:v34];
      v22 = 1;
      objc_storeStrong(&location, v23);
    }

    if (v22)
    {
      MEMORY[0x29EDC9740](v23);
    }

    if (v24)
    {
      MEMORY[0x29EDC9740](v25);
    }

    if (!location)
    {
      v5 = v37->_isHeader;
      v20 = 0;
      v18 = 0;
      if (v5)
      {
        v21 = [v33 tableView:v35 viewForHeaderInSection:v34];
        v20 = 1;
        objc_storeStrong(&location, v21);
      }

      else
      {
        v19 = [v33 tableView:v35 viewForFooterInSection:v34];
        v18 = 1;
        objc_storeStrong(&location, v19);
      }

      if (v18)
      {
        MEMORY[0x29EDC9740](v19);
      }

      if (v20)
      {
        MEMORY[0x29EDC9740](v21);
      }
    }

    v6 = [location accessibilityIdentifier];
    v7 = v36[0];
    v36[0] = v6;
    *&v8 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    if (!v36[0])
    {
      v17 = [location _accessibilitySortedElementsWithin];
      v16 = [v17 indexOfObjectPassingTest:&__block_literal_global_43];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [v17 objectAtIndex:v16];
        v9 = [v13 accessibilityLabel];
        v10 = v36[0];
        v36[0] = v9;
        MEMORY[0x29EDC9740](v10);
        MEMORY[0x29EDC9740](v13);
      }

      objc_storeStrong(&v17, 0);
    }
  }

  v12 = MEMORY[0x29EDC9748](v36[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);

  return v12;
}

uint64_t __52__UITableViewSectionElement_accessibilityIdentifier__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)description
{
  v5 = MEMORY[0x29EDBA0F8];
  v3 = objc_opt_class();
  v4 = [(UITableViewSectionElement *)self section];
  return [v5 stringWithFormat:@"[%@]{%p} section: %ld (isHeader: %d)", v3, self, v4, -[UITableViewSectionElement isHeader](self) & 1];
}

- (uint64_t)setSection:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)setIsHeader:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2 & 1;
  }

  return result;
}

@end