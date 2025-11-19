unint64_t sub_100078FB0()
{
  result = qword_100769648;
  if (!qword_100769648)
  {
    sub_10005D20C(&qword_100769640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769648);
  }

  return result;
}

id sub_100079020(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass;
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 horizontalSizeClass];

  a2[v5] = v7 == 1;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_timeZoneOverrideTipController] = 0;
  v8 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_lastSetConfiguration;
  v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_traitChangeCancellable] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___editModeDoneButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationDoneButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationCommitButtonWithCustomTitle] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___cancelModalPresentationBarButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton] = 0;
  v10 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_collaborationBarButton];
  *v10 = 0;
  v10[1] = 0;
  v11 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___shareListBarButton];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___shareTemplateBarButton];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___autoCategorizeBarButton];
  *v14 = 0;
  v14[1] = 0;
  v15 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton];
  *v15 = 0;
  v15[1] = 0;
  v16 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton];
  *v16 = 0;
  v16[1] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___dueDateBarButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___locationBarButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___flagBarButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___photoBarButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___hashtagBarButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___assigneeBarButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___addSectionBarButton] = 0;
  v17 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton];
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  v18 = &a2[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
  *v18 = a1;
  v18[1] = &off_100713C80;
  v20.receiver = a2;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t sub_100079270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v20 = type metadata accessor for TTRUserDefaults();
  v21 = &protocol witness table for TTRUserDefaults;
  *&v19 = a2;
  v18[3] = v10;
  v18[4] = &off_10072D900;
  v18[0] = a5;
  type metadata accessor for TTRIAppStoreProvider();
  v11 = swift_allocObject();
  v12 = sub_10000AE84(v18, v10);
  __chkstk_darwin(v12);
  v14 = (v18 - v13);
  (*(v15 + 16))(v18 - v13);
  v16 = *v14;
  *(v11 + 120) = v10;
  *(v11 + 128) = &off_10072D900;
  *(v11 + 96) = v16;
  *(v11 + 16) = 0;
  *(v11 + 72) = 0;
  *(v11 + 136) = xmmword_10062E070;
  *(v11 + 24) = a1;
  sub_100005FD0(&v19, v11 + 32);
  *(v11 + 80) = a3;
  *(v11 + 88) = a4;
  sub_100004758(v18);
  return v11;
}

char *sub_1000793F8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v16 = type metadata accessor for TTRIRemindersListNavigationBarRouter();
  v17 = &off_100729B18;
  *&v15 = a2;
  *(a4 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 7) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 15) = 0;
  v8 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_lastSetConfiguration;
  v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_lastSetReminderEditingItemsInfoSource;
  v11 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource(0);
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  a4[OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_templatesItemVisibilityOverride] = 2;
  v12 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCapability;
  type metadata accessor for TTRUserDefaults();
  static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for TTRTimeZoneOverrideMenuPresenterCapability();
  swift_allocObject();
  *&a4[v12] = TTRTimeZoneOverrideMenuPresenterCapability.init(userDefaults:defaultTimeZone:currentTimeZone:)();
  v13 = &a4[OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&a4[OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityNameTask] = 0;
  *&a4[OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideChangedObserver] = 0;
  a4[OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions] = 0;
  *(a4 + 8) = a1;
  *(a4 + 9) = &off_10072F440;
  sub_100005FD0(&v15, (a4 + 80));
  *(a4 + 16) = a3;
  *(a4 + 17) = &protocol witness table for TTRLocationQuickPicksInteractor;
  return a4;
}

uint64_t sub_10007961C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100079664(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for TTRIRemindersListAssembly.CommonComponents(id *a1)
{
  swift_unknownObjectRelease();

  sub_100004758((a1 + 4));
  sub_100004758((a1 + 9));
  sub_100004758((a1 + 14));
  swift_unknownObjectRelease();
  sub_100004758((a1 + 21));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004758((a1 + 29));
  swift_unknownObjectRelease();

  sub_100004758((a1 + 39));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004758((a1 + 48));
  return sub_100004758((a1 + 53));
}

uint64_t initializeWithCopy for TTRIRemindersListAssembly.CommonComponents(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  v6 = v5;
  v7 = **(v5 - 8);
  v8 = v4;
  swift_unknownObjectRetain();

  v7(a1 + 32, a2 + 32, v6);
  v9 = *(a2 + 96);
  *(a1 + 96) = v9;
  (**(v9 - 8))(a1 + 72, a2 + 72);
  v10 = *(a2 + 136);
  *(a1 + 136) = v10;
  (**(v10 - 8))(a1 + 112, a2 + 112);
  *(a1 + 152) = *(a2 + 152);
  v11 = *(a2 + 192);
  *(a1 + 192) = v11;
  v12 = **(v11 - 8);
  swift_unknownObjectRetain();
  v12(a1 + 168, a2 + 168, v11);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  v13 = *(a2 + 256);
  *(a1 + 256) = v13;
  v14 = **(v13 - 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14(a1 + 232, a2 + 232, v13);
  v15 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v15;
  *(a1 + 280) = *(a2 + 280);
  v16 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v16;
  v17 = *(a2 + 304);
  *(a1 + 304) = v17;
  v18 = *(a2 + 336);
  *(a1 + 336) = v18;
  v19 = v18;
  v20 = **(v18 - 8);
  swift_unknownObjectRetain();

  v21 = v17;
  v20(a1 + 312, a2 + 312, v19);
  v22 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v22;
  v24 = *(a2 + 408);
  v23 = *(a2 + 416);
  *(a1 + 408) = v24;
  *(a1 + 416) = v23;
  v25 = **(v24 - 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v25(a1 + 384, a2 + 384, v24);
  v26 = *(a2 + 448);
  *(a1 + 448) = v26;
  (**(v26 - 8))(a1 + 424, a2 + 424);
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListAssembly.CommonComponents(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = v7;
  *(a1 + 24) = *(a2 + 24);

  sub_100079CB0((a1 + 32), (a2 + 32));
  sub_100079CB0((a1 + 72), (a2 + 72));
  sub_100079CB0((a1 + 112), (a2 + 112));
  v8 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 160) = v8;
  sub_100079ECC((a1 + 168), (a2 + 168));
  v9 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 208) = v9;
  v10 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 224) = v10;
  sub_100079ECC((a1 + 232), (a2 + 232));
  v11 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 272) = v11;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  v12 = *(a2 + 304);
  v13 = *(a1 + 304);
  *(a1 + 304) = v12;
  v14 = v12;

  sub_100079CB0((a1 + 312), (a2 + 312));
  v15 = *(a2 + 360);
  *(a1 + 352) = *(a2 + 352);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 360) = v15;
  v16 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 376) = v16;
  sub_100079CB0((a1 + 384), (a2 + 384));
  sub_100079CB0((a1 + 424), (a2 + 424));
  return a1;
}

uint64_t *sub_100079CB0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t *sub_100079ECC(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t assignWithTake for TTRIRemindersListAssembly.CommonComponents(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 280;
  v5 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);

  sub_100004758(a1 + 32);
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  sub_100004758(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  sub_100004758(a1 + 112);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  v8 = *(a2 + 152);
  v9 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v8;
  swift_unknownObjectRelease();
  *(a1 + 160) = v9;
  sub_100004758(a1 + 168);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  swift_unknownObjectRelease();
  v10 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  swift_unknownObjectRelease();
  *(a1 + 224) = v10;
  sub_100004758(a1 + 232);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  v11 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  swift_unknownObjectRelease();
  *(a1 + 272) = v11;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  v12 = *(a1 + 304);
  *(a1 + 304) = *(a2 + 304);

  sub_100004758(a1 + 312);
  v13 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v13;
  v14 = *(a2 + 352);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = v14;
  swift_unknownObjectRelease();
  v15 = *(a2 + 376);
  *(a1 + 360) = *(v4 + 80);
  swift_unknownObjectRelease();
  *(a1 + 376) = v15;
  sub_100004758(a1 + 384);
  v16 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v16;
  *(a1 + 416) = *(a2 + 416);
  sub_100004758(a1 + 424);
  v17 = *(a2 + 440);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 440) = v17;
  *(a1 + 456) = *(a2 + 456);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListAssembly.CommonComponents(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListAssembly.CommonComponents(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void **sub_10007A3E4(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
    v9 = v8[5];
    v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    if (v12(a2 + v9, 1, v10))
    {
      v14 = sub_100058000(&unk_10076BB50);
      memcpy(v7 + v9, a2 + v9, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(v7 + v9, a2 + v9, v10);
      (*(v11 + 56))(v7 + v9, 0, 1, v10);
    }

    *(v7 + v8[6]) = *(a2 + v8[6]);
    *(v7 + v8[7]) = *(a2 + v8[7]);
    *(v7 + v8[8]) = *(a2 + v8[8]);
    v15 = *(a3 + 20);
    v16 = v7 + v15;
    v17 = a2 + v15;
    v18 = *(a2 + v15);
    *v16 = v18;
    *(v16 + 8) = *(a2 + v15 + 8);
    *(v16 + 3) = *(a2 + v15 + 24);
    v19 = *(a2 + v15 + 56);
    *(v16 + 56) = v19;
    v20 = v19;
    v21 = **(v19 - 8);

    swift_unknownObjectRetain();
    v22 = v18;
    swift_unknownObjectRetain();

    v21(v16 + 32, v17 + 32, v20);
    v23 = *(v17 + 6);
    *(v16 + 6) = v23;
    (**(v23 - 8))((v16 + 72), (v17 + 72));
    v24 = *(v17 + 136);
    *(v16 + 136) = v24;
    (**(v24 - 8))((v16 + 112), (v17 + 112));
    *(v16 + 152) = *(v17 + 152);
    v25 = *(v17 + 24);
    *(v16 + 24) = v25;
    v26 = **(v25 - 8);
    swift_unknownObjectRetain();
    v26(v16 + 168, v17 + 168, v25);
    *(v16 + 200) = *(v17 + 200);
    *(v16 + 216) = *(v17 + 216);
    v27 = *(v17 + 32);
    *(v16 + 32) = v27;
    v28 = **(v27 - 8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v28(v16 + 232, v17 + 232, v27);
    v29 = *(v17 + 34);
    *(v16 + 33) = *(v17 + 33);
    *(v16 + 34) = v29;
    v16[280] = v17[280];
    v30 = *(v17 + 37);
    *(v16 + 36) = *(v17 + 36);
    *(v16 + 37) = v30;
    v31 = *(v17 + 38);
    *(v16 + 38) = v31;
    v32 = *(v17 + 21);
    *(v16 + 21) = v32;
    v33 = v32;
    v43 = a3;
    v34 = **(v32 - 8);
    swift_unknownObjectRetain();

    v35 = v31;
    v34(v16 + 312, v17 + 312, v33);
    v36 = *(v17 + 23);
    *(v16 + 22) = *(v17 + 22);
    *(v16 + 23) = v36;
    v38 = *(v17 + 51);
    v37 = *(v17 + 52);
    *(v16 + 51) = v38;
    *(v16 + 52) = v37;
    v39 = **(v38 - 8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v39(v16 + 384, v17 + 384, v38);
    v40 = *(v17 + 28);
    *(v16 + 28) = v40;
    (**(v40 - 8))((v16 + 424), (v17 + 424));
    v41 = *(v43 + 28);
    *(v7 + *(v43 + 24)) = *(a2 + *(v43 + 24));
    *(v7 + v41) = *(a2 + v41);
    swift_unknownObjectRetain();
  }

  return v7;
}

uint64_t sub_10007A900(id *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0) + 20);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  swift_unknownObjectRelease();
  v7 = (a1 + *(a2 + 20));

  swift_unknownObjectRelease();

  sub_100004758((v7 + 4));
  sub_100004758((v7 + 9));
  sub_100004758((v7 + 14));
  swift_unknownObjectRelease();
  sub_100004758((v7 + 21));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004758((v7 + 29));
  swift_unknownObjectRelease();

  sub_100004758((v7 + 39));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004758((v7 + 48));
  sub_100004758((v7 + 53));
  swift_unknownObjectRelease();
}

void **sub_10007AAA0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v8 = v7[5];
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v13 = sub_100058000(&unk_10076BB50);
    memcpy(a1 + v8, a2 + v8, *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  *(a1 + v7[6]) = *(a2 + v7[6]);
  *(a1 + v7[7]) = *(a2 + v7[7]);
  *(a1 + v7[8]) = *(a2 + v7[8]);
  v14 = *(a3 + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(a2 + v14);
  *v15 = v17;
  *(v15 + 8) = *(a2 + v14 + 8);
  *(v15 + 3) = *(a2 + v14 + 24);
  v18 = *(a2 + v14 + 56);
  *(v15 + 56) = v18;
  v19 = v18;
  v20 = **(v18 - 8);

  swift_unknownObjectRetain();
  v21 = v17;
  swift_unknownObjectRetain();

  v20(v15 + 32, v16 + 32, v19);
  v22 = *(v16 + 6);
  *(v15 + 6) = v22;
  (**(v22 - 8))((v15 + 72), (v16 + 72));
  v23 = *(v16 + 136);
  *(v15 + 136) = v23;
  (**(v23 - 8))((v15 + 112), (v16 + 112));
  *(v15 + 152) = *(v16 + 152);
  v24 = *(v16 + 24);
  *(v15 + 24) = v24;
  v25 = **(v24 - 8);
  swift_unknownObjectRetain();
  v25(v15 + 168, v16 + 168, v24);
  *(v15 + 200) = *(v16 + 200);
  *(v15 + 216) = *(v16 + 216);
  v26 = *(v16 + 32);
  *(v15 + 32) = v26;
  v27 = **(v26 - 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27(v15 + 232, v16 + 232, v26);
  v28 = *(v16 + 34);
  *(v15 + 33) = *(v16 + 33);
  *(v15 + 34) = v28;
  v15[280] = v16[280];
  v29 = *(v16 + 37);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 37) = v29;
  v30 = *(v16 + 38);
  *(v15 + 38) = v30;
  v31 = *(v16 + 21);
  *(v15 + 21) = v31;
  v32 = v31;
  v43 = a2;
  v33 = a3;
  v34 = **(v31 - 8);
  swift_unknownObjectRetain();

  v35 = v30;
  v34(v15 + 312, v16 + 312, v32);
  v36 = *(v16 + 23);
  *(v15 + 22) = *(v16 + 22);
  *(v15 + 23) = v36;
  v38 = *(v16 + 51);
  v37 = *(v16 + 52);
  *(v15 + 51) = v38;
  *(v15 + 52) = v37;
  v39 = **(v38 - 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v39(v15 + 384, v16 + 384, v38);
  v40 = *(v16 + 28);
  *(v15 + 28) = v40;
  (**(v40 - 8))((v15 + 424), (v16 + 424));
  v41 = *(v33 + 28);
  *(a1 + *(v33 + 24)) = *(v43 + *(v33 + 24));
  *(a1 + v41) = *(v43 + v41);
  swift_unknownObjectRetain();

  return a1;
}

void **sub_10007AF80(void **a1, void **a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v10 = v9[5];
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      (*(v12 + 24))(a1 + v10, a2 + v10, v11);
      goto LABEL_7;
    }

    (*(v12 + 8))(a1 + v10, v11);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v16 = sub_100058000(&unk_10076BB50);
    memcpy(a1 + v10, a2 + v10, *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 16))(a1 + v10, a2 + v10, v11);
  (*(v12 + 56))(a1 + v10, 0, 1, v11);
LABEL_7:
  *(a1 + v9[6]) = *(a2 + v9[6]);

  v17 = v9[7];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = v19[1];
  *v18 = *v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v18[1] = v20;
  *(a1 + v9[8]) = *(a2 + v9[8]);
  v21 = a3[5];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = *(a2 + v21);
  v25 = *v22;
  *v22 = v24;
  v26 = v24;

  v27 = *(v23 + 2);
  *(v22 + 1) = *(v23 + 1);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v22 + 2) = v27;
  *(v22 + 3) = *(v23 + 3);

  sub_100079CB0(v22 + 4, v23 + 4);
  sub_100079CB0(v22 + 9, v23 + 9);
  sub_100079CB0(v22 + 14, v23 + 14);
  v28 = *(v23 + 20);
  *(v22 + 19) = *(v23 + 19);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v22 + 20) = v28;
  sub_100079ECC(v22 + 21, v23 + 21);
  v29 = *(v23 + 26);
  *(v22 + 25) = *(v23 + 25);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v22 + 26) = v29;
  v30 = *(v23 + 28);
  *(v22 + 27) = *(v23 + 27);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v22 + 28) = v30;
  sub_100079ECC(v22 + 29, v23 + 29);
  v31 = *(v23 + 34);
  *(v22 + 33) = *(v23 + 33);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v22 + 34) = v31;
  v22[280] = v23[280];
  *(v22 + 36) = *(v23 + 36);

  *(v22 + 37) = *(v23 + 37);

  v32 = *(v23 + 38);
  v33 = *(v22 + 38);
  *(v22 + 38) = v32;
  v34 = v32;

  sub_100079CB0(v22 + 39, v23 + 39);
  v35 = *(v23 + 45);
  *(v22 + 44) = *(v23 + 44);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v22 + 45) = v35;
  v36 = *(v23 + 47);
  *(v22 + 46) = *(v23 + 46);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v22 + 47) = v36;
  sub_100079CB0(v22 + 48, v23 + 48);
  sub_100079CB0(v22 + 53, v23 + 53);
  v37 = a3[6];
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = v39[1];
  *v38 = *v39;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v38[1] = v40;
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

char *sub_10007B358(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v7 = v6[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a2[v7], 1, v8))
  {
    v10 = sub_100058000(&unk_10076BB50);
    memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  *&a1[v6[6]] = *&a2[v6[6]];
  *&a1[v6[7]] = *&a2[v6[7]];
  a1[v6[8]] = a2[v6[8]];
  memcpy(&a1[a3[5]], &a2[a3[5]], 0x1D0uLL);
  v11 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v11] = *&a2[v11];
  return a1;
}

