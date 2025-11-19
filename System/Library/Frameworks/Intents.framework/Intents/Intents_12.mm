uint64_t INPhotoAttributeOptionsWithNames(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v11;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v3 |= [v6 isEqualToString:@"photo"];
        if ([v6 isEqualToString:@"video"])
        {
          v3 |= 2uLL;
        }

        if ([v6 isEqualToString:@"GIF"])
        {
          v3 |= 4uLL;
        }

        if ([v6 isEqualToString:@"flash"])
        {
          v3 |= 8uLL;
        }

        if ([v6 isEqualToString:@"landscapeOrientation"])
        {
          v3 |= 0x10uLL;
        }

        if ([v6 isEqualToString:@"portraitOrientation"])
        {
          v3 |= 0x20uLL;
        }

        if ([v6 isEqualToString:@"favorite"])
        {
          v3 |= 0x40uLL;
        }

        if ([v6 isEqualToString:@"selfie"])
        {
          v3 |= 0x80uLL;
        }

        if ([v6 isEqualToString:@"frontFacingCamera"])
        {
          v3 |= 0x100uLL;
        }

        if ([v6 isEqualToString:@"screenshot"])
        {
          v3 |= 0x200uLL;
        }

        if ([v6 isEqualToString:@"burstPhoto"])
        {
          v3 |= 0x400uLL;
        }

        if ([v6 isEqualToString:@"HDRPhoto"])
        {
          v3 |= 0x800uLL;
        }

        if ([v6 isEqualToString:@"squarePhoto"])
        {
          v3 |= 0x1000uLL;
        }

        if ([v6 isEqualToString:@"panoramaPhoto"])
        {
          v3 |= 0x2000uLL;
        }

        if ([v6 isEqualToString:@"timeLapseVideo"])
        {
          v3 |= 0x4000uLL;
        }

        if ([v6 isEqualToString:@"slowMotionVideo"])
        {
          v3 |= 0x8000uLL;
        }

        if ([v6 isEqualToString:@"noirFilter"])
        {
          v3 |= 0x10000uLL;
        }

        if ([v6 isEqualToString:@"chromeFilter"])
        {
          v3 |= 0x20000uLL;
        }

        if ([v6 isEqualToString:@"instantFilter"])
        {
          v3 |= 0x40000uLL;
        }

        if ([v6 isEqualToString:@"tonalFilter"])
        {
          v3 |= 0x80000uLL;
        }

        if ([v6 isEqualToString:@"transferFilter"])
        {
          v3 |= 0x100000uLL;
        }

        if ([v6 isEqualToString:@"monoFilter"])
        {
          v3 |= 0x200000uLL;
        }

        if ([v6 isEqualToString:@"fadeFilter"])
        {
          v3 |= 0x400000uLL;
        }

        if ([v6 isEqualToString:@"processFilter"])
        {
          v3 |= 0x800000uLL;
        }

        if ([v6 isEqualToString:@"portraitPhoto"])
        {
          v3 |= 0x1000000uLL;
        }

        if ([v6 isEqualToString:@"livePhoto"])
        {
          v3 |= 0x2000000uLL;
        }

        if ([v6 isEqualToString:@"loopPhoto"])
        {
          v3 |= 0x4000000uLL;
        }

        if ([v6 isEqualToString:@"bouncePhoto"])
        {
          v3 |= 0x8000000uLL;
        }

        if ([v6 isEqualToString:@"longExposurePhoto"])
        {
          v3 |= 0x10000000uLL;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

id INPhotoAttributeOptionsGetLocalizedNames(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v8 = INLocalizedStringWithLocalizer(@"photo", @"photo", v3);
      [v4 addObject:v8];

      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_39;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = INLocalizedStringWithLocalizer(@"video", @"video", v3);
    [v4 addObject:v9];

    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }

LABEL_39:
    v10 = INLocalizedStringWithLocalizer(@"GIF", @"GIF", v3);
    [v4 addObject:v10];

    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
    }

LABEL_40:
    v11 = INLocalizedStringWithLocalizer(@"flash", @"flash", v3);
    [v4 addObject:v11];

    if ((a1 & 0x10) == 0)
    {
LABEL_7:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }

LABEL_41:
    v12 = INLocalizedStringWithLocalizer(@"landscape orientation", @"landscape orientation", v3);
    [v4 addObject:v12];

    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_42:
    v13 = INLocalizedStringWithLocalizer(@"portrait orientation", @"portrait orientation", v3);
    [v4 addObject:v13];

    if ((a1 & 0x40) == 0)
    {
LABEL_9:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }

LABEL_43:
    v14 = INLocalizedStringWithLocalizer(@"favorite", @"favorite", v3);
    [v4 addObject:v14];

    if ((a1 & 0x80) == 0)
    {
LABEL_10:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_44:
    v15 = INLocalizedStringWithLocalizer(@"selfie", @"selfie", v3);
    [v4 addObject:v15];

    if ((a1 & 0x100) == 0)
    {
LABEL_11:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_46;
    }

LABEL_45:
    v16 = INLocalizedStringWithLocalizer(@"front facing camera", @"front facing camera", v3);
    [v4 addObject:v16];

    if ((a1 & 0x200) == 0)
    {
LABEL_12:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_47;
    }

LABEL_46:
    v17 = INLocalizedStringWithLocalizer(@"screenshot", @"screenshot", v3);
    [v4 addObject:v17];

    if ((a1 & 0x400) == 0)
    {
LABEL_13:
      if ((a1 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_48;
    }

LABEL_47:
    v18 = INLocalizedStringWithLocalizer(@"burst photo", @"burst photo", v3);
    [v4 addObject:v18];

    if ((a1 & 0x800) == 0)
    {
LABEL_14:
      if ((a1 & 0x1000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

LABEL_48:
    v19 = INLocalizedStringWithLocalizer(@"HDR Photo", @"HDR Photo", v3);
    [v4 addObject:v19];

    if ((a1 & 0x1000) == 0)
    {
LABEL_15:
      if ((a1 & 0x2000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }

LABEL_49:
    v20 = INLocalizedStringWithLocalizer(@"square photo", @"square photo", v3);
    [v4 addObject:v20];

    if ((a1 & 0x2000) == 0)
    {
LABEL_16:
      if ((a1 & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }

LABEL_50:
    v21 = INLocalizedStringWithLocalizer(@"panorama photo", @"panorama photo", v3);
    [v4 addObject:v21];

    if ((a1 & 0x4000) == 0)
    {
LABEL_17:
      if ((a1 & 0x8000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }

LABEL_51:
    v22 = INLocalizedStringWithLocalizer(@"time lapse video", @"time lapse video", v3);
    [v4 addObject:v22];

    if ((a1 & 0x8000) == 0)
    {
LABEL_18:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_53;
    }

LABEL_52:
    v23 = INLocalizedStringWithLocalizer(@"slow motion video", @"slow motion video", v3);
    [v4 addObject:v23];

    if ((a1 & 0x10000) == 0)
    {
LABEL_19:
      if ((a1 & 0x20000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_54;
    }

LABEL_53:
    v24 = INLocalizedStringWithLocalizer(@"noir filter", @"noir filter", v3);
    [v4 addObject:v24];

    if ((a1 & 0x20000) == 0)
    {
LABEL_20:
      if ((a1 & 0x40000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_55;
    }

LABEL_54:
    v25 = INLocalizedStringWithLocalizer(@"chrome filter", @"chrome filter", v3);
    [v4 addObject:v25];

    if ((a1 & 0x40000) == 0)
    {
LABEL_21:
      if ((a1 & 0x80000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_56;
    }

LABEL_55:
    v26 = INLocalizedStringWithLocalizer(@"instant filter", @"instant filter", v3);
    [v4 addObject:v26];

    if ((a1 & 0x80000) == 0)
    {
LABEL_22:
      if ((a1 & 0x100000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_57;
    }

LABEL_56:
    v27 = INLocalizedStringWithLocalizer(@"tonal filter", @"tonal filter", v3);
    [v4 addObject:v27];

    if ((a1 & 0x100000) == 0)
    {
LABEL_23:
      if ((a1 & 0x200000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_58;
    }

LABEL_57:
    v28 = INLocalizedStringWithLocalizer(@"transfer filter", @"transfer filter", v3);
    [v4 addObject:v28];

    if ((a1 & 0x200000) == 0)
    {
LABEL_24:
      if ((a1 & 0x400000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_59;
    }

LABEL_58:
    v29 = INLocalizedStringWithLocalizer(@"mono filter", @"mono filter", v3);
    [v4 addObject:v29];

    if ((a1 & 0x400000) == 0)
    {
LABEL_25:
      if ((a1 & 0x800000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_60;
    }

LABEL_59:
    v30 = INLocalizedStringWithLocalizer(@"fade filter", @"fade filter", v3);
    [v4 addObject:v30];

    if ((a1 & 0x800000) == 0)
    {
LABEL_26:
      if ((a1 & 0x1000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_61;
    }

LABEL_60:
    v31 = INLocalizedStringWithLocalizer(@"process filter", @"process filter", v3);
    [v4 addObject:v31];

    if ((a1 & 0x1000000) == 0)
    {
LABEL_27:
      if ((a1 & 0x2000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_62;
    }

LABEL_61:
    v32 = INLocalizedStringWithLocalizer(@"portrait photo", @"portrait photo", v3);
    [v4 addObject:v32];

    if ((a1 & 0x2000000) == 0)
    {
LABEL_28:
      if ((a1 & 0x4000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_63;
    }

LABEL_62:
    v33 = INLocalizedStringWithLocalizer(@"live photo", @"live photo", v3);
    [v4 addObject:v33];

    if ((a1 & 0x4000000) == 0)
    {
LABEL_29:
      if ((a1 & 0x8000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_64;
    }

LABEL_63:
    v34 = INLocalizedStringWithLocalizer(@"loop photo", @"loop photo", v3);
    [v4 addObject:v34];

    if ((a1 & 0x8000000) == 0)
    {
LABEL_30:
      if ((a1 & 0x10000000) == 0)
      {
LABEL_32:
        v6 = [v4 copy];

        goto LABEL_34;
      }

LABEL_31:
      v5 = INLocalizedStringWithLocalizer(@"long exposure photo", @"long exposure photo", v3);
      [v4 addObject:v5];

      goto LABEL_32;
    }

LABEL_64:
    v35 = INLocalizedStringWithLocalizer(@"bounce photo", @"bounce photo", v3);
    [v4 addObject:v35];

    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_34:

  return v6;
}

void sub_18EC7AAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEKRecurrenceDayOfWeekClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  result = objc_getClass("EKRecurrenceDayOfWeek");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKRecurrenceDayOfWeekClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getEKRecurrenceRuleClass_block_invoke(v3);
  }

  return result;
}

void __getEKRecurrenceRuleClass_block_invoke(uint64_t a1)
{
  EventKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKRecurrenceRule");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKRecurrenceRuleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    EventKitLibrary();
  }
}

void EventKitLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __EventKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7285430;
    v4 = 0;
    EventKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (EventKitLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __EventKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _INPBFindEventsIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBCalendarEvent);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBCalendarEventReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addEvents:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t INWellnessQueryResultTypeGetBackingType(unint64_t result)
{
  if (result >= 0xA)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INWellnessQueryResultTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 9) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INWellnessQueryResultTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7285448[a1 - 1];
  }
}

uint64_t INWellnessQueryResultTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"raw"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"average"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"minimum"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"maximum"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"sum"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"first"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"last"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"above"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"below"])
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INWellnessQueryResultTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v5 = @"minimum";
      }

      else
      {
        v5 = @"maximum";
      }
    }

    else if (a1 == 1)
    {
      v5 = @"raw";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_21;
      }

      v5 = @"average";
    }
  }

  else if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v5 = @"sum";
    }

    else
    {
      v5 = @"first";
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        v5 = @"last";
        break;
      case 8:
        v5 = @"above";
        break;
      case 9:
        v5 = @"below";
        break;
      default:
        goto LABEL_21;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_21:

  return v4;
}

void sub_18EC81978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18EC83E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__100537(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _INPBPlatformSupportReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 2)
    {
      v21 = PBReaderReadString();
      [a1 setMinimumOsVersion:v21];
    }

    else if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_35:
      [a1 setSupportedPlatform:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

__CFString *INWorkoutNameIdentifierGetFacadeObject(int a1, unsigned int a2)
{
  result = 0;
  if (a2 <= 0x14)
  {
    if (a1)
    {
      return off_1E7285A20[a2];
    }
  }

  return result;
}

uint64_t INWorkoutNameIdentifierGetBackingType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Run"])
    {
      v3 = 0;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Sit"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Steps"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Stand"])
    {
      v3 = 3;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Move"])
    {
      v3 = 4;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Walk"])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Yoga"])
    {
      v3 = 6;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Dance"])
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Crosstraining"])
    {
      v3 = 8;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Elliptical"])
    {
      v3 = 9;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Rower"])
    {
      v3 = 10;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Cycle"])
    {
      v3 = 11;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Stairs"])
    {
      v3 = 12;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Other"])
    {
      v3 = 13;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Indoorrun"])
    {
      v3 = 14;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Indoorcycle"])
    {
      v3 = 15;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Indoorwalk"])
    {
      v3 = 16;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Exercise"])
    {
      v3 = 17;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Hike"])
    {
      v3 = 18;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.HighIntensityIntervalTraining"])
    {
      v3 = 19;
    }

    else if ([v2 isEqualToString:@"com.apple.intents.WorkoutNameIdentifier.Swim"])
    {
      v3 = 20;
    }

    else
    {
      v3 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFLL;
  }

  return v3;
}

__CFString *INWorkoutNameIdentifierValueAsString(__CFString *a1)
{
  if (a1)
  {
    BackingType = INWorkoutNameIdentifierGetBackingType(a1);
    if (BackingType >= 0x15)
    {
      a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", BackingType];
    }

    else
    {
      a1 = off_1E7285AC8[BackingType];
    }

    v1 = vars8;
  }

  return a1;
}

uint64_t _INPBEndWorkoutIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBDataString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setWorkoutName:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

__CFString *INCreateTaskListIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7285B98[a1];
  }
}

uint64_t _INPBSetSeatSettingsInCarIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v52 & 0x7F) << v43;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v49 = 0;
            }

            else
            {
              v49 = v45;
            }

LABEL_94:
            [a1 setRelativeLevelSetting:v49];
            goto LABEL_99;
          }

          if (v13 == 8)
          {
            v21 = objc_alloc_init(_INPBDataString);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
            {
LABEL_102:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setCarName:v21];
            goto LABEL_55;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v52 & 0x7F) << v29;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_88;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v31;
            }

LABEL_88:
            [a1 setSeat:v35];
            goto LABEL_99;
          }

          if (v13 == 6)
          {
            v21 = objc_alloc_init(_INPBInteger);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v21, a2))
            {
              goto LABEL_102;
            }

            PBReaderRecallMark();
            [a1 setLevel:v21];
            goto LABEL_55;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v52 & 0x7F) << v36;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v42 = 0;
              goto LABEL_90;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_90:
          [a1 setEnableCooling:v42];
          goto LABEL_99;
        }

        if (v13 == 4)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v52 & 0x7F) << v22;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_98;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_98:
          [a1 setEnableMassage:v28];
          goto LABEL_99;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
            goto LABEL_102;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
LABEL_55:

          goto LABEL_99;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v52 & 0x7F) << v14;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_96;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_96:
          [a1 setEnableHeating:v20];
          goto LABEL_99;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_99:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INEvent *INIntentSlotValueTransformFromEvent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INEvent alloc];
    v3 = [v1 eventType];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = [v1 eventDescriptors];

    v6 = INIntentSlotValueTransformFromStrings(v5);
    v7 = [(INEvent *)v2 initWithEventType:v4 eventDescriptors:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBEvent *INIntentSlotValueTransformToEvent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBEvent);
    v3 = [v1 eventType];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBEvent *)v2 setEventType:v4];

    v5 = [v1 eventDescriptors];

    v6 = INIntentSlotValueTransformToStrings(v5);
    [(_INPBEvent *)v2 setEventDescriptors:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromEvents(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromEvent(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToEvents(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToEvent(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

INPlace *INIntentSlotValueTransformFromPlace(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v14 = [INPlace alloc];
    v2 = [v1 placeType];
    v3 = INIntentSlotValueTransformFromString(v2);
    v4 = [v1 placeSubType];
    v5 = INIntentSlotValueTransformFromString(v4);
    v6 = [v1 placeDescriptors];
    v7 = INIntentSlotValueTransformFromStrings(v6);
    v8 = [v1 hasPersonalPlaceType];
    v9 = [v1 personalPlaceType];

    v10 = 2 * (v9 == 3);
    if (v9 == 2)
    {
      v10 = 1;
    }

    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(INPlace *)v14 initWithPlaceType:v3 placeSubType:v5 placeDescriptors:v7 personalPlaceType:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

_INPBPlace *INIntentSlotValueTransformToPlace(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPlace);
    v3 = [v1 placeType];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBPlace *)v2 setPlaceType:v4];

    v5 = [v1 placeSubType];
    v6 = INIntentSlotValueTransformToString(v5);
    [(_INPBPlace *)v2 setPlaceSubType:v6];

    v7 = [v1 placeDescriptors];
    v8 = INIntentSlotValueTransformToStrings(v7);
    [(_INPBPlace *)v2 setPlaceDescriptors:v8];

    v9 = [v1 personalPlaceType];
    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0x7FFFFFFF;
    }

    if (v9 == 2)
    {
      v11 = 3;
    }

    else
    {
      v11 = v10;
    }

    [(_INPBPlace *)v2 setPersonalPlaceType:v11];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromPlaces(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromPlace(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToPlaces(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToPlace(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

INActivity *INIntentSlotValueTransformFromActivity(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INActivity alloc];
    v3 = [v1 activityType];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = [v1 activityDescriptors];

    v6 = INIntentSlotValueTransformFromStrings(v5);
    v7 = [(INActivity *)v2 initWithActivityType:v4 activityDescriptors:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBActivity *INIntentSlotValueTransformToActivity(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBActivity);
    v3 = [v1 activityType];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBActivity *)v2 setActivityType:v4];

    v5 = [v1 activityDescriptors];

    v6 = INIntentSlotValueTransformToStrings(v5);
    [(_INPBActivity *)v2 setActivityDescriptors:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromActivities(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromActivity(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToActivities(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToActivity(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformFromFile(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ([v1 hasRemovedOnCompletion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "removedOnCompletion")}];
  }

  else
  {
    v3 = 0;
  }

  v5 = [v2 fileURL];

  if (v5)
  {
    v6 = [INFile alloc];
    v7 = [v2 filename];
    v8 = [v2 fileURL];
    v9 = INIntentSlotValueTransformFromURLValue(v8);
    v10 = [v2 typeIdentifier];
    v4 = [(INFile *)v6 _initWithData:0 filename:v7 fileURL:v9 typeIdentifier:v10 removedOnCompletion:v3];
  }

  else
  {
    v11 = [v2 data];
    if (v11 && (v12 = v11, [v2 filename], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = [INFile alloc];
      v7 = [v2 data];
      v8 = [v2 filename];
      v9 = [v2 typeIdentifier];
      v15 = [(INFile *)v14 _initWithData:v7 filename:v8 fileURL:0 typeIdentifier:v9 removedOnCompletion:v3];
    }

    else
    {
      v16 = [v2 bookmarkData];
      if (!v16 || (v17 = v16, [v2 filename], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
      {
        v4 = 0;
        goto LABEL_16;
      }

      v19 = [INFile alloc];
      v7 = [v2 bookmarkData];
      v8 = [v2 filename];
      v9 = [v2 typeIdentifier];
      v15 = [(INFile *)v19 _initWithBookmarkData:v7 filename:v8 typeIdentifier:v9 removedOnCompletion:v3];
    }

    v4 = v15;
  }

LABEL_16:
LABEL_17:

  return v4;
}

INGeographicalFeature *INIntentSlotValueTransformFromGeographicalFeature(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INGeographicalFeature alloc];
    v3 = [v1 geographicalFeatureType];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = [v1 geographicalFeatureDescriptors];

    v6 = INIntentSlotValueTransformFromStrings(v5);
    v7 = [(INGeographicalFeature *)v2 initWithGeographicalFeatureType:v4 geographicalFeatureDescriptors:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBGeographicalFeature *INIntentSlotValueTransformToGeographicalFeature(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBGeographicalFeature);
    v3 = [v1 geographicalFeatureType];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBGeographicalFeature *)v2 setGeographicalFeatureType:v4];

    v5 = [v1 geographicalFeatureDescriptors];

    v6 = INIntentSlotValueTransformToStrings(v5);
    [(_INPBGeographicalFeature *)v2 setGeographicalFeatureDescriptors:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromGeographicalFeatures(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromGeographicalFeature(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToGeographicalFeatures(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToGeographicalFeature(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBSearchForTimersIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v34) & 0x7F) << v5;
        if ((LOBYTE(v34) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v34 = 0.0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
LABEL_66:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBDataString);
          v34 = 0.0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v21, a2))
          {
            goto LABEL_66;
          }

          PBReaderRecallMark();
          [a1 setLabel:v21];
LABEL_50:

          goto LABEL_63;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v34 = 0.0;
            v22 = [a2 position] + 8;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setDuration:v34];
            goto LABEL_63;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (LOBYTE(v34) & 0x7F) << v24;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_56;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_56:
            [a1 setState:v30];
            goto LABEL_63;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (LOBYTE(v34) & 0x7F) << v14;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_60;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_60:
            [a1 setType:v20];
            goto LABEL_63;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_63:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBMediaItemValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 99)
        {
          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            [a1 setArtist:v14];
            goto LABEL_60;
          }

          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            [a1 setAssetInfo:v14];
            goto LABEL_60;
          }
        }

        else
        {
          switch(v13)
          {
            case 'd':
              v14 = objc_alloc_init(_INPBScoredValue);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBScoredValueReadFrom(v14, a2))
              {
LABEL_71:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addTopics:v14];
              }

              goto LABEL_60;
            case 'e':
              v14 = objc_alloc_init(_INPBScoredValue);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBScoredValueReadFrom(v14, a2))
              {
                goto LABEL_71;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addNamedEntities:v14];
              }

              goto LABEL_60;
            case 'f':
              v14 = objc_alloc_init(_INPBPrivateMediaItemValueData);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBPrivateMediaItemValueDataReadFrom(v14, a2))
              {
                goto LABEL_71;
              }

              PBReaderRecallMark();
              [a1 setPrivateMediaItemValueData:v14];
              goto LABEL_60;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBValueMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
          {
            goto LABEL_71;
          }

          PBReaderRecallMark();
          [a1 setValueMetadata:v14];
          goto LABEL_60;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setIdentifier:v14];
LABEL_60:

          goto LABEL_61;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            [a1 setTitle:v14];
            goto LABEL_60;
          case 4:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_68;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_68:
            [a1 setType:v21];
            goto LABEL_61;
          case 5:
            v14 = objc_alloc_init(_INPBImageValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            [a1 setArtwork:v14];
            goto LABEL_60;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDeleteEventIntentResponseReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 3)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setConfirmationReason:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBCalendarEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            [a1 setEventIdentifier:v14];
LABEL_50:

            goto LABEL_51;
          case 2:
            v14 = PBReaderReadString();
            [a1 setTitle:v14];
            goto LABEL_50;
          case 3:
            v14 = objc_alloc_init(_INPBDateTimeRangeValue);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v14, a2))
            {
LABEL_57:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDateTimeRange:v14];
            goto LABEL_50;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 7)
        {
          v14 = PBReaderReadString();
          [a1 setCalendarPunchoutURI:v14];
          goto LABEL_50;
        }

        if (v13 == 6)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_54;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_54:
          [a1 setIsContactBirthday:v21];
          goto LABEL_51;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBEventParticipant);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBEventParticipantReadFrom(v14, a2))
          {
            goto LABEL_57;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addParticipants:v14];
          }

          goto LABEL_50;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBLocation);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
          {
            goto LABEL_57;
          }

          PBReaderRecallMark();
          [a1 setLocation:v14];
          goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_18EC983EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__104503(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _INPBSetTimerAttributeIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v20) & 0x7F) << v5;
        if ((LOBYTE(v20) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v20 = 0.0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setToDuration:v20];
          goto LABEL_39;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v20 = 0.0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
LABEL_42:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setToLabel:v14];
          goto LABEL_33;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v20 = 0.0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_42;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBTimer);
          v20 = 0.0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v14, a2))
          {
            goto LABEL_42;
          }

          PBReaderRecallMark();
          [a1 setTargetTimer:v14];
LABEL_33:

          goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBMessageLinkMetadataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 79)
      {
        if (v13 > 122)
        {
          if (v13 <= 149)
          {
            if (v13 > 131)
            {
              switch(v13)
              {
                case 0x84:
                  v14 = PBReaderReadString();
                  [a1 setTvEpisodeGenre:v14];
                  goto LABEL_125;
                case 0x8C:
                  v14 = PBReaderReadString();
                  [a1 setTvSeasonName:v14];
                  goto LABEL_125;
                case 0x8D:
                  v14 = PBReaderReadString();
                  [a1 setTvSeasonGenre:v14];
                  goto LABEL_125;
              }
            }

            else
            {
              switch(v13)
              {
                case 0x7B:
                  v14 = objc_alloc_init(_INPBDateTime);
                  v24 = 0;
                  v25 = 0;
                  if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
                  {
LABEL_135:

                    return 0;
                  }

                  PBReaderRecallMark();
                  [a1 setPodcastEpisodeReleaseDate:v14];
                  goto LABEL_125;
                case 0x82:
                  v14 = PBReaderReadString();
                  [a1 setTvEpisodeEpisodeName:v14];
                  goto LABEL_125;
                case 0x83:
                  v14 = PBReaderReadString();
                  [a1 setTvEpisodeSeasonName:v14];
                  goto LABEL_125;
              }
            }
          }

          else if (v13 <= 169)
          {
            switch(v13)
            {
              case 0x96:
                v14 = PBReaderReadString();
                [a1 setMovieName:v14];
                goto LABEL_125;
              case 0x97:
                v14 = PBReaderReadString();
                [a1 setMovieGenre:v14];
                goto LABEL_125;
              case 0xA0:
                v14 = PBReaderReadString();
                [a1 setTvShowName:v14];
                goto LABEL_125;
            }
          }

          else if (v13 > 179)
          {
            if (v13 == 180)
            {
              v14 = PBReaderReadString();
              [a1 setAppleTvTitle:v14];
              goto LABEL_125;
            }

            if (v13 == 181)
            {
              v14 = PBReaderReadString();
              [a1 setAppleTvSubtitle:v14];
              goto LABEL_125;
            }
          }

          else
          {
            if (v13 == 170)
            {
              v14 = PBReaderReadString();
              [a1 setMovieBundleName:v14];
              goto LABEL_125;
            }

            if (v13 == 171)
            {
              v14 = PBReaderReadString();
              [a1 setMovieBundleGenre:v14];
              goto LABEL_125;
            }
          }
        }

        else if (v13 <= 100)
        {
          if (v13 > 89)
          {
            switch(v13)
            {
              case 'Z':
                v14 = PBReaderReadString();
                [a1 setBookName:v14];
                goto LABEL_125;
              case '[':
                v14 = PBReaderReadString();
                [a1 setBookAuthor:v14];
                goto LABEL_125;
              case 'd':
                v14 = PBReaderReadString();
                [a1 setAudioBookName:v14];
                goto LABEL_125;
            }
          }

          else
          {
            switch(v13)
            {
              case 'P':
                v14 = PBReaderReadString();
                [a1 setSoftwareName:v14];
                goto LABEL_125;
              case 'Q':
                v14 = PBReaderReadString();
                [a1 setSoftwareGenre:v14];
                goto LABEL_125;
              case 'R':
                v14 = PBReaderReadString();
                [a1 setSoftwarePlatform:v14];
                goto LABEL_125;
            }
          }
        }

        else if (v13 <= 110)
        {
          switch(v13)
          {
            case 'e':
              v14 = PBReaderReadString();
              [a1 setAudioBookAuthor:v14];
              goto LABEL_125;
            case 'f':
              v14 = PBReaderReadString();
              [a1 setAudioBookNarrator:v14];
              goto LABEL_125;
            case 'n':
              v14 = PBReaderReadString();
              [a1 setPodcastName:v14];
              goto LABEL_125;
          }
        }

        else
        {
          if (v13 > 120)
          {
            if (v13 == 121)
            {
              v14 = PBReaderReadString();
              [a1 setPodcastEpisodePodcastName:v14];
            }

            else
            {
              v14 = PBReaderReadString();
              [a1 setPodcastEpisodeArtist:v14];
            }

            goto LABEL_125;
          }

          if (v13 == 111)
          {
            v14 = PBReaderReadString();
            [a1 setPodcastArtist:v14];
            goto LABEL_125;
          }

          if (v13 == 120)
          {
            v14 = PBReaderReadString();
            [a1 setPodcastEpisodeName:v14];
LABEL_125:

            goto LABEL_126;
          }
        }
      }

      else
      {
        if (v13 <= 59)
        {
          switch(v13)
          {
            case 1:
              v14 = PBReaderReadString();
              [a1 setSiteName:v14];
              goto LABEL_125;
            case 2:
              v14 = PBReaderReadString();
              [a1 setSummary:v14];
              goto LABEL_125;
            case 3:
              v14 = PBReaderReadString();
              [a1 setTitle:v14];
              goto LABEL_125;
            case 4:
              v14 = PBReaderReadString();
              [a1 setOpenGraphType:v14];
              goto LABEL_125;
            case 5:
              v14 = PBReaderReadString();
              [a1 setItemType:v14];
              goto LABEL_125;
            case 6:
              v14 = objc_alloc_init(_INPBURLValue);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v14, a2))
              {
                goto LABEL_135;
              }

              PBReaderRecallMark();
              [a1 setLinkURL:v14];
              goto LABEL_125;
            case 7:
              v14 = PBReaderReadString();
              [a1 setOriginalURL:v14];
              goto LABEL_125;
            case 8:
              v14 = PBReaderReadString();
              if (v14)
              {
                [a1 addImageURL:v14];
              }

              goto LABEL_125;
            case 9:
              v14 = PBReaderReadString();
              if (v14)
              {
                [a1 addIconURL:v14];
              }

              goto LABEL_125;
            case 10:
              v14 = PBReaderReadString();
              [a1 setCreator:v14];
              goto LABEL_125;
            case 11:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              break;
            case 12:
              v14 = PBReaderReadString();
              [a1 setITunesStoreIdentifier:v14];
              goto LABEL_125;
            case 13:
              v14 = PBReaderReadString();
              [a1 setITunesStoreFrontIdentifier:v14];
              goto LABEL_125;
            case 20:
              v14 = PBReaderReadString();
              [a1 setSongTitle:v14];
              goto LABEL_125;
            case 21:
              v14 = PBReaderReadString();
              [a1 setSongArtist:v14];
              goto LABEL_125;
            case 22:
              v14 = PBReaderReadString();
              [a1 setSongAlbum:v14];
              goto LABEL_125;
            case 30:
              v14 = PBReaderReadString();
              [a1 setAlbumName:v14];
              goto LABEL_125;
            case 31:
              v14 = PBReaderReadString();
              [a1 setAlbumArtist:v14];
              goto LABEL_125;
            case 40:
              v14 = PBReaderReadString();
              [a1 setMusicVideoName:v14];
              goto LABEL_125;
            case 41:
              v14 = PBReaderReadString();
              [a1 setMusicVideoArtist:v14];
              goto LABEL_125;
            case 50:
              v14 = PBReaderReadString();
              [a1 setArtistName:v14];
              goto LABEL_125;
            case 51:
              v14 = PBReaderReadString();
              [a1 setArtistGenre:v14];
              goto LABEL_125;
            default:
              goto LABEL_128;
          }

          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_133;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_133:
          [a1 setLinkMediaType:v21];
          goto LABEL_126;
        }

        if (v13 > 69)
        {
          if (v13 == 70)
          {
            v14 = PBReaderReadString();
            [a1 setRadioName:v14];
            goto LABEL_125;
          }

          if (v13 == 71)
          {
            v14 = PBReaderReadString();
            [a1 setRadioCurator:v14];
            goto LABEL_125;
          }
        }

        else
        {
          if (v13 == 60)
          {
            v14 = PBReaderReadString();
            [a1 setPlaylistName:v14];
            goto LABEL_125;
          }

          if (v13 == 61)
          {
            v14 = PBReaderReadString();
            [a1 setPlaylistCurator:v14];
            goto LABEL_125;
          }
        }
      }

LABEL_128:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_126:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INPlayMediaIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E7285E60[a1];
  }
}

uint64_t INPlaybackRepeatModeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INPlaybackRepeatModeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 3) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INPlaybackRepeatModeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7285EE8 + a1 - 1);
  }
}

uint64_t INPlaybackRepeatModeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"none"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"all"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"one"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPlaybackRepeatModeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"one";
      goto LABEL_7;
    case 2:
      v4 = @"all";
      goto LABEL_7;
    case 1:
      v4 = @"none";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

unint64_t INMediaItemTypeGetBackingType(unint64_t result)
{
  if (result >= 0x15)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INMediaItemTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 0x14) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INMediaItemTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7285F00 + a1 - 1);
  }
}

uint64_t INMediaItemTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"song"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"album"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"artist"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"genre"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"playlist"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"podcastShow"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"podcastEpisode"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"podcastPlaylist"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"musicStation"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"audioBook"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"movie"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"TVShow"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"TVShowEpisode"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"musicVideo"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"podcastStation"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"radioStation"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"station"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"music"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"algorithmicRadioStation"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"news"])
  {
    v2 = 20;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaItemTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"song";
      goto LABEL_23;
    case 2:
      v4 = @"album";
      goto LABEL_23;
    case 3:
      v4 = @"artist";
      goto LABEL_23;
    case 4:
      v4 = @"genre";
      goto LABEL_23;
    case 5:
      v4 = @"playlist";
      goto LABEL_23;
    case 6:
      v4 = @"podcast show";
      goto LABEL_23;
    case 7:
      v4 = @"podcast episode";
      goto LABEL_23;
    case 8:
      v4 = @"podcast playlist";
      goto LABEL_23;
    case 9:
      v4 = @"music station";
      goto LABEL_23;
    case 10:
      v4 = @"audio book";
      goto LABEL_23;
    case 11:
      v4 = @"movie";
      goto LABEL_23;
    case 12:
      v4 = @"t v show";
      goto LABEL_23;
    case 13:
      v4 = @"t v show episode";
      goto LABEL_23;
    case 14:
      v4 = @"music video";
      goto LABEL_23;
    case 15:
      v4 = @"podcast station";
      goto LABEL_23;
    case 16:
      v4 = @"radio station";
      goto LABEL_23;
    case 17:
      v4 = @"station";
      goto LABEL_23;
    case 18:
      v4 = @"music";
      goto LABEL_23;
    case 19:
      v4 = @"algorithmic radio station";
      goto LABEL_23;
    case 20:
      v4 = @"news";
LABEL_23:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t INSetTimerAttributeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7285FA0 + a1);
  }
}

