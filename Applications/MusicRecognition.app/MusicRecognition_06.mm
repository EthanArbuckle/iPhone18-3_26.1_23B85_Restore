unint64_t sub_1000B9574(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
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

unint64_t sub_1000B9678(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100134EF8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B96D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B9750()
{
  v1 = [v0 window];
  if (!v1 || (v2 = v1, v3 = [v1 windowScene], v2, !v3))
  {
    v6 = static UISceneSessionRole.activitySystemAperture.getter();
    goto LABEL_10;
  }

  v4 = [v3 session];

  v5 = [v4 role];
  v6 = static UISceneSessionRole.activitySystemAperture.getter();
  if (!v5)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_13;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_13:
  return v12 & 1;
}

uint64_t sub_1000B9880()
{
  swift_getKeyPath();
  sub_100086A00();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000B98F0(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100086A00();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1000B99D0()
{
  v1 = objc_allocWithZone(AMSAcknowledgePrivacyTask);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithPrivacyIdentifier:v2];

  v4 = [v3 acknowledgePrivacy];
  v12 = sub_1000B9DC4;
  v13 = 0;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000C1C84;
  v11 = &unk_1001393D8;
  v5 = _Block_copy(&aBlock);
  [v4 addSuccessBlock:v5];
  _Block_release(v5);
  v12 = sub_1000B9EAC;
  v13 = 0;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000B9FF8;
  v11 = &unk_100139400;
  v6 = _Block_copy(&aBlock);
  [v4 addErrorBlock:v6];
  _Block_release(v6);

  if (*(v0 + 16) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    aBlock = v0;
    sub_100086A00();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + 16) = 0;
  }
}

uint64_t sub_1000B9C14()
{
  v1 = v0;
  ObservationRegistrar.init()();
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 acknowledgementNeededForPrivacyIdentifier:v3];

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000BEC4(v5, qword_10014FEA0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000BA1EC(0xD000000000000025, 0x80000001000FF0B0, &v11);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "Privacy required for %s: %{BOOL}d", v8, 0x12u);
    sub_100007E74(v9);
  }

  *(v1 + 16) = v4;
  return v1;
}

void sub_1000B9DC4()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000BEC4(v0, qword_10014FEA0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "User accepted the privacy terms. Acknowledge privacy task succeeded.", v2, 2u);
  }
}

void sub_1000B9EAC()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000BEC4(v0, qword_10014FEA0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "User tried to accept the privacy terms. Acknowledge privacy task failed with error: %@", v2, 0xCu);
    sub_1000157BC(v3);
  }
}

void sub_1000B9FF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000BA060()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition42MusicRecognitionOnboardingWelcomeViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel()
{
  result = qword_100147328;
  if (!qword_100147328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA150()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_1000BA1EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000BA2B8(v11, 0, 0, 1, a1, a2);
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
    sub_100012C48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007E74(v11);
  return v7;
}

unint64_t sub_1000BA2B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000BA3C4(a5, a6);
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

char *sub_1000BA3C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000BA410(a1, a2);
  sub_1000BA540(&off_100134D98);
  return v3;
}

