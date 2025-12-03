@interface UITableViewSectionElement
- (CGRect)accessibilityFrame;
- (UITableViewSectionElement)initWithAccessibilityContainer:(id)container;
- (double)_accessibilityClearChildren;
- (id)_accessibilityAccessibleElementsInView:(void *)view;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_textChildWithTitle:(id)title;
- (id)accessibilityChildren;
- (id)accessibilityIdentifier;
- (id)description;
- (uint64_t)isHeader;
- (uint64_t)section;
- (uint64_t)setIsHeader:(uint64_t)result;
- (uint64_t)setSection:(uint64_t)result;
- (void)accessibilityScrollToVisibleWithChild:(id)child;
- (void)dealloc;
- (void)updateMockView:(id)view;
@end

@implementation UITableViewSectionElement

- (UITableViewSectionElement)initWithAccessibilityContainer:(id)container
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, container);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = UITableViewSectionElement;
  selfCopy = [(UITableViewSectionElement *)&v7 initWithAccessibilityContainer:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__acccessibilityClearChildCache name:*MEMORY[0x29EDC8378] object:0];
    MEMORY[0x29EDC9740](defaultCenter);
  }

  v5 = MEMORY[0x29EDC9748](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)_accessibilityAccessibleElementsInView:(void *)view
{
  viewCopy = view;
  location = 0;
  objc_storeStrong(&location, a2);
  if (viewCopy)
  {
    if (location)
    {
      v8 = [MEMORY[0x29EDB8DE8] arrayWithObject:location];
      array = [MEMORY[0x29EDB8DE8] array];
      while ([v8 count])
      {
        lastObject = [v8 lastObject];
        [v8 removeLastObject];
        if ([lastObject isAccessibilityElement] & 1) != 0 || (objc_msgSend(lastObject, "_accessibilityHasOrderedChildren"))
        {
          [array addObject:lastObject];
        }

        else
        {
          v4 = v8;
          subviews = [lastObject subviews];
          [v4 addObjectsFromArray:?];
          MEMORY[0x29EDC9740](subviews);
        }

        objc_storeStrong(&lastObject, 0);
      }

      [viewCopy _accessibilitySortElementsUsingGeometry:array];
      v12 = MEMORY[0x29EDC9748](array);
      v9 = 1;
      objc_storeStrong(&array, 0);
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
  selfCopy = self;
  if (self)
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](*(selfCopy + 64));
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
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x29EDC8378] object:0];
  MEMORY[0x29EDC9740](defaultCenter);
  _accessibilityClearChildren = [(UITableViewSectionElement *)selfCopy _accessibilityClearChildren];
  v4.receiver = selfCopy;
  v4.super_class = UITableViewSectionElement;
  [(UITableViewSectionElement *)&v4 dealloc];
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v23[1] = a2;
  v23[0] = [(UITableViewSectionElement *)self accessibilityContainer];
  section = [(UITableViewSectionElement *)selfCopy section];
  if (section < [v23[0] numberOfSections])
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
    v10 = MEMORY[0x29EDC9748](selfCopy);
    v11[0] = MEMORY[0x29EDC9748](v23[0]);
    v11[2] = section;
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
  if (self)
  {
    return *(self + 56);
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

- (id)_textChildWithTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v6 = location[0];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:?];
  v9 = [v7 length];
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](whitespaceAndNewlineCharacterSet);
  if (v9)
  {
    v3 = [UITableSectionPart alloc];
    v11 = [(UITableSectionPart *)v3 initWithAccessibilityContainer:selfCopy];
    [(UITableSectionPart *)v11 setAccessibilityLabel:location[0]];
    v10 = *MEMORY[0x29EDC7FD0];
    if (selfCopy->_isHeader)
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
  selfCopy = self;
  if (!self)
  {
    v70 = 0;
    goto LABEL_86;
  }

  accessibilityContainer = [selfCopy accessibilityContainer];
  if (selfCopy[8])
  {
    section = [(UITableViewSectionElement *)selfCopy section];
    if (section < [accessibilityContainer numberOfSections])
    {
      v70 = MEMORY[0x29EDC9748](selfCopy[8]);
    }

    else
    {
      [(UITableViewSectionElement *)selfCopy _accessibilityClearChildren];
      objc_storeStrong(selfCopy + 8, 0);
      v70 = 0;
    }

    v67 = 1;
    goto LABEL_85;
  }

  v66 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
  section2 = [(UITableViewSectionElement *)selfCopy section];
  delegate = [accessibilityContainer delegate];
  dataSource = [accessibilityContainer dataSource];
  v1 = *(selfCopy + 48);
  v60 = 0;
  bOOLValue = 0;
  if (v1)
  {
    v61 = [accessibilityContainer safeValueForKey:@"_delegateImplementsViewForHeaderInSection"];
    v60 = 1;
    bOOLValue = [v61 BOOLValue];
  }

  if (v60)
  {
    MEMORY[0x29EDC9740](v61);
  }

  v62 = bOOLValue & 1;
  v2 = *(selfCopy + 48);
  v57 = 0;
  bOOLValue2 = 0;
  if ((v2 & 1) == 0)
  {
    v58 = [accessibilityContainer safeValueForKey:@"_delegateImplementsViewForFooterInSection"];
    v57 = 1;
    bOOLValue2 = [v58 BOOLValue];
  }

  if (v57)
  {
    MEMORY[0x29EDC9740](v58);
  }

  v59 = bOOLValue2 & 1;
  location = 0;
  if ((v62 & 1) == 0 && (v59 & 1) == 0)
  {
    goto LABEL_68;
  }

  v3 = *(selfCopy + 48);
  v54 = 0;
  v52 = 0;
  if (v3)
  {
    v55 = [accessibilityContainer _visibleHeaderViewForSection:section2];
    v54 = 1;
    objc_storeStrong(&location, v55);
  }

  else
  {
    v53 = [accessibilityContainer _visibleFooterViewForSection:section2];
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
    v4 = *(selfCopy + 48);
    v50 = 0;
    v48 = 0;
    if (v4)
    {
      v51 = [delegate tableView:accessibilityContainer viewForHeaderInSection:section2];
      v50 = 1;
      objc_storeStrong(&location, v51);
    }

    else
    {
      v49 = [delegate tableView:accessibilityContainer viewForFooterInSection:section2];
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
      v28 = selfCopy;
      _accessibilityAXAttributedLabel = [location _accessibilityAXAttributedLabel];
      v47 = [v28 _textChildWithTitle:?];
      *&v5 = MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel).n128_u64[0];
      if (v47)
      {
        [v66 addObject:{v47, v5}];
        accessibilityLanguage = [location accessibilityLanguage];
        [v47 setAccessibilityLanguage:?];
        MEMORY[0x29EDC9740](accessibilityLanguage);
      }

      objc_storeStrong(&v47, 0);
    }

    else if (location)
    {
      v46 = [(UITableViewSectionElement *)selfCopy _accessibilityAccessibleElementsInView:?];
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
              v42 = [(UIAccessibilityElementMockView *)v6 initWithAccessibilityContainer:selfCopy];
              [(UIAccessibilityElementMockView *)v42 setDelegate:selfCopy];
              [(UIAccessibilityElementMockView *)v42 setView:v44];
              _accessibilityNativeTraits = [v44 _accessibilityNativeTraits];
              if ([v46 count] == 1 && (_accessibilityNativeTraits & (*MEMORY[0x29EDBDC00] | *MEMORY[0x29EDC7F70])) == 0)
              {
                if (selfCopy[6])
                {
                  v20 = *MEMORY[0x29EDC7F80];
                }

                else
                {
                  v20 = *MEMORY[0x29EDBDAE0];
                }

                accessibilityTraits = [v44 accessibilityTraits];
                [v44 setAccessibilityTraits:v20 | accessibilityTraits];
              }

              [v66 addObject:v42];
              objc_storeStrong(&v42, 0);
            }
          }

          else
          {
            [v44 setAccessibilityContainer:selfCopy];
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
        _accessibilityRetrieveIvarText = [(UIViewAccessibility *)location _accessibilityRetrieveIvarText];
        if ([_accessibilityRetrieveIvarText length])
        {
          v18 = v66;
          v19 = [selfCopy _textChildWithTitle:_accessibilityRetrieveIvarText];
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
                v17 = [selfCopy _textChildWithTitle:v39];
                [v16 axSafelyAddObject:?];
                MEMORY[0x29EDC9740](v17);
              }
            }
          }

          objc_storeStrong(&v39, 0);
        }

        objc_storeStrong(&_accessibilityRetrieveIvarText, 0);
      }

      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
    }

