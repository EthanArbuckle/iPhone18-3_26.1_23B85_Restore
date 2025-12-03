@interface UIAccessibilityPickerComponent
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGRect)accessibilityFrame;
- (_NSRange)accessibilityRowRange;
- (double)_accessibilityNumberValue;
- (id)_accessibilityDateTimePickerValues;
- (id)_accessibilityViewForComponent;
- (id)_axSpeechInputLabelForDateCalendarUnit:(uint64_t)unit;
- (id)_axSpeechInputLabelForTimeIntervalCalendarUnit:(uint64_t)unit;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)automationElements;
- (id)picker;
- (id)setPicker:(id *)result;
- (int64_t)_accessibilityIndexForPickerString:(id)string;
- (int64_t)_accessibilityPickerType;
- (uint64_t)_axIsInDatePickerView;
- (uint64_t)_isRowDisabledInWebKit:(uint64_t)kit;
- (uint64_t)component;
- (uint64_t)setComponent:(uint64_t)result;
- (unint64_t)_accessibilityDatePickerComponentType;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityMoveSelection:(uint64_t)selection;
@end

@implementation UIAccessibilityPickerComponent

- (id)accessibilityLabel
{
  selfCopy = self;
  v18[1] = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  numberOfComponents = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component >= numberOfComponents)
  {
    v20 = 0;
  }

  else
  {
    v12 = objc_loadWeakRetained(&selfCopy->_picker);
    v18[0] = [v12 delegate];
    MEMORY[0x29EDC9740](v12);
    v17 = 0;
    v2 = objc_opt_respondsToSelector();
    if (v2)
    {
      picker = [(UIAccessibilityPickerComponent *)selfCopy picker];
      location = [v18[0] pickerView:? accessibilityAttributedLabelForComponent:?];
      MEMORY[0x29EDC9740](picker);
      if (location)
      {
        v3 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:location];
        v4 = v17;
        v17 = v3;
        MEMORY[0x29EDC9740](v4);
      }

      objc_storeStrong(&location, 0);
    }

    if (!v17 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9 = v18[0];
      picker2 = [(UIAccessibilityPickerComponent *)selfCopy picker];
      v5 = [v9 pickerView:? accessibilityLabelForComponent:?];
      v6 = v17;
      v17 = v5;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](picker2);
    }

    v20 = MEMORY[0x29EDC9748](v17);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(v18, 0);
  }

  v7 = v20;

  return v7;
}

- (id)picker
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 56));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)accessibilityHint
{
  selfCopy = self;
  v14[1] = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  numberOfComponents = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component < numberOfComponents)
  {
    v8 = objc_loadWeakRetained(&selfCopy->_picker);
    v14[0] = [v8 delegate];
    MEMORY[0x29EDC9740](v8);
    v13 = 0;
    if (objc_opt_respondsToSelector())
    {
      location = [v14[0] pickerView:selfCopy accessibilityAttributedHintForComponent:selfCopy->_component];
      if (location)
      {
        v2 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:location];
        v3 = v13;
        v13 = v2;
        MEMORY[0x29EDC9740](v3);
      }

      objc_storeStrong(&location, 0);
    }

    if (!v13 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v4 = [v14[0] pickerView:selfCopy accessibilityHintForComponent:selfCopy->_component];
      v5 = v13;
      v13 = v4;
      MEMORY[0x29EDC9740](v5);
    }

    v16 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v14, 0);
  }

  else
  {
    v16 = 0;
  }

  v6 = v16;

  return v6;
}

- (int64_t)_accessibilityPickerType
{
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  _accessibilityPickerType = [WeakRetained _accessibilityPickerType];
  MEMORY[0x29EDC9740](WeakRetained);
  return _accessibilityPickerType;
}

- (uint64_t)_axIsInDatePickerView
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 56));
    NSClassFromString(&cfstr_Uidatepickervi.isa);
    v3 = objc_opt_isKindOfClass() & 1;
    MEMORY[0x29EDC9740](WeakRetained);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)automationElements
{
  selfCopy = self;
  v31[1] = a2;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  NSClassFromString(&cfstr_Uidatepickervi_1.isa);
  _axIsInDatePickerView = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _axIsInDatePickerView = [(UIAccessibilityPickerComponent *)selfCopy _axIsInDatePickerView];
  }

  *&v2 = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  if (_axIsInDatePickerView)
  {
    v33 = 0;
  }

  else
  {
    v31[0] = [(UIAccessibilityPickerComponent *)selfCopy _accessibilityValueForKey:@"AXCachedChildren", v2];
    v17 = objc_loadWeakRetained(&selfCopy->_picker);
    v16 = [v17 safeValueForKey:@"_tables"];
    v30 = [v16 objectAtIndex:selfCopy->_component];
    MEMORY[0x29EDC9740](v16);
    v29 = [v30 safeValueForKey:{@"_middleTable", MEMORY[0x29EDC9740](v17).n128_f64[0]}];
    v28 = [v29 numberOfRowsInSection:0];
    v27 = 0;
    if ([v31[0] count] == v28)
    {
      v33 = MEMORY[0x29EDC9748](v31[0]);
      v26 = 1;
    }

    else
    {
      v25 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:v28];
      while (v27 < v28)
      {
        v14 = v29;
        v15 = [MEMORY[0x29EDB9FE0] indexPathForRow:v27 inSection:0];
        v24 = [v14 accessibilityCellForRowAtIndexPath:?];
        MEMORY[0x29EDC9740](v15);
        if (objc_opt_respondsToSelector())
        {
          v12 = MEMORY[0x29EDBD7F0];
          title = [v24 title];
          v23 = [v12 axAttributedStringWithString:?];
          *&v3 = MEMORY[0x29EDC9740](title).n128_u64[0];
          [v25 addObject:{v23, v3}];
          objc_storeStrong(&v23, 0);
        }

        else
        {
          NSClassFromString(&cfstr_Uipickertablev.isa);
          if (objc_opt_isKindOfClass())
          {
            v22 = [v24 safeUIViewForKey:@"wrappedView"];
            accessibilityLabel = [v22 accessibilityLabel];
            if (![accessibilityLabel length])
            {
              _accessibleSubviews = [v22 _accessibleSubviews];
              v4 = MEMORY[0x29ED3D9D0]();
              v5 = accessibilityLabel;
              accessibilityLabel = v4;
              MEMORY[0x29EDC9740](v5);
              MEMORY[0x29EDC9740](_accessibleSubviews);
            }

            if (![accessibilityLabel length])
            {
              accessibilityElements = [v22 accessibilityElements];
              v6 = MEMORY[0x29ED3D9D0]();
              v7 = accessibilityLabel;
              accessibilityLabel = v6;
              MEMORY[0x29EDC9740](v7);
              MEMORY[0x29EDC9740](accessibilityElements);
            }

            if (accessibilityLabel)
            {
              v20 = [MEMORY[0x29EDBD7F0] axAttributedStringWithString:accessibilityLabel];
              [v25 addObject:v20];
              objc_storeStrong(&v20, 0);
            }

            objc_storeStrong(&accessibilityLabel, 0);
            objc_storeStrong(&v22, 0);
          }
        }

        objc_storeStrong(&v24, 0);
        ++v27;
      }

      [(UIAccessibilityPickerComponent *)selfCopy _accessibilitySetRetainedValue:v25 forKey:@"AXCachedChildren"];
      v33 = MEMORY[0x29EDC9748](v25);
      v26 = 1;
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(v31, 0);
  }

  v8 = v33;

  return v8;
}

