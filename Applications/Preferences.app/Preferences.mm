int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_10000395C();
  objc_autoreleasePoolPop(v3);
  type metadata accessor for SettingsApp();
  sub_100003E98(&qword_10015E1E8, type metadata accessor for SettingsApp);
  static App.main()();
  return 0;
}

uint64_t sub_10000395C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v0 - 8);
  v1 = *(v18 + 64);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CAC();
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.userInteractive(_:), v8);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  aBlock[4] = sub_1000042B8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_10014FF78;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[7] = &_swiftEmptyArrayStorage;
  sub_100003E98(&unk_10015ED90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004DED0(&qword_10015D718, &qword_1001141C8);
  sub_100003EE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v17);
}

unint64_t sub_100003CAC()
{
  result = qword_10015C9D0;
  if (!qword_10015C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015C9D0);
  }

  return result;
}

uint64_t sub_100003CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003DC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003E98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100003EE0()
{
  result = qword_10015EDA0;
  if (!qword_10015EDA0)
  {
    sub_100052374(&qword_10015D718, &qword_1001141C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EDA0);
  }

  return result;
}

uint64_t type metadata accessor for SettingsApp()
{
  result = qword_10015AEE8;
  if (!qword_10015AEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003F90()
{
  sub_100004168(319, &qword_10015AEF8, type metadata accessor for SettingsApplicationDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v0 <= 0x3F)
  {
    sub_100004168(319, &qword_10015AF00, type metadata accessor for SettingsAppLaunchActions, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SettingsAppSearchIndexManager();
      if (v2 <= 0x3F)
      {
        sub_100004168(319, &qword_10015AF08, &type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100004168(319, &unk_10015AF10, type metadata accessor for SettingsAppModel, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100004124(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100004168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SettingsApplicationDelegate()
{
  result = qword_10015D398;
  if (!qword_10015D398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004218()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000042B8()
{
  v0 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v18 = *(v4 - 8);
  v19 = v4;
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AA10 != -1)
  {
    swift_once();
  }

  sub_100005430();

  sub_10004DED0(&qword_10015E1F0, &qword_1001152F8);
  v13 = *(type metadata accessor for Tips.ConfigurationOption() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_1001103E0;
  static Tips.ConfigurationOption.DisplayFrequency.system.getter();
  static Tips.ConfigurationOption.displayFrequency(_:)();
  (*(v9 + 8))(v12, v8);
  static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v18 + 8))(v7, v19);
  static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
  static Tips.ConfigurationOption.analyticsEngine(_:)();
  (*(v20 + 8))(v3, v21);
  static Tips.configure(_:)();
}

uint64_t type metadata accessor for SettingsAppLaunchActions()
{
  result = qword_10015B120;
  if (!qword_10015B120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004740()
{
  result = type metadata accessor for ObservationRegistrar();
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

id sub_1000047F4()
{
  result = [objc_allocWithZone(type metadata accessor for CellularNotificationRelay()) init];
  qword_100169570 = result;
  return result;
}

char *sub_100004824()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (PSIsInEDUMode())
  {
    goto LABEL_5;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  cellularDataCapability = MobileGestalt_get_cellularDataCapability();

  if (!cellularDataCapability)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    sub_100003CAC();
    v6 = static OS_dispatch_queue.main.getter();
    v7 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v6];
  }

  *&v1[OBJC_IVAR____TtC11SettingsApp25CellularNotificationRelay_telephonyClient] = v7;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");
  v9 = *&v8[OBJC_IVAR____TtC11SettingsApp25CellularNotificationRelay_telephonyClient];
  if (v9)
  {
    [v9 setDelegate:v8];
  }

  return v8;
}

uint64_t type metadata accessor for SettingsAppModel()
{
  result = qword_10015B1E0;
  if (!qword_10015B1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004984()
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_100004A34(uint64_t a1@<X8>)
{
  type metadata accessor for SettingsApplicationDelegate();
  sub_100004C44(&qword_10015AF50, type metadata accessor for SettingsApplicationDelegate);
  UIApplicationDelegateAdaptor<>.init(_:)();
  v2 = type metadata accessor for SettingsApp();
  v3 = (a1 + v2[5]);
  v4 = type metadata accessor for SettingsAppLaunchActions();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_100004CF4();
  State.init(wrappedValue:)();
  *v3 = v18;
  v3[1] = v19;
  v7 = v2[6];
  type metadata accessor for SettingsAppSearchIndexManager();
  swift_allocObject();
  *(a1 + v7) = sub_10007F360();
  v8 = (a1 + v2[7]);
  v9 = type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)();
  State.init(wrappedValue:)();
  *v8 = v18;
  v8[1] = v19;
  v12 = (a1 + v2[8]);
  v13 = type metadata accessor for SettingsAppModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_100054064();
  State.init(wrappedValue:)();
  *v12 = v18;
  v12[1] = v19;
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  [v16 removeObjectForKey:v17];
}

uint64_t sub_100004C44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004CF4()
{
  v0 = type metadata accessor for IntentDonationSettingsNavigationEventResponder();
  v1 = *(v0 - 8);
  v47 = v0;
  v48 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v45 - v10;
  ObservationRegistrar.init()();
  v12 = objc_opt_self();
  v13 = [v12 appearance];
  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  [v13 setTextColor:v15];

  v16 = [v12 appearance];
  v17 = [v14 secondaryLabelColor];
  [v16 setAltTextColor:v17];

  v18 = [v12 appearance];
  v19 = [v14 placeholderTextColor];
  [v18 setEditablePlaceholderTextColor:v19];

  v20 = [v12 appearance];
  v21 = [v14 labelColor];
  [v20 setEditableTextColor:v21];

  v22 = [v12 appearance];
  v23 = [v14 linkColor];
  [v22 setButtonTextColor:v23];

  v24 = [v12 appearance];
  v25 = [v14 linkColor];
  [v24 setFooterHyperlinkColor:v25];

  v26 = [v12 appearance];
  v27 = [v14 systemGroupedBackgroundColor];
  [v26 setBackgroundColor:v27];

  v28 = [v12 appearance];
  v29 = [v14 secondarySystemGroupedBackgroundColor];
  [v28 setForegroundColor:v29];

  v30 = [v12 appearance];
  v31 = [v14 separatorColor];
  [v30 setSeparatorColor:v31];

  type metadata accessor for PreferencesListControllerNavigationCoordinator();
  [v12 registerDefaultNavigationCoordinatorClass:swift_getObjCClassFromMetadata()];
  v32 = objc_opt_self();
  type metadata accessor for PreferencesControllerNavigationCoordinator();
  [v32 registerDefaultNavigationCoordinatorClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for PreferencesListControllerSpecifierActionCoordinator();
  [v12 registerDefaultSpecifierActionCoordinatorClass:swift_getObjCClassFromMetadata()];
  v33 = objc_opt_self();
  v34 = [v33 standardUserDefaults];
  static URL.libraryDirectory.getter();
  URL.appendingPathComponent(_:)();
  v35 = *(v5 + 8);
  v35(v9, v4);
  URL.path.getter();
  v35(v11, v4);
  v36 = String._bridgeToObjectiveC()();

  [v34 setObject:v36 forKey:WebStorageDirectoryDefaultsKey];

  v37 = [v33 standardUserDefaults];
  static URL.libraryDirectory.getter();
  URL.appendingPathComponent(_:)();
  v35(v9, v4);
  URL.path.getter();
  v35(v11, v4);
  v38 = String._bridgeToObjectiveC()();

  [v37 setObject:v38 forKey:WebDatabaseDirectoryDefaultsKey];

  aBlock[4] = sub_100082600;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000528E0;
  aBlock[3] = &unk_10014D538;
  v39 = _Block_copy(aBlock);
  v40 = imp_implementationWithBlock(v39);
  sub_1000066A8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  class_addMethod(ObjCClassFromMetadata, "rootController", v40, 0);
  _Block_release(v39);
  type metadata accessor for SettingsEventCenter();
  static SettingsEventCenter.default.getter();
  static IntentDonationSettingsNavigationEventResponder.defaultPlatformSettingsHostApplicationBundleIdentifier.getter();
  v42 = v46;
  IntentDonationSettingsNavigationEventResponder.init(settingsHostApplicationBundleIdentifier:)();
  v43 = v47;
  SettingsEventCenter.addResponder<A>(_:)();

  (*(v48 + 8))(v42, v43);
  return v45;
}

uint64_t sub_100005430()
{
  v0 = type metadata accessor for OSSignpostID();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v9 = sub_10000659C(v4, qword_100169718);
  (*(v5 + 16))(v8, v9, v4);
  static OSSignpostID.exclusive.getter();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  v23 = v4;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "static ManagedConfigurationStateProvider.produceManagedConfigurationStateSnapshot()", "", v10, 2u);
  sub_100005720(v26);
  v14 = static os_signpost_type_t.end.getter();
  v15 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v14, v15, "static ManagedConfigurationStateProvider.produceManagedConfigurationStateSnapshot()", "", v10, 2u);

  v16 = v26[0];
  v17 = v26[1];
  v18 = v26[2];

  (*(v24 + 8))(v3, v25);
  (*(v5 + 8))(v8, v23);
  if (v17)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v16;
  if (v18)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = 0;
  }

  return v20 | v21;
}

uint64_t sub_100005720@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = result;
  v4 = [result isMultiUser];

  v5 = objc_opt_self();
  result = [v5 sharedConnection];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = result;
  v7 = [result isSupervised];

  result = [v5 sharedConnection];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = result;
  v25 = v7;
  v9 = [result isPasscodeSet];

  result = [v5 sharedConnection];
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = result;
  v11 = [result effectiveBlockedAppBundleIDs];

  if (!v11 || (v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v11, v13 = sub_10001EC8C(v12), , !v13))
  {

    v13 = &_swiftEmptySetSingleton;
  }

  result = [v5 sharedConnection];
  if (!result)
  {
    goto LABEL_28;
  }

  v14 = result;
  v15 = [result effectiveWhitelistedAppBundleIDs];

  if (!v15 || (v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v15, v17 = sub_10001EC8C(v16), , !v17))
  {

    v17 = &_swiftEmptySetSingleton;
  }

  v29 = &_swiftEmptySetSingleton;
  result = [v5 sharedConnection];
  if (result)
  {
    v18 = result;
    v19 = [result effectiveUserSettings];

    if (v19)
    {
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      if (*(v20 + 16))
      {
        v21 = sub_100017DC0(v26);
        if (v22)
        {
          sub_10001EE30(*(v20 + 56) + 32 * v21, &v27);
          sub_100017E04(v26);

          if (*(&v28 + 1))
          {
            sub_10004DED0(&qword_10015C8D8, &unk_100112B40);
            result = swift_dynamicCast();
            if (result)
            {
              v23 = sub_10001EE8C(v26[0]);

              sub_100017E58(v23);

              v24 = v29;
LABEL_23:
              *a1 = v4;
              *(a1 + 1) = v25;
              *(a1 + 2) = v9;
              *(a1 + 8) = v24;
              *(a1 + 16) = v13;
              *(a1 + 24) = v17;
              return result;
            }

LABEL_22:
            v24 = &_swiftEmptySetSingleton;
            goto LABEL_23;
          }

LABEL_21:
          result = sub_1000068B0(&v27, &qword_10015C8D0, &unk_100116750);
          goto LABEL_22;
        }
      }

      sub_100017E04(v26);
    }

    v27 = 0u;
    v28 = 0u;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100005B08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    sub_10001EE30(*(a3 + 56) + 32 * v13, v23);
    sub_10001EE30(v23, v21);
    sub_10004DED0(&qword_10015C8D8, &unk_100112B40);
    if (!swift_dynamicCast())
    {
      goto LABEL_5;
    }

    v14 = v22[0];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (!*(v14 + 16) || (v15 = sub_100017DC0(v21), (v16 & 1) == 0))
    {

      sub_100017E04(v21);
      goto LABEL_5;
    }

    sub_10001EE30(*(v14 + 56) + 32 * v15, v22);
    sub_100017E04(v21);

    if (swift_dynamicCast())
    {
      result = sub_10000665C(v23);
      if ((v20 & 1) == 0)
      {
        *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_100005D38(v19, a2, v24, a3);
        }
      }
    }

    else
    {
LABEL_5:
      result = sub_10000665C(v23);
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
      return sub_100005D38(v19, a2, v24, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100005D38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10004DED0(&qword_10015C8F0, &qword_100112B58);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_1000069D8(*(v4 + 48) + 40 * v16, v33);
    sub_10001EE30(*(v4 + 56) + 32 * v16, v32);
    v29 = v33[0];
    v30 = v33[1];
    v31 = v34;
    sub_10001EFEC(v32, v28);
    result = AnyHashable._rawHashValue(seed:)(*(v9 + 40));
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v9 + 48) + 40 * v20;
    v26 = v30;
    *v25 = v29;
    *(v25 + 16) = v26;
    *(v25 + 32) = v31;
    result = sub_10001EFEC(v28, (*(v9 + 56) + 32 * v20));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100005F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015C8E8, &qword_100112B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006000(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10004DED0(&qword_10015C8E0, &qword_100112488);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

unint64_t sub_10000631C()
{
  result = qword_10015EEC0;
  if (!qword_10015EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EEC0);
  }

  return result;
}

unint64_t sub_100006398()
{
  result = qword_10015D9C8;
  if (!qword_10015D9C8)
  {
    sub_100052374(&unk_10015D9A8, &qword_100114320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D9C8);
  }

  return result;
}

uint64_t sub_1000063FC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  sub_100006538(v5, qword_100169718);
  sub_10000659C(v5, qword_100169718);
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000659C(v0, qword_100169700);
  (*(v1 + 16))(v4, v6, v0);
  return OSSignposter.init(logger:)();
}

uint64_t *sub_100006538(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000659C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000065D4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100006538(v3, a2);
  sub_10000659C(v3, a2);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000665C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000066A8()
{
  result = qword_10015B1A8;
  if (!qword_10015B1A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015B1A8);
  }

  return result;
}

const char *sub_1000066F4()
{
  v1 = *v0;
  v2 = "DeviceOSExpert";
  v3 = "AppleMediaServices";
  v4 = "CoreTelephony";
  if (v1 != 5)
  {
    v4 = "SettingsApp";
  }

  if (v1 != 4)
  {
    v3 = v4;
  }

  if ((v1 - 1) < 3)
  {
    v2 = "ForSettingsAppOnlyDoNotUseGenerallyAsASourceOfTruth";
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *sub_100006770()
{
  v1 = *v0;
  v2 = "SemanticSearch";
  v3 = "EmperorPenguin";
  if (v1 != 5)
  {
    v3 = "StrictNavigation";
  }

  v4 = "ForceInternalSettingsHidden";
  if (v1 != 3)
  {
    v4 = "Atlas";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "ForceDeveloperSettingsHidden";
  if (v1 != 1)
  {
    v5 = "ForceCarrierSettingsHidden";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100006868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000068B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10004DED0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100006910(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000069D8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100017E04(v8);
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

Swift::Int sub_100006A34(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001F14C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100069318();
      goto LABEL_16;
    }

    sub_100006000(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100006BD8()
{
  sub_1000074A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SettingsAppDetailContent.ContentType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100006C5C()
{
  type metadata accessor for SettingsAnyPlatformViewControllerModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PreferencesControllerRepresentableModel();
    if (v1 <= 0x3F)
    {
      sub_100006CE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100006CE4()
{
  if (!qword_10015E488)
  {
    type metadata accessor for SettingsPaneRecipe();
    type metadata accessor for SettingsExperienceContentCoordinator();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10015E488);
    }
  }
}

void sub_100006D54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

ValueMetadata *sub_100006DE8()
{
  result = qword_100161320;
  if (!qword_100161320)
  {
    result = &type metadata for PrimarySettingsListItemIdentifier;
    atomic_store(&type metadata for PrimarySettingsListItemIdentifier, &qword_100161320);
  }

  return result;
}

uint64_t type metadata accessor for EngagementLinkData()
{
  result = qword_1001614A8;
  if (!qword_1001614A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006E64()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100006EE0()
{
  if (!qword_10015BFB8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10015BFB8);
    }
  }
}

double sub_100006F30()
{
  v0 = type metadata accessor for SettingsAppDetailContent(0);
  sub_100006538(v0, qword_1001697A0);
  v1 = sub_10000659C(v0, qword_1001697A0);
  v2 = *(v0 + 20);
  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = -1;
  return result;
}

uint64_t sub_100006FA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100007000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SettingsURLDestination.Action(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_100007108()
{
  result = qword_10015B040;
  if (!qword_10015B040)
  {
    sub_100052374(&qword_10015B038, &qword_100116910);
    sub_100004C44(&qword_10015B048, type metadata accessor for SettingsSearchZeroKeywordListRecentItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B040);
  }

  return result;
}

uint64_t type metadata accessor for SettingsAppNavigationModel()
{
  result = qword_10015EBD0;
  if (!qword_10015EBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100007208()
{
  v0 = type metadata accessor for NavigationPath();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SettingsAppDetailContent(319);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_100006D54(319, &qword_10015EBE0, type metadata accessor for SettingsURLDestination);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_100006D54(319, &qword_10015EBE8, &type metadata accessor for UserInterfaceSizeClass);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_100006D54(319, &unk_10015EBF0, &type metadata accessor for ScenePhase);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            v10 = type metadata accessor for ObservationRegistrar();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100007468(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000074A0()
{
  if (!qword_10015E3D8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10015E3D8);
    }
  }
}

void sub_100007510()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SettingsURLDestination.Action(319);
    if (v1 <= 0x3F)
    {
      sub_1000077BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000075AC()
{
  sub_1000076C8();
  if (v0 <= 0x3F)
  {
    sub_100006DE8();
    if (v1 <= 0x3F)
    {
      sub_1000076F8(319, &qword_100161328, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_1000076F8(319, &qword_100161330, &type metadata accessor for URL);
        if (v3 <= 0x3F)
        {
          sub_1000076F8(319, &qword_100161338, type metadata accessor for EngagementLinkData);
          if (v4 <= 0x3F)
          {
            sub_100007744();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_1000076C8()
{
  result = qword_100161318;
  if (!qword_100161318)
  {
    result = &type metadata for SettingsAppPresentableItemIdentifier;
    atomic_store(&type metadata for SettingsAppPresentableItemIdentifier, &qword_100161318);
  }

  return result;
}

void sub_1000076F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100007744()
{
  if (!qword_100161340)
  {
    sub_100052374(&qword_10015E900, &qword_100114A50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100161340);
    }
  }
}

void sub_1000077BC()
{
  if (!qword_100161260)
  {
    type metadata accessor for URLQueryItem();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100161260);
    }
  }
}

uint64_t sub_100007814()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015EA50, &unk_100115F90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v70 = v57 - v4;
  v5 = sub_10004DED0(&qword_10015ED30, &unk_100115D30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v57 - v7;
  v67 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v63 = *(v67 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v67);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DED0(&qword_10015ED38, &qword_100115FA0);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  __chkstk_darwin(v12);
  v71 = v57 - v14;
  v15 = sub_10004DED0(&qword_10015ED40, &qword_100115FA8);
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = *(v68 + 64);
  __chkstk_darwin(v15);
  v66 = v57 - v17;
  v18 = type metadata accessor for NavigationPath();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SettingsOmniSearchViewModel();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0xE000000000000000;
  v27 = sub_1000BA3B8(&_swiftEmptyArrayStorage);
  *(v26 + 40) = &_swiftEmptyArrayStorage;
  *(v26 + 48) = v27;
  ObservationRegistrar.init()();
  *(v1 + 16) = v26;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  NavigationPath.init()();
  (*(v19 + 32))(v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath, v22, v18);
  if (qword_10015AB18 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for SettingsAppDetailContent(0);
  v29 = sub_10000659C(v28, qword_1001697A0);
  sub_10000822C(v29, v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__detailContent, type metadata accessor for SettingsAppDetailContent);
  v30 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  v31 = type metadata accessor for SettingsURLDestination(0);
  v32 = *(*(v31 - 8) + 56);
  v32(v1 + v30, 1, 1, v31);
  v32(v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_currentlyInProgressURLDestination, 1, 1, v31);
  v33 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_cleanupCurrentlyInProgressURLDestinationSubject;
  v34 = sub_10004DED0(&unk_10015ED48, &qword_100115FB0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *(v1 + v33) = PassthroughSubject.init()();
  v62 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_observer;
  *(v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_observer) = 0;
  v37 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__horizontalSizeClass;
  v38 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v38 - 8) + 56))(v1 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__scenePhase;
  v40 = type metadata accessor for ScenePhase();
  (*(*(v40 - 8) + 56))(v1 + v39, 1, 1, v40);
  ObservationRegistrar.init()();
  [objc_opt_self() registerApplicationURLStateProvider:v1];
  v73 = *(v1 + OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_cleanupCurrentlyInProgressURLDestinationSubject);

  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v61 = objc_opt_self();
  v41 = [v61 mainRunLoop];
  v72 = v41;
  v42 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v43 = *(v42 - 8);
  v59 = *(v43 + 56);
  v60 = v43 + 56;
  v59(v8, 1, 1, v42);
  v57[1] = sub_100008294(0, &unk_10015EA70, NSRunLoop_ptr);
  sub_1000525A0(&unk_10015ED58, &unk_10015ED48, &qword_100115FB0);
  v57[0] = sub_1000082DC();
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000068B0(v8, &qword_10015ED30, &unk_100115D30);

  v44 = v63;
  v58 = *(v63 + 8);
  v45 = v67;
  v58(v11, v67);

  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v46 = v70;
  (*(v44 + 56))(v70, 1, 1, v45);
  v47 = [v61 mainRunLoop];
  v73 = v47;
  v59(v8, 1, 1, v42);
  sub_1000525A0(&qword_10015ED68, &qword_10015ED38, &qword_100115FA0);
  v49 = v65;
  v48 = v66;
  v50 = v71;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000068B0(v8, &qword_10015ED30, &unk_100115D30);

  sub_1000068B0(v46, &qword_10015EA50, &unk_100115F90);
  v58(v11, v45);
  (*(v64 + 8))(v50, v49);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1000BA4B4;
  *(v52 + 24) = v51;
  sub_1000525A0(&qword_10015ED70, &qword_10015ED40, &qword_100115FA8);
  v53 = v69;
  v54 = Publisher<>.sink(receiveValue:)();

  (*(v68 + 8))(v48, v53);
  v55 = *(v1 + v62);
  *(v1 + v62) = v54;

  return v1;
}

uint64_t sub_1000080C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000080FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for SettingsOmniSearchViewModel()
{
  result = qword_100161118;
  if (!qword_100161118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008184()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10000822C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100008294(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1000082DC()
{
  result = qword_10015EA80;
  if (!qword_10015EA80)
  {
    sub_100008294(255, &unk_10015EA70, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EA80);
  }

  return result;
}

uint64_t type metadata accessor for SettingsNavigationSplitView()
{
  result = qword_10015F078;
  if (!qword_10015F078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008390()
{
  sub_10000856C(319, &qword_10015F088, &qword_10015B2A0, &qword_10010FCB0);
  if (v0 <= 0x3F)
  {
    sub_10000856C(319, &qword_10015F090, &qword_10015B2A8, qword_10010FCB8);
    if (v1 <= 0x3F)
    {
      sub_1000BBDB4(319, &qword_10015F098, &type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000BBDB4(319, &qword_10015F0A0, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1000BBDB4(319, &qword_10015B9B0, type metadata accessor for SettingsAppModel, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1000BBDB4(319, &unk_10015F0A8, type metadata accessor for SettingsAppNavigationModel, &type metadata accessor for Bindable);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10000856C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100052374(a3, a4);
    v5 = type metadata accessor for SettingsAppDependency();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100008608()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for SettingsSearchZeroKeywordListRecentItem()
{
  result = qword_10015D568;
  if (!qword_10015D568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000086AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100008700()
{
  sub_1000086AC(319, &qword_10015B9B0, type metadata accessor for SettingsAppModel);
  if (v0 <= 0x3F)
  {
    sub_1000086AC(319, &qword_10015D578, &type metadata accessor for LayoutDirection);
    if (v1 <= 0x3F)
    {
      sub_1000086AC(319, &unk_10015D580, &type metadata accessor for Locale);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SettingsNavigationEventRecord();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100008824()
{
  sub_100052374(&qword_10015AF60, &qword_10010F950);
  sub_100052374(&qword_10015AFC0, &qword_10010F988);
  sub_100052374(&qword_10015AF58, &qword_10010F948);
  type metadata accessor for SettingsAppModel();
  sub_1000525A0(&qword_10015AFB0, &qword_10015AF58, &qword_10010F948);
  sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015AFC8, &qword_10015AFC0, &qword_10010F988);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100008A30()
{
  v1 = v0;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    [result registerObserver:v1];

    v4 = objc_opt_self();
    v5 = [v4 defaultCenter];
    v6 = objc_opt_self();
    v7 = [v6 mainQueue];
    v26 = sub_100045888;
    v27 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100045794;
    v25 = &unk_10014F398;
    v8 = _Block_copy(&v22);
    v9 = [v5 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v7 usingBlock:v8];
    _Block_release(v8);

    v10 = OBJC_IVAR____TtC11SettingsApp27SettingsApplicationDelegate_observationTokens;
    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v11 = [v4 defaultCenter];
    v12 = [v6 mainQueue];
    v26 = sub_100045DCC;
    v27 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100045794;
    v25 = &unk_10014F3C0;
    v13 = _Block_copy(&v22);
    v14 = [v11 addObserverForName:UIApplicationWillResignActiveNotification object:0 queue:v12 usingBlock:v13];
    _Block_release(v13);

    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v15 = [v4 defaultCenter];
    v16 = [v6 mainQueue];
    v26 = sub_1000772C8;
    v27 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100045794;
    v25 = &unk_10014F3E8;
    v17 = _Block_copy(&v22);
    v18 = [v15 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v16 usingBlock:v17];
    _Block_release(v17);

    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((*(v1 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008EF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for SettingsApp();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10004DED0(&qword_10015AF58, &qword_10010F948);
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = sub_10004DED0(&qword_10015AF60, &qword_10010F950);
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v50 = &v48 - v14;
  v15 = sub_10004DED0(&qword_10015AF68, &qword_10010F958);
  v16 = *(v15 - 8);
  v55 = v15;
  v56 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v51 = &v48 - v18;
  sub_1000095A8(v2, &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_10000960C(&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v48 = sub_10004DED0(&qword_10015AF70, &qword_10010F960);
  v21 = sub_100052374(&qword_10015AF78, &qword_10010F968);
  v22 = type metadata accessor for SettingsOmniSearchViewModel();
  v23 = sub_100052374(&qword_10015AF80, &qword_10010F970);
  v24 = type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  v25 = sub_100052374(&qword_10015AF88, &qword_10010F978);
  v26 = type metadata accessor for SettingsNavigationSplitView();
  v27 = sub_100004C44(&qword_10015AF90, type metadata accessor for SettingsNavigationSplitView);
  v59 = v26;
  v60 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v25;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_100004C44(&qword_10015AF98, &type metadata accessor for SettingsZeroKeywordNavigationItemsProvider);
  v59 = v23;
  v60 = v24;
  v61 = v29;
  v62 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  v59 = v21;
  v60 = v22;
  v61 = v31;
  v62 = v32;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  v33 = v49;
  v34 = (v49 + *(v4 + 40));
  v36 = *v34;
  v35 = v34[1];
  v59 = v36;
  v60 = v35;
  sub_10004DED0(&qword_10015AFA8, &qword_10010F980);
  State.wrappedValue.getter();
  v37 = type metadata accessor for SettingsAppModel();
  v38 = sub_1000525A0(&qword_10015AFB0, &qword_10015AF58, &qword_10010F948);
  v39 = sub_100004C44(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  v40 = v50;
  Scene.environment<A>(_:)();

  (*(v52 + 8))(v10, v7);
  v58 = v33;
  v41 = sub_10004DED0(&qword_10015AFC0, &qword_10010F988);
  v59 = v7;
  v60 = v37;
  v61 = v38;
  v62 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_1000525A0(&qword_10015AFC8, &qword_10015AFC0, &qword_10010F988);
  v44 = v51;
  v45 = v53;
  Scene.commands<A>(content:)();
  (*(v54 + 8))(v40, v45);
  v59 = v45;
  v60 = v41;
  v61 = v42;
  v62 = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v55;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v56 + 8))(v44, v46);
}

uint64_t sub_1000095A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000960C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009670(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100009680(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100009690(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_1000097F8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000097F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10000992C, 0, 0);
}

uint64_t sub_10000992C()
{
  v1 = v0[9];
  v2 = v0[2];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10006B0E8;
  v5 = v0[9];
  v6 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v6);
}

uint64_t sub_1000099F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10004DED0(&qword_10015CB48, &unk_100113070) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000ACE4;

  return sub_10001A984(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_100009B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_10004DED0(&qword_10015CB58, &qword_100112E00);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001ABC0, 0, 0);
}

uint64_t sub_100009C48()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100021CA8;
  v6 = v0[13];
  v7 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v0 + 151, 0, 0, v7);
}

unint64_t sub_100009D50()
{
  result = qword_10015DCC8;
  if (!qword_10015DCC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10015DCC8);
  }

  return result;
}

uint64_t type metadata accessor for SettingsApplicationDebugRoot()
{
  result = qword_10015D0F0;
  if (!qword_10015D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009DEC()
{
  sub_100009EA8(319, &qword_10015DB50, &type metadata accessor for DismissAction);
  if (v0 <= 0x3F)
  {
    sub_100009EA8(319, &qword_10015B9B0, type metadata accessor for SettingsAppModel);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100009EA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for AMSEngagementSheet()
{
  result = qword_10015DB40;
  if (!qword_10015DB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009F64()
{
  sub_100052374(&qword_10015F1C0, &qword_1001164E0);
  sub_100052374(&qword_10015F370, &qword_100116668);
  sub_100052374(&qword_10015F1B8, &qword_1001164D8);
  sub_100052374(&qword_10015B028, &unk_100113980);
  sub_100052374(&qword_10015C098, &qword_100116660);
  sub_100052374(&qword_10015F1B0, &qword_1001164D0);
  sub_100052374(&qword_10015F358, &qword_100116658);
  sub_100052374(&qword_10015F1A8, &qword_1001164C8);
  sub_100052374(&qword_10015F1A0, &qword_1001164C0);
  sub_100052374(&qword_10015F330, &qword_100116640);
  sub_100052374(&qword_10015F198, &qword_1001164B8);
  sub_100052374(&qword_10015F308, &qword_100116630);
  sub_100052374(&qword_10015F190, &qword_1001164B0);
  sub_100052374(&qword_10015F2F8, &qword_100116628);
  sub_100052374(&qword_10015F188, &qword_1001164A8);
  sub_100052374(&qword_10015F2E0, &qword_100116620);
  sub_100052374(&qword_10015F180, &qword_1001164A0);
  sub_100052374(&qword_10015F2C0, &qword_100116610);
  sub_100052374(&qword_10015F178, &qword_100116498);
  sub_100052374(&qword_10015F2A0, &qword_100116600);
  sub_100052374(&qword_10015F170, &qword_100116490);
  sub_100052374(&qword_10015F168, &qword_100116488);
  sub_100052374(&qword_10015F160, &qword_100116480);
  sub_1000C329C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10000A470();
  swift_getOpaqueTypeConformance2();
  sub_10000BC18();
  swift_getOpaqueTypeConformance2();
  sub_10000BCC8();
  swift_getOpaqueTypeConformance2();
  sub_10000BD7C();
  swift_getOpaqueTypeConformance2();
  sub_10000BE74();
  swift_getOpaqueTypeConformance2();
  sub_1000C3D0C();
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  swift_getOpaqueTypeConformance2();
  sub_10000C0B4();
  swift_getOpaqueTypeConformance2();
  sub_10000A5B0();
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015F378, &qword_10015F370, &qword_100116668);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000A470()
{
  result = qword_10015F2A8;
  if (!qword_10015F2A8)
  {
    sub_100052374(&qword_10015F2A0, &qword_100116600);
    sub_1000525A0(&qword_10015F2B0, &qword_10015F2B8, &qword_100116608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F2A8);
  }

  return result;
}

uint64_t sub_10000A520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A568(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000A5B0()
{
  result = qword_10015C0A8;
  if (!qword_10015C0A8)
  {
    sub_100052374(&qword_10015C098, &qword_100116660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C0A8);
  }

  return result;
}

unint64_t sub_10000A65C()
{
  result = qword_10015DE58;
  if (!qword_10015DE58)
  {
    sub_100052374(&qword_10015DE38, &qword_100114968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DE58);
  }

  return result;
}

uint64_t sub_10000A6C0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  sub_10001AE08();
  AsyncSequence.debounce<>(for:tolerance:)();
  v4 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[15] = v4;
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  v0[6] = v4;
  v5 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v6 = v0;
  v6[1] = sub_1000676A0;

  return AsyncDebounceSequence.Iterator.next()(v0 + 18, v7);
}

uint64_t sub_10000A7FC()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10001AE80;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 23, 0, 0, 0x6C50796E41736168, 0xEB00000000736E61, sub_10000AA18, v2, &type metadata for Bool);
}

uint64_t sub_10000A924()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000AA20()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_10000AB18(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10000AE28;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001AE6C;
  aBlock[3] = &unk_10014EC88;
  v11 = _Block_copy(aBlock);

  [a2 planItemsShouldUpdate:0 completion:v11];
  _Block_release(v11);
}

uint64_t sub_10000ACEC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_100008294(0, a4, a5);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v8(v6, a3);
}

uint64_t sub_10000AD88()
{
  v1 = *(v0 + 80);

  *(v0 + 192) = *(v0 + 184);

  return _swift_task_switch(sub_10000AE34, v1, 0);
}

uint64_t sub_10000AE34()
{
  v1 = [*(v0 + 88) sharedManager];
  *(v0 + 120) = v1;
  if (!v1)
  {
    __break(1u);
  }

  return _swift_task_switch(sub_10001B1E4, 0, 0);
}

uint64_t sub_10000AEF4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004DED0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_10000AF78()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10000B0BC, 0, 0);
}

uint64_t sub_10000B0BC()
{
  v1 = *(v0 + 80);

  *(v0 + 193) = *(v0 + 185);

  return _swift_task_switch(sub_10000B15C, v1, 0);
}

uint64_t sub_10000B15C()
{
  v1 = [*(v0 + 88) sharedManager];
  *(v0 + 144) = v1;
  if (!v1)
  {
    __break(1u);
  }

  return _swift_task_switch(sub_10001BEAC, 0, 0);
}

unint64_t sub_10000B20C()
{
  result = qword_10015C7F0;
  if (!qword_10015C7F0)
  {
    sub_100052374(&qword_10015C7C0, &qword_100112AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C7F0);
  }

  return result;
}

uint64_t sub_10000B270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for SettingsAppSceneDelegate()
{
  result = qword_10015D470;
  if (!qword_10015D470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B3C4()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t type metadata accessor for PrimarySettingsList()
{
  result = qword_10015E548;
  if (!qword_10015E548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B534()
{
  sub_10000B630();
  if (v0 <= 0x3F)
  {
    sub_10000B680(319, &qword_10015E560, type metadata accessor for SettingsOmniSearchViewModel, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10000B680(319, &unk_10015E568, type metadata accessor for PrimarySettingsListModel, &type metadata accessor for Bindable);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000B630()
{
  if (!qword_10015E558)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10015E558);
    }
  }
}

void sub_10000B680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PrimarySettingsListModel()
{
  result = qword_10015E7A0;
  if (!qword_10015E7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B730()
{
  sub_10000B86C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000B86C()
{
  if (!qword_10015E7B0)
  {
    type metadata accessor for EngagementLinkData();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10015E7B0);
    }
  }
}

uint64_t sub_10000B90C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000B994()
{
  if (!qword_10015DB50)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10015DB50);
    }
  }
}

void sub_10000B9EC()
{
  sub_10000B994();
  if (v0 <= 0x3F)
  {
    sub_100009D50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10000BA70()
{
  result = qword_10015DB58;
  if (!qword_10015DB58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10015DB58);
  }

  return result;
}

void sub_10000BAD4()
{
  sub_10000B994();
  if (v0 <= 0x3F)
  {
    sub_10000BA70();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000BB70()
{
  result = qword_10015F290;
  if (!qword_10015F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F290);
  }

  return result;
}

unint64_t sub_10000BBC4()
{
  result = qword_10015F298;
  if (!qword_10015F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F298);
  }

  return result;
}

unint64_t sub_10000BC18()
{
  result = qword_10015F2C8;
  if (!qword_10015F2C8)
  {
    sub_100052374(&qword_10015F2C0, &qword_100116610);
    sub_1000525A0(&qword_10015F2D0, &qword_10015F2D8, &qword_100116618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F2C8);
  }

  return result;
}

unint64_t sub_10000BCC8()
{
  result = qword_10015F2E8;
  if (!qword_10015F2E8)
  {
    sub_100052374(&qword_10015F2E0, &qword_100116620);
    sub_10000A568(&qword_10015F2F0, &type metadata accessor for AppleIDSignInView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F2E8);
  }

  return result;
}

unint64_t sub_10000BD7C()
{
  result = qword_10015F300;
  if (!qword_10015F300)
  {
    sub_100052374(&qword_10015F2F8, &qword_100116628);
    type metadata accessor for AppleAccountSignInSheet(255);
    sub_10000A568(&qword_10015DCF8, type metadata accessor for AppleAccountSignInSheet);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F300);
  }

  return result;
}

unint64_t sub_10000BE74()
{
  result = qword_10015F310;
  if (!qword_10015F310)
  {
    sub_100052374(&qword_10015F308, &qword_100116630);
    sub_10000BF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F310);
  }

  return result;
}

unint64_t sub_10000BF00()
{
  result = qword_10015F318;
  if (!qword_10015F318)
  {
    sub_100052374(&qword_10015F320, &qword_100116638);
    type metadata accessor for SettingsAnyPlatformViewControllerView();
    sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F318);
  }

  return result;
}

unint64_t sub_10000C000()
{
  result = qword_10015F340;
  if (!qword_10015F340)
  {
    sub_100052374(&qword_10015F348, &unk_100116648);
    sub_10000A568(&qword_10015F350, type metadata accessor for SettingsApplicationDebugRoot);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F340);
  }

  return result;
}

unint64_t sub_10000C0B4()
{
  result = qword_10015F360;
  if (!qword_10015F360)
  {
    sub_100052374(&qword_10015F358, &qword_100116658);
    sub_10000A568(&qword_10015F368, type metadata accessor for AMSEngagementSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F360);
  }

  return result;
}

unint64_t sub_10000C188()
{
  result = qword_10015E240;
  if (!qword_10015E240)
  {
    sub_100052374(&qword_10015E238, &unk_1001153D0);
    sub_1000525A0(&qword_10015E248, &qword_10015E230, &qword_1001153C8);
    sub_1000525A0(&qword_10015E250, &qword_10015E258, &qword_100115400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E240);
  }

  return result;
}

unint64_t sub_10000C26C()
{
  result = qword_10015DE50;
  if (!qword_10015DE50)
  {
    sub_100052374(&qword_10015DE40, &qword_100114970);
    sub_10000A65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DE50);
  }

  return result;
}

unint64_t sub_10000C310()
{
  result = qword_10015F210;
  if (!qword_10015F210)
  {
    sub_100052374(&qword_10015F1F0, &qword_100116508);
    sub_1000525A0(&qword_10015F218, &qword_10015F220, &qword_100116520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F210);
  }

  return result;
}

uint64_t sub_10000C3C0(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationSplitView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C41C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v415 = a1;
  v3 = sub_10004DED0(&qword_10015EB40, &qword_1001161A0);
  v411 = *(v3 - 8);
  v4 = *(v411 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v413 = &v333 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = v6;
  __chkstk_darwin(v5);
  v433 = &v333 - v7;
  v8 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v445 = *(v8 - 8);
  v9 = *(v445 + 64);
  v10 = __chkstk_darwin(v8);
  v442 = &v333 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v444 = &v333 - v12;
  v399 = type metadata accessor for SettingsAppPrimaryNavigationMode();
  v398 = *(v399 - 8);
  v13 = *(v398 + 64);
  __chkstk_darwin(v399);
  v396 = &v333 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = type metadata accessor for PPTTestCase.Name();
  v440 = *(v392 - 8);
  v15 = *(v440 + 8);
  __chkstk_darwin(v392);
  v391 = &v333 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = type metadata accessor for BalancedNavigationSplitViewStyle();
  v365 = *(v366 - 8);
  v17 = *(v365 + 64);
  __chkstk_darwin(v366);
  v362 = &v333 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SettingsNavigationSplitView();
  v436 = *(v19 - 8);
  v20 = *(v436 + 64);
  v21 = v19 - 8;
  v333 = v19 - 8;
  v437 = v20;
  __chkstk_darwin(v19 - 8);
  v441 = &v333 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = type metadata accessor for ResetSettingsNavigationStateAction();
  v363 = *(v364 - 8);
  v23 = *(v363 + 64);
  __chkstk_darwin(v364);
  v358 = &v333 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for ClearSettingsNavigationPathAction();
  v417 = *(v434 - 8);
  v25 = *(v417 + 8);
  __chkstk_darwin(v434);
  v354 = &v333 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  appended = type metadata accessor for AppendSettingsNavigationPathAction();
  v370 = *(appended - 1);
  v27 = *(v370 + 64);
  __chkstk_darwin(appended);
  v368 = &v333 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = type metadata accessor for SettingsNavigationProxy();
  v346 = *(v348 - 8);
  v29 = *(v346 + 64);
  __chkstk_darwin(v348);
  v343 = &v333 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = type metadata accessor for NavigationSplitViewVisibility();
  v31 = *(v334 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v334);
  v34 = &v333 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10004DED0(&qword_10015F0F0, &qword_100116410);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v337 = sub_10004DED0(&qword_10015F0F8, &qword_100116418);
  v361 = *(v337 - 8);
  v37 = *(v361 + 64);
  __chkstk_darwin(v337);
  v335 = &v333 - v38;
  v339 = sub_10004DED0(&qword_10015F100, &qword_100116420);
  v340 = *(v339 - 8);
  v39 = *(v340 + 64);
  __chkstk_darwin(v339);
  v336 = &v333 - v40;
  v342 = sub_10004DED0(&qword_10015F108, &qword_100116428);
  v345 = *(v342 - 8);
  v41 = *(v345 + 64);
  __chkstk_darwin(v342);
  v338 = &v333 - v42;
  v347 = sub_10004DED0(&qword_10015F110, &qword_100116430);
  v349 = *(v347 - 8);
  v43 = *(v349 + 64);
  __chkstk_darwin(v347);
  v341 = &v333 - v44;
  v351 = sub_10004DED0(&qword_10015F118, &qword_100116438);
  v352 = *(v351 - 8);
  v45 = *(v352 + 64);
  __chkstk_darwin(v351);
  v344 = &v333 - v46;
  v353 = sub_10004DED0(&qword_10015F120, &qword_100116440);
  v355 = *(v353 - 8);
  v47 = *(v355 + 64);
  __chkstk_darwin(v353);
  v350 = &v333 - v48;
  v356 = sub_10004DED0(&qword_10015F128, &qword_100116448);
  v357 = *(v356 - 8);
  v49 = *(v357 + 64);
  __chkstk_darwin(v356);
  v418 = (&v333 - v50);
  v359 = sub_10004DED0(&qword_10015F130, &qword_100116450);
  v360 = *(v359 - 8);
  v51 = *(v360 + 64);
  __chkstk_darwin(v359);
  v419 = (&v333 - v52);
  v367 = sub_10004DED0(&qword_10015F138, &qword_100116458);
  v53 = *(*(v367 - 8) + 64);
  __chkstk_darwin(v367);
  v438 = (&v333 - v54);
  v372 = sub_10004DED0(&qword_10015F140, &qword_100116460);
  v369 = *(v372 - 8);
  v55 = *(v369 + 64);
  __chkstk_darwin(v372);
  v420 = (&v333 - v56);
  v375 = sub_10004DED0(&qword_10015F148, &qword_100116468);
  v373 = *(v375 - 8);
  v57 = *(v373 + 64);
  __chkstk_darwin(v375);
  v371 = &v333 - v58;
  v377 = sub_10004DED0(&qword_10015F150, &qword_100116470);
  v376 = *(v377 - 8);
  v59 = *(v376 + 64);
  __chkstk_darwin(v377);
  v374 = &v333 - v60;
  v379 = sub_10004DED0(&qword_10015F158, &qword_100116478);
  v378 = *(v379 - 8);
  v61 = *(v378 + 64);
  __chkstk_darwin(v379);
  v439 = &v333 - v62;
  v383 = sub_10004DED0(&qword_10015F160, &qword_100116480);
  v63 = *(*(v383 - 8) + 64);
  __chkstk_darwin(v383);
  v380 = &v333 - v64;
  v385 = sub_10004DED0(&qword_10015F168, &qword_100116488);
  v382 = *(v385 - 8);
  v65 = *(v382 + 64);
  __chkstk_darwin(v385);
  v381 = &v333 - v66;
  v387 = sub_10004DED0(&qword_10015F170, &qword_100116490);
  v386 = *(v387 - 8);
  v67 = *(v386 + 64);
  __chkstk_darwin(v387);
  v384 = &v333 - v68;
  v389 = sub_10004DED0(&qword_10015F178, &qword_100116498);
  v388 = *(v389 - 8);
  v69 = *(v388 + 64);
  __chkstk_darwin(v389);
  v421 = &v333 - v70;
  v393 = sub_10004DED0(&qword_10015F180, &qword_1001164A0);
  v390 = *(v393 - 8);
  v71 = *(v390 + 64);
  __chkstk_darwin(v393);
  v422 = (&v333 - v72);
  v395 = sub_10004DED0(&qword_10015F188, &qword_1001164A8);
  v394 = *(v395 - 8);
  v73 = *(v394 + 64);
  __chkstk_darwin(v395);
  v423 = &v333 - v74;
  v400 = sub_10004DED0(&qword_10015F190, &qword_1001164B0);
  v397 = *(v400 - 8);
  v75 = *(v397 + 64);
  __chkstk_darwin(v400);
  v424 = (&v333 - v76);
  v402 = sub_10004DED0(&qword_10015F198, &qword_1001164B8);
  v401 = *(v402 - 8);
  v77 = *(v401 + 64);
  __chkstk_darwin(v402);
  v425 = (&v333 - v78);
  v404 = sub_10004DED0(&qword_10015F1A0, &qword_1001164C0);
  v403 = *(v404 - 8);
  v79 = *(v403 + 64);
  __chkstk_darwin(v404);
  v426 = (&v333 - v80);
  v428 = sub_10004DED0(&qword_10015F1A8, &qword_1001164C8);
  v405 = *(v428 - 8);
  v81 = *(v405 + 64);
  __chkstk_darwin(v428);
  v427 = &v333 - v82;
  v407 = sub_10004DED0(&qword_10015F1B0, &qword_1001164D0);
  v406 = *(v407 - 8);
  v83 = *(v406 + 64);
  __chkstk_darwin(v407);
  v429 = &v333 - v84;
  v431 = sub_10004DED0(&qword_10015F1B8, &qword_1001164D8);
  v408 = *(v431 - 8);
  v85 = *(v408 + 64);
  __chkstk_darwin(v431);
  v430 = &v333 - v86;
  v410 = sub_10004DED0(&qword_10015F1C0, &qword_1001164E0);
  v409 = *(v410 - 8);
  v87 = *(v409 + 64);
  __chkstk_darwin(v410);
  v432 = &v333 - v88;
  v414 = v8;
  v435 = swift_allocBox();
  v90 = v89;
  v91 = v1 + *(v21 + 48);
  v92 = sub_10004DED0(&qword_10015F018, &qword_100116398);
  Bindable.wrappedValue.getter();
  sub_100010CD0();

  type metadata accessor for PrimarySettingsListModel();
  sub_10000A568(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  v443 = v90;
  Bindable<A>.init(wrappedValue:)();
  static NavigationSplitViewVisibility.all.getter();
  v93 = v334;
  static Binding.constant(_:)();
  (*(v31 + 8))(v34, v93);
  v448 = v1;
  v447 = v1;
  v446 = v1;
  sub_10004DED0(&qword_10015F1C8, &qword_1001164E8);
  sub_10004DED0(&qword_10015F1D0, &qword_1001164F0);
  v94 = sub_100052374(&qword_10015F1D8, &qword_1001164F8);
  v95 = sub_1000C2E98();
  v449 = v94;
  v450 = v95;
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015F238, &qword_10015F1D0, &qword_1001164F0);
  v96 = v335;
  NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
  Bindable.wrappedValue.getter();
  v97 = v449;
  swift_getKeyPath();
  v449 = v97;
  sub_10000A568(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v98 = *(v97 + 32);

  v99 = sub_1000525A0(&qword_10015F240, &qword_10015F0F8, &qword_100116418);
  v100 = v336;
  v101 = v337;
  View.selectionClearsNavigationStackPath(_:)();
  (*(v361 + 8))(v96, v101);
  v102 = *(v2 + *(v333 + 44));
  Namespace.wrappedValue.getter();
  Bindable.wrappedValue.getter();
  v361 = type metadata accessor for SettingsAppNavigationModel();
  v452 = v361;
  v453 = sub_10000A568(&qword_10015F248, type metadata accessor for SettingsAppNavigationModel);
  v103 = v343;
  SettingsNavigationProxy.init(namespace:responder:)();
  v449 = v101;
  v450 = v99;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v338;
  v106 = v339;
  View.settingsNavigationProxy(_:)();
  (*(v346 + 8))(v103, v348);
  (*(v340 + 8))(v100, v106);
  Namespace.wrappedValue.getter();
  swift_allocObject();
  Bindable.wrappedValue.getter();
  swift_weakInit();

  v107 = v368;
  AppendSettingsNavigationPathAction.init(namespace:onAppend:)();
  v449 = v106;
  v450 = OpaqueTypeConformance2;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v341;
  v110 = v342;
  View.appendSettingsNavigationPathAction(_:)();
  (*(v370 + 8))(v107, appended);
  (*(v345 + 8))(v105, v110);
  Namespace.wrappedValue.getter();
  swift_allocObject();
  v368 = v92;
  v370 = v91;
  Bindable.wrappedValue.getter();
  swift_weakInit();

  v111 = v354;
  ClearSettingsNavigationPathAction.init(namespace:onClear:)();
  v449 = v110;
  v450 = v108;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v344;
  v114 = v347;
  View.clearSettingsNavigationPathAction(_:)();
  (*(v417 + 1))(v111, v434);
  v115 = v114;
  (*(v349 + 8))(v109, v114);
  Namespace.wrappedValue.getter();
  v417 = type metadata accessor for SettingsNavigationSplitView;
  v116 = v441;
  sub_100020E44(v446, v441, type metadata accessor for SettingsNavigationSplitView);
  v117 = *(v436 + 80);
  v118 = (v117 + 16) & ~v117;
  v119 = swift_allocObject();
  appended = type metadata accessor for SettingsNavigationSplitView;
  sub_100018848(v116, v119 + v118, type metadata accessor for SettingsNavigationSplitView);
  v120 = v358;
  ResetSettingsNavigationStateAction.init(namespace:onReset:)();
  v449 = v115;
  v450 = v112;
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v350;
  v123 = v351;
  View.resetSettingsNavigationStateAction(_:)();
  (*(v363 + 8))(v120, v364);
  (*(v352 + 8))(v113, v123);
  v124 = v362;
  static NavigationSplitViewStyle<>.balanced.getter();
  v449 = v123;
  v450 = v121;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = sub_10000A568(&qword_10015F250, &type metadata accessor for BalancedNavigationSplitViewStyle);
  v127 = v353;
  v128 = v366;
  View.navigationSplitViewStyle<A>(_:)();
  (*(v365 + 8))(v124, v128);
  (*(v355 + 8))(v122, v127);
  swift_getKeyPath();
  v129 = v446;
  v130 = v441;
  sub_100020E44(v446, v441, v417);
  v434 = v118;
  v131 = swift_allocObject() + v118;
  v132 = v130;
  sub_100018848(v130, v131, appended);
  v449 = v127;
  v450 = v128;
  v451 = v125;
  v452 = v126;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = sub_100020EAC();
  v135 = v356;
  v136 = v418;
  View._onEnvironmentChange<A>(_:perform:)();

  (*(v357 + 8))(v136, v135);
  swift_getKeyPath();
  v137 = v129;
  sub_100020E44(v129, v132, v417);
  v138 = v434;
  v436 = v117;
  v139 = swift_allocObject() + v138;
  v140 = v137;
  sub_100018848(v132, v139, appended);
  v141 = sub_100052374(&qword_10015EF28, &qword_100116590);
  v449 = v135;
  v450 = v141;
  v451 = v133;
  v452 = v134;
  swift_getOpaqueTypeConformance2();
  sub_10000A568(&qword_10015EFD8, &type metadata accessor for ScenePhase);
  v142 = v359;
  v143 = v419;
  View._onEnvironmentChange<A>(_:perform:)();

  (*(v360 + 8))(v143, v142);
  v144 = *(v140 + 8);
  if (qword_10015AB30 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v145 = sub_100020FC4(v144, v449);

  v419 = type metadata accessor for SettingsNavigationSplitView;
  v146 = v446;
  v147 = v441;
  sub_100020E44(v446, v441, type metadata accessor for SettingsNavigationSplitView);
  v148 = swift_allocObject();
  v418 = type metadata accessor for SettingsNavigationSplitView;
  sub_100018848(v147, v148 + v138, type metadata accessor for SettingsNavigationSplitView);
  v149 = sub_10004DED0(&qword_10015F260, &qword_1001165C8);
  v150 = v438;
  *(v438 + *(v149 + 52)) = v145;
  v151 = (v150 + *(v149 + 56));
  *v151 = sub_1000C30C0;
  v151[1] = v148;
  v152 = *v146;
  TaskLocal.get()();
  v153 = sub_100020FD8(v152, v449);

  v154 = v419;
  sub_100020E44(v146, v147, v419);
  v155 = swift_allocObject();
  sub_100018848(v147, v155 + v138, type metadata accessor for SettingsNavigationSplitView);
  v156 = v367;
  *(v150 + *(v367 + 52)) = v153;
  v157 = (v150 + *(v156 + 56));
  *v157 = sub_1000C3130;
  v157[1] = v155;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100020E44(v146, v147, v154);
  v158 = swift_allocObject();
  sub_100018848(v147, v158 + v138, v418);
  v159 = sub_1000525A0(&qword_10015F268, &qword_10015F138, &qword_100116458);
  View.onContinueUserActivity(_:perform:)();

  sub_1000068B0(v150, &qword_10015F138, &qword_100116458);
  if (qword_10015AB78 != -1)
  {
    swift_once();
  }

  v160 = v392;
  v161 = sub_10000659C(v392, qword_100169838);
  v162 = v440;
  v163 = (v440 + 16);
  v164 = v391;
  v438 = *(v440 + 2);
  v438(v391, v161, v160);
  v165 = v441;
  sub_100020E44(v446, v441, type metadata accessor for SettingsNavigationSplitView);
  v166 = v434;
  v167 = swift_allocObject();
  sub_100018848(v165, v167 + v166, type metadata accessor for SettingsNavigationSplitView);
  v449 = v156;
  v450 = v159;
  v168 = swift_getOpaqueTypeConformance2();
  v169 = v371;
  v170 = v372;
  v419 = v168;
  v171 = v420;
  View.onTest(_:handler:)();

  v172 = *(v162 + 1);
  v440 = v162 + 8;
  v172(v164, v160);
  (*(v369 + 8))(v171, v170);
  if (qword_10015AB80 != -1)
  {
    swift_once();
  }

  v173 = sub_10000659C(v160, qword_100169850);
  v438(v164, v173, v160);
  v174 = v441;
  sub_100020E44(v446, v441, type metadata accessor for SettingsNavigationSplitView);
  v175 = v434;
  v176 = swift_allocObject();
  sub_100018848(v174, v176 + v175, type metadata accessor for SettingsNavigationSplitView);
  v449 = v170;
  v450 = v419;
  v177 = swift_getOpaqueTypeConformance2();
  v178 = v374;
  v179 = v375;
  v420 = v177;
  View.onTest(_:handler:)();

  v172(v164, v160);
  (*(v373 + 8))(v169, v179);
  v180 = v178;
  v418 = v172;
  if (qword_10015AB88 != -1)
  {
    swift_once();
  }

  v181 = sub_10000659C(v160, qword_100169868);
  v182 = v438;
  v438(v164, v181, v160);
  v183 = v441;
  sub_100020E44(v446, v441, type metadata accessor for SettingsNavigationSplitView);
  v419 = v163;
  v184 = v434;
  v185 = swift_allocObject();
  sub_100018848(v183, v185 + v184, type metadata accessor for SettingsNavigationSplitView);
  v449 = v179;
  v450 = v420;
  v186 = swift_getOpaqueTypeConformance2();
  v187 = v377;
  View.onTest(_:handler:)();

  (v418)(v164, v160);
  (*(v376 + 8))(v180, v187);
  if (qword_10015AB90 != -1)
  {
    swift_once();
  }

  v188 = sub_10000659C(v160, qword_100169880);
  v182(v164, v188, v160);
  v419 = type metadata accessor for SettingsNavigationSplitView;
  v189 = v441;
  sub_100020E44(v446, v441, type metadata accessor for SettingsNavigationSplitView);
  v190 = swift_allocObject();
  v420 = type metadata accessor for SettingsNavigationSplitView;
  sub_100018848(v189, v190 + v184, type metadata accessor for SettingsNavigationSplitView);
  v449 = v187;
  v450 = v186;
  swift_getOpaqueTypeConformance2();
  v191 = v380;
  v192 = v379;
  v193 = v439;
  View.onTest(_:handler:)();

  (v418)(v164, v160);
  (*(v378 + 8))(v193, v192);
  v194 = v189;
  v195 = v189;
  v196 = v419;
  sub_100020E44(v446, v195, v419);
  v197 = swift_allocObject();
  sub_100018848(v194, v197 + v184, type metadata accessor for SettingsNavigationSplitView);
  LOBYTE(v455) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v194) = v449;
  v198 = v450;
  v199 = v191 + *(sub_10004DED0(&qword_10015F270, &qword_1001165D0) + 36);
  *v199 = sub_10003F0BC;
  *(v199 + 8) = v197;
  *(v199 + 16) = v194;
  *(v199 + 24) = v198;
  v200 = v383;
  v201 = (v191 + *(v383 + 36));
  v202 = v435;
  *v201 = sub_1000C327C;
  v201[1] = v202;

  Bindable.wrappedValue.getter();
  v452 = v361;
  v453 = sub_10000A568(&qword_10015F278, type metadata accessor for SettingsAppNavigationModel);
  v203 = sub_1000C329C();
  v204 = v381;
  View.navigationPresentationAdaptor(_:)();
  sub_1000068B0(v191, &qword_10015F160, &qword_100116480);
  sub_10000665C(&v449);
  v449 = v200;
  v450 = v203;
  v205 = swift_getOpaqueTypeConformance2();
  v206 = v384;
  v207 = v385;
  View.navigationTransitionEagerRenderEnabled(_:)();
  (*(v382 + 8))(v204, v207);
  v208 = v398;
  v209 = v396;
  v210 = v399;
  (*(v398 + 104))(v396, enum case for SettingsAppPrimaryNavigationMode.stateDriven(_:), v399);
  v449 = v207;
  v450 = v205;
  v418 = swift_getOpaqueTypeConformance2();
  v211 = v387;
  View.settingsAppPrimaryNavigationMode(_:)();
  (*(v208 + 8))(v209, v210);
  (*(v386 + 8))(v206, v211);
  v212 = v445;
  v213 = *(v445 + 16);
  v439 = (v445 + 16);
  v440 = v213;
  v214 = v442;
  v215 = v184;
  v216 = v414;
  (v213)(v442, v443, v414);
  v217 = v444;
  Bindable.projectedValue.getter();
  v218 = *(v212 + 8);
  v218(v214, v216);
  v438 = v218;
  v445 = v212 + 8;
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v218(v217, v216);
  v220 = v449;
  v219 = v450;
  LOBYTE(v212) = v451;
  v221 = v441;
  sub_100020E44(v446, v441, v196);
  v222 = v215;
  v223 = swift_allocObject();
  sub_100018848(v221, v223 + v222, v420);
  v399 = sub_100021204(0, v220, v219, v212);
  v224 = swift_allocObject();
  *(v224 + 16) = v220;
  *(v224 + 24) = v219;
  *(v224 + 32) = v212;
  *(v224 + 33) = 0;
  *(v224 + 40) = sub_1000C34F8;
  *(v224 + 48) = v223;

  appended = sub_10004DED0(&qword_10015F2A0, &qword_100116600);
  v455 = v211;
  v456 = v418;
  v417 = swift_getOpaqueTypeConformance2();
  v418 = sub_10000A470();
  v225 = v389;
  v226 = v421;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v388 + 8))(v226, v225);
  (v440)(v214, v443, v216);
  v227 = v444;
  Bindable.projectedValue.getter();
  v228 = v216;
  v229 = v438;
  (v438)(v214, v216);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v229(v227, v216);
  v230 = v455;
  v231 = v456;
  LOBYTE(v229) = v457;
  v232 = v441;
  sub_100020E44(v446, v441, v419);
  v233 = v434;
  v234 = swift_allocObject();
  sub_100018848(v232, v234 + v233, v420);
  sub_100021204(1, v230, v231, v229);
  v235 = swift_allocObject();
  *(v235 + 16) = v230;
  *(v235 + 24) = v231;
  *(v235 + 32) = v229;
  *(v235 + 33) = 1;
  *(v235 + 40) = sub_1000C3B54;
  *(v235 + 48) = v234;

  v434 = sub_10004DED0(&qword_10015F2C0, &qword_100116610);
  v449 = v225;
  v450 = appended;
  v451 = v417;
  v452 = v418;
  v441 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  v436 = swift_getOpaqueTypeConformance2();
  v437 = sub_10000BC18();
  v236 = v393;
  v237 = v422;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v390 + 8))(v237, v236);
  v238 = v442;
  (v440)(v442, v443, v216);
  v239 = v444;
  Bindable.projectedValue.getter();
  v240 = v438;
  (v438)(v238, v216);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v240(v239, v216);
  v241 = v455;
  v242 = v456;
  LOBYTE(v234) = v457;
  v243 = v435;

  sub_100021204(2, v241, v242, v234);
  v244 = swift_allocObject();
  *(v244 + 16) = v241;
  *(v244 + 24) = v242;
  *(v244 + 32) = v234;
  *(v244 + 33) = 2;
  *(v244 + 40) = sub_1000C3C34;
  *(v244 + 48) = v243;

  v422 = sub_10004DED0(&qword_10015F2E0, &qword_100116620);
  v449 = v236;
  v450 = v434;
  v451 = v436;
  v452 = v437;
  v436 = swift_getOpaqueTypeConformance2();
  v437 = sub_10000BCC8();
  v245 = v395;
  v246 = v423;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v394 + 8))(v246, v245);
  v247 = v442;
  (v440)(v442, v443, v216);
  v248 = v444;
  Bindable.projectedValue.getter();
  v249 = v438;
  (v438)(v247, v216);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v249(v248, v216);
  v250 = v455;
  v251 = v456;
  LOBYTE(v242) = v457;

  sub_100021204(8, v250, v251, v242);
  v252 = swift_allocObject();
  *(v252 + 16) = v250;
  *(v252 + 24) = v251;
  *(v252 + 32) = v242;
  *(v252 + 33) = 8;
  *(v252 + 40) = sub_1000BEE38;
  *(v252 + 48) = 0;

  v434 = sub_10004DED0(&qword_10015F2F8, &qword_100116628);
  v449 = v245;
  v450 = v422;
  v451 = v436;
  v452 = v437;
  v436 = swift_getOpaqueTypeConformance2();
  v437 = sub_10000BD7C();
  v253 = v435;
  v254 = v400;
  v255 = v424;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v397 + 8))(v255, v254);
  v256 = v442;
  (v440)(v442, v443, v228);
  v257 = v444;
  Bindable.projectedValue.getter();
  v258 = v438;
  (v438)(v256, v228);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v258(v257, v228);
  v259 = v455;
  v260 = v456;
  LOBYTE(v258) = v457;
  swift_retain_n();
  sub_100021204(6, v259, v260, v258);
  LODWORD(v423) = v261;
  v262 = swift_allocObject();
  *(v262 + 16) = v259;
  *(v262 + 24) = v260;
  *(v262 + 32) = v258;
  *(v262 + 33) = 6;
  *(v262 + 40) = sub_1000C3C8C;
  *(v262 + 48) = v253;

  v424 = sub_10004DED0(&qword_10015F308, &qword_100116630);
  v449 = v254;
  v450 = v434;
  v451 = v436;
  v452 = v437;
  v436 = swift_getOpaqueTypeConformance2();
  v437 = sub_10000BE74();
  v263 = v402;
  v264 = v425;
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  (*(v401 + 8))(v264, v263);
  v265 = v442;
  (v440)(v442, v443, v228);
  v266 = v444;
  Bindable.projectedValue.getter();
  v267 = v438;
  (v438)(v265, v228);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v267(v266, v228);
  v268 = v455;
  v269 = v456;
  LOBYTE(v230) = v457;
  sub_100021204(3, v455, v456, v457);
  v270 = swift_allocObject();
  *(v270 + 16) = v268;
  *(v270 + 24) = v269;
  *(v270 + 32) = v230;
  *(v270 + 33) = 3;
  *(v270 + 40) = sub_1000BF6B8;
  *(v270 + 48) = 0;

  v425 = sub_10004DED0(&qword_10015F330, &qword_100116640);
  v449 = v263;
  v450 = v424;
  v451 = v436;
  v452 = v437;
  v434 = swift_getOpaqueTypeConformance2();
  v437 = sub_1000C3D0C();
  v271 = v404;
  v272 = v426;
  View.formSheet<A>(isPresented:content:)();

  (*(v403 + 8))(v272, v271);
  v273 = v442;
  (v440)(v442, v443, v228);
  v274 = v444;
  Bindable.projectedValue.getter();
  v275 = v438;
  (v438)(v273, v228);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v275(v274, v228);
  v276 = v455;
  v277 = v456;
  v426 = v455;
  v424 = v456;
  LOBYTE(v267) = v457;
  v278 = sub_100021380();
  v280 = v279;
  LOBYTE(v253) = v281;
  v423 = v282;
  sub_100021204(4, v276, v277, v267);
  LODWORD(v422) = v283;
  v436 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v449 = v271;
  v450 = v425;
  v451 = v434;
  v452 = v437;
  v434 = swift_getOpaqueTypeConformance2();
  v437 = sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980);
  v284 = v428;
  v285 = v427;
  View.alert<A>(_:isPresented:actions:)();

  sub_100009680(v278, v280, v253 & 1);

  (*(v405 + 8))(v285, v284);
  v286 = v442;
  v287 = v443;
  v288 = v440;
  (v440)(v442, v443, v228);
  v289 = v444;
  Bindable.projectedValue.getter();
  v290 = v438;
  (v438)(v286, v228);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v291 = v290;
  v290(v289, v228);
  v292 = v458;
  v422 = v459;
  LOBYTE(v290) = v460;
  v288(v286, v287, v228);
  Bindable.wrappedValue.getter();
  v291(v286, v228);
  v293 = v449;
  v294 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData;
  swift_beginAccess();
  v295 = v293 + v294;
  v296 = v433;
  sub_100059CA0(v295, v433, &qword_10015EB40, &qword_1001161A0);

  v297 = v422;
  v425 = sub_100021204(7, v292, v422, v290);
  v424 = v298;
  LODWORD(v423) = v299;
  v300 = v296;
  v301 = v413;
  sub_100059CA0(v300, v413, &qword_10015EB40, &qword_1001161A0);
  v302 = (*(v411 + 80) + 16) & ~*(v411 + 80);
  v303 = (v412 + v302 + 7) & 0xFFFFFFFFFFFFFFF8;
  v304 = swift_allocObject();
  sub_1000A4CB8(v301, v304 + v302, &qword_10015EB40, &qword_1001161A0);
  v305 = v304 + v303;
  *v305 = v292;
  *(v305 + 8) = v297;
  *(v305 + 16) = v290;
  *(v305 + 17) = 7;
  v306 = (v304 + ((v303 + 25) & 0xFFFFFFFFFFFFFFF8));
  *v306 = sub_1000BFAB4;
  v306[1] = 0;

  v426 = sub_10004DED0(&qword_10015F358, &qword_100116658);
  v449 = v428;
  v450 = v436;
  v451 = v434;
  v452 = v437;
  v427 = swift_getOpaqueTypeConformance2();
  v428 = sub_10000C0B4();
  v307 = v407;
  v308 = v429;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_1000068B0(v433, &qword_10015EB40, &qword_1001161A0);
  (*(v406 + 8))(v308, v307);
  v309 = v442;
  (v440)(v442, v443, v228);
  v310 = v444;
  Bindable.projectedValue.getter();
  v311 = v438;
  (v438)(v309, v228);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v311(v310, v228);
  v312 = v458;
  v313 = v459;
  v433 = v458;
  v429 = v459;
  LOBYTE(v311) = v460;
  v314 = sub_100018B00();
  v316 = v315;
  LOBYTE(v290) = v317;
  sub_100021204(5, v312, v313, v311);
  v434 = sub_10004DED0(&qword_10015C098, &qword_100116660);
  v449 = v307;
  v450 = v426;
  v451 = v427;
  v452 = v428;
  v441 = swift_getOpaqueTypeConformance2();
  v446 = sub_10000A5B0();
  v318 = v431;
  v319 = v430;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_100009680(v314, v316, v290 & 1);

  (*(v408 + 8))(v319, v318);
  v320 = v442;
  (v440)(v442, v443, v228);
  v321 = v444;
  Bindable.projectedValue.getter();
  v322 = v438;
  (v438)(v320, v228);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v322(v321, v228);
  v323 = v458;
  v324 = v459;
  v445 = v458;
  v444 = v459;
  LOBYTE(v320) = v460;
  LocalizedStringKey.init(stringLiteral:)();
  v325 = Text.init(_:tableName:bundle:comment:)();
  v327 = v326;
  LOBYTE(v228) = v328;
  sub_100021204(9, v323, v324, v320);
  LODWORD(v443) = v329;
  sub_10004DED0(&qword_10015F370, &qword_100116668);
  v449 = v431;
  v450 = v436;
  v451 = v434;
  v452 = v441;
  v453 = v437;
  v454 = v446;
  swift_getOpaqueTypeConformance2();
  sub_1000525A0(&qword_10015F378, &qword_10015F370, &qword_100116668);
  v330 = v410;
  v331 = v432;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_100009680(v325, v327, v228 & 1);

  (*(v409 + 8))(v331, v330);
}

uint64_t sub_100010A7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010B10()
{
  v1 = *(sub_10004DED0(&qword_10015EB40, &qword_1001161A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for EngagementLinkData();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = *(v5 + 8);

    v8 = *(v5 + 24);

    v9 = *(v6 + 24);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 25) & 0xFFFFFFFFFFFFFFF8;
  v13 = v0 + v11;
  v14 = *(v0 + v11);

  v15 = *(v13 + 8);

  v16 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16, v2 | 7);
}

void *sub_100010CD0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for PrimarySettingsListModel();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v1 = sub_100010D6C(v6, &off_100150510, v0, &off_100150500);

    v7 = *(v2 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

void *sub_100010D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v138 = a4;
  v7 = sub_10004DED0(&qword_10015D9A0, &qword_100114318);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v116 = v107 - v9;
  v117 = sub_10004DED0(&qword_10015EA28, &qword_100115D10);
  v115 = *(v117 - 8);
  v10 = *(v115 + 64);
  __chkstk_darwin(v117);
  v114 = v107 - v11;
  v121 = sub_10004DED0(&qword_10015EA30, &qword_100115D18);
  v119 = *(v121 - 8);
  v12 = *(v119 + 64);
  __chkstk_darwin(v121);
  v118 = v107 - v13;
  v123 = sub_10004DED0(&qword_10015EA38, &qword_100115D20);
  v122 = *(v123 - 8);
  v14 = *(v122 + 64);
  __chkstk_darwin(v123);
  v120 = v107 - v15;
  v113 = sub_10004DED0(&unk_10015EA40, &qword_100115D28);
  v140 = *(v113 - 8);
  v16 = *(v140 + 64);
  __chkstk_darwin(v113);
  v112 = v107 - v17;
  v18 = sub_10004DED0(&qword_10015ED30, &unk_100115D30);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v109 = v107 - v20;
  v21 = sub_10004DED0(&qword_10015EA50, &unk_100115F90);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v108 = v107 - v23;
  v128 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v135 = *(v128 - 8);
  v24 = *(v135 + 64);
  __chkstk_darwin(v128);
  v127 = v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for NSNotificationCenter.Publisher();
  v139 = *(v111 - 8);
  v26 = *(v139 + 64);
  __chkstk_darwin(v111);
  v28 = v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004DED0(&qword_10015EA58, &qword_100115D40);
  v125 = *(v29 - 8);
  v126 = v29;
  v30 = *(v125 + 8);
  __chkstk_darwin(v29);
  v124 = v107 - v31;
  v4[16] = 0;
  v32 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingEngagementLinkData;
  v33 = type metadata accessor for EngagementLinkData();
  (*(*(v33 - 8) + 56))(&v5[v32], 1, 1, v33);
  v34 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingSelectionForSuccessfulPrimaryAppleAccountSignIn];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v34[32] = -1;
  v35 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v35[32] = -1;
  v36 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = -1;
  v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier] = 10;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController] = 0;
  v37 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__currentlyLoadingFollowUp];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v37[32] = -1;
  type metadata accessor for TopLevelListManager();
  v38 = swift_allocObject();
  v38[2] = [objc_opt_self() defaultManager];
  v38[3] = &_swiftEmptySetSingleton;
  sub_100008294(0, &qword_10015EA60, NSMutableArray_ptr);
  v38[4] = NSArray.init(arrayLiteral:)();
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager] = v38;
  v39 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel];
  v39[1] = 0;
  v39[2] = 0;
  *v39 = 0;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_viewControllerForPresentation] = 0;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider] = 0;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders] = 0;
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_cancellables] = &_swiftEmptySetSingleton;
  v40 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject;
  v41 = sub_10004DED0(&qword_10015EA68, &qword_100115D48);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v110 = v41;
  swift_allocObject();
  *&v5[v40] = PassthroughSubject.init()();
  v44 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_systemStateSnapshotProvider;
  v45 = type metadata accessor for PrimarySettingsListDataModelSystemStateSnapshotProvider();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  *&v5[v44] = sub_10006D87C();
  v48 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__selectionDelegate];
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__selectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v49 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__updateDelegate];
  *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__updateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  swift_unknownObjectRetain();
  sub_1000122B4(v48);
  *(v48 + 8) = a2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1000122B4(v49);
  *(v49 + 8) = v138;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  LODWORD(v48) = sub_100005430();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = sub_100017FDC();
  v57 = &v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot];
  *v57 = v48 & 1;
  v57[1] = BYTE1(v48) & 1;
  v57[2] = BYTE2(v48) & 1;
  *(v57 + 1) = v51;
  *(v57 + 2) = v53;
  *(v57 + 3) = v55;
  *(v57 + 8) = 0;
  *(v57 + 18) = 1;
  v57[38] = 0;
  *(v57 + 5) = &_swiftEmptySetSingleton;
  *(v57 + 6) = v56;
  *(v57 + 7) = v58;
  v57[64] = v59;
  *(v57 + 9) = &_swiftEmptyArrayStorage;
  v60 = [objc_opt_self() currentDevice];
  LODWORD(v51) = [v60 sf_isInternalInstall];

  if (v51)
  {
    if (qword_10015AB10 != -1)
    {
      swift_once();
    }

    v61 = qword_100169798;
    v62 = String._bridgeToObjectiveC()();
    LODWORD(v61) = [v61 BOOLForKey:v62];

    if (v61)
    {
      swift_getKeyPath();
      v142 = v5;
      sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v63 = *&v5[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager];

      sub_100108F60();
    }
  }

  v131 = objc_opt_self();
  v64 = [v131 defaultCenter];
  v107[0] = v28;
  NSNotificationCenter.publisher(for:object:)();

  v65 = v127;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v66 = v135;
  v67 = v108;
  v68 = v128;
  (*(v135 + 56))(v108, 1, 1, v128);
  v134 = objc_opt_self();
  v69 = [v134 mainRunLoop];
  v142 = v69;
  v133 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v70 = *(v133 - 8);
  v137 = *(v70 + 56);
  v129 = v70 + 56;
  v71 = v109;
  v137(v109, 1, 1, v133);
  v132 = v5;
  v138 = sub_100008294(0, &unk_10015EA70, NSRunLoop_ptr);
  v130 = sub_10000A520(&qword_10015D9B8, &type metadata accessor for NSNotificationCenter.Publisher);
  v136 = sub_10001F6B8(&qword_10015EA80, &unk_10015EA70, NSRunLoop_ptr);
  v72 = v124;
  v73 = v111;
  v74 = v107[0];
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000068B0(v71, &qword_10015ED30, &unk_100115D30);

  sub_1000068B0(v67, &qword_10015EA50, &unk_100115F90);
  v75 = *(v66 + 8);
  v135 = v66 + 8;
  v108 = v75;
  (v75)(v65, v68);
  v76 = v139 + 8;
  v77 = *(v139 + 8);
  v77(v74, v73);
  sub_1000525A0(&qword_10015EA88, &qword_10015EA58, &qword_100115D40);
  v78 = v126;
  Publisher<>.sink(receiveValue:)();
  (*(v125 + 1))(v72, v78);
  v79 = &v132[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_cancellables];
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v80 = [v131 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v81 = [v134 mainRunLoop];
  v142 = v81;
  v137(v71, 1, 1, v133);
  v82 = v112;
  Publisher.receive<A>(on:options:)();
  sub_1000068B0(v71, &qword_10015ED30, &unk_100115D30);

  v83 = v74;
  v139 = v76;
  v125 = v77;
  v77(v74, v73);
  swift_allocObject();
  swift_weakInit();
  v84 = sub_1000525A0(&qword_10015EA90, &unk_10015EA40, &qword_100115D28);

  v85 = v113;
  v86 = v84;
  Publisher<>.sink(receiveValue:)();

  v124 = *(v140 + 8);
  v140 += 8;
  (v124)(v82, v85);
  swift_beginAccess();
  v126 = v79;
  AnyCancellable.store(in:)();
  swift_endAccess();

  v87 = [v131 defaultCenter];
  if (qword_10015AB00 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  v88 = v134;
  v89 = [v134 mainRunLoop];
  v142 = v89;
  v137(v71, 1, 1, v133);
  Publisher.receive<A>(on:options:)();
  sub_1000068B0(v71, &qword_10015ED30, &unk_100115D30);

  v125(v83, v73);
  swift_allocObject();
  swift_weakInit();
  v107[1] = v86;
  Publisher<>.sink(receiveValue:)();

  (v124)(v82, v85);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v90 = [v131 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v91 = [v88 mainRunLoop];
  v142 = v91;
  v92 = v133;
  v137(v71, 1, 1, v133);
  Publisher.receive<A>(on:options:)();
  sub_1000068B0(v71, &qword_10015ED30, &unk_100115D30);

  v125(v83, v73);
  swift_allocObject();
  v93 = v132;
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  (v124)(v82, v85);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v94 = v93;
  v142 = *&v93[OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_invalidationSubject];

  v95 = v127;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v96 = [v134 mainRunLoop];
  v141 = v96;
  v137(v71, 1, 1, v92);
  sub_1000525A0(&unk_10015EA98, &qword_10015EA68, &qword_100115D48);
  v97 = v114;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000068B0(v71, &qword_10015ED30, &unk_100115D30);

  (v108)(v95, v128);

  sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  v98 = static OS_dispatch_queue.main.getter();
  v142 = v98;
  v99 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v100 = v116;
  (*(*(v99 - 8) + 56))(v116, 1, 1, v99);
  sub_1000525A0(&unk_10015EAA8, &qword_10015EA28, &qword_100115D10);
  sub_10001F6B8(&qword_10015D9C0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  v101 = v118;
  v102 = v117;
  Publisher.receive<A>(on:options:)();
  sub_1000068B0(v100, &qword_10015D9A0, &qword_100114318);

  (*(v115 + 8))(v97, v102);
  swift_allocObject();
  swift_weakInit();

  sub_10004DED0(&qword_10015EAB8, &qword_100115D50);
  sub_1000525A0(&qword_10015EAC0, &qword_10015EA30, &qword_100115D18);
  v103 = v120;
  v104 = v121;
  Publisher.compactMap<A>(_:)();

  (*(v119 + 8))(v101, v104);
  swift_getKeyPath();
  v142 = v94;
  sub_1000525A0(&qword_10015EAC8, &qword_10015EA38, &qword_100115D20);
  v105 = v123;
  Publisher<>.assign<A>(to:on:)();

  (*(v122 + 8))(v103, v105);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v94;
}

uint64_t sub_1000122DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ManagedConfigurationStateProvider()
{
  result = qword_10015C850;
  if (!qword_10015C850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001244C()
{
  sub_10001261C(319, &qword_10015C860, &type metadata for ManagedConfigurationStateSnapshot, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10001261C(319, &qword_10015C868, &type metadata for ManagedConfigurationStateSnapshot, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10001261C(319, &unk_10015C500, &type metadata for ()[8], &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10001261C(319, &unk_10015C358, &type metadata for ()[8], &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10001261C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10001266C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CellularTelephonyStateSnapshot);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_1000126C0()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v79 = &v71 - v2;
  v3 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  __chkstk_darwin(v3);
  v80 = &v71 - v5;
  v6 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v91 = &v71 - v8;
  v9 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v10 = *(v9 - 8);
  v89 = v9;
  v90 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v74 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v13;
  __chkstk_darwin(v12);
  v88 = &v71 - v14;
  v15 = sub_10004DED0(&qword_10015C908, &qword_100112B70);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v71 - v18);
  v20 = sub_10004DED0(&qword_10015C910, &qword_100112B78);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v73 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v24;
  __chkstk_darwin(v23);
  v26 = &v71 - v25;
  v27 = sub_10004DED0(&qword_10015C918, &qword_100112B80);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v71 - v30;
  *v19 = 1;
  v32 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v16 + 104))(v19, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v15);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v16 + 8))(v19, v15);
  v75 = v31;
  v76 = v28;
  v33 = *(v28 + 16);
  v34 = v83;
  v77 = v27;
  v33(&v83[OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_snapshots], v31, v27);
  v78 = v21;
  v35 = v21 + 16;
  v36 = *(v21 + 16);
  v37 = v34;
  v87 = v26;
  v38 = v20;
  v84 = v36;
  v85 = v35;
  v36(&v34[OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_snapshotsContinuation], v26, v20);
  v40 = v80;
  v39 = v81;
  *v80 = 1;
  v41 = v82;
  (*(v39 + 104))(v40, v32, v82);
  v42 = v88;
  v43 = v91;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v39 + 8))(v40, v41);
  v44 = *(v90 + 16);
  v45 = v42;
  v46 = v42;
  v47 = v89;
  v44(&v37[OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_onReceiveManagedConfigurationEvent], v46);
  (*(v92 + 16))(&v37[OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_onReceiveManagedConfigurationEventContinuation], v43, v93);
  v48 = type metadata accessor for ManagedConfigurationStateProvider();
  v94.receiver = v37;
  v94.super_class = v48;
  v49 = objc_msgSendSuper2(&v94, "init");
  v50 = objc_opt_self();
  v51 = v49;
  result = [v50 sharedConnection];
  if (result)
  {
    v53 = result;
    [result registerObserver:v51];

    v81 = type metadata accessor for TaskPriority();
    v54 = *(v81 - 8);
    v80 = *(v54 + 56);
    v82 = v54 + 56;
    v55 = v79;
    (v80)(v79, 1, 1, v81);
    v56 = v74;
    v57 = v47;
    (v44)(v74, v45, v47);
    v58 = v73;
    v71 = v38;
    v84(v73, v87, v38);
    v59 = v90;
    v60 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v61 = v78;
    v83 = v51;
    v62 = *(v78 + 80);
    v63 = (v72 + v62 + v60) & ~v62;
    v72 = v62 | 7;
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    (*(v59 + 32))(v64 + v60, v56, v57);
    v65 = *(v61 + 32);
    v66 = v71;
    v65(v64 + v63, v58, v71);
    sub_100094AF4(0, 0, v55, &unk_100112B90, v64);

    (v80)(v55, 1, 1, v81);
    v67 = v87;
    v68 = v66;
    v84(v58, v87, v66);
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    v65(v69 + ((v62 + 32) & ~v62), v58, v68);
    sub_100094AF4(0, 0, v55, &unk_100112BA0, v69);
    v70 = v83;

    (*(v92 + 8))(v91, v93);
    (*(v59 + 8))(v88, v89);
    (*(v61 + 8))(v67, v68);
    (*(v76 + 8))(v75, v77);
    return v70;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100012F5C()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&qword_10015C910, &qword_100112B78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000130C4()
{
  v1 = sub_10004DED0(&qword_10015C910, &qword_100112B78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t type metadata accessor for CellularTelephonyStateProvider()
{
  result = qword_10015CA50;
  if (!qword_10015CA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013214()
{
  sub_10001261C(319, &qword_10015CA60, &type metadata for CellularTelephonyStateSnapshot, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10001261C(319, &unk_10015CA68, &type metadata for CellularTelephonyStateSnapshot, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10001261C(319, &unk_10015C500, &type metadata for ()[8], &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10001261C(319, &unk_10015C358, &type metadata for ()[8], &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100013424(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015C910, &qword_100112B78) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_100015230(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10001358C()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v167 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v171 = &v142 - v7;
  __chkstk_darwin(v6);
  v183 = &v142 - v8;
  v174 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v173 = *(v174 - 8);
  v9 = v173[8];
  __chkstk_darwin(v174);
  v172 = &v142 - v10;
  v182 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v177 = *(v182 - 8);
  v11 = *(v177 + 64);
  v12 = __chkstk_darwin(v182);
  v176 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v13;
  __chkstk_darwin(v12);
  v181 = &v142 - v14;
  v166 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v165 = *(v166 - 8);
  v15 = *(v165 + 64);
  v16 = __chkstk_darwin(v166);
  v152 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v150 = &v142 - v19;
  v151 = v20;
  __chkstk_darwin(v18);
  v164 = &v142 - v21;
  v170 = sub_10004DED0(&qword_10015CB40, &unk_100112D90);
  v169 = *(v170 - 1);
  v22 = *(v169 + 64);
  __chkstk_darwin(v170);
  v155 = (&v142 - v23);
  v163 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v161 = *(v163 - 8);
  v24 = *(v161 + 64);
  v25 = __chkstk_darwin(v163);
  v157 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v26;
  __chkstk_darwin(v25);
  v162 = &v142 - v27;
  v160 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v159 = *(v160 - 8);
  v28 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v142 - v29;
  v179 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v180 = *(v179 - 1);
  v30 = *(v180 + 64);
  __chkstk_darwin(v179);
  v32 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OS_dispatch_queue.Attributes();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v35 = type metadata accessor for DispatchQoS();
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v149 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v38 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyQueue;
  v153 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyQueue;
  v154 = sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  v184 = "coreTelephonyServerConnection";
  static DispatchQoS.unspecified.getter();
  v198 = &_swiftEmptyArrayStorage;
  v178 = sub_100015348(&qword_10015FA10, &type metadata accessor for OS_dispatch_queue.Attributes);
  v39 = sub_10004DED0(&unk_10015FD30, &unk_100117260);
  v148 = sub_100015390();
  v145 = v39;
  v146 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v143 = *(v180 + 104);
  v180 += 104;
  v142 = v32;
  v144 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v41 = v179;
  v143(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v179);
  v42 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v168 = v0;
  *(v0 + v38) = v42;
  v43 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyServerConnectionQueue;
  v147 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyServerConnectionQueue;
  v184 = "r.coreTelephonyQueue";
  static DispatchQoS.unspecified.getter();
  v198 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = v142;
  v45 = v40;
  v46 = v143;
  v143(v142, v45, v41);
  *(v1 + v43) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v47 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_netRBClientConnectionQueue;
  static DispatchQoS.unspecified.getter();
  v184 = &_swiftEmptyArrayStorage;
  v198 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46(v44, v144, v179);
  v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v49 = v168;
  *(v168 + v47) = v48;
  v50 = v155;
  *v155 = 1;
  v51 = v169;
  v52 = v170;
  (*(v169 + 104))(v50, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v170);
  v53 = v158;
  v54 = v162;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v51 + 8))(v50, v52);
  (*(v159 + 16))(v49 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshots, v53, v160);
  v55 = *(v161 + 16);
  v56 = v49;
  v155 = (v161 + 16);
  v154 = v55;
  v55((v49 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshotsContinuation), v54, v163);
  v57 = v173;
  v58 = v172;
  v59 = v174;
  (v173[13])(v172, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v174);
  v60 = v164;
  v61 = v181;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (v57[1])(v58, v59);
  v62 = *(v165 + 16);
  v149 = (v165 + 16);
  v148 = v62;
  v62((v56 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEvent), v60, v166);
  v63 = v177;
  v64 = *(v177 + 16);
  v174 = v177 + 16;
  v173 = v64;
  (v64)(v56 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEventContinuation, v61, v182);
  v65 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:*(v56 + v153)];
  *(v56 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyClient) = v65;
  v66 = String._bridgeToObjectiveC()();
  v67 = *(v56 + v147);
  v68 = _CTServerConnectionCreateOnTargetQueue();

  *(v56 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyServerConnection) = v68;
  v69 = CTCellularPlanInfoDidChangeNotification;
  v70 = CTCarrierInfoDidChangeNotification;
  v190 = CTCellularPlanInfoDidChangeNotification;
  v191 = CTCarrierInfoDidChangeNotification;
  v71 = CTCellularPlanPendingTransferDidChangeNotification;
  v72 = CTCellularPlanLocalInfoDidChangeNotification;
  v192 = CTCellularPlanPendingTransferDidChangeNotification;
  v193 = CTCellularPlanLocalInfoDidChangeNotification;
  v73 = MCEffectiveSettingsChangedNotification;
  v74 = MCProfileListChangedNotification;
  v194 = MCEffectiveSettingsChangedNotification;
  v195 = MCProfileListChangedNotification;
  v75 = PSNETRBChangedNotification;
  v196 = PSNETRBChangedNotification;
  v197 = UIApplicationWillEnterForegroundNotification;
  v180 = type metadata accessor for TaskPriority();
  v76 = *(v180 - 8);
  v77 = *(v76 + 56);
  v76 += 56;
  v179 = v77;
  v172 = (v63 + 32);
  v170 = (v76 - 8);
  v178 = v76;
  v169 = v76 - 48;
  v78 = v69;
  v79 = v70;
  v80 = v71;
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v85 = UIApplicationWillEnterForegroundNotification;
  v86 = 32;
  v87 = v180;
  do
  {
    v88 = *&v189[v86];
    v89 = v183;
    (v179)(v183, 1, 1, v87);
    v90 = v176;
    v91 = v182;
    (v173)(v176, v181, v182);
    v92 = v177;
    v93 = *(v177 + 80);
    v94 = swift_allocObject();
    *(v94 + 2) = 0;
    *(v94 + 3) = 0;
    *(v94 + 4) = v88;
    v95 = *(v92 + 32);
    v95(&v94[(v93 + 40) & ~v93], v90, v91);
    v96 = v171;
    sub_10006B97C(v89, v171);
    v97 = (*v170)(v96, 1, v87);
    v98 = v88;

    if (v97 == 1)
    {
      sub_1000068B0(v96, &unk_10015D490, &qword_100112150);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v169)(v96, v87);
    }

    v99 = *(v94 + 2);
    v100 = *(v94 + 3);
    swift_unknownObjectRetain();

    if (v99)
    {
      swift_getObjectType();
      v101 = dispatch thunk of Actor.unownedExecutor.getter();
      v103 = v102;
      swift_unknownObjectRelease();
    }

    else
    {
      v101 = 0;
      v103 = 0;
    }

    sub_1000068B0(v183, &unk_10015D490, &qword_100112150);
    v104 = swift_allocObject();
    *(v104 + 16) = &unk_100112DB8;
    *(v104 + 24) = v94;
    if (v103 | v101)
    {
      v185 = 0;
      v186 = 0;
      v187 = v101;
      v188 = v103;
    }

    v105 = v184;
    v106 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = sub_100015698(0, *(v105 + 2) + 1, 1, v105);
    }

    v108 = *(v105 + 2);
    v107 = *(v105 + 3);
    if (v108 >= v107 >> 1)
    {
      v105 = sub_100015698((v107 > 1), v108 + 1, 1, v105);
    }

    *(v105 + 2) = v108 + 1;
    v184 = v105;
    *&v105[8 * v108 + 32] = v106;
    v86 += 8;
  }

  while (v86 != 96);
  type metadata accessor for Name(0);
  swift_arrayDestroy();
  v109 = *(v168 + v153);
  v110 = v150;
  sub_100015934(0xD000000000000034, 0x8000000100122130, v109, v150);

  v111 = v167;
  (v179)(v167, 1, 1, v180);
  v112 = v152;
  v113 = v166;
  v148(v152, v110, v166);
  v114 = v176;
  v115 = v182;
  (v173)(v176, v181, v182);
  v116 = v165;
  v117 = (*(v165 + 80) + 32) & ~*(v165 + 80);
  v118 = (v151 + v93 + v117) & ~v93;
  v119 = v111;
  v120 = swift_allocObject();
  *(v120 + 16) = 0;
  *(v120 + 24) = 0;
  (*(v116 + 32))(v120 + v117, v112, v113);
  v95((v120 + v118), v114, v115);
  v121 = sub_100094AF4(0, 0, v119, &unk_100112DF8, v120);
  v122 = v184;
  v124 = *(v184 + 2);
  v123 = *(v184 + 3);
  if (v124 >= v123 >> 1)
  {
    v122 = sub_100015698((v123 > 1), v124 + 1, 1, v184);
  }

  (*(v116 + 8))(v150, v113);
  *(v122 + 2) = v124 + 1;
  *&v122[8 * v124 + 32] = v121;
  v125 = v180;
  *(v168 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_observationTasks) = v122;
  (v179)(v119, 1, 1, v125);
  v126 = swift_allocObject();
  swift_weakInit();
  v127 = v152;
  v148(v152, v164, v113);
  v154(v157, v162, v163);
  v128 = v113;
  v129 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v130 = (v151 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
  v131 = v161;
  v132 = *(v161 + 80);
  v184 = (v132 | 7);
  v133 = swift_allocObject();
  *(v133 + 16) = 0;
  *(v133 + 24) = 0;
  (*(v116 + 32))(v133 + v129, v127, v128);
  *(v133 + v130) = v126;
  v134 = *(v131 + 32);
  v135 = v157;
  v136 = v163;
  v134(v133 + ((v132 + v130 + 8) & ~v132), v157, v163);

  v137 = v167;
  sub_100094AF4(0, 0, v167, &unk_100112DD0, v133);

  (v179)(v137, 1, 1, v180);
  v138 = swift_allocObject();
  swift_weakInit();

  v139 = v162;
  v154(v135, v162, v136);
  v140 = swift_allocObject();
  v140[2] = 0;
  v140[3] = 0;
  v140[4] = v138;
  v134(v140 + ((v132 + 40) & ~v132), v135, v136);
  sub_100094AF4(0, 0, v167, &unk_100112DE0, v140);

  (*(v177 + 8))(v181, v182);
  (*(v165 + 8))(v164, v166);
  (*(v131 + 8))(v139, v136);
  (*(v159 + 8))(v158, v160);
  return v168;
}

uint64_t sub_100014C34()
{
  v1 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100014D0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014D44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014D7C()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100014EF8()
{
  v1 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100014FD0()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100015138(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AA20;

  return v7(a1);
}

uint64_t sub_100015230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004DED0(&unk_10015C920, &qword_100112BA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10000A6C0, 0, 0);
}

uint64_t sub_100015348(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100015390()
{
  result = qword_10015FA20;
  if (!qword_10015FA20)
  {
    sub_100052374(&unk_10015FD30, &unk_100117260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015FA20);
  }

  return result;
}

uint64_t sub_1000153F4(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015C910, &qword_100112B78) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000154F0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000154F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_10004DED0(&unk_10015C920, &qword_100112BA8);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000155BC, 0, 0);
}

uint64_t sub_1000155BC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = sub_100005430();
  *(v0 + 16) = v5 & 1;
  *(v0 + 17) = BYTE1(v5) & 1;
  *(v0 + 18) = BYTE2(v5) & 1;
  *(v0 + 24) = v6;
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  sub_10004DED0(&qword_10015C910, &qword_100112B78);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v4);

  v9 = *(v0 + 8);

  return v9();
}

void *sub_100015698(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10004DED0(&qword_10015F508, &qword_100116A60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004DED0(&qword_10015F510, &qword_100116A68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000157D0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10001581C(uint64_t a1)
{
  v4 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000ACE4;

  return sub_100015FE4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100015934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v46 = a3;
  v44 = a4;
  v5 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v42 - v8);
  v10 = sub_10004DED0(&qword_100161618, &unk_100119018);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v43 = v15;
  v18 = *(v15 + 48);
  *v9 = 1;
  (*(v6 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v9, v5);
  out_token = 0;
  sub_100016144(v17, v14);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = v20 + v19;
  v22 = v45;
  sub_1000161B4(v14, v21);
  v53 = sub_10010893C;
  v54 = v20;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_1001089B8;
  v52 = &unk_1001525E8;
  v23 = _Block_copy(&aBlock);

  v24 = String.utf8CString.getter();
  v25 = notify_register_dispatch((v24 + 32), &out_token, v46, v23);

  _Block_release(v23);
  if (v25)
  {
    aBlock = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    aBlock = 0xD00000000000001ELL;
    v50 = 0x8000000100126990;
    v47 = v22;
    v48 = a2;

    v26._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x746C75736572202CLL;
    v27._object = 0xE900000000000020;
    String.append(_:)(v27);
    LODWORD(v47) = v25;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29 = aBlock;
    v30 = v50;
    sub_100108A0C();
    swift_allocError();
    *v31 = v29;
    v31[1] = v30;
    swift_willThrow();
    return sub_100108A60(v17);
  }

  else
  {
    sub_100016144(v17, v14);
    v33 = v43;
    v34 = *(v43 + 48);
    v35 = out_token;
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v22;
    *(v36 + 32) = a2;

    v37 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
    AsyncStream.Continuation.onTermination.setter();
    v38 = *(*(v37 - 8) + 8);
    v38(&v14[v34], v37);
    v39 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
    v40 = *(v39 - 8);
    (*(v40 + 8))(v14, v39);
    sub_1000161B4(v17, v14);
    v41 = *(v33 + 48);
    (*(v40 + 32))(v44, v14, v39);
    return (v38)(&v14[v41], v37);
  }
}

uint64_t sub_100015E70()
{
  v1 = (sub_10004DED0(&qword_100161618, &unk_100119018) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100015FAC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = *(*(sub_10004DED0(&unk_10015FCF0, &unk_100117B60) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000164FC, 0, 0);
}

uint64_t sub_100016144(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_100161618, &unk_100119018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000161B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_100161618, &unk_100119018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SpringBoardApplicationStateProvider()
{
  result = qword_10015C5F0;
  if (!qword_10015C5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016274()
{
  sub_10001643C(319, &qword_10015C600, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10001643C(319, &qword_10015C608, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_100016490(319, &unk_10015C610, &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_100016490(319, &unk_10015C620, &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10001643C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LaunchableApplicationsSnapshot);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100016490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100052374(&unk_10015FC00, &qword_100111C00);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000164FC()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v4 = sub_100015348(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100021998;
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_100016628()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015C7A0, &unk_100112A90);
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = *(v82 + 64);
  __chkstk_darwin(v2);
  v81 = &v63 - v4;
  v5 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v80 = &v63 - v7;
  v8 = sub_10004DED0(&unk_10015C7B0, &unk_100112AA0);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v70 = (&v63 - v10);
  v11 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v12 = *(v11 - 8);
  v87 = v11;
  v88 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v85 = &v63 - v14;
  v71 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  v69 = *(v71 - 8);
  v79 = *(v69 + 64);
  v15 = __chkstk_darwin(v71);
  v77 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v63 - v17;
  v18 = sub_10004DED0(&qword_10015C7C8, &qword_100112AB8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v63 - v21);
  v86 = sub_10004DED0(&qword_10015C7D0, &unk_100112AC0);
  v67 = *(v86 - 8);
  v23 = v67;
  v72 = *(v67 + 64);
  v24 = __chkstk_darwin(v86);
  v68 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v63 - v26;
  v28 = sub_10004DED0(&qword_10015C7D8, &unk_100113240);
  v76 = v28;
  v78 = *(v28 - 8);
  v29 = v78;
  v30 = *(v78 + 64);
  __chkstk_darwin(v28);
  v32 = &v63 - v31;
  *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable) = 0;
  *v22 = 1;
  v33 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v19 + 104))(v22, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v18);
  v75 = v32;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v19 + 8))(v22, v18);
  (*(v29 + 16))(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshots, v32, v28);
  v66 = *(v23 + 16);
  v34 = v27;
  v65 = v27;
  v66(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshotsContinuation, v27, v86);
  v35 = [objc_allocWithZone(SBSHomeScreenService) init];
  *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_homeScreenService) = v35;
  v36 = v70;
  *v70 = 1;
  v38 = v73;
  v37 = v74;
  (*(v73 + 104))(v36, v33, v74);
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  v40 = v84;
  v39 = v85;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v38 + 8))(v36, v37);
  v41 = v69;
  v42 = *(v69 + 16);
  v43 = v71;
  v42(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEvent, v40, v71);
  (*(v88 + 16))(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEventContinuation, v39, v87);
  v74 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_homeScreenService;
  v44 = [*(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_homeScreenService) addHomeScreenApplicationsObserver:v1];
  v64 = v1;
  v45 = *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable);
  *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable) = v44;
  swift_unknownObjectRelease();
  v46 = type metadata accessor for TaskPriority();
  v47 = v80;
  (*(*(v46 - 8) + 56))(v80, 1, 1, v46);
  v48 = v77;
  v42(v77, v40, v43);
  v49 = v68;
  v50 = v86;
  v66(v68, v34, v86);
  v51 = v41;
  v52 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v53 = v67;
  v54 = (v79 + *(v67 + 80) + v52) & ~*(v67 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  (*(v51 + 32))(v55 + v52, v48, v43);
  (*(v53 + 32))(v55 + v54, v49, v50);
  sub_100094AF4(0, 0, v47, &unk_100112AD8, v55);

  v56 = v64;
  v57 = [*(v64 + v74) allHomeScreenApplicationBundleIdentifiers];
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v89 = v58;
  v59 = v81;
  v60 = v87;
  v61 = v85;
  AsyncStream.Continuation.yield(_:)();
  (*(v82 + 8))(v59, v83);
  (*(v88 + 8))(v61, v60);
  (*(v51 + 8))(v84, v43);
  (*(v53 + 8))(v65, v50);
  (*(v78 + 8))(v75, v76);
  return v56;
}

uint64_t sub_100016EF4()
{
  v1 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&qword_10015C7D0, &unk_100112AC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_100017078(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100017104(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_10004DED0(&qword_10015CB88, &qword_100112E18);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      sub_10006B9EC();
      swift_allocError();
      *v4 = 0xD00000000000003BLL;
      v4[1] = 0x80000001001222B0;
    }

    swift_errorRetain();
    sub_10004DED0(&qword_10015CB88, &qword_100112E18);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1000171E0(void *a1, uint64_t a2)
{
  v4 = *(*(sub_10004DED0(&qword_10015CB88, &qword_100112E18) - 8) + 80);

  return sub_100017104(a1, a2);
}

uint64_t sub_10001726C()
{
  v1 = v0[4];
  v0[9] = v1;
  v2 = [v1 subscriptions];
  if (v2)
  {
    v9 = v2;
    sub_100008294(0, &qword_10015CB70, CTXPCServiceSubscriptionContext_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v0[10] = v10;
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v0[11] = v11;
    if (v11)
    {
LABEL_6:
      v0[12] = kCTSIMSupportSIMStatusNotInserted;
      v12 = v0[10];
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v12, v3, v4, v5, v6, v7, v8);
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;
      v0[13] = v13;
      v0[14] = 1;
      v15 = v0[5];
      v16 = swift_task_alloc();
      v0[15] = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v14;
      v17 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v18 = swift_task_alloc();
      v0[16] = v18;
      *v18 = v0;
      v18[1] = sub_10001E2A8;
      v8 = &type metadata for String;
      v6 = sub_10001E2A0;
      v11 = (v0 + 2);
      v5 = 0x80000001001221F0;
      v12 = 0;
      v3 = 0;
      v4 = 0xD000000000000011;
      v7 = v16;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v12, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[11] = v11;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_100017488()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10006B6D8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10001726C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000175A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    sub_10004DED0(&qword_10015CB78, &qword_100112E10);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3)
    {
      sub_10006B9EC();
      swift_allocError();
      *v4 = 0xD000000000000030;
      v4[1] = 0x8000000100122230;
    }

    swift_errorRetain();
    sub_10004DED0(&qword_10015CB78, &qword_100112E10);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100017680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_10004DED0(&qword_10015CB78, &qword_100112E10) - 8) + 80);

  return sub_1000175A4(a1, a2, a3);
}

uint64_t sub_100017724(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, void *a8)
{
  v9 = v8[2];
  v10 = v8[12];
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v8[3];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v8[13];
  if (v9 == v12 && v11 == v13)
  {

LABEL_9:
    v19 = v8[14];
    a2 = v8[10];
    if (v19 == v8[11])
    {
      v17 = 1;
      goto LABEL_11;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v23 = v8[14];
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, a2, a3, a4, a5, a6, a7, a8);
      }

      v10 = *(a2 + 8 * v19 + 32);
    }

    v24 = v10;
    v8[13] = v10;
    v8[14] = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      v25 = v8[5];
      v26 = swift_task_alloc();
      v8[15] = v26;
      *(v26 + 16) = v25;
      *(v26 + 24) = v24;
      v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v28 = swift_task_alloc();
      v8[16] = v28;
      *v28 = v8;
      v28[1] = sub_10001E2A8;
      a8 = &type metadata for String;
      a6 = sub_10001E2A0;
      a5 = 0x80000001001221F0;
      v10 = v8 + 2;
      a2 = 0;
      a3 = 0;
      a4 = 0xD000000000000011;
      a7 = v26;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, a2, a3, a4, a5, a6, a7, a8);
    }

    __break(1u);
    goto LABEL_23;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_9;
  }

  v17 = 0;
  v18 = v8[10];
LABEL_11:
  v20 = v8[9];

  v21 = v8[1];

  return v21(v17);
}

uint64_t sub_100017950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000179C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&unk_10015F9E0, &unk_100112BB0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_100017B28(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100017B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001E788, 0, 0);
}

uint64_t sub_100017BF4()
{
  v1 = v0[13];
  v2 = v0[6];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10001F438;
  v5 = v0[13];
  v6 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v0 + 19, 0, 0, v6);
}

uint64_t sub_100017CC0(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10001EAFC, 0, 0);
}

unint64_t sub_100017DC0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100006910(a1, v4);
}

uint64_t sub_100017E58(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1000069D8(*(a1 + 48) + 40 * v10, v15);
    sub_10001EE30(*(a1 + 56) + 32 * v10, &v16);
    sub_100005F90(v15, &v13);
    if (swift_dynamicCast())
    {
      sub_10000665C(v14);
      sub_10001EFFC(&v13, v11, v12);
    }

    else
    {
      sub_10000665C(v14);
    }

    v5 &= v5 - 1;
    result = sub_1000068B0(v15, &qword_10015C8E8, &qword_100112B50);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017FDC()
{
  v0 = [objc_allocWithZone(AAAppleAccountInformationCache) init];
  v1 = objc_opt_self();
  v2 = [v1 sharedManager];
  v3 = [v2 isAgeAttestationPhase1Enabled];

  v4 = [v1 sharedManager];
  v5 = [v4 isAgeBasedAccountSupportEnabled];

  [objc_opt_self() isCloudSubscriber];
  v6 = [v0 primaryAccountSignInState];
  if (v6 <= 1)
  {
    if (v6 == 1)
    {
      v12 = [v0 accountFullName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v14;
      }
    }

    goto LABEL_13;
  }

  if (v6 == 2)
  {
    if (v3)
    {
      v16 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
      v17 = [v16 ageRangeSettings];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 u13Limit];

        return v19 - 1;
      }

      else
      {

        return 12;
      }
    }

LABEL_13:

    return 0;
  }

  if (v6 != 4 || !v5)
  {
    goto LABEL_13;
  }

  v7 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
  v8 = [v7 ageRangeSettings];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 u18Limit];

    v11 = v10 - 1;
  }

  else
  {
    v11 = 17;
  }

  v20 = [v7 ageRangeSettings];
  if (v20)
  {
    v21 = v20;
    [v20 u13Limit];
  }

  return v11;
}

uint64_t sub_100018274(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100018308();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

unint64_t sub_100018308()
{
  result = qword_10015C450;
  if (!qword_10015C450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015C450);
  }

  return result;
}

uint64_t sub_100018354()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  AsyncStream.Continuation.yield<A>()();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100018420()
{
  if (*(v0 + 152) & 1) != 0 || (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_1000197CC;

    return sub_100018518();
  }
}

void *sub_100018544(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100018588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_100018638(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000EE9F4(v2, v3);
}

uint64_t sub_100018684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000186CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001872C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001878C()
{
  result = qword_10015F480;
  if (!qword_10015F480)
  {
    sub_100052374(&qword_10015F488, &qword_1001167F0);
    sub_10000A568(&qword_10015F328, &type metadata accessor for SettingsAnyPlatformViewControllerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F480);
  }

  return result;
}

uint64_t sub_100018848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000188C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!*(a2 + 16) || (v7 = sub_1000B89A8(a1), (v8 & 1) == 0) || (sub_10001EE30(*(a2 + 56) + 32 * v7, v10), sub_10004DED0(a3, a4), (swift_dynamicCast() & 1) == 0) || (result = v11) == 0)
  {
    if (qword_10015AB28 != -1)
    {
      swift_once();
    }

    v11 = qword_1001697D8;

    swift_getAtKeyPath();

    return v10[0];
  }

  return result;
}

uint64_t sub_1000189B8()
{
  type metadata accessor for SettingsAppDependencyStore();
  v0 = swift_allocObject();
  v1 = sub_10004DED0(&qword_10015B2A0, &qword_10010FCB0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  v4 = sub_10004DED0(&qword_10015B2A8, qword_10010FCB8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = PassthroughSubject.init()();
  *(v0 + 24) = result;
  qword_1001697D8 = v0;
  return result;
}

uint64_t sub_100018A48()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169838);
  sub_10000659C(v0, qword_100169838);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100018AAC@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100021300((v1 + 32), (v1 + 49), a1);
}

id sub_100018B00()
{
  if (qword_10015AB58 != -1)
  {
    swift_once();
  }

  if (![qword_100169810 airplaneMode])
  {
    goto LABEL_6;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    MobileGestalt_get_wapiCapability();

LABEL_6:
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  __break(1u);
  return result;
}

__n128 sub_100018C1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_100018C28()
{
  result = qword_10015E268;
  if (!qword_10015E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E268);
  }

  return result;
}

id sub_100018C7C()
{
  v1 = *(v0 + 144);

  p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
  if (v1)
  {
    goto LABEL_4;
  }

  result = [*(v0 + 152) defaultStore];
  if (!result)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:result];

  v1 = [v5 accountForService:AIDAServiceTypeStore];
  if (v1)
  {
LABEL_4:
    v6 = v1;
    v7 = [v6 userFullName];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v6 aa_isCloudSubscriber];
      goto LABEL_21;
    }

    v9 = 0;
    v11 = 0;
    goto LABEL_20;
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedInstance];
  v15 = [v14 protoAccount];

  if (!v15)
  {
LABEL_13:
    v20 = [v13 sharedInstance];
    v21 = [v20 protoAccount];

    if (v21)
    {
      if ([v21 proto_ageRange] == 2)
      {
        v22 = [objc_opt_self() sharedManager];
        v23 = [v22 isAgeBasedAccountSupportEnabled];

        if (v23)
        {
          v24 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
          v25 = [v24 ageRangeSettings];

          if (v25)
          {
            v26 = [v25 u18Limit];

            v9 = v26 - 1;
          }

          else
          {
            v9 = 17;
          }

          v60 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
          v1 = [v60 ageRangeSettings];

          if (v1)
          {
            v61 = [v1 u13Limit];

            v1 = 0;
            v11 = v61;
            v12 = 128;
          }

          else
          {

            v12 = 128;
            v11 = 13;
          }

          goto LABEL_21;
        }
      }
    }

    v9 = 0;
    v11 = 0;
    v1 = 0;
LABEL_20:
    v12 = 192;
    goto LABEL_21;
  }

  if ([v15 proto_ageRange] != 1 || (v16 = objc_msgSend(objc_opt_self(), "sharedManager"), v17 = objc_msgSend(v16, "isAgeAttestationPhase1Enabled"), v16, !v17))
  {

    goto LABEL_13;
  }

  v18 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
  v1 = [v18 ageRangeSettings];

  if (v1)
  {
    v19 = [v1 u13Limit];

    v11 = 0;
    v1 = 0;
    v9 = v19 - 1;
    v12 = 64;
  }

  else
  {
LABEL_51:

    v11 = 0;
    v12 = 64;
    v9 = 12;
  }

LABEL_21:
  result = [*(v0 + 152) p_base_meths[475]];
  if (!result)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v27 = result;
  v28 = [result dmc_visibleSecondaryRemoteManagementAccounts];

  sub_100018308();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v12;
  v63 = v11;
  v64 = v1;
  v65 = v9;
  v66 = v0;
  if (v29)
  {
    v30 = 0;
    v70 = v15 & 0xC000000000000001;
    v69 = v15 & 0xFFFFFFFFFFFFFF8;
    v31 = &_swiftEmptyArrayStorage;
    v67 = v15;
    v68 = v29;
    while (1)
    {
      if (v70)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v69 + 16))
        {
          goto LABEL_50;
        }

        v32 = *(v15 + 8 * v30 + 32);
      }

      v1 = v32;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      result = [v32 identifier];
      if (!result)
      {
        break;
      }

      v33 = result;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      p_base_meths = v35;
      result = [v1 accountDescription];
      if (!result)
      {
        goto LABEL_58;
      }

      v36 = result;
      v71 = v30 + 1;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      result = [v1 username];
      if (!result)
      {
        goto LABEL_59;
      }

      v40 = result;

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1000C50C0(0, *(v31 + 2) + 1, 1, v31);
      }

      v43 = v31;
      v44 = *(v31 + 2);
      v45 = v43;
      v46 = *(v43 + 3);
      if (v44 >= v46 >> 1)
      {
        v45 = sub_1000C50C0((v46 > 1), v44 + 1, 1, v45);
      }

      *(v45 + 2) = v44 + 1;
      v47 = &v45[56 * v44];
      v31 = v45;
      *(v47 + 4) = v34;
      *(v47 + 5) = p_base_meths;
      *(v47 + 6) = v37;
      *(v47 + 7) = v39;
      *(v47 + 8) = v41;
      *(v47 + 9) = v0;
      v47[80] = 0;
      v48 = [v1 dmc_bearerReauthURL];
      if (v48)
      {

        result = [v1 identifier];
        if (!result)
        {
          goto LABEL_60;
        }

        v49 = result;

        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v0 = v51;

        v52 = [objc_opt_self() mainBundle];
        v73._object = 0x800000010011EB70;
        v53._countAndFlagsBits = 0x6150207265746E45;
        v53._object = 0xEE0064726F777373;
        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        v73._countAndFlagsBits = 0xD000000000000014;
        v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v73);
        p_base_meths = v55._object;

        v57 = *(v31 + 2);
        v56 = *(v31 + 3);
        if (v57 >= v56 >> 1)
        {
          v31 = sub_1000C50C0((v56 > 1), v57 + 1, 1, v31);
        }

        *(v31 + 2) = v57 + 1;
        v58 = &v31[56 * v57];
        *(v58 + 4) = v50;
        *(v58 + 5) = v0;
        *(v58 + 3) = v55;
        *(v58 + 4) = xmmword_100110E00;
        v58[80] = 1;
      }

      else
      {
      }

      v15 = v67;
      ++v30;
      if (v71 == v68)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v31 = &_swiftEmptyArrayStorage;
LABEL_46:

  v59 = *(v66 + 8);

  return v59(v65, v63, v62, v31);
}

uint64_t sub_10001947C()
{
  v1 = v0[16];
  if (!v1)
  {
LABEL_4:
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_4;
  }

  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v10 = v0[8];
  v11 = sub_10001FA58(v1);

  v0[5] = v11;
  sub_10004DED0(&qword_10015C7D0, &unk_100112AC0);
  AsyncStream.Continuation.yield(_:)();
  (*(v8 + 8))(v7, v10);
  v12 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = sub_10004DED0(&qword_10015C7F8, &qword_100112AF0);
  *v13 = v0;
  v13[1] = sub_10001F93C;

  return AsyncDebounceSequence.Iterator.next()(v0 + 3, v14);
}

int *sub_10001960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = static Alignment.center.getter();
  v9 = v8;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v11 = result;
    appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

    if (appleInternalInstallCapability)
    {
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v13 = sub_10004DED0(&qword_10015E230, &qword_1001153C8);
    (*(*(v13 - 8) + 16))(a2, a1, v13);
    result = sub_10004DED0(&qword_10015E238, &unk_1001153D0);
    v14 = (a2 + result[9]);
    *v14 = v6;
    v14[1] = v5;
    v14[2] = v7;
    v14[3] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100019700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100018C28();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100019768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100018C28();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000197CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 120);
  v8 = *v4;
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  *(v5 + 153) = a3;
  *(v5 + 144) = a4;

  return _swift_task_switch(sub_1000198D4, 0, 0);
}

uint64_t sub_1000198D4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 153);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_10004DED0(&qword_10015C440, &qword_1001123D0);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v3, v6);
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10001F438;
  v9 = *(v0 + 104);
  v10 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 152, 0, 0, v10);
}

uint64_t storeEnumTagSinglePayload for SettingsAppQuickAction(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100019ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019B0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100019B54@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100019CAC(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimarySettingsList);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100019D14(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = a2 + *(sub_10004DED0(&qword_10015E5A0, &qword_100115688) + 36);
  sub_100019D78(v2);
  result = sub_10004DED0(&qword_10015E5A8, &qword_100115690);
  v13 = &v11[*(result + 36)];
  *v13 = v8;
  v13[1] = v10;
  *a2 = sub_1000943E4;
  a2[1] = v7;
  return result;
}

uint64_t sub_100019CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100019D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019D78(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004DED0(&qword_10015E5B0, &qword_100115698);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  sub_100093E94(&v15 - v9);
  v11 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 24);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v11 = v16;
  }

  swift_getKeyPath();
  v16 = v11;
  sub_100020BE0(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + 16);

  sub_100094464();
  View.accessibilityHidden(_:)();
  return sub_1000068B0(v10, &qword_10015E5B0, &qword_100115698);
}

unint64_t sub_100019FDC()
{
  result = qword_10015E5C0;
  if (!qword_10015E5C0)
  {
    sub_100052374(&qword_10015E5C8, &qword_1001156C8);
    sub_10001A068();
    sub_10001A0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E5C0);
  }

  return result;
}

unint64_t sub_10001A068()
{
  result = qword_10015E5D0;
  if (!qword_10015E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E5D0);
  }

  return result;
}

unint64_t sub_10001A0BC()
{
  result = qword_10015E5D8;
  if (!qword_10015E5D8)
  {
    sub_100052374(&qword_10015E5E0, &qword_1001156D0);
    sub_1000525A0(&qword_10015E5E8, &qword_10015E5F0, &qword_1001156D8);
    sub_1000525A0(&qword_10015E5F8, &qword_10015E600, &qword_1001156E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E5D8);
  }

  return result;
}

uint64_t sub_10001A1A0()
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  if (v2)
  {
    goto LABEL_7;
  }

  if (qword_10015AAC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_1001696D0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "No cached data model found, requesting new snapshot.", v6, 2u);
  }

  v7 = sub_10001A468();
  sub_1000308BC(v7, v8, v9);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *v1;
  if (*v1)
  {
LABEL_7:
    v12 = v1[1];
    v11 = v1[2];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001A38C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  sub_100030A7C(*a1);
  sub_1000308BC(v2, v3, v4);
}

uint64_t sub_10001A3DC()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_1001696D0);
  sub_10000659C(v0, qword_1001696D0);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001A468()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v12 = sub_10000659C(v7, qword_100169718);
  v42 = v8;
  (*(v8 + 16))(v11, v12, v7);
  static OSSignpostID.exclusive.getter();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v41 = v11;
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  v16 = OSSignpostID.rawValue.getter();
  v39 = v14;
  v40 = v13;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v16, "PrimarySettingsList Data Model Snapshot", "", v13, 2u);
  v17 = sub_10001A920();
  v47 = &_swiftEmptyArrayStorage;
  v18 = v17[2];
  if (v18)
  {
    v34 = v7;
    v35 = v6;
    v36 = v3;
    v37 = v2;
    v19 = (v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
    v38 = v17;
    v20 = (v17 + 4);
    do
    {
      sub_10000B270(v20, v44);
      v21 = v45;
      v22 = v46;
      sub_100018544(v44, v45);
      swift_getKeyPath();
      v43[0] = v1;
      sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v23 = v19[3];
      v48[2] = v19[2];
      v48[3] = v23;
      v48[4] = v19[4];
      v24 = v19[1];
      v48[0] = *v19;
      v48[1] = v24;
      sub_100063D94(v48, v43);
      v25 = sub_10005F86C(v48, v21, v22);
      sub_100063DF0(v48);
      sub_10000665C(v44);
      sub_100026108(v25);
      v20 += 40;
      --v18;
    }

    while (v18);

    v26 = v47;
    v2 = v37;
    v3 = v36;
    v6 = v35;
    v7 = v34;
  }

  else
  {

    v26 = &_swiftEmptyArrayStorage;
  }

  v27 = sub_10002ED3C(v26);
  v28 = static os_signpost_type_t.end.getter();
  v29 = OSSignpostID.rawValue.getter();
  v30 = v28;
  v31 = v39;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v30, v29, "PrimarySettingsList Data Model Snapshot", "", v40, 2u);

  (*(v3 + 8))(v6, v2);
  (*(v42 + 8))(v41, v7);
  return v27;
}

