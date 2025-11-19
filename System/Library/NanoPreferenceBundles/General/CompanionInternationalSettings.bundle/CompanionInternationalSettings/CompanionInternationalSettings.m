void layoutSubviewsPatchForTextLabelTruncation(void *a1)
{
  v18 = a1;
  v1 = [v18 textLabel];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = [v18 textLabel];
  v9 = [v8 superview];

  [v9 size];
  v11 = v10;
  [v9 directionalLayoutMargins];
  v13 = v12;
  [v9 directionalLayoutMargins];
  v15 = v14;
  if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
  {
    [v9 directionalLayoutMargins];
    v3 = v16;
  }

  v17 = [v18 textLabel];
  [v17 setFrame:{v3, v5, v11 - v13 - v15, v7}];
}

id COSActivePairingIsTinker()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:NRDevicePropertyIsAltAccount];
  v5 = [v4 BOOLValue];

  return v5;
}

id sub_4A9C(uint64_t a1)
{
  [*(a1 + 32) moveSpecifierAtIndexPath:*(a1 + 40) toIndexPath:*(a1 + 48) moveRow:1];
  v2 = *(a1 + 32);

  return [v2 setUpdatedAppleLanguages:0];
}

void sub_4F28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([*(a1 + 32) isEditing])
  {
    [*(a1 + 32) initializeUpdatedAppleLanguagesIfNeeded];
    if (([*(a1 + 40) row] & 0x8000000000000000) == 0)
    {
      v10 = [*(a1 + 40) row];
      v11 = [*(a1 + 32) updatedAppleLanguages];
      if (![v11 count])
      {
        sub_1A690();
      }

      v12 = [*(a1 + 32) updatedAppleLanguages];
      v13 = [v12 count];

      if (v10 < v13)
      {
        v14 = [*(a1 + 32) updatedAppleLanguages];
        [v14 removeObjectAtIndex:v10];

        v15 = *(a1 + 32);
        v16 = [v15 specifierAtIndexPath:*(a1 + 40)];
        [v15 removeSpecifier:v16 animated:1];

        v9[2](v9, 1);
      }
    }
  }

  else
  {
    v17 = +[ISInternationalViewController localizedRestartStringForCurrentDevice];
    +[UIDevice currentDevice];
    v18 = v28 = v9;
    v19 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v17, 0, [v18 sf_isiPad]);

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_52B4;
    v32[3] = &unk_28BD0;
    v22 = v28;
    v33 = v22;
    v23 = [UIAlertAction actionWithTitle:v21 style:1 handler:v32];

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_52C8;
    v29[3] = &unk_28BF8;
    v26 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v30 = v26;
    v31 = v22;
    v27 = [UIAlertAction actionWithTitle:v25 style:2 handler:v29];

    [v19 addAction:v23];
    [v19 addAction:v27];
    [*(a1 + 32) presentViewController:v19 animated:1 completion:0];

    v9 = v28;
  }
}