- (int64_t)_accessibilityIndexForPickerString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_picker);
  v10 = [WeakRetained safeValueForKey:@"_tables"];
  v18 = [v10 objectAtIndex:selfCopy->_component];
  MEMORY[0x29EDC9740](v10);
  v17 = [v18 safeValueForKey:{@"_middleTable", MEMORY[0x29EDC9740](WeakRetained).n128_f64[0]}];
  v16 = [v17 numberOfRowsInSection:0];
  for (i = 0; i < v16; ++i)
  {
    v8 = v17;
    v9 = [MEMORY[0x29EDB9FE0] indexPathForRow:i inSection:0];
    v14 = [v8 cellForRowAtIndexPath:?];
    MEMORY[0x29EDC9740](v9);
    if (objc_opt_respondsToSelector())
    {
      title = [v14 title];
      v7 = [title isEqualToString:location[0]];
      MEMORY[0x29EDC9740](title);
      if (v7)
      {
        v21 = i;
        v13 = 1;
        goto LABEL_14;
      }

LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    NSClassFromString(&cfstr_Uipickertablev.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v12 = [v14 safeValueForKey:@"wrappedView"];
    accessibilityLabel = [v12 accessibilityLabel];
    v5 = [accessibilityLabel isEqualToString:location[0]];
    MEMORY[0x29EDC9740](accessibilityLabel);
    if (v5)
    {
      v21 = i;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v12, 0);
    if (!v13)
    {
      goto LABEL_13;
    }

LABEL_14:
    objc_storeStrong(&v14, 0);
    if (v13)
    {
      goto LABEL_16;
    }
  }

  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 1;
LABEL_16:
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v21;
}

- (id)_accessibilityViewForComponent
{
  selfCopy = self;
  if (self)
  {
    v10 = *(selfCopy + 48);
    WeakRetained = objc_loadWeakRetained((selfCopy + 56));
    numberOfComponents = [WeakRetained numberOfComponents];
    MEMORY[0x29EDC9740](WeakRetained);
    if (v10 >= numberOfComponents)
    {
      v15 = 0;
    }

    else
    {
      v4 = objc_loadWeakRetained((selfCopy + 56));
      v5 = [v4 selectedRowInComponent:*(selfCopy + 48)];
      MEMORY[0x29EDC9740](v4);
      v13 = v5;
      v6 = objc_loadWeakRetained((selfCopy + 56));
      v7 = [v6 numberOfRowsInComponent:*(selfCopy + 48)];
      MEMORY[0x29EDC9740](v6);
      v12 = v7;
      if (v13 < 0 || v13 >= v12)
      {
        v15 = 0;
      }

      else
      {
        v3 = objc_loadWeakRetained((selfCopy + 56));
        v11 = [v3 viewForRow:v13 forComponent:*(selfCopy + 48)];
        MEMORY[0x29EDC9740](v3);
        v15 = MEMORY[0x29EDC9748](v11);
        objc_storeStrong(&v11, 0);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v1 = v15;

  return v1;
}

- (id)_accessibilityDateTimePickerValues
{
  v52 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v48[1] = a2;
  v48[0] = [MEMORY[0x29EDB8DE8] array];
  _accessibilityDatePickerComponentType = [(UIAccessibilityPickerComponent *)selfCopy _accessibilityDatePickerComponentType];
  if (!_accessibilityDatePickerComponentType)
  {
    CFRunLoopRunInMode(*MEMORY[0x29EDB8FC0], 0.25, 0);
    _accessibilityDatePickerComponentType = [(UIAccessibilityPickerComponent *)selfCopy _accessibilityDatePickerComponentType];
  }

  _accessibilityViewForComponent = [(UIAccessibilityPickerComponent *)selfCopy _accessibilityViewForComponent];
  v45 = [_accessibilityViewForComponent _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickervi.isa)];
  v38[1] = MEMORY[0x29EDCA5F8];
  v39 = -1073741824;
  v40 = 0;
  v41 = __68__UIAccessibilityPickerComponent__accessibilityDateTimePickerValues__block_invoke;
  v42 = &__block_descriptor_40_e24___NSString_32__0_8q16q24l;
  v43 = _accessibilityDatePickerComponentType;
  v44 = MEMORY[0x29ED3E4C0]();
  v38[0] = [v45 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v37 = [v45 safeValueForKey:@"_mode"];
  v36 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x20000000;
  v34 = 32;
  v35 = 0;
  location = AXLogUIA();
  v29 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_4_0(v51, _accessibilityDatePickerComponentType);
    _os_log_impl(&dword_29C4D6000, location, v29, "Date picker unit: %d", v51, 8u);
  }

  objc_storeStrong(&location, 0);
  if (_accessibilityDatePickerComponentType == 2 || _accessibilityDatePickerComponentType == 4)
  {
    goto LABEL_26;
  }

  if (_accessibilityDatePickerComponentType == 8)
  {
    v32[3] = 12;
    goto LABEL_27;
  }

  if (_accessibilityDatePickerComponentType == 16)
  {
    v32[3] = 31;
    goto LABEL_27;
  }

  if (_accessibilityDatePickerComponentType == 32)
  {
    v10 = [v37 safeValueForKey:@"is24Hour"];
    bOOLValue = [v10 BOOLValue];
    MEMORY[0x29EDC9740](v10);
    v28 = bOOLValue;
    if (bOOLValue)
    {
      v2 = 24;
    }

    else
    {
      v2 = 12;
    }

    v32[3] = v2;
    goto LABEL_27;
  }

  if (_accessibilityDatePickerComponentType == 64)
  {
    if (v38[0])
    {
      minuteInterval = [v38[0] minuteInterval];
    }

    else
    {
      minuteInterval = 60;
    }

    v32[3] = 60 / minuteInterval;
    goto LABEL_27;
  }

  if (_accessibilityDatePickerComponentType == 128)
  {
    v32[3] = 60;
    goto LABEL_27;
  }

  if (_accessibilityDatePickerComponentType == 536)
  {
LABEL_26:
    v22 = MEMORY[0x29EDCA5F8];
    v23 = -1073741824;
    v24 = 0;
    v25 = __68__UIAccessibilityPickerComponent__accessibilityDateTimePickerValues__block_invoke_349;
    v26 = &unk_29F30CFE8;
    v27[1] = &v31;
    v27[0] = MEMORY[0x29EDC9748](v37);
    v27[2] = _accessibilityDatePickerComponentType;
    AXPerformSafeBlock();
    objc_storeStrong(v27, 0);
    goto LABEL_27;
  }

  if (_accessibilityDatePickerComponentType == 0x10000)
  {
    v32[3] = 2;
  }

LABEL_27:
  if (_accessibilityDatePickerComponentType == 536)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_picker);
    v7 = [WeakRetained selectedRowInComponent:selfCopy->_component];
    MEMORY[0x29EDC9740](WeakRetained);
    v21 = v7;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32[3] = 100;
    }

    else
    {
      v20 = 0;
      v19 = v21 - 50;
      if (v21 - 50 <= 0)
      {
        v6 = v20;
      }

      else
      {
        v6 = v19;
      }

      v18 = v6;
      v36 = v6;
      v17 = v32[3];
      v16 = (v21 + 50);
      if (v17 >= v21 + 50)
      {
        v5 = v16;
      }

      else
      {
        v5 = v17;
      }

      oslog[1] = v5;
      v32[3] = v5;
    }
  }

  oslog[0] = AXLogUIA();
  v14 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_2_4_0_4_0(v50, v36, v32[3]);
    _os_log_impl(&dword_29C4D6000, oslog[0], v14, "Date picker start %d: end %d", v50, 0xEu);
  }

  objc_storeStrong(oslog, 0);
  for (i = v36; i < v32[3]; ++i)
  {
    v12 = (*(v44 + 2))(v44, v37, i, selfCopy->_component);
    if (!v12)
    {
      _AXAssert();
    }

    if ([v12 length])
    {
      [v48[0] addObject:v12];
    }

    if (_accessibilityDatePickerComponentType == 4 && v32[3] > 1000 && i != v32[3] - 1)
    {
      i = v32[3] - 2;
    }

    objc_storeStrong(&v12, 0);
  }

  v4 = MEMORY[0x29EDC9748](v48[0]);
  _Block_object_dispose(&v31, 8);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(v38, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&_accessibilityViewForComponent, 0);
  objc_storeStrong(v48, 0);

  return v4;
}

