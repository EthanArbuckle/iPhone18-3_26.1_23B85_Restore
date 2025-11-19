uint64_t sub_100034588(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000345E0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v22[0] = 46;
  v22[1] = 0xE100000000000000;
  v21 = v22;

  v7 = sub_1000341C8(1, 1, sub_1000349BC, v20, a1, a2, v6);
  if (v7[2] == 2)
  {
    v8 = v7[4];
    v9 = v7[5];
    v10 = v7[6];
    v11 = v7[7];
    v12 = v7;

    static String._fromSubstring(_:)();

    if (v12[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v14 = v12[8];
      v15 = v12[9];
      v17 = v12[10];
      v16 = v12[11];

      static String._fromSubstring(_:)();

      type metadata accessor for FoundationPluginBundleProvider();
      static FoundationPluginBundleProvider.sharedInstance.getter();
      v18 = dispatch thunk of PluginBundleProvider.loadAndValidatePluginBundle(named:)();

      v19 = NSBundle.getPluginAppDelegateClass()();

      return v19;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1000349BC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100034A14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100034A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100034AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = &OBJC_PROTOCOL___UIApplicationTestingDelegate;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (v12)
  {
    v13 = v12;
    if ([v12 respondsToSelector:"application:runTest:options:"])
    {
      swift_unknownObjectRetain_n();
      v14 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v16 = [v13 application:a1 runTest:v14 options:isa];
      swift_unknownObjectRelease_n();

      return v16;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    static Logger.general.getter();
    swift_unknownObjectRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[1] = a4;
      v26[0] = v21;
      *v20 = 136446210;
      v25[0] = a3;
      sub_10000968C(0, &qword_1000DB738);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000036D0(v22, v23, v26);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "PluginAppDelegate does not conform to UIApplicationTestingDelegate: %{public}s", v20, 0xCu);
      sub_100003B90(v21);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v8 + 8))(v11, v7);
  }

  return 0;
}

__n128 sub_100034D7C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100034D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100034DD0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100034E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v51 = a2;
  v58 = a3;
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin(v5);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for InsetGroupedListStyle();
  v47 = *(v46 - 8);
  v8 = *(v47 + 64);
  __chkstk_darwin(v46);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036544();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036E1C();
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036EF0();
  v23 = *(v22 - 8);
  v52 = v22;
  v53 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v45 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100036FF4();
  v54 = v26;
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v60 = a2;
  sub_1000373BC(0, &qword_1000DB7A8, &type metadata accessor for _ConditionalContent);
  sub_100036B1C();
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v30 = sub_100039E88(&qword_1000DB858, sub_100036544);
  v31 = v46;
  View.listStyle<A>(_:)();
  (*(v47 + 8))(v10, v31);
  (*(v13 + 8))(v16, v12);
  LocalizedStringKey.init(stringLiteral:)();
  v61 = v12;
  v62 = v31;
  v63 = v30;
  v64 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v45;
  v34 = v48;
  View.navigationTitle(_:)();

  (*(v49 + 8))(v21, v34);
  v35 = v55;
  v36 = v56;
  v37 = v57;
  (*(v56 + 104))(v55, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v57);
  v61 = v34;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v52;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v36 + 8))(v35, v37);
  (*(v53 + 8))(v33, v38);
  v39 = swift_allocObject();
  v40 = v50;
  v41 = v51;
  *(v39 + 16) = v50;
  *(v39 + 24) = v41;
  v42 = &v29[*(v54 + 36)];
  *v42 = sub_100037198;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  *(v43 + 24) = v41;
  sub_100037254();
  swift_retain_n();
  View.refreshable(action:)();

  return sub_10001E560(v29);
}

uint64_t sub_100035438@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_1000373BC(0, &qword_1000DB880, &type metadata accessor for _ConditionalContent.Storage);
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = v41 - v6;
  sub_1000365E0();
  v9 = v8;
  v45 = *(v8 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v8);
  v44 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037440(0, &qword_1000DB888, &type metadata accessor for _ConditionalContent.Storage);
  v46 = v12;
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v41 - v14;
  sub_100037440(0, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v47 = v41 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v49;
  if (v50)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0x203A726F727245;
    v21._object = 0xE700000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
    v49 = v20;
    swift_errorRetain();
    sub_100008C14();
    v22._countAndFlagsBits = String.init<A>(reflecting:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v22);

    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
    LocalizedStringKey.init(stringInterpolation:)();
    v24 = Text.init(_:tableName:bundle:comment:)();
    v26 = v25;
    *v7 = v24;
    *(v7 + 1) = v25;
    v28 = v27 & 1;
    v7[16] = v27 & 1;
    *(v7 + 3) = v29;
    swift_storeEnumTagMultiPayload();
    sub_1000385D8(v24, v26, v28);
    sub_100036BB8();

    _ConditionalContent<>.init(storage:)();
    sub_1000385E8(v20, 1);
    sub_1000385F4(v24, v26, v28);
  }

  if (!(v49 >> 62))
  {
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_1000385E8(v20, 0);
    LocalizedStringKey.init(stringLiteral:)();
    *v15 = Text.init(_:tableName:bundle:comment:)();
    *(v15 + 1) = v38;
    v15[16] = v39 & 1;
    *(v15 + 3) = v40;
    swift_storeEnumTagMultiPayload();
    sub_100036C54();
    v37 = v47;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_12;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_11;
  }

LABEL_5:
  v43 = v9;
  v31 = sub_100039674(v20);
  sub_1000385E8(v20, 0);
  v32 = v31[2];
  if (!v32)
  {
    v33 = &_swiftEmptyArrayStorage;
LABEL_9:
    v49 = v33;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v31;
    sub_100039900(0, &qword_1000DB7C0, &type metadata for String, &type metadata accessor for Array);
    sub_100039D04(0, &qword_1000DB7C8, sub_1000366B4);
    sub_100036AA0();
    sub_100036CCC();
    v34 = v44;
    ForEach<>.init(_:id:content:)();
    v35 = v45;
    v36 = v43;
    (*(v45 + 16))(v15, v34, v43);
    swift_storeEnumTagMultiPayload();
    sub_100036C54();
    v37 = v47;
    _ConditionalContent<>.init(storage:)();
    (*(v35 + 8))(v34, v36);
LABEL_12:
    sub_100039794(v37, v7);
    swift_storeEnumTagMultiPayload();
    sub_100036BB8();
    _ConditionalContent<>.init(storage:)();
    return sub_100039814(v37);
  }

  v41[0] = v17;
  v41[1] = v4;
  v33 = sub_100031D38(v32, 0);
  v42 = sub_100033BD0(&v49, v33 + 4, v32, v31);

  result = sub_10000F754();
  if (v42 == v32)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100035AF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_100039898();

  Text.init<A>(_:)();
  sub_1000366B4();
  sub_100036D74();
  return Section<>.init(header:content:)();
}

uint64_t sub_100035BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v4 = sub_100033388(a2, a3);
    if (v5)
    {
      v6 = *(*(a1 + 56) + 8 * v4);
    }
  }

  v9 = sub_10007A03C(v7);
  sub_100038604(&v9);

  swift_getKeyPath();
  sub_100039A2C(0, &qword_1000DA868, sub_10003677C, &type metadata accessor for Array);
  sub_1000367C8();
  sub_100036A18();
  sub_100039E88(&qword_1000DB848, sub_1000367C8);
  return ForEach<>.init(_:id:content:)();
}

void sub_100035D38(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 messageIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_100035D90(void **a1)
{
  v1 = *a1;
  sub_100036880();
  sub_100039E88(&qword_1000DB800, sub_100036880);
  sub_1000369C4();
  v2 = v1;
  return NavigationLink.init(destination:label:)();
}

__n128 sub_100035E58@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  sub_100035EEC(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_100035EEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 categoryIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 categoryIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100039898();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.body.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_1000385F4(v10, v12, v14 & 1);

  static Color.primary.getter();
  v20 = Text.foregroundColor(_:)();
  v43 = v21;
  v44 = v20;
  v42 = v22;
  v45 = v23;

  sub_1000385F4(v15, v17, v19 & 1);

  v24 = [a1 creationDate];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10009ACA0(v25);

  v26 = Text.init<A>(_:)();
  v28 = v27;
  LOBYTE(v17) = v29;
  static Font.caption.getter();
  v30 = Text.font(_:)();
  v32 = v31;
  LOBYTE(v12) = v33;

  sub_1000385F4(v26, v28, v17 & 1);

  static Color.secondary.getter();
  v34 = Text.foregroundColor(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_1000385F4(v30, v32, v12 & 1);

  *a2 = v44;
  *(a2 + 8) = v43;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v45;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v38 & 1;
  *(a2 + 56) = v40;
  sub_1000385D8(v44, v43, v42 & 1);

  sub_1000385D8(v34, v36, v38 & 1);

  sub_1000385F4(v34, v36, v38 & 1);

  sub_1000385F4(v44, v43, v42 & 1);
}

uint64_t sub_100036224(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000362BC, v4, v3);
}

uint64_t sub_1000362BC()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1000238D8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100036320(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 clientIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_5;
  }

  v9 = sub_100033388(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:
    v22 = [v3 clientIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v23;

    sub_100039900(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000AE610;
    *(v24 + 32) = v3;
    v25 = v3;
    v26 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a1;
    v21 = v24;
    goto LABEL_6;
  }

  v12 = *(*(v8 + 56) + 8 * v9);

  v13 = [v3 clientIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_100039900(0, &qword_1000DBB00, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AE610;
  *(inited + 32) = v3;
  v18 = v3;
  sub_10006155C(inited);
  v19 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *a1;
  v21 = v12;
LABEL_6:
  sub_1000394F8(v21, v14, v16, isUniquelyReferenced_nonNull_native);

  *a1 = v28;
  return result;
}

void sub_100036544()
{
  if (!qword_1000DB7A0)
  {
    sub_1000373BC(255, &qword_1000DB7A8, &type metadata accessor for _ConditionalContent);
    sub_100036B1C();
    v0 = type metadata accessor for List();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB7A0);
    }
  }
}

void sub_1000365E0()
{
  if (!qword_1000DB7B8)
  {
    sub_100039900(255, &qword_1000DB7C0, &type metadata for String, &type metadata accessor for Array);
    sub_100039D04(255, &qword_1000DB7C8, sub_1000366B4);
    sub_100036AA0();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB7B8);
    }
  }
}

void sub_1000366B4()
{
  if (!qword_1000DB7D0)
  {
    sub_100039A2C(255, &qword_1000DA868, sub_10003677C, &type metadata accessor for Array);
    sub_1000367C8();
    sub_100036A18();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB7D0);
    }
  }
}

unint64_t sub_10003677C()
{
  result = qword_1000DA870;
  if (!qword_1000DA870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DA870);
  }

  return result;
}

void sub_1000367C8()
{
  if (!qword_1000DB7D8)
  {
    sub_100036880();
    sub_100039E88(&qword_1000DB800, sub_100036880);
    sub_1000369C4();
    v0 = type metadata accessor for NavigationLink();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB7D8);
    }
  }
}

void sub_100036880()
{
  if (!qword_1000DB7E0)
  {
    sub_1000368FC(255, &qword_1000DB7E8, &qword_1000DB7F0);
    sub_100036954();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB7E0);
    }
  }
}

void sub_1000368FC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100039BB8(255, a3);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100036954()
{
  result = qword_1000DB7F8;
  if (!qword_1000DB7F8)
  {
    sub_1000368FC(255, &qword_1000DB7E8, &qword_1000DB7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB7F8);
  }

  return result;
}

unint64_t sub_1000369C4()
{
  result = qword_1000DB808;
  if (!qword_1000DB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB808);
  }

  return result;
}

unint64_t sub_100036A18()
{
  result = qword_1000DB810;
  if (!qword_1000DB810)
  {
    sub_100039A2C(255, &qword_1000DA868, sub_10003677C, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB810);
  }

  return result;
}

unint64_t sub_100036AA0()
{
  result = qword_1000DB818;
  if (!qword_1000DB818)
  {
    sub_100039900(255, &qword_1000DB7C0, &type metadata for String, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB818);
  }

  return result;
}

unint64_t sub_100036B1C()
{
  result = qword_1000DB820;
  if (!qword_1000DB820)
  {
    sub_1000373BC(255, &qword_1000DB7A8, &type metadata accessor for _ConditionalContent);
    sub_100036BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB820);
  }

  return result;
}

unint64_t sub_100036BB8()
{
  result = qword_1000DB828;
  if (!qword_1000DB828)
  {
    sub_100037440(255, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
    sub_100036C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB828);
  }

  return result;
}

unint64_t sub_100036C54()
{
  result = qword_1000DB830;
  if (!qword_1000DB830)
  {
    sub_1000365E0();
    sub_100036CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB830);
  }

  return result;
}

unint64_t sub_100036CCC()
{
  result = qword_1000DB838;
  if (!qword_1000DB838)
  {
    sub_100039D04(255, &qword_1000DB7C8, sub_1000366B4);
    sub_100036D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB838);
  }

  return result;
}

unint64_t sub_100036D74()
{
  result = qword_1000DB840;
  if (!qword_1000DB840)
  {
    sub_1000366B4();
    sub_100039E88(&qword_1000DB848, sub_1000367C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB840);
  }

  return result;
}

void sub_100036E1C()
{
  if (!qword_1000DB850)
  {
    sub_100036544();
    type metadata accessor for InsetGroupedListStyle();
    sub_100039E88(&qword_1000DB858, sub_100036544);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DB850);
    }
  }
}

void sub_100036EF0()
{
  if (!qword_1000DB860)
  {
    sub_100036E1C();
    sub_100036544();
    type metadata accessor for InsetGroupedListStyle();
    sub_100039E88(&qword_1000DB858, sub_100036544);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DB860);
    }
  }
}

void sub_100036FF4()
{
  if (!qword_1000DB868)
  {
    sub_100037054();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB868);
    }
  }
}

void sub_100037054()
{
  if (!qword_1000DB870)
  {
    sub_100036EF0();
    sub_100036E1C();
    sub_100036544();
    type metadata accessor for InsetGroupedListStyle();
    sub_100039E88(&qword_1000DB858, sub_100036544);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DB870);
    }
  }
}

uint64_t sub_100037190@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100035438(a1);
}

uint64_t sub_1000371BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100018D6C;

  return sub_100036224(v2, v3);
}

unint64_t sub_100037254()
{
  result = qword_1000DB878;
  if (!qword_1000DB878)
  {
    sub_100036FF4();
    sub_100036EF0();
    sub_100036E1C();
    sub_100036544();
    type metadata accessor for InsetGroupedListStyle();
    sub_100039E88(&qword_1000DB858, sub_100036544);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB878);
  }

  return result;
}

