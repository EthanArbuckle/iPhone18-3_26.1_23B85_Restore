@interface UIAccessibilityPickerComponent
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (CGRect)accessibilityFrame;
- (_NSRange)accessibilityRowRange;
- (double)_accessibilityNumberValue;
- (id)_accessibilityDateTimePickerValues;
- (id)_accessibilityViewForComponent;
- (id)_axSpeechInputLabelForDateCalendarUnit:(uint64_t)a1;
- (id)_axSpeechInputLabelForTimeIntervalCalendarUnit:(uint64_t)a1;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)automationElements;
- (id)picker;
- (id)setPicker:(id *)result;
- (int64_t)_accessibilityIndexForPickerString:(id)a3;
- (int64_t)_accessibilityPickerType;
- (uint64_t)_axIsInDatePickerView;
- (uint64_t)_isRowDisabledInWebKit:(uint64_t)a1;
- (uint64_t)component;
- (uint64_t)setComponent:(uint64_t)result;
- (unint64_t)_accessibilityDatePickerComponentType;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityMoveSelection:(uint64_t)a1;
@end

@implementation UIAccessibilityPickerComponent

- (id)accessibilityLabel
{
  v19 = self;
  v18[1] = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  v14 = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component >= v14)
  {
    v20 = 0;
  }

  else
  {
    v12 = objc_loadWeakRetained(&v19->_picker);
    v18[0] = [v12 delegate];
    MEMORY[0x29EDC9740](v12);
    v17 = 0;
    v2 = objc_opt_respondsToSelector();
    if (v2)
    {
      v11 = [(UIAccessibilityPickerComponent *)v19 picker];
      location = [v18[0] pickerView:? accessibilityAttributedLabelForComponent:?];
      MEMORY[0x29EDC9740](v11);
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
      v10 = [(UIAccessibilityPickerComponent *)v19 picker];
      v5 = [v9 pickerView:? accessibilityLabelForComponent:?];
      v6 = v17;
      v17 = v5;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v10);
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)accessibilityHint
{
  v15 = self;
  v14[1] = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  v10 = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component < v10)
  {
    v8 = objc_loadWeakRetained(&v15->_picker);
    v14[0] = [v8 delegate];
    MEMORY[0x29EDC9740](v8);
    v13 = 0;
    if (objc_opt_respondsToSelector())
    {
      location = [v14[0] pickerView:v15 accessibilityAttributedHintForComponent:v15->_component];
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
      v4 = [v14[0] pickerView:v15 accessibilityHintForComponent:v15->_component];
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
  v4 = [WeakRetained _accessibilityPickerType];
  MEMORY[0x29EDC9740](WeakRetained);
  return v4;
}

- (uint64_t)_axIsInDatePickerView
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
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
  v32 = self;
  v31[1] = a2;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  NSClassFromString(&cfstr_Uidatepickervi_1.isa);
  v19 = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [(UIAccessibilityPickerComponent *)v32 _axIsInDatePickerView];
  }

  *&v2 = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  if (v19)
  {
    v33 = 0;
  }

  else
  {
    v31[0] = [(UIAccessibilityPickerComponent *)v32 _accessibilityValueForKey:@"AXCachedChildren", v2];
    v17 = objc_loadWeakRetained(&v32->_picker);
    v16 = [v17 safeValueForKey:@"_tables"];
    v30 = [v16 objectAtIndex:v32->_component];
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
          v13 = [v24 title];
          v23 = [v12 axAttributedStringWithString:?];
          *&v3 = MEMORY[0x29EDC9740](v13).n128_u64[0];
          [v25 addObject:{v23, v3}];
          objc_storeStrong(&v23, 0);
        }

        else
        {
          NSClassFromString(&cfstr_Uipickertablev.isa);
          if (objc_opt_isKindOfClass())
          {
            v22 = [v24 safeUIViewForKey:@"wrappedView"];
            v21 = [v22 accessibilityLabel];
            if (![v21 length])
            {
              v11 = [v22 _accessibleSubviews];
              v4 = MEMORY[0x29ED3D9D0]();
              v5 = v21;
              v21 = v4;
              MEMORY[0x29EDC9740](v5);
              MEMORY[0x29EDC9740](v11);
            }

            if (![v21 length])
            {
              v10 = [v22 accessibilityElements];
              v6 = MEMORY[0x29ED3D9D0]();
              v7 = v21;
              v21 = v6;
              MEMORY[0x29EDC9740](v7);
              MEMORY[0x29EDC9740](v10);
            }

            if (v21)
            {
              v20 = [MEMORY[0x29EDBD7F0] axAttributedStringWithString:v21];
              [v25 addObject:v20];
              objc_storeStrong(&v20, 0);
            }

            objc_storeStrong(&v21, 0);
            objc_storeStrong(&v22, 0);
          }
        }

        objc_storeStrong(&v24, 0);
        ++v27;
      }

      [(UIAccessibilityPickerComponent *)v32 _accessibilitySetRetainedValue:v25 forKey:@"AXCachedChildren"];
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