id __68__UIAccessibilityPickerComponent__accessibilityDateTimePickerValues__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = a3;
  v17 = a4;
  v16[1] = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 838860800;
  v13 = 48;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16[0] = 0;
  v9[0] = MEMORY[0x29EDC9748](location[0]);
  v9[2] = a1[4];
  v9[3] = v18;
  v9[1] = &v10;
  v9[4] = v17;
  AXPerformSafeBlock();
  v5 = MEMORY[0x29EDC9748](v11[5]);
  objc_storeStrong(v9, 0);
  _Block_object_dispose(&v10, 8);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);

  return v5;
}

double __68__UIAccessibilityPickerComponent__accessibilityDateTimePickerValues__block_invoke_336(uint64_t a1)
{
  v10[2] = a1;
  v10[1] = a1;
  NSClassFromString(&cfstr_Uidatepickermo_0.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 48) == 536)
  {
    v10[0] = [*(a1 + 32) dateForRow:*(a1 + 56) inCalendarUnit:*(a1 + 48)];
    v9 = [*(a1 + 32) dateFormatterForCalendarUnit:*(a1 + 48)];
    v1 = [v9 stringFromDate:v10[0]];
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = v1;
    MEMORY[0x29EDC9740](v3);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(v10, 0);
  }

  else
  {
    v5 = [*(a1 + 32) titleForRow:*(a1 + 56) inComponent:*(a1 + 64)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  }

  return result;
}

