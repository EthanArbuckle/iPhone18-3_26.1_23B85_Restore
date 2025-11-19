char *sub_BAAF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_BAB44(a1, a2);
  sub_BAC74(&off_F0108);
  return v3;
}

char *sub_BAB44(uint64_t a1, unint64_t a2)
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

  v6 = sub_BAD60(v5, 0);
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

  result = sub_C6044();
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
        v10 = sub_C5534();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_BAD60(v10, 0);
        result = sub_C5FB4();
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

uint64_t sub_BAC74(uint64_t result)
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

  result = sub_BADD4(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_BAD60(uint64_t a1, uint64_t a2)
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

  sub_3CB0(&qword_10A0F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_BADD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB0(&qword_10A0F8);
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

uint64_t sub_BAECC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D138;

  return sub_B9ED4(v2, v3, v5, v4);
}

uint64_t sub_BAF90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D138;

  return sub_BA3E4(v2, v3, v4);
}

uint64_t sub_BB050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D138;

  return sub_BA4CC(a1, v4, v5, v6);
}

uint64_t sub_BB11C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BB154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D138;

  return sub_1AD54(a1, v4);
}

uint64_t sub_BB20C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CE7C;

  return sub_1AD54(a1, v4);
}

uint64_t sub_BB2C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_C5774();
  v2[4] = sub_C5764();
  v4 = sub_C5724();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_BB35C, v4, v3);
}

uint64_t sub_BB35C()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_actionHandler;
  v2 = *v1;
  *(v0 + 56) = *v1;
  *(v0 + 64) = *(v1 + 8);
  if (!v2)
  {

    if (qword_104338 != -1)
    {
      swift_once();
    }

    v14 = sub_C4CD4();
    sub_B680(v14, qword_10A010);
    v15 = sub_C4CB4();
    v16 = sub_C5A44();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Received a notification response from outside the main app; ignoring.", v17, 2u);
    }

    goto LABEL_24;
  }

  v3 = *(v0 + 16);

  v4 = [v3 actionIdentifier];
  v5 = sub_C5484();
  v7 = v6;

  v8._rawValue = &off_F0C88;
  v37._countAndFlagsBits = v5;
  v37._object = v7;
  v9 = sub_C6134(v8, v37);

  if (v9 <= 1)
  {
LABEL_3:
    v10 = *(v0 + 32);
    v11 = [*(v0 + 16) notification];
    *(v0 + 72) = v11;

    v35 = (v2 + *v2);
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_BB7F0;

    return v35(v10, &protocol witness table for MainActor, v11, v9);
  }

  v18 = [*(v0 + 16) actionIdentifier];
  v19 = sub_C5484();
  v21 = v20;

  if (v19 == sub_C5484() && v21 == v22)
  {

    goto LABEL_18;
  }

  v24 = sub_C6244();

  if (v24)
  {
LABEL_18:
    v25 = [*(v0 + 16) notification];
    v26 = [v25 request];

    v27 = [v26 content];
    v28 = [v27 categoryIdentifier];

    v29 = sub_C5484();
    v31 = v30;

    v32._rawValue = &off_F0C38;
    v38._countAndFlagsBits = v29;
    v38._object = v31;
    v9 = sub_C6134(v32, v38);

    if (!v9)
    {

      goto LABEL_3;
    }

    if (v9 == 1)
    {
      v33 = sub_C6244();

      if ((v33 & 1) == 0)
      {
      }

      v9 = 0;
      goto LABEL_3;
    }
  }

  sub_2881C(v2);

LABEL_24:
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_BB7F0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_BB94C, v4, v3);
}

uint64_t sub_BB94C()
{
  sub_2881C(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_BB9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_C5724();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_BBA44, v4, v6);
}

