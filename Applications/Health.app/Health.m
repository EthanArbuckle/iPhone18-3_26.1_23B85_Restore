int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

unint64_t sub_1000031FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003958(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_100003308()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&aBlock = ObjectType;
    *v8 = 136446466;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_1000036D0(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_1000036D0(0xD00000000000002ELL, 0x80000001000A7A20, &v20);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s]: Lifecycle: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  result = (*(v2 + 8))(v5, v1);
  if (kTCCServiceMotion)
  {
    v13 = kTCCServiceMotion;
    v23 = nullsub_1;
    v24 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v22 = sub_100003E24;
    *(&v22 + 1) = &unk_1000CEF80;
    v14 = _Block_copy(&aBlock);
    TCCAccessRequest();
    _Block_release(v14);

    v15 = [objc_opt_self() sharedApplication];
    sub_1000041A0();
    sub_100003DDC(0, &qword_1000DB100, UIApplicationShortcutItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setShortcutItems:isa];

    v17 = [objc_opt_self() currentNotificationCenter];
    v18 = sub_100004814();
    [v17 setDelegate:v18];

    type metadata accessor for AppDependencyManager();
    static AppDependencyManager.shared.getter();
    sub_100003DDC(0, &qword_1000DC680, HKHealthStore_ptr);
    aBlock = 0u;
    v22 = 0u;
    v23 = 0;
    AppDependencyManager.add<A>(key:dependency:)();

    sub_100003EC4(&aBlock);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000036D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000031FC(v11, 0, 0, 1, a1, a2);
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
    sub_100003B34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003B90(v11);
  return v7;
}

void *sub_10000379C(uint64_t a1, uint64_t a2)
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

  sub_1000039A4(0, &qword_1000DB148, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003828(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000379C(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000379C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

char *sub_100003958(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003828(a1, a2);
  sub_100003A48(&off_1000CC168);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

void sub_1000039A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000039F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100003A48(uint64_t result)
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

  result = sub_10002E244(result, v12, 1, v3);
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

uint64_t sub_100003B34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003B90(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003D8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100003DDC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003E24(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2 != 0;

  v3(v4);
}

uint64_t sub_100003E7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003EC4(uint64_t a1)
{
  sub_100003D8C(0, &qword_1000DC688, &type metadata for AnyHashable, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000414C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000041A0()
{
  v0 = type metadata accessor for DeepLinkActivityType();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin();
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003D8C(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000AED70;
  v5 = v1[13];
  v5(v4, enum case for DeepLinkActivityType.summary(_:), v0);
  DeepLinkActivityType.userActivityType.getter();
  v45 = v1[1];
  v45(v4, v0);
  v42[1] = v1 + 1;
  v6 = String._bridgeToObjectiveC()();
  v43 = objc_opt_self();
  v7 = [v43 iconWithSystemImageName:v6];

  v8 = objc_allocWithZone(UIApplicationShortcutItem);
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithType:v9 localizedTitle:v10 localizedSubtitle:0 icon:v7 userInfo:0];

  *(v44 + 32) = v11;
  v5(v4, enum case for DeepLinkActivityType.sharingOverview(_:), v0);
  DeepLinkActivityType.userActivityType.getter();
  v45(v4, v0);
  v12 = String._bridgeToObjectiveC()();
  v13 = v43;
  v14 = [v43 iconWithSystemImageName:v12];

  v15 = objc_allocWithZone(UIApplicationShortcutItem);
  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 initWithType:v16 localizedTitle:v17 localizedSubtitle:0 icon:v14 userInfo:0];

  v19 = v5;
  v20 = v44;
  *(v44 + 40) = v18;
  v46 = v20;
  v5(v4, enum case for DeepLinkActivityType.browse(_:), v0);
  DeepLinkActivityType.userActivityType.getter();
  v44 = v0;
  v45(v4, v0);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v13 iconWithSystemImageName:v21];

  v23 = objc_allocWithZone(UIApplicationShortcutItem);
  v24 = String._bridgeToObjectiveC()();

  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 initWithType:v24 localizedTitle:v25 localizedSubtitle:0 icon:v22 userInfo:0];

  v27 = v26;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = v46;
  v29 = [objc_opt_self() shared];
  v30 = [v29 isMedicalIDAvailable];

  if (v30)
  {
    v31 = v44;
    v19(v4, enum case for DeepLinkActivityType.medicalID(_:), v44);
    DeepLinkActivityType.userActivityType.getter();
    v45(v4, v31);
    v32 = String._bridgeToObjectiveC()();
    v33 = [v13 iconWithSystemImageName:v32];

    v34 = objc_allocWithZone(UIApplicationShortcutItem);
    v35 = String._bridgeToObjectiveC()();

    v36 = String._bridgeToObjectiveC()();
    v37 = [v34 initWithType:v35 localizedTitle:v36 localizedSubtitle:0 icon:v33 userInfo:0];

    v38 = v37;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v41 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v46;
  }

  else
  {
  }

  return v28;
}

id sub_100004814()
{
  v1 = OBJC_IVAR____TtC6Health11AppDelegate____lazy_storage___pluginNotificationRouter;
  v2 = *&v0[OBJC_IVAR____TtC6Health11AppDelegate____lazy_storage___pluginNotificationRouter];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC6Health11AppDelegate____lazy_storage___pluginNotificationRouter];
  }

  else
  {
    v4 = v0;
    type metadata accessor for PluginNotificationRouter();
    v5 = PluginNotificationRouter.__allocating_init()();
    sub_100003E7C(&unk_1000DC660, v6, type metadata accessor for AppDelegate);
    v7 = v4;
    dispatch thunk of PluginNotificationRouter.sceneProvider.setter();
    v8 = *&v4[v1];
    *&v4[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_10000498C(void *a1, void *a2, void *a3)
{
  v165 = a3;
  v156 = a2;
  ObjectType = swift_getObjectType();
  sub_10000414C(0, &qword_1000DD0C8, &type metadata accessor for Published.Publisher);
  v160 = *(v5 - 8);
  v161 = v5;
  v6 = *(v160 + 64);
  __chkstk_darwin(v5);
  v158 = &v148 - v7;
  sub_100005D04();
  v162 = *(v8 - 8);
  v163 = v8;
  v9 = *(v162 + 64);
  __chkstk_darwin(v8);
  v159 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F90(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v148 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v155 = &v148 - v22;
  v23 = __chkstk_darwin(v21);
  v157 = &v148 - v24;
  v25 = __chkstk_darwin(v23);
  v164 = &v148 - v26;
  __chkstk_darwin(v25);
  v28 = &v148 - v27;
  static Logger.general.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v166 = v16;
    v154 = v32;
    v172 = v32;
    *v31 = 136446466;
    v171[0] = ObjectType;
    swift_getMetatypeMetadata();
    v33 = String.init<A>(describing:)();
    v35 = sub_1000036D0(v33, v34, &v172);
    LODWORD(v153) = v30;
    v36 = a1;
    v37 = v20;
    v38 = ObjectType;
    v39 = v15;
    v40 = v35;

    *(v31 + 4) = v40;
    v15 = v39;
    ObjectType = v38;
    v20 = v37;
    a1 = v36;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_1000036D0(0xD00000000000001FLL, 0x80000001000A87C0, &v172);
    _os_log_impl(&_mh_execute_header, v29, v153, "[%{public}s]: Lifecycle: %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    v16 = v166;
  }

  v41 = *(v16 + 8);
  v41(v28, v15);
  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (v42)
  {
    v43 = v42;
    v44 = a1;
    v45 = [v43 sizeRestrictions];
    if (v45)
    {
      v46 = v45;
      [v45 minimumSize];
      [v46 setMinimumSize:?];
    }

    v47 = [objc_opt_self() sharedApplication];
    v48 = [v47 isProtectedDataAvailable];

    if (v48)
    {
      v166 = v16;
      v149 = v15;
      sub_1000063A4();
      if (qword_1000DA5A8 != -1)
      {
        swift_once();
      }

      v49 = qword_1000E3F50;
      sub_100007F08();
      v154 = v49;
      sub_1000077A8();
      v50 = type metadata accessor for TaskPriority();
      (*(*(v50 - 8) + 56))(v14, 1, 1, v50);
      type metadata accessor for MainActor();
      v51 = static MainActor.shared.getter();
      v52 = swift_allocObject();
      v52[2] = v51;
      v52[3] = &protocol witness table for MainActor;
      v148 = ObjectType;
      v52[4] = ObjectType;
      sub_100084B64(0, 0, v14, &unk_1000B01B0, v52);

      v53 = [objc_allocWithZone(UIWindow) initWithWindowScene:v43];
      v54 = OBJC_IVAR____TtC6Health13SceneDelegate_window;
      v55 = v167;
      v56 = *&v167[OBJC_IVAR____TtC6Health13SceneDelegate_window];
      *&v167[OBJC_IVAR____TtC6Health13SceneDelegate_window] = v53;

      v57 = [objc_allocWithZone(type metadata accessor for TabBarController()) init];
      v58 = sub_100006A10(&unk_1000DC3E0, type metadata accessor for TabBarController);
      v59 = sub_100006A10(&qword_1000DD0F0, type metadata accessor for TabBarController);
      v60 = sub_100006A10(&qword_1000DD0F8, type metadata accessor for TabBarController);
      v61 = sub_100006A10(&qword_1000DC3A0, type metadata accessor for TabBarController);
      v62 = &v55[OBJC_IVAR____TtC6Health13SceneDelegate_rootViewController];
      v63 = *&v55[OBJC_IVAR____TtC6Health13SceneDelegate_rootViewController];
      *v62 = v57;
      *(v62 + 1) = v58;
      *(v62 + 2) = v59;
      *(v62 + 3) = v60;
      *(v62 + 4) = v61;

      v153 = v54;
      v64 = *&v55[v54];
      if (v64)
      {
        [v64 setRootViewController:*v62];
      }

      v152 = v44;
      v65 = *v62;
      if (!*v62)
      {
        __break(1u);
        goto LABEL_46;
      }

      v66 = type metadata accessor for AppDeepLinkHandler(0);
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      v69 = swift_allocObject();
      v70 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
      v71 = type metadata accessor for DeepLinkContentKind(0);
      v72 = *(*(v71 - 8) + 56);
      v151 = *(v62 + 8);
      v150 = *(v62 + 24);
      v72(v69 + v70, 1, 1, v71);
      *(v69 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinksCancellable) = 0;
      sub_100003DDC(0, &qword_1000DD4E0, NSUserDefaults_ptr);
      v73 = v65;
      static NSUserDefaults.healthAppShared.getter();
      LOBYTE(v171[0]) = 0;
      UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
      v74 = v69 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_rootViewController;
      *v74 = v73;
      *(v74 + 8) = v151;
      *(v74 + 24) = v150;
      *(v69 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinks) = 1;
      v75 = OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler;
      v76 = v167;
      v77 = *&v167[OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler];
      *&v167[OBJC_IVAR____TtC6Health13SceneDelegate_deepLinkHandler] = v69;

      sub_10000C774();
      swift_beginAccess();
      sub_10000414C(0, &qword_1000DD100, &type metadata accessor for Published);
      v78 = v158;
      Published.projectedValue.getter();
      swift_endAccess();
      sub_100006330();
      v79 = v159;
      v80 = v161;
      Publisher.map<A>(_:)();
      (*(v160 + 8))(v78, v80);
      sub_100006A10(&qword_1000DD108, sub_100005D04);
      v81 = v163;
      Publisher.eraseToAnyPublisher()();

      v82 = v79;
      v83 = v76;
      v84 = v62;
      (*(v162 + 8))(v82, v81);
      sub_10000C9DC();

      [*&v83[v153] makeKeyAndVisible];
      v85 = sub_10000C774();
      v86 = *v62;
      if (*&v83[v75])
      {
        v87 = &off_1000CD970;
        v88 = *&v83[v75];
      }

      else
      {
        v88 = 0;
        v66 = 0;
        v87 = 0;
        v171[1] = 0;
        v171[2] = 0;
      }

      v97 = v165;
      v171[0] = v88;
      v171[3] = v66;
      v171[4] = v87;
      if (v86)
      {

        v98 = v86;
        if (sub_10000D644())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v172) = 1;

          static Published.subscript.setter();

          sub_100074E64(v98, v171, sub_100068DCC, v85);
        }

        else
        {
          sub_10000DAA0(v98);
        }
      }

      else
      {
      }

      v99 = v164;
      sub_10000EF54(v171, &unk_1000DD110, sub_10000F014, &type metadata accessor for Optional, sub_100005F90);
      v100 = [v97 shortcutItem];
      if (v100)
      {
        v101 = v100;
        static Logger.general.getter();
        v102 = v101;
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          *v105 = 136446466;
          v171[0] = v148;
          swift_getMetatypeMetadata();
          v106 = String.init<A>(describing:)();
          v108 = sub_1000036D0(v106, v107, &v172);

          *(v105 + 4) = v108;
          *(v105 + 12) = 2082;
          v109 = v102;
          v110 = [v109 description];
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          v97 = v165;
          v114 = sub_1000036D0(v111, v113, &v172);

          *(v105 + 14) = v114;
          _os_log_impl(&_mh_execute_header, v103, v104, "[%{public}s]: performing shortcut item from connectionOptions: %{public}s", v105, 0x16u);
          swift_arrayDestroy();

          (*(v166 + 8))(v164, v149);
        }

        else
        {

          (*(v166 + 8))(v99, v149);
        }

        sub_100067440(v102);
      }

      else
      {
        v115 = [v97 userActivities];
        sub_100003DDC(0, &qword_1000DC650, NSUserActivity_ptr);
        sub_10000F078(&qword_1000DD120, &qword_1000DC650, NSUserActivity_ptr);
        v116 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v117 = sub_10000F1FC(v116);

        if (v117)
        {
          v118 = v157;
          static Logger.general.getter();
          v102 = v117;
          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            *v121 = 136446466;
            v171[0] = v148;
            swift_getMetatypeMetadata();
            v122 = String.init<A>(describing:)();
            v124 = sub_1000036D0(v122, v123, &v172);

            *(v121 + 4) = v124;
            *(v121 + 12) = 2080;
            v171[0] = v102;
            v125 = v102;
            v126 = String.init<A>(reflecting:)();
            v128 = sub_1000036D0(v126, v127, &v172);

            *(v121 + 14) = v128;
            _os_log_impl(&_mh_execute_header, v119, v120, "[%{public}s]: continuing userActivity from connectionOptions: %s", v121, 0x16u);
            swift_arrayDestroy();
            v97 = v165;

            (*(v166 + 8))(v157, v149);
          }

          else
          {

            (*(v166 + 8))(v118, v149);
          }

          v142 = v102;
          v143 = 2;
        }

        else
        {
          v129 = [v156 stateRestorationActivity];
          if (!v129)
          {
            goto LABEL_42;
          }

          v130 = v129;
          v131 = v155;
          static Logger.general.getter();
          v102 = v130;
          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v171[0] = swift_slowAlloc();
            *v134 = 136446466;
            v135 = sub_100066FE8();
            v137 = sub_1000036D0(v135, v136, v171);

            *(v134 + 4) = v137;
            *(v134 + 12) = 2080;
            v172 = v102;
            v138 = v102;
            v139 = String.init<A>(reflecting:)();
            v141 = sub_1000036D0(v139, v140, v171);

            *(v134 + 14) = v141;
            _os_log_impl(&_mh_execute_header, v132, v133, "[%{public}s]: restoring app from state restoration activity: %s", v134, 0x16u);
            swift_arrayDestroy();
            v97 = v165;

            (*(v166 + 8))(v155, v149);
          }

          else
          {

            (*(v166 + 8))(v131, v149);
          }

          v142 = v102;
          v143 = 0;
        }

        sub_1000670D8(v142, v143);
      }

LABEL_42:
      v144 = [v97 URLContexts];
      sub_100003DDC(0, &qword_1000DD128, UIOpenURLContext_ptr);
      sub_10000F078(&unk_1000DD130, &qword_1000DD128, UIOpenURLContext_ptr);
      v145 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000F21C(v145);

      sub_10000F75C();
      v146 = *v84;
      if (*v84)
      {
        v168 = *v84;
        v169 = *(v84 + 8);
        v170 = *(v84 + 24);
        v147 = v146;
        dispatch thunk of HealthAppAnalyticsManager.submitLaunchInteraction(using:)();

        return;
      }

LABEL_46:
      __break(1u);
      return;
    }

    static Logger.general.getter();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      *v91 = 136446466;
      v171[0] = ObjectType;
      swift_getMetatypeMetadata();
      v92 = String.init<A>(describing:)();
      v94 = sub_1000036D0(v92, v93, &v172);
      v167 = v20;
      v95 = v94;

      *(v91 + 4) = v95;
      *(v91 + 12) = 2082;
      *(v91 + 14) = sub_1000036D0(0xD00000000000001FLL, 0x80000001000A87C0, &v172);
      _os_log_impl(&_mh_execute_header, v89, v90, "[%{public}s]: %{public}s isProtectedDataAvailable is false. Ending early!", v91, 0x16u);
      swift_arrayDestroy();

      v96 = v167;
    }

    else
    {

      v96 = v20;
    }

    v41(v96, v15);
  }
}

uint64_t sub_100005CC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100005D04()
{
  if (!qword_1000DD0D0)
  {
    sub_10000414C(255, &qword_1000DD0C8, &type metadata accessor for Published.Publisher);
    sub_100006330();
    v0 = type metadata accessor for Publishers.Map();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DD0D0);
    }
  }
}

uint64_t sub_100005D8C()
{
  v0 = type metadata accessor for LifecycleManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_100005E18();
  qword_1000E3F50 = v3;
  return result;
}

