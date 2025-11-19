void sub_10021F964(char a1)
{
  v3 = *(type metadata accessor for FMDeviceDetailViewModel() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001ED71C(a1, v1 + v4, v5);
}

uint64_t sub_10021FA00(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10021FB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021FBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1001E7284(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_10021FC6C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1001E8904(v3, v0 + v2, v5, v6);
}

void sub_10021FD0C()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10007EBC0(&qword_1006BB1E0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_1001E79B0(v0 + v2, v6, v0 + v5, v8, v9);
}

uint64_t sub_10021FE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMPlatterIcon();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021FF68()
{
  v1 = *(type metadata accessor for FMDeviceDetailViewModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10020DCF8(v2, v3);
}

uint64_t sub_10021FFCC(uint64_t a1)
{
  v4 = *(type metadata accessor for FMDeviceDetailViewModel() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_10020DF08(a1, v6, v7, v1 + v5, v8);
}

void sub_100220130()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken) = v2;
  v3 = v2;
}

uint64_t sub_10022017C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002201E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100220264()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100210F88(v0 + v2, v4, v5);
}

id sub_1002206C8()
{
  type metadata accessor for FMAccessoryPairingAccountProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedInstance];
  result = [objc_allocWithZone(ACAccountStore) init];
  *(v0 + 24) = result;
  qword_1006D4128 = v0;
  return result;
}

uint64_t sub_100220740()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100005B4C(0xD00000000000001CLL, 0x8000000100587510, &v17);
    _os_log_impl(&_mh_execute_header, v4, v2, "FMAccessoryPairingAccountProvider: %s", v5, 0xCu);
    sub_100006060(v6);
  }

  result = sub_1002211C4();
  if (result)
  {
    v8 = result;
    if ([*(v1 + 16) securityLevelForAccount:result] == 4)
    {
      v9 = static os_log_type_t.default.getter();
      v10 = Logger.logObject.getter();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_100005B4C(0x616E452032415348, 0xEC00000064656C62, &v17);
        _os_log_impl(&_mh_execute_header, v10, v9, "FMAccessoryPairingAccountProvider: %s", v11, 0xCu);
        sub_100006060(v12);
      }

      return 2;
    }

    else
    {
      v13 = static os_log_type_t.error.getter();
      v14 = Logger.logObject.getter();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_100005B4C(0x7369442032415348, 0xED000064656C6261, &v17);
        _os_log_impl(&_mh_execute_header, v14, v13, "FMAccessoryPairingAccountProvider: %s", v15, 0xCu);
        sub_100006060(v16);
      }

      return 1;
    }
  }

  return result;
}

id sub_100220A58()
{
  v1 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v1))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100005B4C(0xD000000000000018, 0x80000001005874F0, &v17);
    _os_log_impl(&_mh_execute_header, v3, v1, "FMAccessoryPairingAccountProvider: %s", v4, 0xCu);
    sub_100006060(v5);
  }

  v6 = *(v0 + 24);
  v7 = [v6 aa_primaryAppleAccount];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(AAUIProfilePictureStore) initWithAppleAccount:v7 grandSlamAccount:0 accountStore:v6];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 profilePictureForAccountOwner];

      return v11;
    }
  }

  v13 = static os_log_type_t.error.getter();
  v14 = Logger.logObject.getter();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100005B4C(0xD000000000000029, 0x80000001005874C0, &v17);
    _os_log_impl(&_mh_execute_header, v14, v13, "FMAccessoryPairingAccountProvider: %s", v15, 0xCu);
    sub_100006060(v16);
  }

  return 0;
}

void sub_100220CDC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100005B4C(0xD000000000000018, 0x80000001005874A0, v38);
    _os_log_impl(&_mh_execute_header, v6, v4, "FMAccessoryPairingAccountProvider: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v9 = sub_1002211C4();
  if (!v9)
  {
    v13 = 0;
    v15 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
LABEL_25:
    *a1 = v13;
    *(a1 + 8) = v15;
    *(a1 + 16) = v21;
    *(a1 + 24) = v22;
    *(a1 + 32) = v23;
    return;
  }

  v10 = v9;
  v11 = [v9 aa_formattedUsername];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = *(v2 + 16);
    if ([v16 phoneAsAppleIDForAccount:v10])
    {
      v17 = static os_log_type_t.default.getter();
      v18 = Logger.logObject.getter();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v38[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100005B4C(0x20746E756F636341, 0xEF4F4B414D207369, v38);
        _os_log_impl(&_mh_execute_header, v18, v17, "FMAccessoryPairingAccountProvider: %s", v19, 0xCu);
        sub_100006060(v20);
      }

      v21 = 0;
      v22 = 0;
      v23 = 1;
      goto LABEL_25;
    }

    v24 = [v16 additionalInfoForAccount:v10];
    if (v24)
    {
      v25 = v24;
      v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v26 + 16))
      {
        goto LABEL_21;
      }

      v27 = sub_10000726C(0x6D754E656E6F6870, 0xEC00000073726562);
      if ((v28 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_100006004(*(v26 + 56) + 32 * v27, v38);

      sub_10007EBC0(&qword_1006B6A78);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      if (!*(v36 + 16) || (v29 = *(v36 + 32), , , !*(v29 + 16)) || (v30 = sub_10000726C(0x6D754E656E6F6870, 0xEB00000000726562), (v31 & 1) == 0))
      {
LABEL_21:

        goto LABEL_22;
      }

      sub_100006004(*(v29 + 56) + 32 * v30, v38);

      if (swift_dynamicCast())
      {

        v21 = v36;
        v22 = v37;
        v23 = 2;
        goto LABEL_25;
      }
    }

LABEL_22:
    v32 = static os_log_type_t.default.getter();
    v33 = Logger.logObject.getter();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100005B4C(0xD000000000000026, 0x8000000100587470, v38);
      _os_log_impl(&_mh_execute_header, v33, v32, "FMAccessoryPairingAccountProvider: %s", v34, 0xCu);
      sub_100006060(v35);
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_25;
  }

  __break(1u);
}

id sub_1002211C4()
{
  v1 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v1))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100005B4C(0xD000000000000018, 0x8000000100587450, &v16);
    _os_log_impl(&_mh_execute_header, v3, v1, "FMAccessoryPairingAccountProvider: %s", v4, 0xCu);
    sub_100006060(v5);
  }

  v6 = [*(v0 + 24) aa_primaryAppleAccount];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 aa_altDSID];
    if (v8)
    {
      v9 = v8;
      v10 = [*(v0 + 16) authKitAccountWithAltDSID:v8];

      result = v10;
      if (v10)
      {
        return result;
      }
    }

    else
    {
    }
  }

  v12 = static os_log_type_t.error.getter();
  v13 = Logger.logObject.getter();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100005B4C(0xD00000000000001ALL, 0x8000000100587430, &v16);
    _os_log_impl(&_mh_execute_header, v13, v12, "FMAccessoryPairingAccountProvider: %s", v14, 0xCu);
    sub_100006060(v15);
  }

  return 0;
}

uint64_t sub_100221440()
{

  return swift_deallocClassInstance();
}

__n128 sub_1002214B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002214C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10022150C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

id sub_10022156C()
{
  v1 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1002215E4(void *a1)
{
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_contentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesSubscription] = 0;
  v2 = &v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_selectionSubscription];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab;
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v80._object = 0x8000000100587640;
  v6._countAndFlagsBits = 0x545F454C504F4550;
  v80._countAndFlagsBits = 0xD00000000000001CLL;
  v6._object = 0xEA00000000004241;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v80);

  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 _systemImageNamed:v8];

  v11 = objc_allocWithZone(UITabBarItem);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 initWithTitle:v12 image:v10 selectedImage:0];

  *&v1[v3] = v13;
  v14 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab;
  v15 = [v4 mainBundle];
  v81._object = 0x8000000100587660;
  v16._countAndFlagsBits = 0x5F53454349564544;
  v16._object = 0xEB00000000424154;
  v81._countAndFlagsBits = 0xD00000000000001DLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v81);

  v18 = String._bridgeToObjectiveC()();
  v19 = [v9 _systemImageNamed:v18];

  v20 = objc_allocWithZone(UITabBarItem);
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 initWithTitle:v21 image:v19 selectedImage:0];

  *&v1[v14] = v22;
  v23 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab;
  v24 = [v4 mainBundle];
  v82._object = 0x80000001005876A0;
  v25._countAndFlagsBits = 0x4241545F454DLL;
  v25._object = 0xE600000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v82);

  v27 = String._bridgeToObjectiveC()();
  v28 = [v9 _systemImageNamed:v27];

  v29 = objc_allocWithZone(UITabBarItem);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 initWithTitle:v30 image:v28 selectedImage:0];

  *&v1[v23] = v31;
  v32 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab;
  v33 = [v4 mainBundle];
  v34.value._countAndFlagsBits = 0xD000000000000013;
  v83._object = 0x8000000100579A00;
  v35._countAndFlagsBits = 0x41545F534D455449;
  v34.value._object = 0x80000001005799E0;
  v35._object = 0xE900000000000042;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v83);

  v37 = String._bridgeToObjectiveC()();
  v38 = [v9 _systemImageNamed:v37];

  v39 = objc_allocWithZone(UITabBarItem);
  v40 = String._bridgeToObjectiveC()();

  v41 = [v39 initWithTitle:v40 image:v38 selectedImage:0];

  *&v1[v32] = v41;
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator] = a1;
  v79.receiver = v1;
  v79.super_class = type metadata accessor for FMLegacyTabBar();

  v42 = objc_msgSendSuper2(&v79, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100222058();
  v43 = a1[6];
  type metadata accessor for FMPeopleSubscription();
  v44 = swift_allocObject();
  *(v44 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  v45 = v42;

  UUID.init()();
  *(v44 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_10062FDB0;
  swift_unknownObjectWeakAssign();
  v46 = *(v43 + 32);

  os_unfair_lock_lock((v46 + 24));
  sub_10000E7C0((v46 + 16));
  os_unfair_lock_unlock((v46 + 24));

  *&v45[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleSubscription] = v44;

  v47 = a1[7];
  v48 = v45;

  v49 = sub_1003CD44C(v48, v47);

  v50 = &v48[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_selectionSubscription];
  *v50 = v49;
  v50[1] = &off_100637420;
  swift_unknownObjectRelease();
  v51 = a1[3];
  type metadata accessor for FMDevicesSubscription();
  v52 = swift_allocObject();
  *(v52 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  v53 = v48;

  UUID.init()();
  *(v52 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10062FD10;
  swift_unknownObjectWeakAssign();
  v54 = *(v51 + 16);

  os_unfair_lock_lock((v54 + 24));
  sub_10000E7C0((v54 + 16));
  os_unfair_lock_unlock((v54 + 24));

  *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesSubscription] = v52;

  v55 = String._bridgeToObjectiveC()();
  [v53 setAccessibilityIdentifier:v55];

  v56 = *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab];
  v57 = [v4 mainBundle];
  v84._object = 0x8000000100587640;
  v84._countAndFlagsBits = 0xD00000000000001CLL;
  v58._countAndFlagsBits = 0x545F454C504F4550;
  v58._object = 0xEA00000000004241;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v84);

  v60 = String._bridgeToObjectiveC()();

  [v56 setAccessibilityIdentifier:v60];

  v61 = *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab];
  v62 = [v4 mainBundle];
  v85._object = 0x8000000100587660;
  v85._countAndFlagsBits = 0xD00000000000001DLL;
  v63._countAndFlagsBits = 0x5F53454349564544;
  v63._object = 0xEB00000000424154;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v85);

  v65 = String._bridgeToObjectiveC()();

  [v61 setAccessibilityIdentifier:v65];

  v66 = *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab];
  v67 = [v4 mainBundle];
  v86._object = 0x80000001005876A0;
  v68._countAndFlagsBits = 0x4241545F454DLL;
  v68._object = 0xE600000000000000;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v86);

  v70 = String._bridgeToObjectiveC()();

  [v66 setAccessibilityIdentifier:v70];

  v71 = *&v53[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab];
  v72 = [v4 mainBundle];
  v87._object = 0x8000000100579A00;
  v73.value._object = 0x80000001005799E0;
  v74._countAndFlagsBits = 0x41545F534D455449;
  v74._object = 0xE900000000000042;
  v73.value._countAndFlagsBits = 0xD000000000000013;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v73, v72, v75, v87);

  v76 = String._bridgeToObjectiveC()();

  [v71 setAccessibilityIdentifier:v76];

  return v53;
}

uint64_t sub_100222058()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  [v0 setShowsLargeContentViewer:1];
  v5 = sub_10022156C();
  [v1 addInteraction:v5];

  v6 = [objc_opt_self() effectWithStyle:1100];
  sub_10007EBC0(&qword_1006AFC30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1005528C0;
  *(v7 + 32) = v6;
  sub_10000905C(0, &unk_1006B6BE8);
  v8 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setBackgroundEffects:isa];

  v10 = String._bridgeToObjectiveC()();
  [v1 _setBackdropGroupName:v10];

  v11 = [objc_opt_self() systemBlueColor];
  [v1 setTintColor:v11];

  sub_10022252C();
  v12 = [v1 items];
  if (!v12)
  {
    goto LABEL_11;
  }

  sub_10000905C(0, &qword_1006B6BD8);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_7:
    v12 = v15;
LABEL_10:

LABEL_11:
    [v1 setSelectedItem:v12];

    [v1 setDelegate:v1];

    dispatch thunk of FMFManager.preferences.getter();

    sub_1002228DC(v4);
    sub_100012DF0(v4, &qword_1006AF750);

    v16 = dispatch thunk of FMFManager.friends.getter();

    sub_100222A68(v16);

    sub_100222EAC(v17);
  }

  __break(1u);
  return result;
}

id sub_100222414()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMLegacyTabBar();
  v1 = objc_msgSendSuper2(&v8, "traitCollection");
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552EE0;
  *(v2 + 32) = v1;
  v3 = objc_opt_self();
  v4 = v1;
  *(v2 + 40) = [v3 traitCollectionWithHorizontalSizeClass:1];
  sub_10000905C(0, &qword_1006B6BF8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v3 traitCollectionWithTraitsFromCollections:isa];

  return v6;
}

void sub_10022252C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator;
  v3 = qword_1006AECC0;
  v4 = *(*&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator] + 16);
  if (v3 != -1)
  {
    v15 = v4;
    swift_once();
    v4 = v15;
  }

  if (byte_1006D4AD1 == 1)
  {
    v5 = v4[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

    v6 = v5 ^ 1;
  }

  else
  {

    v6 = 0;
  }

  v7 = *(*(*&v1[v2] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted);
  sub_10007EBC0(&qword_1006AFC30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1005528C0;
  v9 = *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab];
  *(v8 + 32) = v9;
  v10 = v9;
  if (FMIPItemsTabEnabled.getter())
  {
    v11 = *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab];
    sub_1003CECA8(0, 0, v11);
  }

  if ((v7 & 1) == 0)
  {
    v12 = *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab];
    if (v8 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v13 = v12;
    sub_1003CECA8(0, 0, v13);
  }

  if (v6)
  {
    v12 = *&v1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab];
    if (!(v8 >> 62))
    {
LABEL_13:
      v14 = v12;
      sub_1003CECA8(0, 0, v14);

      goto LABEL_14;
    }

LABEL_19:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_10000905C(0, &qword_1006B6BD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setItems:isa animated:1];
}

void sub_10022277C()
{
  v1 = [v0 selectedItem];
  if (v1)
  {
    goto LABEL_14;
  }

  v2 = [v0 items];
  if (v2)
  {
    sub_10000905C(0, &qword_1006B6BD8);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v4 = *(v3 + 32);
      }

      v2 = v4;
      goto LABEL_11;
    }

    v2 = 0;
LABEL_11:
  }

  [v0 setSelectedItem:v2];

  v5 = [v0 selectedItem];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_100225F18();
  v1 = v6;
LABEL_14:
}

void sub_1002228DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_10022598C(a1, &v12 - v5);
  v7 = type metadata accessor for FMFPreferences();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &qword_1006AF750);
  }

  else
  {
    v9 = FMFPreferences.hideLocation.getter();
    (*(v8 + 8))(v6, v7);
    if (v9)
    {
      v10 = *(v2 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab);
      v11 = String._bridgeToObjectiveC()();
      [v10 setBadgeValue:v11];

      return;
    }
  }

  [*(v2 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab) setBadgeValue:0];
}