void sub_1000373BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    sub_100037440(255, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
    v7 = a3(a1, v6, &type metadata for Text);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100037440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    sub_1000365E0();
    v7 = a3(a1, &type metadata for Text, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000374A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  sub_100039D04(0, &qword_1000DB8E0, sub_100039D68);
  v71 = v3;
  v72 = *(v3 - 8);
  v4 = v72[8];
  v5 = __chkstk_darwin(v3);
  v70 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = &v59 - v7;
  sub_100039C0C();
  v69 = v8;
  v64 = *(v8 - 8);
  v9 = v64[8];
  v10 = __chkstk_darwin(v8);
  v74 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v59 - v12;
  sub_100039B38();
  v67 = v14;
  v60 = *(v14 - 8);
  v15 = v60;
  v16 = *(v60 + 64);
  v17 = __chkstk_darwin(v14);
  v68 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v66 = &v59 - v20;
  v21 = __chkstk_darwin(v19);
  v65 = &v59 - v22;
  __chkstk_darwin(v21);
  v24 = &v59 - v23;
  v78 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = Text.init(_:tableName:bundle:comment:)();
  v80 = v25;
  v81 = v26 & 1;
  v82 = v27;
  sub_1000368FC(0, &qword_1000DB8B8, &qword_1000DB8C0);
  sub_100039ED8();
  v62 = v24;
  Section<>.init(header:content:)();
  v77 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = Text.init(_:tableName:bundle:comment:)();
  v80 = v28;
  v81 = v29 & 1;
  v82 = v30;
  sub_100039A2C(0, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
  sub_100039F50();
  v61 = v13;
  Section<>.init(header:content:)();
  v76 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = Text.init(_:tableName:bundle:comment:)();
  v80 = v31;
  v81 = v32 & 1;
  v82 = v33;
  sub_100039D68();
  sub_100039FE0();
  Section<>.init(header:content:)();
  v75 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = Text.init(_:tableName:bundle:comment:)();
  v80 = v34;
  v81 = v35 & 1;
  v82 = v36;
  v37 = v65;
  Section<>.init(header:content:)();
  v38 = *(v15 + 16);
  v39 = v66;
  v40 = v24;
  v41 = v67;
  v38(v66, v40, v67);
  v59 = v64[2];
  v42 = v13;
  v43 = v69;
  v59(v74, v42, v69);
  v44 = v72[2];
  v45 = v70;
  v44(v70, v73, v71);
  v46 = v37;
  v47 = v41;
  v38(v68, v46, v41);
  v48 = v63;
  v38(v63, v39, v47);
  sub_100039A90();
  v50 = v49;
  v59(&v48[*(v49 + 48)], v74, v43);
  v51 = v71;
  v44(&v48[*(v50 + 64)], v45, v71);
  v52 = v68;
  v53 = v67;
  v38(&v48[*(v50 + 80)], v68, v67);
  v54 = *(v60 + 8);
  v54(v65, v53);
  v55 = v72[1];
  v55(v73, v51);
  v56 = v64[1];
  v57 = v69;
  v56(v61, v69);
  v54(v62, v53);
  v54(v52, v53);
  v55(v70, v51);
  v56(v74, v57);
  return (v54)(v66, v53);
}

uint64_t sub_100037CA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 messageIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 clientIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *a2 = 0xD000000000000012;
  *(a2 + 8) = 0x80000001000A6310;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0xD000000000000011;
  *(a2 + 48) = 0x80000001000A6330;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = 0;
}

uint64_t sub_100037D90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 action];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 categoryIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [a1 criteria];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *a2 = 0xD000000000000013;
  *(a2 + 8) = 0x80000001000A62D0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xD000000000000013;
  *(a2 + 48) = 0x80000001000A62F0;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x6169726574697243;
  *(a2 + 88) = 0xE800000000000000;
  *(a2 + 96) = v13;
  *(a2 + 104) = v15;
  *(a2 + 112) = 0;
}

uint64_t sub_100037EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 sendingDeviceInfo];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v48[0] = 59;
  *(&v48[0] + 1) = 0xE100000000000000;
  v35 = v48;

  v8 = sub_1000341C8(0x7FFFFFFFFFFFFFFFLL, 1, sub_10003A0BC, v34, v4, v6, v7);
  v9 = v8[2];
  if (v9)
  {
    v33 = v4;
    *&v48[0] = &_swiftEmptyArrayStorage;
    sub_10007C57C(0, v9, 0);
    v10 = *&v48[0];
    v11 = v8 + 7;
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      v16 = static String._fromSubstring(_:)();
      v18 = v17;

      *&v48[0] = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_10007C57C((v19 > 1), v20 + 1, 1);
        v10 = *&v48[0];
      }

      v10[2] = v20 + 1;
      v21 = &v10[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v11 += 4;
      --v9;
    }

    while (v9);

    v4 = v33;
  }

  else
  {

    v10 = &_swiftEmptyArrayStorage;
  }

  if (v10[2] != 3)
  {

    *&v41[16] = v44;
    *&v41[32] = v45;
    *&v41[48] = v46;
    *&v41[64] = v47;
    v42 = 1;
    v36 = 1868983881;
    v37 = 0xE400000000000000;
    v38 = v4;
    v39 = v6;
    v40 = 0;
    *v41 = v43;
    v41[80] = 1;
    goto LABEL_14;
  }

  v23 = v10[2];
  if (!v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v23 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v23 >= 3)
  {
    v25 = v10[4];
    v24 = v10[5];
    v27 = v10[6];
    v26 = v10[7];
    v29 = v10[8];
    v28 = v10[9];
    swift_bridgeObjectRetain_n();

    LOBYTE(v43) = 0;
    v36 = 0x4E20656369766544;
    v37 = 0xEB00000000656D61;
    v38 = v25;
    v39 = v24;
    v40 = 0;
    strcpy(&v41[7], "Product Type");
    v41[20] = 0;
    *&v41[21] = -5120;
    *&v41[23] = v27;
    *&v41[31] = v26;
    v41[39] = 0;
    *&v41[47] = 0x646C697542;
    *&v41[55] = 0xE500000000000000;
    *&v41[63] = v29;
    *&v41[71] = v28;
    *&v41[79] = 0;
LABEL_14:
    sub_100039A2C(0, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
    sub_100039F50();
    sub_10003A060();
    result = _ConditionalContent<>.init(storage:)();
    v30 = v48[5];
    *(a2 + 64) = v48[4];
    *(a2 + 80) = v30;
    *(a2 + 96) = v48[6];
    *(a2 + 112) = v49;
    v31 = v48[1];
    *a2 = v48[0];
    *(a2 + 16) = v31;
    v32 = v48[3];
    *(a2 + 32) = v48[2];
    *(a2 + 48) = v32;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10003827C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 creationDate];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_10009ACA0(v5);
  v8 = v7;

  v9 = [a1 expirationDate];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10009ACA0(v10);
  v13 = v12;

  strcpy(a2, "Creation Date");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0x6974617269707845;
  *(a2 + 48) = 0xEF65746144206E6FLL;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = 0;
}