uint64_t sub_10001A8CC(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v7[4] = a1[4];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *a2;
  sub_100063D94(v7, &v6);
  return sub_10009AB30(v7);
}

void *sub_10001A920()
{
  v1 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders;
  if (*(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___sectionCollectionDataModelProviders);
  }

  else
  {
    v2 = sub_1000999C4();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10001A984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_10004DED0(&qword_10015CB58, &qword_100112E00);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100009C48, 0, 0);
}

uint64_t sub_10001AABC(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015CB48, &unk_100113070) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000ACE4;

  return sub_100009B7C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10001ABC0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100017CC0;

    return sub_10001ACB0();
  }

  else
  {
    v5 = v0[9];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10001ACB0()
{
  *(v1 + 80) = v0;

  return _swift_task_switch(sub_10001AD40, v0, 0);
}

uint64_t sub_10001AD40()
{
  v1 = objc_opt_self();
  *(v0 + 88) = v1;
  v2 = [v1 sharedManager];
  *(v0 + 96) = v2;
  if (!v2)
  {
    __break(1u);
  }

  return _swift_task_switch(sub_10000A7FC, 0, 0);
}

__n128 sub_10001ADFC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001AE08()
{
  result = qword_10015C930;
  if (!qword_10015C930)
  {
    sub_100052374(&qword_10015C900, &qword_1001123C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C930);
  }

  return result;
}

uint64_t sub_10001AE80()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_10000AD88, 0, 0);
}