void **sub_10007B4D0(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v8 = v7[5];
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(a2 + v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(a1 + v8, a2 + v8, v9);
      goto LABEL_7;
    }

    (*(v10 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_100058000(&unk_10076BB50);
    memcpy(a1 + v8, a2 + v8, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 32))(a1 + v8, a2 + v8, v9);
  (*(v10 + 56))(a1 + v8, 0, 1, v9);
LABEL_7:
  *(a1 + v7[6]) = *(a2 + v7[6]);

  v15 = v7[7];
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  swift_unknownObjectRelease();
  v16[1] = v18;
  *(a1 + v7[8]) = *(a2 + v7[8]);
  v19 = a3[5];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = *(a1 + v19);
  *(a1 + v19) = *(a2 + v19);

  v23 = *(v21 + 2);
  *(v20 + 1) = *(v21 + 1);
  swift_unknownObjectRelease();
  v24 = *(v21 + 3);
  *(v20 + 2) = v23;
  *(v20 + 3) = v24;

  sub_100004758((v20 + 32));
  v25 = *(v21 + 3);
  *(v20 + 2) = *(v21 + 2);
  *(v20 + 3) = v25;
  *(v20 + 8) = *(v21 + 8);
  sub_100004758((v20 + 72));
  *(v20 + 72) = *(v21 + 72);
  *(v20 + 88) = *(v21 + 88);
  *(v20 + 13) = *(v21 + 13);
  sub_100004758((v20 + 112));
  v26 = *(v21 + 8);
  *(v20 + 7) = *(v21 + 7);
  *(v20 + 8) = v26;
  v27 = *(v21 + 19);
  v28 = *(v21 + 20);
  *(v20 + 18) = *(v21 + 18);
  *(v20 + 19) = v27;
  swift_unknownObjectRelease();
  *(v20 + 20) = v28;
  sub_100004758((v20 + 168));
  *(v20 + 168) = *(v21 + 168);
  *(v20 + 184) = *(v21 + 184);
  v29 = *(v21 + 26);
  *(v20 + 25) = *(v21 + 25);
  swift_unknownObjectRelease();
  v30 = *(v21 + 27);
  v31 = *(v21 + 28);
  *(v20 + 26) = v29;
  *(v20 + 27) = v30;
  swift_unknownObjectRelease();
  *(v20 + 28) = v31;
  sub_100004758((v20 + 232));
  *(v20 + 232) = *(v21 + 232);
  *(v20 + 248) = *(v21 + 248);
  v32 = *(v21 + 34);
  *(v20 + 33) = *(v21 + 33);
  swift_unknownObjectRelease();
  *(v20 + 34) = v32;
  v20[280] = v21[280];
  *(v20 + 36) = *(v21 + 36);

  *(v20 + 37) = *(v21 + 37);

  v33 = *(v20 + 38);
  *(v20 + 38) = *(v21 + 38);

  sub_100004758((v20 + 312));
  v34 = *(v21 + 328);
  *(v20 + 312) = *(v21 + 312);
  *(v20 + 328) = v34;
  v35 = *(v21 + 44);
  v36 = *(v21 + 45);
  *(v20 + 43) = *(v21 + 43);
  *(v20 + 44) = v35;
  swift_unknownObjectRelease();
  v37 = *(v21 + 46);
  v38 = *(v21 + 47);
  *(v20 + 45) = v36;
  *(v20 + 46) = v37;
  swift_unknownObjectRelease();
  *(v20 + 47) = v38;
  sub_100004758((v20 + 384));
  v39 = *(v21 + 25);
  *(v20 + 24) = *(v21 + 24);
  *(v20 + 25) = v39;
  *(v20 + 52) = *(v21 + 52);
  sub_100004758((v20 + 424));
  v40 = *(v21 + 440);
  *(v20 + 424) = *(v21 + 424);
  *(v20 + 440) = v40;
  *(v20 + 57) = *(v21 + 57);
  v41 = a3[6];
  v42 = (a1 + v41);
  v43 = (a2 + v41);
  v44 = v43[1];
  *v42 = *v43;
  swift_unknownObjectRelease();
  v42[1] = v44;
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_10007B8B8()
{
  result = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_10007B964(void **a1, void **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v4;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = sub_100058000(&unk_10076BB50);
      memcpy(v7 + v8, a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(v7 + v8, a2 + v8, v9);
      (*(v10 + 56))(v7 + v8, 0, 1, v9);
    }

    v14 = a3[7];
    *(v7 + a3[6]) = *(a2 + a3[6]);
    *(v7 + v14) = *(a2 + v14);
    *(v7 + a3[8]) = *(a2 + a3[8]);

    swift_unknownObjectRetain();
  }

  return v7;
}

uint64_t sub_10007BB2C(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  return swift_unknownObjectRelease();
}

void **sub_10007BC00(void **a1, void **a2, int *a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = a3[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v6;
  if (v10(a2 + v7, 1, v8))
  {
    v12 = sub_100058000(&unk_10076BB50);
    memcpy(a1 + v7, a2 + v7, *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v13 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + a3[8]) = *(a2 + a3[8]);

  swift_unknownObjectRetain();
  return a1;
}

void **sub_10007BD68(void **a1, void **a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = a3[5];
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100058000(&unk_10076BB50);
    memcpy(a1 + v9, a2 + v9, *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  *(a1 + a3[6]) = *(a2 + a3[6]);

  v16 = a3[7];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  v19 = v18[1];
  *v17 = *v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v17[1] = v19;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

char *sub_10007BF48(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = sub_100058000(&unk_10076BB50);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v10] = *&a2[v10];
  a1[a3[8]] = a2[a3[8]];
  return a1;
}

void **sub_10007C080(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a3[5];
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_100058000(&unk_10076BB50);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  *(a1 + a3[6]) = *(a2 + a3[6]);

  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = v16[1];
  *v15 = *v16;
  swift_unknownObjectRelease();
  v15[1] = v17;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

void sub_10007C274()
{
  sub_10007C330();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_10007C330()
{
  if (!qword_100774300)
  {
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100774300);
    }
  }
}

uint64_t sub_10007C390()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007697A0);
  v1 = sub_100003E30(v0, qword_1007697A0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10007C458(id a1, char a2)
{
  if (a2)
  {
    [v2 commit];
  }

  v4 = [a1 account];
  v5 = [v4 objectID];

  v6 = [a1 objectID];
  v7 = [v2 recipients];
  if (v7)
  {
    v8 = v7;
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = _swiftEmptyArrayStorage;
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + 32;
      v12 = _swiftEmptyArrayStorage;
      do
      {
        sub_1000046FC(v11, v18);
        sub_1000046FC(v18, v17);
        sub_100003540(0, &qword_1007697E0);
        if (swift_dynamicCast())
        {
          sub_10007CF50(v16, v5, v6);
          v14 = v13;

          sub_100004758(v18);
          if (v14)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v12 = v19;
          }
        }

        else
        {
          sub_100004758(v18);
        }

        v11 += 32;
        --v10;
      }

      while (v10);
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t sub_10007C770()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  sub_10007D474();
  sub_100003540(0, &qword_100769660);
  static UNUserNotificationCenter.ttr_unUserNotificationCenter.getter();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v6 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  swift_allocObject();
  v7 = v1;
  v8 = TTRIPrivacyChecker.init(delegate:unUserNotificationCenter:geoService:notificationsService:userDefaults:urgentAlarmService:)();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  sub_10009E31C(0, 0, v5, &unk_10062E1B8, v11);
}

uint64_t sub_10007C980(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[3] = a4;
  v4[4] = *a4;
  v5 = type metadata accessor for TTRContactsAccessAlertFeature();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v7;
  v4[10] = v6;

  return _swift_task_switch(sub_10007CA9C, v7, v6);
}

uint64_t sub_10007CA9C()
{
  v1 = v0[4];
  v0[2] = v0[3];
  (*(v0[6] + 104))(v0[7], enum case for TTRContactsAccessAlertFeature.calDAVSharing(_:), v0[5]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10007CB70;
  v3 = v0[7];

  return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(v3, v1, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10007CB70()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_10007CCF4, v6, v5);
}

uint64_t sub_10007CCF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10007CF50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 address];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v41 = v7;
  v46 = a2;
  v47 = a3;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = [a1 compositeName];
  v42 = v13;
  if (v16)
  {
    v17 = v16;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v45 = 0;
    v19 = 0;
  }

  v20 = [a1 contact];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 givenName];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v21 familyName];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v27 = 0;
    v24 = 0;
  }

  v28 = [a1 kind];
  if (v28 <= 3)
  {
    v29 = v19;
    if (v28 <= 1)
    {
      if (!v28)
      {

        v30 = [v12 stringAddingMailto];

        if (!v30)
        {
          goto LABEL_25;
        }

LABEL_23:
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v32;

        goto LABEL_26;
      }

      if (v28 == 1)
      {

        v48 = v42;
        v49 = v15;
        static CharacterSet.controlCharacters.getter();
        sub_10007D420();
        StringProtocol.trimmingCharacters(in:)();
        (*(v41 + 8))(v10, v6);

        v31 = String._bridgeToObjectiveC()();

        v30 = [v31 stringAddingTel];

        if (v30)
        {
          goto LABEL_23;
        }

LABEL_25:
        v15 = 0;
LABEL_26:
        v33 = [objc_opt_self() newObjectID];
        if (v29)
        {
          v34 = String._bridgeToObjectiveC()();

          if (v24)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v34 = 0;
          if (v24)
          {
LABEL_28:
            v35 = String._bridgeToObjectiveC()();

            if (v27)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        v35 = 0;
        if (v27)
        {
LABEL_29:
          v36 = String._bridgeToObjectiveC()();

          if (v15)
          {
LABEL_30:
            v37 = String._bridgeToObjectiveC()();

LABEL_35:
            v38 = objc_allocWithZone(REMSharee);
            [v38 initShareeWithObjectID:v33 accountID:v46 listID:v47 displayName:v34 firstName:v35 lastName:v36 address:v37 status:5 accessLevel:2];

            return;
          }

LABEL_34:
          v37 = 0;
          goto LABEL_35;
        }

LABEL_33:
        v36 = 0;
        if (v15)
        {
          goto LABEL_30;
        }

        goto LABEL_34;
      }

      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v29 = v19;
  if (v28 <= 5)
  {
    if (v28 == 4)
    {

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v28 == 6 || v28 == 7)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_36:

  if (qword_100766EB0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100003E30(v39, qword_1007697A0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unknown kind", 12, 2);
  __break(1u);
}

unint64_t sub_10007D420()
{
  result = qword_10076AE70;
  if (!qword_10076AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076AE70);
  }

  return result;
}

unint64_t sub_10007D474()
{
  result = qword_1007697E8;
  if (!qword_1007697E8)
  {
    type metadata accessor for TTRIAddShareesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007697E8);
  }

  return result;
}

uint64_t sub_10007D4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_10007C980(a1, v4, v5, v6);
}

char *sub_10007D57C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = *v6++;
    BYTE3(v14) = v9;
    a1(&v14, &v14 + 3);
    if (v3)
    {
      break;
    }

    v10 = v14 | (BYTE2(v14) << 16);
    if ((v14 & 0xFF00) != 0x200)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100546A7C(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_100546A7C((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v8 = &v7[3 * v12];
      v8[32] = v10;
      v8[33] = BYTE1(v10) & 1;
      v8[34] = BYTE2(v10) & 1;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_10007D6E8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14[0] = v6;
      v14[1] = v7;
      a1(&v13, v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10007D8C0(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = _swiftEmptyArrayStorage;
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (1)
    {
      if (v35)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a3 + 8 * v15 + 32);
      }

      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = v12;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_1000079B4(v8, &qword_100772140);
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_100547094(0, v38[2] + 1, 1, v38);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_100547094(v21 > 1, v22 + 1, 1, v38);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v12;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10007DC54(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  v17 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

void *sub_10007DDE0(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v10 = *i;
      a1(&v9, &v10);
      if (v3)
      {
        break;
      }

      if (v9)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v11;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_10007DEE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v17 = v19[1];
    v18 = v19[0];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100547F7C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      result = sub_100547F7C((v13 > 1), v14 + 1, 1, v8);
      v15 = v14 + 1;
      v8 = result;
    }

    *(v8 + 2) = v15;
    v16 = &v8[32 * v14];
    *(v16 + 2) = v18;
    *(v16 + 3) = v17;
  }

  while (v7 != v4);
  return v8;
}

char *sub_10007E078(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100769A08);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TTRReminderSwipeAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for TTRRemindersListPostponeType() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = _swiftEmptyArrayStorage;
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1000079B4(v8, &qword_100769A08);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100547CB8(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_100547CB8(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

uint64_t sub_10007E3A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007697F0);
  v1 = sub_100003E30(v0, qword_1007697F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10007E46C()
{
  v1 = v0;
  sub_10007E5A0();
  v2 = [objc_opt_self() defaultCenter];
  v3 = static NSNotificationName.timeZoneOverrideDidChange.getter();
  v4 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();

  v5 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v7, &qword_10076AE40);

  *(v1 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideChangedObserver) = v5;
}

uint64_t sub_10007E5A0()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityNameTask;
  if (*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityNameTask))
  {

    sub_100058000(&qword_1007699F0);
    Task.cancel()();
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;

  *(v1 + v5) = sub_100084EC0(0, 0, v4, &unk_10062E430, v9);
}

uint64_t sub_10007E75C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007E5A0();
  }

  return result;
}

Class sub_10007E7B4()
{
  v1 = type metadata accessor for REMFeatureFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions) & 1) == 0)
  {
    v23 = v2;
    v24 = v1;
    v25 = &_swiftEmptyArrayStorage;
    v10 = sub_100003540(0, &qword_10076BA60);
    static TTRLocalizableStrings.AutoCategorization.menuDisableActionTitle.getter();
    static TTRCommonAsset.Image.autoCategorizationIconForDisabling.getter();
    swift_allocObject();
    v22[2] = v0;
    swift_weakInit();
    v22[1] = v10;
    v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v25;
    type metadata accessor for FBKEvaluationController();
    (*(v6 + 104))(v8, enum case for FBKSEvaluation.Action.reportConcern(_:), v5);
    static FBKEvaluationController.systemImageName(for:hasResponse:)();
    (*(v6 + 8))(v8, v5);
    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() systemImageNamed:v13];

    v16 = v23;
    v15 = v24;
    (*(v23 + 104))(v4, enum case for REMFeatureFlags.reportAConcern(_:), v24);
    LOBYTE(v13) = REMFeatureFlags.isEnabled.getter();
    (*(v16 + 8))(v4, v15);
    if (v13)
    {
      static TTRLocalizableStrings.Feedback.reportAConcernTitle.getter();
      swift_allocObject();
      swift_weakInit();
      v17 = v14;
      v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v12 = v25;
    }

    sub_100003540(0, &unk_10076B890);
    v19._countAndFlagsBits = static TTRLocalizableStrings.AutoCategorization.featureEnabledStatusText.getter();
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, v12, v21).super.super.isa;

    return isa;
  }

  return result;
}

uint64_t sub_10007EC2C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v2 + 96))(v1, &off_100713C08, ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10007ECD0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v2 + 104))(v1, &off_100713C08, ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10007ED74()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget();
  __chkstk_darwin(v5 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v0 + 40);
    v10 = *(v0 + 64);
    if (*(v10 + 48))
    {
      v13[1] = *(v10 + 56);
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of TTRRemindersListEditingSession.item.getter();
      swift_unknownObjectRelease();
      (*(v2 + 32))(v7, v4, v1);
      (*(v2 + 56))(v7, 0, 1, v1);
    }

    else
    {
      (*(v2 + 56))(v7, 1, 1, v1);
    }

    ObjectType = swift_getObjectType();
    v12 = (*(v9 + 24))(v0, &off_100713C08, v7, ObjectType, v9);
    swift_unknownObjectRelease();
    sub_1000867B4(v7, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
    return v12;
  }

  return result;
}

Class sub_10007EFA0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRLocationQuickPickItem();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v67 = &v54 - v8;
  __chkstk_darwin(v7);
  v58 = &v54 - v9;
  v10 = sub_100058000(&qword_100775720);
  v11 = __chkstk_darwin(v10 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v17 = &v54 - v16;
  result = 0;
  if ((*(v1 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions) & 1) == 0)
  {
    v66 = v6;
    v55 = v15;
    if (*(*(v1 + 64) + 48))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of TTRRemindersListEditingSession.reminder.getter();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0;
      v72 = 0u;
      v73 = 0u;
    }

    (*(v3 + 7))(v17, 1, 1, v2);
    sub_10000794C(&v72, &v69, &qword_1007699B8);
    if (v70)
    {
      sub_100005FD0(&v69, v71);
      swift_getObjectType();
      dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems(matchingAlarmTriggersIn:)();
      sub_100004758(v71);
      sub_10000D184(v14, v17, &qword_100775720);
    }

    else
    {
      sub_1000079B4(&v69, &qword_1007699B8);
    }

    v56 = v17;
    v57 = v1;
    swift_getObjectType();
    v19 = dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems.getter();
    v65 = *(v19 + 16);
    if (v65)
    {
      v20 = 0;
      v21 = v3;
      v63 = v3 + 16;
      v62 = enum case for TTRLocationQuickPickItem.current(_:);
      v61 = v3 + 104;
      v22 = v3 + 8;
      v60 = (v3 + 32);
      v23 = &_swiftEmptyArrayStorage;
      v24 = v58;
      v25 = v2;
      v59 = v21;
      v64 = v19;
      while (v20 < *(v19 + 16))
      {
        v68 = (v21[80] + 32) & ~v21[80];
        v26 = *(v21 + 9);
        (*(v21 + 2))(v24, v19 + v68 + v26 * v20, v25);
        v27 = v22;
        v28 = v67;
        (*(v21 + 13))(v67, v62, v25);
        sub_1000864DC(&qword_1007699C0, &type metadata accessor for TTRLocationQuickPickItem);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v21 + 1);
        v31 = v28;
        v22 = v27;
        v30(v31, v25);
        if (v29)
        {
          v30(v24, v25);
        }

        else
        {
          v32 = *v60;
          (*v60)(v66, v24, v25);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71[0] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004A1F1C(0, *(v23 + 2) + 1, 1);
            v24 = v58;
            v23 = v71[0];
          }

          v35 = *(v23 + 2);
          v34 = *(v23 + 3);
          if (v35 >= v34 >> 1)
          {
            sub_1004A1F1C(v34 > 1, v35 + 1, 1);
            v24 = v58;
            v23 = v71[0];
          }

          *(v23 + 2) = v35 + 1;
          v32(&v23[v68 + v35 * v26], v66, v25);
          v21 = v59;
          v22 = v27;
        }

        ++v20;
        v19 = v64;
        if (v65 == v20)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v23 = &_swiftEmptyArrayStorage;
      v25 = v2;
      v21 = v3;
LABEL_20:
      v24 = v21;

      v36 = v57;

      v20 = v56;
      v37 = sub_100085E30(v23, v56, v36);

      if (!*(&v73 + 1))
      {
        if (v37 >> 62)
        {
          sub_100003540(0, &qword_10076C550);

          v49 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100003540(0, &qword_10076C550);
          v49 = v37;
        }

        sub_100003540(0, &unk_10076B890);
        v50._countAndFlagsBits = 0;
        v50._object = 0xE000000000000000;
        v77.value.super.isa = 0;
        v77.is_nil = 0;
        v47.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v50, 0, v77, 0, 0xFFFFFFFFFFFFFFFFLL, v49, v52).super.super.isa;
        sub_1000079B4(&v72, &qword_1007699B8);
        v48 = v20;
        goto LABEL_27;
      }

      v21 = v25;
      if (!(v37 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100003540(0, &qword_10076C550);
        v38 = v37;
LABEL_23:

        sub_100003540(0, &unk_10076B890);
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        v75.value.super.isa = 0;
        v75.is_nil = 0;
        isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v75, 1, 0xFFFFFFFFFFFFFFFFLL, v38, v52).super.super.isa;
        v41 = v55;
        sub_10000794C(v20, v55, &qword_100775720);
        (*(v24 + 6))(v41, 1, v21);
        sub_1000079B4(v41, &qword_100775720);
        sub_100003540(0, &qword_10076BA60);
        v42._object = 0x800000010066F900;
        v43._countAndFlagsBits = 1701736270;
        v43._object = 0xE400000000000000;
        v42._countAndFlagsBits = 0xD00000000000002BLL;
        TTRLocalizedString(_:comment:)(v43, v42);
        swift_allocObject();
        swift_weakInit();
        v44 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_100058000(&qword_10076B780);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_10062D410;
        *(v45 + 32) = v44;
        *(v45 + 40) = isa;
        v51 = v45;
        v46._countAndFlagsBits = 0;
        v46._object = 0xE000000000000000;
        v76.value.super.isa = 0;
        v76.is_nil = 0;
        v47.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v46, 0, v76, 0, 0xFFFFFFFFFFFFFFFFLL, v51, v53).super.super.isa;
        sub_1000079B4(&v72, &qword_1007699B8);
        v48 = v20;
