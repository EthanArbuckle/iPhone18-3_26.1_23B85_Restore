void sub_2BDDC0()
{
  if (!qword_DFD208)
  {
    type metadata accessor for HostedEnvironment(255);
    sub_2BE0A0(&unk_DFD210, type metadata accessor for HostedEnvironment);
    v0 = sub_AB5B80();
    if (!v1)
    {
      atomic_store(v0, &qword_DFD208);
    }
  }
}

uint64_t sub_2BDE70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HostedEnvironment(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

unint64_t sub_2BDEB8()
{
  result = qword_DFD258;
  if (!qword_DFD258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD250);
    sub_2BDF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD258);
  }

  return result;
}

unint64_t sub_2BDF44()
{
  result = qword_DFD260;
  if (!qword_DFD260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD268);
    sub_36A00(&qword_DFD270, &qword_DFD278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD260);
  }

  return result;
}

unint64_t sub_2BE04C()
{
  result = qword_DFD2B8;
  if (!qword_DFD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD2B8);
  }

  return result;
}

uint64_t sub_2BE0A0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2BE0E8@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2BE164()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_2BE1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2BE254()
{
  result = qword_DFD2D0;
  if (!qword_DFD2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD2A8);
    sub_2BE2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD2D0);
  }

  return result;
}

unint64_t sub_2BE2E0()
{
  result = qword_DFD2D8;
  if (!qword_DFD2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD2A0);
    sub_2BE36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD2D8);
  }

  return result;
}

unint64_t sub_2BE36C()
{
  result = qword_DFD2E0;
  if (!qword_DFD2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFD2C8);
    sub_AB6900();
    sub_2BE04C();
    sub_2BE0A0(&qword_DFD2C0, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEB780, &qword_DEB788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD2E0);
  }

  return result;
}

uint64_t sub_2BE4F8(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2BE5AC()
{
  result = qword_DFD328;
  if (!qword_DFD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD328);
  }

  return result;
}

unint64_t sub_2BE600()
{
  result = qword_DFD330;
  if (!qword_DFD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFD330);
  }

  return result;
}