uint64_t INResumeTimerIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7285FE8 + a1);
  }
}

uint64_t _INPBCreateTimerIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBTimer);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCreatedTimer:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INResetTimerIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7286040 + a1);
  }
}

uint64_t INEventAttributeGetBackingType(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INEventAttributeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 3) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INEventAttributeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7286080 + a1 - 1);
  }
}

uint64_t INEventAttributeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"eventLocation"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"participants"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"datetime"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INEventAttributeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 3:
      v4 = @"datetime";
      goto LABEL_7;
    case 2:
      v4 = @"participants";
      goto LABEL_7;
    case 1:
      v4 = @"event location";
LABEL_7:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t INCreateTimerIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7286098 + a1);
  }
}

uint64_t _INPBDeleteEventIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = PBReaderReadString();
        [a1 setTargetEventIdentifier:v21];
LABEL_33:

        goto LABEL_38;
      }

      if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24[0] & 0x7F) << v14;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_37;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_37:
        [a1 setDeleteAllOccurrences:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_33;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INDeleteTimerIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7286110 + a1);
  }
}

uint64_t _INPBResetTimerIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(_INPBTimer);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_INPBTimerReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

        PBReaderRecallMark();
        [a1 setTargetTimer:v21];
LABEL_35:

        goto LABEL_40;
      }

      if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_39;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_39:
        [a1 setResetMultiple:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_INPBIntentMetadata);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INPauseTimerIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7286150 + a1);
  }
}