LABEL_27:
        sub_1000079B4(v48, &qword_100775720);
        return v47.super.super.isa;
      }
    }

    sub_100003540(0, &qword_10076C550);

    v38 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_10007F8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100058000(&qword_100775720);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = type metadata accessor for TTRLocationQuickPickItem();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v7, a3, v9);
    (*(v10 + 56))(v7, 0, 1, v9);
    sub_10007FA38(v7, a1);

    return sub_1000079B4(v7, &qword_100775720);
  }

  return result;
}

uint64_t sub_10007FA38(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget();
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v2 + 40);
    if (*(*(v2 + 64) + 48))
    {
      v16 = a1;
      swift_getObjectType();
      swift_unknownObjectRetain();
      a1 = v16;
      dispatch thunk of TTRRemindersListEditingSession.item.getter();
      swift_unknownObjectRelease();
      (*(v6 + 32))(v11, v8, v5);
      (*(v6 + 56))(v11, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v11, 1, 1, v5);
    }

    ObjectType = swift_getObjectType();
    (*(v13 + 136))(a1, v11, a2, ObjectType, v13);
    swift_unknownObjectRelease();
    return sub_1000867B4(v11, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
  }

  return result;
}

uint64_t sub_10007FC48(uint64_t a1)
{
  v2 = sub_100058000(&qword_100775720);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = type metadata accessor for TTRLocationQuickPickItem();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_10007FA38(v4, a1);

    return sub_1000079B4(v4, &qword_100775720);
  }

  return result;
}

Class sub_10007FD58()
{
  v1 = type metadata accessor for TTRIAttachmentImportingController.Source();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v69 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v57 - v6;
  v70 = v8;
  __chkstk_darwin(v5);
  v10 = &v57 - v9;
  result = 0;
  if ((*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions) & 1) == 0)
  {
    v80 = &_swiftEmptyArrayStorage;
    v12 = *(*(v0 + 64) + 48);
    v67 = v0;
    if (!v12)
    {
      countAndFlagsBits = &_swiftEmptyArrayStorage;
LABEL_13:
      type metadata accessor for TTRIAttachmentImportingController();
      v79 = static TTRIAttachmentImportingController.availableSources.getter();
      sub_100058000(&qword_1007699D0);
      v22 = v2;
      v23 = *(v2 + 72);
      v24 = *(v2 + 80);
      v58 = swift_allocObject();
      v25 = v58 + ((v24 + 32) & ~v24);
      v26 = *(v22 + 104);
      v61 = enum case for TTRIAttachmentImportingController.Source.scanDocument(_:);
      v26(v25);
      v77 = v23;
      v60 = enum case for TTRIAttachmentImportingController.Source.photoLibrary(_:);
      v26(v25 + v23);
      v75 = v25;
      v65 = enum case for TTRIAttachmentImportingController.Source.camera(_:);
      v26(v25 + 2 * v23);
      v27 = 0;
      v28 = *(v22 + 16);
      v22 += 16;
      v78 = v28;
      v76 = v79 + 56;
      v29 = (v22 - 8);
      v68 = "avigation bar location menu";
      v59 = "avigation bar photo menu";
      v66 = v24;
      v63 = (v24 + 24) & ~v24;
      v64 = (v22 + 72);
      v62 = (v22 + 16);
      v28(v10, v75, v1);
      while (1)
      {
        if (*(v79 + 16) && (v30 = v79, sub_1000864DC(&qword_1007699D8, &type metadata accessor for TTRIAttachmentImportingController.Source), v31 = dispatch thunk of Hashable._rawHashValue(seed:)(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v76 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          while (1)
          {
            v78(v7, *(v79 + 48) + v33 * v77, v1);
            sub_1000864DC(&qword_1007699E0, &type metadata accessor for TTRIAttachmentImportingController.Source);
            v35 = v10;
            v36 = dispatch thunk of static Equatable.== infix(_:_:)();
            v37 = *v29;
            (*v29)(v7, v1);
            if (v36)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            v10 = v35;
            if (((*(v76 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v38 = v69;
          v78(v69, v35, v1);
          v39 = (*v64)(v38, v1);
          if (v39 == v65)
          {
            v40._object = (v68 | 0x8000000000000000);
            v41._countAndFlagsBits = 0x6F685020656B6154;
            v41._object = 0xEA00000000006F74;
            v40._countAndFlagsBits = 0xD000000000000028;
            v42 = TTRLocalizedString(_:comment:)(v41, v40);
            object = v42._object;
            countAndFlagsBits = v42._countAndFlagsBits;
          }

          else if (v39 == v61)
          {
            v43._object = (v68 | 0x8000000000000000);
            v44._countAndFlagsBits = 0x636F44206E616353;
            v44._object = 0xED0000746E656D75;
            v43._countAndFlagsBits = 0xD000000000000028;
            v45 = TTRLocalizedString(_:comment:)(v44, v43);
            object = v45._object;
            countAndFlagsBits = v45._countAndFlagsBits;
          }

          else
          {
            if (v39 != v60)
            {
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }

            v46._object = (v68 | 0x8000000000000000);
            v47._countAndFlagsBits = 0x502065736F6F6843;
            v47._object = 0xEC0000006F746F68;
            v46._countAndFlagsBits = 0xD000000000000028;
            v48 = TTRLocalizedString(_:comment:)(v47, v46);
            object = v48._object;
            countAndFlagsBits = v48._countAndFlagsBits;
          }

          v49 = String._bridgeToObjectiveC()();
          v71 = [objc_opt_self() _systemImageNamed:v49];

          v72 = sub_100003540(0, &qword_10076BA60);
          v50 = swift_allocObject();
          swift_weakInit();
          v78(v7, v35, v1);
          v51 = v63;
          v52 = swift_allocObject();
          *(v52 + 16) = v50;
          (*v62)(v52 + v51, v7, v1);
          v53 = v71;
          v54 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            countAndFlagsBits = v53;
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v53 = countAndFlagsBits;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v37(v35, v1);
          countAndFlagsBits = v80;
          v10 = v35;
        }

        else
        {
LABEL_14:
          (*v29)(v10, v1);
        }

        if (++v27 == 3)
        {
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();

          sub_100003540(0, &unk_10076B890);
          v55._countAndFlagsBits = 0;
          v55._object = 0xE000000000000000;
          v81.value.super.isa = 0;
          v81.is_nil = 0;
          return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v55, 0, v81, 0, 0xFFFFFFFFFFFFFFFFLL, countAndFlagsBits, v56).super.super.isa;
        }

        v78(v10, v75 + v27 * v77, v1);
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v0 + 40);
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 120))(v0, &off_100713C08, ObjectType, v13);
      swift_unknownObjectRelease();
      if (v15)
      {
        if ([v15 canPerformAction:"captureTextFromCamera:" withSender:v0])
        {
          v79 = v10;
          sub_100003540(0, &qword_10076BA60);
          v16._countAndFlagsBits = 0x786554206E616353;
          v17._object = 0x800000010066F930;
          v16._object = 0xE900000000000074;
          v17._countAndFlagsBits = 0xD000000000000028;
          TTRLocalizedString(_:comment:)(v16, v17);
          v18 = String._bridgeToObjectiveC()();
          v19 = [objc_opt_self() _systemImageNamed:v18];

          swift_allocObject();
          swift_weakInit();
          v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v10 = v79;
          v21 = v80;
          goto LABEL_12;
        }
      }
    }

    v21 = &_swiftEmptyArrayStorage;
LABEL_12:
    countAndFlagsBits = v21;
    goto LABEL_13;
  }

  return result;
}

void sub_1000806F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v1 + 40), ObjectType = swift_getObjectType(), v4 = (*(v2 + 120))(v1, &off_100713C08, ObjectType, v2), swift_unknownObjectRelease(), v4))
    {
      [v4 captureTextFromCamera:v1];
    }

    else
    {
    }
  }
}

uint64_t sub_1000807C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100080820(a3);
  }

  return result;
}

uint64_t sub_100080820(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget();
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v1 + 40);
    if (*(*(v1 + 64) + 48))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of TTRRemindersListEditingSession.item.getter();
      swift_unknownObjectRelease();
      (*(v4 + 32))(v9, v6, v3);
      (*(v4 + 56))(v9, 0, 1, v3);
    }

    else
    {
      (*(v4 + 56))(v9, 1, 1, v3);
    }

    ObjectType = swift_getObjectType();
    (*(v11 + 128))(a1, v9, ObjectType, v11);
    swift_unknownObjectRelease();
    return sub_1000867B4(v9, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
  }

  return result;
}

uint64_t sub_100080A14()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget();
  __chkstk_darwin(v5 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v0 + 40);
    v10 = *(v0 + 64);
    if (*(v10 + 48))
    {
      v13[1] = *(v10 + 56);
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of TTRRemindersListEditingSession.item.getter();
      swift_unknownObjectRelease();
      (*(v2 + 32))(v7, v4, v1);
      (*(v2 + 56))(v7, 0, 1, v1);
    }

    else
    {
      (*(v2 + 56))(v7, 1, 1, v1);
    }

    ObjectType = swift_getObjectType();
    v12 = (*(v9 + 40))(v0, &off_100713C08, v7, ObjectType, v9);
    swift_unknownObjectRelease();
    sub_1000867B4(v7, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
    return v12;
  }

  return result;
}

uint64_t sub_100080C40()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget();
  __chkstk_darwin(v5 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v0 + 40);
    v10 = *(v0 + 64);
    if (*(v10 + 48))
    {
      v13[1] = *(v10 + 56);
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of TTRRemindersListEditingSession.item.getter();
      swift_unknownObjectRelease();
      (*(v2 + 32))(v7, v4, v1);
      (*(v2 + 56))(v7, 0, 1, v1);
    }

    else
    {
      (*(v2 + 56))(v7, 1, 1, v1);
    }

    ObjectType = swift_getObjectType();
    v12 = (*(v9 + 32))(v0, &off_100713C08, v7, ObjectType, v9);
    swift_unknownObjectRelease();
    sub_1000867B4(v7, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
    return v12;
  }

  return result;
}

uint64_t sub_100080E6C(uint64_t (*a1)(void *), uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v28 = v25 - v5;
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1(&_swiftEmptyArrayStorage);
  }

  v14 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCapability;
  v15 = a1;
  v16 = Strong;

  v27 = TTRTimeZoneOverrideMenuPresenterCapability.recentTimeZoneOverrides(prefix:)();

  static TimeZone.ttr_default.getter();
  v26 = v12;
  v25[0] = *(v16 + v14);
  v17 = swift_allocObject();
  *(v17 + 2) = v16;
  *(v17 + 3) = v15;
  v25[1] = v16;
  *(v17 + 4) = a2;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  (*(v7 + 16))(v10, v12, v6);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = v19;
  *(v22 + 3) = &protocol witness table for MainActor;
  *(v22 + 4) = v27;
  (*(v7 + 32))(&v22[v20], v10, v6);
  *&v22[v21] = v25[0];
  v23 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v23 = sub_100085CC8;
  v23[1] = v17;
  sub_10009E31C(0, 0, v28, &unk_10062E3E0, v22);

  (*(v7 + 8))(v26, v6);
}

uint64_t sub_1000811C8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{

  sub_10001854C(v4, sub_10001864C, sub_1000EE2A0);
  sub_100003540(0, &qword_10076BA60);
  static TTRLocalizableStrings.TimeZone.other.getter();

  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  a3(&_swiftEmptyArrayStorage);
}