void sub_100222A68(uint64_t a1)
{
  v47 = type metadata accessor for FMFRelationshipType();
  v2 = *(v47 - 8);
  v3 = __chkstk_darwin(v47);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v35 - v5;
  v6 = type metadata accessor for FMFFriend();
  v7 = __chkstk_darwin(v6);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v41 = v14;
    v37 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v37;
    v16 = *(v13 + 56);
    v36 = (v13 - 8);
    v38 = (v13 + 16);
    v39 = (v2 + 8);
    v48 = _swiftEmptyArrayStorage;
    v42 = v6;
    v43 = v13;
    v40 = v16;
    v17 = v45;
    v14(v11, v15, v6);
    while (1)
    {
      v20 = FMFFriend.optedNotToShare.getter();
      v49 = v20 != 2;
      v21 = v11;
      FMFFriend.relationshipType.getter();
      v22 = v46;
      static FMFRelationshipType.willFollowMyLocation.getter();
      sub_10000A108(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
      v23 = v47;
      v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v25 = *v39;
      (*v39)(v22, v23);
      v25(v17, v23);
      if (v24 & 1) != 0 || ((v49 ^ v20))
      {
        v26 = *v38;
        v11 = v21;
        v18 = v42;
        (*v38)(v44, v21, v42);
        v27 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v27;
        v50 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001671C0(0, v27[2] + 1, 1);
          v29 = v50;
        }

        v19 = v40;
        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          sub_1001671C0(v30 > 1, v31 + 1, 1);
          v29 = v50;
        }

        v29[2] = v31 + 1;
        v48 = v29;
        v26(v29 + v37 + v31 * v19, v44, v18);
      }

      else
      {
        v11 = v21;
        v18 = v42;
        (*v36)(v21, v42);
        v19 = v40;
      }

      v15 += v19;
      if (!--v12)
      {
        break;
      }

      v41(v11, v15, v18);
    }
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
  }

  v32 = v48[2];
  v33 = *(v35 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab);

  if (v32)
  {
    v50 = v32;
    sub_100091894();
    BinaryInteger.formatted()();
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v33 setBadgeValue:v34];
}

void sub_100222EAC(uint64_t a1)
{
  v95 = type metadata accessor for UUID();
  v81 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v73 - v4;
  v96 = type metadata accessor for FMIPItem();
  v87 = *(v96 - 8);
  v6 = __chkstk_darwin(v96);
  v97 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v73 - v8;
  v9 = type metadata accessor for FMIPBeaconShare();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v93 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v98 = &v73 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  v18 = *(a1 + 16);
  v90 = v15;
  v78 = v10;
  if (v18)
  {
    v21 = *(v10 + 16);
    v20 = v10 + 16;
    v19 = v21;
    v89 = ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v22 = v89 + a1;
    v23 = *(v20 + 56);
    v88 = (v20 - 8);
    v92 = (v20 + 16);
    v24 = _swiftEmptyArrayStorage;
    v91 = v21;
    (v21)(v17, v89 + a1, v9);
    while (1)
    {
      if (FMIPBeaconShare.requiresResponse.getter())
      {
        v25 = *v92;
        (*v92)(v93, v17, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016717C(0, *(v24 + 2) + 1, 1);
          v24 = v99;
        }

        v28 = *(v24 + 2);
        v27 = *(v24 + 3);
        v29 = v24;
        if (v28 >= v27 >> 1)
        {
          sub_10016717C(v27 > 1, v28 + 1, 1);
          v29 = v99;
        }

        *(v29 + 2) = v28 + 1;
        v30 = v89 + v29 + v28 * v23;
        v9 = v90;
        v25(v30, v93, v90);
        v24 = v29;
        v19 = v91;
      }

      else
      {
        (*v88)(v17, v9);
      }

      v22 += v23;
      if (!--v18)
      {
        break;
      }

      v19(v17, v22, v9);
    }
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v31 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator;
  v32 = v24;
  v33 = v75;

  v34 = FMIPManager.items.getter();

  v85 = *(v32 + 2);
  if (v85)
  {
    v74 = v31;
    v35 = 0;
    v84 = *(v78 + 16);
    v36 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v73 = v32;
    v83 = v32 + v36;
    v37 = *(v78 + 72);
    v93 = (v87 + 16);
    v38 = (v81 + 1);
    v92 = (v87 + 8);
    v89 = (v87 + 32);
    v81 = (v87 + 56);
    v82 = v37;
    v79 = (v87 + 48);
    v80 = (v78 + 8);
    v39 = _swiftEmptyArrayStorage;
    v41 = v96;
    v40 = v97;
    v42 = v34;
    v77 = v5;
    v78 += 16;
    v76 = v34;
    do
    {
      v91 = v35;
      v84(v98, &v83[v82 * v35], v9);
      v43 = *(v42 + 16);
      if (v43)
      {
        v88 = v39;
        v44 = v42 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v45 = *(v87 + 72);
        v46 = *(v87 + 16);
        while (1)
        {
          v46(v40, v44, v41);
          v47 = FMIPItem.identifier.getter();
          v49 = v48;
          v50 = v94;
          FMIPBeaconShare.beaconIdentifier.getter();
          v51 = UUID.uuidString.getter();
          v53 = v52;
          (*v38)(v50, v95);
          if (v47 == v51 && v49 == v53)
          {
            break;
          }

          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v54)
          {
            goto LABEL_26;
          }

          v41 = v96;
          v40 = v97;
          (*v92)(v97, v96);
          v44 += v45;
          if (!--v43)
          {
            v55 = 1;
            v39 = v88;
            v5 = v77;
            goto LABEL_27;
          }
        }

LABEL_26:
        v5 = v77;
        v41 = v96;
        v40 = v97;
        (*v89)(v77, v97, v96);
        v55 = 0;
        v39 = v88;
LABEL_27:
        v42 = v76;
      }

      else
      {
        v55 = 1;
      }

      (*v81)(v5, v55, 1, v41);
      v9 = v90;
      (*v80)(v98, v90);
      if ((*v79)(v5, 1, v41) == 1)
      {
        sub_100012DF0(v5, &qword_1006B07D0);
      }

      else
      {
        v56 = *v89;
        (*v89)(v86, v5, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_10008BE38(0, v39[2] + 1, 1, v39);
        }

        v58 = v39[2];
        v57 = v39[3];
        if (v58 >= v57 >> 1)
        {
          v39 = sub_10008BE38(v57 > 1, v58 + 1, 1, v39);
        }

        v39[2] = (v58 + 1);
        v56(v39 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v58, v86, v41);
        v40 = v97;
      }

      v35 = v91 + 1;
    }

    while (v91 + 1 != v85);

    v33 = v75;
    v31 = v74;
    v59 = v39[2];
    if (!v59)
    {
      goto LABEL_38;
    }
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
    v59 = _swiftEmptyArrayStorage[2];
    if (!v59)
    {
LABEL_38:
      [*&v33[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab] setBadgeValue:{0, v73}];
      v60 = [objc_opt_self() sharedApplication];
      v61 = v60;
      v62 = *(*(*&v33[v31] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);
      goto LABEL_41;
    }
  }

  if (*(*(*&v33[v31] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser) == 1)
  {
    goto LABEL_38;
  }

  v63 = *&v33[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab];
  v99 = v59;
  sub_100091894();
  v64 = v63;
  BinaryInteger.formatted()();
  v65 = String._bridgeToObjectiveC()();

  [v64 setBadgeValue:v65];

  v60 = [objc_opt_self() sharedApplication];
  v66 = *(*(*&v33[v31] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);
  v62 = v59 + v66;
  if (__OFADD__(v66, v59))
  {
    __break(1u);
    return;
  }

  v61 = v60;
LABEL_41:
  [v60 setApplicationIconBadgeNumber:{v62, v73}];

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_100005B14(v67, qword_1006D4630);
  v68 = v33;

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134218240;
    *(v71 + 4) = *(*(*&v33[v31] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber);

    *(v71 + 12) = 2048;
    v72 = v39[2];

    *(v71 + 14) = v72;

    _os_log_impl(&_mh_execute_header, v69, v70, "FMLegacyTabBar: update items tab badge: pushInfo number %ld, invites number: %ld", v71, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1002238E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for FMFPreferences();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1002228DC(v5);
  return sub_100012DF0(v5, &qword_1006AF750);
}

void sub_100223A00(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator;
  v8 = qword_1006AECC0;
  v9 = *(*&a1[OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_mediator] + 16);
  if (v8 != -1)
  {
    v40 = v9;
    swift_once();
    v9 = v40;
  }

  if (byte_1006D4AD1 == 1)
  {
    v10 = v9[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

    v11 = v10 ^ 1;
  }

  else
  {

    v11 = 0;
  }

  v12 = *(*(*&a1[v7] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted);
  v13 = (v11 & 1) - 1;
  v14 = FMIPItemsTabEnabled.getter();
  if (v12)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 2;
  }

  v17 = [a1 selectedItem];
  sub_100062074(a2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_10005D4E4(v6);
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_33:
      v26 = sub_10007EBC0(&qword_1006BEEE0);
      sub_100012DF0(v6 + *(v26 + 48), &qword_1006B07D0);
      v27 = type metadata accessor for FMIPDevice();
      (*(*(v27 - 8) + 8))(v6, v27);
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_39:
      sub_10005D4E4(v6);
      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 12)
    {
LABEL_34:
      v28 = [a1 items];
      v6 = v28;
      if ((v12 & 1) == 0)
      {
LABEL_45:
        if (!v6)
        {
          goto LABEL_65;
        }

        sub_10000905C(0, &qword_1006B6BD8);
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = v11 & 1;
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_49;
        }

        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) > v34)
        {
          v35 = *(v33 + 8 * v34 + 32);
LABEL_49:
          v36 = v35;

          v17 = v36;
          goto LABEL_66;
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (!v28)
      {
        goto LABEL_65;
      }

      sub_10000905C(0, &qword_1006B6BD8);
      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = v16 + v13;
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_69;
      }

      if (v30 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_23:
    sub_10005D4E4(v6);
LABEL_66:
    [a1 setSelectedItem:v17];

    return;
  }

  if ((EnumCaseMultiPayload - 13) < 2)
  {
    v23 = [a1 items];
    if (!v23)
    {
      goto LABEL_65;
    }

    v24 = v23;
    sub_10000905C(0, &qword_1006B6BD8);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v16 + v13;
    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_67;
    }

    if (v25 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 15)
  {
    if (EnumCaseMultiPayload == 17)
    {
LABEL_40:
      v31 = [a1 items];
      v32 = v31;
      if (v12)
      {
        if (!v31)
        {
          goto LABEL_65;
        }

        sub_10000905C(0, &qword_1006B6BD8);
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = v11 & 1;
        if ((v6 & 0xC000000000000001) == 0)
        {
          if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v25)
          {
            __break(1u);
            goto LABEL_45;
          }

          goto LABEL_56;
        }

LABEL_67:
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_57;
      }

      if (!v31)
      {
        goto LABEL_65;
      }

      sub_10000905C(0, &qword_1006B6BD8);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_67;
      }

      if (v25 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

LABEL_56:
      v37 = *(v6 + 8 * v25 + 32);
LABEL_57:
      v38 = v37;
LABEL_64:

      v17 = v38;
      goto LABEL_66;
    }

    goto LABEL_23;
  }

LABEL_24:
  v19 = [a1 items];
  v20 = v19;
  if (v11)
  {
    if (v19)
    {
      sub_10000905C(0, &qword_1006B6BD8);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v21 & 0xC000000000000001) == 0)
      {
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v22 = *(v21 + 32);
LABEL_62:
          v39 = v22;
LABEL_63:
          v38 = v39;
          goto LABEL_64;
        }

        goto LABEL_72;
      }

LABEL_69:
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_63;
    }

LABEL_65:

    v17 = 0;
    goto LABEL_66;
  }

  if (!v19)
  {
    goto LABEL_65;
  }

  sub_10000905C(0, &qword_1006B6BD8);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v16 + v13;
  if ((v29 & 0xC000000000000001) != 0)
  {
    goto LABEL_69;
  }

  if (v30 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_61:
    v22 = *(v29 + 8 * v30 + 32);
    goto LABEL_62;
  }

LABEL_73:
  __break(1u);
}

void sub_100224024()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for FMLegacyTabBar();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  v23 = &type metadata for SolariumFeatureFlag;
  v24 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v22);
  if ((v1 & 1) == 0)
  {
    v2 = [v0 superview];
    if (v2 && (v3 = v2, v4 = [v2 traitCollection], v3, v5 = objc_msgSend(v4, "horizontalSizeClass"), v4, v5 == 2))
    {
      [v0 bounds];
      v7 = v6;
      [v0 bounds];
      v9 = v8 + -1.0;
      [v0 bounds];
      v11 = v10;
      [v0 bounds];
      v13 = v12 + 2.0;
      v14 = [objc_opt_self() bezierPathWithRoundedRect:12 byRoundingCorners:v7 cornerRadii:{v9, v11, v12 + 2.0, 12.0, 12.0}];
      v15 = [objc_allocWithZone(CAShapeLayer) init];
      [v15 setFrame:{v7, v9, v11, v13}];
      v16 = [v14 CGPath];
      [v15 setPath:v16];

      v17 = [v0 layer];
      [v17 setMask:v15];
    }

    else
    {
      v15 = [v0 layer];
      [v15 setMask:0];
    }

    v18 = [v0 traitCollection];
    v19 = [v18 userInterfaceStyle];

    if (v19 == 2)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0;
    }

    v21 = [objc_allocWithZone(UIColor) initWithWhite:v20 alpha:0.7];
    [v0 setBackgroundColor:v21];
  }
}

void *sub_10022433C()
{
  v14 = [v0 hitTest:0 withEvent:?];
  if (v14)
  {
    v1 = [v0 items];
    if (v1)
    {
      v2 = v1;
      sub_10000905C(0, &qword_1006B6BD8);
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v3 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v5 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          v9 = [v6 view];
          if (v9)
          {
            v10 = v9;
            sub_10000905C(0, &qword_1006BA410);
            v11 = v14;
            v12 = static NSObject.== infix(_:_:)();

            if (v12)
            {

              return v7;
            }
          }

          ++v5;
          if (v8 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

id sub_100224624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLegacyTabBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100224748(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_contentDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100224834(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMSelectedSection();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  sub_100062074(a1, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v14 = v19;
  *(v13 + 16) = v19;
  sub_10005B574(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_1002258E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062FFD0;
  v15 = _Block_copy(aBlock);
  v16 = v14;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_100224B9C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFPreferences();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = v19;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_100224F2C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062FE90;
  v16 = _Block_copy(aBlock);
  v17 = v15;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v4, v2);
  return (*(v20 + 8))(v7, v21);
}

uint64_t sub_100224F80(uint64_t a1)
{
  v40 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPConfigValue();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  (*(v5 + 16))(v10, v40, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v1;
    v16 = v15;
    aBlock = v15;
    *v14 = 136315138;
    v17 = FMIPConfigValue.rawValue.getter();
    v32 = v8;
    v19 = v18;
    v20 = *(v5 + 8);
    v20(v10, v4);
    v21 = sub_100005B4C(v17, v19, &aBlock);
    v8 = v32;

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMLegacyTabBar: didReceive serverConfiguration %s", v14, 0xCu);
    sub_100006060(v16);
    v1 = v33;
  }

  else
  {

    v20 = *(v5 + 8);
    v20(v10, v4);
  }

  (*(v5 + 104))(v8, enum case for FMIPConfigValue.itemsTabEnabled(_:), v4);
  sub_10000A108(&unk_1006B6BC0, &type metadata accessor for FMIPConfigValue);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v47 && v42 == v48)
  {
    v20(v8, v4);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20(v8, v4);

    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v34;
  v45 = sub_1002258BC;
  v46 = v25;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100004AE4;
  v44 = &unk_10062FF80;
  v27 = _Block_copy(&aBlock);
  v28 = v26;

  v29 = v35;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v30 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v39 + 8))(v30, v1);
  return (*(v36 + 8))(v29, v38);
}

uint64_t sub_100225590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_100225854()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022590C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_10022598C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006AF750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002259FC()
{
  *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_contentDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesSubscription) = 0;
  v1 = (v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_selectionSubscription);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab;
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v41._object = 0x8000000100587640;
  v5._countAndFlagsBits = 0x545F454C504F4550;
  v41._countAndFlagsBits = 0xD00000000000001CLL;
  v5._object = 0xEA00000000004241;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v41);

  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 _systemImageNamed:v7];

  v10 = objc_allocWithZone(UITabBarItem);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithTitle:v11 image:v9 selectedImage:0];

  *(v0 + v2) = v12;
  v13 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab;
  v14 = [v3 mainBundle];
  v42._object = 0x8000000100587660;
  v15._countAndFlagsBits = 0x5F53454349564544;
  v15._object = 0xEB00000000424154;
  v42._countAndFlagsBits = 0xD00000000000001DLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v42);

  v17 = String._bridgeToObjectiveC()();
  v18 = [v8 _systemImageNamed:v17];

  v19 = objc_allocWithZone(UITabBarItem);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithTitle:v20 image:v18 selectedImage:0];

  *(v0 + v13) = v21;
  v22 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab;
  v23 = [v3 mainBundle];
  v43._object = 0x80000001005876A0;
  v24._countAndFlagsBits = 0x4241545F454DLL;
  v24._object = 0xE600000000000000;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v43);

  v26 = String._bridgeToObjectiveC()();
  v27 = [v8 _systemImageNamed:v26];

  v28 = objc_allocWithZone(UITabBarItem);
  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 initWithTitle:v29 image:v27 selectedImage:0];

  *(v0 + v22) = v30;
  v31 = OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab;
  v32 = [v3 mainBundle];
  v33.value._countAndFlagsBits = 0xD000000000000013;
  v44._object = 0x8000000100579A00;
  v34._countAndFlagsBits = 0x41545F534D455449;
  v33.value._object = 0x80000001005799E0;
  v34._object = 0xE900000000000042;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v33, v32, v35, v44);

  v36 = String._bridgeToObjectiveC()();
  v37 = [v8 _systemImageNamed:v36];

  v38 = objc_allocWithZone(UITabBarItem);
  v39 = String._bridgeToObjectiveC()();

  v40 = [v38 initWithTitle:v39 image:v37 selectedImage:0];

  *(v0 + v31) = v40;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar____lazy_storage___largeContentInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100225F18()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_peopleTab);
  sub_10000905C(0, &qword_1006B6BD8);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v8 = *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_devicesTab);
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v10 = *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_itemsTab);
  v11 = static NSObject.== infix(_:_:)();

  if (v11)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v12 = *(v0 + OBJC_IVAR____TtC6FindMy14FMLegacyTabBar_meTab);
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
LABEL_12:
    swift_storeEnumTagMultiPayload();
    sub_100352650(v3);
    swift_unknownObjectRelease();
    return sub_10005D4E4(v3);
  }

  return result;
}