uint64_t sub_BBA44()
{
  v1 = [*(v0 + 16) request];
  v2 = [v1 content];

  v3 = [v2 categoryIdentifier];
  v4 = sub_C5484();
  v6 = v5;

  v7._rawValue = &off_F0C38;
  v13._countAndFlagsBits = v4;
  v13._object = v6;
  v8 = sub_C6134(v7, v13);

  if (v8 == 1)
  {
    v9 = 26;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_BBB3C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_BBB8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CE7C;

  return sub_B9A54(v2, v3, v5, v4);
}

uint64_t sub_BBC4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_BBC8C()
{
  result = qword_10A130;
  if (!qword_10A130)
  {
    sub_BE28(255, &qword_107740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A130);
  }

  return result;
}

uint64_t sub_BBD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3CB0(&qword_104E88);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_B954(a3, v25 - v10, &qword_104E88);
  v12 = sub_C5794();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_C060(v11, &qword_104E88);
  }

  else
  {
    sub_C5784();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_C5724();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_C54E4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_C060(a3, &qword_104E88);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_C060(a3, &qword_104E88);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_BC018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_C2C40(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v4 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__streaks;
  swift_beginAccess();
  return sub_C1D84(v3 + v4, a2, type metadata accessor for InsightsDataManager.Streaks);
}

uint64_t sub_BC0F4(uint64_t a1)
{
  v2 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C1D84(a1, v4, type metadata accessor for InsightsDataManager.Streaks);
  return sub_B2DA4(v4);
}

uint64_t sub_BC194(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_3CB0(&qword_10A268);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_3CB0(&qword_10A270);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_3CB0(&qword_10A278);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_3CB0(&qword_10A280);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_13DC4(a1, a1[3]);
  sub_C2E8C();
  sub_C6384();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_C2F34();
      sub_C61B4();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_C2EE0();
      v16 = v22;
      sub_C61B4();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_C2F88();
    sub_C61B4();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_BC514(uint64_t a1)
{
  v2 = sub_C2F34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BC550(uint64_t a1)
{
  v2 = sub_C2F34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_BC58C()
{
  v1 = 0x7A69726F68747561;
  if (*v0 != 1)
  {
    v1 = 0x616C696176616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F687475616E75;
  }
}

uint64_t sub_BC5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C1E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BC624(uint64_t a1)
{
  v2 = sub_C2E8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BC660(uint64_t a1)
{
  v2 = sub_C2E8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_BC69C(uint64_t a1)
{
  v2 = sub_C2F88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BC6D8(uint64_t a1)
{
  v2 = sub_C2F88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_BC714(uint64_t a1)
{
  v2 = sub_C2EE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BC750(uint64_t a1)
{
  v2 = sub_C2EE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_BC78C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C1F78(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_BC7D4()
{
  v1 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___notificationSettings;
  v2 = *(v0 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___notificationSettings);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___notificationSettings);
  }

  else
  {
    if (qword_104340 != -1)
    {
      swift_once();
    }

    v4 = [*(qword_115778 + OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter) notificationSettings];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_BC888()
{
  v1 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___streakOnSpecifiers;
  if (*(v0 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___streakOnSpecifiers))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___streakOnSpecifiers);
  }

  else
  {
    v2 = sub_BC8EC();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_BC8EC()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v2 = sub_C5414();
  __chkstk_darwin(v2 - 8);
  v18 = _swiftEmptyArrayStorage;
  sub_C53B4();
  v3 = *&v0[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle];
  sub_C3D44();
  sub_C54A4();
  v17 = type metadata accessor for NotificationSettingsController();
  v16[0] = v0;
  v4 = v0;
  v5 = sub_C5444();

  v6 = v17;
  if (v17)
  {
    v7 = sub_13DC4(v16, v17);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_C6224();
    (*(v8 + 8))(v10, v6);
    sub_BED0(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(PSSpecifier) initWithName:v5 target:v11 set:"setSpecifierValue:for:" get:"specifierValueFor:" detail:0 cell:-1 edit:0];

  result = swift_unknownObjectRelease();
  if (v12)
  {
    v14 = sub_C5444();
    [v12 setIdentifier:{v14, v16[0]}];

    v16[0] = type metadata accessor for TimePickerCell();
    sub_3CB0(&qword_10A1F8);
    [v12 setProperty:sub_C6274() forKey:PSCellClassKey];
    swift_unknownObjectRelease();
    v15 = v12;
    sub_C5654();
    if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_C56A4();
    }

    sub_C56D4();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BCC70()
{
  v1 = sub_3CB0(&qword_1063B8);
  __chkstk_darwin(v1 - 8);
  v47 = &v41 - v2;
  v3 = sub_C3934();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_C37D4();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_C37E4();
  v48 = *(v51 - 8);
  v8 = __chkstk_darwin(v51);
  v52 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v53 = &v41 - v11;
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = sub_C3D54();
  __chkstk_darwin(v14 - 8);
  v15 = sub_C5414();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for NotificationSettingsController();
  v54.receiver = v0;
  v54.super_class = v16;
  objc_msgSendSuper2(&v54, "viewDidLoad");
  sub_C53B4();
  v17 = *&v0[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle];
  sub_C3D44();
  sub_C54A4();
  v18 = sub_C5444();

  v43 = v0;
  v19 = v3;
  [v0 setTitle:v18];

  v44 = "Notifications/custom";
  sub_C53B4();
  *v7 = v16;
  v20 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v21 = *(v5 + 104);
  v22 = v45;
  v21(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v45);
  sub_C3D44();
  v49 = v13;
  sub_C37F4();
  sub_C53B4();
  *v7 = v16;
  v21(v7, v20, v22);
  sub_C3D44();
  sub_C37F4();
  sub_C53B4();
  *v7 = v16;
  v23 = v46;
  v21(v7, v20, v22);
  sub_C3D44();
  v24 = v47;
  sub_C37F4();
  sub_C3914();
  if ((*(v23 + 48))(v24, 1, v19) == 1)
  {
    v25 = *(v48 + 8);
    v26 = v51;
    v25(v52, v51);
    v25(v53, v26);
    v25(v49, v26);
    return sub_C060(v24, &qword_1063B8);
  }

  else
  {
    v28 = *(v23 + 32);
    v42 = v19;
    v28(v50, v24, v19);
    v47 = "CustomAttributeProviderConcrete";
    sub_3CB0(&qword_10A210);
    v29 = v48;
    v30 = *(v48 + 72);
    v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_CE0A0;
    v33 = v32 + v31;
    v34 = *(v29 + 16);
    v35 = v53;
    v36 = v51;
    v34(v33, v53, v51);
    v37 = v52;
    v34(v33 + v30, v52, v36);
    v38 = v49;
    v39 = v50;
    sub_C5AD4();

    (*(v23 + 8))(v39, v42);
    v40 = *(v29 + 8);
    v40(v37, v36);
    v40(v35, v36);
    return (v40)(v38, v36);
  }
}

uint64_t sub_BD3E8()
{
  v1 = v0;
  v2 = sub_C4AD4();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3CB0(&qword_10A1D8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_3CB0(&qword_10A1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for NotificationSettingsController();
  v30.receiver = v0;
  v30.super_class = v16;
  objc_msgSendSuper2(&v30, "viewWillLayoutSubviews");
  sub_C4AC4();
  v17 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_notificationStatus;
  swift_beginAccess();
  v18 = *(v5 + 56);
  sub_B954(v1 + v17, v7, &qword_10A1E0);
  v19 = v29;
  sub_B954(v15, &v7[v18], &qword_10A1E0);
  v20 = *(v19 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    sub_B954(v7, v13, &qword_10A1E0);
    if (v20(&v7[v18], 1, v2) != 1)
    {
      v23 = v27;
      (*(v19 + 32))(v27, &v7[v18], v2);
      sub_C2C40(&qword_10A1E8, &type metadata accessor for JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate);
      v24 = sub_C53A4();
      v25 = *(v19 + 8);
      v25(v23, v2);
      v25(v13, v2);
      sub_C060(v7, &qword_10A1E0);
      if (v24)
      {
        return sub_C060(v15, &qword_10A1E0);
      }

      goto LABEL_7;
    }

    (*(v19 + 8))(v13, v2);
LABEL_6:
    sub_C060(v7, &qword_10A1D8);
LABEL_7:
    v21 = v28;
    sub_B954(v15, v28, &qword_10A1E0);
    swift_beginAccess();
    sub_C2CE8(v21, v1 + v17);
    swift_endAccess();
    [v1 reloadSpecifiers];
    return sub_C060(v15, &qword_10A1E0);
  }

  if (v20(&v7[v18], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_C060(v7, &qword_10A1E0);
  return sub_C060(v15, &qword_10A1E0);
}

void sub_BD85C(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NotificationSettingsController();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase];
  *&v1[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase] = 0x8000000000000000;
  sub_C1BB4(v3);
  [v1 reloadSpecifiers];
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v1 selector:"saveIfNeeded" name:UIApplicationWillResignActiveNotification object:0];
}

void sub_BDA2C()
{
  v1 = sub_C3D54();
  __chkstk_darwin(v1 - 8);
  v71 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_C5414();
  __chkstk_darwin(v3 - 8);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_C4AD4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3CB0(&qword_10A1D8);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v11 = sub_3CB0(&qword_10A1E0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v67 - v15;
  if (qword_104340 != -1)
  {
    swift_once();
  }

  v17 = [*(qword_115778 + OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter) notificationSettings];
  v18 = *&v0[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___notificationSettings];
  v68 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___notificationSettings;
  *&v0[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___notificationSettings] = v17;

  v83 = _swiftEmptyArrayStorage;
  v19 = objc_opt_self();
  v20 = sub_C5444();
  v69 = v19;
  v21 = [v19 groupSpecifierWithID:v20];

  v70 = v21;
  if (!v21)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v22 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_notificationStatus;
  swift_beginAccess();
  (*(v6 + 104))(v16, enum case for JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate.authorized(_:), v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v23 = *(v8 + 48);
  sub_B954(&v0[v22], v10, &qword_10A1E0);
  sub_B954(v16, &v10[v23], &qword_10A1E0);
  v24 = *(v6 + 48);
  v25 = v0;
  if (v24(v10, 1, v5) != 1)
  {
    sub_B954(v10, v14, &qword_10A1E0);
    if (v24(&v10[v23], 1, v5) != 1)
    {
      v27 = v67;
      (*(v6 + 32))(v67, &v10[v23], v5);
      sub_C2C40(&qword_10A1E8, &type metadata accessor for JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate);
      v28 = sub_C53A4();
      v29 = *(v6 + 8);
      v29(v27, v5);
      sub_C060(v16, &qword_10A1E0);
      v29(v14, v5);
      sub_C060(v10, &qword_10A1E0);
      v26 = v70;
      if ((v28 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    sub_C060(v16, &qword_10A1E0);
    (*(v6 + 8))(v14, v5);
LABEL_9:
    sub_C060(v10, &qword_10A1D8);
    v26 = v70;
    goto LABEL_12;
  }

  sub_C060(v16, &qword_10A1E0);
  if (v24(&v10[v23], 1, v5) != 1)
  {
    goto LABEL_9;
  }

  sub_C060(v10, &qword_10A1E0);
  v26 = v70;
LABEL_11:
  sub_C53B4();
  v30 = *&v0[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle];
  sub_C3D44();
  sub_C54A4();
  v31 = sub_C5444();

  [v26 setProperty:v31 forKey:PSFooterTextGroupKey];

LABEL_12:
  v32 = v26;
  sub_C5654();
  if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v83 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_C56A4();
  }

  sub_C56D4();
  sub_C24E8(&v84);
  v33 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v71 = v32;
    v34 = v84;
    v80 = v86;
    v81 = v87;
    v82 = v88;
    v79 = v85;
    v78 = v84;
    v35 = objc_allocWithZone(PSSpecifier);
    sub_A89D4(&v78, v73);
    v36 = [v35 initWithName:0 target:v25 set:0 get:0 detail:0 cell:-1 edit:0];
    if (!v36)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v37 = v36;
    v38 = sub_C5444();
    [v37 setIdentifier:v38];

    v73[0] = type metadata accessor for CustomizeNotificationsCell();
    sub_3CB0(&qword_10A200);
    [v37 setProperty:sub_C6274() forKey:PSCellClassKey];
    swift_unknownObjectRelease();
    v73[0] = v34;
    v73[1] = v33;
    v74 = v85;
    v75 = v86;
    v76 = v87;
    v77 = v88;
    v39 = sub_C6274();
    v40 = sub_C5444();
    [v37 setProperty:v39 forKey:v40];
    swift_unknownObjectRelease();

    [v37 setButtonAction:"onButtonActionFor:"];
    isa = sub_C5714().super.super.isa;
    [v37 setProperty:isa forKey:PSAllowMultilineTitleKey];

    v42 = v37;
    sub_C5654();
    if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v83 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_C56A4();
    }

    sub_C56D4();

    v32 = v71;
  }

  v43 = sub_C5444();
  v44 = [v69 groupSpecifierWithID:v43];

  if (!v44)
  {
    goto LABEL_34;
  }

  sub_C53B4();
  v45 = *&v25[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle];
  sub_C3D44();
  v46 = v45;
  sub_C54A4();
  v47 = sub_C5444();

  [v44 setProperty:v47 forKey:PSFooterTextGroupKey];

  v48 = v44;
  sub_C5654();
  if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v83 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_C56A4();
  }

  sub_C56D4();
  sub_C53B4();
  sub_C3D44();
  sub_C54A4();
  *(&v79 + 1) = type metadata accessor for NotificationSettingsController();
  *&v78 = v25;
  v49 = v25;
  v50 = v25;
  v51 = sub_C5444();

  v52 = *(&v79 + 1);
  if (*(&v79 + 1))
  {
    v53 = sub_13DC4(&v78, *(&v79 + 1));
    v54 = *(v52 - 8);
    __chkstk_darwin(v53);
    v56 = &v67 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v56);
    v57 = sub_C6224();
    (*(v54 + 8))(v56, v52);
    sub_BED0(&v78);
  }

  else
  {
    v57 = 0;
  }

  v58 = [objc_allocWithZone(PSSpecifier) initWithName:v51 target:v57 set:"setSpecifierValue:for:" get:"specifierValueFor:" detail:0 cell:6 edit:0];

  swift_unknownObjectRelease();
  if (!v58)
  {
    goto LABEL_35;
  }

  v59 = sub_C5444();
  [v58 setIdentifier:v59];

  v60 = sub_BC7D4();
  [v60 authorizationStatus];

  v61 = sub_C5714().super.super.isa;
  [v58 setProperty:v61 forKey:PSEnabledKey];

  v62 = sub_C5714().super.super.isa;
  [v58 setProperty:v62 forKey:PSAllowMultilineTitleKey];

  v63 = v58;
  sub_C5654();
  if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v83 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_C56A4();
  }

  sub_C56D4();
  if ([*&v49[v68] authorizationStatus] == &dword_0 + 2 && *&v50[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase] >> 62 != 1)
  {
    if ([*&v50[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_defaults] isStreakReminderEnabled])
    {
      v64 = sub_BC888();
      sub_3C508(v64);
    }
  }

  v65 = v83;
  sub_BE8DC(v83);
  v66 = sub_C5664().super.isa;

  [v50 setSpecifiers:v66];

  sub_BE8DC(v65);
}

double *sub_BE8DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_C60E4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_52698(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_C5FE4();
        sub_BE28(0, &qword_106658);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          sub_52698((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v7 + 1;
        sub_D564(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_BE28(0, &qword_106658);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 2);
        v10 = *(v3 + 3);
        if (v11 >= v10 >> 1)
        {
          sub_52698((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v11 + 1;
        sub_D564(v12, &v3[4 * v11 + 4]);
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

id sub_BEB48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_defaults;
  sub_BE28(0, &qword_10A110);
  *&v3[v7] = sub_C5A74();
  v8 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle;
  v9 = type metadata accessor for NotificationSettingsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v8] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *&v4[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___notificationSettings] = 0;
  *&v4[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___streakOnSpecifiers] = 0;
  v4[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_needsSaveStreaks] = 0;
  *&v4[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase] = 0x8000000000000000;
  v11 = &v4[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel];
  v11[64] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  v12 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_notificationStatus;
  v13 = sub_C4AD4();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_configManager;
  sub_C4AF4();
  swift_allocObject();
  *&v4[v14] = sub_C4AE4();
  if (a2)
  {
    v15 = sub_C5444();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v4;
  v18.super_class = v9;
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

id sub_BED74(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_defaults;
  sub_BE28(0, &qword_10A110);
  *&v1[v4] = sub_C5A74();
  v5 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle;
  v6 = type metadata accessor for NotificationSettingsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v2[v5] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *&v2[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___notificationSettings] = 0;
  *&v2[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController____lazy_storage___streakOnSpecifiers] = 0;
  v2[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_needsSaveStreaks] = 0;
  *&v2[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase] = 0x8000000000000000;
  v8 = &v2[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel];
  v8[64] = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  v9 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_notificationStatus;
  v10 = sub_C4AD4();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_configManager;
  sub_C4AF4();
  swift_allocObject();
  *&v2[v11] = sub_C4AE4();
  v14.receiver = v2;
  v14.super_class = v6;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

id sub_BEF3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettingsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NotificationSettingsController()
{
  result = qword_10A1C0;
  if (!qword_10A1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BF0A4()
{
  sub_BF17C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_BF17C()
{
  if (!qword_10A1D0)
  {
    sub_C4AD4();
    v0 = sub_C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_10A1D0);
    }
  }
}

uint64_t sub_BF1FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_C2BF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_BF22C(uint64_t *a1@<X8>)
{
  v2 = 0xEB0000000070756FLL;
  v3 = *v1;
  v4 = 0x72476465696E6564;
  v5 = 0xEC000000656C6767;
  v6 = 0x6F546B6165727473;
  if (v3 != 6)
  {
    v6 = 0x69546B6165727473;
    v5 = 0xEA0000000000656DLL;
  }

  v7 = 0xEC0000006B6E694CLL;
  v8 = 0x656C756465686373;
  if (v3 != 4)
  {
    v8 = 0x72476B6165727473;
    v7 = 0xEB0000000070756FLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000000000C7DA0;
  v10 = 0xD000000000000012;
  if (v3 != 2)
  {
    v10 = 0x656C756465686373;
    v9 = 0xED000070756F7247;
  }

  if (*v1)
  {
    v4 = 0x75426465696E6564;
    v2 = 0xEC0000006E6F7474;
  }

  if (*v1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

char *sub_BF35C()
{
  if (qword_104320 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DataStackConfiguration();
  v1 = sub_B680(v0, qword_115740);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(type metadata accessor for CoreDataStackShared());
  result = sub_ADBE8(v2, v3);
  qword_10A140 = result;
  return result;
}

void sub_BF3F0()
{
  if (qword_104348 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10A140 + OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_container);
  v1 = sub_5A830(&off_F0DE8);
  type metadata accessor for InsightsDataManager(0);
  swift_allocObject();
  v2 = v0;
  v3 = sub_B5DF4(v2, v1);

  qword_10A148 = v3;
}

uint64_t sub_BF4A4(uint64_t a1, void *a2)
{
  v4 = sub_C3E84();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_C3EA4();
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_C3CB4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v38 = a2;
  v16 = [a2 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_C5484();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = sub_C2BF4(v18, v20);
  v46 = v21;
  sub_B954(a1, v47, &qword_104818);
  if (v21 == 7)
  {
    if (!v48)
    {
LABEL_14:
      v33 = &unk_10A1F0;
      v34 = &v46;
      return sub_C060(v34, v33);
    }

    sub_B954(v47, v45, &qword_104818);
    if (swift_dynamicCast())
    {
      v37 = v10;
      (*(v10 + 32))(v13, v15, v9);
      v38 = *&v43[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_defaults];
      sub_C3E64();
      v28 = v40;
      v27 = v41;
      v36 = *(v40 + 104);
      v36(v6, enum case for Calendar.Component.hour(_:), v41);
      v29 = sub_C3E94();
      v40 = *(v28 + 8);
      (v40)(v6, v27);
      v39 = *(v39 + 8);
      (v39)(v8, v42);
      [v38 setStreakReminderHour:v29];
      sub_C3E64();
      v36(v6, enum case for Calendar.Component.minute(_:), v27);
      v30 = sub_C3E94();
      (v40)(v6, v27);
      (v39)(v8, v42);
      [v38 setStreakReminderMinute:v30];
      (*(v37 + 8))(v13, v9);
      v31 = v43;
      v43[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_needsSaveStreaks] = 1;
      v32 = *&v31[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase];
      *&v31[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase] = 0x8000000000000000;
      sub_C1BB4(v32);
      sub_BED0(v45);
      v33 = &qword_104818;
      v34 = v47;
      return sub_C060(v34, v33);
    }

LABEL_13:
    sub_BED0(v45);
    goto LABEL_14;
  }

  if (v21 != 6 || !v48)
  {
    goto LABEL_14;
  }

  sub_B954(v47, v45, &qword_104818);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v22 = v44;
  v23 = v43;
  [*&v43[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_defaults] setIsStreakReminderEnabled:v44];
  [v23 beginUpdates];
  v23[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_needsSaveStreaks] = 1;
  v24 = *&v23[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase];
  *&v23[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase] = 0x8000000000000000;
  sub_C1BB4(v24);
  v25 = sub_BC888();
  sub_BE8DC(v25);

  v26.super.isa = sub_C5664().super.isa;

  if (v22 == 1)
  {
    [v23 insertContiguousSpecifiers:v26.super.isa afterSpecifier:v38 animated:1];
  }

  else
  {
    [v23 removeContiguousSpecifiers:v26.super.isa animated:1];
  }

  [v23 endUpdates];
  sub_BED0(v45);
  v33 = &qword_104818;
  v34 = v47;
  return sub_C060(v34, v33);
}

id sub_BFB18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v47 = sub_C3DC4();
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_C3DD4();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_C3D94();
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_C3CB4();
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_C3EA4();
  v38 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - v15;
  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_C5484();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  result = sub_C2BF4(v19, v21);
  if (result < 6u)
  {
LABEL_5:
    v23 = v48;
    *v48 = 0u;
    *(v23 + 1) = 0u;
    return result;
  }

  if (result != 6)
  {
    if (result == 7)
    {
      sub_C3E64();
      v24 = *&v45[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_defaults];
      v45 = [v24 streakReminderHour];
      v37 = [v24 streakReminderMinute];
      sub_C3C74();
      (*(v44 + 104))(v8, enum case for Calendar.MatchingPolicy.nextTime(_:), v6);
      v25 = v40;
      (*(v40 + 104))(v5, enum case for Calendar.RepeatedTimePolicy.first(_:), v46);
      v26 = v43;
      v27 = v41;
      (*(v43 + 104))(v41, enum case for Calendar.SearchDirection.forward(_:), v47);
      sub_C3E04();
      (*(v26 + 8))(v27, v47);
      (*(v25 + 8))(v5, v46);
      (*(v44 + 8))(v8, v6);
      v28 = v39;
      v29 = v10;
      v30 = v42;
      (*(v39 + 8))(v29, v42);
      (*(v38 + 8))(v13, v11);
      if ((*(v28 + 48))(v16, 1, v30) != 1)
      {
        v34 = v48;
        v48[3] = v30;
        v35 = sub_BF70(v34);
        return (*(v28 + 32))(v35, v16, v30);
      }

      result = sub_C060(v16, &qword_104800);
    }

    goto LABEL_5;
  }

  v31 = v45;
  v32 = sub_BC7D4();
  v33 = [v32 authorizationStatus];

  if (v33 == &dword_0 + 2 && *&v31[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase] >> 62 != 1)
  {
    result = [*&v31[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_defaults] isStreakReminderEnabled];
  }

  else
  {
    result = 0;
  }

  v36 = v48;
  v48[3] = &type metadata for Bool;
  *v36 = result;
  return result;
}

id sub_C022C(void *a1)
{
  v2 = sub_C4AD4();
  v3 = *(v2 - 8);
  v58 = v2;
  v59 = v3;
  __chkstk_darwin(v2);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB0(&qword_10A1D8);
  __chkstk_darwin(v5);
  v7 = &v54 - v6;
  v8 = sub_3CB0(&qword_10A1E0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v54 - v12;
  v14 = type metadata accessor for AppLaunchAction();
  __chkstk_darwin(v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3CB0(&qword_1063B8);
  __chkstk_darwin(v17 - 8);
  v61 = &v54 - v18;
  v60 = type metadata accessor for OpenSensitiveURLAction.Destination();
  v19 = __chkstk_darwin(v60);
  v57 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v54 - v21;
  v23 = [a1 identifier];
  if (v23)
  {
    v24 = v23;
    v25 = sub_C5484();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  result = sub_C2BF4(v25, v27);
  if (result <= 2u)
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      result = [v62 view];
      if (result)
      {
        v29 = result;
        v30 = [result window];

        if (v30)
        {
          v31 = [v30 windowScene];
        }

        else
        {
          v31 = 0;
        }

        swift_storeEnumTagMultiPayload();
        v38 = v61;
        sub_80DB0(v61);
        sub_80AA4(v38, v31, 0, 0);

        v39 = v38;
        goto LABEL_30;
      }

      __break(1u);
    }

    else
    {
      result = [v62 view];
      if (result)
      {
        v35 = result;
        v36 = [result window];

        if (v36)
        {
          v37 = [v36 windowScene];
        }

        else
        {
          v37 = 0;
        }

        *v16 = 0;
        swift_storeEnumTagMultiPayload();
        v40 = v61;
        sub_77EC0(v61);
        sub_80AA4(v40, v37, 0, 0);

        sub_C060(v40, &qword_1063B8);
        v41 = type metadata accessor for AppLaunchAction;
        v42 = v16;
        return sub_C2C88(v42, v41);
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (result - 5 >= 4 && result != 3)
  {
    result = [v62 view];
    if (!result)
    {
      goto LABEL_36;
    }

    v32 = result;
    v33 = [result window];

    v34 = v58;
    if (v33)
    {
      v55 = [v33 windowScene];
    }

    else
    {
      v55 = 0;
    }

    v43 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_notificationStatus;
    v44 = v62;
    swift_beginAccess();
    v45 = v59;
    (*(v59 + 104))(v13, enum case for JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate.unavailable(_:), v34);
    (*(v45 + 56))(v13, 0, 1, v34);
    v46 = *(v5 + 48);
    sub_B954(v44 + v43, v7, &qword_10A1E0);
    sub_B954(v13, &v7[v46], &qword_10A1E0);
    v47 = *(v45 + 48);
    if (v47(v7, 1, v34) == 1)
    {
      sub_C060(v13, &qword_10A1E0);
      if (v47(&v7[v46], 1, v34) == 1)
      {
        sub_C060(v7, &qword_10A1E0);
        v48 = v61;
LABEL_29:
        v22 = v57;
        v49 = v55;
        swift_storeEnumTagMultiPayload();
        sub_80DB0(v48);
        sub_80AA4(v48, v49, 0, 0);

        v39 = v48;
LABEL_30:
        sub_C060(v39, &qword_1063B8);
        v41 = type metadata accessor for OpenSensitiveURLAction.Destination;
        v42 = v22;
        return sub_C2C88(v42, v41);
      }
    }

    else
    {
      sub_B954(v7, v11, &qword_10A1E0);
      if (v47(&v7[v46], 1, v34) != 1)
      {
        v50 = v59;
        v51 = &v7[v46];
        v52 = v56;
        (*(v59 + 32))(v56, v51, v34);
        sub_C2C40(&qword_10A1E8, &type metadata accessor for JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate);
        sub_C53A4();
        v53 = *(v50 + 8);
        v53(v52, v34);
        sub_C060(v13, &qword_10A1E0);
        v53(v11, v34);
        sub_C060(v7, &qword_10A1E0);
        v48 = v61;
        goto LABEL_29;
      }

      sub_C060(v13, &qword_10A1E0);
      (*(v59 + 8))(v11, v34);
    }

    sub_C060(v7, &qword_10A1D8);
    v48 = v61;
    goto LABEL_29;
  }

  return result;
}

void sub_C0AA8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_3CB0(&qword_104E88);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  if (v0[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_needsSaveStreaks] == 1)
  {
    v5 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase;
    v6 = *&v0[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase];
    if (v6 == 0x8000000000000000 || (v6 & 0xC000000000000000) == 0x4000000000000000)
    {
      v8 = v0;
      v9 = sub_BC7D4();
      v10 = [v9 authorizationStatus];

      if (v10 == &dword_0 + 2)
      {
        v11 = [objc_opt_self() sharedApplication];
        v12 = sub_C5444();
        v13 = [v11 beginBackgroundTaskWithName:v12 expirationHandler:0];

        v14 = sub_C5794();
        (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
        sub_C5774();
        v15 = v8;
        v16 = sub_C5764();
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = &protocol witness table for MainActor;
        v17[4] = v15;
        v17[5] = v13;
        v17[6] = ObjectType;
        v18 = sub_BBD18(0, 0, v4, &unk_D42D8, v17);
        v19 = *&v8[v5];
        *&v8[v5] = v18;
        sub_C1BB4(v19);
      }
    }
  }
}

uint64_t sub_C0CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = type metadata accessor for StreakSummary();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for InsightsDataManager.Streaks(0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_C5774();
  v5[15] = sub_C5764();
  v7 = sub_C5724();
  v5[16] = v7;
  v5[17] = v6;

  return _swift_task_switch(sub_C0DCC, v7, v6);
}

uint64_t sub_C0DCC()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_needsSaveStreaks;
  v0[18] = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_needsSaveStreaks;
  if (*(v1 + v2) == 1)
  {
    if (qword_104350 != -1)
    {
      swift_once();
      v1 = v0[7];
    }

    v0[19] = qword_10A148;
    if ([*(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_defaults) isStreakReminderEnabled])
    {
      v3 = swift_task_alloc();
      v0[20] = v3;
      *v3 = v0;
      v3[1] = sub_C102C;

      return sub_8B520();
    }

    if (qword_104340 != -1)
    {
      swift_once();
    }

    v5 = *(qword_115778 + OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter);
    isa = sub_C5664().super.isa;
    [v5 removePendingNotificationRequestsWithIdentifiers:isa];
  }

  else
  {
  }

  v7 = v0[18];
  v8 = v0[7];
  v9 = *(v8 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase);
  *(v8 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase) = 0x8000000000000008;
  sub_C1BB4(v9);
  *(v8 + v7) = 0;
  v10 = v0[8];
  v11 = [objc_opt_self() sharedApplication];
  [v11 endBackgroundTask:v10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_C102C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_C114C, v3, v2);
}

uint64_t sub_C114C()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[12];
  v19 = v0[9];
  swift_getKeyPath();
  v0[5] = v1;
  sub_C2C40(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v4 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_C1D84(v1 + v4, v2, type metadata accessor for InsightsDataManager.Streaks);
  v5 = *(v19 + 28);
  v6 = v0[14];
  if (*(v2 + *(v3 + 20) + v5) >= 2)
  {
    v8 = *(v6 + v5);
    sub_C2C88(v6, type metadata accessor for InsightsDataManager.Streaks);
    v7 = v8 < 3;
  }

  else
  {
    sub_C2C88(v6, type metadata accessor for InsightsDataManager.Streaks);
    v7 = 0;
  }

  v9 = v0[19];
  v10 = v0[13];
  swift_getKeyPath();
  v0[6] = v9;
  sub_C3F44();

  sub_C1D84(v1 + v4, v10, type metadata accessor for InsightsDataManager.Streaks);
  v11 = v0[13];
  v12 = v11;
  if (v7)
  {
    v12 = v11 + *(v3 + 20);
  }

  v14 = v0[10];
  v13 = v0[11];
  sub_C1D84(v12, v14, type metadata accessor for StreakSummary);
  sub_C2C88(v11, type metadata accessor for InsightsDataManager.Streaks);
  sub_C1DEC(v14, v13);
  if (qword_104340 != -1)
  {
    swift_once();
  }

  v15 = v0[15];

  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_C1444;
  v17 = v0[11];

  return sub_B8454(v15, &protocol witness table for MainActor, v17, v7);
}

uint64_t sub_C1444()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_C16B8;
  }

  else
  {
    v5 = sub_C159C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_C159C()
{
  v1 = v0[11];

  sub_C2C88(v1, type metadata accessor for StreakSummary);
  v2 = v0[18];
  v3 = v0[7];
  v4 = *(v3 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase);
  *(v3 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase) = 0x8000000000000008;
  sub_C1BB4(v4);
  *(v3 + v2) = 0;
  v5 = v0[8];
  v6 = [objc_opt_self() sharedApplication];
  [v6 endBackgroundTask:v5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_C16B8()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[7];

  sub_C2C88(v2, type metadata accessor for StreakSummary);
  v4 = *&v3[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase];
  *&v3[OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_savePhase] = v1 | 0x4000000000000000;
  swift_errorRetain();
  sub_C1BB4(v4);
  [v3 reloadSpecifiers];

  v5 = v0[8];
  v6 = [objc_opt_self() sharedApplication];
  [v6 endBackgroundTask:v5];

  v7 = v0[1];

  return v7();
}

unint64_t sub_C1848(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_C1864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_C18C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_C1920(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_C195C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_C19B8(v7, v9) & 1;
}

uint64_t sub_C19B8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_C6244() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_C6244() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (sub_C6244() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (sub_C6244() & 1) != 0)
  {
    v8 = *(a1 + 64);
    v9 = *(a2 + 64);
    if (v8 == 3)
    {
      if (v9 == 3)
      {
        return 1;
      }
    }

    else if (v8 == v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_C1AAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_C1AEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CE7C;

  return sub_C0CBC(a1, v4, v5, v6, v7);
}

unint64_t sub_C1BB4(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_C1BD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C1C0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D138;

  return sub_1AD54(a1, v4);
}

uint64_t sub_C1CC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CE7C;

  return sub_1AD54(a1, v4);
}

uint64_t sub_C1D84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_C1DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C1E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F687475616E75 && a2 == 0xEC00000064657A69;
  if (v4 || (sub_C6244() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEA00000000006465 || (sub_C6244() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 2;
  }

  else
  {
    v6 = sub_C6244();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_C1F78(void *a1)
{
  v31 = sub_3CB0(&qword_10A228);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_3CB0(&qword_10A230);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_3CB0(&qword_10A238);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_3CB0(&qword_10A240);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_13DC4(a1, v12);
  sub_C2E8C();
  v13 = v34;
  sub_C6374();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_C61A4();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_714E0();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_C2F34();
          sub_C6144();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_BED0(v35);
          return v9;
        }

        v40 = 2;
        sub_C2EE0();
        v24 = v11;
        sub_C6144();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_C2F88();
        v24 = v11;
        sub_C6144();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_C6014();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_3CB0(&qword_107F60) + 48);
    *v22 = &type metadata for NotificationssAvailabilityState;
    sub_C6154();
    sub_C6004();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_BED0(v35);
  return v9;
}

__n128 sub_C24E8@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_C3D54();
  __chkstk_darwin(v3 - 8);
  v4 = sub_C5414();
  __chkstk_darwin(v4 - 8);
  v5 = sub_3CB0(&qword_10A1E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  v11 = OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_notificationStatus;
  swift_beginAccess();
  sub_B954(v1 + v11, v10, &qword_10A1E0);
  v12 = sub_C4AD4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    sub_B954(v10, v8, &qword_10A1E0);
    v14 = (*(v13 + 88))(v8, v12);
    if (v14 == enum case for JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate.unavailable(_:))
    {
      v56 = 0x80000000000CC0F0;
      sub_C53B4();
      v15 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle);
      sub_C3D44();
      v16 = v15;
      v55 = sub_C54A4();
      v18 = v17;
      sub_C53B4();
      sub_C3D44();
      v19 = sub_C54A4();
      v21 = v20;
      sub_C53B4();
      sub_C3D44();
      v22 = sub_C54A4();
      v23 = v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel;
      v24 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 48);
      v59 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 32);
      v60 = v24;
      v61 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 64);
      v25 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 16);
      v57 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel);
      v58 = v25;
      v26 = v55;
      v27 = v56;
      *v23 = 0xD000000000000013;
      *(v23 + 8) = v27;
      *(v23 + 16) = v26;
      *(v23 + 24) = v18;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
      *(v23 + 48) = v22;
      *(v23 + 56) = v28;
      *(v23 + 64) = 0;
    }

    else
    {
      if (v14 == enum case for JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate.unauthorized(_:))
      {
        sub_C53B4();
        v29 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle);
        sub_C3D44();
        v30 = v29;
        v56 = sub_C54A4();
        v32 = v31;
        sub_C53B4();
        sub_C3D44();
        v33 = sub_C54A4();
        v35 = v34;
        sub_C53B4();
        sub_C3D44();
        v36 = sub_C54A4();
        v37 = v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel;
        v38 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 48);
        v59 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 32);
        v60 = v38;
        v61 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 64);
        v39 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 16);
        v57 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel);
        v58 = v39;
        *v37 = 0x6461622E6C6C6562;
        *(v37 + 8) = 0xEA00000000006567;
        *(v37 + 16) = v56;
        *(v37 + 24) = v32;
        *(v37 + 32) = v33;
        *(v37 + 40) = v35;
        *(v37 + 48) = v36;
        *(v37 + 56) = v40;
        v41 = 2;
      }

      else
      {
        if (v14 != enum case for JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate.authorized(_:))
        {
          (*(v13 + 8))(v8, v12);
          goto LABEL_10;
        }

        v56 = 0x80000000000CC080;
        sub_C53B4();
        v42 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_bundle);
        sub_C3D44();
        v43 = v42;
        v44 = sub_C54A4();
        v46 = v45;
        sub_C53B4();
        sub_C3D44();
        v47 = sub_C54A4();
        v37 = v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel;
        v48 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 48);
        v59 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 32);
        v60 = v48;
        v61 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 64);
        v49 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 16);
        v57 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel);
        v58 = v49;
        *v37 = 0xD00000000000001ALL;
        *(v37 + 8) = v56;
        *(v37 + 16) = v44;
        *(v37 + 24) = v46;
        *(v37 + 32) = 0;
        *(v37 + 40) = 0;
        *(v37 + 48) = v47;
        *(v37 + 56) = v50;
        v41 = 1;
      }

      *(v37 + 64) = v41;
    }

    sub_C060(&v57, &qword_10A208);
  }

LABEL_10:
  sub_C060(v10, &qword_10A1E0);
  v51 = v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel;
  v52 = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 48);
  *(a1 + 32) = *(v1 + OBJC_IVAR____TtC20JournalNotifications30NotificationSettingsController_customNotificationsCellModel + 32);
  *(a1 + 48) = v52;
  *(a1 + 64) = *(v51 + 64);
  result = *(v51 + 16);
  *a1 = *v51;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_C2BF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_F0D08;
  v6._object = a2;
  v4 = sub_C6134(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_C2C40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C2C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_C2CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_10A1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_C2D58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_C2DE0()
{
  result = qword_10A218;
  if (!qword_10A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A218);
  }

  return result;
}

unint64_t sub_C2E38()
{
  result = qword_10A220;
  if (!qword_10A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A220);
  }

  return result;
}

unint64_t sub_C2E8C()
{
  result = qword_10A248;
  if (!qword_10A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A248);
  }

  return result;
}

unint64_t sub_C2EE0()
{
  result = qword_10A250;
  if (!qword_10A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A250);
  }

  return result;
}

unint64_t sub_C2F34()
{
  result = qword_10A258;
  if (!qword_10A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A258);
  }

  return result;
}

unint64_t sub_C2F88()
{
  result = qword_10A260;
  if (!qword_10A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A260);
  }

  return result;
}

unint64_t sub_C3028()
{
  result = qword_10A288;
  if (!qword_10A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A288);
  }

  return result;
}

unint64_t sub_C3080()
{
  result = qword_10A290;
  if (!qword_10A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A290);
  }

  return result;
}

unint64_t sub_C30D8()
{
  result = qword_10A298;
  if (!qword_10A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A298);
  }

  return result;
}

unint64_t sub_C3130()
{
  result = qword_10A2A0;
  if (!qword_10A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A2A0);
  }

  return result;
}

unint64_t sub_C3188()
{
  result = qword_10A2A8;
  if (!qword_10A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A2A8);
  }

  return result;
}

unint64_t sub_C31E0()
{
  result = qword_10A2B0;
  if (!qword_10A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A2B0);
  }

  return result;
}

unint64_t sub_C3238()
{
  result = qword_10A2B8;
  if (!qword_10A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A2B8);
  }

  return result;
}

unint64_t sub_C3290()
{
  result = qword_10A2C0;
  if (!qword_10A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A2C0);
  }

  return result;
}

unint64_t sub_C32E8()
{
  result = qword_10A2C8;
  if (!qword_10A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A2C8);
  }

  return result;
}

id sub_C336C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10A2D0 = result;
  return result;
}

uint64_t sub_C3410(uint64_t a1, uint64_t *a2)
{
  v3 = sub_C4AB4();
  sub_C0CC(v3, a2);
  sub_B680(v3, a2);
  if (qword_104358 != -1)
  {
    swift_once();
  }

  v4 = qword_10A2D0;
  return sub_C4AA4();
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}