uint64_t sub_1000383A8()
{
  v1 = type metadata accessor for InsetGroupedListStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003997C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *v0;
  sub_100039A2C(0, &qword_1000DB8A0, sub_100039A90, &type metadata accessor for TupleView);
  sub_100039DF8();
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100039E88(&qword_1000DB8F8, sub_10003997C);
  View.listStyle<A>(_:)();
  (*(v2 + 8))(v5, v1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000385D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000385E8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000385F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100038604(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000341B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100038680(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100038680(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10003677C();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100038900(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_100038784(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100038784(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 creationDate];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v9 creationDate];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15 == v11 && v17 == v13)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100038900(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_106:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_109:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_143;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_1000390F8((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100033330(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_133;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1000332A4(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_117:

      return;
    }

LABEL_139:
    v107 = sub_100033330(v4);
    goto LABEL_109;
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 creationDate];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = [v14 creationDate];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v19 == v5 && v21 == v17)
      {
        v127 = 0;
      }

      else
      {
        v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 < v122)
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 creationDate];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v26 creationDate];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (v31 == v5 && v33 == v29)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_25;
            }
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_23:
        v10 = v116;
      }

      v6 = a3;
      v9 = v114;
      if (v127)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_100031644(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_100031644((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_74:
          if (v69)
          {
            goto LABEL_123;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_126;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_130;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_88:
        if (v87)
        {
          goto LABEL_125;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_128;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_1000390F8((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_117;
        }

        if (v105 < v104)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_100033330(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_120;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1000332A4(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_121;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_122;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_124;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_127;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_131;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v42)
  {
    goto LABEL_54;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_43:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 creationDate];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v48 creationDate];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v53 == v5 && v55 == v51)
    {

LABEL_42:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_1000390F8(void **__dst, void **__src, char *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v5 = __src;
    if (a4 != __src || &__src[v11] <= a4)
    {
      v30 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v30;
    }

    v55 = &a4[v11];
    v13 = a4;
    if (v9 >= 8 && v5 > __dst)
    {
      v50 = a4;
LABEL_31:
      v54 = v5;
      v31 = v5 - 1;
      v32 = v4;
      v33 = v55;
      v52 = v31;
      do
      {
        v34 = *(v33 - 1);
        v33 -= 8;
        v35 = *v31;
        v36 = v34;
        v37 = v35;
        v38 = [v36 creationDate];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42 = [v37 creationDate];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (v43 == v39 && v45 == v41)
        {

          v4 = v32 - 8;
        }

        else
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v32 - 8;
          if (v47)
          {
            v13 = v50;
            if (v32 != v54)
            {
              *v4 = *v52;
            }

            if (v55 <= v50 || (v5 = v52, v52 <= __dst))
            {
              v5 = v52;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v13 = v50;
        v31 = v52;
        if (v55 != v32)
        {
          *v4 = *v33;
        }

        v55 = v33;
        v32 = v4;
      }

      while (v33 > v50);
      v55 = v33;
      v5 = v54;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v55 = &v13[v8];
    if (v6 >= 8 && __src < v4)
    {
      v14 = __src;
      v51 = v4;
      while (1)
      {
        v53 = v14;
        v15 = *v13;
        v16 = *v14;
        v17 = v15;
        v18 = [v16 creationDate];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = [v17 creationDate];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = v23 == v19 && v25 == v21;
        if (v26)
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }

        v28 = v53;
        v14 = v53 + 1;
        v29 = v51;
        if (v5 != v53)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v5;
        if (v13 >= v55 || v14 >= v29)
        {
          goto LABEL_48;
        }
      }

LABEL_20:
      v28 = v13;
      v26 = v5 == v13++;
      v14 = v53;
      v29 = v51;
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v28;
      goto LABEL_22;
    }
  }

LABEL_48:
  if (v5 != v13 || v5 >= (v13 + ((v55 - v13 + (v55 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v55 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1000394F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100033388(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100033658(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100033388(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100033A44();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_100039674(unint64_t a1)
{
  v9 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v4;
      sub_100036320(&v9, &v8);

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100039794(uint64_t a1, uint64_t a2)
{
  sub_100037440(0, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039814(uint64_t a1)
{
  sub_100037440(0, &qword_1000DB7B0, &type metadata accessor for _ConditionalContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100039898()
{
  result = qword_1000DB890;
  if (!qword_1000DB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB890);
  }

  return result;
}

void sub_100039900(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10003997C()
{
  if (!qword_1000DB898)
  {
    sub_100039A2C(255, &qword_1000DB8A0, sub_100039A90, &type metadata accessor for TupleView);
    sub_100039DF8();
    v0 = type metadata accessor for List();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB898);
    }
  }
}

void sub_100039A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100039A90()
{
  if (!qword_1000DB8A8)
  {
    sub_100039B38();
    sub_100039C0C();
    sub_100039D04(255, &qword_1000DB8E0, sub_100039D68);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1000DB8A8);
    }
  }
}

void sub_100039B38()
{
  if (!qword_1000DB8B0)
  {
    sub_1000368FC(255, &qword_1000DB8B8, &qword_1000DB8C0);
    v0 = type metadata accessor for Section();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB8B0);
    }
  }
}

void sub_100039BB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100039C0C()
{
  if (!qword_1000DB8C8)
  {
    sub_100039A2C(255, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
    v0 = type metadata accessor for Section();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB8C8);
    }
  }
}

void sub_100039CA4()
{
  if (!qword_1000DB8D8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DB8D8);
    }
  }
}

void sub_100039D04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Section();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100039D68()
{
  if (!qword_1000DB8E8)
  {
    sub_100039A2C(255, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB8E8);
    }
  }
}

unint64_t sub_100039DF8()
{
  result = qword_1000DB8F0;
  if (!qword_1000DB8F0)
  {
    sub_100039A2C(255, &qword_1000DB8A0, sub_100039A90, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB8F0);
  }

  return result;
}

uint64_t sub_100039E88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100039ED8()
{
  result = qword_1000DB900;
  if (!qword_1000DB900)
  {
    sub_1000368FC(255, &qword_1000DB8B8, &qword_1000DB8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB900);
  }

  return result;
}

unint64_t sub_100039F50()
{
  result = qword_1000DB908;
  if (!qword_1000DB908)
  {
    sub_100039A2C(255, &qword_1000DB8D0, sub_100039CA4, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB908);
  }

  return result;
}

unint64_t sub_100039FE0()
{
  result = qword_1000DB910;
  if (!qword_1000DB910)
  {
    sub_100039D68();
    sub_100039F50();
    sub_10003A060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB910);
  }

  return result;
}

unint64_t sub_10003A060()
{
  result = qword_1000DB918;
  if (!qword_1000DB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB918);
  }

  return result;
}

void sub_10003A0E8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v8, "buildMenuWithBuilder:", a1);
  sub_100003DDC(0, &qword_1000DB920, UIMenuSystem_ptr);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    [a1 removeMenuForIdentifier:UIMenuFormat];
    v7[4] = sub_10003A410;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10003A414;
    v7[3] = &unk_1000CDBE0;
    v6 = _Block_copy(v7);

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v6];
    _Block_release(v6);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }
  }
}

void *sub_10003A298(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8 && (v9 = v8, v10 = v6, [v9 action], LOBYTE(v9) = static Selector.== infix(_:_:)(), v10, (v9 & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

Class sub_10003A414(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100003DDC(0, &qword_1000DB928, UIMenuElement_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t type metadata accessor for AuxiliaryProfilesDataSource()
{
  result = qword_1000DB938;
  if (!qword_1000DB938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A5B0(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1000DB930) = a1;
  sub_100015EA0(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v10 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  v13 = a1;
  _typeName(_:qualified:)();
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v21, "MutableArray<");
  HIWORD(v21[1]) = -4864;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = MutableArrayDataSource.init(arrangedSections:identifier:)();

  sub_10008AB04();

  return v19;
}

void sub_10003A854()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10003A8B8(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:a1];
  [a2 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_10003A974()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003A9CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  static UIListContentConfiguration.header()();
  v4 = type metadata accessor for HeaderItem();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
  a1[3] = v4;
  result = sub_10003AD8C(&qword_1000DAE78, &type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_10003AADC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_1000290E4(a1, a2, WitnessTable);
}

id sub_10003ACAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalProfileCharacteristicsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003AD08(uint64_t a1)
{
  *(a1 + 8) = sub_10003AD8C(&qword_1000DB9B0, type metadata accessor for AuxiliaryProfilesDataSource);
  result = sub_10003AD8C(&qword_1000DB9B8, type metadata accessor for AuxiliaryProfilesDataSource);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10003AD8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003ADD4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InternalProfileCharacteristicsViewController();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHealthStore:a1 inEditMode:1];
  [v13 setAccessType:2];
  v14 = [v13 navigationItem];
  sub_100003DDC(0, &qword_1000DB9C8, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v14 setLeftBarButtonItems:isa];

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = a2;
  aBlock[4] = sub_10003B7FC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CDCC8;
  v18 = _Block_copy(aBlock);
  v19 = v13;
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003AD8C(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015EA0(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v23);
}

uint64_t sub_10003B168(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  type metadata accessor for MedicalIDCache();
  v43 = static MedicalIDCache.globalCache(for:)();
  v20 = dispatch thunk of MedicalIDCache.medicalIDDataResult.getter();
  v21 = v20;
  if (v20 >= 3)
  {
    static Logger.view.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Found cached Medical ID for MedicalIDViewController", v27, 2u);
    }

    (*(v13 + 8))(v19, v12);
  }

  else
  {
    sub_10003B7E4(v20);
    static Logger.view.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "No Medical ID found for MedicalIDViewController", v24, 2u);
    }

    (*(v13 + 8))(v17, v12);
    v21 = 0;
  }

  v41 = v21;
  v28 = [objc_opt_self() standardConfiguration];
  [v28 setIsDeletionAvailable:1];
  [v28 setSuggestHealthData:1];
  v29 = [objc_allocWithZone(MIUIMedicalIDViewController) initWithHealthStore:a1 medicalIDData:v21 displayConfiguration:v28];
  sub_100003DDC(0, &qword_1000DB9C0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100003DDC(0, &qword_1000DB9C8, UIBarButtonItem_ptr);
  v42 = v30;
  v50.value.super.super.isa = v30;
  v50.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v50, v51).super.super.isa;
  v32 = [v29 navigationItem];
  [v32 setRightBarButtonItem:isa];

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  *(v34 + 24) = a2;
  aBlock[4] = sub_10003B81C;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CDC78;
  v35 = _Block_copy(aBlock);
  v36 = v29;
  v37 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003AD8C(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015EA0(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  v38 = v44;
  v39 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v48 + 8))(v38, v39);
  return (*(v45 + 8))(v11, v46);
}

void sub_10003B7E4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_10003B824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompoundSectionedDataSource();
  v16 = method lookup function for CompoundSectionedDataSource();
  v16(a1, a2, a3, a4);
  v17 = *(v5 + qword_1000DB9D8);
  if (PrimarySecondaryDataSource.identifier.getter() == a1 && v18 == a2)
  {

LABEL_8:
    v22 = sub_100014D3C();
    static Logger.pinnedContent.getter();
    swift_bridgeObjectRetain_n();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v54 = v24;
      v56 = v23;
      v25 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58 = v53;
      *v25 = 136315650;
      v26 = _typeName(_:qualified:)();
      v28 = sub_1000036D0(v26, v27, &v58);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2048;
      if (v22 >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 14) = v29;

      *(v25 + 22) = 2080;
      if (v22 >> 62)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55 = v25;
      if (v30)
      {
        v49 = v15;
        v50 = v12;
        v51 = v11;
        v52 = v5;
        v57 = _swiftEmptyArrayStorage;
        result = sub_10007C57C(0, v30 & ~(v30 >> 63), 0);
        if (v30 < 0)
        {
          __break(1u);
          return result;
        }

        v31 = 0;
        v32 = v57;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v33 = *(v22 + 8 * v31 + 32);
          }

          v34 = v33;
          v35 = [v33 uniqueIdentifier];
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v57 = v32;
          v40 = v32[2];
          v39 = v32[3];
          if (v40 >= v39 >> 1)
          {
            sub_10007C57C((v39 > 1), v40 + 1, 1);
            v32 = v57;
          }

          ++v31;
          v32[2] = v40 + 1;
          v41 = &v32[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
        }

        while (v30 != v31);
        v11 = v51;
        v5 = v52;
        v15 = v49;
        v12 = v50;
      }

      v42 = Array.description.getter();
      v44 = v43;

      v45 = sub_1000036D0(v42, v44, &v58);

      v47 = v55;
      v46 = v56;
      *(v55 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v46, v54, "[%s]: Received updates to pinned content, sending update with %ld items: %s", v47, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v12 + 8))(v15, v11);
    v48 = *(v5 + qword_1000DB9E0);
    v58 = v22;

    CurrentValueSubject.send(_:)();
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10003BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002ACA0();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10003B824(v12, v14, v11, a5);

  return (*(v8 + 8))(v11, v7);
}

void sub_10003BDEC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000ACE8(a2, v12);
  sub_10003C16C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000AE100;
  *(v5 + 32) = static SourceProfile.primary.getter();
  sub_10000ACE8(a3, &v11);
  v6 = objc_allocWithZone(type metadata accessor for EditFavoritesCollectionViewController());
  v7 = EditFavoritesCollectionViewController.init(pinnedContentManager:sourceProfiles:healthExperienceStore:)();
  v8 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:v7];
  v9 = [a1 viewController];
  if (v9)
  {
    v10 = v9;
    [v9 presentViewController:v8 animated:1 completion:0];
  }
}

void sub_10003BEF0(void *a1, void *a2, uint64_t a3)
{
  sub_10000ACE8(a3, v14);
  v5 = objc_allocWithZone(type metadata accessor for AllHealthDataViewController());
  v6 = qword_1000E3F58;
  v7 = enum case for Presentation.showAllData(_:);
  v8 = type metadata accessor for Presentation();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  *&v5[qword_1000DDE98] = a2;
  sub_10000ACE8(v14, &v5[qword_1000DDEA0]);
  sub_10000ACE8(v14, v13);
  v9 = type metadata accessor for AllHealthDataDataSource(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_100030B28(a2, v13);
  v12 = CompoundDataSourceCollectionViewController.init(dataSource:)();
  sub_100003B90(v14);
  [a1 showViewController:v12 sender:a1];
}

uint64_t sub_10003C058()
{
  v1 = *(v0 + qword_1000DB9D0);

  v2 = *(v0 + qword_1000DB9D8);

  v3 = *(v0 + qword_1000DB9E0);

  v4 = *(v0 + qword_1000DB9E8);
}

uint64_t sub_10003C0B8()
{
  v0 = CompoundSectionedDataSource.deinit();
  v1 = *(v0 + qword_1000DB9D0);

  v2 = *(v0 + qword_1000DB9D8);

  v3 = *(v0 + qword_1000DB9E0);

  v4 = *(v0 + qword_1000DB9E8);

  return swift_deallocClassInstance();
}

void sub_10003C16C()
{
  if (!qword_1000DBA98)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBA98);
    }
  }
}

unint64_t sub_10003C1BC(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 11:
    case 30:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 32:
      result = 0xD000000000000023;
      break;
    case 7:
    case 17:
    case 40:
      result = 0xD000000000000015;
      break;
    case 8:
    case 12:
    case 25:
    case 39:
      result = 0xD000000000000014;
      break;
    case 9:
    case 10:
    case 13:
    case 15:
    case 27:
      result = 0xD000000000000018;
      break;
    case 14:
    case 21:
    case 37:
      result = 0xD000000000000017;
      break;
    case 18:
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 19:
    case 26:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 24:
    case 29:
      result = 0xD000000000000021;
      break;
    case 28:
    case 31:
      result = 0xD00000000000001DLL;
      break;
    case 33:
      result = 0xD00000000000001ELL;
      break;
    case 34:
    case 38:
      result = 0xD00000000000001CLL;
      break;
    case 35:
    case 42:
      result = 0xD000000000000022;
      break;
    case 41:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10003C4B4(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(v95) = a4;
  v91 = a3;
  v102 = a2;
  v110 = type metadata accessor for DispatchWorkItemFlags();
  v109 = *(v110 - 8);
  v7 = *(v109 + 64);
  __chkstk_darwin(v110);
  v107 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DispatchQoS();
  v106 = *(v108 - 8);
  v9 = *(v106 + 64);
  __chkstk_darwin(v108);
  v105 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchTime();
  v104 = *(v112 - 8);
  v11 = *(v104 + 64);
  v12 = __chkstk_darwin(v112);
  v101 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = &v86 - v14;
  v100 = type metadata accessor for DeepLinkActivityType();
  v99 = *(v100 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v100);
  v111 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Presentation();
  v93 = *(v94 - 8);
  v17 = *(v93 + 64);
  __chkstk_darwin(v94);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042B2C(0, &qword_1000DBB80, &type metadata accessor for Presentation, &type metadata accessor for Optional);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v86 - v22;
  v90 = type metadata accessor for DataTypeDetailConfiguration.Context();
  v89 = *(v90 - 8);
  v24 = *(v89 + 64);
  __chkstk_darwin(v90);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for HKTDataTypeDetailFactory();
  v87 = *(v88 - 8);
  v27 = *(v87 + 64);
  __chkstk_darwin(v88);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_allocWithZone(HKHealthStore) init];
  v31 = type metadata accessor for PinnedContentManager();
  v32 = v30;
  v33 = PinnedContentManager.__allocating_init(healthStore:domain:)();
  sub_100069650(&aBlock);
  if (!v116)
  {
    sub_100042AB0(&aBlock, &qword_1000DBAB0, &unk_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a5);
    v42 = String._bridgeToObjectiveC()();

    v43 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v42 withFailure:v43 withResults:isa];

    return;
  }

  v98 = v32;
  v97 = a1;
  sub_100014D24(&aBlock, &v120);
  v34 = *sub_10000BFFC(&v120, v121);
  UIViewController.resolvedHealthExperienceStore.getter();
  v35 = 0;
  v96 = v33;
  v92 = a5;
  if (a5 <= 0x13u)
  {
    v40 = v97;
    v41 = v111;
    if (a5 == 7)
    {
      sub_10000ACE8(&v119, &aBlock);
      v54 = objc_allocWithZone(type metadata accessor for AllHealthDataViewController());
      (*(v93 + 104))(&v54[qword_1000E3F58], enum case for Presentation.showAllData(_:), v94);
      v55 = v98;
      *&v54[qword_1000DDE98] = v98;
      sub_10000ACE8(&aBlock, &v54[qword_1000DDEA0]);
      sub_10000ACE8(&aBlock, v113);
      v56 = type metadata accessor for AllHealthDataDataSource(0);
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      sub_100030B28(v55, v113);
      v35 = CompoundDataSourceCollectionViewController.init(dataSource:)();
      sub_100003B90(&aBlock);
      goto LABEL_17;
    }

    if (a5 == 18)
    {
      sub_100042B2C(0, &qword_1000DBAA8, &type metadata accessor for ContentKind, &type metadata accessor for _ContiguousArrayStorage);
      v45 = type metadata accessor for ContentKind();
      v46 = *(v45 - 8);
      v47 = *(v46 + 72);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1000AE100;
      (*(v46 + 104))(v49 + v48, enum case for ContentKind.highlight(_:), v45);
      v50 = objc_allocWithZone(type metadata accessor for InternalFeedItemListViewController());
      v51 = InternalFeedItemListViewController.init(contentKinds:)();
LABEL_15:
      v35 = v51;
LABEL_17:
      v59 = v35;
    }
  }

  else
  {
    if (a5 - 20 < 3)
    {
      if ((v95 & 1) != 0 || (v36 = [objc_opt_self() dataTypeWithCode:v91], v37 = v98, !v36))
      {
        v35 = 0;
      }

      else
      {
        v38 = v36;
        HKTDataTypeDetailFactory.init()();
        sub_10000ACE8(&v119, &aBlock);
        v39 = [v37 profileIdentifier];
        (*(v93 + 56))(v23, 1, 1, v94);
        static DataTypeDetailMode.defaultMode(for:presentation:)();

        sub_100043454(v23);
        v113[3] = v31;
        v113[4] = &protocol witness table for PinnedContentManager;
        v113[0] = v96;

        DataTypeDetailConfiguration.Context.init(healthExperienceStore:healthStore:mode:pinnedContentManager:chartContext:restorationUserActivity:)();
        v35 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)();

        (*(v89 + 8))(v26, v90);
        (*(v87 + 8))(v29, v88);
        v85 = v35;
      }

      v40 = v97;
      v41 = v111;
      goto LABEL_18;
    }

    v40 = v97;
    v41 = v111;
    if (a5 == 41)
    {
      sub_10000ACE8(&v119, &aBlock);
      (*(v93 + 104))(v19, enum case for Presentation.summaryFeed(_:), v94);
      v52 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
      v53 = v98;
      v51 = AllTrendsViewController.init(healthStore:healthExperienceStore:additionalPredicates:presentation:customProvenance:)();
      goto LABEL_15;
    }
  }

LABEL_18:
  v60 = v99;
  v61 = v100;
  (*(v99 + 104))(v41, enum case for DeepLinkActivityType.summary(_:), v100);
  v62 = &unk_1000AD000;
  if (v35)
  {
    v63 = objc_opt_self();
    v95 = v35;
    v64 = v35;
    [v63 begin];
    v65 = v122;
    sub_10000BFFC(&v120, v121);
    v66 = *(v65 + 8);
    dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
    [v63 commit];
    v67 = [*sub_10000BFFC(&v120 v121)];
    if (v67)
    {
      v68 = v67;
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (v69)
      {
        v70 = v69;
        [v63 begin];
        v71 = swift_allocObject();
        v71[2] = 0;
        v71[3] = 0;
        v71[4] = v64;
        v117 = sub_100043448;
        v118 = v71;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v115 = sub_100008310;
        v116 = &unk_1000CE320;
        v72 = _Block_copy(&aBlock);
        v73 = v64;

        [v63 setCompletionBlock:v72];
        _Block_release(v72);
        v74 = v73;
        v40 = v97;
        [v70 pushViewController:v74 animated:0];
        [v63 commit];
      }
    }

    else
    {
      v68 = v64;
    }

    v41 = v111;
    v35 = v95;
    v62 = &unk_1000AD000;
  }

  (*(v60 + 8))(v41, v61);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v75 = static OS_dispatch_queue.main.getter();
  v76 = v101;
  static DispatchTime.now()();
  v77 = v103;
  + infix(_:_:)();
  v111 = *(v104 + 8);
  (v111)(v76, v112);
  v78 = swift_allocObject();
  *(v78 + 16) = v92;
  *(v78 + 24) = v102;
  *(v78 + 32) = v35;
  *(v78 + 40) = v40;
  v117 = sub_100043438;
  v118 = v78;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = v62[497];
  v115 = sub_100008310;
  v116 = &unk_1000CE2D0;
  v79 = _Block_copy(&aBlock);

  v80 = v40;
  v81 = v105;
  static DispatchQoS.unspecified.getter();
  v113[0] = _swiftEmptyArrayStorage;
  sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  v82 = v107;
  v83 = v35;
  v84 = v110;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v79);

  (*(v109 + 8))(v82, v84);
  (*(v106 + 8))(v81, v108);
  (v111)(v77, v112);
  sub_100003B90(&v119);

  sub_100003B90(&v120);
}

uint64_t sub_10003D3E4(void *a1, char a2)
{
  v4 = type metadata accessor for DarwinNotificationPublisher.DarwinNotificationName();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22[0] = v5;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting foreground generation test", v16, 2u);
    v5 = v22[0];
  }

  (*(v10 + 8))(v13, v9);
  sub_10003C1BC(a2);
  v17 = String._bridgeToObjectiveC()();

  [a1 startedTest:v17];

  type metadata accessor for DarwinNotificationPublisher();
  (*(v5 + 104))(v8, enum case for DarwinNotificationPublisher.DarwinNotificationName.userInteractiveFeedItemGenerationIdleOrComplete(_:), v4);
  v22[1] = DarwinNotificationPublisher.__allocating_init(name:queue:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000434E0;
  *(v19 + 24) = v18;
  sub_100007C74(&qword_1000DBB88, &type metadata accessor for DarwinNotificationPublisher);
  v20 = a1;
  Publisher.retainingSink(receiveValue:)();
}

void sub_10003D714(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v64 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  v10 = *(v61 + 64);
  __chkstk_darwin(v63);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v65 = *(v13 - 8);
  v14 = *(v65 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  sub_100069650(&aBlock);
  if (!*(&v67 + 1))
  {
    sub_100042AB0(&aBlock, &qword_1000DBAB0, &unk_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a4);
    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v34 withFailure:v35 withResults:isa];

    return;
  }

  v59 = v7;
  v60 = v6;
  sub_100014D24(&aBlock, v73);
  v20 = a4;
  v21 = v75;
  sub_10000BFFC(v73, v74);
  v22 = *(v21 + 8);
  v23 = v20;
  dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
  v24 = [*sub_10000BFFC(v73 v74)];
  if (!v24)
  {
    goto LABEL_20;
  }

  v25 = v24;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_20:
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&aBlock = 0xD000000000000029;
    *(&aBlock + 1) = 0x80000001000A6760;
    v72[0] = [*sub_10000BFFC(v73 v74)];
    sub_100042A54(0, &unk_1000DBAC0, &unk_1000DC3C0, UIViewController_ptr, sub_100003DDC);
    v41._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v41);

    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(v23);
    v38 = String._bridgeToObjectiveC()();

    v39 = String._bridgeToObjectiveC()();

    v40.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v38 withFailure:v39 withResults:v40.super.isa];
    goto LABEL_21;
  }

  v26 = UINavigationController.rootViewController()();
  if (v26 && (v71 = v26, sub_100003DDC(0, &unk_1000DC3C0, UIViewController_ptr), sub_100009630(0, &qword_1000DBAD8), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v67 + 1))
    {
      sub_100014D24(&aBlock, v72);
      sub_10000BFFC(v72, v72[3]);
      v27 = dispatch thunk of PPTScrollViewProviding.scrollViewToTest()();
      if (v27)
      {
        v28 = v27;
        strcpy(&v70, "feedVariation");
        HIWORD(v70._object) = -4864;
        AnyHashable.init<A>(_:)();
        v29 = v64;
        if (*(v64 + 16) && (v30 = sub_100033344(&aBlock), (v31 & 1) != 0))
        {
          sub_100003B34(*(v29 + 56) + 32 * v30, &v71);
          sub_10002E508(&aBlock);
          if (swift_dynamicCast())
          {
            v32 = sub_100084B18(v70);
            if (v32 <= 2)
            {
              v52 = &off_1000CC818;
              if (v32 != 1)
              {
                v52 = &off_1000CC840;
              }

              if (v32)
              {
                v33 = v52;
              }

              else
              {
                v33 = &off_1000CC7E8;
              }

              goto LABEL_35;
            }

            if (v32 <= 4)
            {
              if (v32 == 3)
              {
                v33 = &off_1000CC868;
              }

              else
              {
                v33 = &off_1000CC890;
              }

              goto LABEL_35;
            }

            if (v32 == 5)
            {
              v33 = &off_1000CC8B8;
LABEL_35:
              v53 = sub_100084714(v33);

              v54 = swift_allocObject();
              *(v54 + 16) = v23;
              *(v54 + 24) = v28;
              *(v54 + 32) = v29;
              v55 = v28;

              sub_10006C6C0(v53, sub_100042BDC, v54, v23);

              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_10002E508(&aBlock);
        }

        sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
        v57 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v42 = *(v65 + 8);
        v65 += 8;
        v58 = v42;
        v42(v17, v13);
        v43 = swift_allocObject();
        *(v43 + 16) = v23;
        *(v43 + 24) = v28;
        *(v43 + 32) = v29;
        v68 = sub_100042B20;
        v69 = v43;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v67 = sub_100008310;
        *(&v67 + 1) = &unk_1000CDFD8;
        v44 = _Block_copy(&aBlock);
        v45 = v28;

        static DispatchQoS.unspecified.getter();
        v71 = _swiftEmptyArrayStorage;
        sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
        sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
        sub_100028B74();
        v46 = v62;
        v47 = v60;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v48 = v57;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v44);
        (*(v59 + 8))(v46, v47);
        (*(v61 + 8))(v12, v63);
        v58(v19, v13);
      }

      else
      {
        sub_1000687A4(_swiftEmptyArrayStorage);
        sub_10003C1BC(v23);
        v49 = String._bridgeToObjectiveC()();

        v50 = String._bridgeToObjectiveC()();
        v51 = Dictionary._bridgeToObjectiveC()().super.isa;

        [a1 failedTest:v49 withFailure:v50 withResults:v51];
      }

LABEL_27:
      sub_100003B90(v72);
      goto LABEL_22;
    }
  }

  else
  {
    v68 = 0;
    v67 = 0u;
    aBlock = 0u;
  }

  sub_100042AB0(&aBlock, &qword_1000DBAD0, &qword_1000DBAD8, &protocol descriptor for PPTScrollViewProviding);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  *&aBlock = 0xD000000000000020;
  *(&aBlock + 1) = 0x80000001000A6790;
  v72[0] = UINavigationController.rootViewController()();
  sub_100042A54(0, &unk_1000DBAC0, &unk_1000DC3C0, UIViewController_ptr, sub_100003DDC);
  v37._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v37);

  sub_1000687A4(_swiftEmptyArrayStorage);
  sub_10003C1BC(v23);
  v38 = String._bridgeToObjectiveC()();

  v39 = String._bridgeToObjectiveC()();

  v40.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 failedTest:v38 withFailure:v39 withResults:v40.super.isa];