uint64_t __68__UIAccessibilityPickerComponent__accessibilityDateTimePickerValues__block_invoke_349(uint64_t a1)
{
  result = [*(a1 + 32) numberOfRowsForCalendarUnit:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_accessibilityDatePickerComponentType
{
  _accessibilityViewForComponent = [(UIAccessibilityPickerComponent *)self _accessibilityViewForComponent];
  _accessibilityDatePickerComponentType = [_accessibilityViewForComponent _accessibilityDatePickerComponentType];
  MEMORY[0x29EDC9740](_accessibilityViewForComponent);
  return _accessibilityDatePickerComponentType;
}

- (double)_accessibilityNumberValue
{
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  numberOfComponents = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component >= numberOfComponents)
  {
    return 0.0;
  }

  v3 = objc_loadWeakRetained(&self->_picker);
  v4 = [v3 selectedRowInComponent:self->_component];
  MEMORY[0x29EDC9740](v3);
  v5 = objc_loadWeakRetained(&self->_picker);
  v6 = [v5 numberOfRowsInComponent:self->_component];
  MEMORY[0x29EDC9740](v5);
  if (v4 < 0 || v4 >= v6)
  {
    return 0.0;
  }

  else
  {
    return v4;
  }
}

- (id)accessibilityValue
{
  selfCopy = self;
  v66 = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  numberOfComponents = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component >= numberOfComponents)
  {
    v68 = 0;
  }

  else
  {
    v42 = objc_loadWeakRetained(&selfCopy->_picker);
    v43 = [v42 selectedRowInComponent:selfCopy->_component];
    MEMORY[0x29EDC9740](v42);
    v65 = v43;
    v44 = objc_loadWeakRetained(&selfCopy->_picker);
    v45 = [v44 numberOfRowsInComponent:selfCopy->_component];
    MEMORY[0x29EDC9740](v44);
    v64 = v45;
    if (v65 < 0 || v65 >= v64)
    {
      v68 = 0;
    }

    else
    {
      v41 = objc_loadWeakRetained(&selfCopy->_picker);
      v63 = [v41 viewForRow:v65 forComponent:selfCopy->_component];
      accessibilityLabel = [v63 accessibilityLabel];
      if ([accessibilityLabel length])
      {
        accessibilityLanguage = [v63 accessibilityLanguage];
        if ([accessibilityLanguage length])
        {
          v15 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:accessibilityLabel];
          v16 = accessibilityLabel;
          accessibilityLabel = v15;
          [v15 setAttribute:accessibilityLanguage forKey:{*MEMORY[0x29EDC7F30], MEMORY[0x29EDC9740](v16).n128_f64[0]}];
        }

        objc_storeStrong(&accessibilityLanguage, 0);
      }

      else
      {
        v39 = objc_loadWeakRetained(&selfCopy->_picker);
        delegate = [v39 delegate];
        v40 = objc_opt_respondsToSelector();
        MEMORY[0x29EDC9740](delegate);
        *&v2 = MEMORY[0x29EDC9740](v39).n128_u64[0];
        if (v40)
        {
          v35 = objc_loadWeakRetained(&selfCopy->_picker);
          delegate2 = [v35 delegate];
          v33 = objc_loadWeakRetained(&selfCopy->_picker);
          location = [delegate2 pickerView:? attributedTitleForRow:? forComponent:?];
          MEMORY[0x29EDC9740](v33);
          MEMORY[0x29EDC9740](delegate2);
          accessibilityLabel2 = [location accessibilityLabel];
          v37 = [accessibilityLabel2 length];
          *&v3 = MEMORY[0x29EDC9740](accessibilityLabel2).n128_u64[0];
          if (v37)
          {
            v62AccessibilityLabel = [accessibilityLabel accessibilityLabel];
          }

          else
          {
            v62AccessibilityLabel = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:location];
          }

          v5 = accessibilityLabel;
          accessibilityLabel = v62AccessibilityLabel;
          MEMORY[0x29EDC9740](v5);
          objc_storeStrong(&location, 0);
        }

        v59 = 0;
        v57 = 0;
        v32 = 0;
        if (![accessibilityLabel length])
        {
          v60 = objc_loadWeakRetained(&selfCopy->_picker);
          v59 = 1;
          delegate3 = [v60 delegate];
          v57 = 1;
          v32 = objc_opt_respondsToSelector();
        }

        if (v57)
        {
          MEMORY[0x29EDC9740](delegate3);
        }

        if (v59)
        {
          MEMORY[0x29EDC9740](v60);
        }

        if (v32)
        {
          v31 = objc_loadWeakRetained(&selfCopy->_picker);
          delegate4 = [v31 delegate];
          v29 = objc_loadWeakRetained(&selfCopy->_picker);
          v6 = [delegate4 pickerView:? titleForRow:? forComponent:?];
          v7 = accessibilityLabel;
          accessibilityLabel = v6;
          MEMORY[0x29EDC9740](v7);
          MEMORY[0x29EDC9740](v29);
          MEMORY[0x29EDC9740](delegate4);
          *&v8 = MEMORY[0x29EDC9740](v31).n128_u64[0];
          v62AccessibilityLabel2 = [accessibilityLabel accessibilityLabel];
          if ([v62AccessibilityLabel2 length])
          {
            objc_storeStrong(&accessibilityLabel, v62AccessibilityLabel2);
          }

          objc_storeStrong(&v62AccessibilityLabel2, 0);
        }

        v54 = 0;
        v52 = 0;
        v28 = 0;
        if (![accessibilityLabel length])
        {
          v55 = objc_loadWeakRetained(&selfCopy->_picker);
          v54 = 1;
          delegate5 = [v55 delegate];
          v52 = 1;
          v28 = objc_opt_respondsToSelector();
        }

        if (v52)
        {
          MEMORY[0x29EDC9740](delegate5);
        }

        if (v54)
        {
          MEMORY[0x29EDC9740](v55);
        }

        if (v28)
        {
          v27 = objc_loadWeakRetained(&selfCopy->_picker);
          delegate6 = [v27 delegate];
          v25 = objc_loadWeakRetained(&selfCopy->_picker);
          v51 = [delegate6 pickerView:? viewForRow:? forComponent:? reusingView:?];
          MEMORY[0x29EDC9740](v25);
          MEMORY[0x29EDC9740](delegate6);
          accessibilityLabel3 = [v51 accessibilityLabel];
          v10 = accessibilityLabel;
          accessibilityLabel = accessibilityLabel3;
          accessibilityLanguage2 = [v51 accessibilityLanguage];
          if ([accessibilityLanguage2 length])
          {
            v11 = objc_alloc(MEMORY[0x29EDBD7E8]);
            v12 = [v11 initWithString:accessibilityLabel];
            v13 = accessibilityLabel;
            accessibilityLabel = v12;
            *&v14 = MEMORY[0x29EDC9740](v13).n128_u64[0];
            [accessibilityLabel setAttribute:accessibilityLanguage2 forKey:{*MEMORY[0x29EDC7F30], v14}];
          }

          objc_storeStrong(&accessibilityLanguage2, 0);
          objc_storeStrong(&v51, 0);
        }
      }

      if (![accessibilityLabel length])
      {
        _accessibleSubviews = [v63 _accessibleSubviews];
        v17 = MEMORY[0x29ED3D9D0]();
        v18 = accessibilityLabel;
        accessibilityLabel = v17;
        MEMORY[0x29EDC9740](v18);
        MEMORY[0x29EDC9740](_accessibleSubviews);
      }

      if (![accessibilityLabel length])
      {
        accessibilityElements = [v63 accessibilityElements];
        v19 = MEMORY[0x29ED3D9D0]();
        v20 = accessibilityLabel;
        accessibilityLabel = v19;
        MEMORY[0x29EDC9740](v20);
        MEMORY[0x29EDC9740](accessibilityElements);
      }

      v68 = MEMORY[0x29EDC9748](accessibilityLabel);
      objc_storeStrong(&accessibilityLabel, 0);
      objc_storeStrong(&v63, 0);
    }
  }

  v21 = v68;

  return v21;
}