uint64_t sub_100081340(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100546970(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100081434(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100546B80(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 2 * v7 + 32), (v6 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100081730(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000818CC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100548160(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100058000(&qword_1007699F8);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100081A30(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 88))(a2, &off_100713C08, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100081AF4(uint64_t a1, SEL *a2, SEL *a3)
{
  if (qword_100766EB8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007697F0);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_10000FD44();

  v7 = *(v3 + 64);
  swift_beginAccess();
  v8 = *(v7 + 96);
  if (v8)
  {
    sub_10000C36C((v7 + 72), v8);

    CurrentValueSubject.value.getter();

    if (v9)
    {
      if ([v9 *a2])
      {
        [v9 *a3];
      }
    }
  }
}

uint64_t sub_100081C1C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRIRemindersListNavigationBarEditingTarget();
  result = __chkstk_darwin(v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions) & 1) == 0)
  {
    v9 = *(v0 + 64);
    if (*(v9 + 48))
    {
      v16 = v0;
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of TTRRemindersListEditingSession.reminder.getter();
      sub_10000C36C(v17, v17[3]);
      dispatch thunk of TTRReminderProtocol.ttrFlaggedContext.getter();
      if (v19)
      {
        sub_10000C36C(v18, v19);
        v10 = dispatch thunk of TTRReminderFlaggedContextProtocol.isFlagged.getter();
        swift_unknownObjectRelease();
        sub_100004758(v18);
        sub_100004758(v17);
        v11 = v10 ^ 1;
      }

      else
      {
        swift_unknownObjectRelease();
        sub_100004758(v17);
        sub_1000079B4(v18, &qword_1007699A0);
        v11 = 1;
      }

      v0 = v16;
    }

    else
    {
      v11 = 1;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = *(v0 + 40);
      if (*(v9 + 48))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of TTRRemindersListEditingSession.item.getter();
        swift_unknownObjectRelease();
        (*(v2 + 32))(v8, v4, v1);
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      (*(v2 + 56))(v8, v13, 1, v1);
      ObjectType = swift_getObjectType();
      (*(v12 + 112))(v11 & 1, v8, ObjectType, v12);
      swift_unknownObjectRelease();
      return sub_1000867B4(v8, type metadata accessor for TTRIRemindersListNavigationBarEditingTarget);
    }
  }

  return result;
}

uint64_t sub_100081EF8(uint64_t a1, unint64_t a2)
{
  v5 = sub_100058000(&qword_100769978);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_lastSetConfiguration;
  swift_beginAccess();
  sub_10000794C(v2 + v12, v7, &qword_100769978);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000079B4(v7, &qword_100769978);
  }

  sub_100086814(v7, v11, type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration);
  if (qword_100766EB8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_1007697F0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100004060(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v15, v16, "TTRIRemindersListNavigationBarPresenter: update navigation bar {reason: %s}", v17, 0xCu);
    sub_100004758(v18);
  }

  sub_1000830B0(v11);
  return sub_1000867B4(v11, type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration);
}

uint64_t sub_1000821D8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v45 - v6;
  v8 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = sub_100058000(&qword_1007699A8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(v0, &off_100713C08, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource(0);
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  }

  sub_10000794C(v19, v17, &qword_1007699A8);
  v23 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource(0);
  if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
  {
    v24 = 0x20202020202;
    sub_1005A7370();
LABEL_26:
    v43 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_lastSetReminderEditingItemsInfoSource;
    swift_beginAccess();
    sub_100085BCC(v19, v1 + v43);
    swift_endAccess();
    sub_1000079B4(v19, &qword_1007699A8);
    return v24 & 0xFFFFFFFFFFFFLL;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v17;
    v26 = *(v17 + 4);
    v27 = *(v17 + 5);
    sub_1005A7370();
    v24 = v25 | (v26 << 32) | (v27 << 40);
    goto LABEL_26;
  }

  v28 = v17;
  v29 = v13;
  sub_100086814(v28, v13, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_100085C3C(v13, v11, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v36 = *v11;
      v37 = *(v11 + 1);
      if (!v37)
      {
        v37 = [*v11 list];
      }

      goto LABEL_24;
    }

    sub_1000867B4(v11, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
LABEL_17:
    v24 = 0x20202020202;
    sub_1005A7370();
LABEL_25:
    sub_1000867B4(v29, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_17;
  }

  v32 = v46;
  v31 = v47;
  (*(v46 + 32))(v7, v11, v47);
  (*(v32 + 16))(v5, v7, v31);
  v33 = (*(v32 + 88))(v5, v31);
  if (v33 == enum case for TTRRemindersListTargetContainer.TargetList.listID(_:))
  {
    (*(v32 + 8))(v7, v31);
    (*(v32 + 96))(v5, v31);
    v34 = *v5;
    v35 = v34;
LABEL_22:
    v38 = *(v1 + 64);
    sub_1005A7298(v34);
    v39 = *(v38 + 64);
    v40 = v39;
    v24 = sub_1000827C4(v39);

    sub_100085CA4(v34, 1u);
    goto LABEL_25;
  }

  if (v33 == enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:) || v33 == enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:))
  {
    (*(v32 + 8))(v7, v31);
    (*(v32 + 96))(v5, v31);
    v37 = *v5;
LABEL_24:
    v41 = v37;
    sub_1005A7370();
    v42 = v41;
    v24 = sub_1000827C4(v37);

    sub_100085CA4(v37, 0);
    goto LABEL_25;
  }

  if (v33 == enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:))
  {
    (*(v32 + 8))(v7, v31);
    v34 = 0;
    goto LABEL_22;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1000827C4(void *a1)
{
  if (!a1)
  {
    return 3;
  }

  v1 = a1;
  v2 = REMList.accountCapabilities.getter();
  v3 = [v2 supportsAssignments];

  if (v3 && (v4 = [v1 shareeContext]) != 0)
  {
    v5 = v4;
    sub_100003540(0, &qword_1007699B0);
    v6 = TTRListShareeContextProtocol.assignableSharees.getter();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = 0x10000000000;
    }

    else
    {
      v8 = 0x20000000000;
    }
  }

  else
  {
    v8 = 0x20000000000;
  }

  v9 = REMList.accountCapabilities.getter();
  v10 = [v9 supportsLocation];
  v11 = [v9 supportsFlagged];
  v12 = [v9 supportsAttachments];
  v13 = [v9 supportsHashtags];

  v14 = 257;
  if (!v10)
  {
    v14 = 1;
  }

  v15 = 0x10000;
  if (!v11)
  {
    v15 = 0;
  }

  v16 = 0x1000000;
  if (!v12)
  {
    v16 = 0;
  }

  v17 = &_mh_execute_header;
  if (!v13)
  {
    v17 = 0;
  }

  return v14 | v8 | v15 | v16 | v17;
}

char *sub_100082984(char a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100769980);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18[-v7];
  if (a1 == 3)
  {
    v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
    sub_10000794C(a2 + *(v9 + 20), v8, &qword_100769980);
    v10 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
    if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
    {
      v6 = sub_1000079B4(v8, &qword_100769980);
LABEL_7:
      a1 = 1;
      goto LABEL_8;
    }

    v11 = *v8;
    v6 = sub_1000867B4(v8, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

    a1 = 1;
  }

LABEL_8:
  __chkstk_darwin(v6);
  v18[-32] = a1;
  v18[-31] = v12;
  v18[-30] = v13;
  v18[-29] = v14;
  v18[-28] = v15;
  v18[-27] = v16;
  *&v18[-24] = v2;
  *&v18[-16] = a2;
  return sub_10007D57C(sub_100085BA4, &v18[-48], &off_100712410);
}

uint64_t sub_100082B70@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *result;
  if (v4 <= 2)
  {
    v8 = (a2 & 1) << 8;
    if (a2 == 2)
    {
      v8 = 512;
    }

    if ((a2 & 0xFF00) == 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = (a2 & 0x100) + 1;
    }

    if ((a2 & 0xFF0000) == 0x20000)
    {
      v10 = 512;
    }

    else
    {
      v10 = (a2 >> 8) & 0x100 | 0x10002;
    }

    if (v4 == 1)
    {
      v10 = v9;
    }

    if (*result)
    {
      v7 = v10;
    }

    else
    {
      v7 = v8;
    }
  }

  else if (*result > 4u)
  {
    if (v4 == 5)
    {
      if ((a2 & 0xFF0000000000) == 0x20000000000)
      {
        v7 = 512;
      }

      else
      {
        v7 = (((a2 >> 40) & 1) << 8) | 5;
      }
    }

    else
    {
      v7 = 512;
      v12 = a4;
      result = static REMFeatureFlags.isSolariumEnabled.getter();
      a4 = v12;
      if ((result & 1) == 0)
      {
        result = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
        a4 = v12;
        if (*(a3 + *(result + 36)))
        {
          v7 = 262;
        }

        else
        {
          v7 = 512;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0xFF000000) == 0x2000000)
    {
      v5 = 512;
    }

    else
    {
      v5 = ((BYTE3(a2) & 1) << 8) | 3;
    }

    if ((a2 & 0xFF00000000) == 0x200000000)
    {
      v6 = 512;
    }

    else
    {
      v6 = ((BYTE4(a2) & 1) << 8) | 4;
    }

    if (v4 == 3)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }
  }

  *a4 = v7;
  *(a4 + 2) = BYTE2(v7);
  return result;
}

void sub_100082CC4(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (v5 <= 2)
  {
    if (*a1)
    {
      if (v5 == 1)
      {
        sub_10000C36C(a2, a2[3]);
        v10 = dispatch thunk of TTRReminderProtocol.accountCapabilities.getter();
        v11 = [v10 supportsLocation];

        if (v11)
        {
          v8 = 257;
        }

        else
        {
          v8 = 1;
        }

        *(a4 + 2) = 0;
      }

      else
      {
        sub_10000C36C(a2, a2[3]);
        dispatch thunk of TTRReminderProtocol.ttrFlaggedContext.getter();
        v15 = v24;
        sub_10000794C(v23, &v21, &qword_1007699A0);
        if (v22)
        {
          sub_10000C36C(&v21, v22);
          v16 = dispatch thunk of TTRReminderFlaggedContextProtocol.isFlagged.getter();
          sub_100004758(&v21);
          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = 0x10000;
          }
        }

        else
        {
          sub_1000079B4(&v21, &qword_1007699A0);
          v17 = 0x10000;
        }

        sub_1000079B4(v23, &qword_1007699A0);
        if (v15)
        {
          v20 = 258;
        }

        else
        {
          v20 = 2;
        }

        v8 = v17 | v20;
        *(a4 + 2) = BYTE2(v17);
      }
    }

    else
    {
      *(a4 + 2) = 0;
      v8 = 256;
    }

    goto LABEL_40;
  }

  if (*a1 <= 4u)
  {
    if (v5 == 3)
    {
      sub_10000C36C(a2, a2[3]);
      dispatch thunk of TTRReminderProtocol.ttrAssignmentContext.getter();
      v6 = v24;
      sub_1000079B4(v23, &qword_100769988);
      v7 = v6 == 0;
      v8 = 259;
      v9 = 3;
    }

    else
    {
      sub_10000C36C(a2, a2[3]);
      dispatch thunk of TTRReminderProtocol.ttrHashtagContext.getter();
      v18 = v24;
      sub_1000079B4(v23, &qword_100769998);
      v7 = v18 == 0;
      v8 = 260;
      v9 = 4;
    }

    if (v7)
    {
      v8 = v9;
    }

    *(a4 + 2) = 0;
    goto LABEL_40;
  }

  if (v5 == 5)
  {
    sub_10000C36C(a2, a2[3]);
    dispatch thunk of TTRReminderProtocol.ttrAssignmentContext.getter();
    v12 = v24;
    sub_1000079B4(v23, &qword_100769988);
    if (v12)
    {
      swift_getObjectType();
      TTRRemindersListEditingSession.effectiveParentList.getter();
      if (v22)
      {
        sub_100005FD0(&v21, v23);
        sub_10000C36C(v23, v24);
        dispatch thunk of TTRListProtocol.ttrShareeContext.getter();
        if (v22)
        {
          sub_10000C36C(&v21, v22);
          v13 = dispatch thunk of TTRListShareeContextProtocol.assignableSharees.getter();
          if (v13 >> 62)
          {
            v14 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_100004758(&v21);
          if (v14)
          {
            *(a4 + 2) = 0;
            *a4 = 261;
            sub_100004758(v23);
            return;
          }
        }

        else
        {
          sub_1000079B4(&v21, &qword_100769990);
        }

        sub_100004758(v23);
      }

      else
      {
        sub_1000079B4(&v21, &unk_100775680);
      }
    }

    goto LABEL_39;
  }

  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) != 0 || *(a3 + *(type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0) + 36)) != 1)
  {
LABEL_39:
    *(a4 + 2) = 0;
    v8 = 512;
    goto LABEL_40;
  }

  *(a4 + 2) = 0;
  v8 = 262;
LABEL_40:
  *a4 = v8;
}

uint64_t sub_1000830B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100769978);
  __chkstk_darwin(v4 - 8);
  v152 = &v130[-v5];
  v6 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v6 - 8);
  v143 = &v130[-v7];
  v8 = sub_100058000(&qword_100775700);
  __chkstk_darwin(v8 - 8);
  v147 = &v130[-v9];
  v138 = type metadata accessor for TTRSharedWithYouHighlight();
  v142 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v130[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100058000(&qword_100769980);
  __chkstk_darwin(v11 - 8);
  v13 = &v130[-v12];
  v149 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
  v146 = *(v149 - 8);
  __chkstk_darwin(v149);
  v144 = &v130[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v154 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  v151 = *(v154 - 8);
  v15 = __chkstk_darwin(v154);
  v148 = &v130[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v145 = &v130[-v18];
  v19 = __chkstk_darwin(v17);
  v136 = &v130[-v20];
  v21 = __chkstk_darwin(v19);
  v140 = &v130[-v22];
  v23 = __chkstk_darwin(v21);
  v139 = &v130[-v24];
  v25 = __chkstk_darwin(v23);
  v135 = &v130[-v26];
  v27 = __chkstk_darwin(v25);
  v150 = &v130[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v130[-v30];
  __chkstk_darwin(v29);
  v33 = &v130[-v32];
  v153 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
  __chkstk_darwin(v153);
  v35 = &v130[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode(0);
  __chkstk_darwin(v36 - 8);
  v38 = &v130[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(0);
  __chkstk_darwin(v39);
  v41 = &v130[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100085C3C(a1, v38, type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration.Mode);
  v42 = sub_100058000(&qword_100780990);
  if ((*(*(v42 - 8) + 48))(v38, 1, v42) == 1)
  {
    v43 = *(type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration(0) + 20);
    v44 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v44 - 8) + 16))(v41, a1 + v43, v44);
    v45 = sub_1000845D4();
    v46 = 0;
    *&v41[v39[5]] = &_swiftEmptyArrayStorage;
    *&v41[v39[6]] = &_swiftEmptyArrayStorage;
    *&v41[v39[7]] = &off_100712438;
    *&v41[v39[8]] = v45;
    v47 = a1;
    goto LABEL_104;
  }

  v134 = v39;
  v141 = a1;
  v131 = v38[*(v42 + 48)];
  v48 = v35;
  sub_100086814(v38, v35, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo);
  v49 = [objc_opt_self() currentDevice];
  v50 = [v49 userInterfaceIdiom];

  if (v50 == 1)
  {
    v51 = static REMFeatureFlags.isSolariumEnabled.getter();
    v52 = v153;
    if (v51)
    {
      v133 = 0;
      v132 = &_swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    v53 = *(v2 + 64);
    v54 = *(v53 + 48);
    if (v54)
    {
      v55 = *(v53 + 56);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v56 = dispatch thunk of TTRRemindersListEditingSession.reminder.getter();
      __chkstk_darwin(v56);
      *&v130[-48] = v155;
      *&v130[-40] = v54;
      *&v130[-32] = v55;
      *&v130[-24] = v2;
      *&v130[-16] = v35;
      v132 = sub_10007D57C(sub_100085B80, &v130[-64], &off_100712410);
      swift_unknownObjectRelease();
      sub_100004758(v155);
      v133 = 0;
    }

    else
    {
      v57 = sub_1000821D8();
      v132 = sub_100082984(v57, v35);
      v133 = v57 == 3;
    }
  }

  else
  {
    v133 = 0;
    v132 = &_swiftEmptyArrayStorage;
  }

  v52 = v153;
LABEL_11:
  v155[0] = &_swiftEmptyArrayStorage;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v59 = *(Strong + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass);
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0;
  }

  v60 = &_swiftEmptyArrayStorage;
  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) != 0 && (v59 & 1) == 0)
  {
    v61 = *(v2 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName + 8);
    if (v61)
    {
      *v33 = *(v2 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName);
      v33[1] = v61;
      swift_storeEnumTagMultiPayload();

      v60 = sub_100546D88(0, 1, 1, &_swiftEmptyArrayStorage);
      v63 = v60[2];
      v62 = v60[3];
      if (v63 >= v62 >> 1)
      {
        v60 = sub_100546D88(v62 > 1, v63 + 1, 1, v60);
      }

      v60[2] = v63 + 1;
      sub_100086814(v33, v60 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v63, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    }
  }

  if ((v48[v52[10]] & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_100546D88(0, v60[2] + 1, 1, v60);
    }

    v64 = v151;
    v66 = v60[2];
    v65 = v60[3];
    if (v66 >= v65 >> 1)
    {
      v60 = sub_100546D88(v65 > 1, v66 + 1, 1, v60);
    }

    v60[2] = v66 + 1;
    sub_100086814(v31, v60 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v66, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  }

  v67 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_templatesItemVisibilityOverride;
  v68 = *(v2 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_templatesItemVisibilityOverride);
  v69 = v48;
  if (v68 == 2)
  {
    v70 = v48[v52[8]];
    v71 = v147;
    if ((v70 & 1) == 0)
    {
      v72 = v151;
      goto LABEL_41;
    }
  }

  else
  {
    v71 = v147;
    if ((v68 & 1) != 0 && v69[v52[8]] == 1)
    {
      if (qword_100766EB8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_100003E30(v73, qword_1007697F0);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "TTRIRemindersListNavigationBarPresenter: reset templatesItemVisibilityOverride", v76, 2u);
        v52 = v153;
      }

      *(v2 + v67) = 2;
    }
  }

  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_100546D88(0, v60[2] + 1, 1, v60);
  }

  v78 = v60[2];
  v77 = v60[3];
  v72 = v151;
  if (v78 >= v77 >> 1)
  {
    v60 = sub_100546D88(v77 > 1, v78 + 1, 1, v60);
  }

  v60[2] = v78 + 1;
  sub_100086814(v150, v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v78, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
LABEL_41:
  sub_10000794C(&v69[v52[5]], v13, &qword_100769980);
  if ((*(v146 + 48))(v13, 1, v149) == 1)
  {
    sub_1000079B4(v13, &qword_100769980);
    v79 = &v69[v52[6]];
    v80 = v143;
    sub_10000794C(v79, v143, &qword_1007693B0);
    v81 = type metadata accessor for TTRTemplatePublicLinkData();
    v82 = (*(*(v81 - 8) + 48))(v80, 1, v81);
    sub_1000079B4(v80, &qword_1007693B0);
    if (v82 == 1)
    {
      v83 = v134;
      goto LABEL_73;
    }

    v88 = v136;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v134;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_100546D88(0, v60[2] + 1, 1, v60);
    }

    v91 = v60[2];
    v90 = v60[3];
    if (v91 >= v90 >> 1)
    {
      v60 = sub_100546D88(v90 > 1, v91 + 1, 1, v60);
    }

    v60[2] = v91 + 1;
    v92 = v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v91;
    v93 = v88;
  }

  else
  {
    v84 = v144;
    sub_100086814(v13, v144, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
    if (*v84 == 1)
    {
      sub_10000794C(&v84[*(v149 + 28)], v71, &qword_100775700);
      v85 = v142;
      v86 = v138;
      v87 = (*(v142 + 48))(v71, 1, v138);
      v83 = v134;
      if (v87 == 1)
      {
        sub_1000079B4(v71, &qword_100775700);
      }

      else
      {
        v94 = v71;
        v95 = v137;
        (*(v85 + 32))(v137, v94, v86);
        (*(v85 + 16))(v135, v95, v86);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_100546D88(0, v60[2] + 1, 1, v60);
        }

        v97 = v60[2];
        v96 = v60[3];
        v98 = v142;
        if (v97 >= v96 >> 1)
        {
          v129 = sub_100546D88(v96 > 1, v97 + 1, 1, v60);
          v98 = v142;
          v60 = v129;
        }

        (*(v98 + 8))(v137, v86);
        v60[2] = v97 + 1;
        sub_100086814(v135, v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v97, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
      }
    }

    else
    {
      v83 = v134;
    }

    if (v84[1] != 1)
    {
      sub_1000867B4(v84, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
      goto LABEL_73;
    }

    if (v84[2] == 1)
    {
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_100546D88(0, v60[2] + 1, 1, v60);
      }

      v100 = v60[2];
      v99 = v60[3];
      if (v100 >= v99 >> 1)
      {
        v60 = sub_100546D88(v99 > 1, v100 + 1, 1, v60);
      }

      sub_1000867B4(v84, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
      v60[2] = v100 + 1;
      v92 = v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v100;
      v101 = &v156;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_100546D88(0, v60[2] + 1, 1, v60);
      }

      v103 = v60[2];
      v102 = v60[3];
      if (v103 >= v102 >> 1)
      {
        v60 = sub_100546D88(v102 > 1, v103 + 1, 1, v60);
      }

      sub_1000867B4(v84, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo);
      v60[2] = v103 + 1;
      v92 = v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v103;
      v101 = &v157;
    }

    v93 = *(v101 - 32);
  }

  sub_100086814(v93, v92, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
LABEL_73:
  v104 = swift_unknownObjectWeakLoadStrong();
  if (v104)
  {
    v105 = *(v104 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass);
    swift_unknownObjectRelease();
    if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
    {
      goto LABEL_84;
    }

LABEL_77:
    if ((v105 & 1) == 0 && v69[*(v153 + 36)] == 1)
    {
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_100546D88(0, v60[2] + 1, 1, v60);
      }

      v107 = v60[2];
      v106 = v60[3];
      if (v107 >= v106 >> 1)
      {
        v60 = sub_100546D88(v106 > 1, v107 + 1, 1, v60);
      }

      v60[2] = v107 + 1;
      sub_100086814(v145, v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v107, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    }

    goto LABEL_84;
  }

  v105 = 0;
  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    goto LABEL_77;
  }

LABEL_84:
  if (*v69 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_100546D88(0, v60[2] + 1, 1, v60);
    }

    v109 = v60[2];
    v108 = v60[3];
    if (v109 >= v108 >> 1)
    {
      v60 = sub_100546D88(v108 > 1, v109 + 1, 1, v60);
    }

    v60[2] = v109 + 1;
    sub_100086814(v148, v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v109, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  }

  v47 = v141;
  if (v131)
  {
    v110 = sub_100546C7C(0, 1, 1, &_swiftEmptyArrayStorage);
    v112 = *(v110 + 2);
    v111 = *(v110 + 3);
    if (v112 >= v111 >> 1)
    {
      v110 = sub_100546C7C((v111 > 1), v112 + 1, 1, v110);
    }

    *(v110 + 2) = v112 + 1;
    *&v110[16 * v112 + 32] = xmmword_10062E1C0;
  }

  else
  {
    v113 = &v69[*(v153 + 28)];
    if (*(v113 + 1) == 1)
    {
      v110 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v154 = *v113;
      v114 = v113[16];

      v110 = sub_100546C7C(0, 1, 1, &_swiftEmptyArrayStorage);
      v116 = *(v110 + 2);
      v115 = *(v110 + 3);
      if (v116 >= v115 >> 1)
      {
        v110 = sub_100546C7C((v115 > 1), v116 + 1, 1, v110);
      }

      *(v110 + 2) = v116 + 1;
      *&v110[16 * v116 + 32] = v154;
      if (v114)
      {
        v117 = sub_100546B80(0, 1, 1, &_swiftEmptyArrayStorage);
        v119 = *(v117 + 2);
        v118 = *(v117 + 3);
        v47 = v141;
        if (v119 >= v118 >> 1)
        {
          v117 = sub_100546B80((v118 > 1), v119 + 1, 1, v117);
        }

        *(v117 + 2) = v119 + 1;
        *&v117[2 * v119 + 32] = 2;
        v155[0] = v117;
      }

      else
      {
        v47 = v141;
      }
    }
  }

  v120 = sub_1000845D4();
  sub_100081434(v120);
  v121 = *(type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration(0) + 20);
  v122 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v122 - 8) + 16))(v41, v47 + v121, v122);
  v123 = v155[0];
  *&v41[v83[5]] = v132;
  *&v41[v83[6]] = v60;
  *&v41[v83[7]] = v110;
  *&v41[v83[8]] = v123;
  sub_1000867B4(v69, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo);
  v46 = v133;