LABEL_21:
LABEL_22:
  sub_100003B90(v73);
}

uint64_t sub_10003E2EC(void *a1, uint64_t a2, char a3)
{
  v6 = sub_100041CF4(3u, a2);
  v7 = sub_100041CF4(4u, a2);
  v8 = sub_100041CF4(5u, a2);
  setenv("MEASURE_CHART_STARTUP_TIME", "true", 1);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = v8;
  *(v9 + 48) = 0;
  *(v9 + 56) = a1;
  *(v9 + 64) = 0xD00000000000001ALL;
  *(v9 + 72) = 0x80000001000A68E0;
  *(v9 + 80) = v6;
  sub_10006D3CC(a1, v6, 0, sub_1000432FC, v9);
}

uint64_t sub_10003E3F0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10003C1BC(*a1);
  v5 = v4;
  if (v3 == sub_10003C1BC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10003E478()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10003C1BC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003E4DC()
{
  sub_10003C1BC(*v0);
  String.hash(into:)();
}

Swift::Int sub_10003E530()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10003C1BC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003E590@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100041430();
  *a2 = result;
  return result;
}

unint64_t sub_10003E5C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003C1BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10003E5F8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v29 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v34 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v33 = *(v15 + 8);
  v33(v19, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  *(v23 + 24) = a2;
  *(v23 + 32) = v30;
  v25 = v31;
  v24 = v32;
  *(v23 + 40) = v31;
  *(v23 + 48) = v24;
  aBlock[4] = sub_100042BE8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CE050;
  v26 = _Block_copy(aBlock);

  v27 = v25;

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v37 + 8))(v9, v6);
  (*(v35 + 8))(v13, v36);
  v33(v21, v34);
}

void sub_10003E9F0(void *a1, uint64_t a2, char a3)
{
  v6 = sub_100042C40(6, a2);
  sub_10003C1BC(a3);
  if (v6)
  {
    v7 = objc_allocWithZone(RPTScrollViewTestParameters);
    v8 = String._bridgeToObjectiveC()();

    v10 = [v7 initWithTestName:v8 scrollView:a1 completionHandler:0];

    [objc_opt_self() runTestWithParameters:v10];
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();

    v9 = sub_100041CF4(0, a2);
    [a1 _performScrollTest:v10 iterations:v9 delta:{sub_100041CF4(1u, a2)}];
  }
}

void sub_10003EB18(char a1, void *a2, void *a3)
{
  v5 = sub_10006EB68(a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 chartController];
  if (!v7)
  {

LABEL_7:
    _StringGuts.grow(_:)(47);
    v10._object = 0x80000001000A67E0;
    v10._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v10);
    type metadata accessor for _HKDataTypeCode(0);
    _print_unlocked<A, B>(_:_:)();
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a1);
    v11 = String._bridgeToObjectiveC()();

    v12 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a3 failedTest:v11 withFailure:v12 withResults:isa];

    return;
  }

  v8 = v7;
  [v6 _showAllFilters];
  v9 = [v8 primaryGraphViewController];
  v14 = [v9 graphView];

  sub_100042E7C(a3, v14, a1);
}

uint64_t sub_10003ED1C(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v42 = a8;
  v34 = a6;
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v35 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = *(v43 + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTime();
  v40 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v34 - v23;
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v39 = *(v18 + 8);
  v39(v22, v17);
  v26 = swift_allocObject();
  *(v26 + 16) = v35;
  v28 = v36;
  v27 = v37;
  *(v26 + 24) = a1;
  *(v26 + 32) = v28;
  v29 = v38;
  *(v26 + 40) = v27;
  *(v26 + 48) = v29;
  aBlock[4] = v41;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = v42;
  v30 = _Block_copy(aBlock);
  v31 = a1;
  v32 = v28;

  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v45 + 8))(v12, v9);
  (*(v43 + 8))(v16, v44);
  v39(v24, v40);
}

void sub_10003F104(char a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_10006EE1C(a2);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 primaryGraphViewController];
    v14 = [v9 graphView];

    sub_10003F2D8(a3, v14, a4, a1);
  }

  else
  {
    _StringGuts.grow(_:)(47);
    v10._object = 0x80000001000A67E0;
    v10._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v10);
    type metadata accessor for _HKDataTypeCode(0);
    _print_unlocked<A, B>(_:_:)();
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a1);
    v11 = String._bridgeToObjectiveC()();

    v12 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a3 failedTest:v11 withFailure:v12 withResults:isa];
  }
}

void sub_10003F2D8(void *a1, void *a2, uint64_t a3, char a4)
{
  if ((sub_100042C40(6, a3) & 1) != 0 && [objc_opt_self() isRecapAvailable])
  {

    sub_100042E7C(a1, a2, a4);
  }

  else
  {
    v8 = sub_100041CF4(0, a3);
    v9 = sub_100041CF4(1u, a3);
    v10 = sub_100041CF4(2u, a3);
    sub_10003C1BC(a4);
    v11 = String._bridgeToObjectiveC()();

    [a2 testScrollPerformanceWithTestName:v11 iterations:v8 delta:v9 length:v10];
  }
}

void sub_10003F3FC(uint64_t a1, void *a2, char a3)
{
  sub_1000687A4(_swiftEmptyArrayStorage);
  sub_10003C1BC(a3);
  v5 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 finishedTest:v5 extraResults:isa];
}

void sub_10003F4BC(char a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100041CF4(0, a2);
  v9 = sub_100041CF4(1u, a2);
  v10 = sub_100042C40(6, a2);
  if (a3 && (v11 = v10, (v12 = [a3 contentScrollViewForEdge:1]) != 0))
  {
    isa = v12;
    sub_10003C1BC(a1);
    if (v11)
    {
      v13 = objc_allocWithZone(RPTScrollViewTestParameters);
      isa = isa;
      v14 = String._bridgeToObjectiveC()();

      v15 = [v13 initWithTestName:v14 scrollView:isa completionHandler:0];

      v16 = objc_opt_self();
      v17 = v15;
      [v16 runTestWithParameters:v17];
    }

    else
    {
      v17 = String._bridgeToObjectiveC()();

      [(objc_class *)isa _performScrollTest:v17 iterations:v8 delta:v9];
    }
  }

  else
  {
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a1);
    v18 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a4 failedTest:v18 withFailure:v17 withResults:isa];
  }
}

uint64_t sub_10003F6E8(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  sub_10003C1BC(a3);
  v11 = a2;
  v12 = a1;

  v13 = String._bridgeToObjectiveC()();

  [v11 startedTest:v13];

  v14 = swift_allocObject();
  *(v14 + 16) = sub_100043398;
  *(v14 + 24) = v10;
  v17[4] = sub_1000433AC;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10003FAA8;
  v17[3] = &unk_1000CE280;
  v15 = _Block_copy(v17);

  [v12 reportStartupTime:v15];
  _Block_release(v15);
}

uint64_t sub_10003F87C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6)
{
  sub_100042B2C(0, &qword_1000DBB70, sub_1000433D4, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AE110;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Double;
  *(inited + 72) = a3 * 0.001;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = 29549;
  *(inited + 152) = 0xE200000000000000;
  sub_1000687A4(inited);
  swift_setDeallocating();
  sub_1000433D4();
  swift_arrayDestroy();
  sub_10003C1BC(a5);
  v11 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 finishedTest:v11 waitForCommit:0 extraResults:{isa, 0xD000000000000010, 0x80000001000A6950}];

  [a6 reportStartupTime:0];
  v13 = String.utf8CString.getter();
  setenv((v13 + 32), "", 1);
}

uint64_t sub_10003FAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v5(v6, v8, a3);
}

void sub_10003FB24(void *a1, int a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v63 = a7;
  v61 = a5;
  v62 = a2;
  v59 = a10;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  __chkstk_darwin(v15);
  v54 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v55 = *(v18 - 8);
  v56 = v18;
  v19 = *(v55 + 64);
  __chkstk_darwin(v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTime();
  v22 = *(v53 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v53);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v50 - v27;
  v29 = sub_10006EE1C(a1);
  if (v29)
  {
    v59 = v21;
    v60 = v29;
    v30 = v62;
    v31 = v63;
    if ((a4 & 1) != 0 || (a6 & 1) != 0 || a3 == v61)
    {
      sub_10003F6E8(v29, v63, v62, a8, a9);
      v49 = v60;
    }

    else
    {
      [v29 selectTimeScope:a3];
      sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
      v51 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v52 = *(v22 + 8);
      v32 = v53;
      v52(v26, v53);
      v33 = swift_allocObject();
      v34 = v31;
      *(v33 + 16) = v31;
      *(v33 + 24) = v30;
      *(v33 + 32) = a8;
      *(v33 + 40) = a9;
      v35 = v61;
      *(v33 + 48) = v60;
      *(v33 + 56) = v35;
      v68 = sub_10004333C;
      v69 = v33;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_100008310;
      v67 = &unk_1000CE208;
      v36 = _Block_copy(&aBlock);
      v37 = v34;

      v38 = v60;
      v39 = v59;
      static DispatchQoS.unspecified.getter();
      v70 = _swiftEmptyArrayStorage;
      sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
      sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
      sub_100028B74();
      v40 = v54;
      v41 = v58;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v42 = v51;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v57 + 8))(v40, v41);
      (*(v55 + 8))(v39, v56);
      v52(v28, v32);
    }
  }

  else
  {
    v43 = String.utf8CString.getter();
    setenv((v43 + 32), "", 1);

    aBlock = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v44._object = 0x80000001000A6900;
    v44._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v44);
    v70 = v59;
    type metadata accessor for _HKDataTypeCode(0);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 46;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(v62);
    v46 = String._bridgeToObjectiveC()();

    v47 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v63 failedTest:v46 withFailure:v47 withResults:isa];
  }
}