uint64_t type metadata accessor for LifecycleManager()
{
  result = qword_1000DDCA8;
  if (!qword_1000DDCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005E18()
{
  *(v0 + 16) = [objc_allocWithZone(HKHealthStore) init];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 65) = 0u;
  v1 = [objc_opt_self() standardUserDefaults];
  UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:"applicationDidEnterBackgroundWithNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

  return v0;
}

void sub_100005F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100005F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100005FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100006058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000060BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100006120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100006184()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    type metadata accessor for DiskHealthExperienceStore();
    v1 = static DiskHealthExperienceStore.shared.getter();
    v3 = *(v0 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t type metadata accessor for CloudSyncStartupManager()
{
  result = qword_1000DA9E8;
  if (!qword_1000DA9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006240()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for CloudSyncStartupManager();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v2;
    v7 = v0;
    v1 = sub_100006C40(v6);

    v8 = *(v0 + 40);
    *(v7 + 40) = v1;
  }

  return v1;
}

void sub_1000062CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100006330()
{
  result = qword_1000DD0D8;
  if (!qword_1000DD0D8)
  {
    sub_10000414C(255, &qword_1000DD0C8, &type metadata accessor for Published.Publisher);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD0D8);
  }

  return result;
}

uint64_t sub_1000063A4()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  __chkstk_darwin();
  v27 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  __chkstk_darwin();
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  __chkstk_darwin();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProfileGradientView();
  static ProfileGradientView.preloadRenderPipelineStateIfNeeded()();
  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  v12 = *(qword_1000E3F50 + 16);
  v13 = sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v22[0] = "SkipStateRestoration";
  v22[1] = v13;
  v14 = v12;
  static DispatchQoS.userInteractive.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100006A10(&unk_1000DD150, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005F90(0, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
  sub_100007E40(&unk_1000DD160, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  aBlock[4] = sub_1000061EC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CF680;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100006A10(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005F90(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100007E40(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
  v19 = v27;
  v20 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v28 + 8))(v19, v20);
  (*(v25 + 8))(v11, v26);
}

uint64_t sub_1000068C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006900()
{
  if (!qword_1000DAF58)
  {
    v0 = type metadata accessor for UserDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAF58);
    }
  }
}

void sub_100006950()
{
  sub_100006900();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100006A10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100006A58(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstanceForHealthStore:a1];
  v2 = [objc_opt_self() sharedApplication];
  [v1 setApplicationProvider:v2];
}

void sub_100006AF8()
{
  sub_1000062CC(319, &unk_1000DA9F8, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for LegacyObservable);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000062CC(319, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100006C40(void *a1)
{
  v2 = v1;
  sub_1000062CC(0, &unk_1000DA9F8, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for LegacyObservable);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = OBJC_IVAR____TtC6Health23CloudSyncStartupManager_lastKnownFirstRestoreState;
  v14 = type metadata accessor for CloudSyncRestoreState();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  *(v2 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_notificationCenterObserver) = 0;
  v15 = type metadata accessor for CloudSyncStateObserver();
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v16 = objc_allocWithZone(v15);
  v17 = a1;
  *(v2 + 16) = CloudSyncStateObserver.init(healthStore:store:)();
  v18 = [objc_allocWithZone(HKCloudSyncControl) initWithHealthStore:v17];
  *(v2 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_cloudSyncControl) = v18;
  static LegacyObservable.create()();
  (*(v6 + 16))(v2 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_observable, v12, v5);
  v19 = *(v2 + 16);

  dispatch thunk of CloudSyncStateObserver.firstRestoreStateChangeHandler.setter();

  v20 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();
  sub_100006F30();
  ObservableConvertible.afterChange(on:_:)();

  v21 = *(v6 + 8);
  v21(v10, v5);
  v21(v12, v5);
  return v2;
}

unint64_t sub_100006F30()
{
  result = qword_1000DAAD8;
  if (!qword_1000DAAD8)
  {
    sub_1000062CC(255, &unk_1000DA9F8, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for LegacyObservable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAD8);
  }

  return result;
}

uint64_t sub_100006FB8()
{
  v1 = v0;
  if (qword_1000DA520 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_cloudSyncControl);
  v3 = qword_1000E3CD8;
  v4 = String._bridgeToObjectiveC()();
  v18 = sub_100009A58;
  v19 = v1;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000099BC;
  v17 = &unk_1000CD620;
  v5 = _Block_copy(&v14);

  [v2 syncWithRequest:v3 reason:v4 completion:v5];
  _Block_release(v5);

  v6 = *(v1 + 16);
  dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();
  v7 = [objc_opt_self() defaultCenter];
  v8 = [objc_opt_self() mainQueue];
  v9 = swift_allocObject();
  swift_weakInit();
  v18 = sub_10001D4E8;
  v19 = v9;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10001D39C;
  v17 = &unk_1000CD648;
  v10 = _Block_copy(&v14);

  v11 = [v7 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v8 usingBlock:v10];

  _Block_release(v10);
  v12 = *(v1 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_notificationCenterObserver);
  *(v1 + OBJC_IVAR____TtC6Health23CloudSyncStartupManager_notificationCenterObserver) = v11;
  return swift_unknownObjectRelease();
}

uint64_t sub_10000723C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100007274()
{
  v0 = [objc_allocWithZone(HKChangesSyncRequest) initWithPush:0 pull:1 lite:1];
  v1 = [objc_allocWithZone(HKContextSyncRequest) initWithPush:1 pull:1];
  v2 = [objc_allocWithZone(HKStateSyncRequest) init];
  v3 = objc_allocWithZone(HKMedicalIDSyncRequest);
  v4 = v0;
  v5 = v1;
  v6 = v2;
  v7 = [v3 init];
  v8 = [objc_allocWithZone(HKSummarySharingSyncRequest) initWithPush:0 pull:1];
  v9 = [objc_allocWithZone(HKCloudSyncRequest) initWithChangesSyncRequest:v4 contextSyncRequest:v5 stateSyncRequest:v6 medicalIDSyncRequest:v7 summarySharingSyncRequest:v8];

  return v9;
}

id sub_1000073BC()
{
  result = sub_100007274();
  qword_1000E3CD8 = result;
  return result;
}

uint64_t sub_1000073E8()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  if (v12)
  {
    static Logger.general.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136446210;
      v17 = _typeName(_:qualified:)();
      v19 = sub_1000036D0(v17, v18, &v29);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] FeedItemFetchRequestNoFaults ENABLED", v15, 0xCu);
      sub_100003B90(v16);
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    static Logger.general.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136446210;
      v25 = _typeName(_:qualified:)();
      v27 = sub_1000036D0(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] FeedItemFetchRequestNoFaults DISABLED", v23, 0xCu);
      sub_100003B90(v24);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_10000771C(uint64_t a1)
{
  sub_100006120(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000077A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin();
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  __chkstk_darwin();
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v19 = _typeName(_:qualified:)();
    v30 = v9;
    v21 = v1;
    v22 = sub_1000036D0(v19, v20, aBlock);

    *(v17 + 4) = v22;
    v1 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] enqueuing interactive generation", v17, 0xCu);
    sub_100003B90(v18);

    v3 = v31;

    (*(v10 + 8))(v13, v30);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = v2;
  aBlock[4] = sub_10001CE84;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000D0380;
  v25 = _Block_copy(aBlock);

  v26 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100007D04(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006120(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100007EA4(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v36 + 8))(v27, v3);
  return (*(v33 + 8))(v26, v34);
}

uint64_t sub_100007C74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007D04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007D94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007DDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_100006058(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007E40(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_100005F90(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007EA4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_100006120(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007F08()
{
  v1 = v0;
  v2 = *v0;
  sub_100006120(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
  v12 = static NSOperationQueue.utility.getter();
  v13 = sub_100006184();
  v35[3] = type metadata accessor for DiskHealthExperienceStore();
  v35[4] = &protocol witness table for DiskHealthExperienceStore;
  v35[0] = v13;
  v14 = objc_allocWithZone(type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightOperation());
  v15 = HealthExperienceStoreIncrementalCoreSpotlightOperation.init(store:)();
  [v12 addOperation:v15];

  type metadata accessor for MedicalIDCache();
  v16 = static MedicalIDCache.primary.getter();
  dispatch thunk of MedicalIDCache.enqueueMedicalIDFetch()();

  sub_100006240();
  sub_100006FB8();

  static Logger.general.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v11;
    v35[0] = v20;
    v21 = v8;
    v22 = v20;
    *v19 = 136446210;
    v23 = _typeName(_:qualified:)();
    v25 = sub_1000036D0(v23, v24, v35);
    v33 = v7;
    v26 = v6;
    v27 = v2;
    v28 = v25;

    *(v19 + 4) = v28;
    v2 = v27;
    v6 = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "[[%{public}s]] enqueueStartupOperations finished", v19, 0xCu);
    sub_100003B90(v22);

    (*(v21 + 8))(v34, v33);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_1000073E8();
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v1;
  v30[5] = v2;

  sub_100084B64(0, 0, v6, &unk_1000B0E90, v30);
}

uint64_t sub_1000082D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008310(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100008354(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004BB0C;

  return sub_10000C040(a1, v5);
}

uint64_t sub_10000840C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100018D6C;

  return sub_1000084CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000084CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10000858C, 0, 0);
}

uint64_t sub_10000858C()
{
  v19 = v0;
  v1 = v0[6];
  v2 = v0[2];
  sub_100008714();

  static Logger.general.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = _typeName(_:qualified:)();
    v14 = sub_1000036D0(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "[[%{public}s]] Finished submiting entities to spotlight", v10, 0xCu);
    sub_100003B90(v11);
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100008714()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    type metadata accessor for AppIntentsManager();
    v1 = swift_allocObject();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_100008884(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  if (a1)
  {
    static Logger.cloudSync.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = a3;
      v33 = v17;
      *v16 = 136315138;
      type metadata accessor for CloudSyncStartupManager();

      v18 = String.init<A>(describing:)();
      v20 = sub_1000036D0(v18, v19, &v33);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s: Successfully requested lite sync pull, context sync and state sync.", v16, 0xCu);
      sub_100003B90(v17);
    }

    return (*(v7 + 8))(v13, v6);
  }

  else
  {
    static Logger.cloudSync.getter();

    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = a3;
      v33 = v25;
      *v24 = 136315394;
      type metadata accessor for CloudSyncStartupManager();

      v26 = String.init<A>(describing:)();
      v28 = sub_1000036D0(v26, v27, &v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v32 = a2;
      swift_errorRetain();
      sub_1000062CC(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000036D0(v29, v30, &v33);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: Failed to request lite sync pull, context sync and state sync with error: %s.", v24, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v7 + 8))(v11, v6);
  }
}

unint64_t sub_100008C14()
{
  result = qword_1000DB730;
  if (!qword_1000DB730)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DB730);
  }

  return result;
}

uint64_t type metadata accessor for SummaryFeedViewController()
{
  result = qword_1000DCBD0;
  if (!qword_1000DCBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100008D68(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3 + qword_1000DCB60;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = xmmword_1000AFB70;
  *(v3 + qword_1000DCB68) = 0;
  v9 = (v3 + qword_1000DCB70);
  type metadata accessor for SidebarDataSourceItem();
  *v9 = static SidebarDataSourceItem.summarySidebarItemIdentifier.getter();
  v9[1] = v10;
  *(v3 + qword_1000DCB98) = 0;
  *(v3 + qword_1000DCBA0) = 0;
  *(v3 + qword_1000DCBA8) = 0;
  v11 = (v3 + qword_1000DCBB0);
  v12 = [objc_allocWithZone(type metadata accessor for ProfileGradientWithFadeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = ProfileGradientWithFadeView.gradientView.getter();
  dispatch thunk of ProfileGradientView.delayAnimation.setter();

  *v11 = v12;
  v11[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v4 + qword_1000DCBB8) = 0;
  *(v4 + qword_1000DCBC8) = 0;
  sub_10000ACE8(a1, v4 + qword_1000DCB80);
  *(v4 + qword_1000DCB78) = a2;
  v14 = a2;
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
  sub_100014D24(&v33, v4 + qword_1000DCB88);
  *(v4 + qword_1000DCB90) = a3;
  v34 = type metadata accessor for EmptyGradientColorProvider();
  v35 = &protocol witness table for EmptyGradientColorProvider;
  sub_10000AD4C(&v33);

  EmptyGradientColorProvider.init()();
  sub_100014D24(&v33, v4 + qword_1000DCBC0);
  sub_10000ACE8(a1, &v33);
  v15 = swift_allocObject();
  sub_100014D24(&v33, v15 + 16);
  *(v15 + 56) = v14;
  *(v15 + 64) = a3;
  v16 = v14;

  v17 = PlatformTabCollectionViewController.init(makeDataSource:)();
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 mainBundle];
  v36._object = 0x80000001000A7710;
  v21._countAndFlagsBits = 0x7972616D6D7553;
  v21._object = 0xE700000000000000;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v36);

  v23 = String._bridgeToObjectiveC()();

  [v19 setTitle:v23];

  v24 = [v18 mainBundle];
  v37._object = 0x80000001000A7710;
  v25._countAndFlagsBits = 0x7972616D6D7553;
  v25._object = 0xE700000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v37);

  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() systemImageNamed:v27];

  v29 = objc_allocWithZone(UITabBarItem);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 initWithTitle:v30 image:v28 selectedImage:0];

  [v19 setTabBarItem:v31];
  sub_100003B90(a1);
  return v19;
}

uint64_t sub_100009174()
{
  sub_100003B90((v0 + 16));

  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

size_t sub_1000091C4(size_t a1, int64_t a2, char a3)
{
  result = sub_10000B210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000091E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100009238(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = HKDisplayCategoryIdentifierToString();
  if (!v7)
  {
    static Logger.dataSource.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = a1;
      v25 = v20;
      *v19 = 136315138;
      type metadata accessor for HKDisplayCategoryIdentifier(0);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000036D0(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "[Internal Settings] Could not get category name for %s", v19, 0xCu);
      sub_100003B90(v20);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._object = 0x80000001000AB220;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  if (!String.hasPrefix(_:)(v12))
  {
    return v9;
  }

  v13 = String.count.getter();
  v14 = String.count.getter();
  v15 = __OFSUB__(v13, v14);
  result = v13 - v14;
  if (!v15)
  {
    sub_1000094C0(result, v9, v11);

    v9 = static String._fromSubstring(_:)();

    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000094C0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t sub_10000957C()
{
  result = qword_1000DC3B0;
  if (!qword_1000DC3B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DC3B0);
  }

  return result;
}

id sub_1000095C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_100009630(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000968C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100009704(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_10000968C(255, a3);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_100009764(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_100009704(0, a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000968C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1000098C0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10000C31C(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1000099BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

char *sub_100009A60(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TabIdentifier();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171[3] = type metadata accessor for DiskHealthExperienceStore();
  v171[4] = &protocol witness table for DiskHealthExperienceStore;
  v171[0] = a2;
  v13 = OBJC_IVAR____TtC6Health16TabBarController_providedHealthStore;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_providedHealthStore) = a1;
  v14 = v13;
  v158 = v13;
  v15 = OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore;
  v157 = OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore;
  sub_10000ACE8(v171, a4 + OBJC_IVAR____TtC6Health16TabBarController_providedHealthExperienceStore);
  v16 = OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManagerProvider;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManagerProvider) = a3;
  v17 = a1;

  v139 = a3;
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
  sub_10000ACE8(&v170, a4 + OBJC_IVAR____TtC6Health16TabBarController_pinnedContentManager);
  sub_10000ACE8(a4 + v15, &aBlock);
  v18 = *&v14[a4];
  v19 = *(a4 + v16);
  v20 = objc_allocWithZone(type metadata accessor for SummaryFeedViewController());
  v21 = v18;

  v22 = sub_100008D68(&aBlock, v21, v19);

  v23 = objc_allocWithZone(HKNavigationController);
  v143 = v22;
  v24 = [v23 initWithRootViewController:v22];
  v25 = [v24 navigationBar];
  [v25 setPrefersLargeTitles:1];

  v153 = objc_opt_self();
  v26 = [v153 mainBundle];
  v172._object = 0x80000001000A7710;
  v27._countAndFlagsBits = 0x7972616D6D7553;
  v27._object = 0xE700000000000000;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v172._countAndFlagsBits = 0xD000000000000011;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v172)._countAndFlagsBits;

  v29 = String._bridgeToObjectiveC()();
  v152 = objc_opt_self();
  v30 = [v152 systemImageNamed:v29];

  v31 = enum case for TabIdentifier.TopLevelTabIdentifier.summary(_:);
  v151 = type metadata accessor for TabIdentifier.TopLevelTabIdentifier();
  v32 = *(v151 - 8);
  v150 = *(v32 + 104);
  v149 = v32 + 104;
  v150(v12, v31, v151);
  v147 = enum case for TabIdentifier.topLevel(_:);
  v33 = v9[13];
  v148 = v9 + 13;
  v146 = v33;
  v156 = v8;
  v33(v12);
  v154 = v12;
  TabIdentifier.identifier.getter();
  v34 = v9[1];
  v155 = v9 + 1;
  v145 = v34;
  v34(v12, v8);
  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  v36 = objc_allocWithZone(UITab);
  v142 = v24;
  v37 = String._bridgeToObjectiveC()();

  v38 = String._bridgeToObjectiveC()();

  v168 = sub_1000099B8;
  v169 = v35;
  aBlock = _NSConcreteStackBlock;
  v165 = 1107296256;
  v166 = sub_1000095C8;
  v167 = &unk_1000CEEB8;
  v39 = _Block_copy(&aBlock);

  v40 = [v36 initWithTitle:v37 image:v30 identifier:v38 viewControllerProvider:v39];
  _Block_release(v39);

  v41 = OBJC_IVAR____TtC6Health16TabBarController_summaryTab;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_summaryTab) = v40;
  [v40 setPreferredPlacement:5];
  v42 = *(a4 + v41);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v44 = HKUIJoinStringsForAutomationIdentifier();

  [v42 setAccessibilityIdentifier:v44];
  sub_10000ACE8(v157 + a4, &aBlock);
  v45 = *&v158[a4];
  sub_10000ACE8(&v170, v163);
  v46 = objc_allocWithZone(type metadata accessor for SharingOverviewViewController());
  v47 = v45;
  v48 = SharingOverviewViewController.init(healthExperienceStore:healthStore:pinnedContentManager:)();
  v49 = objc_allocWithZone(HKNavigationController);
  v141 = v48;
  v50 = [v49 initWithRootViewController:v48];
  v51 = [v50 navigationBar];
  [v51 setPrefersLargeTitles:1];

  v52 = [v153 mainBundle];
  v173._object = 0x80000001000A7760;
  v53._countAndFlagsBits = 0x676E6972616853;
  v53._object = 0xE700000000000000;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v173._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v173);

  v55 = String._bridgeToObjectiveC()();
  v56 = [v152 systemImageNamed:v55];

  v57 = v154;
  v150(v154, enum case for TabIdentifier.TopLevelTabIdentifier.sharing(_:), v151);
  v58 = v156;
  v146(v57, v147, v156);
  TabIdentifier.identifier.getter();
  v145(v57, v58);
  v59 = swift_allocObject();
  *(v59 + 16) = v50;
  v60 = objc_allocWithZone(UITab);
  v140 = v50;
  v61 = String._bridgeToObjectiveC()();

  v62 = String._bridgeToObjectiveC()();

  v168 = sub_10000C3BC;
  v169 = v59;
  aBlock = _NSConcreteStackBlock;
  v165 = 1107296256;
  v166 = sub_1000095C8;
  v167 = &unk_1000CEF08;
  v63 = _Block_copy(&aBlock);

  v64 = [v60 initWithTitle:v61 image:v56 identifier:v62 viewControllerProvider:v63];
  v65 = v63;
  v66 = v157;
  _Block_release(v65);

  v67 = OBJC_IVAR____TtC6Health16TabBarController_sharingTab;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_sharingTab) = v64;
  [v64 setPreferredPlacement:5];
  v68 = *(a4 + v67);
  v69 = Array._bridgeToObjectiveC()().super.isa;
  v70 = HKUIJoinStringsForAutomationIdentifier();

  [v68 setAccessibilityIdentifier:v70];
  v71 = v158;
  type metadata accessor for SearchViewController();
  sub_10000ACE8(v66 + a4, &aBlock);
  v72 = *&v71[a4];
  sub_10000ACE8(&v170, v163);
  v162 = 0;
  v161 = 0u;
  v160 = 0u;
  v73 = v72;
  v74 = SearchViewController.__allocating_init(healthExperienceStore:healthStore:pinnedContentManager:enhancedSearchResultProvider:)();
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_searchViewController) = v74;
  v75 = objc_allocWithZone(UISearchTab);
  v76 = v74;
  v77 = [v75 initWithViewControllerProvider:0];
  v78 = OBJC_IVAR____TtC6Health16TabBarController_searchTab;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_searchTab) = v77;
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    goto LABEL_21;
  }

  v80 = result;
  v81 = [result isiPad];

  countAndFlagsBits = v76;
  if (v81)
  {
    sub_10000ACE8(v66 + a4, &aBlock);
    sub_10000ACE8(&v170, v163);
    v82 = objc_allocWithZone(_s15CategoriesGroupCMa());
    v83 = sub_10000C138(&aBlock, v163);
    v84 = *&v71[a4];
    sub_10000ACE8(&v170, &aBlock);
    sub_10000ACE8(v66 + a4, v163);
    v85 = type metadata accessor for ProvidedViewContext();
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    swift_allocObject();

    v88 = v84;
    ProvidedViewContext.init(healthStore:pinnedContentManagerProvider:pinnedContentManager:healthExperienceStore:)();
    v89 = sub_10000B89C();
    sub_100003D8C(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
    v90 = swift_allocObject();
    *(v90 + 1) = xmmword_1000AED70;
    v91 = *(a4 + v78);
    v90[4] = v91;
    v90[5] = v83;
    aBlock = v90;
    v92 = v91;
    v93 = v83;
    sub_10000BDB0(v89);
  }

  else
  {
    sub_100003D8C(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1000AE610;
    v95 = *(a4 + v78);
    *(v94 + 32) = v95;
    v96 = v95;
  }

  v158 = [objc_allocWithZone(HKNavigationController) init];
  v97 = [v158 navigationBar];
  [v97 setPrefersLargeTitles:1];

  v98 = [v153 mainBundle];
  v174._object = 0xEC000000656C7469;
  v99._countAndFlagsBits = 0x686372616553;
  v174._countAndFlagsBits = 0x7420686372616553;
  v99._object = 0xE600000000000000;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, v174);

  v101 = String._bridgeToObjectiveC()();
  v102 = [v152 __systemImageNamedSwift:v101];

  v103 = v154;
  v150(v154, enum case for TabIdentifier.TopLevelTabIdentifier.search(_:), v151);
  v104 = v156;
  v146(v103, v147, v156);
  TabIdentifier.identifier.getter();
  v145(v103, v104);
  v105 = swift_allocObject();
  v106 = countAndFlagsBits;
  *(v105 + 16) = countAndFlagsBits;
  v107 = objc_allocWithZone(UITabGroup);
  v157 = v106;
  v108 = String._bridgeToObjectiveC()();

  v109 = String._bridgeToObjectiveC()();

  sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
  v110 = Array._bridgeToObjectiveC()().super.isa;

  v168 = sub_1000099B8;
  v169 = v105;
  aBlock = _NSConcreteStackBlock;
  v165 = 1107296256;
  v166 = sub_1000095C8;
  v167 = &unk_1000CEF58;
  v111 = _Block_copy(&aBlock);

  v112 = [v107 initWithTitle:v108 image:v102 identifier:v109 children:v110 viewControllerProvider:v111];
  _Block_release(v111);

  v113 = OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup;
  *(a4 + OBJC_IVAR____TtC6Health16TabBarController_searchTabGroup) = v112;
  v114 = v112;
  v115 = [v114 children];
  v116 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v116 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v117 = v158;
  if (!result)
  {
    v120 = 0;
    goto LABEL_14;
  }

  if ((v116 & 0xC000000000000001) == 0)
  {
    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v118 = *(v116 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v119 = v118;

  v120 = [v119 identifier];

  if (!v120)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = String._bridgeToObjectiveC()();
LABEL_14:
  }

  [v114 setDefaultChildIdentifier:v120];

  v121 = *(a4 + v113);
  [v121 setManagingNavigationController:v117];

  v122 = [*(a4 + v113) managingNavigationController];
  if (v122)
  {
    v123 = v122;
    v124 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:2];
    [v123 setTabBarItem:v124];
  }

  v125 = *(a4 + v113);
  v126 = Array._bridgeToObjectiveC()().super.isa;
  v127 = HKUIJoinStringsForAutomationIdentifier();

  [v125 setAccessibilityIdentifier:v127];
  [*(a4 + v113) setSidebarAppearance:1];
  [*(a4 + v113) setPreferredPlacement:6];
  v128 = type metadata accessor for TabBarController();
  v159.receiver = a4;
  v159.super_class = v128;
  v129 = objc_msgSendSuper2(&v159, "initWithNibName:bundle:", 0, 0);
  v130 = [v129 sidebar];
  v131 = Array._bridgeToObjectiveC()().super.isa;
  v132 = HKUIJoinStringsForAutomationIdentifier();

  [v130 setAccessibilityIdentifier:v132];
  sub_100003D8C(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1000AE610;
  v134 = *&v129[OBJC_IVAR____TtC6Health16TabBarController_summaryTab];
  *(v133 + 32) = v134;
  v135 = v134;
  v136 = Array._bridgeToObjectiveC()().super.isa;

  [v129 setTabs:v136];

  sub_10005117C();
  v137 = Array._bridgeToObjectiveC()().super.isa;

  [v129 setTabs:v137];

  [v129 setDelegate:v129];
  v138 = [v129 sidebar];
  [v138 setDelegate:v129];

  sub_100003B90(&v170);
  sub_100003B90(v171);
  return v129;
}

uint64_t sub_10000ACA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000ACE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000AD4C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10000ADDC()
{
  v2 = type metadata accessor for HKTypeGroup();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v38 = &v35 - v8;
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = static HKTypeGroup.allBrowseGroups.getter();
  v12 = v11;
  v13 = &_swiftEmptyArrayStorage;
  v41 = *(v11 + 16);
  if (v41)
  {
    v14 = 0;
    v39 = v3 + 16;
    v36 = (v3 + 8);
    v37 = (v3 + 32);
    v42 = v2;
    v35 = v11;
    do
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v1 = ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v15 = *(v3 + 72);
      (*(v3 + 16))(v10, v1 + v12 + v15 * v14, v2);
      v0 = v10;
      v16 = HKTypeGroup.categoryIdentifier.getter();
      v17 = static HKDisplayCategoryIdentifier.healthRecordsCategories.getter();
      if (!*(v17 + 16))
      {
        goto LABEL_12;
      }

      v18 = *(v17 + 40);
      v19 = v17;
      Hasher.init(_seed:)();
      v0 = v43;
      Hasher._combine(_:)(v16);
      v20 = Hasher._finalize()();
      v21 = v19;
      v2 = v42;
      v22 = -1 << *(v21 + 32);
      v23 = v20 & ~v22;
      if ((*(v21 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (*(*(v21 + 48) + 8 * v23) != v16)
        {
          v23 = (v23 + 1) & v24;
          if (((*(v21 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:

        if (v16 != 7)
        {
          v25 = *v37;
          (*v37)(v38, v10, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44[0] = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v0 = v44;
            sub_1000091C4(0, v13[2] + 1, 1);
            v13 = v44[0];
          }

          v28 = v13[2];
          v27 = v13[3];
          if (v28 >= v27 >> 1)
          {
            v0 = v44;
            sub_1000091C4(v27 > 1, v28 + 1, 1);
            v13 = v44[0];
          }

          v13[2] = v28 + 1;
          v29 = v1 + v13 + v28 * v15;
          v2 = v42;
          v25(v29, v38, v42);
          v12 = v35;
          goto LABEL_5;
        }
      }

      (*v36)(v10, v2);
LABEL_5:
      ++v14;
    }

    while (v14 != v41);
  }

  v30 = v13[2];
  if (v30)
  {
    v43[0] = &_swiftEmptyArrayStorage;
    v0 = v43;
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = 0;
    v42 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v41 = v3 + 16;
    v1 = (v3 + 8);
    while (v31 < v13[2])
    {
      v32 = v40;
      (*(v3 + 16))(v40, &v42[*(v3 + 72) * v31], v2);
      sub_10000B424(v32, v44);
      ++v31;
      (*v1)(v32, v2);
      v0 = v43;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = *(v43[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v30 == v31)
      {

        return v43[0];
      }
    }

LABEL_25:
    __break(1u);
    (*v1)(v0, v2);

    __break(1u);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

size_t sub_10000B244(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1000091E4(0, a5, a6);
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

void sub_10000B424(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for HKTypeGroup();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = HKTypeGroup.displayCategory.getter();
  v8 = [v7 displayName];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v30 = v8;
  v31 = [v7 systemImage];
  [v7 categoryID];
  v29[1] = HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter();
  (*(v4 + 16))(v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = v3;
  v11 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v9, v6, v10);
  *(v12 + v11) = v7;
  v13 = objc_allocWithZone(UITab);
  v14 = v7;
  v15 = String._bridgeToObjectiveC()();

  v37 = sub_10009F2B4;
  v38 = v12;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000095C8;
  v36 = &unk_1000D0BF8;
  v16 = _Block_copy(&aBlock);

  v17 = v13;
  v19 = v30;
  v18 = v31;
  v20 = [v17 initWithTitle:v30 image:v31 identifier:v15 viewControllerProvider:v16];
  _Block_release(v16);

  sub_10000B84C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AE110;
  *(v21 + 32) = 6447444;
  *(v21 + 40) = 0xE300000000000000;
  v22 = HKTypeGroup.categoryIdentifier.getter();
  v23 = sub_100009238(v22);
  if (!v24)
  {
    v25 = HKTypeGroup.categoryIdentifier.getter();
    aBlock = 0xD00000000000001CLL;
    v34 = 0x80000001000AB4B0;
    v39 = v25;
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v23 = aBlock;
    v24 = v34;
  }

  *(v21 + 48) = v23;
  *(v21 + 56) = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = HKUIJoinStringsForAutomationIdentifier();

  [v20 setAccessibilityIdentifier:v28];
  [v20 setAllowsHiding:0];

  *v32 = v20;
}

uint64_t sub_10000B7B0()
{
  v1 = type metadata accessor for HKTypeGroup();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10000B84C()
{
  if (!qword_1000DB6B0)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB6B0);
    }
  }
}

uint64_t sub_10000B89C()
{
  type metadata accessor for FoundationPluginBundleProvider();
  static FoundationPluginBundleProvider.sharedInstance.getter();
  v0 = dispatch thunk of PluginBundleProvider.availableTabProvidingPlugins.getter();

  if (v0 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v2 = 0;
    v3 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(v0 + 8 * v2 + 32);
      }

      v5 = v4;
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_100009630(0, &qword_1000DB6E0);
      NSBundle.getPluginAppDelegateObject<A>(as:)();

      if (v12)
      {
        sub_100014D24(&v11, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1000096E8(0, v3[2] + 1, 1, v3);
        }

        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          v3 = sub_1000096E8((v7 > 1), v8 + 1, 1, v3);
        }

        v3[2] = v8 + 1;
        sub_100014D24(v13, &v3[5 * v8 + 4]);
      }

      else
      {
        sub_10000D544(&v11, &unk_1000DC470, &qword_1000DB6E0, &protocol descriptor for PluginTabProviding, sub_100055124);
      }

      ++v2;
      if (v6 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_21:

  v9 = sub_10000BACC(v3);

  return v9;
}

uint64_t sub_10000BACC(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v27 = a1 + 32;
  v2 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v4 = (v27 + 40 * v1);
    v5 = v4[4];
    sub_10000BFFC(v4, v4[3]);
    v6 = dispatch thunk of PluginTabProviding.createTabs(context:)();
    v7 = v6;
    v8 = v6 >> 62;
    v9 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v26 + v9;
      if (__OFADD__(v26, v9))
      {
LABEL_34:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v10)
      {
        goto LABEL_16;
      }

      v13 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v10)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v13 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = *(v13 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v16 >> 1) - v15) < v9)
    {
      goto LABEL_38;
    }

    v30 = v2;
    v32 = v1;
    v18 = v13 + 8 * v15 + 32;
    v29 = v9;
    if (v8)
    {
      if (v17 < 1)
      {
        goto LABEL_40;
      }

      sub_1000550B4(0, &qword_1000DC478, &type metadata accessor for Array);
      sub_10005517C();
      for (i = 0; i != v17; ++i)
      {
        v20 = sub_100054724(v31, i, v7);
        v22 = *v21;
        (v20)(v31, 0);
        *(v18 + 8 * i) = v22;
      }
    }

    else
    {
      sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    v1 = v32;
    if (v29 >= 1)
    {
      v23 = *(v13 + 16);
      v24 = __OFADD__(v23, v29);
      v25 = v23 + v29;
      if (v24)
      {
        goto LABEL_39;
      }

      *(v13 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v17 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v9 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000BDC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007AE94(0, &qword_1000DC478, &qword_1000DC3B0, UITab_ptr);
          sub_10007AF9C(&qword_1000DC480, &qword_1000DC478, &qword_1000DC3B0, UITab_ptr);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_100054724(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100003DDC(0, &qword_1000DC3B0, UITab_ptr);
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

unint64_t sub_10000BF7C()
{
  result = qword_1000DB660;
  if (!qword_1000DB660)
  {
    sub_10000968C(255, &qword_1000DB668);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1000DB660);
  }

  return result;
}

void *sub_10000BFFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C040(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100018ED0;

  return v7(a1);
}

id sub_10000C138(uint64_t *a1, uint64_t *a2)
{
  v5 = [objc_opt_self() mainBundle];
  v17._object = 0x80000001000AB460;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v6._object = 0x80000001000AB440;
  v17._countAndFlagsBits = 0xD000000000000023;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v17);

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  sub_10000ADDC();
  sub_10000957C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16.receiver = v2;
  v16.super_class = _s15CategoriesGroupCMa();
  v11 = objc_msgSendSuper2(&v16, "initWithTitle:image:identifier:children:viewControllerProvider:", v8, 0, v9, isa, 0);

  v12 = v11;
  [v12 setPreferredPlacement:6];
  [v12 setAllowsReordering:1];
  v13 = Array._bridgeToObjectiveC()().super.isa;
  v14 = HKUIJoinStringsForAutomationIdentifier();

  [v12 setAccessibilityIdentifier:v14];
  sub_100003B90(a2);
  sub_100003B90(a1);
  return v12;
}

uint64_t sub_10000C31C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
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
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10000C3F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C44C()
{
  sub_100005F2C(319, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000039A4(319, &qword_1000DAF58, &type metadata for Bool, &type metadata accessor for UserDefault);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000C584()
{
  sub_100003DDC(319, &qword_1000DB100, UIApplicationShortcutItem_ptr);
  if (v0 <= 0x3F)
  {
    sub_10000C61C();
    if (v1 <= 0x3F)
    {
      sub_10000C6F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10000C61C()
{
  if (!qword_1000DD090)
  {
    type metadata accessor for URL();
    sub_10000C690();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DD090);
    }
  }
}

void sub_10000C690()
{
  if (!qword_1000DB108)
  {
    sub_100003DDC(255, &unk_1000DD0A0, UISceneOpenURLOptions_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB108);
    }
  }
}

void sub_10000C6F8()
{
  if (!qword_1000DB110)
  {
    sub_100003DDC(255, &qword_1000DC650, NSUserActivity_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DB110);
    }
  }
}

uint64_t sub_10000C774()
{
  v1 = OBJC_IVAR____TtC6Health13SceneDelegate____lazy_storage___introFlowManager;
  if (*(v0 + OBJC_IVAR____TtC6Health13SceneDelegate____lazy_storage___introFlowManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC6Health13SceneDelegate____lazy_storage___introFlowManager);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for HealthWelcomeFlowSignalProvider();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = HealthWelcomeFlowSignalProvider.init()();
    v8 = type metadata accessor for IntroFlowManager();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v2 = swift_allocObject();
    Published.init(initialValue:)();
    v11 = (v2 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthWelcomeFlowSignalProvider);
    *v11 = v7;
    v11[1] = &protocol witness table for HealthWelcomeFlowSignalProvider;
    type metadata accessor for HealthAppNotificationManager();
    *(v2 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthAppNotificationManager) = HealthAppNotificationManager.__allocating_init()();
    v12 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t type metadata accessor for IntroFlowManager()
{
  result = qword_1000DBE38;
  if (!qword_1000DBE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C8B4()
{
  sub_10000C98C(319, &qword_1000DD100, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000C98C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10000C9DC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinksCancellable;
  if (*(v0 + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinksCancellable))
  {

    AnyCancellable.cancel()();
  }

  swift_allocObject();
  swift_weakInit();
  sub_10000CB1C();
  sub_10000CB7C(&qword_1000DB190, sub_10000CB1C);
  v3 = Publisher<>.sink(receiveValue:)();

  v4 = *(v1 + v2);
  *(v1 + v2) = v3;
}

uint64_t sub_10000CAE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000CB1C()
{
  if (!qword_1000DB188)
  {
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB188);
    }
  }
}

uint64_t sub_10000CB7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000CBD8(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinks) = v1;
    sub_10000CC50();
  }

  return result;
}

uint64_t sub_10000CC50()
{
  v1 = v0;
  v74 = *v0;
  v2 = type metadata accessor for Logger();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v72 = &v68[-v8];
  __chkstk_darwin(v7);
  v73 = &v68[-v9];
  sub_100005F2C(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v71 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v68[-v14];
  v16 = type metadata accessor for DeepLinkContentKind(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v68[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v19);
  v24 = &v68[-v23];
  v25 = __chkstk_darwin(v22);
  v27 = &v68[-v26];
  __chkstk_darwin(v25);
  v29 = &v68[-v28];
  v30 = OBJC_IVAR____TtC6Health18AppDeepLinkHandler_pendingDeepLink;
  swift_beginAccess();
  sub_10000D450(&v1[v30], v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000D4E4(v15, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional, sub_100005F2C);
    static Logger.view.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v78 = v34;
      *v33 = 136446210;
      v77 = v74;
      swift_getMetatypeMetadata();
      v35 = String.init<A>(describing:)();
      v37 = sub_1000036D0(v35, v36, &v78);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s]: No pending deep link to execute", v33, 0xCu);
      sub_100003B90(v34);
    }

    (*(v75 + 8))(v6, v76);
    goto LABEL_5;
  }

  sub_10002E350(v15, v29);
  if (v1[OBJC_IVAR____TtC6Health18AppDeepLinkHandler_canPresentDeepLinks] != 1)
  {
    v53 = v72;
    static Logger.view.getter();
    sub_10002E3B4(v29, v21);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v73 = v29;
      v57 = v56;
      v78 = swift_slowAlloc();
      *v57 = 136446466;
      v77 = v74;
      swift_getMetatypeMetadata();
      v58 = String.init<A>(describing:)();
      v60 = sub_1000036D0(v58, v59, &v78);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2082;
      sub_10002E3B4(v21, v24);
      v61 = String.init<A>(describingSensitive:)();
      v63 = v62;
      sub_10002E418(v21);
      v64 = sub_1000036D0(v61, v63, &v78);

      *(v57 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "[%{public}s]: deep link is not eligible for presentation %{public}s", v57, 0x16u);
      swift_arrayDestroy();

      (*(v75 + 8))(v53, v76);
      sub_10002E418(v73);
    }

    else
    {

      sub_10002E418(v21);
      (*(v75 + 8))(v53, v76);
      sub_10002E418(v29);
    }

LABEL_5:
    v38 = 0;
    return v38 & 1;
  }

  v72 = v1;
  v39 = v73;
  static Logger.view.getter();
  sub_10002E3B4(v29, v27);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v69 = v41;
    v43 = v42;
    v70 = swift_slowAlloc();
    v78 = v70;
    *v43 = 136446466;
    v77 = v74;
    swift_getMetatypeMetadata();
    v44 = String.init<A>(describing:)();
    v46 = v29;
    v47 = sub_1000036D0(v44, v45, &v78);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    sub_10002E3B4(v27, v24);
    v48 = String.init<A>(describingSensitive:)();
    v50 = v49;
    sub_10002E418(v27);
    v51 = v48;
    v29 = v46;
    v52 = sub_1000036D0(v51, v50, &v78);

    *(v43 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v40, v69, "[%{public}s]: executing pending deep link: %{public}s", v43, 0x16u);
    swift_arrayDestroy();

    (*(v75 + 8))(v73, v76);
  }

  else
  {

    sub_10002E418(v27);
    (*(v75 + 8))(v39, v76);
  }

  v65 = v71;
  v66 = v72;
  (*(v17 + 56))(v71, 1, 1, v16);
  swift_beginAccess();
  sub_10002E474(v65, &v66[v30]);
  swift_endAccess();
  v38 = sub_10002C54C(v29);
  sub_10002E418(v29);
  return v38 & 1;
}

uint64_t sub_10000D450(uint64_t a1, uint64_t a2)
{
  sub_100005F2C(0, &qword_1000DAF50, type metadata accessor for DeepLinkContentKind, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_10000D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_10000D644()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - v10;
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = objc_opt_self();
  if ([v14 isBuddyDisabled])
  {
    static Logger.advertisableFeatures.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      v19 = _typeName(_:qualified:)();
      v21 = sub_1000036D0(v19, v20, &v40);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Buddy explicitly disabled or in store demo mode.", v17, 0xCu);
      sub_100003B90(v18);
    }

    (*(v4 + 8))(v13, v3);
    return 0;
  }

  if ([v14 shouldShowBuddy])
  {
    static Logger.advertisableFeatures.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;
      v27 = _typeName(_:qualified:)();
      v29 = sub_1000036D0(v27, v28, &v40);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Should show due to version check or force state", v25, 0xCu);
      sub_100003B90(v26);
    }

    (*(v4 + 8))(v11, v3);
  }

  else
  {
    v30 = *(v1 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthWelcomeFlowSignalProvider);
    v31 = *(v1 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthWelcomeFlowSignalProvider + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v31) = dispatch thunk of HealthWelcomeFlowSignalProviding.shouldShowHealthWelcomeFlowOnNextLaunch.getter();
    swift_unknownObjectRelease();
    if ((v31 & 1) == 0)
    {
      return 0;
    }

    static Logger.advertisableFeatures.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      v36 = _typeName(_:qualified:)();
      v38 = sub_1000036D0(v36, v37, &v40);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "[%s] Should show due to advertisable feature signal check", v34, 0xCu);
      sub_100003B90(v35);
    }

    (*(v4 + 8))(v8, v3);
  }

  return 1;
}

void sub_10000DAA0(void *a1)
{
  v74 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Date();
  v73 = *(v3 - 8);
  v4 = *(v73 + 8);
  v5 = __chkstk_darwin(v3);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v65 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v65 - v15;
  v17 = __chkstk_darwin(v14);
  v70 = &v65 - v18;
  __chkstk_darwin(v17);
  v20 = &v65 - v19;
  if (qword_1000DA548 != -1)
  {
    swift_once();
  }

  v21 = qword_1000E3E28;
  if (sub_10000E740())
  {
    v67 = v16;
    v69 = v1;
    static Logger.general.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v68 = v2;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = _typeName(_:qualified:)();
      v66 = v9;
      v29 = sub_1000036D0(v27, v28, aBlock);
      v9 = v66;

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s]: Should check IH&A intro flow step", v25, 0xCu);
      sub_100003B90(v26);
    }

    v30 = *(v9 + 8);
    v30(v20, v8);
    v31 = *(v21 + 24);
    aBlock[6] = *(v21 + 16);
    aBlock[7] = v31;
    swift_beginAccess();
    sub_10000C98C(0, &qword_1000DBF70, &type metadata for String, &type metadata accessor for UserDefault);

    UserDefault.wrappedValue.setter();
    swift_endAccess();
    v32 = v72;
    Date.init()();
    v33 = v73;
    (*(v73 + 2))(v71, v32, v3);
    swift_beginAccess();
    sub_10004BA8C(0, &qword_1000DBF78, &type metadata accessor for Date, &type metadata accessor for UserDefault);
    UserDefault.wrappedValue.setter();
    swift_endAccess();
    (*(v33 + 1))(v32, v3);
    v34 = objc_opt_self();
    if ([v34 needsRequestedPermission])
    {
      v35 = v70;
      static Logger.general.getter();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v73 = v30;
        v40 = v39;
        aBlock[0] = v39;
        *v38 = 136446210;
        v41 = _typeName(_:qualified:)();
        v43 = sub_1000036D0(v41, v42, aBlock);

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "[%{public}s]: IH&A needs requested permission, presenting flow", v38, 0xCu);
        sub_100003B90(v40);

        v73(v70, v8);
      }

      else
      {

        v30(v35, v8);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 1;

      static Published.subscript.setter();
      v60 = swift_allocObject();
      swift_weakInit();
      v61 = swift_allocObject();
      v62 = v74;
      *(v61 + 16) = v60;
      *(v61 + 24) = v62;
      aBlock[4] = sub_10004BAF0;
      aBlock[5] = v61;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100049C44;
      aBlock[3] = &unk_1000CE968;
      v63 = _Block_copy(aBlock);
      v64 = v62;

      [v34 presentInViewController:v64 completion:v63];
      _Block_release(v63);
    }

    else
    {
      v51 = v67;
      static Logger.general.getter();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        aBlock[0] = v55;
        *v54 = 136446210;
        v56 = _typeName(_:qualified:)();
        v58 = sub_1000036D0(v56, v57, aBlock);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}s]: IH&A prompting is not needed, continuing to IHR", v54, 0xCu);
        sub_100003B90(v55);
      }

      v30(v51, v8);
      v59 = [objc_allocWithZone(HKHealthStore) init];
      sub_100049C98(v74, v59);
    }
  }

  else
  {
    static Logger.general.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136446210;
      v48 = _typeName(_:qualified:)();
      v50 = sub_1000036D0(v48, v49, aBlock);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%{public}s]: IH&A dialog is throttled, moving on to notification authorization if necessary", v46, 0xCu);
      sub_100003B90(v47);
    }

    (*(v9 + 8))(v13, v8);
    sub_10000EAC4();
  }
}

uint64_t sub_10000E398()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000E3D8()
{
  v0 = type metadata accessor for Date();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  result = [objc_opt_self() currentOSBuild];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    v8 = type metadata accessor for IntroFlowThrottledCheck();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v6;
    v12 = v7;
    UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
    static Date.distantPast.getter();
    result = UserDefault.init(key:userDefaults:fallbackValue:isAppleInternalOnly:)();
    qword_1000E3E28 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for IntroFlowThrottledCheck()
{
  result = qword_1000DC190;
  if (!qword_1000DC190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E5C0()
{
  if (!qword_1000DBF70)
  {
    v0 = type metadata accessor for UserDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBF70);
    }
  }
}

void sub_10000E610()
{
  sub_10000E5C0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000E6E8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000E6E8()
{
  if (!qword_1000DBF78)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for UserDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBF78);
    }
  }
}

uint64_t sub_10000E740()
{
  sub_10000E5C0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E6E8();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v32 - v18;
  if ([objc_opt_self() isRunningStoreDemoMode])
  {
    goto LABEL_2;
  }

  Date.init()();
  v32 = v2;
  v21 = OBJC_IVAR____TtC6Health23IntroFlowThrottledCheck__lastCheckDate;
  swift_beginAccess();
  (*(v8 + 16))(v11, v0 + v21, v7);
  v22 = v0;
  UserDefault.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v13 + 8);
  v25(v17, v12);
  v25(v19, v12);
  v26 = OBJC_IVAR____TtC6Health23IntroFlowThrottledCheck__lastCheckVersion;
  swift_beginAccess();
  v27 = v22 + v26;
  v29 = v32;
  v28 = v33;
  (*(v3 + 16))(v33, v27, v32);
  UserDefault.wrappedValue.getter();
  (*(v3 + 8))(v28, v29);
  if (v34 != *(v22 + 16) || v35 != *(v22 + 24))
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24 <= 86400.0)
    {
      v20 = v30 ^ 1;
      return v20 & 1;
    }

    goto LABEL_8;
  }

  if (v24 > 86400.0)
  {
LABEL_8:
    v20 = 1;
    return v20 & 1;
  }

LABEL_2:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10000EAC4()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC6Health16IntroFlowManager_healthAppNotificationManager);
  v11 = dispatch thunk of HealthAppNotificationManager.getNotificationSettings()();
  v12 = [v11 authorizationStatus];

  if (v12)
  {
    static Logger.general.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136446210;
      v17 = _typeName(_:qualified:)();
      v19 = sub_1000036D0(v17, v18, &v34);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s]: Not showing notification authorization, ending presentation", v15, 0xCu);
      sub_100003B90(v16);
    }

    (*(v3 + 8))(v7, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v34) = 0;

    return static Published.subscript.setter();
  }

  else
  {
    v21 = sub_100048594();
    static Logger.notifications.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v2;
      v34 = v31;
      *v24 = 136446210;
      v25 = _typeName(_:qualified:)();
      v33 = v21;
      v27 = v1;
      v28 = sub_1000036D0(v25, v26, &v34);

      *(v24 + 4) = v28;
      v1 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s]: Requesting notification authorization because not already determined", v24, 0xCu);
      sub_100003B90(v31);

      (*(v3 + 8))(v9, v32);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = v10;
    v30[3] = v29;
    v30[4] = v1;

    dispatch thunk of HealthAppNotificationManager.requestAuthorization(addCriticalAlerts:completionHandler:)();
  }
}