LABEL_104:
  *(v2 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions) = v46;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v124 = sub_100110FE8(v41);
    swift_unknownObjectRelease();
  }

  else
  {
    v124 = 0;
  }

  sub_1000867B4(v41, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  v125 = v152;
  sub_100085C3C(v47, v152, type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration);
  v126 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration(0);
  (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
  v127 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_lastSetConfiguration;
  swift_beginAccess();
  sub_10000D184(v125, v2 + v127, &qword_100769978);
  swift_endAccess();
  return v124 & 1;
}

_OWORD *sub_1000845D4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass);
    swift_unknownObjectRelease();
    if (v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  v3 = *(v0 + 64);
  v4 = *(v3 + 112);
  v5 = *(v3 + 113);
  if ((v4 & 1) == 0 && !*(v3 + 113))
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100058000(&qword_1007699E8);
  result = swift_allocObject();
  result[1] = xmmword_10062D400;
  if (v5)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  *(result + 16) = v7 | v4;
  return result;
}

uint64_t sub_100084674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for TimeZone();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v7;
  v4[15] = v6;

  return _swift_task_switch(sub_100084768, v7, v6);
}

uint64_t sub_100084768()
{
  v1 = [objc_opt_self() daemonUserDefaults];
  v2 = [v1 timeZoneOverrideEnabled];

  if (v2)
  {
    static TimeZone.ttr_default.getter();
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_100084930;

    return TimeZone.defaultCityName()();
  }

  else
  {

    static Task<>.checkCancellation()();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = (Strong + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName);
      if (*(Strong + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName + 8))
      {
        *v5 = 0;
        v5[1] = 0;

        sub_100081EF8(0xD000000000000016, 0x800000010066F980);
      }
    }

    else
    {
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100084930(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_100084BE4;
  }

  else
  {
    v6[18] = a2;
    v6[19] = a1;
    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_100084A64;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100084A64()
{

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[11] + 8))(v0[12], v0[10]);
  static Task<>.checkCancellation()();
  if (v3)
  {

    v4 = v0[1];
    goto LABEL_17;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = (Strong + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName);
    v7 = *(Strong + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName + 8);
    if (v7)
    {
      if (v2)
      {
        v8 = *v6 == v1 && v7 == v2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

LABEL_15:

          goto LABEL_16;
        }
      }
    }

    else if (!v2)
    {
      goto LABEL_15;
    }

    *v6 = v1;
    v6[1] = v2;

    sub_100081EF8(0xD000000000000016, 0x800000010066F980);
    goto LABEL_15;
  }

LABEL_16:

  v4 = v0[1];
LABEL_17:

  return v4();
}

uint64_t sub_100084BE4()
{
  v18 = v0;

  if (qword_100766EB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_1007697F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v17);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve default city name for time zone override {error: %s", v4, 0xCu);
    sub_100004758(v5);
  }

  v9 = TimeZone.identifier.getter();
  v11 = v10;

  (*(v0[11] + 8))(v0[12], v0[10]);
  static Task<>.checkCancellation()();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_16;
  }

  v13 = (Strong + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName);
  v14 = *(Strong + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_timeZoneOverrideCityName + 8);
  if (!v14)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v13 = v9;
    v13[1] = v11;

    sub_100081EF8(0xD000000000000016, 0x800000010066F980);
    goto LABEL_15;
  }

  if (!v11 || (*v13 != v9 || v14 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:

  v15 = v0[1];

  return v15();
}

uint64_t sub_100084EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000794C(a3, v22 - v9, &qword_10076BE10);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000079B4(v10, &qword_10076BE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000079B4(a3, &qword_10076BE10);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000079B4(a3, &qword_10076BE10);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10008516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000794C(a3, v22 - v9, &qword_10076BE10);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000079B4(v10, &qword_10076BE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;
      type metadata accessor for TTRRemindersListViewModel.Item();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000079B4(a3, &qword_10076BE10);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000079B4(a3, &qword_10076BE10);
  type metadata accessor for TTRRemindersListViewModel.Item();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100085424()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_10003B788(v0 + 48);
  swift_unknownObjectRelease();
  sub_100004758(v0 + 80);

  swift_unknownObjectRelease();
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_lastSetConfiguration, &qword_100769978);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_lastSetReminderEditingItemsInfoSource, &qword_1007699A8);

  return v0;
}

uint64_t sub_1000854F8()
{
  sub_100085424();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListNavigationBarPresenter()
{
  result = qword_100769870;
  if (!qword_100769870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000855A4()
{
  sub_100085704(319, &qword_100769880, type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration);
  if (v0 <= 0x3F)
  {
    sub_100085704(319, &unk_100769888, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100085704(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100085758()
{
  v1 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100769A00);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_100058000(&qword_1007699A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1 && (static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = v4;
    if (Strong)
    {
      v17 = *(v0 + 40);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v0, &off_100713C08, ObjectType, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v2 + 56))(v13, 1, 1, v1);
    }

    v19 = OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_lastSetReminderEditingItemsInfoSource;
    swift_beginAccess();
    v20 = *(v5 + 48);
    sub_10000794C(v0 + v19, v7, &qword_1007699A8);
    sub_10000794C(v13, &v7[v20], &qword_1007699A8);
    v21 = *(v2 + 48);
    if (v21(v7, 1, v1) == 1)
    {
      if (v21(&v7[v20], 1, v1) == 1)
      {
        sub_1000079B4(v7, &qword_1007699A8);
LABEL_13:
        sub_1000079B4(v13, &qword_1007699A8);
        return;
      }
    }

    else
    {
      sub_10000794C(v7, v10, &qword_1007699A8);
      if (v21(&v7[v20], 1, v1) != 1)
      {
        v22 = v24;
        sub_100086814(&v7[v20], v24, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
        v23 = sub_1005F4640(v10, v22);
        sub_1000867B4(v22, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
        sub_1000867B4(v10, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
        sub_1000079B4(v7, &qword_1007699A8);
        if (v23)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      sub_1000867B4(v10, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ReminderPropertyEditingItemsInfoSource);
    }

    sub_1000079B4(v7, &qword_100769A00);
LABEL_12:
    sub_100081EF8(0xD000000000000015, 0x800000010066F9A0);
    goto LABEL_13;
  }
}

uint64_t sub_100085BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007699A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100085CA4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_100085CD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TimeZone() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10001AA3C;

  return sub_1004B3790(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

void *sub_100085E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for TTRLocationQuickPickItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = v7;
  v56 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100058000(&qword_1007699C8);
  __chkstk_darwin(v50);
  v9 = &v39 - v8;
  v10 = sub_100058000(&qword_100775720);
  v11 = __chkstk_darwin(v10 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v17 = &v39 - v16;
  v18 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v18)
  {
    v46 = v9;
    v39 = v3;
    v64 = &_swiftEmptyArrayStorage;
    v41 = v15;
    specialized ContiguousArray.reserveCapacity(_:)();
    v20 = *(v6 + 80);
    v21 = a1 + ((v20 + 32) & ~v20);
    v48 = sub_100003540(0, &qword_10076BA60);
    v22 = (v6 + 16);
    v44 = (v6 + 48);
    v45 = (v6 + 56);
    v54 = (v6 + 32);
    v40 = (v6 + 8);
    v49 = v20;
    v43 = (v20 + 24) & ~v20;
    v42 = *(v6 + 72);
    v55 = v14;
    v57 = v17;
    v47 = (v6 + 16);
    while (1)
    {
      v63 = v18;
      v65 = TTRLocationQuickPickItem.titleAndImageForMenuItem()();
      object = v65.title._object;
      countAndFlagsBits = v65.title._countAndFlagsBits;
      isa = v65.image.value.super.isa;
      sub_10000794C(v52, v17, &qword_100775720);
      v30 = *v22;
      v62 = v21;
      v58 = v30;
      v30(v14, v21, v5);
      (*v45)(v14, 0, 1, v5);
      v31 = *(v50 + 48);
      v32 = v46;
      sub_10000794C(v17, v46, &qword_100775720);
      sub_10000794C(v14, v32 + v31, &qword_100775720);
      v33 = v17;
      v34 = *v44;
      if ((*v44)(v32, 1, v5) == 1)
      {
        sub_1000079B4(v14, &qword_100775720);
        sub_1000079B4(v33, &qword_100775720);
        v35 = v34(v32 + v31, 1, v5);
        v23 = v47;
        v24 = v62;
        v25 = v63;
        if (v35 == 1)
        {
          sub_1000079B4(v32, &qword_100775720);
          goto LABEL_5;
        }
      }

      else
      {
        v36 = v41;
        sub_10000794C(v32, v41, &qword_100775720);
        if (v34(v32 + v31, 1, v5) != 1)
        {
          v37 = v56;
          (*v54)(v56, v32 + v31, v5);
          sub_1000864DC(&qword_1007699C0, &type metadata accessor for TTRLocationQuickPickItem);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v5);
          sub_1000079B4(v55, &qword_100775720);
          sub_1000079B4(v57, &qword_100775720);
          v38(v36, v5);
          sub_1000079B4(v32, &qword_100775720);
          v23 = v47;
          v24 = v62;
          v25 = v63;
          goto LABEL_5;
        }

        sub_1000079B4(v14, &qword_100775720);
        sub_1000079B4(v57, &qword_100775720);
        (*v40)(v36, v5);
        v23 = v47;
        v24 = v62;
        v25 = v63;
      }

      sub_1000079B4(v32, &qword_1007699C8);
LABEL_5:
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = v56;
      v58(v56, v24, v5);
      v28 = v43;
      v29 = swift_allocObject();
      *(v29 + 16) = v26;
      (*v54)((v29 + v28), v27, v5);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = v23;
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 = v24 + v42;
      v18 = v25 - 1;
      v14 = v55;
      v17 = v57;
      if (!v18)
      {
        return v64;
      }
    }
  }

  return result;
}

uint64_t sub_1000864DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100086524(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10008661C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_1000866B8(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100086700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_100084674(a1, v4, v5, v6);
}

uint64_t sub_1000867B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100086814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000868E8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100086D08()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100769A10);
  v1 = sub_100003E30(v0, qword_100769A10);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100086DDC()
{
  swift_beginAccess();
  type metadata accessor for TTRITreeViewNode();

  swift_getWitnessTable();
  v0 = Dictionary.isEmpty.getter();

  if (v0 & 1) != 0 && (, v1 = Dictionary.isEmpty.getter(), , (v1))
  {
    swift_beginAccess();

    sub_100058000(&qword_100769AB0);
    v2 = Dictionary.isEmpty.getter();

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_100086F60(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  type metadata accessor for TTRITreeViewNode();

  swift_getWitnessTable();
  Dictionary.subscript.getter();

  swift_endAccess();
  if (v10)
  {
    if ((a5 & 1) == 0)
    {
      sub_1002EA030(a4, 0, a3);
    }
  }

  else if (a5)
  {
    sub_100460B78(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_100058000(qword_100769AC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    sub_100460B78(inited);
    swift_setDeallocating();
  }

  swift_beginAccess();
  type metadata accessor for TTRITreeViewNode();

  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

uint64_t sub_1000872C8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v17 = a1;
  v9 = *(a5 - 8);
  __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v16 - v13;
  (*(v9 + 16))(v11, v17, a5);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v19)
    {
      break;
    }

    sub_100086F60(0, v19, a2, a3, a4 & 1);
  }

  return (*(v18 + 8))(v14, AssociatedTypeWitness);
}

double sub_1000874E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7[4];
  v66 = *(v7 + 40);
  v62 = *(v7 + 1);
  v67 = *v7;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v68 = *(v67 + 80);
  sub_10008A480(v13, &v108);

  v58 = a4;
  sub_10008A480(v14, v113);

  v57 = a3;
  sub_10008A848(v113, &v108, v62, *(&v62 + 1), v12, v66, a1, a2, v114, a3, a4, v68, *(&v68 + 1));

  v127 = v113[0];
  v15 = type metadata accessor for TTRITreeViewNode();
  WitnessTable = swift_getWitnessTable();
  v63 = type metadata accessor for Set();
  v60 = *(*(v63 - 8) + 8);
  v60(&v127, v63);
  v126 = v113[1];
  v60(&v126, v63);
  v125 = v113[2];
  v60(&v125, v63);
  v124 = v113[3];
  v60(&v124, v63);
  v123 = v113[4];
  v60(&v123, v63);
  v53 = v114[4];
  v122 = v114[1];
  v59 = v114[2];
  v121 = v114[3];
  v120 = v114[0];
  swift_beginAccess();

  v51 = sub_10008B584();

  v119 = v108;
  v135[0] = v108;
  v16 = v7[10];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = WitnessTable;
  *(v17 + 32) = v16;
  *(v17 + 40) = 1;
  v105 = sub_10008B9D0;
  v106 = v17;

  v103 = sub_10008876C(v62, *(&v62 + 1), v12, v66);
  v104 = v18;

  swift_getWitnessTable();
  v52 = sub_100088380();

  v60(&v119, v63);

  v135[0] = v120;
  v19 = v7[11];
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = WitnessTable;
  *(v20 + 32) = v19;
  *(v20 + 40) = 1;
  v101 = sub_10008B9D0;
  v102 = v20;

  sub_100088800(v62, *(&v62 + 1), v12, v66);
  type metadata accessor for IndexPath();
  sub_10008B8C8(&unk_100772710);
  v50 = sub_100088380();

  v60(&v120, v63);

  v118 = v111;
  v135[0] = v111;
  v21 = v7[10];
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  *(v22 + 24) = WitnessTable;
  *(v22 + 32) = v21;
  *(v22 + 40) = 3;
  v99 = sub_10008B9D0;
  v100 = v22;

  v97 = sub_100088894(v62, *(&v62 + 1), v12, v66);
  v98 = v23;

  v49 = sub_100088380();

  v60(&v118, v63);

  v135[0] = v121;
  v24 = v7[11];
  v25 = swift_allocObject();
  *(v25 + 16) = v15;
  *(v25 + 24) = WitnessTable;
  *(v25 + 32) = v24;
  *(v25 + 40) = 3;
  v95 = sub_10008B9D0;
  v96 = v25;

  sub_100088928(v62, *(&v62 + 1), v12, v66);
  v48 = sub_100088380();

  v60(&v121, v63);

  v117 = v109;
  v135[0] = v109;
  v26 = v7[10];
  v27 = swift_allocObject();
  *(v27 + 16) = v15;
  *(v27 + 24) = WitnessTable;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v93 = sub_10008B9D0;
  v94 = v27;

  v91 = sub_1000889BC(a1, a2, v57, v58);
  v92 = v28;

  v47 = sub_100088380();

  v60(&v117, v63);

  v135[0] = v122;
  v29 = v7[11];
  v30 = swift_allocObject();
  *(v30 + 16) = v15;
  *(v30 + 24) = WitnessTable;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v89 = sub_10008B9D0;
  v90 = v30;

  sub_100088A50(a1, a2, v57, v58);
  v65 = sub_100088380();

  v60(&v122, v63);

  v116 = v110;
  v135[0] = v110;
  v81 = v68;
  v82 = v62;
  v83 = v12;
  v84 = v66;
  v85 = a1;
  v86 = a2;
  v87 = v57;
  v88 = v58;

  sub_100058000(&qword_100769AA8);
  v64 = Sequence.compactMap<A>(_:)();
  v60(&v119, v63);
  v60(&v117, v63);
  v60(&v116, v63);
  v60(&v118, v63);
  v115 = v112;
  v60(&v115, v63);
  v60(&v116, v63);
  v135[0] = v59;
  v73 = v68;
  v74 = v62;
  v75 = v12;
  v76 = v66;
  v77 = a1;
  v78 = a2;
  v79 = v57;
  v80 = v58;

  sub_100058000(&unk_10076B940);
  v31 = Sequence.compactMap<A>(_:)();

  v32 = swift_allocObject();
  v32[2] = v15;
  v32[3] = WitnessTable;
  v32[4] = v51;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10008B854;
  *(v33 + 24) = v32;

  sub_100058000(&qword_100769AB0);
  v135[0] = v51;
  v70 = v68;
  v71 = sub_10008C184;
  v72 = v33;
  v34 = type metadata accessor for Dictionary.Keys();
  v35 = sub_100058000(&qword_100769AB8);
  v36 = swift_getWitnessTable();
  v38 = sub_1000868E8(sub_10008B780, v69, v34, v35, &type metadata for Never, v36, &protocol witness table for Never, v37);

  swift_bridgeObjectRelease_n();

  v135[0] = v53;
  v39 = Set.union<A>(_:)();

  *&v128 = v47;
  *(&v128 + 1) = v52;
  *&v129 = v49;
  *(&v129 + 1) = v64;
  *&v130 = v65;
  *(&v130 + 1) = v50;
  *&v131 = v48;
  *(&v131 + 1) = v31;
  v132 = v38;
  v133 = a5;
  v134 = a6;
  v135[0] = v47;
  v135[1] = v52;
  v135[2] = v49;
  v135[3] = v64;
  v135[4] = v65;
  v135[5] = v50;
  v135[6] = v48;
  v135[7] = v31;
  v135[8] = v38;
  v135[9] = a5;
  v135[10] = a6;
  sub_10008B7A4(&v128, v107);
  sub_10008B800(v135);
  v40 = v132;
  v41 = v133;
  v42 = v134;
  result = *&v128;
  v44 = v129;
  v45 = v130;
  v46 = v131;
  *a7 = v128;
  *(a7 + 16) = v44;
  *(a7 + 32) = v45;
  *(a7 + 48) = v46;
  *(a7 + 64) = v40;
  *(a7 + 72) = v41;
  *(a7 + 80) = v42;
  *(a7 + 88) = v39;
  return result;
}

uint64_t sub_10008840C@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33[1] = a4;
  v34 = a3;
  v37 = a6;
  v35 = a2;
  v36 = a9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v33 - v14;
  v16 = *(a5 - 8);
  v17 = __chkstk_darwin(v13);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v33 - v20;
  v22 = *a1;
  v35(v22);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    v23 = v37;
    (*(v12 + 8))(v15, v11);
    if (qword_100766EC0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100003E30(v24, qword_100769A10);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to look up index/indexPath", v27, 2u);
    }

    v28 = 1;
    v29 = v23;
  }

  else
  {
    (*(v16 + 32))(v21, v15, a5);
    (*(v16 + 16))(v19, v21, a5);
    v30 = v34(v22);
    (*(v16 + 8))(v21, a5);
    v29 = v37;
    sub_1005D325C(v19, v30, a5, v37);
    v28 = 0;
  }

  v31 = type metadata accessor for TTRITreeViewTableUpdates.IndexAndAnimation();
  return (*(*(v31 - 8) + 56))(v29, v28, 1, v31);
}

uint64_t (*sub_10008876C(uint64_t a1, uint64_t a2, uint64_t a3, char a4))()
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  return sub_10008C18C;
}

uint64_t (*sub_100088800(uint64_t a1, uint64_t a2, uint64_t a3, char a4))@<X0>(uint64_t a1@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  return sub_10008B910;
}

uint64_t (*sub_100088894(uint64_t a1, uint64_t a2, uint64_t a3, char a4))()
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  return sub_10008B90C;
}

uint64_t (*sub_100088928(uint64_t a1, uint64_t a2, uint64_t a3, char a4))@<X0>(uint64_t@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  return sub_10008C188;
}

uint64_t (*sub_1000889BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4))()
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  return sub_10008C18C;
}

uint64_t (*sub_100088A50(uint64_t a1, uint64_t a2, uint64_t a3, char a4))@<X0>(uint64_t@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  return sub_10008C188;
}

uint64_t sub_100088AE4@<X0>(uint64_t a1@<X8>)
{
  sub_10015DA7C();
  if (v2 & 1) != 0 || (sub_10015DA7C(), (v3))
  {
    if (qword_100766EC0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100769A10);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cannot lookup from, to for moved section", v7, 2u);
    }

    v8 = sub_100058000(&qword_100769AA8);
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    FromTo.init(_:_:)();
    v10 = sub_100058000(&qword_100769AA8);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_100088CDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = *(a1 + 16);
  v42 = *(a1 + 24);
  v3 = *(a1 + 32);
  v40 = *(a1 + 40);
  v41 = v3;
  v39 = *(a1 + 48);
  v38 = *(a1 + 56);
  v4 = sub_100058000(&unk_100771B10);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v35 = &v34 - v15;
  v16 = __chkstk_darwin(v14);
  v36 = &v34 - v17;
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  sub_10015DB40(v42, v9);
  v20 = v11[6];
  if (v20(v9, 1, v10) == 1)
  {
    v7 = v9;
  }

  else
  {
    v43 = v2;
    v21 = v9;
    v22 = v11[4];
    v22(v19, v21, v10);
    sub_10015DB40(v38, v7);
    if (v20(v7, 1, v10) != 1)
    {
      v29 = v36;
      v22(v36, v7, v10);
      v30 = v11[2];
      v30(v35, v19, v10);
      v30(v37, v29, v10);
      sub_10008B8C8(&qword_100769AC0);
      v23 = v44;
      FromTo.init(_:_:)();
      v31 = v11[1];
      v31(v29, v10);
      v31(v19, v10);
      v28 = 0;
      goto LABEL_11;
    }

    (v11[1])(v19, v10);
  }

  sub_10008B860(v7);
  v23 = v44;
  if (qword_100766EC0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100769A10);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Cannot lookup from, to for moved cell", v27, 2u);
  }

  v28 = 1;
LABEL_11:
  v32 = sub_100058000(&unk_10076B940);
  return (*(*(v32 - 8) + 56))(v23, v28, 1, v32);
}

uint64_t sub_10008915C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v13 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v12 - v8;
  v10 = *a1;
  sub_10023A594(v7);
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  result = v13(v10);
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_1000892BC()
{
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  if ((Set.isEmpty.getter() & 1) == 0 || (Set.isEmpty.getter() & 1) == 0 || (Set.isEmpty.getter() & 1) == 0 || (Set.isEmpty.getter() & 1) == 0)
  {
    return 0;
  }

  return Set.isEmpty.getter();
}

uint64_t sub_100089394()
{
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  type metadata accessor for Set();
  Set.subtract(_:)();
  Set.subtract(_:)();
  Set.subtract(_:)();
  Set.subtract(_:)();
  return Set.subtract(_:)();
}

uint64_t sub_100089458()
{
  type metadata accessor for TTRITreeViewNode();

  swift_getWitnessTable();
  type metadata accessor for Set();
  swift_getWitnessTable();
  Set.formUnion<A>(_:)();

  Set.formUnion<A>(_:)();

  Set.formUnion<A>(_:)();

  Set.formUnion<A>(_:)();

  return Set.formUnion<A>(_:)();
}

uint64_t sub_1000895B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  v2 = Set.init()();
  v3 = Set.init()();
  v4 = Set.init()();
  v5 = Set.init()();
  result = Set.init()();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = result;
  return result;
}

uint64_t sub_100089674(uint64_t a1, uint64_t a2)
{
  result = sub_10015DCCC();
  if (result)
  {
    v4 = result;

    return v4 == a2;
  }

  return result;
}

BOOL sub_1000896BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10015DCCC();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;

  return v4 != a2;
}