INTimer *INIntentSlotValueTransformFromTimer(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INTimer alloc];
    v3 = [v1 label];
    v4 = INIntentSlotValueTransformFromDataString(v3);
    [v1 duration];
    v6 = v5;
    [v1 remainingTime];
    v8 = v7;
    v9 = [v1 identifier];
    v10 = [v1 hasState];
    v11 = [v1 state];
    v12 = v11 == 1;
    if (v11 == 2)
    {
      v12 = 2;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v1 hasType];
    v15 = [v1 type];

    v16 = v15 == 1;
    if (v15 == 2)
    {
      v16 = 2;
    }

    if (v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(INTimer *)v2 initWithLabel:v4 duration:v9 remainingTime:v13 identifier:v17 state:v6 type:v8];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

_INPBTimer *INIntentSlotValueTransformToTimer(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBTimer);
    v3 = [v1 label];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBTimer *)v2 setLabel:v4];

    [v1 duration];
    [(_INPBTimer *)v2 setDuration:?];
    [v1 remainingTime];
    [(_INPBTimer *)v2 setRemainingTime:?];
    v5 = [v1 identifier];
    [(_INPBTimer *)v2 setIdentifier:v5];

    v6 = [v1 state];
    if (v6 >= 3)
    {
      v7 = 0x7FFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    [(_INPBTimer *)v2 setState:v7];
    v8 = [v1 type];

    if (v8 >= 3)
    {
      v9 = 0x7FFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    [(_INPBTimer *)v2 setType:v9];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromTimers(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromTimer(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToTimers(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToTimer(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t INSearchForTimersIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E72861A8 + a1);
  }
}

unint64_t INTimerStateGetBackingType(unint64_t result)
{
  if (result >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INTimerStateGetFacadeType(int a1, int a2)
{
  v2 = a2 == 1;
  if (a2 == 2)
  {
    v2 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INTimerStateGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"timerPaused";
  }

  if (a1 == 1)
  {
    return @"timerRunning";
  }

  else
  {
    return v1;
  }
}

uint64_t INTimerStateWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"timerRunning"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"timerPaused"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INTimerStateGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"timer paused";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"timer running";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

INHomeContent *INIntentSlotValueTransformFromHomeContent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INHomeContent alloc];
    v3 = [v1 filter];
    v4 = INIntentSlotValueTransformFromHomeFilter(v3);
    v5 = [v1 actions];

    v6 = INIntentSlotValueTransformFromHomeActions(v5);
    v7 = [(INHomeContent *)v2 initWithFilter:v4 actions:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBHomeContent *INIntentSlotValueTransformToHomeContent(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBHomeContent);
    v3 = [v1 filter];
    v4 = INIntentSlotValueTransformToHomeFilter(v3);
    [(_INPBHomeContent *)v2 setFilter:v4];

    v5 = [v1 actions];

    v6 = INIntentSlotValueTransformToHomeActions(v5);
    [(_INPBHomeContent *)v2 setActions:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeContents(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromHomeContent(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToHomeContents(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToHomeContent(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t INHomeServiceTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 0x27)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INHomeServiceTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 0x27) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeServiceTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x26)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E72861D8 + a1 - 1);
  }
}

uint64_t INHomeServiceTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"lightbulb"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"switch"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"thermostat"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"garageDoorOpener"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"fan"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"outlet"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"doorLock"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"motorizedDoor"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"securitySystem"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"motorizedWindow"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"shades"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"speaker"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"heaterCooler"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"humidifierDehumidifier"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"slat"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"irrigationSystem"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"valve"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"faucet"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"television"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"ipCamera"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"custom"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"temperatureSensor"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"humiditySensor"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"airQualitySensor"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"smokeSensor"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"carbonMonoxideSensor"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"carbonDioxideSensor"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"contactSensor"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"occupancySensor"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"motionSensor"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"lightSensor"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"leakSensor"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"batteryService"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"doorBell"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"airPurifier"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"filterMaintenance"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"AppleTV"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"airportExpress"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"cameraRecording"])
  {
    v2 = 39;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeServiceTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"lightbulb";
      goto LABEL_42;
    case 2:
      v4 = @"switch";
      goto LABEL_42;
    case 3:
      v4 = @"thermostat";
      goto LABEL_42;
    case 4:
      v4 = @"garage door opener";
      goto LABEL_42;
    case 5:
      v4 = @"fan";
      goto LABEL_42;
    case 6:
      v4 = @"outlet";
      goto LABEL_42;
    case 7:
      v4 = @"door lock";
      goto LABEL_42;
    case 8:
      v4 = @"motorized door";
      goto LABEL_42;
    case 9:
      v4 = @"security system";
      goto LABEL_42;
    case 10:
      v4 = @"motorized window";
      goto LABEL_42;
    case 11:
      v4 = @"shades";
      goto LABEL_42;
    case 12:
      v4 = @"speaker";
      goto LABEL_42;
    case 13:
      v4 = @"heater cooler";
      goto LABEL_42;
    case 14:
      v4 = @"humidifier dehumidifier";
      goto LABEL_42;
    case 15:
      v4 = @"slat";
      goto LABEL_42;
    case 16:
      v4 = @"irrigation system";
      goto LABEL_42;
    case 17:
      v4 = @"valve";
      goto LABEL_42;
    case 18:
      v4 = @"faucet";
      goto LABEL_42;
    case 19:
      v4 = @"television";
      goto LABEL_42;
    case 20:
      v4 = @"ip camera";
      goto LABEL_42;
    case 21:
      v4 = @"custom";
      goto LABEL_42;
    case 22:
      v4 = @"temperature sensor";
      goto LABEL_42;
    case 23:
      v4 = @"humidity sensor";
      goto LABEL_42;
    case 24:
      v4 = @"air quality sensor";
      goto LABEL_42;
    case 25:
      v4 = @"smoke sensor";
      goto LABEL_42;
    case 26:
      v4 = @"carbon monoxide sensor";
      goto LABEL_42;
    case 27:
      v4 = @"carbon dioxide sensor";
      goto LABEL_42;
    case 28:
      v4 = @"contact sensor";
      goto LABEL_42;
    case 29:
      v4 = @"occupancy sensor";
      goto LABEL_42;
    case 30:
      v4 = @"motion sensor";
      goto LABEL_42;
    case 31:
      v4 = @"light sensor";
      goto LABEL_42;
    case 32:
      v4 = @"leak sensor";
      goto LABEL_42;
    case 33:
      v4 = @"battery service";
      goto LABEL_42;
    case 34:
      v4 = @"door bell";
      goto LABEL_42;
    case 35:
      v4 = @"air purifier";
      goto LABEL_42;
    case 36:
      v4 = @"filter maintenance";
      goto LABEL_42;
    case 37:
      v4 = @"Apple TV";
      goto LABEL_42;
    case 38:
      v4 = @"airport express";
      goto LABEL_42;
    case 39:
      v4 = @"camera recording";
LABEL_42:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

INHomeFilter *INIntentSlotValueTransformFromHomeFilter(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v32 = [INHomeFilter alloc];
    v35 = [v1 entityIdentifiers];
    v2 = [v1 entityName];
    v3 = v2;
    if (v2)
    {
      v33 = 0;
    }

    else
    {
      v2 = [v1 service];
      if (v2)
      {
        v33 = 0;
        v23 = v2;
      }

      else
      {
        v2 = [v1 scene];
        v23 = 0;
        v33 = 1;
      }
    }

    v24 = v2;
    v31 = INIntentSlotValueTransformFromDataString(v2);
    v5 = [v1 hasEntityType];
    v6 = [v1 entityType];
    v7 = 0;
    if (v6 <= 6 && v5)
    {
      v7 = qword_18EE5E8B0[v6];
    }

    v30 = v7;
    v8 = [v1 hasOuterDeviceType];
    v9 = [v1 outerDeviceType];
    v10 = 0;
    v34 = v3;
    if (v9 <= 0x31 && v8)
    {
      v10 = qword_18EE5EB80[v9];
    }

    v29 = [v1 outerDeviceName];
    v28 = INIntentSlotValueTransformFromDataString(v29);
    v11 = [v1 hasDeviceType];
    v12 = [v1 deviceType];
    v13 = 0;
    if (v12 <= 0x31 && v11)
    {
      v13 = qword_18EE5EB80[v12];
    }

    v25 = v13;
    v27 = [v1 home];
    v14 = INIntentSlotValueTransformFromDataString(v27);
    v26 = [v1 zone];
    v15 = INIntentSlotValueTransformFromDataString(v26);
    v16 = [v1 group];
    v17 = INIntentSlotValueTransformFromDataString(v16);
    v18 = [v1 room];
    v19 = INIntentSlotValueTransformFromDataString(v18);
    v20 = [v1 isExcludeFilter];
    BYTE1(v22) = [v1 hasAllQuantifier];
    LOBYTE(v22) = v20;
    v4 = [(INHomeFilter *)v32 initWithEntityIdentifiers:v35 entityName:v31 entityType:v30 outerDeviceType:v10 outerDeviceName:v28 deviceType:v25 home:v14 zone:v15 group:v17 room:v19 isExcludeFilter:v22 hasAllQuantifier:?];

    if (v33)
    {
    }

    if (!v34)
    {
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

_INPBHomeFilter *INIntentSlotValueTransformToHomeFilter(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBHomeFilter);
    v3 = [v1 entityIdentifiers];
    [(_INPBHomeFilter *)v2 setEntityIdentifiers:v3];

    v4 = [v1 entityName];
    v5 = INIntentSlotValueTransformToDataString(v4);
    [(_INPBHomeFilter *)v2 setEntityName:v5];

    v6 = [v1 entityType] - 1;
    if (v6 > 9)
    {
      v7 = 0x7FFFFFFFLL;
    }

    else
    {
      v7 = dword_18EE5E888[v6];
    }

    [(_INPBHomeFilter *)v2 setEntityType:v7];
    v8 = [v1 outerDeviceType] - 1;
    if (v8 > 0x2C)
    {
      v9 = 0x7FFFFFFFLL;
    }

    else
    {
      v9 = dword_18EE5EAC8[v8];
    }

    [(_INPBHomeFilter *)v2 setOuterDeviceType:v9];
    v10 = [v1 outerDeviceName];
    v11 = INIntentSlotValueTransformToDataString(v10);
    [(_INPBHomeFilter *)v2 setOuterDeviceName:v11];

    v12 = [v1 deviceType] - 1;
    if (v12 > 0x2C)
    {
      v13 = 0x7FFFFFFFLL;
    }

    else
    {
      v13 = dword_18EE5EAC8[v12];
    }

    [(_INPBHomeFilter *)v2 setDeviceType:v13];
    v14 = [v1 home];
    v15 = INIntentSlotValueTransformToDataString(v14);
    [(_INPBHomeFilter *)v2 setHome:v15];

    v16 = [v1 zone];
    v17 = INIntentSlotValueTransformToDataString(v16);
    [(_INPBHomeFilter *)v2 setZone:v17];

    v18 = [v1 group];
    v19 = INIntentSlotValueTransformToDataString(v18);
    [(_INPBHomeFilter *)v2 setGroup:v19];

    v20 = [v1 room];
    v21 = INIntentSlotValueTransformToDataString(v20);
    [(_INPBHomeFilter *)v2 setRoom:v21];

    -[_INPBHomeFilter setIsExcludeFilter:](v2, "setIsExcludeFilter:", [v1 isExcludeFilter]);
    v22 = [v1 hasAllQuantifier];

    [(_INPBHomeFilter *)v2 setHasAllQuantifier:v22];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromHomeFilters(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromHomeFilter(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToHomeFilters(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToHomeFilter(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t INHomeAttributeValueTypeGetBackingType(uint64_t a1)
{
  if ((a1 - 1) >= 6)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t INHomeAttributeValueTypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 < 6) & a1) != 0)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeAttributeValueTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7286310 + a1 - 1);
  }
}

uint64_t INHomeAttributeValueTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"BOOLean"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"double"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"string"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"integer"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"limit"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"range"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeAttributeValueTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v5 = @"integer";
        break;
      case 5:
        v5 = @"limit";
        break;
      case 6:
        v5 = @"range";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v5 = @"BOOLean";
        break;
      case 2:
        v5 = @"double";
        break;
      case 3:
        v5 = @"string";
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_15:

  return v4;
}

uint64_t INHomeServiceSubtypeGetBackingType(uint64_t result)
{
  if ((result - 1) < 4)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INHomeServiceSubtypeGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 4) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INHomeServiceSubtypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7286340 + a1 - 1);
  }
}