- (_NSRange)accessibilityRowRange
{
  selfCopy = self;
  v54 = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  numberOfComponents = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component < numberOfComponents)
  {
    v10 = objc_loadWeakRetained(&selfCopy->_picker);
    v11 = [v10 selectedRowInComponent:selfCopy->_component];
    MEMORY[0x29EDC9740](v10);
    v53 = v11;
    v12 = objc_loadWeakRetained(&selfCopy->_picker);
    v13 = [v12 numberOfRowsInComponent:selfCopy->_component];
    MEMORY[0x29EDC9740](v12);
    v52 = v13;
    if (v11 < 0 || v53 >= v52)
    {
      v56 = 0x7FFFFFFFLL;
      v57 = 0;
      goto LABEL_47;
    }

    v9 = objc_loadWeakRetained(&selfCopy->_picker);
    v51 = [v9 viewForRow:v53 forComponent:selfCopy->_component];
    MEMORY[0x29EDC9740](v9);
    NSClassFromString(&cfstr_Uidatepickerco.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSClassFromString(&cfstr_Uidatepickerwe.isa);
      if (objc_opt_isKindOfClass())
      {
        v67 = 0x7FFFFFFFLL;
        v66 = 0;
        v68 = 0x7FFFFFFFLL;
        v69 = 0;
        v56 = 0x7FFFFFFFLL;
        v57 = 0;
      }

      else
      {
        v63 = v53;
        v62 = v52;
        v64 = v53;
        v65 = v52;
        v56 = v53;
        v57 = v52;
      }

      v29 = 1;
      goto LABEL_46;
    }

    v50 = [v51 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickervi.isa)];
    v49 = [v50 safeValueForKey:@"_mode"];
    v48 = 0uLL;
    v41 = 0;
    v42 = &v41;
    v43 = 0x10000000;
    v44 = 48;
    v45 = &unk_29C6A1FE6;
    v46 = 0;
    v47 = 0;
    v35[3] = MEMORY[0x29EDCA5F8];
    v36 = -1073741824;
    v37 = 0;
    v38 = __55__UIAccessibilityPickerComponent_accessibilityRowRange__block_invoke;
    v39 = &unk_29F30CC70;
    v40[1] = &v41;
    v40[0] = MEMORY[0x29EDC9748](v49);
    AXPerformSafeBlock();
    v48 = *(v42 + 2);
    objc_storeStrong(v40, 0);
    _Block_object_dispose(&v41, 8);
    v35[0] = [v50 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    v33 = 0;
    v8 = [v49 safeValueForKey:@"_selectedDateComponents"];
    v32 = __UIAccessibilitySafeClass();
    MEMORY[0x29EDC9740](v8);
    v31 = MEMORY[0x29EDC9748](v32);
    objc_storeStrong(&v32, 0);
    v34 = v31;
    v6 = objc_loadWeakRetained(&selfCopy->_picker);
    _accessibilityPickerType = [v6 _accessibilityPickerType];
    *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v30 = _accessibilityPickerType;
    switch(_accessibilityPickerType)
    {
      case 2:
        if (!selfCopy->_component)
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x20000000;
          v22 = 32;
          v23 = 0;
          v18[1] = &v19;
          v18[0] = MEMORY[0x29EDC9748](v49);
          AXPerformSafeBlock();
          v17 = v20[3];
          objc_storeStrong(v18, 0);
          _Block_object_dispose(&v19, 8);
          v24 = v17;
          v75 = v53;
          v74 = v17;
          v76 = v53;
          v77 = v17;
          v56 = v53;
          v57 = v17;
          v29 = 1;
          goto LABEL_40;
        }

        if (selfCopy->_component == 1)
        {
          v71 = v53 % 60;
          v70 = 60;
          v72 = v53 % 60;
          v73 = 60;
          v56 = v53 % 60;
          v57 = 60;
          v29 = 1;
          goto LABEL_40;
        }

        break;
      case 3:
        switch(selfCopy->_component)
        {
          case 0uLL:
            v115 = v53 % *(&v48 + 1);
            v114 = *(&v48 + 1);
            v116 = v53 % *(&v48 + 1);
            v117 = *(&v48 + 1);
            v56 = v53 % *(&v48 + 1);
            v57 = *(&v48 + 1);
            v29 = 1;
            goto LABEL_40;
          case 1uLL:
            v111 = v53 % 60;
            v110 = 60;
            v112 = v53 % 60;
            v113 = 60;
            v56 = v53 % 60;
            v57 = 60;
            v29 = 1;
            goto LABEL_40;
          case 2uLL:
            v107 = v53;
            v106 = v52;
            v108 = v53;
            v109 = v52;
            v56 = v53;
            v57 = v52;
            v29 = 1;
            goto LABEL_40;
        }

        break;
      case 4:
        switch(selfCopy->_component)
        {
          case 0uLL:
            v91 = 0x7FFFFFFFLL;
            v90 = 0;
            v92 = 0x7FFFFFFFLL;
            v93 = 0;
            v56 = 0x7FFFFFFFLL;
            v57 = 0;
            v29 = 1;
            goto LABEL_40;
          case 1uLL:
            v87 = v53 % *(&v48 + 1);
            v86 = *(&v48 + 1);
            v88 = v53 % *(&v48 + 1);
            v89 = *(&v48 + 1);
            v56 = v53 % *(&v48 + 1);
            v57 = *(&v48 + 1);
            v29 = 1;
            goto LABEL_40;
          case 2uLL:
            v83 = v53 % 60;
            v82 = 60;
            v84 = v53 % 60;
            v85 = 60;
            v56 = v53 % 60;
            v57 = 60;
            v29 = 1;
            goto LABEL_40;
          case 3uLL:
            v79 = v53;
            v78 = v52;
            v80 = v53;
            v81 = v52;
            v56 = v53;
            v57 = v52;
            v29 = 1;
            goto LABEL_40;
        }

        break;
      case 5:
        switch(selfCopy->_component)
        {
          case 0uLL:
            v103 = v53 % 12;
            v102 = 12;
            v104 = v53 % 12;
            v105 = 12;
            v56 = v53 % 12;
            v57 = 12;
            v29 = 1;
            goto LABEL_40;
          case 1uLL:
            calendar = [v35[0] calendar];
            v27 = [calendar dateFromComponents:v34];
            v25 = [calendar rangeOfUnit:16 inUnit:8 forDate:v27];
            v26 = v3;
            v99 = v53 % 31;
            v98 = v3;
            v100 = v53 % 31;
            v101 = v3;
            v56 = v53 % 31;
            v57 = v3;
            v29 = 1;
            objc_storeStrong(&v27, 0);
            objc_storeStrong(&calendar, 0);
            goto LABEL_40;
          case 2uLL:
            v95 = 0x7FFFFFFFLL;
            v94 = 0;
            v96 = 0x7FFFFFFFLL;
            v97 = 0;
            v56 = 0x7FFFFFFFLL;
            v57 = 0;
            v29 = 1;
            goto LABEL_40;
        }

        break;
    }

    v29 = 0;
LABEL_40:
    objc_storeStrong(&v34, 0);
    objc_storeStrong(v35, 0);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v50, 0);
    if (!v29)
    {
      v59 = 0x7FFFFFFFLL;
      v58 = 0;
      v60 = 0x7FFFFFFFLL;
      v61 = 0;
      v56 = 0x7FFFFFFFLL;
      v57 = 0;
      v29 = 1;
    }

LABEL_46:
    objc_storeStrong(&v51, 0);
    goto LABEL_47;
  }

  v56 = 0x7FFFFFFFLL;
  v57 = 0;
LABEL_47:
  v4 = v56;
  v5 = v57;
  result.length = v5;
  result.location = v4;
  return result;
}

__n128 __55__UIAccessibilityPickerComponent_accessibilityRowRange__block_invoke(uint64_t a1)
{
  v4.n128_u64[0] = [*(a1 + 32) rangeForCalendarUnit:32];
  v4.n128_u64[1] = v1;
  result = v4;
  *(*(*(a1 + 40) + 8) + 32) = v4;
  return result;
}