uint64_t sub_10008970C(uint64_t a1, uint64_t a2)
{
  result = sub_10015DCCC();
  if (result)
  {
    v4 = result;

    return v4 == a2;
  }

  return result;
}

uint64_t sub_100089754(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if ((sub_10008970C(*a1, a3) & 1) == 0 || !sub_1000896BC(v5, a3))
  {
    return 0;
  }

  type metadata accessor for TTRITreeViewNode();

  swift_getWitnessTable();
  type metadata accessor for Set();
  Set.insert(_:)();

  return 1;
}

uint64_t sub_1000898B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v4 = sub_10008970C(*a1, a3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000896BC(v8, a3);
    v4 = v5;
    if (v6)
    {
      type metadata accessor for TTRITreeViewNode();

      swift_getWitnessTable();
      type metadata accessor for Set();
      Set.insert(_:)();

      v4 = v5;
    }
  }

  return v4 & 1;
}

uint64_t sub_100089A24()
{
  type metadata accessor for TTRITreeViewNode();
  swift_getWitnessTable();
  if (Set.contains(_:)() & 1) != 0 || (Set.contains(_:)())
  {
    v0 = 0;
  }

  else
  {
    v0 = Set.contains(_:)() ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_100089B1C()
{

  return v0;
}

uint64_t sub_100089B90()
{
  sub_100089B1C();

  return swift_deallocClassInstance();
}

void *assignWithCopy for NodeChange(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for NodeChange(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t sub_100089C84(uint64_t a1, unsigned __int8 a2)
{
  Dictionary.subscript.getter();
  if (!v7)
  {
    return 100;
  }

  if (*(v7 + 16) && (v3 = sub_1003AB368(a2), (v4 & 1) != 0))
  {
    v5 = *(*(v7 + 56) + 8 * v3);
  }

  else
  {
    v5 = 100;
  }

  return v5;
}

uint64_t sub_100089D08()
{
  sub_100058000(&qword_100769AB0);
  Dictionary.subscript.getter();
  if (v3 & 1) != 0 || (v2)
  {
    return 100;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100089D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100089DEC(a1, v6, a2, a3);
}

unint64_t sub_100089DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_100089F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_100089D90(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_10008A260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = _swiftEmptyArrayStorage;
  *(v6 + 72) = 0;
  v7 = type metadata accessor for TTRITreeViewNode();
  swift_getTupleTypeMetadata2();
  v8 = static Array._allocateUninitialized(_:)();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_100089F74(v8, v7, &type metadata for NodeChange, WitnessTable);

  v11 = static Array._allocateUninitialized(_:)();
  v12 = sub_100089F74(v11, v7, &type metadata for NodeChange, WitnessTable);

  *(v6 + 80) = v10;
  *(v6 + 88) = v12;
  sub_100058000(&qword_100769AB0);
  *(v6 + 96) = Dictionary.init()();
  *(v6 + 16) = sub_10015DA28();
  *(v6 + 24) = v13;
  *(v6 + 32) = v14;
  *(v6 + 40) = v15 & 1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t sub_10008A480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000895B0(v20);
  v18 = v20[1];
  v19 = v20[0];
  v16 = v20[3];
  v17 = v20[2];
  v15 = v20[4];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(a1 + 56) + 16 * (v11 | (v10 << 6)) + 8);

    v13 = sub_10015DB58();
    v14 = sub_10015DB58();
    if (v13)
    {
      if ((v14 & 1) == 0 || (~v12 & 3) != 0)
      {
LABEL_4:
        type metadata accessor for TTRITreeViewNode();
        swift_getWitnessTable();
        type metadata accessor for Set();
      }

      else
      {
        type metadata accessor for TTRITreeViewNode();

        swift_getWitnessTable();
        type metadata accessor for Set();
        Set.insert(_:)();
      }

      Set.insert(_:)();
      goto LABEL_6;
    }

    if (v14)
    {
      goto LABEL_4;
    }

LABEL_6:

    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *a2 = v19;
      a2[1] = v18;
      a2[2] = v17;
      a2[3] = v16;
      a2[4] = v15;
      return result;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008A848@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  v156 = a8;
  v157 = a3;
  v159 = a7;
  v160 = a5;
  v158 = a4;
  v206 = a6;
  v205 = a11;
  sub_1000895B0(v172);
  v16 = *a1;
  v194 = a1[1];
  v195 = v16;
  v17 = a1[3];
  v193 = a1[2];
  v192 = v17;
  v191 = a1[4];
  v170 = v194;
  v171 = v16;
  v168 = v17;
  v169 = v193;
  v167 = v191;
  v151 = type metadata accessor for TTRITreeViewNode();
  WitnessTable = swift_getWitnessTable();
  v18 = type metadata accessor for Set();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v199, &v195, v18);
  v20(v199, &v194, v18);
  v20(v199, &v193, v18);
  v20(v199, &v192, v18);
  v143 = v20;
  v144 = v19 + 16;
  v20(v199, &v191, v18);
  v145 = a12;
  v146 = a13;
  v142 = type metadata accessor for TTRITreeViewBatchUpdatesContext.EffectiveChanges();
  if (sub_1000892BC())
  {
    v21 = *(v19 + 8);
    v21(&v191, v18);
    v21(&v192, v18);
    v21(&v193, v18);
    v21(&v194, v18);
    result = (v21)(&v195, v18);
LABEL_71:
    v125 = v173;
    v126 = v172[1];
    *a9 = v172[0];
    *(a9 + 16) = v126;
    *(a9 + 32) = v125;
    return result;
  }

  v128 = a9;
  v23 = *a2;
  v24 = a2[1];
  v140 = *a2 & 0xC000000000000001;
  v137 = v24 & 0xC000000000000001;
  v25 = a2[3];
  v135 = v25 & 0xC000000000000001;
  v26 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 < 0)
  {
    v26 = v23;
  }

  v134 = v26;
  v161 = a10;
  v162 = v18;
  v141 = v23;
  v131 = v23 + 56;
  if (v24 < 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = v24 & 0xFFFFFFFFFFFFFF8;
  }

  v130 = v24 + 56;
  v28 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v25 < 0)
  {
    v28 = v25;
  }

  v132 = v28;
  v133 = v27;
  v136 = v25;
  v129 = v25 + 56;
  v138 = v24;
  v139 = (v19 + 8);
LABEL_12:
  sub_1000895B0(v174);
  v164 = v174[0];
  v165 = v174[1];
  v166 = v175;
  if (v140)
  {

    __CocoaSet.makeIterator()();
    result = Set.Iterator.init(_cocoa:)();
    v34 = v176;
    v33 = v177;
    v35 = v178;
    v36 = v179;
    v37 = v180;
  }

  else
  {
    v34 = v141;
    v38 = -1 << *(v141 + 32);
    v35 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v37 = v40 & *(v141 + 56);

    v36 = 0;
    v33 = v131;
  }

  v154 = v35;
  v155 = v34;
  if (v34 < 0)
  {
    goto LABEL_21;
  }

  while (v37)
  {
    v41 = v37;
    v42 = v36;
LABEL_28:
    v45 = (v41 - 1) & v41;
    v44 = *(*(v34 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));

    if (!v44)
    {
LABEL_31:
      sub_10008BA48();
      if (v137)
      {

        __CocoaSet.makeIterator()();
        result = Set.Iterator.init(_cocoa:)();
        v51 = v181;
        v52 = v182;
        v53 = v183;
        v54 = v184;
        v55 = v185;
      }

      else
      {
        v51 = v138;
        v56 = -1 << *(v138 + 32);
        v57 = ~v56;
        v58 = -v56;
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        else
        {
          v59 = -1;
        }

        v55 = v59 & *(v138 + 56);

        v53 = v57;
        v54 = 0;
        v52 = v130;
      }

      v147 = v53;
      v60 = (v53 + 64) >> 6;
      v152 = v51;
      v149 = v60;
      v150 = v52;
      if (v51 < 0)
      {
        goto LABEL_40;
      }

      while (v55)
      {
        v61 = v55;
        v62 = v54;
LABEL_47:
        v64 = (v61 - 1) & v61;

        if (!v63)
        {
          goto LABEL_50;
        }

        while (1)
        {
          v154 = &v127;
          v66 = __chkstk_darwin(v63);
          v153 = v66;
          v68 = v157;
          v67 = v158;
          *(&v127 - 10) = v157;
          *(&v127 - 9) = v67;
          v69 = v159;
          v70 = v160;
          *(&v127 - 8) = v160;
          *(&v127 - 56) = v71;
          v72 = v156;
          *(&v127 - 6) = v69;
          *(&v127 - 5) = v72;
          v73 = v161;
          *(&v127 - 4) = v161;
          *(&v127 - 24) = v74;
          *(&v127 - 2) = v66;
          v155 = v64;
          v75 = Set.removeAll(where:)();
          v154 = &v127;
          __chkstk_darwin(v75);
          *(&v127 - 10) = v68;
          *(&v127 - 9) = v67;
          *(&v127 - 8) = v70;
          *(&v127 - 56) = v76;
          *(&v127 - 6) = v69;
          *(&v127 - 5) = v72;
          v60 = v149;
          v52 = v150;
          *(&v127 - 4) = v73;
          v77 = v152;
          v78 = v153;
          *(&v127 - 24) = v79;
          *(&v127 - 2) = v78;
          *(&v127 - 1) = &v164;
          Set.removeAll(where:)();

          v55 = v155;
          v54 = v62;
          if ((v77 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_40:
          if (__CocoaSet.Iterator.next()())
          {
            _forceBridgeFromObjectiveC<A>(_:_:)();
            swift_unknownObjectRelease();
            v63 = v163;
            v62 = v54;
            v64 = v55;
            if (v163)
            {
              continue;
            }
          }

          goto LABEL_50;
        }
      }

      v65 = v54;
      while (1)
      {
        v62 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_73;
        }

        if (v62 >= v60)
        {
          break;
        }

        v61 = *(v52 + 8 * v62);
        ++v65;
        if (v61)
        {
          goto LABEL_47;
        }
      }

LABEL_50:
      sub_10008BA48();
      if (v135)
      {

        __CocoaSet.makeIterator()();
        result = Set.Iterator.init(_cocoa:)();
        v154 = v186;
        v80 = v187;
        v81 = v188;
        v82 = v189;
        v83 = v190;
      }

      else
      {
        v84 = -1 << *(v136 + 32);
        v85 = ~v84;
        v86 = -v84;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        else
        {
          v87 = -1;
        }

        v83 = v87 & *(v136 + 56);

        v81 = v85;
        v82 = 0;
        v154 = result;
        v80 = v129;
      }

      v147 = v81;
      v88 = (v81 + 64) >> 6;
      v149 = v88;
      v150 = v80;
      if (v154 < 0)
      {
        goto LABEL_59;
      }

      while (1)
      {
        if (!v83)
        {
          v94 = v82;
          while (1)
          {
            v90 = v94 + 1;
            if (__OFADD__(v94, 1))
            {
              goto LABEL_74;
            }

            if (v90 >= v88)
            {
              goto LABEL_11;
            }

            v89 = *(v80 + 8 * v90);
            ++v94;
            if (v89)
            {
              goto LABEL_66;
            }
          }
        }

        v89 = v83;
        v90 = v82;
LABEL_66:
        v93 = (v89 - 1) & v89;
        v92 = *(*(v154 + 48) + ((v90 << 9) | (8 * __clz(__rbit64(v89)))));

        if (!v92)
        {
          break;
        }

        while (1)
        {
          __chkstk_darwin(v91);
          v95 = v158;
          *(&v127 - 10) = v157;
          *(&v127 - 9) = v95;
          v96 = v95;
          *(&v127 - 8) = v160;
          *(&v127 - 56) = v97;
          v98 = v159;
          *(&v127 - 6) = v159;
          v99 = v98;
          v100 = v156;
          *(&v127 - 5) = v156;
          v101 = v100;
          *(&v127 - 4) = v161;
          *(&v127 - 24) = v102;
          *(&v127 - 2) = v92;
          v153 = v93;
          v103 = Set.removeAll(where:)();
          v152 = &v127;
          __chkstk_darwin(v103);
          v104 = v92;
          v155 = v92;
          v105 = v157;
          *(&v127 - 10) = v157;
          *(&v127 - 9) = v96;
          v106 = v160;
          *(&v127 - 8) = v160;
          *(&v127 - 56) = v107;
          *(&v127 - 6) = v99;
          *(&v127 - 5) = v101;
          v108 = v99;
          *(&v127 - 4) = v161;
          *(&v127 - 24) = v109;
          *(&v127 - 2) = v104;
          v110 = Set.removeAll(where:)();
          v152 = &v127;
          __chkstk_darwin(v110);
          *(&v127 - 10) = v105;
          *(&v127 - 9) = v96;
          v111 = v105;
          *(&v127 - 8) = v106;
          *(&v127 - 56) = v112;
          *(&v127 - 6) = v108;
          *(&v127 - 5) = v101;
          v113 = v101;
          v114 = v161;
          *(&v127 - 4) = v161;
          *(&v127 - 24) = v115;
          *(&v127 - 2) = v155;
          v116 = Set.removeAll(where:)();
          v152 = &v127;
          __chkstk_darwin(v116);
          v117 = v158;
          *(&v127 - 10) = v111;
          *(&v127 - 9) = v117;
          *(&v127 - 8) = v106;
          *(&v127 - 56) = v118;
          v119 = v159;
          *(&v127 - 6) = v159;
          *(&v127 - 5) = v113;
          *(&v127 - 4) = v114;
          *(&v127 - 24) = v120;
          v121 = v155;
          *(&v127 - 2) = v155;
          *(&v127 - 1) = &v164;
          v122 = Set.removeAll(where:)();
          v152 = &v127;
          __chkstk_darwin(v122);
          *(&v127 - 10) = v111;
          *(&v127 - 9) = v117;
          *(&v127 - 8) = v160;
          *(&v127 - 56) = v123;
          *(&v127 - 6) = v119;
          *(&v127 - 5) = v113;
          *(&v127 - 4) = v161;
          *(&v127 - 24) = v124;
          *(&v127 - 2) = v121;
          v88 = v149;
          v80 = v150;
          Set.removeAll(where:)();

          v83 = v153;
          v82 = v90;
          if ((v154 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_59:
          if (__CocoaSet.Iterator.next()())
          {
            _forceBridgeFromObjectiveC<A>(_:_:)();
            v91 = swift_unknownObjectRelease();
            v92 = v163;
            v90 = v82;
            v93 = v83;
            if (v163)
            {
              continue;
            }
          }

          goto LABEL_11;
        }
      }

LABEL_11:
      sub_10008BA48();
      v199[0] = v171;
      v199[1] = v170;
      v199[2] = v169;
      v199[3] = v168;
      v199[4] = v167;
      sub_100089458();
      sub_100089394();

      v196 = v164;
      v197 = v165;
      v198 = v166;
      v203 = *(&v164 + 1);
      v204 = v164;
      v201 = *(&v165 + 1);
      v202 = v165;
      v200 = v166;
      v170 = *(&v164 + 1);
      v171 = v164;
      v168 = *(&v165 + 1);
      v169 = v165;
      v167 = v166;
      v29 = v162;
      v30 = v143;
      v143(&v164, &v204, v162);
      v30(&v164, &v203, v29);
      v30(&v164, &v202, v29);
      v30(&v164, &v201, v29);
      v30(&v164, &v200, v29);
      v31 = sub_1000892BC();
      v32 = *v139;
      (*v139)(&v204, v29);
      v32(&v203, v29);
      v32(&v202, v29);
      v32(&v201, v29);
      v32(&v200, v29);
      if (v31)
      {
        v32(&v200, v29);
        v32(&v201, v29);
        v32(&v202, v29);
        v32(&v203, v29);
        result = (v32)(&v204, v29);
        a9 = v128;
        goto LABEL_71;
      }

      goto LABEL_12;
    }

    while (1)
    {
      __chkstk_darwin(v43);
      v47 = v158;
      *(&v127 - 10) = v157;
      *(&v127 - 9) = v47;
      *(&v127 - 8) = v160;
      *(&v127 - 56) = v48;
      v49 = v156;
      *(&v127 - 6) = v159;
      *(&v127 - 5) = v49;
      *(&v127 - 4) = v161;
      *(&v127 - 24) = v50;
      *(&v127 - 2) = v44;
      Set.removeAll(where:)();

      v36 = v42;
      v37 = v45;
      v34 = v155;
      if ((v155 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_21:
      if (__CocoaSet.Iterator.next()())
      {
        _forceBridgeFromObjectiveC<A>(_:_:)();
        v43 = swift_unknownObjectRelease();
        v44 = v163;
        v42 = v36;
        v45 = v37;
        if (v163)
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  v46 = v36;
  while (1)
  {
    v42 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v42 >= ((v35 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v41 = *(v33 + 8 * v42);
    ++v46;
    if (v41)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_10008B584()
{
  type metadata accessor for TTRITreeViewNode();

  sub_100058000(&qword_100769AB0);
  swift_getWitnessTable();
  return Dictionary.filter(_:)();
}

uint64_t sub_10008B654(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10008B690@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10008B720(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v10 = *(v2 + 32);
  v11 = v5;
  v12 = v6;
  v13 = *(v2 + 64);
  v14 = v7;
  v15 = v8;
  return a2(a1, &v10, v3, v4);
}

uint64_t sub_10008B860(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B8C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008B960()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10008BB10(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, void, void))
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v11 = *(v2 + 48);
  v12 = v5;
  v13 = v6;
  return a2(a1, &v8, *(v2 + 80), *(v2 + 88)) & 1;
}

uint64_t sub_10008BB74(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, __int128 *))
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  v8 = *(v2 + 80);
  v9 = *a1;
  v11 = *(v2 + 16);
  v12 = v4;
  v13 = v5;
  v14 = *(v2 + 48);
  v15 = v6;
  v16 = v7;
  return a2(v9, v8, &v11) & 1;
}

uint64_t sub_10008BBF4()
{
}

void *sub_10008BC48(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *sub_10008BCB8(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008BD74(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shadow(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shadow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRITreeViewUpdate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRITreeViewUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008BFD0()
{
  result = qword_100769B50;
  if (!qword_100769B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769B50);
  }

  return result;
}

unint64_t sub_10008C028()
{
  result = qword_100769B58;
  if (!qword_100769B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769B58);
  }

  return result;
}

unint64_t sub_10008C080()
{
  result = qword_100769B60;
  if (!qword_100769B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769B60);
  }

  return result;
}

unint64_t sub_10008C0D8()
{
  result = qword_100769B68;
  if (!qword_100769B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769B68);
  }

  return result;
}

unint64_t sub_10008C130()
{
  result = qword_100769B70;
  if (!qword_100769B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769B70);
  }

  return result;
}

uint64_t sub_10008C1D0()
{
  if (*(v0 + 32) == 1 && *(v0 + 40))
  {
    *(v0 + 40) = 0;
    if (*(v0 + 24))
    {

      TTRViewModelObserver.subscribeIfNeeded(to:)();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10008C248()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10008C2A8();
  }

  return result;
}

void sub_10008C2A8()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    if (!*(v0 + 24))
    {
      __break(1u);
      return;
    }

    TTRViewModelObserver.localValue.getter();

    sub_100058000(&qword_100769C40);
    TTRViewModelObserver.ValueChangeInfo.oldValue.getter();
    if (v11)
    {
      if (v6)
      {
        return;
      }

      goto LABEL_7;
    }

    if ((v6 & 1) != 0 || v7 != v2 || v8 != v3 || v9 != v4 || v10 != v5)
    {
LABEL_7:
      v1 = [*(v0 + 16) collectionViewLayout];
      [v1 invalidateLayout];
    }
  }
}

uint64_t sub_10008C3B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008C424(void *a1)
{
  v2 = v1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  swift_allocObject();
  swift_weakInit();
  sub_100058000(&qword_100769C38);
  swift_allocObject();
  v4 = a1;
  *(v2 + 24) = TTRViewModelObserver.init(didReceiveNewValue:)();

  TTRViewModelObserver.localValue.setter();

  return v2;
}

void sub_10008C518()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    if (*(v0 + 40))
    {
      return;
    }

    v8 = v1;
    v3 = String._bridgeToObjectiveC()();

    [v8 setTitle:v3 forState:0];

    v4 = [v8 titleLabel];
    if (v4)
    {
      v5 = v4;
      [v4 setNumberOfLines:1];
    }

    v6 = [v8 titleLabel];
    if (v6)
    {
      v7 = v6;
      [v6 setLineBreakMode:4];
    }
  }

  else
  {
    v2 = *(v0 + 16);

    v8 = String._bridgeToObjectiveC()();

    [v2 setTitle:v8];
  }
}

uint64_t sub_10008C668(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  v8 = v5 == a1 && v6 == a2;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v7 ^ a3) & 1) != 0)
  {
    sub_10008C518();
  }
}

uint64_t sub_10008C6E0(uint64_t a1, void *a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  v5 = sub_10008C8D8();
  [v5 setMenu:a2];
  [v5 setShowsMenuAsPrimaryAction:a2 != 0];
  *(v2 + 48) = v5;
  v6 = objc_allocWithZone(UIBarButtonItem);
  v7 = v5;
  *(v2 + 16) = [v6 initWithCustomView:v7];
  sub_10008C518();

  sub_100004758(a1);
  return v2;
}

uint64_t sub_10008C79C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10008C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_10008CCC8();
  static UIFont.roundedSystemFont(ofSize:weight:)();
  sub_10008CD14();
  return AttributeContainer.subscript.setter();
}

id sub_10008C8D8()
{
  v0 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v0 - 8);
  v2 = &v22[-v1];
  v3 = sub_100058000(&qword_100769CF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4];
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() buttonWithType:1];
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() _systemImageNamed:v11];

  [v10 setImage:v12 forState:0];
  v13 = [v10 imageView];
  if (v13)
  {
    v14 = v13;
    [v13 setContentMode:1];
  }

  v15 = v10;
  [v15 setShowsLargeContentViewer:1];
  v16 = [v15 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setLineBreakMode:4];
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  static UIButton.Configuration.plain()();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = 0x4031000000000000;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v18 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v19 = [objc_opt_self() clearColor];
  v20 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v20(v22, 0);
  (*(v7 + 16))(v2, v9, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  UIButton.configuration.setter();
  (*(v7 + 8))(v9, v6);
  return v15;
}

unint64_t sub_10008CCC8()
{
  result = qword_100771DF0;
  if (!qword_100771DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100771DF0);
  }

  return result;
}