void sub_10004011C(void *a1, char a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a2);
    v8 = String._bridgeToObjectiveC()();

    v9 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a4 failedTest:v8 withFailure:v9 withResults:isa];
    goto LABEL_9;
  }

  isa = a1;
  v7 = [(objc_class *)isa tableView];
  if (!v7)
  {
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a2);
    v8 = String._bridgeToObjectiveC()();

    v9 = String._bridgeToObjectiveC()();
    v13 = Dictionary._bridgeToObjectiveC()().super.isa;

    [a4 failedTest:v8 withFailure:v9 withResults:v13];

    isa = v13;
    goto LABEL_9;
  }

  v8 = v7;
  sub_10003C1BC(a2);
  v9 = String._bridgeToObjectiveC()();

  v10 = sub_100041CF4(0, a3);
  v11 = sub_100041CF4(1u, a3);
  [v8 contentSize];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v12 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v8 _performScrollTest:v9 iterations:v10 delta:v11 length:v12];
LABEL_9:
}

void sub_100040398(void *a1, char a2)
{
  sub_10003C1BC(a2);
  v3 = String._bridgeToObjectiveC()();

  [a1 finishedTest:v3 waitForCommit:1 extraResults:0];
}

void sub_10004040C(void *a1, void *a2, char a3, uint64_t a4)
{
  if (a1 && (type metadata accessor for InternalFeedItemListViewController(), (v8 = swift_dynamicCastClass()) != 0))
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 collectionView];
    if (!v11)
    {
      __break(1u);
      return;
    }

    isa = v11;
    sub_10003E9F0(v11, a4, a3);
  }

  else
  {
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a3);
    v12 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a2 failedTest:v12 withFailure:v10 withResults:isa];
  }
}

uint64_t sub_100040560(void *a1, char a2)
{
  v27 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = v10;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Foreground generation idle notification received", v18, 2u);
    v10 = v26;
  }

  (*(v12 + 8))(v15, v11);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = v27;
  *(v20 + 24) = a2;
  aBlock[4] = sub_100043540;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CE3C0;
  v22 = _Block_copy(aBlock);
  v23 = v21;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100007C74(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100042B2C(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v29 + 8))(v6, v3);
  (*(v7 + 8))(v10, v28);
}

void sub_100040980(void *a1, char a2)
{
  sub_1000687A4(_swiftEmptyArrayStorage);
  sub_10003C1BC(a2);
  v4 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 finishedTest:v4 extraResults:isa];
}

unsigned __int8 *sub_100040A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100040FBC();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100040FBC()
{
  v0 = String.subscript.getter();
  v4 = sub_10004103C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10004103C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000379C(v9, 0);
  v12 = sub_100041194(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100041194(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000413B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000413B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000413B4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100041430()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for HealthAppPPT(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthAppPPT(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000415D8()
{
  result = qword_1000DBAA0;
  if (!qword_1000DBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAA0);
  }

  return result;
}

void sub_10004162C(void *a1, uint64_t a2, char a3)
{
  sub_100069650(&aBlock);
  if (v16)
  {
    sub_100014D24(&aBlock, v19);
    sub_10003C1BC(a3);
    v5 = String._bridgeToObjectiveC()();

    [a1 startedTest:v5];

    v6 = v19[4];
    sub_10000BFFC(v19, v19[3]);
    v7 = *(v6 + 8);
    dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a3;
    v17 = sub_1000432D0;
    v18 = v8;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_100008310;
    v16 = &unk_1000CE140;
    v9 = _Block_copy(&aBlock);
    v10 = a1;

    [v10 installCACommitCompletionBlock:v9];
    _Block_release(v9);
    sub_100003B90(v19);
  }

  else
  {
    sub_100042AB0(&aBlock, &qword_1000DBAB0, &qword_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a3);
    v11 = String._bridgeToObjectiveC()();

    v12 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v11 withFailure:v12 withResults:isa];
  }
}

void sub_10004186C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for DeepLinkActivityType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100069650(&aBlock);
  if (!v33)
  {
    sub_100042AB0(&aBlock, &qword_1000DBAB0, &qword_1000DBAB8, &protocol descriptor for RootViewControllerProviding);
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a4);
    v24 = String._bridgeToObjectiveC()();

    v25 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v24 withFailure:v25 withResults:isa];

    return;
  }

  sub_100014D24(&aBlock, v36);
  v11 = v38;
  sub_10000BFFC(v36, v37);
  (*(v7 + 104))(v10, enum case for DeepLinkActivityType.browse(_:), v6);
  v12 = *(v11 + 8);
  dispatch thunk of ViewControllerRouterProtocol.prepareForAppActivity(_:)();
  (*(v7 + 8))(v10, v6);
  v13 = [*sub_10000BFFC(v36 v37)];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (v15 = UINavigationController.rootViewController()()) == 0)
  {
LABEL_9:

LABEL_10:
    sub_1000687A4(_swiftEmptyArrayStorage);
    sub_10003C1BC(a4);
    v27 = String._bridgeToObjectiveC()();

    v28 = String._bridgeToObjectiveC()();
    v29 = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v27 withFailure:v28 withResults:v29];

    goto LABEL_11;
  }

  v16 = v15;
  type metadata accessor for SearchViewController();
  if (!swift_dynamicCastClass())
  {

    v14 = v16;
    goto LABEL_9;
  }

  sub_10003C1BC(a4);
  v17 = String._bridgeToObjectiveC()();

  [a1 startedTest:v17];

  v18 = dispatch thunk of SearchViewController.searchController.getter();
  v19 = [v18 searchBar];

  v20 = String._bridgeToObjectiveC()();
  [v19 setText:v20];

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a4;
  v34 = sub_1000432F0;
  v35 = v21;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v32 = sub_100008310;
  v33 = &unk_1000CE190;
  v22 = _Block_copy(&aBlock);
  v23 = a1;

  [v23 installCACommitCompletionBlock:v22];
  _Block_release(v22);

LABEL_11:
  sub_100003B90(v36);
}

uint64_t sub_100041CF4(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 3u)
  {
    v4 = 0xE600000000000000;
    v9 = 0x545052657375;
    if (a1 != 6)
    {
      v9 = 0x7365676170;
      v4 = 0xE500000000000000;
    }

    v10 = 0xED000065706F6353;
    v11 = 0x656D69546D6F7266;
    if (a1 != 4)
    {
      v11 = 0x6353656D69546F74;
      v10 = 0xEB0000000065706FLL;
    }

    if (a1 <= 5u)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }

    if (a1 <= 5u)
    {
      v4 = v10;
    }
  }

  else
  {
    v4 = 0xEA0000000000736ELL;
    v5 = 0x6F69746172657469;
    v6 = 0xEC0000006874676ELL;
    v7 = 0x654C6C6C6F726373;
    if (a1 != 2)
    {
      v7 = 0x6570795461746164;
      v6 = 0xEC00000065646F43;
    }

    if (a1)
    {
      v5 = 0x65446C6C6F726373;
      v4 = 0xEB0000000061746CLL;
    }

    if (a1 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (a1 > 1u)
    {
      v4 = v6;
    }
  }

  v25 = v8;
  v26 = v4;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v12 = sub_100033344(v27), (v13 & 1) == 0))
  {
    sub_10002E508(v27);
    goto LABEL_27;
  }

  sub_100003B34(*(a2 + 56) + 32 * v12, v28);
  sub_10002E508(v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = HIBYTE(v26) & 0xF;
  if (!v14)
  {

LABEL_27:
    if (a1 > 7u)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return dword_1000AEE58[a1];
    }
  }

  v27[0] = v25;
  v27[1] = v26 & 0xFFFFFFFFFFFFFFLL;
  if (v25 == 43)
  {
    v17 = v14 - 1;
    if (v14 != 1)
    {
      LODWORD(v15) = 0;
      v18 = v27 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v15;
        if (v20 != v20)
        {
          break;
        }

        v15 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v17)
        {
          goto LABEL_46;
        }
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
    v21 = v27;
    while (1)
    {
      v22 = *v21 - 48;
      if (v22 > 9)
      {
        break;
      }

      v23 = 10 * v15;
      if (v23 != v23)
      {
        break;
      }

      v15 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        break;
      }

      ++v21;
      if (!--v14)
      {
        LOBYTE(v17) = 0;
        goto LABEL_46;
      }
    }
  }

  v15 = 0;
  LOBYTE(v17) = 1;
LABEL_46:
  v28[0] = v17;
  v24 = v17;

  if (v24)
  {
    goto LABEL_27;
  }

  return v15;
}

uint64_t sub_100042194(void *a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for DeepLinkActivityType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 7:
      sub_10003C4B4(a1, a2, 0, 1, 7);
      return 1;
    case 8:
    case 9:
      v12 = &enum case for DeepLinkActivityType.browse(_:);
      goto LABEL_5;
    case 10:
      v23 = swift_allocObject();
      *(v23 + 16) = 10;
      *(v23 + 24) = a1;
      *(v23 + 32) = a2;
      *(v23 + 40) = 248;
      v35 = a1;

      v36 = sub_10004353C;
      goto LABEL_18;
    case 11:
      v23 = swift_allocObject();
      *(v23 + 16) = 11;
      *(v23 + 24) = a1;
      *(v23 + 32) = a2;
      *(v23 + 40) = 248;
      v35 = a1;

      v36 = sub_100042A0C;
LABEL_18:
      v25 = v36;
      v26 = v35;
      v27 = 248;
      goto LABEL_23;
    case 12:
    case 13:
      v14 = swift_allocObject();
      *(v14 + 16) = a3;
      *(v14 + 24) = a1;
      *(v14 + 32) = a2;
      *(v14 + 40) = 7;
      v15 = a1;

      sub_10006D3CC(v15, 7, 0, sub_10004353C, v14);
      goto LABEL_30;
    case 14:
      v23 = swift_allocObject();
      *(v23 + 16) = 14;
      *(v23 + 24) = a1;
      *(v23 + 32) = a2;
      *(v23 + 40) = 100;
      v38 = a1;

      v25 = sub_10004353C;
      v26 = v38;
      v27 = 100;
      goto LABEL_23;
    case 15:
      v23 = swift_allocObject();
      *(v23 + 16) = 15;
      *(v23 + 24) = a1;
      *(v23 + 32) = a2;
      *(v23 + 40) = 5;
      v24 = a1;

      v25 = sub_10004353C;
      v26 = v24;
      v27 = 5;
      goto LABEL_23;
    case 16:
      v23 = swift_allocObject();
      *(v23 + 16) = 16;
      *(v23 + 24) = a1;
      *(v23 + 32) = a2;
      *(v23 + 40) = 125;
      v40 = a1;

      v25 = sub_10004353C;
      v26 = v40;
      v27 = 125;
      goto LABEL_23;
    case 17:
      v23 = swift_allocObject();
      *(v23 + 16) = 17;
      *(v23 + 24) = a1;
      *(v23 + 32) = a2;
      *(v23 + 40) = 3;
      v37 = a1;

      v25 = sub_1000429C4;
      v26 = v37;
      v27 = 3;
LABEL_23:
      sub_10006D3CC(v26, v27, 0, v25, v23);
      goto LABEL_30;
    case 18:
      sub_10003C4B4(a1, a2, 0, 1, 18);
      return 1;
    case 19:
      v39 = v9;
      (*(v7 + 104))(v11, enum case for DeepLinkActivityType.browse(_:), v9);
      sub_10004162C(a1, v11, 19);
      (*(v7 + 8))(v11, v39);
      return 1;
    case 20:
      sub_10003C4B4(a1, a2, 7, 0, 20);
      return 1;
    case 21:
      sub_10003C4B4(a1, a2, 172, 0, 21);
      return 1;
    case 22:
      sub_10003C4B4(a1, a2, 5, 0, 22);
      return 1;
    case 23:
      v28 = static KeywordFeatureTag.CommonIdentifier.fitness.getter();
      v30 = v41;
      v42 = String._bridgeToObjectiveC()();

      [a1 startedTest:v42];

      v32 = swift_allocObject();
      *(v32 + 16) = a1;
      *(v32 + 24) = 23;
      v33 = a1;
      v34 = sub_10004356C;
      goto LABEL_28;
    case 24:
      v28 = static KeywordFeatureTag.CommonIdentifier.hearing.getter();
      v30 = v29;
      v31 = String._bridgeToObjectiveC()();

      [a1 startedTest:v31];

      v32 = swift_allocObject();
      *(v32 + 16) = a1;
      *(v32 + 24) = 24;
      v33 = a1;
      v34 = sub_1000429B8;
LABEL_28:
      sub_10006DE7C(v33, v28, v30, 0, v34, v32);
      goto LABEL_29;
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 39:
      sub_10003E2EC(a1, a2, a3);
      return 1;
    case 36:
      v44 = swift_allocObject();
      *(v44 + 16) = 36;
      *(v44 + 24) = a2;
      *(v44 + 32) = a1;
      v45 = a1;

      sub_10006E474(v45, 7, 0, sub_1000429AC, v44);
      goto LABEL_30;
    case 37:
      sub_10004186C(a1, 1918985544, 0xE400000000000000, 37);
      return 1;
    case 38:
      sub_10004186C(a1, 6709603, 0xE300000000000000, 38);
      return 1;
    case 40:
      sub_100042B2C(0, &qword_1000DBAA8, &type metadata accessor for ContentKind, &type metadata accessor for _ContiguousArrayStorage);
      v16 = type metadata accessor for ContentKind();
      v17 = *(v16 - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000AE100;
      (*(v17 + 104))(v20 + v19, enum case for ContentKind.dataSummary(_:), v16);
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      *(v21 + 24) = 40;
      *(v21 + 32) = a2;
      v22 = a1;

      sub_10006E8A4(v22, v20, 0, sub_10004299C, v21);
LABEL_29:

LABEL_30:

      break;
    case 41:
      sub_10003C4B4(a1, a2, 0, 1, 41);
      break;
    case 42:
      sub_10003D3E4(a1, 42);
      break;
    default:
      v12 = &enum case for DeepLinkActivityType.summary(_:);
LABEL_5:
      v13 = v9;
      (*(v7 + 104))(v11, *v12, v9);
      sub_10003D714(a1, a2, v11, a3);
      (*(v7 + 8))(v11, v13);
      break;
  }

  return 1;
}

void sub_100042A54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100042AB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_100042A54(0, a2, a3, a4, sub_100009630);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_100042B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100042B90(uint64_t a1)
{
  v3 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100042BE8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  (*(v0 + 16))();

  sub_10003E9F0(v2, v3, v4);
}

uint64_t sub_100042C40(uint64_t a1, uint64_t a2)
{
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v3 = sub_100033344(v7), (v4 & 1) == 0))
  {
    sub_10002E508(v7);
    goto LABEL_6;
  }

  sub_100003B34(*(a2 + 56) + 32 * v3, v8);
  sub_10002E508(v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    return v6 & 1;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v6 & 1;
}