char *sub_1000BA410(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000BA62C(v5, 0);
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
        v7 = sub_1000BA62C(v10, 0);
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

uint64_t sub_1000BA540(uint64_t result)
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

  result = sub_1000BA6A0(result, v11, 1, v3);
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

void *sub_1000BA62C(uint64_t a1, uint64_t a2)
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

  sub_100002D44(&qword_1001473B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000BA6A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D44(&qword_1001473B8);
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

uint64_t sub_1000BA794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BA7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000BA8C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ToolbarShareButton()
{
  result = qword_100147418;
  if (!qword_100147418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BA9CC()
{
  sub_10007ED18();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_10006A3FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000BAA9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for ToolbarShareButton();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v7 = sub_100002D44(&qword_100147460);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = sub_100002D44(&qword_100147468);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v43 = &v41 - v15;
  v16 = sub_100002D44(&qword_100147470);
  v17 = *(v16 - 8);
  v46 = v16;
  v47 = v17;
  __chkstk_darwin(v16);
  v45 = &v41 - v18;
  sub_1000BB774(v2, &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1000BB900(&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_100002D44(&qword_1001422A8);
  v21 = sub_100004370(&qword_1001422B8);
  v49 = &type metadata for Image;
  v50 = &protocol witness table for Image;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v21;
  v50 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  v44 = v6;
  sub_1000BB9C4();
  View.accessibilityIdentifier(_:)();
  (*(v8 + 8))(v10, v7);

  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  LOBYTE(v21) = v26;
  v27 = v43;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000BFBC(v23, v25, v21 & 1);

  sub_1000BBA28(v13);
  Solarium.init()();
  v28 = sub_100002D44(&qword_100147480);
  v29 = sub_100002D44(&qword_100147488);
  v30 = sub_1000BBA90();
  v31 = type metadata accessor for PlainButtonStyle();
  v32 = sub_1000BBB4C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  v33 = v11;
  v49 = v11;
  v50 = v31;
  v51 = v30;
  v52 = v32;
  v42 = swift_getOpaqueTypeConformance2();
  v34 = type metadata accessor for NavigationBarButtonStyle();
  v35 = sub_1000BBB4C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
  v49 = v11;
  v50 = v34;
  v51 = v30;
  v52 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v45;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_1000BBA28(v27);
  v41 = v2;
  v38 = *(v2 + 8);
  v57 = *v2;
  v58 = v38;
  sub_100002D44(&qword_100145920);
  State.projectedValue.getter();
  v49 = v33;
  v50 = &type metadata for Solarium;
  v51 = v28;
  v52 = v29;
  v53 = v30;
  v54 = &protocol witness table for Solarium;
  v55 = v42;
  v56 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v46;
  View.sharingPicker(isPresented:item:subject:message:)();

  return (*(v47 + 8))(v37, v39);
}

uint64_t sub_1000BB158(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v2 = type metadata accessor for ToolbarShareButton();
  return (*(a1 + *(v2 + 32)))();
}

uint64_t sub_1000BB1E4()
{

  sub_100002D44(&qword_100145920);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1000BB28C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = sub_100002D44(&qword_1001422B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  v14 = Image.init(systemName:)();
  if (static Solarium.isEnabled.getter())
  {
    static SymbolVariants.none.getter();
  }

  else
  {
    static SymbolVariants.circle.getter();
    SymbolVariants.fill.getter();
    (*(v2 + 8))(v4, v1);
  }

  View.symbolVariant(_:)();
  (*(v2 + 8))(v7, v1);

  static Font.Weight.regular.getter();
  v14 = &type metadata for Image;
  v15 = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  View.fontWeight(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000BB4F8()
{
  v0 = type metadata accessor for PlainButtonStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlainButtonStyle.init()();
  sub_100002D44(&qword_100147468);
  sub_1000BBA90();
  sub_1000BBB4C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000BB640()
{
  v0 = type metadata accessor for NavigationBarButtonStyle();
  __chkstk_darwin(v0);
  v2 = (&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8);
  swift_storeEnumTagMultiPayload();
  sub_100002D44(&qword_100147468);
  sub_1000BBA90();
  sub_1000BBB4C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
  View.buttonStyle<A>(_:)();
  return sub_1000BBB9C(v2);
}

uint64_t sub_1000BB774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarShareButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BB7D8()
{
  v1 = (type metadata accessor for ToolbarShareButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000BB900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarShareButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BB964()
{
  v1 = *(type metadata accessor for ToolbarShareButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000BB158(v2);
}

unint64_t sub_1000BB9C4()
{
  result = qword_100147478;
  if (!qword_100147478)
  {
    sub_100004370(&qword_100147460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147478);
  }

  return result;
}

uint64_t sub_1000BBA28(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100147468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000BBA90()
{
  result = qword_100147490[0];
  if (!qword_100147490[0])
  {
    sub_100004370(&qword_100147468);
    sub_1000BB9C4();
    sub_1000BBB4C(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100147490);
  }

  return result;
}

uint64_t sub_1000BBB4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BBB9C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationBarButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BBC14()
{
  sub_100004370(&qword_100147470);
  sub_100004370(&qword_100147468);
  sub_100004370(&qword_100147480);
  sub_100004370(&qword_100147488);
  sub_1000BBA90();
  type metadata accessor for PlainButtonStyle();
  sub_1000BBB4C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationBarButtonStyle();
  sub_1000BBB4C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000BBDF0()
{
  sub_1000BC1BC();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000BBE80(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 9) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1000BBFC8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 9) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 9) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 > 0xFE)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 9) & ~v8;

        return v18(v19);
      }

      else if (a2 > 0xFE)
      {
        *(result + 8) = 0;
        *result = a2 - 255;
      }

      else
      {
        *(result + 8) = -a2;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 9) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 9) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1000BC1BC()
{
  if (!qword_100147518)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100147518);
    }
  }
}

uint64_t sub_1000BC250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = *(v7 + 16);
  v9 = sub_100004370(&qword_100147520);
  v29 = v9;
  v10 = *(a1 + 24);
  v11 = type metadata accessor for EmptyVisualEffect();
  v12 = sub_1000BC848();
  v34 = v11;
  v35 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = OpaqueTypeConformance2;
  v31 = OpaqueTypeConformance2;
  v32 = &opaque type descriptor for <<opaque return type of View.visualEffect<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v28 - v19;
  v28[2] = *(a1 + 36);
  (*(v5 + 16))(v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v18);
  v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = v10;
  (*(v5 + 32))(v22 + v21, v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v23 = v29;
  v24 = v31;
  View.visualEffect<A>(_:)();

  v34 = v8;
  v35 = v23;
  v36 = v10;
  v37 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  sub_1000B03E4(v16, OpaqueTypeMetadata2, v25);
  v26 = *(v30 + 8);
  v26(v16, OpaqueTypeMetadata2);
  sub_1000B03E4(v20, OpaqueTypeMetadata2, v25);
  return (v26)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1000BC550(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScrollFadingView();
  sub_1000BC5D4(a2, v3);
  type metadata accessor for EmptyVisualEffect();
  sub_1000BC848();
  return VisualEffect.opacity(_:)();
}

double sub_1000BC5D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NamedCoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  (*(v10 + 8))(v12, v9);
  v13 = 1.0;
  if ((v22 & 1) == 0)
  {
    MinY = CGRectGetMinY(v21);
    if (MinY > 0.0)
    {
      v15 = *v2;
      if (*(v3 + 8) == 1)
      {
        if (v15)
        {
          return v13;
        }
      }

      else
      {
        v16 = MinY;

        static os_log_type_t.fault.getter();
        v17 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100069CB4(v15, 0);
        (*(v6 + 8))(v8, v5);
        MinY = v16;
        if (v20[7])
        {
          return v13;
        }
      }

      v18 = 1.0 - fabs(MinY / *(v3 + *(a2 + 40)));
      v13 = 0.0;
      if (v18 >= 0.0)
      {
        if (v18 <= 1.0)
        {
          return v18;
        }

        else
        {
          return 1.0;
        }
      }
    }
  }

  return v13;
}

unint64_t sub_1000BC848()
{
  result = qword_100147528;
  if (!qword_100147528)
  {
    type metadata accessor for EmptyVisualEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147528);
  }

  return result;
}

uint64_t sub_1000BC8A0()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScrollFadingView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);
  sub_100069CB4(*(v0 + v4), *(v0 + v4 + 8));
  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000BC994(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollFadingView();

  return sub_1000BC550(a1, a2);
}

uint64_t sub_1000BCA38()
{
  sub_100004370(&qword_100147520);
  type metadata accessor for EmptyVisualEffect();
  sub_1000BC848();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BCADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v29 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  sub_100004370(&qword_1001429A0);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100141F78);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100141F88);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_1001475C0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v5 = type metadata accessor for HStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  WitnessTable = swift_getWitnessTable();
  v33 = v5;
  v34 = WitnessTable;
  v22 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v17 = *(v24 + 24);
  v30 = v23;
  v31 = v17;
  v32 = v25;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  v18 = v26;
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  (*(v27 + 8))(v18, v28);
  (*(v6 + 8))(v8, v5);
  v33 = v5;
  v34 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000B03E4(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v20 = *(v11 + 8);
  v20(v13, OpaqueTypeMetadata2);
  sub_1000B03E4(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v20)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_1000BCEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v62 = a4;
  v6 = sub_100002D44(&qword_1001475C8);
  __chkstk_darwin(v6 - 8);
  v57 = &v48 - v7;
  v60 = sub_100002D44(&qword_1001475C0);
  __chkstk_darwin(v60);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v48 - v10;
  __chkstk_darwin(v11);
  v59 = &v48 - v12;
  sub_100004370(&qword_1001429A0);
  v13 = type metadata accessor for ModifiedContent();
  v53 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  sub_100004370(&qword_100141F78);
  v16 = type metadata accessor for ModifiedContent();
  v55 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  sub_100004370(&qword_100141F88);
  v19 = type metadata accessor for ModifiedContent();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v48 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v52 = &v48 - v22;
  v50 = a2;
  v54 = type metadata accessor for SongMetadataRowView();
  v49 = a3;
  View.lineLimit(_:)();
  static Font.subheadline.getter();
  v23 = sub_100004610(&qword_100142998, &qword_1001429A0);
  v66[6] = a3;
  v66[7] = v23;
  WitnessTable = swift_getWitnessTable();
  View.font(_:)();

  (*(v53 + 8))(v15, v13);
  LODWORD(v67) = static HierarchicalShapeStyle.secondary.getter();
  v25 = sub_100004610(&qword_100141F70, &qword_100141F78);
  v66[4] = WitnessTable;
  v66[5] = v25;
  v26 = swift_getWitnessTable();
  v27 = v48;
  View.foregroundStyle<A>(_:)();
  (*(v55 + 8))(v18, v16);
  v28 = sub_100004610(&qword_100141F80, &qword_100141F88);
  v66[2] = v26;
  v66[3] = v28;
  v55 = swift_getWitnessTable();
  v29 = v52;
  sub_1000B03E4(v27, v19, v55);
  v30 = v56;
  v31 = *(v56 + 8);
  v31(v27, v19);
  v32 = sub_1000BD668(v51, v50, v49);
  v33 = v57;
  sub_1000BDC04(v32, v34, v54, v57);

  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v35 = v58;
  sub_10002F250(v33, v58, &qword_1001475C8);
  v36 = v60;
  v37 = (v35 + *(v60 + 36));
  v38 = v72;
  v37[4] = v71;
  v37[5] = v38;
  v37[6] = v73;
  v39 = v68;
  *v37 = v67;
  v37[1] = v39;
  v40 = v70;
  v37[2] = v69;
  v37[3] = v40;
  v41 = v59;
  sub_10002F250(v35, v59, &qword_1001475C0);
  v42 = *(v30 + 16);
  v43 = v29;
  v42(v27, v29, v19);
  v66[0] = v27;
  v44 = v41;
  v45 = v41;
  v46 = v61;
  sub_100007FDC(v44, v61, &qword_1001475C0);
  v66[1] = v46;
  v65[0] = v19;
  v65[1] = v36;
  v63 = v55;
  v64 = sub_1000BF580(&qword_1001475D0, &qword_1001475C0, &unk_1000FCBD8, sub_1000BF3E0);
  sub_1000311BC(v66, 2uLL, v65);
  sub_100007E14(v45, &qword_1001475C0);
  v31(v43, v19);
  sub_100007E14(v46, &qword_1001475C0);
  return (v31)(v27, v19);
}

uint64_t (*sub_1000BD668(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for SongMetadataRowView();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_1000BF900;
}

uint64_t sub_1000BD7A0(uint64_t a1)
{
  v3 = type metadata accessor for OpenURLAction();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v33 = a1;
  sub_100007FDC(v1 + *(a1 + 44), v7, &unk_100144630);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100007E14(v7, &unk_100144630);
  }

  v31 = v1;
  (*(v9 + 32))(v14, v7, v8);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v32 = v3;
  v16 = type metadata accessor for Logger();
  sub_10000BEC4(v16, qword_10014FEA0);
  (*(v9 + 16))(v11, v14, v8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v19 = 136315138;
    sub_1000BF960(&qword_100142378, &type metadata accessor for URL);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = *(v9 + 8);
    v23(v11, v8);
    v24 = sub_1000BA1EC(v20, v22, &v36);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Opening %s", v19, 0xCu);
    sub_100007E74(v30);
  }

  else
  {

    v23 = *(v9 + 8);
    v25 = (v23)(v11, v8);
  }

  v26 = (v31 + *(v33 + 48));
  v27 = v35;
  if (*v26)
  {
    (*v26)(v25);
  }

  v28 = v34;
  sub_100041144(v34);
  OpenURLAction.callAsFunction(_:)();
  (*(v27 + 8))(v28, v32);
  return (v23)(v14, v8);
}

uint64_t sub_1000BDC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a1;
  v54 = a2;
  v60 = a4;
  v59 = sub_100002D44(&qword_100147610);
  __chkstk_darwin(v59);
  v7 = &v53 - v6;
  v8 = sub_100002D44(&qword_100147618);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_100002D44(&qword_1001475F8);
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v58 = sub_100002D44(&qword_1001475E8);
  __chkstk_darwin(v58);
  v57 = &v53 - v14;
  v15 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  sub_100007FDC(v4 + a3[11], &v53 - v16, &unk_100144630);
  v18 = type metadata accessor for URL();
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  sub_100007E14(v17, &unk_100144630);
  if (v19 == 1)
  {
    v20 = (v4 + a3[10]);
    v21 = v20[1];
    *&v64 = *v20;
    *(&v64 + 1) = v21;
    sub_10000B730();

    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    static Font.subheadline.getter();
    v27 = Text.font(_:)();
    v29 = v28;
    v31 = v30;
    v56 = v32;

    sub_10000BFBC(v22, v24, v26 & 1);

    static Color.primary.getter();
    v57 = Text.foregroundColor(_:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;

    sub_10000BFBC(v27, v29, v31 & 1);

    KeyPath = swift_getKeyPath();
    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v61[55] = v67;
    *&v61[71] = v68;
    *&v61[87] = v69;
    *&v61[103] = v70;
    *&v61[7] = v64;
    *&v61[23] = v65;
    *&v61[39] = v66;
    v40 = *&v61[80];
    *(v7 + 113) = *&v61[64];
    *(v7 + 129) = v40;
    *(v7 + 145) = *&v61[96];
    v41 = *&v61[16];
    *(v7 + 49) = *v61;
    *(v7 + 65) = v41;
    v42 = *&v61[48];
    *(v7 + 81) = *&v61[32];
    v63 = v36 & 1;
    v62 = 0;
    *v7 = v57;
    *(v7 + 1) = v34;
    v7[16] = v36 & 1;
    *(v7 + 3) = v38;
    *(v7 + 4) = KeyPath;
    *(v7 + 5) = 1;
    v7[48] = 0;
    *(v7 + 20) = *&v61[111];
    *(v7 + 97) = v42;
    swift_storeEnumTagMultiPayload();
    sub_100002D44(&qword_100147608);
    sub_1000BF498();
    sub_1000BF580(&qword_100147600, &qword_100147608, &unk_1000FCBF8, sub_1000149E0);
    return _ConditionalContent<>.init(storage:)();
  }

  v44 = swift_allocObject();
  *(v44 + 16) = v53;
  v45 = v54;
  *(v44 + 24) = v54;
  __chkstk_darwin(v45);

  sub_100002D44(&qword_100142990);
  sub_1000149E0();
  Button.init(action:label:)();
  sub_100007FDC(v4 + a3[13], v10, &qword_100147618);
  v46 = type metadata accessor for SongMetadataRowViewModel();
  if ((*(*(v46 - 8) + 48))(v10, 1, v46) == 1)
  {
    sub_100007E14(v10, &qword_100147618);
    v47 = v7;
LABEL_6:
    v50 = (v4 + a3[10]);
    v49 = *v50;
    v48 = v50[1];

    goto LABEL_7;
  }

  v49 = *(v10 + 6);
  v48 = *(v10 + 7);

  sub_1000BE7EC(v10);
  v47 = v7;
  if (!v48)
  {
    goto LABEL_6;
  }

LABEL_7:
  *&v64 = v49;
  *(&v64 + 1) = v48;
  sub_100004610(&qword_1001475F0, &qword_1001475F8);
  sub_10000B730();
  v51 = v56;
  v52 = v57;
  View.accessibilityLabel<A>(_:)();

  (*(v55 + 8))(v13, v51);
  sub_100007FDC(v52, v47, &qword_1001475E8);
  swift_storeEnumTagMultiPayload();
  sub_100002D44(&qword_100147608);
  sub_1000BF498();
  sub_1000BF580(&qword_100147600, &qword_100147608, &unk_1000FCBF8, sub_1000149E0);
  _ConditionalContent<>.init(storage:)();
  return sub_100007E14(v52, &qword_1001475E8);
}

uint64_t sub_1000BE388@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SongMetadataRowView();
  sub_10000B730();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000BFBC(v2, v4, v6 & 1);

  static Color.blue.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10000BFBC(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1000BE4FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v6 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = *a1;
  sub_10007BA88();
  v38 = v13;
  v39 = v14;
  v15 = sub_10007C01C();
  v17 = v16;
  if (v12 == 2)
  {
    v37 = v11;
    v18 = a1[4];
    v19 = a1[5];
    sub_10000DC80(a1 + 1, v18);
    v11 = v37;
    (*(v19 + 32))(v18, v19);
  }

  else
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  }

  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  if (!v17)
  {
    v15 = 0;
  }

  sub_10002F250(v8, v11, &unk_100144630);
  *a4 = swift_getKeyPath();
  sub_100002D44(&qword_1001422A0);
  swift_storeEnumTagMultiPayload();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_100002D44(qword_100147530);
  v30 = a4 + v29[9];
  *v30 = v22;
  *(v30 + 1) = v24;
  v30[16] = v26 & 1;
  *(v30 + 3) = v28;
  v31 = (a4 + v29[10]);
  *v31 = v15;
  v31[1] = v21;
  sub_10002F250(v11, a4 + v29[11], &unk_100144630);
  v32 = v29[13];
  v33 = type metadata accessor for SongMetadataRowViewModel();
  (*(*(v33 - 8) + 56))(a4 + v32, 1, 1, v33);
  v34 = (a4 + v29[12]);
  v35 = v41;
  *v34 = v40;
  v34[1] = v35;
  return sub_1000BE7EC(a1);
}

uint64_t sub_1000BE7EC(uint64_t a1)
{
  v2 = type metadata accessor for SongMetadataRowViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000BE848()
{
  sub_1000BF32C(319, &qword_100142248, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1000BF32C(319, &qword_100142180, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100008ADC();
        if (v3 <= 0x3F)
        {
          sub_1000BF32C(319, &qword_1001475B8, type metadata accessor for SongMetadataRowViewModel, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000BE9B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(type metadata accessor for OpenURLAction() - 8) + 64);
  v44 = *(a3 + 16);
  v6 = *(v44 - 8);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v45 = v5;
  v7 = *(v6 + 84);
  v43 = type metadata accessor for URL();
  v8 = *(v43 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(type metadata accessor for Date.FormatStyle() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = v15 - 1;
  if (v11 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v6 + 80);
  v20 = *(v8 + 80);
  v21 = *(v8 + 64);
  v22 = *(v12 + 80);
  v23 = *(v12 + 64);
  if (!v9)
  {
    ++v21;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = v45 + v19 + 1;
  v25 = *(v6 + 64) + 7;
  v26 = v22 | 7;
  v27 = v21 + 7;
  if (a2 <= v18)
  {
    goto LABEL_43;
  }

  v28 = v23 - ((((-65 - v22) | v22) - (v23 + v22)) | v22) - ((((((-17 - v20 - ((v25 + (v24 & ~v19)) & 0xFFFFFFFFFFFFFFF8)) | v20) - v27) | 7) - v26 - 16) | v26) - 2;
  v21 = (8 * v28);
  if (v28 <= 3)
  {
    v30 = ((a2 - v18 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
    if (HIWORD(v30))
    {
      v29 = *(a1 + v28);
      if (!v29)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v30 > 0xFF)
    {
      v29 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v30 < 2)
    {
LABEL_43:
      v34 = (a1 + v24) & ~v19;
      if (v7 == v18)
      {
        v35 = *(v6 + 48);

        return v35(v34, v7, v44);
      }

      v37 = (v25 + v34) & 0xFFFFFFFFFFFFFFF8;
      if ((v17 & 0x80000000) == 0)
      {
        v38 = *(v37 + 8);
        if (v38 >= 0xFFFFFFFF)
        {
          LODWORD(v38) = -1;
        }

        return (v38 + 1);
      }

      v39 = (v20 + v37 + 16) & ~v20;
      if (v10 == v18)
      {
        if (v9 < 2)
        {
          return 0;
        }

        v42 = (*(v8 + 48))(v39, v9, v43, v21);
      }

      else
      {
        v40 = ~v22 & (v26 + ((v27 + v39) & 0xFFFFFFFFFFFFFFF8) + 16) & 0xFFFFFFFFFFFFFFF8;
        if ((v14 & 0x80000000) != 0)
        {
          v42 = (*(v13 + 48))((v22 + ((v40 + 55) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22);
        }

        else
        {
          v41 = *(v40 + 32);
          if (v41 >= 0xFFFFFFFF)
          {
            LODWORD(v41) = -1;
          }

          v42 = v41 + 1;
        }
      }

      if (v42 >= 2)
      {
        return v42 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v29 = *(a1 + v28);
  if (!*(a1 + v28))
  {
    goto LABEL_43;
  }

LABEL_30:
  v31 = (v29 - 1) << (8 * v28);
  if (v28 > 3)
  {
    v31 = 0;
  }

  if (v28)
  {
    if (v28 <= 3)
    {
      v32 = v28;
    }

    else
    {
      v32 = 4;
    }

    if (v32 > 2)
    {
      if (v32 == 3)
      {
        v33 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v33 = *a1;
      }
    }

    else if (v32 == 1)
    {
      v33 = *a1;
    }

    else
    {
      v33 = *a1;
    }
  }

  else
  {
    v33 = 0;
  }

  return v18 + (v33 | v31) + 1;
}

void sub_1000BEDD8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(type metadata accessor for OpenURLAction() - 8) + 64);
  v53 = *(a4 + 16);
  v6 = *(v53 - 8);
  if (v5 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v5;
  }

  v57 = *(v53 - 8);
  v8 = *(v6 + 84);
  v52 = type metadata accessor for URL();
  v9 = *(v52 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = 0;
  v14 = *(type metadata accessor for Date.FormatStyle() - 8);
  v15 = *(v14 + 84);
  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  v18 = *(v9 + 80);
  if (v15 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v12 <= v19 - 1)
  {
    v20 = v19 - 1;
  }

  else
  {
    v20 = v12;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v7 + v16 + 1;
  v23 = v17 + 7;
  v24 = (v18 + 16 + ((v17 + 7 + (v22 & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
  if (v10)
  {
    v25 = *(v9 + 64);
  }

  else
  {
    v25 = *(v9 + 64) + 1;
  }

  v26 = *(v14 + 80);
  v27 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v28 = ((*(v14 + 64) + v26 + ((v26 + 64) & ~v26)) & ~v26) + *(v14 + 64);
  v29 = v25 + 7;
  v30 = (v25 + 7 + v24) & 0xFFFFFFFFFFFFFFF8;
  v31 = v26 + 16;
  v32 = ((v26 + 16 + v30) & v27) + v28;
  if (a3 > v21)
  {
    if (v32 <= 3)
    {
      v33 = ((a3 - v21 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
      if (HIWORD(v33))
      {
        v13 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v13 = v34;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v21 < a2)
  {
    v35 = ~v21 + a2;
    if (v32 < 4)
    {
      v36 = (v35 >> (8 * v32)) + 1;
      if (v32)
      {
        v37 = v35 & ~(-1 << (8 * v32));
        bzero(a1, v32);
        if (v32 != 3)
        {
          if (v32 == 2)
          {
            *a1 = v37;
            if (v13 > 1)
            {
LABEL_67:
              if (v13 == 2)
              {
                *&a1[v32] = v36;
              }

              else
              {
                *&a1[v32] = v36;
              }

              return;
            }
          }

          else
          {
            *a1 = v35;
            if (v13 > 1)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_64;
        }

        *a1 = v37;
        a1[2] = BYTE2(v37);
      }

      if (v13 > 1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      bzero(a1, v32);
      *a1 = v35;
      v36 = 1;
      if (v13 > 1)
      {
        goto LABEL_67;
      }
    }

LABEL_64:
    if (v13)
    {
      a1[v32] = v36;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

    *&a1[v32] = 0;
  }

  else if (v13)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if (!a2)
  {
    return;
  }

LABEL_49:
  v38 = &a1[v22] & ~v16;
  if (v8 == v21)
  {
    v39 = *(v57 + 56);
    v40 = a2;
    v41 = v8;
    v42 = v53;
LABEL_51:

    v39(v38, v40, v41, v42);
    return;
  }

  v43 = ((v23 + v38) & 0xFFFFFFFFFFFFFFF8);
  if ((v20 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *v43 = a2 & 0x7FFFFFFF;
      v43[1] = 0;
    }

    else
    {
      v43[1] = a2 - 1;
    }

    return;
  }

  v38 = (v43 + v18 + 16) & ~v18;
  if (v11 == v21)
  {
    if (v10 < 2)
    {
      return;
    }

    v39 = *(v9 + 56);
    v40 = a2 + 1;
    v41 = v10;
    v42 = v52;
    goto LABEL_51;
  }

  v44 = (v31 + ((v29 + v38) & 0xFFFFFFFFFFFFFFF8)) & v27;
  v45 = a2 >= v19;
  v46 = a2 - v19;
  if (v45)
  {
    if (v28 <= 3)
    {
      v48 = ~(-1 << (8 * v28));
    }

    else
    {
      v48 = -1;
    }

    if (v28)
    {
      v49 = v48 & v46;
      if (v28 <= 3)
      {
        v50 = v28;
      }

      else
      {
        v50 = 4;
      }

      bzero(((v31 + ((v29 + v38) & 0xFFFFFFFFFFFFFFF8)) & v27), v28);
      if (v50 > 2)
      {
        if (v50 == 3)
        {
          *v44 = v49;
          *(v44 + 2) = BYTE2(v49);
        }

        else
        {
          *v44 = v49;
        }
      }

      else if (v50 == 1)
      {
        *v44 = v49;
      }

      else
      {
        *v44 = v49;
      }
    }
  }

  else
  {
    v47 = a2 + 1;
    if ((v15 & 0x80000000) != 0)
    {
      v51 = *(v14 + 56);

      v51((v31 + ((v44 + 55) & 0xFFFFFFFFFFFFFFF8)) & ~v26, v47);
    }

    else if ((v47 & 0x80000000) != 0)
    {
      *(((v31 + ((v29 + v38) & 0xFFFFFFFFFFFFFFF8)) & v27) + 0x10) = 0u;
      *(((v31 + ((v29 + v38) & 0xFFFFFFFFFFFFFFF8)) & v27) + 0x20) = 0u;
      *(((v31 + ((v29 + v38) & 0xFFFFFFFFFFFFFFF8)) & v27) + 8) = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(((v31 + ((v29 + v38) & 0xFFFFFFFFFFFFFFF8)) & v27) + 0x20) = a2;
    }
  }
}

void sub_1000BF32C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000BF3E0()
{
  result = qword_1001475D8;
  if (!qword_1001475D8)
  {
    sub_100004370(&qword_1001475C8);
    sub_1000BF498();
    sub_1000BF580(&qword_100147600, &qword_100147608, &unk_1000FCBF8, sub_1000149E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001475D8);
  }

  return result;
}

unint64_t sub_1000BF498()
{
  result = qword_1001475E0;
  if (!qword_1001475E0)
  {
    sub_100004370(&qword_1001475E8);
    sub_100004610(&qword_1001475F0, &qword_1001475F8);
    sub_1000BF960(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001475E0);
  }

  return result;
}

uint64_t sub_1000BF580(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BF60C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BF650()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for SongMetadataRowView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for OpenURLAction();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v6 + v2[9], v1);

  v8 = v2[11];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  if (*(v6 + v2[12]))
  {
  }

  v11 = v6 + v2[13];
  v12 = type metadata accessor for SongMetadataRowViewModel();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    sub_100007E74(v11 + 8);

    v13 = *(v12 + 28);
    v14 = type metadata accessor for Date.FormatStyle();
    v15 = *(*(v14 - 8) + 8);
    v15(v11 + v13, v14);
    v15(v11 + *(v12 + 32), v14);
  }

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000BF960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BF9A8()
{
  sub_100004370(&qword_1001429A0);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100141F78);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100141F88);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_1001475C0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000BFAF4(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_100058974(a1, a2, a3);
    if (SHSession.Result.wasCancelled.getter())
    {
      sub_100099220(0);

      sub_1000120D0(a1, a2, a3);
      return;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        swift_errorRetain();
        sub_100002D44(&qword_100142F78);
        sub_1000123E4(0, &qword_100144E98);
        if (swift_dynamicCast())
        {
          v6 = v15;
          sub_100099220(v15);
          sub_1000120D0(a1, a2, 2u);

          return;
        }
      }

      goto LABEL_25;
    }

    v7 = [a1 mediaItems];
    sub_1000123E4(0, &qword_100143088);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v9)
    {
LABEL_25:
      sub_100099220(0);
      sub_1000120D0(a1, a2, a3);
      return;
    }

    v10 = [a1 mediaItems];
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v11 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_18:

        if ((v12 & 0xC000000000000001) == 0)
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v13 = *(v12 + 32);
          goto LABEL_21;
        }

LABEL_30:
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
        v14 = v13;

        sub_100098AC8(v14);
        sub_1000120D0(a1, a2, 0);

        return;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1000989E0();
}

void sub_1000BFDEC(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_100058974(a1, a2, a3);
    if (SHSession.Result.wasCancelled.getter())
    {
      v7 = *(v3 + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_listeningView);
      [v7 setHidden:0];
      v8 = String._bridgeToObjectiveC()();
      [v7 setState:v8];

      [*(v3 + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView) setHidden:1];

      sub_1000120D0(a1, a2, a3);
      return;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        swift_errorRetain();
        sub_100002D44(&qword_100142F78);
        sub_1000123E4(0, &qword_100144E98);
        if (swift_dynamicCast())
        {
          v12 = *(v3 + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_listeningView);
          [v12 setHidden:0];
          v13 = String._bridgeToObjectiveC()();
          [v12 setState:v13];

          [*(v3 + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView) setHidden:1];
          sub_1000120D0(a1, a2, 2u);

          return;
        }
      }

      goto LABEL_25;
    }

    v14 = [a1 mediaItems];
    sub_1000123E4(0, &qword_100143088);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v16)
    {
LABEL_25:
      v21 = *(v3 + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_listeningView);
      [v21 setHidden:0];
      v22 = String._bridgeToObjectiveC()();
      [v21 setState:v22];

      [*(v3 + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView) setHidden:1];
      sub_1000120D0(a1, a2, a3);
      return;
    }

    v17 = [a1 mediaItems];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    if (v18 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_18:

        if ((v19 & 0xC000000000000001) == 0)
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v20 = *(v19 + 32);
          goto LABEL_21;
        }

LABEL_30:
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
        v23 = v20;

        sub_10005948C(v23);
        sub_1000120D0(a1, a2, 0);

        return;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_30;
  }

  v9 = *(v3 + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_listeningView);
  [v9 setHidden:0];
  v10 = String._bridgeToObjectiveC()();
  [v9 setState:v10];

  v11 = *(v3 + OBJC_IVAR____TtC16MusicRecognition22ListeningAccessoryView_imageView);
  [v11 setHidden:1];

  [v11 setAccessibilityIdentifier:0];
}

void sub_1000C029C(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_100058974(a1, a2, a3);
    if (SHSession.Result.wasCancelled.getter())
    {
      [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView) setHidden:1];
      [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView) setHidden:1];
      v7 = a1;
      v8 = a2;
      v9 = a3;
LABEL_4:

      sub_1000120D0(v7, v8, v9);
      return;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        swift_errorRetain();
        sub_100002D44(&qword_100142F78);
        sub_1000123E4(0, &qword_100144E98);
        if (swift_dynamicCast())
        {
          [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView) setHidden:1];
          [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView) setHidden:1];
          sub_1000120D0(a1, a2, 2u);

          return;
        }
      }

      goto LABEL_23;
    }

    v11 = [a1 mediaItems];
    sub_1000123E4(0, &qword_100143088);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v13)
    {
LABEL_23:
      [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView) setHidden:1];
      [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView) setHidden:1];
      sub_1000120D0(a1, a2, a3);
      return;
    }

    v14 = [a1 mediaItems];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v15 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_19:

        if ((v16 & 0xC000000000000001) == 0)
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v17)
          {
            __break(1u);
            return;
          }

          goto LABEL_21;
        }

LABEL_28:
        specialized _ArrayBuffer._getElementSlowPath(_:)();

        swift_unknownObjectRelease();
LABEL_21:
        [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView) setHidden:1];
        [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView) setHidden:0];
        v7 = a1;
        v8 = a2;
        v9 = 0;
        goto LABEL_4;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_28;
  }

  [*(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView) setHidden:0];
  v10 = *(v3 + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView);

  [v10 setHidden:1];
}

void sub_1000C0668(void *a1, void *a2, unsigned __int8 a3)
{
  v7 = ~a3;
  v8 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  if (!v7)
  {
    *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_maximumLayoutMode] = 4;
    *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_preferredLayoutMode] = 3;
    if (qword_100141B48 != -1)
    {
      swift_once();
    }

    if (*(qword_10014FF28 + OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_isRetryAttempt) == 1)
    {
      sub_100011664(84.0);
    }

    v27 = *(*&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView] + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
    sub_10008DA90();
    goto LABEL_9;
  }

  sub_100058974(a1, a2, a3);
  if (SHSession.Result.wasCancelled.getter())
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v3;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    sub_1000C8AF8(0, 0, v10, &unk_1000FCCC8, v14);
    sub_1000120D0(a1, a2, a3);

    return;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      v29 = a1;
      swift_errorRetain();
      sub_100002D44(&qword_100142F78);
      sub_1000123E4(0, &qword_100144E98);
      if (swift_dynamicCast())
      {
        v16 = v28;
        v17 = *(*&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView] + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
        sub_10008DA90();

        sub_1000120D0(a1, a2, 2u);

        return;
      }
    }

    goto LABEL_26;
  }

  v18 = [a1 mediaItems];
  sub_1000123E4(0, &qword_100143088);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
LABEL_26:
    v25 = *(*&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView] + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
    sub_10008DA90();

    sub_1000120D0(a1, a2, a3);
    return;
  }

  v21 = [a1 mediaItems];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_29:

    __break(1u);
    goto LABEL_30;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_29;
  }

LABEL_21:

  if ((v23 & 0xC000000000000001) == 0)
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v24 = *(v23 + 32);
    goto LABEL_24;
  }

LABEL_30:
  v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
  v27 = v24;

  sub_10001249C();
  sub_1000120D0(a1, a2, 0);
LABEL_9:
  v15 = v27;
}