uint64_t sub_10000EEDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EF14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_10000EFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_10000F014()
{
  result = qword_1000DD4C0;
  if (!qword_1000DD4C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DD4C0);
  }

  return result;
}

uint64_t sub_10000F078(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003DDC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F0C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000F210(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_10000F210(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100056754(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_10000F210(v7, v9, v6 != 0);
  return v17;
}

uint64_t sub_10000F210(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000F21C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for URL();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v52 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100003DDC(0, &qword_1000DD128, UIOpenURLContext_ptr);
    sub_10000F078(&unk_1000DD130, &qword_1000DD128, UIOpenURLContext_ptr);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v53[1];
    v14 = v53[2];
    v15 = v53[3];
    v16 = v53[4];
    v17 = v53[5];
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = a1 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(a1 + 56);

    v16 = 0;
  }

  v39[1] = v15;
  v21 = (v15 + 64) >> 6;
  v47 = (v51 + 8);
  v48 = (v9 + 8);
  *&v13 = 136446466;
  v40 = v13;
  v49 = v21;
  v50 = v14;
  v44 = v2;
  v41 = v8;
  v42 = v4;
  while (a1 < 0)
  {
    v28 = __CocoaSet.Iterator.next()();
    if (!v28)
    {
      return sub_10000F754();
    }

    v53[0] = v28;
    sub_100003DDC(0, &qword_1000DD128, UIOpenURLContext_ptr);
    swift_dynamicCast();
    v27 = v54;
    v26 = v16;
    v51 = v17;
    if (!v54)
    {
      return sub_10000F754();
    }

LABEL_18:
    static Logger.general.getter();
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53[0] = v46;
      *v32 = v40;
      v54 = ObjectType;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v35 = v7;
      v36 = sub_1000036D0(v33, v34, v53);

      *(v32 + 4) = v36;
      v7 = v35;
      *(v32 + 12) = 2112;
      *(v32 + 14) = v29;
      v37 = v45;
      *v45 = v27;
      v38 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%{public}s]: Opening URL: %@", v32, 0x16u);
      sub_10000EF54(v37, &qword_1000DAC20, &qword_1000DD140, NSObject_ptr, sub_1000686E4);

      sub_100003B90(v46);
      v4 = v42;

      v8 = v41;
    }

    (*v48)(v52, v8);
    v22 = [v29 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = [v29 options];
    sub_100067E04(v7, v23);

    result = (*v47)(v7, v4);
    v16 = v26;
    v14 = v50;
    v17 = v51;
    v21 = v49;
  }

  v24 = v16;
  v25 = v17;
  v26 = v16;
  if (v17)
  {
LABEL_14:
    v51 = (v25 - 1) & v25;
    v27 = *(*(a1 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v27)
    {
      return sub_10000F754();
    }

    goto LABEL_18;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      return sub_10000F754();
    }

    v25 = *(v14 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F75C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = v0;
    sub_10000F810();
    type metadata accessor for PinnedContentManager();
    v4 = type metadata accessor for HealthAppAnalyticsManager();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v1 = HealthAppAnalyticsManager.init(healthStore:pinnedContentManager:)();
    v7 = *(v0 + 64);
    *(v3 + 64) = v1;
  }

  return v1;
}

uint64_t sub_10000F810()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for PinnedContentManager();
    v2 = *(v0 + 16);
    v3 = v0;
    v1 = PinnedContentManager.__allocating_init(healthStore:domain:)();
    v4 = *(v0 + 48);
    *(v3 + 48) = v1;
  }

  return v1;
}