uint64_t sub_2BE684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = &_swiftEmptySetSingleton;
  v5[26] = &_swiftEmptySetSingleton;
  v10 = sub_13C80(0, &qword_DE7500);
  v11 = WeakArray.init(_:)(_swiftEmptyArrayStorage, v10);
  v5[29] = 0;
  v5[30] = 0;
  v5[28] = v11;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    sub_10DBC(_swiftEmptyArrayStorage);
    v9 = v22;
  }

  v5[31] = v9;
  v12 = *(a3 + 16);
  if (v12)
  {
    v23 = a1;
    v13 = a5;
    sub_6D450(0, v12, 0);
    v14 = (a3 + 32);
    v15 = _swiftEmptyArrayStorage[2];
    do
    {
      v16 = *v14;
      v17 = _swiftEmptyArrayStorage[3];
      if (v15 >= v17 >> 1)
      {
        sub_6D450((v17 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      _swiftEmptyArrayStorage[v15 + 4] = v16;
      ++v14;
      ++v15;
      --v12;
    }

    while (v12);
    a5 = v13;
    a1 = v23;
  }

  v18 = sub_2F3560(_swiftEmptyArrayStorage);

  v5[27] = v18;
  v19 = a1;
  v20 = a5();
  *&v19[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_delegate + 8] = &off_CF2C30;
  swift_unknownObjectWeakAssign();

  return v20;
}

void *sub_2BE860(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_95FF8(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9600C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_472;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E36B0, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BEB90(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96030(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96044(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_270;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2924, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BEEC0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96248(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9625C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_543;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3C04, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BF1F0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96280(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96294(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_577;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3F10, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BF520(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_962B8(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_962CC(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_613;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E42FC, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BF850(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_962F0(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96304(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_306;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2B80, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BFB80(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96328(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9633C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E2E8C;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_343;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E2EA8, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2EC4, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2BFEB0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96360(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96374(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_380;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3150, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C01E0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96398(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_963AC(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_319;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2CCC, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C0510(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_963D0(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_963E4(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_233;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E26E8, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C0840(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96408(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9641C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_531;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3AB8, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C0B70(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96430(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_96444(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_565;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E3DC4, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C0EA0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96468(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9647C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_509;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E38F8, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C11D0(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_96490(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_964A4(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_449;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E34F0, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C1500(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_973F8(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_9740C(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_101;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2218, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_2C1830(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for ImpressionsBagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_97550(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_97564(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_12E61C();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_2E47BC;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_2DDCF4;
  v19[3] = &block_descriptor_210;
  v12 = _Block_copy(v19);

  v13 = a2;

  v14 = [v11 initWithScrollView:v13 changeHandler:v12];
  _Block_release(v12);

  v15 = v9[15];
  v9[15] = v14;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_2E4948, v16);

  if (a3)
  {
    swift_allocObject();

    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_2E2594, v9);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    swift_beginAccess();
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

uint64_t sub_2C1B60(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2C1BF8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    type metadata accessor for ImpressionTracker();
    sub_2E3084();
    result = sub_AB9BC0();
    v5 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    for (; v18; v17 = v10)
    {
      v26 = v18;
      a1(&v26);

      if (v4)
      {
        break;
      }

      v9 = v16;
      v10 = v17;
      v5 = v20;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (!sub_ABAC90())
      {
        break;
      }

      type metadata accessor for ImpressionTracker();
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v18 = v26;
      swift_unknownObjectRelease();
      v16 = v9;
    }

    return sub_2BB88();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        return sub_2BB88();
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2C1E14(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  v17 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (*(v17 + 48) + 24 * (__clz(__rbit64(v7)) | (v11 << 6)));
      v13 = v12[1];
      v14 = v12[2];
      v16[0] = *v12;
      v16[1] = v13;
      v16[2] = v14;
      sub_2BB90();
      a1(v16);
      if (v3)
      {
        break;
      }

      v7 &= v7 - 1;
      result = sub_2BBCC();
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_2BBCC();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2C1F68(char a1, double a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_6A8C4(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_6A8C4((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1 & 1;
  *v2 = v5;
  return result;
}

uint64_t sub_2C2020()
{
  swift_beginAccess();
  *(v0 + 104) = _swiftEmptyDictionarySingleton;

  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (!v2)
  {
  }

  v4 = 0;
  v5 = (v1 + 40);
  while (v4 < *(v1 + 16))
  {
    ++v4;
    v6 = *v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 104);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    result = swift_unknownObjectRelease();
    v5 += 2;
    if (v2 == v4)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2C2238(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v5;
  v10 = (a1 + 16);
  v11 = *(a1 + 88);
  if (*(a1 + 144))
  {
    v12 = *(a1 + 16);
  }

  else
  {
    v12 = 0;
  }

  if (*(a1 + 144))
  {
    v13 = *(a1 + 24);
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = (v11 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v12 = *v14;
    v13 = v14[1];
LABEL_10:

    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_10;
  }

  *&v40 = *(a1 + 56);
  v12 = sub_ABB330();
  v13 = v35;
LABEL_11:
  swift_beginAccess();
  v15 = *(v8 + 104);
  if (*(v15 + 16))
  {

    v16 = sub_2EBF88(v12, v13);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      goto LABEL_31;
    }
  }

  v19 = v10[7];
  v46 = v10[6];
  v47 = v19;
  *v48 = v10[8];
  *&v48[9] = *(v10 + 137);
  v20 = v10[3];
  v42 = v10[2];
  v43 = v20;
  v21 = v10[5];
  v44 = v10[4];
  v45 = v21;
  v22 = v10[1];
  v40 = *v10;
  v41 = v22;
  if (*(a1 + 184))
  {
    sub_465F4(&v40, v39);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(a2);
    v23 = qword_E0A760;
  }

  else
  {
    v23 = *(a1 + 176);
    sub_465F4(&v40, v39);
  }

  v24 = v48[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v18 = swift_allocObject();
  v25 = v47;
  v26 = *v48;
  v27 = v45;
  *(v18 + 112) = v46;
  *(v18 + 128) = v25;
  *(v18 + 144) = v26;
  *(v18 + 153) = *&v48[9];
  v28 = v43;
  v29 = v44;
  v30 = v41;
  *(v18 + 48) = v42;
  *(v18 + 64) = v28;
  *(v18 + 192) = 513;
  *(v18 + 80) = v29;
  *(v18 + 96) = v27;
  *(v18 + 16) = v40;
  *(v18 + 32) = v30;
  *(v18 + 200) = _swiftEmptyArrayStorage;
  *(v18 + 176) = v23;
  *(v18 + 184) = 0;
  if (v24)
  {
    v31 = v40;
  }

  else
  {
    v31 = 0;
  }

  if (v24)
  {
    v32 = *(&v40 + 1);
  }

  else
  {
    v32 = 0;
  }

  if (*(&v44 + 1))
  {
    v31 = *(*(&v44 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v32 = *(*(&v44 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  }

  else if (!v32)
  {
    v39[0] = *(&v42 + 1);

    v31 = sub_ABB330();
    v32 = v36;
    goto LABEL_30;
  }

LABEL_30:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v8 + 104);
  *(v8 + 104) = 0x8000000000000000;
  a5(v18, v31, v32, isUniquelyReferenced_nonNull_native);

  *(v8 + 104) = v38;
  swift_endAccess();
LABEL_31:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v18 + 184) = *(v8 + 64);
    *(v18 + 192) = 0;
  }

  return v18;
}

uint64_t sub_2C2590(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v5;
  v10 = (a1 + 16);
  v11 = *(a1 + 88);
  if (*(a1 + 144))
  {
    v12 = *(a1 + 16);
  }

  else
  {
    v12 = 0;
  }

  if (*(a1 + 144))
  {
    v13 = *(a1 + 24);
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = (v11 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v12 = *v14;
    v13 = v14[1];
LABEL_10:

    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_10;
  }

  *&v40 = *(a1 + 56);
  v12 = sub_ABB330();
  v13 = v35;
LABEL_11:
  swift_beginAccess();
  v15 = *(v8 + 104);
  if (*(v15 + 16))
  {

    v16 = sub_2EBF88(v12, v13);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      goto LABEL_31;
    }
  }

  v19 = v10[7];
  v46 = v10[6];
  v47 = v19;
  *v48 = v10[8];
  *&v48[9] = *(v10 + 137);
  v20 = v10[3];
  v42 = v10[2];
  v43 = v20;
  v21 = v10[5];
  v44 = v10[4];
  v45 = v21;
  v22 = v10[1];
  v40 = *v10;
  v41 = v22;
  if (*(a1 + 184))
  {
    sub_465F4(&v40, v39);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(a2);
    v23 = qword_E0A760;
  }

  else
  {
    v23 = *(a1 + 176);
    sub_465F4(&v40, v39);
  }

  v24 = v48[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v18 = swift_allocObject();
  v25 = v47;
  v26 = *v48;
  v27 = v45;
  *(v18 + 112) = v46;
  *(v18 + 128) = v25;
  *(v18 + 144) = v26;
  *(v18 + 153) = *&v48[9];
  v28 = v43;
  v29 = v44;
  v30 = v41;
  *(v18 + 48) = v42;
  *(v18 + 64) = v28;
  *(v18 + 192) = 513;
  *(v18 + 80) = v29;
  *(v18 + 96) = v27;
  *(v18 + 16) = v40;
  *(v18 + 32) = v30;
  *(v18 + 200) = _swiftEmptyArrayStorage;
  *(v18 + 176) = v23;
  *(v18 + 184) = 0;
  if (v24)
  {
    v31 = v40;
  }

  else
  {
    v31 = 0;
  }

  if (v24)
  {
    v32 = *(&v40 + 1);
  }

  else
  {
    v32 = 0;
  }

  if (*(&v44 + 1))
  {
    v31 = *(*(&v44 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v32 = *(*(&v44 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
  }

  else if (!v32)
  {
    v39[0] = *(&v42 + 1);

    v31 = sub_ABB330();
    v32 = v36;
    goto LABEL_30;
  }

LABEL_30:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v8 + 104);
  *(v8 + 104) = 0x8000000000000000;
  a5(v18, v31, v32, isUniquelyReferenced_nonNull_native);

  *(v8 + 104) = v38;
  swift_endAccess();
LABEL_31:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v18 + 184) = *(v8 + 64);
    *(v18 + 192) = 0;
  }

  return v18;
}

uint64_t sub_2C28E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_28C480(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDEB0);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A7FC(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A7FC((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_9150C(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &unk_DFDEB0, &unk_B08CF8, sub_9150C);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A7FC(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A7FC((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C3170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_4B2998(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDD8);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A810(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A810((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_91538(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &qword_DFDDD8, &unk_B08C18, sub_91538);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A810(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A810((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C39F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_58A30(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDED8);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A824(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A824((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_91564(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &qword_DFDED8, &unk_B08D50, sub_91564);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A824(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A824((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C4280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_40220(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDEE8);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A838(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A838((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_91590(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &qword_DFDEE8, &unk_B08D80, sub_91590);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A838(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A838((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C4B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_3BD82C(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_DFDEF8);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A84C(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A84C((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_915BC(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, qword_DFDEF8, &unk_B08D90, sub_915BC);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A84C(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A84C((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C5390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_49388C(v14, v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDE8);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A860(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A860((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_915E8(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &qword_DFDDE8, &unk_B08C28, sub_915E8);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A860(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A860((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C5C18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_445BFC(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE10);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A874(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A874((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_91614(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &unk_DFDE10, &unk_B08C80, sub_91614);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A874(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A874((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C64A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_34F674(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDE38);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A888(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A888((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_91640(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &qword_DFDE38, &unk_B08CA0, sub_91640);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A888(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A888((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C6D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_464698(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE00);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A89C(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A89C((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_9166C(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &unk_DFDE00, &unk_B08C60, sub_9166C);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A89C(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A89C((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C75B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_23120C(v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDB8);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A8B0(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A8B0((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_91698(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &qword_DFDDB8, &unk_B08BE8, sub_91698);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A8B0(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A8B0((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C7E38(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  sub_A0C94(a1, v51);

  v59 = v51[6];
  v60 = v51[7];
  *v61 = v52[0];
  *&v61[9] = *(v52 + 9);
  v55 = v51[2];
  v56 = v51[3];
  v57 = v51[4];
  v58 = v51[5];
  v53 = v51[0];
  v54 = v51[1];
  result = sub_A996C(&v53);
  if (result == 1)
  {
    return result;
  }

  v68 = v59;
  v69 = v60;
  v70[0] = *v61;
  *(v70 + 9) = *&v61[9];
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v62 = v53;
  v63 = v54;
  HIDWORD(v47) = v61[0];
  if (v61[0])
  {
    v14 = v53;
  }

  else
  {
    v14 = 0;
  }

  if (v61[0])
  {
    v15 = *(&v53 + 1);
  }

  else
  {
    v15 = 0;
  }

  v48 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v14 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v50[0] = *(&v64 + 1);
  v14 = sub_ABB330();
  v15 = v45;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      return sub_12E1C(v51, qword_DF1340);
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v62, v50);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_13303C);
    v28 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDC8);
    v29 = swift_allocObject();
    *(v29 + 192) = 513;
    v30 = v69;
    *(v29 + 112) = v68;
    *(v29 + 128) = v30;
    *(v29 + 144) = v70[0];
    *(v29 + 153) = *(v70 + 9);
    v31 = v65;
    *(v29 + 48) = v64;
    *(v29 + 64) = v31;
    v32 = v67;
    *(v29 + 80) = v66;
    *(v29 + 96) = v32;
    v33 = v63;
    *(v29 + 16) = v62;
    *(v29 + 32) = v33;
    *(v29 + 200) = _swiftEmptyArrayStorage;
    v34 = (v29 + 200);
    *(v29 + 176) = v28;
    *(v29 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v29 + 184) = v4[8];
      *(v29 + 192) = 0;
    }

    (*(v9 + 16))(v12, a3, v8);
    sub_AB33D0();
    v36 = v35;
    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    v37 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_6A8C4(0, *(v37 + 2) + 1, 1, v37);
      *v34 = v37;
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = sub_6A8C4((v39 > 1), v40 + 1, 1, v37);
    }

    *(v37 + 2) = v40 + 1;
    v41 = &v37[16 * v40];
    *(v41 + 4) = v36;
    v41[40] = 0;
    *v34 = v37;
    swift_endAccess();
    if ((v47 & 0x100000000) != 0)
    {
      v42 = v62;
    }

    else
    {
      v42 = 0;
    }

    if ((v47 & 0x100000000) != 0)
    {
      v43 = *(&v62 + 1);
    }

    else
    {
      v43 = 0;
    }

    if (v48)
    {
      v42 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v43 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v43)
    {
      v50[0] = *(&v64 + 1);
      v42 = sub_ABB330();
      v43 = v46;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_916C4(v29, v42, v43, v44);

    v4[13] = v49;
    swift_endAccess();

    return sub_12E1C(v51, qword_DF1340);
  }

  v20 = sub_2C2238(v19, sub_13303C, &qword_DFDDC8, &unk_B08BF8, sub_916C4);
  (*(v9 + 16))(v12, a3, v8);
  sub_AB33D0();
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v23 = *(v20 + 200);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 200) = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_6A8C4(0, *(v23 + 2) + 1, 1, v23);
    *(v20 + 200) = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_6A8C4((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v22;
  v27[40] = 0;
  *(v20 + 200) = v23;
  swift_endAccess();
  sub_12E1C(v51, qword_DF1340);
}

uint64_t sub_2C84E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_12E1C(v10, &unk_DE8E20);
  }

  (*(v12 + 32))(v14, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = Strong;
  sub_46B3D0(v14, v69);

  v77 = v69[6];
  v78 = v69[7];
  *v79 = v70[0];
  *&v79[9] = *(v70 + 9);
  v73 = v69[2];
  v74 = v69[3];
  v75 = v69[4];
  v76 = v69[5];
  v71 = v69[0];
  v72 = v69[1];
  if (sub_A996C(&v71) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v86 = v77;
  v87 = v78;
  v88[0] = *v79;
  *(v88 + 9) = *&v79[9];
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v80 = v71;
  v81 = v72;
  v62 = v79[0];
  if (v79[0])
  {
    v18 = v71;
  }

  else
  {
    v18 = 0;
  }

  if (v79[0])
  {
    v19 = *(&v71 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v18 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v19 = *(*(&v84 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_14:

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v68[0] = *(&v82 + 1);
  v18 = sub_ABB330();
  v19 = v58;
LABEL_15:
  swift_beginAccess();
  v63 = v3;
  if (*(*(v3 + 104) + 16))
  {

    sub_2EBF88(v18, v19);
    if (v21)
    {

      sub_12E1C(v69, qword_DF1340);

      return (*(v12 + 8))(v14, v11);
    }
  }

  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + 112);
  if (!*(v23 + 16))
  {
LABEL_27:
    sub_465F4(&v80, v68);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    v61 = v20;
    UnfairLock.locked<A>(_:)(sub_13303C);
    v37 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDDF0);
    v38 = swift_allocObject();
    *(v38 + 192) = 513;
    v39 = v87;
    *(v38 + 112) = v86;
    *(v38 + 128) = v39;
    *(v38 + 144) = v88[0];
    *(v38 + 153) = *(v88 + 9);
    v40 = v83;
    *(v38 + 48) = v82;
    *(v38 + 64) = v40;
    v41 = v85;
    *(v38 + 80) = v84;
    *(v38 + 96) = v41;
    v42 = v81;
    *(v38 + 16) = v80;
    *(v38 + 32) = v42;
    *(v38 + 200) = _swiftEmptyArrayStorage;
    v43 = (v38 + 200);
    *(v38 + 176) = v37;
    *(v38 + 184) = 0;
    v44 = v63;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 184) = *(v44 + 64);
      *(v38 + 192) = 0;
    }

    v45 = v65;
    v46 = v66;
    (*(v65 + 16))(v7, v64, v66);
    sub_AB33D0();
    v48 = v47;
    (*(v45 + 8))(v7, v46);
    swift_beginAccess();
    v49 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_6A8D8(0, *(v49 + 2) + 1, 1, v49);
      *v43 = v49;
    }

    v51 = v61;
    v53 = *(v49 + 2);
    v52 = *(v49 + 3);
    if (v53 >= v52 >> 1)
    {
      v49 = sub_6A8D8((v52 > 1), v53 + 1, 1, v49);
    }

    *(v49 + 2) = v53 + 1;
    v54 = &v49[16 * v53];
    *(v54 + 4) = v48;
    v54[40] = 0;
    *v43 = v49;
    swift_endAccess();
    if (v62)
    {
      v55 = v80;
    }

    else
    {
      v55 = 0;
    }

    if (v62)
    {
      v56 = *(&v80 + 1);
    }

    else
    {
      v56 = 0;
    }

    if (v51)
    {
      v55 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v56 = *(v51 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);

      v57 = v63;
    }

    else
    {
      v57 = v63;
      if (v56)
      {
      }

      else
      {
        v68[0] = *(&v82 + 1);
        v55 = sub_ABB330();
        v56 = v59;
      }
    }

    swift_beginAccess();

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v57 + 104);
    *(v57 + 104) = 0x8000000000000000;
    sub_916F0(v38, v55, v56, v60);

    *(v57 + 104) = v67;
    swift_endAccess();

    sub_12E1C(v69, qword_DF1340);
    return (*(v12 + 8))(v14, v11);
  }

  v24 = sub_2EC048(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_27;
  }

  v26 = *(*(v23 + 56) + 8 * v24);

  v27 = sub_2C2238(v26, sub_13303C, &unk_DFDDF0, &unk_B08C40, sub_916F0);
  v28 = v65;
  v29 = v66;
  (*(v65 + 16))(v7, v64, v66);
  sub_AB33D0();
  v31 = v30;
  (*(v28 + 8))(v7, v29);
  swift_beginAccess();
  v32 = *(v27 + 200);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 200) = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_6A8D8(0, *(v32 + 2) + 1, 1, v32);
    *(v27 + 200) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_6A8D8((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[16 * v35];
  *(v36 + 4) = v31;
  v36[40] = 0;
  *(v27 + 200) = v32;
  swift_endAccess();
  sub_12E1C(v69, qword_DF1340);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2C8D6C(unint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  sub_17B314(a1, v51);

  v59 = v51[6];
  v60 = v51[7];
  *v61 = v52[0];
  *&v61[9] = *(v52 + 9);
  v55 = v51[2];
  v56 = v51[3];
  v57 = v51[4];
  v58 = v51[5];
  v53 = v51[0];
  v54 = v51[1];
  result = sub_A996C(&v53);
  if (result == 1)
  {
    return result;
  }

  v68 = v59;
  v69 = v60;
  v70[0] = *v61;
  *(v70 + 9) = *&v61[9];
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v62 = v53;
  v63 = v54;
  HIDWORD(v47) = v61[0];
  if (v61[0])
  {
    v14 = v53;
  }

  else
  {
    v14 = 0;
  }

  if (v61[0])
  {
    v15 = *(&v53 + 1);
  }

  else
  {
    v15 = 0;
  }

  v48 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v14 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v50[0] = *(&v64 + 1);
  v14 = sub_ABB330();
  v15 = v45;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      return sub_12E1C(v51, qword_DF1340);
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v62, v50);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_13303C);
    v28 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDEC8);
    v29 = swift_allocObject();
    *(v29 + 192) = 513;
    v30 = v69;
    *(v29 + 112) = v68;
    *(v29 + 128) = v30;
    *(v29 + 144) = v70[0];
    *(v29 + 153) = *(v70 + 9);
    v31 = v65;
    *(v29 + 48) = v64;
    *(v29 + 64) = v31;
    v32 = v67;
    *(v29 + 80) = v66;
    *(v29 + 96) = v32;
    v33 = v63;
    *(v29 + 16) = v62;
    *(v29 + 32) = v33;
    *(v29 + 200) = _swiftEmptyArrayStorage;
    v34 = (v29 + 200);
    *(v29 + 176) = v28;
    *(v29 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v29 + 184) = v4[8];
      *(v29 + 192) = 0;
    }

    (*(v9 + 16))(v12, a3, v8);
    sub_AB33D0();
    v36 = v35;
    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    v37 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_6A8EC(0, *(v37 + 2) + 1, 1, v37);
      *v34 = v37;
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = sub_6A8EC((v39 > 1), v40 + 1, 1, v37);
    }

    *(v37 + 2) = v40 + 1;
    v41 = &v37[16 * v40];
    *(v41 + 4) = v36;
    v41[40] = 0;
    *v34 = v37;
    swift_endAccess();
    if ((v47 & 0x100000000) != 0)
    {
      v42 = v62;
    }

    else
    {
      v42 = 0;
    }

    if ((v47 & 0x100000000) != 0)
    {
      v43 = *(&v62 + 1);
    }

    else
    {
      v43 = 0;
    }

    if (v48)
    {
      v42 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v43 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v43)
    {
      v50[0] = *(&v64 + 1);
      v42 = sub_ABB330();
      v43 = v46;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_9171C(v29, v42, v43, v44);

    v4[13] = v49;
    swift_endAccess();

    return sub_12E1C(v51, qword_DF1340);
  }

  v20 = sub_2C2238(v19, sub_13303C, &qword_DFDEC8, &unk_B08D20, sub_9171C);
  (*(v9 + 16))(v12, a3, v8);
  sub_AB33D0();
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v23 = *(v20 + 200);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 200) = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_6A8EC(0, *(v23 + 2) + 1, 1, v23);
    *(v20 + 200) = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_6A8EC((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v22;
  v27[40] = 0;
  *(v20 + 200) = v23;
  swift_endAccess();
  sub_12E1C(v51, qword_DF1340);
}

uint64_t sub_2C9418(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  sub_29330C(a1, v51);

  v59 = v51[6];
  v60 = v51[7];
  *v61 = v52[0];
  *&v61[9] = *(v52 + 9);
  v55 = v51[2];
  v56 = v51[3];
  v57 = v51[4];
  v58 = v51[5];
  v53 = v51[0];
  v54 = v51[1];
  result = sub_A996C(&v53);
  if (result == 1)
  {
    return result;
  }

  v68 = v59;
  v69 = v60;
  v70[0] = *v61;
  *(v70 + 9) = *&v61[9];
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v62 = v53;
  v63 = v54;
  HIDWORD(v47) = v61[0];
  if (v61[0])
  {
    v14 = v53;
  }

  else
  {
    v14 = 0;
  }

  if (v61[0])
  {
    v15 = *(&v53 + 1);
  }

  else
  {
    v15 = 0;
  }

  v48 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v14 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v50[0] = *(&v64 + 1);
  v14 = sub_ABB330();
  v15 = v45;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      return sub_12E1C(v51, qword_DF1340);
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v62, v50);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_13303C);
    v28 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE20);
    v29 = swift_allocObject();
    *(v29 + 192) = 513;
    v30 = v69;
    *(v29 + 112) = v68;
    *(v29 + 128) = v30;
    *(v29 + 144) = v70[0];
    *(v29 + 153) = *(v70 + 9);
    v31 = v65;
    *(v29 + 48) = v64;
    *(v29 + 64) = v31;
    v32 = v67;
    *(v29 + 80) = v66;
    *(v29 + 96) = v32;
    v33 = v63;
    *(v29 + 16) = v62;
    *(v29 + 32) = v33;
    *(v29 + 200) = _swiftEmptyArrayStorage;
    v34 = (v29 + 200);
    *(v29 + 176) = v28;
    *(v29 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v29 + 184) = v4[8];
      *(v29 + 192) = 0;
    }

    (*(v9 + 16))(v12, a3, v8);
    sub_AB33D0();
    v36 = v35;
    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    v37 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_6A900(0, *(v37 + 2) + 1, 1, v37);
      *v34 = v37;
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = sub_6A900((v39 > 1), v40 + 1, 1, v37);
    }

    *(v37 + 2) = v40 + 1;
    v41 = &v37[16 * v40];
    *(v41 + 4) = v36;
    v41[40] = 0;
    *v34 = v37;
    swift_endAccess();
    if ((v47 & 0x100000000) != 0)
    {
      v42 = v62;
    }

    else
    {
      v42 = 0;
    }

    if ((v47 & 0x100000000) != 0)
    {
      v43 = *(&v62 + 1);
    }

    else
    {
      v43 = 0;
    }

    if (v48)
    {
      v42 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v43 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v43)
    {
      v50[0] = *(&v64 + 1);
      v42 = sub_ABB330();
      v43 = v46;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_91748(v29, v42, v43, v44);

    v4[13] = v49;
    swift_endAccess();

    return sub_12E1C(v51, qword_DF1340);
  }

  v20 = sub_2C2238(v19, sub_13303C, &unk_DFDE20, &unk_B08C88, sub_91748);
  (*(v9 + 16))(v12, a3, v8);
  sub_AB33D0();
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v23 = *(v20 + 200);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 200) = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_6A900(0, *(v23 + 2) + 1, 1, v23);
    *(v20 + 200) = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_6A900((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v22;
  v27[40] = 0;
  *(v20 + 200) = v23;
  swift_endAccess();
  sub_12E1C(v51, qword_DF1340);
}

uint64_t sub_2C9AC4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  sub_2D46E0(a1, v51);

  v59 = v51[6];
  v60 = v51[7];
  *v61 = v52[0];
  *&v61[9] = *(v52 + 9);
  v55 = v51[2];
  v56 = v51[3];
  v57 = v51[4];
  v58 = v51[5];
  v53 = v51[0];
  v54 = v51[1];
  result = sub_A996C(&v53);
  if (result == 1)
  {
    return result;
  }

  v68 = v59;
  v69 = v60;
  v70[0] = *v61;
  *(v70 + 9) = *&v61[9];
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v62 = v53;
  v63 = v54;
  HIDWORD(v47) = v61[0];
  if (v61[0])
  {
    v14 = v53;
  }

  else
  {
    v14 = 0;
  }

  if (v61[0])
  {
    v15 = *(&v53 + 1);
  }

  else
  {
    v15 = 0;
  }

  v48 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v14 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(*(&v66 + 1) + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v50[0] = *(&v64 + 1);
  v14 = sub_ABB330();
  v15 = v45;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      return sub_12E1C(v51, qword_DF1340);
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v62, v50);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_2BA50);
    v28 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD80);
    v29 = swift_allocObject();
    *(v29 + 192) = 513;
    v30 = v69;
    *(v29 + 112) = v68;
    *(v29 + 128) = v30;
    *(v29 + 144) = v70[0];
    *(v29 + 153) = *(v70 + 9);
    v31 = v65;
    *(v29 + 48) = v64;
    *(v29 + 64) = v31;
    v32 = v67;
    *(v29 + 80) = v66;
    *(v29 + 96) = v32;
    v33 = v63;
    *(v29 + 16) = v62;
    *(v29 + 32) = v33;
    *(v29 + 200) = _swiftEmptyArrayStorage;
    v34 = (v29 + 200);
    *(v29 + 176) = v28;
    *(v29 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v29 + 184) = v4[8];
      *(v29 + 192) = 0;
    }

    (*(v9 + 16))(v12, a3, v8);
    sub_AB33D0();
    v36 = v35;
    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    v37 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_6AFAC(0, *(v37 + 2) + 1, 1, v37);
      *v34 = v37;
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = sub_6AFAC((v39 > 1), v40 + 1, 1, v37);
    }

    *(v37 + 2) = v40 + 1;
    v41 = &v37[16 * v40];
    *(v41 + 4) = v36;
    v41[40] = 0;
    *v34 = v37;
    swift_endAccess();
    if ((v47 & 0x100000000) != 0)
    {
      v42 = v62;
    }

    else
    {
      v42 = 0;
    }

    if ((v47 & 0x100000000) != 0)
    {
      v43 = *(&v62 + 1);
    }

    else
    {
      v43 = 0;
    }

    if (v48)
    {
      v42 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v43 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v43)
    {
      v50[0] = *(&v64 + 1);
      v42 = sub_ABB330();
      v43 = v46;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_929A4(v29, v42, v43, v44);

    v4[13] = v49;
    swift_endAccess();

    return sub_12E1C(v51, qword_DF1340);
  }

  v20 = sub_2C2590(v19, sub_13303C, &qword_DFDD80, &unk_B08B78, sub_929A4);
  (*(v9 + 16))(v12, a3, v8);
  sub_AB33D0();
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v23 = *(v20 + 200);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 200) = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_6AFAC(0, *(v23 + 2) + 1, 1, v23);
    *(v20 + 200) = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_6AFAC((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v22;
  v27[40] = 0;
  *(v20 + 200) = v23;
  swift_endAccess();
  sub_12E1C(v51, qword_DF1340);
}

uint64_t sub_2CA170(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  sub_2D4FDC(a1, v51);

  v59 = v51[6];
  v60 = v51[7];
  *v61 = v52[0];
  *&v61[9] = *(v52 + 9);
  v55 = v51[2];
  v56 = v51[3];
  v57 = v51[4];
  v58 = v51[5];
  v53 = v51[0];
  v54 = v51[1];
  result = sub_A996C(&v53);
  if (result == 1)
  {
    return result;
  }

  v68 = v59;
  v69 = v60;
  v70[0] = *v61;
  *(v70 + 9) = *&v61[9];
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v62 = v53;
  v63 = v54;
  HIDWORD(v47) = v61[0];
  if (v61[0])
  {
    v14 = v53.n128_u64[0];
  }

  else
  {
    v14 = 0;
  }

  if (v61[0])
  {
    v15 = v53.n128_i64[1];
  }

  else
  {
    v15 = 0;
  }

  v48 = v66.n128_u64[1];
  if (v66.n128_u64[1])
  {
    v14 = *(v66.n128_u64[1] + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v15 = *(v66.n128_u64[1] + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
LABEL_13:

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v50[0] = v64.n128_u64[1];
  v14 = sub_ABB330();
  v15 = v45;
LABEL_14:
  swift_beginAccess();
  if (*(v4[13] + 16))
  {

    sub_2EBF88(v14, v15);
    v17 = v16;

    if (v17)
    {
      return sub_12E1C(v51, qword_DF1340);
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (!*(v4[14] + 16) || (sub_2F5A90(a1), (v18 & 1) == 0))
  {
    sub_465F4(&v62, v50);
    if (qword_DE6D70 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_13303C);
    v28 = qword_E0A760;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDDA0);
    v29 = swift_allocObject();
    *(v29 + 192) = 513;
    v30 = v69;
    *(v29 + 112) = v68;
    *(v29 + 128) = v30;
    *(v29 + 144) = v70[0];
    *(v29 + 153) = *(v70 + 9);
    v31 = v65;
    *(v29 + 48) = v64;
    *(v29 + 64) = v31;
    v32 = v67;
    *(v29 + 80) = v66;
    *(v29 + 96) = v32;
    v33 = v63;
    *(v29 + 16) = v62;
    *(v29 + 32) = v33;
    *(v29 + 200) = _swiftEmptyArrayStorage;
    v34 = (v29 + 200);
    *(v29 + 176) = v28;
    *(v29 + 184) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v29 + 184) = v4[8];
      *(v29 + 192) = 0;
    }

    (*(v9 + 16))(v12, a3, v8);
    sub_AB33D0();
    v36 = v35;
    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    v37 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_6AFE4(0, *(v37 + 2) + 1, 1, v37);
      *v34 = v37;
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = sub_6AFE4((v39 > 1), v40 + 1, 1, v37);
    }

    *(v37 + 2) = v40 + 1;
    v41 = &v37[16 * v40];
    *(v41 + 4) = v36;
    v41[40] = 0;
    *v34 = v37;
    swift_endAccess();
    if ((v47 & 0x100000000) != 0)
    {
      v42 = v62.n128_u64[0];
    }

    else
    {
      v42 = 0;
    }

    if ((v47 & 0x100000000) != 0)
    {
      v43 = v62.n128_i64[1];
    }

    else
    {
      v43 = 0;
    }

    if (v48)
    {
      v42 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v43 = *(v48 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8);
    }

    else if (!v43)
    {
      v50[0] = v64.n128_u64[1];
      v42 = sub_ABB330();
      v43 = v46;
      goto LABEL_43;
    }

LABEL_43:
    swift_beginAccess();

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v4[13];
    v4[13] = 0x8000000000000000;
    sub_929D0(v29, v42, v43, v44);

    v4[13] = v49;
    swift_endAccess();

    return sub_12E1C(v51, qword_DF1340);
  }

  v20 = sub_2C2590(v19, sub_13303C, &qword_DFDDA0, &unk_B08BB8, sub_929D0);
  (*(v9 + 16))(v12, a3, v8);
  sub_AB33D0();
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v23 = *(v20 + 200);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 200) = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_6AFE4(0, *(v23 + 2) + 1, 1, v23);
    *(v20 + 200) = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = sub_6AFE4((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  v27 = &v23[16 * v26];
  *(v27 + 4) = v22;
  v27[40] = 0;
  *(v20 + 200) = v23;
  swift_endAccess();
  sub_12E1C(v51, qword_DF1340);
}

uint64_t sub_2CA81C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C28E8(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E37FC;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CAC5C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C3170(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E2A70;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CB09C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C39F8(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E3D50;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CB4DC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C4280(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E405C;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CB91C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C4B08(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E41B0;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CBD5C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C5390(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E2B0C;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CC19C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C5C18(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E3010;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CC5DC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C64A0(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E30DC;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CCA1C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C6D28(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E2E18;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CCE5C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C75B0(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E2834;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E2870, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CD29C(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_AB7C80();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3430();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v4 + 104) + 16))
  {
    v17 = 1;
  }

  else
  {
    v17 = (a1 & 4) == 0;
  }

  if (v17)
  {
    v32 = a1;
    sub_2C7E38(a3, a4 & 1, a2);
    v18 = dispatch_semaphore_create(1);
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v31[1] = v19 + 16;
    v33 = *(v4 + 88);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
    v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = v19;
    *(v23 + 32) = v20;
    (*(v13 + 32))(v23 + v21, v15, v12);
    *(v23 + v22) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2E28B0;
    *(v24 + 24) = v23;

    v25 = v18;

    sub_48CAE8(sub_2E47B8, v24);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v11, v35);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v26 = *(v19 + 16);

      return v26;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E70EB0);
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Semaphore returned a non-success code.  No impressions were generated", v30, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CD6DC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_AB7C80();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v3 + 104) + 16))
  {
    v15 = 1;
  }

  else
  {
    v15 = (a1 & 4) == 0;
  }

  if (v15)
  {
    v31 = a1;
    sub_2C84E4(a3, a2);
    v16 = dispatch_semaphore_create(1);
    v33 = v7;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v30[1] = v18 + 16;
    v32 = *(v3 + 88);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v31;
    *(v22 + 24) = v18;
    *(v22 + 32) = v19;
    (*(v11 + 32))(v22 + v20, v13, v10);
    *(v22 + v21) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2E3884;
    *(v23 + 24) = v22;

    v24 = v17;

    sub_48CAE8(sub_2E47B8, v23);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v9, v33);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v25 = *(v18 + 16);

      return v25;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "Semaphore returned a non-success code.  No impressions were generated", v29, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CDB1C(unsigned __int16 a1, uint64_t a2, unint64_t a3, char a4)
{
  v9 = sub_AB7C80();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3430();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v4 + 104) + 16))
  {
    v17 = 1;
  }

  else
  {
    v17 = (a1 & 4) == 0;
  }

  if (v17)
  {
    v32 = a1;
    sub_2C8D6C(a3, a4 & 1, a2);
    v18 = dispatch_semaphore_create(1);
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v31[1] = v19 + 16;
    v33 = *(v4 + 88);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
    v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = v19;
    *(v23 + 32) = v20;
    (*(v13 + 32))(v23 + v21, v15, v12);
    *(v23 + v22) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2E3A44;
    *(v24 + 24) = v23;

    v25 = v18;

    sub_48CAE8(sub_2E47B8, v24);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v11, v35);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v26 = *(v19 + 16);

      return v26;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E70EB0);
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Semaphore returned a non-success code.  No impressions were generated", v30, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CDF5C(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_AB7C80();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3430();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v4 + 104) + 16))
  {
    v17 = 1;
  }

  else
  {
    v17 = (a1 & 4) == 0;
  }

  if (v17)
  {
    v32 = a1;
    sub_2C9418(a3, a4 & 1, a2);
    v18 = dispatch_semaphore_create(1);
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v31[1] = v19 + 16;
    v33 = *(v4 + 88);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
    v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = v19;
    *(v23 + 32) = v20;
    (*(v13 + 32))(v23 + v21, v15, v12);
    *(v23 + v22) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2E363C;
    *(v24 + 24) = v23;

    v25 = v18;

    sub_48CAE8(sub_2E47B8, v24);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v34 + 8))(v11, v35);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v26 = *(v19 + 16);

      return v26;
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E70EB0);
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "Semaphore returned a non-success code.  No impressions were generated", v30, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2CE39C(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t, void, uint64_t), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, double))
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v35 = a3;
  v12 = sub_AB7C80();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin(v12);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_AB3430();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  swift_beginAccess();
  v18 = 0;
  if (*(*(v8 + 104) + 16))
  {
    v19 = 1;
  }

  else
  {
    v19 = (a1 & 4) == 0;
  }

  if (v19)
  {
    v34 = a1;
    v20 = a2;
    v36(v35, a4 & 1, a2);
    v21 = dispatch_semaphore_create(1);
    v22 = swift_allocObject();
    *(v22 + 16) = _swiftEmptyArrayStorage;
    v23 = *(v8 + 88);
    v35 = v22 + 16;
    v36 = v23;
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v16 + 16))(&v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v20, v15);
    v25 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v34;
    *(v26 + 24) = v22;
    *(v26 + 32) = v24;
    (*(v16 + 32))(v26 + v25, &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v15);
    *(v26 + ((v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;

    v27 = v21;
    sub_48C8C4(v39, v26);

    sub_13C80(0, &qword_DE8ED0);
    static OS_dispatch_queue.UIFeedbackDeadline.getter();
    sub_ABA2F0();
    (*(v40 + 8))(v14, v41);
    if (sub_AB7BF0())
    {

      swift_beginAccess();
      v18 = *(v22 + 16);
    }

    else
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v28 = sub_AB4BC0();
      __swift_project_value_buffer(v28, qword_E70EB0);
      v29 = sub_AB4BA0();
      v30 = sub_AB9F30();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_0, v29, v30, "Semaphore returned a non-success code.  No impressions were generated", v31, 2u);
      }

      return 0;
    }
  }

  return v18;
}

uint64_t sub_2CE798(uint64_t a1, uint64_t (*a2)(uint64_t, char *, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  result = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6D68 != -1)
  {
    v37 = result;
    swift_once();
    result = v37;
  }

  if ((byte_E71A90 & 1) == 0 && *(v2 + 145) == 1)
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v15 = result;
    sub_AB3420();
    v39 = v6;
    sub_15F84(v42, v41, &qword_DF2BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
    v16 = sub_AB3820();
    v17 = swift_dynamicCast();
    (*(*(v16 - 8) + 56))(v9, v17 ^ 1u, 1, v16);
    v40 = v2;
    v18 = a2(2, v14, v9);
    (*(v11 + 8))(v14, v15);
    v19 = v39;
    sub_12E1C(v42, &qword_DF2BD0);
    result = sub_12E1C(v9, &unk_DE8E20);
    if (v18)
    {
      if (v18 >> 62)
      {
        if (!sub_ABB060())
        {
        }
      }

      else if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        ObjectType = swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_34;
        }

        (*(result + 24))(ObjectType, result);
      }

      else
      {
        v23 = type metadata accessor for MetricsPageProperties();
        (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
      }

      v24 = *MetricsReportingController.shared.unsafeMutableAddressor();
      if (v18 >> 62)
      {
        v25 = sub_ABB060();
        if (v25)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v25 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
        if (v25)
        {
LABEL_14:
          *&v42[0] = _swiftEmptyArrayStorage;
          v26 = v24;
          result = sub_6D410(0, v25 & ~(v25 >> 63), 0);
          if ((v25 & 0x8000000000000000) == 0)
          {
            v27 = *&v42[0];
            if ((v18 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v25; ++i)
              {
                v29 = *(sub_35FC58(i, v18) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                swift_unknownObjectRelease();
                *&v42[0] = v27;
                v31 = v27[2];
                v30 = v27[3];
                if (v31 >= v30 >> 1)
                {
                  sub_6D410((v30 > 1), v31 + 1, 1);
                  v27 = *&v42[0];
                }

                v27[2] = v31 + 1;
                v27[v31 + 4] = v29;
              }
            }

            else
            {
              v33 = (v18 + 32);
              do
              {
                v34 = *(*v33 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                *&v42[0] = v27;
                v36 = v27[2];
                v35 = v27[3];

                if (v36 >= v35 >> 1)
                {
                  sub_6D410((v35 > 1), v36 + 1, 1);
                  v27 = *&v42[0];
                }

                v27[2] = v36 + 1;
                v27[v36 + 4] = v34;
                ++v33;
                --v25;
              }

              while (v25);
            }

            v19 = v39;
            goto LABEL_28;
          }

          __break(1u);
LABEL_34:
          __break(1u);
          return result;
        }
      }

      v32 = v24;
      v27 = _swiftEmptyArrayStorage;
LABEL_28:
      (*(&stru_68.flags + (swift_isaMask & *v24)))(v27, v19, 0, 0, 0, 0, 0);

      sub_2C2020();
      sub_12E1C(v19, &unk_DF1330);
    }
  }

  return result;
}

uint64_t sub_2CED10(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_AB3430();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6D68 != -1)
  {
    v33 = result;
    swift_once();
    result = v33;
  }

  if ((byte_E71A90 & 1) == 0 && *(v2 + 145) == 1)
  {
    v12 = result;
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_AB3420();
    sub_15F84(v40, v39, &qword_DF2BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v37;
    }

    else
    {
      v14 = 0;
      v37 = 0;
    }

    v38 = v13 ^ 1;
    v36 = v2;
    v15 = a2(2, v11, v14);
    (*(v8 + 8))(v11, v12);
    result = sub_12E1C(v40, &qword_DF2BD0);
    if (v15)
    {
      if (v15 >> 62)
      {
        if (!sub_ABB060())
        {
        }
      }

      else if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        ObjectType = swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_37;
        }

        (*(result + 24))(ObjectType, result);
      }

      else
      {
        v19 = type metadata accessor for MetricsPageProperties();
        (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      }

      v20 = *MetricsReportingController.shared.unsafeMutableAddressor();
      if (v15 >> 62)
      {
        v21 = sub_ABB060();
        if (v21)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v21 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
        if (v21)
        {
LABEL_17:
          *&v40[0] = _swiftEmptyArrayStorage;
          v22 = v20;
          result = sub_6D410(0, v21 & ~(v21 >> 63), 0);
          if ((v21 & 0x8000000000000000) == 0)
          {
            v35 = v20;
            v23 = *&v40[0];
            if ((v15 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v21; ++i)
              {
                v25 = *(sub_35FC58(i, v15) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                swift_unknownObjectRelease();
                *&v40[0] = v23;
                v27 = v23[2];
                v26 = v23[3];
                if (v27 >= v26 >> 1)
                {
                  sub_6D410((v26 > 1), v27 + 1, 1);
                  v23 = *&v40[0];
                }

                v23[2] = v27 + 1;
                v23[v27 + 4] = v25;
              }
            }

            else
            {
              v29 = (v15 + 32);
              do
              {
                v30 = *(*v29 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                *&v40[0] = v23;
                v32 = v23[2];
                v31 = v23[3];

                if (v32 >= v31 >> 1)
                {
                  sub_6D410((v31 > 1), v32 + 1, 1);
                  v23 = *&v40[0];
                }

                v23[2] = v32 + 1;
                v23[v32 + 4] = v30;
                ++v29;
                --v21;
              }

              while (v21);
            }

            v20 = v35;
            goto LABEL_31;
          }

          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }
      }

      v28 = v20;
      v23 = _swiftEmptyArrayStorage;
LABEL_31:
      (*(&stru_68.flags + (swift_isaMask & *v20)))(v23, v6, 0, 0, 0, 0, 0);

      sub_2C2020();
      sub_12E1C(v6, &unk_DF1330);
    }
  }

  return result;
}

uint64_t sub_2CF1FC(uint64_t a1, void (*a2)(uint64_t, void, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(uint64_t, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_AB3430();
  v14 = *(v13 - 8);
  result = __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6D68 != -1)
  {
    v40 = result;
    swift_once();
    result = v40;
  }

  if ((byte_E71A90 & 1) == 0 && *(v5 + 145) == 1)
  {
    v42 = v12;
    v18 = result;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_AB3420();
    sub_15F84(v47, v46, &qword_DF2BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v44;
    }

    else
    {
      v20 = 0;
      v44 = 0;
    }

    v45 = v19 ^ 1;
    v43 = v5;
    v21 = sub_2CE39C(2u, v17, v20, v19 ^ 1u, a2, a3, a4, a5);
    (*(v14 + 8))(v17, v18);
    result = sub_12E1C(v47, &qword_DF2BD0);
    v22 = v42;
    if (v21)
    {
      if (v21 >> 62)
      {
        if (!sub_ABB060())
        {
        }
      }

      else if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        ObjectType = swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_37;
        }

        (*(result + 24))(ObjectType, result);
      }

      else
      {
        v26 = type metadata accessor for MetricsPageProperties();
        (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
      }

      v27 = *MetricsReportingController.shared.unsafeMutableAddressor();
      if (v21 >> 62)
      {
        v28 = sub_ABB060();
        if (v28)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v28 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
        if (v28)
        {
LABEL_17:
          *&v47[0] = _swiftEmptyArrayStorage;
          v29 = v27;
          result = sub_6D410(0, v28 & ~(v28 >> 63), 0);
          if ((v28 & 0x8000000000000000) == 0)
          {
            v30 = *&v47[0];
            if ((v21 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v28; ++i)
              {
                v32 = *(sub_35FC58(i, v21) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                swift_unknownObjectRelease();
                *&v47[0] = v30;
                v34 = v30[2];
                v33 = v30[3];
                if (v34 >= v33 >> 1)
                {
                  sub_6D410((v33 > 1), v34 + 1, 1);
                  v30 = *&v47[0];
                }

                v30[2] = v34 + 1;
                v30[v34 + 4] = v32;
              }
            }

            else
            {
              v36 = (v21 + 32);
              do
              {
                v37 = *(*v36 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                *&v47[0] = v30;
                v39 = v30[2];
                v38 = v30[3];

                if (v39 >= v38 >> 1)
                {
                  sub_6D410((v38 > 1), v39 + 1, 1);
                  v30 = *&v47[0];
                }

                v30[2] = v39 + 1;
                v30[v39 + 4] = v37;
                ++v36;
                --v28;
              }

              while (v28);
            }

            v22 = v42;
            goto LABEL_31;
          }

          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }
      }

      v35 = v27;
      v30 = _swiftEmptyArrayStorage;
LABEL_31:
      (*(&stru_68.flags + (swift_isaMask & *v27)))(v30, v22, 0, 0, 0, 0, 0);

      sub_2C2020();
      sub_12E1C(v22, &unk_DF1330);
    }
  }

  return result;
}

uint64_t sub_2CF704(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  sub_2D4608(&qword_DFDD88, &unk_B08B80, sub_2C1500);

  if (a3)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  else
  {
    v18[0] = a2;
    sub_ABAD10();
  }

  sub_AB3420();
  sub_15F84(v19, v18, &qword_DF2BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v16;
  }

  else
  {
    v13 = 0;
    v16 = 0;
  }

  v17 = v12 ^ 1;
  v11 = sub_2CE39C(1u, v8, v13, v12 ^ 1u, sub_2C9AC4, &unk_D09008, &unk_D09030, sub_2E0F6C);
  (*(v6 + 8))(v8, v5);
  sub_12E1C(v19, &qword_DF2BD0);

  return v11;
}

uint64_t sub_2CF950(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  sub_2D4608(&qword_DFDDA8, &unk_B08BC0, sub_2C1830);

  if (a3)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  else
  {
    v18[0] = a2;
    sub_ABAD10();
  }

  sub_AB3420();
  sub_15F84(v19, v18, &qword_DF2BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v16;
  }

  else
  {
    v13 = 0;
    v16 = 0;
  }

  v17 = v12 ^ 1;
  v11 = sub_2CE39C(1u, v8, v13, v12 ^ 1u, sub_2CA170, &unk_D091C0, &unk_D091E8, sub_2E24C4);
  (*(v6 + 8))(v8, v5);
  sub_12E1C(v19, &qword_DF2BD0);

  return v11;
}

uint64_t sub_2CFB9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_DE6D68 != -1)
    {
      swift_once();
    }

    if ((byte_E71A90 & 1) == 0 && v1[145] == 1)
    {
      (*(*v1 + 776))();
    }
  }

  return result;
}

uint64_t sub_2CFC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_AB2BD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_AB9990();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_AB9940();

  v15 = sub_AB9930();
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v14;
  (*(v8 + 32))(&v17[v16], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_DC3A0(0, 0, v12, a5, v17);
}

uint64_t sub_2CFE88(int a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v12 = (a2 + 16);
  if ((a1 & 4) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      swift_beginAccess();
      v28 = *(v27 + 104);

      if (a1)
      {
        v31 = sub_2DDE5C(v28, a7, a8);

        v28 = v31;
      }

      __chkstk_darwin(v29);
      LOBYTE(v39) = v32;
      BYTE1(v39) = a1 & 1;
      v40 = a5;
      v41 = a3;
      v30 = sub_2E0C2C(v28, a9);
    }

    else
    {
      v30 = 0;
    }

    swift_beginAccess();
    *v12 = v30;

    return sub_ABA300();
  }

  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {
    return sub_ABA300();
  }

  v14 = v13;
  swift_retain_n();
  swift_getObjectType();
  v15 = &off_CFADC8;
  v16 = sub_13002C();
  v18 = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v16)
  {
    do
    {
      v15 = v18;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v20 = (*(v18 + 32))(ObjectType, v18);
      v18 = v21;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    while (v20);
  }

  result = swift_beginAccess();
  if (*v12)
  {
    v34 = a1 | 4u;
    v35 = swift_getObjectType();
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v36 = sub_21CCAC(v34, a5, v43, v35, v15);
    sub_12E1C(v43, &qword_DF2BD0);
    if (v36)
    {
      sub_19500(v36);
    }

    v37 = (v15[7])(v35, v15);
    __chkstk_darwin(v37);
    v39 = v14;
    LOWORD(v40) = v34;
    v41 = *&a5;
    v42 = v12;
    sub_2C1B60(a10, &v38, v37);

    swift_endAccess();
    swift_unknownObjectRelease();

    return sub_ABA300();
  }

  __break(1u);
  return result;
}

void *sub_2D01E0(uint64_t a1)
{
  v2 = v1;
  *(v1 + *&stru_248.sectname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) - 8]) = 0;
  v4 = *&stru_248.segname[swift_isaMask & *v1];
  *(v1 + v4) = sub_23DD70();
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 8]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_248.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_248.offset + (swift_isaMask & *v1))) = 0;
  v5 = *(&stru_248.flags + (swift_isaMask & *v1));
  v6 = objc_allocWithZone(type metadata accessor for JSVerticalStackViewController());
  *(v1 + v5) = sub_9F704(_swiftEmptyArrayStorage);
  v7 = *(&stru_248.reserved2 + (swift_isaMask & *v1));
  *(v1 + v7) = [objc_allocWithZone(type metadata accessor for DetailHeader()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = *&stru_298.sectname[swift_isaMask & *v1];
  *(v1 + v8) = 0;
  v9 = v2 + *&stru_298.segname[(swift_isaMask & *v2) - 8];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  v9[24] = 1;
  v10 = v2 + *&stru_298.segname[(swift_isaMask & *v2) + 8];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 0;
  *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_298.size + (swift_isaMask & *v1))) = 0;
  v11 = *(&stru_298.offset + (swift_isaMask & *v1));
  type metadata accessor for ModelRequestFilteringController();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = [objc_allocWithZone(NSOperationQueue) init];
  v12[5] = &_swiftEmptyDictionarySingleton;
  v12[7] = 0;
  v12[8] = 0;
  v12[6] = 2;
  *(v2 + v11) = v12;
  *(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) = 0;
  v13 = *(&stru_298.flags + (swift_isaMask & *v2));
  v14 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  *(v2 + *(&stru_298.reserved2 + (swift_isaMask & *v2))) = 0;
  *(v2 + *&stru_2E8.sectname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) = 0;
  *(v2 + *&stru_2E8.segname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 8]) = _swiftEmptyArrayStorage;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 16]) = 0;
  *(v2 + *(&stru_2E8.size + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.offset + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.reloff + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.flags + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.reserved2 + (swift_isaMask & *v2))) = 0;
  v15 = *&stru_338.sectname[swift_isaMask & *v2];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v2 + v15) = TextDrawing.Cache.init()();
  *(v2 + *&stru_338.segname[(swift_isaMask & *v2) - 8]) = 0;
  v16 = (v2 + *&stru_338.segname[swift_isaMask & *v2]);
  *v16 = 0;
  v16[1] = 0;
  *(v2 + *&stru_338.segname[(swift_isaMask & *v2) + 8]) = 0;
  v17 = *&stru_338.segname[(swift_isaMask & *v2) + 16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0);
  swift_allocObject();
  *(v2 + v17) = ArtworkVideoReportingController.init()();
  *(v2 + *(&stru_338.size + (swift_isaMask & *v2))) = 3;
  *(v2 + *(&stru_338.offset + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_338.reloff + (swift_isaMask & *v2))) = 0;
  v18 = v2 + *(&stru_338.flags + (swift_isaMask & *v2));
  *v18 = 0;
  v18[8] = 1;
  v19 = (v2 + *(&stru_338.reserved2 + (swift_isaMask & *v2)));
  *v19 = 0;
  v19[1] = 0;
  *(v2 + *&stru_388.sectname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_388.segname[(swift_isaMask & *v2) - 8]) = 1;
  *(v2 + *&stru_388.segname[swift_isaMask & *v2]) = 0;
  v20 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
  *v20 = 0;
  v20[1] = 0;
  *(v2 + *&stru_388.segname[(swift_isaMask & *v2) + 16]) = 0;
  v21 = (v2 + *&stru_298.segname[swift_isaMask & *v2]);
  v22 = *(a1 + 64);
  v21[3] = *(a1 + 48);
  v21[4] = v22;
  v23 = *(a1 + 32);
  v21[1] = *(a1 + 16);
  v21[2] = v23;
  *v21 = *a1;
  v108 = *(a1 + 48);
  v24 = *(v2 + v8);
  *(v2 + v8) = v108;
  sub_70EB0(a1, v107);
  sub_15F84(&v108, v107, &qword_DFDD58);

  type metadata accessor for LibraryAddKeepLocalStatusObserver();
  swift_allocObject();
  *(v2 + *(&stru_1F8.reserved2 + (swift_isaMask & *v2))) = sub_259C34();
  v25 = [objc_allocWithZone(type metadata accessor for AlbumDetailSongsViewController()) init];
  *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) = v25;
  v26 = *(v2 + v8);
  v27 = *&v25[qword_E08848];
  *&v25[qword_E08848] = v26;
  v28 = v26;
  v29 = v25;

  v29[qword_E08860] = 0;
  (*&stru_6A8.segname[(swift_isaMask & *v29) - 8])();

  v30 = sub_4D3A88(_swiftEmptyArrayStorage);
  v31 = [v30 navigationItem];
  v32 = [v30 parentViewController];
  if (v32)
  {
    v33 = v32;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v34 = v33;
      v35 = [v34 navigationItem];

      v33 = [v34 parentViewController];
      v31 = v35;
      if (!v33)
      {
        goto LABEL_8;
      }
    }
  }

  v35 = v31;
LABEL_8:
  [v35 setLargeTitleDisplayMode:2];
  v36 = sub_387998();
  if (v36 <= 1)
  {
    if (!v36)
    {

      goto LABEL_18;
    }

LABEL_14:
    v37 = sub_ABB3C0();

    if (v37)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v36 == 2 || v36 == 3)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (qword_DE6B20 != -1)
  {
    swift_once();
  }

  v38 = qword_E01290;
  v39 = sub_AB9260();
  objc_setAssociatedObject(v35, v38, v39, &dword_0 + 1);

  [v35 _setManualScrollEdgeAppearanceEnabled:1];
  [v35 _setManualScrollEdgeAppearanceProgress:1.0];
  [v35 _setManualScrollEdgeAppearanceEnabled:0];
  [v35 _setAutoScrollEdgeTransitionDistance:0.0];
LABEL_18:
  v40 = sub_23E05C();
  if (qword_DE6B28 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v35, qword_E01298, v40, &dword_0 + 1);

  v106 = v30 + *&stru_298.segname[swift_isaMask & *v30];
  v41 = *(v106 + 4);
  if (v41)
  {
    v42 = *&stru_1F8.segname[(*v41 & swift_isaMask) + 8];
    v43 = v30;
    v44 = v41;
    v42(v30, &off_D04A90);
  }

  v45 = *(a1 + 8);
  if (v45)
  {
    v46 = &v45[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailDelegate];
    swift_beginAccess();
    *(v46 + 1) = &off_D04A48;
    swift_unknownObjectWeakAssign();
    v47 = v30;
    v48 = v45;
    sub_2D6724();
    v49 = v48;
    sub_12AFE8();
    v104 = v45;
    v51 = v50;
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v105 = a1;
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 1;
    type metadata accessor for JSModelMetricsReporter();
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54[6] = 0;
    v54[5] = 0;
    v54[2] = v49;
    v54[3] = &protocol witness table for JSContainerDetail;
    swift_beginAccess();
    v54[5] = sub_2E0EEC;
    v54[6] = v53;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    v55 = (v47 + *&stru_388.segname[(swift_isaMask & *v47) + 8]);
    *v55 = v54;
    v55[1] = &protocol witness table for JSModelMetricsReporter;
    swift_unknownObjectRelease();
    v56 = *(v47 + *(&stru_248.reloff + (swift_isaMask & *v47)));
    v57 = v49;
    v103 = v56;
    sub_12AFE8();
    v59 = v58;
    type metadata accessor for ContainerDetailSongsMetricsReporter();
    v60 = swift_allocObject();
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = 0;
    *(v62 + 32) = 1;
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63[6] = 0;
    v63[5] = 0;
    v63[2] = v57;
    v63[3] = &protocol witness table for JSContainerDetail;
    swift_beginAccess();
    v63[5] = sub_2E48E8;
    v63[6] = v62;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    *(v60 + 16) = v63;
    v45 = v104;
    v64 = &v103[qword_E719A0];
    *v64 = v60;
    v64[1] = &off_D049D0;
    a1 = v105;

    swift_unknownObjectRelease();
  }

  v65 = *(&stru_248.reloff + (swift_isaMask & *v30));
  *(*(v30 + v65) + qword_E08808 + 8) = &off_D049A0;
  swift_unknownObjectWeakAssign();
  v66 = *(v30 + *(&stru_1F8.reserved2 + (swift_isaMask & *v30)));
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v66 + 32) = sub_2DC6FC;
  *(v66 + 40) = v67;
  v68 = v30;

  v69 = *(v30 + v65);
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = v69;

  v72 = &v71[qword_E08810];
  v73 = *&v71[qword_E08810];
  *v72 = sub_2DC704;
  v72[1] = v70;

  sub_17654(v73);

  v74 = v106;
  v75 = *(v106 + 4);
  if (v75)
  {
    v76 = *&stru_B8.segname[(swift_isaMask & *v75) + 8];
    v77 = v75;
    v74 = v106;
    v78 = v76();

    type metadata accessor for JSContainerDetailModelRequest();
    if (swift_dynamicCastClass())
    {
      v79 = (*(&stru_1F8.size + (swift_isaMask & *v78)))();
      if (v79 || (v79 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v78)))()) != 0)
      {
        v80 = v79;

        if (sub_24F798())
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v81 = (*(&stru_2E8.size + (swift_isaMask & *v78)))();
      if (v81)
      {
        v82 = v81;
        v83 = (*&stru_B8.segname[(swift_isaMask & *v81) + 16])() & 1;

        if (v83 == (sub_24F798() & 1))
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }
  }

  if (sub_24F798())
  {
LABEL_35:
    sub_2D597C(0);
  }

LABEL_36:
  objc_opt_self();
  v84 = swift_dynamicCastObjCClass();
  if (v84)
  {
    if (*(v74 + 2))
    {
      v85 = v84;
      objc_opt_self();
      v86 = swift_dynamicCastObjCClass();
      if (v86)
      {
        if (*(v74 + 1))
        {
          [v85 updateAlbumLibraryDataIfNeededWithModelAlbum:v86 containerDetailViewModel:?];
        }
      }
    }
  }

  if (v45)
  {
    v87 = v45;
    v88 = *JSContainerDetail.NotificationName.storeItemMetadataDidChange.unsafeMutableAddressor();
    v89 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v87;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v91 = v87;
    *(v68 + *&stru_388.segname[(swift_isaMask & *v68) + 16]) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v88, v45, 1, 1, sub_2E0E98, v90);
  }

  v92 = *&stru_338.segname[(swift_isaMask & *v68) + 16];
  v93 = *(v68 + *&stru_338.segname[(swift_isaMask & *v68) + 8]);
  if (v93)
  {
    v94 = *(v93 + 56);
  }

  else
  {
    v94 = 0;
  }

  v95 = *(**(v68 + v92) + 136);

  v95(v94);

  v96 = *(v68 + v92);
  v97 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = *(*v96 + 160);
  v99 = v68;

  v98(sub_2E0910, v97);

  v100 = [v99 traitCollection];

  LOBYTE(v97) = UITraitCollection.isMediaPicker.getter();
  if (v97)
  {

    sub_70F0C(a1);
  }

  else
  {
    v101 = sub_11438(&off_CEFBF8);
    sub_2D380C(v101, 0);
    sub_70F0C(a1);
  }

  return v99;
}

void *sub_2D15C8(uint64_t a1)
{
  v2 = v1;
  *(v1 + *&stru_248.sectname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) - 8]) = 0;
  v4 = *&stru_248.segname[swift_isaMask & *v1];
  *(v1 + v4) = sub_23DD70();
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 8]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_248.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_248.offset + (swift_isaMask & *v1))) = 0;
  v5 = *(&stru_248.flags + (swift_isaMask & *v1));
  v6 = objc_allocWithZone(type metadata accessor for JSVerticalStackViewController());
  *(v1 + v5) = sub_9F704(_swiftEmptyArrayStorage);
  v7 = *(&stru_248.reserved2 + (swift_isaMask & *v1));
  *(v1 + v7) = [objc_allocWithZone(type metadata accessor for DetailHeader()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = *&stru_298.sectname[swift_isaMask & *v1];
  *(v1 + v8) = 0;
  v9 = v2 + *&stru_298.segname[(swift_isaMask & *v2) - 8];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  v9[24] = 1;
  v10 = v2 + *&stru_298.segname[(swift_isaMask & *v2) + 8];
  sub_2E2464(v113);
  v11 = v113[3];
  *(v10 + 2) = v113[2];
  *(v10 + 3) = v11;
  v10[128] = v114;
  v12 = v113[7];
  *(v10 + 6) = v113[6];
  *(v10 + 7) = v12;
  v13 = v113[5];
  *(v10 + 4) = v113[4];
  *(v10 + 5) = v13;
  v14 = v113[1];
  *v10 = v113[0];
  *(v10 + 1) = v14;
  *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_298.size + (swift_isaMask & *v1))) = 0;
  v15 = *(&stru_298.offset + (swift_isaMask & *v1));
  type metadata accessor for ModelRequestFilteringController();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = [objc_allocWithZone(NSOperationQueue) init];
  v16[5] = &_swiftEmptyDictionarySingleton;
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 2;
  *(v2 + v15) = v16;
  *(v2 + *(&stru_298.reloff + (swift_isaMask & *v2))) = 0;
  v17 = *(&stru_298.flags + (swift_isaMask & *v2));
  v18 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  *(v2 + *(&stru_298.reserved2 + (swift_isaMask & *v2))) = 0;
  *(v2 + *&stru_2E8.sectname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) - 8]) = 0;
  *(v2 + *&stru_2E8.segname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 8]) = _swiftEmptyArrayStorage;
  *(v2 + *&stru_2E8.segname[(swift_isaMask & *v2) + 16]) = 0;
  *(v2 + *(&stru_2E8.size + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.offset + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.reloff + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.flags + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_2E8.reserved2 + (swift_isaMask & *v2))) = 0;
  v19 = *&stru_338.sectname[swift_isaMask & *v2];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v2 + v19) = TextDrawing.Cache.init()();
  *(v2 + *&stru_338.segname[(swift_isaMask & *v2) - 8]) = 0;
  v20 = (v2 + *&stru_338.segname[swift_isaMask & *v2]);
  *v20 = 0;
  v20[1] = 0;
  *(v2 + *&stru_338.segname[(swift_isaMask & *v2) + 8]) = 0;
  v21 = *&stru_338.segname[(swift_isaMask & *v2) + 16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0);
  swift_allocObject();
  *(v2 + v21) = ArtworkVideoReportingController.init()();
  *(v2 + *(&stru_338.size + (swift_isaMask & *v2))) = 3;
  *(v2 + *(&stru_338.offset + (swift_isaMask & *v2))) = 0;
  *(v2 + *(&stru_338.reloff + (swift_isaMask & *v2))) = 0;
  v22 = v2 + *(&stru_338.flags + (swift_isaMask & *v2));
  *v22 = 0;
  v22[8] = 1;
  v23 = (v2 + *(&stru_338.reserved2 + (swift_isaMask & *v2)));
  *v23 = 0;
  v23[1] = 0;
  *(v2 + *&stru_388.sectname[swift_isaMask & *v2]) = 0;
  *(v2 + *&stru_388.segname[(swift_isaMask & *v2) - 8]) = 1;
  *(v2 + *&stru_388.segname[swift_isaMask & *v2]) = 0;
  v24 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
  *v24 = 0;
  v24[1] = 0;
  *(v2 + *&stru_388.segname[(swift_isaMask & *v2) + 16]) = 0;
  v25 = (v2 + *&stru_298.segname[swift_isaMask & *v2]);
  v26 = *(a1 + 64);
  v25[3] = *(a1 + 48);
  v25[4] = v26;
  v27 = *(a1 + 32);
  v25[1] = *(a1 + 16);
  v25[2] = v27;
  *v25 = *a1;
  v112 = *(a1 + 48);
  v28 = *(v2 + v8);
  *(v2 + v8) = v112;
  sub_70EB0(a1, v111);
  sub_15F84(&v112, v111, &qword_DFDD58);

  type metadata accessor for LibraryAddKeepLocalStatusObserver();
  swift_allocObject();
  *(v2 + *(&stru_1F8.reserved2 + (swift_isaMask & *v2))) = sub_259C34();
  v29 = [objc_allocWithZone(type metadata accessor for PlaylistDetailSongsViewController()) init];
  *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) = v29;
  v30 = *(v2 + v8);
  v31 = *&v29[qword_E08848];
  *&v29[qword_E08848] = v30;
  v32 = v30;
  v33 = v29;

  v33[qword_E08860] = 0;
  (*&stru_6A8.segname[(swift_isaMask & *v33) - 8])();

  v34 = sub_4D3A88(_swiftEmptyArrayStorage);
  v35 = [v34 navigationItem];
  v36 = [v34 parentViewController];
  if (v36)
  {
    v37 = v36;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v38 = v37;
      v39 = [v38 navigationItem];

      v37 = [v38 parentViewController];
      v35 = v39;
      if (!v37)
      {
        goto LABEL_8;
      }
    }
  }

  v39 = v35;
LABEL_8:
  [v39 setLargeTitleDisplayMode:2];
  v40 = sub_387998();
  if (v40 <= 1)
  {
    if (!v40)
    {

      goto LABEL_18;
    }

LABEL_14:
    v41 = sub_ABB3C0();

    if (v41)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v40 == 2 || v40 == 3)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (qword_DE6B20 != -1)
  {
    swift_once();
  }

  v42 = qword_E01290;
  v43 = sub_AB9260();
  objc_setAssociatedObject(v39, v42, v43, &dword_0 + 1);

  [v39 _setManualScrollEdgeAppearanceEnabled:1];
  [v39 _setManualScrollEdgeAppearanceProgress:1.0];
  [v39 _setManualScrollEdgeAppearanceEnabled:0];
  [v39 _setAutoScrollEdgeTransitionDistance:0.0];
LABEL_18:
  v44 = sub_23E05C();
  if (qword_DE6B28 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v39, qword_E01298, v44, &dword_0 + 1);

  v110 = v34 + *&stru_298.segname[swift_isaMask & *v34];
  v45 = *(v110 + 4);
  if (v45)
  {
    v46 = *&stru_1F8.segname[(*v45 & swift_isaMask) + 8];
    v47 = v34;
    v48 = v45;
    v46(v34, &off_D04A90);
  }

  v49 = *(a1 + 8);
  if (v49)
  {
    v50 = &v49[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailDelegate];
    swift_beginAccess();
    *(v50 + 1) = &off_D04A48;
    swift_unknownObjectWeakAssign();
    v51 = v34;
    v52 = v49;
    sub_2D68F8();
    v53 = v52;
    sub_12AFE8();
    v108 = v49;
    v55 = v54;
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v109 = a1;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = 0;
    *(v57 + 32) = 1;
    type metadata accessor for JSModelMetricsReporter();
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58[6] = 0;
    v58[5] = 0;
    v58[2] = v53;
    v58[3] = &protocol witness table for JSContainerDetail;
    swift_beginAccess();
    v58[5] = sub_2E24B8;
    v58[6] = v57;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    v59 = (v51 + *&stru_388.segname[(swift_isaMask & *v51) + 8]);
    *v59 = v58;
    v59[1] = &protocol witness table for JSModelMetricsReporter;
    swift_unknownObjectRelease();
    v60 = *(v51 + *(&stru_248.reloff + (swift_isaMask & *v51)));
    v61 = v53;
    v107 = v60;
    sub_12AFE8();
    v63 = v62;
    type metadata accessor for ContainerDetailSongsMetricsReporter();
    v64 = swift_allocObject();
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = 0;
    *(v66 + 32) = 1;
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67[6] = 0;
    v67[5] = 0;
    v67[2] = v61;
    v67[3] = &protocol witness table for JSContainerDetail;
    swift_beginAccess();
    v67[5] = sub_2E48EC;
    v67[6] = v66;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    *(v64 + 16) = v67;
    v49 = v108;
    v68 = &v107[qword_E719A0];
    *v68 = v64;
    v68[1] = &off_D049D0;
    a1 = v109;

    swift_unknownObjectRelease();
  }

  v69 = *(&stru_248.reloff + (swift_isaMask & *v34));
  *(*(v34 + v69) + qword_E08808 + 8) = &off_D049A0;
  swift_unknownObjectWeakAssign();
  v70 = *(v34 + *(&stru_1F8.reserved2 + (swift_isaMask & *v34)));
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v70 + 32) = sub_2E2480;
  *(v70 + 40) = v71;
  v72 = v34;

  v73 = *(v34 + v69);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = v73;

  v76 = &v75[qword_E08810];
  v77 = *&v75[qword_E08810];
  *v76 = sub_2E2488;
  v76[1] = v74;

  sub_17654(v77);

  v78 = v110;
  v79 = *(v110 + 4);
  if (v79)
  {
    v80 = *&stru_B8.segname[(swift_isaMask & *v79) + 8];
    v81 = v79;
    v78 = v110;
    v82 = v80();

    type metadata accessor for JSContainerDetailModelRequest();
    if (swift_dynamicCastClass())
    {
      v83 = (*(&stru_1F8.size + (swift_isaMask & *v82)))();
      if (v83 || (v83 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v82)))()) != 0)
      {
        v84 = v83;

        if (sub_24F798())
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v85 = (*(&stru_2E8.size + (swift_isaMask & *v82)))();
      if (v85)
      {
        v86 = v85;
        v87 = (*&stru_B8.segname[(swift_isaMask & *v85) + 16])() & 1;

        if (v87 == (sub_24F798() & 1))
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }
  }

  if (sub_24F798())
  {
LABEL_35:
    (*(&stru_6F8.offset + (swift_isaMask & *v72)))(0, _swiftEmptyArrayStorage);
  }

LABEL_36:
  objc_opt_self();
  v88 = swift_dynamicCastObjCClass();
  if (v88)
  {
    if (*(v78 + 2))
    {
      v89 = v88;
      objc_opt_self();
      v90 = swift_dynamicCastObjCClass();
      if (v90)
      {
        if (*(v78 + 1))
        {
          [v89 updateAlbumLibraryDataIfNeededWithModelAlbum:v90 containerDetailViewModel:?];
        }
      }
    }
  }

  if (v49)
  {
    v91 = v49;
    v92 = *JSContainerDetail.NotificationName.storeItemMetadataDidChange.unsafeMutableAddressor();
    v93 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v91;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v95 = v91;
    *(v72 + *&stru_388.segname[(swift_isaMask & *v72) + 16]) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v92, v49, 1, 1, sub_2E4950, v94);
  }

  v96 = *&stru_338.segname[(swift_isaMask & *v72) + 16];
  v97 = *(v72 + *&stru_338.segname[(swift_isaMask & *v72) + 8]);
  if (v97)
  {
    v98 = *(v97 + 56);
  }

  else
  {
    v98 = 0;
  }

  v99 = *(**(v72 + v96) + 136);

  v99(v98);

  v100 = *(v72 + v96);
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = *(*v100 + 160);
  v103 = v72;

  v102(sub_2E48F4, v101);

  v104 = [v103 traitCollection];

  LOBYTE(v101) = UITraitCollection.isMediaPicker.getter();
  if (v101)
  {

    sub_70F0C(a1);
  }

  else
  {
    v105 = sub_1144C(&off_CEFC20);
    sub_2D3ABC(v105, 0);
    sub_70F0C(a1);
  }

  return v103;
}

void sub_2D2A00(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v35 = a2[1];
  v36 = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v33 = v6;
    v34 = v5;
    v16 = [Strong traitCollection];
    v17 = UITraitCollection.isMediaPicker.getter();

    if (!v17)
    {
      v18 = sub_11438(&off_CF0D48);
      sub_2D380C(v18, 0);

      v20 = (*(a1 + 32) & 0xFE) == 0x7A || (v34 & 0xFE) == 122;
      v21 = sub_2D3334();
      (*(&stru_1A8.reloff + (swift_isaMask & *v21)))();

      (*(v11 + 56))(v9, 0, 1, v10);
      sub_25A964(v9, 0, v13);
      sub_12E1C(v9, &unk_DFAAB0);
      v22 = sub_2D3334();
      if (v20)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v26 = SymbolButton.Animation.eased.unsafeMutableAddressor();
        v23 = *v26;
        v24 = v26[1];
        v25 = v26[2];
      }

      v27 = v33;
      (*&stru_1F8.segname[(swift_isaMask & *v22) + 8])(v13, v23, v24, v25, v20, &off_CF0D70);

      v28 = sub_2D3334();
      v29 = v34;
      if ((a2[2] & 0xFE) == 0x7A)
      {
        v30 = 0;
      }

      else
      {
        sub_2596F4();
        v30 = sub_AB9260();
      }

      [v28 setAccessibilityLabel:v30];
      sub_BD4F8(v13);

      v31 = *(v15 + *(&stru_248.reloff + (swift_isaMask & *v15))) + qword_E08858;
      v32 = v35;
      *v31 = v36;
      *(v31 + 16) = v32;
      *(v31 + 32) = v29;
      *(v31 + 40) = v27;
    }
  }
}

void sub_2D2DA4(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v36 = *a2;
  v37 = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v34 = v6;
    v35 = v5;
    v16 = [Strong traitCollection];
    v17 = UITraitCollection.isMediaPicker.getter();

    if (!v17)
    {
      v18 = sub_1144C(&off_CF0DC0);
      sub_2D3ABC(v18, 0);

      v20 = (*(a1 + 32) & 0xFE) == 0x7A || (v35 & 0xFE) == 122;
      v21 = sub_2D3334();
      (*(&stru_1A8.reloff + (swift_isaMask & *v21)))();

      (*(v11 + 56))(v9, 0, 1, v10);
      sub_25A964(v9, 0, v13);
      sub_12E1C(v9, &unk_DFAAB0);
      v22 = sub_2D3334();
      if (v20)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v26 = SymbolButton.Animation.eased.unsafeMutableAddressor();
        v23 = *v26;
        v24 = v26[1];
        v25 = v26[2];
      }

      v27 = v34;
      (*&stru_1F8.segname[(swift_isaMask & *v22) + 8])(v13, v23, v24, v25, v20, &off_CF0DE8);

      v28 = sub_2D3334();
      v29 = v35;
      if ((a2[2] & 0xFE) == 0x7A)
      {
        v30 = 0;
      }

      else
      {
        sub_2596F4();
        v30 = sub_AB9260();
      }

      [v28 setAccessibilityLabel:v30];

      v31 = *(v15 + *(&stru_248.reloff + (swift_isaMask & *v15))) + qword_E08858;
      v32 = *(v31 + 16);
      v38[0] = *v31;
      v38[1] = v32;
      v38[2] = *(v31 + 32);
      v33 = v37;
      *v31 = v36;
      *(v31 + 16) = v33;
      *(v31 + 32) = v29;
      *(v31 + 40) = v27;
      sub_4FC4C(v38);
      sub_BD4F8(v13);
    }
  }
}

void sub_2D3160(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_2D31BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + *&stru_298.segname[swift_isaMask & *Strong];
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      if (*(v2 + 2))
      {
        v4 = v3;
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          if (*(v2 + 1))
          {
            [v4 updateAlbumLibraryDataIfNeededWithModelAlbum:v5 containerDetailViewModel:?];
          }
        }
      }
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + *(&stru_248.reloff + (swift_isaMask & *v6)));

    v9 = JSContainerDetail.containerDetailedResponseIsReady.getter();
    v10 = v8[qword_E71998];
    v8[qword_E71998] = v9 & 1;
    sub_46E444(v10);
  }
}

char *sub_2D3334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = *&stru_248.sectname[swift_isaMask & *v0];
  v12 = *(v0 + v11);
  if (v12)
  {
    v13 = *(v0 + v11);
  }

  else
  {
    SymbolButton.Configuration.init()(&v29 - v9);
    sub_2E23FC(v10, v3, type metadata accessor for SymbolButton.Configuration);
    (*(v5 + 56))(v3, 0, 1, v4);
    v14 = v0;
    sub_25A964(v3, 0, v8);
    sub_12E1C(v3, &unk_DFAAB0);
    sub_2580A4(v8, v10);
    v15 = SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor();
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 2);
    v19 = v15[24];
    v20 = &v10[*(v4 + 64)];
    v21 = *(v20 + 1);
    v22 = v17;
    v23 = v18;

    *v20 = v16;
    *(v20 + 1) = v17;
    *(v20 + 2) = v18;
    v20[24] = v19;
    v24 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v25 = SymbolButton.init(configuration:handler:)(v10, 0, 0);
    v26 = *(v14 + v11);
    *(v14 + v11) = v25;
    v13 = v25;

    v12 = 0;
  }

  v27 = v12;
  return v13;
}

id sub_2D35AC()
{
  v1 = *&stru_248.segname[(swift_isaMask & *v0) - 8];
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_2D3334();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_2D3658()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&stru_248.segname[(swift_isaMask & *v1) + 16];
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = *(v1 + v5);
  }

  else
  {
    v8 = SymbolButton.Configuration.barButtonContextualAction.unsafeMutableAddressor();
    sub_2E23FC(v8, v4, type metadata accessor for SymbolButton.Configuration);
    v9 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v10 = SymbolButton.init(configuration:handler:)(v4, 0, 0);
    v11 = *(v1 + v5);
    *(v1 + v5) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

id sub_2D3760()
{
  v1 = *(&stru_248.size + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_2D3658();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_2D380C(uint64_t a1, char a2)
{
  if (sub_48C664(0, a1))
  {
    v5 = [v2 navigationItem];
    v6 = [v2 parentViewController];
    if (v6)
    {
      v7 = v6;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v8 = v7;
        v9 = [v8 navigationItem];

        v7 = [v8 parentViewController];
        v5 = v9;
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    v9 = v5;
LABEL_9:

    [v9 setLeftBarButtonItems:0 animated:a2 & 1];
  }

  if (sub_48C664(1, a1))
  {
    v10 = [v2 navigationItem];
    v11 = [v2 parentViewController];
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v13 = v12;
        v14 = [v13 navigationItem];

        v12 = [v13 parentViewController];
        v10 = v14;
        if (!v12)
        {
          goto LABEL_19;
        }
      }
    }

    v14 = v10;
LABEL_19:
    v15 = [v2 traitCollection];
    sub_2D3E00();
    v17 = v16;

    if (v17)
    {
      sub_13C80(0, &unk_DF12E0);
      isa = sub_AB9740().super.isa;
    }

    else
    {
      isa = 0;
    }

    [v14 setRightBarButtonItems:isa animated:a2 & 1];
  }
}