void sub_1000C0B10(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_100058974(a1, a2, a3);
    if (SHSession.Result.wasCancelled.getter())
    {
      v7 = [*(v3 + OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView) layer];
      [v7 removeAllAnimations];

      v8 = a1;
      v9 = a2;
      v10 = a3;
LABEL_4:

      sub_1000120D0(v8, v9, v10);
      return;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        swift_errorRetain();
        sub_100002D44(&qword_100142F78);
        sub_1000123E4(0, &qword_100144E98);
        if (swift_dynamicCast())
        {
          v11 = [*(v3 + OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView) layer];
          [v11 removeAllAnimations];

          sub_1000120D0(a1, a2, 2u);

          return;
        }
      }

      goto LABEL_23;
    }

    v12 = [a1 mediaItems];
    sub_1000123E4(0, &qword_100143088);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v14)
    {
LABEL_23:
      v20 = [*(v3 + OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView) layer];
      [v20 removeAllAnimations];

      sub_1000120D0(a1, a2, a3);
      return;
    }

    v15 = [a1 mediaItems];
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v16 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_19:

        if ((v17 & 0xC000000000000001) == 0)
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v18)
          {
            __break(1u);
            return;
          }

          goto LABEL_21;
        }

LABEL_28:
        specialized _ArrayBuffer._getElementSlowPath(_:)();

        swift_unknownObjectRelease();
LABEL_21:
        v19 = [*(v3 + OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView) layer];
        [v19 removeAllAnimations];

        v8 = a1;
        v9 = a2;
        v10 = 0;
        goto LABEL_4;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1000DD230();
}

void sub_1000C0E94(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 == 0xFF)
  {
    v21 = *(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView);
    [v21 setAlpha:1.0];
    [v21 setHidden:0];
    [*(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView) setHidden:1];
    [*(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView) setHidden:1];
    v22 = sub_10005E2C0();
    [*&v22[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_listeningView] setAlpha:1.0];
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *&aBlock.tx = sub_1000C4530;
    *&aBlock.ty = v24;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1000C1C84;
    *&aBlock.d = &unk_100139690;
    v25 = _Block_copy(&aBlock);
    v26 = v22;

    [v23 animateWithDuration:24 delay:v25 options:0 animations:1.2 completion:0.0];
    _Block_release(v25);

    return;
  }

  sub_100058974(a1, a2, a3);
  if (SHSession.Result.wasCancelled.getter())
  {
    v7 = sub_10005E2C0();
    v8 = *&v7[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView];
    [v8 setAlpha:1.0];
    v9 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel;
    [*&v8[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel] setAlpha:0.0];
    [*&v8[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton] setAlpha:0.0];
    v10 = *&v8[v9];
    [v10 transform];
    CGAffineTransformTranslate(&v66, &aBlock, 0.0, 80.0);
    aBlock = v66;
    [v10 setTransform:&aBlock];

    if (qword_100141C58 != -1)
    {
      swift_once();
    }

    v11 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100146870 timingParameters:0.0];
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *&aBlock.tx = sub_1000C4694;
    *&aBlock.ty = v12;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1000C1C84;
    *&aBlock.d = &unk_100139820;
    v13 = _Block_copy(&aBlock);
    v14 = v7;

    [v11 addAnimations:v13];
    _Block_release(v13);
    [v11 startAnimationAfterDelay:0.3];
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *&aBlock.tx = sub_1000C469C;
    *&aBlock.ty = v16;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1000C1C84;
    *&aBlock.d = &unk_100139870;
    v17 = _Block_copy(&aBlock);
    v18 = v14;

    [v15 animateKeyframesWithDuration:0 delay:v17 options:0 animations:1.2 completion:0.0];

    _Block_release(v17);
    [*(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView) setHidden:1];
    v19 = *(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView);
    [v19 setHidden:0];
    v20 = [objc_opt_self() mainBundle];
LABEL_27:
    v58 = v20;
    v69._object = 0xE000000000000000;
    v59._object = 0x80000001001029A0;
    v59._countAndFlagsBits = 0xD00000000000001ELL;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v69);

    v61 = *&v19[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel];
    v62 = String._bridgeToObjectiveC()();

    [v61 setText:v62];

    [v61 setNeedsDisplay];
    sub_1000120D0(a1, a2, a3);
    return;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      swift_errorRetain();
      sub_100002D44(&qword_100142F78);
      sub_1000123E4(0, &qword_100144E98);
      if (swift_dynamicCast())
      {
        v27 = sub_10005E2C0();
        v28 = *&v27[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView];
        v63 = v65;
        v29 = v65;
        [v28 setAlpha:1.0];
        v30 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel;
        [*&v28[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel] setAlpha:0.0];
        [*&v28[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton] setAlpha:0.0];
        v31 = *&v28[v30];
        [v31 transform];
        CGAffineTransformTranslate(&v66, &aBlock, 0.0, 80.0);
        aBlock = v66;
        [v31 setTransform:&aBlock];

        if (qword_100141C58 == -1)
        {
LABEL_11:
          v32 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100146870 timingParameters:0.0];
          v33 = swift_allocObject();
          *(v33 + 16) = v27;
          *&aBlock.tx = sub_1000C4694;
          *&aBlock.ty = v33;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_1000C1C84;
          *&aBlock.d = &unk_100139780;
          v34 = _Block_copy(&aBlock);
          v35 = v27;

          [v32 addAnimations:v34];
          _Block_release(v34);
          [v32 startAnimationAfterDelay:0.3];
          v36 = objc_opt_self();
          v37 = swift_allocObject();
          *(v37 + 16) = v35;
          *&aBlock.tx = sub_1000C469C;
          *&aBlock.ty = v37;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_1000C1C84;
          *&aBlock.d = &unk_1001397D0;
          v38 = _Block_copy(&aBlock);
          v39 = v35;

          [v36 animateKeyframesWithDuration:0 delay:v38 options:0 animations:1.2 completion:0.0];

          _Block_release(v38);
          [*(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView) setHidden:1];
          [*(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView) setHidden:0];
          sub_1000D4434(v63);
          sub_1000120D0(a1, a2, 2u);

          return;
        }

LABEL_33:
        swift_once();
        goto LABEL_11;
      }
    }

LABEL_24:
    v46 = sub_10005E2C0();
    v47 = *&v46[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView];
    [v47 setAlpha:1.0];
    v48 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel;
    [*&v47[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel] setAlpha:0.0];
    [*&v47[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton] setAlpha:0.0];
    v49 = *&v47[v48];
    [v49 transform];
    CGAffineTransformTranslate(&v66, &aBlock, 0.0, 80.0);
    aBlock = v66;
    [v49 setTransform:&aBlock];

    if (qword_100141C58 != -1)
    {
      swift_once();
    }

    v50 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100146870 timingParameters:0.0];
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    *&aBlock.tx = sub_1000C4550;
    *&aBlock.ty = v51;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1000C1C84;
    *&aBlock.d = &unk_1001396E0;
    v52 = _Block_copy(&aBlock);
    v53 = v46;

    [v50 addAnimations:v52];
    _Block_release(v52);
    [v50 startAnimationAfterDelay:0.3];
    v54 = objc_opt_self();
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *&aBlock.tx = sub_1000C4558;
    *&aBlock.ty = v55;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1000C1C84;
    *&aBlock.d = &unk_100139730;
    v56 = _Block_copy(&aBlock);
    v57 = v53;

    [v54 animateKeyframesWithDuration:0 delay:v56 options:0 animations:1.2 completion:0.0];

    _Block_release(v56);
    [*(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView) setHidden:1];
    v19 = *(v3 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView);
    [v19 setHidden:0];
    v20 = [objc_opt_self() mainBundle];
    goto LABEL_27;
  }

  v40 = [a1 mediaItems];
  v29 = sub_1000123E4(0, &qword_100143088);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v42)
  {
    goto LABEL_24;
  }

  v27 = [a1 mediaItems];
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  if (!(v43 >> 62))
  {
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_30;
  }

LABEL_17:

  if ((v44 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_20;
  }

  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_33;
  }

  v45 = *(v44 + 32);
LABEL_20:
  v64 = v45;

  sub_10005EE98(v64);
  sub_1000120D0(a1, a2, 0);
}

uint64_t sub_1000C1C84(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000C1CC8(uint64_t a1, void *a2)
{
  v3 = sub_10000DC80((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100002D44(&qword_100142F78);
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

uint64_t sub_1000C1D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100007FDC(a3, v22 - v9, &qword_100142818);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007E14(v10, &qword_100142818);
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

      sub_100007E14(a3, &qword_100142818);

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

  sub_100007E14(a3, &qword_100142818);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_1000C2094()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100002D44(&qword_100142818);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v42 - v5;
  v44.receiver = v1;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, "viewDidLoad", v4);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = [objc_opt_self() blackColor];
  [v8 setBackgroundColor:v9];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result setLayoutMargins:{32.0, 32.0, 32.0, 32.0}];

  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionAmbientViewController_matchingFlowView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = result;
  v43 = v6;
  [result addSubview:v12];

  sub_100002D44(&qword_100142810);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000F57E0;
  v15 = [v12 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  v17 = [result layoutMarginsGuide];

  v18 = [v17 topAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];

  *(v14 + 32) = v19;
  v20 = [v12 bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = result;
  v22 = [result layoutMarginsGuide];

  v23 = [v22 bottomAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];

  *(v14 + 40) = v24;
  v25 = [v12 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = result;
  v27 = [result layoutMarginsGuide];

  v28 = [v27 leadingAnchor];
  v29 = [v25 constraintEqualToAnchor:v28];

  *(v14 + 48) = v29;
  v30 = [v12 trailingAnchor];
  result = [v1 view];
  if (result)
  {
    v31 = result;
    v32 = objc_opt_self();
    v33 = [v31 layoutMarginsGuide];

    v34 = [v33 trailingAnchor];
    v35 = [v30 constraintEqualToAnchor:v34];

    *(v14 + 56) = v35;
    sub_1000123E4(0, &qword_100143260);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 activateConstraints:isa];

    v37 = type metadata accessor for TaskPriority();
    v38 = v43;
    (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v40 = static MainActor.shared.getter();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = &protocol witness table for MainActor;
    v41[4] = v39;

    sub_1000C8DF8(0, 0, v38, &unk_1000FCC80, v41);

    return sub_1000C2654();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000C2654()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionAmbientViewController_matchingFlowView);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_retryHandler);
  *v3 = sub_1000C30F0;
  v3[1] = v2;

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v1 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_cancellationHandler);
  *v5 = sub_1000C3514;
  v5[1] = v4;

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_appleMusicURLHandler);
  *v7 = sub_1000C35C8;
  v7[1] = v6;

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = (v1 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_displayMatchedMediaItemHandler);
  *v9 = sub_1000C3730;
  v9[1] = v8;
}

uint64_t sub_1000C2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  sub_100002D44(&qword_100144528);
  v4[14] = swift_task_alloc();
  v5 = sub_100002D44(&qword_100142838);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_100002D44(&qword_100145DC8);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C29B0, v8, v7);
}

uint64_t sub_1000C29B0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_100141B48 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v3 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    swift_beginAccess();
    sub_100002D44(&qword_100142848);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_1000123E4(0, &qword_100144540);
    v7 = static OS_dispatch_queue.main.getter();
    *(v0 + 88) = v7;
    v8 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_100004610(&qword_100142858, &qword_100142838);
    sub_1000577A8();
    Publisher.receive<A>(on:options:)();
    sub_100007E14(v6, &qword_100144528);

    (*(v4 + 8))(v3, v5);
    swift_allocObject();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_100004610(&qword_100145DD0, &qword_100145DC8);
    v10 = Publisher<>.sink(receiveValue:)();

    (*(v14 + 8))(v2, v13);
    *&Strong[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionAmbientViewController_musicRecognitionCancellable] = v10;
  }

  **(v0 + 96) = Strong == 0;

  v11 = *(v0 + 8);

  return v11();
}