id sub_10000F888()
{
  v5 = *v0;
  v1 = sub_100051D68();
  if (v1)
  {
    v2 = v1;
    v3 = UINavigationController.rootViewController()();

    if (v3)
    {
      return v3;
    }
  }

  return v5;
}

uint64_t sub_10000F95C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    v13[1] = ObjectType;
    *v8 = 136446466;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_1000036D0(v9, v10, v13);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_1000036D0(0xD00000000000001CLL, 0x80000001000A8850, v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s]: Lifecycle: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v5, v1);
  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  return sub_10000FB8C();
}

uint64_t sub_10000FB8C()
{
  v0 = type metadata accessor for OSSignpostID();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  __chkstk_darwin(v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LogCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = type metadata accessor for OSSignposter();
  v9 = *(v20[0] - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v20[0]);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.healthSubsystem.getter();
  (*(v5 + 104))(v8, enum case for LogCategory.general(_:), v4);
  LogCategory.rawValue.getter();
  (*(v5 + 8))(v8, v4);
  OSSignposter.init(subsystem:category:)();
  static OSSignpostID.exclusive.getter();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  v16 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v16, "sceneWillEnterForeground_HKCountryMonitorControl", "", v13, 2u);
  [objc_opt_self() checkCurrentCountryWithHealthStore:*(v20[1] + 16)];
  v17 = static os_signpost_type_t.end.getter();
  v18 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v17, v18, "sceneWillEnterForeground_HKCountryMonitorControl", "", v13, 2u);

  (*(v21 + 8))(v3, v22);
  return (*(v9 + 8))(v12, v20[0]);
}

void sub_10000FEB0(void *a1)
{
  v1 = a1;
  sub_10000FEF8();
}