uint64_t sub_10001AFC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000659C(v5, qword_100169628);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, a4, v8, 0xCu);
      sub_1000068B0(v9, &unk_10015F9C0, &unk_100115230);
    }

    sub_10004DED0(&qword_10015CB90, &qword_100112E20);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = &_swiftEmptyArrayStorage;
    }

    if (v12 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_10004DED0(&qword_10015CB90, &qword_100112E20);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10001B1E4()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10000AF78;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 185, 0, 0, 0xD000000000000013, 0x8000000100122170, sub_10000AEE8, v2, &type metadata for Bool);
}

void sub_10001B390(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10001B8F4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001B8E0;
  aBlock[3] = &unk_10014EC38;
  v11 = _Block_copy(aBlock);

  [a2 danglingPlanItemsShouldUpdate:0 completion:v11];
  _Block_release(v11);
}

uint64_t sub_10001B548(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C7C0, &qword_100112AB0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015C7D0, &unk_100112AC0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_10001B6B0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10001B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10004DED0(&qword_10015C7E0, &qword_100112AE0);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = sub_10004DED0(&qword_10015C7E8, &qword_100112AE8);
  v5[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10001BFD0, 0, 0);
}

void sub_10001B7B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10001B830()
{
  v0 = *(sub_10004DED0(&qword_10015CB90, &qword_100112E20) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10001B908()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_10001BA4C, 0, 0);
}