LABEL_68:
    if (![v66 count] && ((selfCopy[6] & 1) != 0 && (objc_msgSend(accessibilityContainer, "_delegateWantsHeaderTitleForSection:", section2) & 1) != 0 || (selfCopy[6] & 1) == 0 && (objc_msgSend(accessibilityContainer, "_delegateWantsFooterTitleForSection:", section2) & 1) != 0))
    {
      v11 = *(selfCopy + 48);
      v36 = 0;
      v34 = 0;
      if (v11)
      {
        v37 = [dataSource tableView:accessibilityContainer titleForHeaderInSection:section2];
        v36 = 1;
        v12 = MEMORY[0x29EDC9748](v37);
      }

      else
      {
        v35 = [dataSource tableView:accessibilityContainer titleForFooterInSection:section2];
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

      v33 = [selfCopy _textChildWithTitle:v38];
      if (v33)
      {
        [v66 addObject:v33];
        accessibilityLanguage2 = [v38 accessibilityLanguage];
        [v33 setAccessibilityLanguage:?];
        MEMORY[0x29EDC9740](accessibilityLanguage2);
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(selfCopy + 8, v66);
    v70 = MEMORY[0x29EDC9748](selfCopy[8]);
    v67 = 1;
    goto LABEL_84;
  }

  v70 = 0;
  v67 = 1;
LABEL_84:
  objc_storeStrong(&location, 0);
  objc_storeStrong(&dataSource, 0);
  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v66, 0);
LABEL_85:
  objc_storeStrong(&accessibilityContainer, 0);
LABEL_86:
  v13 = v70;

  return v13;
}