void sub_10000FEF8()
{
  v1 = type metadata accessor for DeepLinkActivityType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SummaryFeedViewController();
  v38.receiver = v0;
  v38.super_class = v6;
  objc_msgSendSuper2(&v38, "viewDidLoad");
  sub_100018B30();
  v7 = [objc_opt_self() mainBundle];
  v39._object = 0x80000001000A7710;
  v8._countAndFlagsBits = 0x7972616D6D7553;
  v8._object = 0xE700000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v39);

  (*(v2 + 104))(v5, enum case for DeepLinkActivityType.summary(_:), v1);
  v10 = static HAUserActivity.createActivity(title:restorationType:profileIdentifier:eligibleForSearch:eligibleForHandoff:eligibleForPrediction:)();
  (*(v2 + 8))(v5, v1);
  [v0 setUserActivity:v10];

  v11 = objc_opt_self();
  if ([v11 isAppleInternalInstall])
  {
    v12 = TapToRadarButtonDisplaying.makeTapToRadarButtonIfNeeded()();
    if (v12)
    {
      v13 = v12;
      v14 = [v0 navigationItem];
      [v14 setRightBarButtonItem:v13];
    }
  }

  v15 = [v11 sharedBehavior];
  if (!v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 features];

  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = [v17 summaryGradient];

  if (v18)
  {
    dispatch thunk of CompoundDataSourceCollectionViewController.dataSource.getter();
    type metadata accessor for SummaryFeedDataSource(0);
    v19 = *(swift_dynamicCastClassUnconditional() + qword_1000E3F20);

    v20 = type metadata accessor for SummaryPinnedContentDataSource();
    v36 = v20;
    v37 = &off_1000CDCF0;
    *&v35 = v19;
    v21 = type metadata accessor for SummaryPinnedContentGradientColorProvider();
    v22 = swift_allocObject();
    v23 = sub_1000190A0(&v35, v20);
    v24 = *(*(v20 - 8) + 64);
    __chkstk_darwin(v23);
    v26 = &v34[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v27 + 16))(v26);
    v28 = sub_100019130(*v26, v22);
    sub_100003B90(&v35);
    v36 = v21;
    v37 = sub_100007D4C(&qword_1000DCD20, type metadata accessor for SummaryPinnedContentGradientColorProvider);
    *&v35 = v28;
    v29 = qword_1000DCBC0;
    swift_beginAccess();
    sub_100003B90(&v0[v29]);
    sub_100014D24(&v35, &v0[v29]);
    swift_endAccess();
    sub_100007D4C(&qword_1000DCD10, type metadata accessor for SummaryFeedViewController);
    GradientBackgroundPresenting.configureGradientBackground()();
  }

  v30 = [v0 collectionView];
  if (v30)
  {
    v31 = v30;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v33 = HKUIJoinStringsForAutomationIdentifier();

    [v31 setAccessibilityIdentifier:v33];
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1000103F0()
{
  v1 = v0;
  type metadata accessor for PlatformTabCollectionViewController();
  v2 = method lookup function for CompoundDataSourceCollectionViewController();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  type metadata accessor for HostViewCell();
  UICollectionView.registerCell<A>(_:)();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  type metadata accessor for EmptyStateCollectionViewCell();
  UICollectionView.registerCell<A>(_:)();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  type metadata accessor for TitleEmptyStateCollectionViewCell();
  UICollectionView.registerCell<A>(_:)();
}

uint64_t sub_100010514(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    sub_10000ACE8(v1 + 16, &v22);
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    v7 = a1;
    v8 = v6;

    v9 = [v4 collectionView];
    v10 = type metadata accessor for SummaryFeedDataSource(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_100010970(&v22, v8, v5, v9);

    return v13;
  }

  else
  {
    _StringGuts.grow(_:)(62);
    v15._object = 0x80000001000A8390;
    v15._countAndFlagsBits = 0xD00000000000003CLL;
    String.append(_:)(v15);
    v16 = a1;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1000106FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100010760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000107C4()
{
  sub_100010760(319, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100010760(319, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_100010970(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v233 = a4;
  sub_10001093C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v9);
  v209 = v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v208 = v198 - v15;
  sub_100010760(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState, &type metadata accessor for Optional);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v203 = v198 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v214 = v198 - v20;
  v21 = type metadata accessor for CloudSyncRestoreState();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v204 = v198 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012248(0, &qword_1000DDC00, sub_1000128CC, sub_1000129D0, &type metadata accessor for HideableDataSource.Visibility);
  v228 = v25;
  v232 = *(v25 - 8);
  v26 = *(v232 + 64);
  __chkstk_darwin(v25);
  v227 = v198 - v27;
  v28 = type metadata accessor for DispatchTime();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v226 = v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012248(0, &qword_1000DDBC8, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource.Visibility);
  v220 = v31;
  v229 = *(v31 - 8);
  v32 = *(v229 + 64);
  v33 = __chkstk_darwin(v31);
  v213 = v198 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v219 = v198 - v35;
  sub_100010760(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v231 = (v198 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38);
  v212 = v198 - v40;
  v41 = type metadata accessor for Date();
  v224 = *(v41 - 8);
  v225 = v41;
  v42 = v224[8];
  __chkstk_darwin(v41);
  v223 = v198 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v218 = v44;
  v221 = *(v44 - 8);
  v45 = *(v221 + 64);
  v46 = __chkstk_darwin(v44);
  v202 = v198 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v217 = v198 - v48;
  v210 = v11;
  v49 = *(v11 + 56);
  v211 = v10;
  v49(v5 + qword_1000DDA90, 1, 1, v10);
  v215 = v22;
  v51 = *(v22 + 56);
  v50 = v22 + 56;
  v216 = v21;
  v201 = v51;
  v51(v5 + qword_1000DDA98, 1, 1, v21);
  sub_10000ACE8(a1, v5 + qword_1000DDAD8);
  *(v5 + qword_1000DDAE0) = a2;
  *(v5 + qword_1000DDAE8) = a3;
  v52 = objc_opt_self();
  v53 = a2;

  v54 = [v52 standardUserDefaults];
  v236 = type metadata accessor for DefaultCloudSyncStateStore();
  v237 = &protocol witness table for DefaultCloudSyncStateStore;
  sub_10000AD4C(&v235);
  DefaultCloudSyncStateStore.init(userDefaults:)();
  v55 = objc_allocWithZone(type metadata accessor for CloudSyncStateObserver());
  v56 = v53;
  *(v5 + qword_1000DDAA0) = CloudSyncStateObserver.init(healthStore:store:)();
  v57 = sub_100012A04(v56, a1, v233);
  v59 = v58;
  v60 = (v5 + qword_1000DDAA8);
  *v60 = v57;
  v60[1] = v58;
  swift_unknownObjectRetain();
  v61 = sub_100012F74(0, 1, 1, &_swiftEmptyArrayStorage);
  v63 = v61[2];
  v62 = v61[3];
  if (v63 >= v62 >> 1)
  {
    v61 = sub_100012F74((v62 > 1), v63 + 1, 1, v61);
  }

  v61[2] = v63 + 1;
  v64 = &v61[2 * v63];
  v64[4] = v57;
  v64[5] = v59;
  sub_10000ACE8(a1, &v235);
  v65 = v56;
  dispatch thunk of PinnedContentManagerProvider.manager(for:)();
  v66 = type metadata accessor for SummaryPinnedContentDataSource();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v222 = v65;
  sub_100013180(&v235, v65, &v234);
  v69 = qword_1000E3F20;
  *(v5 + qword_1000E3F20) = v70;
  v71 = objc_opt_self();
  v72 = [v71 sharedBehavior];
  if (!v72)
  {
    __break(1u);
    goto LABEL_42;
  }

  v73 = v72;
  v74 = [v72 features];

  if (!v74)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v75 = [v74 simplifiedLogging];

  if (v75)
  {
    v76 = v71;
    sub_10000ACE8(a1, &v235);
    v77 = v222;
    dispatch thunk of PinnedContentManagerProvider.manager(for:)();
    v78 = type metadata accessor for DataLoggingSectionDataSource();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    v81 = sub_10008A664(&v235, v77, &v234);

    v83 = v61[2];
    v82 = v61[3];
    if (v83 >= v82 >> 1)
    {
      v61 = sub_100012F74((v82 > 1), v83 + 1, 1, v61);
    }

    v84 = sub_100012734(&qword_1000DDC40, type metadata accessor for DataLoggingSectionDataSource);
    v61[2] = v83 + 1;
    v85 = &v61[2 * v83];
    v85[4] = v81;
    v85[5] = v84;
    v71 = v76;
  }

  v86 = [v71 sharedBehavior];
  if (!v86)
  {
    goto LABEL_43;
  }

  v87 = v86;
  v88 = [v86 features];

  if (!v88)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v199 = v71;
  v89 = [v88 isPinnedInBrowse];

  if ((v89 & 1) == 0)
  {
    v90 = *&v69[v5];
    v91 = v61[2];
    v92 = v61[3];

    if (v91 >= v92 >> 1)
    {
      v61 = sub_100012F74((v92 > 1), v91 + 1, 1, v61);
    }

    v61[2] = v91 + 1;
    v93 = &v61[2 * v91];
    v93[4] = v90;
    v93[5] = &protocol witness table for CompoundSectionedDataSource;
  }

  v94 = a1[4];
  sub_10000BFFC(a1, a1[3]);
  dispatch thunk of HealthExperienceStore.viewContext.getter();
  static SourceProfile.primary.getter();
  v95 = type metadata accessor for SummaryFeedTrendsSectionDataSource();
  v96 = *(v95 + 48);
  v97 = *(v95 + 52);
  swift_allocObject();
  SummaryFeedTrendsSectionDataSource.init(context:sourceProfile:additionalPredicates:significantTrendsDataSourceLoadingCompletion:)();
  v98 = *(v221 + 104);
  v230 = enum case for HideableDataSource.Visibility.visible<A>(_:);
  v198[1] = v221 + 104;
  v198[0] = v98;
  v98(v217);
  sub_100012248(0, &qword_1000DDC08, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource);
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  swift_allocObject();
  v102 = HideableDataSource.init(source:visibility:)();
  *(v5 + qword_1000DDAB0) = v102;
  v103 = v61[2];
  v104 = v61[3];

  if (v103 >= v104 >> 1)
  {
    v61 = sub_100012F74((v104 > 1), v103 + 1, 1, v61);
  }

  v200 = v50;
  v207 = v5;
  v105 = sub_100012F10(&qword_1000DDC10, &qword_1000DDC08, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0);
  v61[2] = v103 + 1;
  v106 = &v61[2 * v103];
  v106[4] = v102;
  v106[5] = v105;
  v107 = v222;
  v108 = [v222 profileIdentifier];
  v109 = a1[4];
  sub_10000BFFC(a1, a1[3]);
  v110 = dispatch thunk of HealthExperienceStore.viewContext.getter();
  v69 = v212;
  Feed.Kind.earliestDisplayDateUpdated.getter();
  v112 = v224;
  v111 = v225;
  if ((v224[6])(v69, 1, v225) == 1)
  {
    goto LABEL_47;
  }

  v113 = a1;
  v114 = v223;
  (v112[4])(v223, v69, v111);
  v115 = v231;
  (v112[2])(v231, v114, v111);
  (v112[7])(v115, 0, 1, v111);
  v116 = objc_allocWithZone(type metadata accessor for FeedObjectDataSource());
  v117 = v108;
  v206 = v117;
  v212 = v110;
  v118 = sub_100015230(2, v108, v115, v212);

  sub_100012458();
  v119 = type metadata accessor for LoadingPersonalizedHighlightsDataSource();
  v120 = *(v119 + 48);
  v121 = *(v119 + 52);
  swift_allocObject();
  v122 = v118;
  sub_100015A04();
  PrimarySecondaryDataSource.__allocating_init(primaryDataSource:secondaryDataSource:activeDataSourceResolver:)();
  v231 = v113;
  sub_10000ACE8(v113, &v235);
  v123 = type metadata accessor for HighlightsFeedWithShowAllHighlightsDataSource(0);
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  swift_allocObject();
  v126 = v233;
  v127 = v233;
  v128 = v107;
  sub_100015FBC(&v235, v128, v126);

  v222 = v127;
  sub_1000122C8();

  PrimarySecondaryDataSource.__allocating_init(primaryDataSource:secondaryDataSource:activeDataSourceResolver:)();
  v130 = v229 + 104;
  v129 = *(v229 + 104);
  v131 = v230;
  v132 = v220;
  (v129)(v219, v230, v220);
  sub_100012248(0, &qword_1000DDC18, sub_1000122C8, sub_10001277C, &type metadata accessor for HideableDataSource);
  v134 = *(v133 + 48);
  v135 = *(v133 + 52);
  swift_allocObject();
  v136 = HideableDataSource.init(source:visibility:)();

  (v224[1])(v223, v225);
  dispatch thunk of HideableDataSource.wrappedSource.getter();
  LOBYTE(v118) = dispatch thunk of PrimarySecondaryDataSource.shouldUsePrimaryDataSource.getter();

  LODWORD(v225) = enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if (v118)
  {
    v137 = v131;
  }

  else
  {
    v137 = enum case for HideableDataSource.Visibility.hidden<A>(_:);
  }

  v229 = v130;
  v224 = v129;
  (v129)(v213, v137, v132);
  dispatch thunk of HideableDataSource.visibility.setter();
  v138 = v207;
  *(v207 + qword_1000E3F28) = v136;
  v139 = v61[2];
  v140 = v61[3];
  swift_retain_n();
  if (v139 >= v140 >> 1)
  {
    v61 = sub_100012F74((v140 > 1), v139 + 1, 1, v61);
  }

  v141 = sub_100012F10(&qword_1000DDC20, &qword_1000DDC18, sub_1000122C8, sub_10001277C);
  v61[2] = v139 + 1;
  v142 = &v61[2 * v139];
  v142[4] = v136;
  v142[5] = v141;
  v143 = v231;
  sub_10000ACE8(v231, &v235);
  MoreFromHealthDataSource = type metadata accessor for GetMoreFromHealthDataSource();
  v145 = *(MoreFromHealthDataSource + 48);
  v146 = *(MoreFromHealthDataSource + 52);
  swift_allocObject();
  v147 = v222;
  v148 = sub_100016D90(&v235, v233);

  *(v138 + qword_1000DDAB8) = v148;
  v149 = v61[2];
  v150 = v61[3];

  v205 = v136;
  if (v149 >= v150 >> 1)
  {
    v61 = sub_100012F74((v150 > 1), v149 + 1, 1, v61);
  }

  v151 = sub_100012734(&qword_1000DDC28, type metadata accessor for GetMoreFromHealthDataSource);
  v61[2] = v149 + 1;
  v152 = &v61[2 * v149];
  v152[4] = v148;
  v152[5] = v151;
  sub_1000128CC(0);
  sub_10000ACE8(v143, &v235);
  v153 = swift_allocObject();
  sub_1000091BC(&v235, v153 + 16);
  *(v153 + 56) = v233;
  v154 = v147;
  static DispatchTime.now()();
  DelayedDataSource.__allocating_init(delay:dataSource:)();
  v155 = *(v232 + 104);
  v232 += 104;
  v155(v227, v230, v228);
  sub_100012248(0, &qword_1000DDC30, sub_1000128CC, sub_1000129D0, &type metadata accessor for HideableDataSource);
  v157 = v156;
  v158 = *(v156 + 48);
  v159 = *(v156 + 52);
  swift_allocObject();
  v160 = HideableDataSource.init(source:visibility:)();
  *(v138 + qword_1000DDAC0) = v160;
  v162 = v61[2];
  v161 = v61[3];

  if (v162 >= v161 >> 1)
  {
    v61 = sub_100012F74((v161 > 1), v162 + 1, 1, v61);
  }

  v163 = sub_100012F10(&qword_1000DDC38, &qword_1000DDC30, sub_1000128CC, sub_1000129D0);
  v61[2] = v162 + 1;
  v164 = &v61[2 * v162];
  v164[4] = v160;
  v164[5] = v163;
  sub_10000ACE8(v231, &v235);
  v165 = swift_allocObject();
  sub_1000091BC(&v235, v165 + 16);
  *(v165 + 56) = v233;
  v166 = v154;
  static DispatchTime.now()();
  DelayedDataSource.__allocating_init(delay:dataSource:)();
  v155(v227, v230, v228);
  v167 = *(v157 + 48);
  v168 = *(v157 + 52);
  swift_allocObject();
  v169 = HideableDataSource.init(source:visibility:)();
  *(v138 + qword_1000DDAC8) = v169;
  v170 = v61[2];
  v171 = v61[3];

  if (v170 >= v171 >> 1)
  {
    v61 = sub_100012F74((v171 > 1), v170 + 1, 1, v61);
  }

  v61[2] = v170 + 1;
  v172 = &v61[2 * v170];
  v172[4] = v169;
  v172[5] = v163;
  *(v138 + qword_1000DDAD0) = v233;
  v173 = v166;

  v69 = CompoundSectionedDataSource.init(_:)();

  sub_1000181D0();
  v174 = *&v69[qword_1000DDAA0];
  v175 = v214;
  dispatch thunk of CloudSyncStateObserver.cachedFirstRestoreState.getter();

  v176 = v215;
  v177 = v216;
  v178 = (*(v215 + 48))(v175, 1, v216);
  v179 = v231;
  if (v178 == 1)
  {

    sub_10001870C(v175, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
LABEL_40:
    v192 = v209;
    sub_100018410(v209);
    v193 = [objc_opt_self() mainQueue];
    swift_allocObject();
    swift_weakInit();
    sub_100012734(&qword_1000DAAD8, sub_10001093C);
    v194 = v208;
    v195 = v211;
    ObservableConvertible.afterChange(on:_:)();

    v196 = *(v210 + 8);
    v196(v192, v195);
    v196(v194, v195);
    sub_100003B90(v179);
    return v69;
  }

  v180 = v204;
  (*(v176 + 32))(v204, v175, v177);
  if ((CloudSyncRestoreState.isOngoing.getter() & 1) == 0)
  {
    (*(v176 + 8))(v180, v177);

    goto LABEL_40;
  }

  v181 = v203;
  (*(v176 + 16))(v203, v180, v177);
  v201(v181, 0, 1, v177);
  v182 = qword_1000DDA98;
  swift_beginAccess();
  sub_10001877C(v181, &v69[v182], &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  swift_endAccess();
  v183 = v202;
  v184 = v218;
  (v198[0])(v202, v225, v218);
  if (HAFeatureFlagShowTrendsInSummary())
  {
    v185 = *&v69[qword_1000DDAB0];
    (*(v221 + 16))(v217, v183, v184);
    dispatch thunk of HideableDataSource.visibility.setter();
  }

  (*(v221 + 8))(v183, v184);
  v186 = *&v69[qword_1000E3F28];
  (v224)(v219, v225, v220);

  dispatch thunk of HideableDataSource.visibility.setter();

  v187 = [v199 sharedBehavior];
  if (v187)
  {
    v188 = v187;
    v189 = [v187 features];

    if (v189)
    {

      v190 = [v189 isPinnedInBrowse];

      if ((v190 & 1) == 0)
      {
        v191 = *(*&v69[qword_1000E3F20] + qword_1000DB9D0);

        dispatch thunk of PrimarySecondaryDataSource.primaryDataSource.getter();

        dispatch thunk of DownloadingPinningDataSource.showDownloadingItem()();
      }

      (*(v176 + 8))(v180, v177);
      goto LABEL_40;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_10001870C(v69, &qword_1000DB158, &type metadata accessor for Date);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001220C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100012248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1000122C8()
{
  if (!qword_1000DDBD0)
  {
    type metadata accessor for HighlightsFeedWithShowAllHighlightsDataSource(255);
    sub_100012458();
    sub_100012734(&qword_1000DDBE8, sub_100012458);
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DDBD0);
    }
  }
}

uint64_t type metadata accessor for FeedObjectDataSource()
{
  result = qword_1000DB368;
  if (!qword_1000DB368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012458()
{
  if (!qword_1000DDBD8)
  {
    type metadata accessor for FeedObjectDataSource();
    type metadata accessor for LoadingPersonalizedHighlightsDataSource();
    sub_100012734(&qword_1000DDBE0, type metadata accessor for FeedObjectDataSource);
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DDBD8);
    }
  }
}

void sub_100012514()
{
  sub_1000125F0(319, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_1000125F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100012654(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for LoadingPersonalizedHighlightsDataSource()
{
  result = qword_1000DD9D0;
  if (!qword_1000DD9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012734(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000127E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PersonalizedFeedDataSource();
    v7 = sub_100012940(&qword_1000DC080, type metadata accessor for PersonalizedFeedDataSource);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for PersonalizedFeedDataSource()
{
  result = qword_1000DC5A0;
  if (!qword_1000DC5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100012988(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100012A04(void *a1, void *a2, void *a3)
{
  sub_100012248(0, &qword_1000DDC48, &type metadata accessor for NoticesDataSource, sub_100012EDC, &type metadata accessor for HideableDataSource.Visibility);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = v41 - v10 + 88;
  sub_10000ACE8(a2, v41);
  v12 = [a1 profileIdentifier];
  v13 = objc_allocWithZone(type metadata accessor for NoticesDataSource());
  NoticesDataSource.init(healthExperienceStore:associatedProfileIdentifier:)();
  (*(v8 + 104))(v11, enum case for HideableDataSource.Visibility.visible<A>(_:), v7);
  sub_100012248(0, &qword_1000DDC50, &type metadata accessor for NoticesDataSource, sub_100012EDC, &type metadata accessor for HideableDataSource);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = HideableDataSource.init(source:visibility:)();
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v19 = result;
    v20 = [result isiPad];

    if (v20)
    {
      v21 = a2[4];
      sub_10000BFFC(a2, a2[3]);
      dispatch thunk of HealthExperienceStore.viewContext.getter();
      v22 = [a1 profileIdentifier];
      type metadata accessor for SummaryHeaderProfileNameCell();
      v23 = type metadata accessor for HealthKitProfileInformationDataSource();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      HealthKitProfileInformationDataSource.init(context:profileIdentifier:viewClass:layoutConstructor:)();
      if (a3)
      {

        v26 = [a3 viewController];
        if (v26)
        {
          v27 = v26;
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {
          }
        }
      }

      else
      {
      }

      dispatch thunk of SingleUserDataDataSource.cardStackChangeDelegate.setter();

      v28 = dispatch thunk of SingleUserDataDataSource.asProfileHeader(healthStore:healthExperienceStore:)();
      v30 = v29;
      v32 = v31;
      sub_100010760(0, &qword_1000DDC60, sub_1000845D8, &type metadata accessor for _ContiguousArrayStorage);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AE110;
      *(inited + 32) = 1;
      v34 = sub_100084648();
      v35 = sub_100012F10(&qword_1000DDC58, &qword_1000DDC50, &type metadata accessor for NoticesDataSource, sub_100012EDC);
      *(inited + 40) = v17;
      *(inited + 48) = v34;
      *(inited + 56) = v35;
      *(inited + 64) = 2;
      *(inited + 72) = v28;
      *(inited + 80) = v30;
      *(inited + 88) = v32;
      sub_100068AF8(inited);
      swift_setDeallocating();
      sub_1000845D8();

      swift_unknownObjectRetain();
      swift_arrayDestroy();
      v36 = type metadata accessor for SizeClassResponsiveDataSource();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      swift_unknownObjectRetain();
      v39 = SizeClassResponsiveDataSource.init(dataSources:defaultDataSource:)();

      swift_unknownObjectRelease();

      return v39;
    }

    else
    {
      sub_100012F10(&qword_1000DDC58, &qword_1000DDC50, &type metadata accessor for NoticesDataSource, sub_100012EDC);
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100012F10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100012248(255, a2, a3, a4, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100012F90(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_100009704(0, a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = &_swiftEmptyArrayStorage;
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000968C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for SummaryPinnedContentDataSource()
{
  result = qword_1000DB9F0;
  if (!qword_1000DB9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013180(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v59 = *v3;
  v7 = qword_1000DB9E0;
  v62[0] = &_swiftEmptyArrayStorage;
  sub_100013898();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v3 + v7) = CurrentValueSubject.init(_:)();
  *(v3 + qword_1000DB9E8) = 0;
  v11 = a1;
  v12 = sub_100013994(a1, a3);
  type metadata accessor for ListLayoutConfiguration();
  swift_allocBox();
  static ListLayoutConfiguration.withHeader.getter();
  ListLayoutConfiguration.interGroupSpacing.setter();
  v13 = ListLayoutConfiguration.additionalContentInsets.modify();
  *(v14 + 16) = 0;
  v13(v62, 0);
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_100013C90();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000AE100;
  *(v15 + 32) = &_swiftEmptyArrayStorage;

  MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
  v62[3] = type metadata accessor for HeaderItem();
  v62[4] = sub_100013D04(&qword_1000DAE78, &type metadata accessor for HeaderItem);
  v62[0] = v12;

  v16 = SnapshotDataSource.withSupplementaryItem(_:)();

  sub_100003B90(v62);
  if (qword_1000DA538 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for DownloadingPinningDataSource();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  DownloadingPinningDataSource.init(title:showDownloadingDataItem:)();
  sub_100013E70();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000AE100;
  v21 = sub_100013ED8(&qword_1000DBA48, &qword_1000DBA50, &type metadata accessor for Supplementary);
  *(v20 + 32) = v16;
  *(v20 + 40) = v21;
  v58 = a3;
  sub_10000ACE8(a3, v62);
  v22 = a1[4];
  sub_10000BFFC(a1, a1[3]);

  dispatch thunk of HealthExperienceStore.viewContext.getter();
  v23 = objc_allocWithZone(type metadata accessor for PinnedContentDataSource());
  v24 = PinnedContentDataSource.init(pinnedContentManager:context:)();
  sub_100013F84();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v57 = v24;
  v28 = PrimarySecondaryDataSource.init(primaryDataSource:secondaryDataSource:)();
  v29 = qword_1000DB9D0;
  *(v4 + qword_1000DB9D0) = v28;
  sub_100014040();
  v30 = *(v4 + v29);
  sub_100014384();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v34 = PrimarySecondaryDataSource.init(primaryDataSource:secondaryDataSource:)();
  v35 = qword_1000DB9D8;
  v36 = v4;
  *(v4 + qword_1000DB9D8) = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000AE100;
  sub_100013C1C(0, &qword_1000DAC00, &type metadata accessor for _ContiguousArrayStorage);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000AE100;
  *(v38 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v38 + 64) = sub_100013D04(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  v39 = sub_10000AD4C((v38 + 32));
  sub_100014440(v11, a2, v39);
  *(v37 + 32) = v38;
  MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
  v40 = SnapshotDataSource.withCellRegistration(_:)();

  v41 = [objc_opt_self() sharedBehavior];
  if (!v41)
  {
    __break(1u);
    goto LABEL_14;
  }

  v42 = v41;
  v43 = [v41 features];

  if (!v43)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v61 = v11;
  v44 = [v43 isPinnedInBrowse];

  if (v44)
  {
    v45 = &off_1000DB000;
  }

  else
  {
    v46 = *(v36 + v35);
    v47 = *(v20 + 16);
    v48 = *(v20 + 24);
    v49 = v47 + 1;

    if (v47 >= v48 >> 1)
    {
      v20 = sub_100012F74((v48 > 1), v47 + 1, 1, v20);
    }

    v50 = sub_100013D04(&qword_1000DBA78, sub_100014384);
    *(v20 + 16) = v49;
    v51 = v20 + 16 * v47;
    *(v51 + 32) = v46;
    *(v51 + 40) = v50;
    v52 = *(v20 + 24);
    v53 = v47 + 2;

    if ((v47 + 2) > (v52 >> 1))
    {
      v20 = sub_100012F74((v52 > 1), v47 + 2, 1, v20);
    }

    v45 = &off_1000DB000;
    v54 = sub_100013ED8(&qword_1000DBA80, &qword_1000DBA88, &type metadata accessor for CellRegistering);
    *(v20 + 16) = v53;
    v55 = v20 + 16 * v49;
    *(v55 + 32) = v40;
    *(v55 + 40) = v54;
  }

  v56 = *(v45[316] + CompoundSectionedDataSource.init(_:)());

  v62[0] = sub_100014D3C();
  CurrentValueSubject.send(_:)();

  sub_100003B90(v58);

  sub_100003B90(v61);
}

void sub_100013898()
{
  if (!qword_1000DCD40)
  {
    sub_100013930(255, &qword_1000DBA40, &type metadata accessor for FeedItem, &type metadata accessor for Array);
    v0 = type metadata accessor for CurrentValueSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCD40);
    }
  }
}

void sub_100013930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100013994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  type metadata accessor for EditFavoritesCollectionViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass:ObjCClassFromMetadata];
  v21._object = 0x80000001000A66C0;
  v9._countAndFlagsBits = 0x44454E4E4950;
  v10._countAndFlagsBits = 0x64656E6E6950;
  v21._countAndFlagsBits = 0xD000000000000019;
  v9._object = 0xE600000000000000;
  v10._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v21);

  v11 = [v7 bundleForClass:ObjCClassFromMetadata];
  v22._object = 0x80000001000A66E0;
  v12._countAndFlagsBits = 1414087749;
  v12._object = 0xE400000000000000;
  v13._countAndFlagsBits = 1953064005;
  v13._object = 0xE400000000000000;
  v22._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v22);

  sub_10000ACE8(a2, v20);
  sub_10000ACE8(a1, v19);
  v14 = swift_allocObject();
  sub_100014D24(v20, v14 + 16);
  sub_100014D24(v19, v14 + 56);
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  v15 = type metadata accessor for HeaderItem();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  return HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
}

uint64_t sub_100013BDC()
{
  sub_100003B90((v0 + 16));
  sub_100003B90((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

void sub_100013C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10000968C(255, &qword_1000DAC08);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100013C90()
{
  if (!qword_1000DB550)
  {
    sub_100013C1C(255, &qword_1000DB558, &type metadata accessor for Array);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB550);
    }
  }
}

uint64_t sub_100013D04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100013D4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100013D94()
{
  type metadata accessor for SummaryPinnedContentDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5._object = 0x80000001000A6680;
  v2._object = 0x80000001000A6640;
  v3._object = 0x80000001000A6660;
  v5._countAndFlagsBits = 0xD00000000000003DLL;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0x100000000000001ALL;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  xmmword_1000E3DD0 = v4;
}

void sub_100013E70()
{
  if (!qword_1000DAE88)
  {
    sub_10002C420(255, &qword_1000DAE90);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAE88);
    }
  }
}

uint64_t sub_100013ED8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_100013F1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100013F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MutableArrayDataSourceWithLayout();
    v7 = a3(a1, v6, &protocol witness table for MutableArrayDataSource);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100013F84()
{
  if (!qword_1000DBA58)
  {
    type metadata accessor for DownloadingPinningDataSource();
    type metadata accessor for PinnedContentDataSource();
    sub_100013D04(&qword_1000DBA60, &type metadata accessor for PinnedContentDataSource);
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBA58);
    }
  }
}

uint64_t sub_100014040()
{
  v0 = type metadata accessor for LayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  type metadata accessor for ListLayoutConfiguration();
  swift_allocBox();
  static ListLayoutConfiguration.withoutHeader.getter();
  static LayoutConfiguration.shared.getter();
  LayoutConfiguration.interItemInset.getter();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  v7 = ListLayoutConfiguration.additionalContentInsets.modify();
  *(v8 + 16) = v6;
  v7(v13, 0);
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_100013C90();
  v9 = swift_allocObject();
  v12 = xmmword_1000AE100;
  *(v9 + 16) = xmmword_1000AE100;
  sub_100013C1C(0, &qword_1000DAC00, &type metadata accessor for _ContiguousArrayStorage);
  v10 = swift_allocObject();
  *(v10 + 16) = v12;
  if (qword_1000DA530 != -1)
  {
    swift_once();
  }

  *(v10 + 56) = type metadata accessor for TitleEmptyStateCollectionViewCellItem();
  *(v10 + 64) = sub_100013D04(&qword_1000DBA90, &type metadata accessor for TitleEmptyStateCollectionViewCellItem);
  sub_10000AD4C((v10 + 32));

  TitleEmptyStateCollectionViewCellItem.init(title:)();
  *(v9 + 32) = v10;
  return MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
}

void sub_1000142A8()
{
  type metadata accessor for SummaryPinnedContentDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5._object = 0x80000001000A6600;
  v2._countAndFlagsBits = 0xD000000000000017;
  v2._object = 0x80000001000A65C0;
  v3._object = 0x80000001000A65E0;
  v5._countAndFlagsBits = 0xD000000000000035;
  v3._countAndFlagsBits = 0xD000000000000010;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  xmmword_1000E3DC0 = v4;
}

void sub_100014384()
{
  if (!qword_1000DBA68)
  {
    sub_100013F84();
    type metadata accessor for MutableArrayDataSourceWithLayout();
    sub_100013D04(&qword_1000DBA70, sub_100013F84);
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBA68);
    }
  }
}

uint64_t sub_100014440@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v61 = a1;
  v69 = a3;
  v3 = type metadata accessor for SectionedDataSourceContainerViewType();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  __chkstk_darwin(v3);
  v66 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CellDeselectionBehavior();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013930(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v60 = &v52 - v11;
  sub_100013930(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v56 = &v52 - v14;
  v59 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v58 = *(v59 - 8);
  v15 = *(v58 + 64);
  __chkstk_darwin(v59);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UICellAccessory.DisplayedState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for UIListContentConfiguration();
  v53 = *(v70 - 8);
  v23 = v53;
  v24 = *(v53 + 64);
  __chkstk_darwin(v70);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v54 = v28;
  static UIListContentConfiguration.cell()();
  v29 = [objc_opt_self() configurationPreferringMulticolor];
  v30 = String._bridgeToObjectiveC()();
  v31 = objc_opt_self();
  v55 = v29;
  v32 = [v31 _systemImageNamed:v30 withConfiguration:v29];

  UIListContentConfiguration.image.setter();
  v78._object = 0x80000001000A6580;
  v33._object = 0x80000001000A6540;
  v34._object = 0x80000001000A6560;
  v78._countAndFlagsBits = 0xD00000000000001FLL;
  v33._countAndFlagsBits = 0xD000000000000014;
  v34._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v28, v34, v78);
  UIListContentConfiguration.text.setter();
  v74 = _typeName(_:qualified:)();
  v75 = v35;
  v36._countAndFlagsBits = 0x6C6C41776F68735FLL;
  v36._object = 0xEC00000061746144;
  String.append(_:)(v36);
  v57 = v74;
  v52 = v75;
  v37 = v70;
  v76 = v70;
  v77 = &protocol witness table for UIListContentConfiguration;
  v38 = sub_10000AD4C(&v74);
  (*(v23 + 16))(v38, v26, v37);
  sub_100013930(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v39 = *(type metadata accessor for UICellAccessory() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  (*(v19 + 104))(v22, enum case for UICellAccessory.DisplayedState.always(_:), v18);
  v42 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v58 + 8))(v17, v59);
  (*(v19 + 8))(v22, v18);
  sub_10000ACE8(v61, v73);
  v43 = swift_allocObject();
  v44 = v62;
  *(v43 + 16) = v62;
  sub_100014D24(v73, v43 + 24);
  v45 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v45 - 8) + 56))(v60, 1, 1, v45);
  v71 = 0;
  v72 = 0xE000000000000000;
  v46 = v44;
  _StringGuts.grow(_:)(20);
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v71 = v47;
  v72 = v49;
  v50._countAndFlagsBits = 0xD000000000000012;
  v50._object = 0x80000001000A65A0;
  String.append(_:)(v50);
  (*(v64 + 104))(v63, enum case for CellDeselectionBehavior.default(_:), v65);
  (*(v67 + 104))(v66, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v68);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

  return (*(v53 + 8))(v26, v70);
}

uint64_t sub_100014CE4()
{
  sub_100003B90((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100014D24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100014D3C()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArrayDataSourceSection();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + qword_1000DB9D8);
  dispatch thunk of PrimarySecondaryDataSource.currentDataSource.getter();
  swift_getObjectType();
  v12 = SnapshotDataSource.numberOfSections.getter();
  swift_unknownObjectRelease();
  if (v12 == 1)
  {
    dispatch thunk of PrimarySecondaryDataSource.currentDataSource.getter();
    swift_getObjectType();
    v13 = SnapshotDataSource.contentsAsArray()();
    swift_unknownObjectRelease();
    if (*(v13 + 16))
    {
      v14 = v32;
      (*(v32 + 16))(v10, v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v7);

      v15 = ArrayDataSourceSection.arrangedItems.getter();
      v35 = &_swiftEmptyArrayStorage;
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 32;
        v18 = &_swiftEmptyArrayStorage;
        do
        {
          sub_10000ACE8(v17, v34);
          sub_100014D24(v34, v33);
          sub_10000968C(0, &qword_1000DAC08);
          type metadata accessor for FeedItem();
          if ((swift_dynamicCast() & 1) != 0 && v33[5])
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v19 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v14 = v32;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = v35;
          }

          v17 += 40;
          --v16;
        }

        while (v16);
      }

      else
      {

        v18 = &_swiftEmptyArrayStorage;
      }

      (*(v14 + 8))(v10, v7);
      return v18;
    }
  }

  static Logger.pinnedContent.getter();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&v34[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = sub_1000036D0(v23, v24, v34);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    dispatch thunk of PrimarySecondaryDataSource.currentDataSource.getter();
    swift_getObjectType();
    v26 = SnapshotDataSource.numberOfSections.getter();
    swift_unknownObjectRelease();
    v33[0] = v26;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = sub_1000036D0(v27, v28, v34);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%s]: Unexpected number of sections when resolving gradient content: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v6, v2);
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100015230(char a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a4;
  sub_1000125F0(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_1000DB358) = a1;
  *(v5 + qword_1000DB360) = a2;
  sub_100015764(a3, v5 + qword_1000E3D50);
  sub_1000157F8();
  v34 = v18;
  v19 = swift_allocObject();
  v33 = xmmword_1000AE610;
  *(v19 + 16) = xmmword_1000AE610;
  type metadata accessor for Feed();
  v20 = a2;
  *(v19 + 32) = static Feed.predicate(kind:associatedProfileIdentifier:feedPrefixKeyPath:)();
  v36 = v19;
  sub_100015764(a3, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100015978(v12);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_100003DDC(0, &qword_1000DB3C0, NSPredicate_ptr);
    sub_1000125F0(0, &qword_1000DB3D0, sub_10001584C, &type metadata accessor for _ContiguousArrayStorage);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000AE110;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_1000158B0();
    *(v21 + 32) = 0x6164705565746164;
    *(v21 + 40) = 0xEB00000000646574;
    isa = Date._bridgeToObjectiveC()().super.isa;
    *(v21 + 96) = sub_100003DDC(0, &qword_1000DB3E8, NSDate_ptr);
    *(v21 + 104) = sub_100015904();
    *(v21 + 72) = isa;
    NSPredicate.init(format:_:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v14 + 8))(v17, v13);
  }

  v23 = static Feed.fetchRequest()();
  sub_100003DDC(0, &qword_1000DB3C0, NSPredicate_ptr);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = [objc_opt_self() andPredicateWithSubpredicates:v24];

  [v23 setPredicate:v25];
  v26 = swift_allocObject();
  *(v26 + 16) = v33;
  sub_100003DDC(0, &qword_1000DB3C8, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v26 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v23 setSortDescriptors:v27];

  v28 = objc_allocWithZone(NSFetchedResultsController);
  v29 = v35;
  [v28 initWithFetchRequest:v23 managedObjectContext:v35 sectionNameKeyPath:0 cacheName:0];
  v30 = JustObservingFetchedResultsControllerDataSource.init(frc:)();

  sub_100015978(a3);
  return v30;
}

void sub_100015708(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v2 setDateUpdated:isa];
}

uint64_t sub_100015764(uint64_t a1, uint64_t a2)
{
  sub_1000125F0(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000157F8()
{
  if (!qword_1000DBB00)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBB00);
    }
  }
}

unint64_t sub_10001584C()
{
  result = qword_1000DB3D8;
  if (!qword_1000DB3D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DB3D8);
  }

  return result;
}

unint64_t sub_1000158B0()
{
  result = qword_1000DB3E0;
  if (!qword_1000DB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB3E0);
  }

  return result;
}

unint64_t sub_100015904()
{
  result = qword_1000DB3F0;
  if (!qword_1000DB3F0)
  {
    sub_100003DDC(255, &qword_1000DB3E8, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB3F0);
  }

  return result;
}

uint64_t sub_100015978(uint64_t a1)
{
  sub_1000125F0(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015A04()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EmptyStateCollectionViewCellItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadingPersonalizedHighlightsDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v30._object = 0x80000001000A9660;
  v12._object = 0x80000001000A9620;
  v13._object = 0x80000001000A9640;
  v30._countAndFlagsBits = 0xD00000000000001DLL;
  v12._countAndFlagsBits = 0xD000000000000012;
  v13._countAndFlagsBits = 0x1000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v30);

  EmptyStateCollectionViewCellItem.init(title:showSpinner:)();
  sub_100015F68(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection);
  v14 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v27 = xmmword_1000AE100;
  *(v17 + 16) = xmmword_1000AE100;
  sub_100015F68(0, &qword_1000DAC00, sub_1000199DC);
  v18 = swift_allocObject();
  *(v18 + 16) = v27;
  *(v18 + 56) = v5;
  *(v18 + 64) = sub_100013D4C(&qword_1000DB560, &type metadata accessor for EmptyStateCollectionViewCellItem);
  v19 = sub_10000AD4C((v18 + 32));
  (*(v6 + 16))(v19, v9, v5);
  ArrayDataSourceSection.init(arrayLiteral:)();
  v28 = 0x3C53447961727241;
  v29 = 0xE800000000000000;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v1 + 8))(v4, v0);
  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = ArrayDataSource.init(arrangedSections:identifier:)();
  (*(v6 + 8))(v9, v5);
  return v25;
}

void sub_100015DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100015E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100015EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100015F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100015F68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100015FBC(uint64_t *a1, void *a2, void *a3)
{
  v4 = v3;
  v33 = *v4;
  sub_10000ACE8(a1, v4 + qword_1000DDB50);
  *(v4 + qword_1000DDB58) = a2;
  sub_10000ACE8(a1, v34);
  v8 = objc_opt_self();
  v9 = a3;
  v10 = a2;
  v11 = [v8 primaryProfile];
  v12 = objc_allocWithZone(type metadata accessor for PersonalizedFeedDataSource());
  v12[qword_1000DC598] = 1;
  sub_10000BFFC(v34, v34[3]);
  v13 = dispatch thunk of HealthExperienceStore.viewContext.getter();
  v14 = NSManagedObjectContext.makeFeedItemsFetchedResultsController(for:associatedProfileIdentifier:)();

  isa = [v14 fetchRequest];
  v16 = [(objc_class *)isa relationshipKeyPathsForPrefetching];
  if (v16)
  {
    v17 = v16;
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061574(&off_1000CCDD0);
    if (v18)
    {
      v19.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v19.super.isa = 0;
    }

    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:v19.super.isa];

    isa = v19.super.isa;
  }

  else
  {
    [(objc_class *)isa setRelationshipKeyPathsForPrefetching:0];
  }

  *&v12[qword_1000DC590] = a3;
  v20 = FetchedResultsControllerDataSource.init(_:)();

  sub_100003B90(v34);
  v21 = qword_1000DDB40;
  *(v4 + qword_1000DDB40) = v20;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_100010760(0, &qword_1000DB550, sub_1000313A0, &type metadata accessor for _ContiguousArrayStorage);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000AE100;
  sub_100009704(0, &qword_1000DAC00, &qword_1000DAC08);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000AE100;
  *(v23 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v23 + 64) = sub_100012734(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  v24 = sub_10000AD4C((v23 + 32));
  sub_100016414(a1, v10, v24);
  *(v22 + 32) = v23;
  MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
  v25 = SnapshotDataSource.withCellRegistration(_:)();

  *(v4 + qword_1000DDB48) = v25;
  sub_100009704(0, &qword_1000DAE88, &qword_1000DAE90);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000AE110;
  v27 = *(v4 + v21);
  v28 = sub_1000151FC();
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = sub_100012734(&qword_1000DBA80, sub_10008452C);
  *(v26 + 48) = v25;
  *(v26 + 56) = v29;
  v30 = v27;

  v31 = CompoundSectionedDataSource.init(_:)();
  sub_100003B90(a1);
  return v31;
}

uint64_t sub_100016414@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v54 = a2;
  v67 = a3;
  v66 = type metadata accessor for SectionedDataSourceContainerViewType();
  v64 = *(v66 - 8);
  v3 = *(v64 + 64);
  __chkstk_darwin(v66);
  v65 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CellDeselectionBehavior();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v63 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010760(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v60 = &v50 - v10;
  sub_100010760(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v58 = &v50 - v13;
  v59 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v57 = *(v59 - 8);
  v14 = *(v57 + 64);
  __chkstk_darwin(v59);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for UICellAccessory.DisplayedState();
  v17 = *(v56 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v56);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for UIListContentConfiguration();
  v55 = *(v51 - 8);
  v21 = *(v55 + 64);
  __chkstk_darwin(v51);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v26 = v23;
  static UIListContentConfiguration.cell()();
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = [objc_opt_self() systemBlueColor];
    v30 = [v28 imageWithTintColor:v29];
  }

  UIListContentConfiguration.image.setter();
  v71._object = 0x80000001000A99C0;
  v31._object = 0x80000001000A9980;
  v32._object = 0x80000001000A99A0;
  v71._countAndFlagsBits = 0xD00000000000001ELL;
  v31._countAndFlagsBits = 0xD000000000000013;
  v52 = v25;
  v32._countAndFlagsBits = 0xD000000000000013;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v25, v32, v71);
  v50 = v23;
  UIListContentConfiguration.text.setter();
  sub_10000ACE8(v53, &v68);
  v33 = swift_allocObject();
  sub_1000091BC(&v68, v33 + 16);
  v34 = v54;
  *(v33 + 56) = v54;
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  v35 = v34;
  _StringGuts.grow(_:)(20);
  v36 = _typeName(_:qualified:)();
  v38 = v37;

  *&v68 = v36;
  *(&v68 + 1) = v38;
  v39._countAndFlagsBits = 0xD000000000000012;
  v39._object = 0x80000001000A99E0;
  String.append(_:)(v39);
  v53 = *(&v68 + 1);
  v54 = v68;
  v40 = v51;
  v69 = v51;
  v70 = &protocol witness table for UIListContentConfiguration;
  v41 = sub_10000AD4C(&v68);
  v42 = v55;
  (*(v55 + 16))(v41, v26, v40);
  sub_100010760(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v43 = *(type metadata accessor for UICellAccessory() - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  v46 = v56;
  (*(v17 + 104))(v20, enum case for UICellAccessory.DisplayedState.always(_:), v56);
  v47 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v47 - 8) + 56))(v58, 1, 1, v47);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v57 + 8))(v16, v59);
  (*(v17 + 8))(v20, v46);
  v48 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
  (*(v61 + 104))(v63, enum case for CellDeselectionBehavior.default(_:), v62);
  (*(v64 + 104))(v65, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v66);

  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

  return (*(v42 + 8))(v50, v40);
}

