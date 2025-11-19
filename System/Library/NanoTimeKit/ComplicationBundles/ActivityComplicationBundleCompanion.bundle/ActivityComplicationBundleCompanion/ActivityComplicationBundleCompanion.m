uint64_t sub_2C38(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_1667C);
  if (qword_16680)
  {
    v3 = qword_16680 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16688))
  {
    v5 = byte_16678;
  }

  else
  {
    qword_16680 = v2;
    qword_16688 = [v2 version];
    sub_2CE0(qword_16688, v2);
    v5 = 1;
    byte_16678 = 1;
  }

  os_unfair_lock_unlock(&stru_1667C);

  return v5;
}

void sub_2CE0(uint64_t a1, void *a2)
{
  v2 = a2;
  IsTallScript = NTKLanguageIsTallScript();
  v14 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];

  if (IsTallScript)
  {
    [v14 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
    v5 = v4;
    v6 = 8.5;
  }

  else
  {
    [v14 scaledValue:3 withOverride:13.0 forSizeClass:14.5];
    v5 = v7;
    v6 = 9.5;
  }

  qword_16640 = v5;
  [v14 scaledValue:v6];
  [v14 scaledValue:11.0];
  [v14 scaledValue:6.0];
  qword_16648 = v8;
  [v14 scaledValue:4.5];
  v10 = v9;
  [v14 scaledValue:3.5];
  qword_16668 = v10;
  qword_16670 = v11;
  qword_16650 = 0xC000000000000000;
  [v14 scaledValue:50.0];
  qword_16658 = v12;
  [v14 scaledValue:3 withOverride:159.0 forSizeClass:183.0];
  qword_16660 = v13;
}

void sub_38BC(uint64_t a1, void *a2)
{
  obj = [a2 yValue];
  if ([obj compare:*(*(a1 + 32) + 24)] == &dword_0 + 1)
  {
    objc_storeStrong((*(a1 + 32) + 24), obj);
  }
}

void sub_3A50(uint64_t a1, void *a2)
{
  obj = [a2 yValue];
  if ([obj compare:*(*(a1 + 32) + 40)] == &dword_0 + 1)
  {
    objc_storeStrong((*(a1 + 32) + 40), obj);
  }
}

void sub_45D4(void *a1, void *a2, unint64_t a3)
{
  v5 = 19;
  if (!(a3 % (a1[17] + 1)))
  {
    v5 = 25;
  }

  v6 = *&a1[v5];
  v7 = 27;
  if (!(a3 % (a1[17] + 1)))
  {
    v7 = 26;
  }

  v8 = *&a1[v7];
  [a2 floatValue];
  v10 = v9;
  v14.origin.y = 0.0;
  v14.origin.x = v9;
  v14.size.width = v8;
  v14.size.height = v6;
  UIRectFill(v14);
  if (a1[16] - 1 > a3)
  {
    v11 = a1[4];
    v12 = a1[28];

    [v11 _drawChartsBarsInContext:v12 lineNumber:a3 xPosition:v8 + v10];
  }
}

uint64_t sub_4EB4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_16734);
  if (qword_16738)
  {
    v3 = qword_16738 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_16740))
  {
    v5 = byte_16730;
  }

  else
  {
    qword_16738 = v2;
    qword_16740 = [v2 version];
    sub_4F5C(qword_16740, v2);
    v5 = 1;
    byte_16730 = 1;
  }

  os_unfair_lock_unlock(&stru_16734);

  return v5;
}

void sub_4F5C(uint64_t a1, uint64_t a2)
{
  v19 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  *(&xmmword_16690 + 1) = 0x3FF0000000000000;
  qword_166C0 = 0x4004000000000000;
  [v19 constantValue:3 withOverride:0.5 forSizeClass:1.0];
  *&xmmword_16690 = v2;
  qword_166F8 = 0x3FE8000000000000;
  *&qword_166E8 = xmmword_C720;
  __asm { FMOV            V0.2D, #0.5 }

  *&qword_16708 = _Q0;
  qword_16720 = 0x3FF8000000000000;
  [v19 scaledValue:41.0];
  qword_16700 = v8;
  [v19 scaledValue:17.5];
  qword_166A0 = v9;
  [v19 scaledValue:3 withOverride:16.0 forSizeClass:18.5];
  *&xmmword_166D0 = v10;
  [v19 scaledValue:17.0];
  qword_166A8 = v11;
  [v19 scaledValue:3 withOverride:15.5 forSizeClass:18.0];
  *(&xmmword_166D0 + 1) = v12;
  [v19 scaledValue:3 withOverride:5.0 forSizeClass:6.0];
  *&xmmword_166B0 = v13;
  [v19 scaledValue:2.0];
  *(&xmmword_166B0 + 1) = v14;
  [v19 scaledValue:2.0];
  qword_166C8 = v15;
  [v19 scaledValue:3 withOverride:4.0 forSizeClass:5.0];
  qword_166E0 = v16;
  [v19 scaledValue:3 withOverride:9.5 forSizeClass:10.5];
  qword_16718 = v17;
  [v19 scaledValue:3 withOverride:6.0 forSizeClass:7.0];
  qword_16728 = v18;
}

id NLActivityComplicationLocalizedString(void *a1)
{
  v1 = qword_16750;
  v2 = a1;
  if (v1 != -1)
  {
    sub_9524();
  }

  v3 = [qword_16748 localizedStringForKey:v2 value:&stru_108E8 table:@"Localizable"];

  return v3;
}

void sub_5170(id a1)
{
  qword_16748 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

uint64_t sub_5964(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_167C4);
  if (qword_167C8)
  {
    v3 = qword_167C8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_167D0))
  {
    v5 = byte_167C0;
  }

  else
  {
    qword_167C8 = v2;
    qword_167D0 = [v2 version];
    sub_5A0C(qword_167D0, v2);
    v5 = 1;
    byte_167C0 = 1;
  }

  os_unfair_lock_unlock(&stru_167C4);

  return v5;
}