id sub_10022616C(void *a1, void *a2, double a3)
{
  v6 = OBJC_IVAR____TtC6FindMy7FMBadge_color;
  *&v3[OBJC_IVAR____TtC6FindMy7FMBadge_color] = 0;
  v7 = OBJC_IVAR____TtC6FindMy7FMBadge_strokeColor;
  *&v3[OBJC_IVAR____TtC6FindMy7FMBadge_strokeColor] = 0;
  v8 = &v3[OBJC_IVAR____TtC6FindMy7FMBadge_insets];
  *v8 = xmmword_100558D70;
  *(v8 + 1) = xmmword_100558D70;
  *&v3[v6] = a1;
  *&v3[OBJC_IVAR____TtC6FindMy7FMBadge_lineWidth] = a3;
  *&v3[v7] = a2;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for FMBadge();
  v9 = a1;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  [v13 setTextAlignment:1];
  return v13;
}

double sub_1002263BC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FMBadge();
  objc_msgSendSuper2(&v4, "intrinsicContentSize");
  if ((result != 0.0 || v2 != 0.0) && result != UIViewNoIntrinsicMetric && v2 != UIViewNoIntrinsicMetric)
  {
    return result + *&v0[OBJC_IVAR____TtC6FindMy7FMBadge_insets + 8] + *&v0[OBJC_IVAR____TtC6FindMy7FMBadge_insets + 24];
  }

  return result;
}

id sub_10022646C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBadge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100226510()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() bezierPathWithRoundedRect:v1 cornerRadius:{v3, v5, v7, v7 * 0.5}];
  [v9 setLineWidth:*&v0[OBJC_IVAR____TtC6FindMy7FMBadge_lineWidth]];
  [v9 setLineCapStyle:1];
  [*&v0[OBJC_IVAR____TtC6FindMy7FMBadge_color] set];
  [*&v0[OBJC_IVAR____TtC6FindMy7FMBadge_strokeColor] setStroke];
  [v9 fill];
  [v9 stroke];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FMBadge();
  objc_msgSendSuper2(&v10, "drawRect:", v2, v4, v6, v8);
}

void sub_10022667C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDeviceState();
  v102 = *(v2 - 8);
  v103 = v2;
  v3 = __chkstk_darwin(v2);
  v101 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v100 = &v97 - v5;
  v6 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v6 - 8);
  v105 = &v97 - v7;
  v8 = sub_10007EBC0(&qword_1006B3B08);
  v107 = *(v8 - 8);
  v108 = v8;
  __chkstk_darwin(v8);
  v106 = &v97 - v9;
  v109 = type metadata accessor for FMIPDevice();
  v10 = *(v109 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v109);
  v104 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMContactDetailsWelcomeScreenViewController();
  v112.receiver = v0;
  v112.super_class = v12;
  objc_msgSendSuper2(&v112, "viewDidLoad");
  v13 = [v0 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 secondarySystemBackgroundColor];
  [v14 setBackgroundColor:v16];

  v17 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView;
  v18 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView];
  v19 = [v15 secondarySystemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView;
  v21 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView];
  v98 = v15;
  v22 = [v15 secondarySystemBackgroundColor];
  [v21 setBackgroundColor:v22];

  v99 = v17;
  [*&v1[v17] setPreservesSuperviewLayoutMargins:1];
  [*&v1[v17] setContentInsetAdjustmentBehavior:3];
  [*&v1[v20] setPreservesSuperviewLayoutMargins:1];
  [*&v1[v20] setAxis:1];
  v23 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_device;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v10 + 16);
  v97 = v23;
  v26 = &v1[v23];
  v27 = v104;
  v28 = v109;
  v25(v104, v26, v109);
  v29 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v30 = v29 + v11;
  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  (*(v10 + 32))(v31 + v29, v27, v28);
  *(v31 + v30) = 1;
  sub_10007EBC0(&unk_1006B3B20);
  swift_allocObject();

  v111 = Future.init(_:)();
  sub_100004098(&qword_1006C39C0, &unk_1006B3B20);
  v32 = Publisher.eraseToAnyPublisher()();

  v104 = v32;
  v111 = v32;
  v33 = [objc_opt_self() mainRunLoop];
  v110 = v33;
  v34 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v35 = v105;
  (*(*(v34 - 8) + 56))(v105, 1, 1, v34);
  sub_10007EBC0(&unk_1006B4D90);
  sub_10000905C(0, &qword_1006B2918);
  v36 = v99;
  sub_100004098(&qword_1006B7800, &unk_1006B4D90);
  sub_100110658();
  v37 = v106;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v35, &qword_1006B64E0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004098(&qword_1006B3B18, &qword_1006B3B08);
  v38 = v108;
  v39 = Publisher.sink(receiveCompletion:receiveValue:)();

  (v107)[1](v37, v38);
  *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_productImageCancellable] = v39;

  v40 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView;
  [*&v1[v20] addArrangedSubview:*&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView]];
  v41 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel];
  [*&v1[v20] addArrangedSubview:v41];
  v42 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel];
  [*&v1[v20] addArrangedSubview:v42];
  v43 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitchSection];
  v44 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch];
  [*(v43 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:v44];
  [*&v1[v20] addArrangedSubview:v43];
  v45 = *&v1[v20];
  v107 = *&v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel];
  [v45 addArrangedSubview:?];
  [*&v1[v36] addSubview:*&v1[v20]];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v47 = v46;
  [v46 addSubview:*&v1[v36]];

  v48 = [v1 navigationItem];
  v109 = objc_opt_self();
  v49 = [v109 mainBundle];
  v108 = 0x8000000100587910;
  v113._object = 0x8000000100587910;
  v50._countAndFlagsBits = 0xD000000000000024;
  v50._object = 0x80000001005879D0;
  v51.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v51.value._object = 0xEC00000031656C62;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v113._countAndFlagsBits = 0xD000000000000017;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v113);

  v53 = String._bridgeToObjectiveC()();

  [v48 setTitle:v53];

  [*&v1[v40] setContentMode:4];
  [v41 setNumberOfLines:0];
  v54 = objc_opt_self();
  v55 = [v54 preferredFontForTextStyle:UIFontTextStyleHeadline];
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightSemibold;
  v57 = UIFontWeightTrait;
  v58 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0);
  v59 = sub_10002ACDC(v58);

  v60 = sub_100039388(0x8000);

  [v41 setFont:v60];
  v61 = v98;
  v62 = [v98 labelColor];
  [v41 setTextColor:v62];

  [v41 setTextAlignment:1];
  [v42 setNumberOfLines:0];
  v63 = [v54 preferredFontForTextStyle:UIFontTextStyleBody];
  v64 = sub_100039388(0x8000);

  [v42 setFont:v64];
  v65 = [v61 secondaryLabelColor];
  [v42 setTextColor:v65];

  [v42 setTextAlignment:1];
  v66 = v100;
  FMIPDevice.state.getter();
  v67 = v101;
  static FMIPDeviceState.isDeviceWithYou.getter();
  sub_100228CD8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  v68 = v103;
  v69 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v70 = *(v102 + 8);
  v70(v67, v68);
  v70(v66, v68);
  if (v69)
  {
    v71 = [v109 mainBundle];
    v114._object = v108;
    v72._countAndFlagsBits = 0xD00000000000002ALL;
    v72._object = 0x80000001005879A0;
    v73.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v73.value._object = 0xEC00000031656C62;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    v114._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v72, v73, v71, v74, v114);
  }

  else
  {
    sub_10022EDD4(0xD000000000000033, 0x8000000100587960);
  }

  v75 = String._bridgeToObjectiveC()();

  v76 = v107;
  [v107 setText:v75];

  [v76 setNumberOfLines:0];
  v77 = [v54 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v76 setFont:v77];

  v78 = [v61 secondaryLabelColor];
  [v76 setTextColor:v78];

  [v76 setLineBreakMode:0];
  [v76 sizeToFit];
  sub_1002279FC();
  v79 = [v109 mainBundle];
  v115._object = v108;
  v80._countAndFlagsBits = 0xD000000000000025;
  v80._object = 0x8000000100587A00;
  v81.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v81.value._object = 0xEC00000031656C62;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v115._countAndFlagsBits = 0xD000000000000017;
  v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v79, v82, v115);

  *&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v83;

  v84 = *&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v85 = v84;
  v86 = String._bridgeToObjectiveC()();

  [v85 setText:v86];

  *&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_100630000;
  swift_unknownObjectWeakAssign();
  v87 = String._bridgeToObjectiveC()();
  [v44 setAccessibilityIdentifier:v87];

  v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = 0;
  [*&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:1];
  v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = v1[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState];
  [*&v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:?];
  v44[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled] = v69 & 1;
  sub_10014B454();
  v88 = objc_allocWithZone(UIBarButtonItem);
  v89 = v1;
  v90 = [v88 initWithBarButtonSystemItem:1 target:v89 action:"cancelActionWithSender:"];
  v91 = [v89 navigationItem];
  [v91 setLeftBarButtonItem:v90];

  v92 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v89 action:"doneAction"];
  v93 = [v89 navigationItem];
  sub_10007EBC0(&qword_1006AFC30);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1005528C0;
  *(v94 + 32) = v92;
  sub_10000905C(0, &qword_1006B0160);
  v95 = v92;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v93 setRightBarButtonItems:isa animated:0];
}

void sub_1002276D0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView) setImage:v1];
  }
}

id sub_10022778C(char a1, char a2)
{
  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMContactDetailsWelcomeScreenViewController : update called", v9, 2u);
  }

  *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_originalShowContactDetailsState) = a2 & 1;
  if (a1)
  {
    v10 = *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel);
    v11 = [objc_opt_self() mainBundle];
    v18._object = 0x8000000100587910;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEC00000031656C62;
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x80000001005879A0;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000017;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v18);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState) = a2 & 1;
    v15 = *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch);
    *(v15 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = a2 & 1;
    [*(v15 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:?];
    v10 = *(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel);
    sub_10022EDD4(0xD000000000000033, 0x8000000100587960);
  }

  v16 = String._bridgeToObjectiveC()();

  [v10 setText:v16];

  *(*(v3 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch) + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = a1 & 1;
  return sub_10014B454();
}

void sub_1002279FC()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100555120;
  v74 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView];
  *(inited + 32) = v2;
  v71 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitchSection];
  *(inited + 72) = v7;
  v72 = v0;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel];
  *(inited + 80) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  v17 = v72;
  v18 = v74;
  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v19 = v10;
  while (1)
  {
    [v19 setTranslatesAutoresizingMaskIntoConstraints:{0, v71}];

    if (v9)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_27;
      }

      v20 = *(inited + 40);
    }

    v21 = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_27;
      }

      v22 = *(inited + 48);
    }

    v23 = v22;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_27;
      }

      v24 = *(inited + 56);
    }

    v25 = v24;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_27;
      }

      v26 = *(inited + 64);
    }

    v27 = v26;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_27;
      }

      v28 = *(inited + 72);
    }

    v29 = v28;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v30 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v17 = v72;
    v18 = v74;
  }

  v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v31 = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1005521F0;
  v33 = [*&v17[v18] topAnchor];
  v34 = [v17 view];
  if (!v34)
  {
    __break(1u);
    goto LABEL_36;
  }

  v35 = v34;
  v36 = [v34 safeAreaLayoutGuide];

  v37 = [v36 topAnchor];
  v38 = [v33 constraintEqualToAnchor:v37];

  *(v32 + 32) = v38;
  v39 = [*&v17[v18] bottomAnchor];
  v40 = [v17 view];
  if (!v40)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v41 = v40;
  v42 = [v40 bottomAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v32 + 40) = v43;
  v44 = [*&v17[v18] leadingAnchor];
  v45 = [v17 view];
  if (!v45)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = v45;
  v47 = [v45 leadingAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  *(v32 + 48) = v48;
  v49 = [*&v17[v18] trailingAnchor];
  v50 = [v17 view];
  if (v50)
  {
    v51 = v50;
    v73 = objc_opt_self();
    v52 = [v51 trailingAnchor];

    v53 = [v49 constraintEqualToAnchor:v52];
    *(v32 + 56) = v53;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints:isa];

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1005521F0;
    v56 = [*&v17[v71] topAnchor];
    v57 = [*&v17[v18] topAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v55 + 32) = v58;
    v59 = [*&v17[v71] bottomAnchor];
    v60 = [*&v17[v18] bottomAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v55 + 40) = v61;
    v62 = [*&v17[v71] leadingAnchor];
    v63 = [*&v17[v18] layoutMarginsGuide];
    v64 = [v63 leadingAnchor];

    v65 = [v62 constraintEqualToAnchor:v64];
    *(v55 + 48) = v65;
    v66 = [*&v17[v71] trailingAnchor];
    v67 = [*&v17[v18] layoutMarginsGuide];
    v68 = [v67 trailingAnchor];

    v69 = [v66 constraintEqualToAnchor:v68];
    *(v55 + 56) = v69;
    v70 = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints:v70];

    return;
  }

LABEL_38:
  __break(1u);
}

id sub_100228190()
{
  v1 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState;
  if (v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState] == v0[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_originalShowContactDetailsState])
  {

    return [v0 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_100437A74(0);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = v0[v1];
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = v0;
      sub_10020850C(v3, sub_100228CC8, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10022829C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMIPActionStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003EB538(0);
  v8 = *(v5 + 104);
  v8(v7, enum case for FMIPActionStatus.success(_:), v4);
  sub_100228CD8(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v44 == v43)
  {
    [a2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v39 = v9;
    v42 = a2;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = v8;
    v41 = a1;
    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMContactDetailsWelcomeScreenViewController: Error occurred", v13, 2u);
    }

    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v45._object = 0x800000010057FF90;
    v16._countAndFlagsBits = 0xD000000000000019;
    v16._object = 0x800000010057FF70;
    v45._countAndFlagsBits = 0xD00000000000002BLL;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v38[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v45)._countAndFlagsBits;

    v18 = [v14 mainBundle];
    v46._object = 0x800000010057FFE0;
    v19._countAndFlagsBits = 0xD000000000000018;
    v19._object = 0x800000010057FFC0;
    v46._countAndFlagsBits = 0xD00000000000002ALL;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v46);

    v40(v7, enum case for FMIPActionStatus.error(_:), v4);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v39(v7, v4);
    if (v44 == v43)
    {

      v21 = [v14 mainBundle];
      v47._object = 0x8000000100587910;
      v22._countAndFlagsBits = 0xD00000000000002BLL;
      v22._object = 0x80000001005878E0;
      v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v23.value._object = 0xEC00000031656C62;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v47._countAndFlagsBits = 0xD000000000000017;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v47);

      v25 = [v14 mainBundle];
      v48._object = 0x8000000100587910;
      v26._countAndFlagsBits = 0xD00000000000002DLL;
      v26._object = 0x8000000100587930;
      v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v27.value._object = 0xEC00000031656C62;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      v48._countAndFlagsBits = 0xD000000000000017;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v48);

      v29 = &selRef__enter3DMode;
    }

    else
    {
      v29 = &selRef__enter3DMode;
    }

    v30 = String._bridgeToObjectiveC()();

    v31 = String._bridgeToObjectiveC()();

    v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

    v33 = [v14 v29[272]];
    v49._object = 0x8000000100579B60;
    v34._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v34._object = 0xEF454C5449545F4ELL;
    v49._countAndFlagsBits = 0xD000000000000021;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v49);

    v36 = String._bridgeToObjectiveC()();

    v37 = [objc_opt_self() actionWithTitle:v36 style:1 handler:0];

    [v32 addAction:v37];
    [v42 presentViewController:v32 animated:1 completion:0];
  }
}