uint64_t INHomeServiceSubtypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"genericValve"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"irrigationValve"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"showerheadValve"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"faucetValve"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INHomeServiceSubtypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"showerhead valve";
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_11;
      }

      v5 = @"faucet valve";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"generic valve";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_11;
    }

    v5 = @"irrigation valve";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_11:

  return v4;
}

uint64_t INMessageLinkMediaTypeGetBackingType(unint64_t a1)
{
  if (a1 >= 0x12)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (10 * a1 + 10);
  }
}

uint64_t INMessageLinkMediaTypeGetFacadeType(int a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 <= 99)
  {
    v2 = 7;
    v13 = 8;
    if (a2 != 90)
    {
      v13 = 0;
    }

    if (a2 != 80)
    {
      v2 = v13;
    }

    v14 = 5;
    v15 = 6;
    if (a2 != 70)
    {
      v15 = 0;
    }

    if (a2 != 60)
    {
      v14 = v15;
    }

    if (a2 <= 79)
    {
      v2 = v14;
    }

    v7 = 3;
    v16 = 4;
    if (a2 != 50)
    {
      v16 = 0;
    }

    if (a2 != 40)
    {
      v7 = v16;
    }

    v17 = 1;
    v18 = 2;
    if (a2 != 30)
    {
      v18 = 0;
    }

    if (a2 != 20)
    {
      v17 = v18;
    }

    if (a2 <= 39)
    {
      v7 = v17;
    }

    v11 = a2 <= 59;
  }

  else
  {
    v2 = 15;
    v3 = 16;
    v4 = 17;
    if (a2 != 180)
    {
      v4 = 0;
    }

    if (a2 != 170)
    {
      v3 = v4;
    }

    if (a2 != 160)
    {
      v2 = v3;
    }

    v5 = 13;
    v6 = 14;
    if (a2 != 150)
    {
      v6 = 0;
    }

    if (a2 != 140)
    {
      v5 = v6;
    }

    if (a2 <= 159)
    {
      v2 = v5;
    }

    v7 = 11;
    v8 = 12;
    if (a2 != 130)
    {
      v8 = 0;
    }

    if (a2 != 120)
    {
      v7 = v8;
    }

    v9 = 9;
    v10 = 10;
    if (a2 != 110)
    {
      v10 = 0;
    }

    if (a2 != 100)
    {
      v9 = v10;
    }

    if (a2 <= 119)
    {
      v7 = v9;
    }

    v11 = a2 <= 139;
  }

  if (v11)
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