unint64_t sub_10008CD14()
{
  result = qword_100769D00;
  if (!qword_100769D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769D00);
  }

  return result;
}

unint64_t sub_10008CD7C()
{
  result = qword_100769D08;
  if (!qword_100769D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769D08);
  }

  return result;
}

void sub_10008CDD0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_mainStackView);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = sub_10008D4F0(Strong, v0);
    }

    v29 = v4;

    v5 = v0[3];
    if (v5)
    {
      v6 = v0[2];
      v7 = v0[4];
      v8 = v0[5];
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[8];
      v12 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_completedHeaderView;
      v13 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_completedHeaderView);
      if (v13)
      {
        v14 = &v13[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration];
        v16 = *&v13[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 16];
        v15 = *&v13[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 32];
        v17 = *&v13[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration];
        v37 = *&v13[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 48];
        v35 = v16;
        v36 = v15;
        v34 = v17;
        *v14 = v6;
        *(v14 + 1) = v5;
        *(v14 + 8) = v7;
        v14[18] = BYTE2(v7) & 1;
        *(v14 + 3) = v8;
        *(v14 + 4) = v10;
        *(v14 + 5) = v9;
        *(v14 + 6) = v11;
        sub_10008E1B8(v6, v5, v7, v8, v10, v9);
        sub_10008E1B8(v6, v5, v7, v8, v10, v9);
        v18 = v13;
        sub_10008E220(&v34);
        sub_1005DBAA8();
      }

      else
      {
        v22 = objc_allocWithZone(type metadata accessor for TTRIRemindersBoardCompletedHeaderView());
        v31[0] = v6;
        v31[1] = v5;
        v31[2] = v7;
        v31[3] = v8;
        v31[4] = v10;
        v31[5] = v9;
        v31[6] = v11;
        sub_10008E15C(v31, &v34);
        v23 = [v22 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v24 = *(v0 + v12);
        *(v0 + v12) = v23;
        v18 = v23;

        v25 = &v18[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration];
        v27 = *&v18[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 16];
        v26 = *&v18[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 32];
        v28 = *&v18[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration];
        v33 = *&v18[OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardCompletedHeaderView_configuration + 48];
        v32[0] = v28;
        v32[1] = v27;
        v32[2] = v26;
        *v25 = v6;
        *(v25 + 1) = v5;
        *(v25 + 8) = v7;
        v25[18] = BYTE2(v7) & 1;
        *(v25 + 3) = v8;
        *(v25 + 4) = v10;
        *(v25 + 5) = v9;
        *(v25 + 6) = v11;
        *&v34 = v6;
        *(&v34 + 1) = v5;
        *&v35 = v7;
        *(&v35 + 1) = v8;
        *&v36 = v10;
        *(&v36 + 1) = v9;
        v37 = v11;
        sub_10008E1B8(v6, v5, v7, v8, v10, v9);
        sub_10008E15C(&v34, v30);
        sub_10008E220(v32);
        sub_1005DBAA8();
        sub_10008E274(v6, v5, v7, v8, v10, v9);
        [v29 addArrangedSubview:v18];
      }

      sub_10008E274(v6, v5, v7, v8, v10, v9);
    }

    else
    {
      v19 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_completedHeaderView;
      v20 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_completedHeaderView);
      if (v20)
      {
        [v20 removeFromSuperview];

        v21 = *(v0 + v19);
        *(v0 + v19) = 0;
      }

      else
      {
        v21 = v29;
      }
    }
  }
}

void *sub_10008D0E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100769E98);
  __chkstk_darwin(v5 - 8);
  v7 = &aBlock[-1] - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_mainStackView);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = sub_10008D4F0(result, v2);
    }

    v12 = v11;

    v13 = type metadata accessor for TTRRemindersListTip();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v7, a1, v13);
    (*(v14 + 56))(v7, 0, 1, v13);
    v15 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tip;
    swift_beginAccess();
    sub_10008E5BC(v7, v2 + v15);
    swift_endAccess();
    sub_10000B0D8(a2, v22);
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v12;
    sub_100005FD0(v22, v16 + 32);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10008E62C;
    *(v17 + 24) = v16;
    aBlock[4] = sub_100026410;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_1007143A8;
    v18 = _Block_copy(aBlock);

    v19 = v12;

    [v19 performBatchUpdates:v18];

    _Block_release(v18);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10008D3B4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tipView;
  v5 = *(a1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tipView);
  if (v5)
  {
    v6 = *(a1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tipView);
  }

  else
  {
    v9 = [objc_allocWithZone(type metadata accessor for TTRIRemindersBoardTipHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v10 = *(a1 + v4);
    *(a1 + v4) = v9;
    v6 = v9;

    [a2 insertArrangedSubview:v6 atIndex:0];
    v5 = 0;
  }

  sub_10000B0D8(a3, v15);
  v11 = OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentConfiguration;
  swift_beginAccess();
  v12 = v5;
  sub_10008E638(v15, v6 + v11);
  swift_endAccess();
  sub_10008E6A8(v6 + v11, v14);
  sub_1001844D8(v14);

  sub_1000079B4(v14, &qword_100768868);
  return sub_1000079B4(v15, &qword_100768868);
}

id sub_10008D4F0(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_100058000(&qword_100769E60);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = [objc_allocWithZone(NUIContainerStackView) init];
  [v6 setAxis:1];
  [v6 setAlignment:0];
  [v6 setDistribution:0];
  [v6 setSpacing:0.0];
  v7 = v6;
  [v7 setDebugBoundingBoxesEnabled:0];
  [v7 setLayoutMarginsRelativeArrangement:0];

  result = [a1 view];
  if (result)
  {
    v9 = result;
    v10 = objc_allocWithZone(type metadata accessor for HeaderMainContainerView());
    v11 = v7;
    v12 = sub_10008E2DC(v11);

    v13 = v12;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 addSubview:v13];
    v14 = objc_opt_self();
    v15 = UIView.constraintsEqualTo(_:edges:)();
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D420;
    v17 = [v9 safeAreaLayoutGuide];
    v18 = [v17 topAnchor];

    v19 = [v13 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(inited + 32) = v20;
    v32 = v15;
    sub_100081520(inited);
    sub_100003540(0, &qword_10076BAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 activateConstraints:isa];

    v32 = *&v13[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_viewHeightSubject];
    sub_100058000(&qword_100769E68);
    sub_10000E188(&qword_100769E70, &qword_100769E68);
    sub_10008E560();
    Publisher<>.removeDuplicates()();
    sub_10000E188(&qword_100769E80, &qword_100769E60);
    v22 = v30;
    v23 = Publisher.eraseToAnyPublisher()();
    (*(v29 + 8))(v5, v22);
    v32 = v23;
    swift_allocObject();
    v24 = v31;
    swift_weakInit();
    sub_100058000(&qword_100769E88);
    sub_10000E188(&qword_100769E90, &qword_100769E88);
    v25 = Publisher<>.sink(receiveValue:)();

    v26 = *(v24 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_mainStackView);
    *(v24 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_mainStackView) = v11;
    v27 = v11;

    *(v24 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_mainStackHeightDidChangeCancellable) = v25;

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008D9C0(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong additionalSafeAreaInsets];
      [v4 setAdditionalSafeAreaInsets:v1];
    }
  }

  return result;
}

uint64_t sub_10008DA5C()
{
  sub_10008E274(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7]);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tip, &qword_100769E98);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersBoardHeaderViewController()
{
  result = qword_100769D60;
  if (!qword_100769D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008DB88()
{
  sub_10008DC3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10008DC3C()
{
  if (!qword_100769D70)
  {
    type metadata accessor for TTRRemindersListTip();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100769D70);
    }
  }
}

id sub_10008DF18()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "safeAreaInsetsDidChange");
  result = [v0 safeAreaInsets];
  v4 = &v0[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot];
  v5.f64[0] = 0.0;
  v6.f64[0] = 0.0;
  v6.f64[1] = v2;
  v5.f64[1] = v3;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v0[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot], v6), vceqq_f64(*&v0[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot + 16], v5)))) & 1) == 0)
  {
    *v4 = 0.0;
    v4[1] = v2;
    v4[2] = 0.0;
    v4[3] = v3;
    return [v0 setNeedsInvalidation:2];
  }

  return result;
}

void sub_10008E1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_10003BE34(a4);

    sub_10003BE34(a6);
  }
}

void sub_10008E274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_1000301AC(a4);

    sub_1000301AC(a6);
  }
}

char *sub_10008E2DC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_viewHeightSubject;
  sub_100058000(&qword_100769E68);
  swift_allocObject();
  *&v1[v5] = PassthroughSubject.init()();
  v6 = &v1[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot];
  v7 = *&UIEdgeInsetsZero.bottom;
  *v6 = *&UIEdgeInsetsZero.top;
  *(v6 + 1) = v7;
  *&v1[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_contentView] = a1;
  sub_100058000(&qword_10076B780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10062D420;
  *(v8 + 32) = a1;
  sub_100003540(0, &qword_10076B020);
  v9 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21.receiver = v2;
  v21.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v21, "initWithArrangedSubviews:", isa);

  v12 = v11;
  [v12 setDirectionalLayoutMargins:{8.0, 8.0, 8.0, 8.0}];
  [v12 setEdgesPreservingSuperviewLayoutMargins:10];
  v13 = v12;
  [v13 setLayoutMarginsRelativeArrangement:0];
  [v13 setInsetsLayoutMarginsFromSafeArea:0];

  [v13 setDebugBoundingBoxesEnabled:0];
  [v9 setPreservesSuperviewLayoutMargins:0];
  [v9 setInsetsLayoutMarginsFromSafeArea:0];
  v14 = *&v13[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_contentView];
  [v13 layoutMargins];
  [v14 setLayoutMargins:?];
  [v13 safeAreaInsets];
  v17 = &v13[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot];
  v18.f64[0] = 0.0;
  v19.f64[0] = 0.0;
  v19.f64[1] = v15;
  v18.f64[1] = v16;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v13[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot], v19), vceqq_f64(*&v13[OBJC_IVAR____TtC9RemindersP33_9720CD1AB887D176DDBBBD34D80FC8A023HeaderMainContainerView_safeAreaInsetSnapshot + 16], v18)))) & 1) == 0)
  {
    *v17 = 0.0;
    v17[1] = v15;
    v17[2] = 0.0;
    v17[3] = v16;
    [v13 setNeedsInvalidation:2];
  }

  return v13;
}