uint64_t sub_10022894C()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_delegate);

  v1 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_device;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100228A54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMContactDetailsWelcomeScreenViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMContactDetailsWelcomeScreenViewController()
{
  result = qword_1006B6CD8;
  if (!qword_1006B6CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100228BEC()
{
  result = type metadata accessor for FMIPDevice();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100228CD8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100228D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v37 = a4;
  v35 = a1;
  v7 = type metadata accessor for FMIPDeviceState();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView;
  *&v5[v14] = [objc_allocWithZone(UIScrollView) init];
  v15 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView;
  *&v5[v15] = [objc_allocWithZone(UIStackView) init];
  *&v5[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView;
  *&v5[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel;
  *&v5[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel;
  *&v5[v18] = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel;
  *&v5[v19] = [objc_allocWithZone(UILabel) init];
  v20 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitchSection;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v21 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch;
  *&v5[v21] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  *&v5[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_productImageCancellable] = 0;
  v22 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_device;
  v23 = type metadata accessor for FMIPDevice();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v5[v22], a2, v23);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isShowContactDetailsEnabled.getter();
  sub_100228CD8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
  LOBYTE(v22) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = *(v8 + 8);
  v25(v11, v7);
  v25(v13, v7);
  v5[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_originalShowContactDetailsState] = v22 & 1;
  v5[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsState] = v22 & 1;
  *&v5[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v35;
  v26 = type metadata accessor for FMMediatedViewController();
  v38.receiver = v5;
  v38.super_class = v26;

  v27 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  v28 = a2;
  FMIPDevice.name.getter();
  v29 = *&v27[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel];
  v30 = String._bridgeToObjectiveC()();

  [v29 setText:v30];

  sub_100123238(v36);

  v31 = *&v27[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel];
  v32 = String._bridgeToObjectiveC()();

  [v31 setText:v32];

  sub_1002279FC();
  (*(v24 + 8))(v28, v23);
  return v27;
}

void sub_100229140()
{
  v1 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_scrollView;
  *(v0 + v1) = [objc_allocWithZone(UIScrollView) init];
  v2 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_contentStackView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_deviceNameLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_phoneNumberLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_subtitleLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitchSection;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v8 = OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_showContactDetailsSwitch;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  *(v0 + OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_productImageCancellable) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1002292C4(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v74 = a6;
  LODWORD(v75) = a4;
  v76 = a3;
  v72 = a2;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&qword_1006B6D60);
  __chkstk_darwin(v13 - 8);
  v15 = v65 - v14;
  v16 = &v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_delegate];
  *&v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_buttonArea;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
  *&v7[v18] = [objc_allocWithZone(UIButton) init];
  v19 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView;
  *&v7[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel;
  *&v7[v20] = [objc_allocWithZone(UILabel) init];
  v21 = &v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeValue];
  *v21 = 0;
  v21[1] = 0;
  v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected] = 0;
  *(v16 + 1) = v74;
  v74 = a5;
  swift_unknownObjectWeakAssign();
  v22 = v76;
  v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_itemType] = v75;
  if (v22)
  {
    [v22 size];
  }

  else
  {
    v23 = 25.0;
    v24 = 25.0;
  }

  v25 = &v7[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_imageSize];
  *v25 = v23;
  v25[1] = v24;
  v26 = type metadata accessor for FMEmbeddedTabBarItem();
  v78.receiver = v7;
  v78.super_class = v26;
  v27 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
  v29 = *&v27[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button];
  v70 = v27;
  v30 = v29;
  static UIButton.Configuration.plain()();
  (*(v10 + 104))(v12, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v9);
  UIButton.Configuration.cornerStyle.setter();
  v31 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v31(v77, 0);
  v32 = objc_opt_self();
  v33 = [v32 clearColor];
  v34 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v34(v77, 0);
  UIButton.Configuration.imagePlacement.setter();
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  UIButton.Configuration.imagePadding.setter();
  v35 = [v32 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v36 = type metadata accessor for UIButton.Configuration();
  (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
  UIButton.configuration.setter();

  [*&v27[v28] setImage:v76 forState:0];
  v37 = *&v27[v28];
  v68 = sub_10007EBC0(&qword_1006B0C40);
  inited = swift_initStackObject();
  v75 = xmmword_100552220;
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = NSFontAttributeName;
  v39 = objc_opt_self();
  v67 = v39;
  v66 = NSFontAttributeName;
  v40 = v37;
  v41 = [v39 systemFontOfSize:10.0 weight:UIFontWeightRegular];
  v69 = v32;
  v42 = v41;
  v43 = sub_10000905C(0, &qword_1006B4DD0);
  *(inited + 64) = v43;
  *(inited + 40) = v42;
  sub_10001AC8C(inited);
  swift_setDeallocating();
  sub_1000D6084(inited + 32);
  v44 = objc_allocWithZone(NSAttributedString);
  v45 = v27;
  v46 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  v65[2] = v47;
  v65[1] = sub_1000D60EC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v49 = [v44 initWithString:v46 attributes:isa];

  [v40 setAttributedTitle:v49 forState:0];
  v50 = *&v45[v28];
  v51 = swift_initStackObject();
  *(v51 + 16) = v75;
  *(v51 + 32) = v66;
  v52 = v50;
  v53 = [v67 systemFontOfSize:10.0 weight:UIFontWeightBold];
  *(v51 + 64) = v43;
  *(v51 + 40) = v53;
  sub_10001AC8C(v51);
  swift_setDeallocating();
  sub_1000D6084(v51 + 32);
  v54 = objc_allocWithZone(NSAttributedString);
  v55 = String._bridgeToObjectiveC()();

  v56 = Dictionary._bridgeToObjectiveC()().super.isa;

  v57 = [v54 initWithString:v55 attributes:v56];

  [v52 setAttributedTitle:v57 forState:4];
  [*&v45[v28] setSelected:0];
  v58 = *&v45[v28];
  v59 = v70;
  [v58 addTarget:v70 action:"onButtonTapped" forControlEvents:64];

  v60 = *&v45[v28];
  if (v59[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected])
  {
    v61 = &selRef_systemBlueColor;
  }

  else
  {
    v61 = &selRef_labelColor;
  }

  v62 = [v69 *v61];
  [v60 setTintColor:v62];

  sub_10007EBC0(&qword_1006B6D68);
  v63 = swift_allocObject();
  *(v63 + 16) = v75;
  *(v63 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v63 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_100229B6C();
  sub_100229D80();

  swift_unknownObjectRelease();
  return v59;
}

id sub_100229B6C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_buttonArea];
  [v0 addSubview:v1];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button]];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView];
  v3 = objc_opt_self();
  v4 = [v3 systemRedColor];
  [v2 setBackgroundColor:v4];

  [v2 setHidden:1];
  [v2 setUserInteractionEnabled:0];
  v5 = [v2 layer];
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  [v5 setCornerRadius:*(&xmmword_1006D43A0 + 1) * 0.5];

  [v0 addSubview:v2];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel];
  v7 = [v3 whiteColor];
  [v6 setTextColor:v7];

  [v6 setTextAlignment:1];
  v8 = [objc_opt_self() systemFontOfSize:13.0 weight:UIFontWeightRegular];
  [v6 setFont:v8];

  return [v2 addSubview:v6];
}

void sub_100229D80()
{
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_1006D43A0 + 1);
  v2 = unk_1006D43B0;
  v3 = *&qword_1006D43B8;
  v4 = *(&xmmword_1006D43E0 + 1);
  v5 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_buttonArea];
  v64 = qword_1006D4398;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = [v5 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v5 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v5 topAnchor];
  v14 = [v0 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v5 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:isa];

  v20 = [v5 widthAnchor];
  v21 = [v20 constraintEqualToConstant:v4];

  [v21 setActive:1];
  v22 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1005521F0;
  v24 = [v22 topAnchor];
  v25 = [v5 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v23 + 32) = v26;
  v27 = [v22 bottomAnchor];
  v28 = [v5 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v23 + 40) = v29;
  v30 = [v22 centerXAnchor];
  v31 = [v5 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v23 + 48) = v32;
  v33 = [v22 centerYAnchor];
  v34 = [v5 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v23 + 56) = v35;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:v36];

  v37 = [v22 widthAnchor];
  v38 = [v37 constraintGreaterThanOrEqualToConstant:v4];

  [v38 setActive:1];
  v39 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = *&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100552200;
  v42 = [v39 leadingAnchor];
  v43 = [v0 centerXAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:*&v0[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_imageSize] * 0.5 - v3];

  *(v41 + 32) = v44;
  v45 = [v39 bottomAnchor];
  v46 = [v0 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-v2];

  *(v41 + 40) = v47;
  v48 = [v39 widthAnchor];
  v49 = [v48 constraintGreaterThanOrEqualToConstant:v1];

  *(v41 + 48) = v49;
  v50 = [v39 heightAnchor];
  v51 = [v50 constraintEqualToConstant:v1];

  *(v41 + 56) = v51;
  v52 = [v40 leadingAnchor];
  v53 = [v39 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:4.0];

  *(v41 + 64) = v54;
  v55 = [v40 trailingAnchor];
  v56 = [v39 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-4.0];

  *(v41 + 72) = v57;
  v58 = [v40 topAnchor];
  v59 = [v39 topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:1.0];

  *(v41 + 80) = v60;
  v61 = [v40 bottomAnchor];
  v62 = [v39 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:-1.0];

  *(v41 + 88) = v63;
  v66 = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:v66];
}

id sub_10022A658(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeValue);
  *v4 = a1;
  v4[1] = a2;

  v5 = *(v2 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel);
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText:v6];

  v7 = *(v2 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView);
  v8 = v4[1] == 0;

  return [v7 setHidden:v8];
}

id sub_10022A7F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEmbeddedTabBarItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10022A8F4()
{
  result = qword_1006B6D58;
  if (!qword_1006B6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6D58);
  }

  return result;
}

void sub_10022A94C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected);
  v2 = *(a1 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button);
  v3 = objc_opt_self();
  v4 = &selRef_systemBlueColor;
  if (!v1)
  {
    v4 = &selRef_labelColor;
  }

  v5 = [v3 *v4];
  [v2 setTintColor:v5];
}

void sub_10022A9E8()
{
  *(v0 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_buttonArea;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
  *(v0 + v2) = [objc_allocWithZone(UIButton) init];
  v3 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeIndicatorLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = (v0 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_badgeValue);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10022AB00()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  v9(v4, v0);
  v12 = v8 - v11;
  if (v8 - v11 < 0.0 || v12 > 30.0)
  {
    v14 = 60.0;
    if (v12 < 30.0 || v12 > 60.0)
    {
      v14 = 3600.0;
      if (v12 >= 60.0 && v12 <= 3600.0)
      {
        v14 = 60.0;
      }
    }

    fmod(v12, v14);
  }
}

void sub_10022AC8C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMItemCellViewModel();
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022ADE0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMDeviceCellViewModel();
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022AF34()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMDeviceDetailViewModel();
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022B088()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMPersonDetailViewModel(0);
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022B1DC(void (*a1)(void))
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  a1(0);
  Date.timeIntervalSince1970.getter();
  v9 = v7 - v8;
  if (v9 < 0.0 || v9 > 30.0)
  {
    v11 = 60.0;
    if (v9 < 30.0 || v9 > 60.0)
    {
      v11 = 3600.0;
      if (v9 >= 60.0 && v9 <= 3600.0)
      {
        v11 = 60.0;
      }
    }

    fmod(v9, v11);
  }
}

void sub_10022B340()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for FMAllowLocationAlertCellViewModel();
  Date.timeIntervalSince1970.getter();
  v7 = v5 - v6;
  if (v7 < 0.0 || v7 > 30.0)
  {
    v9 = 60.0;
    if (v7 < 30.0 || v7 > 60.0)
    {
      v9 = 3600.0;
      if (v7 >= 60.0 && v7 <= 3600.0)
      {
        v9 = 60.0;
      }
    }

    fmod(v7, v9);
  }
}

void sub_10022B494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v10, v4);
  (*(a2 + 8))(a1, a2);
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  v13(v8, v4);
  v16 = v12 - v15;
  if (v12 - v15 < 0.0 || v16 > 30.0)
  {
    v18 = 60.0;
    if (v16 < 30.0 || v16 > 60.0)
    {
      v18 = 3600.0;
      if (v16 >= 60.0 && v16 <= 3600.0)
      {
        v18 = 60.0;
      }
    }

    fmod(v16, v18);
  }
}

void sub_10022B6AC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "FMItemAger: refresh timer fired %@", v11, 0xCu);
      sub_10022CA58(v12);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      sub_10007EBC0(&unk_1006B40B0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100552220;
      sub_100037840(a3, v16 + 32);
      (*(v14 + 8))(v6, v16, ObjectType, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMItemAger: refresh timer cannot be fired because self has been deallocated", v20, 2u);
    }
  }
}

