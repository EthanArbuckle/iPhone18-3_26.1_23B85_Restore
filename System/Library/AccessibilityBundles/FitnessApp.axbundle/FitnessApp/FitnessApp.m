void sub_1758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_2E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_68A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_7130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_9160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CHCacheIndexForDate(void *a1)
{
  v1 = CHCacheIndexForDate_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CHCacheIndexForDate_cold_1();
  }

  v3 = _HKActivityCacheDateComponentsFromDate();

  v4 = _HKCacheIndexFromDateComponents();
  return v4;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id accessibilityHKUnitForTrendType(uint64_t a1)
{
  if (a1 > 4)
  {
    if ((a1 - 7) < 2)
    {
      v2 = [HKUnit meterUnitWithMetricPrefix:9];
      v3 = +[HKUnit hourUnit];
      v1 = [v2 unitDividedByUnit:v3];
    }

    else
    {
      if (a1 == 5)
      {
        goto LABEL_9;
      }

      if (a1 != 6)
      {
        goto LABEL_18;
      }

      v2 = [HKUnit literUnitWithMetricPrefix:4];
      v3 = [HKUnit gramUnitWithMetricPrefix:9];
      v4 = +[HKUnit minuteUnit];
      v5 = [v2 unitDividedByUnit:v3];
      v1 = [v5 unitDividedByUnit:v4];
    }

    goto LABEL_18;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_18;
      }

      v6 = +[HKUnit minuteUnit];
    }

    else
    {
      v6 = +[HKUnit kilocalorieUnit];
    }

    goto LABEL_17;
  }

  if (a1 == 3)
  {
    v6 = +[HKUnit meterUnit];
    goto LABEL_17;
  }

LABEL_9:
  v6 = +[HKUnit countUnit];
LABEL_17:
  v1 = v6;
LABEL_18:

  return v1;
}