uint64_t sub_10001BA4C()
{
  v1 = *(v0 + 80);

  *(v0 + 194) = *(v0 + 186);

  return _swift_task_switch(sub_10001BAEC, v1, 0);
}

uint64_t sub_10001BAEC()
{
  *(v0 + 187) = 0;
  v1 = *(v0 + 80);
  *(v0 + 189) = 0;
  v2 = *(v1 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyServerConnection);
  CellularDataSettings = _CTServerConnectionGetCellularDataSettings();
  if (CellularDataSettings)
  {
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000659C(v4, qword_100169628);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240448;
      *(v7 + 4) = CellularDataSettings;
      *(v7 + 8) = 1026;
      *(v7 + 10) = HIDWORD(CellularDataSettings);
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get cellular data settings: { domain: %{public}d, errorCode: %{public}d }", v7, 0xEu);
    }
  }

  *(v0 + 190) = 0;
  IsDead = _CTServerConnectionGetRadioModuleIsDead();
  if (IsDead)
  {
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000659C(v9, qword_100169628);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240448;
      *(v12 + 4) = IsDead;
      *(v12 + 8) = 1026;
      *(v12 + 10) = HIDWORD(IsDead);
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to get radio module state: { domain: %{public}d, errorCode: %{public}d }", v12, 0xEu);
    }
  }

  *(v0 + 191) = 0;
  IsUserIdentityModuleRequired = _CTServerConnectionIsUserIdentityModuleRequired();
  if (IsUserIdentityModuleRequired)
  {
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000659C(v14, qword_100169628);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67240448;
      *(v17 + 4) = IsUserIdentityModuleRequired;
      *(v17 + 8) = 1026;
      *(v17 + 10) = HIDWORD(IsUserIdentityModuleRequired);
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to get if SIM is required: { domain: %{public}d, errorCode: %{public}d }", v17, 0xEu);
    }
  }

  if (!*(*(v0 + 80) + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_coreTelephonyClient))
  {
    __break(1u);
  }

  v18 = swift_task_alloc();
  *(v0 + 168) = v18;
  *v18 = v0;
  v18[1] = sub_10001E3C8;

  return sub_10001DBE0();
}