uint64_t sub_10022B968()
{
  sub_10005CD20(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10022B9F0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v123 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v123);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v121 = &v109 - v13;
  v14 = *(a3 + 8);
  v114 = a3;
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_133;
    }

    a4 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_127:
      result = sub_10025EFD4(a4);
    }

    v130 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      a4 = 40;
      while (1)
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v106 = *(result + 16 * v104);
        v107 = result;
        a3 = *(result + 16 * (v104 - 1) + 40);
        sub_10022C394((v105 + 40 * v106), (v105 + 40 * *(result + 16 * (v104 - 1) + 32)), (v105 + 40 * a3), v5);
        if (v6)
        {
        }

        if (a3 < v106)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_10025EFD4(v107);
        }

        if (v104 - 2 >= *(v107 + 2))
        {
          goto LABEL_121;
        }

        v108 = &v107[16 * v104];
        *v108 = v106;
        *(v108 + 1) = a3;
        v130 = v107;
        sub_10025EF48(v104 - 1);
        result = v130;
        v104 = *(v130 + 16);
        a3 = v114;
        if (v104 <= 1)
        {
        }
      }
    }
  }

  v15 = 0;
  v120 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  v111 = a4;
  while (1)
  {
    v113 = v16;
    if (v15 + 1 >= v14)
    {
      v36 = v15 + 1;
    }

    else
    {
      v118 = v14;
      v110 = v6;
      v17 = *a3;
      sub_100037840(*a3 + 40 * (v15 + 1), &v127);
      v5 = 40 * v15;
      v18 = v17 + 40 * v15;
      sub_100037840(v18, v124);
      v19 = v128;
      v20 = v129;
      sub_1000244BC(&v127, v128);
      v21 = v121;
      (*(v20 + 8))(v19, v20);
      v23 = v125;
      v22 = v126;
      sub_1000244BC(v124, v125);
      v24 = v122;
      (*(v22 + 8))(v23, v22);
      LODWORD(v119) = static Date.< infix(_:_:)();
      v25 = v15;
      v26 = *v120;
      a4 = v123;
      (*v120)(v24, v123);
      v26(v21, a4);
      sub_100006060(v124);
      result = sub_100006060(&v127);
      v109 = v25;
      v27 = v25 + 2;
      v28 = v18 + 80;
      while (v118 != v27)
      {
        sub_100037840(v28, &v127);
        sub_100037840(v28 - 40, v124);
        v30 = v128;
        v29 = v129;
        sub_1000244BC(&v127, v128);
        v31 = v121;
        (*(v29 + 8))(v30, v29);
        v32 = v125;
        v33 = v126;
        sub_1000244BC(v124, v125);
        v34 = v122;
        (*(v33 + 8))(v32, v33);
        a4 = static Date.< infix(_:_:)() & 1;
        v35 = v123;
        v26(v34, v123);
        v26(v31, v35);
        sub_100006060(v124);
        result = sub_100006060(&v127);
        ++v27;
        v28 += 40;
        if ((v119 & 1) != a4)
        {
          v36 = v27 - 1;
          goto LABEL_11;
        }
      }

      v36 = v118;
      v6 = v110;
      a3 = v114;
      v15 = v109;
      if ((v119 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v36 < v109)
      {
        goto LABEL_124;
      }

      if (v109 < v36)
      {
        v37 = 40 * v36 - 40;
        v118 = v36;
        v38 = v36;
        v39 = v109;
        do
        {
          if (v39 != --v38)
          {
            v44 = *v114;
            if (!*v114)
            {
              goto LABEL_130;
            }

            v40 = v44 + v5;
            v41 = v44 + v37;
            sub_100006A54((v44 + v5), &v127);
            v42 = *(v41 + 32);
            v43 = *(v41 + 16);
            *v40 = *v41;
            *(v40 + 16) = v43;
            *(v40 + 32) = v42;
            result = sub_100006A54(&v127, v41);
          }

          ++v39;
          v37 -= 40;
          v5 += 40;
        }

        while (v39 < v38);
        a3 = v114;
        a4 = v111;
        v36 = v118;
      }

      else
      {
LABEL_20:
        a4 = v111;
      }
    }

    v45 = *(a3 + 8);
    if (v36 < v45)
    {
      if (__OFSUB__(v36, v15))
      {
        goto LABEL_123;
      }

      if (v36 - v15 < a4)
      {
        if (__OFADD__(v15, a4))
        {
          goto LABEL_125;
        }

        if ((v15 + a4) >= v45)
        {
          v46 = *(a3 + 8);
        }

        else
        {
          v46 = v15 + a4;
        }

        if (v46 < v15)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v36 != v46)
        {
          break;
        }
      }
    }

    v47 = v36;
    if (v36 < v15)
    {
      goto LABEL_122;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v113;
    }

    else
    {
      result = sub_10008B8B8(0, *(v113 + 2) + 1, 1, v113);
      v16 = result;
    }

    a4 = *(v16 + 2);
    v48 = *(v16 + 3);
    v49 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_10008B8B8((v48 > 1), a4 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v49;
    v50 = &v16[16 * a4];
    *(v50 + 4) = v15;
    *(v50 + 5) = v47;
    v51 = *v112;
    if (!*v112)
    {
      goto LABEL_132;
    }

    v115 = v47;
    if (a4)
    {
      while (1)
      {
        v5 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v52 = *(v16 + 4);
          v53 = *(v16 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_51:
          if (v55)
          {
            goto LABEL_111;
          }

          v68 = &v16[16 * v49];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_114;
          }

          v74 = &v16[16 * v5 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_118;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v5 = v49 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v78 = &v16[16 * v49];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_65:
        if (v73)
        {
          goto LABEL_113;
        }

        v81 = &v16[16 * v5];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_116;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v49)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v89 = v16;
        v90 = *&v16[16 * a4 + 32];
        v91 = *&v16[16 * v5 + 40];
        sub_10022C394((*a3 + 40 * v90), (*a3 + 40 * *&v16[16 * v5 + 32]), (*a3 + 40 * v91), v51);
        if (v6)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_10025EFD4(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v89[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v130 = v89;
        result = sub_10025EF48(v5);
        v16 = v130;
        v49 = *(v130 + 16);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v16[16 * v49 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_109;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_110;
      }

      v63 = &v16[16 * v49];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_112;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_115;
      }

      if (v67 >= v59)
      {
        v85 = &v16[16 * v5 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_119;
        }

        if (v54 < v88)
        {
          v5 = v49 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v14 = *(a3 + 8);
    v15 = v115;
    a4 = v111;
    if (v115 >= v14)
    {
      goto LABEL_93;
    }
  }

  v110 = v6;
  v119 = *a3;
  v5 = v119 + 40 * v36;
  v109 = v15;
  v93 = v15 - v36;
  v115 = v46;
LABEL_83:
  v117 = v5;
  v118 = v36;
  v116 = v93;
  while (1)
  {
    sub_100037840(v5, &v127);
    sub_100037840(v5 - 40, v124);
    v94 = v128;
    v95 = v129;
    sub_1000244BC(&v127, v128);
    v96 = v121;
    (*(v95 + 8))(v94, v95);
    v97 = v125;
    v98 = v126;
    sub_1000244BC(v124, v125);
    v99 = v122;
    (*(v98 + 8))(v97, v98);
    a4 = static Date.< infix(_:_:)();
    v100 = *v120;
    v101 = v123;
    (*v120)(v99, v123);
    v100(v96, v101);
    sub_100006060(v124);
    result = sub_100006060(&v127);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v36 = v118 + 1;
      v5 = v117 + 40;
      v47 = v115;
      v93 = v116 - 1;
      if (v118 + 1 != v115)
      {
        goto LABEL_83;
      }

      v6 = v110;
      a3 = v114;
      v15 = v109;
      if (v115 < v109)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v119)
    {
      break;
    }

    sub_100006A54(v5, &v127);
    v102 = *(v5 - 24);
    *v5 = *(v5 - 40);
    *(v5 + 16) = v102;
    *(v5 + 32) = *(v5 - 8);
    sub_100006A54(&v127, v5 - 40);
    v5 -= 40;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_10022C394(char *a1, char *a2, char *a3, char *a4)
{
  v74 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v74);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v58 - v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      v34 = v11;
      memmove(a4, a2, 40 * v14);
      v11 = v34;
    }

    v17 = &a4[40 * v14];
    v15 = a4;
    if (a3 - a2 < 40)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v35 = a2;
    if (a2 <= a1)
    {
      v33 = a2;
      goto LABEL_35;
    }

    v60 = v4;
    v61 = (v11 + 8);
    v65 = a1;
    v62 = a4;
    while (1)
    {
      v59 = v35;
      v36 = (v35 - 40);
      v37 = (v17 - 40);
      v38 = a3 - 40;
      v63 = v35 - 40;
      while (1)
      {
        v64 = v38;
        v41 = v38 + 40;
        sub_100037840(v37, v71);
        sub_100037840(v36, v68);
        v42 = v72;
        v43 = v73;
        sub_1000244BC(v71, v72);
        v44 = v66;
        (*(v43 + 8))(v42, v43);
        v45 = v69;
        v46 = v70;
        sub_1000244BC(v68, v69);
        v47 = v67;
        (*(v46 + 8))(v45, v46);
        v48 = static Date.< infix(_:_:)();
        v49 = *v61;
        v50 = v74;
        (*v61)(v47, v74);
        v49(v44, v50);
        sub_100006060(v68);
        sub_100006060(v71);
        if (v48)
        {
          break;
        }

        v15 = v62;
        v51 = v64;
        if (v41 != (v37 + 40))
        {
          v52 = *v37;
          v53 = *(v37 + 16);
          *(v64 + 32) = *(v37 + 32);
          *v51 = v52;
          v51[1] = v53;
        }

        v39 = v37 - 40;
        v38 = v51 - 40;
        v40 = v37 > v15;
        v37 -= 40;
        v36 = v63;
        if (!v40)
        {
          v17 = (v39 + 40);
          v33 = v59;
          goto LABEL_35;
        }
      }

      v17 = (v37 + 40);
      v15 = v62;
      v33 = v63;
      a3 = v64;
      if (v41 != v59)
      {
        v54 = *v63;
        v55 = *(v63 + 1);
        *(v64 + 32) = *(v63 + 4);
        *a3 = v54;
        *(a3 + 1) = v55;
      }

      if (v17 > v15)
      {
        v35 = v33;
        if (v33 > v65)
        {
          continue;
        }
      }

      v17 = (v37 + 40);
      goto LABEL_35;
    }
  }

  v15 = a4;
  if (a4 != a1 || &a1[40 * v13] <= a4)
  {
    v16 = v11;
    memmove(a4, a1, 40 * v13);
    v11 = v16;
  }

  v17 = &a4[40 * v13];
  if (a2 - a1 < 40 || (v18 = a2, a2 >= a3))
  {
    v33 = a1;
    goto LABEL_35;
  }

  v60 = v4;
  v19 = (v11 + 8);
  v64 = v17;
  do
  {
    v65 = a1;
    sub_100037840(v18, v71);
    sub_100037840(v15, v68);
    v20 = v72;
    v21 = v73;
    sub_1000244BC(v71, v72);
    v22 = v66;
    (*(v21 + 8))(v20, v21);
    v23 = v69;
    v24 = v70;
    sub_1000244BC(v68, v69);
    v25 = v67;
    (*(v24 + 8))(v23, v24);
    LOBYTE(v23) = static Date.< infix(_:_:)();
    v26 = *v19;
    v27 = v74;
    (*v19)(v25, v74);
    v26(v22, v27);
    sub_100006060(v68);
    sub_100006060(v71);
    if (v23)
    {
      v28 = v18;
      v29 = v65;
      v30 = v65 == v18;
      v18 += 40;
      if (v30)
      {
        goto LABEL_14;
      }

LABEL_13:
      v31 = *v28;
      v32 = *(v28 + 1);
      *(v29 + 4) = *(v28 + 4);
      *v29 = v31;
      *(v29 + 1) = v32;
      goto LABEL_14;
    }

    v28 = v15;
    v29 = v65;
    v30 = v65 == v15;
    v15 += 40;
    if (!v30)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v29 + 40;
    v17 = v64;
  }

  while (v15 < v64 && v18 < a3);
  v33 = a1;
LABEL_35:
  v56 = (v17 - v15) / 40;
  if (v33 != v15 || v33 >= &v15[40 * v56])
  {
    memmove(v33, v15, 40 * v56);
  }

  return 1;
}

void sub_10022C8BC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  Date.init(timeIntervalSinceNow:)();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  v9(v4, v0);
  v12 = v8 - v11;
  if (v8 - v11 < 0.0 || v12 > 30.0)
  {
    v14 = 60.0;
    if (v12 < 30.0 || v12 > 60.0)
    {
      v14 = 3600.0;
      if (v12 >= 60.0 && v12 <= 3600.0)
      {
        v14 = 60.0;
      }
    }

    fmod(v12, v14);
  }
}

uint64_t sub_10022CA58(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006AF760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FMB389VideoAsset.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x64726143786F7250;
    v4 = 0xD000000000000012;
    if (a1 != 3)
    {
      v4 = 0x5F656C6261736944;
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000017;
    if (!a1)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 7u)
  {
    v6 = 0xD000000000000012;
    if (a1 != 9)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 == 8)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    if (a1 != 6)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10022CC54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = FMB389VideoAsset.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == FMB389VideoAsset.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10022CCDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FMB389VideoAsset.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10022CD40()
{
  FMB389VideoAsset.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_10022CD94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  FMB389VideoAsset.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10022CDF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s6FindMy16FMB389VideoAssetO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10022CE24@<X0>(unint64_t *a1@<X8>)
{
  result = FMB389VideoAsset.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s6FindMy16FMB389VideoAssetO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1006223F0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10022CEA0()
{
  result = qword_1006B6E50;
  if (!qword_1006B6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMSoundPlatterViewLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMSoundPlatterViewLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_10022D044()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  __asm { FMOV            V1.2D, #12.0 }

  xmmword_1006D4130 = _Q1;
  *&qword_1006D4140 = *&qword_1006D4798 + 8.0;
  result = 28.0;
  *algn_1006D4148 = xmmword_100559080;
  *(&xmmword_1006D4150 + 1) = 0x3FE4CCCCCCCCCCCDLL;
  return result;
}

char *sub_10022D0C8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel;
  *&v3[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy11FMAddButton_iconView;
  *&v3[v6] = [objc_allocWithZone(UIImageView) init];
  *&v3[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint] = 0;
  v3[OBJC_IVAR____TtC6FindMy11FMAddButton_isEnabled] = 1;
  v7 = &v3[OBJC_IVAR____TtC6FindMy11FMAddButton_style];
  v8 = a3[2];
  v7[1] = a3[1];
  v7[2] = v8;
  *v7 = *a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for FMAddButton();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  v11 = v9;
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  sub_10022D310();
  sub_10022D410();
  sub_10022D884();

  return v11;
}

id sub_10022D310()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v4 = sub_100039388(2);

  v5 = sub_100039388(0x8000);
  [v2 setFont:v5];

  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setNumberOfLines:0];
  [v1 addSubview:v2];
  v6 = *&v1[OBJC_IVAR____TtC6FindMy11FMAddButton_iconView];

  return [v1 addSubview:v6];
}

void sub_10022D410()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v1 leadingAnchor];
  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:0.0];
  v35 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100552EE0;
  v8 = [v1 topAnchor];
  v9 = [v0 topAnchor];
  v10 = &v0[OBJC_IVAR____TtC6FindMy11FMAddButton_style];
  v11 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_style];
  v12 = [v8 constraintEqualToAnchor:v9 constant:v11];

  *(v7 + 32) = v12;
  *(v7 + 40) = v6;
  sub_10002B27C();
  v36 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];

  v14 = [v2 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor:v15 constant:-v10[1]];

  LODWORD(v17) = 1144750080;
  [v16 setPriority:v17];
  v18 = [v2 bottomAnchor];
  v19 = [v0 bottomAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19 constant:-2.0 - v11];

  LODWORD(v21) = 1144750080;
  [v20 setPriority:v21];
  v22 = [v2 leadingAnchor];
  v23 = [v1 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:v10[3]];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1005521F0;
  v26 = [v2 centerYAnchor];
  v27 = [v0 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v25 + 32) = v28;
  *(v25 + 40) = v24;
  *(v25 + 48) = v20;
  *(v25 + 56) = v16;
  v29 = v24;
  v30 = v20;
  v31 = v16;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:v32];

  v33 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint] = v29;

  v34 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint] = v36;
}

void sub_10022D884()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  if (v0[OBJC_IVAR____TtC6FindMy11FMAddButton_isEnabled])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.5;
  }

  v5 = &selRef_systemBlueColor;
  if (!v0[OBJC_IVAR____TtC6FindMy11FMAddButton_isEnabled])
  {
    v5 = &selRef_secondaryLabelColor;
  }

  v6 = [v1 *v5];
  [v3 setTextColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconView];
  [v7 setAlpha:v4];
  v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  v9 = [objc_opt_self() configurationWithFont:v8 scale:2];
  v14 = &type metadata for SolariumFeatureFlag;
  v15 = sub_10000BD04();
  isFeatureEnabled(_:)();
  sub_100006060(v13);
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  [v7 setImage:v12];
}

void sub_10022DB0C()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for FMAddButton();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel];
  [v0 frame];
  v2 = &v0[OBJC_IVAR____TtC6FindMy11FMAddButton_style];
  [v1 setPreferredMaxLayoutWidth:v3 * *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_style + 40]];
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v7 = v2[4];
LABEL_18:
    v8 = 1.0;
    goto LABEL_19;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v10 = v2[4];
    v11 = -0.05;
    goto LABEL_17;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory() || !_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v10 = v2[4];
    v11 = -0.1;
LABEL_17:
    v7 = v10 + v11;
    goto LABEL_18;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v10 = v2[4];
    v11 = -0.15;
    goto LABEL_17;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v16 = v2[4];
    v17 = -0.2;
LABEL_27:
    v7 = v16 + v17;
    v9 = 0x3FEE666666666666;
    goto LABEL_28;
  }

  if (!_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    v16 = v2[4];
    v17 = -0.25;
    goto LABEL_27;
  }

  if (_UIContentSizeCategoryCompareToContentSizeCategory())
  {
    if (_UIContentSizeCategoryCompareToContentSizeCategory())
    {
      if (_UIContentSizeCategoryCompareToContentSizeCategory())
      {
        if (!_UIContentSizeCategoryCompareToContentSizeCategory() || (v6 = _UIContentSizeCategoryCompareToContentSizeCategory(), v7 = 1.0, v8 = 1.0, !v6))
        {
          v7 = v2[4] + -0.8;
          v9 = 0x3FD6666666666666;
LABEL_28:
          v8 = *&v9;
        }
      }

      else
      {
        v7 = v2[4] + -0.6;
        v8 = 0.5;
      }
    }

    else
    {
      v7 = v2[4] + -0.45;
      v8 = 0.55;
    }
  }

  else
  {
    v7 = v2[4] + -0.35;
    v8 = 0.75;
  }

LABEL_19:
  v12 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint];
  if (v12)
  {
    [v12 setConstant:v8 * v2[3]];
  }

  v13 = *&v0[OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint];
  if (v13)
  {
    v14 = v7 * v2[2];
    v15 = v13;
    [v15 setConstant:v14];
  }
}

id sub_10022DEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAddButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10022DF70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022DF90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void sub_10022DFD8()
{
  v1 = OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy11FMAddButton_iconView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy11FMAddButton_titleLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMAddButton_iconViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMAddButton_isEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10022E0A8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  _StringGuts.grow(_:)(20);

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v27._object = 0x800000010057A180;
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  v15.value._countAndFlagsBits = a5;
  v15.value._object = a6;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000012;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v27);

  v18 = v17._countAndFlagsBits == a1 && v17._object == a2;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !a4)
  {
    return v17._countAndFlagsBits;
  }

  _StringGuts.grow(_:)(20);

  v19._countAndFlagsBits = a3;
  v19._object = a4;
  String.append(_:)(v19);
  v20 = [v12 mainBundle];
  v28._object = 0x800000010057A180;
  v21._countAndFlagsBits = a3;
  v21._object = a4;
  v22.value._countAndFlagsBits = a5;
  v22.value._object = a6;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000012;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v28)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022E294(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey:v5];

  if (v6)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v7;
  }

  else
  {
  }

  _StringGuts.grow(_:)(20);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9 = [objc_opt_self() mainBundle];
  v14._object = 0x800000010057A180;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000012;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022E3F4(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = a1;
  v5 = type metadata accessor for FMIPProductType();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B77D0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  sub_100007204(a3, &v39 - v11, &unk_1006B77D0);
  v13 = type metadata accessor for FMIPUnknownItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    v16 = &unk_1006B77D0;
    v17 = v12;
  }

  else
  {
    v39 = v5;
    v18 = FMIPUnknownItem.isAppleAudioAccessory.getter();
    v19 = *(v14 + 8);
    v19(v12, v13);
    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_100007204(a3, v10, &unk_1006B77D0);
    if (v15(v10, 1, v13) == 1)
    {
      v16 = &unk_1006B77D0;
      v17 = v10;
    }

    else
    {
      v26 = v40;
      FMIPUnknownItem.productType.getter();
      v19(v10, v13);
      FMIPProductType.productInformation.getter();
      (*(v41 + 8))(v26, v39);
      if (v46)
      {
        sub_1000244BC(&v44, v46);
        v27 = dispatch thunk of FMIPAnyProductInformation.productIdentifier.getter();
        sub_100006060(&v44);
        v28 = v42;
        v44 = v42;
        v45 = a2;

        v29._countAndFlagsBits = 24415;
        v29._object = 0xE200000000000000;
        String.append(_:)(v29);

        v30._countAndFlagsBits = 0x53444F50524941;
        v30._object = 0xE700000000000000;
        String.append(_:)(v30);

        v32 = v44;
        v31 = v45;
        v44 = v28;
        v45 = a2;

        v33._countAndFlagsBits = 24415;
        v33._object = 0xE200000000000000;
        String.append(_:)(v33);
        v34._countAndFlagsBits = 0x53444F50524941;
        v34._object = 0xE700000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = 95;
        v35._object = 0xE100000000000000;
        String.append(_:)(v35);
        v43 = v27;
        v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v36);

        v37 = v44;
        v38 = v45;

        v24 = sub_1002304E0(v37, v38, v32, v31, v28, a2);

        goto LABEL_8;
      }

      v16 = &qword_1006B1328;
      v17 = &v44;
    }
  }

  sub_100012DF0(v17, v16);
LABEL_7:
  v20 = v42;
  v44 = v42;
  v45 = a2;

  v21._countAndFlagsBits = 0x4C55414645445F5FLL;
  v21._object = 0xE900000000000054;
  String.append(_:)(v21);
  v22 = v44;
  v23 = v45;

  v24 = sub_1002304E0(v20, a2, v22, v23, v20, a2);
LABEL_8:

  return v24;
}