uint64_t __55__UIAccessibilityPickerComponent_accessibilityRowRange__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) numberOfRowsForCalendarUnit:32];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  v40 = a2;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  accessibilityUserDefinedFrame = [WeakRetained accessibilityUserDefinedFrame];
  v38 = 0;
  v29 = 0;
  if (accessibilityUserDefinedFrame)
  {
    v39 = objc_loadWeakRetained(&selfCopy->_picker);
    v38 = 1;
    v29 = [v39 numberOfComponents] == 1;
  }

  if (v38)
  {
    MEMORY[0x29EDC9740](v39);
  }

  MEMORY[0x29EDC9740](accessibilityUserDefinedFrame);
  MEMORY[0x29EDC9740](WeakRetained);
  if (v29)
  {
    v26 = objc_loadWeakRetained(&selfCopy->_picker);
    accessibilityUserDefinedFrame2 = [v26 accessibilityUserDefinedFrame];
    [accessibilityUserDefinedFrame2 CGRectValue];
    *&v42 = v2;
    *(&v42 + 1) = v3;
    *&v43 = v4;
    *(&v43 + 1) = v5;
    MEMORY[0x29EDC9740](accessibilityUserDefinedFrame2);
    MEMORY[0x29EDC9740](v26);
  }

  else
  {
    component = selfCopy->_component;
    v22 = objc_loadWeakRetained(&selfCopy->_picker);
    numberOfComponents = [v22 numberOfComponents];
    MEMORY[0x29EDC9740](v22);
    if (component < numberOfComponents)
    {
      v20 = objc_loadWeakRetained(&selfCopy->_picker);
      v37 = [v20 safeValueForKey:@"_tables"];
      *&v6 = MEMORY[0x29EDC9740](v20).n128_u64[0];
      v21 = selfCopy->_component;
      if (v21 < [v37 count])
      {
        v35 = [v37 objectAtIndex:selfCopy->_component];
        v34.origin = *MEMORY[0x29EDB90E0];
        v34.size = *(MEMORY[0x29EDB90E0] + 16);
        NSClassFromString(&cfstr_Uipickercolumn.isa);
        if (objc_opt_isKindOfClass())
        {
          v19 = [(UIView *)v35 safeValueForKey:@"_tableFrame"];
          [v19 rectValue];
          v32.x = v7;
          v32.y = v8;
          v33.width = v9;
          v33.height = v10;
          v34.origin = v32;
          v34.size = v33;
          MEMORY[0x29EDC9740](v19);
        }

        else
        {
          NSClassFromString(&cfstr_Uipickertablev_0.isa);
          if (objc_opt_isKindOfClass())
          {
            [(UIView *)v35 bounds];
            v30.x = v11;
            v30.y = v12;
            v31.width = v13;
            v31.height = v14;
            v34.origin = v30;
            v34.size = v31;
          }
        }

        v44 = UIAccessibilityConvertFrameToScreenCoordinates(v34, v35);
        *&v42 = v44.origin.x;
        *(&v42 + 1) = *&v44.origin.y;
        *&v43 = v44.size.width;
        *(&v43 + 1) = *&v44.size.height;
        v36 = 1;
        objc_storeStrong(&v35, 0);
      }

      else
      {
        v42 = *MEMORY[0x29EDB90E0];
        v43 = *(MEMORY[0x29EDB90E0] + 16);
        v36 = 1;
      }

      objc_storeStrong(&v37, 0);
    }

    else
    {
      v42 = *MEMORY[0x29EDB90E0];
      v43 = *(MEMORY[0x29EDB90E0] + 16);
    }
  }

  v16 = *(&v42 + 1);
  v15 = *&v42;
  v18 = *(&v43 + 1);
  v17 = *&v43;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_accessibilityMoveSelection:(uint64_t)selection
{
  selectionCopy = selection;
  v34 = a2;
  if (selection)
  {
    v22 = *(selectionCopy + 48);
    WeakRetained = objc_loadWeakRetained((selectionCopy + 56));
    numberOfComponents = [WeakRetained numberOfComponents];
    MEMORY[0x29EDC9740](WeakRetained);
    if (v22 < numberOfComponents)
    {
      v16 = objc_loadWeakRetained((selectionCopy + 56));
      v17 = [v16 selectedRowInComponent:*(selectionCopy + 48)];
      MEMORY[0x29EDC9740](v16);
      v33 = v17 + v34;
      v18 = objc_loadWeakRetained((selectionCopy + 56));
      v19 = [v18 numberOfRowsInComponent:*(selectionCopy + 48)];
      MEMORY[0x29EDC9740](v18);
      if (v17 + v34 < v19)
      {
        if (v33 < 0)
        {
          v33 = 0;
        }
      }

      else
      {
        v15 = objc_loadWeakRetained((selectionCopy + 56));
        v33 = [v15 numberOfRowsInComponent:*(selectionCopy + 48)] - 1;
        MEMORY[0x29EDC9740](v15);
      }

      bOOLValue = 1;
      v14 = objc_loadWeakRetained((selectionCopy + 56));
      v31 = [v14 viewForRow:v33 forComponent:*(selectionCopy + 48)];
      MEMORY[0x29EDC9740](v14);
      if (v31)
      {
        NSClassFromString(&cfstr_Uidatepickerco.isa);
        if (objc_opt_isKindOfClass())
        {
          v13 = [v31 safeValueForKey:@"titleLabel"];
          v12 = [v13 safeValueForKey:@"isEnabled"];
          bOOLValue = [v12 BOOLValue];
          MEMORY[0x29EDC9740](v12);
          MEMORY[0x29EDC9740](v13);
        }
      }

      if (bOOLValue)
      {
        if (v34 > 0)
        {
          while (1)
          {
            v9 = objc_loadWeakRetained((selectionCopy + 56));
            v10 = 0;
            if (v33 < [v9 numberOfRowsInComponent:*(selectionCopy + 48)] - 1)
            {
              v10 = [(UIAccessibilityPickerComponent *)selectionCopy _isRowDisabledInWebKit:v33];
            }

            MEMORY[0x29EDC9740](v9);
            if ((v10 & 1) == 0)
            {
              break;
            }

            ++v33;
          }
        }
      }

      else if (v34 < 0 && v33 > 0)
      {
        --v33;
      }

      else
      {
        v29 = 0;
        v11 = 0;
        if (v34 > 0)
        {
          v30 = objc_loadWeakRetained((selectionCopy + 56));
          v29 = 1;
          v11 = v33 < [v30 numberOfRowsInComponent:*(selectionCopy + 48)];
        }

        if (v29)
        {
          MEMORY[0x29EDC9740](v30);
        }

        if (v11)
        {
          ++v33;
        }
      }

      v6 = objc_loadWeakRetained((selectionCopy + 56));
      v5 = [v6 safeValueForKey:@"_tables"];
      v28 = [v5 objectAtIndex:*(selectionCopy + 48)];
      MEMORY[0x29EDC9740](v5);
      *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      v27 = [v28 safeValueForKey:{@"_middleTable", v2}];
      v7 = [v27 safeValueForKey:@"_contentOffsetAnimationDuration"];
      [v7 doubleValue];
      v8 = v3;
      MEMORY[0x29EDC9740](v7);
      v26 = v8;
      v23 = MEMORY[0x29EDC9748](v27);
      v24 = MEMORY[0x29EDC9748](selectionCopy);
      v25[0] = MEMORY[0x29EDC9748](v28);
      v25[1] = v33;
      v25[2] = v26;
      AXPerformSafeBlock();
      v4 = [v27 safeValueForKey:@"_scrollingFinished"];
      objc_storeStrong(v25, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v31, 0);
    }
  }
}