void sub_100042E7C(void *a1, void *a2, char a3)
{
  v5 = sub_10003C1BC(a3);
  v7 = v6;
  v8 = [a2 window];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = objc_allocWithZone(RPTScrollViewTestParameters);
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 initWithTestName:v19 scrollBounds:2 scrollContentLength:0 direction:v11 completionHandler:{v13, v15, v17, 250.0}];

    [v20 setShouldFlick:1];
    [v20 setIterationDurationFactor:0.4];
    v21 = objc_allocWithZone(RPTScrollViewTestParameters);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithTestName:v22 scrollBounds:3 scrollContentLength:0 direction:v11 completionHandler:{v13, v15, v17, 250.0}];

    [v23 setShouldFlick:1];
    [v23 setIterationDurationFactor:0.8];
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();

    sub_1000157F8();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000AED70;
    *(v26 + 32) = v20;
    *(v26 + 40) = v23;
    sub_1000431F4();
    v27 = v20;
    v28 = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v24 newWithTestName:v25 parameters:isa completionHandler:0];

    [objc_opt_self() runTestWithParameters:v31];
  }

  else
  {
    _StringGuts.grow(_:)(39);

    v30._countAndFlagsBits = v5;
    v30._object = v7;
    String.append(_:)(v30);

    sub_1000687A4(_swiftEmptyArrayStorage);
    v27 = String._bridgeToObjectiveC()();

    v28 = String._bridgeToObjectiveC()();

    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 failedTest:v27 withFailure:v28 withResults:v31];
  }
}

unint64_t sub_1000431F4()
{
  result = qword_1000DBB08;
  if (!qword_1000DBB08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DBB08);
  }

  return result;
}

uint64_t sub_100043258()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10004333C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_10003F6E8(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return [v1 selectTimeScope:v2];
}

uint64_t sub_100043398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  return sub_10003F87C(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32));
}

uint64_t sub_1000433AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1000433D4()
{
  if (!qword_1000DD0B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DD0B0);
    }
  }
}

uint64_t sub_100043454(uint64_t a1)
{
  sub_100042B2C(0, &qword_1000DBB80, &type metadata accessor for Presentation, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000434EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100043570(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Health28HealthAppPPTFeedItemListener_changesMade);
  v2 = *(v1 + OBJC_IVAR____TtC6Health28HealthAppPPTFeedItemListener_changesMade + 8);
  v4 = [a1 fetchedObjects];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  sub_1000437EC();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for FeedItem();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v4 = 0;
  }

LABEL_12:
  v8 = v4;
  v3();
}

id sub_100043734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthAppPPTFeedItemListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000437EC()
{
  result = qword_1000DBC30;
  if (!qword_1000DBC30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DBC30);
  }

  return result;
}

void sub_100043850()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  v6 = String._bridgeToObjectiveC()();
  v12[4] = sub_100043B70;
  v12[5] = v4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100087848;
  v12[3] = &unk_1000CE438;
  v7 = _Block_copy(v12);

  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v6 style:0 handler:v7];
  _Block_release(v7);

  [v3 addAction:v9];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 actionWithTitle:v10 style:1 handler:0];

  [v3 addAction:v11];
  [v5 presentViewController:v3 animated:1 completion:0];
}

void sub_100043A88(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for SummaryFeedViewController();
  v2 = a1;
  TapToRadarButtonDisplaying<>.showDisambiguationTriageAlert(featureName:userConfirmed:)();
}

void sub_100043B9C(uint64_t a1, uint64_t a2)
{
  v17 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v17 startAnimating];
  v5 = [v2 navigationItem];
  v6 = [v5 rightBarButtonItem];

  v7 = [v2 navigationItem];
  v8 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v17];
  [v7 setRightBarButtonItem:v8];

  v9 = [objc_allocWithZone(type metadata accessor for CollectFeedItemCacheDiagnosticsOperation()) init];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v6;
  v12[5] = a1;
  v12[6] = a2;
  aBlock[4] = sub_1000441EC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CE4D8;
  v13 = _Block_copy(aBlock);
  v14 = v9;

  v15 = v6;
  sub_10001EC44(a1);
  sub_10001EC44(sub_1000441EC);

  [v14 setCompletionBlock:v13];
  _Block_release(v13);

  sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
  v16 = static NSOperationQueue.userInitiated.getter();
  [v16 addOperation:v14];
}

uint64_t sub_100043E5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v29);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = dispatch thunk of CollectFeedItemCacheDiagnosticsOperation.logURLs.getter();
  }

  else
  {
    v16 = 0;
  }

  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v18;
  v22 = v27;
  v21 = v28;
  v20[4] = a3;
  v20[5] = v22;
  v20[6] = v21;
  aBlock[4] = sub_1000445A4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000CE528;
  v23 = _Block_copy(aBlock);
  v24 = a3;
  sub_10001EC44(v22);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007CBC(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000445D4();
  sub_100007CBC(&qword_1000DAD48, sub_1000445D4);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v26 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v29);
}

uint64_t sub_100044204(Class isa, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v28 = a3;
  v29 = a5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();

  sub_1000157F8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AE610;
  *(v14 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:1148476];
  sub_100003DDC(0, &qword_1000DBC40, NSNumber_ptr);
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (isa)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v16 = [objc_opt_self() hk_tapToHealthRadarURLWithTitle:v12 description:v13 classification:5 reproducibility:0 keywords:v15.super.isa autoDiagnostics:2 attachments:isa];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v19 = v17;
    URL._bridgeToObjectiveC()(v18);
    v21 = v20;
    sub_1000689C0(_swiftEmptyArrayStorage);
    v22 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 openSensitiveURL:v21 withOptions:v22];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = [Strong navigationItem];

    [v25 setRightBarButtonItem:v28];
  }

  if (a4)
  {
    a4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100044544(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  if (*(v1 + 40))
  {
    v3 = *(v1 + 48);
  }

  return _swift_deallocObject(v1, 56, 7);
}

void sub_1000445D4()
{
  if (!qword_1000DBAF0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBAF0);
    }
  }
}

void *sub_10004463C(uint64_t a1)
{
  v42 = type metadata accessor for AdvertisableFeature.Identifier();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v42);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_10007C57C(0, v6 & ~(v6 >> 63), 0);
    v45 = v50;
    if (v43)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v8 = *(a1 + 36);
    }

    v47 = result;
    v48 = v8;
    v49 = v43 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v6;
      v40 = (v3 + 8);
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35 = v1;
      v36 = a1 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v47;
        v15 = v49;
        v44 = v48;
        v16 = a1;
        sub_1000564EC(v47, v48, v49, a1);
        v17 = v41;
        AdvertisableFeatureModel.identifier.getter();
        v18 = AdvertisableFeature.Identifier.rawValue.getter();
        v20 = v19;
        (*v40)(v17, v42);

        v21 = v45;
        v50 = v45;
        v23 = v45[2];
        v22 = v45[3];
        if (v23 >= v22 >> 1)
        {
          result = sub_10007C57C((v22 > 1), v23 + 1, 1);
          v21 = v50;
        }

        v21[2] = v23 + 1;
        v24 = &v21[2 * v23];
        v24[4] = v18;
        v24[5] = v20;
        v45 = v21;
        if (v43)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          a1 = v16;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v39;
          sub_100048C98(0, &qword_1000DBDB8, &type metadata accessor for Set.Index);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v46, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_10000F210(v47, v48, v49);
            return v45;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v16;
          v25 = 1 << *(v16 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v16 + 36) != v44)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
            v6 = v39;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            v6 = v39;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_10000F210(v14, v44, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_10000F210(v14, v44, 0);
          }

LABEL_33:
          v34 = *(v16 + 36);
          v47 = v25;
          v48 = v34;
          v49 = 0;
          if (v10 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

id sub_100044A4C()
{
  type metadata accessor for HealthNotificationsWelcomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000E3DF0 = result;
  return result;
}

uint64_t sub_100044AA0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return sub_100048380(v3, *a2);
    }

    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v5 == 1)
    {
      if (v3 != v4 || v7 != v8)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  if (!(v3 | v7))
  {
    return v5 == 2 && (v8 | v4) == 0;
  }

  if (v3 ^ 1 | v7)
  {
    if (v5 != 2 || v4 != 2)
    {
      return 0;
    }
  }

  else if (v5 != 2 || v4 != 1)
  {
    return 0;
  }

  return !v8;
}

uint64_t sub_100044B50()
{
  v1 = type metadata accessor for AdvertisableFeature.Location();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[13];
  if (v6)
  {
    v7 = v0[14];
    v8 = v6;
  }

  else
  {
    v9 = v0[11];
    sub_10000BFFC(v0 + 7, v0[10]);
    (*(v2 + 104))(v5, enum case for AdvertisableFeature.Location.healthWelcomeFlow(_:), v1);
    static AdvertisableFeature.Identifier.healthWelcomeFlowIdentifiers.getter();
    v10 = v0;
    v8 = dispatch thunk of HealthPluginAdvertisableFeatureManagerProviding.makeAdvertisableFeatureManager(location:featureIdentifiers:includeFeaturesMadeAvailableByBuddy:)();
    v12 = v11;

    (*(v2 + 8))(v5, v1);
    v13 = v10[13];
    v10[13] = v8;
    v10[14] = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v8;
}

uint64_t sub_100044CD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = a1;
    v17 = v16;
    v31 = v16;
    *v15 = 136315138;
    v18 = _typeName(_:qualified:)();
    v28 = v6;
    v20 = sub_1000036D0(v18, v19, &v31);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] [TCC] Fetching notification authorization status", v15, 0xCu);
    sub_100003B90(v17);
    a1 = v29;

    a2 = v30;

    (*(v8 + 8))(v11, v7);
    v21 = v28;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v21 = v6;
  }

  v22 = sub_10000BFFC(v3 + 2, v3[5]);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = v23;
  v24[5] = v21;
  v25 = *v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100048ACC;
  *(v26 + 24) = v24;

  dispatch thunk of HealthAppNotificationManager.getNotificationSettings(completion:)();
}

uint64_t sub_100044FB4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v43 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v40 - v15;
  static Logger.general.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40[1] = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = v10;
    v40[0] = v21;
    v44[0] = v21;
    *v20 = 136315395;
    v22 = _typeName(_:qualified:)();
    v42 = v9;
    v24 = a1;
    v25 = v14;
    v26 = a5;
    v27 = sub_1000036D0(v22, v23, v44);
    v9 = v42;

    *(v20 + 4) = v27;
    a5 = v26;
    v14 = v25;
    a1 = v24;
    *(v20 + 12) = 2049;
    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] [TCC] Received authorization status: %{private}ld", v20, 0x16u);
    sub_100003B90(v40[0]);
    v10 = v41;
  }

  v28 = *(v10 + 8);
  v28(v16, v9);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100044B50();

      swift_getObjectType();
      v30 = swift_allocObject();
      v30[2] = v43;
      v30[3] = a3;
      v30[4] = a5;

      dispatch thunk of AdvertisableFeatureManaging.determineCurrentAdvertisedFeatures(completion:)();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    static Logger.general.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136315138;
      v35 = _typeName(_:qualified:)();
      v42 = v9;
      v37 = sub_1000036D0(v35, v36, v44);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%s] Authorization status not determined, showing Health Notifications page", v33, 0xCu);
      sub_100003B90(v34);

      v38 = v14;
      v39 = v42;
    }

    else
    {

      v38 = v14;
      v39 = v9;
    }

    v28(v38, v39);
    return v43(1);
  }

  return result;
}

uint64_t sub_1000453AC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, char *a4)
{
  v71 = a4;
  v74 = a3;
  v75 = a2;
  v5 = type metadata accessor for AdvertisableFeatureError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v67 - v11;
  __chkstk_darwin(v10);
  v14 = &v67 - v13;
  v15 = type metadata accessor for Logger();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v67 - v21;
  __chkstk_darwin(v20);
  v24 = &v67 - v23;
  sub_100048B18();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100048BE0(a1, v28, sub_100048B18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v44 = *v28;
    if ((*v28 & 0xC000000000000001) != 0)
    {
      if (v44 < 0)
      {
        v45 = *v28;
      }

      v46 = v22;
      if (__CocoaSet.count.getter())
      {
        goto LABEL_8;
      }
    }

    else
    {
      v46 = v22;
      if (*(v44 + 16))
      {
LABEL_8:
        static Logger.general.getter();

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v49 = 136315394;
          v50 = _typeName(_:qualified:)();
          v52 = sub_1000036D0(v50, v51, &v77);

          *(v49 + 4) = v52;
          *(v49 + 12) = 2080;
          v53 = sub_10004463C(v44);

          v76 = v53;
          sub_100048C48();
          sub_100048E18(&qword_1000DBDB0, sub_100048C48);
          v54 = BidirectionalCollection<>.joined(separator:)();
          v56 = v55;

          v57 = sub_1000036D0(v54, v56, &v77);

          *(v49 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v47, v48, "[%s] Authorization status is correct but there are advertisable features %s, showing Health Notifications page", v49, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v72 + 8))(v46, v73);
        v66 = 1;
        return v75(v66);
      }
    }

    static Logger.general.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v77 = v62;
      *v61 = 136315138;
      v63 = _typeName(_:qualified:)();
      v65 = sub_1000036D0(v63, v64, &v77);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%s] Authorization status is correct and there are no advertisable features, skipping Health Notifications page", v61, 0xCu);
      sub_100003B90(v62);
    }

    (*(v72 + 8))(v24, v73);
    v66 = 0;
    return v75(v66);
  }

  (*(v6 + 32))(v14, v28, v5);
  static Logger.general.getter();
  v29 = *(v6 + 16);
  v29(v12, v14, v5);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v32 = v14;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v77 = v69;
    *v33 = 136315394;
    v34 = _typeName(_:qualified:)();
    v71 = v32;
    v36 = sub_1000036D0(v34, v35, &v77);
    v68 = v30;
    v37 = v36;

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v29(v70, v12, v5);
    v38 = String.init<A>(describing:)();
    v40 = v39;
    v41 = *(v6 + 8);
    v41(v12, v5);
    v42 = sub_1000036D0(v38, v40, &v77);
    v32 = v71;

    *(v33 + 14) = v42;
    v43 = v68;
    _os_log_impl(&_mh_execute_header, v68, v31, "[%s] Error when determining advertised features, will not show Health Notifications page: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v6 + 8);
    v41(v12, v5);
  }

  (*(v72 + 8))(v19, v73);
  v75(0);
  return (v41)(v32, v5);
}

uint64_t sub_100045B08(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v9;
    v19 = v18;
    v37 = v18;
    *v17 = 136315138;
    v20 = _typeName(_:qualified:)();
    v36 = a1;
    v22 = sub_1000036D0(v20, v21, &v37);
    v33 = v8;
    v23 = a3;
    v24 = v22;
    LOBYTE(a1) = v36;

    *(v17 + 4) = v24;
    a3 = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] [TCC] Fetching notification authorization status", v17, 0xCu);
    sub_100003B90(v19);

    v25 = v33;
    (*(v35 + 8))(v13, v34);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    v25 = v8;
  }

  v26 = sub_10000BFFC(v4 + 2, v4[5]);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a1 & 1;
  *(v28 + 32) = a2;
  *(v28 + 40) = a3;
  *(v28 + 48) = v25;
  v29 = *v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100048A58;
  *(v30 + 24) = v28;

  dispatch thunk of HealthAppNotificationManager.getNotificationSettings(completion:)();
}