uint64_t sub_10022E84C(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = a1;
  v5 = type metadata accessor for FMIPProductType();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  sub_100007204(a3, &v39 - v11, &qword_1006B07D0);
  v13 = type metadata accessor for FMIPItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    v16 = &qword_1006B07D0;
    v17 = v12;
  }

  else
  {
    v39 = v5;
    v18 = FMIPItem.isAppleAudioAccessory.getter();
    v19 = *(v14 + 8);
    v19(v12, v13);
    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_100007204(a3, v10, &qword_1006B07D0);
    if (v15(v10, 1, v13) == 1)
    {
      v16 = &qword_1006B07D0;
      v17 = v10;
    }

    else
    {
      v26 = v40;
      FMIPItem.productType.getter();
      v19(v10, v13);
      FMIPProductType.productInformation.getter();
      (*(v41 + 8))(v26, v39);
      if (v46)
      {
        sub_1000244BC(&v44, v46);
        v27 = dispatch thunk of FMIPAnyProductInformation.productIdentifier.getter();
        sub_100006060(&v44);
        v28 = v42;
        v44 = v42;
        v45 = a2;

        v29._countAndFlagsBits = 24415;
        v29._object = 0xE200000000000000;
        String.append(_:)(v29);

        v30._countAndFlagsBits = 0x53444F50524941;
        v30._object = 0xE700000000000000;
        String.append(_:)(v30);

        v32 = v44;
        v31 = v45;
        v44 = v28;
        v45 = a2;

        v33._countAndFlagsBits = 24415;
        v33._object = 0xE200000000000000;
        String.append(_:)(v33);
        v34._countAndFlagsBits = 0x53444F50524941;
        v34._object = 0xE700000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = 95;
        v35._object = 0xE100000000000000;
        String.append(_:)(v35);
        v43 = v27;
        v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v36);

        v37 = v44;
        v38 = v45;

        v24 = sub_1002304E0(v37, v38, v32, v31, v28, a2);

        goto LABEL_8;
      }

      v16 = &qword_1006B1328;
      v17 = &v44;
    }
  }

  sub_100012DF0(v17, v16);
LABEL_7:
  v20 = v42;
  v44 = v42;
  v45 = a2;

  v21._countAndFlagsBits = 0x4C55414645445F5FLL;
  v21._object = 0xE900000000000054;
  String.append(_:)(v21);
  v22 = v44;
  v23 = v45;

  v24 = sub_1002304E0(v20, a2, v22, v23, v20, a2);
LABEL_8:

  return v24;
}

uint64_t sub_10022ECA4(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey:v5];

  if (v6)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v7;
  }

  else
  {
  }

  v8 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100582000;
  v9.value._object = 0x8000000100581FE0;
  v14._countAndFlagsBits = 0xD000000000000015;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v9.value._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022EDD4(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey:v5];

  if (v6)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v7;
  }

  else
  {
  }

  v8 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100587910;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEC00000031656C62;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000017;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_10022EF00()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  byte_1006B6EB0 = v1;
}

uint64_t sub_10022EF6C(uint64_t a1, void *a2)
{
  if (qword_1006AEB30 != -1)
  {
    swift_once();
  }

  if (byte_1006B6EB0)
  {
    v4 = 1312902231;
  }

  else
  {
    v4 = 1229343063;
  }

  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6._countAndFlagsBits = v4;
  v6._object = 0xE400000000000000;
  String.append(_:)(v6);

  v7 = a1;
  _StringGuts.grow(_:)(24);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100587D20;
  v10._countAndFlagsBits = v7;
  v10._object = a2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000016;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022F104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  sub_100007204(a3, &v19 - v11, &unk_1006BBCE0);
  if ((*(v7 + 48))(v12, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_10022F3BC();
    (*(v7 + 8))(v9, v6);
  }

  sub_10007EBC0(&unk_1006B20B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100552210;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_10008EE84();
  *(v13 + 64) = v14;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v15 = String.uppercased()();

  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v14;
  *(v13 + 72) = v15;
  v16 = String.init(format:_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552220;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v14;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  String.init(format:_:)();
  return v16;
}

uint64_t sub_10022F3BC()
{
  v0 = type metadata accessor for FMIPDeviceState();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isMacOS.getter();
  sub_100230874();
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    return 4407629;
  }

  v9 = 0x4843544157;
  if (FMIPDevice.category.getter() == 0x6863746157 && v10 == 0xE500000000000000)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v9 = 0x53444F50524941;
      FMIPDevice.rawModel.getter();
      v12 = String.uppercased()();

      v19 = v12;
      v17 = 0x53444F50524941;
      v18 = 0xE700000000000000;
      sub_100035F3C();
      v13 = StringProtocol.contains<A>(_:)();

      if ((v13 & 1) == 0)
      {
        v9 = 0x54454C4C4157;
        FMIPDevice.rawModel.getter();
        v14 = String.uppercased()();

        v19 = v14;
        v17 = 0x54454C4C4157;
        v18 = 0xE600000000000000;
        v15 = StringProtocol.contains<A>(_:)();

        if ((v15 & 1) == 0)
        {
          if (FMIPDevice.isLocalFindable.getter())
          {
            return 0x4C49434E4550;
          }

          else
          {
            return FMIPDevice.modelDisplayName.getter();
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_10022F6A4(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100582000;
  v5.value._object = 0x8000000100581FE0;
  v10._countAndFlagsBits = 0xD000000000000015;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022F788(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100579A00;
  v5.value._object = 0x80000001005799E0;
  v10._countAndFlagsBits = 0xD000000000000018;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022F844(uint64_t a1, void *a2)
{
  if (qword_1006AEB30 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  if (byte_1006B6EB0)
  {
    v3 = 1312902231;
  }

  else
  {
    v3 = 1229343063;
  }

  v13 = a1;

  v4._countAndFlagsBits = 95;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = v3;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);

  v6 = [objc_opt_self() mainBundle];
  v14._object = 0x800000010057FD20;
  v7.value._object = 0x800000010057FD00;
  v14._countAndFlagsBits = 0xD000000000000017;
  v8._countAndFlagsBits = v13;
  v8._object = a2;
  v7.value._countAndFlagsBits = 0xD000000000000012;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022F9D8(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x80000001005797A0;
  v5.value._object = 0x8000000100579780;
  v10._countAndFlagsBits = 0xD000000000000015;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022FABC(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x80000001005800E0;
  v5.value._object = 0x80000001005800C0;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._countAndFlagsBits = 0xD000000000000019;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10022FB78(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = 0x54454C4C4157;
    v10 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v3 + 32))(v5, v8, v2);
    FMIPDevice.rawModel.getter();
    v11 = String.uppercased()();

    v19 = v11;
    v17 = 0x54454C4C4157;
    v18 = 0xE600000000000000;
    sub_100035F3C();
    v12 = StringProtocol.contains<A>(_:)();

    if (v12 & 1) != 0 || (v9 = 0x53444F50524941, FMIPDevice.rawModel.getter(), v14 = String.uppercased()(), , v19 = v14, v17 = 0x53444F50524941, v18 = 0xE700000000000000, v15 = StringProtocol.contains<A>(_:)(), , (v15))
    {
      (*(v3 + 8))(v5, v2);
      sub_100012DF0(&v8[v10], &qword_1006B07D0);
    }

    else if (FMIPDevice.isConsideredAccessory.getter())
    {
      v16 = FMIPDevice.isLocalFindable.getter();
      (*(v3 + 8))(v5, v2);
      sub_100012DF0(&v8[v10], &qword_1006B07D0);
      if (v16)
      {
        return 0x4C49434E4550;
      }

      else
      {
        return 1296389193;
      }
    }

    else
    {
      v9 = sub_10022F3BC();
      (*(v3 + 8))(v5, v2);
      sub_100012DF0(&v8[v10], &qword_1006B07D0);
    }
  }

  else
  {
    v9 = 1296389193;
    sub_10009715C(v8);
  }

  return v9;
}

uint64_t sub_10022FEFC(uint64_t a1, uint64_t a2)
{
  sub_10007EBC0(&unk_1006B20B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100552210;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10008EE84();
  *(v4 + 64) = v5;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v6 = String.uppercased()();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 72) = v6;

  v7 = String.init(format:_:)();
  v9 = v8;
  v26 = objc_opt_self();
  v10 = [v26 mainBundle];
  v27._object = 0x8000000100579A00;
  v11.value._object = 0x80000001005799E0;
  v27._countAndFlagsBits = 0xD000000000000018;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v27);

  if (v14._countAndFlagsBits == v7 && v14._object == v9)
  {

LABEL_5:

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100552220;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v5;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    v17 = String.init(format:_:)();
    v19 = v18;
    v20 = [v26 mainBundle];
    v28._object = 0x8000000100579A00;
    v21.value._object = 0x80000001005799E0;
    v28._countAndFlagsBits = 0xD000000000000018;
    v22._countAndFlagsBits = v17;
    v22._object = v19;
    v21.value._countAndFlagsBits = 0xD000000000000013;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v28)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_5;
  }

  return v14._countAndFlagsBits;
}

uint64_t sub_100230194@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for FMIPDevice();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007204(a3, v10, &unk_1006BBCE0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012DF0(v10, &unk_1006BBCE0);
LABEL_6:
    v32._countAndFlagsBits = a1;
    v32._object = a2;

    v25._countAndFlagsBits = 0x4C55414645445F5FLL;
    v25._object = 0xE900000000000054;
    String.append(_:)(v25);
    countAndFlagsBits = v32._countAndFlagsBits;
    object = v32._object;
    v32._countAndFlagsBits = a1;
    v32._object = a2;

    v26._countAndFlagsBits = 0x4C55414645445F5FLL;
    v26._object = 0xE900000000000054;
    String.append(_:)(v26);
    v23 = v32._countAndFlagsBits;
    v24 = v32._object;
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v10, v11);
  FMIPDevice.rawModel.getter();
  v15 = String.uppercased()();

  v32 = v15;
  v30 = 0x53444F50524941;
  v31 = 0xE700000000000000;
  sub_100035F3C();
  v16 = StringProtocol.contains<A>(_:)();

  if ((v16 & 1) == 0)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_6;
  }

  v32._countAndFlagsBits = a1;
  v32._object = a2;

  v17._countAndFlagsBits = 24415;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = v32._object;
  v29 = v32._countAndFlagsBits;
  FMIPDevice.rawModel.getter();
  v19 = String.uppercased()();

  v32._countAndFlagsBits = v29;
  v32._object = v18;

  String.append(_:)(v19);

  countAndFlagsBits = v32._countAndFlagsBits;
  object = v32._object;
  v32._countAndFlagsBits = a1;
  v32._object = a2;

  v22._object = 0xE900000000000053;
  v22._countAndFlagsBits = 0x444F505249415F5FLL;
  String.append(_:)(v22);
  v23 = v32._countAndFlagsBits;
  v24 = v32._object;
  (*(v12 + 8))(v14, v11);
LABEL_7:

  *a4 = countAndFlagsBits;
  a4[1] = object;
  a4[2] = v23;
  a4[3] = v24;
  a4[4] = a1;
  a4[5] = a2;
  return result;
}

uint64_t sub_1002304E0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v27._countAndFlagsBits = a5;
  v27._object = a6;
  _StringGuts.grow(_:)(20);

  v10._countAndFlagsBits = a1;
  v10._object = a2;
  String.append(_:)(v10);
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v28._object = 0x800000010057A180;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000012;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v28);
  countAndFlagsBits = v15._countAndFlagsBits;

  v17 = v15._countAndFlagsBits == a1 && v15._object == a2;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return countAndFlagsBits;
  }

  _StringGuts.grow(_:)(20);

  v18._countAndFlagsBits = a3;
  v18._object = a4;
  String.append(_:)(v18);
  v19 = [v11 mainBundle];
  v29._object = 0x800000010057A180;
  v20._countAndFlagsBits = a3;
  v20._object = a4;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000012;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v29);
  countAndFlagsBits = v22._countAndFlagsBits;

  if ((v22._countAndFlagsBits != a3 || v22._object != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return countAndFlagsBits;
  }

  _StringGuts.grow(_:)(20);

  String.append(_:)(v27);
  v23 = [v11 mainBundle];
  v30._object = 0x800000010057A180;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD000000000000012;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v23, v24, v30)._countAndFlagsBits;

  return v25;
}

uint64_t sub_100230784(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(20);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5 = [objc_opt_self() mainBundle];
  v10._object = 0x800000010057A180;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000012;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100230874()
{
  result = qword_1006BBCF0;
  if (!qword_1006BBCF0)
  {
    type metadata accessor for FMIPDeviceState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BBCF0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMMapMode(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMMapMode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for FMMapMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100230A00(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v9 = 0x800000010057EE70;
    v3 = 0xD00000000000001ALL;
    v4 = 0x800000010057EE50;
    v5 = 0xD00000000000002CLL;
  }

  else
  {
    v9 = 0x8000000100587E20;
    v4 = 0x8000000100587E00;
    v5 = 0xD00000000000002ALL;
    v3 = 0xD000000000000018;
  }

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, v6, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_100230AEC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100587D80;
  v1._object = 0x8000000100587D60;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006D4160 = v3;
}

void sub_100230BA4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100587DD0;
  v1._object = 0x8000000100587DB0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006D4170 = v3;
}

void sub_100230C5C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100587EC0;
  v1._object = 0x8000000100587EA0;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006D4180 = v3;
}

void sub_100230D14()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100587E70;
  v1._object = 0x8000000100587E50;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006D4190 = v3;
}

uint64_t sub_100230DCC(void *a1, char a2)
{
  v5 = sub_10007EBC0(&qword_1006B7210);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000244BC(a1, a1[3]);
  sub_100232AE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2 & 1;
  v10[14] = 0;
  sub_1002322C8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[13] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[12] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100230F84()
{
  v1 = 0x61725473776F6873;
  if (*v0 != 1)
  {
    v1 = 0x62614C73776F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_100230FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002327CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10023101C(uint64_t a1)
{
  v2 = sub_100232AE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100231058(uint64_t a1)
{
  v2 = sub_100232AE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100231094@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002328EC(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_100231118(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_100232370(v3 | *a1 | v2, v5 | *a2 | v4);
}

uint64_t sub_10023116C()
{
  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  word_1006D41A0 = 1;
  byte_1006D41A2 = result & 1;
  return result;
}

uint64_t sub_1002311CC(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B7218);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  if ((a1 - 1) > 3)
  {
    return 0x6C6C69662E70616DLL;
  }

  static Locale.current.getter();
  Locale.region.getter();
  (*(v3 + 8))(v5, v2);
  v12 = type metadata accessor for Locale.Region();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v9, 1, v12) == 1)
  {
LABEL_5:
    sub_100012DF0(v9, &qword_1006B7218);
    return 0xD000000000000013;
  }

  Locale.Region.continent.getter();
  v15 = *(v13 + 8);
  v15(v9, v12);
  if (v14(v11, 1, v12) == 1)
  {
    v9 = v11;
    goto LABEL_5;
  }

  v17 = Locale.Region.identifier.getter();
  v19 = v18;
  v15(v11, v12);
  v22._countAndFlagsBits = v17;
  v22._object = v19;
  v20 = sub_100232B90(v22);
  if (v20 > 2)
  {
    if (v20 != 3)
    {
      if (v20 != 4)
      {
        return 0xD000000000000013;
      }

      return 0xD000000000000019;
    }

    return 0xD000000000000018;
  }

  if (!v20)
  {
    return 0xD000000000000018;
  }

  if (v20 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_1002314C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74696C6C65746173;
  }

  else
  {
    v3 = 0x65726F6C707865;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x74696C6C65746173;
  }

  else
  {
    v5 = 0x65726F6C707865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100231574()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002315FC()
{
  String.hash(into:)();
}

Swift::Int sub_100231670()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002316F4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1006225B0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100231754(uint64_t *a1@<X8>)
{
  v2 = 0x65726F6C707865;
  if (*v1)
  {
    v2 = 0x74696C6C65746173;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10023184C()
{
  result = qword_1006B71D0;
  if (!qword_1006B71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71D0);
  }

  return result;
}

uint64_t sub_1002318A0(int a1)
{
  v12[8] = 0;
  _StringGuts.grow(_:)(31);
  v2._countAndFlagsBits = 0x203A65646F4DLL;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  *v12 = a1 & 1;
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x6369666661725420;
  v3._object = 0xEA0000000000203ALL;
  String.append(_:)(v3);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0x3A736C6562614C20;
  v7._object = 0xE900000000000020;
  String.append(_:)(v7);
  if ((a1 & 0x10000) != 0)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  return *&v12[1];
}

uint64_t sub_1002319E0()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1002318A0(v2 | *v0 | v1);
}

uint64_t sub_100231A10(void *a1)
{
  v3 = sub_10007EBC0(&qword_1006B7238);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000244BC(a1, a1[3]);
  sub_100232E64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100231B90()
{
  if (*v0)
  {
    return 0x62614C73776F6873;
  }

  else
  {
    return 0x61725473776F6873;
  }
}

uint64_t sub_100231BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61725473776F6873 && a2 == 0xEC00000063696666;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x62614C73776F6873 && a2 == 0xEB00000000736C65)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100231CCC(uint64_t a1)
{
  v2 = sub_100232E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100231D08(uint64_t a1)
{
  v2 = sub_100232E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100231D44@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100232EB8(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

void sub_100231DAC(void *a1, char a2, int a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    v11 = sub_1002318A0(a3 & 0x10101);
    v13 = sub_100005B4C(v11, v12, &v29);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMapMode: Save to UserDefaults (%{public}s)", v9, 0xCu);
    sub_100006060(v10);
  }

  if (a2)
  {
    LOBYTE(v29) = a3 & 1;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_1002322C8();
    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v17 = v16;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = String._bridgeToObjectiveC()();
    [a1 setValue:isa forKey:v19];

    sub_10000A858(v15, v17);
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v29 = 0xD000000000000012;
    v30 = 0x8000000100587D40;
    if (a3)
    {
      v20 = 0x74696C6C65746173;
    }

    else
    {
      v20 = 0x65726F6C707865;
    }

    if (a3)
    {
      v21 = 0xE900000000000065;
    }

    else
    {
      v21 = 0xE700000000000000;
    }

    v22 = v21;
    String.append(_:)(*&v20);

    LOBYTE(v29) = BYTE1(a3) & 1;
    BYTE1(v29) = BYTE2(a3) & 1;
    swift_allocObject();
    JSONEncoder.init()();
    sub_10023231C();
    v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v25 = v24;

    v26 = Data._bridgeToObjectiveC()().super.isa;
    v27 = String._bridgeToObjectiveC()();

    [a1 setValue:v26 forKey:v27];

    sub_10000A858(v23, v25);
  }

  else
  {
    v14 = UInt._bridgeToObjectiveC()().super.super.isa;
    v28 = String._bridgeToObjectiveC()();
    [a1 setObject:v14 forKey:v28];
  }
}

uint64_t sub_1002321C8()
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 dataForKey:v2];

  if (!v3)
  {
    return 2;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100232724();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000A858(v4, v6);

  if (!v1)
  {
    if (v10)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    return v8 | v9;
  }

  return result;
}

unint64_t sub_1002322C8()
{
  result = qword_1006B71D8;
  if (!qword_1006B71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71D8);
  }

  return result;
}

unint64_t sub_10023231C()
{
  result = qword_1006B71E0;
  if (!qword_1006B71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71E0);
  }

  return result;
}

uint64_t sub_100232370(int a1, int a2)
{
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 0x74696C6C65746173;
  }

  else
  {
    v5 = 0x65726F6C707865;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    v7 = 0x74696C6C65746173;
  }

  else
  {
    v7 = 0x65726F6C707865;
  }

  if (a2)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {

    if (((a1 ^ a2) & 0x100) != 0)
    {
      return 0;
    }

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((a1 ^ a2) & 0x100) == 0 && (v10)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return result;
}

uint64_t sub_10023245C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = 0x65726F6C707865;
  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    if (a1)
    {
      v2 = 0x74696C6C65746173;
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    v9 = sub_100005B4C(v2, v8, &v16);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMMapMode: Load with Mode (%{public}s) from UserDefaults", v6, 0xCu);
    sub_100006060(v7);
  }

  else
  {

    if (a1)
    {
      v2 = 0x74696C6C65746173;
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v16 = 0xD000000000000012;
  v17 = 0x8000000100587D40;
  v10._countAndFlagsBits = v2;
  v10._object = v8;
  String.append(_:)(v10);

  v11 = sub_1002321C8();

  if (v11 == 2)
  {
    v12 = 0;
  }

  else
  {
    if ((v11 & 0x100) == 0)
    {
      if (a1)
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          v12 = 0;
          v14 = 0;
          return v12 | a1 & 1 | v14;
        }

        LOBYTE(v11) = v13 & v11;
      }

      else
      {
      }
    }

    if (v11)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = 0x10000;
  return v12 | a1 & 1 | v14;
}

unint64_t sub_100232724()
{
  result = qword_1006B71E8;
  if (!qword_1006B71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71E8);
  }

  return result;
}

unint64_t sub_100232778()
{
  result = qword_1006B71F0;
  if (!qword_1006B71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B71F0);
  }

  return result;
}

uint64_t sub_1002327CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61725473776F6873 && a2 == 0xEC00000063696666 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x62614C73776F6873 && a2 == 0xEB00000000736C65)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002328EC(void *a1)
{
  v3 = sub_10007EBC0(&qword_1006B71F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  sub_1000244BC(a1, a1[3]);
  sub_100232AE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006060(a1);
  }

  v13[14] = 0;
  sub_100232B3C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v13[15];
  v13[13] = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[12] = 2;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100006060(a1);
  if (v10)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 | v7 | v11;
}

unint64_t sub_100232AE8()
{
  result = qword_1006B7200;
  if (!qword_1006B7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7200);
  }

  return result;
}