- (void)updateMockView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v3 = AXRetainAutorelease();
  accessibilityContainer = [(UITableViewSectionElement *)selfCopy accessibilityContainer];
  section = [(UITableViewSectionElement *)selfCopy section];
  isHeader = selfCopy->_isHeader;
  v27 = 0;
  v25 = 0;
  if (isHeader)
  {
    v28 = [accessibilityContainer _visibleHeaderViewForSection:section];
    v27 = 1;
    v5 = MEMORY[0x29EDC9748](v28);
  }

  else
  {
    v26 = [accessibilityContainer _visibleFooterViewForSection:section];
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
    v24 = [(UITableViewSectionElement *)selfCopy _accessibilityAccessibleElementsInView:v29];
    v23 = 0;
    v22 = [v24 count];
    v21 = v22 == [(NSMutableArray *)selfCopy->_children count];
    if (!v21)
    {
      _accessibilityClearChildren = [(UITableViewSectionElement *)selfCopy _accessibilityClearChildren];
      [(NSMutableArray *)selfCopy->_children removeAllObjects];
      objc_storeStrong(&selfCopy->_children, 0);
      accessibilityChildren = [(UITableViewSectionElement *)&selfCopy->super.super.super.isa accessibilityChildren];
    }

    while (v23 < v22)
    {
      v20 = 0;
      if (v21)
      {
        v8 = [(NSMutableArray *)selfCopy->_children objectAtIndex:v23];
        v9 = v20;
        v20 = v8;
        *&v10 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      }

      else
      {
        v11 = [UIAccessibilityElementMockView alloc];
        v12 = [(UIAccessibilityElementMockView *)v11 initWithAccessibilityContainer:selfCopy];
        v13 = v20;
        v20 = v12;
        MEMORY[0x29EDC9740](v13);
        [(UIAccessibilityElementMockView *)v20 setDelegate:selfCopy];
        [(NSMutableArray *)selfCopy->_children addObject:v20];
      }

      v16 = [v24 objectAtIndex:{v23, v10}];
      [(UIAccessibilityElementMockView *)v20 setView:v16];
      MEMORY[0x29EDC9740](v16);
      v18 = 0;
      isKindOfClass = 0;
      if (v22 == 1)
      {
        view = [(UIAccessibilityElementMockView *)v20 view];
        v18 = 1;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      if (v18)
      {
        MEMORY[0x29EDC9740](view);
      }

      if (isKindOfClass)
      {
        v14 = *MEMORY[0x29EDC7F80];
        view2 = [(UIAccessibilityElementMockView *)v20 view];
        [view2 setAccessibilityTraits:v14];
        MEMORY[0x29EDC9740](view2);
      }

      objc_storeStrong(&v20, 0);
      ++v23;
    }

    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&accessibilityContainer, 0);
  objc_storeStrong(location, 0);
}