void sub_1000C2D00(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000C0E94(v1, v2, v3);
  }
}

id sub_1000C2D8C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionAmbientViewController_musicRecognitionCancellable] = 0;
  v7 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionAmbientViewController_matchingFlowView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for AmbientMatchingFlowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1000C2EC8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionAmbientViewController_musicRecognitionCancellable] = 0;
  v4 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionAmbientViewController_matchingFlowView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for AmbientMatchingFlowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1000C2FC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C2FFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C303C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_1000C2810(a1, v4, v5, v6);
}

uint64_t sub_1000C3140(uint64_t a1)
{
  v1[5] = a1;
  sub_100002D44(&qword_100142878);
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_1000C3214, v3, v2);
}

uint64_t sub_1000C3214()
{
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v0[11] = qword_10014FF28;
  v0[12] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[13] = v2;
  v0[14] = v1;

  return _swift_task_switch(sub_1000C32DC, v2, v1);
}

uint64_t sub_1000C32DC()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100007FDC(v1 + v3, v2, &qword_100142878);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100010B98;
  v5 = v0[6];

  return sub_100054B0C(1, v5);
}

uint64_t sub_1000C33C0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, uint64_t))
{
  v8 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1000C3F10(a2);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  a5(0, 0, v10, a4, v15);
}

void sub_1000C3564(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000C3F10(1u);
  }

  sub_1000E9654(a1);
}

uint64_t sub_1000C35D0(void *a1)
{
  v2 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1000C3F10(0xBu);
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = a1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_1000C1D74(0, 0, v4, &unk_1000FCC90, v10);
}

uint64_t sub_1000C3738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_1000C37D0, v6, v5);
}

uint64_t sub_1000C37D0()
{
  v1 = v0[18];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_100011420;
  v3 = swift_continuation_init();
  v0[17] = sub_100002D44(&qword_100142870);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C1CC8;
  v0[13] = &unk_1001395F0;
  v0[14] = v3;
  [v2 presentMediaItem:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000C3900(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  LODWORD(v4) = a1 >> 8;
  LODWORD(v5) = HIWORD(a1);
  v30 = &type metadata for MusicRecognitionLifeCycle;
  v31 = &off_10013A218;
  v26 = a1;
  v27 = BYTE2(a1);
  v28 = a2;
  v29 = a3;
  v6 = qword_100141D60;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000BEC4(v7, qword_100148030);
  sub_100007DB0(&v26, v25);
  sub_100007DB0(&v26, v24);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136315395;
    v11 = sub_10000DC80(v25, v25[3]);
    v22 = v4;
    v13 = v11[1];
    v12 = v11[2];

    sub_100007E74(v25);
    v14 = sub_1000BA1EC(v13, v12, &v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2081;
    v15 = sub_10000DC80(v24, v24[3]);
    sub_1000D7FAC(*v15, *(v15 + 1), *(v15 + 2));
    sub_1000123E4(0, &qword_100147658);
    v16 = Dictionary.description.getter();
    v17 = v5;
    v5 = v18;

    sub_100007E74(v24);
    v4 = sub_1000BA1EC(v16, v5, &v23);
    LOBYTE(v5) = v17;

    *(v10 + 14) = v4;
    LOBYTE(v4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Send analytics event: %s, payload: %{private}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007E74(v24);
    sub_100007E74(v25);
  }

  v19 = String._bridgeToObjectiveC()();
  sub_1000D7FAC(v3, v4, v5);
  sub_1000123E4(0, &qword_100147658);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  return sub_100007E74(&v26);
}

uint64_t sub_1000C3C14(__int16 a1, uint64_t a2, uint64_t a3)
{
  v27 = &type metadata for MatchLifeCycle;
  v28 = &off_10013A348;
  v24 = a1 & 0xFF01;
  v25 = a2;
  v26 = a3;
  v4 = qword_100141D60;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000BEC4(v5, qword_100148030);
  sub_100007DB0(&v24, v23);
  sub_100007DB0(&v24, v22);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315395;
    v9 = sub_10000DC80(v23, v23[3]);
    v10 = v9[1];
    v11 = v9[2];

    sub_100007E74(v23);
    v12 = sub_1000BA1EC(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2081;
    v13 = sub_10000DC80(v22, v22[3]);
    sub_1000D82A0(*v13, *(v13 + 1));
    sub_1000123E4(0, &qword_100147658);
    v14 = Dictionary.description.getter();
    v16 = v15;

    sub_100007E74(v22);
    v17 = sub_1000BA1EC(v14, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Send analytics event: %s, payload: %{private}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007E74(v22);
    sub_100007E74(v23);
  }

  v18 = String._bridgeToObjectiveC()();
  sub_1000D82A0(a1 & 1, HIBYTE(a1));
  sub_1000123E4(0, &qword_100147658);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  return sub_100007E74(&v24);
}

uint64_t sub_1000C3F10(unsigned __int8 a1)
{
  v2 = type metadata accessor for IntentSystemContext.Source();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142878);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v9 = qword_10014FF28;
  v10 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100007FDC(v9 + v10, v8, &qword_100142878);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_100007E14(v8, &qword_100142878);
  }

  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == enum case for IntentSystemContext.Source.app(_:) || v12 == enum case for IntentSystemContext.Source.CLI(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.siri(_:))
  {
LABEL_12:
    v14 = 256;
LABEL_15:
    (*(v3 + 8))(v8, v2);
    return sub_1000C3900(v14 | a1 | 0x20000u, 0xD000000000000028, 0x80000001000FF5D0);
  }

  if (v12 == enum case for IntentSystemContext.Source.shortcuts(_:))
  {
    v14 = 2560;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.testing(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.actionButton(_:))
  {
    v14 = 1792;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.spotlight(_:))
  {
    v14 = 2304;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.controlCenter(_:))
  {
    v14 = 1536;
    goto LABEL_15;
  }

  if (v12 == enum case for IntentSystemContext.Source.widget(_:))
  {
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == enum case for IntentSystemContext.Source.assistant(_:))
  {
    goto LABEL_12;
  }

  v15 = *(v3 + 8);
  v15(v5, v2);
  return (v15)(v8, v2);
}

uint64_t sub_1000C4280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_1000C3738(a1, v4, v5, v6);
}

uint64_t sub_1000C4360()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C4398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100012EC8;

  return sub_100010F3C();
}

uint64_t sub_1000C4444(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100012EC8;

  return sub_1000C3140(a1);
}

uint64_t sub_1000C44F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C4538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4560()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C45A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012EC8;

  return sub_1000117B4(a1, v4, v5, v6);
}

__n128 sub_1000C46AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000C46C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C4708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C4780()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = Color.init(_:red:green:blue:opacity:)();
  qword_100147660 = result;
  return result;
}

uint64_t sub_1000C486C()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = Color.init(_:white:opacity:)();
  qword_100147668 = result;
  return result;
}

uint64_t sub_1000C4944()
{
  v0 = type metadata accessor for RoundedRectangle();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100002D44(&qword_1001476C0);
  sub_10000D0C8(v4, qword_100147670);
  v5 = sub_10000BEC4(v4, qword_100147670);
  v6 = *(v1 + 28);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(&v3[v6], v7, v8);
  __asm { FMOV            V0.2D, #15.0 }

  *v3 = _Q0;
  v14 = [objc_opt_self() whiteColor];
  v15 = [v14 colorWithAlphaComponent:0.15];

  v16 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100023A54(v3, v5);
  v17 = v5 + *(sub_100002D44(&qword_100143130) + 36);
  v18 = v26;
  *v17 = *&v25[8];
  *(v17 + 16) = v18;
  *(v17 + 32) = v27;
  v19 = sub_100002D44(&qword_100143138);
  *(v5 + *(v19 + 52)) = v16;
  *(v5 + *(v19 + 56)) = 256;

  v20 = static Alignment.center.getter();
  v22 = v21;
  v23 = (v5 + *(sub_100002D44(&qword_100143140) + 36));
  *v23 = v20;
  v23[1] = v22;

  return sub_100023AB8(v3);
}

uint64_t sub_1000C4B70@<X0>(uint64_t a1@<X8>)
{
  v61 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v61);
  v4 = &v55 - v3;
  v57 = sub_100002D44(&qword_100147688);
  __chkstk_darwin(v57);
  v6 = (&v55 - v5);
  v7 = sub_100002D44(&qword_100147690);
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v56 = sub_100002D44(&qword_100147698);
  __chkstk_darwin(v56);
  v11 = &v55 - v10;
  v58 = sub_100002D44(&qword_1001476A0);
  __chkstk_darwin(v58);
  v63 = &v55 - v12;
  *v6 = static Alignment.center.getter();
  v6[1] = v13;
  v14 = sub_100002D44(&qword_1001476A8);
  sub_1000C5304(v1, v6 + *(v14 + 44));
  v15 = *(v1 + 32);
  IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
  v62 = a1;
  if (IsVideoAutoplayEnabled && !UIAccessibilityIsReduceMotionEnabled())
  {
    swift_getKeyPath();
    v64 = v15;
    sub_1000C6474(&qword_1001476F8, type metadata accessor for SongArtworkViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL;
    swift_beginAccess();
    sub_100007FDC(v15 + v18, v4, &unk_100144630);
  }

  else
  {
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  }

  v19 = *v1;
  v66 = *(v1 + 16);
  v67 = v19;
  v20 = swift_allocObject();
  v21 = *(v1 + 16);
  v20[1] = *v1;
  v20[2] = v21;
  *(v20 + 41) = *(v1 + 25);
  sub_100007FDC(&v67, v65, &qword_1001476B0);
  sub_100007FDC(&v66, v65, &qword_1001476B0);
  sub_100004610(&qword_1001476B8, &qword_100147688);
  sub_10006B6C0();

  View.onChange<A>(of:initial:_:)();

  sub_100007E14(v4, &unk_100144630);
  sub_100007E14(v6, &qword_100147688);
  v22 = &v11[*(v56 + 36)];
  v57 = type metadata accessor for RoundedRectangle();
  v23 = *(v57 + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = type metadata accessor for RoundedCornerStyle();
  v26 = *(*(v25 - 8) + 104);
  LODWORD(v61) = v24;
  v56 = v26;
  v26(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #15.0 }

  v55 = _Q0;
  *v22 = _Q0;
  *&v22[*(sub_100002D44(&qword_100143758) + 36)] = 256;
  (*(v59 + 32))(v11, v9, v60);
  if (qword_100141CD0 != -1)
  {
    swift_once();
  }

  v32 = sub_100002D44(&qword_1001476C0);
  v33 = sub_10000BEC4(v32, qword_100147670);
  v34 = static Alignment.center.getter();
  v36 = v35;
  v37 = v63;
  v38 = v63 + *(v58 + 36);
  sub_100007FDC(v33, v38, &qword_1001476C0);
  v39 = (v38 + *(sub_100002D44(&qword_1001476C8) + 36));
  *v39 = v34;
  v39[1] = v36;
  sub_10002F250(v11, v37, &qword_100147698);
  v40 = sub_100002D44(&qword_1001476D0);
  v41 = v62;
  v42 = (v62 + *(v40 + 36));
  (v56)(v42 + *(v57 + 20), v61, v25);
  *v42 = v55;
  v43 = static Color.primary.getter();
  v44 = sub_100002D44(&qword_1001476D8);
  *(v42 + *(v44 + 52)) = v43;
  *(v42 + *(v44 + 56)) = 256;
  if (qword_100141CC0 != -1)
  {
    swift_once();
  }

  v45 = qword_100147660;
  v46 = v42 + *(sub_100002D44(&qword_1001476E0) + 36);
  *v46 = v45;
  *(v46 + 8) = xmmword_1000FCCF0;
  *(v46 + 3) = 0x4038000000000000;
  v47 = qword_100141CC8;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = qword_100147668;
  v49 = v42 + *(sub_100002D44(&qword_1001476E8) + 36);
  *v49 = v48;
  *(v49 + 8) = xmmword_1000FCD00;
  *(v49 + 3) = 0x4020000000000000;

  v50 = static Alignment.center.getter();
  v52 = v51;
  v53 = (v42 + *(sub_100002D44(&qword_1001476F0) + 36));
  *v53 = v50;
  v53[1] = v52;
  return sub_10002F250(v63, v41, &qword_1001476A0);
}

uint64_t sub_1000C5304@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = sub_100002D44(&qword_100147700) - 8;
  __chkstk_darwin(v26);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_100002D44(&qword_100147708);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = *(a1 + 4);
  swift_getKeyPath();
  v31 = v17;
  sub_1000C6474(&qword_1001476F8, type metadata accessor for SongArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL;
  swift_beginAccess();
  sub_100007FDC(v17 + v18, v9, &unk_100144630);
  v19 = *a1;
  v32 = a1[1];
  v33 = v19;
  v20 = swift_allocObject();
  v21 = a1[1];
  v20[1] = *a1;
  v20[2] = v21;
  *(v20 + 41) = *(a1 + 25);
  sub_100007FDC(&v33, &v30, &qword_1001476B0);
  sub_100007FDC(&v32, &v30, &qword_1001476B0);

  sub_100002D44(&qword_100147710);
  sub_1000C6334();
  AsyncImage.init(url:scale:transaction:content:)();
  v30 = v32;
  sub_100002D44(&qword_1001476B0);
  State.wrappedValue.getter();
  *&v16[*(v11 + 44)] = v29;
  sub_1000C5724(v6);
  v30 = v33;
  State.wrappedValue.getter();
  *&v6[*(v26 + 44)] = v29;
  sub_100007FDC(v16, v13, &qword_100147708);
  v22 = v27;
  sub_100007FDC(v6, v27, &qword_100147700);
  v23 = v28;
  sub_100007FDC(v13, v28, &qword_100147708);
  v24 = sub_100002D44(&qword_100147730);
  sub_100007FDC(v22, v23 + *(v24 + 48), &qword_100147700);
  sub_100007E14(v6, &qword_100147700);
  sub_100007E14(v16, &qword_100147708);
  sub_100007E14(v22, &qword_100147700);
  return sub_100007E14(v13, &qword_100147708);
}

uint64_t sub_1000C5724@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AnimatedArtworkPlayerView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 32);
  if (UIAccessibilityIsVideoAutoplayEnabled() && !UIAccessibilityIsReduceMotionEnabled())
  {
    swift_getKeyPath();
    v19[0] = a1;
    v19[1] = v14;
    sub_1000C6474(&qword_1001476F8, type metadata accessor for SongArtworkViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    a1 = v19[0];

    v17 = OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL;
    swift_beginAccess();
    sub_100007FDC(v14 + v17, v9, &unk_100144630);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v6, v13, v10);
      v18 = [objc_opt_self() secondarySystemFillColor];
      (*(v11 + 8))(v13, v10);
      *&v6[*(v3 + 20)] = v18;
      sub_1000C64BC(v6, a1);
      v15 = 0;
      return (*(v4 + 56))(a1, v15, 1, v3);
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_100007E14(v9, &unk_100144630);
  v15 = 1;
  return (*(v4 + 56))(a1, v15, 1, v3);
}

uint64_t sub_1000C5A7C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = type metadata accessor for AnimationCompletionCriteria();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URL();
  result = (*(*(v9 - 8) + 48))(a2, 1, v9);
  if (result != 1)
  {
    static Animation.spring(response:dampingFraction:blendDuration:)();
    v11 = static AnimationCompletionCriteria.logicallyComplete.getter();
    __chkstk_darwin(v11);
    *&v15[-16] = a3;
    v12 = *a3;
    v17 = a3[1];
    v18 = v12;
    v13 = swift_allocObject();
    v14 = a3[1];
    v13[1] = *a3;
    v13[2] = v14;
    *(v13 + 41) = *(a3 + 25);
    sub_100007FDC(&v18, v16, &qword_1001476B0);
    sub_100007FDC(&v17, v16, &qword_1001476B0);

    withAnimation<A>(_:completionCriteria:_:completion:)();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1000C5CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25 = a3;
  v26 = type metadata accessor for ArtworkUnavailableView();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100147738);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AsyncImagePhase();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v15);
  if ((*(v14 + 88))(v17, v13) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v14 + 96))(v17, v13);
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v18 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    v19 = *(v23 + 40);
    *v8 = v18;
    *(v8 + 1) = 0;
    v8[16] = 1;
    v8[17] = v19;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_100002D44(&qword_100147728);
    sub_1000C63F0();
    sub_1000C6474(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
    v21 = v24;
    v22 = v26;
    (*(v24 + 16))(v8, v5, v26);
    swift_storeEnumTagMultiPayload();
    sub_100002D44(&qword_100147728);
    sub_1000C63F0();
    sub_1000C6474(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView);
    _ConditionalContent<>.init(storage:)();
    (*(v21 + 8))(v5, v22);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_1000C6144()
{
  static Animation.easeIn(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000C62E4()
{

  return _swift_deallocObject(v0, 57, 7);
}

unint64_t sub_1000C6334()
{
  result = qword_100147718;
  if (!qword_100147718)
  {
    sub_100004370(&qword_100147710);
    sub_1000C63F0();
    sub_1000C6474(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147718);
  }

  return result;
}

unint64_t sub_1000C63F0()
{
  result = qword_100147720;
  if (!qword_100147720)
  {
    sub_100004370(&qword_100147728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147720);
  }

  return result;
}

uint64_t sub_1000C6474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C64BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedArtworkPlayerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C6524()
{
  result = qword_100147740;
  if (!qword_100147740)
  {
    sub_100004370(&qword_1001476D0);
    sub_1000C65DC();
    sub_100004610(&qword_100147760, &qword_1001476F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147740);
  }

  return result;
}

unint64_t sub_1000C65DC()
{
  result = qword_100147748;
  if (!qword_100147748)
  {
    sub_100004370(&qword_1001476A0);
    sub_1000C6694();
    sub_100004610(&qword_100147758, &qword_1001476C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147748);
  }

  return result;
}

unint64_t sub_1000C6694()
{
  result = qword_100147750;
  if (!qword_100147750)
  {
    sub_100004370(&qword_100147698);
    sub_100004370(&qword_100147688);
    sub_100004370(&unk_100144630);
    sub_100004610(&qword_1001476B8, &qword_100147688);
    sub_10006B6C0();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100145808, &qword_100143758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147750);
  }

  return result;
}

id sub_1000C67F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(type metadata accessor for MusicRecognitionOnboardingWelcomeViewController());

  return sub_1000C71FC(v1, v2);
}

uint64_t sub_1000C6888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C7998();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000C68EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C7998();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000C6950()
{
  sub_1000C7998();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000C6978()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100147768 = result;
  unk_100147770 = v3;
  return result;
}

uint64_t sub_1000C6A7C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100147778 = result;
  unk_100147780 = v3;
  return result;
}

