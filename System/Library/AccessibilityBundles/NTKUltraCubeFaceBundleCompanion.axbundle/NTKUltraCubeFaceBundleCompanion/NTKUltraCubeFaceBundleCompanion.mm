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
  v4 = +[HKHealthStore fiui_sharedHealthStoreForCarousel];
  v1 = [[FIUIUnitManager alloc] initWithHealthStore:v4];
  v2 = [[FIUIFormattingManager alloc] initWithUnitManager:v1];
  v3 = accessibilityFormattingManager_FormattingManager;
  accessibilityFormattingManager_FormattingManager = v2;
}

id accessibilityTimerComplicationLabelForInterval()
{
  v0 = AXNTKLocalizedStringForKey();

  return v0;
}

id accessibilityTimerComplicationValueForInterval(double a1)
{
  if (a1 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v1 = AXNTKLocalizedStringForKey();
    v2 = AXDurationStringForDuration();
    v3 = [NSString stringWithFormat:v1, v2];
  }

  return v3;
}

id accessibilityStopwatchComplicationValueForInterval()
{
  v0 = AXNTKLocalizedStringForKey();
  v1 = AXDurationStringForDuration();
  v2 = [NSString stringWithFormat:v0, v1];

  return v2;
}

id accessibilitySunriseOrSunsetComplicationLabel(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = AXNTKLocalizedStringForKey();
  v11 = AXDateStringForFormat();
  if (![v11 length])
  {
    v12 = AXNTKLocalizedStringForKey();

    v11 = v12;
  }

  v13 = [AXAttributedString axAttributedStringWithString:v11];
  [v13 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenClockTime];
  v14 = __AXStringForVariables();

  return v14;
}

id accessibilitySunriseSunsetComplicationLabel(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = accessibilitySunriseOrSunsetComplicationLabel(v4, v3, 1);
  v6 = accessibilitySunriseOrSunsetComplicationLabel(v4, v3, 0);

  v7 = __AXStringForVariables();

  return v7;
}

id accessibilityAlarmString()
{
  v0 = objc_alloc_init(AXSafeClassFromString());
  v1 = [v0 safeValueForKey:@"alarmCount"];
  v2 = [v1 unsignedIntegerValue];

  if (v2)
  {
    v3 = [v0 safeValueForKey:@"nextAlarmSync"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 safeValueForKey:@"isSnoozed"];
      v6 = [v5 BOOLValue];

      if (v6)
      {
        objc_opt_class();
        v7 = [v4 safeValueForKey:@"snoozeFireDate"];
        v8 = __UIAccessibilityCastAsClass();

        v9 = +[NSDate date];
        [v8 timeIntervalSinceDate:v9];

        v10 = AXNTKLocalizedStringForKey();
        v11 = AXDurationStringForDuration();
        v12 = [NSString stringWithFormat:v10, v11];
      }

      else
      {
        [v4 hour];
        v8 = AXNTKLocalizedStringForKey();
        v13 = v4;
        v14 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        v15 = +[NSTimeZone systemTimeZone];
        [v14 setTimeZone:v15];

        v16 = +[NSDate date];
        v17 = [v14 components:1644 fromDate:v16];
        v18 = [v13 safeValueForKey:@"hour"];
        [v17 setHour:{objc_msgSend(v18, "unsignedIntegerValue")}];

        v19 = [v13 safeValueForKey:@"minute"];

        [v17 setMinute:{objc_msgSend(v19, "unsignedIntegerValue")}];
        v20 = [v14 dateFromComponents:v17];

        v21 = AXDateStringForFormat();
        v12 = [NSString stringWithFormat:v8, v21];
      }
    }

    else
    {
      v12 = AXNTKLocalizedStringForKey();
    }
  }

  else
  {
    v12 = AXNTKLocalizedStringForKey();
  }

  return v12;
}

id accessibilityWellnessStringUsingUnitNames(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  IsWheelchairUserWithVoiceOverOn = AXNTKUserIsWheelchairUserWithVoiceOverOn();
  v9 = @"lifestyle.active.hours";
  if (IsWheelchairUserWithVoiceOverOn)
  {
    v9 = @"lifestyle.active.hours.wheelchair.roll";
  }

  v10 = v9;
  v11 = AXNTKLocalizedStringForKey();
  v12 = AXNTKLocalizedStringForKey();
  v15 = AXNTKLocalizedStringForKey();
  v13 = __UIAXStringForVariables();

  return v13;
}

id accessibilityWellnessStringForQuantity(double a1)
{
  if (a1 >= 0.0)
  {
    AXFormatInteger();
  }

  else
  {
    AXNTKLocalizedStringForKey();
  }
  v1 = ;

  return v1;
}