- (uint64_t)_isRowDisabledInWebKit:(uint64_t)kit
{
  kitCopy = kit;
  v20 = a2;
  if (kit)
  {
    WeakRetained = objc_loadWeakRetained((kitCopy + 56));
    v14 = [WeakRetained numberOfRowsInComponent:*(kitCopy + 48)];
    MEMORY[0x29EDC9740](WeakRetained);
    if (v20 < v14)
    {
      v11 = objc_loadWeakRetained((kitCopy + 56));
      NSClassFromString(&cfstr_Wkselectsingle.isa);
      v18 = 0;
      LOBYTE(v12) = 0;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_loadWeakRetained((kitCopy + 56));
        v18 = 1;
        NSClassFromString(&cfstr_Uiwebselectsin_0.isa);
        v12 = objc_opt_isKindOfClass() ^ 1;
      }

      if (v18)
      {
        MEMORY[0x29EDC9740](v19);
      }

      MEMORY[0x29EDC9740](v11);
      if (v12)
      {
        v22 = 0;
      }

      else
      {
        v9 = objc_loadWeakRetained((kitCopy + 56));
        delegate = [v9 delegate];
        v10 = objc_opt_respondsToSelector();
        MEMORY[0x29EDC9740](delegate);
        MEMORY[0x29EDC9740](v9);
        if (v10)
        {
          v7 = objc_loadWeakRetained((kitCopy + 56));
          delegate2 = [v7 delegate];
          v5 = objc_loadWeakRetained((kitCopy + 56));
          v17 = [delegate2 pickerView:? attributedTitleForRow:? forComponent:?];
          MEMORY[0x29EDC9740](v5);
          MEMORY[0x29EDC9740](delegate2);
          if ([v17 length])
          {
            location = [v17 attribute:*MEMORY[0x29EDC7640] atIndex:0 effectiveRange:0];
            if (location && ([location alphaComponent], v2 > 0.0) && (objc_msgSend(location, "alphaComponent"), v3 < 1.0))
            {
              v22 = 1;
              v16 = 1;
            }

            else
            {
              v22 = 0;
              v16 = 1;
            }

            objc_storeStrong(&location, 0);
          }

          else
          {
            v22 = 0;
            v16 = 1;
          }

          objc_storeStrong(&v17, 0);
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t __62__UIAccessibilityPickerComponent__accessibilityMoveSelection___block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  [*(a1 + 32) _setContentOffsetAnimationDuration:0.01];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
  v7 = 0;
  isKindOfClass = 1;
  if (([WeakRetained safeBoolForKey:@"allowsMultipleSelection"] & 1) == 0)
  {
    v8 = objc_loadWeakRetained((*(a1 + 40) + 56));
    v7 = 1;
    NSClassFromString(&cfstr_Wkmultiplesele.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](WeakRetained);
  if (isKindOfClass)
  {
    v6[0] = MEMORY[0x29EDC9748](*(a1 + 48));
    v6[1] = *(a1 + 56);
    AXPerformSafeBlock();
    objc_storeStrong(v6, 0);
  }

  else
  {
    v2 = objc_loadWeakRetained((*(a1 + 40) + 56));
    [v2 _selectRow:*(a1 + 56) inComponent:*(*(a1 + 40) + 48) animated:1 notify:1];
    MEMORY[0x29EDC9740](v2);
  }

  return [*(a1 + 32) _setContentOffsetAnimationDuration:*(a1 + 64)];
}

double __62__UIAccessibilityPickerComponent__accessibilityMoveSelection___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x29EDB9FE0] indexPathForRow:*(a1 + 40) inSection:0];
  [v2 _scrollRowAtIndexPathToSelectionBar:? animated:?];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 3)
  {
    [(UIAccessibilityPickerComponent *)self _accessibilityMoveSelection:?];
  }

  else if (scroll == 4)
  {
    [(UIAccessibilityPickerComponent *)self _accessibilityMoveSelection:?];
  }

  return 0;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v31 = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  numberOfComponents = [WeakRetained numberOfComponents];
  *&v2 = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  if (component >= numberOfComponents)
  {
    return 0;
  }

  v29.receiver = selfCopy;
  v29.super_class = UIAccessibilityPickerComponent;
  accessibilityTraits = [(UIAccessibilityPickerComponent *)&v29 accessibilityTraits];
  accessibilityTraits |= *MEMORY[0x29EDC7548] | *MEMORY[0x29EDC7F60];
  v16 = objc_loadWeakRetained(&selfCopy->_picker);
  v17 = [v16 selectedRowInComponent:selfCopy->_component];
  MEMORY[0x29EDC9740](v16);
  v28 = v17;
  v18 = objc_loadWeakRetained(&selfCopy->_picker);
  v19 = [v18 numberOfRowsInComponent:selfCopy->_component];
  MEMORY[0x29EDC9740](v18);
  v27 = v19;
  if (v28 < 0 || v28 >= v27)
  {
    return accessibilityTraits;
  }

  v14 = objc_loadWeakRetained(&selfCopy->_picker);
  delegate = [v14 delegate];
  v15 = objc_opt_respondsToSelector();
  MEMORY[0x29EDC9740](delegate);
  MEMORY[0x29EDC9740](v14);
  if (v15)
  {
    v12 = objc_loadWeakRetained(&selfCopy->_picker);
    delegate2 = [v12 delegate];
    v10 = objc_loadWeakRetained(&selfCopy->_picker);
    v26 = [delegate2 pickerView:? viewForRow:? forComponent:? reusingView:?];
    MEMORY[0x29EDC9740](v10);
    MEMORY[0x29EDC9740](delegate2);
    MEMORY[0x29EDC9740](v12);
    if (([(UIAccessibilityPickerComponent *)selfCopy _axIsInDatePickerView]& 1) != 0)
    {
      v7 = objc_loadWeakRetained(&selfCopy->_picker);
      v25 = [v7 safeValueForKey:@"_mode"];
      MEMORY[0x29EDC9740](v7);
      v8 = [objc_opt_class() safeValueForKey:@"datePickerMode"];
      integerValue = [v8 integerValue];
      *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
      v24 = integerValue;
      if (integerValue == 1 || v24 == 2)
      {
        v23 = [v25 safeValueForKey:{@"todayTextColor", v3}];
        [v26 _accessibilitySetRetainedValue:v23 forKey:@"SelectedColor"];
        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v25, 0);
    }

    accessibilityTraits2 = [v26 accessibilityTraits];
    accessibilityTraits |= accessibilityTraits2;
    objc_storeStrong(v6, 0);
  }

  return accessibilityTraits;
}

- (id)_axSpeechInputLabelForDateCalendarUnit:(uint64_t)unit
{
  unitCopy = unit;
  v7 = a2;
  if (unit)
  {
    v6 = 0;
    if (v7 == 4 || v7 == 8 || v7 == 16 || v7 == 32 || v7 == 64 || v7 == 128 || v7 == 536 || v7 == 0x10000)
    {
      v2 = accessibilityUIKitLocalizedString();
      v3 = v6;
      v6 = v2;
      MEMORY[0x29EDC9740](v3);
    }

    else
    {
      _AXAssert();
    }

    v9 = MEMORY[0x29EDC9748](v6);
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v9 = 0;
  }

  v4 = v9;

  return v4;
}