uint64_t sub_1000C6B80()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100147788 = result;
  unk_100147790 = v3;
  return result;
}

uint64_t sub_1000C6C84()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100147798 = result;
  unk_1001477A0 = v3;
  return result;
}

uint64_t sub_1000C6D88()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001477A8 = result;
  unk_1001477B0 = v3;
  return result;
}

uint64_t sub_1000C6E8C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001477B8 = result;
  unk_1001477C0 = v3;
  return result;
}

uint64_t sub_1000C6F90()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001477C8 = result;
  unk_1001477D0 = v3;
  return result;
}

uint64_t sub_1000C7094()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001477D8 = result;
  unk_1001477E0 = v3;
  return result;
}

uint64_t sub_1000C7198()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000D0C8(v0, qword_1001477E8);
  sub_10000BEC4(v0, qword_1001477E8);
  return LocalizedStringResource.init(stringLiteral:)();
}

id sub_1000C71FC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC16MusicRecognitionP33_553F2292AAF29353FD38327969F6010947MusicRecognitionOnboardingWelcomeViewController_didTapContinue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = qword_100141CD8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = String._bridgeToObjectiveC()();
  if (qword_100141CE0 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  v15.receiver = v2;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:icon:contentLayout:", v8, v9, v11, 2);

  v13 = v12;
  sub_1000C7388();

  return v13;
}

void sub_1000C7388()
{
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100141CE8 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  if (qword_100141CF0 != -1)
  {
    swift_once();
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  [v1 addBulletedListItemWithTitle:v6 description:v7 symbolName:v8];

  if (qword_100141CF8 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  if (qword_100141D00 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  [v1 addBulletedListItemWithTitle:v9 description:v10 symbolName:v11];

  if (qword_100141D08 != -1)
  {
    swift_once();
  }

  v12 = String._bridgeToObjectiveC()();
  if (qword_100141D10 != -1)
  {
    swift_once();
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  [v1 addBulletedListItemWithTitle:v12 description:v13 symbolName:v14];

  sub_1000C79EC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = [objc_opt_self() boldButton];
  [v16 addAction:v15 forControlEvents:64];
  if (qword_100141D18 != -1)
  {
    swift_once();
  }

  v17 = sub_10000BEC4(v2, qword_1001477E8);
  (*(v3 + 16))(v5, v17, v2);
  String.init(localized:)();
  v18 = String._bridgeToObjectiveC()();

  [v16 setTitle:v18 forState:0];

  v19 = [v1 buttonTray];
  [v19 addButton:v16];

  v20 = [v1 buttonTray];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 setPrivacyLinkForBundles:isa];
}

uint64_t sub_1000C786C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC16MusicRecognitionP33_553F2292AAF29353FD38327969F6010947MusicRecognitionOnboardingWelcomeViewController_didTapContinue);
    v2 = result;

    v1();
  }

  return result;
}

unint64_t sub_1000C7998()
{
  result = qword_100147830;
  if (!qword_100147830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147830);
  }

  return result;
}

unint64_t sub_1000C79EC()
{
  result = qword_100147838;
  if (!qword_100147838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100147838);
  }

  return result;
}

uint64_t sub_1000C7A38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t Color.init(_:dark:)()
{
  sub_100051D2C();

  v0 = UIColor.init(_:)();

  v1 = UIColor.init(_:)();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(UIColor);
  v7[4] = sub_1000C7D38;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000C7D7C;
  v7[3] = &unk_100139A90;
  v4 = _Block_copy(v7);
  [v3 initWithDynamicProvider:v4];
  _Block_release(v4);

  v5 = Color.init(_:)();

  return v5;
}

id static UIColor.dynamicColor(light:dark:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(UIColor);
  v11[4] = sub_1000C7E00;
  v11[5] = v4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000C7D7C;
  v11[3] = &unk_100139AE0;
  v6 = _Block_copy(v11);
  v7 = a2;
  v8 = a1;
  v9 = [v5 initWithDynamicProvider:v6];
  _Block_release(v6);

  return v9;
}

id sub_1000C7CB0(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  return v5;
}

uint64_t sub_1000C7CF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000C7D38(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id sub_1000C7D7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1000C7DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C7E0C()
{
  v0 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v0 - 8);
  v43 = &v35 - v1;
  v2 = type metadata accessor for MusicSubscriptionOffer.MessageIdentifier();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for MusicSubscriptionOffer.Action();
  __chkstk_darwin(v3 - 8);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicSubscriptionOffer.Options();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v11 - 8);
  v44 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  URL.init(string:)();
  result = (*(v9 + 48))(v18, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 56))(v15, 1, 1, v8);
    v35 = static Color.primary.getter();
    v20 = static Color.primary.getter();
    v36 = v8;
    v37 = v9;
    v39 = v15;
    v21 = *(v9 + 16);
    v22 = v45;
    v21(v45, v18, v8);
    v23 = v15;
    v24 = v44;
    sub_100008790(v23, v44);
    type metadata accessor for PlayInAppleMusicViewModel();
    v25 = swift_allocObject();
    v38 = v18;
    v26 = v25;
    *(v25 + 16) = 0;

    static MusicSubscriptionOffer.Action.subscribe.getter();
    static MusicSubscriptionOffer.MessageIdentifier.join.getter();
    MusicSubscriptionOffer.Options.init(action:messageIdentifier:itemID:affiliateToken:campaignToken:)();
    static MusicSubscriptionOffer.MessageIdentifier.playMusic.getter();
    MusicSubscriptionOffer.Options.messageIdentifier.setter();
    (*(v41 + 32))(v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__subscriptionOfferOptions, v7, v42);
    v27 = (v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token);
    *v27 = 0;
    v27[1] = 0;
    ObservationRegistrar.init()();
    v28 = (v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_sourceBundleIdentifier);
    *v28 = 0;
    v28[1] = 0;
    v21((v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicSongURL), v22, v8);
    *(v26 + 24) = xmmword_1000FCFF0;
    *(v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_offers) = 0;

    *v27 = 0;
    v27[1] = 0;
    sub_100008790(v24, v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicClassicalURL);
    *(v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_shouldDisplayAppleClassicalFeatures) = 0;
    *(v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_buttonTextColor) = v20;
    *(v26 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_buttonBackgroundColor) = v35;
    swift_getKeyPath();
    v46 = v26;
    sub_1000C8580();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = v26;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    MusicSubscriptionOffer.Options.figaroCampaignToken.setter();
    swift_endAccess();
    v46 = v26;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v46 = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = v26;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    MusicSubscriptionOffer.Options.figaroCampaignGroup.setter();
    swift_endAccess();
    v46 = v26;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    sub_10001719C(v44);
    v29 = v36;
    v30 = *(v37 + 8);
    v30(v45, v36);
    v31 = type metadata accessor for TaskPriority();
    v32 = v43;
    (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
    type metadata accessor for MainActor();

    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v26;
    sub_1000C8AF8(0, 0, v32, &unk_1000F8040, v34);

    sub_10001719C(v39);
    v30(v38, v29);
    return v26;
  }

  return result;
}

unint64_t sub_1000C8580()
{
  result = qword_1001442C0;
  if (!qword_1001442C0)
  {
    type metadata accessor for PlayInAppleMusicViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001442C0);
  }

  return result;
}

uint64_t sub_1000C85D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C8618()
{
  v1[2] = v0;
  v2 = type metadata accessor for MusicSubscription();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_1000C8714;

  return static MusicSubscription.current.getter(v3);
}

uint64_t sub_1000C8714()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000C894C;
  }

  else
  {
    v2 = sub_1000C8828;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C8828()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(v3 + OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController_lock);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_1000CA8C0;
  *(v6 + 24) = v5;
  os_unfair_lock_lock(v4 + 4);
  sub_1000CA8DC();
  os_unfair_lock_unlock(v4 + 4);

  if (!v1)
  {

    if ((MusicSubscription.canPlayCatalogContent.getter() & 1) == 0)
    {
      sub_1000C9A50();
    }

    (*(v0[4] + 8))(v0[5], v0[3]);

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_1000C894C()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching Apple Music subscription status with error: %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000C8AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100007FDC(a3, v25 - v10, &qword_100142818);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007E14(v11, &qword_100142818);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_100007E14(a3, &qword_100142818);

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

  sub_100007E14(a3, &qword_100142818);
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

uint64_t sub_1000C8DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100007FDC(a3, v25 - v10, &qword_100142818);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007E14(v11, &qword_100142818);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100002D44(&qword_100147940);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007E14(a3, &qword_100142818);

      return v22;
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

  sub_100007E14(a3, &qword_100142818);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100002D44(&qword_100147940);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000C910C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100007FDC(a3, v25 - v10, &qword_100142818);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007E14(v11, &qword_100142818);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100002D44(&qword_100144450);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007E14(a3, &qword_100142818);

      return v22;
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

  sub_100007E14(a3, &qword_100142818);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100002D44(&qword_100144450);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000C9420()
{
  v0 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicSubscriptionStatusController();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  v6 = type metadata accessor for MusicSubscription();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController_lock;
  sub_100002D44(&qword_100147938);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v4 + v7) = v8;
  ObservationRegistrar.init()();
  (*(v1 + 104))(v3, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0);
  result = static MusicDataRequest.preferredExecutionMethod.setter();
  qword_10014FF90 = v4;
  return result;
}

uint64_t sub_1000C959C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000CB2EC(&qword_100142FA8, type metadata accessor for MusicSubscriptionStatusController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  return sub_100007FDC(v5 + v3, a1, &qword_100142FA0);
}

uint64_t sub_1000C9674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000CB2EC(&qword_100142FA8, type metadata accessor for MusicSubscriptionStatusController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  return sub_100007FDC(v3 + v4, a2, &qword_100142FA0);
}

uint64_t sub_1000C974C(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142FA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100007FDC(a1, &v6 - v3, &qword_100142FA0);
  return sub_1000C97F8(v4);
}

uint64_t sub_1000C97F8(uint64_t a1)
{
  v3 = sub_100002D44(&qword_100142FA0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_100007FDC(v1 + v6, v5, &qword_100142FA0);
  v7 = sub_1000CAF38(v5, a1);
  sub_100007E14(v5, &qword_100142FA0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000CB2EC(&qword_100142FA8, type metadata accessor for MusicSubscriptionStatusController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_1000CB258(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_100007E14(a1, &qword_100142FA0);
}

uint64_t sub_1000C99E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_1000CB258(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000C9A50()
{
  v0 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000BEC4(v3, qword_10014FEA0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Started observing subscription updates", v6, 2u);
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_1000C8AF8(0, 0, v2, &unk_1000FD090, v9);
}

uint64_t sub_1000C9C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for MusicSubscription();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_100002D44(&qword_100142FA0);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for MusicSubscription.Updates();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for MusicSubscription.Updates.Iterator();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000C9DE0, 0, 0);
}

uint64_t sub_1000C9DE0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  static MusicSubscription.subscriptionUpdates.getter();
  MusicSubscription.Updates.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_1000CB2EC(&qword_100147920, &type metadata accessor for MusicSubscription.Updates.Iterator);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1000C9F1C;
  v6 = v0[14];
  v7 = v0[10];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_1000C9F1C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1000CA3E0;
  }

  else
  {
    v2 = sub_1000CA030;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CA04C()
{
  v2 = v0 + 7;
  v1 = v0[7];
  v3 = v0[10];
  v4 = v0[8];
  if ((*(v4 + 48))(v3, 1, v1) == 1)
  {
    v5 = (v0[15] + 8);
    v6 = v0 + 16;
    v2 = v0 + 14;
LABEL_12:
    (*v5)(*v6, *v2);

    v23 = v0[1];

    return v23();
  }

  v6 = v0 + 9;
  (*(v4 + 32))(v0[9], v3, v1);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = v0[18];
    v10 = v0[9];
    v11 = *(Strong + OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController_lock);
    v12 = swift_task_alloc();
    *(v12 + 16) = v8;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    *(v13 + 16) = sub_1000CB55C;
    *(v13 + 24) = v12;
    os_unfair_lock_lock(v11 + 4);
    sub_1000CB588();
    os_unfair_lock_unlock(v11 + 4);

    if (v9)
    {
      return result;
    }
  }

  if (MusicSubscription.canPlayCatalogContent.getter())
  {
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000BEC4(v15, qword_10014FEA0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[14];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Stopped observing subscription updates", v22, 2u);
    }

    (*(v20 + 8))(v19, v21);
    v5 = (v0[8] + 8);
    goto LABEL_12;
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v24 = sub_1000CB2EC(&qword_100147920, &type metadata accessor for MusicSubscription.Updates.Iterator);
  v25 = swift_task_alloc();
  v0[17] = v25;
  *v25 = v0;
  v25[1] = sub_1000C9F1C;
  v26 = v0[14];
  v27 = v0[10];

  return dispatch thunk of AsyncIteratorProtocol.next()(v27, v26, v24);
}

uint64_t sub_1000CA3E0()
{
  *(v0 + 40) = *(v0 + 144);
  sub_100002D44(&qword_100142F78);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000CA46C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002D44(&qword_100142FA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for MusicSubscription();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_1000C97F8(v5);
}

uint64_t sub_1000CA578()
{
  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription, &qword_100142FA0);

  v1 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MusicSubscriptionStatusController()
{
  result = qword_100147880;
  if (!qword_100147880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CA698()
{
  sub_1000CA770();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000CA770()
{
  if (!qword_100147890)
  {
    type metadata accessor for MusicSubscription();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100147890);
    }
  }
}

uint64_t sub_1000CA7C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000A507C;

  return v6(a1);
}

uint64_t sub_1000CA904()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CA93C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000CA97C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_1000C9C30(a1, v4, v5, v6);
}

uint64_t sub_1000CAA30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000CAA68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012EC8;

  return sub_1000CA7C8(a1, v4);
}

uint64_t sub_1000CAB20(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000CAC14;

  return v5(v2 + 32);
}

uint64_t sub_1000CAC14()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000CAD28(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1000CAE1C;

  return v5(v2 + 16);
}

uint64_t sub_1000CAE1C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000CAF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSubscription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142FA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100002D44(&qword_100147928);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100007FDC(a1, &v21 - v13, &qword_100142FA0);
  sub_100007FDC(a2, &v14[v15], &qword_100142FA0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100007FDC(v14, v10, &qword_100142FA0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1000CB2EC(&qword_100147930, &type metadata accessor for MusicSubscription);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100007E14(v14, &qword_100142FA0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100007E14(v14, &qword_100147928);
    v17 = 1;
    return v17 & 1;
  }

  sub_100007E14(v14, &qword_100142FA0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1000CB258(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142FA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CB2EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CB334(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012EC8;

  return sub_1000CAD28(a1, v4);
}

uint64_t sub_1000CB3EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000789C;

  return sub_1000CAD28(a1, v4);
}

uint64_t sub_1000CB4A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012EC8;

  return sub_1000CAB20(a1, v4);
}

uint64_t sub_1000CB5FC()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary;
  v0[5] = OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary;
  if (*(v1 + v2))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    v0[3] = v1;
    sub_1000CD0D8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v4 = *(v0[4] + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_musicLibraryController);
  v5 = v4[6];
  v6 = v4[7];
  sub_10000DC80(v4 + 3, v5);
  v9 = (*(v6 + 24) + **(v6 + 24));
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1000CB7DC;

  return v9(v5, v6);
}

uint64_t sub_1000CB7DC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000CBA44;
  }

  else
  {
    v2 = sub_1000CB8F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CB8F0()
{
  if (*(*(v0 + 32) + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v1 = 66312;
  }

  else
  {
    v1 = 776;
  }

  sub_1000C3900(v1, 0xD000000000000028, 0x80000001000FF5D0);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removed song from Music Library", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000CBA44()
{
  v2 = v0[4];
  v1 = v0[5];
  if (*(v2 + v1))
  {
    *(v2 + v1) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_1000CD0D8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing song from Music Library failed: %@", v7, 0xCu);
    sub_100007E14(v8, &unk_100142880);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000CBCD8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000CD0D8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000CBD68()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary;
  v0[5] = OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[2] = v1;
    sub_1000CD0D8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v0[6] = type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000CBEBC, v5, v4);
}

uint64_t sub_1000CBEBC()
{

  *(v0 + 64) = [objc_allocWithZone(UINotificationFeedbackGenerator) init];

  return _swift_task_switch(sub_1000CBF40, 0, 0);
}

uint64_t sub_1000CBF40()
{
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000CBFCC, v2, v1);
}

uint64_t sub_1000CBFCC()
{
  v1 = *(v0 + 64);

  [v1 notificationOccurred:0];

  return _swift_task_switch(sub_1000CC04C, 0, 0);
}

uint64_t sub_1000CC04C()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_musicLibraryController);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1000CC180;

  return v6(v2, v3);
}

uint64_t sub_1000CC180()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000CC3E8;
  }

  else
  {
    v2 = sub_1000CC294;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CC294()
{
  if (*(*(v0 + 32) + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v1 = 66311;
  }

  else
  {
    v1 = 775;
  }

  sub_1000C3900(v1, 0xD000000000000028, 0x80000001000FF5D0);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Added song to Music Library", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000CC3E8()
{
  v2 = v0[4];
  v1 = v0[5];
  if (*(v2 + v1))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[3] = v2;
    sub_1000CD0D8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + v1) = 0;
  }

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Adding song to Music Library failed: %@", v7, 0xCu);
    sub_100007E14(v8, &unk_100142880);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000CC624()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__addToPlaylistSheetPresented) == 1)
  {
    *(v0 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__addToPlaylistSheetPresented) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000CD0D8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v2 = 66314;
  }

  else
  {
    v2 = 778;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000CC76C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000CD0D8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary);
  return result;
}

uint64_t sub_1000CC838(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000CD0D8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000CC90C()
{
  v1 = v0;
  swift_allocObject();
  swift_weakInit();

  sub_100002D44(&qword_100144978);
  sub_1000CD00C();
  v2 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_songAddStatusCancellable) = v2;
}

uint64_t sub_1000CC9F0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1 == *(result + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary))
    {
      *(result + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary) = v1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000CD0D8();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000CCB10()
{
  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_classicalProvider, &qword_100144658);
  v1 = OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_songCampaignURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1000CCC18()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v2);
  v4 = OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_classicalProvider, &qword_100144658);
  v3(v0 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_songCampaignURL, v2);

  v6(v0 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel___observationRegistrar, v5);
  return v0;
}