- (void)accessibilityScrollToVisibleWithChild:(id)child
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  accessibilityContainer = [(UITableViewSectionElement *)selfCopy accessibilityContainer];
  v12 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:selfCopy->_section];
  v11 = [accessibilityContainer numberOfRowsInSection:selfCopy->_section];
  if (([(UITableViewSectionElement *)selfCopy isHeader]& 1) == 0 && v11)
  {
    v3 = [MEMORY[0x29EDB9FE0] indexPathForRow:v11 - 1 inSection:selfCopy->_section];
    v4 = v12;
    v12 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  if (v11 > 0 && v12 && (section = selfCopy->_section, section < [accessibilityContainer numberOfSections]) && objc_msgSend(v12, "row") < v11)
  {
    [accessibilityContainer scrollToRowAtIndexPath:v12 atScrollPosition:2 animated:0];
  }

  else
  {
    [(UITableViewSectionElement *)selfCopy accessibilityFrame];
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = v8;
    [accessibilityContainer _accessibilityScrollToFrame:0 forView:{*&v5, *&v6, *&v7, *&v8}];
  }

  v10[0] = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&accessibilityContainer, 0);
  objc_storeStrong(location, 0);
}

- (uint64_t)isHeader
{
  if (self)
  {
    v2 = *(self + 48) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  v50 = *MEMORY[0x29EDCA608];
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  accessibilityChildren = [(UITableViewSectionElement *)&selfCopy->super.super.super.isa accessibilityChildren];
  v45 = [accessibilityChildren copy];
  *&v4 = MEMORY[0x29EDC9740](accessibilityChildren).n128_u64[0];
  _accessibilityParentView = [(UITableViewSectionElement *)selfCopy _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v44.x = v5;
  v44.y = v6;
  MEMORY[0x29EDC9740](_accessibilityParentView);
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
      v39 = testCopy;
      v38 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        accessibilityContainer = [(UITableViewSectionElement *)selfCopy accessibilityContainer];
        [accessibilityContainer convertPoint:v41 toView:v39];
        v37.x = v9;
        v37.y = v10;
        v39 = v37;
        MEMORY[0x29EDC9740](accessibilityContainer);
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v35 = 0;
        v20 = 0;
        if (isKindOfClass)
        {
          view = [(UIAccessibilityElementMockView *)v41 view];
          v35 = 1;
          objc_opt_class();
          v20 = objc_opt_isKindOfClass();
        }

        if (v35)
        {
          MEMORY[0x29EDC9740](view);
        }

        if (v20)
        {
          accessibilityContainer2 = [(UITableViewSectionElement *)selfCopy accessibilityContainer];
          view2 = [(UIAccessibilityElementMockView *)v41 view];
          [accessibilityContainer2 convertPoint:v39 toView:?];
          v34.x = v12;
          v34.y = v13;
          v39 = v34;
          MEMORY[0x29EDC9740](view2);
          MEMORY[0x29EDC9740](accessibilityContainer2);
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
          view3 = [(UIAccessibilityElementMockView *)v41 view];
          v31 = 1;
          v17 = [v16 isEqual:?];
        }

        if (v31)
        {
          MEMORY[0x29EDC9740](view3);
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
  selfCopy = self;
  v36[1] = a2;
  v36[0] = 0;
  accessibilityContainer = [(UITableViewSectionElement *)self accessibilityContainer];
  section = [(UITableViewSectionElement *)selfCopy section];
  delegate = [accessibilityContainer delegate];
  isHeader = selfCopy->_isHeader;
  v30 = 0;
  bOOLValue = 0;
  if (isHeader)
  {
    v31 = [accessibilityContainer safeValueForKey:@"_delegateImplementsViewForHeaderInSection"];
    v30 = 1;
    bOOLValue = [v31 BOOLValue];
  }

  if (v30)
  {
    MEMORY[0x29EDC9740](v31);
  }

  v32 = bOOLValue & 1;
  v3 = selfCopy->_isHeader;
  v27 = 0;
  bOOLValue2 = 0;
  if (!v3)
  {
    v28 = [accessibilityContainer safeValueForKey:@"_delegateImplementsViewForFooterInSection"];
    v27 = 1;
    bOOLValue2 = [v28 BOOLValue];
  }

  if (v27)
  {
    MEMORY[0x29EDC9740](v28);
  }

  v29 = bOOLValue2 & 1;
  location = 0;
  if (v32 & 1) != 0 || (v29)
  {
    v4 = selfCopy->_isHeader;
    v24 = 0;
    v22 = 0;
    if (v4)
    {
      v25 = [accessibilityContainer _visibleHeaderViewForSection:section];
      v24 = 1;
      objc_storeStrong(&location, v25);
    }

    else
    {
      v23 = [accessibilityContainer _visibleFooterViewForSection:section];
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
      v5 = selfCopy->_isHeader;
      v20 = 0;
      v18 = 0;
      if (v5)
      {
        v21 = [delegate tableView:accessibilityContainer viewForHeaderInSection:section];
        v20 = 1;
        objc_storeStrong(&location, v21);
      }

      else
      {
        v19 = [delegate tableView:accessibilityContainer viewForFooterInSection:section];
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

    accessibilityIdentifier = [location accessibilityIdentifier];
    v7 = v36[0];
    v36[0] = accessibilityIdentifier;
    *&v8 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    if (!v36[0])
    {
      _accessibilitySortedElementsWithin = [location _accessibilitySortedElementsWithin];
      v16 = [_accessibilitySortedElementsWithin indexOfObjectPassingTest:&__block_literal_global_43];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [_accessibilitySortedElementsWithin objectAtIndex:v16];
        accessibilityLabel = [v13 accessibilityLabel];
        v10 = v36[0];
        v36[0] = accessibilityLabel;
        MEMORY[0x29EDC9740](v10);
        MEMORY[0x29EDC9740](v13);
      }

      objc_storeStrong(&_accessibilitySortedElementsWithin, 0);
    }
  }

  v12 = MEMORY[0x29EDC9748](v36[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&accessibilityContainer, 0);
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
  section = [(UITableViewSectionElement *)self section];
  return [v5 stringWithFormat:@"[%@]{%p} section: %ld (isHeader: %d)", v3, self, section, -[UITableViewSectionElement isHeader](self) & 1];
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