id accessibilityFitnessStringForDate(void *a1, uint64_t a2)
{
  v3 = a1;
  v23 = 0;
  objc_opt_class();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v4 = v3;
  AXPerformSafeBlock();
  v5 = v18[5];

  _Block_object_dispose(&v17, 8);
  v6 = __UIAccessibilityCastAsClass();

  if (v23 == 1)
  {
    abort();
  }

  [v6 _activeEnergyCompletionPercentage];
  if (v7 >= 0.0 && ([v6 safeDoubleForKey:@"_exerciseTimeCompletionPercentage"], v8 >= 0.0) && (objc_msgSend(v6, "_standHoursCompletionPercentage"), v9 >= 0.0))
  {
    [v6 _activeEnergyCompletionPercentage];
    v13 = v12;
    [v6 safeDoubleForKey:@"_exerciseTimeCompletionPercentage"];
    v15 = v14;
    [v6 _standHoursCompletionPercentage];
    v10 = [v6 _fitnessUIAccessibilityDescriptionForPercentages:a2 exercisingPercentage:v13 standingPercentage:v15 arePercentagesCapped:v16];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_AC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __accessibilityFitnessStringForDate_block_invoke(uint64_t a1)
{
  v5 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v2 = [v5 activitySummaryForCacheIndex:CHCacheIndexForDate(*(a1 + 32))];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_1F138 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id accessibilityDescriptionForPercentages(int a1, double a2, double a3, double a4)
{
  if (a2 != 1.0 || a3 != 1.0 || a4 != 1.0 || a1 == 0)
  {
    v8 = a1;
    v9 = fmax(a3, 0.0);
    if (fmax(a2, 0.0) == 1.0 && (a1 & 1) != 0)
    {
      v10 = accessibilityLocalizedString(@"lifestyle.goal.completed");
    }

    else
    {
      v10 = UIAXFormatFloatWithPercentage();
    }

    v12 = v10;
    v13 = fmax(a4, 0.0);
    if (v9 == 1.0 && (v8 & 1) != 0)
    {
      v14 = accessibilityLocalizedString(@"lifestyle.goal.completed");
    }

    else
    {
      v14 = UIAXFormatFloatWithPercentage();
    }

    v15 = v14;
    if (v13 == 1.0 && (v8 & 1) != 0)
    {
      v16 = accessibilityLocalizedString(@"lifestyle.goal.completed");
    }

    else
    {
      v16 = UIAXFormatFloatWithPercentage();
    }

    v17 = v16;
    v18 = accessibilityLocalizedString(@"lifestyle.calories.burned");
    v19 = accessibilityLocalizedString(@"lifestyle.active.minutes");
    if (_userIsWheelchairUserWithVoiceOverOn())
    {
      v20 = @"lifestyle.active.hours.wheelchair.roll";
    }

    else
    {
      v20 = @"lifestyle.active.hours";
    }

    v22 = accessibilityLocalizedString(v20);
    v11 = __UIAXStringForVariables();
  }

  else
  {
    v11 = accessibilityLocalizedString(@"lifestyle.all.goals.completed");
  }

  return v11;
}

id accessibilityLocalizedStringForAchievement(void *a1)
{
  v1 = a1;
  if (accessibilityLocalizedStringForAchievement_onceToken != -1)
  {
    accessibilityLocalizedStringForAchievement_cold_1();
  }

  AXSafeClassFromString();
  if (objc_opt_isKindOfClass())
  {
    v2 = [accessibilityLocalizedStringForAchievement_AXAchievementLocalizationProvider titleForAchievement:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __accessibilityLocalizedStringForAchievement_block_invoke(id a1)
{
  v1 = objc_alloc_init(ACHAchievementLocalizationProvider);
  v2 = accessibilityLocalizedStringForAchievement_AXAchievementLocalizationProvider;
  accessibilityLocalizedStringForAchievement_AXAchievementLocalizationProvider = v1;

  v3 = FIUICopyUserFirstNameFromAddressBook();
  [accessibilityLocalizedStringForAchievement_AXAchievementLocalizationProvider setName:v3];

  IsWheelchairUserWithVoiceOverOn = _userIsWheelchairUserWithVoiceOverOn();
  v5 = accessibilityLocalizedStringForAchievement_AXAchievementLocalizationProvider;

  [v5 setWheelchairUser:IsWheelchairUserWithVoiceOverOn];
}

id accessibilityAttributedStringForPaceContainingString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (([v1 containsString:@"--"] & 1) != 0 || objc_msgSend(v1, "containsString:", @"––"))
    {
      v2 = [AXAttributedString alloc];
      v3 = accessibilityLocalizedString(@"no.data");
      v4 = [v2 initWithString:v3];
    }

    else
    {
      v3 = objc_opt_new();
      if (accessibilityAttributedStringForPaceContainingString_onceToken != -1)
      {
        accessibilityAttributedStringForPaceContainingString_cold_1();
      }

      v5 = [accessibilityAttributedStringForPaceContainingString_paceExpression firstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
      v6 = v5;
      if (v5 && [v5 numberOfRanges] == &dword_0 + 3)
      {
        v7 = [v6 rangeAtIndex:0];
        v9 = v8;
        v10 = [v6 rangeAtIndex:1];
        v12 = v11;
        v13 = [v6 rangeAtIndex:2];
        v15 = v14;
        v16 = [v1 substringWithRange:{v10, v12}];
        LODWORD(v12) = [v16 intValue];

        v17 = [v1 substringWithRange:{v13, v15}];
        LODWORD(v13) = [v17 intValue];

        v18 = [NSNumber numberWithInt:(v13 + v12 * 60.0)];
        v19 = [v3 stringFromNumber:v18];

        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = &stru_1F138;
        }

        v21 = [v1 stringByReplacingCharactersInRange:v7 withString:{v9, v20}];
        v22 = [v21 rangeOfString:v20 options:0 range:{v7, -[__CFString length](v20, "length")}];
        v24 = v23;
        v4 = [[AXAttributedString alloc] initWithString:v21];
        [v4 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenDurationTimeMMSS withRange:{v22, v24}];
      }

      else
      {
        v4 = [[AXAttributedString alloc] initWithString:v1];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __accessibilityAttributedStringForPaceContainingString_block_invoke(id a1)
{
  accessibilityAttributedStringForPaceContainingString_paceExpression = [NSRegularExpression regularExpressionWithPattern:@"(\\d+)'\\s?([0-5]?[0-9])(?:''|)" options:0 error:0];

  _objc_release_x1();
}

id accessibilityDescriptionForGoalType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = @"open.goal";
  }

  else
  {
    v2 = *(&off_1C7B0 + a1 - 1);
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

uint64_t _userIsWheelchairUserWithVoiceOverOn()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = ___userIsWheelchairUserWithVoiceOverOn_block_invoke_2;
    v4[3] = &unk_1C768;
    v5 = &__block_literal_global_630;
    v6 = &v7;
    if (_userIsWheelchairUserWithVoiceOverOn_onceToken != -1)
    {
      dispatch_once(&_userIsWheelchairUserWithVoiceOverOn_onceToken, v4);
    }

    if ((v8[3] & 1) == 0)
    {
      v0 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = ___userIsWheelchairUserWithVoiceOverOn_block_invoke_3;
      block[3] = &unk_1C790;
      v3 = &__block_literal_global_630;
      dispatch_async(v0, block);
    }

    _Block_object_dispose(&v7, 8);
  }

  return _userIsWheelchairUserWithVoiceOverOn___isWheelchair;
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

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_C7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_CD54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_EB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_EEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}