- (id)_axSpeechInputLabelForTimeIntervalCalendarUnit:(uint64_t)unit
{
  unitCopy = unit;
  v7 = a2;
  if (unit)
  {
    v6 = 0;
    if (v7 == 32 || v7 == 64 || v7 == 128)
    {
      v2 = accessibilityUIKitLocalizedString();
      v3 = v6;
      v6 = v2;
      MEMORY[0x29EDC9740](v3);
    }

    else
    {
      _AXAssert();
    }

    v9 = MEMORY[0x29EDC9748](v6);
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v9 = 0;
  }

  v4 = v9;

  return v4;
}

- (id)accessibilityUserInputLabels
{
  selfCopy = self;
  v48[1] = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  numberOfComponents = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component >= numberOfComponents)
  {
    v50 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
  }

  else
  {
    v48[0] = 0;
    v40 = objc_loadWeakRetained(&selfCopy->_picker);
    delegate = [v40 delegate];
    MEMORY[0x29EDC9740](v40);
    v2 = objc_opt_respondsToSelector();
    if (v2)
    {
      picker = [(UIAccessibilityPickerComponent *)selfCopy picker];
      location = [delegate pickerView:? accessibilityAttributedUserInputLabelsForComponent:?];
      if ([location count])
      {
        v3 = [location ax_mappedArrayUsingBlock:&__block_literal_global_12];
        v4 = v48[0];
        v48[0] = v3;
        MEMORY[0x29EDC9740](v4);
      }

      objc_storeStrong(&location, 0);
    }

    if (!v48[0] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v37 = delegate;
      picker2 = [(UIAccessibilityPickerComponent *)selfCopy picker];
      v5 = [v37 pickerView:? accessibilityUserInputLabelsForComponent:?];
      v6 = v48[0];
      v48[0] = v5;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](picker2);
    }

    if (![v48[0] count])
    {
      accessibilityLabel = [(UIAccessibilityPickerComponent *)selfCopy accessibilityLabel];
      v7 = MEMORY[0x29ED3D9A0]();
      v8 = v48[0];
      v48[0] = v7;
      MEMORY[0x29EDC9740](v8);
      MEMORY[0x29EDC9740](accessibilityLabel);
    }

    if (![v48[0] count])
    {
      v45.receiver = selfCopy;
      v45.super_class = UIAccessibilityPickerComponent;
      accessibilityUserInputLabels = [(UIAccessibilityPickerComponent *)&v45 accessibilityUserInputLabels];
      v10 = v48[0];
      v48[0] = accessibilityUserInputLabels;
      MEMORY[0x29EDC9740](v10);
    }

    if (![v48[0] count])
    {
      v35 = objc_loadWeakRetained(&selfCopy->_picker);
      [v35 selectedRowInComponent:selfCopy->_component];
      MEMORY[0x29EDC9740](v35);
      if (([(UIAccessibilityPickerComponent *)selfCopy _axIsInDatePickerView]& 1) != 0)
      {
        _accessibilityDatePickerComponentType = [(UIAccessibilityPickerComponent *)selfCopy _accessibilityDatePickerComponentType];
        v33 = objc_loadWeakRetained(&selfCopy->_picker);
        v32 = [v33 safeValueForKey:@"_mode"];
        v34 = [v32 safeBoolForKey:@"isTimeIntervalMode"];
        MEMORY[0x29EDC9740](v32);
        MEMORY[0x29EDC9740](v33);
        if (v34)
        {
          v31 = [(UIAccessibilityPickerComponent *)selfCopy _axSpeechInputLabelForTimeIntervalCalendarUnit:_accessibilityDatePickerComponentType];
          v11 = MEMORY[0x29ED3D9A0]();
          v12 = v48[0];
          v48[0] = v11;
          MEMORY[0x29EDC9740](v12);
          v13 = MEMORY[0x29EDC9740](v31).n128_u64[0];
        }

        else
        {
          v30 = [(UIAccessibilityPickerComponent *)selfCopy _axSpeechInputLabelForDateCalendarUnit:_accessibilityDatePickerComponentType];
          v14 = MEMORY[0x29ED3D9A0]();
          v15 = v48[0];
          v48[0] = v14;
          MEMORY[0x29EDC9740](v15);
          v13 = MEMORY[0x29EDC9740](v30).n128_u64[0];
        }
      }

      else
      {
        v28 = objc_loadWeakRetained(&selfCopy->_picker);
        delegate2 = [v28 delegate];
        v29 = objc_opt_respondsToSelector();
        MEMORY[0x29EDC9740](delegate2);
        v13 = MEMORY[0x29EDC9740](v28).n128_u64[0];
        if (v29)
        {
          v26 = objc_loadWeakRetained(&selfCopy->_picker);
          delegate3 = [v26 delegate];
          v24 = objc_loadWeakRetained(&selfCopy->_picker);
          v23 = [delegate3 pickerView:? viewForRow:? forComponent:? reusingView:?];
          accessibilityUserInputLabels2 = [v23 accessibilityUserInputLabels];
          v17 = v48[0];
          v48[0] = accessibilityUserInputLabels2;
          MEMORY[0x29EDC9740](v17);
          MEMORY[0x29EDC9740](v23);
          MEMORY[0x29EDC9740](v24);
          MEMORY[0x29EDC9740](delegate3);
          v13 = MEMORY[0x29EDC9740](v26).n128_u64[0];
        }
      }

      if (![v48[0] count])
      {
        accessibilityValue = [(UIAccessibilityPickerComponent *)selfCopy accessibilityValue];
        v18 = MEMORY[0x29ED3D9A0]();
        v19 = v48[0];
        v48[0] = v18;
        MEMORY[0x29EDC9740](v19);
        MEMORY[0x29EDC9740](accessibilityValue);
      }
    }

    v50 = MEMORY[0x29EDC9748](v48[0]);
    objc_storeStrong(&delegate, 0);
    objc_storeStrong(v48, 0);
  }

  v20 = v50;

  return v20;
}

id __62__UIAccessibilityPickerComponent_accessibilityUserInputLabels__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v4 = [v2 initWithCFAttributedString:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)_accessibilitySetNativeFocus
{
  picker = [(UIAccessibilityPickerComponent *)self picker];
  v4 = [picker safeArrayForKey:@"_tables"];
  v3 = [v4 axSafeObjectAtIndex:-[UIAccessibilityPickerComponent component](self)];
  _accessibilitySetNativeFocus = [v3 _accessibilitySetNativeFocus];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](picker);
  return _accessibilitySetNativeFocus;
}

- (uint64_t)component
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

- (uint64_t)setComponent:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (id)setPicker:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 7, a2);
  }

  return result;
}

@end