uint64_t sub_100045E0C(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  LODWORD(v7) = a3;
  v10 = type metadata accessor for Logger();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v7;
    v7 = v16;
    v17 = swift_slowAlloc();
    v33 = a5;
    v18 = v17;
    v35[0] = v17;
    *v7 = 136315395;
    v19 = _typeName(_:qualified:)();
    v21 = sub_1000036D0(v19, v20, v35);
    v31 = v10;
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = v21;

    *(v7 + 4) = v25;
    a4 = v24;
    a2 = v23;
    a1 = v22;
    *(v7 + 12) = 2049;
    *(v7 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] [TCC] Received authorization status: %{private}ld", v7, 0x16u);
    sub_100003B90(v18);
    a5 = v33;

    LOBYTE(v7) = v32;

    (*(v34 + 8))(v13, v31);
  }

  else
  {

    (*(v34 + 8))(v13, v10);
  }

  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100046C0C(a1 == 1, v7 & 1, a4, a5);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v27 = swift_allocObject();
    v28 = a4;
    v29 = v27;
    *(v27 + 16) = v28;
    *(v27 + 24) = a5;
    *(v27 + 32) = a2;
    *(v27 + 40) = v7 & 1;

    sub_1000461A0(v7 & 1, sub_100048A70, v29);
  }
}

uint64_t sub_1000460E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, char a8)
{
  if (a4 < 2u || (a2 | a3) != 0)
  {
    return a5(a2, a3, a4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100046C0C((a1 & 1) == 0, a8 & 1, a5, a6);
  }

  return result;
}

uint64_t sub_1000461A0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a1;
  v6 = *v3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    v17 = _typeName(_:qualified:)();
    v27 = v6;
    v19 = sub_1000036D0(v17, v18, &v31);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s [TCC] Showing TCC notification prompt", v15, 0xCu);
    sub_100003B90(v16);

    a3 = v28;

    (*(v8 + 8))(v11, v7);
    v20 = v27;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v20 = v6;
  }

  sub_100048594();
  v21 = sub_10000BFFC(v4 + 2, v4[5]);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  *(v23 + 24) = a3;
  *(v23 + 32) = v30 & 1;
  *(v23 + 40) = v22;
  *(v23 + 48) = v20;
  v24 = *v21;

  dispatch thunk of HealthAppNotificationManager.requestAuthorization(addCriticalAlerts:completionHandler:)();
}

uint64_t sub_100046460(int a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5)
{
  v66 = a4;
  v67 = a3;
  v65 = a1;
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for Logger();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v62 - v17;
  __chkstk_darwin(v16);
  v21 = &v62 - v20;
  if (a2)
  {
    if ((a5 & 1) == 0)
    {
      v24 = 0;
      v26 = 0;
      v27 = 2;
      v22 = v65;
      goto LABEL_10;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v22 = v65;
    if (qword_1000DA540 == -1)
    {
LABEL_4:
      v23 = qword_1000E3DF0;
      static Locale.current.getter();
      v24 = String.init(localized:table:bundle:locale:comment:)();
      v26 = v25;
      v27 = 1;
LABEL_10:
      v67(v22 & 1, v24, v26, v27);
      return sub_1000489F0(v24, v26, v27);
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v64 = v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    static Logger.general.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v68[0] = v63;
      *v43 = 136315138;
      v44 = _typeName(_:qualified:)();
      v46 = sub_1000036D0(v44, v45, v68);

      *(v43 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s Somehow deallocated while waiting for authorization callback", v43, 0xCu);
      sub_100003B90(v63);
    }

    (*(v64 + 8))(v15, v11);
    v22 = v65;
    if ((a5 & 1) == 0)
    {
      v24 = 0;
      v26 = 0;
      v27 = 2;
      goto LABEL_10;
    }

    String.LocalizationValue.init(stringLiteral:)();
    if (qword_1000DA540 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v29 = *sub_10000BFFC((Strong + 16), *(Strong + 40));
  v30 = dispatch thunk of HealthAppNotificationManager.getNotificationSettings()();
  v31 = [v30 authorizationStatus];

  if (v31)
  {
    static Logger.general.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v68[0] = v35;
      *v34 = 136315394;
      v36 = _typeName(_:qualified:)();
      v38 = sub_1000036D0(v36, v37, v68);

      *(v34 + 4) = v38;
      *(v34 + 12) = 1024;
      v39 = v65;
      *(v34 + 14) = v65 & 1;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s [TCC] Did select notification authorization: %{BOOL}d", v34, 0x12u);
      sub_100003B90(v35);

      (*(v64 + 8))(v21, v11);
    }

    else
    {

      (*(v64 + 8))(v21, v11);
      v39 = v65;
    }

    v56 = static NSNotificationName.healthAppNotificationSettingsDidChange.getter();
    v57 = [objc_opt_self() defaultCenter];
    [v57 postNotificationName:v56 object:0];

    v58 = objc_allocWithZone(type metadata accessor for PostNotificationOperation());
    v59 = v56;
    v60 = PostNotificationOperation.init(name:userInfo:)();
    sub_100048A0C();
    v61 = static NSOperationQueue.userInitiated.getter();
    [v61 addOperation:v60];

    sub_10009A9B8(v39 & 1);
    v54 = v39 & 1;
    v55 = 0;
  }

  else
  {
    static Logger.general.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v68[0] = v50;
      *v49 = 136315138;
      v51 = _typeName(_:qualified:)();
      v53 = sub_1000036D0(v51, v52, v68);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s [TCC] Did not select valid authorization. Remaining in buddy flow", v49, 0xCu);
      sub_100003B90(v50);
    }

    (*(v64 + 8))(v18, v11);
    v54 = v65 & 1;
    v55 = 2;
  }

  v67(v54, v55, 0, 2);
}

uint64_t sub_100046B60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = AdvertisableFeatureModel.shouldEnable.getter();
  if (v5)
  {
    AdvertisableFeatureModel.shouldEnable.setter();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return v5 & 1;
}

uint64_t sub_100046C0C(char a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2 & 1) != 0 && (a1)
  {
    sub_100044B50();
    ObjectType = swift_getObjectType();
    __chkstk_darwin(ObjectType);
    dispatch thunk of AdvertisableFeatureManaging.modifyAdvertisedModels(modifierBlock:)();
    swift_unknownObjectRelease();
    if (_swiftEmptyArrayStorage >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();

      if (v12)
      {
        return a3(1, 0, 2);
      }
    }

    else
    {
      v10 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
        return a3(1, 0, 2);
      }
    }
  }

  sub_100044B50();
  swift_getObjectType();
  dispatch thunk of AdvertisableFeatureManaging.freezeAdvertisementState()();
  swift_unknownObjectRelease();
  v13 = v5[13];
  v14 = v5[14];
  swift_getObjectType();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = v8;
  swift_unknownObjectRetain();

  dispatch thunk of AdvertisableFeatureManaging.commitEnablement(completion:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100046E28(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v66 = a5;
  v67 = a2;
  v73 = a4;
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v69 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v68 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for AdvertisableFeatureError();
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v63[-v19];
  __chkstk_darwin(v18);
  v22 = &v63[-v21];
  v23 = type metadata accessor for Logger();
  v71 = *(v23 - 8);
  v72 = v23;
  v24 = *(v71 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v63[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v29 = &v63[-v28];
  sub_10004881C();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v63[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100048BE0(a1, v33, sub_10004881C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = a3;
    v34 = v70;
    (*(v70 + 32))(v22, v33, v13);
    static Logger.advertisableFeatures.getter();
    v35 = *(v34 + 16);
    v35(v20, v22, v13);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = v22;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v64 = v37;
      v40 = v39;
      v65 = swift_slowAlloc();
      v74[0] = v65;
      *v40 = 136315394;
      v41 = _typeName(_:qualified:)();
      v43 = sub_1000036D0(v41, v42, v74);
      v66 = v22;
      v44 = v43;

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v35(v17, v20, v13);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = *(v70 + 8);
      v48(v20, v13);
      v49 = sub_1000036D0(v45, v47, v74);
      v38 = v66;

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v36, v64, "[%s] Error when committing features, presenting alert then continuing: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v48 = *(v70 + 8);
      v48(v20, v13);
    }

    (*(v71 + 8))(v27, v72);
    String.LocalizationValue.init(stringLiteral:)();
    v60 = v67;
    if (qword_1000DA540 != -1)
    {
      swift_once();
    }

    v61 = qword_1000E3DF0;
    static Locale.current.getter();
    v62 = String.init(localized:table:bundle:locale:comment:)();
    v60(v62);

    return (v48)(v38, v13);
  }

  else
  {
    v50 = a3;
    v51 = v73;
    static Logger.advertisableFeatures.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v74[0] = v55;
      *v54 = 136315138;
      v56 = _typeName(_:qualified:)();
      v58 = sub_1000036D0(v56, v57, v74);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%s] Successfully committed enablement of features", v54, 0xCu);
      sub_100003B90(v55);
    }

    (*(v71 + 8))(v29, v72);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1000474E4(v50, v51);
    }
  }

  return result;
}

uint64_t sub_1000474E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_100044B50();
  swift_getObjectType();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;

  dispatch thunk of AdvertisableFeatureManaging.determinePostCommitWorkItems(completion:)();
  swift_unknownObjectRelease();
}

uint64_t sub_1000475C4(uint64_t a1, void (*a2)(uint64_t, void, uint64_t), uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v59 = a3;
  v60 = a2;
  v5 = type metadata accessor for AdvertisableFeatureError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v52 - v12;
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = type metadata accessor for Logger();
  v57 = *(v16 - 8);
  v58 = v16;
  v17 = *(v57 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  sub_1000488C8();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100048BE0(a1, v26, sub_1000488C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v15, v26, v5);
    static Logger.advertisableFeatures.getter();
    v27 = *(v6 + 16);
    v27(v13, v15, v5);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v55 = v15;
      v53 = v28;
      v31 = v30;
      v54 = swift_slowAlloc();
      v61 = v54;
      *v31 = 136315394;
      v32 = _typeName(_:qualified:)();
      v34 = sub_1000036D0(v32, v33, &v61);
      LODWORD(v56) = v29;
      v35 = v34;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v27(v10, v13, v5);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      v39 = *(v6 + 8);
      v39(v13, v5);
      v40 = sub_1000036D0(v36, v38, &v61);

      *(v31 + 14) = v40;
      v41 = v53;
      _os_log_impl(&_mh_execute_header, v53, v56, "[%s] Error when determining post work items, continuing as commit succeeded: %s", v31, 0x16u);
      swift_arrayDestroy();

      v15 = v55;
    }

    else
    {

      v39 = *(v6 + 8);
      v39(v13, v5);
    }

    (*(v57 + 8))(v20, v58);
    v60(0, 0, 2);
    return (v39)(v15, v5);
  }

  else
  {
    v42 = *v26;
    static Logger.advertisableFeatures.getter();
    swift_bridgeObjectRetain_n();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61 = v46;
      *v45 = 136315394;
      v47 = _typeName(_:qualified:)();
      v49 = sub_1000036D0(v47, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2048;
      v50 = *(v42 + 16);

      *(v45 + 14) = v50;

      _os_log_impl(&_mh_execute_header, v43, v44, "[%s] Retrieved %ld post commit work items", v45, 0x16u);
      sub_100003B90(v46);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v57 + 8))(v22, v58);
    if (*(v42 + 16))
    {
      v60(v42, 0, 0);
    }

    else
    {

      return (v60)(0, 0, 2);
    }
  }
}

uint64_t sub_100047B74()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[12] & 1) == 0)
  {
    v16 = v1;
    *(v1 + 96) = 1;
    static Logger.advertisableFeatures.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_1000036D0(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%s] Performing prerequisite work", v11, 0xCu);
      sub_100003B90(v12);
    }

    (*(v4 + 8))(v8, v3);
    sub_100044B50();
    swift_getObjectType();
    *(swift_allocObject() + 16) = v2;
    dispatch thunk of AdvertisableFeatureManaging.performPrerequisiteWork(completion:)();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100047DC0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for AdvertisableFeatureError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - v9;
  __chkstk_darwin(v8);
  v53 = &v47 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  sub_10004881C();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048BE0(a1, v23, sub_10004881C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v13;
    v50 = v12;
    v24 = v53;
    (*(v4 + 32))(v53, v23, v3);
    static Logger.advertisableFeatures.getter();
    v25 = *(v4 + 16);
    v25(v10, v24, v3);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v28 = 136315394;
      v29 = _typeName(_:qualified:)();
      LODWORD(v52) = v27;
      v31 = sub_1000036D0(v29, v30, &v54);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v25(v51, v10, v3);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      v35 = *(v4 + 8);
      v35(v10, v3);
      v36 = sub_1000036D0(v32, v34, &v54);

      *(v28 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v26, v52, "[%s] Prerequisite work failed to complete with error: %s", v28, 0x16u);
      swift_arrayDestroy();

      (*(v49 + 8))(v17, v50);
      return (v35)(v53, v3);
    }

    else
    {

      v46 = *(v4 + 8);
      v46(v10, v3);
      (*(v49 + 8))(v17, v50);
      return (v46)(v53, v3);
    }
  }

  else
  {
    static Logger.advertisableFeatures.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *v40 = 136315138;
      v42 = _typeName(_:qualified:)();
      v44 = v13;
      v45 = sub_1000036D0(v42, v43, &v54);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%s] Prerequisite work completed", v40, 0xCu);
      sub_100003B90(v41);

      return (*(v44 + 8))(v19, v12);
    }

    else
    {

      return (*(v13 + 8))(v19, v12);
    }
  }
}

uint64_t sub_100048314()
{
  sub_100003B90(v0 + 2);
  sub_100003B90(v0 + 7);
  v1 = v0[13];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100048380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_100048E18(&qword_1000DBDC0, &type metadata accessor for AdvertisableFeaturePostCommitWorkItem);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100048594()
{
  type metadata accessor for FoundationPluginBundleProvider();
  static FoundationPluginBundleProvider.sharedInstance.getter();
  v0 = dispatch thunk of PluginBundleProvider.notificationDelegateProvidingPluginBundles.getter();

  if (!(v0 >> 62))
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = &_swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v1 = _CocoaArrayWrapper.endIndex.getter();
  if (!v1)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = 0;
  v3 = &_swiftEmptyArrayStorage;
  do
  {
    v4 = v2;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v0 + 8 * v4 + 32);
      }

      v6 = v5;
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      sub_1000487B4();
      NSBundle.getPluginAppDelegateObject<A>(as:)();

      if (v19)
      {
        break;
      }

      ++v4;
      if (v2 == v1)
      {
        goto LABEL_23;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100031A6C(0, v3[2] + 1, 1, v3);
    }

    v8 = v3[2];
    v7 = v3[3];
    v9 = v19;
    if (v8 >= v7 >> 1)
    {
      v10 = sub_100031A6C((v7 > 1), v8 + 1, 1, v3);
      v9 = v19;
      v3 = v10;
    }

    v3[2] = v8 + 1;
    *&v3[2 * v8 + 4] = v9;
  }

  while (v2 != v1);
LABEL_23:

  v12 = v3 + 5;
  v13 = -v3[2];
  v14 = -1;
  while (1)
  {
    v15 = v13 + v14;
    if (v13 + v14 == -1)
    {
LABEL_27:

      return v15 != -1;
    }

    if (++v14 >= v3[2])
    {
      break;
    }

    v16 = v12 + 2;
    v17 = *(v12 - 1);
    v18 = *v12;
    swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v18) = dispatch thunk of PluginNotificationCenterDelegateProviding.providesCriticalAlerts()();
    result = swift_unknownObjectRelease();
    v12 = v16;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000487B4()
{
  result = qword_1000DB6F8;
  if (!qword_1000DB6F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DB6F8);
  }

  return result;
}

