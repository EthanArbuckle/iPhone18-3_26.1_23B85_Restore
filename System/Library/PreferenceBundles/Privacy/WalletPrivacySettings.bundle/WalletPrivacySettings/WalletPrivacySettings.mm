id sub_1718()
{
  v1 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController;
  v2 = *(v0 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(PKAppProtectionShieldConfiguration) init];
    [v4 setShowAuthOnAppear:0];
    v5 = [objc_opt_self() createShieldViewControllerWithConfiguration:v4];
    if (!v5)
    {
      v5 = [objc_allocWithZone(UIViewController) init];
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_17F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_57D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_walletProvider;
  *&v1[v8] = [objc_allocWithZone(sub_5894()) init];
  *&v1[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_financeKitProvider] = 0;
  v9 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationActive;
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 applicationState];

  v1[v9] = v11 == 0;
  v1[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationInAppSwitcher] = 0;
  v1[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_currentScreen] = 0;
  v12 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_appProtectionCoordinator;
  *&v1[v12] = [objc_opt_self() shared];
  *&v1[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController] = 0;
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  (*(v4 + 104))(v7, enum case for LocalizedStringTable.settings(_:), v3);
  v14 = v13;
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    sub_57C4();

    (*(v4 + 8))(v7, v3);
    v17 = sub_58A4();

    [v14 setTitle:v17];

    v18 = *&v14[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_appProtectionCoordinator];
    [v18 registerObserver:v14];

    sub_2B4C();
    v19 = sub_543C();
    v20 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_financeKitProvider;
    v21 = *&v14[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_financeKitProvider];
    *&v14[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_financeKitProvider] = v19;
    swift_unknownObjectRelease();
    v22 = *&v14[v20];
    if (v22)
    {
      [v22 setDelegate:v14];
    }

    v23 = *&v14[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_walletProvider];
    v24 = v14;
    v25 = v23;
    sub_5874();

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B14(void *a1)
{
  v2 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_walletProvider;
  *(v1 + v2) = [objc_allocWithZone(sub_5894()) init];
  *(v1 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_financeKitProvider) = 0;
  v3 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationActive;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 applicationState];

  *(v1 + v3) = v5 == 0;
  *(v1 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationInAppSwitcher) = 0;
  *(v1 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_currentScreen) = 0;
  v6 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_appProtectionCoordinator;
  *(v1 + v6) = [objc_opt_self() shared];
  *(v1 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController) = 0;
  sub_59E4();
  __break(1u);
}

