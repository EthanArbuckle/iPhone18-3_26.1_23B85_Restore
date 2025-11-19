void sub_212C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[152] & 1) == 0)
    {
      _HKInitializeLogging();
      v3 = HKLogDeepBreathing;
      if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Mind preferences did change; reloading specifiers for top level settings", v4, 2u);
      }

      [v2 reloadSpecifiers];
    }

    v2[152] = 0;
  }
}

void sub_21F0(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[HPRFMindSettingsController] Received GuidedMeditationPreferencesChangedNotification", v4, 2u);
  }

  [v2 reloadSpecifierID:@"GUIDED_MEDITATION_PREFETCH_LABEL_ID"];
}

void sub_2324(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogDeepBreathing;
  v7 = os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138412290;
      v11[0] = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[HPRFMindSettingsController] Error fetching subscription status: %@", &v10, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = *(*(a1 + 32) + 168);
      v10 = 67109376;
      LODWORD(v11[0]) = v8;
      WORD2(v11[0]) = 1024;
      *(v11 + 6) = a2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[HPRFMindSettingsController] Old subscriber status: %d new subscriber status: %d", &v10, 0xEu);
    }

    v9 = *(a1 + 32);
    if (*(v9 + 168) != a2)
    {
      *(v9 + 168) = a2;
      [*(a1 + 32) reloadSpecifiers];
    }
  }
}

void sub_30E8(id a1, BOOL a2)
{
  if (!a2)
  {
    _HKInitializeLogging();
    v2 = HKLogMentalHealth;
    if (os_log_type_enabled(HKLogMentalHealth, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Failed to navigate to State of Mind settings from Bridge", v3, 2u);
    }
  }
}

int64_t sub_324C(id a1, FIMindfulnessReminder *a2, FIMindfulnessReminder *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(FIMindfulnessReminder *)v4 customDateComponents];
  v7 = [v6 hour];
  v8 = [(FIMindfulnessReminder *)v5 customDateComponents];
  v9 = [v8 hour];

  if (v7 >= v9)
  {
    v11 = [(FIMindfulnessReminder *)v4 customDateComponents];
    v12 = [v11 hour];
    v13 = [(FIMindfulnessReminder *)v5 customDateComponents];
    v14 = [v13 hour];

    if (v12 > v14)
    {
      v10 = 1;
      goto LABEL_7;
    }

    v15 = [(FIMindfulnessReminder *)v4 customDateComponents];
    v16 = [v15 minute];
    v17 = [(FIMindfulnessReminder *)v5 customDateComponents];
    v18 = [v17 minute];

    if (v16 >= v18)
    {
      v19 = [(FIMindfulnessReminder *)v4 customDateComponents];
      v20 = [v19 minute];
      v21 = [(FIMindfulnessReminder *)v5 customDateComponents];
      v10 = v20 > [v21 minute];

      goto LABEL_7;
    }
  }

  v10 = -1;
LABEL_7:

  return v10;
}

id sub_33A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [PSSpecifier preferenceSpecifierNamed:@"MIND_REMINDER_SPECIFIER" target:v3 set:0 get:0 detail:0 cell:13 edit:0];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v5 setProperty:v4 forKey:@"HPRFMindSubtitleCellReminderSpecifierKey"];
  v6 = [*(a1 + 32) _subtitleForCustomReminder:v4];

  [v5 setProperty:v6 forKey:@"HPRFMindSubtitleCellSubtitleSpecifierKey"];
  [v5 setButtonAction:"_reminderTapped:"];

  return v5;
}

id sub_3A68(void *a1)
{
  v11[0] = @"NONE_ID";
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MIND_HAPTIC_LEVEL_NONE" value:&stru_19170 table:@"MindBreathingHapticLevel"];
  v12[0] = v3;
  v11[1] = @"MINIMAL_ID";
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MIND_HAPTIC_LEVEL_MINIMAL" value:&stru_19170 table:@"MindBreathingHapticLevel"];
  v12[1] = v5;
  v11[2] = @"PROMINENT_ID";
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MIND_HAPTIC_LEVEL_PROMINENT" value:&stru_19170 table:@"MindBreathingHapticLevel"];
  v12[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [v8 objectForKey:v1];

  return v9;
}

void sub_3DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3DF0(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Mind preferences did change; reloading haptic level specifiers", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

id sub_4170()
{
  v2[0] = @"NONE_ID";
  v2[1] = @"MINIMAL_ID";
  v2[2] = @"PROMINENT_ID";
  v0 = [NSArray arrayWithObjects:v2 count:3];

  return v0;
}

PSSpecifier *__cdecl sub_4200(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_3A68(v2);
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v4 setIdentifier:v2];

  return v4;
}

id sub_4530(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_46D0(void *a1, int a2)
{
  if (a2)
  {
    v2 = @"SELECTED_";
  }

  else
  {
    v2 = &stru_19170;
  }

  v3 = a1;
  v4 = [NSString stringWithFormat:@"%@MIND_BREATHE_RATE", v2];
  v5 = [v3 substringFromIndex:{objc_msgSend(@"ID_BPM_", "length")}];

  v6 = [v5 integerValue];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v4 value:&stru_19170 table:@"MindBreathingBreathRate"];
  v9 = [NSString localizedStringWithFormat:v8, v6];

  return v9;
}

void sub_4988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_49A4(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Mind preferences did change; reloading breath rate specifiers", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

id sub_4D4C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_46D0(v2, 0);
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v4 setIdentifier:v2];

  return v4;
}