BOOL sub_100016C98(uint64_t a1)
{
  v1 = *(a1 + qword_1000DDB40);
  type metadata accessor for PersonalizedFeedDataSource();
  sub_1000151FC();
  return (SnapshotDataSource.isEmpty.getter() & 1) == 0;
}

uint64_t type metadata accessor for GetMoreFromHealthDataSource()
{
  result = qword_1000DC018;
  if (!qword_1000DC018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016D90(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  sub_100017380(0, &qword_1000DC068, &type metadata accessor for HeaderFooterDataSourceWithLayout, &protocol witness table for CompoundSectionedDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v38 = &v37 - v9;
  sub_100017380(0, &qword_1000DC070, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource.Visibility);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v15 = &v37 - v14;
  v16 = type metadata accessor for DispatchTime();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  *(v3 + qword_1000DC010) = &_swiftEmptySetSingleton;
  sub_1000128CC(0);
  v41 = a1;
  sub_10000ACE8(a1, v42);
  v18 = swift_allocObject();
  sub_1000091BC(v42, v18 + 16);
  *(v18 + 56) = a2;
  v19 = a2;
  static DispatchTime.now()();
  v20 = DelayedDataSource.__allocating_init(delay:dataSource:)();
  v21 = qword_1000DC000;
  *(v3 + qword_1000DC000) = v20;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1000173EC(0, &qword_1000DB550, sub_1000313A0, &type metadata accessor for _ContiguousArrayStorage);
  v22 = swift_allocObject();
  v37 = xmmword_1000AE100;
  *(v22 + 16) = xmmword_1000AE100;
  sub_1000173EC(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v23 = swift_allocObject();
  *(v23 + 16) = v37;
  *(v23 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v23 + 64) = sub_100012940(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem);
  v24 = sub_10000AD4C((v23 + 32));
  sub_100017450(v24);
  *(v22 + 32) = v23;
  MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)();
  v25 = static FeatureStatusSupport.isHealthChecklistAvailable()();
  v26 = *(v12 + 104);
  if (v25)
  {
    v26(v15, enum case for HideableDataSource.Visibility.visible<A>(_:), v11);
    v27 = enum case for HideableDataSource.Visibility.hidden<A>(_:);
  }

  else
  {
    v27 = enum case for HideableDataSource.Visibility.hidden<A>(_:);
    v26(v15, enum case for HideableDataSource.Visibility.hidden<A>(_:), v11);
  }

  sub_100017380(0, &qword_1000DC088, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  *(v3 + qword_1000DC008) = HideableDataSource.init(source:visibility:)();
  v31 = *(v3 + v21);
  sub_100017C48();
  sub_100012940(&qword_1000DC0A0, sub_1000128CC);
  sub_100017CF0();
  sub_100017D98();
  v32 = type metadata accessor for HeaderFooterDataSourceWithLayout();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  HeaderFooterDataSourceWithLayout.init(headerDataSource:mainDataSource:footerDataSource:)();
  (*(v39 + 104))(v38, v27, v40);

  v35 = HideableDataSource.init(source:visibility:)();

  sub_100017E28();

  sub_100003B90(v41);
  return v35;
}

uint64_t sub_100017340()
{
  sub_100003B90((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100017380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000173EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100017450@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = type metadata accessor for SectionedDataSourceContainerViewType();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  __chkstk_darwin(v1);
  v57 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CellDeselectionBehavior();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000173EC(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v53 = &v46 - v9;
  sub_1000173EC(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v50 = &v46 - v12;
  v13 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UICellAccessory.DisplayedState();
  v17 = *(v48 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v48);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UIListContentConfiguration();
  v21 = *(v61 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v61);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.cell()();
  v25 = [objc_opt_self() configurationPreferringMulticolor];
  sub_10004FC00();
  v26 = static NSBundle.healthExperienceUI.getter();
  v27 = v25;
  v28 = String._bridgeToObjectiveC()();
  v29 = [objc_opt_self() imageNamed:v28 inBundle:v26 withConfiguration:v27];

  UIListContentConfiguration.image.setter();
  type metadata accessor for GetMoreFromHealthDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47.super.isa = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v31._countAndFlagsBits = 0xD000000000000010;
  v66._object = 0x80000001000A72A0;
  v32._object = 0x80000001000A7260;
  v31._object = 0x80000001000A7280;
  v66._countAndFlagsBits = 0xD000000000000033;
  v32._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v47, v31, v66);
  UIListContentConfiguration.text.setter();
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v33 = _typeName(_:qualified:)();
  v35 = v34;

  v62 = v33;
  v63 = v35;
  v36._countAndFlagsBits = 0xD000000000000014;
  v36._object = 0x80000001000A72E0;
  String.append(_:)(v36);
  v49 = v62;
  v46 = v63;
  v37 = v61;
  v64 = v61;
  v65 = &protocol witness table for UIListContentConfiguration;
  v38 = sub_10000AD4C(&v62);
  (*(v21 + 16))(v38, v24, v37);
  sub_1000173EC(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  v39 = *(type metadata accessor for UICellAccessory() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  v42 = v48;
  (*(v17 + 104))(v20, enum case for UICellAccessory.DisplayedState.always(_:), v48);
  v43 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v51 + 8))(v16, v52);
  (*(v17 + 8))(v20, v42);
  v44 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
  (*(v55 + 104))(v54, enum case for CellDeselectionBehavior.default(_:), v56);
  (*(v58 + 104))(v57, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v59);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();

  return (*(v21 + 8))(v24, v61);
}

unint64_t sub_100017C48()
{
  result = qword_1000DC090;
  if (!qword_1000DC090)
  {
    sub_1000128CC(255);
    sub_100012940(&qword_1000DC098, type metadata accessor for PersonalizedFeedDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC090);
  }

  return result;
}

unint64_t sub_100017CF0()
{
  result = qword_1000DC0A8;
  if (!qword_1000DC0A8)
  {
    sub_100017380(255, &qword_1000DC088, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0A8);
  }

  return result;
}

unint64_t sub_100017D98()
{
  result = qword_1000DC0B0;
  if (!qword_1000DC0B0)
  {
    sub_100017380(255, &qword_1000DC088, &type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0B0);
  }

  return result;
}

uint64_t sub_100017E28()
{
  sub_10001802C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + qword_1000DC000);

  DelayedDataSource.$dataSourceState.getter();

  swift_allocObject();
  swift_weakInit();
  sub_100012940(&qword_1000DC0E8, sub_10001802C);
  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100017FD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018060(uint64_t a1)
{
  sub_10001800C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  if ((*(v4 + 88))(v7, v3) != enum case for DelayedDataSource.DataSourceState.initialized<A>(_:))
  {
    return (*(v4 + 8))(v7, v3);
  }

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004F67C();
  }

  return result;
}

uint64_t sub_1000181D0()
{
  v1 = v0;
  sub_100012248(0, &qword_1000DDBB8, &type metadata accessor for SummaryFeedTrendsSectionDataSource, sub_1000127B0, &type metadata accessor for HideableDataSource.Visibility);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = HAFeatureFlagShowTrendsInSummary();
  if ((result & 1) == 0)
  {
    static Logger.dataSource.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Show Trends in Summary feature flag is disabled. Hiding Trends.", v16, 2u);
    }

    (*(v9 + 8))(v12, v8);
    v17 = *(v1 + qword_1000DDAB0);
    (*(v4 + 104))(v7, enum case for HideableDataSource.Visibility.hidden<A>(_:), v3);
    return dispatch thunk of HideableDataSource.visibility.setter();
  }

  return result;
}

uint64_t sub_100018410@<X0>(uint64_t a1@<X8>)
{
  sub_100010760(0, qword_1000DB4A0, sub_10001093C, &type metadata accessor for Optional);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = qword_1000DDA90;
  swift_beginAccess();
  sub_10001868C(v1 + v10, v9, qword_1000DB4A0, sub_10001093C);
  sub_10001093C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v9, 1, v11) != 1)
  {
    return (*(v13 + 32))(a1, v9, v12);
  }

  sub_10001870C(v9, qword_1000DB4A0, sub_10001093C);
  type metadata accessor for CloudSyncRestoreState();
  static LegacyObservable.create()();
  v14 = *(v1 + qword_1000DDAA0);

  dispatch thunk of CloudSyncStateObserver.firstRestoreStateChangeHandler.setter();
  dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();

  (*(v13 + 16))(v7, a1, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_10001877C(v7, v1 + v10, qword_1000DB4A0, sub_10001093C);
  return swift_endAccess();
}

uint64_t sub_10001868C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100010760(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001870C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100010760(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001877C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100010760(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_100018834()
{
  result = [v0 collectionView];
  if (result)
  {
    type metadata accessor for DiffableCollectionViewAdaptor();
    dispatch thunk of CompoundDataSourceCollectionViewController.dataSource.getter();
    return DiffableCollectionViewAdaptor.__allocating_init(collectionView:backingDataSource:prefetchCellsWhenPerformingReloadData:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000188B0()
{
  type metadata accessor for PlatformTabCollectionViewController();
  v0 = method lookup function for CompoundDataSourceCollectionViewController();
  v1 = v0();
  sub_100003DDC(0, &qword_1000DCD58, UITraitCollection_ptr);
  v2 = static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  sub_100018930(v2);
  return v1;
}

uint64_t sub_100018930(uint64_t result)
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

  result = sub_100018A1C(result, v12, 1, v3);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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

char *sub_100018A1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000091E4(0, &qword_1000DB658, sub_10000BF7C);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_100018B30()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      type metadata accessor for SummaryFeedViewController();
      sub_100007D4C(&qword_1000DCD60, type metadata accessor for SummaryFeedViewController);
      ProfileButtonDisplaying<>.updateProfileButtonForRegularSizeClass()();
      v10 = [v0 navigationItem];
      [v10 setTitle:0];
    }
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v12._object = 0x80000001000A7710;
    v4._countAndFlagsBits = 0x7972616D6D7553;
    v4._object = 0xE700000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0xD000000000000011;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v12);

    v6 = [v0 navigationItem];
    v7 = String._bridgeToObjectiveC()();

    [v6 setTitle:v7];

    v8 = type metadata accessor for SummaryFeedViewController();
    v9 = sub_100007D4C(&qword_1000DCD60, type metadata accessor for SummaryFeedViewController);

    ProfileButtonDisplaying<>.updateProfileButtonForCompactSizeClass()(v8, v9);
  }
}

uint64_t sub_100018D6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_100018E60()
{
  v1 = qword_1000DCB98;
  v2 = *(v0 + qword_1000DCB98);
  if (v2)
  {
    v3 = *(v0 + qword_1000DCB98);
  }

  else
  {
    v4 = v0;
    type metadata accessor for ProfileBarButton();
    v5 = ProfileBarButton.__allocating_init()();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100018ED0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100019008@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Presentation.summaryFeed(_:);
  v3 = type metadata accessor for Presentation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000190A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_100019130(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v13 = type metadata accessor for SummaryPinnedContentDataSource();
  v14 = &off_1000CDCF0;
  v12[0] = a1;
  sub_100019950();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  a2[2] = CurrentValueSubject.init(_:)();
  a2[8] = &_swiftEmptySetSingleton;
  sub_10000ACE8(v12, (a2 + 3));
  v11 = *(*sub_10000BFFC(v12, v13) + qword_1000DB9E0);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v4;
  sub_100013898();
  sub_100007D4C(&qword_1000DCD50, sub_100013898);

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100003B90(v12);
  return a2;
}

uint64_t sub_100019324()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001935C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100019394(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersonalizedFeedDataSource();
  sub_100012988(&qword_1000DC080, type metadata accessor for PersonalizedFeedDataSource);
  SnapshotDataSource.item(at:)();
  sub_1000199DC();
  type metadata accessor for FeedItem();
  if (swift_dynamicCast())
  {
    v11 = v40;
    v12 = [v40 feedSection];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (ForYouSectionKind.init(rawValue:)() != 4)
      {
        ForYouSectionKind.localizedTitle.getter();
        static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
        v31 = type metadata accessor for HeaderItem();
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        swift_allocObject();
        v30 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
        a1[3] = v31;
        a1[4] = sub_100012988(&qword_1000DAE78, &type metadata accessor for HeaderItem);

LABEL_10:
        *a1 = v30;
        return;
      }
    }

    static Logger.view.getter();
    v13 = v11;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41[0] = v37;
      *v17 = 136315394;
      v18 = a1;
      v19 = [v13 uniqueIdentifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v2;
      v39 = v10;
      v21 = v3;
      v22 = v20;
      v24 = v23;

      a1 = v18;
      v25 = sub_1000036D0(v22, v24, v41);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      v40 = [v13 feedSection];
      sub_100055650();
      v26 = String.init<A>(describing:)();
      v28 = sub_1000036D0(v26, v27, v41);

      *(v17 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not resolve feedSection from feedItem %s: %s. It should be deleted during the next picking operation", v17, 0x16u);
      swift_arrayDestroy();

      (*(v21 + 8))(v6, v38);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v29 = type metadata accessor for HeaderItem();
    static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
    v30 = HeaderItem.__allocating_init(hkType:title:showShowAll:configuration:automationIdentifier:)();
    a1[3] = v29;
    a1[4] = sub_100012988(&qword_1000DAE78, &type metadata accessor for HeaderItem);
    goto LABEL_10;
  }

  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v34._object = 0x80000001000A78B0;
  v34._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v34);
  type metadata accessor for IndexPath();
  sub_100012988(&qword_1000DC5F0, &type metadata accessor for IndexPath);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100019950()
{
  if (!qword_1000DCD28)
  {
    sub_100061788();
    v0 = type metadata accessor for CurrentValueSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DCD28);
    }
  }
}

unint64_t sub_1000199DC()
{
  result = qword_1000DAC08;
  if (!qword_1000DAC08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DAC08);
  }

  return result;
}

uint64_t sub_100019A40(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    sub_100019D4C(v1);
    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100019AD4(unint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100019A40(a1);
}

void sub_100019ADC()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 window];

  if (!v4)
  {
LABEL_7:
    v10.receiver = v1;
    v10.super_class = type metadata accessor for SummaryFeedViewController();
    objc_msgSendSuper2(&v10, "viewWillLayoutSubviews");
    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 contentOffset];

      sub_100007D4C(&qword_1000DCD10, type metadata accessor for SummaryFeedViewController);
      GradientBackgroundPresenting.layoutGradient(yOffset:)();
      GradientBackgroundPresenting.configureGradientBackground()();
      return;
    }

    goto LABEL_10;
  }

  if (dispatch thunk of CompoundDataSourceCollectionViewController.dataSourceAdaptor.getter())
  {
    dispatch thunk of DiffableCollectionViewAdaptor.loadIfNeeded()();

    if ((*(v1 + qword_1000DCB68) & 1) == 0)
    {
      if (HAFeatureFlagPreloadSummaryCells())
      {
        sub_1000060BC(0, &qword_1000DCD18, type metadata accessor for Mode, &type metadata accessor for _ContiguousArrayStorage);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1000AE100;
        *(v5 + 32) = NSRunLoopCommonModes;
        type metadata accessor for Mode(0);
        v6 = NSRunLoopCommonModes;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v1 performSelector:"setVisibleRectEdgeInsetsIfNeeded" withObject:0 afterDelay:isa inModes:0.0];
      }
    }

    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
}

void sub_100019D04(void *a1)
{
  v1 = a1;
  sub_100019ADC();
}

uint64_t sub_100019D4C(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_28:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_29:
    v4 = 0;
    v5 = &_swiftEmptyDictionarySingleton;
LABEL_30:
    v28 = v5[2];
    v18 = &_swiftEmptyArrayStorage;
    if (v28)
    {
      v29 = sub_10001B3F0(v5[2], 0);
      v46 = sub_10001B5F8(v47, v29 + 4, v28, v5);
      v1 = v47[4];

      sub_10000F754();
      if (v46 == v28)
      {
LABEL_34:
        v47[0] = v29;
        sub_10001B854(v47);
        v30 = 0;
        v3 = v47[0];
        v47[0] = &_swiftEmptyArrayStorage;
        v31 = v3[2];
LABEL_35:
        v32 = 16 * v30 + 32;
        while (v31 != v30)
        {
          if (v30 >= v3[2])
          {
            __break(1u);
LABEL_68:
            if (v18 < 0)
            {
              v37 = v18;
            }

            else
            {
              v37 = v32;
            }

            v2 = _CocoaArrayWrapper.endIndex.getter();
            if (_CocoaArrayWrapper.endIndex.getter() < 0)
            {
              __break(1u);
              goto LABEL_73;
            }

            goto LABEL_75;
          }

          ++v30;
          v1 = v32 + 16;
          v33 = [*(v3 + v32) color];
          v32 = v1;
          if (v33)
          {
            v1 = v33;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v34 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = v47[0];
            goto LABEL_35;
          }
        }

        v32 = v18 & 0xFFFFFFFFFFFFFF8;
        v3 = (v18 >> 62);
        if (v18 >> 62)
        {
          goto LABEL_68;
        }

        result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= 4)
        {
          v36 = 4;
        }

        else
        {
          v36 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result < v36)
        {
          goto LABEL_82;
        }

LABEL_47:
        if ((v18 & 0xC000000000000001) != 0 && v36)
        {
          sub_100003DDC(0, &qword_1000DB670, UIColor_ptr);

          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v36 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v36 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
              if (v36 != 3)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(3);
              }
            }
          }
        }

        else
        {
        }

        if (v3)
        {
          v37 = _CocoaArrayWrapper.subscript.getter();
          v1 = v38;
          v3 = v39;
          v2 = v40;

          if ((v2 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v37 = v18 & 0xFFFFFFFFFFFFFF8;
          v1 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
          v2 = (2 * v36) | 1;
          if ((v2 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v43 = swift_dynamicCastClass();
        if (!v43)
        {
          swift_unknownObjectRelease();
          v43 = &_swiftEmptyArrayStorage;
        }

        v44 = v43[2];

        if (__OFSUB__(v2 >> 1, v3))
        {
LABEL_73:
          __break(1u);
        }

        else if (v44 == (v2 >> 1) - v3)
        {
          v42 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v42)
          {
LABEL_66:
            sub_10001A394(v4);
            return v42;
          }

          v42 = &_swiftEmptyArrayStorage;
LABEL_65:
          swift_unknownObjectRelease();
          goto LABEL_66;
        }

        swift_unknownObjectRelease_n();
LABEL_58:
        sub_100031DE0(v37, v1, v3, v2);
        v42 = v41;
        goto LABEL_65;
      }

      __break(1u);
    }

    v29 = &_swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_3:
  v1 = 0;
  v4 = 0;
  v5 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v6 = *(v2 + 8 * v1 + 32);
    }

    v7 = v6;
    v8 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v9 = FeedItem.associatedDisplayCategory.getter();
    if (v9)
    {
      break;
    }

LABEL_4:

    ++v1;
    if (v8 == v3)
    {
      goto LABEL_30;
    }
  }

  v10 = v9;
  sub_10001A394(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v5;
  v12 = sub_10001A3A4(v10);
  v14 = v5[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    goto LABEL_24;
  }

  v4 = v13;
  if (v5[3] >= v17)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = v12;
      sub_1000338F4();
      v12 = v27;
      v5 = v47[0];
      if ((v4 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

LABEL_16:
    if ((v4 & 1) == 0)
    {
LABEL_17:
      v5[(v12 >> 6) + 8] |= 1 << v12;
      *(v5[6] + 8 * v12) = v10;
      *(v5[7] + 8 * v12) = 0;
      v20 = v5[2];
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_27;
      }

      v5[2] = v21;
      v22 = v12;
      v23 = v10;
      v12 = v22;
    }

LABEL_19:
    v24 = v5[7];
    v25 = *(v24 + 8 * v12);
    v16 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v16)
    {
      goto LABEL_25;
    }

    *(v24 + 8 * v12) = v26;

    v4 = sub_1000315D0;
    goto LABEL_4;
  }

  sub_10001A3EC(v17, isUniquelyReferenced_nonNull_native);
  sub_100003DDC(0, &qword_1000DB678, HKDisplayCategory_ptr);
  v5 = v47[0];
  v18 = v47[0];
  v12 = sub_10001A3A4(v10);
  if ((v4 & 1) == (v19 & 1))
  {
    goto LABEL_16;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
LABEL_75:
  if (v2 >= 4)
  {
    v45 = 4;
  }

  else
  {
    v45 = v2;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v36 = v45;
  }

  else
  {
    v36 = 4;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= v36)
  {
    goto LABEL_47;
  }

LABEL_82:
  __break(1u);
  return result;
}

void *sub_10001A35C()
{
  v1 = *(v0 + qword_1000DCBB0);
  v2 = *(v0 + qword_1000DCBB0 + 8);
  v3 = v1;
  return v1;
}

uint64_t sub_10001A394(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10001A3A4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001A724(a1, v4);
}

uint64_t sub_10001A3EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001A6A8();
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_10001A644(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005EFA8(a3);
}

void sub_10001A6A8()
{
  if (!qword_1000DB680)
  {
    sub_100003DDC(255, &qword_1000DB678, HKDisplayCategory_ptr);
    sub_10001A7FC();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB680);
    }
  }
}