uint64_t sub_52C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 specifierAtIndexPath:*(a1 + 40)];
  [v2 removeSpecifier:v3 animated:1];

  [*(a1 + 32) initializeUpdatedAppleLanguagesIfNeeded];
  v4 = [*(a1 + 32) updatedAppleLanguages];
  [v4 removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];

  [*(a1 + 32) changeLanguage:0];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void sub_6A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_6F34(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_302F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_7078;
    v4[4] = &unk_28C80;
    v4[5] = v4;
    v5 = off_28C68;
    v6 = 0;
    qword_302F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_302F8)
    {
      if (!v4[0])
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
  result = objc_getClass("CloudSettingsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A714();
  }

  qword_302F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_7078(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_302F8 = result;
  return result;
}

void sub_7B8C(uint64_t a1)
{
  v4 = [NSIndexPath indexPathForRow:*(a1 + 40) inSection:*(a1 + 48)];
  v2 = [*(a1 + 32) tableView:*(*(a1 + 32) + 32) cellForRowAtIndexPath:v4];
  v3 = [v2 textLabel];
  [v3 sizeThatFits:{1.79769313e308, 1.79769313e308}];
}

void sub_8CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8D2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8D44(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
  v8 = [v7 containsObject:a1[4]];

  if (v8)
  {
    *(*(a1[5] + 8) + 24) = a3;
    v9 = [v12 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void sub_8F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8F78(uint64_t a1)
{
  v2 = [*(a1 + 32) unfilteredLanguageSections];
  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) unfilteredLanguageSections];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
        v10 = [v9 filteredLanguagesBySearchString:*(a1 + 40)];

        if ([v10 count])
        {
          v22[0] = @"kLanguageSectionKeyTitle";
          v11 = [v8 objectForKeyedSubscript:@"kLanguageSectionKeyTitle"];
          v22[1] = @"kLanguageSectionKeyLanguages";
          v23[0] = v11;
          v23[1] = v10;
          v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

          [v15 addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained isCancelled];

  if ((v14 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_91DC;
    block[3] = &unk_28CF8;
    block[4] = *(a1 + 32);
    v17 = v15;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

id sub_91DC(uint64_t a1)
{
  [*(a1 + 32) setFilteredLanguageSections:*(a1 + 40)];
  *(*(a1 + 32) + 48) = 1;
  v2 = *(*(a1 + 32) + 32);

  return [v2 reloadData];
}

uint64_t sub_9CEC(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

void sub_A9F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_AA0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleLocalesInfo:v6 error:v5];
}

void sub_D0AC(id a1)
{
  v3[0] = NSCalendarIdentifierGregorian;
  v3[1] = NSCalendarIdentifierJapanese;
  v4[0] = @"GREGORIAN_CALENDAR";
  v4[1] = @"JAPANESE_CALENDAR";
  v3[2] = NSCalendarIdentifierBuddhist;
  v4[2] = @"BUDDHIST_CALENDAR";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_30300;
  qword_30300 = v1;
}

void sub_ECC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_ECE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 regionsList];
  v4 = [v2 filteredRegionsForRegionList:v3 searchString:*(a1 + 40)];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained isCancelled];

  if ((v6 & 1) == 0)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_EDD4;
    v7[3] = &unk_28CF8;
    v7[4] = *(a1 + 32);
    v8 = v4;
    dispatch_sync(&_dispatch_main_q, v7);
  }
}

id sub_EDD4(uint64_t a1)
{
  [*(a1 + 32) setFilteredListContent:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 reloadData];
}

void sub_F0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) evaluateWithObject:a2];
  if (result)
  {
    result = [*(a1 + 40) addObject:*(a1 + 48)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

uint64_t sub_FCD0(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

uint64_t sub_FD2C(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

id sub_FFBC()
{
  v1 = &v0[OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions] = 0;
  sub_1AB58();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DateFormatSetting();
  v2 = objc_msgSendSuper2(&v10, "init");
  sub_10554();
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v9[4] = sub_124DC;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1043C;
  v9[3] = &unk_28E80;
  v5 = _Block_copy(v9);
  v6 = v2;

  v7 = [v3 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10150(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  v6 = *(v2 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);
      if (sub_1AD08())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_12640(&qword_30118, type metadata accessor for DateFormatSetting);
    sub_1AB38();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_102CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions;
  if (!*(v1 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_12640(&qword_30118, type metadata accessor for DateFormatSetting);
    sub_1AB38();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions);

  v6 = sub_11C14(v5, a1);

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1043C(uint64_t a1)
{
  v2 = sub_1A908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1A8F8();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

size_t sub_10554()
{
  v34 = sub_11A38(&qword_30108, &qword_26B18);
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v34);
  v4 = (&v30 - v3);
  v5 = objc_opt_self();
  v6 = [v5 currentDateFormat];
  v7 = sub_1ABF8();
  v9 = v8;

  v30 = v0;
  sub_10150(v7, v9);
  v10 = [v5 availableDateFormats];
  sub_122DC(0, &qword_30130, IPDateFormat_ptr);
  v11 = sub_1AC48();

  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

    v15 = &_swiftEmptyArrayStorage;
    return sub_102CC(v15);
  }

  v12 = sub_1ACA8();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v35 = &_swiftEmptyArrayStorage;
  result = sub_17E1C(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v35;
    v16 = v11;
    v31 = v11 & 0xC000000000000001;
    v32 = v12;
    v33 = v11;
    do
    {
      if (v31)
      {
        v17 = sub_1AC98();
      }

      else
      {
        v17 = *(v16 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = [v17 title];
      v20 = sub_1ABF8();
      v22 = v21;

      v23 = [v18 option];
      v24 = sub_1ABF8();
      v26 = v25;

      v27 = v4 + *(v34 + 40);
      sub_1A968();

      v4[2] = v24;
      v4[3] = v26;
      *v4 = v20;
      v4[1] = v22;
      v35 = v15;
      v29 = v15[2];
      v28 = v15[3];
      if (v29 >= v28 >> 1)
      {
        sub_17E1C(v28 > 1, v29 + 1, 1);
        v15 = v35;
      }

      ++v14;
      v15[2] = v29 + 1;
      sub_12324(v4, v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v29);
      v16 = v33;
    }

    while (v32 != v14);

    return sub_102CC(v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_10A10()
{
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting);
  sub_1AB48();

  v1 = *(v0 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  v2 = *(v0 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);

  return v1;
}

uint64_t sub_10B4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting);
  sub_1AB48();

  v4 = *(v3 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  a2[1] = v4;
}

uint64_t sub_10C04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_10150(v2, v3);
}

uint64_t sub_10C44()
{
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting);
  sub_1AB48();

  v1 = *(v0 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions);
}

uint64_t sub_10CF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting);
  sub_1AB48();

  *a2 = *(v3 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions);
}

uint64_t sub_10DA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_102CC(v4);
}

uint64_t sub_10E14()
{
  v1 = sub_11A38(&qword_30108, &qword_26B18);
  v58 = *(v1 - 8);
  v2 = *(v58 + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (v52 - v3);
  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v51._countAndFlagsBits = 0xE000000000000000;
  v61.value._object = 0x80000000000264C0;
  v60._countAndFlagsBits = 0x524F465F45544144;
  v60._object = 0xEB0000000054414DLL;
  v61.value._countAndFlagsBits = 0xD000000000000015;
  v7.super.isa = v6;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_1A918(v60, v61, v7, v62, v51);

  v8 = type metadata accessor for DateFormatSetting();
  v59[3] = v8;
  v59[0] = v0;
  v9 = v0;
  v10 = sub_1ABC8();

  if (v8)
  {
    v11 = sub_12168(v59, v8);
    v12 = *(v8 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11);
    v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_1ACF8();
    (*(v12 + 8))(v15, v8);
    sub_121AC(v59);
  }

  else
  {
    v16 = 0;
  }

  sub_122DC(0, &qword_30110, &off_285B0);
  v17 = [objc_allocWithZone(PSSpecifier) initWithName:v10 target:v16 set:"setDateFormatAndUpdateFooterTextWithDateFormat:specifier:" get:"dateFormat" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (!v17)
  {
    __break(1u);
    goto LABEL_21;
  }

  v19 = sub_1ABC8();
  v57 = v17;
  [v17 setIdentifier:v19];

  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting___observationRegistrar;
  v59[0] = v9;
  v21 = sub_12640(&qword_30118, type metadata accessor for DateFormatSetting);
  sub_1AB48();

  v22 = OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions;
  v23 = *&v9[OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions];
  if (!v23)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v24 = *(v23 + 16);
  v25 = &_swiftEmptyArrayStorage;
  if (v24)
  {
    v53 = OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions;
    v54 = v21;
    v55 = v20;
    v56 = v9;
    v59[0] = &_swiftEmptyArrayStorage;

    sub_17E7C(0, v24, 0);
    v25 = v59[0];
    v26 = *(v58 + 80);
    v52[1] = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v58 + 72);
    do
    {
      sub_11B3C(v27, v4);
      v30 = v4[2];
      v29 = v4[3];

      sub_11BAC(v4);
      v59[0] = v25;
      v32 = v25[2];
      v31 = v25[3];
      if (v32 >= v31 >> 1)
      {
        sub_17E7C((v31 > 1), v32 + 1, 1);
        v25 = v59[0];
      }

      v25[2] = v32 + 1;
      v33 = &v25[2 * v32];
      *(v33 + 4) = v30;
      *(v33 + 5) = v29;
      v27 += v28;
      --v24;
    }

    while (v24);

    v9 = v56;
    v22 = v53;
  }

  swift_getKeyPath();
  v59[0] = v9;
  sub_1AB48();

  v34 = *&v9[v22];
  if (!v34)
  {
    goto LABEL_22;
  }

  v35 = v34[2];
  v36 = &_swiftEmptyArrayStorage;
  if (v35)
  {
    v59[0] = &_swiftEmptyArrayStorage;

    sub_17E7C(0, v35, 0);
    v36 = v59[0];
    v37 = *(v58 + 80);
    v56 = v34;
    v38 = v34 + ((v37 + 32) & ~v37);
    v39 = *(v58 + 72);
    do
    {
      sub_11B3C(v38, v4);
      v41 = *v4;
      v40 = v4[1];

      sub_11BAC(v4);
      v59[0] = v36;
      v43 = v36[2];
      v42 = v36[3];
      if (v43 >= v42 >> 1)
      {
        sub_17E7C((v42 > 1), v43 + 1, 1);
        v36 = v59[0];
      }

      v36[2] = v43 + 1;
      v44 = &v36[2 * v43];
      *(v44 + 4) = v41;
      *(v44 + 5) = v40;
      v38 += v39;
      --v35;
    }

    while (v35);
  }

  sub_16E44(v25);

  isa = sub_1AC38().super.isa;
  sub_16E44(v36);
  v46 = sub_1AC38().super.isa;

  v47 = v57;
  [v57 setValues:isa titles:v46];

  v48 = sub_1AC38().super.isa;
  [v47 setProperty:v48 forKey:PSValidValuesKey];

  v49 = sub_1AC38().super.isa;
  [v47 setProperty:v49 forKey:PSValidTitlesKey];

  sub_11DF0();
  v50 = sub_1ABC8();

  [v47 setProperty:v50 forKey:PSStaticTextMessageKey];

  return v47;
}

id sub_11534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateFormatSetting();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DateFormatSetting()
{
  result = qword_300F8;
  if (!qword_300F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11650()
{
  result = sub_1AB68();
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

uint64_t sub_116FC(uint64_t a1, id *a2)
{
  result = sub_1ABD8();
  *a2 = 0;
  return result;
}

uint64_t sub_11774(uint64_t a1, id *a2)
{
  v3 = sub_1ABE8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_117F4@<X0>(void *a1@<X8>)
{
  sub_1ABF8();
  v2 = sub_1ABC8();

  *a1 = v2;
  return result;
}

uint64_t sub_11838()
{
  v1 = *v0;
  sub_1ABF8();
  v2 = sub_1AC28();

  return v2;
}

uint64_t sub_11874()
{
  v1 = *v0;
  sub_1ABF8();
  sub_1AC18();
}

Swift::Int sub_118C8()
{
  v1 = *v0;
  sub_1ABF8();
  sub_1AD28();
  sub_1AC18();
  v2 = sub_1AD38();

  return v2;
}

uint64_t sub_1193C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1ABF8();
  v6 = v5;
  if (v4 == sub_1ABF8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AD08();
  }

  return v9 & 1;
}

uint64_t sub_119C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1ABC8();

  *a2 = v5;
  return result;
}

uint64_t sub_11A0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1ABF8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_11A38(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_11A80(uint64_t a1)
{
  v2 = sub_12640(&qword_30158, type metadata accessor for Identifier);
  v3 = sub_12640(&qword_30160, type metadata accessor for Identifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_11B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30108, &qword_26B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11BAC(uint64_t a1)
{
  v2 = sub_11A38(&qword_30108, &qword_26B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30108, &qword_26B18);
  v5 = *(*(v4 - 8) + 64);
  v6 = (__chkstk_darwin)();
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_11B3C(v14, v11);
      sub_11B3C(v15, v8);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_1AD08() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_1AD08() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 40);
      v20 = sub_1A958();
      sub_11BAC(v8);
      sub_11BAC(v11);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_11BAC(v8);
    sub_11BAC(v11);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_11DF0()
{
  v0 = sub_1A948();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  __chkstk_darwin(v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() sampleTime];
  sub_1A938();
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:1];
  isa = sub_1A928().super.isa;
  v6 = [v4 stringFromDate:isa];

  v7 = sub_1ABF8();
  v37 = v8;
  v38 = v7;

  [v4 setDateStyle:2];
  v9 = sub_1A928().super.isa;
  v10 = [v4 stringFromDate:v9];

  v11 = sub_1ABF8();
  v35 = v12;
  v36 = v11;

  [v4 setDateStyle:3];
  v13 = sub_1A928().super.isa;
  v14 = [v4 stringFromDate:v13];

  v34 = sub_1ABF8();
  v16 = v15;

  [v4 setDateStyle:4];
  v17 = sub_1A928().super.isa;
  v18 = [v4 stringFromDate:v17];

  v19 = sub_1ABF8();
  v21 = v20;

  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v32._countAndFlagsBits = 0x8000000000026500;
  v41._countAndFlagsBits = 0xD00000000000001FLL;
  v41._object = 0x80000000000264E0;
  v42.value._object = 0x80000000000264C0;
  v42.value._countAndFlagsBits = 0xD000000000000015;
  v24.super.isa = v23;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_1A918(v41, v42, v24, v43, v32);

  sub_11A38(&qword_30120, &qword_26B48);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A70;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_121F8();
  v27 = v37;
  *(v25 + 32) = v38;
  *(v25 + 40) = v27;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  v28 = v35;
  v29 = v36;
  *(v25 + 64) = v26;
  *(v25 + 72) = v29;
  *(v25 + 80) = v28;
  *(v25 + 136) = &type metadata for String;
  *(v25 + 144) = v26;
  *(v25 + 112) = v34;
  *(v25 + 120) = v16;
  *(v25 + 176) = &type metadata for String;
  *(v25 + 184) = v26;
  *(v25 + 152) = v19;
  *(v25 + 160) = v21;
  v30 = sub_1AC08();

  (*(v39 + 8))(v3, v40);
  return v30;
}

void *sub_12168(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_121AC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_121F8()
{
  result = qword_30128;
  if (!qword_30128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_30128);
  }

  return result;
}

uint64_t sub_1224C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions);
  *(v1 + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormatOptions) = *(v0 + 24);
}

uint64_t sub_12290()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_122DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_12324(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30108, &qword_26B18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_12394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = sub_1ABC8();
  [v4 setDateFormat:v5];

  _CFLocaleResetCurrent();
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_1ABC8();
  CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);

  sub_11DF0();
  v8 = sub_1ABC8();

  [a3 setProperty:v8 forKey:PSStaticTextMessageKey];
}

uint64_t sub_124A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for Identifier()
{
  if (!qword_30138)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_30138);
    }
  }
}

uint64_t sub_12640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_128D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30168, &qword_26D28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v7);
  v27 = &v26 - v11;
  __chkstk_darwin(v10);
  v28 = &v26 - v12;
  result = sub_13128();
  v14 = result;
  v15 = *(result + 16);
  if (v15)
  {
    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_13398(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v9);
      v17 = [v9[2] formattedNumber];
      v18 = sub_1ABF8();
      v20 = v19;

      if (v18 == a1 && v20 == a2)
      {
        goto LABEL_11;
      }

      v22 = sub_1AD08();

      if (v22)
      {

        goto LABEL_13;
      }

      ++v16;
      result = sub_13408(v9);
      if (v15 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    __break(1u);
LABEL_11:

LABEL_13:

    v23 = v27;
    sub_13470(v9, v27);
    v24 = v23;
    v25 = v28;
    sub_13470(v24, v28);
    [v29 setNumberFormat:*(v25 + 16)];
    return sub_13408(v25);
  }

  return result;
}

uint64_t sub_12B58()
{
  v1 = sub_11A38(&qword_30168, &qword_26D28);
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1 - 8);
  v5 = (v51 - v4);
  v6 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v50._countAndFlagsBits = 0xE000000000000000;
  v56.value._object = 0x80000000000264C0;
  v55._countAndFlagsBits = 0x465F5245424D554ELL;
  v55._object = 0xED000054414D524FLL;
  v56.value._countAndFlagsBits = 0xD000000000000015;
  v9.super.isa = v8;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_1A918(v55, v56, v9, v57, v50);

  v54[3] = v6;
  v54[0] = v0;
  v10 = v0;
  v11 = sub_1ABC8();

  if (v6)
  {
    v12 = sub_12168(v54, v6);
    v13 = *(v6 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_1ACF8();
    (*(v13 + 8))(v16, v6);
    sub_121AC(v54);
  }

  else
  {
    v17 = 0;
  }

  sub_122DC(0, &qword_30170, off_285A8);
  v18 = [objc_allocWithZone(PSSpecifier) initWithName:v11 target:v17 set:"setNumberFormatAsString:" get:"numberFormatAsString" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v18)
  {
    v20 = sub_1ABC8();
    v53 = v18;
    [v18 setIdentifier:v20];

    v21 = sub_13128();
    v22 = v21[2];
    v23 = &_swiftEmptyArrayStorage;
    if (v22)
    {
      v54[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v22, 0);
      v24 = v54[0];
      v25 = *(v2 + 80);
      v51[1] = v21;
      v52 = v2;
      v26 = v21 + ((v25 + 32) & ~v25);
      v27 = v2[9];
      do
      {
        sub_13398(v26, v5);
        v28 = [v5[2] formattedNumber];
        v29 = sub_1ABF8();
        v31 = v30;

        sub_13408(v5);
        v54[0] = v24;
        v33 = v24[2];
        v32 = v24[3];
        if (v33 >= v32 >> 1)
        {
          sub_17E7C((v32 > 1), v33 + 1, 1);
          v24 = v54[0];
        }

        v24[2] = v33 + 1;
        v34 = &v24[2 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        v26 += v27;
        --v22;
      }

      while (v22);

      v2 = v52;
      v23 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v24 = &_swiftEmptyArrayStorage;
    }

    v35 = sub_13128();
    v36 = v35[2];
    if (v36)
    {
      v54[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v36, 0);
      v23 = v54[0];
      v37 = *(v2 + 80);
      v52 = v35;
      v38 = v35 + ((v37 + 32) & ~v37);
      v39 = v2[9];
      do
      {
        sub_13398(v38, v5);
        v41 = *v5;
        v40 = v5[1];

        sub_13408(v5);
        v54[0] = v23;
        v43 = v23[2];
        v42 = v23[3];
        if (v43 >= v42 >> 1)
        {
          sub_17E7C((v42 > 1), v43 + 1, 1);
          v23 = v54[0];
        }

        v23[2] = v43 + 1;
        v44 = &v23[2 * v43];
        *(v44 + 4) = v41;
        *(v44 + 5) = v40;
        v38 += v39;
        --v36;
      }

      while (v36);
    }

    sub_16E44(v24);

    isa = sub_1AC38().super.isa;
    sub_16E44(v23);
    v46 = sub_1AC38().super.isa;

    v47 = v53;
    [v53 setValues:isa titles:v46];

    v48 = sub_1AC38().super.isa;
    [v47 setProperty:v48 forKey:PSValidValuesKey];

    v49 = sub_1AC38().super.isa;
    [v47 setProperty:v49 forKey:PSValidTitlesKey];

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_13128()
{
  v23 = sub_11A38(&qword_30168, &qword_26D28);
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v23);
  v3 = (&v21 - v2);
  v4 = [objc_opt_self() availableFormats];
  sub_122DC(0, &qword_30178, IPNumberFormat_ptr);
  v5 = sub_1AC48();

  if (!(v5 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1ACA8();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = &_swiftEmptyArrayStorage;
  result = sub_17E9C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v24;
    v10 = v5;
    v22 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      if (v22)
      {
        v12 = sub_1AC98();
      }

      else
      {
        v12 = *(v10 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = [v12 formattedNumber];
      v15 = sub_1ABF8();
      v17 = v16;

      v18 = v3 + *(v23 + 40);
      sub_1A968();
      v3[1] = v17;
      v3[2] = v13;
      *v3 = v15;
      v24 = v9;
      v20 = v9[2];
      v19 = v9[3];
      if (v20 >= v19 >> 1)
      {
        sub_17E9C(v19 > 1, v20 + 1, 1);
        v9 = v24;
      }

      ++v8;
      v9[2] = v20 + 1;
      sub_13470(v3, v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v20);
      v10 = v11;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_13398(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30168, &qword_26D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13408(uint64_t a1)
{
  v2 = sub_11A38(&qword_30168, &qword_26D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13470(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30168, &qword_26D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_134E0()
{
  result = qword_30180;
  if (!qword_30180)
  {
    type metadata accessor for Settings();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_30180);
  }

  return result;
}

void sub_135F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  type metadata accessor for Settings();
  sub_134E0();
  sub_1AB78();
  sub_1AB88();

  v12 = objc_opt_self();
  v13 = [v12 preferredLocale];
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  sub_1A9C8();

  sub_1A998();
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_1A988();
  isa = sub_1A9B8().super.isa;
  v15(v11, v4);
  v17 = [(objc_class *)isa objectForKey:NSLocaleMeasurementSystem];

  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1AC68();
  swift_unknownObjectRelease();
  sub_142C4(&v21, &v22);
  swift_dynamicCast();
  if (v20[0] == a1 && v20[1] == a2)
  {

LABEL_7:

    [v12 _setPreferredMeasurementSystem:0];
    return;
  }

  v18 = sub_1AD08();

  if (v18)
  {
    goto LABEL_7;
  }

  v19 = sub_1ABC8();

  [v12 _setPreferredMeasurementSystem:v19];
}

uint64_t sub_138E8()
{
  v1 = sub_11A38(&qword_30108, &qword_26B18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v5 = (v49 - v4);
  v6 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v48._countAndFlagsBits = 0xE000000000000000;
  v53._object = 0x80000000000266C0;
  v54.value._countAndFlagsBits = 0xD000000000000015;
  v54.value._object = 0x80000000000264C0;
  v53._countAndFlagsBits = 0xD000000000000012;
  v9.super.isa = v8;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_1A918(v53, v54, v9, v55, v48);

  v52[3] = v6;
  v52[0] = v0;
  v10 = v0;
  v11 = sub_1ABC8();

  if (v6)
  {
    v12 = sub_12168(v52, v6);
    v13 = *(v6 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_1ACF8();
    (*(v13 + 8))(v16, v6);
    sub_121AC(v52);
  }

  else
  {
    v17 = 0;
  }

  sub_13E80();
  v18 = [objc_allocWithZone(PSSpecifier) initWithName:v11 target:v17 set:"setMeasurementSystem:" get:"measurementSystem" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v18)
  {
    v20 = sub_1ABC8();
    v51 = v18;
    [v18 setIdentifier:v20];

    v21 = sub_13F94();
    v22 = *(v21 + 16);
    v23 = &_swiftEmptyArrayStorage;
    if (v22)
    {
      v52[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v22, 0);
      v24 = v52[0];
      v25 = *(v2 + 80);
      v49[1] = v21;
      v50 = v2;
      v26 = v21 + ((v25 + 32) & ~v25);
      v27 = *(v2 + 72);
      do
      {
        sub_11B3C(v26, v5);
        v28 = v5[2];
        v29 = v5[3];

        sub_11BAC(v5);
        v52[0] = v24;
        v31 = v24[2];
        v30 = v24[3];
        if (v31 >= v30 >> 1)
        {
          sub_17E7C((v30 > 1), v31 + 1, 1);
          v24 = v52[0];
        }

        v24[2] = v31 + 1;
        v32 = &v24[2 * v31];
        *(v32 + 4) = v28;
        *(v32 + 5) = v29;
        v26 += v27;
        --v22;
      }

      while (v22);

      v2 = v50;
      v23 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v24 = &_swiftEmptyArrayStorage;
    }

    v33 = sub_13F94();
    v34 = *(v33 + 16);
    if (v34)
    {
      v52[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v34, 0);
      v23 = v52[0];
      v35 = *(v2 + 80);
      v50 = v33;
      v36 = v33 + ((v35 + 32) & ~v35);
      v37 = *(v2 + 72);
      do
      {
        sub_11B3C(v36, v5);
        v39 = *v5;
        v38 = v5[1];

        sub_11BAC(v5);
        v52[0] = v23;
        v41 = v23[2];
        v40 = v23[3];
        if (v41 >= v40 >> 1)
        {
          sub_17E7C((v40 > 1), v41 + 1, 1);
          v23 = v52[0];
        }

        v23[2] = v41 + 1;
        v42 = &v23[2 * v41];
        *(v42 + 4) = v39;
        *(v42 + 5) = v38;
        v36 += v37;
        --v34;
      }

      while (v34);
    }

    sub_16E44(v24);

    isa = sub_1AC38().super.isa;
    sub_16E44(v23);
    v44 = sub_1AC38().super.isa;

    v45 = v51;
    [v51 setValues:isa titles:v44];

    v46 = sub_1AC38().super.isa;
    [v45 setProperty:v46 forKey:PSValidValuesKey];

    v47 = sub_1AC38().super.isa;
    [v45 setProperty:v47 forKey:PSValidTitlesKey];

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_13E80()
{
  result = qword_30188;
  if (!qword_30188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_30188);
  }

  return result;
}

void sub_13ECC()
{
  v0 = [objc_opt_self() preferredLocale];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:NSLocaleMeasurementSystem];

    if (v2)
    {
      sub_1AC68();
      swift_unknownObjectRelease();
      sub_142C4(&v3, &v4);
      swift_dynamicCast();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_13F94()
{
  sub_11A38(&qword_30190, &unk_26D40);
  v0 = (sub_11A38(&qword_30108, &qword_26B18) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v38 = *(*v0 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26D30;
  v2 = (v39 + v1);
  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v35._object = v4;
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v40._countAndFlagsBits = 0xD000000000000012;
  v35._countAndFlagsBits = 0x8000000000026700;
  v40._object = 0x80000000000266E0;
  v43.value._object = 0x80000000000264C0;
  v43.value._countAndFlagsBits = 0xD000000000000015;
  v6.super.isa = v5;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v7 = sub_1A918(v40, v43, v6, v46, v35);
  v9 = v8;

  v10 = sub_1ABF8();
  v12 = v11;
  v13 = v39 + v1 + v0[12];
  sub_1A968();
  v2[2] = v10;
  v2[3] = v12;
  *v2 = v7;
  v2[1] = v9;
  v14 = (v39 + v1 + v38);
  v15 = [v4 bundleForClass:ObjCClassFromMetadata];
  v36._countAndFlagsBits = 0x8000000000026700;
  v41._countAndFlagsBits = 0x4D4552555341454DLL;
  v41._object = 0xEE0053555F544E45;
  v44.value._object = 0x80000000000264C0;
  v44.value._countAndFlagsBits = 0xD000000000000015;
  v16.super.isa = v15;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v17 = sub_1A918(v41, v44, v16, v47, v36);
  v19 = v18;

  v20 = sub_1ABF8();
  v22 = v21;
  v23 = v14 + v0[12];
  sub_1A968();
  v14[2] = v20;
  v14[3] = v22;
  *v14 = v17;
  v14[1] = v19;
  v24 = (v39 + v1 + 2 * v38);
  v25 = [v37._object bundleForClass:ObjCClassFromMetadata];
  v37._countAndFlagsBits = 0x8000000000026700;
  v42._object = 0xEE004B555F544E45;
  v45.value._object = 0x80000000000264C0;
  v42._countAndFlagsBits = 0x4D4552555341454DLL;
  v45.value._countAndFlagsBits = 0xD000000000000015;
  v26.super.isa = v25;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v27 = sub_1A918(v42, v45, v26, v48, v37);
  v29 = v28;

  v30 = sub_1ABF8();
  v32 = v31;
  v33 = v24 + v0[12];
  sub_1A968();
  v24[2] = v30;
  v24[3] = v32;
  *v24 = v27;
  v24[1] = v29;
  return v39;
}

_OWORD *sub_142C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1438C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  type metadata accessor for Settings();
  sub_134E0();
  sub_1AB78();
  sub_1AB88();

  v12 = objc_opt_self();
  v13 = [v12 preferredLocale];
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  sub_1A9C8();

  sub_1A998();
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_1A988();
  isa = sub_1A9B8().super.isa;
  v15(v11, v4);
  v17 = [(objc_class *)isa objectForKey:NSLocaleTemperatureUnit];

  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1AC68();
  swift_unknownObjectRelease();
  sub_142C4(&v21, &v22);
  swift_dynamicCast();
  if (v20[0] == a1 && v20[1] == a2)
  {

    v18 = 0;
  }

  else
  {
    v19 = sub_1AD08();

    if (v19)
    {
      v18 = 0;
    }

    else
    {
      v18 = sub_1ABC8();
    }
  }

  [v12 _setPreferredTemperatureUnit:v18];
}

uint64_t sub_14670()
{
  v1 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v53 = objc_opt_self();
  v3 = [v53 bundleForClass:ObjCClassFromMetadata];
  v45._countAndFlagsBits = 0xE000000000000000;
  v56._object = 0x8000000000026780;
  v61.value._object = 0x80000000000264C0;
  v56._countAndFlagsBits = 0xD000000000000010;
  v61.value._countAndFlagsBits = 0xD000000000000015;
  v4.super.isa = v3;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_1A918(v56, v61, v4, v66, v45);

  v55[3] = v1;
  v55[0] = v0;
  v5 = v0;
  v6 = sub_1ABC8();

  if (v1)
  {
    v7 = sub_12168(v55, v1);
    v8 = *(v1 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1ACF8();
    (*(v8 + 8))(v11, v1);
    sub_121AC(v55);
  }

  else
  {
    v12 = 0;
  }

  sub_14C14();
  v13 = [objc_allocWithZone(PSSpecifier) initWithName:v6 target:v12 set:"setTemperatureUnit:" get:"temperatureUnit" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v13)
  {
    v15 = sub_1ABC8();
    [v13 setIdentifier:v15];

    v50 = sub_11A38(&qword_301A0, &qword_26D60);
    inited = swift_initStackObject();
    v54 = xmmword_26D50;
    *(inited + 16) = xmmword_26D50;
    *(inited + 32) = sub_1ABF8();
    v52 = inited + 32;
    *(inited + 40) = v17;
    *(inited + 48) = sub_1ABF8();
    *(inited + 56) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v54;
    v20 = v53;
    v21 = [v53 bundleForClass:ObjCClassFromMetadata];
    v46._countAndFlagsBits = 0xE000000000000000;
    v57._countAndFlagsBits = 0x20737569736C6543;
    v57._object = 0xAD00002943B0C228;
    v62.value._object = 0x80000000000264C0;
    v62.value._countAndFlagsBits = 0xD000000000000015;
    v22.super.isa = v21;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v23 = sub_1A918(v57, v62, v22, v67, v46);
    v51 = v13;
    v25 = v24;

    *(v19 + 32) = v23;
    *(v19 + 40) = v25;
    v26 = [v20 bundleForClass:ObjCClassFromMetadata];
    v47._countAndFlagsBits = 0xE000000000000000;
    v58._object = 0x80000000000267A0;
    v63.value._object = 0x80000000000264C0;
    v58._countAndFlagsBits = 0x1000000000000010;
    v63.value._countAndFlagsBits = 0xD000000000000015;
    v27.super.isa = v26;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    v28 = sub_1A918(v58, v63, v27, v68, v47);
    v30 = v29;

    *(v19 + 48) = v28;
    *(v19 + 56) = v30;
    v31 = swift_initStackObject();
    *(v31 + 16) = v54;
    v32 = [v20 bundleForClass:ObjCClassFromMetadata];
    v48._countAndFlagsBits = 0xE000000000000000;
    v64.value._object = 0x80000000000264C0;
    v59._countAndFlagsBits = 4436162;
    v59._object = 0xA300000000000000;
    v33.super.isa = v32;
    v64.value._countAndFlagsBits = 0xD000000000000015;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    v34 = sub_1A918(v59, v64, v33, v69, v48);
    v36 = v35;

    *(v31 + 32) = v34;
    *(v31 + 40) = v36;
    v37 = [v20 bundleForClass:ObjCClassFromMetadata];
    v49._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 4632770;
    v65.value._object = 0x80000000000264C0;
    v60._object = 0xA300000000000000;
    v65.value._countAndFlagsBits = 0xD000000000000015;
    v38.super.isa = v37;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    v39 = sub_1A918(v60, v65, v38, v70, v49);
    v41 = v40;

    *(v31 + 48) = v39;
    *(v31 + 56) = v41;
    v42 = sub_16E44(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v43 = v51;
    sub_14D28(v42, v19, v31);

    swift_setDeallocating();
    v44 = *(v31 + 16);
    swift_arrayDestroy();
    return v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_14C14()
{
  result = qword_30198;
  if (!qword_30198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_30198);
  }

  return result;
}

void sub_14C60()
{
  v0 = [objc_opt_self() preferredLocale];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:NSLocaleTemperatureUnit];

    if (v2)
    {
      sub_1AC68();
      swift_unknownObjectRelease();
      sub_142C4(&v3, &v4);
      swift_dynamicCast();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_14D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    isa = sub_1AC38().super.isa;
    sub_16E44(a2);
    v7.super.isa = sub_1AC38().super.isa;

    sub_16E44(a3);
    v8.super.isa = sub_1AC38().super.isa;

    [v3 setValues:isa titles:v7.super.isa shortTitles:v8.super.isa];
  }

  else
  {
    v7.super.isa = sub_1AC38().super.isa;
    sub_16E44(a2);
    v8.super.isa = sub_1AC38().super.isa;

    [v3 setValues:v7.super.isa titles:v8.super.isa];
  }

  v9 = sub_1AC38().super.isa;
  [v3 setProperty:v9 forKey:PSValidValuesKey];

  v10 = sub_1AC38().super.isa;
  [v3 setProperty:v10 forKey:PSValidTitlesKey];
}

uint64_t sub_14EB8()
{
  v0 = sub_1A9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_11A38(&qword_301C0, &unk_26D80);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_11A38(&qword_301A8, &qword_26D68);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_1AA78();
  sub_1AA18();
  v18 = *(v5 + 56);
  sub_15B24(v17, v8);
  sub_15B24(v15, &v8[v18]);
  v19 = *(v1 + 48);
  if (v19(v8, 1, v0) != 1)
  {
    sub_15B24(v8, v26);
    if (v19(&v8[v18], 1, v0) != 1)
    {
      v21 = &v8[v18];
      v22 = v25;
      (*(v1 + 32))(v25, v21, v0);
      sub_15BF4();
      v20 = sub_1ABB8();
      v23 = *(v1 + 8);
      v23(v22, v0);
      sub_15B94(v15, &qword_301A8, &qword_26D68);
      sub_15B94(v17, &qword_301A8, &qword_26D68);
      v23(v26, v0);
      sub_15B94(v8, &qword_301A8, &qword_26D68);
      return v20 & 1;
    }

    sub_15B94(v15, &qword_301A8, &qword_26D68);
    sub_15B94(v17, &qword_301A8, &qword_26D68);
    (*(v1 + 8))(v26, v0);
    goto LABEL_6;
  }

  sub_15B94(v15, &qword_301A8, &qword_26D68);
  sub_15B94(v17, &qword_301A8, &qword_26D68);
  if (v19(&v8[v18], 1, v0) != 1)
  {
LABEL_6:
    sub_15B94(v8, &qword_301C0, &unk_26D80);
    v20 = 0;
    return v20 & 1;
  }

  sub_15B94(v8, &qword_301A8, &qword_26D68);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_15280(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_1AAC8();
  v7 = *(*(v40 - 8) + 64);
  v8 = __chkstk_darwin(v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = &_swiftEmptyArrayStorage;
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_17EDC(0, v24[2] + 1, 1);
          v24 = v41;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_17EDC(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        v24[2] = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_155C0(uint64_t a1)
{
  v2 = sub_11A38(&qword_301A8, &qword_26D68);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v44[2] = v44 - v4;
  v5 = sub_1AAC8();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  v7 = __chkstk_darwin(v5);
  v46 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = v44 - v9;
  v10 = sub_11A38(&qword_301B0, &qword_26D70);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v44[1] = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v44 - v14;
  v16 = sub_11A38(&qword_301B8, &qword_26D78);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v44[0] = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v44 - v20;
  v22 = sub_1AA48();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1AA08();
  sub_1AA28();
  v27 = sub_1A9D8();
  v28 = (*(*(v27 - 8) + 48))(v21, 1, v27);
  sub_15B94(v21, &qword_301B8, &qword_26D78);
  if (v28 != 1)
  {
    goto LABEL_5;
  }

  sub_1AA38();
  v29 = sub_1A9E8();
  v30 = (*(*(v29 - 8) + 48))(v15, 1, v29);
  sub_15B94(v15, &qword_301B0, &qword_26D70);
  if (v30 != 1)
  {
    goto LABEL_5;
  }

  v31 = sub_1AA88();
  __chkstk_darwin(v31);
  v44[-2] = v26;
  v33 = *(sub_15280(sub_15B04, &v44[-4], v32) + 16);

  if (v33 >= 2)
  {
    v34 = objc_opt_self();
    v35 = sub_1ABC8();
    v36 = [v34 addLikelySubtagsForLocaleIdentifier:v35];

    sub_1ABF8();
    v37 = v45;
    sub_1AA58();
    sub_1AA78();
    sub_1AAB8();
    sub_1AAA8();
    v38 = v46;
    sub_1AA68();
    sub_1AA98();
    v39 = sub_1ABC8();

    v40 = [v34 canonicalLocaleIdentifierFromString:v39];

    a1 = sub_1ABF8();
    v41 = v48;
    v42 = *(v47 + 8);
    v42(v38, v48);
    v42(v37, v41);
  }

  else
  {
LABEL_5:
  }

  (*(v23 + 8))(v26, v22);
  return a1;
}

uint64_t sub_15B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_301A8, &qword_26D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15B94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_11A38(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_15BF4()
{
  result = qword_301C8;
  if (!qword_301C8)
  {
    sub_1A9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_301C8);
  }

  return result;
}

uint64_t sub_15C4C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1AD08() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Option();
  v7 = *(v6 + 36);
  v8 = *(a4 + 8);
  if ((sub_1ABB8() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v6 + 40);

  return sub_1A958();
}

uint64_t sub_15D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1A978();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_15DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Settings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1A978();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_15EC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1A978();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (a1 + v10 + 16) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_16170(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1A978();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v24 = (a1 + v12 + 16) & ~v12;
    if (v9 == v16)
    {
      v25 = *(v28 + 56);

      v25(v24, a2, v9, v7);
    }

    else
    {
      v26 = *(v11 + 56);
      v27 = (v24 + v13 + v14) & ~v14;

      v26(v27, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

unint64_t sub_164C8()
{
  result = qword_30278;
  if (!qword_30278)
  {
    sub_1A978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_30278);
  }

  return result;
}

uint64_t sub_1652C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Settings();
  result = sub_1AB78();
  *a1 = result;
  return result;
}

void sub_16650(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = sub_1AAE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v44 - v9;
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  type metadata accessor for Settings();
  sub_134E0();
  sub_1AB78();
  sub_1AB88();

  v13 = objc_opt_self();
  v14 = [v13 preferredLocale];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  sub_1A9C8();

  sub_1A998();
  v16 = *(v4 + 8);
  v16(v12, v3);
  v17 = sub_1ABC8();

  v18 = [v13 componentsFromLocaleIdentifier:v17];

  v19 = sub_1ABA8();
  v47 = v19;
  v20 = [v13 preferredLocale];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v20;
  v22 = objc_opt_self();
  sub_1A9C8();

  sub_1A998();
  v16(v10, v3);
  v23 = sub_1ABC8();

  v24 = [v22 defaultNumberingSystemForLocaleID:v23];

  v25 = sub_1ABF8();
  v27 = v26;

  v28 = v45;
  if (v25 == v45 && v27 == a2)
  {

LABEL_7:
    v30 = v3;

    sub_19AE0(0x737265626D756ELL, 0xE700000000000000);

    v31 = v47;
    goto LABEL_9;
  }

  v29 = sub_1AD08();

  if (v29)
  {
    goto LABEL_7;
  }

  v32 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v32;
  sub_1A000(v28, a2, 0x737265626D756ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v31 = v46;
  v47 = v46;
  v30 = v3;
LABEL_9:
  v34 = [v13 preferredLocale];
  if (!v34)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = v44;
  sub_1A9C8();

  sub_1A998();
  v16(v36, v30);
  v37 = sub_1ABC8();

  v38 = [v13 componentsFromLocaleIdentifier:v37];

  v39 = sub_1ABA8();
  LOBYTE(v38) = sub_19674(v31, v39);

  if (v38)
  {
  }

  else
  {
    sub_18E70(v31);

    isa = sub_1AB98().super.isa;

    v41 = [v13 canonicalLocaleIdentifierFromComponents:isa];

    if (!v41)
    {
      sub_1ABF8();
      v41 = sub_1ABC8();
    }

    [v13 setLocaleOnly:v41];

    _CFLocaleResetCurrent();
    v42 = CFNotificationCenterGetDarwinNotifyCenter();
    v43 = sub_1ABC8();
    CFNotificationCenterPostNotification(v42, v43, 0, 0, 1u);
  }
}

id sub_16BA4()
{
  v0 = sub_1AAE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = objc_opt_self();
  result = [v8 preferredLocale];
  if (result)
  {
    v10 = result;
    sub_1A9C8();

    sub_1A998();
    v11 = *(v1 + 8);
    v11(v7, v0);
    v12 = sub_1ABC8();

    v13 = [v8 componentsFromLocaleIdentifier:v12];

    v14 = sub_1ABA8();
    if (*(v14 + 16))
    {
      v15 = sub_19818(0x737265626D756ELL, 0xE700000000000000);
      if (v16)
      {
        v17 = (*(v14 + 56) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];

        return v18;
      }
    }

    result = [v8 preferredLocale];
    if (result)
    {
      v20 = result;
      v21 = objc_opt_self();
      sub_1A9C8();

      sub_1A998();
      v11(v5, v0);
      v22 = sub_1ABC8();

      v23 = [v21 defaultNumberingSystemForLocaleID:v22];

      v18 = sub_1ABF8();
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_16E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_17E5C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_17E5C((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_142C4(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_16F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_17E5C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_17E5C((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_142C4(&v9, &v2[4 * v7 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1729C(uint64_t a1)
{
  v34 = a1;
  v1 = sub_1AAE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v33 = sub_1AB28();
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v33);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  type metadata accessor for Settings();
  sub_18E28(&qword_30180, type metadata accessor for Settings);
  sub_1AB78();
  sub_1AB88();

  v16 = [objc_opt_self() preferredLocale];
  if (v16)
  {
    v17 = v16;
    sub_1A9C8();

    sub_1A998();
    v18 = *(v2 + 8);
    v18(v6, v1);
    sub_1A988();
    sub_1AAD8();
    v18(v8, v1);
    v19 = sub_1AAF8();
    v20 = *(v9 + 8);
    v21 = v33;
    v20(v15, v33);
    v22 = v34;
    if (v19 == v34)
    {
      v23 = 0;
    }

    else
    {
      sub_1AB18();
      isa = sub_1AB08().super.isa;
      v20(v13, v21);
      v25 = [(objc_class *)isa calendarIdentifier];

      sub_11A38(&qword_302B0, &qword_26EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26E80;
      *(inited + 32) = v25;
      v27 = inited + 32;
      *(inited + 40) = v22;
      v23 = sub_18D3C(inited);
      swift_setDeallocating();
      sub_15B94(v27, &qword_302B8, &qword_26EB8);
    }

    v28 = [objc_opt_self() standardUserDefaults];
    if (v23)
    {
      type metadata accessor for Identifier();
      sub_18E28(&qword_30158, type metadata accessor for Identifier);
      v29.super.isa = sub_1AB98().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = sub_1ABC8();
    [v28 setObject:v29.super.isa forKey:v30 inDomain:NSGlobalDomain];
    swift_unknownObjectRelease();

    v31 = CFNotificationCenterGetDarwinNotifyCenter();
    v32 = sub_1ABC8();
    CFNotificationCenterPostNotification(v31, v32, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_17848()
{
  v1 = sub_11A38(&qword_30280, &qword_26E90);
  v49 = *(v1 - 8);
  v2 = *(v49 + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v46 - v3);
  v5 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v45._countAndFlagsBits = 0xE000000000000000;
  v52.value._object = 0x80000000000264C0;
  v51._countAndFlagsBits = 0x45575F5453524946;
  v51._object = 0xED00005941444B45;
  v52.value._countAndFlagsBits = 0xD000000000000015;
  v8.super.isa = v7;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_1A918(v51, v52, v8, v53, v45);

  v50[3] = v5;
  v50[0] = v0;
  v9 = v0;
  v10 = sub_1ABC8();

  if (v5)
  {
    v11 = sub_12168(v50, v5);
    v12 = *(v5 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11);
    v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_1ACF8();
    (*(v12 + 8))(v15, v5);
    sub_121AC(v50);
  }

  else
  {
    v16 = 0;
  }

  sub_122DC(0, &qword_30288, off_285A0);
  v17 = [objc_allocWithZone(PSSpecifier) initWithName:v10 target:v16 set:"setFirstWeekdayAsNSNumber:" get:"firstWeekdayAsNSNumber" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v17)
  {
    v19 = sub_1ABC8();
    v48 = v17;
    [v17 setIdentifier:v19];

    v20 = sub_187EC();
    v21 = v20[2];
    v22 = &_swiftEmptyArrayStorage;
    if (v21)
    {
      v50[0] = &_swiftEmptyArrayStorage;
      sub_17EFC(0, v21, 0);
      v23 = v50[0];
      v24 = *(v49 + 80);
      v47 = v20;
      v25 = v20 + ((v24 + 32) & ~v24);
      v26 = *(v49 + 72);
      do
      {
        sub_18C58(v25, v4);
        v27 = v4[2];
        sub_15B94(v4, &qword_30280, &qword_26E90);
        v50[0] = v23;
        v29 = v23[2];
        v28 = v23[3];
        if (v29 >= v28 >> 1)
        {
          sub_17EFC((v28 > 1), v29 + 1, 1);
          v23 = v50[0];
        }

        v23[2] = v29 + 1;
        v23[v29 + 4] = v27;
        v25 += v26;
        --v21;
      }

      while (v21);

      v22 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v23 = &_swiftEmptyArrayStorage;
    }

    v30 = sub_187EC();
    v31 = v30[2];
    if (v31)
    {
      v50[0] = &_swiftEmptyArrayStorage;
      sub_17E7C(0, v31, 0);
      v22 = v50[0];
      v32 = *(v49 + 80);
      v47 = v30;
      v33 = v30 + ((v32 + 32) & ~v32);
      v34 = *(v49 + 72);
      do
      {
        sub_18C58(v33, v4);
        v35 = *v4;
        v36 = v4[1];

        sub_15B94(v4, &qword_30280, &qword_26E90);
        v50[0] = v22;
        v38 = v22[2];
        v37 = v22[3];
        if (v38 >= v37 >> 1)
        {
          sub_17E7C((v37 > 1), v38 + 1, 1);
          v22 = v50[0];
        }

        v22[2] = v38 + 1;
        v39 = &v22[2 * v38];
        *(v39 + 4) = v35;
        *(v39 + 5) = v36;
        v33 += v34;
        --v31;
      }

      while (v31);
    }

    sub_16F44(v23);

    isa = sub_1AC38().super.isa;
    sub_16E44(v22);
    v41 = sub_1AC38().super.isa;

    v42 = v48;
    [v48 setValues:isa titles:v41];

    v43 = sub_1AC38().super.isa;
    [v42 setProperty:v43 forKey:PSValidValuesKey];

    v44 = sub_1AC38().super.isa;
    [v42 setProperty:v44 forKey:PSValidTitlesKey];

    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_17E1C(size_t a1, int64_t a2, char a3)
{
  result = sub_18138(a1, a2, a3, *v3, &qword_30190, &unk_26D40, &qword_30108, &qword_26B18);
  *v3 = result;
  return result;
}

char *sub_17E5C(char *a1, int64_t a2, char a3)
{
  result = sub_17F1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_17E7C(char *a1, int64_t a2, char a3)
{
  result = sub_1802C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_17E9C(size_t a1, int64_t a2, char a3)
{
  result = sub_18138(a1, a2, a3, *v3, &qword_302D0, &qword_26ED0, &qword_30168, &qword_26D28);
  *v3 = result;
  return result;
}

size_t sub_17EDC(size_t a1, int64_t a2, char a3)
{
  result = sub_18320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_17EFC(char *a1, int64_t a2, char a3)
{
  result = sub_184F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_17F1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_11A38(&qword_30290, &qword_26E98);
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

char *sub_1802C(char *result, int64_t a2, char a3, char *a4)
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
    sub_11A38(&qword_301A0, &qword_26D60);
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

size_t sub_18138(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_11A38(a5, a6);
  v16 = *(sub_11A38(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_11A38(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_18320(size_t result, int64_t a2, char a3, void *a4)
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

  sub_11A38(&qword_302C8, &qword_26EC8);
  v10 = *(sub_1AAC8() - 8);
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
  v15 = *(sub_1AAC8() - 8);
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

char *sub_184F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_11A38(&qword_30298, &qword_26EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_185FC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_11A38(&qword_302A0, &qword_26EA8);
  v10 = *(sub_11A38(&qword_30280, &qword_26E90) - 8);
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
  v15 = *(sub_11A38(&qword_30280, &qword_26E90) - 8);
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

void *sub_187EC()
{
  v0 = sub_11A38(&qword_30280, &qword_26E90);
  v42 = *(v0 - 8);
  v43 = v0;
  v1 = *(v42 + 64);
  __chkstk_darwin(v0);
  v3 = (&v38 - v2);
  v48 = sub_1AAE8();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v48);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v38 - v8;
  v45 = sub_1AB28();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v45);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(NSDateFormatter) init];
  [v12 setFormattingContext:2];
  result = [v12 standaloneWeekdaySymbols];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v14 = result;
  v38 = v12;
  v15 = sub_1AC48();

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v40 = (v9 + 8);
    v41 = (v4 + 8);
    v39 = v15 + 32;
    v18 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v49 = v18;
      result = [objc_opt_self() preferredLocale];
      if (!result)
      {
        break;
      }

      v19 = result;
      v20 = v47;
      sub_1A9C8();

      sub_1A998();
      v21 = *v41;
      v22 = v20;
      v23 = v48;
      (*v41)(v22, v48);
      v24 = v46;
      sub_1A988();
      v25 = v44;
      sub_1AAD8();
      v21(v24, v23);
      v26 = sub_1AAF8();
      result = (*v40)(v25, v45);
      v27 = v26 + v17;
      if (__OFADD__(v26, v17))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

      v28 = __OFSUB__(v27, 1);
      v29 = v27 - 1;
      if (v28)
      {
        goto LABEL_18;
      }

      v30 = v29 % v16;
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v30 >= *(v15 + 16))
      {
        goto LABEL_20;
      }

      v31 = v30 + 1;
      v32 = (v39 + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v43 + 40);

      sub_1A968();
      v3[1] = v33;
      v3[2] = v31;
      *v3 = v34;
      v18 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_185FC(0, v18[2] + 1, 1, v18);
      }

      v37 = v18[2];
      v36 = v18[3];
      if (v37 >= v36 >> 1)
      {
        v18 = sub_185FC(v36 > 1, v37 + 1, 1, v18);
      }

      ++v17;
      v18[2] = v37 + 1;
      sub_18CCC(v3, v18 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37);
      if (v16 == v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v18 = &_swiftEmptyArrayStorage;
LABEL_16:

  return v18;
}

uint64_t sub_18C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30280, &qword_26E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_11A38(&qword_30280, &qword_26E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_11A38(&qword_302C0, &qword_26EC0);
    v3 = sub_1ACD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_19890(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_18E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18E70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_11A38(&unk_302E0, &qword_26EE0);
    v2 = sub_1ACD8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_142C4(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_142C4(v33, v34);
    result = sub_1AC88(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
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
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_142C4(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_191F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings();
  sub_134E0();
  sub_1AB78();
  sub_1AB88();

  v9 = objc_opt_self();
  sub_1A9F8();
  sub_1A998();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v11 = sub_1ABC8();

  v33 = v9;
  v12 = [v9 componentsFromLocaleIdentifier:v11];

  v13 = sub_1ABA8();
  v35 = v13;
  v14 = objc_opt_self();
  sub_1A9F8();
  sub_1A998();
  v10(v8, v4);
  v15 = sub_1ABC8();

  v16 = [v14 defaultCalendarForLocaleID:v15];

  v17 = sub_1ABF8();
  v19 = v18;

  if (v17 == a1 && v19 == a2)
  {

LABEL_5:

    sub_19AE0(0x7261646E656C6163, 0xE800000000000000);

    v21 = v35;
    goto LABEL_7;
  }

  v20 = sub_1AD08();

  if (v20)
  {
    goto LABEL_5;
  }

  v22 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v22;
  sub_1A000(a1, a2, 0x7261646E656C6163, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v21 = v34;
  v35 = v34;
LABEL_7:
  sub_1A9F8();
  sub_1A998();
  v10(v8, v4);
  v24 = sub_1ABC8();

  v25 = v33;
  v26 = [v33 componentsFromLocaleIdentifier:v24];

  v27 = sub_1ABA8();
  LOBYTE(v26) = sub_19674(v21, v27);

  if (v26)
  {
  }

  else
  {
    sub_18E70(v21);

    isa = sub_1AB98().super.isa;

    v29 = [v25 canonicalLocaleIdentifierFromComponents:isa];

    if (!v29)
    {
      sub_1ABF8();
      v29 = sub_1ABC8();
    }

    [v25 setLocaleOnly:v29];

    _CFLocaleResetCurrent();
    v30 = CFNotificationCenterGetDarwinNotifyCenter();
    v31 = sub_1ABC8();
    CFNotificationCenterPostNotification(v30, v31, 0, 0, 1u);
  }
}

uint64_t sub_19674(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_19818(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1AD08();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19818(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1AD28();
  sub_1AC18();
  v6 = sub_1AD38();

  return sub_19924(a1, a2, v6);
}

unint64_t sub_19890(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1ABF8();
  sub_1AD28();
  sub_1AC18();
  v4 = sub_1AD38();

  return sub_199DC(a1, v4);
}

unint64_t sub_19924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AD08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_199DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1ABF8();
      v9 = v8;
      if (v7 == sub_1ABF8() && v9 == v10)
      {
        break;
      }

      v12 = sub_1AD08();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_19AE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_19818(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A188();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_19E50(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_19B90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_11A38(&qword_302D8, &qword_26ED8);
  v40 = a2;
  result = sub_1ACC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1AD28();
      sub_1AC18();
      result = sub_1AD38();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_19E50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AC78() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1AD28();

      sub_1AC18();
      v13 = sub_1AD38();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_19818(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_19B90(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_19818(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1AD18();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A188();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_1A188()
{
  v1 = v0;
  sub_11A38(&qword_302D8, &qword_26ED8);
  v2 = *v0;
  v3 = sub_1ACB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1A300()
{
  v0 = sub_1AAE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_1A9F8();
  sub_1A998();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v7 = sub_1ABC8();

  v8 = [v5 componentsFromLocaleIdentifier:v7];

  v9 = sub_1ABA8();
  if (*(v9 + 16) && (v10 = sub_19818(0x7261646E656C6163, 0xE800000000000000), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {

    v15 = objc_opt_self();
    sub_1A9F8();
    sub_1A998();
    v6(v4, v0);
    v16 = sub_1ABC8();

    v17 = [v15 defaultCalendarForLocaleID:v16];

    v13 = sub_1ABF8();
  }

  return v13;
}

void sub_1A7C0()
{
  v0 = 136315138;
  v1 = "[COSInternationalController localizedDeviceDisplayLanguageNameFromPreferredLanguages:]";
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: deviceDisplayLanguage is nil.", &v0, 0xCu);
}

void sub_1A848()
{
  v0 = 136315138;
  v1 = "[COSInternationalController localizedRegionNameForLocale:]";
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: regionCode is nil.", &v0, 0xCu);
}