unint64_t sub_100232B3C()
{
  result = qword_1006B7208;
  if (!qword_1006B7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7208);
  }

  return result;
}

unint64_t sub_100232B90(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622518, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for FMMapMode.Options(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for FMMapMode.Options(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100232D60()
{
  result = qword_1006B7220;
  if (!qword_1006B7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7220);
  }

  return result;
}

unint64_t sub_100232DB8()
{
  result = qword_1006B7228;
  if (!qword_1006B7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7228);
  }

  return result;
}

unint64_t sub_100232E10()
{
  result = qword_1006B7230;
  if (!qword_1006B7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7230);
  }

  return result;
}

unint64_t sub_100232E64()
{
  result = qword_1006B7240;
  if (!qword_1006B7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7240);
  }

  return result;
}

uint64_t sub_100232EB8(void *a1)
{
  v3 = sub_10007EBC0(&qword_1006B7248);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_1000244BC(a1, a1[3]);
  sub_100232E64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006060(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100006060(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFFFE | v7 & 1;
}

unint64_t sub_10023307C()
{
  result = qword_1006B7250;
  if (!qword_1006B7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7250);
  }

  return result;
}

unint64_t sub_1002330D4()
{
  result = qword_1006B7258;
  if (!qword_1006B7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7258);
  }

  return result;
}

unint64_t sub_10023312C()
{
  result = qword_1006B7260;
  if (!qword_1006B7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7260);
  }

  return result;
}

id sub_1002331B0(char a1)
{
  *(v1 + qword_1006B72D0) = a1;
  [*(v1 + qword_1006B72B8) setHidden:*(v1 + qword_1006B72D0)];

  return sub_100044E98();
}

id sub_100233230(char a1)
{
  *(v1 + qword_1006B72E0) = a1;
  if (*(v1 + qword_1006B72D0) == 1)
  {
    v2 = *(v1 + qword_1006B72E0) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + qword_1006B72C8))
  {
    v3 = v2;
  }

  else
  {
    v3 = *(v1 + qword_1006B72D0);
  }

  return [*(v1 + qword_1006B72B8) setHidden:v3 & 1];
}

uint64_t sub_1002332BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006B77C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23[-1] - v12;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v15 = type metadata accessor for FMListTableViewCell();
  v24.receiver = v2;
  v24.super_class = v15;
  objc_msgSendSuper2(&v24, "_bridgedUpdateConfigurationUsingState:", isa);

  static UIBackgroundConfiguration.listCell()();
  v16 = type metadata accessor for UICellConfigurationState();
  v23[3] = v16;
  v23[4] = &protocol witness table for UICellConfigurationState;
  v17 = sub_100008FC0(v23);
  (*(*(v16 - 8) + 16))(v17, a1, v16);
  UIBackgroundConfiguration.updated(for:)();
  v18 = *(v8 + 8);
  v18(v11, v7);
  sub_100006060(v23);
  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

  UIBackgroundConfiguration.cornerRadius.setter();
  UIBackgroundConfiguration.backgroundInsets.setter();
  if (UICellConfigurationState.isHighlighted.getter())
  {
    v19 = qword_1006D4208;
  }

  else
  {
    v20 = [objc_opt_self() clearColor];
  }

  UIBackgroundConfiguration.backgroundColor.setter();
  (*(v8 + 16))(v6, v13, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  UITableViewCell.backgroundConfiguration.setter();
  return (v18)(v13, v7);
}

uint64_t sub_1002335DC(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  sub_1002332BC(v5);

  return (*(v3 + 8))(v5, v2);
}

id sub_1002336C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMListTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100233734()
{
  v0 = sub_10023376C();

  return v0;
}

void sub_10023377C()
{
  v1 = qword_1006B7268;
  *(v0 + v1) = [objc_allocWithZone(NUIContainerStackView) init];
  v2 = qword_1006B7270;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for FMTableViewCellImageContainer()) init];
  v3 = qword_1006B7278;
  *(v0 + v3) = [objc_allocWithZone(NUIContainerStackView) init];
  v4 = qword_1006B7280;
  *(v0 + v4) = [objc_allocWithZone(NUIContainerStackView) init];
  v5 = qword_1006B7288;
  *(v0 + v5) = [objc_allocWithZone(NUIContainerStackView) init];
  v6 = qword_1006B7290;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = qword_1006B7298;
  type metadata accessor for FMSubtitleLabel();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = qword_1006B72A0;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = qword_1006B72A8;
  *(v0 + v9) = [objc_allocWithZone(type metadata accessor for FMBatteryView()) init];
  v10 = qword_1006B72B0;
  *(v0 + v10) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v11 = qword_1006B72B8;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v12 = qword_1006B72C0;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13];

  v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];
  *(v0 + v12) = v15;
  *(v0 + qword_1006B72C8) = 0;
  *(v0 + qword_1006B72D0) = 0;
  *(v0 + qword_1006B72D8) = 0;
  *(v0 + qword_1006B72E0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002339F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  memset(v19, 0, sizeof(v19));
  v10 = *(v4 + 24);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = v5;
  v11[7] = v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100235884;
  *(v12 + 24) = v11;
  v18[4] = sub_10000964C;
  v18[5] = v12;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000095FC;
  v18[3] = &unk_100630868;
  v13 = _Block_copy(v18);
  v14 = a1;
  v15 = a2;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v17 = *&v19[0];

    return v17;
  }

  return result;
}

void sub_100233BA4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  [a1 distanceFromLocation:a2];
  if (v12 >= 1000000.0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v28, "FMETACache: cannot calculate ETA for distances over 1000KM", v29, 2u);
    }
  }

  else
  {
    v35 = a3;
    v36 = a4;

    v13 = a1;
    v14 = a2;
    [v13 coordinate];
    [v13 coordinate];
    Double.write<A>(to:)();
    v15._countAndFlagsBits = 45;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    Double.write<A>(to:)();
    [v14 coordinate];
    [v14 coordinate];
    Double.write<A>(to:)();
    v16._countAndFlagsBits = 45;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    Double.write<A>(to:)();

    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    String.append(_:)(v17);

    swift_beginAccess();
    v18 = *(a5 + 40);
    if (*(v18 + 16))
    {

      v19 = sub_10000726C(0, 0xE000000000000000);
      v21 = v20;

      if (v21)
      {
        v22 = (*(v18 + 56) + 32 * v19);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];

        *a6 = v23;
        a6[1] = v24;
        a6[2] = v25;
        a6[3] = v26;
      }
    }

    if (a6[1])
    {
    }

    else
    {
      [v13 coordinate];
      [v13 coordinate];
      Double.write<A>(to:)();
      v30._countAndFlagsBits = 45;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      Double.write<A>(to:)();
      [v14 coordinate];
      [v14 coordinate];
      Double.write<A>(to:)();
      v31._countAndFlagsBits = 45;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      Double.write<A>(to:)();

      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      String.append(_:)(v32);

      swift_beginAccess();
      if (*(*(a5 + 32) + 16) && (, sub_10000726C(0, 0xE000000000000000), v34 = v33, , (v34 & 1) != 0))
      {
      }

      else
      {

        sub_1002340E4(v35, v36, v13, v14);
      }
    }
  }
}

uint64_t sub_1002340E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_100235854;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006307F0;
  v18 = _Block_copy(aBlock);

  v19 = a3;
  v20 = a4;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100003F6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);
}

void sub_1002343C8(uint64_t a1, void *a2, id a3, void *a4)
{
  v5 = v4;
  [a3 coordinate];
  [a3 coordinate];
  Double.write<A>(to:)();
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  [a4 coordinate];
  [a4 coordinate];
  Double.write<A>(to:)();
  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  Double.write<A>(to:)();
  v51 = 0;
  v52 = 0xE000000000000000;

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.append(_:)(v10);

  swift_beginAccess();
  if (*(*(v4 + 32) + 16))
  {

    sub_10000726C(0, 0xE000000000000000);
    v12 = v11;

    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  [a3 coordinate];
  [a3 coordinate];
  Double.write<A>(to:)();
  v13._countAndFlagsBits = 45;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  Double.write<A>(to:)();
  [a4 coordinate];
  [a4 coordinate];
  Double.write<A>(to:)();
  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  Double.write<A>(to:)();
  v49 = 0;
  v50 = 0xE000000000000000;

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  String.append(_:)(v15);

  swift_beginAccess();
  if (!*(*(v5 + 40) + 16))
  {

    goto LABEL_13;
  }

  sub_10000726C(0, 0xE000000000000000);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_13:
    v28 = swift_allocObject();
    *(v28 + 2) = v5;
    *(v28 + 3) = a1;
    *(v28 + 4) = a2;
    *(v28 + 5) = a3;
    *(v28 + 6) = a4;
    v29 = type metadata accessor for FMETAOperation();
    v30 = objc_allocWithZone(v29);
    v30[OBJC_IVAR____TtC6FindMy14FMETAOperation__isFinished] = 0;
    v31 = &v30[OBJC_IVAR____TtC6FindMy14FMETAOperation_request];
    *v31 = a1;
    v31[1] = a2;
    v31[2] = a3;
    v31[3] = a4;
    v32 = &v30[OBJC_IVAR____TtC6FindMy14FMETAOperation_completion];
    *v32 = sub_10023579C;
    v32[1] = v28;
    v48.receiver = v30;
    v48.super_class = v29;
    swift_bridgeObjectRetain_n();
    v33 = a3;
    v34 = a4;
    v35 = v33;
    v36 = v34;

    v43 = objc_msgSendSuper2(&v48, "init");
    [*(v5 + 48) addOperation:v43];
    [v35 coordinate];
    [v35 coordinate];
    Double.write<A>(to:)();
    v37._countAndFlagsBits = 45;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    Double.write<A>(to:)();
    [v36 coordinate];
    [v36 coordinate];
    Double.write<A>(to:)();
    v38._countAndFlagsBits = 45;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    Double.write<A>(to:)();
    v47[0] = 0;
    v47[1] = 0xE000000000000000;

    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    String.append(_:)(v39);

    swift_beginAccess();

    v40 = v35;
    v41 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v5 + 32);
    *(v5 + 32) = 0x8000000000000000;
    sub_1001BC22C(a1, a2, v40, v41, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

    *(v5 + 32) = v46;
    swift_endAccess();

    return;
  }

LABEL_7:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = a3;
  v20 = a4;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v47[0] = v24;
    *v23 = 136315138;
    v25 = sub_1001A8700(a1, a2, v19, v20);
    v27 = sub_100005B4C(v25, v26, v47);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMETACache: Loading declined, we are already processing similar eta: %s", v23, 0xCu);
    sub_100006060(v24);
  }
}

uint64_t sub_100234B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v33 = *(v18 - 8);
  v34 = v18;
  __chkstk_darwin(v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a6 + 24);
  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = a5;
  v21[3] = v22;
  v21[4] = a8;
  v21[5] = a9;
  v21[6] = a10;
  v21[7] = a6;
  v21[8] = a1;
  v21[9] = a2;
  v24 = v31;
  v21[10] = v23;
  v21[11] = v24;
  aBlock[4] = sub_1002357CC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006307A0;
  v25 = _Block_copy(aBlock);
  swift_errorRetain();

  v26 = a9;
  v27 = a10;

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003F6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v17, v15);
  (*(v33 + 8))(v20, v34);
}

uint64_t sub_100234E44(uint64_t a1, uint64_t a2, void *a3, id a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);

    v14 = a4;
    v15 = a5;
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = sub_1001A8700(a2, a3, v14, v15);
      v21 = sub_100005B4C(v19, v20, &v69);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_100005B4C(v22, v23, &v69);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMETACache: ETA calculation error: %s for request: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    [v14 coordinate];
    [v14 coordinate];
    v69 = 0;
    v70 = 0xE000000000000000;
    Double.write<A>(to:)();
    v25._countAndFlagsBits = 45;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    Double.write<A>(to:)();
    v27 = v69;
    v26 = v70;
    [v15 coordinate];
    [v15 coordinate];
    v69 = 0;
    v70 = 0xE000000000000000;
    Double.write<A>(to:)();
    v28._countAndFlagsBits = 45;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    Double.write<A>(to:)();
    v29 = v69;
    v30 = v70;
    v69 = v27;
    v70 = v26;

    v31._countAndFlagsBits = v29;
    v31._object = v30;
    String.append(_:)(v31);

    v32 = v69;
    v33 = v70;
    swift_beginAccess();
    sub_1001AF014(0, 0, 0, 0, v32, v33);
    return swift_endAccess();
  }

  else
  {
    [a4 coordinate];
    [a4 coordinate];
    Double.write<A>(to:)();
    v36._countAndFlagsBits = 45;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    Double.write<A>(to:)();
    [a5 coordinate];
    [a5 coordinate];
    Double.write<A>(to:)();
    v37._countAndFlagsBits = 45;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    Double.write<A>(to:)();
    v69 = 0;
    v70 = 0xE000000000000000;

    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    String.append(_:)(v38);

    swift_beginAccess();
    sub_1001AF014(0, 0, 0, 0, 0, 0xE000000000000000);
    result = swift_endAccess();
    if (!a8)
    {
      return result;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005B14(v39, qword_1006D4630);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v69 = v43;
      *v42 = 136315138;
      v44 = sub_1003C3CCC(a7, a8);
      v46 = sub_100005B4C(v44, v45, &v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "FMETACache: ETA calculation received: %s", v42, 0xCu);
      sub_100006060(v43);
    }

    [a4 coordinate];
    [a4 coordinate];
    v69 = 0;
    v70 = 0xE000000000000000;
    Double.write<A>(to:)();
    v47._countAndFlagsBits = 45;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    Double.write<A>(to:)();
    v48 = v69;
    v49 = v70;
    [a5 coordinate];
    [a5 coordinate];
    v69 = 0;
    v70 = 0xE000000000000000;
    Double.write<A>(to:)();
    v50._countAndFlagsBits = 45;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    Double.write<A>(to:)();
    v51 = v69;
    v52 = v70;
    v69 = v48;
    v70 = v49;

    v53._countAndFlagsBits = v51;
    v53._object = v52;
    String.append(_:)(v53);

    v54 = v69;
    v55 = v70;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(a6 + 40);
    *(a6 + 40) = 0x8000000000000000;
    sub_1001BC3DC(a7, a8, v54, v55, isUniquelyReferenced_nonNull_native, *&a9, *&a10);

    *(a6 + 40) = v68;
    swift_endAccess();
    result = swift_beginAccess();
    v57 = *(a6 + 16);
    if (v57 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v58 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        return result;
      }
    }

    if (v58 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v58; ++i)
      {
        if ((v57 & 0xC000000000000001) != 0)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v60 = *(v57 + 8 * i + 32);
        }

        v61 = v60 + OBJC_IVAR____TtC6FindMy17FMETASubscription_subscriber;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v62 = *(v61 + 8);
          ObjectType = swift_getObjectType();
          (*(v62 + 8))(a6, a7, a8, a2, a3, ObjectType, v62, *&a9, *&a10);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100235744()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100235804()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002358A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4D08);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_10023EF54(&unk_1006B7890, &type metadata accessor for UICellConfigurationState);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_100005B4C(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMUnknownItemListCellView: updateConfiguration(using: %s)", v12, 0xCu);
    sub_100006060(v13);

    v2 = v21;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v19 = type metadata accessor for FMUnknownItemListCellView();
  v23.receiver = v2;
  v23.super_class = v19;
  objc_msgSendSuper2(&v23, "_bridgedUpdateConfigurationUsingState:", isa);

  sub_100235C3C();
  return sub_100236350(a1);
}