uint64_t sub_1000CCD94()
{
  sub_1000CCC18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ContextMenuForSubscribedUserViewModel()
{
  result = qword_100147998;
  if (!qword_100147998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CCE40()
{
  sub_1000CCF74();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000CCF74()
{
  if (!qword_1001446C8)
  {
    type metadata accessor for StreamingService();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001446C8);
    }
  }
}

uint64_t sub_1000CCFCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000CD00C()
{
  result = qword_100146818;
  if (!qword_100146818)
  {
    sub_100004370(&qword_100144978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146818);
  }

  return result;
}

unint64_t sub_1000CD0D8()
{
  result = qword_100145540;
  if (!qword_100145540)
  {
    type metadata accessor for ContextMenuForSubscribedUserViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145540);
  }

  return result;
}

void sub_1000CD1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 domain];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (sub_1000CD3B4([v3 code], a3))
  {
    v13 = v3;
    return;
  }

LABEL_10:
  v14 = [v3 underlyingErrors];
  sub_100002D44(&qword_100142F78);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    while (v17 < *(v15 + 16))
    {
      swift_errorRetain();
      sub_1000CD368();
      if ((swift_dynamicCast() & 1) == 0 || (v18 = sub_1000CD1A0(a1, a2, a3), v19, !v18))
      {
        if (v16 != ++v17)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

unint64_t sub_1000CD368()
{
  result = qword_100144E98;
  if (!qword_100144E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100144E98);
  }

  return result;
}

BOOL sub_1000CD3B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_1000CD45C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1000CD554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_100002D44(&qword_100147B20);
  __chkstk_darwin(v3 - 8);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = (&v44 - v6);
  v49 = type metadata accessor for AccessibilityTraits();
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100002D44(&qword_100147B28) - 8;
  __chkstk_darwin(v47);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v44 - v11;
  v48 = a1;

  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.title2.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  LOBYTE(a1) = v20;

  sub_10000BFBC(v12, v14, v16 & 1);

  static Font.Weight.bold.getter();
  v21 = Text.fontWeight(_:)();
  v23 = v22;
  LOBYTE(v12) = v24;
  v26 = v25;
  sub_10000BFBC(v17, v19, a1 & 1);

  *&v54 = v21;
  *(&v54 + 1) = v23;
  LOBYTE(v55) = v12 & 1;
  *(&v55 + 1) = v26;
  static AccessibilityTraits.isHeader.getter();
  v27 = v45;
  View.accessibilityAddTraits(_:)();
  (*(v46 + 8))(v8, v49);
  sub_10000BFBC(v21, v23, v12 & 1);

  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v28 = v27 + *(v47 + 44);
  *v28 = a1;
  *(v28 + 8) = v29;
  *(v28 + 16) = v30;
  *(v28 + 24) = v31;
  *(v28 + 32) = v32;
  *(v28 + 40) = 0;
  v33 = static HorizontalAlignment.leading.getter();
  v34 = v50;
  *v50 = v33;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  sub_100002D44(&qword_100147B30);
  v60 = *(v48 + 72);
  sub_1000CE170(v48, &v54);
  v35 = swift_allocObject();
  v36 = v57;
  v35[3] = v56;
  v35[4] = v36;
  v37 = v59;
  v35[5] = v58;
  v35[6] = v37;
  v38 = v55;
  v35[1] = v54;
  v35[2] = v38;

  sub_100002D44(&qword_100147B38);
  sub_100002D44(&qword_100147B40);
  sub_100004610(&qword_100147B48, &qword_100147B38);
  sub_100004610(&qword_100147B50, &qword_100147B40);
  sub_1000CE1B4();
  ForEach<>.init(_:content:)();
  v39 = v51;
  sub_100007FDC(v27, v51, &qword_100147B28);
  v40 = v52;
  sub_100007FDC(v34, v52, &qword_100147B20);
  v41 = v53;
  sub_100007FDC(v39, v53, &qword_100147B28);
  v42 = sub_100002D44(&qword_100147B60);
  sub_100007FDC(v40, v41 + *(v42 + 48), &qword_100147B20);
  sub_100007E14(v34, &qword_100147B20);
  sub_100007E14(v27, &qword_100147B28);
  sub_100007E14(v40, &qword_100147B20);
  return sub_100007E14(v39, &qword_100147B28);
}

uint64_t sub_1000CDAE4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v70 = a2;
  v4 = sub_100002D44(&qword_100143CA0);
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v65 = &v64 - v5;
  v6 = sub_100002D44(&qword_100143CA8);
  __chkstk_darwin(v6 - 8);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for SongMetadataRowViewModel();
  __chkstk_darwin(v11 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v64 - v15);
  v17 = sub_100002D44(qword_100147530);
  __chkstk_darwin(v17 - 8);
  v19 = (&v64 - v18);
  v20 = sub_100002D44(&qword_100147B68);
  __chkstk_darwin(v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  __chkstk_darwin(v26);
  v28 = &v64 - v27;
  v29 = *a1;
  sub_100007DB0(v70 + 32, v71);
  if (v29 == 2)
  {
    v30 = 0x6D75626C41;
    v31 = v13;
    v32 = 2;
    v33 = 0xE500000000000000;
  }

  else
  {
    v31 = v13;
    v32 = v29;
    v30 = 0;
    v33 = 0;
  }

  sub_10007AE14(v32, v71, v30, v33, v31);
  sub_1000CE208(v13, v16);
  v34 = v70;
  sub_1000CE170(v70, v71);
  v35 = swift_allocObject();
  v36 = v71[3];
  v35[3] = v71[2];
  v35[4] = v36;
  v37 = v71[5];
  v35[5] = v71[4];
  v35[6] = v37;
  v38 = v71[1];
  v35[1] = v71[0];
  v35[2] = v38;
  sub_1000BE4FC(v16, sub_1000CE2CC, v35, v19);
  v39 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_10002F250(v19, v25, qword_100147530);
  v48 = &v25[*(v20 + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_10002F250(v25, v28, &qword_100147B68);
  v49 = *(v34 + 72);
  v50 = *(v49 + 16);
  if (v50 && v29 == *(v49 + v50 + 31))
  {
    v51 = 1;
    v52 = v68;
  }

  else
  {
    v53 = v65;
    Divider.init()();
    v54 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v52 = v68;
    v55 = v53 + *(v68 + 36);
    *v55 = v54;
    *(v55 + 8) = v56;
    *(v55 + 16) = v57;
    *(v55 + 24) = v58;
    *(v55 + 32) = v59;
    *(v55 + 40) = 0;
    sub_10002F250(v53, v10, &qword_100143CA0);
    v51 = 0;
  }

  (*(v67 + 56))(v10, v51, 1, v52);
  sub_100007FDC(v28, v22, &qword_100147B68);
  v60 = v66;
  sub_100007FDC(v10, v66, &qword_100143CA8);
  v61 = v69;
  sub_100007FDC(v22, v69, &qword_100147B68);
  v62 = sub_100002D44(&qword_100147B70);
  sub_100007FDC(v60, v61 + *(v62 + 48), &qword_100143CA8);
  sub_100007E14(v10, &qword_100143CA8);
  sub_100007E14(v28, &qword_100147B68);
  sub_100007E14(v60, &qword_100143CA8);
  return sub_100007E14(v22, &qword_100147B68);
}

uint64_t sub_1000CE040()
{
  v1 = sub_100002D44(&qword_100147B08);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = static HorizontalAlignment.leading.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_100002D44(&qword_100147B10);
  sub_1000CD554(v0, &v3[*(v4 + 44)]);
  sub_100004610(&qword_100147B18, &qword_100147B08);
  View.accessibilityIdentifier(_:)();
  return sub_100007E14(v3, &qword_100147B08);
}

unint64_t sub_1000CE1B4()
{
  result = qword_100147B58;
  if (!qword_100147B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147B58);
  }

  return result;
}

uint64_t sub_1000CE208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongMetadataRowViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE26C()
{

  sub_100007E74(v0 + 48);

  if (*(v0 + 96))
  {
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000CE2CC()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1000CE300()
{
  result = qword_100147B78;
  if (!qword_100147B78)
  {
    sub_100004370(&unk_100147B80);
    sub_100004610(&qword_100147B18, &qword_100147B08);
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147B78);
  }

  return result;
}

void sub_1000CE3BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicRecognition21RunningBoardAssertion_assertion;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicRecognition21RunningBoardAssertion_assertion);
  if (v3)
  {
    v4 = v3;
    if ([v4 isValid])
    {
      sub_1000CE854();
    }
  }

  v5 = [objc_opt_self() identifierForCurrentProcess];
  v6 = [objc_opt_self() targetWithProcessIdentifier:v5];

  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() attributeWithDomain:v7 name:v8];

  sub_100002D44(&qword_100142810);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000F8490;
  *(v10 + 32) = v9;
  v11 = objc_allocWithZone(RBSAssertion);
  v12 = v6;
  v13 = v9;
  v14 = String._bridgeToObjectiveC()();
  sub_1000CEF14();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v11 initWithExplanation:v14 target:v12 attributes:isa];

  v17 = *(v1 + v2);
  *(v1 + v2) = v16;

  v18 = *(v1 + v2);
  if (!v18)
  {
    goto LABEL_9;
  }

  [v18 addObserver:v1];
  v19 = *(v1 + v2);
  if (!v19)
  {
    goto LABEL_9;
  }

  v32 = 0;
  if ([v19 acquireWithError:&v32])
  {
    v20 = v32;
LABEL_9:
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000BEC4(v21, qword_10014FEA0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Acquired assertion", v24, 2u);
    }

    goto LABEL_14;
  }

  v25 = v32;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000BEC4(v26, qword_10014FEA0);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unable to acquire assertion %@", v29, 0xCu);
    sub_1000157BC(v30);
  }

  else
  {
  }

  v12 = *(v1 + v2);
  *(v1 + v2) = 0;
LABEL_14:
}

void sub_1000CE854()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition21RunningBoardAssertion_assertion);
  if (!v1)
  {
    goto LABEL_4;
  }

  v14 = 0;
  if ([v1 invalidateSyncWithError:&v14])
  {
    v2 = v14;
LABEL_4:
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BEC4(v3, qword_10014FEA0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Invalidated assertion", v6, 2u);
    }

    return;
  }

  v7 = v14;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000BEC4(v8, qword_10014FEA0);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to invalidate assertion %@", v11, 0xCu);
    sub_1000157BC(v12);
  }

  else
  {
  }
}

void sub_1000CEC2C(void *a1)
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Assertion will invalidate %@", v5, 0xCu);
    sub_1000157BC(v6);
  }
}

void sub_1000CED68(void *a1, uint64_t a2)
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = a1;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2112;
    v9 = v5;
    if (a2)
    {
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 14) = v10;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Assertion did invalidate %@ with error %@", v7, 0x16u);
    sub_100002D44(&unk_100142880);
    swift_arrayDestroy();
  }
}

unint64_t sub_1000CEF14()
{
  result = qword_100147C20;
  if (!qword_100147C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100147C20);
  }

  return result;
}

__n128 sub_1000CEF60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000CEF74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CEFBC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000CF014()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100147C30 = result;
  return result;
}

