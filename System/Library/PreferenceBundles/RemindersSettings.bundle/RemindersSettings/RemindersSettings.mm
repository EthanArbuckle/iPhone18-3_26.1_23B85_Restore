id sub_25A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[REMUserDefaults daemonUserDefaults];
  [v3 setPreferredDefaultListID:v2];

  v4 = *(a1 + 40);

  return [v4 reloadSpecifiers];
}

id REMSettingsBundleGet()
{
  if (qword_3B4E8[0] != -1)
  {
    sub_233B4();
  }

  v1 = qword_3B4E0;

  return v1;
}

void sub_326C(id a1)
{
  qword_3B4E0 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_39CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 defaultListSpecifier];
  [v1 reloadSpecifier:v2];
}

id sub_3A24(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setUnsavedTodayNotificationFireTime:a2];
  v3 = *(a1 + 32);
  v4 = [v3 todayNotificationEnabledSwitch];
  [v3 reloadSpecifier:v4];

  v5 = *(a1 + 32);

  return [v5 reloadTodayNotificationSpecifiers:0];
}

void sub_3A94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 includeRemindersDueTodayInBadgeCount];
  [v1 reloadSpecifier:v2];
}

void sub_3AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 showAsOverdue];
  [v1 reloadSpecifier:v2];
}

void sub_3B44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 timeZoneOverride];
  [v1 reloadSpecifier:v2];
}

void sub_3B9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 timeZoneOverride];
  [v1 reloadSpecifier:v2];
}

void sub_3BF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 disableAssignmentNotifications];
  [v1 reloadSpecifier:v2];
}

void sub_3C4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 enableAutoCompleteReminders];
  [v1 reloadSpecifier:v2];
}

id sub_5560(uint64_t a1)
{
  [*(a1 + 32) setUnsavedTodayNotificationFireTime:*(a1 + 40)];
  [*(a1 + 32) reloadSpecifier:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reloadTodayNotificationSpecifiers:1];
}

void sub_5F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5FA4(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [v7 name];
    [WeakRetained setTimeZoneOverrideName:v6];
  }

  *a3 = 1;
}

void sub_6030(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[REMLog utility];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_233C8(v2, v3);
    }
  }
}

void sub_62C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) daemonUserDefaults];
  [v2 setEnableAssignmentNotifications:v1];
}

void sub_666C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[REMLog utility];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_23440(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Successfully clear local categorization.", v5, 2u);
  }
}

void sub_693C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) daemonUserDefaults];
  [v2 setShowRemindersAsOverdue:v1];
}

void sub_6BC4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) daemonUserDefaults];
  [v2 setEnableAutoCompleteReminders:v1];
}

void sub_6E9C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) daemonUserDefaults];
  [v2 setShouldIncludeRemindersDueTodayInBadgeCount:v1];
}

BOOL sub_7078(id a1, REMAccount *a2, id a3)
{
  v3 = [(REMAccount *)a2 capabilities];
  v4 = [v3 supportsGroceriesList];

  return v4;
}

uint64_t TimeZone.defaultCityName()()
{
  v1[27] = v0;
  v2 = sub_23680();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_7930, 0, 0);
}

uint64_t sub_7930()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  sub_23670();
  v5 = objc_allocWithZone(GEORegionStore);
  isa = sub_23650().super.isa;
  v7 = [v5 initWithLocale:isa];
  v0[31] = v7;

  (*(v2 + 8))(v1, v3);
  v8 = swift_allocObject();
  v0[32] = v8;
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  sub_236A0();
  v9 = sub_23C80();
  v0[33] = v9;

  v0[22] = sub_7EDC;
  v0[23] = v8;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_7EF8;
  v0[21] = &unk_355C8;
  v10 = _Block_copy(v0 + 18);
  v0[34] = v10;
  v11 = v0[23];

  v0[2] = v0;
  v0[3] = sub_7B84;
  v12 = swift_continuation_init();
  v0[17] = sub_7F84(&qword_3A940, &qword_27580);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_7FCC;
  v0[13] = &unk_355F0;
  v0[14] = v12;
  [v7 regionsWithTimeZoneName:v9 types:8 sort:2 cursor:v10 finished:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_7B84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_7E00;
  }

  else
  {
    v3 = sub_7C94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7C94()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  _Block_release(*(v0 + 272));

  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v12 = *(v2 + 16);
    }

    result = sub_24000();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = *(v0 + 248);
    v13 = *(v0 + 256);
    v14 = *(v0 + 216);
    v9 = sub_236A0();
    v11 = v15;
    goto LABEL_11;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = sub_23F90();
  }

  else
  {
    if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = [v5 name];
  v9 = sub_23C90();
  v11 = v10;

LABEL_11:

  v16 = *(v0 + 240);

  v17 = *(v0 + 8);

  return v17(v9, v11);
}

uint64_t sub_7E00()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  swift_willThrow();

  _Block_release(v1);

  v7 = v0[1];
  v8 = v0[35];

  return v7();
}

uint64_t sub_7EA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_7EF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_7F6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7F84(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_7FCC(uint64_t a1, void *a2)
{
  v3 = sub_8F38((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_7F84(&unk_3A9D0, &unk_26F80);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_8078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_80D4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t TimeZone.defaultFormattedRegionName()()
{
  v1[45] = v0;
  v2 = sub_23680();
  v1[46] = v2;
  v3 = *(v2 - 8);
  v1[47] = v3;
  v4 = *(v3 + 64) + 15;
  v1[48] = swift_task_alloc();

  return _swift_task_switch(sub_81E0, 0, 0);
}

uint64_t sub_81E0()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  sub_23670();
  v5 = objc_allocWithZone(GEORegionStore);
  isa = sub_23650().super.isa;
  v7 = [v5 initWithLocale:isa];
  v0[49] = v7;

  (*(v2 + 8))(v1, v3);
  v8 = swift_allocObject();
  v0[50] = v8;
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  sub_236A0();
  v9 = sub_23C80();
  v0[51] = v9;

  v0[38] = sub_8F94;
  v0[39] = v8;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_7EF8;
  v0[37] = &unk_35618;
  v10 = _Block_copy(v0 + 34);
  v0[52] = v10;
  v11 = v0[39];

  v0[2] = v0;
  v0[3] = sub_8434;
  v12 = swift_continuation_init();
  v0[25] = sub_7F84(&qword_3A940, &qword_27580);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_7FCC;
  v0[21] = &unk_35640;
  v0[22] = v12;
  [v7 regionsWithTimeZoneName:v9 types:8 sort:2 cursor:v10 finished:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8434()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 424) = v2;
  if (v2)
  {
    v3 = sub_8910;
  }

  else
  {
    v3 = sub_8544;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_8544()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 400);
  _Block_release(*(v0 + 416));

  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    v4 = sub_24000();
    if (v4)
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {

        v5 = sub_23F90();
      }

      else
      {
        if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return _swift_continuation_await(v4);
        }

        v5 = *(v3 + 32);
      }

      *(v0 + 432) = v5;
      v6 = *(v0 + 392);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 344;
      *(v0 + 88) = sub_8770;
      v7 = swift_continuation_init();
      *(v0 + 264) = sub_7F84(&qword_3A948, &qword_27590);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_8B10;
      *(v0 + 232) = &unk_35668;
      *(v0 + 240) = v7;
      [v6 formattedNameForRegion:v5 result:v0 + 208];
      v4 = v0 + 80;

      return _swift_continuation_await(v4);
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = *(v0 + 392);
  v8 = *(v0 + 400);
  v10 = *(v0 + 360);
  v11 = sub_236A0();
  v13 = v12;

  v14 = *(v0 + 384);

  v15 = *(v0 + 8);

  return v15(v11, v13);
}

uint64_t sub_8770()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_89AC;
  }

  else
  {
    v3 = sub_8880;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_8880()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  v3 = *(v0 + 344);
  v4 = *(v0 + 352);

  v5 = *(v0 + 384);

  v6 = *(v0 + 8);

  return v6(v3, v4);
}

uint64_t sub_8910()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[49];
  swift_willThrow();

  _Block_release(v1);

  v6 = v0[53];
  v7 = v0[48];

  v8 = v0[1];

  return v8();
}

uint64_t sub_89AC()
{
  v1 = v0[54];
  v2 = v0[55];
  v4 = v0[49];
  v3 = v0[50];
  swift_willThrow();

  v5 = v0[55];
  v6 = v0[48];

  v7 = v0[1];

  return v7();
}