void sub_100235C3C()
{
  v1 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B7878);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_setupCompleted;
  if ((v0[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_setupCompleted] & 1) == 0)
  {
    v57 = [v0 contentView];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v56 = v4;
      UITableViewCell.contentConfiguration.getter();
      if (!v59)
      {

        sub_100012DF0(v58, &qword_1006B7880);
        (*(v9 + 56))(v7, 1, 1, v8);
        goto LABEL_10;
      }

      sub_10007EBC0(&qword_1006B7888);
      v15 = swift_dynamicCast();
      (*(v9 + 56))(v7, v15 ^ 1u, 1, v8);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

LABEL_10:
        sub_100012DF0(v7, &qword_1006B7878);
        return;
      }

      (*(v9 + 32))(v11, v7, v8);
      v17 = [v14 imageLayoutGuide];
      if (v17)
      {
        v55 = v17;
        v51 = v2;
        v52 = v11;
        v48 = v0;
        v18 = *&v0[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageContainer];
        [v14 addSubview:v18];
        v19 = [v18 constraints];
        v49 = sub_10000905C(0, &qword_1006B3A70);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = v1;
        v54 = v9;
        v50 = v12;
        if (v20 >> 62)
        {
          goto LABEL_28;
        }

        for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v18 = v18;
          if (!i)
          {
            break;
          }

          v22 = 0;
          while (1)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v23 = *(v20 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            [v18 removeConstraint:v23];

            ++v22;
            if (v25 == i)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          ;
        }

LABEL_23:

        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        v47 = objc_opt_self();
        sub_10007EBC0(&qword_1006AFC30);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1005521F0;
        v27 = [v18 centerXAnchor];
        v28 = v55;
        v29 = [v55 centerXAnchor];
        v30 = [v27 constraintEqualToAnchor:v29];

        *(v26 + 32) = v30;
        v31 = [v18 centerYAnchor];
        v32 = [v28 centerYAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];

        *(v26 + 40) = v33;
        v34 = [v18 widthAnchor];
        v35 = v56;
        v36 = v52;
        UIListContentConfiguration.imageProperties.getter();
        UIListContentConfiguration.ImageProperties.reservedLayoutSize.getter();
        v38 = v37;
        v39 = *(v51 + 8);
        v40 = v53;
        v39(v35, v53);
        v41 = [v34 constraintEqualToConstant:v38];

        *(v26 + 48) = v41;
        v42 = [v18 heightAnchor];
        UIListContentConfiguration.imageProperties.getter();
        UIListContentConfiguration.ImageProperties.reservedLayoutSize.getter();
        v44 = v43;
        v39(v35, v40);
        v45 = [v42 constraintEqualToConstant:v44];

        *(v26 + 56) = v45;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v47 activateConstraints:isa];

        (*(v54 + 8))(v36, v8);
        v48[v50] = 1;
      }

      else
      {
        (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
      v16 = v57;
    }
  }
}

uint64_t sub_100236350(uint64_t a1)
{
  v3 = sub_10007EBC0(&unk_1006B77C0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v29 - v18;
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  UITableViewCell.backgroundConfiguration.getter();
  if ((*(v10 + 48))(v8, 1, v9))
  {
    return sub_100012DF0(v8, &unk_1006B77C0);
  }

  v23 = *(v10 + 16);
  v32 = v10 + 16;
  v33 = v1;
  v31 = v23;
  v23(v13, v8, v9);
  sub_100012DF0(v8, &unk_1006B77C0);
  v24 = type metadata accessor for UICellConfigurationState();
  v34[3] = v24;
  v34[4] = &protocol witness table for UICellConfigurationState;
  v25 = sub_100008FC0(v34);
  (*(*(v24 - 8) + 16))(v25, a1, v24);
  UIBackgroundConfiguration.updated(for:)();
  v30 = *(v10 + 8);
  v30(v13, v9);
  sub_100006060(v34);
  v26 = *(v10 + 32);
  v26(v19, v16, v9);
  v26(v21, v19, v9);
  v27 = &selRef_separatorColor;
  if ((UICellConfigurationState.isHighlighted.getter() & 1) == 0 && (UICellConfigurationState.isSelected.getter() & 1) == 0)
  {
    v27 = &selRef_clearColor;
  }

  v28 = [objc_opt_self() *v27];
  UIBackgroundConfiguration.backgroundColor.setter();
  v31(v6, v21, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  UITableViewCell.backgroundConfiguration.setter();
  return (v30)(v21, v9);
}

uint64_t sub_1002366DC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = type metadata accessor for FMUnknownItemCellViewModel();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10007EBC0(&qword_1006BF780);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v21 = sub_10007EBC0(&qword_1006B7850);
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v20 - v9;
  v25 = a2;
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  v24 = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_10007EBC0(&qword_1006B7858);
  sub_100004098(&unk_1006B7860, &qword_1006B7858);
  sub_10018B6D4();
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v7, &qword_1006BF780);

  sub_10023EE8C(v22, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMUnknownItemCellViewModel);
  v13 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v14 = swift_allocObject();
  sub_10023F8F0(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FMUnknownItemCellViewModel);
  v15 = v23;
  *(v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  sub_100004098(&qword_1006B7870, &qword_1006B7850);
  v16 = v15;
  v17 = v21;
  v18 = Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v17);
  *&v16[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageCancellable] = v18;
}

uint64_t sub_100236A80(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for FMUnknownItemCellViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  sub_10023EE8C(a2, v6, type metadata accessor for FMUnknownItemCellViewModel);
  v8 = *v6;
  v9 = v7;

  *v6 = v7;
  sub_10052B9C8(v6);
  return sub_10023EEF4(v6, type metadata accessor for FMUnknownItemCellViewModel);
}

id sub_100236B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageCancellable] = 0;
  v6 = OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageContainer;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for FMTableViewCellImageContainer()) init];
  v3[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_setupCompleted] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FMUnknownItemListCellView();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id sub_100236C70(void *a1)
{
  *&v1[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageCancellable] = 0;
  v3 = OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_imageContainer;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for FMTableViewCellImageContainer()) init];
  v1[OBJC_IVAR____TtC6FindMy25FMUnknownItemListCellView_setupCompleted] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FMUnknownItemListCellView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100236D3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMUnknownItemListCellView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100236EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMUnknownItemCellViewModel();
  v65 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v51 - v8;
  v66 = type metadata accessor for UUID();
  v58 = *(v66 - 8);
  v9 = __chkstk_darwin(v66);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v51 - v11;
  v12 = sub_10007EBC0(&qword_1006B77A0);
  v13 = __chkstk_darwin(v12 - 8);
  result = __chkstk_darwin(v13);
  v17 = &v51 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v60 = v16;
  v56 = v7;
  v18 = 0;
  v54 = a1;
  v19 = *(a1 + 64);
  v51 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v52 = v23;
  v53 = v58 + 16;
  v61 = &v51 - v15;
  v62 = (v58 + 32);
  v55 = (v58 + 8);
  while (v22)
  {
    v63 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v30 = v54;
    v32 = v57;
    v31 = v58;
    v33 = v66;
    (*(v58 + 16))(v57, *(v54 + 48) + *(v58 + 72) * v24, v66);
    v34 = v64;
    sub_10023EE8C(*(v30 + 56) + *(v65 + 72) * v24, v64, type metadata accessor for FMUnknownItemCellViewModel);
    v35 = sub_10007EBC0(&qword_1006B77A8);
    v36 = *(v35 + 48);
    v37 = *(v31 + 32);
    v27 = v60;
    v37(v60, v32, v33);
    sub_10023F8F0(v34, v27 + v36, type metadata accessor for FMUnknownItemCellViewModel);
    (*(*(v35 - 8) + 56))(v27, 0, 1, v35);
    v17 = v61;
    v23 = v52;
LABEL_17:
    sub_10023EE1C(v27, v17);
    v38 = sub_10007EBC0(&qword_1006B77A8);
    v39 = (*(*(v38 - 8) + 48))(v17, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = v59;
    v43 = v66;
    (*v62)(v59, v17, v66);
    v44 = &v17[v41];
    v45 = v56;
    sub_10023F8F0(v44, v56, type metadata accessor for FMUnknownItemCellViewModel);
    v46 = sub_1001B3964(v42);
    LOBYTE(v41) = v47;
    (*v55)(v42, v43);
    if ((v41 & 1) == 0)
    {
      sub_10023EEF4(v45, type metadata accessor for FMUnknownItemCellViewModel);
      return 0;
    }

    v48 = v64;
    sub_10023EE8C(*(a2 + 56) + *(v65 + 72) * v46, v64, type metadata accessor for FMUnknownItemCellViewModel);
    v49 = sub_10010BF14(v48, v45);
    sub_10023EEF4(v48, type metadata accessor for FMUnknownItemCellViewModel);
    result = sub_10023EEF4(v45, type metadata accessor for FMUnknownItemCellViewModel);
    v17 = v61;
    v22 = v63;
    if ((v49 & 1) == 0)
    {
      return v40;
    }
  }

  if (v23 <= v18 + 1)
  {
    v25 = v18 + 1;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 - 1;
  v27 = v60;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v50 = sub_10007EBC0(&qword_1006B77A8);
      (*(*(v50 - 8) + 56))(v27, 1, 1, v50);
      v63 = 0;
      v18 = v26;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v18;
    if (v29)
    {
      v63 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100237460(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    sub_1001C2758(*(*(v2 + 48) + v11));
    if (v13)
    {

      v15 = sub_100244134(v14, v12);

      if (v15)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002375E8(void *a1)
{
  swift_beginAccess();
  v3 = a1[3];
  swift_beginAccess();
  v1[3] = v3;

  swift_beginAccess();
  v4 = a1[2];
  swift_beginAccess();
  v1[2] = v4;

  swift_beginAccess();
  v5 = a1[4];
  swift_beginAccess();
  v1[4] = v5;
}

uint64_t sub_1002376E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100237738(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = "Unknown section!";
    v2 = 0xD000000000000032;
  }

  else
  {
    v2 = 0xD000000000000038;
    v1 = "_DETECTED_NEAR_YOU";
  }

  v3 = [objc_opt_self() mainBundle];
  v9._object = 0x8000000100579A00;
  v4._object = (v1 | 0x8000000000000000);
  v5.value._object = 0x80000001005799E0;
  v9._countAndFlagsBits = 0xD000000000000018;
  v4._countAndFlagsBits = v2;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t *sub_100237834@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int sub_100237868()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMUnknownItemsListDataSource.Entry(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10023EE8C(v1, v8, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v9 = sub_10007EBC0(&qword_1006B76D0);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    Hasher._combine(_:)(v11);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(0);
    sub_10023EF54(&unk_1006C2410, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_100237A90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023EE8C(v0, v7, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v8 = sub_10007EBC0(&qword_1006B76D0);
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    Hasher._combine(_:)(v10);
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    Hasher._combine(_:)(0);
    sub_10023EF54(&unk_1006C2410, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }
}

Swift::Int sub_100237C90()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10023EE8C(v1, v8, type metadata accessor for FMUnknownItemsListDataSource.Entry);
  v9 = sub_10007EBC0(&qword_1006B76D0);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    Hasher._combine(_:)(v11);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    Hasher._combine(_:)(0);
    sub_10023EF54(&unk_1006C2410, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

void sub_100237EB8()
{
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4D08);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(v2 + qword_1006B7568))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v2 + qword_1006B7568))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_100005B4C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "FMUnknownItemsListDataSource: isUpdating: %s", v4, 0xCu);
    sub_100006060(v5);
  }
}

id sub_100238044(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v49) = a3;
  v45 = a2;
  v46 = a1;
  v52 = type metadata accessor for FMIPUnknownItem();
  v40 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UUID();
  v41 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = qword_1006B7520;
  type metadata accessor for FMIPUnknownAccessoryDiscoveryController();
  swift_allocObject();
  *(v3 + v11) = FMIPUnknownAccessoryDiscoveryController.init()();
  v44 = qword_1006B7528;
  v43 = sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.unspecified.getter();
  v53 = _swiftEmptyArrayStorage;
  sub_10023EF54(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v48);
  v12 = v46;
  *(v3 + v44) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + qword_1006B7548) = 0;
  swift_unknownObjectWeakInit();
  v13 = v3 + qword_1006B7558;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v3 + qword_1006B7560) = 0;
  *(v3 + qword_1006B7568) = 0;
  v14 = (v3 + qword_1006B7570);
  type metadata accessor for FMUnknownItemsListDataSource.ViewModel();
  *v14 = 0;
  v14[1] = 0;
  v15 = swift_allocObject();
  v15[2] = sub_100153C5C(_swiftEmptyArrayStorage);
  v15[3] = sub_100153E78(_swiftEmptyArrayStorage);
  v16 = sub_100153FB4(_swiftEmptyArrayStorage);
  *(v3 + qword_1006B7540) = v49 & 1;
  *(v3 + qword_1006B7510) = v12;
  v15[4] = v16;
  *(v3 + qword_1006B7530) = v15;
  *(v3 + qword_1006B7518) = *(v12 + 64);

  v17 = FMIPManager.unknownItems.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v43 = v15;
    v44 = v3;
    v53 = _swiftEmptyArrayStorage;
    sub_10016748C(0, v18, 0);
    v19 = v41;
    v20 = v53;
    v21 = v40 + 16;
    v22 = *(v40 + 16);
    v23 = *(v40 + 80);
    v40 = v17;
    v24 = v17 + ((v23 + 32) & ~v23);
    v48 = *(v21 + 56);
    v49 = v22;
    v25 = (v21 - 8);
    v47 = (v41 + 32);
    v26 = v21;
    v27 = v42;
    do
    {
      v28 = v51;
      v29 = v52;
      v30 = v26;
      v49(v51, v24, v52);
      FMIPUnknownItem.identifier.getter();
      (*v25)(v28, v29);
      v53 = v20;
      v32 = v20[2];
      v31 = v20[3];
      if (v32 >= v31 >> 1)
      {
        sub_10016748C(v31 > 1, v32 + 1, 1);
        v20 = v53;
      }

      v20[2] = v32 + 1;
      (*(v19 + 32))(v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v32, v27, v50);
      v24 += v48;
      --v18;
      v26 = v30;
    }

    while (v18);

    v33 = v45;
    v4 = v44;
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
    v33 = v45;
  }

  *(v4 + qword_1006B7538) = v20;

  v34 = v33;
  v35 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  sub_100239AEC();
  sub_100239920(v34);
  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  [v37 addObserver:v35 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v38 = [v36 defaultCenter];
  [v38 addObserver:v35 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  return v35;
}

uint64_t sub_100238754()
{

  sub_10005CD20(v0 + qword_1006B7550);
  v1 = *(v0 + qword_1006B7570);

  return sub_10001835C(v1);
}

id sub_100238808()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  [v9 removeObserver:v1 name:UIApplicationDidEnterBackgroundNotification object:0];

  v10 = [v8 defaultCenter];
  v16 = v1;
  [v10 removeObserver:v1 name:UIApplicationWillEnterForegroundNotification object:0];

  v11 = *&v1[qword_1006B7510];
  sub_10000905C(0, &qword_1006AEDC0);

  v12 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10023F884;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006309C0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10023EF54(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v4, v2);
  (*(v17 + 8))(v7, v18);
  v14 = type metadata accessor for FMUnknownItemsListDataSource(0);
  v20.receiver = v16;
  v20.super_class = v14;
  return objc_msgSendSuper2(&v20, "dealloc");
}