- (int64_t)_accessibilityIndexForPickerString:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v20->_picker);
  v10 = [WeakRetained safeValueForKey:@"_tables"];
  v18 = [v10 objectAtIndex:v20->_component];
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
      v6 = [v14 title];
      v7 = [v6 isEqualToString:location[0]];
      MEMORY[0x29EDC9740](v6);
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
    v4 = [v12 accessibilityLabel];
    v5 = [v4 isEqualToString:location[0]];
    MEMORY[0x29EDC9740](v4);
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
  v14 = a1;
  if (a1)
  {
    v10 = *(v14 + 48);
    WeakRetained = objc_loadWeakRetained((v14 + 56));
    v9 = [WeakRetained numberOfComponents];
    MEMORY[0x29EDC9740](WeakRetained);
    if (v10 >= v9)
    {
      v15 = 0;
    }

    else
    {
      v4 = objc_loadWeakRetained((v14 + 56));
      v5 = [v4 selectedRowInComponent:*(v14 + 48)];
      MEMORY[0x29EDC9740](v4);
      v13 = v5;
      v6 = objc_loadWeakRetained((v14 + 56));
      v7 = [v6 numberOfRowsInComponent:*(v14 + 48)];
      MEMORY[0x29EDC9740](v6);
      v12 = v7;
      if (v13 < 0 || v13 >= v12)
      {
        v15 = 0;
      }

      else
      {
        v3 = objc_loadWeakRetained((v14 + 56));
        v11 = [v3 viewForRow:v13 forComponent:*(v14 + 48)];
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
  v49 = self;
  v48[1] = a2;
  v48[0] = [MEMORY[0x29EDB8DE8] array];
  v47 = [(UIAccessibilityPickerComponent *)v49 _accessibilityDatePickerComponentType];
  if (!v47)
  {
    CFRunLoopRunInMode(*MEMORY[0x29EDB8FC0], 0.25, 0);
    v47 = [(UIAccessibilityPickerComponent *)v49 _accessibilityDatePickerComponentType];
  }

  v46 = [(UIAccessibilityPickerComponent *)v49 _accessibilityViewForComponent];
  v45 = [v46 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickervi.isa)];
  v38[1] = MEMORY[0x29EDCA5F8];
  v39 = -1073741824;
  v40 = 0;
  v41 = __68__UIAccessibilityPickerComponent__accessibilityDateTimePickerValues__block_invoke;
  v42 = &__block_descriptor_40_e24___NSString_32__0_8q16q24l;
  v43 = v47;
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
    __os_log_helper_16_0_1_4_0(v51, v47);
    _os_log_impl(&dword_29C4D6000, location, v29, "Date picker unit: %d", v51, 8u);
  }

  objc_storeStrong(&location, 0);
  if (v47 == 2 || v47 == 4)
  {
    goto LABEL_26;
  }

  if (v47 == 8)
  {
    v32[3] = 12;
    goto LABEL_27;
  }

  if (v47 == 16)
  {
    v32[3] = 31;
    goto LABEL_27;
  }

  if (v47 == 32)
  {
    v10 = [v37 safeValueForKey:@"is24Hour"];
    v11 = [v10 BOOLValue];
    MEMORY[0x29EDC9740](v10);
    v28 = v11;
    if (v11)
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

  if (v47 == 64)
  {
    if (v38[0])
    {
      v9 = [v38[0] minuteInterval];
    }

    else
    {
      v9 = 60;
    }

    v32[3] = 60 / v9;
    goto LABEL_27;
  }

  if (v47 == 128)
  {
    v32[3] = 60;
    goto LABEL_27;
  }

  if (v47 == 536)
  {
LABEL_26:
    v22 = MEMORY[0x29EDCA5F8];
    v23 = -1073741824;
    v24 = 0;
    v25 = __68__UIAccessibilityPickerComponent__accessibilityDateTimePickerValues__block_invoke_349;
    v26 = &unk_29F30CFE8;
    v27[1] = &v31;
    v27[0] = MEMORY[0x29EDC9748](v37);
    v27[2] = v47;
    AXPerformSafeBlock();
    objc_storeStrong(v27, 0);
    goto LABEL_27;
  }

  if (v47 == 0x10000)
  {
    v32[3] = 2;
  }

LABEL_27:
  if (v47 == 536)
  {
    WeakRetained = objc_loadWeakRetained(&v49->_picker);
    v7 = [WeakRetained selectedRowInComponent:v49->_component];
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
    v12 = (*(v44 + 2))(v44, v37, i, v49->_component);
    if (!v12)
    {
      _AXAssert();
    }

    if ([v12 length])
    {
      [v48[0] addObject:v12];
    }

    if (v47 == 4 && v32[3] > 1000 && i != v32[3] - 1)
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
  objc_storeStrong(&v46, 0);
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
  v3 = [(UIAccessibilityPickerComponent *)self _accessibilityViewForComponent];
  v4 = [v3 _accessibilityDatePickerComponentType];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (double)_accessibilityNumberValue
{
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  v8 = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component >= v8)
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
  v67 = self;
  v66 = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  v47 = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component >= v47)
  {
    v68 = 0;
  }

  else
  {
    v42 = objc_loadWeakRetained(&v67->_picker);
    v43 = [v42 selectedRowInComponent:v67->_component];
    MEMORY[0x29EDC9740](v42);
    v65 = v43;
    v44 = objc_loadWeakRetained(&v67->_picker);
    v45 = [v44 numberOfRowsInComponent:v67->_component];
    MEMORY[0x29EDC9740](v44);
    v64 = v45;
    if (v65 < 0 || v65 >= v64)
    {
      v68 = 0;
    }

    else
    {
      v41 = objc_loadWeakRetained(&v67->_picker);
      v63 = [v41 viewForRow:v65 forComponent:v67->_component];
      v62 = [v63 accessibilityLabel];
      if ([v62 length])
      {
        v49 = [v63 accessibilityLanguage];
        if ([v49 length])
        {
          v15 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:v62];
          v16 = v62;
          v62 = v15;
          [v15 setAttribute:v49 forKey:{*MEMORY[0x29EDC7F30], MEMORY[0x29EDC9740](v16).n128_f64[0]}];
        }

        objc_storeStrong(&v49, 0);
      }

      else
      {
        v39 = objc_loadWeakRetained(&v67->_picker);
        v38 = [v39 delegate];
        v40 = objc_opt_respondsToSelector();
        MEMORY[0x29EDC9740](v38);
        *&v2 = MEMORY[0x29EDC9740](v39).n128_u64[0];
        if (v40)
        {
          v35 = objc_loadWeakRetained(&v67->_picker);
          v34 = [v35 delegate];
          v33 = objc_loadWeakRetained(&v67->_picker);
          location = [v34 pickerView:? attributedTitleForRow:? forComponent:?];
          MEMORY[0x29EDC9740](v33);
          MEMORY[0x29EDC9740](v34);
          v36 = [location accessibilityLabel];
          v37 = [v36 length];
          *&v3 = MEMORY[0x29EDC9740](v36).n128_u64[0];
          if (v37)
          {
            v4 = [v62 accessibilityLabel];
          }

          else
          {
            v4 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:location];
          }

          v5 = v62;
          v62 = v4;
          MEMORY[0x29EDC9740](v5);
          objc_storeStrong(&location, 0);
        }

        v59 = 0;
        v57 = 0;
        v32 = 0;
        if (![v62 length])
        {
          v60 = objc_loadWeakRetained(&v67->_picker);
          v59 = 1;
          v58 = [v60 delegate];
          v57 = 1;
          v32 = objc_opt_respondsToSelector();
        }

        if (v57)
        {
          MEMORY[0x29EDC9740](v58);
        }

        if (v59)
        {
          MEMORY[0x29EDC9740](v60);
        }

        if (v32)
        {
          v31 = objc_loadWeakRetained(&v67->_picker);
          v30 = [v31 delegate];
          v29 = objc_loadWeakRetained(&v67->_picker);
          v6 = [v30 pickerView:? titleForRow:? forComponent:?];
          v7 = v62;
          v62 = v6;
          MEMORY[0x29EDC9740](v7);
          MEMORY[0x29EDC9740](v29);
          MEMORY[0x29EDC9740](v30);
          *&v8 = MEMORY[0x29EDC9740](v31).n128_u64[0];
          v56 = [v62 accessibilityLabel];
          if ([v56 length])
          {
            objc_storeStrong(&v62, v56);
          }

          objc_storeStrong(&v56, 0);
        }

        v54 = 0;
        v52 = 0;
        v28 = 0;
        if (![v62 length])
        {
          v55 = objc_loadWeakRetained(&v67->_picker);
          v54 = 1;
          v53 = [v55 delegate];
          v52 = 1;
          v28 = objc_opt_respondsToSelector();
        }

        if (v52)
        {
          MEMORY[0x29EDC9740](v53);
        }

        if (v54)
        {
          MEMORY[0x29EDC9740](v55);
        }

        if (v28)
        {
          v27 = objc_loadWeakRetained(&v67->_picker);
          v26 = [v27 delegate];
          v25 = objc_loadWeakRetained(&v67->_picker);
          v51 = [v26 pickerView:? viewForRow:? forComponent:? reusingView:?];
          MEMORY[0x29EDC9740](v25);
          MEMORY[0x29EDC9740](v26);
          v9 = [v51 accessibilityLabel];
          v10 = v62;
          v62 = v9;
          v50 = [v51 accessibilityLanguage];
          if ([v50 length])
          {
            v11 = objc_alloc(MEMORY[0x29EDBD7E8]);
            v12 = [v11 initWithString:v62];
            v13 = v62;
            v62 = v12;
            *&v14 = MEMORY[0x29EDC9740](v13).n128_u64[0];
            [v62 setAttribute:v50 forKey:{*MEMORY[0x29EDC7F30], v14}];
          }

          objc_storeStrong(&v50, 0);
          objc_storeStrong(&v51, 0);
        }
      }

      if (![v62 length])
      {
        v24 = [v63 _accessibleSubviews];
        v17 = MEMORY[0x29ED3D9D0]();
        v18 = v62;
        v62 = v17;
        MEMORY[0x29EDC9740](v18);
        MEMORY[0x29EDC9740](v24);
      }

      if (![v62 length])
      {
        v23 = [v63 accessibilityElements];
        v19 = MEMORY[0x29ED3D9D0]();
        v20 = v62;
        v62 = v19;
        MEMORY[0x29EDC9740](v20);
        MEMORY[0x29EDC9740](v23);
      }

      v68 = MEMORY[0x29EDC9748](v62);
      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v63, 0);
    }
  }

  v21 = v68;

  return v21;
}