unint64_t sub_10001A724(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100003DDC(0, &qword_1000DB678, HKDisplayCategory_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001A7FC()
{
  result = qword_1000DB688;
  if (!qword_1000DB688)
  {
    sub_100003DDC(255, &qword_1000DB678, HKDisplayCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB688);
  }

  return result;
}

uint64_t sub_10001A864(uint64_t *a1)
{
  v2 = v1;
  v107 = type metadata accessor for CollectionViewLayoutContext();
  v103 = *(v107 - 8);
  v4 = *(v103 + 64);
  v5 = __chkstk_darwin(v107);
  v102 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v100 = &v90 - v8;
  __chkstk_darwin(v7);
  v96 = &v90 - v9;
  v10 = type metadata accessor for Logger();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v90 - v15;
  v95 = type metadata accessor for GridLayoutEngine();
  v94 = *(v95 - 8);
  v16 = *(v94 + 64);
  v17 = __chkstk_darwin(v95);
  v93 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v98 = &v90 - v19;
  v92 = type metadata accessor for ListLayoutConfiguration();
  v91 = *(v92 - 8);
  v20 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LayoutConfiguration();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  v24 = __chkstk_darwin(v22);
  v104 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v99 = &v90 - v26;
  v27 = type metadata accessor for IndexPath();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = CollectionViewLayoutContext.section.getter();
  v33 = type metadata accessor for PersonalizedFeedDataSource();
  v34 = sub_100012988(&qword_1000DC080, type metadata accessor for PersonalizedFeedDataSource);
  if (SnapshotDataSource.numberOfItems(in:)(v32) < 1)
  {
LABEL_11:
    static Logger.view.getter();
    v49 = v102;
    v48 = v103;
    v50 = a1;
    v51 = v107;
    (*(v103 + 16))(v102, v50, v107);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      v55 = CollectionViewLayoutContext.section.getter();
      (*(v48 + 8))(v49, v51);
      *(v54 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v52, v53, "PersonalizedFeedDataSource section %ld is empty but we've been asked for a layout; returning empty", v54, 0xCu);
    }

    else
    {
      (*(v48 + 8))(v49, v51);
    }

    (*(v105 + 8))(v14, v106);
    v56 = v104;
    static LayoutConfiguration.empty.getter();
    isa = LayoutConfiguration.layoutSection.getter();
    goto LABEL_15;
  }

  v101 = a1;
  CollectionViewLayoutContext.section.getter();
  IndexPath.init(item:section:)();
  SnapshotDataSource.item(at:)();
  (*(v28 + 8))(v31, v27);
  sub_1000199DC();
  type metadata accessor for FeedItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    a1 = v101;
    goto LABEL_11;
  }

  v35 = v111;
  v36 = [v111 feedSection];
  if (!v36)
  {
    v99 = v34;
    v102 = v33;
    v59 = v97;
    static Logger.view.getter();
    v60 = v103;
    v61 = *(v103 + 16);
    v62 = v96;
    v63 = v101;
    v64 = v107;
    v61(v96, v101, v107);
    v61(v100, v63, v64);
    v65 = v35;
    v66 = v2;
    v67 = v65;
    v68 = v66;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = v60;
      v72 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v112[0] = v101;
      *v72 = 136315906;
      v73 = [v67 uniqueIdentifier];
      LODWORD(v98) = v70;
      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = sub_1000036D0(v75, v77, v112);

      *(v72 + 4) = v78;
      *(v72 + 12) = 1024;
      LODWORD(v78) = [v67 isDeleted];

      *(v72 + 14) = v78;
      *(v72 + 18) = 2048;
      v79 = CollectionViewLayoutContext.section.getter();
      v80 = v62;
      v81 = SnapshotDataSource.numberOfItems(in:)(v79);

      v82 = *(v71 + 8);
      v83 = v107;
      v82(v80, v107);
      *(v72 + 20) = v81;

      *(v72 + 28) = 2048;
      v84 = v100;
      v85 = CollectionViewLayoutContext.section.getter();
      v82(v84, v83);
      *(v72 + 30) = v85;
      _os_log_impl(&_mh_execute_header, v69, v98, "feedItem %s is in the feed without a section! isDeleted=%{BOOL}d, %ld items in section %ld", v72, 0x26u);
      sub_100003B90(v101);

      (*(v105 + 8))(v97, v106);
    }

    else
    {
      v87 = *(v60 + 8);
      v87(v100, v64);

      v87(v62, v64);
      (*(v105 + 8))(v59, v106);
    }

    v56 = v104;
    static LayoutConfiguration.empty.getter();
    isa = LayoutConfiguration.layoutSection.getter();

    goto LABEL_15;
  }

  v37 = v36;
  v38 = v99;
  static LayoutConfiguration.card.getter();
  if (*(v2 + qword_1000DC598) == 1)
  {
    LayoutConfiguration.interItemInset.getter();
    v40 = v39;
    v41 = LayoutConfiguration.additionalContentInsets.modify();
    *(v42 + 16) = v40;
    v41(v112, 0);
  }

  v43 = [v37 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = ForYouSectionKind.init(rawValue:)();
  v45 = v98;
  if (v44 > 2)
  {
    if (v44 == 3)
    {
      v86 = v90;
      static ListLayoutConfiguration.apps.getter();
      CollectionViewLayoutContext.environment.getter();
      isa = ListLayoutConfiguration.layout(for:)();

      swift_unknownObjectRelease();
      (*(v91 + 8))(v86, v92);
      v56 = v38;
    }

    else
    {
      v56 = v38;
      isa = LayoutConfiguration.layoutSection.getter();
    }

    goto LABEL_15;
  }

  v46 = v110;
  if (v44 < 2)
  {
    static GridLayoutEngine.largeCard.getter();
    v47 = GridLayoutEngine.layout(for:)();
    if (!v46)
    {
      goto LABEL_26;
    }

LABEL_24:
    isa = v95;

    (*(v94 + 8))(v45, isa);
    (*(v108 + 8))(v38, v109);
    return isa;
  }

  v45 = v93;
  static GridLayoutEngine.articles.getter();
  v47 = GridLayoutEngine.layout(for:)();
  if (v46)
  {
    goto LABEL_24;
  }

LABEL_26:
  v88 = v47;
  (*(v94 + 8))(v45, v95);
  v89 = [objc_opt_self() estimatedDimension:100.0];
  isa = NSCollectionLayoutSection.withHeader(height:alignment:)(v89, NSRectAlignmentTopLeading).super.isa;

  v56 = v38;
LABEL_15:
  (*(v108 + 8))(v56, v109);
  return isa;
}

