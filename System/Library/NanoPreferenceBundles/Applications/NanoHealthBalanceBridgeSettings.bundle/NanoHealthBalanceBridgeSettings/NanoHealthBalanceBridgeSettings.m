id sub_159C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  v5 = sub_50A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings;
  sub_5048();
  [objc_allocWithZone(HKHealthStore) init];
  *&v3[v10] = sub_4FE8();
  v11 = type metadata accessor for SettingsViewController();
  v24.receiver = v3;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_5088();
  v13 = sub_5098();
  v14 = sub_51D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    v18 = sub_52E8();
    v20 = sub_35C4(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v13, v14, "[%{public}s] Initializing settings", v16, 0xCu);
    sub_4DE0(v17);
  }

  else
  {
  }

  (*(v6 + 8))(v9, v5);
  return v12;
}

void sub_1A84(int a1)
{
  v31 = a1;
  sub_3E88(0, &qword_C488, &type metadata accessor for URL, &type metadata accessor for Optional);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v29 - v4;
  v6 = *(*(sub_4F68() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_4EF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*(sub_5108() - 8) + 64);
  __chkstk_darwin();
  v30 = sub_4F08();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SettingsViewController();
  v33.receiver = v1;
  v33.super_class = v17;
  objc_msgSendSuper2(&v33, "viewWillAppear:", v31 & 1);
  sub_50F8();
  *v11 = v17;
  (*(v8 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v7);
  sub_4F58();
  sub_4F18();
  type metadata accessor for NanoHealthBalanceBridgeSettings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass:ObjCClassFromMetadata];
  v21 = [v20 bundleIdentifier];

  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_5128();

  strcpy(v32, "bridge:root=");
  HIBYTE(v32[6]) = 0;
  v32[7] = -5120;
  v22 = [v19 bundleForClass:ObjCClassFromMetadata];
  v23 = [v22 bundleIdentifier];

  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v24 = sub_5128();
  v26 = v25;

  v34._countAndFlagsBits = v24;
  v34._object = v26;
  sub_5158(v34);

  sub_4F38();

  v27 = sub_4F48();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v5, 1, v27) != 1)
  {
    sub_5068();
    sub_5058();

    (*(v13 + 8))(v16, v30);
    (*(v28 + 8))(v5, v27);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2258()
{
  v1 = *(*(sub_4F68() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(sub_5108() - 8) + 64);
  __chkstk_darwin();
  v3 = *(v0 + OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings);
  sub_5018();
  sub_50F8();
  type metadata accessor for NanoHealthBalanceBridgeSettings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_4F58();
  return sub_5138();
}

uint64_t sub_23FC()
{
  v1 = *(*(sub_4F68() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(sub_5108() - 8) + 64);
  __chkstk_darwin();
  v3 = *(v0 + OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings);
  if (sub_4FD8() & 1) == 0 && (sub_5008())
  {
    return 0;
  }

  sub_50F8();
  type metadata accessor for NanoHealthBalanceBridgeSettings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_4F58();
  return sub_5138();
}

uint64_t sub_25B4@<X0>(uint64_t *a1@<X8>)
{
  sub_4E88(0, &qword_C420);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_5760;
  sub_4818();
  *(v2 + 32) = v3;
  sub_2D9C();
  result = sub_3F74(v4);
  *a1 = v2;
  return result;
}

uint64_t sub_2640()
{
  v0 = sub_50B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_50D8();
  v5 = *(v13[0] - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BE0(0, &qword_C440, OS_dispatch_queue_ptr);
  v9 = sub_51E8();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_3E68;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_299C;
  aBlock[3] = &unk_8628;
  v11 = _Block_copy(aBlock);

  sub_50C8();
  v13[1] = &_swiftEmptyArrayStorage;
  sub_4B98(&qword_C448, &type metadata accessor for DispatchWorkItemFlags);
  sub_3E88(0, &qword_C450, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_3EEC();
  sub_5218();
  sub_51F8();
  _Block_release(v11);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v13[0]);
}

void sub_2940()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadSpecifiers];
  }
}

uint64_t sub_299C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *sub_29E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_5278();
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
  result = sub_3CA4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_5238();
        sub_4BE0(0, &qword_C430, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_3CA4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_3CC4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_4BE0(0, &qword_C430, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_3CA4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_3CC4(v12, &v3[4 * v11 + 4]);
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

void sub_2D9C()
{
  v1 = v0;
  v2 = *(*(sub_4F68() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_5108() - 8) + 64);
  __chkstk_darwin();
  v4 = *(v0 + OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings);
  if (sub_4FF8())
  {
    v5 = objc_opt_self();
    v6 = sub_5118();
    v7 = [v5 groupSpecifierWithID:v6];

    if (v7)
    {
      sub_2258();
      v8 = sub_5118();

      [v7 setProperty:v8 forKey:PSFooterTextGroupKey];

      sub_50F8();
      type metadata accessor for NanoHealthBalanceBridgeSettings();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      sub_4F58();
      sub_5138();
      sub_5018();
      v11 = sub_5118();
      v12 = [v5 preferenceSpecifierNamed:v11 target:v1 set:"setWithNotificationsEnabled:specifier:" get:"notificationsEnabledWithSpecifier:" detail:0 cell:6 edit:0];

      if (v12)
      {

        isa = sub_5198().super.super.isa;
        [v12 setProperty:isa forKey:PSAllowMultilineTitleKey];

        v14 = sub_5198().super.super.isa;
        [v12 setProperty:v14 forKey:PSEnabledKey];

        sub_4E88(0, &qword_C420);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_5770;
        *(v15 + 32) = v7;
        *(v15 + 40) = v12;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    sub_30F0();
  }
}

void sub_30F0()
{
  v1 = v0;
  v2 = *(*(sub_4F68() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_5108() - 8) + 64);
  __chkstk_darwin();
  v4 = objc_opt_self();
  v5 = sub_5118();
  v6 = [v4 groupSpecifierWithID:v5];

  if (v6)
  {
    sub_23FC();
    if (v7)
    {
      v8 = sub_5118();
    }

    else
    {
      v8 = 0;
    }

    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];
    swift_unknownObjectRelease();
    sub_50F8();
    type metadata accessor for NanoHealthBalanceBridgeSettings();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_4F58();
    v11 = sub_5138();
    v13 = v12;
    v14 = *(v1 + OBJC_IVAR____TtC31NanoHealthBalanceBridgeSettings22SettingsViewController_settings);
    sub_5008();
    sub_3368(v11, v13, "launchHealthAppOnboardingWithSpecifier:");
    v16 = v15;

    sub_4E88(0, &qword_C420);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_5770;
    *(v17 + 32) = v6;
    *(v17 + 40) = v16;
  }

  else
  {
    __break(1u);
  }
}

void sub_3368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_5118();
  v7 = [v5 preferenceSpecifierNamed:v6 target:v3 set:0 get:0 detail:0 cell:13 edit:0];

  if (v7)
  {
    isa = sub_5198().super.super.isa;
    [v7 setProperty:isa forKey:PSAllowMultilineTitleKey];

    v9 = sub_5198().super.super.isa;
    [v7 setProperty:v9 forKey:PSEnabledKey];

    [v7 setButtonAction:a3];
  }

  else
  {
    __break(1u);
  }
}

id sub_3488()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t (*sub_34F8())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_3E28;
}

void sub_355C()
{
  if (!qword_C428)
  {
    sub_4BE0(255, &qword_C430, PSSpecifier_ptr);
    v0 = sub_5188();
    if (!v1)
    {
      atomic_store(v0, &qword_C428);
    }
  }
}

uint64_t sub_35C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3690(v11, 0, 0, 1, a1, a2);
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
    sub_4E2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4DE0(v11);
  return v7;
}

unint64_t sub_3690(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_379C(a5, a6);
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
    result = sub_5258();
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

char *sub_379C(uint64_t a1, unint64_t a2)
{
  v4 = sub_37E8(a1, a2);
  sub_3918(&off_85B0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_37E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_3A04(v5, 0);
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

  result = sub_5258();
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
        v10 = sub_5168();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3A04(v10, 0);
        result = sub_5228();
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

uint64_t sub_3918(uint64_t result)
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

  result = sub_3A7C(result, v12, 1, v3);
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

void *sub_3A04(uint64_t a1, uint64_t a2)
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

  sub_4E88(0, &qword_C490);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3A7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_4E88(0, &qword_C490);
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

unint64_t sub_3B74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_52C8();
  sub_5148();
  v6 = sub_52D8();

  return sub_3BEC(a1, a2, v6);
}

unint64_t sub_3BEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_52B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_3CA4(char *a1, int64_t a2, char a3)
{
  result = sub_3CD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_3CC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_3CD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_4E88(0, &qword_C438);
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

uint64_t sub_3DF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3E30()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_3E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_3EEC()
{
  result = qword_C458;
  if (!qword_C458)
  {
    sub_3E88(255, &qword_C450, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C458);
  }

  return result;
}

uint64_t sub_3F74(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_5278();
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

  v15 = sub_5278();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_4064(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_4104(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
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

uint64_t sub_4064(uint64_t a1)
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
    sub_5278();
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
  result = sub_5248();
  *v1 = result;
  return result;
}

uint64_t sub_4104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_5278();
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
      result = sub_5278();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_355C();
          sub_4B98(&qword_C460, sub_355C);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_42B0(v13, i, a3);
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
        sub_4BE0(0, &qword_C430, PSSpecifier_ptr);
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

void (*sub_42B0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_5238();
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
    return sub_4330;
  }

  __break(1u);
  return result;
}

unint64_t sub_4338(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4CB4();
    v3 = sub_5288();
    v4 = a1 + 32;

    while (1)
    {
      sub_4D18(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_3B74(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3CC4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_443C()
{
  v29 = sub_4FA8();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E88(0, &qword_C470, &type metadata accessor for BalanceURLBuilder.Route, &type metadata accessor for Optional);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = sub_4FC8();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_4F48();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    sub_4FB8();
    v18 = enum case for BalanceURLBuilder.Route.balanceOnboarding(_:);
    v19 = sub_4F98();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v7, v18, v19);
    (*(v20 + 56))(v7, 0, 1, v19);
    v21 = v29;
    (*(v0 + 104))(v3, enum case for BalanceURLBuilder.Source.watchApp(_:), v29);
    sub_4F88();
    (*(v0 + 8))(v3, v21);
    sub_4C28(v7);
    (*(v27 + 8))(v11, v28);
    sub_4F28(v22);
    v24 = v23;
    (*(v12 + 8))(v15, v26);
    sub_4338(&_swiftEmptyArrayStorage);
    isa = sub_50E8().super.isa;

    [v17 openSensitiveURL:v24 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_4818()
{
  v0 = *(*(sub_4F68() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_5108() - 8) + 64);
  __chkstk_darwin();
  v2 = objc_opt_self();
  v3 = sub_5118();
  v4 = [v2 groupSpecifierWithID:v3];

  if (v4)
  {
    sub_5078();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v6)
    {
      sub_5128();
      v6 = sub_5118();
    }

    [v4 setProperty:v6 forKey:PSHeaderCellClassGroupKey];

    sub_4BE0(0, &qword_C468, NSBundle_ptr);
    v7 = sub_5208();
    v8 = sub_5118();
    v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

    [v4 setProperty:v9 forKey:PSIconImageKey];
    sub_50F8();
    type metadata accessor for NanoHealthBalanceBridgeSettings();
    v10 = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = [v11 bundleForClass:v10];
    sub_4F58();
    sub_5138();
    v13 = sub_5118();

    [v4 setProperty:v13 forKey:PSTitleKey];

    sub_50F8();
    v14 = [v11 bundleForClass:v10];
    sub_4F58();
    sub_5138();
    v15 = sub_5118();

    [v4 setProperty:v15 forKey:PSStaticHeaderTextKey];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4BE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_4C28(uint64_t a1)
{
  sub_3E88(0, &qword_C470, &type metadata accessor for BalanceURLBuilder.Route, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_4CB4()
{
  if (!qword_C478)
  {
    v0 = sub_5298();
    if (!v1)
    {
      atomic_store(v0, &qword_C478);
    }
  }
}

uint64_t sub_4D18(uint64_t a1, uint64_t a2)
{
  sub_4D7C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_4D7C()
{
  if (!qword_C480)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_C480);
    }
  }
}

uint64_t sub_4DE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4E2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_4E88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_52A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}