__CFString *INMessageLinkMediaTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7286360 + a1 - 1);
  }
}

uint64_t INMessageLinkMediaTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"song"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"album"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"musicVideo"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"artist"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"playlist"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"radio"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"software"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"book"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"audioBook"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"podcast"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"podcastEpisode"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"TVEpisode"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"TVSeason"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"movie"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"TVShow"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"movieBundle"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"AppleTV"])
  {
    v2 = 17;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMessageLinkMediaTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"song";
      goto LABEL_20;
    case 2:
      v4 = @"album";
      goto LABEL_20;
    case 3:
      v4 = @"music video";
      goto LABEL_20;
    case 4:
      v4 = @"artist";
      goto LABEL_20;
    case 5:
      v4 = @"playlist";
      goto LABEL_20;
    case 6:
      v4 = @"radio";
      goto LABEL_20;
    case 7:
      v4 = @"software";
      goto LABEL_20;
    case 8:
      v4 = @"book";
      goto LABEL_20;
    case 9:
      v4 = @"audio book";
      goto LABEL_20;
    case 10:
      v4 = @"podcast";
      goto LABEL_20;
    case 11:
      v4 = @"podcast episode";
      goto LABEL_20;
    case 12:
      v4 = @"t v episode";
      goto LABEL_20;
    case 13:
      v4 = @"t v season";
      goto LABEL_20;
    case 14:
      v4 = @"movie";
      goto LABEL_20;
    case 15:
      v4 = @"t v show";
      goto LABEL_20;
    case 16:
      v4 = @"movie bundle";
      goto LABEL_20;
    case 17:
      v4 = @"Apple TV";
LABEL_20:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

id INIntentSlotValueTransformFromMessageLinkMetadatas(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromMessageLinkMetadata(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToMessageLinkMetadatas(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToMessageLinkMetadata(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_18ECB7730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNPostalAddressClass_block_invoke_111115(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_111116)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ContactsLibraryCore_block_invoke_111117;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72863E8;
    v7 = 0;
    ContactsLibraryCore_frameworkLibrary_111116 = _sl_dlopen();
    v2 = v5[0];
    if (ContactsLibraryCore_frameworkLibrary_111116)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CNPostalAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCNPostalAddressClass_softClass_111114 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_111117(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_111116 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t INIntentCategoryGetBackingType(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return dword_18EE5F3A0[a1 - 1];
  }
}

uint64_t INIntentCategoryGetFacadeType(int a1, int a2)
{
  if (a1 && (a2 - 1) <= 0x14)
  {
    return qword_18EE5F3F0[a2 - 1];
  }

  else
  {
    return 0;
  }
}

__CFString *INIntentCategoryGetName(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286400[a1 - 1];
  }
}

id INIntentCategoryGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 1:
      v4 = @"Information";
      goto LABEL_23;
    case 2:
      v4 = @"Play Audio";
      goto LABEL_23;
    case 3:
      v4 = @"Play Video";
      goto LABEL_23;
    case 4:
      v4 = @"Order";
      goto LABEL_23;
    case 5:
      v4 = @"Navigation";
      goto LABEL_23;
    case 6:
      v4 = @"Start";
      goto LABEL_23;
    case 7:
      v4 = @"Share";
      goto LABEL_23;
    case 8:
      v4 = @"Create";
      goto LABEL_23;
    case 9:
      v4 = @"Search";
      goto LABEL_23;
    case 10:
      v4 = @"Toggle";
      goto LABEL_23;
    case 11:
      v4 = @"Download";
      goto LABEL_23;
    case 12:
      v4 = @"Log";
      goto LABEL_23;
    case 13:
      v4 = @"Check In";
      goto LABEL_23;
    case 14:
      v4 = @"Workflow";
      goto LABEL_23;
    case 15:
      v4 = @"Request";
      goto LABEL_23;
    case 16:
      v4 = @"Set";
      goto LABEL_23;
    case 17:
      v4 = @"Call Audio";
      goto LABEL_23;
    case 18:
      v4 = @"Call Video";
      goto LABEL_23;
    case 19:
      v4 = @"Play Sound";
      goto LABEL_23;
    case 20:
      v4 = @"User Activity";
LABEL_23:
      v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t INExecutionContextGetBackingType(uint64_t result)
{
  if ((result - 1) < 0xA)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INExecutionContextGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 0xA) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INExecutionContextGetName(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72864A0[a1 - 1];
  }
}

uint64_t INExecutionContextWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"assistantDialog"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"assistantVoiceShortcut"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"coverSheetPrediction"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"spotlightPrediction"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"spotlightSearch"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"maps"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"workflow"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"watchFace"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"assistantVoiceShortcutViaCloudRelay"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"CarPlayHomeScreen"])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INExecutionContextGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v5 = @"maps";
      }

      else
      {
        v5 = @"workflow";
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v5 = @"watch face";
          break;
        case 9:
          v5 = @"assistant voice shortcut via cloud relay";
          break;
        case 10:
          v5 = @"car play home screen";
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v5 = @"assistant dialog";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_23;
      }

      v5 = @"assistant voice shortcut";
    }
  }

  else if (a1 == 3)
  {
    v5 = @"cover sheet prediction";
  }

  else if (a1 == 4)
  {
    v5 = @"spotlight prediction";
  }

  else
  {
    v5 = @"spotlight search";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_23:

  return v4;
}