- (_NSRange)accessibilityRowRange
{
  v55 = self;
  v54 = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  v15 = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component < v15)
  {
    v10 = objc_loadWeakRetained(&v55->_picker);
    v11 = [v10 selectedRowInComponent:v55->_component];
    MEMORY[0x29EDC9740](v10);
    v53 = v11;
    v12 = objc_loadWeakRetained(&v55->_picker);
    v13 = [v12 numberOfRowsInComponent:v55->_component];
    MEMORY[0x29EDC9740](v12);
    v52 = v13;
    if (v11 < 0 || v53 >= v52)
    {
      v56 = 0x7FFFFFFFLL;
      v57 = 0;
      goto LABEL_47;
    }

    v9 = objc_loadWeakRetained(&v55->_picker);
    v51 = [v9 viewForRow:v53 forComponent:v55->_component];
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
    v6 = objc_loadWeakRetained(&v55->_picker);
    v7 = [v6 _accessibilityPickerType];
    *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v30 = v7;
    switch(v7)
    {
      case 2:
        if (!v55->_component)
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

        if (v55->_component == 1)
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
        switch(v55->_component)
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
        switch(v55->_component)
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
        switch(v55->_component)
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
            v28 = [v35[0] calendar];
            v27 = [v28 dateFromComponents:v34];
            v25 = [v28 rangeOfUnit:16 inUnit:8 forDate:v27];
            v26 = v3;
            v99 = v53 % 31;
            v98 = v3;
            v100 = v53 % 31;
            v101 = v3;
            v56 = v53 % 31;
            v57 = v3;
            v29 = 1;
            objc_storeStrong(&v27, 0);
            objc_storeStrong(&v28, 0);
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
  v41 = self;
  v40 = a2;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  v28 = [WeakRetained accessibilityUserDefinedFrame];
  v38 = 0;
  v29 = 0;
  if (v28)
  {
    v39 = objc_loadWeakRetained(&v41->_picker);
    v38 = 1;
    v29 = [v39 numberOfComponents] == 1;
  }

  if (v38)
  {
    MEMORY[0x29EDC9740](v39);
  }

  MEMORY[0x29EDC9740](v28);
  MEMORY[0x29EDC9740](WeakRetained);
  if (v29)
  {
    v26 = objc_loadWeakRetained(&v41->_picker);
    v25 = [v26 accessibilityUserDefinedFrame];
    [v25 CGRectValue];
    *&v42 = v2;
    *(&v42 + 1) = v3;
    *&v43 = v4;
    *(&v43 + 1) = v5;
    MEMORY[0x29EDC9740](v25);
    MEMORY[0x29EDC9740](v26);
  }

  else
  {
    component = v41->_component;
    v22 = objc_loadWeakRetained(&v41->_picker);
    v23 = [v22 numberOfComponents];
    MEMORY[0x29EDC9740](v22);
    if (component < v23)
    {
      v20 = objc_loadWeakRetained(&v41->_picker);
      v37 = [v20 safeValueForKey:@"_tables"];
      *&v6 = MEMORY[0x29EDC9740](v20).n128_u64[0];
      v21 = v41->_component;
      if (v21 < [v37 count])
      {
        v35 = [v37 objectAtIndex:v41->_component];
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

- (void)_accessibilityMoveSelection:(uint64_t)a1
{
  v35 = a1;
  v34 = a2;
  if (a1)
  {
    v22 = *(v35 + 48);
    WeakRetained = objc_loadWeakRetained((v35 + 56));
    v21 = [WeakRetained numberOfComponents];
    MEMORY[0x29EDC9740](WeakRetained);
    if (v22 < v21)
    {
      v16 = objc_loadWeakRetained((v35 + 56));
      v17 = [v16 selectedRowInComponent:*(v35 + 48)];
      MEMORY[0x29EDC9740](v16);
      v33 = v17 + v34;
      v18 = objc_loadWeakRetained((v35 + 56));
      v19 = [v18 numberOfRowsInComponent:*(v35 + 48)];
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
        v15 = objc_loadWeakRetained((v35 + 56));
        v33 = [v15 numberOfRowsInComponent:*(v35 + 48)] - 1;
        MEMORY[0x29EDC9740](v15);
      }

      v32 = 1;
      v14 = objc_loadWeakRetained((v35 + 56));
      v31 = [v14 viewForRow:v33 forComponent:*(v35 + 48)];
      MEMORY[0x29EDC9740](v14);
      if (v31)
      {
        NSClassFromString(&cfstr_Uidatepickerco.isa);
        if (objc_opt_isKindOfClass())
        {
          v13 = [v31 safeValueForKey:@"titleLabel"];
          v12 = [v13 safeValueForKey:@"isEnabled"];
          v32 = [v12 BOOLValue];
          MEMORY[0x29EDC9740](v12);
          MEMORY[0x29EDC9740](v13);
        }
      }

      if (v32)
      {
        if (v34 > 0)
        {
          while (1)
          {
            v9 = objc_loadWeakRetained((v35 + 56));
            v10 = 0;
            if (v33 < [v9 numberOfRowsInComponent:*(v35 + 48)] - 1)
            {
              v10 = [(UIAccessibilityPickerComponent *)v35 _isRowDisabledInWebKit:v33];
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
          v30 = objc_loadWeakRetained((v35 + 56));
          v29 = 1;
          v11 = v33 < [v30 numberOfRowsInComponent:*(v35 + 48)];
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

      v6 = objc_loadWeakRetained((v35 + 56));
      v5 = [v6 safeValueForKey:@"_tables"];
      v28 = [v5 objectAtIndex:*(v35 + 48)];
      MEMORY[0x29EDC9740](v5);
      *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      v27 = [v28 safeValueForKey:{@"_middleTable", v2}];
      v7 = [v27 safeValueForKey:@"_contentOffsetAnimationDuration"];
      [v7 doubleValue];
      v8 = v3;
      MEMORY[0x29EDC9740](v7);
      v26 = v8;
      v23 = MEMORY[0x29EDC9748](v27);
      v24 = MEMORY[0x29EDC9748](v35);
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

- (uint64_t)_isRowDisabledInWebKit:(uint64_t)a1
{
  v21 = a1;
  v20 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((v21 + 56));
    v14 = [WeakRetained numberOfRowsInComponent:*(v21 + 48)];
    MEMORY[0x29EDC9740](WeakRetained);
    if (v20 < v14)
    {
      v11 = objc_loadWeakRetained((v21 + 56));
      NSClassFromString(&cfstr_Wkselectsingle.isa);
      v18 = 0;
      LOBYTE(v12) = 0;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_loadWeakRetained((v21 + 56));
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
        v9 = objc_loadWeakRetained((v21 + 56));
        v8 = [v9 delegate];
        v10 = objc_opt_respondsToSelector();
        MEMORY[0x29EDC9740](v8);
        MEMORY[0x29EDC9740](v9);
        if (v10)
        {
          v7 = objc_loadWeakRetained((v21 + 56));
          v6 = [v7 delegate];
          v5 = objc_loadWeakRetained((v21 + 56));
          v17 = [v6 pickerView:? attributedTitleForRow:? forComponent:?];
          MEMORY[0x29EDC9740](v5);
          MEMORY[0x29EDC9740](v6);
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

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 3)
  {
    [(UIAccessibilityPickerComponent *)self _accessibilityMoveSelection:?];
  }

  else if (a3 == 4)
  {
    [(UIAccessibilityPickerComponent *)self _accessibilityMoveSelection:?];
  }

  return 0;
}

- (unint64_t)accessibilityTraits
{
  v32 = self;
  v31 = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  v21 = [WeakRetained numberOfComponents];
  *&v2 = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  if (component >= v21)
  {
    return 0;
  }

  v29.receiver = v32;
  v29.super_class = UIAccessibilityPickerComponent;
  v30 = [(UIAccessibilityPickerComponent *)&v29 accessibilityTraits];
  v30 |= *MEMORY[0x29EDC7548] | *MEMORY[0x29EDC7F60];
  v16 = objc_loadWeakRetained(&v32->_picker);
  v17 = [v16 selectedRowInComponent:v32->_component];
  MEMORY[0x29EDC9740](v16);
  v28 = v17;
  v18 = objc_loadWeakRetained(&v32->_picker);
  v19 = [v18 numberOfRowsInComponent:v32->_component];
  MEMORY[0x29EDC9740](v18);
  v27 = v19;
  if (v28 < 0 || v28 >= v27)
  {
    return v30;
  }

  v14 = objc_loadWeakRetained(&v32->_picker);
  v13 = [v14 delegate];
  v15 = objc_opt_respondsToSelector();
  MEMORY[0x29EDC9740](v13);
  MEMORY[0x29EDC9740](v14);
  if (v15)
  {
    v12 = objc_loadWeakRetained(&v32->_picker);
    v11 = [v12 delegate];
    v10 = objc_loadWeakRetained(&v32->_picker);
    v26 = [v11 pickerView:? viewForRow:? forComponent:? reusingView:?];
    MEMORY[0x29EDC9740](v10);
    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](v12);
    if (([(UIAccessibilityPickerComponent *)v32 _axIsInDatePickerView]& 1) != 0)
    {
      v7 = objc_loadWeakRetained(&v32->_picker);
      v25 = [v7 safeValueForKey:@"_mode"];
      MEMORY[0x29EDC9740](v7);
      v8 = [objc_opt_class() safeValueForKey:@"datePickerMode"];
      v9 = [v8 integerValue];
      *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
      v24 = v9;
      if (v9 == 1 || v24 == 2)
      {
        v23 = [v25 safeValueForKey:{@"todayTextColor", v3}];
        [v26 _accessibilitySetRetainedValue:v23 forKey:@"SelectedColor"];
        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v25, 0);
    }

    v4 = [v26 accessibilityTraits];
    v30 |= v4;
    objc_storeStrong(v6, 0);
  }

  return v30;
}

- (id)_axSpeechInputLabelForDateCalendarUnit:(uint64_t)a1
{
  v8 = a1;
  v7 = a2;
  if (a1)
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

- (id)_axSpeechInputLabelForTimeIntervalCalendarUnit:(uint64_t)a1
{
  v8 = a1;
  v7 = a2;
  if (a1)
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
  v49 = self;
  v48[1] = a2;
  component = self->_component;
  WeakRetained = objc_loadWeakRetained(&self->_picker);
  v42 = [WeakRetained numberOfComponents];
  MEMORY[0x29EDC9740](WeakRetained);
  if (component >= v42)
  {
    v50 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
  }

  else
  {
    v48[0] = 0;
    v40 = objc_loadWeakRetained(&v49->_picker);
    v47 = [v40 delegate];
    MEMORY[0x29EDC9740](v40);
    v2 = objc_opt_respondsToSelector();
    if (v2)
    {
      v39 = [(UIAccessibilityPickerComponent *)v49 picker];
      location = [v47 pickerView:? accessibilityAttributedUserInputLabelsForComponent:?];
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
      v37 = v47;
      v38 = [(UIAccessibilityPickerComponent *)v49 picker];
      v5 = [v37 pickerView:? accessibilityUserInputLabelsForComponent:?];
      v6 = v48[0];
      v48[0] = v5;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v38);
    }

    if (![v48[0] count])
    {
      v36 = [(UIAccessibilityPickerComponent *)v49 accessibilityLabel];
      v7 = MEMORY[0x29ED3D9A0]();
      v8 = v48[0];
      v48[0] = v7;
      MEMORY[0x29EDC9740](v8);
      MEMORY[0x29EDC9740](v36);
    }

    if (![v48[0] count])
    {
      v45.receiver = v49;
      v45.super_class = UIAccessibilityPickerComponent;
      v9 = [(UIAccessibilityPickerComponent *)&v45 accessibilityUserInputLabels];
      v10 = v48[0];
      v48[0] = v9;
      MEMORY[0x29EDC9740](v10);
    }

    if (![v48[0] count])
    {
      v35 = objc_loadWeakRetained(&v49->_picker);
      [v35 selectedRowInComponent:v49->_component];
      MEMORY[0x29EDC9740](v35);
      if (([(UIAccessibilityPickerComponent *)v49 _axIsInDatePickerView]& 1) != 0)
      {
        v44 = [(UIAccessibilityPickerComponent *)v49 _accessibilityDatePickerComponentType];
        v33 = objc_loadWeakRetained(&v49->_picker);
        v32 = [v33 safeValueForKey:@"_mode"];
        v34 = [v32 safeBoolForKey:@"isTimeIntervalMode"];
        MEMORY[0x29EDC9740](v32);
        MEMORY[0x29EDC9740](v33);
        if (v34)
        {
          v31 = [(UIAccessibilityPickerComponent *)v49 _axSpeechInputLabelForTimeIntervalCalendarUnit:v44];
          v11 = MEMORY[0x29ED3D9A0]();
          v12 = v48[0];
          v48[0] = v11;
          MEMORY[0x29EDC9740](v12);
          v13 = MEMORY[0x29EDC9740](v31).n128_u64[0];
        }

        else
        {
          v30 = [(UIAccessibilityPickerComponent *)v49 _axSpeechInputLabelForDateCalendarUnit:v44];
          v14 = MEMORY[0x29ED3D9A0]();
          v15 = v48[0];
          v48[0] = v14;
          MEMORY[0x29EDC9740](v15);
          v13 = MEMORY[0x29EDC9740](v30).n128_u64[0];
        }
      }

      else
      {
        v28 = objc_loadWeakRetained(&v49->_picker);
        v27 = [v28 delegate];
        v29 = objc_opt_respondsToSelector();
        MEMORY[0x29EDC9740](v27);
        v13 = MEMORY[0x29EDC9740](v28).n128_u64[0];
        if (v29)
        {
          v26 = objc_loadWeakRetained(&v49->_picker);
          v25 = [v26 delegate];
          v24 = objc_loadWeakRetained(&v49->_picker);
          v23 = [v25 pickerView:? viewForRow:? forComponent:? reusingView:?];
          v16 = [v23 accessibilityUserInputLabels];
          v17 = v48[0];
          v48[0] = v16;
          MEMORY[0x29EDC9740](v17);
          MEMORY[0x29EDC9740](v23);
          MEMORY[0x29EDC9740](v24);
          MEMORY[0x29EDC9740](v25);
          v13 = MEMORY[0x29EDC9740](v26).n128_u64[0];
        }
      }

      if (![v48[0] count])
      {
        v22 = [(UIAccessibilityPickerComponent *)v49 accessibilityValue];
        v18 = MEMORY[0x29ED3D9A0]();
        v19 = v48[0];
        v48[0] = v18;
        MEMORY[0x29EDC9740](v19);
        MEMORY[0x29EDC9740](v22);
      }
    }

    v50 = MEMORY[0x29EDC9748](v48[0]);
    objc_storeStrong(&v47, 0);
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
  v5 = [(UIAccessibilityPickerComponent *)self picker];
  v4 = [v5 safeArrayForKey:@"_tables"];
  v3 = [v4 axSafeObjectAtIndex:-[UIAccessibilityPickerComponent component](self)];
  v6 = [v3 _accessibilitySetNativeFocus];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  return v6;
}

- (uint64_t)component
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