void *sub_10001B3F0(uint64_t a1, uint64_t a2)
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

  sub_1000091E4(0, &qword_1000DB6A8, sub_10001B4A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_10001B4A8()
{
  if (!qword_1000DB690)
  {
    sub_100003DDC(255, &qword_1000DB678, HKDisplayCategory_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DB690);
    }
  }
}

uint64_t sub_10001B524()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ListLayoutConfiguration.withoutHeader.getter();
  v5 = ListLayoutConfiguration.layout(for:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void *sub_10001B5F8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10001B758(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001B4A8();
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1000325EC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10001BAA0(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_10001B854(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100033BBC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10001B758(v5);
  *a1 = v2;
  return result;
}

void sub_10001B8C0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10001B914(a3);
}

void sub_10001B914(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummaryFeedViewController();
  v12.receiver = v2;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  sub_10001BC98();
  Date.init()();
  dispatch thunk of PersonalizedFeedTrainer.feedDidBeginDisplay(at:)();

  (*(v5 + 8))(v8, v4);
  v10 = [v2 userActivity];
  if (v10)
  {
    v11 = v10;
    [v2 submitUserActivityForRestoration:v10];
  }

  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  sub_10001BDC8();
  sub_100018B30();
}

uint64_t sub_10001BAA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    v28 = *a4;
LABEL_6:
    v26 = v5;
    v27 = a3;
    v7 = v4 + 16 * a3;
    v8 = *v7;
    v9 = *(v7 + 8);
    v25 = v6;
    while (1)
    {
      v11 = *(v5 - 16);
      v10 = *(v5 - 8);
      if (v9 == v10)
      {
        v12 = v8;
        v13 = v11;
        v14 = [v12 categoryName];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = [v13 categoryName];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v29 == v18 && v16 == v20)
        {

          v4 = v28;
LABEL_5:
          a3 = v27 + 1;
          v5 = v26 + 16;
          v6 = v25 - 1;
          if (v27 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = v28;
        if ((v22 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v8 = *v5;
      v9 = *(v5 + 8);
      *v5 = *(v5 - 16);
      *(v5 - 8) = v9;
      *(v5 - 16) = v8;
      v5 -= 16;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001BC40@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1000DCBC0;
  swift_beginAccess();
  return sub_10000ACE8(v1 + v3, a1);
}

uint64_t sub_10001BC98()
{
  v1 = type metadata accessor for PersonalizedFeedTrainer.DwellPolicy();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = qword_1000DCBA0;
  if (*&v0[qword_1000DCBA0])
  {
    v4 = *&v0[qword_1000DCBA0];
  }

  else
  {
    sub_100007D4C(&qword_1000DCD68, type metadata accessor for SummaryFeedViewController);
    static PersonalizedFeedTrainer.DwellPolicy.summary.getter();
    v5 = type metadata accessor for PersonalizedFeedTrainer();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = v0;
    v9 = v0;
    v4 = PersonalizedFeedTrainer.init(delegate:dwellPolicy:)();
    v10 = *&v0[v3];
    *&v9[v3] = v4;
  }

  return v4;
}

uint64_t sub_10001BDC8()
{
  v1 = v0;
  v53 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  v13 = __chkstk_darwin(v11);
  v50 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = v40 - v15;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = *(v48 + 64);
  __chkstk_darwin(v16);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v22 = type metadata accessor for DispatchQoS();
  v23 = *(*(v22 - 8) + 64);
  result = __chkstk_darwin(v22);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[10] & 1) == 0)
  {
    *(v0 + 80) = 1;
    v46 = v25;
    v47 = result;
    v40[2] = sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    v40[1] = "FeedItemFetchRequestNoFaults";
    static DispatchQoS.background.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100007D04(&unk_1000DD150, &type metadata accessor for OS_dispatch_queue.Attributes);
    v45 = v3;
    v41 = v11;
    v44 = v6;
    v42 = &type metadata accessor for Array;
    sub_100006120(0, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes, &type metadata accessor for Array);
    v43 = v2;
    sub_100007EA4(&unk_1000DD160, &qword_1000DC778, &type metadata accessor for OS_dispatch_queue.Attributes);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v48 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v49);
    v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v28 = v50;
    static DispatchTime.now()();
    *v10 = 100;
    v30 = v51;
    v29 = v52;
    (*(v51 + 104))(v10, enum case for DispatchTimeInterval.milliseconds(_:), v52);
    v31 = v54;
    + infix(_:_:)();
    (*(v30 + 8))(v10, v29);
    v32 = *(v55 + 8);
    v33 = v41;
    v32(v28, v41);
    v34 = swift_allocObject();
    v35 = v53;
    *(v34 + 16) = v1;
    *(v34 + 24) = v35;
    aBlock[4] = sub_100085604;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008310;
    aBlock[3] = &unk_1000D03D0;
    v36 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v56 = &_swiftEmptyArrayStorage;
    sub_100007D04(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006120(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, v42);
    sub_100007EA4(&qword_1000DAD48, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags);
    v37 = v44;
    v38 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v39 = v49;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v36);

    (*(v45 + 8))(v37, v38);
    (*(v46 + 8))(v27, v47);
    v32(v31, v33);
  }

  return result;
}