INArchivedObject *INIntentSlotValueTransformFromArchivedObject(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INArchivedObject alloc];
    v3 = [v1 typeName];
    v4 = [v1 messageData];

    v5 = [(INArchivedObject *)v2 initWithTypeName:v3 messageData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_INPBArchivedObject *INIntentSlotValueTransformToArchivedObject(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBArchivedObject);
    v3 = [v1 typeName];
    [(_INPBArchivedObject *)v2 setTypeName:v3];

    v4 = [v1 messageData];

    [(_INPBArchivedObject *)v2 setMessageData:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromArchivedObjects(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromArchivedObject(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToArchivedObjects(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToArchivedObject(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t INDeviceIdiomGetBackingType(uint64_t result)
{
  if ((result - 1) < 7)
  {
    return result;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t INDeviceIdiomGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 7) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INDeviceIdiomGetName(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286518[a1 - 1];
  }
}

uint64_t INDeviceIdiomWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"phone"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"pad"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"watch"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"homePod"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"CarPlay"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"AppleTV"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Mac"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INDeviceIdiomGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v5 = @"phone";
        break;
      case 2:
        v5 = @"pad";
        break;
      case 3:
        v5 = @"watch";
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v5 = @"Apple TV";
    }

    else
    {
      if (a1 != 7)
      {
        goto LABEL_17;
      }

      v5 = @"Mac";
    }
  }

  else if (a1 == 4)
  {
    v5 = @"home pod";
  }

  else
  {
    v5 = @"CarPlay";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_17:

  return v4;
}

INVoiceCommandDeviceInformation *INIntentSlotValueTransformFromVoiceCommandDeviceInformation(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INVoiceCommandDeviceInformation alloc];
    v3 = [v1 hasDeviceIdiom];
    v4 = [v1 deviceIdiom];
    if (((v4 - 1 < 7) & v3) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = MEMORY[0x1E696AD98];
    v7 = [v1 isHomePodInUltimateMode];

    v8 = [v6 numberWithBool:v7];
    v9 = [(INVoiceCommandDeviceInformation *)v2 initWithDeviceIdiom:v5 isHomePodInUltimateMode:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

_INPBVoiceCommandDeviceInformation *INIntentSlotValueTransformToVoiceCommandDeviceInformation(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBVoiceCommandDeviceInformation);
    v3 = [v1 deviceIdiom] - 1;
    if (v3 < 7)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 0x7FFFFFFFLL;
    }

    [(_INPBVoiceCommandDeviceInformation *)v2 setDeviceIdiom:v4];
    v5 = [v1 isHomePodInUltimateMode];

    -[_INPBVoiceCommandDeviceInformation setIsHomePodInUltimateMode:](v2, "setIsHomePodInUltimateMode:", [v5 BOOLValue]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromVoiceCommandDeviceInformations(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromVoiceCommandDeviceInformation(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToVoiceCommandDeviceInformations(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToVoiceCommandDeviceInformation(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_18ECBA408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCHSWidgetDescriptorsPredicateClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSWidgetDescriptorsPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHSWidgetDescriptorsPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCHSControlDescriptorsPredicateClass_block_invoke(v3);
  }

  return result;
}

Class __getCHSControlDescriptorsPredicateClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSControlDescriptorsPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHSControlDescriptorsPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCHSWidgetExtensionProviderOptionsClass_block_invoke(v3);
  }

  return result;
}

Class __getCHSWidgetExtensionProviderOptionsClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSWidgetExtensionProviderOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHSWidgetExtensionProviderOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getCHSWidgetExtensionProviderClass_block_invoke(v3);
  }

  return result;
}

void __getCHSWidgetExtensionProviderClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHSWidgetExtensionProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHSWidgetExtensionProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    ChronoServicesLibrary();
  }
}

void ChronoServicesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ChronoServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7286600;
    v4 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (ChronoServicesLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ChronoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t INToggleStateGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t INToggleStateGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 2);
  if (a2 == 1)
  {
    v2 = 1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INToggleStateGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"off";
  }

  if (a1 == 1)
  {
    return @"on";
  }

  else
  {
    return v1;
  }
}

uint64_t INToggleStateWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"on"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"off"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *INToggleStateGetDisplayName(uint64_t a1)
{
  v1 = @"Turn Off";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"Turn On";
  }

  else
  {
    return v1;
  }
}

id INToggleStateGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"Off";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"On";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t INPersonalPlaceTypeGetBackingType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0x7FFFFFFF;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t INPersonalPlaceTypeGetFacadeType(int a1, int a2)
{
  v2 = 2 * (a2 == 3);
  if (a2 == 2)
  {
    v2 = 1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INPersonalPlaceTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"work";
  }

  if (a1 == 1)
  {
    return @"home";
  }

  else
  {
    return v1;
  }
}

uint64_t INPersonalPlaceTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"home"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"work"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INPersonalPlaceTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"work";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"home";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

__CFString *INRunWorkflowIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E7286620[a1];
  }
}

INMediaSearch *INIntentSlotValueTransformFromMediaSearch(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v26 = [INMediaSearch alloc];
    v2 = [v1 hasMediaType];
    v3 = [v1 mediaType];
    if (((v3 - 1 < 0x14) & v2) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = [v1 hasSortOrder];
    v6 = [v1 sortOrder];
    if (((v6 - 1 < 8) & v5) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v28 = [v1 mediaName];
    v8 = INIntentSlotValueTransformFromString(v28);
    v27 = [v1 artistName];
    v22 = INIntentSlotValueTransformFromString(v27);
    v25 = [v1 albumName];
    v21 = INIntentSlotValueTransformFromString(v25);
    v24 = [v1 genreNames];
    v20 = INIntentSlotValueTransformFromStrings(v24);
    v23 = [v1 moodNames];
    v9 = INIntentSlotValueTransformFromStrings(v23);
    v10 = [v1 releaseDate];
    v11 = INIntentSlotValueTransformFromDateTimeRange(v10);
    v12 = [v1 hasReference];
    v13 = [v1 reference];
    v14 = v13 == 1;
    if (v13 == 2)
    {
      v14 = 2;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v1 mediaIdentifier];

    v17 = INIntentSlotValueTransformFromString(v16);
    v18 = [(INMediaSearch *)v26 initWithMediaType:v4 sortOrder:v7 mediaName:v8 artistName:v22 albumName:v21 genreNames:v20 moodNames:v9 releaseDate:v11 reference:v15 mediaIdentifier:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

_INPBMediaSearch *INIntentSlotValueTransformToMediaSearch(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBMediaSearch);
    v3 = [v1 mediaType];
    if (v3 >= 0x15)
    {
      v4 = 0x7FFFFFFFLL;
    }

    else
    {
      v4 = v3;
    }

    [(_INPBMediaSearch *)v2 setMediaType:v4];
    v5 = [v1 sortOrder];
    if (v5 >= 9)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = v5;
    }

    [(_INPBMediaSearch *)v2 setSortOrder:v6];
    v7 = [v1 mediaName];
    v8 = INIntentSlotValueTransformToString(v7);
    [(_INPBMediaSearch *)v2 setMediaName:v8];

    v9 = [v1 artistName];
    v10 = INIntentSlotValueTransformToString(v9);
    [(_INPBMediaSearch *)v2 setArtistName:v10];

    v11 = [v1 albumName];
    v12 = INIntentSlotValueTransformToString(v11);
    [(_INPBMediaSearch *)v2 setAlbumName:v12];

    v13 = [v1 genreNames];
    v14 = INIntentSlotValueTransformToStrings(v13);
    [(_INPBMediaSearch *)v2 setGenreNames:v14];

    v15 = [v1 moodNames];
    v16 = INIntentSlotValueTransformToStrings(v15);
    [(_INPBMediaSearch *)v2 setMoodNames:v16];

    v17 = [v1 releaseDate];
    v18 = INIntentSlotValueTransformToDateTimeRange(v17);
    [(_INPBMediaSearch *)v2 setReleaseDate:v18];

    v19 = [v1 reference];
    if (v19 >= 3)
    {
      v20 = 0x7FFFFFFFLL;
    }

    else
    {
      v20 = v19;
    }

    [(_INPBMediaSearch *)v2 setReference:v20];
    v21 = [v1 mediaIdentifier];

    v22 = INIntentSlotValueTransformToString(v21);
    [(_INPBMediaSearch *)v2 setMediaIdentifier:v22];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromMediaSearchs(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromMediaSearch(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToMediaSearchs(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToMediaSearch(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBMediaSearchReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 <= 13)
        {
          if (v13 == 7)
          {
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
LABEL_99:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addGenreNames:v14];
            }

            goto LABEL_71;
          }

          if (v13 == 12)
          {
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_99;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addMoodNames:v14];
            }

            goto LABEL_71;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xE:
              v14 = objc_alloc_init(_INPBDateTimeRange);
              v38 = 0;
              v39 = 0;
              if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v14, a2))
              {
                goto LABEL_99;
              }

              PBReaderRecallMark();
              [a1 setReleaseDate:v14];
              goto LABEL_71;
            case 0xF:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              while (1)
              {
                LOBYTE(v38) = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v38 & 0x7F) << v30;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_96;
                }
              }

              if ([a2 hasError])
              {
                v36 = 0;
              }

              else
              {
                v36 = v32;
              }