void sub_10004881C()
{
  if (!qword_1000DBD78)
  {
    type metadata accessor for AdvertisableFeatureError();
    sub_100048E18(&qword_1000DBD80, &type metadata accessor for AdvertisableFeatureError);
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBD78);
    }
  }
}

void sub_1000488C8()
{
  if (!qword_1000DBD88)
  {
    sub_100048974();
    type metadata accessor for AdvertisableFeatureError();
    sub_100048E18(&qword_1000DBD80, &type metadata accessor for AdvertisableFeatureError);
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBD88);
    }
  }
}

void sub_100048974()
{
  if (!qword_1000DBD90)
  {
    type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBD90);
    }
  }
}

uint64_t sub_1000489E0(int a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  return sub_100046460(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t sub_1000489F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_100048A0C()
{
  result = qword_1000DBC38;
  if (!qword_1000DBC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBC38);
  }

  return result;
}

uint64_t sub_100048A80(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100048AD8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2([a1 authorizationStatus]);
}

void sub_100048B18()
{
  if (!qword_1000DBD98)
  {
    sub_100048C98(255, &qword_1000DBDA0, &type metadata accessor for Set);
    type metadata accessor for AdvertisableFeatureError();
    sub_100048E18(&qword_1000DBD80, &type metadata accessor for AdvertisableFeatureError);
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBD98);
    }
  }
}

uint64_t sub_100048BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100048C48()
{
  if (!qword_1000DB7C0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DB7C0);
    }
  }
}

void sub_100048C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AdvertisableFeatureModel();
    v7 = sub_100048E18(&qword_1000DBDA8, &type metadata accessor for AdvertisableFeatureModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100048D34(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100048D50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100048D64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100048DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100048DF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100048E18(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100048E64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100048E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100048EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100048F30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *a1;
  v30 = a1[1];
  sub_100039898();

  v4 = Text.init<A>(_:)();
  v25 = v5;
  v26 = v4;
  v24 = v6;
  v27 = v7;
  v29 = *(a1 + 1);
  if (a1[4])
  {

    v8 = Text.init<A>(_:)();
    v10 = v9;
    v12 = v11;
    static Color.secondary.getter();
    v13 = Text.foregroundColor(_:)();
    v15 = v14;
    v17 = v16;

    sub_1000385F4(v8, v10, v12 & 1);

    Text.monospaced(_:)();
    sub_1000385F4(v13, v15, v17 & 1);
  }

  else
  {

    v18 = Text.init<A>(_:)();
    v20 = v19;
    v22 = v21;
    static Color.secondary.getter();
    Text.foregroundColor(_:)();

    sub_1000385F4(v18, v20, v22 & 1);
  }

  _ConditionalContent<>.init(storage:)();
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v29;
  *(a2 + 64) = v31;
  *(a2 + 80) = v32;
  sub_1000385D8(v26, v25, v24 & 1);

  sub_1000494D8(v29, *(&v29 + 1), v31);
  sub_100049514(v29, *(&v29 + 1), v31);
  sub_1000385F4(v26, v25, v24 & 1);
}

double sub_1000491F8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v3;
  v19 = *(v1 + 32);
  v4 = static VerticalAlignment.firstTextBaseline.getter();
  v17 = 1;
  sub_100048F30(v18, &v10);
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v20 = v10;
  v21 = v11;
  v27 = v15;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[0] = v10;
  v26[1] = v11;
  sub_1000492FC(&v20, &v9);
  sub_10004947C(v26);
  *&v16[39] = v22;
  *&v16[55] = v23;
  *&v16[71] = v24;
  *&v16[7] = v20;
  *&v16[23] = v21;
  v5 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v16[64];
  v7 = *v16;
  result = *&v16[16];
  *(a1 + 33) = *&v16[16];
  v16[87] = v25;
  v8 = v17;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 97) = *&v16[80];
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_1000492FC(uint64_t a1, uint64_t a2)
{
  sub_100049360();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100049360()
{
  if (!qword_1000DBDC8)
  {
    sub_1000493B8();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBDC8);
    }
  }
}

void sub_1000493B8()
{
  if (!qword_1000DBDD0)
  {
    sub_100049428();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DBDD0);
    }
  }
}

void sub_100049428()
{
  if (!qword_1000DBDD8)
  {
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBDD8);
    }
  }
}

uint64_t sub_10004947C(uint64_t a1)
{
  sub_100049360();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000494D8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000385D8(a1, a2, a3 & 1);
}

uint64_t sub_100049514(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000385F4(a1, a2, a3 & 1);
}

void sub_100049550()
{
  if (!qword_1000DBDE8)
  {
    sub_100049360();
    sub_1000495E4(&qword_1000DBDF0, sub_100049360);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DBDE8);
    }
  }
}

uint64_t sub_1000495E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004962C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000496A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100049710(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch thunk of HealthAppNotificationManager.getNotificationSettings()();
  if ([v7 authorizationStatus] == 2 || objc_msgSend(v7, "authorizationStatus") == 1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v8 = static NSNotificationName.healthAppNotificationSettingsDidChange.getter();
      v9 = [objc_opt_self() defaultCenter];
      [v9 postNotificationName:v8 object:0];

      v10 = objc_allocWithZone(type metadata accessor for PostNotificationOperation());
      v11 = v8;
      v12 = PostNotificationOperation.init(name:userInfo:)();
      sub_100048A0C();
      v13 = static NSOperationQueue.userInitiated.getter();
      [v13 addOperation:v12];
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_10009A9B8(a1 & 1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v28 = 0;
      static Published.subscript.setter();
    }
  }

  else
  {
    static Logger.notifications.getter();
    v14 = v7;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = v14;
      v18 = v17;
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v18 = 136315650;
      v19 = _typeName(_:qualified:)();
      v21 = sub_1000036D0(v19, v20, v30);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1000036D0(0xD00000000000002FLL, 0x80000001000A70D0, v30);
      *(v18 + 22) = 2080;
      v22 = v26;
      v29 = [v26 authorizationStatus];
      type metadata accessor for UNAuthorizationStatus(0);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000036D0(v23, v24, v30);

      *(v18 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s %s Unexpected notification authorization status: %s", v18, 0x20u);
      swift_arrayDestroy();

      (*(v3 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      v22 = v14;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v29) = 0;
      static Published.subscript.setter();
    }
  }
}

void sub_100049B5C(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  v8 = 4;
  v9 = v4;
  v7[3] = type metadata accessor for AnalyticsSender();
  v7[4] = &protocol witness table for AnalyticsSender;
  v7[0] = static AnalyticsSender.shared.getter();
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  sub_100003B90(v7);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = objc_allocWithZone(HKHealthStore);
    v6 = [v5 init];
    sub_100049C98(a3, v6);
  }
}

uint64_t sub_100049C44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100049C98(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_10004BA8C(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v12;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = a2;
    v38 = v20;
    v34 = v20;
    *v19 = 136446210;
    v21 = _typeName(_:qualified:)();
    v35 = v11;
    v23 = v10;
    v24 = v3;
    v25 = v6;
    v26 = a1;
    v27 = sub_1000036D0(v21, v22, &v38);

    *(v19 + 4) = v27;
    a1 = v26;
    v6 = v25;
    v3 = v24;
    v10 = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s]: Checking IHR intro flow step", v19, 0xCu);
    sub_100003B90(v34);
    a2 = v37;

    (*(v36 + 8))(v15, v35);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a2;
  v29[5] = v3;
  v29[6] = a1;
  v29[7] = v6;
  v30 = a2;

  v31 = a1;
  sub_100084B64(0, 0, v10, &unk_1000AF140, v29);
}

uint64_t sub_100049FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = type metadata accessor for Logger();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_10004A0AC, 0, 0);
}

uint64_t sub_10004A0AC()
{
  v0[27] = [objc_allocWithZone(HKHealthRecordsStore) initWithHealthStore:v0[18]];
  v1 = async function pointer to HKHealthRecordsStore.shouldPromptForImproveHealthRecordsDataSubmission()[1];
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_10004A164;

  return HKHealthRecordsStore.shouldPromptForImproveHealthRecordsDataSubmission()();
}

uint64_t sub_10004A164(char a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 290) = a1;

  return _swift_task_switch(sub_10004A264, 0, 0);
}

uint64_t sub_10004A264()
{
  v21 = v0;
  if (*(v0 + 290) == 1)
  {
    v1 = [objc_allocWithZone(HKClinicalAccountStore) initWithHealthStore:*(v0 + 144)];
    *(v0 + 232) = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 288;
    *(v0 + 24) = sub_10004A52C;
    v2 = swift_continuation_init();
    sub_10004B938();
    *(v0 + 136) = v3;
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10004AC34;
    *(v0 + 104) = &unk_1000CE8C8;
    *(v0 + 112) = v2;
    [v1 hasAnyHealthRecordsAccountWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 192);
    static Logger.general.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 176);
    if (v7)
    {
      v11 = *(v0 + 168);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446210;
      v14 = _typeName(_:qualified:)();
      v16 = sub_1000036D0(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s]: IHR prompting is not needed, continuing to Improve Safety", v12, 0xCu);
      sub_100003B90(v13);
    }

    (*(v9 + 8))(v8, v10);
    type metadata accessor for MainActor();
    *(v0 + 280) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10004AB44, v18, v17);
  }
}

uint64_t sub_10004A52C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10004A60C, 0, 0);
}

uint64_t sub_10004A60C()
{
  v39 = v0;
  if (*(v0 + 288) == 1)
  {
    v1 = *(v0 + 208);
    static Logger.general.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 208);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    if (v4)
    {
      v8 = *(v0 + 168);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38 = v10;
      *v9 = 136446210;
      v11 = _typeName(_:qualified:)();
      v13 = sub_1000036D0(v11, v12, &v38);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s]: IHR needs prompting, presenting flow", v9, 0xCu);
      sub_100003B90(v10);
    }

    (*(v7 + 8))(v5, v6);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 289) = 1;

    static Published.subscript.setter();
    *(v0 + 240) = type metadata accessor for ImprovementDataCollectionOptInViewController();
    v16 = swift_allocObject();
    *(v0 + 248) = v16;
    swift_weakInit();
    v17 = swift_allocObject();
    *(v0 + 256) = v17;
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    type metadata accessor for MainActor();
    v18 = v15;

    *(v0 + 264) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    v22 = sub_10004A9A4;
  }

  else
  {
    v23 = *(v0 + 200);
    static Logger.general.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 200);
    v28 = *(v0 + 176);
    v29 = *(v0 + 184);
    if (v26)
    {
      v30 = *(v0 + 168);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136446210;
      v33 = _typeName(_:qualified:)();
      v35 = sub_1000036D0(v33, v34, &v38);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s]: User has no accounts, not displaying IHR", v31, 0xCu);
      sub_100003B90(v32);
    }

    (*(v29 + 8))(v27, v28);
    type metadata accessor for MainActor();
    *(v0 + 272) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v36;
    v22 = sub_10004AAD0;
  }

  return _swift_task_switch(v22, v19, v21);
}

uint64_t sub_10004A9A4()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[20];

  static ImprovementDataCollectionOptInViewController.present(in:completion:)();

  return _swift_task_switch(sub_10004AA4C, 0, 0);
}

uint64_t sub_10004AA4C()
{
  v1 = *(v0 + 216);

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004AAD0()
{
  v1 = v0[34];
  v3 = v0[19];
  v2 = v0[20];

  sub_10004AF90(v2);

  return _swift_task_switch(sub_10004BB08, 0, 0);
}

uint64_t sub_10004AB44()
{
  v1 = v0[35];
  v3 = v0[19];
  v2 = v0[20];

  sub_10004AF90(v2);

  return _swift_task_switch(sub_10004ABB8, 0, 0);
}

uint64_t sub_10004ABB8()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004AC34(uint64_t a1, char a2)
{
  **(*(*sub_10000BFFC((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_10004AC90(char a1, void *a2, uint64_t a3)
{
  sub_10004BA8C(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v18 - v8;
  if (a1)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v19 = 5;
  v20 = v10;
  v11 = type metadata accessor for AnalyticsSender();
  v12 = static AnalyticsSender.shared.getter();
  v18[3] = v11;
  v18[4] = &protocol witness table for AnalyticsSender;
  v18[0] = v12;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  sub_100003B90(v18);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = a2;

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  v16[5] = a3;
  sub_100084B64(0, 0, v9, &unk_1000AF150, v16);
}

uint64_t sub_10004AE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004AEE0, v7, v6);
}

uint64_t sub_10004AEE0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  [v3 dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10004AF90(v0[5]);
  }

  v4 = v0[1];

  return v4();
}

void sub_10004AF90(uint64_t a1)
{
  v63 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v59 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  static Logger.general.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v62 = v14;
    v20 = v19;
    v60 = swift_slowAlloc();
    v61 = v11;
    aBlock[0] = v60;
    *v20 = 136446210;
    v21 = _typeName(_:qualified:)();
    v23 = v4;
    v24 = v3;
    v25 = sub_1000036D0(v21, v22, aBlock);

    *(v20 + 4) = v25;
    v3 = v24;
    v4 = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s]: Checking whether to show Improve Safety view controller", v20, 0xCu);
    sub_100003B90(v60);
    v11 = v61;

    v14 = v62;
  }

  v26 = *(v4 + 8);
  v26(v16, v3);
  v27 = [objc_opt_self() sharedBehavior];
  if (!v27)
  {
    __break(1u);
    return;
  }

  v28 = v27;
  v29 = [v27 isIPhone];

  if (!v29)
  {
    static Logger.general.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136446210;
      v44 = _typeName(_:qualified:)();
      v46 = sub_1000036D0(v44, v45, aBlock);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%{public}s]: We only want to show Improve Safety on iPhone, continuing to notification authorization", v42, 0xCu);
      sub_100003B90(v43);

      v47 = v8;
      v48 = v3;
LABEL_17:
      v26(v47, v48);
      sub_10000EAC4();
      return;
    }

    v47 = v8;
LABEL_16:
    v48 = v3;
    goto LABEL_17;
  }

  v30 = objc_opt_self();
  if (![v30 needsRequestedPermission])
  {
    static Logger.general.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136446210;
      v53 = _typeName(_:qualified:)();
      v55 = v11;
      v56 = sub_1000036D0(v53, v54, aBlock);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s]: Improve Safety prompting is not needed, continuing to notification authorization", v51, 0xCu);
      sub_100003B90(v52);

      v47 = v55;
      v48 = v3;
      goto LABEL_17;
    }

    v47 = v11;
    goto LABEL_16;
  }

  static Logger.general.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v62 = v14;
    v34 = v33;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446210;
    v36 = _typeName(_:qualified:)();
    v38 = sub_1000036D0(v36, v37, aBlock);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s]: Showing Improve Safety view controller", v34, 0xCu);
    sub_100003B90(v35);

    v39 = v62;
  }

  else
  {

    v39 = v14;
  }

  v26(v39, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;

  static Published.subscript.setter();
  v57 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10004B808;
  aBlock[5] = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100049C44;
  aBlock[3] = &unk_1000CE878;
  v58 = _Block_copy(aBlock);

  [v30 presentInViewController:v63 completion:v58];
  _Block_release(v58);
}