uint64_t sub_10001BEAC()
{
  v1 = v0[18];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_10001B908;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 186, 0, 0, 0xD000000000000016, 0x8000000100122190, sub_10001C2AC, v2, &type metadata for Bool);
}

uint64_t sub_10001BFD0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[6];
  sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  sub_10000B20C();
  AsyncSequence.debounce<>(for:tolerance:)();
  v4 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[13] = v4;
  sub_10001C304(v1);
  v0[2] = v4;
  v5 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = sub_10004DED0(&qword_10015C7F8, &qword_100112AF0);
  *v6 = v0;
  v6[1] = sub_10001F93C;

  return AsyncDebounceSequence.Iterator.next()(v0 + 3, v7);
}

void sub_10001C0FC(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_10015CB90, &qword_100112E20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10001B830;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001B7B8;
  aBlock[3] = &unk_10014EBE8;
  v11 = _Block_copy(aBlock);

  [a2 getSupportedFlowTypes:v11];
  _Block_release(v11);
}

uint64_t type metadata accessor for AccountsStateProvider()
{
  result = qword_10015C338;
  if (!qword_10015C338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001C304(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015C7E8, &qword_100112AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001C36C()
{
  sub_10001261C(319, &qword_10015C348, &type metadata for AccountsStateSnapshot, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10001261C(319, &qword_10015C350, &type metadata for AccountsStateSnapshot, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10001261C(319, &unk_10015C500, &type metadata for ()[8], &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10001261C(319, &unk_10015C358, &type metadata for ()[8], &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10001C570()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v112 = &v97 - v3;
  v4 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v108 = *(v4 - 8);
  v5 = *(v108 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v110 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v7;
  __chkstk_darwin(v6);
  v128 = &v97 - v8;
  v129 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v120 = *(v129 - 1);
  v9 = *(v120 + 64);
  __chkstk_darwin(v129);
  v119 = (&v97 - v10);
  v11 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v12 = *(v11 - 8);
  v126 = v11;
  v127 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v131 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v15;
  __chkstk_darwin(v14);
  v133 = &v97 - v16;
  v132 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v125 = *(v132 - 8);
  v17 = *(v125 + 64);
  v18 = __chkstk_darwin(v132);
  v111 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v19;
  __chkstk_darwin(v18);
  v130 = &v97 - v20;
  v21 = sub_10004DED0(&qword_10015C438, &qword_1001123C8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v97 - v24);
  v26 = sub_10004DED0(&qword_10015C440, &qword_1001123D0);
  v124 = *(v26 - 8);
  v27 = *(v124 + 64);
  v28 = __chkstk_darwin(v26);
  v106 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v29;
  __chkstk_darwin(v28);
  v31 = &v97 - v30;
  v32 = sub_10004DED0(&qword_10015C448, qword_1001123D8);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v97 - v35;
  swift_defaultActor_initialize();
  v122 = OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationToken;
  *(v0 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationToken) = 0;
  *v25 = 1;
  v37 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v22 + 104))(v25, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v21);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v22 + 8))(v25, v21);
  v38 = v126;
  v114 = v33;
  v39 = *(v33 + 16);
  v113 = v36;
  v115 = v32;
  v39(v0 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshots, v36, v32);
  v40 = *(v124 + 16);
  v123 = v31;
  v116 = v26;
  v104 = v124 + 16;
  v103 = v40;
  v40((v0 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_snapshotsContinuation), v31, v26);
  v42 = v119;
  v41 = v120;
  *v119 = 1;
  v43 = v127;
  v44 = v37;
  v45 = v133;
  v46 = v0;
  v47 = v129;
  (*(v41 + 104))(v42, v44, v129);
  v48 = v130;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v41 + 8))(v42, v47);
  v49 = *(v125 + 16);
  v102 = v125 + 16;
  v101 = v49;
  v49((v46 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEvent), v48, v132);
  v50 = v38;
  v129 = *(v43 + 16);
  (v129)(v46 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_onReceiveAccountStoreEventContinuation, v45, v38);
  v51 = [objc_allocWithZone(type metadata accessor for MonitoredAccountStoreDelegateAdaptor()) init];
  *(v46 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_monitoredAccountStoreDelegateAdaptor) = v51;
  v52 = qword_10015AA00;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = objc_allocWithZone(ACMonitoredAccountStore);
  v55 = v53;
  v119 = v55;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v57 = [v54 initWithAccountTypes:isa delegate:v55];

  *(v46 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_monitoredAccountStore) = v57;
  v58 = [objc_allocWithZone(AKAgeRangeSettingsCache) init];
  aBlock[0] = v58;
  swift_getKeyPath();
  v59 = v131;
  v120 = v43 + 16;
  (v129)(v131, v45, v50);
  v60 = *(v43 + 80);
  v61 = (v60 + 16) & ~v60;
  v118 = v60 | 7;
  v99 = v61 + v121;
  v62 = swift_allocObject();
  v63 = v43 + 32;
  v117 = *(v43 + 32);
  v100 = v61;
  v117(v62 + v61, v59, v50);
  v64 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v65 = *(v46 + v122);
  *(v46 + v122) = v64;

  v122 = v46;
  *(v46 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_ageRangeCache) = v58;
  sub_10001AE08();
  v98 = v58;
  v66 = v128;
  AsyncSequence.debounce<>(for:tolerance:)();
  v67 = type metadata accessor for TaskPriority();
  v68 = v112;
  v97 = *(*(v67 - 8) + 56);
  v97(v112, 1, 1, v67);
  v69 = v66;
  v70 = v110;
  sub_100017950(v69, v110);
  v71 = v131;
  (v129)(v131, v133, v50);
  v72 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v73 = (v107 + v60 + v72) & ~v60;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  sub_10001E718(v70, v74 + v72);
  v121 = v63;
  v117(v74 + v73, v71, v50);
  v75 = sub_100094AF4(0, 0, v68, &unk_100112428, v74);

  v76 = sub_100015698(0, 1, 1, &_swiftEmptyArrayStorage);
  v78 = v76[2];
  v77 = v76[3];
  if (v78 >= v77 >> 1)
  {
    v76 = sub_100015698((v77 > 1), v78 + 1, 1, v76);
  }

  v76[2] = v78 + 1;
  v76[v78 + 4] = v75;
  *(v122 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_observationTasks) = v76;
  v79 = v68;
  v97(v68, 1, 1, v67);
  v80 = v111;
  v81 = v132;
  v101(v111, v130, v132);
  v110 = v75;
  v82 = v106;
  v83 = v116;
  v103(v106, v123, v116);
  v84 = v124;
  v85 = v125;
  v86 = (*(v125 + 80) + 32) & ~*(v125 + 80);
  v87 = (v109 + *(v124 + 80) + v86) & ~*(v124 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  (*(v85 + 32))(v88 + v86, v80, v81);
  (*(v84 + 32))(v88 + v87, v82, v83);
  sub_100094AF4(0, 0, v79, &unk_100112438, v88);

  v89 = v122;
  v90 = *(v122 + OBJC_IVAR____TtC11SettingsApp21AccountsStateProvider_monitoredAccountStore);
  v91 = v131;
  v92 = v133;
  v93 = v126;
  (v129)(v131, v133, v126);
  v94 = swift_allocObject();
  v117(v94 + v100, v91, v93);
  aBlock[4] = sub_10001F3AC;
  aBlock[5] = v94;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018274;
  aBlock[3] = &unk_10014E5C8;
  v95 = _Block_copy(aBlock);

  [v90 registerWithCompletion:v95];
  _Block_release(v95);

  sub_10001EC24(v128);
  (*(v127 + 8))(v92, v93);
  (*(v85 + 8))(v130, v81);
  (*(v84 + 8))(v123, v83);
  (*(v114 + 8))(v113, v115);
  return v89;
}

id sub_10001D334@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ageRangeSettings];
  *a2 = result;
  return result;
}

uint64_t sub_10001D374()
{
  v1 = (sub_10004DED0(&unk_10015F9E0, &unk_100112BB0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = v1[15];
  v14 = type metadata accessor for ContinuousClock();
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10001D544()
{
  v1 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004DED0(&qword_10015C440, &qword_1001123D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t type metadata accessor for MonitoredAccountStoreDelegateAdaptor()
{
  result = qword_10015C4F0;
  if (!qword_10015C4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001D70C()
{
  sub_10001D810(319, &unk_10015C500, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10001D810(319, &unk_10015C358, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001D810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, char *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ()[8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001DB00()
{
  sub_10004DED0(&qword_10015C470, &qword_100112480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  v5 = sub_10001DD0C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_10015C2C8 = v5;
  return result;
}

uint64_t sub_10001DC00()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_100008294(0, &qword_10015CB68, CTXPCServiceSubscriptionInfo_ptr);
  *v4 = v0;
  v4[1] = sub_100017488;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000016, 0x80000001001221D0, sub_10001706C, v2, v5);
}

Swift::Int sub_10001DD0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004DED0(&qword_10015C8E0, &qword_100112488);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10001DE74(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_10015CB88, &qword_100112E18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1000171E0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017078;
  aBlock[3] = &unk_10014EB98;
  v11 = _Block_copy(aBlock);

  [a2 getSubscriptionInfo:v11];
  _Block_release(v11);
}

void sub_10001E038(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10004DED0(&qword_10015CB78, &qword_100112E10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_100017680;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E208;
  aBlock[3] = &unk_10014EB48;
  v13 = _Block_copy(aBlock);

  [a2 getSIMStatus:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_10001E208(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_10001E2A8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_10006B748;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_100017724;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001E3C8(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 72) = a1;
  *(v3 + 64) = v1;
  v4 = *(v2 + 168);
  v5 = *(v2 + 80);
  v7 = *v1;

  return _swift_task_switch(sub_10001E50C, v5, 0);
}

uint64_t sub_10001E50C()
{
  v0[22] = 1022;
  v1 = *(v0[10] + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_netRBClientConnectionQueue);
  v0[6] = sub_10006B8FC;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10006B904;
  v0[5] = &unk_10014EAF8;
  v2 = _Block_copy(v0 + 2);
  v3 = _NETRBClientCreate();
  _Block_release(v2);
  if (v3)
  {
    _NETRBClientGetGlobalServiceState();
    _NETRBClientDestroy();
    v4 = *(v0 + 44);
    v5 = *(v0 + 45) != 4;
  }

  else
  {
    v4 = 1022;
    v5 = 1;
  }

  v6 = 0x10000000000;
  if (((*(v0 + 192) | *(v0 + 193)) | *(v0 + 194)))
  {
    v6 = 0;
  }

  v7 = v4 > 0x3FD && v5;
  if (!*(v0 + 187))
  {
    v7 = 0;
  }

  v8 = *(v0 + 188) != 0;
  if (v4 == 1023)
  {
    v9 = 0x3000000000000;
  }

  else
  {
    v9 = 0x2000000000000;
  }

  v10 = *(v0 + 191) == 0;
  v10 = *(v0 + 190) == 0;
  v11 = 256;
  if (!*(v0 + 72))
  {
    v11 = 0;
  }

  v12 = v6 | v11 | (v8 << 32);
  if (*(v0 + 189))
  {
    ++v12;
  }

  v13 = 0x1000000000000;
  if ((v7 & v8 & (*(v0 + 189) == 0)) != 0)
  {
    v13 = v9;
  }

  v14 = v0[1];
  v15 = v12 | v13 | ((*(v0 + 191) != 0) << 16) | ((*(v0 + 190) != 0) << 24);

  return v14(v15);
}

uint64_t sub_10001E718(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E788()
{
  v1 = v0[4];
  sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v2 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[9] = v2;
  v0[2] = v2;
  v3 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v4 = v0;
  v4[1] = sub_100063E88;

  return AsyncDebounceSequence.Iterator.next()(v0 + 12, v5);
}

uint64_t sub_10001E860(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015C440, &qword_1001123D0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_10001E9C8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10001E9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10004DED0(&qword_10015C458, &qword_100112448);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100017BF4, 0, 0);
}

uint64_t sub_10001EAFC()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  *(v0 + 104) = v1 & 1;
  v7 = vdupq_n_s64(v1);
  *v7.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_100112CF0), vshlq_u64(v7, xmmword_100112CE0))), 0x1000100010001);
  *(v0 + 105) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
  *(v0 + 109) = BYTE5(v1) & 1;
  *(v0 + 110) = BYTE6(v1);
  sub_10004DED0(&qword_10015CB48, &unk_100113070);
  AsyncStream.Continuation.yield(_:)();

  (*(v5 + 8))(v3, v4);
  v8 = *(v0 + 72);

  v9 = *(v0 + 8);

  return v9();
}

_DWORD *initializeBufferWithCopyOfBuffer for CellularTelephonyStateSnapshot(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_10001EC24(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001EC8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004DED0(&qword_10015C8E0, &qword_100112488);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_1000069D8(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1000697D8(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001EE30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001EE8C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100005B08(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100069930(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

_OWORD *sub_10001EFEC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001EFFC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100006A34(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10001F14C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10004DED0(&qword_10015C8E0, &qword_100112488);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10001F3AC()
{
  v0 = *(*(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8) + 80);

  return sub_100018354();
}

uint64_t sub_10001F438()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100018420, 0, 0);
}

uint64_t sub_10001F534()
{
  v1 = objc_opt_self();
  v0[19] = v1;
  v2 = [v1 defaultStore];
  v0[20] = v2;
  if (v2)
  {
    v3 = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10001F82C;
    v4 = swift_continuation_init();
    v0[17] = sub_10004DED0(&qword_10015C468, &unk_100112460);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10001F6FC;
    v0[13] = &unk_10014E5F0;
    v0[14] = v4;
    [v3 aa_primaryAppleAccountWithCompletion:v0 + 10];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v2);
}

id sub_10001F67C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_100169798 = result;
  return result;
}

uint64_t sub_10001F6B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008294(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F6FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100018544((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_10001F7D4()
{
  result = qword_10015FA10;
  if (!qword_10015FA10)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015FA10);
  }

  return result;
}

uint64_t sub_10001F82C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100064874;
  }

  else
  {
    v3 = sub_100018C7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001F93C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10006717C;
  }

  else
  {
    *(v2 + 128) = *(v2 + 24);
    v4 = sub_100019460;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001FA58(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10001EFFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001FAF0@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v116 = type metadata accessor for SearchSuggestionsPlacement();
  v115 = *(v116 - 8);
  v2 = *(v115 + 64);
  __chkstk_darwin(v116);
  v114 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SearchFieldPlacement.NavigationBarDrawerDisplayMode();
  v90 = *(v91 - 8);
  v4 = *(v90 + 64);
  __chkstk_darwin(v91);
  v89 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for SearchFieldPlacement();
  v112 = *(v113 - 8);
  v6 = *(v112 + 64);
  v7 = __chkstk_darwin(v113);
  v105 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v88 - v9;
  v10 = sub_10004DED0(&qword_10015F4D0, &qword_100116858);
  v126 = *(v10 - 8);
  v11 = *(v126 + 64);
  v12 = __chkstk_darwin(v10);
  v98 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v124 = &v88 - v15;
  __chkstk_darwin(v14);
  v97 = &v88 - v16;
  v17 = sub_10004DED0(&qword_10015F4C8, &qword_100116850);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v94 = &v88 - v19;
  v20 = type metadata accessor for PrimarySettingsList();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10004DED0(&qword_10015F200, &qword_100116518);
  v96 = *(v120 - 8);
  v24 = *(v96 + 64);
  __chkstk_darwin(v120);
  v118 = &v88 - v25;
  v100 = sub_10004DED0(&qword_10015F1F8, &qword_100116510);
  v101 = *(v100 - 8);
  v26 = *(v101 + 64);
  __chkstk_darwin(v100);
  v119 = &v88 - v27;
  v103 = sub_10004DED0(&qword_10015F1E8, &qword_100116500);
  v102 = *(v103 - 8);
  v28 = *(v102 + 64);
  __chkstk_darwin(v103);
  v123 = &v88 - v29;
  v110 = sub_10004DED0(&qword_10015F4D8, &qword_100116860);
  v109 = *(v110 - 8);
  v30 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v88 - v31;
  v104 = sub_10004DED0(&qword_10015F1D8, &qword_1001164F8);
  v32 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v107 = &v88 - v33;
  v122 = v10;
  v106 = swift_allocBox();
  v35 = v34;
  v36 = *(type metadata accessor for SettingsNavigationSplitView() + 40);
  sub_10004DED0(&qword_10015F018, &qword_100116398);
  v125 = v1;
  Bindable.wrappedValue.getter();
  v37 = *(v129 + 16);

  type metadata accessor for SettingsOmniSearchViewModel();
  v38 = sub_10000A568(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  v121 = v35;
  Bindable<A>.init(wrappedValue:)();
  Bindable.wrappedValue.getter();
  sub_100010CD0();

  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v99 = v38;
  *(v23 + 2) = Environment.init<A>(_:)();
  v23[24] = v39 & 1;
  v40 = *(v20 + 24);
  type metadata accessor for PrimarySettingsListModel();
  sub_10000A568(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  Bindable<A>.init(wrappedValue:)();
  LocalizedStringKey.init(stringLiteral:)();
  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  LOBYTE(v40) = v44;
  v45 = sub_10000A568(&qword_10015F208, type metadata accessor for PrimarySettingsList);
  v95 = v20;
  View.navigationTitle(_:)();
  sub_100009680(v41, v43, v40 & 1);

  sub_1000186CC(v23, type metadata accessor for PrimarySettingsList);
  Bindable.wrappedValue.getter();
  LOBYTE(v40) = sub_1000A9BB8();

  if (v40)
  {
    v46 = v94;
    static ToolbarDefaultItemKind.title.getter();
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v94;
  }

  v48 = type metadata accessor for ToolbarDefaultItemKind();
  (*(*(v48 - 8) + 56))(v46, v47, 1, v48);
  v129 = v95;
  v130 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v120;
  v95 = OpaqueTypeConformance2;
  v51 = v118;
  View.toolbar(removing:)();
  sub_1000068B0(v46, &qword_10015F4C8, &qword_100116850);
  (*(v96 + 8))(v51, v50);
  v52 = v126;
  v54 = (v126 + 16);
  v53 = *(v126 + 16);
  v55 = v124;
  v57 = v121;
  v56 = v122;
  v53(v124, v121, v122);
  v58 = v97;
  Bindable.projectedValue.getter();
  v59 = *(v52 + 8);
  v59(v55, v56);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v59(v58, v56);
  v96 = v129;
  v94 = v130;
  v92 = v131;
  v93 = v132;
  v118 = v54;
  v97 = v53;
  v53(v55, v57, v56);
  v60 = v98;
  Bindable.projectedValue.getter();
  v59(v55, v56);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v126 = v52 + 8;
  v98 = v59;
  v59(v60, v56);
  v61 = [objc_opt_self() currentDevice];
  v62 = [v61 userInterfaceIdiom];

  if (v62 == 1)
  {
    v63 = v89;
    static SearchFieldPlacement.NavigationBarDrawerDisplayMode.always.getter();
    v64 = v105;
    static SearchFieldPlacement.navigationBarDrawer(displayMode:)();
    (*(v90 + 8))(v63, v91);
  }

  else
  {
    v64 = v105;
    static SearchFieldPlacement.automatic.getter();
  }

  v65 = v112;
  v66 = v111;
  v67 = v64;
  v68 = v113;
  (*(v112 + 32))(v111, v67, v113);
  v127 = v120;
  v128 = v95;
  v120 = swift_getOpaqueTypeConformance2();
  v69 = v100;
  v70 = v119;
  View.searchable(text:isPresented:placement:prompt:)();

  (*(v65 + 8))(v66, v68);
  (*(v101 + 8))(v70, v69);
  v71 = v114;
  v72 = static SearchSuggestionsPlacement.menu.getter();
  __chkstk_darwin(v72);
  v73 = v106;
  sub_10004DED0(&qword_10015F1F0, &qword_100116508);
  v129 = v69;
  v130 = v120;
  swift_getOpaqueTypeConformance2();
  sub_10000C310();
  v74 = v108;
  v75 = v103;
  v76 = v123;
  View.searchSuggestions<A>(placement:_:)();
  (*(v115 + 8))(v71, v116);
  (*(v102 + 8))(v76, v75);
  v77 = v124;
  v78 = v122;
  (v97)(v124, v121, v122);
  Bindable.wrappedValue.getter();
  (v98)(v77, v78);
  v79 = v129;
  swift_getKeyPath();
  v129 = v79;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v81 = *(v79 + 24);
  v80 = *(v79 + 32);

  v82 = v107;
  v83 = &v107[*(v104 + 36)];
  v84 = sub_10004DED0(&qword_10015F230, &qword_100116528);
  v85 = *(v84 + 36);

  static TaskPriority.userInitiated.getter();
  v86 = &v83[*(v84 + 40)];
  *v86 = v81;
  *(v86 + 1) = v80;
  *v83 = &unk_1001168F0;
  *(v83 + 1) = v73;
  (*(v109 + 32))(v82, v74, v110);
  sub_100020A4C(v82, v117);
}

uint64_t sub_100020A0C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isSearching.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100020A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015F1D8, &qword_1001164F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_100020ABC()
{
  swift_getKeyPath();
  sub_100020C28(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16) != 0;
}

BOOL sub_100020BB0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100020ABC();
  *a2 = result;
  return result;
}

uint64_t sub_100020BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020C70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004C44(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_100020D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018684(&qword_10015B0E0, type metadata accessor for SettingsAppNavigationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100020E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100020EAC()
{
  result = qword_10015F258;
  if (!qword_10015F258)
  {
    sub_100052374(&qword_10015EF28, &qword_100116590);
    sub_10000A568(&qword_10015EF30, &type metadata accessor for UserInterfaceSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F258);
  }

  return result;
}

uint64_t sub_100020F60()
{
  v0 = sub_10004DED0(&qword_10015F668, &qword_100116B40);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1001697E0 = result;
  return result;
}

uint64_t sub_100020FEC()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169850);
  sub_10000659C(v0, qword_100169850);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100021050()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169868);
  sub_10000659C(v0, qword_100169868);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_1000210B4()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169880);
  sub_10000659C(v0, qword_100169880);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100021128@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier);
  return result;
}

uint64_t sub_100021204(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 49) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 49) = a1;
  swift_retain_n();
  swift_retain_n();
  Binding.init(get:set:)();
  return v11;
}

uint64_t sub_100021300@<X0>(uint64_t *a1@<X2>, unsigned __int8 *a2@<X3>, BOOL *a3@<X8>)
{
  v4 = *a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  sub_10004DED0(&qword_10015F388, &qword_100116680);
  result = Binding.wrappedValue.getter();
  v7 = v8 != 10 && v8 == v4;
  *a3 = v7;
  return result;
}

id sub_100021380()
{
  if (qword_10015AB58 != -1)
  {
    swift_once();
  }

  if (![qword_100169810 airplaneMode])
  {
    goto LABEL_6;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    MobileGestalt_get_wapiCapability();

LABEL_6:
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  __break(1u);
  return result;
}

id sub_10002149C()
{
  result = [objc_allocWithZone(RadiosPreferences) init];
  qword_100169810 = result;
  return result;
}

uint64_t sub_100021500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000215AC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10015AB58 != -1)
  {
    swift_once();
  }

  if ([qword_100169810 airplaneMode])
  {
    LocalizedStringKey.init(stringLiteral:)();
    result = Text.init(_:tableName:bundle:comment:)();
    v6 = v5 & 1;
  }

  else
  {
    result = 0;
    v3 = 0;
    v6 = 0;
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_10002168C(uint64_t *a1, int a2)
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

uint64_t sub_1000216DC(uint64_t result, int a2, int a3)
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

unint64_t sub_100021718()
{
  result = qword_10015E260;
  if (!qword_10015E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E260);
  }

  return result;
}

void sub_10002180C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch;
  v5 = *(v1 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004573C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100077A3C();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}