id sub_1C64()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_appProtectionCoordinator] unregisterObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1DFC()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewWillLayoutSubviews");
  if (v0[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_currentScreen] >= 2u)
  {
    v1 = sub_1718();
    v2 = [v1 view];

    if (v2)
    {
      v3 = [v0 view];
      if (v3)
      {
        v4 = v3;
        [v3 bounds];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;

        [v2 setFrame:{v6, v8, v10, v12}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_203C()
{
  v1 = &_swiftEmptyArrayStorage;
  if (v0[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_currentScreen] == 1)
  {
    v2 = v0;
    v3 = sub_58A4();
    v4 = [v0 valueForKey:v3];

    if (v4)
    {
      sub_5954();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      sub_2530(&qword_C758, &qword_6B90);
      if (swift_dynamicCast())
      {
        v1 = sub_221C(v12);
LABEL_12:

        return v1;
      }
    }

    else
    {
      sub_24C8(v15);
    }

    *&v15[0] = &_swiftEmptyArrayStorage;
    v5 = *&v2[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_walletProvider];
    v6 = sub_5854();
    sub_2578(v6);
    v7 = *&v2[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_financeKitProvider];
    if (v7)
    {
      v8 = [v7 specifiers];
      sub_2668();
      v1 = sub_58F4();
    }

    sub_2578(v1);
    v9 = *&v15[0];
    sub_221C(*&v15[0]);
    isa = sub_58E4().super.isa;

    [v2 setSpecifiers:isa];

    v1 = sub_221C(v9);
    goto LABEL_12;
  }

  return v1;
}

char *sub_221C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_59F4();
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
  result = sub_2754(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_59B4();
        sub_2668();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_2754((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_2774(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2668();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_2754((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_2774(v12, &v3[4 * v11 + 4]);
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

uint64_t sub_24C8(uint64_t a1)
{
  v2 = sub_2530(&qword_C748, &qword_6B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2530(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2578(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_59F4();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_59F4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26B4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2898(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_2668()
{
  result = qword_C750;
  if (!qword_C750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C750);
  }

  return result;
}

uint64_t sub_26B4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_59F4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_59C4();
  *v1 = result;
  return result;
}

char *sub_2754(char *a1, int64_t a2, char a3)
{
  result = sub_2784(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_2774(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_2784(char *result, int64_t a2, char a3, char *a4)
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
    sub_2530(&qword_C760, &unk_6B98);
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

uint64_t sub_2898(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_59F4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_59F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2AA0();
          for (i = 0; i != v6; ++i)
          {
            sub_2530(&qword_C758, &qword_6B90);
            v9 = sub_2A18(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2668();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2A18(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_59B4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2A98;
  }

  __break(1u);
  return result;
}

unint64_t sub_2AA0()
{
  result = qword_C768;
  if (!qword_C768)
  {
    sub_2B04(&qword_C758, &qword_6B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C768);
  }

  return result;
}

uint64_t sub_2B04(uint64_t *a1, uint64_t *a2)
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

void sub_2B4C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v1 addObserver:v0 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
  [v1 addObserver:v0 selector:"applicationWillResignActive" name:UIApplicationWillResignActiveNotification object:0];
  [v1 addObserver:v0 selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
  [v1 addObserver:v0 selector:"didAddDeactivationReasonWithNotification:" name:_UIApplicationWillAddDeactivationReasonNotification object:0];
  [v1 addObserver:v0 selector:"didRemoveDeactivationReasonWithNotification:" name:_UIApplicationDidRemoveDeactivationReasonNotification object:0];
}

void sub_2C98()
{
  v1 = v0;
  v2 = sub_5824();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5844();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_appProtectionCoordinator];
  if ([v12 isEffectivelyLocked])
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v23 = sub_50EC;
    v24 = v13;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_3A58;
    v22 = &unk_86E8;
    v14 = _Block_copy(&aBlock);
    v15 = v1;

    [v12 isShieldRequiredWithCompletion:v14];
    _Block_release(v14);
  }

  else
  {
    sub_518C(0, &qword_C7E0, OS_dispatch_queue_ptr);
    v16 = sub_5924();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_4FD8;
    v24 = v17;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_3A14;
    v22 = &unk_8698;
    v18 = _Block_copy(&aBlock);

    sub_5834();
    aBlock = &_swiftEmptyArrayStorage;
    sub_4FF8();
    sub_2530(&qword_C7F0, &qword_6C40);
    sub_5050();
    sub_5964();
    sub_5934();
    _Block_release(v18);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }
}

Swift::Int sub_3014()
{
  v1 = *v0;
  sub_5A04();
  sub_5A14(v1);
  return sub_5A24();
}

Swift::Int sub_3088()
{
  v1 = *v0;
  sub_5A04();
  sub_5A14(v1);
  return sub_5A24();
}

uint64_t sub_30CC(char a1)
{
  v2 = sub_5824();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5844();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_518C(0, &qword_C7E0, OS_dispatch_queue_ptr);
  v12 = sub_5924();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_512C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3A14;
  aBlock[3] = &unk_8738;
  v15 = _Block_copy(aBlock);

  sub_5834();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_4FF8();
  sub_2530(&qword_C7F0, &qword_6C40);
  sub_5050();
  sub_5964();
  sub_5934();
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_3384(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    sub_33E8(v5);
  }
}

void sub_33E8(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_5824();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5844();
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  __chkstk_darwin(v9);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5814();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_currentScreen;
  if (v2[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_currentScreen] != v3)
  {
    v56 = v8;
    v52 = v9;
    sub_57E4();
    v18 = sub_5804();
    v19 = sub_5914();
    v20 = os_log_type_enabled(v18, v19);
    v53 = v5;
    v54 = v4;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v55 = v3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v51 = v17;
      v24 = v23;
      aBlock[0] = v23;
      *v22 = 136315138;
      v59 = v55;
      v25 = sub_58C4();
      v27 = sub_4904(v25, v26, aBlock);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v18, v19, "Setting privacy settings screen: %s", v22, 0xCu);
      sub_5140(v24);
      v17 = v51;

      v3 = v55;
    }

    (*(v13 + 8))(v16, v12);
    v28 = v56;
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        [*&v2[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_appProtectionCoordinator] requestAccess];
      }

      v34 = sub_1718();
      v35 = [v34 parentViewController];

      if (v35)
      {
        v36 = v17;
      }

      else
      {
        v37 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController;
        [v2 addChildViewController:*&v2[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController]];
        v38 = [v2 view];
        if (!v38)
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v39 = v38;
        v40 = [*&v2[v37] view];
        if (!v40)
        {
LABEL_23:
          __break(1u);
          return;
        }

        v41 = v40;
        v36 = v17;
        [v39 addSubview:v40];

        [*&v2[v37] didMoveToParentViewController:v2];
      }

      sub_518C(0, &qword_C7E0, OS_dispatch_queue_ptr);
      v42 = sub_5924();
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_5138;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_3A14;
      aBlock[3] = &unk_8760;
      v44 = _Block_copy(aBlock);

      v45 = v57;
      sub_5834();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_4FF8();
      sub_2530(&qword_C7F0, &qword_6C40);
      sub_5050();
      v46 = v54;
      sub_5964();
      sub_5934();
      _Block_release(v44);

      (*(v53 + 8))(v28, v46);
      (*(v58 + 8))(v45, v52);
      v17 = v36;
    }

    else
    {
      v29 = sub_1718();
      v30 = [v29 parentViewController];

      if (v30)
      {

        v31 = OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController;
        v32 = [*&v2[OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController____lazy_storage___shieldViewController] view];
        if (!v32)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v33 = v32;
        [v32 removeFromSuperview];

        [*&v2[v31] removeFromParentViewController];
      }
    }

    v47 = v2[v17];
    v2[v17] = v3;
    v48 = [v2 view];
    if (v48)
    {
      v49 = v48;
      [v48 setNeedsLayout];

      if ((v3 != 1) == (v47 == 1))
      {
        [v2 reloadSpecifiers];
      }

      return;
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_3A14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_3A58(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_3AAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_33E8(1u);
  }
}

id sub_3B04()
{
  v1 = sub_5824();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5844();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_appProtectionCoordinator) isEffectivelyLocked];
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_currentScreen) <= 1u)
    {
      sub_518C(0, &qword_C7E0, OS_dispatch_queue_ptr);
      v12 = sub_5924();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_52F8;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_3A14;
      aBlock[3] = &unk_8788;
      v14 = _Block_copy(aBlock);

      sub_5834();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_4FF8();
      sub_2530(&qword_C7F0, &qword_6C40);
      sub_5050();
      sub_5964();
      sub_5934();
      _Block_release(v14);

      (*(v2 + 8))(v5, v1);
      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void sub_3DD4()
{
  v0 = sub_5814();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_57E4();
  v5 = sub_5804();
  v6 = sub_5914();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Restricting privacy settings to shield", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_33E8(3u);
  }

  v10 = [objc_opt_self() sharedApplication];
  [v10 _updateSnapshotForBackgroundApplication:1];
}

void sub_3F80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 parentViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 navigationController];

      if (v4)
      {
        v5 = [v4 viewControllers];
        sub_518C(0, &qword_C808, UIViewController_ptr);
        v6 = sub_58F4();

        sub_40E8(v1, v6);
        if (v7)
        {
          sub_40E8(v3, v6);
          v9 = v8;

          v10 = v3;
          if (v9)
          {
            goto LABEL_11;
          }
        }

        else
        {

          v10 = v1;
        }

LABEL_11:
        goto LABEL_12;
      }

      v4 = v1;
    }

    else
    {
      v4 = v1;
      v3 = v1;
    }

LABEL_12:
  }
}

unint64_t sub_40E8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_59F4();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_59B4();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_518C(0, &qword_C808, UIViewController_ptr);
    v8 = sub_5944();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_43C0()
{
  v1 = v0;
  v2 = sub_5774();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  sub_58B4();
  sub_5994();
  if (!*(v3 + 16) || (v4 = sub_4EAC(v7), (v5 & 1) == 0))
  {

    sub_4EF0(v7);
LABEL_10:
    v8 = 0u;
    v9 = 0u;
    return sub_24C8(&v8);
  }

  sub_4F44(*(v3 + 56) + 32 * v4, &v8);
  sub_4EF0(v7);

  if (!*(&v9 + 1))
  {
    return sub_24C8(&v8);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && v7[0] == 3)
  {
    *(v1 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationInAppSwitcher) = 1;
    if ((*(v1 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationActive) & 1) == 0)
    {
      return sub_3B04();
    }
  }

  return result;
}

void sub_4504()
{
  v1 = v0;
  v2 = sub_5774();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  sub_58B4();
  sub_5994();
  if (!*(v3 + 16) || (v4 = sub_4EAC(v6), (v5 & 1) == 0))
  {

    sub_4EF0(v6);
LABEL_10:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_11;
  }

  sub_4F44(*(v3 + 56) + 32 * v4, &v7);
  sub_4EF0(v6);

  if (!*(&v8 + 1))
  {
LABEL_11:
    sub_24C8(&v7);
    return;
  }

  if ((swift_dynamicCast() & 1) != 0 && v6[0] == 3)
  {
    *(v1 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationInAppSwitcher) = 0;
    if (*(v1 + OBJC_IVAR____TtC21WalletPrivacySettings31WalletPrivacySettingsController_isApplicationActive) == 1)
    {
      sub_2C98();
    }
  }
}

uint64_t sub_4648(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_5784();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5764();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t getEnumTagSinglePayload for Screen(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Screen(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_48B0()
{
  result = qword_C7D0;
  if (!qword_C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7D0);
  }

  return result;
}

uint64_t sub_4904(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_49D0(v11, 0, 0, 1, a1, a2);
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
    sub_4F44(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5140(v11);
  return v7;
}

unint64_t sub_49D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4ADC(a5, a6);
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
    result = sub_59D4();
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

char *sub_4ADC(uint64_t a1, unint64_t a2)
{
  v4 = sub_4B28(a1, a2);
  sub_4C58(&off_85B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4B28(uint64_t a1, unint64_t a2)
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

  v6 = sub_4D44(v5, 0);
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

  result = sub_59D4();
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
        v10 = sub_58D4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4D44(v10, 0);
        result = sub_59A4();
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

uint64_t sub_4C58(uint64_t result)
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

  result = sub_4DB8(result, v12, 1, v3);
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

void *sub_4D44(uint64_t a1, uint64_t a2)
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

  sub_2530(&qword_C800, &qword_6C48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4DB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2530(&qword_C800, &qword_6C48);
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

unint64_t sub_4EAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_5974(*(v2 + 40));

  return sub_51D4(a1, v4);
}

uint64_t sub_4F44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4FA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4FF8()
{
  result = qword_C7E8;
  if (!qword_C7E8)
  {
    sub_5824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7E8);
  }

  return result;
}

unint64_t sub_5050()
{
  result = qword_C7F8;
  if (!qword_C7F8)
  {
    sub_2B04(&qword_C7F0, &qword_6C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7F8);
  }

  return result;
}

uint64_t sub_50B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50F4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_5140(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_518C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_51D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_529C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_5984();
      sub_4EF0(v8);
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

uint64_t sub_5320()
{
  v0 = sub_57B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5794();
  v5 = objc_allocWithZone(NSBundle);
  sub_57A4(v6);
  v8 = v7;
  v9 = [v5 initWithURL:v7];

  result = (*(v1 + 8))(v4, v0);
  qword_C870 = v9;
  return result;
}

uint64_t sub_543C()
{
  v0 = sub_5814();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v20 - v6;
  if (qword_C6E0 != -1)
  {
    swift_once();
  }

  if (qword_C870 && (v8 = qword_C870, v9 = sub_58A4(), v10 = [v8 classNamed:v9], v8, v9, v10) && (swift_getObjCClassMetadata(), sub_5718(), swift_dynamicCastMetatype()))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    class_addProtocol(ObjCClassFromMetadata, &OBJC_PROTOCOL____TtP9PassKitUI25PKPrivacySettingsProvider_);
    v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v20[1] = &OBJC_PROTOCOL____TtP9PassKitUI25PKPrivacySettingsProvider_;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      return result;
    }

    sub_57F4();
    v14 = sub_5804();
    v15 = sub_5904();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Unable to initialize FinanceKitUI.PrivacyAppSpecifierProvider", v16, 2u);
    }

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    sub_57F4();
    v17 = sub_5804();
    v18 = sub_5904();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "FinanceKitUI.PrivacyAppSpecifierProvider not found", v19, 2u);
    }

    (*(v1 + 8))(v5, v0);
  }

  return 0;
}

unint64_t sub_5718()
{
  result = qword_C878;
  if (!qword_C878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C878);
  }

  return result;
}