unint64_t sub_10008E560()
{
  result = qword_100769E78;
  if (!qword_100769E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769E78);
  }

  return result;
}

uint64_t sub_10008E5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100769E98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E638(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100768868);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100768868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E718()
{
  *(v0 + 64) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tip;
  v2 = type metadata accessor for TTRRemindersListTip();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_mainStackView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_mainStackHeightDidChangeCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_completedHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersBoardHeaderViewController_tipView) = 0;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_10008E7F4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100769EA0);
  v1 = sub_100003E30(v0, qword_100769EA0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10008E8BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1000925AC();
  static TTRTypedController.currentArgument.getter();
  v6 = v11;
  *&v2[OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_presenter] = v10[1];
  *&v2[OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_localUndoManager] = v6;
  v10[0].receiver = v2;
  v10[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v7 = v6;
  v8 = [(objc_super *)v10 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v8)
  {
  }

  return v8;
}

void sub_10008E9D8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel];
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_1000915B4(*v2);
  v5 = sub_1004BF05C();
  v7 = v6;
  v8 = *v2;
  *v2 = v5;
  v2[1] = v6;

  sub_1000915F4(v8);
  if (!v3)
  {
    v16 = [v1 tableView];
    if (!v16)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v11 = v16;
LABEL_9:

    [v11 reloadData];
    goto LABEL_10;
  }

  v9 = sub_1002B0004(v3, v4, v5, v7);
  v10 = [v1 tableView];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {

      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = v1;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_100091634;
      *(v13 + 24) = v12;
      aBlock[4] = sub_100026410;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_100714460;
      v14 = _Block_copy(aBlock);
      v15 = v1;

      [v11 performBatchUpdates:v14 completion:0];
      _Block_release(v14);

LABEL_10:

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v10)
  {

    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
}

void sub_10008ED80(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_100058000(&qword_100769F00);
  __chkstk_darwin(v2 - 8);
  v47 = &v42 - v3;
  v4 = sub_100058000(&qword_100769F08);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v43 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v43 - 8);
  v8 = __chkstk_darwin(v43);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v42 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - v13;
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = IndexPath.section.getter();
  v18 = (v1 + OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel);
  swift_beginAccess();
  v19 = *v18;
  if (*v18)
  {
    v20 = v18[1];

    v21 = sub_1002AB7D4(v19, v20);

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < v21[2])
    {
      sub_10009163C(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v14, type metadata accessor for TTRIGroupMembershipViewModel.Item);

      sub_100091704(v14, v16, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v22 = *v18;
      if (*v18)
      {
        goto LABEL_5;
      }

LABEL_9:
      if (qword_100766EC8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100003E30(v31, qword_100769EA0);
      sub_100058000(&unk_100775610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = 48;
      *(inited + 40) = 0xE100000000000000;
      v33 = IndexPath.description.getter();
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v33;
      *(inited + 56) = v34;
      sub_100008E04(inited);

      sub_100008E04(_swiftEmptyArrayStorage);
      v35 = "Failed to get item for indexPath {indexPath: %@}";
      v36 = 48;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_14;
  }

  v30 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  (*(*(v30 - 8) + 56))(v16, 1, 2, v30);
  v22 = *v18;
  if (!*v18)
  {
    goto LABEL_9;
  }

LABEL_5:
  v23 = v18[1];

  v24 = IndexPath.row.getter();
  sub_10009163C(v16, v6, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  (*(v7 + 56))(v6, 0, 1, v43);
  v25 = v44;
  sub_1002ABD2C(v24, v6, v22, v23, v44);

  sub_1000079B4(v6, &qword_100769F08);
  v26 = v45;
  sub_100091704(v25, v45, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v27 = *v18;
  if (*v18)
  {

    v28 = v47;
    sub_1002AC0F4(v26, v27, v47);

    v29 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    if ((*(*(v29 - 8) + 48))(v28, 1, v29) != 1)
    {
      sub_1000916A4(v26, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      sub_1000916A4(v16, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      sub_100091704(v28, v46, type metadata accessor for TTRIGroupMembershipViewModel.List);
      return;
    }

    goto LABEL_15;
  }

LABEL_14:
  v37 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v28 = v47;
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
LABEL_15:
  sub_1000079B4(v28, &qword_100769F00);
  if (qword_100766EC8 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100003E30(v38, qword_100769EA0);
  sub_100058000(&unk_100775610);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10062D400;
  *(v39 + 32) = 48;
  *(v39 + 40) = 0xE100000000000000;
  v40 = IndexPath.description.getter();
  *(v39 + 72) = &type metadata for String;
  *(v39 + 48) = v40;
  *(v39 + 56) = v41;
  sub_100008E04(v39);

  sub_100008E04(_swiftEmptyArrayStorage);
  v35 = "Failed to get list for item {indexPath: %@}";
  v36 = 43;
LABEL_18:
  sub_1003F9818(v35, v36, 2);
  __break(1u);
}

id sub_10008F524(void *a1)
{
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008ED80(v4);
  v5 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:isa];

  v8 = [v7 textLabel];
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];
  }

  v11 = [v7 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() labelColor];
    [v12 setTextColor:v13];
  }

  v14 = v7;
  v15 = TTRListOrCustomSmartListChangeItem.objectID.getter();
  v16 = [v15 stringRepresentation];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v14 setAccessibilityIdentifier:v16];

  type metadata accessor for TTRIGroupMembershipCell();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    *(v17 + OBJC_IVAR____TtC9Reminders23TTRIGroupMembershipCell_ttriAccessibilityDelegate + 8) = &off_1007143D0;
    swift_unknownObjectWeakAssign();
  }

  sub_1000916A4(v4, type metadata accessor for TTRIGroupMembershipViewModel.List);
  return v14;
}

void sub_10008FF78(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - v14;
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v18 = IndexPath.section.getter();
  v19 = (v4 + OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel);
  swift_beginAccess();
  v20 = *v19;
  if (!*v19)
  {
    v24 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    (*(*(v24 - 8) + 56))(v17, 1, 2, v24);
    goto LABEL_6;
  }

  v29 = a3;
  v21 = a1;
  v22 = v19[1];

  v23 = sub_1002AB7D4(v20, v22);

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v18 >= v23[2])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10009163C(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v15, type metadata accessor for TTRIGroupMembershipViewModel.Item);

  sub_100091704(v15, v17, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  a1 = v21;
  a3 = v29;
LABEL_6:
  sub_10009163C(v17, v12, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v25 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v26 = (*(*(v25 - 8) + 48))(v12, 2, v25);
  if (v26 == 1 || (a2 = a1, v26 == 2))
  {
    sub_1000916A4(v17, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v27 = type metadata accessor for IndexPath();
    (*(*(v27 - 8) + 16))(a3, a2, v27);
    return;
  }

LABEL_11:
  if (qword_100766EC8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100003E30(v28, qword_100769EA0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unexpected item", 15, 2);
  __break(1u);
}

id sub_100090628(uint64_t a1, void *a2)
{
  v68 = a2;
  v66 = type metadata accessor for IndexPath();
  v58 = *(v66 - 8);
  v3 = __chkstk_darwin(v66);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v62 = &v54 - v6;
  __chkstk_darwin(v5);
  v8 = &v54 - v7;
  v67 = sub_100058000(&qword_100769EF8);
  __chkstk_darwin(v67);
  v10 = &v54 - v9;
  v70 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move(0);
  result = __chkstk_darwin(v70);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (!v15)
  {
    return result;
  }

  v65 = (v58 + 8);
  v57 = v58 + 16;
  v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v64 = *(v12 + 72);
  v17 = &selRef_defaultStore;
  v60 = xmmword_10062D400;
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v10;
  v61 = v8;
  while (1)
  {
    v69 = v15;
    sub_10009163C(v16, v14, type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move);
    v24 = *(v70 + 24);
    v25 = *(v67 + 48);
    sub_10009163C(v14, v10, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    sub_10009163C(&v14[v24], &v10[v25], type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v26 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v27 = *(*(v26 - 8) + 48);
    v28 = v27(v10, 2, v26);
    if (v28 != 1)
    {
      break;
    }

    v34 = v27(&v10[v25], 2, v26);
    if (v34 == 1)
    {
      result = [v68 v17[465]];
      if (!result)
      {
        goto LABEL_27;
      }

      v18 = result;
      v19 = v63;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v21 = v66;
      v22 = *v65;
      (*v65)(v19, v66);
      IndexPath.init(row:section:)();
      v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v22(v19, v21);
      [v18 moveRowAtIndexPath:isa toIndexPath:v23.super.isa];

LABEL_5:
      goto LABEL_6;
    }

    if (v34 != 2)
    {
      goto LABEL_17;
    }

    v35 = v66;
    v36 = v61;
    IndexPath.init(row:section:)();
    IndexPath.init(row:section:)();
    result = [v68 v17[465]];
    if (!result)
    {
      goto LABEL_26;
    }

    v37 = result;
    v38 = sub_100058000(&qword_1007845D0);
    v39 = v58;
    v40 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v59 = v38;
    v41 = swift_allocObject();
    *(v41 + 16) = v60;
    v42 = *(v39 + 16);
    v42(v41 + v40, v36, v35);
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v37 deleteRowsAtIndexPaths:v43 withRowAnimation:100];

    result = [v68 tableView];
    if (!result)
    {
      goto LABEL_25;
    }

    v44 = result;
    v45 = swift_allocObject();
    *(v45 + 16) = v60;
    v46 = v62;
    v42(v45 + v40, v62, v35);
    v47 = Array._bridgeToObjectiveC()().super.isa;

    [v44 insertRowsAtIndexPaths:v47 withRowAnimation:0];

    v48 = *v65;
    (*v65)(v46, v35);
    v48(v61, v35);
    v14 = v55;
    v10 = v56;
LABEL_6:
    sub_1000916A4(v14, type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move);
    result = sub_1000916A4(v10, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v16 += v64;
    v15 = v69 - 1;
    v17 = &selRef_defaultStore;
    if (v69 == 1)
    {
      return result;
    }
  }

  if (v28 == 2 && v27(&v10[v25], 2, v26) == 1)
  {
    result = [v68 v17[465]];
    if (!result)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v29 = result;
    v30 = v63;
    IndexPath.init(row:section:)();
    v31 = IndexPath._bridgeToObjectiveC()().super.isa;
    v32 = v66;
    v33 = *v65;
    (*v65)(v30, v66);
    IndexPath.init(row:section:)();
    v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v33(v30, v32);
    [v29 moveRowAtIndexPath:v31 toIndexPath:v23.super.isa];

    goto LABEL_5;
  }

LABEL_17:
  if (qword_100766EC8 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100003E30(v49, qword_100769EA0);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Unexpected move in groupMembership view controller", v52, 2u);
  }

  result = [v68 v17[465]];
  if (result)
  {
    v53 = result;
    [result reloadData];

    sub_1000916A4(v14, type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move);
    return sub_1000079B4(v10, &qword_100769EF8);
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_100090DDC(uint64_t a1)
{
  v3 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v19 - v12;
  result = [v1 tableView];
  if (result)
  {
    v15 = result;
    v16 = [result indexPathForCell:a1];

    if (!v16)
    {
      v18 = 0;
      return (v18 & 1);
    }

    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v13, v9, v6);
    result = [v1 tableView];
    if (result)
    {

      sub_10008ED80(v5);
      (*(v7 + 8))(v13, v6);
      v17 = v5[16];
      sub_1000916A4(v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
      v18 = v17 ^ 1;
      return (v18 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100090FE8(uint64_t a1)
{
  v3 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v18 - v12;
  result = [v1 tableView];
  if (result)
  {
    v15 = result;
    v16 = [result indexPathForCell:a1];

    if (!v16)
    {
      return 0;
    }

    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v13, v9, v6);
    result = [v1 tableView];
    if (result)
    {

      sub_10008ED80(v5);
      (*(v7 + 8))(v13, v6);
      v17 = v5[16];
      sub_1000916A4(v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000911F0(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v17 - v9;
  result = [v1 tableView];
  if (result)
  {
    v12 = result;
    v13 = [result indexPathForCell:a1];

    if (!v13)
    {
      v16 = 0;
      return (v16 & 1);
    }

    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v10, v6, v3);
    result = [v1 tableView];
    if (result)
    {
      v14 = result;
      sub_100091BF8();
      v16 = v15;

      (*(v4 + 8))(v10, v3);
      return (v16 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100091394(uint64_t a1)
{
  v3 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = [v1 tableView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 indexPathForCell:a1];

  if (!v15)
  {
    return;
  }

  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(v12, v10, v6);
  v16 = [v1 tableView];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_10008ED80(v5);
  if (*(v5 + 16) == 1)
  {
    sub_1004BF89C(v5);
  }

  else
  {
    sub_1004BF3A0(v5);
  }

  sub_1000916A4(v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
  (*(v7 + 8))(v12, v6);
}

uint64_t sub_1000915B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000915F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10009163C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000916A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100091704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009176C(unint64_t a1)
{
  v3 = sub_100058000(&qword_100769F08);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = (v1 + OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel);
  swift_beginAccess();
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  v8 = v6[1];
  sub_1000915B4(v7);

  v9 = sub_1002AB7D4(v7, v8);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9[2] > a1)
  {
    v11 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    v12 = *(v11 - 8);
    sub_10009163C(v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a1, v5, type metadata accessor for TTRIGroupMembershipViewModel.Item);

    (*(v12 + 56))(v5, 0, 1, v11);
    v13 = sub_1002AC318(v5, v7, v8);

    sub_1000079B4(v5, &qword_100769F08);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100091968(unint64_t a1)
{
  v3 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = (v1 + OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel);
  swift_beginAccess();
  v11 = *v10;
  if (!*v10)
  {
    v15 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    (*(*(v15 - 8) + 56))(v9, 1, 2, v15);
    goto LABEL_6;
  }

  v12 = v10[1];

  v13 = sub_1002AB7D4(v11, v12);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v13[2] <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_10009163C(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * a1, v7, type metadata accessor for TTRIGroupMembershipViewModel.Item);

  sub_100091704(v7, v9, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_6:
  swift_beginAccess();
  if (*v10)
  {
    swift_endAccess();

    v16 = sub_1002B056C(v9);

    sub_1000916A4(v9, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  }

  else
  {
    sub_1000916A4(v9, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    swift_endAccess();
    return 0;
  }

  return v16;
}

void sub_100091BF8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = IndexPath.section.getter();
  v13 = (v1 + OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel);
  swift_beginAccess();
  v14 = *v13;
  if (!*v13)
  {
    v17 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    (*(*(v17 - 8) + 56))(v11, 1, 2, v17);
    goto LABEL_6;
  }

  v15 = v13[1];

  v16 = sub_1002AB7D4(v14, v15);

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= v16[2])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10009163C(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v9, type metadata accessor for TTRIGroupMembershipViewModel.Item);

  sub_100091704(v9, v11, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_6:
  sub_10009163C(v11, v6, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v18 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v19 = (*(*(v18 - 8) + 48))(v6, 2, v18);
  if (v19 == 1 || v19 == 2)
  {
    sub_1000916A4(v11, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    return;
  }

LABEL_11:
  if (qword_100766EC8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003E30(v20, qword_100769EA0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unexpected item", 15, 2);
  __break(1u);
}

unint64_t sub_100091F20()
{
  result = qword_100776820;
  if (!qword_100776820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100776820);
  }

  return result;
}

void sub_100091F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v5 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v55 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v59 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v52 = &v51 - v13;
  v14 = __chkstk_darwin(v12);
  v54 = &v51 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v51 - v20;
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v56 = a1;
  v24 = IndexPath.section.getter();
  v57 = v3;
  v25 = (v3 + OBJC_IVAR____TtC9Reminders33TTRIGroupMembershipViewController_viewModel);
  swift_beginAccess();
  v26 = *v25;
  if (*v25)
  {
    v53 = v6;
    v27 = v5;
    v28 = v25[1];

    v29 = sub_1002AB7D4(v26, v28);

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < v29[2])
    {
      sub_10009163C(v29 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v24, v21, type metadata accessor for TTRIGroupMembershipViewModel.Item);

      sub_100091704(v21, v23, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v30 = v27;
      v6 = v53;
      goto LABEL_6;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  (*(v6 + 7))(v23, 1, 2, v5);
  v30 = v5;
LABEL_6:
  v53 = v23;
  sub_10009163C(v23, v18, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v31 = v6;
  v32 = *(v6 + 6);
  v33 = v30;
  v34 = v32(v18, 2, v30);
  sub_1000916A4(v18, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  if (v34 != 1)
  {
LABEL_18:
    if (qword_100766EC8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100003E30(v47, qword_100769EA0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v48 = "Attempted to move list from non-member section in group";
    v49 = 55;
    goto LABEL_24;
  }

  v35 = IndexPath.section.getter();
  v36 = *v25;
  if (!*v25)
  {
    v42 = v54;
    (*(v31 + 7))(v54, 1, 2, v33);
    goto LABEL_12;
  }

  v37 = v35;
  v38 = v25[1];

  v39 = sub_1002AB7D4(v36, v38);

  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (v37 >= v39[2])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v40 = v39 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v37;
  v41 = v52;
  sub_10009163C(v40, v52, type metadata accessor for TTRIGroupMembershipViewModel.Item);

  v42 = v54;
  sub_100091704(v41, v54, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_12:
  sub_10009163C(v42, v11, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v43 = v32(v11, 2, v33);
  sub_1000916A4(v11, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v44 = v53;
  if (v43 == 1)
  {
    v45 = v55;
    sub_10008ED80(v55);
    v46 = IndexPath.row.getter();
    sub_1004BFD90(v45, v46);
    sub_1000916A4(v45, type metadata accessor for TTRIGroupMembershipViewModel.List);
    sub_1000916A4(v42, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    sub_1000916A4(v44, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    return;
  }

  if (qword_100766EC8 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100003E30(v50, qword_100769EA0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  v48 = "Attempted to move list to non-member section in group";
  v49 = 53;
LABEL_24:
  sub_1003F9818(v48, v49, 2);
  __break(1u);
}

unint64_t sub_1000925AC()
{
  result = qword_100769F10;
  if (!qword_100769F10)
  {
    type metadata accessor for TTRIGroupMembershipViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769F10);
  }

  return result;
}

void destroy for TTRIGroupMembershipViewController.Argument(uint64_t a1)
{
  swift_unknownObjectRelease();
  v2 = *(a1 + 16);
}