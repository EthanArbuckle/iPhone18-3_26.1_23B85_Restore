void sub_16D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id accessibilityDescriptionForPercentages(int a1, double a2, double a3, double a4)
{
  if (a2 != 1.0 || a3 != 1.0 || a4 != 1.0 || a1 == 0)
  {
    v8 = a1;
    v9 = fmax(a3, 0.0);
    if (fmax(a2, 0.0) >= 1.0 && (a1 & 1) != 0)
    {
      v10 = accessibilityLocalizedString(@"lifestyle.goal.completed");
    }

    else
    {
      v10 = UIAXFormatFloatWithPercentage();
    }

    v12 = v10;
    v13 = fmax(a4, 0.0);
    if (v9 >= 1.0 && (v8 & 1) != 0)
    {
      v14 = accessibilityLocalizedString(@"lifestyle.goal.completed");
    }

    else
    {
      v14 = UIAXFormatFloatWithPercentage();
    }

    v15 = v14;
    if (v13 >= 1.0 && (v8 & 1) != 0)
    {
      v16 = accessibilityLocalizedString(@"lifestyle.goal.completed");
    }

    else
    {
      v16 = UIAXFormatFloatWithPercentage();
    }

    v17 = v16;
    v18 = accessibilityLocalizedString(@"rings.description.moving");
    v19 = accessibilityLocalizedString(@"rings.description.exercising");
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = ___userIsWheelchairUserWithVoiceOverOn_block_invoke_2;
      v26[3] = &unk_8540;
      v27 = &__block_literal_global_399;
      v28 = &v29;
      if (_userIsWheelchairUserWithVoiceOverOn_onceToken != -1)
      {
        dispatch_once(&_userIsWheelchairUserWithVoiceOverOn_onceToken, v26);
      }

      if ((v30[3] & 1) == 0)
      {
        v20 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = ___userIsWheelchairUserWithVoiceOverOn_block_invoke_3;
        block[3] = &unk_8568;
        v25 = &__block_literal_global_399;
        dispatch_async(v20, block);
      }

      _Block_object_dispose(&v29, 8);
    }

    if (_userIsWheelchairUserWithVoiceOverOn___isWheelchair)
    {
      v21 = @"rings.description.wheelchair.rolling";
    }

    else
    {
      v21 = @"rings.description.standing";
    }

    v23 = accessibilityLocalizedString(v21);
    v11 = __UIAXStringForVariables();
  }

  else
  {
    v11 = accessibilityLocalizedString(@"lifestyle.all.goals.completed");
  }

  return v11;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_8F40 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t accessibilityUseImperialUnits()
{
  if (accessibilityUseImperialUnits_onceToken != -1)
  {
    accessibilityUseImperialUnits_cold_1();
  }

  return accessibilityUseImperialUnits_useImperialUnits;
}

void __accessibilityUseImperialUnits_block_invoke(id a1)
{
  v1 = objc_alloc_init(NSLengthFormatter);
  v3 = 0;
  v2 = [v1 unitStringFromMeters:&v3 usedUnit:1.0];
  accessibilityUseImperialUnits_useImperialUnits = (v3 & 0x500) != 0;
}

id accessibilityFormattingManager()
{
  if (accessibilityFormattingManager_onceToken != -1)
  {
    accessibilityFormattingManager_cold_1();
  }

  v1 = accessibilityFormattingManager_FormattingManager;

  return v1;
}

void __accessibilityFormattingManager_block_invoke(id a1)
{
  v1 = [FIUIUnitManager alloc];
  v2 = accessibilityHealthStore();
  v5 = [v1 initWithHealthStore:v2];

  v3 = [[FIUIFormattingManager alloc] initWithUnitManager:v5];
  v4 = accessibilityFormattingManager_FormattingManager;
  accessibilityFormattingManager_FormattingManager = v3;
}

id accessibilityHealthStore()
{
  if (accessibilityHealthStore_onceToken != -1)
  {
    accessibilityHealthStore_cold_1();
  }

  v1 = accessibilityHealthStore_HealthStore;

  return v1;
}

id accessibilityUnitManager()
{
  if (accessibilityUnitManager_onceToken != -1)
  {
    accessibilityUnitManager_cold_1();
  }

  v1 = accessibilityUnitManager_UnitManager;

  return v1;
}

void __accessibilityUnitManager_block_invoke(id a1)
{
  v1 = [FIUIUnitManager alloc];
  v4 = accessibilityHealthStore();
  v2 = [v1 initWithHealthStore:v4];
  v3 = accessibilityUnitManager_UnitManager;
  accessibilityUnitManager_UnitManager = v2;
}

void ___userIsWheelchairUserWithVoiceOverOn_block_invoke(id a1)
{
  v1 = objc_alloc_init(HKHealthStore);
  v4 = 0;
  v2 = [v1 wheelchairUseWithError:&v4];
  v3 = v2;
  if (!v4)
  {
    _userIsWheelchairUserWithVoiceOverOn___isWheelchair = [v2 wheelchairUse] == &dword_0 + 2;
  }
}

uint64_t ___userIsWheelchairUserWithVoiceOverOn_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void __accessibilityHealthStore_block_invoke(id a1)
{
  accessibilityHealthStore_HealthStore = objc_alloc_init(HKHealthStore);

  _objc_release_x1();
}

void sub_402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}