LABEL_96:
              [a1 setReference:v36];
              goto LABEL_72;
            case 0x10:
              v14 = objc_alloc_init(_INPBString);
              v38 = 0;
              v39 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
              {
                goto LABEL_99;
              }

              PBReaderRecallMark();
              [a1 setMediaIdentifier:v14];
              goto LABEL_71;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v38 & 0x7F) << v22;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_92;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_92:
          [a1 setMediaType:v28];
          goto LABEL_72;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v38 & 0x7F) << v15;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_88;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_88:
          [a1 setSortOrder:v21];
          goto LABEL_72;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_99;
            }

            PBReaderRecallMark();
            [a1 setMediaName:v14];
            goto LABEL_71;
          case 4:
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_99;
            }

            PBReaderRecallMark();
            [a1 setArtistName:v14];
            goto LABEL_71;
          case 5:
            v14 = objc_alloc_init(_INPBString);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
            {
              goto LABEL_99;
            }

            PBReaderRecallMark();
            [a1 setAlbumName:v14];
LABEL_71:

            goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INUpdateMediaAffinityIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7286778[a1];
  }
}

uint64_t _INPBUpdateMediaAffinityIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

Class __getWFOnScreenContentExtractorClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary_113051)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __VoiceShortcutClientLibraryCore_block_invoke_113052;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E72867D0;
    v7 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary_113051 = _sl_dlopen();
    v2 = v5[0];
    if (VoiceShortcutClientLibraryCore_frameworkLibrary_113051)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("WFOnScreenContentExtractor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getWFOnScreenContentExtractorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke_113052(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary_113051 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _INPBUpdateMediaAffinityIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBIntentMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v21, a2))
          {
LABEL_55:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v21];
          goto LABEL_45;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_INPBMediaItemValue);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v21, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addMediaItems:v21];
          }

          goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_INPBMediaSearch);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBMediaSearchReadFrom(v21, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setMediaSearch:v21];
            goto LABEL_45;
          case 6:
            v21 = objc_alloc_init(_INPBPrivateUpdateMediaAffinityIntentData);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_INPBPrivateUpdateMediaAffinityIntentDataReadFrom(v21, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setPrivateUpdateMediaAffinityIntentData:v21];
LABEL_45:

            goto LABEL_52;
          case 4:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v24 & 0x7F) << v14;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_51;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_51:
            [a1 setAffinityType:v20];
            goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBAddMediaIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBMediaItemValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addMediaItems:v14];
          }

          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_INPBMediaSearch);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBMediaSearchReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setMediaSearch:v14];
            goto LABEL_39;
          case 4:
            v14 = objc_alloc_init(_INPBMediaDestination);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBMediaDestinationReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setMediaDestination:v14];
            goto LABEL_39;
          case 6:
            v14 = objc_alloc_init(_INPBPrivateAddMediaIntentData);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBPrivateAddMediaIntentDataReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setPrivateAddMediaIntentData:v14];
LABEL_39:

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t INMediaAffinityTypeGetBackingType(unint64_t result)
{
  if (result >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INMediaAffinityTypeGetFacadeType(int a1, int a2)
{
  v2 = a2 == 1;
  if (a2 == 2)
  {
    v2 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INMediaAffinityTypeGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"dislike";
  }

  if (a1 == 1)
  {
    return @"like";
  }

  else
  {
    return v1;
  }
}

uint64_t INMediaAffinityTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"like"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"dislike"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaAffinityTypeGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"Dislike";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"Like";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

unint64_t INMediaReferenceGetBackingType(unint64_t result)
{
  if (result >= 3)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INMediaReferenceGetFacadeType(int a1, int a2)
{
  v2 = a2 == 1;
  if (a2 == 2)
  {
    v2 = 2;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *INMediaReferenceGetName(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"my";
  }

  if (a1 == 1)
  {
    return @"currentlyPlaying";
  }

  else
  {
    return v1;
  }
}

uint64_t INMediaReferenceWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"currentlyPlaying"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"my"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaReferenceGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = @"my";
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v4 = @"currently playing";
LABEL_5:
    v5 = INLocalizedStringWithLocalizer(v4, v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

__CFString *INAddMediaIntentResponseCodeGetName(uint64_t a1)
{
  v1 = @"INAddMediaIntentResponseCodeFailureRequiringAppLaunch";
  v2 = @"INAddMediaIntentResponseCodeFailureAlreadyInLibrary";
  if (a1 != 1000)
  {
    v2 = 0;
  }

  if (a1 != 6)
  {
    v1 = v2;
  }

  v3 = @"INAddMediaIntentResponseCodeFailure";
  if (a1 != 5)
  {
    v3 = 0;
  }

  if (a1 == 4)
  {
    v3 = @"INAddMediaIntentResponseCodeHandleInApp";
  }

  if (a1 <= 5)
  {
    v1 = v3;
  }

  v4 = @"INAddMediaIntentResponseCodeInProgress";
  v5 = @"INAddMediaIntentResponseCodeSuccess";
  if (a1 != 3)
  {
    v5 = 0;
  }

  if (a1 != 2)
  {
    v4 = v5;
  }

  v6 = @"INAddMediaIntentResponseCodeReady";
  if (a1 != 1)
  {
    v6 = 0;
  }

  if (!a1)
  {
    v6 = @"INAddMediaIntentResponseCodeUnspecified";
  }

  if (a1 <= 1)
  {
    v4 = v6;
  }

  if (a1 <= 3)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t _INPBAddMediaIntentResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchForMediaIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBMediaSearch);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBMediaSearchReadFrom(v14, a2))
          {
LABEL_41:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setMediaSearch:v14];
          goto LABEL_37;
        }

        if (v13 == 100)
        {
          v14 = objc_alloc_init(_INPBPrivateSearchForMediaIntentData);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBPrivateSearchForMediaIntentDataReadFrom(v14, a2))
          {
            goto LABEL_41;
          }

          PBReaderRecallMark();
          [a1 setPrivateSearchForMediaIntentData:v14];
          goto LABEL_37;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_41;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBMediaItemValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v14, a2))
          {
            goto LABEL_41;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addMediaItems:v14];
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INSearchForMediaIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7286800[a1];
  }
}

uint64_t _INPBSearchForMediaIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBMediaItemValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBMediaItemValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addMediaItems:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t INMediaSortOrderGetBackingType(unint64_t result)
{
  if (result >= 9)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t INMediaSortOrderGetFacadeType(unsigned __int8 a1, unsigned int a2)
{
  if (((a2 - 1 < 8) & a1) != 0)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

__CFString *INMediaSortOrderGetName(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7286838[a1 - 1];
  }
}

uint64_t INMediaSortOrderWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"newest"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"oldest"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"best"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"worst"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"popular"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"unpopular"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"trending"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"recommended"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INMediaSortOrderGetLocalizedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v5 = @"trending";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        v5 = @"recommended";
      }
    }

    else if (a1 == 5)
    {
      v5 = @"popular";
    }

    else
    {
      v5 = @"unpopular";
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = @"best";
    }

    else
    {
      v5 = @"worst";
    }
  }

  else if (a1 == 1)
  {
    v5 = @"newest";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_19;
    }

    v5 = @"oldest";
  }

  v4 = INLocalizedStringWithLocalizer(v5, v5, v3);
LABEL_19:

  return v4;
}