id accessibilityWellnessStringForFraction(double a1, double a2)
{
  v4 = AXNTKLocalizedStringForKey();
  v5 = accessibilityWellnessStringForQuantity(a1);
  v6 = accessibilityWellnessStringForQuantity(a2);
  v7 = [NSString stringWithFormat:v4, v5, v6];

  return v7;
}

id accessibilityShortTemperatureStringFromLabel(void *a1)
{
  v1 = [a1 accessibilityLabel];
  v2 = accessibilityClockFaceLocalizedString(@"WEATHER_NONE_SMALL");
  v3 = [v1 isEqualToString:v2];

  if (v3)
  {
    v4 = AXNTKLocalizedStringForKey();
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v5;
}

id accessibilityClockFaceLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:AXSafeClassFromString()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_DC40 table:@"ClockFaces"];

  return v3;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL accessibilityHandleActivateOnKeylineView(void *a1)
{
  v1 = a1;
  v2 = [v1 _accessibilityViewAncestorIsKindOf:AXSafeClassFromString()];
  if ([v2 isUserInteractionEnabled])
  {
    v3 = [v2 gestureRecognizers];
    if ([v3 count] != &dword_0 + 1)
    {
      _AXAssert();
    }

    objc_opt_class();
    v4 = [v3 lastObject];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 state];
    v7 = v6 == 0;
    if (v6)
    {
      _AXLogWithFacility();
    }

    else
    {
      [v5 setState:3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id accessibilityLabelForKeylineView(void *a1)
{
  v1 = a1;
  v21 = [v1 _accessibilityAncestorIsKindOf:AXSafeClassFromString()];
  v20 = [v21 safeValueForKey:@"_infoLabel"];
  v2 = [v20 accessibilityLabel];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [v20 accessibilityLabel];
  }

  else
  {
    v19 = [v21 safeValueForKey:@"delegate"];
    v18 = [v19 safeValueForKey:@"delegate"];
    v17 = [v18 safeValueForKey:@"_face"];
    v5 = [v21 safeIntegerForKey:@"editMode"];
    LOBYTE(v26) = 0;
    objc_opt_class();
    v6 = [v21 safeValueForKey:@"_keylineContainers"];
    v23 = __UIAccessibilityCastAsClass();

    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v23 allKeys];
    v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v7)
    {
      v8 = *v33;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [v23 objectForKey:*(*(&v32 + 1) + 8 * i)];
          v11 = [v10 safeValueForKey:@"keylineView"];
          v12 = v11 == v1;

          if (v12 && v5 == &dword_0 + 1)
          {
            v26 = 0;
            v27 = &v26;
            v28 = 0x3032000000;
            v29 = __Block_byref_object_copy_;
            v30 = __Block_byref_object_dispose_;
            v31 = 0;
            v25 = v17;
            AXPerformSafeBlock();
            v15 = v27[5];

            _Block_object_dispose(&v26, 8);
            if (!v15)
            {
              goto LABEL_19;
            }

            obj = v15;
            v10 = AXNTKLocalizedStringForKey();
            v15 = [NSString stringWithFormat:v10, obj];

            goto LABEL_17;
          }

          if (v5 == &dword_8 + 2)
          {
            v13 = [v10 safeValueForKey:@"keylineView"];
            v14 = v13 == v1;

            if (v14)
            {
              v26 = 0;
              v27 = &v26;
              v28 = 0x3032000000;
              v29 = __Block_byref_object_copy_;
              v30 = __Block_byref_object_dispose_;
              v31 = 0;
              v24 = v17;
              AXPerformSafeBlock();
              v15 = v27[5];

              _Block_object_dispose(&v26, 8);
LABEL_17:

              goto LABEL_18;
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_18:

LABEL_19:
    v4 = v15;
  }

  return v4;
}

uint64_t __accessibilityLabelForKeylineView_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _localizedNameForComplicationSlot:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t __accessibilityLabelForKeylineView_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _localizedNameForDynamicSectionCustomEditMode:*(a1 + 56) slot:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id accessibilityHintForKeylineView(void *a1)
{
  v1 = a1;
  v2 = [v1 _accessibilityAncestorIsKindOf:AXSafeClassFromString()];

  v3 = [v2 safeValueForKey:@"_infoLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [v4 length];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = AXNTKLocalizedStringForKey();
  }

  return v6;
}

id accessibilityValueForKeylineView(void *a1)
{
  v1 = a1;
  v36 = [v1 _accessibilityAncestorIsKindOf:AXSafeClassFromString()];
  v35 = [v36 safeValueForKey:@"_infoLabel"];
  v2 = [v35 accessibilityLabel];
  v3 = [v2 length];

  if (v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  v34 = [v36 safeValueForKey:@"delegate"];
  v33 = [v34 safeValueForKey:@"delegate"];
  v37 = [v33 safeValueForKey:@"_face"];
  v38 = [v36 safeIntegerForKey:@"editMode"];
  v40 = [v36 safeValueForKey:@"_keylineContainers"];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = [v40 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v67 count:16];
  if (v6)
  {
    v39 = 0;
    v7 = *v43;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v40 objectForKey:*(*(&v42 + 1) + 8 * v8)];
        v10 = [v9 safeValueForKey:@"keylineView"];
        v11 = v10 == v1;

        if (v11)
        {
          if (v38 != &dword_0 + 1)
          {
            v16 = [v9 safeValueForKey:@"label"];
            v17 = [v16 safeStringForKey:@"text"];
            v13 = v39;
            goto LABEL_13;
          }

          v46 = 0;
          v47 = &v46;
          v48 = 0x3032000000;
          v49 = __Block_byref_object_copy_;
          v50 = __Block_byref_object_dispose_;
          v51 = 0;
          v41 = v37;
          AXPerformSafeBlock();
          v12 = *(v47 + 40);

          _Block_object_dispose(&v46, 8);
          v13 = accessibilityDescriptionForComplication(v12);

          v14 = accessibilityLabelForKeylineView(v1);
          v15 = v14 == 0;

          if (!v15)
          {
            v16 = AXNTKLocalizedStringForKey();
            v17 = [NSString stringWithFormat:v16, v13];
LABEL_13:

            v39 = v17;
            goto LABEL_14;
          }

          v39 = v13;
        }

LABEL_14:

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v18 = [v5 countByEnumeratingWithState:&v42 objects:v67 count:16];
      v6 = v18;
      if (!v18)
      {
        goto LABEL_20;
      }
    }
  }

  v39 = 0;
LABEL_20:

  v19 = _accessibilityValueForKeylineInfo(v36);
  v20 = v36;
  v21 = [v20 safeValueForKey:@"delegate"];
  v22 = [v21 safeValueForKey:@"delegate"];
  v23 = [v22 safeValueForKey:@"_faceView"];
  v24 = [v22 safeValueForKey:@"_face"];
  v25 = [v20 safeIntegerForKey:@"editMode"];
  if (v25 == &dword_0 + 1)
  {
    v26 = [v23 safeValueForKey:@"_selectedComplicationSlot"];
  }

  else
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = 0;
    v60 = _NSConcreteStackBlock;
    v61 = 3221225472;
    v62 = __selectedEditOptionForEditPageView_block_invoke;
    v63 = &unk_C4D8;
    v65 = &v46;
    v64 = v24;
    v66 = v25;
    AXPerformSafeBlock();
    v26 = *(v47 + 40);

    _Block_object_dispose(&v46, 8);
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy_;
  v58 = __Block_byref_object_dispose_;
  v59 = 0;
  v46 = _NSConcreteStackBlock;
  v47 = 3221225472;
  v48 = __selectedEditOptionForEditPageView_block_invoke_2;
  v49 = &unk_C460;
  v52 = &v54;
  v27 = v24;
  v50 = v27;
  v53 = v25;
  v28 = v26;
  v51 = v28;
  AXPerformSafeBlock();
  v29 = v55[5];

  _Block_object_dispose(&v54, 8);
  if (([v29 _accessibilitySuppressKeylineAnnouncement] & 1) == 0)
  {
    if (v39)
    {
      v30 = [v19 hasPrefix:?];

      if (v30)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v31 = __UIAXStringForVariables();
    goto LABEL_30;
  }

LABEL_27:
  v31 = v19;
LABEL_30:
  v4 = v31;

LABEL_31:

  return v4;
}

uint64_t __accessibilityValueForKeylineView_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) complicationForSlot:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id accessibilityDescriptionForComplication(void *a1)
{
  v1 = a1;
  v2 = [v1 safeValueForKey:@"localizedKeylineLabelText"];
  v3 = [v1 _accessibilityComplicationSubType];

  v4 = __UIAXStringForVariables();

  return v4;
}

id _accessibilityValueForKeylineInfo(void *a1)
{
  v1 = a1;
  v32 = [v1 safeValueForKey:@"delegate"];
  v2 = [v32 safeValueForKey:@"delegate"];
  v3 = [v2 safeValueForKey:@"_faceView"];
  v4 = [v2 safeValueForKey:@"_face"];
  if ([v1 safeIntegerForKey:@"editMode"] == &dword_0 + 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = 0;
    v39 = v4;
    AXPerformSafeBlock();
    v31 = v3;
    v9 = v41[5];

    _Block_object_dispose(&v40, 8);
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = 0;
    v10 = v39;
    v11 = v9;
    AXPerformSafeBlock();
    v12 = v41[5];

    _Block_object_dispose(&v40, 8);
    if (v12)
    {
      v13 = [v12 _accessibilityEditOptionDescription];
      v30 = v11;
      if (![v13 length])
      {
        v14 = v13;
        objc_opt_class();
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = __Block_byref_object_copy_;
        v44 = __Block_byref_object_dispose_;
        v45 = 0;
        v38 = v12;
        AXPerformSafeBlock();
        v15 = v41[5];

        _Block_object_dispose(&v40, 8);
        v16 = __UIAccessibilityCastAsClass();

        v13 = [v16 lowercaseString];

        v11 = v30;
      }

      v28 = v13;
      if ([v13 length])
      {
        v17 = AXNTKLocalizedStringForKey();
        v6 = [NSString stringWithFormat:v17, v13];
      }

      else
      {
        v6 = 0;
      }

      v29 = v4;
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0;
      v35 = v10;
      v36 = v12;
      v37 = v11;
      AXPerformSafeBlock();
      v18 = v41[3];

      _Block_object_dispose(&v40, 8);
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v43 = 0;
      v33 = v35;
      v34 = v37;
      AXPerformSafeBlock();
      v8 = v18 + 1;
      v7 = v41[3];

      _Block_object_dispose(&v40, 8);
      v5 = [v36 _accessibilityExtendedEditOptionDescription:v31];

      v4 = v29;
      v11 = v30;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v3 = v31;
  }

  v19 = 0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL && v7 && v8 <= v7)
  {
    AXNTKLocalizedStringForKey();
    v20 = v2;
    v21 = v1;
    v23 = v22 = v4;
    v24 = AXFormatInteger();
    v25 = AXFormatInteger();
    v19 = [NSString stringWithFormat:v23, v24, v25];

    v4 = v22;
    v1 = v21;
    v2 = v20;
  }

  v26 = __AXStringForVariables();

  return v26;
}

UIAccessibilityTraits accessibilityTraitsForKeylineView(void *a1)
{
  v1 = a1;
  v2 = [v1 _accessibilityAncestorIsKindOf:AXSafeClassFromString()];

  v3 = [v2 safeValueForKey:@"_infoLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [v4 length];

  v6 = &UIAccessibilityTraitAdjustable;
  if (v5)
  {
    v6 = &UIAccessibilityTraitNone;
  }

  v7 = *v6;

  return v7;
}

double NTKMoonPhaseFromPhaseAnglePositionAngle(double a1, double a2)
{
  if (a2 >= 180.0)
  {
    a1 = -a1;
  }

  return a1 + 180.0;
}

id NTKMoonPhaseDescriptionFromPhase(double a1)
{
  v2 = 0;
  if (a1 >= 0.0 && a1 <= 360.0)
  {
    v3 = @"MOONPHASE_NEW";
    if (a1 > 10.8 && a1 < 349.2)
    {
      if (a1 <= 79.2)
      {
        v3 = @"MOONPHASE_WAXING_CRESCENT";
      }

      else if (a1 <= 100.8)
      {
        v3 = @"MOONPHASE_FIRST_QUARTER";
      }

      else if (a1 <= 169.2)
      {
        v3 = @"MOONPHASE_WAXING_GIBBOUS";
      }

      else if (a1 <= 190.8)
      {
        v3 = @"MOONPHASE_FULL";
      }

      else if (a1 <= 259.2)
      {
        v3 = @"MOONPHASE_WANING_GIBBOUS";
      }

      else if (a1 <= 280.8)
      {
        v3 = @"MOONPHASE_LAST_QUARTER";
      }

      else
      {
        v3 = @"MOONPHASE_WANING_CRESCENT";
      }
    }

    v2 = accessibilityClockFaceLocalizedString(v3);
  }

  return v2;
}

id angleDescriptionForPositionAngleInDegrees(double a1)
{
    ;
  }

    ;
  }

  v2 = AXNTKLocalizedStringForKey();

  return v2;
}

id accessibilityLabelForCLKTextProvider(void *a1)
{
  v1 = a1;
  v2 = [v1 accessibilityLabel];
  if (!v2)
  {
    v2 = [v1 safeValueForKey:@"text"];
    if (!v2)
    {
      v2 = [v1 safeValueForKey:@"shortText"];
    }
  }

  v3 = v2;

  return v3;
}

id accessibilityLabelForVisibleDescendents(void *a1, char a2)
{
  v3 = a1;
  +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __accessibilityLabelForVisibleDescendents_block_invoke;
  v9[3] = &unk_C488;
  v12 = a2;
  v11 = v10 = v3;
  v4 = v11;
  v5 = v3;
  v6 = [v5 _accessibilityFindDescendant:v9];
  v7 = UIAXLabelForElements();

  return v7;
}

uint64_t __accessibilityLabelForVisibleDescendents_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3 && [v3 _accessibilityViewIsVisible] && ((objc_msgSend(v4, "isAccessibilityElement") & 1) != 0 || *(a1 + 48) == 1))
  {
    [*(a1 + 40) addObject:v4];
  }

  return 0;
}

