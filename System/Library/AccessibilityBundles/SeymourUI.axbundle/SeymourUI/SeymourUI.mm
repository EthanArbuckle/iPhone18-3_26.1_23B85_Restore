id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A22D9E70 table:@"Accessibility-Seymour"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _accessibilityStringForBurnBarPosition(unint64_t a1, int a2)
{
  v9[2] = *MEMORY[0x29EDCA608];
  if (a1 > 4)
  {
    v3 = 0;
    if (!a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = accessibilityLocalizedString(off_29F2F6640[a1]);
    if (!a2)
    {
LABEL_3:
      v4 = v3;
      goto LABEL_6;
    }
  }

  v5 = accessibilityLocalizedString(@"burn.bar.title");
  v9[0] = v5;
  v9[1] = v3;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:2];
  v4 = AXLabelForElements();

LABEL_6:
  v7 = *MEMORY[0x29EDCA608];

  return v4;
}

id _accessibilityStringForHealthKitWorkoutType(uint64_t a1)
{
  v2 = 0;
  v3 = a1 - 8;
  v4 = @"workout.icon.barre";
  switch(v3)
  {
    case 0:
      v4 = @"workout.icon.boxing";
      goto LABEL_33;
    case 1:
      v4 = @"workout.icon.climbing";
      goto LABEL_33;
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 15:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 26:
    case 28:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 39:
    case 40:
    case 41:
    case 43:
    case 46:
    case 47:
    case 48:
    case 52:
    case 53:
    case 59:
    case 62:
    case 63:
    case 65:
    case 67:
    case 68:
    case 70:
    case 71:
      goto LABEL_34;
    case 5:
      v4 = @"workout.icon.cycling";
      goto LABEL_33;
    case 8:
      v4 = @"workout.icon.elliptical";
      goto LABEL_33;
    case 12:
      v4 = @"workout.icon.functionalStrengthTraining";
      goto LABEL_33;
    case 16:
      v4 = @"workout.icon.hiking";
      goto LABEL_33;
    case 20:
      v4 = @"workout.icon.martialArts";
      goto LABEL_33;
    case 24:
      v4 = @"workout.icon.play";
      goto LABEL_33;
    case 25:
      v4 = @"workout.icon.preparationAndRecovery";
      goto LABEL_33;
    case 27:
      v4 = @"workout.icon.rowing";
      goto LABEL_33;
    case 29:
      v4 = @"workout.icon.running";
      goto LABEL_33;
    case 36:
      v4 = @"workout.icon.stairClimbing";
      goto LABEL_33;
    case 38:
      v4 = @"workout.icon.swimming";
      goto LABEL_33;
    case 42:
      v4 = @"workout.icon.traditionalStrengthTraining";
      goto LABEL_33;
    case 44:
      v4 = @"workout.icon.walking";
      goto LABEL_33;
    case 45:
      v4 = @"workout.icon.waterFitness";
      goto LABEL_33;
    case 49:
      v4 = @"workout.icon.yoga";
      goto LABEL_33;
    case 50:
      goto LABEL_33;
    case 51:
      v4 = @"workout.icon.coreTraining";
      goto LABEL_33;
    case 54:
      v4 = @"workout.icon.flexibility";
      goto LABEL_33;
    case 55:
      v4 = @"workout.icon.highIntensityIntervalTraining";
      goto LABEL_33;
    case 56:
      v4 = @"workout.icon.jumpRope";
      goto LABEL_33;
    case 57:
      v4 = @"workout.icon.kickboxing";
      goto LABEL_33;
    case 58:
      v4 = @"workout.icon.pilates";
      goto LABEL_33;
    case 60:
      v4 = @"workout.icon.stairs";
      goto LABEL_33;
    case 61:
      v4 = @"workout.icon.stepTraining";
      goto LABEL_33;
    case 64:
      v4 = @"workout.icon.taiChi";
      goto LABEL_33;
    case 66:
      v4 = @"workout.icon.handCycling";
      goto LABEL_33;
    case 69:
      v4 = @"workout.icon.dance";
      goto LABEL_33;
    case 72:
      v4 = @"workout.icon.cooldown";
      goto LABEL_33;
    default:
      if (@"workout.icon.barre" != 3000)
      {
        goto LABEL_34;
      }

      v4 = @"workout.icon.other";
LABEL_33:
      v2 = accessibilityLocalizedString(v4);
LABEL_34:

      return v2;
  }
}

__CFString *_accessibilityDescriptionForMediaTags(void *a1)
{
  v1 = a1;
  if ([v1 containsObject:@"Closed Caption"])
  {
    v7 = accessibilityLocalizedString(@"media.tags.closed.captions.label");
    v11 = @"__AXStringForVariablesSentinel";
    v2 = __UIAXStringForVariables();
  }

  else
  {
    v2 = &stru_2A22D9E70;
  }

  if ([v1 containsObject:{@"Subtitle", v7, v11}])
  {
    v8 = accessibilityLocalizedString(@"media.tags.subtitles.label");
    v12 = @"__AXStringForVariablesSentinel";
    v3 = __UIAXStringForVariables();

    v2 = v3;
  }

  if ([v1 containsObject:{@"Explicit Icon", v8, v12}])
  {
    v9 = accessibilityLocalizedString(@"media.tags.explicit.label");
    v13 = @"__AXStringForVariablesSentinel";
    v4 = __UIAXStringForVariables();

    v2 = v4;
  }

  if ([v1 containsObject:{@"Audio Hints", v9, v13}])
  {
    v10 = accessibilityLocalizedString(@"media.tags.audio.hints.label");
    v5 = __UIAXStringForVariables();

    v2 = v5;
  }

  return v2;
}

void sub_29C3195A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_29C319DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C319E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}