uint64_t sub_1000CF04C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100144378);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100007FDC(v2, &v14 - v9, &qword_100144378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000CF24C()
{
  v0 = type metadata accessor for LayoutDirection();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v12[-v5];
  sub_1000CF04C(&v12[-v5]);
  (*(v1 + 104))(v3, enum case for LayoutDirection.leftToRight(_:), v0);
  static LayoutDirection.== infix(_:_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  type metadata accessor for SongPreviewPlaybackView();
  type metadata accessor for SongPreviewPlaybackViewModel();
  sub_1000D2158(&unk_100147CB8, type metadata accessor for SongPreviewPlaybackViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v9 = v8[3];
  v10 = v8[4];
  sub_10000DC80(v8, v9);
  (*(v10 + 8))(v9, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1000CF554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&qword_100147C38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000CF63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&qword_100147C38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SongPreviewPlaybackView()
{
  result = qword_100147C98;
  if (!qword_100147C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CF74C()
{
  sub_1000CF7E8();
  if (v0 <= 0x3F)
  {
    sub_1000CF840();
    if (v1 <= 0x3F)
    {
      sub_100008ADC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000CF7E8()
{
  if (!qword_100147CA8)
  {
    type metadata accessor for LayoutDirection();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100147CA8);
    }
  }
}

void sub_1000CF840()
{
  if (!qword_100147CB0)
  {
    type metadata accessor for SongPreviewPlaybackViewModel();
    sub_1000D2158(&unk_100147CB8, type metadata accessor for SongPreviewPlaybackViewModel);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100147CB0);
    }
  }
}

uint64_t sub_1000CF8F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v96 = a2;
  v3 = type metadata accessor for SongPreviewPlaybackView();
  v4 = v3 - 8;
  v80 = *(v3 - 8);
  v98 = *(v80 + 64);
  __chkstk_darwin(v3);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100002D44(&qword_100147CF8);
  v73 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = v68 - v7;
  v70 = sub_100002D44(&qword_100147D00) - 8;
  __chkstk_darwin(v70);
  v72 = v68 - v8;
  v82 = sub_100002D44(&qword_100147D08) - 8;
  __chkstk_darwin(v82);
  v79 = v68 - v9;
  v81 = sub_100002D44(&qword_100147D10);
  __chkstk_darwin(v81);
  v75 = v68 - v10;
  v91 = sub_100002D44(&qword_100147D18);
  __chkstk_darwin(v91);
  v83 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = v68 - v13;
  v89 = sub_100002D44(&qword_100147D20) - 8;
  __chkstk_darwin(v89);
  v87 = v68 - v14;
  v94 = sub_100002D44(&qword_100147D28) - 8;
  __chkstk_darwin(v94);
  v95 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = v68 - v17;
  __chkstk_darwin(v18);
  v93 = v68 - v19;
  v20 = *(a1 + *(v4 + 28) + 16);
  v21 = type metadata accessor for SongPreviewPlaybackViewModel();
  v22 = sub_1000D2158(&unk_100147CB8, type metadata accessor for SongPreviewPlaybackViewModel);
  v90 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_backgroundColor);

  v69 = v20;
  v97 = v21;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v86 = v103;
  v85 = v104;
  v23 = v105;
  v100 = 0;
  State.init(wrappedValue:)();
  v24 = v101;
  v84 = v102;
  v74 = a1;
  v76 = v6;
  sub_1000D1988(a1, v6);
  v80 = *(v80 + 80);
  v25 = (v80 + 16) & ~v80;
  v78 = v25;
  v26 = swift_allocObject();
  sub_1000D19F8(v6, v26 + v25);
  v99 = a1;
  sub_100002D44(&qword_100147D30);
  sub_1000D1AC4();
  v27 = v71;
  Button.init(action:label:)();
  v68[1] = v22;
  v28 = StateObject.wrappedValue.getter();
  v29 = *(v28 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController + 24);
  v30 = *(v28 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController + 32);
  sub_10000DC80((v28 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController), v29);
  (*(v30 + 8))(v29, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = &OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_buttonColor;
  if (v103)
  {
    v31 = &OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_backgroundColor;
  }

  v32 = *(v28 + *v31);

  KeyPath = swift_getKeyPath();
  v103 = v32;
  v34 = AnyShapeStyle.init<A>(_:)();
  v35 = v72;
  (*(v73 + 32))(v72, v27, v77);
  v36 = (v35 + *(v70 + 44));
  *v36 = KeyPath;
  v36[1] = v34;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v37 = Color.opacity(_:)();

  LOBYTE(v34) = static Edge.Set.all.getter();
  v38 = v79;
  sub_10002F250(v35, v79, &qword_100147D00);
  v39 = v38 + *(v82 + 44);
  *v39 = v37;
  *(v39 + 8) = v34;
  v40 = v75;
  sub_10002F250(v38, v75, &qword_100147D08);
  *(v40 + *(v81 + 36)) = 256;
  v41 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v42 = v41[3];
  v43 = v41[4];
  sub_10000DC80(v41, v42);
  (*(v43 + 8))(v42, v43);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000D1D4C();
  v44 = v83;
  View.accessibilityIdentifier(_:)();

  sub_100007E14(v40, &qword_100147D10);
  StateObject.wrappedValue.getter();
  v45 = sub_1000B30E0();
  v47 = v46;

  v103 = v45;
  v104 = v47;
  sub_10000B730();
  v48 = v88;
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  sub_100007E14(v44, &qword_100147D18);
  v49 = v87;
  v50 = &v87[*(v89 + 44)];
  v51 = sub_100002D44(&qword_100147D80);
  v52 = *(v51 + 36);
  v53 = enum case for CoordinateSpace.local(_:);
  v54 = type metadata accessor for CoordinateSpace();
  (*(*(v54 - 8) + 104))(&v50[v52], v53, v54);
  *v50 = &type metadata for PreviewButtonWidthPreferenceKey;
  v55 = &v50[*(v51 + 40)];
  *v55 = sub_10004CB50;
  v55[1] = 0;
  sub_10002F250(v48, v49, &qword_100147D18);
  v56 = v76;
  sub_1000D1988(v74, v76);
  v57 = v78;
  v58 = swift_allocObject();
  sub_1000D19F8(v56, v58 + v57);
  v59 = v92;
  sub_10002F250(v49, v92, &qword_100147D20);
  v60 = v93;
  v61 = (v59 + *(v94 + 44));
  *v61 = sub_1000D20E0;
  v61[1] = v58;
  sub_10002F250(v59, v60, &qword_100147D28);
  v62 = v95;
  sub_100007FDC(v60, v95, &qword_100147D28);
  v63 = v96;
  *v96 = v90;
  v63[1] = v24;
  v64 = v86;
  v63[2] = v84;
  v63[3] = v64;
  v63[4] = v85;
  v63[5] = v23;
  v65 = v63;
  v66 = sub_100002D44(&qword_100147D88);
  sub_100007FDC(v62, v65 + *(v66 + 48), &qword_100147D28);

  sub_100007E14(v60, &qword_100147D28);
  sub_100007E14(v62, &qword_100147D28);
}

uint64_t sub_1000D0558(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SongPreviewPlaybackView() + 24));
  if (*v1)
  {
    (*v1)();
  }

  type metadata accessor for SongPreviewPlaybackViewModel();
  sub_1000D2158(&unk_100147CB8, type metadata accessor for SongPreviewPlaybackViewModel);
  v2 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  (*(v4 + 16))(v3, v4);
}

__n128 sub_1000D0664@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002D44(&unk_100147D48);
  __chkstk_darwin(v24);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v23 = &v22 - v9;
  v10 = static Alignment.center.getter();
  v12 = v11;
  sub_1000D0B98(a1, &v57);
  v53 = v69;
  v54[0] = v70[0];
  *(v54 + 9) = *(v70 + 9);
  v49 = v65;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v48 = v64;
  v41 = v57;
  v42 = v58;
  v43 = v59;
  v44 = v60;
  v55[12] = v69;
  v56[0] = v70[0];
  *(v56 + 9) = *(v70 + 9);
  v55[8] = v65;
  v55[9] = v66;
  v55[10] = v67;
  v55[11] = v68;
  v55[4] = v61;
  v55[5] = v62;
  v55[6] = v63;
  v55[7] = v64;
  v55[0] = v57;
  v55[1] = v58;
  v55[2] = v59;
  v55[3] = v60;
  sub_100007FDC(&v41, &v26, &unk_100147D90);
  sub_100007E14(v55, &unk_100147D90);
  v39 = v53;
  v40[0] = v54[0];
  *(v40 + 9) = *(v54 + 9);
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v38 = v52;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v26.n128_u64[0] = v10;
  v26.n128_u64[1] = v12;
  sub_100002D44(&unk_100147D98);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000F57C0;
  static AccessibilityTraits.startsMediaSession.getter();
  v57.n128_u64[0] = v13;
  sub_1000D2158(&unk_100147DA0, &type metadata accessor for AccessibilityTraits);
  sub_100002D44(&unk_100147DA8);
  sub_100004610(&unk_100147DB0, &unk_100147DA8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100002D44(&unk_100147D58);
  sub_100004610(&unk_100147D50, &unk_100147D58);
  v14 = v22;
  View.accessibilityAddTraits(_:)();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v69 = v38;
  v70[0] = v39;
  v70[1] = v40[0];
  *(&v70[1] + 9) = *(v40 + 9);
  v65 = v34;
  v66 = v35;
  v67 = v36;
  v68 = v37;
  v61 = v30;
  v62 = v31;
  v63 = v32;
  v64 = v33;
  v57 = v26;
  v58 = v27;
  v59 = v28;
  v60 = v29;
  sub_100007E14(&v57, &unk_100147D58);
  static AccessibilityTraits.isImage.getter();
  v16 = v23;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v15(v6, v3);
  sub_100007E14(v14, &unk_100147D48);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = v25;
  sub_10002F250(v16, v25, &unk_100147D48);
  v18 = v17 + *(sub_100002D44(&unk_100147D30) + 36);
  v19 = v31;
  *(v18 + 64) = v30;
  *(v18 + 80) = v19;
  *(v18 + 96) = v32;
  v20 = v27;
  *v18 = v26;
  *(v18 + 16) = v20;
  result = v29;
  *(v18 + 32) = v28;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_1000D0B98@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  v7 = *(v4 + 104);
  LODWORD(v81) = enum case for Image.ResizingMode.stretch(_:);
  v79 = v7;
  v80 = v4 + 104;
  v7(v6);
  v91 = Image.resizable(capInsets:resizingMode:)();

  v8 = *(v4 + 8);
  v82 = v6;
  v83 = v4 + 8;
  v84 = v3;
  v78 = v8;
  v8(v6, v3);
  v9 = *(type metadata accessor for SongPreviewPlaybackView() + 20);
  v85 = a1;
  v10 = (a1 + v9);
  v12 = *v10;
  v11 = v10[1];
  LODWORD(v3) = *(v10 + 16);
  v13 = type metadata accessor for SongPreviewPlaybackViewModel();
  v14 = sub_1000D2158(&unk_100147CB8, type metadata accessor for SongPreviewPlaybackViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v92 = v11;
  v93 = v3;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v95 = v171;
  v96 = v169;
  v89 = v170;
  v90 = v172;
  v99 = v168;
  v100 = v173;
  v15 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v16 = v15[3];
  v17 = v15[4];
  sub_10000DC80(v15, v16);
  (*(v17 + 8))(v16, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v94 = LOBYTE(v143[0]);
  v97 = v14;
  v98 = v12;
  v101 = v13;
  v18 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v19 = v18[3];
  v20 = v18[4];
  sub_10000DC80(v18, v19);
  (*(v20 + 8))(v19, v20);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = LOBYTE(v143[0]);
  v165 = v96;
  v164 = v95;
  static UnitPoint.center.getter();
  v86 = v23;
  v87 = v22;
  v95 = v165;
  v96 = v164;
  if (qword_100141D28 != -1)
  {
    swift_once();
  }

  if (v21 == 1)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  if (v94 == 1)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v77 = qword_100147C30;
  v26 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v27 = v26[3];
  v28 = v26[4];
  sub_10000DC80(v26, v27);
  (*(v28 + 8))(v27, v28);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v94 = LOBYTE(v143[0]) == 1;

  Image.init(systemName:)();
  v29 = v82;
  v30 = v84;
  v79(v82, v81, v84);
  v81 = Image.resizable(capInsets:resizingMode:)();

  v78(v29, v30);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v80 = v174;
  LOBYTE(v30) = v175;
  LODWORD(v78) = v175;
  v31 = v177;
  LODWORD(v79) = v177;
  v84 = v178;
  v82 = v176;
  v83 = v179;
  sub_1000CF24C();
  v85 = v32;
  v163 = v30;
  v161 = v31;
  v33 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v34 = v33[3];
  v35 = v33[4];
  sub_10000DC80(v33, v34);
  (*(v35 + 8))(v34, v35);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v143[0]) == 1)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  v37 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v38 = v37[3];
  v39 = v37[4];
  sub_10000DC80(v37, v38);
  (*(v39 + 8))(v38, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v143[0]) == 1)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = 1.0;
  }

  static UnitPoint.center.getter();
  v42 = v41;
  v44 = v43;
  v45 = (StateObject.wrappedValue.getter() + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v46 = v45[3];
  v47 = v45[4];
  sub_10000DC80(v45, v46);
  (*(v47 + 8))(v46, v47);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v48 = LOBYTE(v143[0]) == 1;
  v50 = v90;
  v49 = v91;
  *&v130 = v91;
  *(&v130 + 1) = v99;
  LOBYTE(v131) = v95;
  *(&v131 + 1) = *v167;
  DWORD1(v131) = *&v167[3];
  v51 = v89;
  *(&v131 + 1) = v89;
  LOBYTE(v132) = v96;
  *(&v132 + 1) = *v166;
  DWORD1(v132) = *&v166[3];
  *(&v132 + 1) = v90;
  *&v133 = v100;
  *(&v133 + 1) = v25;
  *&v134 = v24;
  *(&v134 + 1) = v24;
  v53 = v86;
  v52 = v87;
  *&v135[0] = v87;
  *(&v135[0] + 1) = v86;
  v54 = v77;
  *&v135[1] = v77;
  BYTE8(v135[1]) = v94;
  v117 = v130;
  v118 = v131;
  *(v122 + 9) = *(v135 + 9);
  v121 = v134;
  v122[0] = v135[0];
  v119 = v132;
  v120 = v133;
  v56 = v80;
  v55 = v81;
  *&v136 = v81;
  *(&v136 + 1) = v80;
  v57 = v78;
  LOBYTE(v137) = v78;
  DWORD1(v137) = *&v162[3];
  *(&v137 + 1) = *v162;
  v59 = v82;
  v58 = v83;
  *(&v137 + 1) = v82;
  v60 = v79;
  LOBYTE(v138) = v79;
  DWORD1(v138) = *&v160[3];
  *(&v138 + 1) = *v160;
  v61 = v84;
  *(&v138 + 1) = v84;
  *&v139 = v83;
  v62 = v85;
  *(&v139 + 1) = v85;
  *&v140 = 0;
  *(&v140 + 1) = v36;
  *&v141 = v40;
  *(&v141 + 1) = v40;
  *&v142[0] = v42;
  *(&v142[0] + 1) = v44;
  *&v142[1] = v77;
  BYTE8(v142[1]) = v48;
  v125 = v138;
  v126 = v139;
  v123 = v136;
  v124 = v137;
  *(v129 + 9) = *(v142 + 9);
  v128 = v141;
  v129[0] = v142[0];
  v127 = v140;
  v63 = v131;
  v64 = v88;
  *v88 = v130;
  v64[1] = v63;
  v65 = v119;
  v66 = v120;
  v67 = v122[0];
  v64[4] = v121;
  v64[5] = v67;
  v64[2] = v65;
  v64[3] = v66;
  v68 = v122[1];
  v69 = v123;
  v70 = v125;
  v64[8] = v124;
  v64[9] = v70;
  v64[6] = v68;
  v64[7] = v69;
  v71 = v126;
  v72 = v127;
  *(v64 + 217) = *(v129 + 9);
  v73 = v129[0];
  v64[12] = v128;
  v64[13] = v73;
  v64[10] = v71;
  v64[11] = v72;
  v143[0] = v55;
  v143[1] = v56;
  v144 = v57;
  *v145 = *v162;
  *&v145[3] = *&v162[3];
  v146 = v59;
  v147 = v60;
  *v148 = *v160;
  *&v148[3] = *&v160[3];
  v149 = v61;
  v150 = v58;
  v151 = v62;
  v152 = 0;
  v153 = v36;
  v154 = v40;
  v155 = v40;
  v156 = v42;
  v157 = v44;
  v158 = v54;
  v159 = v48;
  v74 = v54;

  sub_100007FDC(&v130, v102, &qword_100147DB8);
  sub_100007FDC(&v136, v102, &qword_100147DC0);
  sub_100007E14(v143, &qword_100147DC0);
  v102[0] = v49;
  v102[1] = v99;
  v103 = v95;
  *v104 = *v167;
  *&v104[3] = *&v167[3];
  v105 = v51;
  v106 = v96;
  *v107 = *v166;
  *&v107[3] = *&v166[3];
  v108 = v50;
  v109 = v100;
  v110 = v25;
  v111 = v24;
  v112 = v24;
  v113 = v52;
  v114 = v53;
  v115 = v74;
  v116 = v94;
  return sub_100007E14(v102, &qword_100147DB8);
}

uint64_t sub_1000D1840()
{
  type metadata accessor for SongPreviewPlaybackView();
  type metadata accessor for SongPreviewPlaybackViewModel();
  sub_1000D2158(&unk_100147CB8, type metadata accessor for SongPreviewPlaybackViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_1000D1934@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = sub_100002D44(&qword_100147CF0);
  return sub_1000CF8F0(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_1000D1988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongPreviewPlaybackView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D19F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongPreviewPlaybackView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1A5C()
{
  v1 = *(type metadata accessor for SongPreviewPlaybackView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000D0558(v2);
}

unint64_t sub_1000D1AC4()
{
  result = qword_100147D38;
  if (!qword_100147D38)
  {
    sub_100004370(&qword_100147D30);
    sub_1000D1B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147D38);
  }

  return result;
}

unint64_t sub_1000D1B50()
{
  result = qword_100147D40;
  if (!qword_100147D40)
  {
    sub_100004370(&qword_100147D48);
    sub_100004610(&qword_100147D50, &qword_100147D58);
    sub_1000D2158(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147D40);
  }

  return result;
}

double sub_1000D1C40@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000D1CC0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1000D1D4C()
{
  result = qword_100147D60;
  if (!qword_100147D60)
  {
    sub_100004370(&qword_100147D10);
    sub_1000D1E04();
    sub_100004610(&qword_100144368, &qword_100144370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147D60);
  }

  return result;
}

unint64_t sub_1000D1E04()
{
  result = qword_100147D68;
  if (!qword_100147D68)
  {
    sub_100004370(&qword_100147D08);
    sub_1000D1EBC();
    sub_100004610(&qword_1001457F8, &qword_100145800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147D68);
  }

  return result;
}

unint64_t sub_1000D1EBC()
{
  result = qword_100147D70;
  if (!qword_100147D70)
  {
    sub_100004370(&qword_100147D00);
    sub_100004610(&qword_100147D78, &qword_100147CF8);
    sub_100004610(&qword_100143380, &qword_100143388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147D70);
  }

  return result;
}

uint64_t sub_1000D1FA0()
{
  v1 = type metadata accessor for SongPreviewPlaybackView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100002D44(&qword_100144378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LayoutDirection();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_1000D19F0();
  if (*(v0 + v3 + *(v1 + 24)))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000D20E0()
{
  type metadata accessor for SongPreviewPlaybackView();

  return sub_1000D1840();
}

uint64_t sub_1000D2158(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000D21F4(uint64_t a1)
{
  result = sub_1000D221C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D221C()
{
  result = qword_100147DD8[0];
  if (!qword_100147DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100147DD8);
  }

  return result;
}

char *sub_1000D2274(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D44(&qword_100142FE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = v1[7];
  v11 = v1[8];
  sub_10000DC80(v1 + 4, v10);
  (*(v11 + 8))(v10, v11);
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v9, 1, v12);
  sub_10007C2CC(v9);
  if (v14 == 1 || sub_1000CD45C(0, a1))
  {
    v15 = _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = sub_100058368(0, 1, 1, _swiftEmptyArrayStorage);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_100058368((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v15[v17 + 32] = 0;
  }

  v18 = v2[7];
  v19 = v2[8];
  sub_10000DC80(v2 + 4, v18);
  (*(v19 + 16))(v18, v19);
  if (v20)
  {

    if (!sub_1000CD45C(1u, a1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100058368(0, *(v15 + 2) + 1, 1, v15);
      }

      v22 = *(v15 + 2);
      v21 = *(v15 + 3);
      if (v22 >= v21 >> 1)
      {
        v15 = sub_100058368((v21 > 1), v22 + 1, 1, v15);
      }

      *(v15 + 2) = v22 + 1;
      v15[v22 + 32] = 1;
    }
  }

  v23 = v2[7];
  v24 = v2[8];
  sub_10000DC80(v2 + 4, v23);
  (*(v24 + 40))(v23, v24);
  if (v25)
  {

    if (!sub_1000CD45C(2u, a1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100058368(0, *(v15 + 2) + 1, 1, v15);
      }

      v27 = *(v15 + 2);
      v26 = *(v15 + 3);
      if (v27 >= v26 >> 1)
      {
        v15 = sub_100058368((v26 > 1), v27 + 1, 1, v15);
      }

      *(v15 + 2) = v27 + 1;
      v15[v27 + 32] = 2;
    }
  }

  v28 = v2[7];
  v29 = v2[8];
  sub_10000DC80(v2 + 4, v28);
  (*(v29 + 48))(v28, v29);
  if (v30)
  {

    if (!sub_1000CD45C(3u, a1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100058368(0, *(v15 + 2) + 1, 1, v15);
      }

      v32 = *(v15 + 2);
      v31 = *(v15 + 3);
      if (v32 >= v31 >> 1)
      {
        v15 = sub_100058368((v31 > 1), v32 + 1, 1, v15);
      }

      *(v15 + 2) = v32 + 1;
      v15[v32 + 32] = 3;
    }
  }

  v33 = v2[7];
  v34 = v2[8];
  sub_10000DC80(v2 + 4, v33);
  (*(v34 + 24))(v33, v34);
  v35 = v13(v6, 1, v12);
  sub_10007C2CC(v6);
  if (v35 != 1 && !sub_1000CD45C(4u, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100058368(0, *(v15 + 2) + 1, 1, v15);
    }

    v37 = *(v15 + 2);
    v36 = *(v15 + 3);
    if (v37 >= v36 >> 1)
    {
      v15 = sub_100058368((v36 > 1), v37 + 1, 1, v15);
    }

    *(v15 + 2) = v37 + 1;
    v15[v37 + 32] = 4;
  }

  v38 = v2[7];
  v39 = v2[8];
  sub_10000DC80(v2 + 4, v38);
  (*(v39 + 64))(v38, v39);
  if (v40)
  {

    if (!sub_1000CD45C(5u, a1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100058368(0, *(v15 + 2) + 1, 1, v15);
      }

      v42 = *(v15 + 2);
      v41 = *(v15 + 3);
      if (v42 >= v41 >> 1)
      {
        v15 = sub_100058368((v41 > 1), v42 + 1, 1, v15);
      }

      *(v15 + 2) = v42 + 1;
      v15[v42 + 32] = 5;
    }
  }

  v43 = v2[7];
  v44 = v2[8];
  sub_10000DC80(v2 + 4, v43);
  (*(v44 + 56))(v43, v44);
  if (v45)
  {

    if (!sub_1000CD45C(6u, a1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100058368(0, *(v15 + 2) + 1, 1, v15);
      }

      v47 = *(v15 + 2);
      v46 = *(v15 + 3);
      if (v47 >= v46 >> 1)
      {
        v15 = sub_100058368((v46 > 1), v47 + 1, 1, v15);
      }

      *(v15 + 2) = v47 + 1;
      v15[v47 + 32] = 6;
    }
  }

  return v15;
}

uint64_t sub_1000D28A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D28E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000D294C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1000848C8();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1000D2A34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000D2AE8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000D2BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicPlayer.Queue.Entry();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100146848);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_100002D44(&qword_100146850);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  dispatch thunk of SystemMusicPlayer.queue.getter();
  dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

  if ((*(v3 + 48))(v8, 1, v2))
  {
    v12 = &qword_100146848;
    v13 = v8;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100007E14(v8, &qword_100146848);
    MusicPlayer.Queue.Entry.item.getter();
    (*(v3 + 8))(v5, v2);
    v14 = type metadata accessor for MusicPlayer.Queue.Entry.Item();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v11, 1, v14) != 1)
    {
      *(a1 + 24) = v14;
      *(a1 + 32) = &protocol witness table for MusicPlayer.Queue.Entry.Item;
      v17 = sub_100023284(a1);
      return (*(v15 + 32))(v17, v11, v14);
    }

    v12 = &qword_100146850;
    v13 = v11;
  }

  result = sub_100007E14(v13, v12);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000D2E64()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for MusicPlayer.PlaybackStatus();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2BA0(v21);
  if (v22)
  {
    sub_10000DC80(v21, v22);
    v6 = dispatch thunk of MusicItem.id.getter();
    v8 = v7;
    sub_100007E74(v21);
  }

  else
  {
    sub_100007E14(v21, &qword_100147E60);
    v6 = 0;
    v8 = 0;
  }

  v9 = *(*v0 + 104);
  v10 = *(v2 + 80);
  v11 = *(v2 + 88);
  v12 = dispatch thunk of MusicItem.id.getter();
  if (!v8)
  {

    goto LABEL_12;
  }

  if (v6 == v12 && v8 == v13)
  {

    goto LABEL_15;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
LABEL_12:
    sub_100002D44(&qword_100147E68);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000F57C0;
    *(v16 + 56) = v10;
    *(v16 + 64) = v11;
    v17 = sub_100023284((v16 + 32));
    (*(*(v10 - 8) + 16))(v17, v0 + v9, v10);
    type metadata accessor for MusicPlayer.Queue();
    dispatch thunk of MusicPlayer.Queue.__allocating_init(arrayLiteral:)();
    dispatch thunk of SystemMusicPlayer.queue.setter();
    return sub_1000D31D8(v1);
  }

LABEL_15:
  MusicPlayer.state.getter();
  dispatch thunk of MusicPlayer.State.playbackStatus.getter();

  v19 = v20;
  result = (*(v20 + 88))(v5, v3);
  if (result == enum case for MusicPlayer.PlaybackStatus.stopped(_:))
  {
    return result;
  }

  if (result == enum case for MusicPlayer.PlaybackStatus.playing(_:))
  {
    return dispatch thunk of MusicPlayer.pause()();
  }

  if (result == enum case for MusicPlayer.PlaybackStatus.paused(_:))
  {
    return sub_1000D31D8(v1);
  }

  if (result == enum case for MusicPlayer.PlaybackStatus.interrupted(_:))
  {
    return dispatch thunk of MusicPlayer.pause()();
  }

  if (result != enum case for MusicPlayer.PlaybackStatus.seekingForward(_:) && result != enum case for MusicPlayer.PlaybackStatus.seekingBackward(_:))
  {
    return (*(v19 + 8))(v5, v3);
  }

  return result;
}

uint64_t sub_1000D31D8(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_1000C8AF8(0, 0, v4, &unk_1000FD7B8, v7);
}

uint64_t sub_1000D32FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000D3394, v6, v5);
}

uint64_t sub_1000D3394()
{
  v3 = (&async function pointer to dispatch thunk of MusicPlayer.play() + async function pointer to dispatch thunk of MusicPlayer.play());
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000D3450;

  return v3();
}

uint64_t sub_1000D3450()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1000D358C;
  }

  else
  {
    v5 = sub_100043130;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000D358C()
{

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error playing: %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t *sub_1000D3738()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  v2 = *(*v0 + 120);
  v3 = sub_100002D44(qword_100145B30);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000D382C()
{
  sub_1000D3738();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000D38E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000D3924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_1000D32FC(a1, v4, v5, v6);
}

uint64_t sub_1000D39D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D2A34();
  *a1 = result;
  return result;
}

uint64_t sub_1000D3A30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D2A34();
  *a1 = result;
  return result;
}

__n128 sub_1000D3A94(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000D3AA8()
{
  v54 = type metadata accessor for _AssistantIntent.PhraseToken();
  v0 = *(v54 - 8);
  __chkstk_darwin(v54);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002D44(&qword_100147E78);
  __chkstk_darwin(v3);
  v4 = sub_100002D44(&qword_100147E80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  sub_100019A88();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v48 = *(v5 + 8);
  v48(v7, v4);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x80000001001030D0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v51 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v55 = *(v0 + 104);
  v53 = v0 + 104;
  v9 = v54;
  v55(v2);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v10 = *(v0 + 8);
  v49 = v0 + 8;
  v50 = v10;
  v10(v2, v9);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v4;
  v47 = v4;
  v13 = v4;
  v14 = v48;
  v52 = v5 + 8;
  v48(v7, v13);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v7, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x80000001001030F0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v39 = v2;
  v16 = v51;
  v17 = v54;
  (v55)(v2, v51, v54);
  v38 = v3;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v18 = v50;
  v50(v2, v17);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v47;
  v14(v7, v47);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v7, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._object = 0x8000000100103110;
  v21._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v39;
  v23 = v54;
  (v55)(v39, v16, v54);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v18(v22, v23);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v47;
  v26 = v48;
  v48(v7, v47);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v7, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  (v55)(v22, v51, v23);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v22, v23);
  v28._countAndFlagsBits = 0x7369687420;
  v28._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v7, v25);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v7, v25);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v7, v25);
  sub_100002D44(&qword_100147E88);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000FD890;
  v33 = v45;
  *(v32 + 32) = v46;
  *(v32 + 40) = v33;
  v34 = v43;
  *(v32 + 48) = v44;
  *(v32 + 56) = v34;
  v35 = v41;
  *(v32 + 64) = v42;
  *(v32 + 72) = v35;
  *(v32 + 80) = v40;
  *(v32 + 88) = v29;
  *(v32 + 96) = v30;
  *(v32 + 104) = v31;
  v36 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v36;
}

uint64_t sub_1000D4260()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = sub_100022D7C();
  v9[1] = v4;
  sub_100019A88();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v5 = static _AssistantIntent.Builder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_100002D44(&qword_100147E70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000F57C0;
  *(v6 + 32) = v5;
  v7 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v7;
}

uint64_t sub_1000D43C8()
{
  if (qword_100141D30 != -1)
  {
    swift_once();
  }
}

id sub_1000D4434(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v20._object = 0xE000000000000000;
  v5._object = 0x80000001001029A0;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v20);

  if (a1)
  {
    swift_errorRetain();
    sub_100002D44(&qword_100142F78);
    sub_1000123E4(0, &qword_100144E98);
    if (swift_dynamicCast())
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      v10 = sub_10006CA70(&off_100134DF0);
      sub_1000CD1A0(v7, v9, v10);
      v12 = v11;

      if (v12)
      {

        v13 = [v3 mainBundle];
        v21._object = 0xE000000000000000;
        v14._countAndFlagsBits = 0xD000000000000023;
        v14._object = 0x80000001001029F0;
        v15._countAndFlagsBits = 0;
        v15._object = 0xE000000000000000;
        v21._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v21);
      }
    }
  }

  v16 = *(v1 + OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel);
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  return [v16 setNeedsDisplay];
}