uint64_t sub_8A3C(void *a1, _BYTE *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = a1;
  sub_23CF0();
  if (*(&dword_10 + (*(a3 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a3 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v8 = *(&dword_10 + (*(a3 + 16) & 0xFFFFFFFFFFFFFF8));
    sub_23D20();
  }

  sub_23D30();
  result = swift_endAccess();
  *a2 = 1;
  return result;
}

uint64_t sub_8B10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_8F38((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_7F84(&unk_3A9D0, &unk_26F80);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = sub_23C90();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t TimeZone.localizedFullName.getter()
{
  v0 = (*(*(sub_7F84(&qword_3A950, &qword_26F70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  sub_23670();
  v3 = sub_23680();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_236C0();
  v6 = v5;
  sub_8CD0(v2);
  if (v6)
  {
    return v4;
  }

  else
  {
    return sub_236A0();
  }
}

uint64_t sub_8CD0(uint64_t a1)
{
  v2 = sub_7F84(&qword_3A950, &qword_26F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t variable initialization expression of REMDeferredAction.lock()
{
  v0 = *(*(sub_237A0() - 8) + 64);
  __chkstk_darwin();
  sub_8E28();
  sub_7F84(&qword_3A960, &unk_27260);
  sub_8E80();
  sub_23F20();
  v1 = sub_237C0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_237B0();
}

unint64_t sub_8E28()
{
  result = qword_3A958;
  if (!qword_3A958)
  {
    sub_237A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A958);
  }

  return result;
}

unint64_t sub_8E80()
{
  result = qword_3A968;
  if (!qword_3A968)
  {
    sub_8EE4(&qword_3A960, &unk_27260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A968);
  }

  return result;
}

uint64_t sub_8EE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_8F38(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Int REMTimeZonePickerViewModel.SectionIdentifier.hashValue.getter()
{
  sub_24090();
  sub_240A0(0);
  return sub_240B0();
}

Swift::Int sub_900C()
{
  sub_24090();
  sub_240A0(0);
  return sub_240B0();
}

uint64_t static REMTimeZonePickerViewModel.ItemIdentifier.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_7F84(&qword_3AA40, &unk_26F90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = *(v5 + 56);
  sub_AD44(a1, &v12 - v6, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_AD44(a2, &v7[v8], type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  LOBYTE(a2) = sub_236D0();
  v9 = sub_23700();
  v10 = *(*(v9 - 8) + 8);
  v10(&v7[v8], v9);
  v10(v7, v9);
  return a2 & 1;
}

uint64_t REMTimeZonePickerViewModel.ItemIdentifier.hash(into:)()
{
  v1 = *(*(type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0) - 8) + 64);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AD44(v0, v3, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v4 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone);
  sub_23C30();
  return (*(*(v4 - 8) + 8))(v3, v4);
}

Swift::Int REMTimeZonePickerViewModel.ItemIdentifier.hashValue.getter()
{
  v1 = *(*(type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0) - 8) + 64);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24090();
  sub_AD44(v0, v3, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v4 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone);
  sub_23C30();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_240B0();
}

Swift::Int sub_93E0(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24090();
  sub_AD44(v1, v4, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v5 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone);
  sub_23C30();
  (*(*(v5 - 8) + 8))(v4, v5);
  return sub_240B0();
}

uint64_t sub_950C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AD44(v2, v5, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v6 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone);
  sub_23C30();
  return (*(*(v6 - 8) + 8))(v5, v6);
}

Swift::Int sub_9624(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24090();
  sub_AD44(v2, v5, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v6 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone);
  sub_23C30();
  (*(*(v6 - 8) + 8))(v5, v6);
  return sub_240B0();
}

uint64_t REMTimeZonePickerViewModel.CellViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23700();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t REMTimeZonePickerViewModel.CellViewModel.cityName.getter()
{
  v1 = (v0 + *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_9814(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t REMTimeZonePickerViewModel.CellViewModel.init(id:cityName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23700();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static REMTimeZonePickerViewModel.CellViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_236D0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_24060();
}

uint64_t sub_9950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_236D0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_24060();
}

uint64_t REMTimeZonePickerViewModel.searchTerm.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t REMTimeZonePickerViewModel.cellViewModels.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall REMTimeZonePickerViewModel.init(searchTerm:cellViewModels:)(RemindersSettings::REMTimeZonePickerViewModel *__return_ptr retstr, Swift::String searchTerm, Swift::OpaquePointer cellViewModels)
{
  sub_A844(searchTerm._countAndFlagsBits, searchTerm._object, cellViewModels._rawValue, v5);
  v4 = v5[1];
  *&retstr->itemIdentifiers._rawValue = v5[0];
  retstr->searchTerm = v4;
  *&retstr->cellViewModels._rawValue = v5[2];
}

uint64_t REMTimeZonePickerViewModel.cellViewModel(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  if (*(v4 + 16) && (v5 = sub_9D14(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
    v16 = *(v9 - 8);
    sub_AD44(v8 + *(v16 + 72) * v7, a2, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
    v10 = *(v16 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t REMTimeZonePickerViewModel.snapshot(previousViewModel:)(void *a1)
{
  type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  sub_ADAC();
  sub_AE00(&qword_3B0B0, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  result = sub_23940();
  if (*(*v1 + 16))
  {
    sub_7F84(&unk_3B0A0, &unk_27600);
    v4._rawValue = &off_354E8;
    sub_23920(v4);
    result = sub_23910();
  }

  if (*a1)
  {
    v5 = sub_AE48(a1[5], v1[5]);
    sub_7F84(&unk_3B0A0, &unk_27600);
    v6._rawValue = v5;
    sub_23930(v6);
  }

  return result;
}

unint64_t sub_9D14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone);
  v5 = sub_23C20();

  return sub_A290(a1, v5);
}

unint64_t sub_9DAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23F40(*(v2 + 40));

  return sub_A450(a1, v4);
}

uint64_t sub_9DF0(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin();
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23700();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_7F84(&qword_3AB98, &unk_27150);
  v47 = a2;
  result = sub_24020();
  v15 = result;
  if (*(v12 + 16))
  {
    v42 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v43 = (v9 + 16);
    v44 = v9;
    v48 = (v9 + 32);
    v22 = result + 64;
    v45 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v49 = *(v9 + 72);
      v29 = v28 + v49 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v8);
        v30 = *(v12 + 56);
        v31 = *(v46 + 72);
        sub_C590(v30 + v31 * v27, v51, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      }

      else
      {
        (*v43)(v50, v29, v8);
        v32 = *(v12 + 56);
        v31 = *(v46 + 72);
        sub_AD44(v32 + v31 * v27, v51, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      }

      v33 = *(v15 + 40);
      sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone);
      result = sub_23C20();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v48)((*(v15 + 48) + v49 * v23), v50, v8);
      result = sub_C590(v51, *(v15 + 56) + v31 * v23, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      ++*(v15 + 16);
      v9 = v44;
      v12 = v45;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

unint64_t sub_A290(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23700();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_AE00(&qword_3AB90, &type metadata accessor for TimeZone);
      v16 = sub_23C50();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_A450(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_C414(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_23F50();
      sub_C470(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_A518()
{
  v1 = v0;
  v37 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin();
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23700();
  v38 = *(v35 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin();
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7F84(&qword_3AB98, &unk_27150);
  v6 = *v0;
  v7 = sub_24010();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v39 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v18 = v34;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v38;
        v24 = *(v38 + 72) * v22;
        v25 = v35;
        (*(v38 + 16))(v18, *(v6 + 48) + v24, v35);
        v26 = v36;
        v27 = *(v37 + 72) * v22;
        sub_AD44(*(v6 + 56) + v27, v36, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
        v28 = v39;
        (*(v23 + 32))(*(v39 + 48) + v24, v18, v25);
        result = sub_C590(v26, *(v28 + 56) + v27, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
        v16 = v40;
      }

      while (v40);
    }

    v20 = v12;
    v8 = v39;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void sub_A844(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v46 = a1;
  v47 = a2;
  v48 = a4;
  v5 = sub_23700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (__chkstk_darwin)();
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0) - 8);
  v9 = *(v55 + 64);
  (__chkstk_darwin)();
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) - 8);
  v12 = *(v11 + 64);
  v13 = (__chkstk_darwin)();
  v56 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v46 - v15;
  v61 = &_swiftEmptyDictionarySingleton;
  v16 = *(a3 + 16);
  v17 = sub_10CF0(0, v16, 0, &_swiftEmptyArrayStorage);
  sub_7F84(&unk_3B0C0, &qword_27610);
  sub_23C10(v16);
  v54 = *(a3 + 16);
  if (v54)
  {
    v18 = 0;
    v53 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v19 = (v6 + 16);
    v49 = v6;
    v50 = v11;
    v51 = a3;
    v52 = (v6 + 8);
    while (v18 < *(a3 + 16))
    {
      v20 = *(v11 + 72);
      v21 = v57;
      sub_AD44(v53 + v20 * v18, v57, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      v22 = *v19;
      (*v19)(v58, v21, v5);
      v24 = v17[2];
      v23 = v17[3];
      if (v24 >= v23 >> 1)
      {
        v17 = sub_10CF0(v23 > 1, v24 + 1, 1, v17);
      }

      v17[2] = v24 + 1;
      sub_C590(v58, v17 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v24, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
      v25 = v59;
      v26 = v57;
      v27 = v5;
      v22(v59, v57, v5);
      sub_C590(v26, v56, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      v28 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v28;
      v31 = sub_9D14(v25);
      v32 = v28[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_20;
      }

      v35 = v30;
      if (v28[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_A518();
        }
      }

      else
      {
        sub_9DF0(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_9D14(v59);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_22;
        }

        v31 = v36;
      }

      v5 = v27;
      v38 = v60;
      if (v35)
      {
        sub_C5F8(v56, v60[7] + v31 * v20);
        (*v52)(v59, v27);
      }

      else
      {
        v60[(v31 >> 6) + 8] |= 1 << v31;
        v39 = v49;
        v40 = v59;
        v22(v38[6] + *(v49 + 72) * v31, v59, v5);
        sub_C590(v56, v38[7] + v31 * v20, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
        (*(v39 + 8))(v40, v5);
        v41 = v38[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_21;
        }

        v38[2] = v43;
      }

      ++v18;
      v61 = v38;
      v11 = v50;
      a3 = v51;
      if (v54 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_24070();
    __break(1u);
  }

  else
  {
    v38 = v61;
LABEL_18:
    v44 = v48;
    *v48 = v17;
    *(v44 + 8) = 0;
    v45 = v47;
    v44[2] = v46;
    v44[3] = v45;
    v44[4] = a3;
    v44[5] = v38;
  }
}

uint64_t sub_AD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_ADAC()
{
  result = qword_3AA50;
  if (!qword_3AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AA50);
  }

  return result;
}

uint64_t sub_AE00(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_AE48(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v3 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  __chkstk_darwin(v3 - 8);
  v68 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v87 = *(v70 - 8);
  v6 = *(v87 + 64);
  v7 = __chkstk_darwin(v70);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v82 = &v66 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v66 - v12;
  __chkstk_darwin(v11);
  v78 = &v66 - v14;
  v15 = sub_23700();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v75 = &v66 - v21;
  v22 = sub_7F84(&qword_3AB80, &qword_27138);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v66 - v27;
  v29 = *(a2 + 64);
  v86 = a2 + 64;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v80 = (v16 + 16);
  v81 = a2;
  v88 = (v16 + 32);
  v77 = v16;
  v83 = (v16 + 8);

  v35 = 0;
  v69 = &_swiftEmptyArrayStorage;
  v79 = v13;
  v85 = v15;
  v76 = v20;
  v73 = v28;
  v74 = v26;
  v72 = v33;
  while (v32)
  {
    v36 = v35;
LABEL_16:
    v39 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v81;
    v42 = v77;
    v43 = v75;
    (*(v77 + 16))(v75, *(v81 + 48) + *(v77 + 72) * v40, v15);
    v44 = v15;
    v45 = v78;
    sub_AD44(*(v41 + 56) + *(v87 + 72) * v40, v78, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
    v46 = sub_7F84(&qword_3AB88, &unk_27140);
    v47 = *(v46 + 48);
    v48 = *(v42 + 32);
    v26 = v74;
    v48(v74, v43, v44);
    sub_C590(v45, &v26[v47], type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
    (*(*(v46 - 8) + 56))(v26, 0, 1, v46);
    v13 = v79;
    v20 = v76;
    v33 = v72;
    v28 = v73;
LABEL_17:
    sub_C4C4(v26, v28);
    v49 = sub_7F84(&qword_3AB88, &unk_27140);
    if ((*(*(v49 - 8) + 48))(v28, 1, v49) == 1)
    {

      return v69;
    }

    v50 = *(v49 + 48);
    v15 = v85;
    (*v88)(v20, v28, v85);
    v51 = v13;
    sub_C590(&v28[v50], v13, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
    v52 = v84;
    if (*(v84 + 16) && (v53 = sub_9D14(v20), (v54 & 1) != 0))
    {
      v55 = v71;
      sub_AD44(*(v52 + 56) + *(v87 + 72) * v53, v71, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      sub_C590(v55, v82, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      v13 = v51;
      if (sub_236D0() & 1) != 0 && ((v56 = *(v70 + 20), v57 = (v82 + v56), v58 = *(v82 + v56), v59 = *(v82 + v56 + 8), v60 = &v51[v56], *v57 == *v60) && v59 == *(v60 + 1) || (sub_24060()))
      {
        (*v83)(v20, v15);
      }

      else
      {
        (*v80)(v68, v20, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_10CF0(0, v69[2] + 1, 1, v69);
        }

        v63 = v69[2];
        v62 = v69[3];
        if (v63 >= v62 >> 1)
        {
          v69 = sub_10CF0(v62 > 1, v63 + 1, 1, v69);
        }

        (*v83)(v20, v15);
        v64 = v68;
        v65 = v69;
        v69[2] = v63 + 1;
        sub_C590(v64, v65 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v63, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
      }

      sub_C534(v82);
    }

    else
    {
      (*v83)(v20, v15);
      v13 = v51;
    }

    result = sub_C534(v13);
  }

  if (v33 <= v35 + 1)
  {
    v37 = v35 + 1;
  }

  else
  {
    v37 = v33;
  }

  v38 = v37 - 1;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      v61 = sub_7F84(&qword_3AB88, &unk_27140);
      (*(*(v61 - 8) + 56))(v26, 1, 1, v61);
      v32 = 0;
      v35 = v38;
      goto LABEL_17;
    }

    v32 = *(v86 + 8 * v36);
    ++v35;
    if (v32)
    {
      v35 = v36;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_B5E8()
{
  result = qword_3AA58;
  if (!qword_3AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AA58);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for REMTimeZonePickerViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for REMTimeZonePickerViewModel(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[3];

  v4 = a1[4];

  v5 = a1[5];
}

uint64_t initializeWithCopy for REMTimeZonePickerViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t *assignWithCopy for REMTimeZonePickerViewModel(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  v6 = a1[4];
  a1[4] = a2[4];

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;

  return a1;
}

__n128 initializeWithTake for REMTimeZonePickerViewModel(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for REMTimeZonePickerViewModel(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  v5 = a1[3];

  v6 = a1[4];
  *(a1 + 3) = *(a2 + 3);

  v7 = a1[5];
  a1[5] = a2[5];

  return a1;
}

uint64_t getEnumTagSinglePayload for REMTimeZonePickerViewModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMTimeZonePickerViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMTimeZonePickerViewModel.SectionIdentifier(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for REMTimeZonePickerViewModel.SectionIdentifier(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = sub_23700();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  return a1;
}

uint64_t destroy for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1)
{
  v2 = sub_23700();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3AA68, &qword_270F8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t storeEnumTagSinglePayload for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7F84(&qword_3AA68, &qword_270F8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_BDC0(uint64_t a1)
{
  result = sub_23700();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMTimeZonePickerViewModel.CellViewModel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23700();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

uint64_t destroy for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20) + 8);
}

uint64_t initializeWithCopy for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t assignWithCopy for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  return a1;
}

uint64_t initializeWithTake for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;

  return a1;
}

uint64_t sub_C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_C2C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23700();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_C380()
{
  result = sub_23700();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_C4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3AB80, &qword_27138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C534(uint64_t a1)
{
  v2 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_C5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_C65C()
{
  v0 = sub_238C0();
  sub_E5E4(v0, qword_3ABA0);
  sub_E648(v0, qword_3ABA0);
  v1 = [objc_opt_self() utility];
  return sub_238D0();
}

uint64_t sub_C7A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7F84(&qword_3AC40, qword_271E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v60 = &v54 - v5;
  v64 = sub_23600();
  v59 = *(v64 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v64);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_235B0();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v58);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_23680();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_23C70();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_235C0();
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  v18 = __chkstk_darwin(v16);
  v65 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v66 = &v54 - v21;
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v69.receiver = v0;
  v69.super_class = ObjectType;
  objc_msgSendSuper2(&v69, "viewDidLoad");
  v24 = REMSettingsBundleGet();
  v53._countAndFlagsBits = 0x800000000002BC30;
  v70._countAndFlagsBits = 0x6E6F5A20656D6954;
  v70._object = 0xE900000000000065;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v25.super.isa = v24;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  sub_235A0(v70, v73, v25, v74, v53);

  v56 = v1;
  v26 = [v1 navigationItem];
  v27 = sub_23C80();

  [v26 setTitle:v27];

  v67 = sub_23C90();
  v68 = v28;
  v71._countAndFlagsBits = 47;
  v71._object = 0xE100000000000000;
  sub_23CC0(v71);
  v72._countAndFlagsBits = sub_23C90();
  sub_23CC0(v72);

  v57 = v67;
  sub_23C60();
  sub_23670();
  v29 = ObjectType;
  *v11 = ObjectType;
  v30 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v31 = *(v8 + 104);
  v32 = v58;
  v31(v11, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v58);
  v61 = v23;
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v11 = v29;
  v33 = v32;
  v31(v11, v30, v32);
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v11 = v29;
  v34 = v64;
  v31(v11, v30, v33);
  v35 = v59;
  sub_235D0();
  v36 = v60;
  sub_235F0();
  v37 = v36;

  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {
    v38 = v63;
    v39 = *(v62 + 8);
    v39(v65, v63);
    v39(v66, v38);
    v39(v61, v38);
    return sub_ECC4(v37, &qword_3AC40, qword_271E0);
  }

  else
  {
    v41 = v55;
    (*(v35 + 32))(v55, v37, v34);
    v60 = sub_23C90();
    v58 = v42;
    sub_7F84(&qword_3AC48, &unk_27890);
    v43 = v62;
    v44 = *(v62 + 72);
    v45 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_27160;
    v47 = v46 + v45;
    v48 = *(v43 + 16);
    v49 = v63;
    v48(v47, v66, v63);
    v50 = v65;
    v48(v47 + v44, v65, v49);
    v51 = v61;
    sub_23E40();

    (*(v35 + 8))(v41, v64);
    v52 = *(v43 + 8);
    v52(v50, v49);
    v52(v66, v49);
    return (v52)(v51, v49);
  }
}

void sub_CF48(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = [objc_opt_self() daemonUserDefaults];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_E9EC;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_D4A4;
  v8[3] = &unk_35808;
  v5 = _Block_copy(v8);

  v6 = [v3 observeTimeZoneOverrideWithBlock:v5];
  _Block_release(v5);

  v7 = *&v1[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_daemonUserDefaultsTimeZoneOverrideObserver];
  *&v1[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_daemonUserDefaultsTimeZoneOverrideObserver] = v6;
  swift_unknownObjectRelease();
  sub_D0E4();
}

void sub_D090()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_D0E4();
  }
}

void sub_D0E4()
{
  v1 = sub_7F84(&qword_3AC38, &qword_27250);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v28 - v3;
  v5 = sub_7F84(&qword_3AC10, &unk_27640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_23700();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v30 = OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideTask;
  v31 = v0;
  if (*&v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideTask])
  {
    v16 = *&v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideTask];

    sub_23DB0();
  }

  v17 = [objc_opt_self() daemonUserDefaults];
  v18 = [v17 timeZoneOverride];

  if (v18)
  {
    sub_23C90();

    sub_23690();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_ECC4(v8, &qword_3AC10, &unk_27640);
    }

    else
    {
      v29 = *(v10 + 32);
      v29(v15, v8, v9);
      v19 = sub_23DA0();
      v20 = *(*(v19 - 8) + 56);
      v28 = v4;
      v20(v4, 1, 1, v19);
      (*(v10 + 16))(v13, v15, v9);
      sub_23D80();
      v21 = v31;
      v22 = v31;
      v23 = sub_23D70();
      v24 = (*(v10 + 80) + 40) & ~*(v10 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = v23;
      *(v25 + 3) = &protocol witness table for MainActor;
      *(v25 + 4) = v22;
      v29(&v25[v24], v13, v9);
      v26 = sub_1B5BC(0, 0, v28, &unk_271D8, v25);
      (*(v10 + 8))(v15, v9);
      v27 = *&v21[v30];
      *&v21[v30] = v26;
    }
  }
}

void sub_D4A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *sub_D560()
{
  v1 = v0;
  v2 = sub_23C80();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_23F10();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48[0] = v46;
  v48[1] = v47;
  if (*(&v47 + 1))
  {
    sub_7F84(&qword_3AC30, &unk_271C0);
    if (swift_dynamicCast())
    {
      return v45;
    }
  }

  else
  {
    sub_ECC4(v48, &qword_3AC20, &qword_277E0);
  }

  *&v48[0] = &_swiftEmptyArrayStorage;
  v5 = REMSettingsBundleGet();
  v42._countAndFlagsBits = 0x800000000002BA40;
  v49._countAndFlagsBits = 0x756E614D20746553;
  v49._object = 0xEC000000796C6C61;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v6.super.isa = v5;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_235A0(v49, v52, v6, v55, v42);

  v7 = objc_opt_self();
  v8 = sub_23C80();

  v9 = sub_23C80();
  v43._object = "setTimeZoneOverrideEnabled:";
  v10 = [v7 standardPreferenceSpecifierNamed:v8 target:v1 cell:6 detail:0 keyName:v9 defaultValue:0 scope:0 set:? get:?];

  v11 = v10;
  sub_23CF0();
  if (*(&dword_10 + (*&v48[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v48[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v39 = *(&dword_10 + (*&v48[0] & 0xFFFFFFFFFFFFFF8));
    sub_23D20();
  }

  sub_23D30();
  v12 = *&v48[0];
  v13 = REMSettingsBundleGet();
  v43._countAndFlagsBits = 0x800000000002BAA0;
  v50._countAndFlagsBits = 0x6E6F5A20656D6954;
  v50._object = 0xE900000000000065;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v14.super.isa = v13;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  sub_235A0(v50, v53, v14, v56, v43);

  type metadata accessor for REMTimeZonePickerViewController();
  v15 = sub_23C80();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = sub_23C80();
  v44._object = 0;
  v18 = [v7 standardPreferenceSpecifierNamed:v15 target:v1 cell:2 detail:ObjCClassFromMetadata keyName:v17 defaultValue:0 scope:0 set:? get:?];

  v19 = OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier;
  v20 = *&v1[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier];
  *&v1[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier] = v18;
  v21 = v18;

  v22 = *&v1[v19];
  if (v22)
  {
    [v22 setIdentifier:REMSettingsTimeZoneIdentifier];
  }

  v23 = [objc_opt_self() daemonUserDefaults];
  [v23 timeZoneOverrideEnabled];

  v24 = *&v1[v19];
  if (v24)
  {
    v25 = v24;
    isa = sub_23D40().super.super.isa;
    [v25 setProperty:isa forKey:PSEnabledKey];

    v27 = *&v1[v19];
    if (v27)
    {
      [v27 setControllerLoadAction:"loadTimeZonePickerController:"];
    }
  }

  v28 = REMSettingsBundleGet();
  v44._countAndFlagsBits = 0x800000000002BBD0;
  v51._object = 0x800000000002BAE0;
  v51._countAndFlagsBits = 0x10000000000000E0;
  v54.value._countAndFlagsBits = 0;
  v54.value._object = 0;
  v29.super.isa = v28;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_235A0(v51, v54, v29, v57, v44);

  v30 = sub_23C80();

  v31 = [v7 groupSpecifierWithHeader:0 footer:v30];

  v32 = *&v1[v19];
  if (v32)
  {
    v33 = v32;
    v34 = v31;
    sub_23CF0();
    if (*(&dword_10 + (*&v48[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v48[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v40 = *(&dword_10 + (*&v48[0] & 0xFFFFFFFFFFFFFF8));
      sub_23D20();
    }

    sub_23D30();
    v35 = v33;
    sub_23CF0();
    if (*(&dword_10 + (*&v48[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v48[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v41 = *(&dword_10 + (*&v48[0] & 0xFFFFFFFFFFFFFF8));
      sub_23D20();
    }

    sub_23D30();

    v12 = *&v48[0];
  }

  sub_E968();
  v36 = sub_23D00().super.isa;
  v37 = sub_23C80();
  [v1 setValue:v36 forKey:v37];

  v4 = sub_1B3C0(v12);

  return v4;
}

id sub_DC24(void *a1)
{
  v2 = v1;
  if (qword_3A920 != -1)
  {
    swift_once();
  }

  v4 = sub_238C0();
  sub_E648(v4, qword_3ABA0);
  v5 = a1;
  v6 = sub_238B0();
  v7 = sub_23E30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, "Settings Bundle: Time zone override enabled: %@", v8, 0xCu);
    sub_ECC4(v9, &qword_3AC18, &unk_271B0);
  }

  v11 = [v5 BOOLValue];
  v12 = [objc_opt_self() daemonUserDefaults];
  [v12 setTimeZoneOverrideEnabled:v11];

  v13 = OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier;
  v14 = *&v2[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier];
  if (v14)
  {
    v15 = v14;
    isa = sub_23D40().super.super.isa;
    [v15 setProperty:isa forKey:PSEnabledKey];

    v17 = *&v2[v13];
  }

  else
  {
    v17 = 0;
  }

  return [v2 reloadSpecifier:v17];
}

uint64_t sub_DF10()
{
  v1 = REMSettingsBundleGet();
  v8._countAndFlagsBits = 0x800000000002BA00;
  v9._countAndFlagsBits = 0x6974616D6F747541;
  v9._object = 0xE900000000000063;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v2.super.isa = v1;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v3 = sub_235A0(v9, v10, v2, v11, v8);

  v4 = [objc_opt_self() daemonUserDefaults];
  v5 = [v4 timeZoneOverrideEnabled];

  if (v5)
  {

    if (*(v0 + OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity + 8))
    {
      v3 = *(v0 + OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity);
      v6 = *(v0 + OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity + 8);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_23D80();
  v4[4] = sub_23D70();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_E1A0;

  return TimeZone.defaultCityName()();
}

uint64_t sub_E1A0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *v3;
  v7[6] = v2;

  v10 = v7[4];
  v11 = v7[3];
  if (v4)
  {
    v12 = sub_23D50();
    v14 = v13;
    v15 = sub_E3D0;
  }

  else
  {
    v7[7] = a2;
    v7[8] = a1;
    v12 = sub_23D50();
    v14 = v16;
    v15 = sub_E32C;
  }

  return _swift_task_switch(v15, v12, v14);
}

uint64_t sub_E32C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[2];

  v5 = &v4[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity];
  v6 = *&v4[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity + 8];
  *v5 = v1;
  *(v5 + 1) = v2;

  [v4 reloadSpecifier:*&v4[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier]];
  v7 = v0[1];

  return v7();
}

uint64_t sub_E3D0()
{
  v1 = v0[4];

  if (qword_3A920 != -1)
  {
    swift_once();
  }

  v2 = sub_238C0();
  sub_E648(v2, qword_3ABA0);
  v3 = sub_238B0();
  v4 = sub_23E20();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v3, v4, "Failed to retrieve default city name for time zone override", v7, 2u);
  }

  v8 = v0[1];

  return v8();
}

id sub_E4F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *sub_E5E4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_E648(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_E680()
{
  ObjectType = swift_getObjectType();

  *&v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideEnableSwitch] = 0;
  *&v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_daemonUserDefaultsTimeZoneOverrideObserver] = 0;
  *&v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideTask] = 0;
  v2 = &v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = [objc_allocWithZone(REMStore) init];
  *&v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_store] = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_E744()
{
  v1 = sub_7F84(&qword_3AC10, &unk_27640);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_23700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() daemonUserDefaults];
  v11 = [v10 timeZoneOverride];

  if (v11)
  {
    sub_23C90();

    sub_23690();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v9, v4, v5);
      goto LABEL_6;
    }

    sub_ECC4(v4, &qword_3AC10, &unk_27640);
  }

  sub_236F0();
LABEL_6:
  v12 = sub_F4F0(v0, &off_357D0, v9);
  [v0 showController:v12 animate:1];

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_E968()
{
  result = qword_3AC28;
  if (!qword_3AC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3AC28);
  }

  return result;
}

uint64_t sub_E9B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E9F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_EA0C()
{
  v1 = sub_23700();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_EAD8(uint64_t a1)
{
  v4 = *(sub_23700() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_EBD0;

  return sub_E0EC(a1, v6, v7, v8);
}

uint64_t sub_EBD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_ECC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7F84(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_ED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_7F84(&qword_3AC38, &qword_27250);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_FA44(a3, v24 - v10);
  v12 = sub_23DA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_FAB4(v11);
  }

  else
  {
    sub_23D90();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23D50();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23CB0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_FAB4(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_FAB4(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_EF90(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_23980();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_239A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource] = 0;
  v15 = &a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel];
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  *&a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController] = 0;
  v16 = &a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter];
  *v17 = a1;
  *(v17 + 1) = &off_35988;
  sub_FB80(0, &qword_3B0E0, UICollectionViewCompositionalLayout_ptr);
  (*(v6 + 104))(v9, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v5);
  sub_23990();
  v18 = sub_23EC0();
  (*(v11 + 8))(v14, v10);
  v21.receiver = a2;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, "initWithCollectionViewLayout:", v18);

  return v19;
}

char *sub_F1C8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_237A0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v28[3] = type metadata accessor for REMTimeZonePickerRouter();
  v28[4] = &off_35950;
  v28[0] = a2;
  *(a4 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 5) = 0;
  swift_unknownObjectWeakInit();
  v10 = &a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel];
  sub_A844(0, 0xE000000000000000, &_swiftEmptyArrayStorage, v29);
  v11 = v29[1];
  *v10 = v29[0];
  *(v10 + 1) = v11;
  *(v10 + 2) = v29[2];
  *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask] = 0;
  *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_fetchSearchResultsTask] = 0;
  *(a4 + 6) = a1;
  *(a4 + 7) = &off_35BF8;
  sub_FB1C(v28, (a4 + 64));
  v12 = OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_currentTimeZone;
  v13 = sub_23700();
  v14 = *(v13 - 8);
  v15 = a3;
  (*(v14 + 16))(&a4[v12], a3, v13);
  sub_FB80(0, &qword_3AC50, OS_dispatch_queue_ptr);
  v16 = sub_23E70();
  type metadata accessor for REMDeferredAction();
  v17 = swift_allocObject();
  v17[3] = 0;
  swift_unknownObjectWeakInit();
  *&v30[0] = &_swiftEmptyArrayStorage;
  sub_8E28();
  sub_7F84(&qword_3A960, &unk_27260);
  sub_8E80();
  sub_23F20();
  v18 = sub_237C0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v17[5] = sub_237B0();
  v17[6] = &_swiftEmptyArrayStorage;
  v17[4] = v16;
  *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_deferredAction] = v17;
  swift_beginAccess();
  v17[3] = &off_35960;
  swift_unknownObjectWeakAssign();
  sub_A844(0, 0xE000000000000000, &_swiftEmptyArrayStorage, v30);
  (*(v14 + 8))(v15, v13);
  sub_80D4(v28);
  v21 = &a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel];
  v22 = *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel];
  v23 = *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 24];
  v24 = *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 32];
  v25 = *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 40];
  v26 = v30[1];
  *v21 = v30[0];
  *(v21 + 1) = v26;
  *(v21 + 2) = v30[2];

  return a4;
}

id sub_F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7F84(&qword_3AC38, &qword_27250);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v43[-1] - v7;
  v9 = sub_23700();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMTimeZonePickerInteractor();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = type metadata accessor for REMTimeZonePickerRouter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v13, a3, v9);
  v43[3] = v15;
  v43[4] = &off_35950;
  v43[0] = v16;
  v17 = type metadata accessor for REMTimeZonePickerPresenter();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = sub_F900(v43, v15);
  v22 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v43[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;

  v27 = sub_F1C8(v14, v26, v13, v20);
  sub_80D4(v43);
  v28 = objc_allocWithZone(type metadata accessor for REMTimeZonePickerViewController());

  v30 = sub_EF90(v29, v28);
  *(v14 + 24) = &off_35978;
  swift_unknownObjectWeakAssign();
  *(v27 + 3) = &off_35B40;
  swift_unknownObjectWeakAssign();
  *(v27 + 5) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = *(Strong + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_deferredAction);
    v33 = v30;
    v34._object = 0x800000000002BCF0;
    v34._countAndFlagsBits = 0xD000000000000019;
    REMDeferredAction.scheduleNextRunLoop(reason:)(v34);
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = v30;
  }

  v36 = sub_23DA0();
  (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
  sub_23D80();

  v37 = sub_23D70();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = &protocol witness table for MainActor;
  v38[4] = v27;
  v39 = sub_ED24(0, 0, v8, &unk_27258, v38);

  v40 = *&v27[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask];
  *&v27[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask] = v39;

  return v30;
}

uint64_t sub_F900(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_F950()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_F990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_EBD0;

  return sub_119FC(a1, v4, v5, v6);
}

uint64_t sub_FA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3AC38, &qword_27250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FAB4(uint64_t a1)
{
  v2 = sub_7F84(&qword_3AC38, &qword_27250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_FB80(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_FC00()
{
  result = qword_3ACF0;
  if (!qword_3ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ACF0);
  }

  return result;
}

uint64_t sub_FC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_235B0();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23680();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_23C70();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v27 = sub_235C0();
  v25 = *(v27 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v27);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23EE0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_23790();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_23750();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(PSSpecifier) init];
  [v22 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_23ED0();
  sub_23770();
  sub_23740();
  sub_23C60();
  sub_23670();
  (*(v28 + 104))(v26, enum case for LocalizedStringResource.BundleDescription.main(_:), v29);
  sub_235D0();
  sub_110BC(&qword_3AD08, &type metadata accessor for PreferencesControllerView);
  sub_23A60();
  (*(v25 + 8))(v12, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_100AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23790();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_239C0();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v11 = sub_23600();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = *(*(sub_7F84(&qword_3AD18, &qword_27340) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v15 = sub_23590();
  v4[21] = v15;
  v16 = *(v15 - 8);
  v4[22] = v16;
  v17 = *(v16 + 64) + 15;
  v4[23] = swift_task_alloc();
  sub_23D80();
  v4[24] = sub_23D70();
  v19 = sub_23D50();

  return _swift_task_switch(sub_102FC, v19, v18);
}

uint64_t sub_102FC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[7];

  sub_23BD0();
  sub_23560();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v0[2] = sub_23570();
    v0[3] = v14;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_10C9C();
    v15 = sub_23F00();

    v17 = *(v15 + 16);
    if (!v17)
    {
      v21 = &_swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    v18 = 0;
    v19 = -v17;
    v20 = v15 + 40;
    v21 = &_swiftEmptyArrayStorage;
    do
    {
      v22 = (v20 + 16 * v18++);
      while (1)
      {
        if ((v18 - 1) >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v23 = *(v22 - 1);
        v24 = *v22;
        v25 = HIBYTE(*v22) & 0xF;
        if ((*v22 & 0x2000000000000000) == 0)
        {
          v25 = v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          if (v23 != 0xD000000000000013 || 0x800000000002BD50 != v24)
          {
            v27 = *(v22 - 1);
            v28 = *v22;
            result = sub_24060();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v18;
        v22 += 2;
        if (v19 + v18 == 1)
        {
          goto LABEL_23;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v71 = v21;
      if ((result & 1) == 0)
      {
        result = sub_11048(0, *(v21 + 2) + 1, 1);
      }

      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v33 = v30 + 1;
        v70 = v30;
        result = sub_11048((v29 > 1), v30 + 1, 1);
        v30 = v70;
        v31 = v33;
        v21 = v71;
      }

      *(v21 + 2) = v31;
      v32 = &v21[16 * v30];
      *(v32 + 4) = v23;
      *(v32 + 5) = v24;
      v20 = v15 + 40;
    }

    while (v19 + v18);
LABEL_23:
    v34 = v0[15];
    v35 = v0[7];

    sub_23BC0();
    v36 = *(v21 + 2);

    if (!v36)
    {
      v52 = v0[23];
      sub_23580();
      if (v53)
      {
        v54 = v0[8];

        v55 = sub_23C80();

        [v54 setSpecifierIdentifierToScrollAndHighlight:v55];

        goto LABEL_42;
      }
    }

    v37 = *(v21 + 2);
    if (!v37)
    {

LABEL_42:
      v57 = v0[22];
      v56 = v0[23];
      v58 = v0[21];
      v60 = v0[14];
      v59 = v0[15];
      v61 = v0[13];
      v62 = v0[6];
      sub_23BE0();
      (*(v60 + 8))(v59, v61);
      (*(v57 + 8))(v56, v58);
      goto LABEL_43;
    }

    v38 = (v0[11] + 8);
    while (1)
    {
      v44 = *(v21 + 4);
      v43 = *(v21 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v37 - 1) > *(v21 + 3) >> 1)
      {
        v21 = sub_10D18(isUniquelyReferenced_nonNull_native, v37, 1, v21);
      }

      sub_11068((v21 + 32));
      v46 = *(v21 + 2);
      memmove(v21 + 32, v21 + 48, 16 * v46 - 16);
      *(v21 + 2) = v46 - 1;
      v47._rawValue = &off_35510;
      v73._countAndFlagsBits = v44;
      v73._object = v43;
      v48 = sub_24040(v47, v73);

      if (v48 == 2)
      {
        break;
      }

      if (v48 == 1)
      {
        v39 = v0[12];
        type metadata accessor for TTRIGroceryAddLanguageController();
LABEL_27:
        sub_23760();
        goto LABEL_28;
      }

      if (v48)
      {
        goto LABEL_29;
      }

      v49 = v0[12];
      v50 = [objc_opt_self() specifierForDefaultListWithTarget:v0[9]];
      sub_23780();
LABEL_28:
      v40 = v0[15];
      v41 = v0[12];
      v42 = v0[10];
      sub_110BC(&qword_3AD28, &type metadata accessor for PreferencesControllerRecipe);
      sub_239B0();
      (*v38)(v41, v42);
LABEL_29:
      v37 = *(v21 + 2);
      if (!v37)
      {

        goto LABEL_42;
      }
    }

    v51 = v0[12];
    type metadata accessor for TTRITimeZoneOverrideController();
    goto LABEL_27;
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v13 = v0[6];
  v12 = v0[7];
  sub_10C34(v0[20]);
  sub_23BC0();
  sub_23BE0();
  (*(v11 + 8))(v9, v10);
LABEL_43:
  v63 = v0[23];
  v64 = v0[19];
  v65 = v0[20];
  v67 = v0[15];
  v66 = v0[16];
  v68 = v0[12];

  v69 = v0[1];

  return v69();
}

uint64_t sub_1086C()
{
  v1 = sub_7F84(&qword_3ACF8, &qword_27320);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v17 - v4;
  v7 = *v0;
  v6 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = v7;
  v10 = v6;
  sub_7F84(&qword_3AD00, &qword_27328);
  v11 = sub_23750();
  v12 = sub_110BC(&qword_3AD08, &type metadata accessor for PreferencesControllerView);
  v17[0] = v11;
  v17[1] = v12;
  swift_getOpaqueTypeConformance2();
  sub_23BF0();
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  sub_10BD0();
  v14 = v9;
  v15 = v10;
  sub_23BB0();
  return (*(v2 + 8))(v5, v1);
}

id sub_10A78@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(REMSettingsController) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10AD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10B1C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_EBD0;

  return sub_100AC(a1, a2, v7, v6);
}

unint64_t sub_10BD0()
{
  result = qword_3AD10;
  if (!qword_3AD10)
  {
    sub_8EE4(&qword_3ACF8, &qword_27320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AD10);
  }

  return result;
}

uint64_t sub_10C34(uint64_t a1)
{
  v2 = sub_7F84(&qword_3AD18, &qword_27340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10C9C()
{
  result = qword_3AD20;
  if (!qword_3AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AD20);
  }

  return result;
}

char *sub_10D18(char *result, int64_t a2, char a3, char *a4)
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
    sub_7F84(&qword_3AD30, &qword_27348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10E4C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_7F84(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_11028(char *a1, int64_t a2, char a3)
{
  result = sub_11128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11048(char *a1, int64_t a2, char a3)
{
  result = sub_11238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_110BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_11108(size_t a1, int64_t a2, char a3)
{
  result = sub_11344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11128(char *result, int64_t a2, char a3, char *a4)
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
    sub_7F84(&qword_3AD40, &qword_27358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_11238(char *result, int64_t a2, char a3, char *a4)
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
    sub_7F84(&qword_3AD30, &qword_27348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_11344(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_7F84(&qword_3AD48, &qword_27360);
  v10 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *_s17RemindersSettings17RemindersSettingsVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void destroy for RemindersSettings(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for RemindersSettings(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

__n128 initializeWithTake for RemindersSettings(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t assignWithTake for RemindersSettings(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RemindersSettings(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RemindersSettings(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_116C4()
{
  sub_8EE4(&qword_3ACF8, &qword_27320);
  sub_10BD0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_11730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23BA0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_23D80();
  v4[6] = sub_23D70();
  v9 = sub_23D50();

  return _swift_task_switch(sub_11824, v9, v8);
}

uint64_t sub_11824()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);

  v4 = [v3 traitCollection];
  sub_23E90();

  if (sub_23B80())
  {
    v5 = *(v0 + 40);
    sub_23B90(1);
  }

  else
  {
    v6 = [*(v0 + 16) navigationController];
    if (v6)
    {
      v7 = v6;
    }
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_11930()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1198C()
{
  v0 = sub_238C0();
  sub_E5E4(v0, qword_3ADF8);
  sub_E648(v0, qword_3ADF8);
  v1 = [objc_opt_self() utility];
  return sub_238D0();
}

uint64_t sub_119FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_23D60();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = sub_23D80();
  v4[8] = sub_23D70();
  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v4;
  v8[1] = sub_11B14;

  return TimeZone.defaultCityName()();
}

uint64_t sub_11B14(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  v6[10] = a1;
  v6[11] = a2;
  v6[12] = v2;

  v9 = v5[8];
  v10 = v5[7];
  v12 = sub_23D50();
  if (v4)
  {
    v13 = sub_11E94;
  }

  else
  {
    v13 = sub_11C78;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_11C78()
{
  v1 = v0[12];
  v2 = v0[8];

  sub_23DC0();
  if (v1)
  {
    v3 = v0[11];

    v4 = v0[6];
    v5 = v0[4];
    v0[2] = v1;
    swift_errorRetain();
    sub_7F84(&unk_3A9D0, &unk_26F80);
    if (swift_dynamicCast())
    {
      v7 = v0[5];
      v6 = v0[6];
      v8 = v0[4];

      (*(v7 + 8))(v6, v8);
    }

    else
    {
      if (qword_3A928 != -1)
      {
        swift_once();
      }

      v15 = sub_238C0();
      sub_E648(v15, qword_3ADF8);
      v16 = sub_238B0();
      v17 = sub_23E20();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v16, v17, "Failed to fetch initial time zone city name", v18, 2u);
      }
    }
  }

  else
  {
    v9 = v0[3];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = v0[11];
      v12 = (Strong + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm);
      v13 = *(Strong + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm + 8);
      *v12 = v0[10];
      v12[1] = v11;

      swift_unknownObjectRelease();
    }

    v14 = v0[3];
    sub_1203C(v0[10], v0[11]);
  }

  v19 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_11E94()
{
  v1 = v0[8];

  v0[2] = v0[12];
  v2 = v0[6];
  v3 = v0[4];
  swift_errorRetain();
  sub_7F84(&unk_3A9D0, &unk_26F80);
  if (swift_dynamicCast())
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    if (qword_3A928 != -1)
    {
      swift_once();
    }

    v7 = sub_238C0();
    sub_E648(v7, qword_3ADF8);
    v8 = sub_238B0();
    v9 = sub_23E20();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Failed to fetch initial time zone city name", v10, 2u);
    }
  }

  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1203C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7F84(&qword_3AC38, &qword_27250);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_7F84(&qword_3AF30, &qword_27538);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - v12;
  v14 = sub_7F84(&qword_3AF38, &unk_27540);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_122F0(v13, a1, a2);
  sub_ECC4(v13, &qword_3AF30, &qword_27538);
  v15 = OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask;
  if (*(v2 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask))
  {

    sub_7F84(&unk_3A9D0, &unk_26F80);
    sub_23DB0();

    v16 = *(v2 + v15);
  }

  *(v2 + v15) = 0;

  v17 = OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_fetchSearchResultsTask;
  if (*(v2 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_fetchSearchResultsTask))
  {
    v18 = *(v2 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_fetchSearchResultsTask);

    sub_23DB0();
  }

  v19 = sub_23DA0();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_23D80();

  v20 = sub_23D70();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v3;
  v21[5] = a1;
  v21[6] = a2;
  v22 = sub_1B5BC(0, 0, v9, &unk_27558, v21);
  v23 = *(v3 + v17);
  *(v3 + v17) = v22;
}

void sub_122F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = sub_7F84(&qword_3AF70, &qword_27598);
  v8 = *(*(v64 - 8) + 64);
  v9 = __chkstk_darwin(v64);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v65 = &v52 - v12;
  __chkstk_darwin(v11);
  v60 = &v52 - v13;
  v14 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7F84(&qword_3AF30, &qword_27538);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v52 - v20;
  sub_17D2C(a1, &v52 - v20, &qword_3AF30, &qword_27538);
  v22 = sub_7F84(&qword_3AF38, &unk_27540);
  v23 = *(v22 - 8);
  v24 = v22;
  if ((*(v23 + 48))(v21, 1) == 1)
  {
    sub_ECC4(v21, &qword_3AF30, &qword_27538);
    v25 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v55 = a3;
  v56 = a2;
  sub_17CD8(&qword_3AF78, &qword_3AF38, &unk_27540);
  v35 = sub_23DE0();
  v25 = &_swiftEmptyArrayStorage;
  if (!v35)
  {
LABEL_13:
    (*(v23 + 8))(v21, v24);
    a3 = v55;
    a2 = v56;
    if (v55)
    {
LABEL_3:
      v26 = a3;
      if (v25)
      {
LABEL_5:

        sub_A844(a2, v26, v25, v68);
        v27 = (v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel);
        v28 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel);
        v29 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 24);
        v30 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 32);
        v31 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 40);
        v32 = v68[1];
        *v27 = v68[0];
        v27[1] = v32;
        v27[2] = v68[2];

        v33 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_deferredAction);
        v34._object = 0x800000000002BCF0;
        v34._countAndFlagsBits = 0xD000000000000019;
        REMDeferredAction.scheduleNextRunLoop(reason:)(v34);
        return;
      }

LABEL_4:
      v25 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 32);

      goto LABEL_5;
    }

LABEL_14:
    a2 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 16);
    v26 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 24);

    if (v25)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v36 = v35;
  v67 = &_swiftEmptyArrayStorage;
  sub_11108(0, v35 & ~(v35 >> 63), 0);
  v25 = v67;
  sub_23DD0();
  if ((v36 & 0x8000000000000000) == 0)
  {
    v53 = v23;
    v54 = v4;
    v58 = v21;
    v59 = v65 + 8;
    v57 = v24;
    do
    {
      v66 = v25;
      v37 = sub_23E10();
      v38 = v60;
      sub_17D2C(v39, v60, &qword_3AF70, &qword_27598);
      v37(v68, 0);
      v40 = v65;
      sub_17D2C(v38, v65, &qword_3AF70, &qword_27598);
      v41 = v64;
      v42 = *(v59 + *(v64 + 48));

      v43 = v63;
      sub_17D94(v38, v63, &qword_3AF70, &qword_27598);
      v44 = (v43 + *(v41 + 48));
      v45 = *v44;
      v46 = v44[1];
      v47 = sub_23700();
      v48 = *(v47 - 8);
      (*(v48 + 32))(v17, v40, v47);
      v49 = &v17[*(v62 + 20)];
      *v49 = v45;
      *(v49 + 1) = v46;
      (*(v48 + 8))(v43, v47);
      v25 = v66;
      v67 = v66;
      v51 = v66[2];
      v50 = v66[3];
      if (v51 >= v50 >> 1)
      {
        sub_11108(v50 > 1, v51 + 1, 1);
        v25 = v67;
      }

      v25[2] = v51 + 1;
      sub_17DFC(v17, v25 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v51);
      v24 = v57;
      v21 = v58;
      sub_23E00();
      --v36;
    }

    while (v36);
    v4 = v54;
    v23 = v53;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_12890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v9 = sub_23D60();
  v6[4] = v9;
  v10 = *(v9 - 8);
  v6[5] = v10;
  v11 = *(v10 + 64) + 15;
  v6[6] = swift_task_alloc();
  v12 = *(*(sub_7F84(&qword_3AF30, &qword_27538) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v13 = sub_7F84(&qword_3AF38, &unk_27540);
  v6[8] = v13;
  v14 = *(v13 - 8);
  v6[9] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v6[10] = v16;
  v6[11] = sub_23D80();
  v6[12] = sub_23D70();
  v17 = swift_task_alloc();
  v6[13] = v17;
  *v17 = v6;
  v17[1] = sub_12A68;

  return sub_12FEC(v16, a5, a6);
}

uint64_t sub_12A68()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  v6 = *(v3 + 96);
  v7 = *(v3 + 88);
  v9 = sub_23D50();
  if (v2)
  {
    v10 = sub_12E34;
  }

  else
  {
    v10 = sub_12BC0;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_12BC0()
{
  v1 = v0[14];
  v2 = v0[12];

  sub_23DC0();
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  if (v1)
  {
    (*(v4 + 8))(v0[10], v0[8]);
    v6 = v0[6];
    v7 = v0[4];
    v0[2] = v1;
    swift_errorRetain();
    sub_7F84(&unk_3A9D0, &unk_26F80);
    if (swift_dynamicCast())
    {
      v9 = v0[5];
      v8 = v0[6];
      v10 = v0[4];

      (*(v9 + 8))(v8, v10);
    }

    else
    {
      if (qword_3A928 != -1)
      {
        swift_once();
      }

      v13 = sub_238C0();
      sub_E648(v13, qword_3ADF8);
      v14 = sub_238B0();
      v15 = sub_23E20();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_0, v14, v15, "Failed to fetch results for time zone picker", v16, 2u);
      }
    }
  }

  else
  {
    v11 = v0[7];
    v12 = v0[3];
    (*(v4 + 16))(v11, v0[10], v0[8]);
    (*(v4 + 56))(v11, 0, 1, v5);
    sub_122F0(v11, 0, 0);
    sub_ECC4(v11, &qword_3AF30, &qword_27538);
    (*(v4 + 8))(v3, v5);
  }

  v17 = v0[10];
  v18 = v0[6];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_12E34()
{
  v1 = v0[12];

  v0[2] = v0[14];
  v2 = v0[6];
  v3 = v0[4];
  swift_errorRetain();
  sub_7F84(&unk_3A9D0, &unk_26F80);
  if (swift_dynamicCast())
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    if (qword_3A928 != -1)
    {
      swift_once();
    }

    v7 = sub_238C0();
    sub_E648(v7, qword_3ADF8);
    v8 = sub_238B0();
    v9 = sub_23E20();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Failed to fetch results for time zone picker", v10, 2u);
    }
  }

  v11 = v0[10];
  v12 = v0[6];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_12FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[142] = a3;
  v3[141] = a2;
  v3[140] = a1;
  v4 = sub_23700();
  v3[143] = v4;
  v5 = *(v4 - 8);
  v3[144] = v5;
  v6 = *(v5 + 64) + 15;
  v3[145] = swift_task_alloc();
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  v7 = *(*(sub_7F84(&qword_3AF40, &qword_27568) - 8) + 64) + 15;
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();
  v3[151] = swift_task_alloc();
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v8 = sub_7F84(&qword_3AF48, &qword_27570);
  v3[154] = v8;
  v9 = *(v8 - 8);
  v3[155] = v9;
  v10 = *(v9 + 64) + 15;
  v3[156] = swift_task_alloc();
  v11 = sub_7F84(&qword_3AF50, &qword_27578);
  v3[157] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v13 = sub_23680();
  v3[161] = v13;
  v14 = *(v13 - 8);
  v3[162] = v14;
  v15 = *(v14 + 64) + 15;
  v3[163] = swift_task_alloc();
  v16 = sub_7F84(&qword_3AF38, &unk_27540);
  v3[164] = v16;
  v17 = *(v16 - 8);
  v3[165] = v17;
  v18 = *(v17 + 64) + 15;
  v3[166] = swift_task_alloc();
  sub_23D80();
  v3[167] = sub_23D70();
  v20 = sub_23D50();
  v3[168] = v20;
  v3[169] = v19;

  return _swift_task_switch(sub_132F8, v20, v19);
}

uint64_t sub_132F8()
{
  v1 = v0;
  v23 = v0 + 10;
  v2 = v0 + 82;
  v3 = v0[166];
  v4 = v0[163];
  v5 = v0[162];
  v6 = v1[154];
  v7 = v1[143];
  v21 = v1[161];
  v22 = v1[142];
  v20 = v1[141];
  v1[170] = sub_17F54(&qword_3AA48);
  sub_237E0();
  v8 = swift_allocBox();
  v1[171] = v8;
  v1[172] = v9;
  v1[173] = sub_17C2C();
  sub_237E0();
  v1[174] = swift_allocBox();
  v1[175] = v10;
  sub_237E0();
  sub_23670();
  v11 = objc_allocWithZone(GEORegionStore);
  isa = sub_23650().super.isa;
  v13 = [v11 initWithLocale:isa];
  v1[176] = v13;

  (*(v5 + 8))(v4, v21);
  v14 = sub_23C80();
  v1[177] = v14;
  v1[86] = sub_17FF4;
  v1[87] = v8;
  v1[82] = _NSConcreteStackBlock;
  v1[83] = 1107296256;
  v1[84] = sub_7EF8;
  v1[85] = &unk_359D8;
  v15 = _Block_copy(v2);
  v1[178] = v15;
  v16 = v1[87];

  v1[10] = v1;
  v1[11] = sub_135FC;
  v17 = swift_continuation_init();
  v18 = sub_7F84(&qword_3A940, &qword_27580);
  v1[179] = v18;
  v1[49] = v18;
  v1[42] = _NSConcreteStackBlock;
  v1[43] = 1107296256;
  v1[44] = sub_7FCC;
  v1[45] = &unk_35A00;
  v1[46] = v17;
  [v13 regionsWithName:v14 options:2 types:8 sort:2 cursor:v15 finished:?];

  return _swift_continuation_await(v23);
}

uint64_t sub_135FC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1440) = v3;
  v4 = *(v1 + 1352);
  v5 = *(v1 + 1344);
  if (v3)
  {
    v6 = sub_167B0;
  }

  else
  {
    v6 = sub_1372C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1372C()
{
  v1 = v0[177];
  _Block_release(v0[178]);

  sub_23DC0();
  v2 = v0[172];
  v3 = v0[160];
  v4 = v0[157];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[154];
  swift_beginAccess();
  v8 = *(v6 + 16);
  v0[181] = v8;
  v0[182] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v5, v2, v7);
  v8(v3, v5, v7);
  *(v0 + 422) = *(v4 + 36);
  v0[183] = sub_17CD8(&qword_3AF60, &qword_3AF48, &qword_27570);
  sub_23DD0();
  v9 = *(v6 + 8);
  v0[184] = v9;
  v0[185] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = v0[183];
  v11 = *(v0 + 422);
  v12 = v0[160];
  v13 = v0[154];
  sub_23DF0();
  if (*(v12 + v11) == v0[139])
  {
    v14 = 1;
  }

  else
  {
    v15 = v0[183];
    v16 = *(v0 + 422);
    v17 = v0[160];
    v18 = v0[154];
    v19 = v0[152];
    v20 = sub_23E10();
    sub_17D2C(v21, v19, &qword_3AF68, &qword_27588);
    v20(v0 + 108, 0);
    sub_23E00();
    v14 = 0;
  }

  v22 = v0[153];
  v23 = v0[152];
  v24 = sub_7F84(&qword_3AF68, &qword_27588);
  (*(*(v24 - 8) + 56))(v23, v14, 1, v24);
  sub_17D94(v23, v22, &qword_3AF40, &qword_27568);
  v25 = sub_7F84(&qword_3AF68, &qword_27588);
  v0[186] = v25;
  v26 = *(v25 - 8);
  v0[187] = v26;
  v27 = *(v26 + 48);
  v0[188] = v27;
  v0[189] = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v27(v22, 1, v25) == 1)
  {
    sub_ECC4(v0[160], &qword_3AF50, &qword_27578);
    sub_23DC0();
    v0[193] = 0;
    v28 = v0 + 34;
    v29 = v0[179];
    v30 = v0[176];
    v31 = v0[174];
    v32 = v0[142];
    v33 = v0[141];
    v34 = sub_23C80();
    v0[194] = v34;
    v0[98] = sub_17CBC;
    v0[99] = v31;
    v0[94] = _NSConcreteStackBlock;
    v0[95] = 1107296256;
    v0[96] = sub_7EF8;
    v0[97] = &unk_35A28;
    v35 = _Block_copy(v0 + 94);
    v0[195] = v35;
    v36 = v0[99];

    v0[34] = v0;
    v0[35] = sub_14688;
    v37 = swift_continuation_init();
    v0[73] = v29;
    v0[70] = v37;
    v0[66] = _NSConcreteStackBlock;
    v0[67] = 1107296256;
    v0[68] = sub_7FCC;
    v0[69] = &unk_35A50;
    [v30 regionsWithName:v34 options:2 types:2 sort:2 cursor:v35 finished:v0 + 66];
  }

  else
  {
    v38 = v0[147];
    v39 = v0[144];
    v40 = v0[143];
    v41 = *(v0[153] + *(v25 + 48));
    v0[190] = v41;
    (*(v39 + 32))(v38);
    sub_23DC0();
    v0[191] = 0;
    v28 = v0 + 18;
    v42 = v0[176];
    v0[18] = v0;
    v0[23] = v0 + 131;
    v0[19] = sub_13E8C;
    v43 = swift_continuation_init();
    v0[57] = sub_7F84(&qword_3A948, &qword_27590);
    v0[50] = _NSConcreteStackBlock;
    v0[51] = 1107296256;
    v0[52] = sub_8B10;
    v0[53] = &unk_35AF0;
    v0[54] = v43;
    [v42 formattedNameForRegion:v41 result:v0 + 50];
  }

  return _swift_continuation_await(v28);
}

uint64_t sub_13E8C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 1536) = v3;
  v4 = *(v1 + 1352);
  v5 = *(v1 + 1344);
  if (v3)
  {
    v6 = sub_16954;
  }

  else
  {
    v6 = sub_13FBC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_13FBC()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1144);
  v7 = *(v0 + 1056);
  *(v0 + 1080) = *(v0 + 1048);
  *(v0 + 1088) = v7;
  sub_237D0();

  v8 = *(v0 + 1072);

  (*(v5 + 8))(v4, v6);

  v9 = *(v0 + 1528);
  v10 = *(v0 + 1464);
  v11 = *(v0 + 1688);
  v12 = *(v0 + 1280);
  v13 = *(v0 + 1232);
  sub_23DF0();
  if (*(v12 + v11) == *(v0 + 1112))
  {
    v14 = 1;
  }

  else
  {
    v15 = *(v0 + 1464);
    v16 = *(v0 + 1688);
    v17 = *(v0 + 1280);
    v18 = *(v0 + 1232);
    v19 = *(v0 + 1216);
    v20 = sub_23E10();
    sub_17D2C(v21, v19, &qword_3AF68, &qword_27588);
    v20(v0 + 864, 0);
    sub_23E00();
    v14 = 0;
  }

  v22 = *(v0 + 1224);
  v23 = *(v0 + 1216);
  v24 = sub_7F84(&qword_3AF68, &qword_27588);
  (*(*(v24 - 8) + 56))(v23, v14, 1, v24);
  sub_17D94(v23, v22, &qword_3AF40, &qword_27568);
  v25 = sub_7F84(&qword_3AF68, &qword_27588);
  *(v0 + 1488) = v25;
  v26 = *(v25 - 8);
  *(v0 + 1496) = v26;
  v27 = *(v26 + 48);
  *(v0 + 1504) = v27;
  *(v0 + 1512) = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v27(v22, 1, v25) == 1)
  {
    sub_ECC4(*(v0 + 1280), &qword_3AF50, &qword_27578);
    sub_23DC0();
    *(v0 + 1544) = v9;
    if (v9)
    {
      v28 = *(v0 + 1408);
      v29 = *(v0 + 1392);
      v30 = *(v0 + 1368);
      v31 = *(v0 + 1336);
      (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));

LABEL_9:

      v46 = *(v0 + 1328);
      v47 = *(v0 + 1304);
      v48 = *(v0 + 1280);
      v49 = *(v0 + 1272);
      v50 = *(v0 + 1264);
      v51 = *(v0 + 1248);
      v52 = *(v0 + 1224);
      v53 = *(v0 + 1216);
      v54 = *(v0 + 1208);
      v55 = *(v0 + 1200);
      v70 = *(v0 + 1192);
      v71 = *(v0 + 1184);
      v72 = *(v0 + 1176);
      v74 = *(v0 + 1168);
      v76 = *(v0 + 1160);

      v56 = *(v0 + 8);

      return v56();
    }

    v58 = *(v0 + 1432);
    v59 = *(v0 + 1408);
    v60 = *(v0 + 1392);
    v61 = *(v0 + 1136);
    v62 = *(v0 + 1128);
    v63 = sub_23C80();
    *(v0 + 1552) = v63;
    *(v0 + 784) = sub_17CBC;
    *(v0 + 792) = v60;
    *(v0 + 752) = _NSConcreteStackBlock;
    *(v0 + 760) = 1107296256;
    *(v0 + 768) = sub_7EF8;
    *(v0 + 776) = &unk_35A28;
    v64 = _Block_copy((v0 + 752));
    *(v0 + 1560) = v64;
    v65 = *(v0 + 792);

    *(v0 + 272) = v0;
    *(v0 + 280) = sub_14688;
    v66 = swift_continuation_init();
    *(v0 + 584) = v58;
    *(v0 + 560) = v66;
    *(v0 + 528) = _NSConcreteStackBlock;
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = sub_7FCC;
    *(v0 + 552) = &unk_35A50;
    [v59 regionsWithName:v63 options:2 types:2 sort:2 cursor:v64 finished:v0 + 528];
    v67 = v0 + 272;
  }

  else
  {
    v32 = *(v0 + 1176);
    v33 = *(v0 + 1152);
    v34 = *(v0 + 1144);
    v35 = *(*(v0 + 1224) + *(v25 + 48));
    *(v0 + 1520) = v35;
    (*(v33 + 32))(v32);
    sub_23DC0();
    *(v0 + 1528) = v9;
    if (v9)
    {
      v36 = v35;
      v37 = *(v0 + 1408);
      v38 = *(v0 + 1392);
      v39 = *(v0 + 1368);
      v40 = *(v0 + 1336);
      v41 = *(v0 + 1320);
      v73 = *(v0 + 1312);
      v75 = *(v0 + 1328);
      v42 = *(v0 + 1280);
      v43 = *(v0 + 1176);
      v44 = *(v0 + 1152);
      v45 = *(v0 + 1144);

      (*(v44 + 8))(v43, v45);
      sub_ECC4(v42, &qword_3AF50, &qword_27578);
      (*(v41 + 8))(v75, v73);
      goto LABEL_9;
    }

    v68 = *(v0 + 1408);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 1048;
    *(v0 + 152) = sub_13E8C;
    v69 = swift_continuation_init();
    *(v0 + 456) = sub_7F84(&qword_3A948, &qword_27590);
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_8B10;
    *(v0 + 424) = &unk_35AF0;
    *(v0 + 432) = v69;
    [v68 formattedNameForRegion:v35 result:v0 + 400];
    v67 = v0 + 144;
  }

  return _swift_continuation_await(v67);
}

uint64_t sub_14688()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 304);
  *(*v0 + 1568) = v3;
  v4 = *(v1 + 1352);
  v5 = *(v1 + 1344);
  if (v3)
  {
    v6 = sub_16B34;
  }

  else
  {
    v6 = sub_147B8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_147B8()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1544);
  _Block_release(*(v0 + 1560));

  sub_23DC0();
  if (v2)
  {
    v3 = *(v0 + 1408);
    v4 = *(v0 + 1392);
    v5 = *(v0 + 1368);
    v6 = *(v0 + 1336);
    (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));

    v7 = *(v0 + 1328);
    v8 = *(v0 + 1304);
    v9 = *(v0 + 1280);
    v10 = *(v0 + 1272);
    v11 = *(v0 + 1264);
    v12 = *(v0 + 1248);
    v13 = *(v0 + 1224);
    v14 = *(v0 + 1216);
    v15 = *(v0 + 1208);
    v16 = *(v0 + 1200);
    v78 = *(v0 + 1192);
    v80 = *(v0 + 1184);
    v82 = *(v0 + 1176);
    v84 = *(v0 + 1168);
    v87 = *(v0 + 1160);

    v17 = *(v0 + 8);
LABEL_3:

    return v17();
  }

  else
  {
    v88 = *(v0 + 1472);
    v90 = *(v0 + 1480);
    v19 = *(v0 + 1464);
    v20 = *(v0 + 1456);
    v21 = *(v0 + 1448);
    v22 = *(v0 + 1400);
    v23 = *(v0 + 1272);
    v24 = *(v0 + 1256);
    v25 = *(v0 + 1248);
    v26 = *(v0 + 1232);
    swift_beginAccess();
    v21(v25, v22, v26);
    v21(v23, v25, v26);
    *(v0 + 1692) = *(v24 + 36);
    sub_23DD0();
    v88(v25, v26);
    while (1)
    {
      v27 = *(v0 + 1692);
      v28 = *(v0 + 1464);
      v29 = *(v0 + 1272);
      v30 = *(v0 + 1232);
      sub_23DF0();
      if (*(v29 + v27) == *(v0 + 1096))
      {
        v31 = 1;
      }

      else
      {
        v32 = *(v0 + 1692);
        v33 = *(v0 + 1464);
        v34 = *(v0 + 1272);
        v35 = *(v0 + 1232);
        v36 = *(v0 + 1200);
        v37 = sub_23E10();
        sub_17D2C(v38, v36, &qword_3AF68, &qword_27588);
        v37(v0 + 800, 0);
        sub_23E00();
        v31 = 0;
      }

      v39 = *(v0 + 1512);
      v40 = *(v0 + 1504);
      v41 = *(v0 + 1488);
      v42 = *(v0 + 1208);
      v43 = *(v0 + 1200);
      v44 = *(*(v0 + 1496) + 56);
      *(v0 + 1576) = v44;
      v44(v43, v31, 1, v41);
      sub_17D94(v43, v42, &qword_3AF40, &qword_27568);
      if (v40(v42, 1, v41) == 1)
      {
        v53 = *(v0 + 1336);
        sub_ECC4(*(v0 + 1272), &qword_3AF50, &qword_27578);

        sub_23DC0();
        v54 = *(v0 + 1392);
        v55 = *(v0 + 1368);
        v56 = *(v0 + 1328);
        v57 = *(v0 + 1320);
        v58 = *(v0 + 1312);
        v59 = *(v0 + 1304);
        v60 = *(v0 + 1280);
        v72 = *(v0 + 1272);
        v73 = *(v0 + 1264);
        v74 = *(v0 + 1248);
        v75 = *(v0 + 1224);
        v76 = *(v0 + 1216);
        v77 = *(v0 + 1208);
        v79 = *(v0 + 1200);
        v81 = *(v0 + 1192);
        v83 = *(v0 + 1184);
        v85 = *(v0 + 1176);
        v89 = *(v0 + 1168);
        v91 = *(v0 + 1160);
        v61 = *(v0 + 1120);

        (*(v57 + 32))(v61, v56, v58);

        v17 = *(v0 + 8);
        goto LABEL_3;
      }

      v45 = *(v0 + 1328);
      v46 = *(v0 + 1312);
      v47 = *(v0 + 1168);
      v48 = *(v0 + 1152);
      v49 = *(v0 + 1144);
      v50 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
      *(v0 + 1584) = v50;
      v51 = *(v48 + 32);
      *(v0 + 1592) = v51;
      *(v0 + 1600) = (v48 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v51(v47);
      sub_237F0();
      v52 = *(v48 + 8);
      *(v0 + 1608) = v52;
      *(v0 + 1616) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52(v47, v49);
      if (!*(v0 + 976))
      {
        break;
      }
    }

    sub_23DC0();
    *(v0 + 1624) = 0;
    v86 = *(v0 + 1432);
    v92 = *(v0 + 1408);
    v62 = *(v0 + 1384);
    v63 = *(v0 + 1360);
    v64 = *(v0 + 1232);
    v65 = *(v0 + 1144);
    v66 = swift_allocBox();
    *(v0 + 1632) = v66;
    *(v0 + 1640) = v67;
    sub_237E0();
    v68 = [v50 regionId];
    *(v0 + 736) = sub_17FF4;
    *(v0 + 744) = v66;
    *(v0 + 704) = _NSConcreteStackBlock;
    *(v0 + 712) = 1107296256;
    *(v0 + 720) = sub_7EF8;
    *(v0 + 728) = &unk_35A78;
    v69 = _Block_copy((v0 + 704));
    *(v0 + 1648) = v69;
    v70 = *(v0 + 744);

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_14F68;
    v71 = swift_continuation_init();
    *(v0 + 648) = v86;
    *(v0 + 624) = v71;
    *(v0 + 592) = _NSConcreteStackBlock;
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_7FCC;
    *(v0 + 616) = &unk_35AA0;
    [v92 childRegionsOfRegionId:v68 types:8 sort:2 recursive:1 cursor:v69 finished:v0 + 592];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_14F68()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1656) = v3;
  v4 = *(v1 + 1352);
  v5 = *(v1 + 1344);
  if (v3)
  {
    v6 = sub_16CD8;
  }

  else
  {
    v6 = sub_15098;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_15098()
{
  v1 = *(v0 + 1624);
  _Block_release(*(v0 + 1648));
  sub_23DC0();
  if (v1)
  {
    v2 = *(v0 + 1632);
    v3 = *(v0 + 1408);
    v4 = *(v0 + 1392);
    v5 = *(v0 + 1368);
    v6 = *(v0 + 1336);
    v7 = *(v0 + 1328);
    v8 = *(v0 + 1320);
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1272);

    sub_ECC4(v10, &qword_3AF50, &qword_27578);
    (*(v8 + 8))(v7, v9);

    v11 = *(v0 + 1328);
    v12 = *(v0 + 1304);
    v13 = *(v0 + 1280);
    v14 = *(v0 + 1272);
    v15 = *(v0 + 1264);
    v16 = *(v0 + 1248);
    v17 = *(v0 + 1224);
    v18 = *(v0 + 1216);
    v19 = *(v0 + 1208);
    v20 = *(v0 + 1200);
    v116 = *(v0 + 1192);
    v118 = *(v0 + 1184);
    v120 = *(v0 + 1176);
    v122 = *(v0 + 1168);
    v126 = *(v0 + 1160);

    v21 = *(v0 + 8);
LABEL_3:

    return v21();
  }

  else
  {
    v23 = *(v0 + 1640);
    v24 = *(v0 + 1480);
    v127 = *(v0 + 1472);
    v123 = *(v0 + 1464);
    v25 = *(v0 + 1456);
    v26 = *(v0 + 1448);
    v27 = *(v0 + 1264);
    v28 = *(v0 + 1256);
    v29 = *(v0 + 1248);
    v30 = *(v0 + 1232);
    swift_beginAccess();
    v26(v29, v23, v30);
    v26(v27, v29, v30);
    *(v0 + 1696) = *(v28 + 36);
    sub_23DD0();
    v127(v29, v30);
    while (1)
    {
      v31 = *(v0 + 1696);
      v32 = *(v0 + 1464);
      v33 = *(v0 + 1264);
      v34 = *(v0 + 1232);
      sub_23DF0();
      if (*(v33 + v31) == *(v0 + 1104))
      {
        v35 = 1;
      }

      else
      {
        v36 = *(v0 + 1696);
        v37 = *(v0 + 1464);
        v38 = *(v0 + 1264);
        v39 = *(v0 + 1232);
        v40 = *(v0 + 1184);
        v41 = sub_23E10();
        sub_17D2C(v42, v40, &qword_3AF68, &qword_27588);
        v41(v0 + 832, 0);
        sub_23E00();
        v35 = 0;
      }

      v43 = *(v0 + 1512);
      v44 = *(v0 + 1504);
      v45 = *(v0 + 1488);
      v46 = *(v0 + 1192);
      v47 = *(v0 + 1184);
      v48 = *(v0 + 1496) + 56;
      (*(v0 + 1576))(v47, v35, 1, v45);
      sub_17D94(v47, v46, &qword_3AF40, &qword_27568);
      if (v44(v46, 1, v45) == 1)
      {
        break;
      }

      v49 = *(v0 + 1600);
      v50 = *(v0 + 1592);
      v51 = *(v0 + 1328);
      v52 = *(v0 + 1312);
      v53 = *(v0 + 1160);
      v54 = *(v0 + 1144);
      v55 = *(*(v0 + 1192) + *(*(v0 + 1488) + 48));
      *(v0 + 1664) = v55;
      v50(v53);
      sub_237F0();
      if (!*(v0 + 992))
      {
        sub_23DC0();
        *(v0 + 1672) = 0;
        v94 = v0 + 208;
        v95 = *(v0 + 1408);
        *(v0 + 208) = v0;
        *(v0 + 248) = v0 + 1000;
        *(v0 + 216) = sub_15BDC;
        v96 = swift_continuation_init();
        *(v0 + 520) = sub_7F84(&qword_3A948, &qword_27590);
        *(v0 + 464) = _NSConcreteStackBlock;
        *(v0 + 472) = 1107296256;
        *(v0 + 480) = sub_8B10;
        *(v0 + 488) = &unk_35AC8;
        *(v0 + 496) = v96;
        [v95 formattedNameForRegion:v55 result:v0 + 464];
        goto LABEL_23;
      }

      v56 = *(v0 + 1616);
      v57 = *(v0 + 1608);
      v58 = *(v0 + 1160);
      v59 = *(v0 + 1144);

      v57(v58, v59);
    }

    v60 = *(v0 + 1632);
    v61 = *(v0 + 1584);
    sub_ECC4(*(v0 + 1264), &qword_3AF50, &qword_27578);

    while (1)
    {
      v62 = *(v0 + 1692);
      v63 = *(v0 + 1464);
      v64 = *(v0 + 1272);
      v65 = *(v0 + 1232);
      sub_23DF0();
      if (*(v64 + v62) == *(v0 + 1096))
      {
        v66 = 1;
      }

      else
      {
        v67 = *(v0 + 1692);
        v68 = *(v0 + 1464);
        v69 = *(v0 + 1272);
        v70 = *(v0 + 1232);
        v71 = *(v0 + 1200);
        v72 = sub_23E10();
        sub_17D2C(v73, v71, &qword_3AF68, &qword_27588);
        v72(v0 + 800, 0);
        sub_23E00();
        v66 = 0;
      }

      v74 = *(v0 + 1512);
      v75 = *(v0 + 1504);
      v76 = *(v0 + 1488);
      v77 = *(v0 + 1208);
      v78 = *(v0 + 1200);
      v79 = *(*(v0 + 1496) + 56);
      *(v0 + 1576) = v79;
      v79(v78, v66, 1, v76);
      sub_17D94(v78, v77, &qword_3AF40, &qword_27568);
      if (v75(v77, 1, v76) == 1)
      {
        v88 = *(v0 + 1336);
        sub_ECC4(*(v0 + 1272), &qword_3AF50, &qword_27578);

        sub_23DC0();
        v89 = *(v0 + 1392);
        v90 = *(v0 + 1368);
        v91 = *(v0 + 1328);
        v92 = *(v0 + 1320);
        v93 = *(v0 + 1312);
        v97 = *(v0 + 1304);
        v98 = *(v0 + 1280);
        v110 = *(v0 + 1272);
        v111 = *(v0 + 1264);
        v112 = *(v0 + 1248);
        v113 = *(v0 + 1224);
        v114 = *(v0 + 1216);
        v115 = *(v0 + 1208);
        v117 = *(v0 + 1200);
        v119 = *(v0 + 1192);
        v121 = *(v0 + 1184);
        v124 = *(v0 + 1176);
        v128 = *(v0 + 1168);
        v129 = *(v0 + 1160);
        v99 = *(v0 + 1120);

        (*(v92 + 32))(v99, v91, v93);

        v21 = *(v0 + 8);
        goto LABEL_3;
      }

      v80 = *(v0 + 1328);
      v81 = *(v0 + 1312);
      v82 = *(v0 + 1168);
      v83 = *(v0 + 1152);
      v84 = *(v0 + 1144);
      v85 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
      *(v0 + 1584) = v85;
      v86 = *(v83 + 32);
      *(v0 + 1592) = v86;
      *(v0 + 1600) = (v83 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v86(v82);
      sub_237F0();
      v87 = *(v83 + 8);
      *(v0 + 1608) = v87;
      *(v0 + 1616) = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v87(v82, v84);
      if (!*(v0 + 976))
      {
        break;
      }
    }

    sub_23DC0();
    *(v0 + 1624) = 0;
    v94 = v0 + 16;
    v130 = *(v0 + 1408);
    v100 = *(v0 + 1384);
    v101 = *(v0 + 1360);
    v102 = *(v0 + 1232);
    v125 = *(v0 + 1432);
    v103 = *(v0 + 1144);
    v104 = swift_allocBox();
    *(v0 + 1632) = v104;
    *(v0 + 1640) = v105;
    sub_237E0();
    v106 = [v85 regionId];
    *(v0 + 736) = sub_17FF4;
    *(v0 + 744) = v104;
    *(v0 + 704) = _NSConcreteStackBlock;
    *(v0 + 712) = 1107296256;
    *(v0 + 720) = sub_7EF8;
    *(v0 + 728) = &unk_35A78;
    v107 = _Block_copy((v0 + 704));
    *(v0 + 1648) = v107;
    v108 = *(v0 + 744);

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_14F68;
    v109 = swift_continuation_init();
    *(v0 + 648) = v125;
    *(v0 + 624) = v109;
    *(v0 + 592) = _NSConcreteStackBlock;
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_7FCC;
    *(v0 + 616) = &unk_35AA0;
    [v130 childRegionsOfRegionId:v106 types:8 sort:2 recursive:1 cursor:v107 finished:v0 + 592];
LABEL_23:

    return _swift_continuation_await(v94);
  }
}

uint64_t sub_15BDC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 240);
  *(*v0 + 1680) = v3;
  v4 = *(v1 + 1352);
  v5 = *(v1 + 1344);
  if (v3)
  {
    v6 = sub_16EA8;
  }

  else
  {
    v6 = sub_15D0C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_15D0C()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1328);
  v5 = *(v0 + 1312);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1144);
  v8 = *(v0 + 1008);
  *(v0 + 1032) = *(v0 + 1000);
  *(v0 + 1040) = v8;
  sub_237D0();

  v9 = *(v0 + 1024);

  v3(v6, v7);

  v139 = *(v0 + 1672);
  while (1)
  {
    v10 = *(v0 + 1696);
    v11 = *(v0 + 1464);
    v12 = *(v0 + 1264);
    v13 = *(v0 + 1232);
    sub_23DF0();
    if (*(v12 + v10) == *(v0 + 1104))
    {
      v14 = 1;
    }

    else
    {
      v15 = *(v0 + 1696);
      v16 = *(v0 + 1464);
      v17 = *(v0 + 1264);
      v18 = *(v0 + 1232);
      v19 = *(v0 + 1184);
      v20 = sub_23E10();
      sub_17D2C(v21, v19, &qword_3AF68, &qword_27588);
      v20(v0 + 832, 0);
      sub_23E00();
      v14 = 0;
    }

    v22 = *(v0 + 1512);
    v23 = *(v0 + 1504);
    v24 = *(v0 + 1488);
    v25 = *(v0 + 1192);
    v26 = *(v0 + 1184);
    v27 = *(v0 + 1496) + 56;
    (*(v0 + 1576))(v26, v14, 1, v24);
    sub_17D94(v26, v25, &qword_3AF40, &qword_27568);
    if (v23(v25, 1, v24) == 1)
    {
      v39 = *(v0 + 1632);
      v40 = *(v0 + 1584);
      sub_ECC4(*(v0 + 1264), &qword_3AF50, &qword_27578);

      while (1)
      {
        v41 = *(v0 + 1692);
        v42 = *(v0 + 1464);
        v43 = *(v0 + 1272);
        v44 = *(v0 + 1232);
        sub_23DF0();
        if (*(v43 + v41) == *(v0 + 1096))
        {
          v45 = 1;
        }

        else
        {
          v46 = *(v0 + 1692);
          v47 = *(v0 + 1464);
          v48 = *(v0 + 1272);
          v49 = *(v0 + 1232);
          v50 = *(v0 + 1200);
          v51 = sub_23E10();
          sub_17D2C(v52, v50, &qword_3AF68, &qword_27588);
          v51(v0 + 800, 0);
          sub_23E00();
          v45 = 0;
        }

        v53 = *(v0 + 1512);
        v54 = *(v0 + 1504);
        v55 = *(v0 + 1488);
        v56 = *(v0 + 1208);
        v57 = *(v0 + 1200);
        v58 = *(*(v0 + 1496) + 56);
        *(v0 + 1576) = v58;
        v58(v57, v45, 1, v55);
        sub_17D94(v57, v56, &qword_3AF40, &qword_27568);
        if (v54(v56, 1, v55) == 1)
        {
          v75 = *(v0 + 1336);
          sub_ECC4(*(v0 + 1272), &qword_3AF50, &qword_27578);

          sub_23DC0();
          v76 = *(v0 + 1408);
          v77 = *(v0 + 1392);
          v78 = *(v0 + 1368);
          v79 = *(v0 + 1328);
          v80 = *(v0 + 1320);
          v81 = *(v0 + 1312);
          if (v139)
          {
            (*(v80 + 8))(v79, v81);

            goto LABEL_21;
          }

          v105 = *(v0 + 1304);
          v106 = *(v0 + 1280);
          v118 = *(v0 + 1272);
          v119 = *(v0 + 1264);
          v120 = *(v0 + 1248);
          v121 = *(v0 + 1224);
          v123 = *(v0 + 1216);
          v125 = *(v0 + 1208);
          v128 = *(v0 + 1200);
          v131 = *(v0 + 1192);
          v134 = *(v0 + 1184);
          v137 = *(v0 + 1176);
          v142 = *(v0 + 1168);
          v143 = *(v0 + 1160);
          v107 = *(v0 + 1120);

          (*(v80 + 32))(v107, v79, v81);

          v100 = *(v0 + 8);
          goto LABEL_22;
        }

        v59 = *(v0 + 1328);
        v60 = *(v0 + 1312);
        v61 = *(v0 + 1168);
        v62 = *(v0 + 1152);
        v63 = *(v0 + 1144);
        v64 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
        *(v0 + 1584) = v64;
        v65 = *(v62 + 32);
        *(v0 + 1592) = v65;
        *(v0 + 1600) = (v62 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v65(v61);
        sub_237F0();
        v66 = *(v62 + 8);
        *(v0 + 1608) = v66;
        *(v0 + 1616) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v66(v61, v63);
        if (!*(v0 + 976))
        {
          break;
        }
      }

      sub_23DC0();
      *(v0 + 1624) = v139;
      if (v139)
      {
        v82 = *(v0 + 1408);
        v83 = *(v0 + 1392);
        v84 = *(v0 + 1368);
        v85 = *(v0 + 1336);
        v86 = *(v0 + 1328);
        v87 = *(v0 + 1320);
        v88 = *(v0 + 1312);
        v89 = *(v0 + 1272);

        sub_ECC4(v89, &qword_3AF50, &qword_27578);
        (*(v87 + 8))(v86, v88);
        goto LABEL_21;
      }

      v102 = v0 + 16;
      v144 = *(v0 + 1408);
      v108 = *(v0 + 1384);
      v109 = *(v0 + 1360);
      v110 = *(v0 + 1232);
      v138 = *(v0 + 1432);
      v111 = *(v0 + 1144);
      v112 = swift_allocBox();
      *(v0 + 1632) = v112;
      *(v0 + 1640) = v113;
      sub_237E0();
      v114 = [v64 regionId];
      *(v0 + 736) = sub_17FF4;
      *(v0 + 744) = v112;
      *(v0 + 704) = _NSConcreteStackBlock;
      *(v0 + 712) = 1107296256;
      *(v0 + 720) = sub_7EF8;
      *(v0 + 728) = &unk_35A78;
      v115 = _Block_copy((v0 + 704));
      *(v0 + 1648) = v115;
      v116 = *(v0 + 744);

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_14F68;
      v117 = swift_continuation_init();
      *(v0 + 648) = v138;
      *(v0 + 624) = v117;
      *(v0 + 592) = _NSConcreteStackBlock;
      *(v0 + 600) = 1107296256;
      *(v0 + 608) = sub_7FCC;
      *(v0 + 616) = &unk_35AA0;
      [v144 childRegionsOfRegionId:v114 types:8 sort:2 recursive:1 cursor:v115 finished:v0 + 592];
      goto LABEL_28;
    }

    v28 = *(v0 + 1600);
    v29 = *(v0 + 1592);
    v30 = *(v0 + 1328);
    v31 = *(v0 + 1312);
    v32 = *(v0 + 1160);
    v33 = *(v0 + 1144);
    v34 = *(*(v0 + 1192) + *(*(v0 + 1488) + 48));
    *(v0 + 1664) = v34;
    v29(v32);
    sub_237F0();
    if (!*(v0 + 992))
    {
      break;
    }

    v35 = *(v0 + 1616);
    v36 = *(v0 + 1608);
    v37 = *(v0 + 1160);
    v38 = *(v0 + 1144);

    v36(v37, v38);
  }

  sub_23DC0();
  *(v0 + 1672) = v139;
  if (!v139)
  {
    v102 = v0 + 208;
    v103 = *(v0 + 1408);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1000;
    *(v0 + 216) = sub_15BDC;
    v104 = swift_continuation_init();
    *(v0 + 520) = sub_7F84(&qword_3A948, &qword_27590);
    *(v0 + 464) = _NSConcreteStackBlock;
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_8B10;
    *(v0 + 488) = &unk_35AC8;
    *(v0 + 496) = v104;
    [v103 formattedNameForRegion:v34 result:v0 + 464];
LABEL_28:

    return _swift_continuation_await(v102);
  }

  v140 = *(v0 + 1632);
  v124 = *(v0 + 1608);
  v126 = *(v0 + 1616);
  v67 = *(v0 + 1584);
  v68 = *(v0 + 1408);
  v69 = *(v0 + 1368);
  v70 = *(v0 + 1336);
  v132 = *(v0 + 1328);
  v135 = *(v0 + 1392);
  v71 = *(v0 + 1320);
  v129 = *(v0 + 1312);
  v122 = *(v0 + 1272);
  v72 = *(v0 + 1264);
  v73 = *(v0 + 1160);
  v74 = *(v0 + 1144);

  v124(v73, v74);
  sub_ECC4(v72, &qword_3AF50, &qword_27578);
  sub_ECC4(v122, &qword_3AF50, &qword_27578);
  (*(v71 + 8))(v132, v129);

LABEL_21:

  v90 = *(v0 + 1328);
  v91 = *(v0 + 1304);
  v92 = *(v0 + 1280);
  v93 = *(v0 + 1272);
  v94 = *(v0 + 1264);
  v95 = *(v0 + 1248);
  v96 = *(v0 + 1224);
  v97 = *(v0 + 1216);
  v98 = *(v0 + 1208);
  v99 = *(v0 + 1200);
  v127 = *(v0 + 1192);
  v130 = *(v0 + 1184);
  v133 = *(v0 + 1176);
  v136 = *(v0 + 1168);
  v141 = *(v0 + 1160);

  v100 = *(v0 + 8);
LABEL_22:

  return v100();
}

uint64_t sub_167B0()
{
  v1 = v0[180];
  v2 = v0[178];
  v3 = v0[177];
  v4 = v0[176];
  v5 = v0[174];
  v6 = v0[171];
  v7 = v0[167];
  v8 = v0[166];
  v9 = v0[165];
  v10 = v0[164];

  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  _Block_release(v2);

  v11 = v0[166];
  v12 = v0[163];
  v13 = v0[160];
  v14 = v0[159];
  v15 = v0[158];
  v16 = v0[156];
  v17 = v0[153];
  v18 = v0[152];
  v19 = v0[151];
  v20 = v0[150];
  v23 = v0[149];
  v24 = v0[148];
  v25 = v0[147];
  v26 = v0[146];
  v27 = v0[145];
  v28 = v0[180];

  v21 = v0[1];

  return v21();
}

uint64_t sub_16954()
{
  v1 = v0[192];
  v2 = v0[190];
  v3 = v0[176];
  v28 = v0[174];
  v30 = v0[171];
  v4 = v0[167];
  v26 = v0[166];
  v5 = v0[165];
  v6 = v0[164];
  v7 = v0[160];
  v8 = v0[147];
  v9 = v0[144];
  v10 = v0[143];

  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  sub_ECC4(v7, &qword_3AF50, &qword_27578);
  (*(v5 + 8))(v26, v6);

  v11 = v0[166];
  v12 = v0[163];
  v13 = v0[160];
  v14 = v0[159];
  v15 = v0[158];
  v16 = v0[156];
  v17 = v0[153];
  v18 = v0[152];
  v19 = v0[151];
  v20 = v0[150];
  v23 = v0[149];
  v24 = v0[148];
  v25 = v0[147];
  v27 = v0[146];
  v29 = v0[145];
  v31 = v0[192];

  v21 = v0[1];

  return v21();
}

uint64_t sub_16B34()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[176];
  v5 = v0[174];
  v6 = v0[171];
  v7 = v0[167];
  v8 = v0[166];
  v9 = v0[165];
  v10 = v0[164];

  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  _Block_release(v2);

  v11 = v0[166];
  v12 = v0[163];
  v13 = v0[160];
  v14 = v0[159];
  v15 = v0[158];
  v16 = v0[156];
  v17 = v0[153];
  v18 = v0[152];
  v19 = v0[151];
  v20 = v0[150];
  v23 = v0[149];
  v24 = v0[148];
  v25 = v0[147];
  v26 = v0[146];
  v27 = v0[145];
  v28 = v0[196];

  v21 = v0[1];

  return v21();
}

uint64_t sub_16CD8()
{
  v1 = v0[207];
  v2 = v0[206];
  v3 = v0[204];
  v4 = v0[198];
  v5 = v0[176];
  v27 = v0[174];
  v29 = v0[171];
  v6 = v0[167];
  v7 = v0[166];
  v8 = v0[165];
  v9 = v0[164];
  v10 = v0[159];

  swift_willThrow();

  sub_ECC4(v10, &qword_3AF50, &qword_27578);
  (*(v8 + 8))(v7, v9);
  _Block_release(v2);

  v11 = v0[166];
  v12 = v0[163];
  v13 = v0[160];
  v14 = v0[159];
  v15 = v0[158];
  v16 = v0[156];
  v17 = v0[153];
  v18 = v0[152];
  v19 = v0[151];
  v20 = v0[150];
  v23 = v0[149];
  v24 = v0[148];
  v25 = v0[147];
  v26 = v0[146];
  v28 = v0[145];
  v30 = v0[207];

  v21 = v0[1];

  return v21();
}

uint64_t sub_16EA8()
{
  v1 = v0[210];
  v2 = v0[208];
  v3 = v0[201];
  v4 = v0[198];
  v5 = v0[176];
  v30 = v0[174];
  v32 = v0[204];
  v34 = v0[171];
  v6 = v0[167];
  v7 = v0[165];
  v26 = v0[164];
  v28 = v0[166];
  v23 = v0[202];
  v24 = v0[159];
  v8 = v0[158];
  v9 = v0[145];
  v10 = v0[143];

  swift_willThrow();

  v3(v9, v10);
  sub_ECC4(v8, &qword_3AF50, &qword_27578);
  sub_ECC4(v24, &qword_3AF50, &qword_27578);
  (*(v7 + 8))(v28, v26);

  v11 = v0[166];
  v12 = v0[163];
  v13 = v0[160];
  v14 = v0[159];
  v15 = v0[158];
  v16 = v0[156];
  v17 = v0[153];
  v18 = v0[152];
  v19 = v0[151];
  v20 = v0[150];
  v25 = v0[149];
  v27 = v0[148];
  v29 = v0[147];
  v31 = v0[146];
  v33 = v0[145];
  v35 = v0[210];

  v21 = v0[1];

  return v21();
}

void sub_170B8(uint64_t a1)
{
  v3 = sub_7F84(&qword_3AC38, &qword_27250);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23700();
    sub_17F54(&qword_3AB90);
    if ((sub_23C50() & 1) == 0)
    {
      sub_176C8(a1);
    }

    swift_unknownObjectRelease();
  }

  v7 = *sub_8F38((v1 + 64), *(v1 + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_23DA0();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_23D80();
    v11 = v9;
    v12 = sub_23D70();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_1B5BC(0, 0, v6, &unk_275A0, v13);
  }
}

id sub_1727C(void *a1)
{
  v2 = sub_23700();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v13 - v8;
  sub_7F84(&qword_3AF48, &qword_27570);
  swift_projectBox();
  result = [a1 timeZone];
  if (result)
  {
    v11 = result;
    sub_236E0();

    (*(v3 + 32))(v9, v7, v2);
    swift_beginAccess();
    sub_237F0();
    v12 = v14;
    swift_endAccess();
    if (v12)
    {
    }

    else
    {
      v13[1] = a1;
      swift_beginAccess();
      sub_237D0();
      swift_endAccess();
    }

    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_17458()
{
  sub_17F98(v0 + 16);
  sub_17F98(v0 + 32);
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  sub_80D4((v0 + 64));
  v2 = OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_currentTimeZone;
  v3 = sub_23700();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel);
  v5 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 24);
  v6 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 32);
  v7 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 40);

  v8 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_deferredAction);

  v9 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask);

  v10 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_fetchSearchResultsTask);

  return v0;
}

uint64_t sub_17544()
{
  sub_17458();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for REMTimeZonePickerPresenter()
{
  result = qword_3AE58;
  if (!qword_3AE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_175F0()
{
  result = sub_23700();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_176C8(uint64_t a1)
{
  v2 = sub_23700();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3A920 != -1)
  {
    swift_once();
  }

  v7 = sub_238C0();
  sub_E648(v7, qword_3ABA0);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_238B0();
  v9 = sub_23E30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    sub_17F54(&unk_3AF80);
    v12 = sub_24050();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1E7CC(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v8, v9, "Settings Bundle: Set time zone override to timeZone: %{public}s", v10, 0xCu);
    sub_80D4(v11);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v16 = [objc_opt_self() daemonUserDefaults];
  sub_236A0();
  v17 = sub_23C80();

  [v16 setTimeZoneOverride:v17];
}

uint64_t sub_1797C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 32);
    v6 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 16);
    v7 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel);
    v8 = v5;
    v9 = v6;
    v10 = v3;
    sub_17D2C(&v8, v4, &qword_3AF20, &qword_27528);
    sub_17AC0(&v9, v4);
    sub_17D2C(&v10, v4, &qword_3AF28, &qword_27530);
    sub_17D2C(&v10 + 8, v4, &unk_3B0C0, &qword_27610);
    if ([v2 isViewLoaded])
    {
      sub_19578(&v5);
    }

    sub_ECC4(&v8, &qword_3AF20, &qword_27528);
    sub_11068(&v9);
    sub_ECC4(&v10, &qword_3AF28, &qword_27530);
    sub_ECC4(&v10 + 8, &unk_3B0C0, &qword_27610);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_17B1C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_17B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17FE8;

  return sub_12890(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_17C2C()
{
  result = qword_3AF58;
  if (!qword_3AF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3AF58);
  }

  return result;
}

uint64_t sub_17C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_17CD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_8EE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_17D2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7F84(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_17D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7F84(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_17DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_17E60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_17EA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_EBD0;

  return sub_11730(a1, v4, v5, v6);
}

uint64_t sub_17F54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23700();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_18094()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7F84(&qword_3B0D8, &qword_27630);
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  v5 = __chkstk_darwin(v3);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v54 - v6;
  v7 = sub_23980();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_239A0();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62.receiver = v1;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, "viewDidLoad");
  v16 = [v1 navigationItem];
  v17 = REMSettingsBundleGet();
  v53._countAndFlagsBits = 0x800000000002C060;
  v63._countAndFlagsBits = 0x6E6F5A20656D6954;
  v63._object = 0xE900000000000065;
  v64.value._countAndFlagsBits = 0;
  v64.value._object = 0;
  v18.super.isa = v17;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_235A0(v63, v64, v18, v65, v53);

  v19 = sub_23C80();

  [v16 setTitle:v19];

  (*(v8 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v7);
  sub_23990();
  sub_FB80(0, &qword_3B0E0, UICollectionViewCompositionalLayout_ptr);
  v55 = v15;
  v20 = sub_23EC0();
  v21 = [v1 collectionView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = v21;
  [v21 setCollectionViewLayout:v20 animated:0];

  v23 = [v1 collectionView];
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  [v23 setAllowsSelection:1];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_FB80(0, &qword_3B0E8, UICollectionViewListCell_ptr);
  sub_23700();
  v25 = v61;
  sub_23E50();
  v26 = [v1 collectionView];
  v28 = v59;
  v27 = v60;
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = v58;
  (*(v59 + 16))(v58, v25, v60);
  v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v31 = swift_allocObject();
  (*(v28 + 32))(v31 + v30, v29, v27);
  v32 = objc_allocWithZone(sub_7F84(&qword_3B0F0, &qword_27638));
  v33 = sub_23950();
  v34 = *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource];
  *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource] = v33;
  v35 = v33;

  v36 = [objc_allocWithZone(UISearchController) init];
  v37 = OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController;
  v38 = *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController];
  *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController] = v36;
  v39 = v36;

  if (!v39)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v40 = [v39 searchBar];

  [v40 setDelegate:v1];
  v41 = *&v1[v37];
  if (!v41)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v42 = [v41 searchBar];
  [v42 setLookToDictateEnabled:1];

  v43 = *&v1[v37];
  if (!v43)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v44 = [v43 searchBar];
  v45 = *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter] + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel;
  v46 = *(v45 + 16);
  v47 = *(v45 + 24);

  v48 = sub_23C80();

  [v44 setPlaceholder:v48];

  v49 = *&v1[v37];
  if (v49)
  {
    [v49 setObscuresBackgroundDuringPresentation:0];
    v50 = [v1 navigationItem];
    v51 = *&v1[v37];
    [v50 setSearchController:v51];

    v52 = [v1 navigationItem];
    [v52 setHidesSearchBarWhenScrolling:0];

    (*(v28 + 8))(v61, v27);
    (*(v56 + 8))(v55, v57);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v80 = a1;
  v3 = sub_7F84(&qword_3A950, &qword_26F70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v69 = &v67 - v5;
  v6 = sub_23620();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  __chkstk_darwin(v6);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_23700();
  v9 = *(v77 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v77);
  v71 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v67 - v13;
  v14 = sub_23900();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7F84(&qword_3B0F8, &qword_27650);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v67 - v25;
  __chkstk_darwin(v24);
  v28 = &v67 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v81 = v18;
  v78 = v15;
  v79 = v14;
  v76 = v9;
  if (Strong)
  {
    v30 = *(Strong + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter);
    v31 = Strong;
    swift_unknownObjectRetain();

    v32 = *(v30 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel);
    v33 = *(v30 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 24);
    v34 = *(v30 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 32);
    v35 = *(v30 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 40);

    swift_unknownObjectRelease();
    if (*(v35 + 16) && (v36 = sub_9D14(v70), (v37 & 1) != 0))
    {
      v70 = *(v35 + 56);
      v68 = v36;
      v38 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
      v39 = v28;
      v40 = *(v38 - 8);
      sub_AD44(&v70[*(v40 + 72) * v68], v39, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);

      (*(v40 + 56))(v39, 0, 1, v38);
      v28 = v39;
    }

    else
    {

      v38 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
      (*(*(v38 - 8) + 56))(v28, 1, 1, v38);
    }

    v15 = v78;
    v14 = v79;
  }

  else
  {
    v38 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
    (*(*(v38 - 8) + 56))(v28, 1, 1, v38);
  }

  sub_23EB0();
  sub_17D2C(v28, v26, &qword_3B0F8, &qword_27650);
  type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v41 = *(*(v38 - 8) + 48);
  if (v41(v26, 1, v38) == 1)
  {
    sub_ECC4(v26, &qword_3B0F8, &qword_27650);
  }

  else
  {
    v42 = &v26[*(v38 + 20)];
    v43 = *v42;
    v44 = *(v42 + 1);

    sub_C534(v26);
  }

  v45 = v81;
  sub_238F0();
  sub_17D2C(v28, v23, &qword_3B0F8, &qword_27650);
  if (v41(v23, 1, v38) == 1)
  {
    sub_ECC4(v23, &qword_3B0F8, &qword_27650);
  }

  else
  {
    v70 = v28;
    v47 = v76;
    v46 = v77;
    v48 = v71;
    (*(v76 + 16))(v71, v23, v77);
    sub_C534(v23);
    v49 = v75;
    (*(v47 + 32))(v75, v48, v46);
    v50 = v72;
    sub_23610();
    v51 = sub_236B0();
    v53 = v52;
    (*(v73 + 8))(v50, v74);
    if (v53)
    {
      v54 = REMSettingsBundleGet();
      v66._countAndFlagsBits = 0x800000000002C0A0;
      v85._countAndFlagsBits = 0x29402528204025;
      v83._object = 0x800000000002C080;
      v83._countAndFlagsBits = 0xD00000000000001FLL;
      v84.value._countAndFlagsBits = 0;
      v84.value._object = 0;
      v55.super.isa = v54;
      v85._object = 0xE700000000000000;
      sub_235A0(v83, v84, v55, v85, v66);

      sub_7F84(&qword_3B100, &qword_27658);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_27160;
      v57 = v69;
      sub_23670();
      v58 = sub_23680();
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      v59 = sub_236C0();
      v61 = v60;
      sub_ECC4(v57, &qword_3A950, &qword_26F70);
      if (!v61)
      {
        v59 = sub_236A0();
        v61 = v62;
      }

      *(v56 + 56) = &type metadata for String;
      v63 = sub_1A37C();
      *(v56 + 32) = v59;
      *(v56 + 40) = v61;
      *(v56 + 96) = &type metadata for String;
      *(v56 + 104) = v63;
      *(v56 + 64) = v63;
      *(v56 + 72) = v51;
      *(v56 + 80) = v53;
      sub_23CA0();

      v45 = v81;
      sub_238E0();
      (*(v47 + 8))(v49, v77);
      v15 = v78;
      v14 = v79;
    }

    else
    {
      (*(v47 + 8))(v49, v46);
      v45 = v81;
    }

    v28 = v70;
  }

  v82[3] = v14;
  v82[4] = &protocol witness table for UIListContentConfiguration;
  v64 = sub_1A318(v82);
  (*(v15 + 16))(v64, v45, v14);
  sub_23EA0();
  (*(v15 + 8))(v45, v14);
  return sub_ECC4(v28, &qword_3B0F8, &qword_27650);
}

uint64_t sub_1902C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_7F84(&qword_3AC10, &unk_27640);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_23700();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AD44(a3, v16, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  (*(v9 + 32))(v12, v16, v8);
  (*(v9 + 16))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_FB80(0, &qword_3B0E8, UICollectionViewListCell_ptr);
  v17 = sub_23E60();
  sub_ECC4(v7, &qword_3AC10, &unk_27640);
  (*(v9 + 8))(v12, v8);
  return v17;
}

uint64_t sub_192B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_23D80();
  v4[4] = sub_23D70();
  v6 = sub_23D50();

  return _swift_task_switch(sub_19350, v6, v5);
}

void sub_19350()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController);
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[2];
    v4 = v1;

    v5 = [v4 searchBar];

    LOBYTE(v4) = [v5 becomeFirstResponder];
    *v3 = v4;
    v6 = v0[1];

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19578(uint64_t a1)
{
  v3 = *a1;
  v32 = *(a1 + 8);
  v35 = *(a1 + 16);
  v36 = *(a1 + 24);
  v4 = *(a1 + 40);
  v33 = (a1 + 16);
  v34 = v4;
  v38 = sub_7F84(&unk_3B0A0, &unk_27600);
  v31 = *(v38 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v38);
  v7 = v29 - v6;
  v37 = v1;
  v8 = (v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel);
  v10 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel);
  v9 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 8);
  v11 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 16);
  v12 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 24);
  v13 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 32);
  v14 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 40);
  if (v10)
  {
    v30 = *(v10 + 16) != 0;
  }

  else
  {
    v30 = 0;
  }

  v29[2] = v11;
  v29[3] = v9;
  v29[0] = v13;
  v29[1] = v12;
  sub_19E4C(v10);
  type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  sub_ADAC();
  sub_19EAC();
  result = sub_23940();
  if (*(*a1 + 16))
  {
    v16._rawValue = &off_354E8;
    sub_23920(v16);
    LOBYTE(v42) = 0;
    result = sub_23910();
  }

  if (v10)
  {
    v17._rawValue = sub_AE48(v14, *(a1 + 40));
    sub_23930(v17);

    result = sub_19F04(v10);
  }

  v18 = *(v37 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource);
  if (v18)
  {
    v19 = v18;
    sub_23970();

    (*(v31 + 8))(v7, v38);
    v20 = v32 & 1;
    v21 = *v8;
    v22 = v8[1];
    v23 = v8[2];
    v24 = v8[3];
    v25 = v8[4];
    v26 = v8[5];
    v42 = *v33;
    v27 = *(a1 + 32);
    v40 = *(a1 + 40);
    v41 = v27;
    *v8 = v3;
    v8[1] = v20;
    v28 = v34;
    v8[2] = v35;
    *(v8 + 3) = v36;
    v8[5] = v28;
    sub_19F04(v21);

    sub_17AC0(&v42, v39);
    sub_17D2C(&v41, v39, &qword_3AF28, &qword_27530);
    return sub_17D2C(&v40, v39, &unk_3B0C0, &qword_27610);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19970(void *a1)
{
  v3 = sub_23700();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7F84(&qword_3B0D0, &qword_27618);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  isa = sub_23710().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v13 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource);
  if (v13)
  {
    v14 = v13;
    sub_23960();

    v15 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
    if ((*(*(v15 - 8) + 48))(v11, 1, v15) != 1)
    {
      (*(v4 + 32))(v7, v11, v3);
      v16 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter);
      sub_170B8(v7);
      (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19CC8(void *a1)
{
  v3 = sub_23C80();
  [a1 setText:v3];

  [a1 resignFirstResponder];
  v4 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter);
  v5 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm + 8);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  sub_1203C(v6, v7);
}

uint64_t sub_19E4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_19EAC()
{
  result = qword_3B0B0;
  if (!qword_3B0B0)
  {
    type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B0B0);
  }

  return result;
}

uint64_t sub_19F04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_19F64()
{
  v1 = sub_7F84(&qword_3AC38, &qword_27250);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = *sub_8F38((*(v0 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter) + 64), *(*(v0 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter) + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_23DA0();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_23D80();
    v9 = v7;
    v10 = sub_23D70();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_1B5BC(0, 0, v4, &unk_275A0, v11);
  }
}

uint64_t sub_1A0BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A0FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17FE8;

  return sub_192B8(a1, v4, v5, v6);
}

uint64_t sub_1A1B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A1F0()
{
  v1 = sub_7F84(&qword_3B0D8, &qword_27630);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_7F84(&qword_3B0D8, &qword_27630) - 8) + 80);

  return sub_1902C(a1, a2, a3);
}

uint64_t *sub_1A318(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1A37C()
{
  result = qword_3B108;
  if (!qword_3B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B108);
  }

  return result;
}

uint64_t sub_1A3D4()
{
  sub_17F98(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *REMDeferredAction.__allocating_init(queue:)(uint64_t a1)
{
  v2 = sub_237A0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1AFCC(&qword_3A958, &type metadata accessor for UnfairLock.Options);
  sub_7F84(&qword_3A960, &unk_27260);
  sub_1B278(&qword_3A968, &qword_3A960, &unk_27260);
  sub_23F20();
  v5 = sub_237C0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v4[5] = sub_237B0();
  v4[6] = &_swiftEmptyArrayStorage;
  v4[4] = a1;
  return v4;
}

Swift::Void __swiftcall REMDeferredAction.scheduleNextRunLoop(reason:)(Swift::String reason)
{
  v2 = v1;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v5 = sub_23B30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23B50();
  v19 = *(v10 - 8);
  v11 = *(v19 + 64);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = *(v2 + 40);
  v20 = v2;
  v21 = countAndFlagsBits;
  v22 = object;
  sub_237C0();

  sub_238A0();

  if (v23 == 1)
  {
    v18 = *(v2 + 32);
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1AF68;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AF70;
    aBlock[3] = &unk_35C28;
    v15 = _Block_copy(aBlock);

    sub_23B40();
    v23 = &_swiftEmptyArrayStorage;
    sub_1AFCC(&qword_3B210, &type metadata accessor for DispatchWorkItemFlags);
    v17 = v10;
    sub_7F84(&qword_3B218, &qword_276E8);
    sub_1B278(&qword_3B220, &qword_3B218, &qword_276E8);
    sub_23F20();
    sub_23E80();
    _Block_release(v15);
    (*(v6 + 8))(v9, v5);
    (*(v19 + 8))(v13, v17);
  }
}

uint64_t REMDeferredAction.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t REMDeferredAction.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*REMDeferredAction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1AA58;
}

void sub_1AA58(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *REMDeferredAction.init(queue:)(uint64_t a1)
{
  v3 = sub_237A0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1AFCC(&qword_3A958, &type metadata accessor for UnfairLock.Options);
  sub_7F84(&qword_3A960, &unk_27260);
  sub_1B278(&qword_3A968, &qword_3A960, &unk_27260);
  sub_23F20();
  v5 = sub_237C0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v1[5] = sub_237B0();
  v1[6] = &_swiftEmptyArrayStorage;
  v1[4] = a1;
  return v1;
}

uint64_t sub_1AC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(v8 + 2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_10D18(0, v9 + 1, 1, v8);
    *(a1 + 48) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_10D18((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  *(a1 + 48) = v8;
  result = swift_endAccess();
  *a4 = v9 == 0;
  return result;
}

uint64_t sub_1AD6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1ADA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v8 = *(result + 40);
    sub_237C0();

    sub_7F84(&qword_3B228, &qword_276F0);
    sub_238A0();

    if (*(v7 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      sub_1B278(&qword_3B230, &qword_3B228, &qword_276F0);
      v4 = sub_23C40();
      v6 = v5;

      (*(v2 + 8))(v1, v4, v6, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1AFB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFCC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall REMDeferredAction.drain(reason:)(Swift::String reason)
{
  v2 = v1;
  v3 = sub_23B60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2[4];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = sub_23B70();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v17 = v2[5];
    sub_237C0();

    sub_7F84(&qword_3B228, &qword_276F0);
    sub_238A0();

    v10 = v16;
    if (*(v16 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v11 = v2[3];
      ObjectType = swift_getObjectType();
      v17 = v10;
      sub_1B278(&qword_3B230, &qword_3B228, &qword_276F0);
      v13 = sub_23C40();
      v15 = v14;

      (*(v11 + 8))(v2, v13, v15, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B278(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_8EE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t REMDeferredAction.deinit()
{
  sub_17F98(v0 + 16);

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t REMDeferredAction.__deallocating_deinit()
{
  sub_17F98(v0 + 16);

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1B36C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 48);
  *(v1 + 48) = &_swiftEmptyArrayStorage;
  return result;
}

char *sub_1B3C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24000();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_11028(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_23F90();
        sub_FB80(0, &qword_3AC28, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_11028((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1F6B4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_FB80(0, &qword_3AC28, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_11028((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1F6B4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7F84(&qword_3AC38, &qword_27250);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_17D2C(a3, v27 - v11, &qword_3AC38, &qword_27250);
  v13 = sub_23DA0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_ECC4(v12, &qword_3AC38, &qword_27250);
  }

  else
  {
    sub_23D90();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23D50();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23CB0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_ECC4(a3, &qword_3AC38, &qword_27250);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_ECC4(a3, &qword_3AC38, &qword_27250);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7F84(&qword_3AC38, &qword_27250);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_17D2C(a3, v27 - v11, &qword_3AC38, &qword_27250);
  v13 = sub_23DA0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_ECC4(v12, &qword_3AC38, &qword_27250);
  }

  else
  {
    sub_23D90();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23D50();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23CB0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_ECC4(a3, &qword_3AC38, &qword_27250);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_ECC4(a3, &qword_3AC38, &qword_27250);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1BBB4()
{
  v0 = sub_238C0();
  sub_E5E4(v0, qword_3B2F0);
  sub_E648(v0, qword_3B2F0);
  v1 = [objc_opt_self() utility];
  return sub_238D0();
}

uint64_t sub_1BCFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7F84(&qword_3AC40, qword_271E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = &v51 - v5;
  v61 = sub_23600();
  v56 = *(v61 - 8);
  v6 = *(v56 + 64);
  __chkstk_darwin(v61);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_235B0();
  v58 = *(v55 - 8);
  v8 = *(v58 + 8);
  __chkstk_darwin(v55);
  v10 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_23680();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_23C70();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_235C0();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  v17 = __chkstk_darwin(v15);
  v62 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v63 = &v51 - v20;
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  v66.receiver = v0;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, "viewDidLoad");
  v23 = REMSettingsBundleGet();
  v50._countAndFlagsBits = 0x800000000002C8C0;
  v67._object = 0xEC00000065676175;
  v67._countAndFlagsBits = 0x676E614C20646441;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v24.super.isa = v23;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  sub_235A0(v67, v70, v24, v71, v50);

  v53 = v1;
  v25 = [v1 navigationItem];
  v26 = sub_23C80();

  [v25 setTitle:v26];

  v64 = sub_23C90();
  v65 = v27;
  v68._countAndFlagsBits = 47;
  v68._object = 0xE100000000000000;
  sub_23CC0(v68);
  v69._countAndFlagsBits = sub_23C90();
  sub_23CC0(v69);

  v54 = v64;
  sub_23C60();
  sub_23670();
  *v10 = ObjectType;
  v28 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v29 = *(v58 + 13);
  v30 = v55;
  v29(v10, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v55);
  v58 = v22;
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v10 = ObjectType;
  v29(v10, v28, v30);
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v10 = ObjectType;
  v31 = v61;
  v29(v10, v28, v30);
  v32 = v56;
  sub_235D0();
  v33 = v57;
  sub_235F0();
  v34 = v33;

  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    v35 = v60;
    v36 = *(v59 + 8);
    v36(v62, v60);
    v36(v63, v35);
    v36(v58, v35);
    return sub_ECC4(v34, &qword_3AC40, qword_271E0);
  }

  else
  {
    v38 = v52;
    (*(v32 + 32))(v52, v34, v31);
    v57 = sub_23C90();
    v55 = v39;
    sub_7F84(&qword_3AC48, &unk_27890);
    v40 = v59;
    v41 = *(v59 + 72);
    v42 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_27160;
    v44 = v43 + v42;
    v45 = *(v40 + 16);
    v46 = v60;
    v45(v44, v63, v60);
    v47 = v62;
    v45(v44 + v41, v62, v46);
    v48 = v58;
    sub_23E40();

    (*(v32 + 8))(v38, v61);
    v49 = *(v40 + 8);
    v49(v47, v46);
    v49(v63, v46);
    return (v49)(v48, v46);
  }
}

char *sub_1C498()
{
  v1 = v0;
  v2 = sub_7F84(&qword_3AC40, qword_271E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v104 - v4;
  v6 = sub_23600();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23C80();
  v12 = [v0 valueForKey:v11];

  if (v12)
  {
    sub_23F10();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v113[0] = v111;
  v113[1] = v112;
  v109 = v1;
  if (!*(&v112 + 1))
  {
    v104 = v10;
    v105 = v5;
    v106 = v7;
    v107 = v6;
    sub_ECC4(v113, &qword_3AC20, &qword_277E0);
    goto LABEL_9;
  }

  sub_7F84(&qword_3AC30, &unk_271C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v104 = v10;
    v105 = v5;
    v106 = v7;
    v107 = v6;
LABEL_9:
    *&v111 = &_swiftEmptyArrayStorage;
    v14 = REMSettingsBundleGet();
    v100._countAndFlagsBits = 0x800000000002C320;
    v114._countAndFlagsBits = 0xD000000000000016;
    v114._object = 0x800000000002C300;
    v119.value._countAndFlagsBits = 0;
    v119.value._object = 0;
    v15.super.isa = v14;
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    v108 = sub_235A0(v114, v119, v15, v123, v100);

    v16 = [objc_opt_self() authorizationStatusForBundleIdentifier:REMAppBundleIdentifier] - 3 < 2;
    v17 = sub_1F040(v16);
    v19 = v18;
    v20 = REMSettingsBundleGet();
    v101._countAndFlagsBits = 0x800000000002C360;
    v124._countAndFlagsBits = 0x6DA0C26E7261654CLL;
    v124._object = 0xAE00A680E265726FLL;
    v115._countAndFlagsBits = 0xD000000000000013;
    v115._object = 0x800000000002C340;
    v120.value._countAndFlagsBits = 0;
    v120.value._object = 0;
    v21.super.isa = v20;
    sub_235A0(v115, v120, v21, v124, v101);

    v22 = sub_23C80();
    v23 = sub_23C80();
    v24 = [v22 rangeOfString:v23];
    v26 = v25;

    if (v24 != sub_23550())
    {
      v27 = sub_23C80();

      v28 = sub_23C80();
      v29 = [v27 stringByReplacingCharactersInRange:v24 withString:{v26, v28}];

      v17 = sub_23C90();
      v19 = v30;
    }

    v31 = sub_23CE0();

    v32 = objc_opt_self();
    v33 = sub_23C80();

    v34 = [v32 groupSpecifierWithName:v33];

    if (v34)
    {
      sub_7F84(&qword_3B368, &qword_277E8);
      inited = swift_initStackObject();
      v108 = v24;
      v36 = inited;
      *(inited + 16) = xmmword_27760;
      *&v113[0] = sub_23C90();
      *(&v113[0] + 1) = v37;
      sub_23F60();
      sub_FB80(0, &qword_3B370, PSFooterHyperlinkView_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = NSStringFromClass(ObjCClassFromMetadata);
      v40 = v31;
      v41 = sub_23C90();
      v43 = v42;

      v36[12] = &type metadata for String;
      v36[9] = v41;
      v36[10] = v43;
      *&v113[0] = sub_23C90();
      *(&v113[0] + 1) = v44;
      sub_23F60();
      v36[21] = &type metadata for String;
      v36[18] = v17;
      v36[19] = v19;
      *&v113[0] = sub_23C90();
      *(&v113[0] + 1) = v45;
      sub_23F60();
      v116.location = v108;
      v116.length = v40;
      v46 = NSStringFromRange(v116);
      v47 = sub_23C90();
      v49 = v48;

      v36[30] = &type metadata for String;
      v36[27] = v47;
      v36[28] = v49;
      sub_1F12C(v36);
      swift_setDeallocating();
      sub_7F84(&qword_3B378, &unk_277F0);
      swift_arrayDestroy();
      isa = sub_23C00().super.isa;

      [v34 setProperties:isa];

      v51 = v105;
      sub_235F0();
      v53 = v106;
      v52 = v107;
      if ((*(v106 + 48))(v51, 1, v107) == 1)
      {
        sub_ECC4(v51, &qword_3AC40, qword_271E0);
      }

      else
      {
        v55 = v104;
        (*(v53 + 32))(v104, v51, v52);
        sub_235E0(v56);
        v58 = v57;
        [v34 setProperty:v57 forKey:PSFooterHyperlinkViewURLKey];

        (*(v53 + 8))(v55, v52);
      }

      v59 = v34;
      sub_23CF0();
      v54 = v109;
      if (*(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v111 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v98 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
        sub_23D20();
      }

      sub_23D30();
    }

    else
    {

      v54 = v109;
    }

    v60 = REMSettingsBundleGet();
    v102._countAndFlagsBits = 0x800000000002C450;
    v117._object = 0x800000000002C430;
    v117._countAndFlagsBits = 0xD000000000000011;
    v121.value._countAndFlagsBits = 0;
    v121.value._object = 0;
    v61.super.isa = v60;
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    sub_235A0(v117, v121, v61, v125, v102);

    v62 = sub_23C80();

    v63 = NSStringFromSelector("automaticSecondaryGroceryLocale");
    if (!v63)
    {
      sub_23C90();
      v63 = sub_23C80();
    }

    v64 = objc_opt_self();
    v65 = [v64 standardPreferenceSpecifierNamed:v62 target:v54 cell:6 detail:0 keyName:v63 defaultValue:0 scope:0 set:"setAutomaticSecondaryGroceryLocale:" get:"automaticSecondaryGroceryLocale"];

    v66 = v65;
    sub_23CF0();
    if (*(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v111 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v97 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
      sub_23D20();
    }

    v108 = v66;
    sub_23D30();
    v107 = v111;
    v67 = REMSettingsBundleGet();
    v103._countAndFlagsBits = 0x800000000002C4A0;
    v118._countAndFlagsBits = 0x65676175676E614CLL;
    v118._object = 0xE900000000000073;
    v122.value._countAndFlagsBits = 0;
    v122.value._object = 0;
    v68.super.isa = v67;
    v126._countAndFlagsBits = 0;
    v126._object = 0xE000000000000000;
    sub_235A0(v118, v122, v68, v126, v103);

    type metadata accessor for TTRIGroceryLanguagesController();
    v69 = sub_23C80();
    v70 = NSStringFromSelector("secondaryGroceryLanguageDisplayName");
    if (!v70)
    {
      sub_23C90();
      v70 = sub_23C80();
    }

    v71 = swift_getObjCClassFromMetadata();
    v72 = v64;
    v73 = v64;
    v74 = v109;
    v75 = [v73 standardPreferenceSpecifierNamed:v69 target:v109 cell:2 detail:v71 keyName:v70 defaultValue:0 scope:0 set:0 get:"secondaryGroceryLanguageDisplayName"];

    v76 = OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier;
    v77 = *&v74[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier];
    *&v74[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier] = v75;
    v78 = v75;

    v79 = *&v74[v76];
    if (v79)
    {
      v80 = REMSettingsGroceryLanguageListIdentifier;
      v81 = v79;
      v82 = v80;
      [v81 setIdentifier:v82];
    }

    v83 = sub_23C80();

    v84 = NSStringFromSelector("secondaryGroceryLanguageDisplayName");
    if (!v84)
    {
      sub_23C90();
      v84 = sub_23C80();
    }

    v85 = v109;
    v86 = [v72 standardPreferenceSpecifierNamed:v83 target:v109 cell:4 detail:0 keyName:v84 defaultValue:0 scope:0 set:0 get:"secondaryGroceryLanguageDisplayName"];

    v87 = OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier;
    v88 = *&v85[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier];
    *&v85[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier] = v86;

    v89 = sub_1F268(1);
    v90 = v89;
    if (v89 && ([v89 isAutomatic] & 1) == 0)
    {
      v91 = *&v85[v76];
      v92 = v107;
      if (!v91)
      {
LABEL_37:
        sub_FB80(0, &qword_3AC28, PSSpecifier_ptr);
        v94 = sub_23D00().super.isa;
        v95 = sub_23C80();
        [v85 setValue:v94 forKey:v95];

        v13 = sub_1B3C0(v92);

        return v13;
      }
    }

    else
    {
      v91 = *&v85[v87];
      v92 = v107;
      if (!v91)
      {
        goto LABEL_37;
      }
    }

    v93 = v91;
    sub_23CF0();
    if (*(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v111 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v99 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
      sub_23D20();
    }

    sub_23D30();

    v92 = v111;
    goto LABEL_37;
  }

  return v110;
}

void sub_1D13C()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache] = 0;
  v2 = *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale];
  *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale] = 0;

  v3 = *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23830();
    v6 = &v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName];
    v7 = *&v1[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName + 8];
    *v6 = v5;
    v6[1] = v8;

    [v1 reloadSpecifier:v4];

    v9 = v6[1];
    *v6 = 0;
    v6[1] = 0;
  }
}

void sub_1D200()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_23830();
    v5 = &v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName];
    v6 = *&v1[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName + 8];
    *v5 = v4;
    v5[1] = v7;

    [v1 reloadSpecifier:v3];

    v8 = v5[1];
    *v5 = 0;
    v5[1] = 0;
  }
}

uint64_t sub_1D2A4()
{
  v1 = sub_7F84(&qword_3A950, &qword_26F70);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  if (!*(v0 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName + 8))
  {
    v9 = sub_1F268(1);
    if (v9)
    {
      v10 = [v9 locale];
      if (v10)
      {
        v11 = v10;
        sub_23660();

        v12 = sub_23680();
        (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
      }

      else
      {
        v12 = sub_23680();
        (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      }

      sub_1F58C(v5, v7);
      sub_23680();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v7, 1, v12) != 1)
      {
        sub_23640();
        (*(v13 + 8))(v7, v12);
        sub_23870();
        sub_23820();

        v8 = sub_23830();
        goto LABEL_11;
      }

      sub_ECC4(v7, &qword_3A950, &qword_26F70);
    }

    sub_23870();
    sub_23850();
    v8 = sub_23830();
LABEL_11:

    goto LABEL_12;
  }

  v8 = *(v0 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName);
LABEL_12:

  return v8;
}

uint64_t sub_1D614(void *a1)
{
  v3 = sub_7F84(&qword_3AC38, &qword_27250);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_7F84(&qword_3A950, &qword_26F70);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_23680();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = [a1 BOOLValue];
  v23 = 0;
  if ((v22 & 1) == 0)
  {
    v24 = sub_1F268(1);
    if (!v24)
    {
      (*(v15 + 56))(v13, 1, 1, v14);
LABEL_8:
      sub_ECC4(v13, &qword_3A950, &qword_26F70);
      v23 = &_swiftEmptyArrayStorage;
      goto LABEL_12;
    }

    v25 = [v24 locale];
    if (v25)
    {
      v26 = v25;
      sub_23660();

      (*(v15 + 56))(v11, 0, 1, v14);
    }

    else
    {
      (*(v15 + 56))(v11, 1, 1, v14);
    }

    sub_1F58C(v11, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      goto LABEL_8;
    }

    v35 = *(v15 + 32);
    v35(v21, v13, v14);
    (*(v15 + 16))(v19, v21, v14);
    v23 = sub_10E24(0, 1, 1, &_swiftEmptyArrayStorage);
    v28 = *(v23 + 2);
    v27 = *(v23 + 3);
    if (v28 >= v27 >> 1)
    {
      v23 = sub_10E24(v27 > 1, v28 + 1, 1, v23);
    }

    (*(v15 + 8))(v21, v14);
    *(v23 + 2) = v28 + 1;
    v35(&v23[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v28], v19, v14);
  }

LABEL_12:
  v29 = sub_23DA0();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  sub_23D80();
  v30 = v1;
  v31 = sub_23D70();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v30;
  v32[5] = v23;
  sub_1B5BC(0, 0, v6, &unk_277B8, v32);
}

uint64_t sub_1DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_23D80();
  v5[8] = sub_23D70();
  v7 = sub_23D50();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1DAD4, v7, v6);
}

uint64_t sub_1DAD4()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_store);
  v0[11] = v1;
  v2 = async function pointer to REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1DB90;
  v4 = v0[7];

  return REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:)(v4);
}

uint64_t sub_1DB90()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1DD30;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1DCC0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1DCC0()
{
  v1 = v0[8];
  v2 = v0[6];

  sub_1DF08();
  v3 = v0[6];
  sub_1DF08();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DD30()
{
  v21 = v0;
  v1 = v0[11];
  v2 = v0[8];

  if (qword_3A930 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v4 = sub_238C0();
  sub_E648(v4, qword_3B2F0);
  swift_errorRetain();
  v5 = sub_238B0();
  v6 = sub_23E20();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_24080();
    v16 = sub_1E7CC(v14, v15, &v20);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "TTRIGroceryAddLanguageController.setAutomaticSecondaryGroceryLocale: Failed to set overriding secondary grocery locale {error: %s}", v9, 0xCu);
    sub_80D4(v10);
  }

  else
  {
  }

  v17 = v0[6];
  sub_1DF08();
  v18 = v0[1];

  return v18();
}

void sub_1DF08()
{
  v1 = v0;
  v2 = sub_7F84(&qword_3A950, &qword_26F70);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v32 - v11;
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier];
  if (v15)
  {
    v16 = *&v1[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier];
    if (v16)
    {
      v33 = v16;
      v17 = v15;
      v18 = sub_1F268(0);
      if (v18)
      {
        v19 = v18;
        if ([v19 isAutomatic])
        {
          v20 = v33;
          if ([v1 containsSpecifier:v20])
          {
          }

          else
          {
            [v1 insertSpecifier:v20 afterSpecifier:v17];

            v23 = [v19 locale];
            if (v23)
            {
              v24 = v23;
              sub_23660();

              v25 = sub_23680();
              (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
            }

            else
            {
              v25 = sub_23680();
              (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
            }

            sub_1F58C(v6, v9);
            sub_23680();
            v29 = *(v25 - 8);
            if ((*(v29 + 48))(v9, 1, v25) == 1)
            {
              sub_ECC4(v9, &qword_3A950, &qword_26F70);
            }

            else
            {
              sub_23640();
              (*(v29 + 8))(v9, v25);
            }

            sub_23870();
            sub_23820();

            sub_1D200();
          }

          v30 = v17;
          if ([v1 containsSpecifier:v30])
          {
            [v1 removeSpecifier:v30];
          }
        }

        else
        {
          v22 = v17;
          if ([v1 containsSpecifier:v22])
          {
          }

          else
          {
            [v1 insertSpecifier:v22 afterSpecifier:v33];

            v26 = [v19 locale];
            if (v26)
            {
              v27 = v26;
              sub_23660();

              v28 = sub_23680();
              (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
            }

            else
            {
              v28 = sub_23680();
              (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
            }

            sub_1F58C(v12, v14);
            sub_23680();
            v31 = *(v28 - 8);
            if ((*(v31 + 48))(v14, 1, v28) == 1)
            {
              sub_ECC4(v14, &qword_3A950, &qword_26F70);
            }

            else
            {
              sub_23640();
              (*(v31 + 8))(v14, v28);
            }

            sub_23870();
            sub_23820();

            sub_1D200();
          }

          v30 = v33;
          if ([v1 containsSpecifier:v30])
          {
            [v1 removeSpecifier:v30];

            return;
          }
        }
      }

      else
      {

        v21 = v33;
      }
    }
  }
}

uint64_t sub_1E5DC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E6D4;

  return v7(a1);
}

uint64_t sub_1E6D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E7CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E898(v11, 0, 0, 1, a1, a2);
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
    sub_8078(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_80D4(v11);
  return v7;
}

unint64_t sub_1E898(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E9A4(a5, a6);
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
    result = sub_23FA0();
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

void *sub_1E9A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E9F0(a1, a2);
  sub_1EB20(&off_35578);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_1E9F0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1EC0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23FA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23CD0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1EC0C(v10, 0);
        result = sub_23F80();
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

uint64_t sub_1EB20(uint64_t result)
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

  result = sub_1EC80(result, v12, 1, v3);
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

void *sub_1EC0C(uint64_t a1, uint64_t a2)
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

  sub_7F84(&qword_3B360, &qword_277A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1EC80(char *result, int64_t a2, char a3, char *a4)
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
    sub_7F84(&qword_3B360, &qword_277A8);
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

uint64_t sub_1ED74(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1EE68;

  return v6(v2 + 32);
}

uint64_t sub_1EE68()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

id sub_1EF7C()
{
  ObjectType = swift_getObjectType();

  *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier] = 0;
  v2 = &v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache] = 0;
  *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale] = 0;
  v3 = [objc_allocWithZone(REMStore) init];
  *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_store] = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1F040(char a1)
{
  v2 = REMSettingsBundleGet();
  if (a1)
  {
    v7._countAndFlagsBits = 0x800000000002C7E0;
    v3._countAndFlagsBits = 0xD000000000000108;
    v3._object = 0x800000000002C6D0;
  }

  else
  {
    v7._countAndFlagsBits = 0x800000000002C620;
    v3._countAndFlagsBits = 0xD0000000000000EDLL;
    v3._object = 0x800000000002C530;
  }

  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v4.super.isa = v2;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v5 = sub_235A0(v3, v8, v4, v9, v7);

  return v5;
}

unint64_t sub_1F12C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7F84(&qword_3B380, &unk_27800);
    v3 = sub_24030();
    v4 = a1 + 32;

    while (1)
    {
      sub_17D2C(v4, v13, &qword_3B378, &unk_277F0);
      result = sub_9DAC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1F6B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1F268(char a1)
{
  v2 = v1;
  if (a1 & 1) != 0 && (*(v1 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache))
  {
    return *(v1 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale);
  }

  sub_23810();
  v4 = *(v1 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_store);
  v3 = sub_23800();

  *(v2 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache) = 1;
  v5 = *(v2 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale);
  *(v2 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale) = v3;

  return v3;
}

uint64_t sub_1F484()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1F4CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_EBD0;

  return sub_1DA3C(a1, v4, v5, v7, v6);
}

uint64_t sub_1F58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3A950, &qword_26F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F5FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17FE8;

  return sub_1E5DC(a1, v5);
}

_OWORD *sub_1F6B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1F6C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F6FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17FE8;

  return sub_1ED74(a1, v5);
}

uint64_t sub_1F7B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_EBD0;

  return sub_1ED74(a1, v5);
}

uint64_t sub_1F878()
{
  v0 = sub_238C0();
  sub_E5E4(v0, qword_3B388);
  sub_E648(v0, qword_3B388);
  v1 = [objc_opt_self() utility];
  return sub_238D0();
}

id sub_1F98C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7F84(&qword_3AC40, qword_271E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v89 = &v83 - v4;
  v5 = sub_23600();
  v6 = *(v5 - 8);
  v87 = v5;
  v88 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v91 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_235B0();
  v85 = *(v86 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v86);
  v11 = (&v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_23680();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_23C70();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v90 = sub_235C0();
  v94 = *(v90 - 8);
  v16 = *(v94 + 64);
  v17 = __chkstk_darwin(v90);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v96 = &v83 - v20;
  v21 = __chkstk_darwin(v19);
  v97 = &v83 - v22;
  __chkstk_darwin(v21);
  v24 = &v83 - v23;
  v101.receiver = v0;
  v101.super_class = ObjectType;
  objc_msgSendSuper2(&v101, "viewDidLoad");
  v25 = REMSettingsBundleGet();
  v82._countAndFlagsBits = 0x800000000002C970;
  v102._countAndFlagsBits = 0x65676175676E614CLL;
  v102._object = 0xE900000000000073;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v26.super.isa = v25;
  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  sub_235A0(v102, v107, v26, v108, v82);
  v28 = v27;

  v92 = v0;
  v29 = [v0 navigationItem];
  v83 = v28;
  v30 = sub_23C80();
  [v29 setTitle:v30];

  v98 = sub_23C90();
  v99 = v31;
  v103._countAndFlagsBits = 47;
  v103._object = 0xE100000000000000;
  sub_23CC0(v103);
  v104._countAndFlagsBits = sub_23C90();
  sub_23CC0(v104);

  v105._countAndFlagsBits = 47;
  v105._object = 0xE100000000000000;
  sub_23CC0(v105);
  v106._countAndFlagsBits = sub_23C90();
  sub_23CC0(v106);

  v32 = v99;
  v84 = v98;
  sub_23C60();
  sub_23670();
  v33 = ObjectType;
  *v11 = ObjectType;
  v34 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v35 = *(v85 + 104);
  v36 = v86;
  v35(v11, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v86);
  v93 = v24;
  sub_235D0();
  sub_23C60();
  sub_23670();
  v85 = type metadata accessor for TTRIGroceryAddLanguageController();
  *v11 = v85;
  v35(v11, v34, v36);
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v11 = v33;
  v35(v11, v34, v36);
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v11 = v33;
  v35(v11, v34, v36);
  v37 = v87;
  sub_235D0();
  v38 = v89;
  v86 = v32;
  sub_235F0();
  v39 = v88;
  if ((*(v88 + 48))(v38, 1, v37) == 1)
  {
    sub_ECC4(v38, &qword_3AC40, qword_271E0);
    v41 = v92;
    v40 = v93;
    v42 = v90;
    v44 = v95;
    v43 = v96;
  }

  else
  {
    (*(v39 + 32))(v91, v38, v37);
    v89 = sub_23C90();
    v84 = v45;
    sub_7F84(&qword_3AC48, &unk_27890);
    v46 = v94;
    v47 = *(v94 + 72);
    v48 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_27760;
    v50 = v49 + v48;
    v51 = *(v46 + 16);
    v52 = v90;
    v51(v50, v97, v90);
    v53 = v96;
    v51(v50 + v47, v96, v52);
    v54 = v50 + 2 * v47;
    v55 = v95;
    v51(v54, v95, v52);
    v56 = v92;
    v40 = v93;
    v57 = v91;
    sub_23E40();

    (*(v39 + 8))(v57, v37);
    v41 = v56;
    v42 = v52;
    v44 = v55;
    v43 = v53;
  }

  v58 = [v41 parentController];
  if (!v58)
  {

    v80 = v97;
    v61 = v94;
LABEL_15:
    v81 = *(v61 + 8);
    v81(v44, v42);
    v81(v43, v42);
    v81(v80, v42);
    return (v81)(v40, v42);
  }

  v59 = v58;
  v60 = swift_dynamicCastClass();
  v61 = v94;
  if (!v60)
  {

    v80 = v97;
    goto LABEL_15;
  }

  v62 = v60;
  v63 = v59;
  v98 = sub_2047C();
  v99 = 0;
  v100 = v62;
  v64 = objc_allocWithZone(sub_7F84(&qword_3B3C8, &qword_27888));
  v65 = sub_23A30();
  v66 = [v65 view];
  if (!v66)
  {

    goto LABEL_14;
  }

  v67 = v66;
  result = [v41 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v69 = result;
  result = [v65 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v70 = result;
  [v69 addSubview:result];

  result = [v41 view];
  if (result)
  {
    v71 = result;

    [v71 bounds];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;

    [v67 setFrame:{v73, v75, v77, v79}];
    [v67 setAutoresizingMask:18];
    [v41 addChildViewController:v65];
    [v65 didMoveToParentViewController:v41];

    v43 = v96;
LABEL_14:
    v80 = v97;
    v40 = v93;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2047C()
{
  v0 = sub_7F84(&qword_3A950, &qword_26F70);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = sub_23680();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1F268(1);
  if (!v12)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
LABEL_7:
    sub_ECC4(v6, &qword_3A950, &qword_26F70);
    sub_23870();
    return sub_23850();
  }

  v13 = [v12 locale];
  if (v13)
  {
    v14 = v13;
    sub_23660();

    (*(v8 + 56))(v4, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v4, 1, 1, v7);
  }

  sub_1F58C(v4, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_7;
  }

  (*(v8 + 32))(v11, v6, v7);
  sub_23870();
  sub_23640();
  v16 = sub_23820();

  (*(v8 + 8))(v11, v7);
  return v16;
}