BOOL _accessibilityComplicationTemplateContainsSimpleTextProvider(void *a1)
{
  v1 = a1;
  NSSelectorFromString(@"textProvider");
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 safeValueForKey:@"textProvider"];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL _accessibilityComplicationTemplateContainsProgressProvider(void *a1)
{
  v1 = [a1 safeValueForKey:@"progressProvider"];
  v2 = v1 != 0;

  return v2;
}

id AXNTKFaceComplicationOverviewDescription(void *a1)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = a1;
  obj = [v17 safeArrayForKey:@"allVisibleComplicationsForCurrentConfiguration"];
  v1 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v1)
  {
    v18 = 0;
    goto LABEL_18;
  }

  v16 = 0;
  v18 = 0;
  v2 = *v36;
  v14 = v19;
  do
  {
    for (i = 0; i != v1; i = i + 1)
    {
      if (*v36 != v2)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v35 + 1) + 8 * i);
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy_;
      v33 = __Block_byref_object_dispose_;
      v34 = 0;
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = __AXNTKFaceComplicationOverviewDescription_block_invoke;
      v25 = &unk_C438;
      v28 = &v29;
      v26 = v17;
      v27 = v4;
      AXPerformSafeBlock();
      v5 = v30[5];

      _Block_object_dispose(&v29, 8);
      if ([v5 safeIntegerForKey:@"complicationType"])
      {
        v6 = AXSafeProtocolFromString();
        v7 = [v5 conformsToProtocol:v6];

        if (v7)
        {
          v29 = 0;
          v30 = &v29;
          v31 = 0x3032000000;
          v32 = __Block_byref_object_copy_;
          v33 = __Block_byref_object_dispose_;
          v34 = 0;
          v19[0] = __AXNTKFaceComplicationOverviewDescription_block_invoke_2;
          v19[1] = &unk_C4B0;
          v21 = &v29;
          v20 = v5;
          AXPerformSafeBlock();
          v8 = v30[5];

          _Block_object_dispose(&v29, 8);
        }

        else
        {
          v8 = [v5 safeValueForKey:@"localizedDetailText"];
        }

        if ([v8 length])
        {
          v12 = v8;
          v13 = @"__AXStringForVariablesSentinel";
          v9 = __UIAXStringForVariables();

          ++v16;
          v18 = v9;
        }
      }
    }

    v1 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v1);

  if (v16 >= 1)
  {
    obj = AXNTKLocalizedStringForKey();
    v10 = [NSString stringWithFormat:obj, v16];
    v1 = __UIAXStringForVariables();

LABEL_18:
    goto LABEL_20;
  }

  v1 = 0;
LABEL_20:

  return v1;
}

uint64_t __AXNTKFaceComplicationOverviewDescription_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) complicationForSlot:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t __AXNTKFaceComplicationOverviewDescription_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) ntk_localizedNameWithOptions:1 forRichComplicationSlot:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t ___accessibilityValueForKeylineInfo_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedSlotForEditMode:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t ___accessibilityValueForKeylineInfo_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedOptionForCustomEditMode:*(a1 + 56) slot:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t ___accessibilityValueForKeylineInfo_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"localizedName"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id ___accessibilityValueForKeylineInfo_block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) indexOfOption:*(a1 + 40) forCustomEditMode:*(a1 + 64) slot:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

id ___accessibilityValueForKeylineInfo_block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) numberOfOptionsForCustomEditMode:*(a1 + 56) slot:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __selectedEditOptionForEditPageView_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedSlotForEditMode:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t __selectedEditOptionForEditPageView_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedOptionForCustomEditMode:*(a1 + 56) slot:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_51AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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