id sub_5038()
{
  v0 = objc_alloc_init(NSMutableArray);
  for (i = 4; i != 11; ++i)
  {
    v2 = [NSNumber numberWithInteger:i];
    [v0 addObject:v2];
  }

  return v0;
}

id sub_50B8(uint64_t a1, void *a2)
{
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%ld", @"ID_BPM_", [a2 integerValue]);
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_5230(uint64_t a1)
{
  v2 = v1;
  v4 = sub_EC88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_weekdaySelection] = a1;
  v9 = [objc_opt_self() calendarWithIdentifier:NSCalendarIdentifierGregorian];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() currentLocale];
    sub_EC68();

    isa = sub_EC58().super.isa;
    (*(v5 + 8))(v8, v4);
    [v10 setLocale:isa];

    v13 = [v10 firstWeekday];
  }

  else
  {
    v13 = &dword_0 + 1;
  }

  *&v2[OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_firstWeekday] = v13;
  v14 = type metadata accessor for MindWeekdaySelectionViewController();
  v16.receiver = v2;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "initWithStyle:", 1);
}

void sub_5464()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MindWeekdaySelectionViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 setEstimatedRowHeight:100.0];

    v3 = [v0 tableView];
    if (v3)
    {
      v4 = v3;
      sub_6084();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = sub_EF38();
      [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_559C(void *a1)
{
  v2 = v1;
  isa = sub_ED08().super.isa;
  v13 = [a1 cellForRowAtIndexPath:isa];

  if (v13)
  {
    v5 = v13;
    if ([v5 accessoryType] == &dword_0 + 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }

    [v5 setAccessoryType:v6];
  }

  v7 = sub_ED08().super.isa;
  [a1 deselectRowAtIndexPath:v7 animated:1];

  v8 = sub_ED28();
  v9 = *(v2 + OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_firstWeekday);
  if (__OFADD__(v8, FIMindfulnessDayOffsetFromSunday()))
  {
    __break(1u);
    return;
  }

  v10 = FIMindfulnessWeekdaySelectionFromWeekday();
  v11 = *(v2 + OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_weekdaySelection);
  if ((v10 & ~v11) != 0)
  {
    v11 |= v10;
    goto LABEL_11;
  }

  if (v10)
  {
    v11 &= ~v10;
LABEL_11:
    *(v2 + OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_weekdaySelection) = v11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR___HPRFMindReminderViewController_weekdaySelection) = v11;
    [*(Strong + OBJC_IVAR___HPRFMindReminderViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_5844(void *a1)
{
  v2 = v1;
  v4 = sub_EEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_EF38();
  isa = sub_ED08().super.isa;
  v11 = [a1 dequeueReusableCellWithIdentifier:v9 forIndexPath:isa];

  sub_EEB8();
  v12 = sub_ED28();
  v13 = *(v2 + OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_firstWeekday);
  result = FIMindfulnessDayOffsetFromSunday();
  if (__OFADD__(v12, result))
  {
    __break(1u);
  }

  else
  {
    v15 = FIMindfulnessLocalizedDay();
    if (v15)
    {
      v16 = v15;
      sub_EF48();
    }

    sub_EEC8();
    v20[3] = v4;
    v20[4] = &protocol witness table for UIListContentConfiguration;
    v17 = sub_6020(v20);
    (*(v5 + 16))(v17, v8, v4);
    sub_EFF8();
    if ((FIMindfulnessWeekdaySelectionFromWeekday() & ~*(v2 + OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_weekdaySelection)) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = 3;
    }

    [v11 setAccessoryType:v18];
    (*(v5 + 8))(v8, v4);
    return v11;
  }

  return result;
}

id sub_5BF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindWeekdaySelectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_5C80(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

BOOL sub_5D1C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_5D4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_5D78@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_5E64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_5E94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_5FE8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_5F3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FIMindfulnessWeekdaySelection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5FE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t *sub_6020(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_6084()
{
  result = qword_1D910;
  if (!qword_1D910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1D910);
  }

  return result;
}

NSString sub_60FC()
{
  result = sub_EF38();
  qword_1DEC0 = result;
  return result;
}

_BYTE *sub_622C(void *a1, void *a2)
{
  v5 = sub_ECF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled] = 0;
  *&v2[OBJC_IVAR___HPRFMindReminderViewController_weekdaySelection] = 0;
  v10 = [objc_allocWithZone(UIDatePicker) init];
  *&v2[OBJC_IVAR___HPRFMindReminderViewController_datePicker] = v10;
  v11 = [objc_allocWithZone(FIMindfulnessCustomReminderProvider) init];
  *&v2[OBJC_IVAR___HPRFMindReminderViewController_reminderProvider] = v11;
  *&v2[OBJC_IVAR___HPRFMindReminderViewController_state] = a2;
  v12 = objc_allocWithZone(UITableView);
  v13 = a2;
  v14 = [v12 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR___HPRFMindReminderViewController_tableView] = v14;
  v15 = type metadata accessor for MindReminderViewController();
  v25.receiver = v2;
  v25.super_class = v15;
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  sub_7094();
  v17 = OBJC_IVAR___HPRFMindReminderViewController_state;
  v18 = *&v16[OBJC_IVAR___HPRFMindReminderViewController_state];
  if (!v18)
  {
    v16[OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled] = 1;
    v20 = *&v16[v17];
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_ECD8();
    isa = sub_ECA8().super.isa;
    (*(v6 + 8))(v9, v5);
    v22 = FIMindfulnessWeekdayDaySelectionForCalendar();
    goto LABEL_6;
  }

  v19 = [v18 enabled];
  v16[OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled] = v19;
  v20 = *&v16[v17];
  if (!v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  isa = v20;
  v22 = [(objc_class *)isa customWeekdaySelection];
LABEL_6:
  v23 = v22;

  *&v16[OBJC_IVAR___HPRFMindReminderViewController_weekdaySelection] = v23;
  return v16;
}

void sub_64F4()
{
  v1 = v0;
  v2 = type metadata accessor for MindReminderViewController();
  v91.receiver = v0;
  v91.super_class = v2;
  objc_msgSendSuper2(&v91, "viewDidLoad");
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = v3;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [v1 navigationItem];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v88._countAndFlagsBits = 0xE000000000000000;
  v92._countAndFlagsBits = 0x5245444E494D4552;
  v92._object = 0xEF4C45434E41435FLL;
  v93.value._countAndFlagsBits = 0x74746553646E694DLL;
  v93.value._object = 0xEC00000073676E69;
  v9.super.isa = v8;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  sub_EB78(v92, v93, v9, v94, v88);

  v90 = v2;
  v89[0] = v1;
  v10 = v1;
  v11 = sub_EF38();

  if (v2)
  {
    v12 = sub_B530(v89, v90);
    v13 = *(v2 - 1);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_F128();
    (*(v13 + 8))(v16, v2);
    sub_B574(v89);
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_allocWithZone(UIBarButtonItem);
  v19 = [v18 initWithTitle:v11 style:0 target:v17 action:{"cancelTapped", v89[0]}];

  swift_unknownObjectRelease();
  [v6 setLeftBarButtonItem:v19];

  v20 = [v10 navigationItem];
  sub_7ED8();
  v90 = v2;
  v89[0] = v10;
  v21 = v10;
  v22 = sub_EF38();

  v23 = v90;
  if (v90)
  {
    v24 = sub_B530(v89, v90);
    v25 = *(v23 - 8);
    v26 = *(v25 + 64);
    __chkstk_darwin(v24);
    v28 = v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28);
    v29 = sub_F128();
    (*(v25 + 8))(v28, v23);
    sub_B574(v89);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v22 style:0 target:v29 action:"rightBarButtonTapped"];

  swift_unknownObjectRelease();
  [v20 setRightBarButtonItem:v30];

  v31 = *&v21[OBJC_IVAR___HPRFMindReminderViewController_datePicker];
  [v31 setDatePickerMode:0];
  [v31 setPreferredDatePickerStyle:1];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [v21 view];
  if (!v32)
  {
    goto LABEL_20;
  }

  v33 = v32;
  [v32 addSubview:v31];

  v34 = *&v21[OBJC_IVAR___HPRFMindReminderViewController_tableView];
  [v34 setDelegate:v21];
  [v34 setDataSource:v21];
  [v34 setEstimatedRowHeight:100.0];
  [v34 setRowHeight:UITableViewAutomaticDimension];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = [v21 view];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v35;
  [v35 addSubview:v34];

  sub_B124(&qword_1DA58, &qword_11098);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10FF0;
  v38 = [v31 topAnchor];
  v39 = [v21 view];
  if (!v39)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v39;
  v41 = [v39 safeAreaLayoutGuide];

  v42 = [v41 topAnchor];
  v43 = [v38 constraintEqualToAnchor:v42];

  *(v37 + 32) = v43;
  v44 = [v31 leadingAnchor];
  v45 = [v21 view];
  if (!v45)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v46 = v45;
  v47 = [v45 leadingAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  *(v37 + 40) = v48;
  v49 = [v31 trailingAnchor];
  v50 = [v21 view];
  if (!v50)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v51 = v50;
  v52 = [v50 trailingAnchor];

  v53 = [v49 constraintEqualToAnchor:v52];
  *(v37 + 48) = v53;
  v54 = [v31 widthAnchor];
  v55 = [v21 view];
  if (!v55)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v56 = v55;
  v57 = [v55 widthAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v37 + 56) = v58;
  v59 = [v34 topAnchor];
  v60 = [v31 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v37 + 64) = v61;
  v62 = [v34 leadingAnchor];
  v63 = [v21 view];
  if (!v63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v64 = v63;
  v65 = [v63 leadingAnchor];

  v66 = [v62 constraintEqualToAnchor:v65];
  *(v37 + 72) = v66;
  v67 = [v34 trailingAnchor];
  v68 = [v21 view];
  if (!v68)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v69 = v68;
  v70 = [v68 trailingAnchor];

  v71 = [v67 constraintEqualToAnchor:v70];
  *(v37 + 80) = v71;
  v72 = [v34 widthAnchor];
  v73 = [v21 view];
  if (!v73)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v74 = v73;
  v75 = [v73 widthAnchor];

  v76 = [v72 constraintEqualToAnchor:v75];
  *(v37 + 88) = v76;
  v77 = [v34 bottomAnchor];
  v78 = [v21 view];
  if (v78)
  {
    v79 = v78;
    v80 = objc_opt_self();
    v81 = [v79 bottomAnchor];

    v82 = [v77 constraintEqualToAnchor:v81];
    *(v37 + 96) = v82;
    sub_B4E8(0, &unk_1DA80, NSLayoutConstraint_ptr);
    isa = sub_EF98().super.isa;

    [v80 activateConstraints:isa];

    sub_B4E8(0, &qword_1D910, UITableViewCell_ptr);
    v84 = swift_getObjCClassFromMetadata();
    v85 = sub_EF38();
    [v34 registerClass:v84 forCellReuseIdentifier:v85];

    v86 = sub_EF38();
    [v34 registerClass:v84 forCellReuseIdentifier:v86];

    v87 = sub_EF38();
    [v34 registerClass:v84 forCellReuseIdentifier:v87];

    return;
  }

LABEL_29:
  __break(1u);
}

void sub_7094()
{
  v1 = sub_ECF8();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  (__chkstk_darwin)();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(sub_B124(&qword_1DA78, qword_110A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v30 - v6;
  v8 = sub_EC38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  (__chkstk_darwin)();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_EB68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (__chkstk_darwin)();
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v21 = *(v0 + OBJC_IVAR___HPRFMindReminderViewController_state);
  if (v21)
  {
    v31 = v21;
    v22 = [v31 customDateComponents];
    if (v22)
    {
      v30 = v9;
      v23 = v22;
      sub_EB58();

      (*(v14 + 32))(v20, v18, v13);
      v24 = *(v0 + OBJC_IVAR___HPRFMindReminderViewController_datePicker);
      v25 = [v24 calendar];
      if (v25)
      {
        v26 = v25;
        sub_ECB8();

        sub_ECC8();
        (*(v32 + 8))(v4, v33);
        v27 = v30;
        if ((*(v30 + 48))(v7, 1, v8) == 1)
        {
          (*(v14 + 8))(v20, v13);

          sub_B480(v7);
        }

        else
        {
          (*(v27 + 32))(v12, v7, v8);
          isa = sub_EC08().super.isa;
          [v24 setDate:isa animated:0];

          (*(v27 + 8))(v12, v8);
          (*(v14 + 8))(v20, v13);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v28 = v31;
    }
  }
}

void sub_7490()
{
  v1 = v0;
  v2 = sub_EC38();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_ECF8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_EB68();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *&v1[OBJC_IVAR___HPRFMindReminderViewController_reminderProvider];
  v14 = [v52 reminders];
  v15 = sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
  v50 = sub_8ED0();
  v51 = v15;
  v16 = sub_EFB8();

  v17 = *&v1[OBJC_IVAR___HPRFMindReminderViewController_state];
  if (v17)
  {
    v18 = v17;
    v16 = sub_AF1C(v16, v18);
  }

  v47 = v16;
  v53 = v13;
  v19 = *&v1[OBJC_IVAR___HPRFMindReminderViewController_datePicker];
  v20 = [v19 calendar];
  if (v20)
  {
    v21 = v20;
    sub_ECB8();

    sub_B124(&qword_1DA50, &qword_11090);
    v22 = sub_ECE8();
    v23 = *(v22 - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_11000;
    v27 = v26 + v25;
    v28 = *(v23 + 104);
    v28(v27, enum case for Calendar.Component.hour(_:), v22);
    v28(v27 + v24, enum case for Calendar.Component.minute(_:), v22);
    sub_B16C(v26);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v29 = [v19 date];
    sub_EC18();

    v30 = v53;
    sub_EC98();

    (*(v48 + 8))(v5, v49);
    (*(v45 + 8))(v9, v46);
    v31 = *&v1[OBJC_IVAR___HPRFMindReminderViewController_weekdaySelection];
    v32 = v1[OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled];
    v33 = objc_allocWithZone(FIMindfulnessReminder);
    isa = sub_EB48().super.isa;
    v35 = [v33 initWithType:1 customDateComponents:isa customWeekdaySelection:v31 enabled:v32];

    sub_B124(&qword_1DA58, &qword_11098);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_11010;
    *(inited + 32) = v35;
    v37 = v35;
    v38 = sub_B2F4(inited);
    swift_setDeallocating();
    v39 = *(inited + 16);
    swift_arrayDestroy();
    sub_7A78(v38, v47);
    v40 = sub_EFA8().super.isa;

    [v52 updateReminders:v40];

    v41 = [objc_opt_self() defaultCenter];
    if (qword_1D890 != -1)
    {
      swift_once();
    }

    [v41 postNotificationName:qword_1DEC0 object:0];

    v42 = [v1 presentingViewController];
    if (v42)
    {
      v43 = v42;
      [v42 dismissViewControllerAnimated:1 completion:0];

      (*(v54 + 8))(v30, v55);
    }

    else
    {
      (*(v54 + 8))(v30, v55);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_7A78(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_F058();
    sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
    sub_8ED0();
    sub_EFD8();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_B434();
      return;
    }

    while (1)
    {
      sub_97B8(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_F088())
      {
        sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_7D08()
{
  v1 = *&v0[OBJC_IVAR___HPRFMindReminderViewController_reminderProvider];
  v2 = [v1 reminders];
  sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
  sub_8ED0();
  v3 = sub_EFB8();

  v4 = *&v0[OBJC_IVAR___HPRFMindReminderViewController_state];
  if (v4)
  {
    v5 = v4;
    sub_AF1C(v3, v5);
  }

  isa = sub_EFA8().super.isa;

  [v1 updateReminders:isa];

  v7 = [objc_opt_self() defaultCenter];
  if (qword_1D890 != -1)
  {
    swift_once();
  }

  [v7 postNotificationName:qword_1DEC0 object:0];

  v8 = [v0 presentingViewController];
  if (v8)
  {
    v9 = v8;
    [v8 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_7ED8()
{
  v1 = *(v0 + OBJC_IVAR___HPRFMindReminderViewController_state);
  type metadata accessor for MindReminderViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (v1)
  {
    v4._object = 0xED0000454E4F445FLL;
  }

  else
  {
    v4._object = 0xEC0000004444415FLL;
  }

  v8._countAndFlagsBits = 0xE000000000000000;
  v4._countAndFlagsBits = 0x5245444E494D4552;
  v9.value._countAndFlagsBits = 0x74746553646E694DLL;
  v9.value._object = 0xEC00000073676E69;
  v5.super.isa = v3;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = sub_EB78(v4, v9, v5, v10, v8);

  return v6;
}

id sub_7FF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindReminderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_80B8(void *a1)
{
  v2 = v1;
  v4 = sub_ED38();
  if (v4 == 1)
  {

    sub_7D08();
  }

  else if (!v4 && !sub_ED28())
  {
    v5 = *&v1[OBJC_IVAR___HPRFMindReminderViewController_weekdaySelection];
    v6 = objc_allocWithZone(type metadata accessor for MindWeekdaySelectionViewController());
    v7 = sub_5230(v5);
    *&v7[OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_delegate + 8] = &off_18E90;
    swift_unknownObjectWeakAssign();
    v8 = [v2 navigationController];
    if (v8)
    {
      v9 = v8;
      [v8 pushViewController:v7 animated:1];
    }

    isa = sub_ED08().super.isa;
    [a1 deselectRowAtIndexPath:isa animated:1];
  }
}

uint64_t sub_8348()
{
  v1 = v0;
  v2 = sub_ECF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_EEE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v38[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38[-1] - v13;
  v15 = sub_ED28();
  if (v15 == 1)
  {
    v16 = *(v0 + OBJC_IVAR___HPRFMindReminderViewController_tableView);
    v17 = sub_EF38();
    isa = sub_ED08().super.isa;
    v19 = [v16 dequeueReusableCellWithIdentifier:v17 forIndexPath:isa];

    sub_EEB8();
    type metadata accessor for MindReminderViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v36._countAndFlagsBits = 0xE000000000000000;
    v43.value._countAndFlagsBits = 0x74746553646E694DLL;
    v43.value._object = 0xEC00000073676E69;
    v41._object = 0x80000000000119C0;
    v41._countAndFlagsBits = 0xD000000000000010;
    v22.super.isa = v21;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    sub_EB78(v41, v43, v22, v45, v36);

    sub_EEC8();
    v39 = v7;
    v40 = &protocol witness table for UIListContentConfiguration;
    v23 = sub_6020(v38);
    (*(v8 + 16))(v23, v12, v7);
    sub_EFF8();
    [v19 setSelectionStyle:0];
    v24 = [objc_allocWithZone(UISwitch) init];
    [v24 setOn:*(v1 + OBJC_IVAR___HPRFMindReminderViewController_reminderEnabled) animated:0];
    [v24 addTarget:v1 action:"enableSwitchTappedWithEnableSwitch:" forControlEvents:4096];
    [v19 setAccessoryView:v24];

    v14 = v12;
LABEL_7:
    (*(v8 + 8))(v14, v7);
    return v19;
  }

  v37 = v7;
  if (!v15)
  {
    v25 = *(v0 + OBJC_IVAR___HPRFMindReminderViewController_tableView);
    v26 = sub_EF38();
    v27 = sub_ED08().super.isa;
    v19 = [v25 dequeueReusableCellWithIdentifier:v26 forIndexPath:v27];

    sub_EED8();
    type metadata accessor for MindReminderViewController();
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass:v28];
    v36._countAndFlagsBits = 0xE000000000000000;
    v42._countAndFlagsBits = 0x5245444E494D4552;
    v42._object = 0xEF5441455045525FLL;
    v44.value._countAndFlagsBits = 0x74746553646E694DLL;
    v44.value._object = 0xEC00000073676E69;
    v30.super.isa = v29;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    sub_EB78(v42, v44, v30, v46, v36);

    sub_EEC8();
    v31 = *(v1 + OBJC_IVAR___HPRFMindReminderViewController_weekdaySelection);
    sub_ECD8();
    v32 = sub_ECA8().super.isa;
    (*(v3 + 8))(v6, v2);
    v33 = FIUIMindfulnessLocalizedWeekdaySelection();

    if (v33)
    {
      sub_EF48();
    }

    v7 = v37;
    sub_EE68();
    v39 = v7;
    v40 = &protocol witness table for UIListContentConfiguration;
    v34 = sub_6020(v38);
    (*(v8 + 16))(v34, v14, v7);
    sub_EFF8();
    [v19 setAccessoryType:1];
    goto LABEL_7;
  }

  result = sub_F108();
  __break(1u);
  return result;
}

id sub_88F8()
{
  v1 = sub_EE78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_EEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR___HPRFMindReminderViewController_tableView);
  v12 = sub_EF38();
  isa = sub_ED08().super.isa;
  v24 = [v11 dequeueReusableCellWithIdentifier:v12 forIndexPath:isa];

  sub_EEB8();
  type metadata accessor for MindReminderViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 0xE000000000000000;
  v26._countAndFlagsBits = 0x5245444E494D4552;
  v26._object = 0xEF45564F4D45525FLL;
  v27.value._countAndFlagsBits = 0x74746553646E694DLL;
  v27.value._object = 0xEC00000073676E69;
  v16.super.isa = v15;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_EB78(v26, v27, v16, v28, v23);

  sub_EEC8();
  v17 = [objc_opt_self() systemRedColor];
  v18 = sub_EEA8();
  sub_EE88();
  v18(v25, 0);
  (*(v2 + 104))(v5, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v1);
  v19 = sub_EEA8();
  sub_EE98();
  v19(v25, 0);
  v25[3] = v6;
  v25[4] = &protocol witness table for UIListContentConfiguration;
  v20 = sub_6020(v25);
  (*(v7 + 16))(v20, v10, v6);
  v21 = v24;
  sub_EFF8();
  (*(v7 + 8))(v10, v6);
  return v21;
}

uint64_t sub_8DE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8E30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_8E84(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_8EA0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_8ED0()
{
  result = qword_1DA40;
  if (!qword_1DA40)
  {
    sub_B4E8(255, &qword_1DA38, FIMindfulnessReminder_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1DA40);
  }

  return result;
}

uint64_t sub_8F38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_B124(&qword_1DA48, &qword_11088);
  result = sub_F0A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_F018(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_9160(uint64_t a1)
{
  v2 = v1;
  v41 = sub_ECE8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_B124(&qword_1DA70, &qword_110A0);
  result = sub_F0A8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_B43C(&qword_1DA60);
      result = sub_EEF8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_94A8(uint64_t a1, uint64_t a2)
{
  sub_F018(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_F048();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_952C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_AB28(v7, a2, a3);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_95C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_B124(&qword_1DA48, &qword_11088);
  result = sub_F0C8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_F018(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_97B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_F078();

    if (v9)
    {

      sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_F068();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_9CA8(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_8F38(v21 + 1);
    }

    v19 = v8;
    sub_94A8(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
  v11 = sub_F018(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_9E98(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_F028();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_99F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_ECE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_B43C(&qword_1DA60);
  v36 = a2;
  v13 = sub_EEF8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_B43C(&qword_1DA68);
      v23 = sub_EF08();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_A008(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

Swift::Int sub_9CA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_B124(&qword_1DA48, &qword_11088);
    v2 = sub_F0B8();
    v15 = v2;
    sub_F058();
    if (sub_F088())
    {
      sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_8F38(v9 + 1);
        }

        v2 = v15;
        result = sub_F018(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_F088());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_9E98(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_8F38(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_A284();
      goto LABEL_12;
    }

    sub_A60C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_F018(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_F028();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_F148();
  __break(1u);
}

uint64_t sub_A008(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_ECE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_9160(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_A3D4();
      goto LABEL_12;
    }

    sub_A820(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_B43C(&qword_1DA60);
  v15 = sub_EEF8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_B43C(&qword_1DA68);
      v23 = sub_EF08();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_F148();
  __break(1u);
  return result;
}

id sub_A284()
{
  v1 = v0;
  sub_B124(&qword_1DA48, &qword_11088);
  v2 = *v0;
  v3 = sub_F098();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_A3D4()
{
  v1 = v0;
  v2 = sub_ECE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B124(&qword_1DA70, &qword_110A0);
  v7 = *v0;
  v8 = sub_F098();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_A60C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_B124(&qword_1DA48, &qword_11088);
  result = sub_F0A8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_F018(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_A820(uint64_t a1)
{
  v2 = v1;
  v37 = sub_ECE8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_B124(&qword_1DA70, &qword_110A0);
  v10 = sub_F0A8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_B43C(&qword_1DA60);
      result = sub_EEF8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

void sub_AB28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
    v15 = v14;
    v16 = sub_F028();

    if ((v16 & 1) == 0)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:

        sub_95C4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_AC94(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = v7;
    v28 = v3;
    v26 = &v26;
    __chkstk_darwin(v9);
    v29 = &v26 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v8);
    v30 = 0;
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v7 = v16 | (v11 << 6);
      v19 = *(*(a1 + 48) + 8 * v7);
      sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
      v20 = v19;
      v8 = sub_F028();

      if ((v8 & 1) == 0)
      {
        *&v29[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_95C4(v29, v27, v30, a1);

          return v22;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v10;
  v22 = sub_952C(v24, v7, a1, v25);

  return v22;
}

Swift::Int sub_AF1C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_AC94(a1, a2);
  }

  v2 = a2;
  sub_F058();
  if (sub_F088())
  {
    sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
    do
    {
      swift_dynamicCast();
      if (sub_F028())
      {
      }

      else
      {
        v3 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v3)
        {
          sub_8F38(v3 + 1);
        }

        result = sub_F018(*(&_swiftEmptySetSingleton + 5));
        v5 = &_swiftEmptySetSingleton + 56;
        v6 = -1 << *(&_swiftEmptySetSingleton + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7)) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *&v5[8 * v8];
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *&v5[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v9) = v14;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (sub_F088());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_B124(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_B16C(uint64_t a1)
{
  v2 = sub_ECE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_B43C(&qword_1DA60);
  result = sub_EFC8();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_99F0(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_B2F4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    sub_B4E8(0, &qword_1DA38, FIMindfulnessReminder_ptr);
    sub_8ED0();
    result = sub_EFC8();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_F0E8();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_97B8(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_F118();
  }

  v6 = result;
  v5 = sub_F118();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_B43C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_ECE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B480(uint64_t a1)
{
  v2 = sub_B124(&qword_1DA78, qword_110A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B4E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_B530(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_B574(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_B88C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindfulnessRouting();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B8E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_B124(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_B944()
{
  v0 = sub_EE58();
  sub_D0AC(v0, qword_1DEC8);
  sub_CFAC(v0, qword_1DEC8);
  return sub_EE48();
}

id sub_BA14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindSettingsNavigationDonation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_BA6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_BB38(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_D04C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_B574(v11);
  return v7;
}

unint64_t sub_BB38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_BC44(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_F0F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_BC44(uint64_t a1, unint64_t a2)
{
  v4 = sub_BC90(a1, a2);
  sub_BDC0(&off_18D90);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_BC90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_BEAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_F0F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_EF78();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_BEAC(v10, 0);
        result = sub_F0D8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_BDC0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_BF20(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_BEAC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_B124(&qword_1DBC0, qword_11150);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_BF20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_B124(&qword_1DBC0, qword_11150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_C014()
{
  type metadata accessor for MindSettingsNavigationDonation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_EF48();
  v5 = v4;

  strcpy(v7, "bridge:root=");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v8._countAndFlagsBits = v3;
  v8._object = v5;
  sub_EF68(v8);

  return v7[0];
}

void sub_C0F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_B124(&qword_1DBB8, &qword_11148);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_EBF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MindSettingsNavigationDonation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = [v16 bundleIdentifier];

  if (v17)
  {
    v31 = sub_EF48();
    v19 = v18;

    if (a4)
    {

      sub_EBE8();
      v20 = (*(v11 + 48))(v9, 1, v10);

      if (v20 != 1)
      {
        (*(v11 + 32))(v14, v9, v10);
        sub_EE28();
        sub_EE18();

        (*(v11 + 8))(v14, v10);
        return;
      }

      sub_CFE4(v9);
    }
  }

  else
  {
    v31 = 0;
    v19 = 0;
  }

  if (qword_1D898 != -1)
  {
    swift_once();
  }

  v21 = sub_EE58();
  sub_CFAC(v21, qword_1DEC8);

  v22 = sub_EE38();
  v23 = sub_EFE8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v24 = 136315394;
    if (a4)
    {
      v25 = a3;
    }

    else
    {
      v25 = 7104878;
    }

    if (a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_BA6C(v25, v26, &v32);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    if (v19)
    {
      v28 = v31;
    }

    else
    {
      v28 = 7104878;
    }

    if (v19)
    {
      v29 = v19;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = sub_BA6C(v28, v29, &v32);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_0, v22, v23, "Failed to create donation. urlString: %s bundleIdentifier: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_CFAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_CFE4(uint64_t a1)
{
  v2 = sub_B124(&qword_1DBB8, &qword_11148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D04C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_D0AC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_D1E4(uint64_t a1, uint64_t a2)
{
  v45 = sub_B124(&qword_1DBF8, &qword_11190);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v45);
  v8 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v49 = sub_B124(&qword_1DC00, &qword_11198);
  v47 = *(v49 - 8);
  v46 = *(v47 + 64);
  v11 = __chkstk_darwin(v49);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v44 = &v42 - v14;
  __chkstk_darwin(v13);
  v50 = &v42 - v15;
  v16 = sub_EDB8();
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = *(v52 + 64);
  __chkstk_darwin(v16);
  v51 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EDA8();
  v19 = *(v2 + OBJC_IVAR___HPRFSeymourSubscriptionProvider_subscriptionClient + 32);
  sub_B530((v2 + OBJC_IVAR___HPRFSeymourSubscriptionProvider_subscriptionClient), *(v2 + OBJC_IVAR___HPRFSeymourSubscriptionProvider_subscriptionClient + 24));
  v43 = v10;
  sub_EDE8();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_DBBC;
  *(v21 + 24) = v20;
  v22 = v45;
  (*(v5 + 16))(v8, v10, v45);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  (*(v5 + 32))(v24 + v23, v8, v22);
  v25 = (v24 + ((v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_DD38;
  v25[1] = v21;

  v26 = v44;
  sub_EDC8();
  (*(v5 + 8))(v43, v22);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_E27C;
  *(v28 + 24) = v27;
  v29 = v47;
  v30 = v48;
  v31 = v49;
  (*(v47 + 16))(v48, v26, v49);
  v32 = v29;
  v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v34 = (v46 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v32 + 32))(v35 + v33, v30, v31);
  v36 = (v35 + v34);
  *v36 = sub_E298;
  v36[1] = v28;

  v37 = v50;
  sub_EDC8();
  v38 = *(v32 + 8);
  v38(v26, v31);
  v39 = sub_EDD8();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v39(sub_E714, v40);

  v38(v37, v31);
  return (*(v52 + 8))(v51, v53);
}

uint64_t sub_D748(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = sub_EC38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EC28();
  v8 = sub_ED88();
  (*(v4 + 8))(v7, v3);
  return a2(v8 & 1, 0);
}

uint64_t sub_D84C(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  sub_B124(&qword_1DC08, &qword_111A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_11100;
  v5 = sub_EB88();
  *(v4 + 56) = sub_B4E8(0, &qword_1DC10, NSError_ptr);
  *(v4 + 64) = sub_E78C();
  *(v4 + 32) = v5;
  sub_EC48();

  swift_getErrorValue();
  v6 = sub_F168();
  v8 = v7;
  sub_E7F4();
  if (v6 == sub_F168() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_F138();

    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  swift_getErrorValue();
  v12 = sub_F158();
  result = sub_F158();
  if (v12 == result)
  {
    return a2(0, a1);
  }

  return result;
}

void sub_DAAC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_EB88();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_DB1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourSubscriptionProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_DB84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_ED98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  return sub_EDC8();
}

uint64_t sub_DD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  swift_errorRetain();

  return sub_EDC8();
}

uint64_t sub_DDE4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_E780(v6, 0);
}

uint64_t sub_DE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_B124(&qword_1DC00, &qword_11198);
  v9 = sub_EDD8();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_E71C, v10);
}

uint64_t sub_DF4C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = sub_B124(&qword_1DC00, &qword_11198);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1);
    v15 = sub_EDD8();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_EB44, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18);
  }
}

uint64_t sub_E0D8(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_E780(v6, 0);
}

uint64_t sub_E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_B124(&qword_1DBF8, &qword_11190);
  v9 = sub_EDD8();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;

  v9(sub_E888, v10);
}

uint64_t sub_E2B4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_B124(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return _swift_deallocObject(v2, v7 + 16, v5 | 7);
}

uint64_t sub_E378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_B124(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_E440(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v24[1] = a3;
  v7 = sub_B124(&qword_1DC00, &qword_11198);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  v12 = sub_ED98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_B124(&qword_1DC28, &qword_111A8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v24 - v19);
  sub_E894(a1, v24 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v20;
    v28 = 1;
    swift_errorRetain();
    v25(&v27);
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    a2(v16);
    v22 = sub_EDD8();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = v26;

    v22(sub_EB44, v23);

    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_E734()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_E780(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_E78C()
{
  result = qword_1DC18;
  if (!qword_1DC18)
  {
    sub_B4E8(255, &qword_1DC10, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1DC18);
  }

  return result;
}

unint64_t sub_E7F4()
{
  result = qword_1DC20;
  if (!qword_1DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1DC20);
  }

  return result;
}

uint64_t sub_E848()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_E894(uint64_t a1, uint64_t a2)
{
  v4 = sub_B124(&qword_1DC28, &qword_111A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E904()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E944(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_E98C()
{
  v1 = sub_ED98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_EA50(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(sub_ED98() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_E0D8(a1, a2, v6, v7, v8);
}

uint64_t sub_EAD4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_EB14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}