id sub_1000D4664()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.36];
  qword_100147E90 = result;
  return result;
}

id sub_1000D46BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton;
  *&v4[v10] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_stackView;
  *&v4[v12] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_1000D47E0();

  return v13;
}

uint64_t sub_1000D47E0()
{
  v1 = sub_100002D44(&qword_100146198);
  __chkstk_darwin(v1 - 8);
  v71 = &v61 - v2;
  v3 = sub_100002D44(&qword_100147ED8);
  __chkstk_darwin(v3 - 8);
  v70 = &v61 - v4;
  v69 = type metadata accessor for AttributeContainer();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v65);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D44(&qword_100147EE0);
  __chkstk_darwin(v7 - 8);
  v63 = &v61 - v8;
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AttributedString();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v76 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UIButton.Configuration();
  v73 = *(v75 - 8);
  v16 = __chkstk_darwin(v75);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:{0, v16}];
  v19 = *&v0[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_stackView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v19];
  v20 = *&v0[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel];
  [v19 addArrangedSubview:v20];
  v74 = v0;
  v21 = *&v0[OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton];
  [v19 addArrangedSubview:v21];
  [v19 setCustomSpacing:v20 afterView:21.0];
  [v19 setAxis:1];
  [v19 setDistribution:0];
  [v19 setAlignment:3];
  v72 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  static UIButton.Configuration.filled()();
  v62 = objc_opt_self();
  v22 = [v62 whiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v12);
  UIButton.Configuration.cornerStyle.setter();
  if (qword_100141D38 != -1)
  {
    swift_once();
  }

  v23 = qword_100147E90;
  UIButton.Configuration.baseBackgroundColor.setter();
  String.LocalizationValue.init(stringLiteral:)();
  v24 = type metadata accessor for Locale();
  (*(*(v24 - 8) + 56))(v63, 1, 1, v24);
  v79 = _swiftEmptyArrayStorage;
  sub_1000D55A4();
  sub_100002D44(&qword_100147EF0);
  sub_1000D55FC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v76;
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  sub_100002D44(&qword_100147F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F57C0;
  *(inited + 32) = NSFontAttributeName;
  v27 = objc_opt_self();
  v28 = NSFontAttributeName;
  v29 = [v27 systemFontOfSize:34.0 weight:UIFontWeightSemibold];
  *(inited + 64) = sub_1000123E4(0, &qword_100147F08);
  *(inited + 40) = v29;
  sub_1000D5B94(inited);
  swift_setDeallocating();
  sub_1000D5CBC(inited + 32);
  v30 = v67;
  AttributeContainer.init(_:)();
  AttributedString.setAttributes(_:)();
  (*(v68 + 8))(v30, v69);
  v32 = v77;
  v31 = v78;
  v33 = v70;
  (*(v77 + 16))(v70, v25, v78);
  (*(v32 + 56))(v33, 0, 1, v31);
  v66 = v18;
  UIButton.Configuration.attributedTitle.setter();
  v34 = v73;
  v35 = v71;
  v36 = v75;
  (*(v73 + 16))(v71, v18, v75);
  (*(v34 + 56))(v35, 0, 1, v36);
  v37 = v72;
  UIButton.configuration.setter();
  v38 = String._bridgeToObjectiveC()();
  [v37 setAccessibilityIdentifier:v38];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = [v27 systemFontOfSize:62.0 weight:UIFontWeightSemibold];
  [v20 setFont:v39];

  v40 = [v62 whiteColor];
  [v20 setTextColor:v40];

  v41 = [objc_opt_self() mainBundle];
  v80._object = 0xE000000000000000;
  v42._object = 0x80000001001029A0;
  v42._countAndFlagsBits = 0xD00000000000001ELL;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v80);

  v44 = String._bridgeToObjectiveC()();

  [v20 setText:v44];

  v45 = String._bridgeToObjectiveC()();
  [v20 setAccessibilityIdentifier:v45];

  v46 = objc_opt_self();
  sub_100002D44(&qword_100142810);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1000F57E0;
  v48 = [v19 centerXAnchor];
  v49 = v74;
  v50 = [v74 centerXAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];

  *(v47 + 32) = v51;
  v52 = [v19 centerYAnchor];
  v53 = [v49 centerYAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-13.0];

  *(v47 + 40) = v54;
  v55 = [v37 heightAnchor];
  v56 = [v55 constraintEqualToConstant:76.0];

  *(v47 + 48) = v56;
  v57 = [v37 widthAnchor];
  v58 = [v57 constraintEqualToConstant:234.0];

  *(v47 + 56) = v58;
  sub_1000123E4(0, &qword_100143260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:isa];

  (*(v77 + 8))(v76, v78);
  return (*(v34 + 8))(v66, v75);
}