void sub_5A0C(uint64_t a1, void *a2)
{
  v2 = a2;
  v13 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v13 scaledValue:3 withOverride:4.0 forSizeClass:4.5];
  *&xmmword_16760 = v3;
  [v13 scaledValue:3 withOverride:2.0 forSizeClass:2.5];
  *(&xmmword_16760 + 1) = v4;
  [v13 scaledValue:3 withOverride:1.5 forSizeClass:2.0];
  qword_16778 = v5;
  NTKWhistlerSubdialComplicationContentDiameter();
  qword_16770 = v6;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  *&qword_16790 = *&qword_16770;
  xmmword_16780 = vmulq_n_f64(xmmword_16760, v7);
  *&qword_16798 = v7 * *&qword_16778;
  NTKGraphicExtraLargeComplicationContentDiameter();
  qword_16790 = v8;
  v9 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:3];

  qword_167A0 = 0x4000000000000000;
  [v9 scaledValue:2 withOverride:1.0 forSizeClass:0.5];
  qword_167A8 = v10;
  [v9 scaledValue:2 withOverride:1.0 forSizeClass:0.5];
  qword_167B8 = v11;
  [v9 scaledValue:22.0];
  qword_167B0 = v12;
}

void sub_60B0(uint64_t a1)
{
  v2 = [*(a1 + 32) _timelineEntryFromModel:*(a1 + 40) family:{objc_msgSend(*(a1 + 32), "family")}];
  v3 = [*(a1 + 32) delegate];
  v5 = v2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 appendEntries:v4];
}

void sub_6A58(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Calling datasource handler for current timeline entry with model: %@", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) _timelineEntryFromModel:v3 family:{objc_msgSend(*(a1 + 32), "family")}];
  (*(*(a1 + 40) + 16))();
}

id sub_79CC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      v10 = @"ACTIVITY_LONG_ANALOG_SEPARATOR_NARROWER";
    }

    else
    {
      v10 = @"ACTIVITY_LONG_ANALOG_SEPARATOR";
    }

    v11 = NLActivityComplicationLocalizedString(v10);
    goto LABEL_11;
  }

  if (a3 == 2 || a3 == 3)
  {
    v11 = NLActivityComplicationLocalizedString(@"ACTIVITY_LONG_ANALOG_SEPARATOR_NARROWER");
LABEL_11:
    v12 = NLActivityComplicationLocalizedString(@"ACTIVITY_LONG_ANALOG_FORMAT_%@_%@_%@_%@_%@");
    v13 = [NSString localizedStringWithFormat:v12, a1[4], v11, a1[5], v11, a1[6]];
    v14 = [v13 lowercaseString];

    v15 = [v8 font];
    CLKKernValueForDesignSpecTrackingValue();
    v17 = v16;

    v18 = [NSAttributedString alloc];
    v24[0] = NSKernAttributeName;
    v19 = [NSNumber numberWithDouble:v17];
    v25[0] = v19;
    v24[1] = NSFontAttributeName;
    v20 = [v8 smallCapsBaseFont];
    v21 = [v20 CLKFontWithLocalizedLowerCaseSmallCaps];
    v25[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v9 = [v18 initWithString:v14 attributes:v22];
  }

LABEL_12:

  return v9;
}

id sub_83C0()
{
  if (qword_167E0 != -1)
  {
    sub_9688();
  }

  v1 = qword_167D8;

  return v1;
}

NSAttributedString *__cdecl sub_9344(id a1, NSString *a2, unint64_t a3, CLKTextProviderStyle *a4)
{
  v4 = 0;
  if (a2 && !a3)
  {
    v6 = a4;
    v7 = a2;
    v8 = [(CLKTextProviderStyle *)v6 font];
    v9 = [v8 CLKFontWithAlternativePunctuation];

    v4 = [[NSMutableAttributedString alloc] initWithString:v7];
    v10 = [(NSString *)v7 length];

    v11 = [(CLKTextProviderStyle *)v6 font];

    CLKKernValueForDesignSpecTrackingValue();
    v13 = v12;

    v14 = [NSNumber numberWithDouble:v13];
    [v4 addAttribute:NSKernAttributeName value:v14 range:{0, v10}];

    [v4 addAttribute:NSFontAttributeName value:v9 range:{0, v10}];
  }

  return v4;
}

void sub_9498(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_167D8;
  qword_167D8 = v1;

  v3 = qword_167D8;
  v4 = +[NSLocale autoupdatingCurrentLocale];
  [v3 setLocale:v4];

  [qword_167D8 setNumberStyle:0];
  v5 = qword_167D8;

  [v5 setMinimumIntegerDigits:2];
}

void sub_9574(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "const LayoutConstants _LayoutConstants(CLKDevice *__strong, CLKComplicationFamily)";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v2, 0x16u);
}