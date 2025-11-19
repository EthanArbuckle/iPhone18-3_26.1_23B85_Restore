unint64_t sub_100920670()
{
  result = qword_101A08A50;
  if (!qword_101A08A50)
  {
    sub_1005C4E5C(&qword_101A08A58);
    sub_100073B28();
    sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08A50);
  }

  return result;
}

uint64_t sub_100920728@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

unint64_t sub_1009207D8()
{
  result = qword_101A08A60;
  if (!qword_101A08A60)
  {
    sub_1005C4E5C(&qword_101A08A30);
    sub_10001A2F8(&qword_101A08A68, &qword_101A08A70);
    sub_10001A2F8(&qword_101A08A78, &qword_101A08A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08A60);
  }

  return result;
}

unint64_t sub_1009208BC()
{
  result = qword_101A08A88;
  if (!qword_101A08A88)
  {
    type metadata accessor for BorderlessButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08A88);
  }

  return result;
}

uint64_t sub_10092094C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1009209D0()
{
  result = qword_101A08AA0;
  if (!qword_101A08AA0)
  {
    sub_1005C4E5C(&qword_101A08AA8);
    sub_100920A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08AA0);
  }

  return result;
}

unint64_t sub_100920A5C()
{
  result = qword_101A08AB0;
  if (!qword_101A08AB0)
  {
    sub_1005C4E5C(&qword_101A08AB8);
    sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08AB0);
  }

  return result;
}

unint64_t sub_100920B4C()
{
  result = qword_101A08AC8;
  if (!qword_101A08AC8)
  {
    sub_1005C4E5C(&qword_101A08A00);
    sub_10001A2F8(&qword_101A08AC0, &qword_101A08A10);
    sub_10001A2F8(&qword_101A08A78, &qword_101A08A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08AC8);
  }

  return result;
}

uint64_t sub_100920C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A08A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100920CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A08A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100920D14()
{
  v0 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for UTType();
  sub_10061655C(v3, qword_101AD6CD0);
  sub_1005EB3DC(v3, qword_101AD6CD0);
  static UTType.compositeContent.getter();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t sub_100920E18(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v15 - v8;
  (*(v3 + 16))(&v15 - v8, a1, v2, v7);
  static UTType.rtf.getter();
  sub_100921024();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(v9, v2);
    return 0;
  }

  else
  {
    static UTType.rtfd.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v5, v2);
    if (v13)
    {
      v11(v9, v2);
      return 1;
    }

    else
    {
      static UTType.flatRTFD.getter();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v11(v5, v2);
      v11(v9, v2);
      if (v14)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }
}

unint64_t sub_100921024()
{
  result = qword_101A07820;
  if (!qword_101A07820)
  {
    type metadata accessor for UTType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07820);
  }

  return result;
}

unint64_t sub_100921090()
{
  result = qword_101A08AE8;
  if (!qword_101A08AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08AE8);
  }

  return result;
}

uint64_t sub_100921108()
{
  v0 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD6CE8);
  sub_1005EB3DC(v10, qword_101AD6CE8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100921400()
{
  v0 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v0 - 8);
  v57 = &v32 - v1;
  v2 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v2 - 8);
  v56 = &v32 - v3;
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v53 = type metadata accessor for LocalizedStringResource();
  v10 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A08BF8);
  v12 = sub_1005B981C(&qword_101A08C00);
  v55 = v12;
  v13 = *(v12 - 8);
  v47 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v48 = v15;
  *(v15 + 16) = xmmword_10146BDE0;
  v52 = v15 + v14;
  v46 = *(v12 + 48);
  *(v15 + v14) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v49 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v5 + 104);
  v16(v7);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v45 = *(v10 + 56);
  v45(v56, 1, 1, v53);
  v43 = type metadata accessor for DisplayRepresentation.Image();
  v17 = *(v43 - 8);
  v42 = *(v17 + 56);
  v44 = v17 + 56;
  v42(v57, 1, 1, v43);
  v41 = sub_1005B981C(&qword_101A08C08);
  v37 = v10 + 56;
  v18 = *(v10 + 72);
  v40 = *(v10 + 80);
  v36 = (v40 + 32) & ~v40;
  v50 = v18;
  v54 = 2 * v18;
  v39 = 3 * v18;
  v19 = swift_allocObject();
  v38 = xmmword_10146C4D0;
  v35 = v19;
  *(v19 + 16) = xmmword_10146C4D0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = v49;
  (v16)(v7, v49, v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v16;
  (v16)(v7, v20, v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = v4;
  (v16)(v7, v20, v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = v52;
  v22 = v56;
  v23 = v57;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v24 = *(v55 + 48);
  v46 = (v21 + v47);
  v47 = v24;
  *v46 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = v49;
  v26 = v33;
  (v33)(v7, v49, v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v45(v22, 1, 1, v53);
  v42(v23, 1, 1, v43);
  v53 = swift_allocObject();
  *(v53 + 16) = v38;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = v25;
  v28 = v25;
  v29 = v34;
  v26(v7, v27, v34);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v7, v28, v29);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v7, v28, v29);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v30 = sub_100BD70D8(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD6D00 = v30;
  return result;
}

uint64_t sub_100921D34(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_100921DB4()
{
  result = qword_101A08B90;
  if (!qword_101A08B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08B90);
  }

  return result;
}

Swift::Int sub_100921E08()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100921E74()
{
  String.hash(into:)();
}

Swift::Int sub_100921EC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100921F2C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101874E80, *a1);

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

void sub_100921F8C(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

unint64_t sub_100921FBC()
{
  result = qword_101A08B98;
  if (!qword_101A08B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08B98);
  }

  return result;
}

unint64_t sub_100922014()
{
  result = qword_101A08BA0;
  if (!qword_101A08BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BA0);
  }

  return result;
}

unint64_t sub_10092206C()
{
  result = qword_101A08BA8;
  if (!qword_101A08BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BA8);
  }

  return result;
}

unint64_t sub_1009220D0()
{
  result = qword_101A08BB0;
  if (!qword_101A08BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BB0);
  }

  return result;
}

unint64_t sub_100922124()
{
  result = qword_101A08BB8;
  if (!qword_101A08BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BB8);
  }

  return result;
}

unint64_t sub_100922178()
{
  result = qword_101A08BC0;
  if (!qword_101A08BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BC0);
  }

  return result;
}

unint64_t sub_1009221D0()
{
  result = qword_101A08BC8;
  if (!qword_101A08BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BC8);
  }

  return result;
}

uint64_t sub_100922224@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F19B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD6CE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10092231C(uint64_t a1)
{
  v2 = sub_100616410();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10092236C()
{
  result = qword_101A08BD0;
  if (!qword_101A08BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BD0);
  }

  return result;
}

unint64_t sub_1009223C4()
{
  result = qword_101A08BD8;
  if (!qword_101A08BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BD8);
  }

  return result;
}

unint64_t sub_10092241C()
{
  result = qword_101A08BE0;
  if (!qword_101A08BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BE0);
  }

  return result;
}

uint64_t sub_100922470()
{
  if (qword_1019F19C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1009224CC(uint64_t a1)
{
  v2 = sub_1009221D0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10092251C()
{
  result = qword_101A08BE8;
  if (!qword_101A08BE8)
  {
    sub_1005C4E5C(&qword_101A08BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08BE8);
  }

  return result;
}

uint64_t sub_1009225A8()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask))
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform12CRLURLEditor_reloadTask))
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  return result;
}

void sub_10092281C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v27 - v7;
  v9 = [v0 interactiveCanvasController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 layerHost];

    if (v11)
    {
      v12 = [v1 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *(v13 + 16);
      }

      if (v14 == 1 && (v15 = [v1 boardItems], v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v15, v27 = sub_100BC17C8(v16), , v27))
      {
        type metadata accessor for CRLURLItem();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          if (**(v17 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
          {
            swift_beginAccess();

            sub_1005B981C(&qword_101A08C60);
            CRRegister.wrappedValue.getter();
            swift_endAccess();

            v18 = *(v2 + 20);
            v19 = type metadata accessor for URL();
            v20 = *(v19 - 8);
            (*(v20 + 16))(v8, &v4[v18], v19);
            sub_100928478(v4);
            (*(v20 + 56))(v8, 0, 1, v19);
            v21 = objc_allocWithZone(type metadata accessor for CRLInsertEditURLAlert());
            v22 = v1;
            v23 = sub_10067D688(1, v22, v8, v21);

            v24 = *&v22[OBJC_IVAR____TtC8Freeform12CRLURLEditor_editURLAlert];
            *&v22[OBJC_IVAR____TtC8Freeform12CRLURLEditor_editURLAlert] = v23;
            v25 = v23;

            [v11 showURLAlertFromAlertPresenter:v25];
            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v26 = v27;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_100922D2C(void *a1, double a2, double a3)
{
  v4 = v3;
  v52.receiver = v3;
  v52.super_class = type metadata accessor for CRLURLEditor();
  objc_msgSendSuper2(&v52, "addMiniFormatterElementsToArray:atPoint:", a1, a2, a3);
  v8 = [v3 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  if (v10 == 1)
  {
    v11 = objc_opt_self();
    v12 = [v11 mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

    if (!v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = String._bridgeToObjectiveC()();
    }

    v16 = String._bridgeToObjectiveC()();
    v17 = objc_opt_self();
    v18 = [v17 crl_quickInspectorImageNamed:v16];

    v19 = [objc_allocWithZone(CRLQuickInspectorElement) initWithName:v15 image:v18 type:2 options:2048];
    [v19 setTag:12];
    v20 = [v11 mainBundle];
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

    if (!v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = String._bridgeToObjectiveC()();
    }

    [v19 setToolTip:v23];

    [a1 addObject:v19];
    v24 = String._bridgeToObjectiveC()();
    v50 = v17;
    v25 = [v17 crl_quickInspectorImageNamed:v24];

    v26 = [v11 mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

    if (!v29)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = String._bridgeToObjectiveC()();
    }

    v30 = objc_opt_self();
    v51 = v25;
    v31 = [v30 elementWithName:v29 image:v25 type:2 action:"openItemURL:"];

    [v31 setTag:23];
    v32 = [v4 boardItems];
    v33 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = sub_100BC17C8(v33);

    if (v34)
    {
      (*((swift_isaMask & *v34) + 0x2D8))(v35);
      v37 = v36;

      if (v37)
      {
        v34 = String._bridgeToObjectiveC()();
      }

      else
      {
        v34 = 0;
      }
    }

    [v31 setToolTip:v34];

    [a1 addObject:v31];
    if (sub_10092383C())
    {
      v38 = [v11 mainBundle];
      v39 = String._bridgeToObjectiveC()();
      v40 = String._bridgeToObjectiveC()();
      v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

      if (!v41)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = String._bridgeToObjectiveC()();
      }

      v42 = String._bridgeToObjectiveC()();
      v43 = [v50 crl_quickInspectorImageNamed:v42];

      v44 = [v30 elementWithName:v41 image:v43 type:2 action:"reloadMetadata:"];
      [v44 setTag:24];
      v45 = [v11 mainBundle];
      v46 = String._bridgeToObjectiveC()();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

      if (!v48)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = String._bridgeToObjectiveC()();
      }

      [v44 setToolTip:v48];

      v49 = v44;
      [a1 addObject:v49];
    }
  }
}

uint64_t sub_100923550(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    return v7 == 1;
  }

  else if (static Selector.== infix(_:_:)())
  {
    if (sub_10092383C())
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    sub_10000BE14(a2, v19, &unk_1019F4D00);
    v9 = v20;
    if (v20)
    {
      v10 = sub_100020E58(v19, v20);
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100005070(v19);
    }

    else
    {
      v15 = 0;
    }

    v16 = type metadata accessor for CRLURLEditor();
    v18.receiver = v2;
    v18.super_class = v16;
    v17 = objc_msgSendSuper2(&v18, "canPerformEditorAction:withSender:", a1, v15);
    swift_unknownObjectRelease();
    return v17;
  }
}

uint64_t sub_10092383C()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v32 - v3;
  v5 = [v0 interactiveCanvasController];
  if (v5)
  {
    v6 = v5;
    v7 = [v0 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v6;
    sub_100928594(v8, v9);
    v11 = v10;

    if (!(v11 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_15:

      goto LABEL_17;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v14 = v13;

    v15 = [v0 interactiveCanvasController];
    if (v15)
    {
      v16 = v15;
      v17 = [v0 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = v16;
      sub_100928594(v18, v19);
      v21 = v20;

      if (!(v21 >> 62))
      {
LABEL_9:
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_10;
      }
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_9;
      }
    }

    v22 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:

    if (v22 == 1)
    {
      v23 = *((swift_isaMask & *v14) + 0x1B8);
      v24 = v14;
      v23();

      v25 = type metadata accessor for URL();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v4, 1, v25) == 1)
      {
        sub_10000CAAC(v4, &unk_1019F33C0);
LABEL_24:

        v27 = 1;
        return v27 & 1;
      }

      v28 = URL.scheme.getter();
      v30 = v29;
      (*(v26 + 8))(v4, v25);
      if (!v30)
      {
        goto LABEL_24;
      }

      if (v28 != 0x6567617373656DLL || v30 != 0xE700000000000000)
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v27 = v31 ^ 1;
        return v27 & 1;
      }
    }

    else
    {
    }

LABEL_17:
    v27 = 0;
    return v27 & 1;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_100923C6C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v45 - v4;
  v6 = [v0 interactiveCanvasController];
  if (v6)
  {
    v7 = v6;
    v8 = [v1 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v7;
    sub_100928594(v9, v10);
    v12 = v11;

    if (!(v12 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_13:

    goto LABEL_15;
  }

  v12 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  if (sub_10092383C())
  {
    (*((swift_isaMask & *v14) + 0x130))();
    v15 = OBJC_IVAR____TtC8Freeform12CRLURLEditor_reloadTask;
    if (*&v1[OBJC_IVAR____TtC8Freeform12CRLURLEditor_reloadTask])
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = v14;
    v18 = v1;
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    v20[5] = v17;
    v21 = sub_100796D54(0, 0, v5, &unk_101488178, v20);

    *&v1[v15] = v21;

    return;
  }

LABEL_15:
  v22 = objc_opt_self();
  v23 = [v22 _atomicIncrementAssertCount];
  v46 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v46);
  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v25 lastPathComponent];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v23;
  v32 = sub_1005CF000();
  *(inited + 96) = v32;
  v33 = sub_100928BCC(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v33;
  *(inited + 72) = v24;
  *(inited + 136) = &type metadata for String;
  v34 = sub_1000053B0();
  *(inited + 112) = v27;
  *(inited + 120) = v29;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v34;
  *(inited + 152) = 168;
  v35 = v46;
  *(inited + 216) = v32;
  *(inited + 224) = v33;
  *(inited + 192) = v35;
  v36 = v24;
  v37 = v35;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v39, "Unexpected rep count.", 21, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v22 handleFailureInFunction:v42 file:v43 lineNumber:168 isFatal:0 format:v44 args:v41];
}

uint64_t sub_10092431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = type metadata accessor for CancellationError();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v5[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[36] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v8;
  v5[38] = v7;

  return _swift_task_switch(sub_100924448, v8, v7);
}

uint64_t sub_100924448()
{
  v1 = [*(v0 + 240) boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100BC17C8(v2);
  *(v0 + 312) = v3;

  if (v3)
  {
    type metadata accessor for CRLURLItem();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + 280);
      v7 = [*(v0 + 240) editingCoordinator];
      sub_10092B1A8();

      *(v0 + 320) = sub_100BC15B8();

      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v9 = swift_task_alloc();
      *(v0 + 328) = v9;
      *v9 = v0;
      v9[1] = sub_100924674;
      v10 = *(v0 + 280);

      return sub_100D2EAFC(v5, v10);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100924674()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  *(*v1 + 336) = v0;

  sub_10000CAAC(v3, &unk_1019F33C0);

  v4 = *(v2 + 304);
  v5 = *(v2 + 296);
  if (v0)
  {
    v6 = sub_100924A30;
  }

  else
  {
    v6 = sub_100924800;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100924800()
{
  v1 = *(v0 + 312);

  CRLLinkViewHostingRep.tearDownReload()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100924884()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);

  return _swift_task_switch(sub_10092498C, v2, v1);
}

uint64_t sub_10092498C()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[39];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100924A30()
{
  v1 = *(v0 + 336);
  CRLLinkViewHostingRep.tearDownReload()();
  *(v0 + 216) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 336);
  if (v2)
  {

    v4 = *(v0 + 368);
    if ((static Task<>.isCancelled.getter() & 1) != 0 || (v5 = sub_100924E7C(v4), (*(v0 + 344) = v5) == 0))
    {
      v16 = *(v0 + 312);
    }

    else
    {
      v6 = [*(v0 + 240) interactiveCanvasController];
      *(v0 + 352) = v6;
      if (v6)
      {
        v7 = v6;
        v8 = _convertErrorToNSError(_:)();
        *(v0 + 360) = v8;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 369;
        *(v0 + 24) = sub_100924884;
        v9 = swift_continuation_init();
        *(v0 + 208) = sub_1005B981C(&unk_101A15B50);
        *(v0 + 152) = _NSConcreteStackBlock;
        *(v0 + 160) = *"";
        *(v0 + 168) = sub_100C0A9A0;
        *(v0 + 176) = &unk_10188DC28;
        *(v0 + 184) = v9;
        [v7 presentError:v8 completionHandler:v0 + 152];

        return _swift_continuation_await(v0 + 16);
      }

      v16 = *(v0 + 312);
    }
  }

  else
  {

    *(v0 + 224) = v3;
    swift_errorRetain();
    if (swift_dynamicCast())
    {

      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 312);
      v12 = *(v0 + 264);
      v11 = *(v0 + 272);
      v13 = *(v0 + 256);
      v14 = static OS_os_log.crlDefault;
      v15 = static os_log_type_t.default.getter();
      sub_100005404(v14, &_mh_execute_header, v15, "Metadata provider task cancelled. Not an error.", 47, 2, _swiftEmptyArrayStorage);

      (*(v12 + 8))(v11, v13);
    }

    else
    {

      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 336);
      v18 = *(v0 + 312);
      v19 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(v0 + 232) = v17;
      swift_errorRetain();
      v21 = String.init<A>(describing:)();
      v23 = v22;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v21;
      *(inited + 40) = v23;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v24, "Error reloading URL: %@", 23, 2, inited);

      swift_setDeallocating();
      sub_100005070(inited + 32);
    }
  }

  v25 = *(v0 + 8);

  return v25();
}

id sub_100924E7C(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  if (a1 <= 2u)
  {
    if (a1 <= 1u)
    {
      goto LABEL_9;
    }

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v19 = String.init<A>(describing:)();
    v21 = v20;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v19;
    v22 = inited + 32;
    *(inited + 40) = v21;
    v23 = static os_log_type_t.error.getter();
    v24 = "Invalid URL detected.: %@";
    v25 = v17;
    v26 = 25;
    goto LABEL_16;
  }

  if (a1 == 3)
  {
LABEL_9:
    v7 = [v2 mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = objc_opt_self();
    sub_100928838();
    swift_allocError();
    *v12 = a1;
    v13 = _convertErrorToNSError(_:)();

    v14 = String._bridgeToObjectiveC()();

    v15 = [v11 crl_errorWithError:v13 alertTitle:v6 alertMessage:v14 additionalUserInfo:0];

    return v15;
  }

  if (a1 != 4)
  {

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v28 = String.init<A>(describing:)();
    v30 = v29;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v28;
    v22 = inited + 32;
    *(inited + 40) = v30;
    v23 = static os_log_type_t.error.getter();
    v24 = "Metadata provider initialized with invalid URL type.: %@";
    v25 = v27;
    v26 = 56;
LABEL_16:
    sub_100005404(v25, &_mh_execute_header, v23, v24, v26, 2, inited);
    swift_setDeallocating();
    sub_100005070(v22);
    return 0;
  }

  return 0;
}

uint64_t sub_1009252C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

uint64_t sub_10092534C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100BC17C8(v8);

  if (v9)
  {
    type metadata accessor for CRLURLItem();
    result = swift_dynamicCastClass();
    if (result)
    {
      if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
      {
        swift_beginAccess();

        sub_1005B981C(&qword_101A08C60);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        v11 = *(v3 + 20);
        v12 = type metadata accessor for URL();
        v13 = *(v12 - 8);
        (*(v13 + 16))(a1, &v6[v11], v12);
        sub_100928478(v6);
        return (*(v13 + 56))(a1, 0, 1, v12);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, 1, 1, v14);
}

uint64_t sub_100925600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v37 = type metadata accessor for URL();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FB750);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v31 - v11;
  v13 = v3;
  v14 = [v3 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(v15 + 16);
  }

  if (v16 == 1)
  {
    v33 = a2;
    v34 = v4;
    v32 = OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask;
    if (*&v13[OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask])
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    v17 = type metadata accessor for TaskPriority();
    v18 = *(*(v17 - 8) + 56);
    v31 = v12;
    v18(v12, 1, 1, v17);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v36;
    v21 = v37;
    (*(v7 + 16))(v36, v35, v37);
    type metadata accessor for MainActor();

    v22 = static MainActor.shared.getter();
    v23 = *(v7 + 80);
    v35 = a3;
    v24 = (v23 + 40) & ~v23;
    v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = v22;
    *(v26 + 3) = &protocol witness table for MainActor;
    *(v26 + 4) = v19;
    (*(v7 + 32))(&v26[v24], v20, v21);
    v27 = &v26[v25];
    v28 = v35;
    *v27 = v33;
    *(v27 + 1) = v28;

    v29 = sub_100796D54(0, 0, v31, &unk_101488158, v26);
    *&v13[v32] = v29;
  }

  else
  {
    sub_1009282BC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1009259C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[65] = a7;
  v7[63] = a5;
  v7[64] = a6;
  v7[62] = a4;
  v8 = type metadata accessor for CancellationError();
  v7[66] = v8;
  v7[67] = *(v8 - 8);
  v7[68] = swift_task_alloc();
  v7[69] = type metadata accessor for MainActor();
  v7[70] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[71] = v10;
  v7[72] = v9;

  return _swift_task_switch(sub_100925AC4, v10, v9);
}

uint64_t sub_100925AC4()
{
  v38 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[73] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [v2 boardItems];
    type metadata accessor for CRLBoardItem(0);
    sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_100BC17C8(v4);
    v0[74] = v5;

    if (v5)
    {
      type metadata accessor for CRLURLItem();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = [v2 editingCoordinator];
        sub_10092B1A8();

        v0[75] = sub_100BC15B8();

        v0[76] = static MainActor.shared.getter();
        v9 = swift_task_alloc();
        v0[77] = v9;
        *v9 = v0;
        v9[1] = sub_10092608C;
        v10 = v0[63];

        return sub_100D2F2D4(v7, v10, 0);
      }
    }

    v36 = v2;
    v35 = objc_opt_self();
    v12 = [v35 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_1005CF000();
    *(inited + 96) = v21;
    v22 = sub_100928BCC(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 238;
    v24 = v37;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v35 handleFailureInFunction:v31 file:v32 lineNumber:238 isFatal:0 format:v33 args:v30];
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_10092608C()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_100926304;
  }

  else
  {

    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1009261FC;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1009261FC()
{

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);

  return _swift_task_switch(sub_100926270, v2, v1);
}

uint64_t sub_100926270()
{

  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  (*(v0 + 512))(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100926304()
{

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);

  return _swift_task_switch(sub_100926378, v2, v1);
}

uint64_t sub_100926378()
{
  *(v0 + 472) = *(v0 + 624);
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 624);
  if (v1)
  {

    v3 = *(v0 + 704);
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v4 = sub_100B486FC(v3);
      *(v0 + 632) = v4;
      if (v4)
      {
        *(v0 + 640) = static MainActor.shared.getter();
        v6 = dispatch thunk of Actor.unownedExecutor.getter();
        *(v0 + 648) = v6;
        *(v0 + 656) = v5;

        return _swift_task_switch(sub_1009266F0, v6, v5);
      }
    }
  }

  else
  {

    *(v0 + 480) = v2;
    swift_errorRetain();
    if (swift_dynamicCast())
    {

      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 544);
      v8 = *(v0 + 536);
      v9 = *(v0 + 528);
      v10 = static OS_os_log.crlDefault;
      v11 = static os_log_type_t.default.getter();
      sub_100005404(v10, &_mh_execute_header, v11, "Metadata provider task cancelled. Not an error.", 47, 2, _swiftEmptyArrayStorage);
      (*(v8 + 8))(v7, v9);
    }

    else
    {

      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 624);
      v14 = static OS_os_log.crlDefault;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(v0 + 488) = v13;
      swift_errorRetain();
      v16 = String.init<A>(describing:)();
      v18 = v17;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v16;
      *(inited + 40) = v18;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v19, "Error replacing URL: %@", 23, 2, inited);

      swift_setDeallocating();
      v12 = sub_100005070(inited + 32);
    }
  }

  v20 = *(v0 + 592);
  v21 = *(v0 + 584);
  (*(v0 + 512))(v12);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1009266F0()
{
  v1 = v0[73];
  v2 = static MainActor.shared.getter();
  v0[83] = v2;
  v3 = swift_task_alloc();
  v0[84] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[85] = v4;
  *v4 = v0;
  v4[1] = sub_1009267F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001DLL, 0x8000000101579280, sub_100928C84, v3, &type metadata for () + 8);
}

uint64_t sub_1009267F8()
{
  v1 = *v0;

  v2 = *(v1 + 656);
  v3 = *(v1 + 648);

  return _swift_task_switch(sub_100926958, v3, v2);
}

uint64_t sub_100926958()
{

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);

  return _swift_task_switch(sub_1009269C0, v2, v1);
}

uint64_t sub_1009269C0()
{
  v1 = *(v0 + 584);
  v2 = [v1 interactiveCanvasController];
  *(v0 + 688) = v2;

  if (v2)
  {
    v3 = _convertErrorToNSError(_:)();
    *(v0 + 696) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 705;
    *(v0 + 24) = sub_100926B9C;
    v4 = swift_continuation_init();
    *(v0 + 440) = sub_1005B981C(&unk_101A15B50);
    *(v0 + 384) = _NSConcreteStackBlock;
    *(v0 + 392) = *"";
    *(v0 + 400) = sub_100C0A9A0;
    *(v0 + 408) = &unk_10188DBD8;
    *(v0 + 416) = v4;
    [v2 presentError:v3 completionHandler:v0 + 384];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    (*(v0 + 512))(v5);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100926B9C()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 568);

  return _swift_task_switch(sub_100926CA4, v2, v1);
}

uint64_t sub_100926CA4()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);

  v4 = *(v0 + 592);
  v5 = *(v0 + 584);
  (*(v0 + 512))(v3);

  v6 = *(v0 + 8);

  return v6();
}

id sub_100926DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLURLEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100926E98()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask;
  if (*&v0[OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask])
  {

    sub_1005B981C(&unk_1019F6B40);
    Task.cancel()();
  }

  *&v0[v4] = 0;

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_10064191C(0, 0, v3, &unk_101488120, v8);
}

uint64_t sub_100927024(uint64_t a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = v44 - v6;
  v8 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v8 - 8);
  v10 = v44 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask;
  v15 = *&v2[OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask];
  if (v15)
  {
    v47 = a1;
    v48 = v3;
    v52 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = v12;
    v49 = v11;
    v50 = v2;
    v51 = v7;
    v16 = objc_opt_self();

    v45 = v16;
    v17 = [v16 _atomicIncrementAssertCount];
    v54 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v54);
    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v44[1] = v15;
    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_1005CF000();
    *(inited + 96) = v26;
    v27 = sub_100928BCC(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 278;
    v29 = v54;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v3 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    [v45 handleFailureInFunction:v35 file:v36 lineNumber:278 isFatal:0 format:v37 args:v3];

    v2 = v50;
    v7 = v51;
    v11 = v49;
    v14 = v52;
    v12 = v53;
    LOBYTE(v3) = v48;
    a1 = v47;
  }

  sub_10000BE14(a1, v10, &unk_1019F33C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000CAAC(v10, &unk_1019F33C0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if ((v3 & 1) != 0 && !*&v2[v46])
    {
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100925600(v14, sub_1009282B4, v43);
      (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 8))(v14, v11);
  }

  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
  type metadata accessor for MainActor();
  v39 = v2;
  v40 = static MainActor.shared.getter();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = &protocol witness table for MainActor;
  v41[4] = v39;
  sub_10064191C(0, 0, v7, &unk_101488128, v41);
}

char *sub_1009278FC()
{
  v0 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_10064191C(0, 0, v2, &unk_101488148, v8);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask] = 0;
  }

  return result;
}

uint64_t sub_100927A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100927B3C, v6, v5);
}

uint64_t sub_100927B3C()
{
  v1 = v0[2];
  v2 = static MainActor.shared.getter();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100927C40;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001DLL, 0x8000000101579280, sub_100928188, v3, &type metadata for () + 8);
}

uint64_t sub_100927C40()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100927DA0, v3, v2);
}

uint64_t sub_100927DA0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100658F10, v1, v0);
}

void sub_100927E24(uint64_t a1, char *a2)
{
  v4 = sub_1005B981C(&qword_101A15A30);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *&a2[OBJC_IVAR____TtC8Freeform12CRLURLEditor_editURLAlert];
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v5 + 32))(v11 + v10, v8, v4);
    v12 = *&v9[OBJC_IVAR____TtC8Freeform21CRLInsertEditURLAlert_alert];
    if (v12)
    {
      v13 = swift_allocObject();
      v13[2] = v9;
      v13[3] = sub_100928190;
      v13[4] = v11;
      aBlock[4] = sub_100674A10;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_10188DAE8;
      v14 = _Block_copy(aBlock);
      v15 = v9;
      v16 = a2;
      v17 = v15;
      v18 = v12;

      [v18 dismissViewControllerAnimated:1 completion:v14];

      _Block_release(v14);
    }

    else
    {
      v19 = a2;
    }
  }

  else
  {
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10092807C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLURLEditor_editURLAlert);
  *(a1 + OBJC_IVAR____TtC8Freeform12CRLURLEditor_editURLAlert) = 0;

  sub_1005B981C(&qword_101A15A30);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1009280D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100927A94(a1, v4, v5, v6);
}

uint64_t sub_100928190()
{
  sub_1005B981C(&qword_101A15A30);
  v1 = *(v0 + 16);

  return sub_10092807C(v1);
}

uint64_t sub_100928200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100927A94(a1, v4, v5, v6);
}

unint64_t sub_1009282BC()
{
  result = qword_101A08C58;
  if (!qword_101A08C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08C58);
  }

  return result;
}

uint64_t sub_100928310(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_1009259C0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100928478(uint64_t a1)
{
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009284D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_10092431C(a1, v4, v5, v7, v6);
}

void sub_100928594(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v17 = v5;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), (v13 = v18) == 0))
    {
LABEL_23:
      sub_100035F90();
      return;
    }

LABEL_18:
    v14 = [a2 repForInfo:{v13, v17}];
    if (v14 && (v15 = v14, type metadata accessor for CRLURLRep(), v16 = swift_dynamicCastClass(), v13, v13 = v15, v16))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v11 = v6;
  v12 = v7;
  if (v7)
  {
LABEL_14:
    v7 = (v12 - 1) & v12;
    v13 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v6 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v4 + 8 * v6);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_100928838()
{
  result = qword_101A08C68;
  if (!qword_101A08C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08C68);
  }

  return result;
}

uint64_t sub_10092888C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*(a1 + 16) != 1)
  {
    return 0;
  }

LABEL_3:
  result = sub_100BC17C8(a1);
  if (result)
  {
    v3 = result;
    type metadata accessor for CRLURLItem();
    v4 = swift_dynamicCastClass() != 0;

    return v4;
  }

  return result;
}

void sub_100928914(uint64_t a1)
{
  v2 = type metadata accessor for CRLURLItemAtomicDataStruct(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1C108)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A08C60);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    (*(v6 + 16))(v8, &v4[*(v2 + 20)], v5);
    sub_100928478(v4);
    v9 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    sub_100BD72C0(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100928BCC(&qword_1019F3CF0, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openURL:v12 options:isa completionHandler:0];

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100928BCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100928C28()
{
  result = qword_101A08C70;
  if (!qword_101A08C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08C70);
  }

  return result;
}

uint64_t sub_100928C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = a2;
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100601584(v9, v21);
  if (!v22)
  {
    sub_10000CAAC(v21, &unk_1019F4D00);
    return 0;
  }

  sub_1005B981C(&qword_101A08C88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v10 = v20[3];
  v11 = Array.count.getter();
  if (v11 != *(v10 + 16))
  {
LABEL_8:

    return 0;
  }

  v12 = v11;
  v13 = 0;
  v14 = (v10 + 32);
  v20[1] = a4 + 8;
  v15 = (v6 + 8);
  while (1)
  {
    if (v12 == v13)
    {

      return 1;
    }

    result = Array.subscript.getter();
    if (v13 >= *(v10 + 16))
    {
      break;
    }

    ++v13;
    v17 = v14[3];
    v18 = sub_100020E58(v14, v17);
    v22 = v17;
    v19 = sub_10002C58C(v21);
    (*(*(v17 - 8) + 16))(v19, v18, v17);
    LOBYTE(v17) = (*(a4 + 8))(v21, a3, a4);
    (*v15)(v8, a3);
    sub_10000CAAC(v21, &unk_1019F4D00);
    v14 += 5;
    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100928EE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v69 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v58 - v12;
  v68 = *(v14 - 8);
  __chkstk_darwin(v15);
  v75 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = v58 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = type metadata accessor for Optional();
  v20 = *(v76 - 8);
  __chkstk_darwin(v76);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v58 - v24;
  sub_100601584(a1, v84);
  if (!v85)
  {
    v33 = &unk_1019F4D00;
LABEL_7:
    sub_10000CAAC(v84, v33);
    return 0;
  }

  v26 = sub_1005C4E5C(&qword_101A08C78);
  type metadata accessor for Dictionary();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v81 = v20;
  v72 = v25;
  v27 = v83[0];
  v28 = Dictionary.count.getter();
  v67 = v26;
  if (v28 != Dictionary.count.getter())
  {
LABEL_37:

    return 0;
  }

  v66 = v27;
  v71 = v22;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v29 = __CocoaDictionary.makeIterator()();
    v59 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v29 | 0x8000000000000000;
  }

  else
  {
    v34 = -1 << *(a2 + 32);
    v30 = ~v34;
    v35 = *(a2 + 64);
    v59 = a2 + 64;
    v36 = -v34;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v31 = v37 & v35;
    v32 = a2;
  }

  v78 = (v68 + 32);
  v77 = (v69 + 32);
  v65 = TupleTypeMetadata2 - 8;
  v58[1] = v30;
  v38 = (v30 + 64) >> 6;
  v60 = v68 + 16;
  v74 = (v69 + 16);
  v63 = (v81 + 32);
  v61 = (v68 + 8);
  v62 = (v69 + 8);

  v40 = 0;
  v70 = v32;
  while (1)
  {
    v64 = v31;
    v73 = v40;
    if ((v32 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaDictionary.Iterator.next()())
    {
      v51 = 1;
      v80 = v31;
      v81 = v73;
      v47 = v71;
      goto LABEL_28;
    }

    _forceBridgeFromObjectiveC<A>(_:_:)();
    v43 = v79;
    swift_unknownObjectRelease();
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v42 = v73;
    v80 = v31;
LABEL_27:
    v50 = *(TupleTypeMetadata2 + 48);
    v47 = v71;
    (*v78)(v71, v43, a3);
    (*v77)(&v47[v50], v13, a4);
    v51 = 0;
    v81 = v42;
LABEL_28:
    v48 = v72;
LABEL_29:
    v52 = *(TupleTypeMetadata2 - 8);
    (*(v52 + 56))(v47, v51, 1, TupleTypeMetadata2);
    (*v63)(v48, v47, v76);
    if ((*(v52 + 48))(v48, 1, TupleTypeMetadata2) == 1)
    {
      sub_100035F90();

      return 1;
    }

    (*v77)(v10, &v48[*(TupleTypeMetadata2 + 48)], a4);
    v53 = v75;
    (*v78)(v75, v48, a3);
    Dictionary.subscript.getter();
    (*v61)(v53, a3);
    v54 = v85;
    if (!v85)
    {

      sub_100035F90();
      (*v62)(v10, a4);
      v33 = &unk_101A08C80;
      goto LABEL_7;
    }

    v55 = v86;
    sub_100020E58(v84, v85);
    v83[3] = a4;
    v56 = sub_10002C58C(v83);
    (*v74)(v56, v10, a4);
    v57 = (*(v55 + 8))(v83, v54, v55);
    (*v62)(v10, a4);
    sub_10000CAAC(v83, &unk_1019F4D00);
    result = sub_100005070(v84);
    v32 = v70;
    v31 = v80;
    v40 = v81;
    if ((v57 & 1) == 0)
    {
      sub_100035F90();
      goto LABEL_37;
    }
  }

  v41 = v31;
  v42 = v40;
  v43 = v79;
  if (v31)
  {
LABEL_24:
    v80 = (v41 - 1) & v41;
    v49 = __clz(__rbit64(v41)) | (v42 << 6);
    (*(v68 + 16))(v79, *(v32 + 48) + *(v68 + 72) * v49, a3);
    (*(v69 + 16))(v13, *(v32 + 56) + *(v69 + 72) * v49, a4);
    goto LABEL_27;
  }

  if (v38 <= v40 + 1)
  {
    v44 = v40 + 1;
  }

  else
  {
    v44 = v38;
  }

  v45 = v44 - 1;
  v46 = v40;
  v47 = v71;
  v48 = v72;
  while (1)
  {
    v42 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
      v80 = 0;
      v81 = v45;
      v51 = 1;
      goto LABEL_29;
    }

    v41 = *(v59 + 8 * v42);
    ++v46;
    if (v41)
    {
      v32 = v70;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100929780@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_100020E58(v1, v3);
  (*(v4 + 120))(v20, v3, v4);
  sub_10000BE14((v1 + 5), &v15, &qword_1019F57A0);
  if (*(&v16 + 1))
  {
    sub_100050F74(&v15, &v17);
    v5 = *(&v18 + 1);
    v6 = v19;
    sub_100020E58(&v17, *(&v18 + 1));
    (*(v6 + 112))(&v15, v5, v6);
    sub_100005070(&v17);
  }

  else
  {
    sub_10000CAAC(&v15, &qword_1019F57A0);
    v7 = v1[3];
    v8 = v1[4];
    sub_100020E58(v1, v7);
    (*(v8 + 120))(&v15, v7, v8);
  }

  v17 = v15;
  v18 = v16;
  v9 = sub_100929960();
  sub_10000BE14(v20, &v15, &unk_1019F4D00);
  sub_10000BE14(&v17, v14, &unk_1019F4D00);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = v9;
  v10 = sub_100B76520(v9);
  v12 = v11;
  sub_10000CAAC(&v17, &unk_1019F4D00);
  sub_10000CAAC(v20, &unk_1019F4D00);
  *(a1 + 72) = v10;
  *(a1 + 80) = v12;
  sub_1006A430C(&v15, a1);
  return sub_1006A430C(v14, a1 + 32);
}

uint64_t sub_100929960()
{
  v1 = v0;
  sub_10000BE14((v0 + 5), v53, &qword_1019F57A0);
  if (!v54)
  {
    sub_10000CAAC(v53, &qword_1019F57A0);
LABEL_13:
    v45 = v1[3];
    v46 = v1[4];
    sub_100020E58(v1, v45);
    (*(v46 + 88))(v56, v45, v46);
    v47 = v57;
    v48 = v58;
    sub_100020E58(v56, v57);
    v44 = (*(v48 + 80))(v47, v48);
    goto LABEL_14;
  }

  sub_100050F74(v53, v56);
  v2 = v0[3];
  v3 = v0[4];
  sub_100020E58(v0, v2);
  (*(v3 + 88))(v53, v2, v3);
  v4 = v54;
  v5 = v55;
  sub_100020E58(v53, v54);
  LOBYTE(v4) = (*(v5 + 80))(v4, v5);
  v6 = v57;
  v7 = v58;
  sub_100020E58(v56, v57);
  (*(v7 + 88))(v50, v6, v7);
  v8 = v51;
  v9 = v52;
  sub_100020E58(v50, v51);
  v10 = (*(v9 + 80))(v8, v9);
  v11 = sub_100B76520(v4);
  v13 = v12;
  if (v11 == sub_100B76520(v10) && v13 == v14)
  {

    sub_100005070(v50);
    sub_100005070(v53);
    goto LABEL_12;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_100005070(v50);
  sub_100005070(v53);
  if (v16)
  {
LABEL_12:
    sub_100005070(v56);
    goto LABEL_13;
  }

  v17 = objc_opt_self();
  v18 = [v17 _atomicIncrementAssertCount];
  v53[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v53);
  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v20 lastPathComponent];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v18;
  v27 = sub_1005CF000();
  *(inited + 96) = v27;
  v28 = sub_1005CF04C();
  *(inited + 104) = v28;
  *(inited + 72) = v19;
  *(inited + 136) = &type metadata for String;
  v29 = sub_1000053B0();
  *(inited + 112) = v22;
  *(inited + 120) = v24;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v29;
  *(inited + 152) = 29;
  v30 = v53[0];
  *(inited + 216) = v27;
  *(inited + 224) = v28;
  *(inited + 192) = v30;
  v31 = v19;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v34, "Incorrect API usage. Previous and next animations must be animating the same property.", 86, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = 0;
  v36 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  [v17 handleFailureInFunction:v37 file:v38 lineNumber:29 isFatal:0 format:v39 args:v36];

  v40 = v1[3];
  v41 = v1[4];
  sub_100020E58(v1, v40);
  (*(v41 + 88))(v53, v40, v41);
  v42 = v54;
  v43 = v55;
  sub_100020E58(v53, v54);
  v44 = (*(v43 + 80))(v42, v43);
  sub_100005070(v53);
LABEL_14:
  sub_100005070(v56);
  return v44;
}

uint64_t sub_100929F7C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100929780(v3);
  if (v4)
  {
    sub_100931458(a1);
    return sub_1005F8A64(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100929FD4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100929FFC(uint64_t a1)
{
  result = sub_10092A024();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10092A024()
{
  result = qword_101A08C90;
  if (!qword_101A08C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08C90);
  }

  return result;
}

uint64_t sub_10092A078(void *a1, uint64_t a2)
{
  sub_10000BE14((a1 + 5), &v13, &qword_1019F57A0);
  if (v14)
  {
    sub_100050F74(&v13, v15);
    sub_10000BE14(a2 + 40, &v11, &qword_1019F57A0);
    if (v12)
    {
      sub_100050F74(&v11, &v13);
      v4 = v16;
      v5 = v17;
      sub_100020E58(v15, v16);
      v6 = (*(v5 + 128))(&v13, v4, v5);
      sub_100005070(&v13);
      sub_100005070(v15);
      goto LABEL_9;
    }

    sub_10000CAAC(&v11, &qword_1019F57A0);
    sub_100005070(v15);
  }

  else
  {
    sub_10000CAAC(&v13, &qword_1019F57A0);
  }

  sub_10000BE14((a1 + 5), v15, &qword_1019F57A0);
  v7 = v16;
  sub_10000CAAC(v15, &qword_1019F57A0);
  if (v7)
  {
    v6 = 0;
  }

  else
  {
    sub_10000BE14(a2 + 40, v15, &qword_1019F57A0);
    v6 = v16 == 0;
    sub_10000CAAC(v15, &qword_1019F57A0);
  }

LABEL_9:
  v8 = a1[3];
  v9 = a1[4];
  sub_100020E58(a1, v8);
  return (*(v9 + 128))(a2, v8, v9) & v6 & 1;
}

uint64_t sub_10092A254@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10092A2D4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10092A454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  type metadata accessor for CRLBoardInsertStyleData(0);
  v5[31] = swift_task_alloc();
  v6 = sub_1005B981C(&unk_101A08DC0);
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v8;
  v5[37] = v7;

  return _swift_task_switch(sub_10092A588, v8, v7);
}

uint64_t sub_10092A588()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v68 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_changeNotifier;
  *(v4 + v7) = [objc_allocWithZone(CRLChangeNotifier) init];
  *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator____lazy_storage___commandProvider) = 0;
  v8 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator__enableCollaboratorCursors;
  *(v0 + 122) = 1;
  Published.init(initialValue:)();
  (*(v2 + 32))(v4 + v8, v1, v3);
  *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_didFetchEnableCollaboratorCursors) = 0;
  v9 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers;
  *(v4 + v9) = [objc_opt_self() weakObjectsHashTable];
  *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_realTimeSessionUsesEncryption) = 0;
  *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_realTimeSessionNeedsAccountUpgrade) = 0;
  v10 = v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_crlaxAnyRemoteEditDidHappenCancellable;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor) = v5;
  v11 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) = v6;
  v12 = objc_allocWithZone(type metadata accessor for CRLSelectionDispatcher());

  v13 = v6;
  v14 = [v12 init];
  *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_selectionDispatcher) = v14;
  v15 = *(v4 + v11);
  v16 = *(v4 + v7);
  objc_allocWithZone(type metadata accessor for CRLCommandController());
  v17 = sub_100886F94(v15, v16, v14);
  v18 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController;
  *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController) = v17;
  v19 = *(v0 + 232);
  if (v68)
  {
    v20 = *(v0 + 232);
  }

  else
  {
    type metadata accessor for CRLSuspendResumeCoordinator();
    v21 = swift_allocObject();
    *(v21 + 16) = _swiftEmptyArrayStorage;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    v22 = sub_100BD4ECC(_swiftEmptyArrayStorage);
    v20 = v21;
    *(v21 + 56) = v22;
    *(v21 + 64) = _swiftEmptySetSingleton;
    *(v21 + 24) = 0;
    *(v21 + 32) = 1;
  }

  *(v0 + 304) = v19;
  v23 = *(v0 + 240);
  v24 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator;
  *(v23 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator) = v20;
  v25 = (*(v4 + v18) + OBJC_IVAR____TtC8Freeform20CRLCommandController_suspendResumeProvider);
  *v25 = v20;
  v25[1] = &off_101888A00;

  result = swift_unknownObjectRelease();
  v27 = *(v23 + v24);
  if (v27)
  {
    v29 = *(v0 + 240);
    v28 = *(v0 + 248);
    v30 = *(v4 + v18);
    type metadata accessor for CRLAsyncCommandHelper();
    swift_allocObject();
    v31 = v30;

    v32 = sub_100685854(v31, v27);

    *&v31[OBJC_IVAR____TtC8Freeform20CRLCommandController_asyncCommandHelper] = v32;

    v33 = [objc_allocWithZone(CRLUndoManager) initWithCommandController:*(v4 + v18)];
    *(v29 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager) = v33;
    v34 = *(v4 + v11);
    v35 = *&v34[OBJC_IVAR____TtC8Freeform8CRLBoard_data] + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v36 = type metadata accessor for CRLBoardCRDTData(0);
    sub_10000C634(v35 + *(v36 + 28), v28, type metadata accessor for CRLBoardInsertStyleData);
    v37 = type metadata accessor for CRLBoardItemFactory();
    v38 = objc_allocWithZone(v37);
    *&v38[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board] = v34;
    sub_10000C634(v28, &v38[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_insertStyleSettings], type metadata accessor for CRLBoardInsertStyleData);
    *(v0 + 128) = v38;
    *(v0 + 136) = v37;
    v39 = v34;
    v40 = objc_msgSendSuper2((v0 + 128), "init");
    sub_100025DE8(v28, type metadata accessor for CRLBoardInsertStyleData);
    *(v29 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory) = v40;
    v41 = *(v4 + v11);
    v42 = objc_allocWithZone(CRLSelectionModelTranslator);
    v43 = v41;
    v44 = [v42 init];
    v45 = type metadata accessor for CRLSelectionPathValidator();
    v46 = objc_allocWithZone(v45);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *&v46[OBJC_IVAR____TtC8Freeform25CRLSelectionPathValidator_selectionModelTranslator] = v44;
    *(v0 + 144) = v46;
    *(v0 + 152) = v45;
    v47 = objc_msgSendSuper2((v0 + 144), "init");

    v48 = type metadata accessor for CRLCollaboratorCursorCoordinator();
    v49 = objc_allocWithZone(v48);
    v50 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
    *&v49[v50] = sub_100BD4FC8(_swiftEmptyArrayStorage);
    v51 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__selectionCursorMap;
    *&v49[v51] = sub_100BD51B8(_swiftEmptyArrayStorage);
    v49[OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__kShouldDisplayLatestSelection] = 1;
    v52 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorCursorRenderers;
    *&v49[v52] = [objc_opt_self() hashTableWithOptions:512];
    v49[OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors] = 1;
    *&v49[OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_selectionPathValidator] = v47;
    *(v0 + 160) = v49;
    *(v0 + 168) = v48;
    *(v29 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_collaboratorCursorCoordinator) = objc_msgSendSuper2((v0 + 160), "init");
    v53 = type metadata accessor for CRLUIPropertyNotifier();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_propertyStateUpdateCount] = 0;
    swift_unknownObjectWeakInit();
    v55 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
    *&v54[v55] = sub_100BD51E0(_swiftEmptyArrayStorage);
    swift_unknownObjectWeakAssign();
    *(v0 + 176) = v54;
    *(v0 + 184) = v53;
    *(v29 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_uiPropertyNotifier) = objc_msgSendSuper2((v0 + 176), "init");
    *(v29 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator) = [objc_allocWithZone(type metadata accessor for CRLFollowCoordinator()) init];
    v56 = type metadata accessor for CRLEditingCoordinator();
    *(v0 + 192) = v29;
    *(v0 + 200) = v56;
    v57 = objc_msgSendSuper2((v0 + 192), "init");
    *(v0 + 312) = v57;
    v58 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
    swift_unknownObjectWeakAssign();
    v59 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_changeNotifier;
    *(v0 + 320) = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_changeNotifier;
    v60 = *&v57[v59];
    v61 = *&v57[v58];
    v62 = v57;
    [v60 addObserver:v62 forChangeSource:v61];
    [*(*&v62[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_selectionDispatcher] + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_receivers) addObject:*&v62[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_collaboratorCursorCoordinator]];
    swift_unknownObjectWeakAssign();
    v63 = objc_opt_self();
    v64 = [v63 defaultCenter];
    v65 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager;
    [v64 addObserver:v62 selector:"willUndo" name:NSUndoManagerWillUndoChangeNotification object:*&v62[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager]];

    v66 = [v63 defaultCenter];
    [v66 addObserver:v62 selector:"willRedo" name:NSUndoManagerWillRedoChangeNotification object:*&v62[v65]];

    v67 = swift_task_alloc();
    *(v0 + 328) = v67;
    *v67 = v0;
    v67[1] = sub_10092AD6C;

    return sub_10092BF84();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10092AD6C()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10092AE8C, v3, v2);
}

uint64_t sub_10092AE8C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);

  v5 = *&v2[v1];
  v6 = sub_100006370(0, &qword_1019F54D0);
  *(v0 + 104) = v5;
  *(v0 + 112) = v6;
  *(v0 + 120) = 257;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v5;

  sub_1005B981C(&qword_101A08DD0);
  sub_10092E5AC();
  v8 = Publisher<>.sink(receiveValue:)();

  *(v0 + 40) = type metadata accessor for AnyCancellable();
  *(v0 + 48) = &protocol witness table for AnyCancellable;

  *(v0 + 16) = v8;
  v9 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_crlaxAnyRemoteEditDidHappenCancellable;
  swift_beginAccess();
  sub_10002C638(v0 + 16, &v2[v9], &unk_101A08DE0);
  swift_endAccess();

  v10 = *(v0 + 8);
  v11 = *(v0 + 312);

  return v10(v11);
}

void sub_10092B064()
{
  v0 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v0 - 8);
  v2 = &v8[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);

    static Date.now.getter();
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
    v7 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_crlaxFollowFeatureLastScrollTimestamp;
    swift_beginAccess();
    sub_10002C638(v2, v5 + v7, &qword_101A0A320);
    swift_endAccess();
  }
}

uint64_t sub_10092B1A8()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator____lazy_storage___commandProvider;
  if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator____lazy_storage___commandProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator____lazy_storage___commandProvider);
  }

  else
  {
    type metadata accessor for CRLBoardCommandProvider();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10092B2B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10092B3AC()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_collaboratorCursorCoordinator);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v5 + OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator_shouldShowCollaboratorCursors) = v11[15];
  result = sub_100D56F68();
  if (*(v1 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_didFetchEnableCollaboratorCursors) == 1)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;

    sub_10064191C(0, 0, v4, &unk_1014885A0, v10);
  }

  return result;
}

uint64_t sub_10092B588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for CRLBoardCRDTData(0);
  v4[19] = swift_task_alloc();
  type metadata accessor for UUID();
  v4[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v6;
  v4[23] = v5;

  return _swift_task_switch(sub_10092B678, v6, v5);
}

uint64_t sub_10092B678()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 152);
    v18 = *(v0 + 160);
    v3 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v4 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
    *(v0 + 200) = v4;
    sub_1005B981C(&qword_101A28700);
    v5 = (type metadata accessor for CRLBoardIdentifierAndValue(0) - 8);
    v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10146C6B0;
    v8 = v7 + v6;
    v9 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v10 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10000C634(v10 + v11, v2, type metadata accessor for CRLBoardCRDTData);
    v12 = v4;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_100025DE8(v2, type metadata accessor for CRLBoardCRDTData);
    v13 = (*(v3 + v9) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v14 = *v13;
    v15 = v13[1];

    sub_10084BD4C(v18, v14, v15, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v8 + v5[7]) = *(v0 + 240);
    *(v0 + 208) = sub_1005BFFE8(v7);
    swift_setDeallocating();
    sub_100025DE8(v8, type metadata accessor for CRLBoardIdentifierAndValue);
    swift_deallocClassInstance();

    return _swift_task_switch(sub_10092B990, 0, 0);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10092B990()
{
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *(v1 + 16) = *(v0 + 200);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_10092BA7C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000020, 0x8000000101579D60, sub_10092E734, v1, &type metadata for () + 8);
}

uint64_t sub_10092BA7C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10092BC7C;
  }

  else
  {

    v2 = sub_10092BBA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10092BBA0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_10092BC04, v1, v2);
}

uint64_t sub_10092BC04()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10092BC7C()
{
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_10092BCF0, v2, v3);
}

uint64_t sub_10092BCF0()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[24];
  v3 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[17] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v8, "Error setting enableCollaboratorCursors: %@", 43, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10092BE88@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10092BF08(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  return sub_10092B3AC();
}

uint64_t sub_10092BF84()
{
  v1[15] = v0;
  type metadata accessor for CRLBoardCRDTData(0);
  v1[16] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[17] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v1[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_10092C0A0, v3, v2);
}

uint64_t sub_10092C0A0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = *(v0[15] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v0[22] = v5;
  v6 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v7 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10000C634(v7 + v8, v3, type metadata accessor for CRLBoardCRDTData);
  v9 = v5;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_100025DE8(v3, type metadata accessor for CRLBoardCRDTData);
  v10 = (*(v4 + v6) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v2, v11, v12, v1);

  return _swift_task_switch(sub_10092C200, 0, 0);
}

uint64_t sub_10092C200()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = swift_task_alloc();
  v0[23] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[24] = v4;
  v5 = sub_1005B981C(&unk_101A08E00);
  *v4 = v0;
  v4[1] = sub_10092C30C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 26, 0, 0, 0xD000000000000024, 0x8000000101579D00, sub_10092E678, v3, v5);
}

uint64_t sub_10092C30C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10092C5A0;
  }

  else
  {

    v2 = sub_10092C428;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10092C428()
{
  v1 = *(v0 + 144);

  *(v0 + 210) = *(v0 + 208);
  sub_100025DE8(v1, type metadata accessor for CRLBoardIdentifier);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  return _swift_task_switch(sub_10092C4B4, v2, v3);
}

uint64_t sub_10092C4B4()
{
  v1 = *(v0 + 210);
  v2 = *(v0 + 120);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 209) = v1 & 1;
  v3 = v2;
  static Published.subscript.setter();
  sub_10092B3AC();
  v3[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_didFetchEnableCollaboratorCursors] = 1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10092C5A0()
{
  v1 = *(v0 + 144);

  sub_100025DE8(v1, type metadata accessor for CRLBoardIdentifier);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  return _swift_task_switch(sub_10092C62C, v2, v3);
}

uint64_t sub_10092C62C()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[14] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error fetching enableCollaboratorCursors: %@", 44, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v8 = v0[1];

  return v8();
}

void sub_10092C7F0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id, uint64_t))
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = a1;
  a4(a3, v8, ObjectType);
  swift_unknownObjectRelease();
}

BOOL sub_10092C914()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v2 currentUserParticipant];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 permission];
  }

  else
  {
    v5 = [v2 publicPermission];
  }

  return v5 == 3;
}

uint64_t sub_10092CBBC(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*&a1[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator])
  {
    v8 = result;
    v9 = v7;
    v10 = a1;
    a4(v8, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10092CC6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator);
  if (v1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    if (v3 > 0)
    {
      result = 1;
    }

    else
    {
      result = v2 ^ 1u;
    }

    if ((v2 & 1) == 0 && v3 < 1)
    {
      swift_beginAccess();
      return *(*(v1 + 64) + 16) != 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10092CCEC()
{
  v3[3] = &type metadata for CRLFeatureFlags;
  v3[4] = sub_100004D60();
  LOBYTE(v3[0]) = 13;
  v0 = isFeatureEnabled(_:)();
  sub_100005070(v3);
  if (v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v3[0])
    {

      if (qword_1019F21B8 != -1)
      {
        swift_once();
      }

      v1 = static OS_os_log.crlFollow;
      v2 = static os_log_type_t.default.getter();
      sub_100005404(v1, &_mh_execute_header, v2, "Calling didEndFollowing because of the public endFollowSessionForLocalParticipant method was called", 99, 2, _swiftEmptyArrayStorage);
      sub_1008FF010(1);
    }
  }
}

void sub_10092CE1C(void *a1)
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  if (a1)
  {
    v14 = sub_100006370(0, &qword_1019F52C0);
    v15 = sub_10092E610();
    *&v13 = a1;
    sub_100050F74(&v13, v5 + 32);
  }

  else
  {
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v5 + 32) = 7104878;
    *(v5 + 40) = 0xE300000000000000;
  }

  v6 = a1;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v7, "Editing coordinator notifying observers that a share has changed. New share: %@", 79, 2, v5);
  swift_setDeallocating();
  sub_100005070(v5 + 32);
  v8 = [*(v1 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers) allObjects];
  sub_1005B981C(&qword_101A08DF8);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_15:

    return;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v12 shareStateUpdatedWithShare:v6];
      swift_unknownObjectRelease();
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_10092D11C(SEL *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers) allObjects];
  sub_1005B981C(&qword_101A08DF8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v7 *a1];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

id sub_10092D2B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLEditingCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLEditingCoordinator()
{
  result = qword_101A08D48;
  if (!qword_101A08D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10092D498()
{
  sub_10003A3F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10092D574@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLEditingCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_10092D5B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
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
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (*&v4[OBJC_IVAR____TtC8Freeform15CRLChangeRecord_kind] == 1)
      {
        v7 = *&v4[OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details];
        v8 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
        swift_beginAccess();
        v9 = *(v7 + v8);
        if (*(v9 + 16))
        {
          v10 = sub_1007CF108(3);
          if (v11)
          {
            sub_10000BE14(*(v9 + 56) + 32 * v10, v14, &unk_1019F4D00);
            *(&v16 + 1) = sub_1005B981C(&unk_1019F4D00);
            v12 = swift_allocObject();
            *&v15 = v12;
            v13 = v14[1];
            *(v12 + 16) = v14[0];
            *(v12 + 32) = v13;
            sub_10000CAAC(&v15, &unk_1019F4D00);
            sub_10092D78C();

            return;
          }
        }

        v15 = 0u;
        v16 = 0u;
        sub_10000CAAC(&v15, &unk_1019F4D00);
      }

      else
      {
      }

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_10092D78C()
{
  inserted = type metadata accessor for CRLBoardInsertStyleData(0);
  __chkstk_darwin(inserted - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v5 = *&v4[OBJC_IVAR____TtC8Freeform8CRLBoard_data] + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  sub_10000C634(v5 + *(v6 + 28), v3, type metadata accessor for CRLBoardInsertStyleData);
  v7 = type metadata accessor for CRLBoardItemFactory();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board] = v4;
  sub_10000C634(v3, &v8[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_insertStyleSettings], type metadata accessor for CRLBoardInsertStyleData);
  v13.receiver = v8;
  v13.super_class = v7;
  v9 = v4;
  v10 = objc_msgSendSuper2(&v13, "init");
  sub_100025DE8(v3, type metadata accessor for CRLBoardInsertStyleData);
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
  *(v0 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory) = v10;
}

uint64_t sub_10092DA60@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v14 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v13 + v14, v8, &qword_101A08DF0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_10000CAAC(v8, &qword_101A08DF0);
    sub_1006355A8();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_10000C634(v8, v5, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    sub_10000CAAC(v8, &qword_101A08DF0);
    (*(v10 + 16))(v12, &v5[*(v2 + 20)], v9);
    sub_100025DE8(v5, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    return (*(v10 + 32))(v17, v12, v9);
  }
}

id sub_10092DD34(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers);
  result = [v3 containsObject:a1];
  if ((result & 1) == 0)
  {

    return [v3 addObject:a1];
  }

  return result;
}

id sub_10092DDA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers);
  result = [v3 containsObject:a1];
  if (result)
  {

    return [v3 removeObject:a1];
  }

  return result;
}

uint64_t sub_10092DE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for CRLBoardIdentifier(0);
  v3[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_10092DEDC, v5, v4);
}

uint64_t sub_10092DEDC()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_10000C634(v0[2], v1, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLBoardActor();
  v3 = swift_allocObject();
  v0[9] = v3;
  v4 = v2;
  swift_defaultActor_initialize();
  sub_1005EB270(v1, v3 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier);
  *(v3 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store) = v4;

  return _swift_task_switch(sub_10092DFB8, v3, 0);
}

uint64_t sub_10092DFB8()
{
  v1 = *(v0 + 72);
  type metadata accessor for CRLBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_10092E080;

  return sub_100797820(v2, v1 + v3, 0);
}

uint64_t sub_10092E080(void *a1)
{
  v4 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];

    return _swift_task_switch(sub_10092E380, v5, v6);
  }

  else
  {
    v7 = v4[3];
    objc_allocWithZone(type metadata accessor for CRLEditingCoordinator());
    v8 = v7;

    v9 = a1;

    v10 = swift_task_alloc();
    v4[13] = v10;
    *v10 = v4;
    v10[1] = sub_10092E258;
    v11 = v4[9];
    v12 = v4[4];
    v13 = v4[3];

    return sub_10092A454(v13, v11, v9, v12);
  }
}

uint64_t sub_10092E258(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_10092E4F0;
  }

  else
  {
    v4[15] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_10092E430;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10092E380()
{

  v1 = *(v0 + 16);

  sub_100025DE8(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10092E430()
{
  v1 = v0[11];
  v2 = v0[2];

  sub_100025DE8(v2, type metadata accessor for CRLBoardIdentifier);

  v3 = v0[1];
  v4 = v0[15];

  return v3(v4);
}

uint64_t sub_10092E4F0()
{

  v1 = *(v0 + 16);

  sub_100025DE8(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10092E5AC()
{
  result = qword_101A08DD8;
  if (!qword_101A08DD8)
  {
    sub_1005C4E5C(&qword_101A08DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08DD8);
  }

  return result;
}

unint64_t sub_10092E610()
{
  result = qword_101A1BA40;
  if (!qword_101A1BA40)
  {
    sub_100006370(255, &qword_1019F52C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1BA40);
  }

  return result;
}

uint64_t sub_10092E680(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10092B588(a1, v4, v5, v6);
}

uint64_t sub_10092E73C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v3)
  {

    v4 = v3;
    v5 = [v4 currentUserParticipant];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 permission];
    }

    else
    {
      v7 = [v4 publicPermission];
    }

    v8 = v7 == 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a2 + 16);

  return v9(a2, v8);
}

unint64_t sub_10092E834()
{
  result = qword_101A08E10;
  if (!qword_101A08E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08E10);
  }

  return result;
}

uint64_t sub_10092E894()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_10092E934()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

uint64_t sub_10092E9DC()
{
  sub_100005070(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_persistenceContext);
  sub_10002640C(*(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData), *(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData);
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData + 8);

  return sub_100025870(v1, v2);
}

uint64_t sub_10092EA34()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8));
  v1 = OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_persistenceContext;

  sub_100005070(v0 + v1);
  sub_10002640C(*(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData), *(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData), *(v0 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_ckMergeableRecordValueData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_10092EBA4()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData + 8));

  return swift_deallocClassInstance();
}

unint64_t sub_10092ECB4()
{
  result = qword_101A09170;
  if (!qword_101A09170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09170);
  }

  return result;
}

unint64_t sub_10092ED0C()
{
  result = qword_101A09178;
  if (!qword_101A09178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09178);
  }

  return result;
}

unint64_t sub_10092EDE4()
{
  result = qword_101A09180;
  if (!qword_101A09180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09180);
  }

  return result;
}

uint64_t sub_10092EE38@<X0>(uint64_t *a1@<X8>)
{
  v48 = a1;
  v47 = type metadata accessor for InputConnectionBehavior();
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v2 - 8);
  v45 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = v30 - v5;
  v6 = sub_1005B981C(&qword_1019FC3D8);
  __chkstk_darwin(v6 - 8);
  v43 = v30 - v7;
  v8 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - v9;
  v41 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v41 - 8);
  __chkstk_darwin(v41);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v33 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for LocalizedStringResource();
  v37 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v30[1] = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1005B981C(&qword_101A09198);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v11 + 104);
  v40 = v11 + 104;
  v42 = v20;
  v34 = v13;
  v20(v13);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v18 + 56);
  v36 = v18 + 56;
  v38 = v21;
  v21(v10, 1, 1, v17);
  v52 = 0;
  v22 = type metadata accessor for String.IntentInputOptions();
  (*(*(v22 - 8) + 56))(v43, 1, 1, v22);
  v23 = type metadata accessor for IntentDialog();
  v24 = *(*(v23 - 8) + 56);
  v24(v46, 1, 1, v23);
  v32 = enum case for InputConnectionBehavior.default(_:);
  v25 = *(v49 + 104);
  v49 += 104;
  v31 = v25;
  v26 = v44;
  v25(v44);
  *v48 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_101A091A0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42(v34, v39, v41);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38(v10, 1, 1, v37);
  LOBYTE(v52) = 0;
  v24(v46, 1, 1, v23);
  v24(v45, 1, 1, v23);
  v31(v26, v32, v47);
  sub_100930180();
  v27 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v28 = v48;
  v48[1] = v27;
  sub_1005B981C(&qword_1019F6280);
  v50 = 0xD00000000000001FLL;
  v51 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v28[2] = result;
  v28[6] = &type metadata for CRLUtilitiesIntentPerformer;
  v28[7] = &off_1018B9260;
  return result;
}

uint64_t sub_10092F59C(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for Logger();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10092F65C, 0, 0);
}

uint64_t sub_10092F65C()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = static OS_os_log.appIntents;
  Logger.init(_:)();
  *(v0 + 144) = *(v1 + 8);
  IntentParameter.wrappedValue.getter();
  v3 = *(v0 + 184);
  IntentParameter.wrappedValue.getter();
  v4 = *(v0 + 88);
  *(v0 + 152) = v4;
  AppDependency.wrappedValue.getter();
  *(v0 + 40) = &type metadata for CRLBoardLibraryProvidingDependency;
  *(v0 + 48) = &off_1018ADA58;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_10092F7AC;

  return (sub_101245024)(v3, v4, v0 + 16);
}

uint64_t sub_10092F7AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_10092FA5C;
  }

  else
  {
    *(v4 + 176) = a1;
    sub_100005070(v4 + 16);
    v5 = sub_10092F900;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10092F900()
{
  v1 = v0[22];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      v6._countAndFlagsBits = v5;
      v6._object = v4;
      String.append(_:)(v6);
      v7._countAndFlagsBits = 10;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];

  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  sub_10003FB2C();
  static IntentResult.result<A>(value:)();
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10092FA5C()
{
  v25 = v0;
  v1 = v0[21];
  sub_100005070((v0 + 2));
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  v2._object = 0x8000000101579F50;
  v2._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v2);
  IntentParameter.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x2064656C69616620;
  v3._object = 0xAD0000A0C29380E2;
  String.append(_:)(v3);
  v0[12] = v1;
  sub_1005B981C(&unk_1019F6B40);
  _print_unlocked<A, B>(_:_:)();
  v4 = v0[7];
  v5 = v0[8];
  sub_1005B981C(&unk_1019F61D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146C6B0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v11 = sub_101007640(v4, v5, &v23);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_100005070(v10);
  }

  else
  {
  }

  v13 = *(v6 + 32);
  v12 = *(v6 + 40);
  v23 = 0;
  v24 = 0xE000000000000000;

  v14._countAndFlagsBits = v13;
  v14._object = v12;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);

  v17 = v23;
  v16 = v24;
  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[15];

  v0[9] = v17;
  v0[10] = v16;
  sub_10003FB2C();
  static IntentResult.result<A>(value:)();
  (*(v19 + 8))(v18, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10092FD94()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD6D70);
  sub_1005EB3DC(v6, qword_101AD6D70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10092FF8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F19C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD6D70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100930034(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_10092F59C(a1);
}

uint64_t sub_1009300D0(uint64_t a1)
{
  v2 = sub_10092EDE4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10093011C()
{
  result = qword_101A09188;
  if (!qword_101A09188)
  {
    sub_1005C4E5C(&qword_101A09190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09188);
  }

  return result;
}

unint64_t sub_100930180()
{
  result = qword_101A091A8;
  if (!qword_101A091A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A091A8);
  }

  return result;
}

id sub_1009301E4(char *a1, void *a2)
{
  v3 = v2;
  v106 = a2;
  v107 = a1;
  v110 = type metadata accessor for CharacterSet();
  v102 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for NSFastEnumerationIterator();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F19B0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v10 = type metadata accessor for UTType();
    sub_1005EB3DC(v10, qword_101AD6CD0);
    v11 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v13 = [v11 initWithContentType:isa];

    v108 = v3;
    v14 = *&v3[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v15 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_1005E2B78(v14 + v15, v9);
    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.getter();
    sub_1005E2BDC(v9);
    v16 = String._bridgeToObjectiveC()();

    [v13 setTitle:v16];

    sub_1005B981C(&unk_1019F61D0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10146C4D0;
    v18 = objc_opt_self();
    v19 = [v18 mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v17 + 32) = v23;
    *(v17 + 40) = v25;
    v26 = [v18 mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v17 + 48) = v30;
    *(v17 + 56) = v32;
    v33 = [v18 mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    v37 = v13;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(v17 + 64) = v38;
    *(v17 + 72) = v40;
    v41 = Array._bridgeToObjectiveC()().super.isa;

    [v13 setKeywords:v41];

    v42 = [v18 mainBundle];
    v43 = String._bridgeToObjectiveC()();
    v44 = String._bridgeToObjectiveC()();
    v45 = [v42 localizedStringForKey:v43 value:v44 table:0];

    if (!v45)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = String._bridgeToObjectiveC()();
    }

    [v13 setContentDescription:{v45, v102}];

    v47 = v106;
    v46 = v107;
    if (v106)
    {
      sub_100930DEC();
      v48 = v47;
      v49 = NSNumber.init(integerLiteral:)(9).super.super.isa;
      [v37 setValue:v49 forCustomKey:v48];
    }

    v116 = _swiftEmptyArrayStorage;
    v50 = v108;
    v105 = v37;
    if (v46)
    {

      sub_100798D48(v51);
      v52 = [objc_allocWithZone(CRLDocumentModelEnumerator) initWithRootModelObject:*&v50[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] flags:0 filter:0];
    }

    else
    {
      v53 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
      v52 = [objc_allocWithZone(CRLDocumentModelEnumerator) initWithRootModelObject:*&v108[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] flags:0 filter:0];
      if ([objc_opt_self() isOSFeatureEnabled:12])
      {
        v54 = type metadata accessor for CRLPKDrawingIndexableModel();
        v55 = objc_allocWithZone(v54);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        v111.receiver = v55;
        v111.super_class = v54;
        v56 = objc_msgSendSuper2(&v111, "init");
        sub_1005B981C(&unk_101A23C50);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_10146BDE0;
        v58 = *&v50[v53];
        v59 = type metadata accessor for CRLRootContainerItem(0);
        *(v57 + 32) = v58;
        *(v57 + 88) = v54;
        *(v57 + 56) = v59;
        *(v57 + 64) = v56;
        v60 = objc_allocWithZone(NSArray);
        v61 = v58;
        v62 = v56;
        v63 = Array._bridgeToObjectiveC()().super.isa;

        v64 = [v60 initWithArray:v63];

        v65 = [v64 objectEnumerator];
        v66 = [objc_allocWithZone(CRLDocumentModelEnumerator) initWithEnumerator:v65 filter:0];

        v52 = v66;
      }
    }

    v67 = v52;
    NSEnumerator.makeIterator()();
    v108 = v67;

    NSFastEnumerationIterator.next()();
    if (!v115)
    {
      break;
    }

    v9 = &unk_101A091B0;
    v3 = &type metadata for Any;
    while (1)
    {
      sub_10000BF3C(&v114, &v113);
      sub_1005B981C(&unk_101A091B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v68 = v112;
      ObjectType = swift_getObjectType();
      v70 = (*(v68 + 8))(ObjectType, v68);
      v71 = *(v70 + 16);
      v72 = v116;
      v73 = *(v116 + 2);
      v74 = v73 + v71;
      if (__OFADD__(v73, v71))
      {
        break;
      }

      v75 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v77 = *(v72 + 3) >> 1, v77 >= v74))
      {
        if (!*(v75 + 16))
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v73 <= v74)
        {
          v78 = v73 + v71;
        }

        else
        {
          v78 = v73;
        }

        v72 = sub_100024CBC(isUniquelyReferenced_nonNull_native, v78, 1, v72);
        v77 = *(v72 + 3) >> 1;
        if (!*(v75 + 16))
        {
LABEL_12:

          if (v71)
          {
            goto LABEL_38;
          }

          goto LABEL_13;
        }
      }

      if (v77 - *(v72 + 2) < v71)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      if (v71)
      {
        v79 = *(v72 + 2);
        v80 = __OFADD__(v79, v71);
        v81 = v79 + v71;
        if (v80)
        {
          goto LABEL_40;
        }

        *(v72 + 2) = v81;
      }

LABEL_13:
      swift_unknownObjectRelease();
      v116 = v72;
LABEL_14:
      NSFastEnumerationIterator.next()();
      if (!v115)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

LABEL_29:
  (*(v103 + 8))(v6, v104);
  v82 = v116;
  v83 = *(v116 + 2);
  if (v83)
  {
    *&v113 = _swiftEmptyArrayStorage;
    sub_100034080(0, v83, 0);
    v84 = v113;
    v85 = (v102 + 8);
    v107 = v82;
    v86 = v82 + 40;
    v87 = v109;
    do
    {

      v88 = String._bridgeToObjectiveC()();
      v89 = [v88 crl_stringByFixingBrokenSurrogatePairs];

      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      *&v114 = v90;
      *(&v114 + 1) = v92;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_100017CD8();
      v93 = StringProtocol.trimmingCharacters(in:)();
      v95 = v94;

      (*v85)(v87, v110);

      *&v113 = v84;
      v97 = v84[2];
      v96 = v84[3];
      if (v97 >= v96 >> 1)
      {
        sub_100034080((v96 > 1), v97 + 1, 1);
        v84 = v113;
      }

      v84[2] = v97 + 1;
      v98 = &v84[2 * v97];
      v98[4] = v93;
      v98[5] = v95;
      v86 += 16;
      --v83;
    }

    while (v83);
  }

  else
  {

    v84 = _swiftEmptyArrayStorage;
  }

  *&v114 = v84;
  sub_1005B981C(&unk_1019F4D80);
  sub_100613214();
  BidirectionalCollection<>.joined(separator:)();

  v99 = String._bridgeToObjectiveC()();

  v100 = v105;
  [v105 setTextContent:v99];

  return v100;
}

unint64_t sub_100930DEC()
{
  result = qword_1019FF3E0;
  if (!qword_1019FF3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FF3E0);
  }

  return result;
}

uint64_t sub_100930E38(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for CRLTableKnobVariant(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for CRLTableKnobVariant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100930EF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1009310A4(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo__selectedBoardItems;

  v7 = sub_100BC5454(v6, a1);

  if ((v7 & 1) == 0)
  {
    *(v2 + v5) = a1;

    v8 = sub_1006768FC(a1);
    v9 = sub_1005F6690(v8, a2);

    v10 = *(v2 + OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_geometry);
    *(v2 + OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_geometry) = v9;
  }
}

id sub_1009312A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMultiselectResizeInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100931358(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_parentInfo;
  *&v1[OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_parentInfo] = 0;
  v1[OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_isSupported] = 1;
  v4 = OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_repClass;
  *&v1[v4] = sub_100006370(0, &unk_101A09270);
  *&v1[v3] = a1;
  v5 = objc_allocWithZone(CRLCanvasInfoGeometry);
  swift_unknownObjectRetain();
  v6 = [v5 init];
  *&v1[OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo_geometry] = v6;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BC5DC(_swiftEmptyArrayStorage);
  }

  else
  {
    v7 = _swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC8Freeform24CRLMultiselectResizeInfo__selectedBoardItems] = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CRLMultiselectResizeInfo();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100931458@<X0>(uint64_t a1@<X8>)
{
  switch(*(v1 + 64))
  {
    case 1:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_156;
      }

      sub_10000BF3C(&v122, &v96);
      type metadata accessor for CGRect(0);
      swift_dynamicCast();
      v91 = v115;
      v94 = v114;
      result = sub_100601584(v1 + 32, &v132);
      if (!v133)
      {
        goto LABEL_183;
      }

      sub_10000BF3C(&v132, &v134);
      result = swift_dynamicCast();
      *a1 = v94;
      *(a1 + 16) = v91;
      v44 = v131;
      *(a1 + 32) = v130;
      *(a1 + 48) = v44;
      v6 = 2;
      goto LABEL_141;
    case 2:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_153;
      }

      sub_10000BF3C(&v122, &v96);
      type metadata accessor for CGPoint(0);
      swift_dynamicCast();
      v38 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_180;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      *a1 = v38;
      *(a1 + 16) = v130;
      v6 = 4;
      goto LABEL_141;
    case 3:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_154;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v40 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_181;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v41 = v130;
      *a1 = v40;
      *(a1 + 4) = v41;
      v6 = 6;
      goto LABEL_141;
    case 4:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_149;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v30 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_176;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v31 = v130;
      *a1 = v30;
      *(a1 + 1) = v31;
      v6 = 8;
      goto LABEL_141;
    case 5:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_158;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v48 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_185;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v49 = v130;
      *a1 = v48;
      *(a1 + 1) = v49;
      v6 = 10;
      goto LABEL_141;
    case 6:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_161;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v52 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_188;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v53 = v130;
      *a1 = v52;
      *(a1 + 1) = v53;
      v6 = 12;
      goto LABEL_141;
    case 7:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_155;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v42 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_182;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v43 = v130;
      *a1 = v42;
      *(a1 + 8) = v43;
      v6 = 14;
      goto LABEL_141;
    case 8:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_162;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v56 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_189;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v57 = v130;
      *a1 = v56;
      *(a1 + 8) = v57;
      v6 = 16;
      goto LABEL_141;
    case 9:
      sub_100601584(v1, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v34 = v114;
      }

      else
      {
        sub_1005E09AC(&v122);
        v34 = 0;
      }

      sub_100601584(v1 + 32, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v85 = v114;
      }

      else
      {
        result = sub_1005E09AC(&v122);
        v85 = 0;
      }

      *a1 = v34;
      *(a1 + 8) = v85;
      v6 = 18;
      goto LABEL_141;
    case 0xA:
      sub_100601584(v1, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v55 = v114;
      }

      else
      {
        sub_1005E09AC(&v122);
        v55 = 0;
      }

      sub_100601584(v1 + 32, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v89 = v114;
      }

      else
      {
        result = sub_1005E09AC(&v122);
        v89 = 0;
      }

      *a1 = v55;
      *(a1 + 8) = v89;
      v6 = 20;
      goto LABEL_141;
    case 0xB:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_148;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v28 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_175;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v29 = v130;
      *a1 = v28;
      *(a1 + 4) = v29;
      v6 = 22;
      goto LABEL_141;
    case 0xC:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_150;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v32 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_177;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v33 = v130;
      *a1 = v32;
      *(a1 + 8) = v33;
      v6 = 24;
      goto LABEL_141;
    case 0xD:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_160;
      }

      sub_10000BF3C(&v122, &v96);
      type metadata accessor for CGSize(0);
      swift_dynamicCast();
      v51 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_187;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      *a1 = v51;
      *(a1 + 16) = v130;
      v6 = 26;
      goto LABEL_141;
    case 0xE:
      sub_100601584(v1, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v25 = v114;
      }

      else
      {
        sub_1005E09AC(&v122);
        v25 = 0;
      }

      sub_100601584(v1 + 32, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v84 = v114;
      }

      else
      {
        result = sub_1005E09AC(&v122);
        v84 = 0;
      }

      *a1 = v25;
      *(a1 + 8) = v84;
      v6 = 28;
      goto LABEL_141;
    case 0xF:
      sub_100601584(v1, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGPath(0);
        swift_dynamicCast();
        v39 = v114;
      }

      else
      {
        sub_1005E09AC(&v122);
        v39 = 0;
      }

      sub_100601584(v1 + 32, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGPath(0);
        result = swift_dynamicCast();
        v86 = v114;
      }

      else
      {
        result = sub_1005E09AC(&v122);
        v86 = 0;
      }

      *a1 = v39;
      *(a1 + 8) = v86;
      v6 = 30;
      goto LABEL_141;
    case 0x10:
      sub_100601584(v1, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        sub_1005B981C(&qword_101A09290);
        swift_dynamicCast();
        v24 = v114;
      }

      else
      {
        sub_1005E09AC(&v122);
        v24 = 0;
      }

      sub_100601584(v1 + 32, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        sub_1005B981C(&qword_101A09290);
        result = swift_dynamicCast();
        v83 = v114;
      }

      else
      {
        result = sub_1005E09AC(&v122);
        v83 = 0;
      }

      *a1 = v24;
      *(a1 + 8) = v83;
      v6 = 32;
      goto LABEL_141;
    case 0x11:
      sub_100601584(v1, a1);
      result = sub_100601584(v1 + 32, a1 + 32);
      v6 = 34;
      goto LABEL_141;
    case 0x12:
      sub_100601584(v1, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        sub_1005B981C(&qword_101A09290);
        swift_dynamicCast();
        v54 = v114;
      }

      else
      {
        sub_1005E09AC(&v122);
        v54 = 0;
      }

      sub_100601584(v1 + 32, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        sub_1005B981C(&qword_101A09290);
        result = swift_dynamicCast();
        v88 = v114;
      }

      else
      {
        result = sub_1005E09AC(&v122);
        v88 = 0;
      }

      *a1 = v54;
      *(a1 + 8) = v88;
      v6 = 36;
      goto LABEL_141;
    case 0x13:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_165;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v62 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_192;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v63 = v130;
      *a1 = v62;
      *(a1 + 1) = v63;
      v6 = 38;
      goto LABEL_141;
    case 0x14:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_157;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v46 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_184;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v47 = v130;
      *a1 = v46;
      *(a1 + 8) = v47;
      v6 = 40;
      goto LABEL_141;
    case 0x15:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_159;
      }

      sub_10000BF3C(&v122, &v96);
      type metadata accessor for CGRect(0);
      swift_dynamicCast();
      v92 = v115;
      v95 = v114;
      result = sub_100601584(v1 + 32, &v132);
      if (!v133)
      {
        goto LABEL_186;
      }

      sub_10000BF3C(&v132, &v134);
      result = swift_dynamicCast();
      *a1 = v95;
      *(a1 + 16) = v92;
      v50 = v131;
      *(a1 + 32) = v130;
      *(a1 + 48) = v50;
      v6 = 42;
      goto LABEL_141;
    case 0x16:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_164;
      }

      sub_10000BF3C(&v122, &v96);
      type metadata accessor for CGPoint(0);
      swift_dynamicCast();
      v61 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_191;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      *a1 = v61;
      *(a1 + 16) = v130;
      v6 = 44;
      goto LABEL_141;
    case 0x17:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_166;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v64 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_193;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v65 = v130;
      *a1 = v64;
      *(a1 + 8) = v65;
      v6 = 46;
      goto LABEL_141;
    case 0x18:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_152;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v36 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_179;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v37 = v130;
      *a1 = v36;
      *(a1 + 8) = v37;
      v6 = 48;
      goto LABEL_141;
    case 0x19:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_151;
      }

      sub_10000BF3C(&v122, &v96);
      type metadata accessor for CGPoint(0);
      swift_dynamicCast();
      v35 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_178;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      *a1 = v35;
      *(a1 + 16) = v130;
      v6 = 50;
      goto LABEL_141;
    case 0x1A:
      result = sub_100601584(v1, &v132);
      if (!v133)
      {
        goto LABEL_169;
      }

      sub_10000BF3C(&v132, &v134);
      type metadata accessor for CATransform3D(0);
      swift_dynamicCast();
      v126 = v118;
      v127 = v119;
      v128 = v120;
      v129 = v121;
      v122 = v114;
      v123 = v115;
      v124 = v116;
      v125 = v117;
      result = sub_100601584(v1 + 32, &v112);
      if (!v113)
      {
        goto LABEL_196;
      }

      sub_10000BF3C(&v112, &v130);
      result = swift_dynamicCast();
      v71 = v128;
      v70 = v129;
      v102 = v128;
      v103 = v129;
      v73 = v126;
      v72 = v127;
      v100 = v126;
      v101 = v127;
      v74 = v123;
      v96 = v122;
      v97 = v123;
      v75 = v124;
      v98 = v124;
      v99 = v125;
      *a1 = v122;
      *(a1 + 16) = v74;
      *(a1 + 96) = v71;
      *(a1 + 112) = v70;
      *(a1 + 64) = v73;
      *(a1 + 80) = v72;
      v76 = v109;
      v77 = v110;
      v78 = v107;
      *(a1 + 192) = v108;
      *(a1 + 208) = v76;
      v79 = v111;
      *(a1 + 224) = v77;
      *(a1 + 240) = v79;
      v80 = v105;
      v81 = v106;
      v82 = v99;
      *(a1 + 128) = v104;
      *(a1 + 144) = v80;
      *(a1 + 160) = v81;
      *(a1 + 176) = v78;
      *(a1 + 32) = v75;
      *(a1 + 48) = v82;
      v6 = 52;
      goto LABEL_141;
    case 0x1B:
      result = sub_100601584(v1, &v132);
      if (!v133)
      {
        goto LABEL_145;
      }

      sub_10000BF3C(&v132, &v134);
      type metadata accessor for CATransform3D(0);
      swift_dynamicCast();
      v126 = v118;
      v127 = v119;
      v128 = v120;
      v129 = v121;
      v122 = v114;
      v123 = v115;
      v124 = v116;
      v125 = v117;
      result = sub_100601584(v1 + 32, &v112);
      if (!v113)
      {
        goto LABEL_172;
      }

      sub_10000BF3C(&v112, &v130);
      result = swift_dynamicCast();
      v10 = v128;
      v9 = v129;
      v102 = v128;
      v103 = v129;
      v12 = v126;
      v11 = v127;
      v100 = v126;
      v101 = v127;
      v13 = v123;
      v96 = v122;
      v97 = v123;
      v14 = v124;
      v98 = v124;
      v99 = v125;
      *a1 = v122;
      *(a1 + 16) = v13;
      *(a1 + 96) = v10;
      *(a1 + 112) = v9;
      *(a1 + 64) = v12;
      *(a1 + 80) = v11;
      v15 = v109;
      v16 = v110;
      v17 = v107;
      *(a1 + 192) = v108;
      *(a1 + 208) = v15;
      v18 = v111;
      *(a1 + 224) = v16;
      *(a1 + 240) = v18;
      v19 = v105;
      v20 = v106;
      v21 = v99;
      *(a1 + 128) = v104;
      *(a1 + 144) = v19;
      *(a1 + 160) = v20;
      *(a1 + 176) = v17;
      *(a1 + 32) = v14;
      *(a1 + 48) = v21;
      v6 = 54;
      goto LABEL_141;
    case 0x1C:
      result = sub_100601584(v1, &v134);
      if (!v135)
      {
        goto LABEL_167;
      }

      sub_10000BF3C(&v134, &v114);
      type metadata accessor for CGAffineTransform(0);
      swift_dynamicCast();
      v93 = v97;
      v66 = v98;
      result = sub_100601584(v1 + 32, &v130);
      if (!*(&v131 + 1))
      {
        goto LABEL_194;
      }

      sub_10000BF3C(&v130, &v132);
      result = swift_dynamicCast();
      *a1 = v96;
      *(a1 + 16) = v93;
      *(a1 + 32) = v66;
      v67 = v123;
      *(a1 + 48) = v122;
      *(a1 + 64) = v67;
      *(a1 + 80) = v124;
      v6 = 56;
      goto LABEL_141;
    case 0x1D:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_168;
      }

      sub_10000BF3C(&v122, &v96);
      type metadata accessor for CGPath(0);
      swift_dynamicCast();
      v68 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_195;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v69 = v130;
      *a1 = v68;
      *(a1 + 8) = v69;
      v6 = 58;
      goto LABEL_141;
    case 0x1E:
      sub_100601584(v1, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v58 = v114;
      }

      else
      {
        sub_1005E09AC(&v122);
        v58 = 0;
      }

      sub_100601584(v1 + 32, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v90 = v114;
      }

      else
      {
        result = sub_1005E09AC(&v122);
        v90 = 0;
      }

      *a1 = v58;
      *(a1 + 8) = v90;
      v6 = 60;
      goto LABEL_141;
    case 0x1F:
      sub_100601584(v1, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v45 = v114;
      }

      else
      {
        sub_1005E09AC(&v122);
        v45 = 0;
      }

      sub_100601584(v1 + 32, &v122);
      if (*(&v123 + 1))
      {
        sub_10000BF3C(&v122, &v96);
        type metadata accessor for CGColor(0);
        result = swift_dynamicCast();
        v87 = v114;
      }

      else
      {
        result = sub_1005E09AC(&v122);
        v87 = 0;
      }

      *a1 = v45;
      *(a1 + 8) = v87;
      v6 = 62;
      goto LABEL_141;
    case 0x20:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_163;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v59 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_190;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v60 = v130;
      *a1 = v59;
      *(a1 + 8) = v60;
      v6 = 64;
      goto LABEL_141;
    case 0x21:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_147;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v26 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_174;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v27 = v130;
      *a1 = v26;
      *(a1 + 8) = v27;
      v6 = 66;
      goto LABEL_141;
    case 0x22:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_146;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v22 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_173;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v23 = v130;
      *a1 = v22;
      *(a1 + 8) = v23;
      v6 = 68;
      goto LABEL_141;
    case 0x23:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
        return result;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v4 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_170;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v5 = v130;
      *a1 = v4;
      *(a1 + 8) = v5;
      v6 = 70;
LABEL_141:
      *(a1 + 256) = v6;
      return result;
    case 0x24:
      result = sub_100601584(v1, &v122);
      if (!*(&v123 + 1))
      {
        goto LABEL_144;
      }

      sub_10000BF3C(&v122, &v96);
      swift_dynamicCast();
      v7 = v132;
      result = sub_100601584(v1 + 32, &v134);
      if (!v135)
      {
        goto LABEL_171;
      }

      sub_10000BF3C(&v134, &v114);
      result = swift_dynamicCast();
      v8 = v130;
      *a1 = v7;
      *(a1 + 8) = v8;
      v6 = 72;
      goto LABEL_141;
    default:
      sub_100601584(v1, a1);
      result = sub_100601584(v1 + 32, a1 + 32);
      *(a1 + 256) = 0;
      return result;
  }
}

BOOL sub_100932D3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = sub_100B76520(*(a1 + 64));
  v7 = v6;
  if (v5 == sub_100B76520(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (!sub_100B78DFC(a1, a2 + 32))
  {
    return 0;
  }

  return sub_100B78DFC(a1 + 32, a2 + 32);
}

unint64_t sub_100932E20(uint64_t a1)
{
  result = sub_100932E48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100932E48()
{
  result = qword_101A09298;
  if (!qword_101A09298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09298);
  }

  return result;
}

void sub_100933184(uint64_t a1@<X8>)
{
  v8 = sub_100BB30D8();
  v2 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v3 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v2);
  (*(v3 + 16))(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v4 crl_pathUTI];

  if (v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UTType.init(_:)();
  }

  else
  {

    v6 = type metadata accessor for UTType();
    v7 = *(*(v6 - 8) + 56);

    v7(a1, 1, 1, v6);
  }
}

uint64_t sub_1009332CC()
{
  v1 = [*v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100933368()
{
  v1 = [*v0 filename];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1009333F4@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

double sub_1009334AC@<D0>(_OWORD *a1@<X8>)
{
  sub_100929780(v3);
  if (v4)
  {
    sub_10000BE14(v3, a1, &unk_1019F4D00);
    sub_1005F8A64(v3);
  }

  else
  {
    sub_10000CAAC(v3, &unk_101A09F80);
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_100933530@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CRLSpringLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  v4 = Strong;
  sub_1008DA1EC(v1, v8);
  sub_100B77684(v4, &v9);

  sub_1007D0604(v8);
  v5 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
LABEL_6:
    sub_10000CAAC(&v9, &qword_1019F7310);
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    goto LABEL_7;
  }

  v6 = v11;
  sub_100020E58(&v9, *(&v10 + 1));
  (*(v6 + 48))(v12, v5, v6);
  sub_100005070(&v9);
  if (v13)
  {
    sub_10000BE14(v12, a1, &unk_1019F4D00);
    sub_1005F8A64(v12);
    return result;
  }

LABEL_7:
  sub_10000CAAC(v12, &unk_101A09F80);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_10093367C@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for CRLCanvasLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_6;
  }

  v5 = Strong;
  v6 = (v1 + *(v3 + 48));
  v7 = v6[3];
  v8 = v6[4];
  sub_100020E58(v6, v7);
  (*(v8 + 56))(v12, v7, v8);
  sub_100B77684(v5, &v13);

  sub_100687CF4(v12);
  v9 = *(&v14 + 1);
  if (!*(&v14 + 1))
  {
LABEL_6:
    sub_10000CAAC(&v13, &qword_1019F7310);
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    goto LABEL_7;
  }

  v10 = v15;
  sub_100020E58(&v13, *(&v14 + 1));
  (*(v10 + 48))(v16, v9, v10);
  sub_100005070(&v13);
  if (v17)
  {
    sub_10000BE14(v16, a1, &unk_1019F4D00);
    sub_1005F8A64(v16);
    return result;
  }

LABEL_7:
  sub_10000CAAC(v16, &unk_101A09F80);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_100933800@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CRLBasicLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  v4 = Strong;
  sub_1005F8AB8(v1, v8);
  sub_100B77684(v4, &v9);

  sub_1005F8B14(v8);
  v5 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
LABEL_6:
    sub_10000CAAC(&v9, &qword_1019F7310);
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    goto LABEL_7;
  }

  v6 = v11;
  sub_100020E58(&v9, *(&v10 + 1));
  (*(v6 + 48))(v12, v5, v6);
  sub_100005070(&v9);
  if (v13)
  {
    sub_10000BE14(v12, a1, &unk_1019F4D00);
    sub_1005F8A64(v12);
    return result;
  }

LABEL_7:
  sub_10000CAAC(v12, &unk_101A09F80);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_10093394C@<D0>(_OWORD *a1@<X8>)
{
  sub_100929780(v3);
  if (v4[6])
  {
    sub_10000BE14(v4, a1, &unk_1019F4D00);
    sub_1005F8A64(v3);
  }

  else
  {
    sub_10000CAAC(v3, &unk_101A09F80);
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_1009339DC@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CRLSpringLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  v4 = Strong;
  sub_1008DA1EC(v1, v8);
  sub_100B77684(v4, &v9);

  sub_1007D0604(v8);
  v5 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
LABEL_6:
    sub_10000CAAC(&v9, &qword_1019F7310);
    memset(v12, 0, sizeof(v12));
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    goto LABEL_7;
  }

  v6 = v11;
  sub_100020E58(&v9, *(&v10 + 1));
  (*(v6 + 48))(v12, v5, v6);
  sub_100005070(&v9);
  if (v14)
  {
    sub_10000BE14(v13, a1, &unk_1019F4D00);
    sub_1005F8A64(v12);
    return result;
  }

LABEL_7:
  sub_10000CAAC(v12, &unk_101A09F80);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_100933B2C@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for CRLCanvasLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_6;
  }

  v5 = Strong;
  v6 = (v1 + *(v3 + 48));
  v7 = v6[3];
  v8 = v6[4];
  sub_100020E58(v6, v7);
  (*(v8 + 56))(v12, v7, v8);
  sub_100B77684(v5, &v13);

  sub_100687CF4(v12);
  v9 = *(&v14 + 1);
  if (!*(&v14 + 1))
  {
LABEL_6:
    sub_10000CAAC(&v13, &qword_1019F7310);
    memset(v16, 0, sizeof(v16));
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    goto LABEL_7;
  }

  v10 = v15;
  sub_100020E58(&v13, *(&v14 + 1));
  (*(v10 + 48))(v16, v9, v10);
  sub_100005070(&v13);
  if (v18)
  {
    sub_10000BE14(v17, a1, &unk_1019F4D00);
    sub_1005F8A64(v16);
    return result;
  }

LABEL_7:
  sub_10000CAAC(v16, &unk_101A09F80);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_100933CB4@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CRLBasicLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  v4 = Strong;
  sub_1005F8AB8(v1, v8);
  sub_100B77684(v4, &v9);

  sub_1005F8B14(v8);
  v5 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
LABEL_6:
    sub_10000CAAC(&v9, &qword_1019F7310);
    memset(v12, 0, sizeof(v12));
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    goto LABEL_7;
  }

  v6 = v11;
  sub_100020E58(&v9, *(&v10 + 1));
  (*(v6 + 48))(v12, v5, v6);
  sub_100005070(&v9);
  if (v14)
  {
    sub_10000BE14(v13, a1, &unk_1019F4D00);
    sub_1005F8A64(v12);
    return result;
  }

LABEL_7:
  sub_10000CAAC(v12, &unk_101A09F80);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100933E3C()
{
  v1 = sub_1005B981C(&qword_1019F57A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v6 = &v15[-v5 - 8];
  v7 = type metadata accessor for CRLTweenLayerAnimation();
  sub_1005F8AB8(v0 + v7[8], v15);
  v8 = v15[299];
  sub_1005F8B14(v15);
  if (v8 == 1)
  {
    return 1;
  }

  sub_10000BE14(v0 + v7[9], v6, &qword_1019F57A8);
  v10 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v11 = *(*(v10 - 8) + 48);
  v9 = 1;
  v12 = v11(v6, 1, v10);
  sub_10000CAAC(v6, &qword_1019F57A8);
  if (v12 == 1)
  {
    sub_10000BE14(v0 + v7[10], v3, &qword_1019F57A8);
    v9 = v11(v3, 1, v10) != 1;
    sub_10000CAAC(v3, &qword_1019F57A8);
  }

  return v9;
}

uint64_t sub_100934010()
{
  v1 = sub_1005B981C(&qword_1019F57A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v6 = &v15[-v5 - 8];
  sub_1005F8AB8(v0, v15);
  v7 = v15[299];
  sub_1005F8B14(v15);
  if (v7 == 1)
  {
    return 1;
  }

  v9 = type metadata accessor for CRLBasicLayerAnimation();
  sub_10000BE14(v0 + *(v9 + 28), v6, &qword_1019F57A8);
  v10 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v11 = *(*(v10 - 8) + 48);
  v8 = 1;
  v12 = v11(v6, 1, v10);
  sub_10000CAAC(v6, &qword_1019F57A8);
  if (v12 == 1)
  {
    sub_10000BE14(v0 + *(v9 + 32), v3, &qword_1019F57A8);
    v8 = v11(v3, 1, v10) != 1;
    sub_10000CAAC(v3, &qword_1019F57A8);
  }

  return v8;
}

uint64_t sub_1009341E0()
{
  v1 = sub_1005B981C(&qword_1019F57A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v6 = &v15[-v5 - 8];
  sub_1008DA1EC(v0, v15);
  v7 = v15[315];
  sub_1007D0604(v15);
  if (v7 == 1)
  {
    return 1;
  }

  v9 = type metadata accessor for CRLSpringLayerAnimation();
  sub_10000BE14(v0 + *(v9 + 28), v6, &qword_1019F57A8);
  v10 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
  v11 = *(*(v10 - 8) + 48);
  v8 = 1;
  v12 = v11(v6, 1, v10);
  sub_10000CAAC(v6, &qword_1019F57A8);
  if (v12 == 1)
  {
    sub_10000BE14(v0 + *(v9 + 32), v3, &qword_1019F57A8);
    v8 = v11(v3, 1, v10) != 1;
    sub_10000CAAC(v3, &qword_1019F57A8);
  }

  return v8;
}

uint64_t sub_1009343B4(double a1, double a2)
{
  v5 = v2 + *(type metadata accessor for CRLTweenLayerAnimation() + 32);
  sub_1005F8AB8(v5, &v27);
  v6 = v33;
  result = sub_1005F8B14(&v27);
  if (v6 == 1)
  {
    result = sub_1005F7584();
    if (result)
    {
      v8 = result;
      sub_100929780(&v27);
      if (v32)
      {
        v25[2] = v29;
        v25[3] = v30;
        v25[4] = v31;
        v26 = v32;
        v25[0] = v27;
        v25[1] = v28;
        v9 = (a2 - (*(v5 + 8) + a1)) / (*(v5 + 8) + *(v5 + 16) + a1 - (*(v5 + 8) + a1));
        sub_100929780(&v27);
        v10 = CACurrentMediaTime();
        v11 = sub_1005F7F98(&v27, v10);
        sub_10000CAAC(&v27, &unk_101A09F80);
        *&v12 = v9;
        [v11 solveForInput:v12];
        v14 = v13;

        if (v9 < 0.0 || v9 > 1.0)
        {
        }

        else
        {
          sub_100931458(&v27);
          sub_100B76B70(v24, v14);
          sub_100687CF4(&v27);
          sub_10000BE14(v24, &v27, &unk_1019F4D00);
          v16 = *(&v28 + 1);
          if (*(&v28 + 1))
          {
            v17 = sub_100020E58(&v27, *(&v28 + 1));
            v18 = *(v16 - 8);
            v19 = __chkstk_darwin(v17);
            v21 = &v24[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v18 + 16))(v21, v19);
            v22 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v18 + 8))(v21, v16);
            sub_100005070(&v27);
          }

          else
          {
            v22 = 0;
          }

          v23 = String._bridgeToObjectiveC()();
          [v8 setValue:v22 forKeyPath:v23];

          swift_unknownObjectRelease();
          sub_10000CAAC(v24, &unk_1019F4D00);
        }

        return sub_1005F8A64(v25);
      }

      else
      {

        return sub_10000CAAC(&v27, &unk_101A09F80);
      }
    }
  }

  return result;
}

uint64_t sub_10093469C(double a1, double a2)
{
  sub_1005F8AB8(v2, &v26);
  v5 = v32;
  result = sub_1005F8B14(&v26);
  if (v5 == 1)
  {
    type metadata accessor for CRLBasicLayerAnimation();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      sub_100915B84(&v26);
      if (v31)
      {
        v24[2] = v28;
        v24[3] = v29;
        v24[4] = v30;
        v25 = v31;
        v24[0] = v26;
        v24[1] = v27;
        v8 = (a2 - (*(v2 + 8) + a1)) / (*(v2 + 8) + *(v2 + 16) + a1 - (*(v2 + 8) + a1));
        sub_100915B84(&v26);
        v9 = CACurrentMediaTime();
        v10 = sub_1006BFEF0(&v26, v9);
        sub_10000CAAC(&v26, &unk_101A09F80);
        *&v11 = v8;
        [v10 solveForInput:v11];
        v13 = v12;

        if (v8 < 0.0 || v8 > 1.0)
        {
        }

        else
        {
          sub_100931458(&v26);
          sub_100B76B70(v23, v13);
          sub_100687CF4(&v26);
          sub_10000BE14(v23, &v26, &unk_1019F4D00);
          v15 = *(&v27 + 1);
          if (*(&v27 + 1))
          {
            v16 = sub_100020E58(&v26, *(&v27 + 1));
            v17 = *(v15 - 8);
            v18 = __chkstk_darwin(v16);
            v20 = &v23[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v17 + 16))(v20, v18);
            v21 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v17 + 8))(v20, v15);
            sub_100005070(&v26);
          }

          else
          {
            v21 = 0;
          }

          v22 = String._bridgeToObjectiveC()();
          [v7 setValue:v21 forKeyPath:v22];

          swift_unknownObjectRelease();
          sub_10000CAAC(v23, &unk_1019F4D00);
        }

        return sub_1005F8A64(v24);
      }

      else
      {

        return sub_10000CAAC(&v26, &unk_101A09F80);
      }
    }
  }

  return result;
}

uint64_t sub_100934970(double a1, double a2)
{
  sub_1008DA1EC(v2, &v24);
  v5 = v30;
  result = sub_1007D0604(&v24);
  if (v5 == 1)
  {
    type metadata accessor for CRLSpringLayerAnimation();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      sub_100915954(&v24);
      if (v29)
      {
        v22[2] = v26;
        v22[3] = v27;
        v22[4] = v28;
        v23 = v29;
        v8 = *(v2 + 32);
        v22[0] = v24;
        v22[1] = v25;
        v9 = (a2 - (v8 + a1)) / (v8 + sub_10123476C() + a1 - (v8 + a1));
        v10 = sub_101234A80(v9);
        if (v9 < 0.0 || v9 > 1.0)
        {
        }

        else
        {
          v12 = v10;
          sub_100931458(&v24);
          sub_100B76B70(v21, v12);
          sub_100687CF4(&v24);
          sub_10000BE14(v21, &v24, &unk_1019F4D00);
          v13 = *(&v25 + 1);
          if (*(&v25 + 1))
          {
            v14 = sub_100020E58(&v24, *(&v25 + 1));
            v15 = *(v13 - 8);
            v16 = __chkstk_darwin(v14);
            v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v15 + 16))(v18, v16);
            v19 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v15 + 8))(v18, v13);
            sub_100005070(&v24);
          }

          else
          {
            v19 = 0;
          }

          v20 = String._bridgeToObjectiveC()();
          [v7 setValue:v19 forKeyPath:v20];

          swift_unknownObjectRelease();
          sub_10000CAAC(v21, &unk_1019F4D00);
        }

        return sub_1005F8A64(v22);
      }

      else
      {

        return sub_10000CAAC(&v24, &unk_101A09F80);
      }
    }
  }

  return result;
}

double sub_100934C50(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1005B981C(&qword_101A092A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = a1;
  *(inited + 64) = sub_100935850(a3, a4);
  v9 = sub_10002C58C((inited + 32));
  sub_100935898(v4, v9, a4);
  v10 = sub_100CCF5B0(inited, 0.0);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &qword_1019F57A0);
  return v10;
}

void sub_100934D7C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 64))();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    [v6 begin];
    [v6 setDisableActions:1];
    (*(a2 + 120))(v19, a1, a2);
    v7 = v20;
    if (v20)
    {
      v8 = sub_100020E58(v19, v20);
      v9 = *(v7 - 8);
      v10 = __chkstk_darwin(v8);
      v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      sub_100005070(v19);
    }

    else
    {
      v13 = 0;
    }

    (*(a2 + 88))(v19, a1, a2);
    v14 = v20;
    v15 = v21;
    sub_100020E58(v19, v20);
    v16 = (*(v15 + 80))(v14, v15);
    sub_100B76520(v16);
    v17 = String._bridgeToObjectiveC()();

    sub_100005070(v19);
    [v5 setValue:v13 forKey:v17];
    swift_unknownObjectRelease();

    [v6 commit];
  }
}

uint64_t sub_100934FBC(char a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = a3 + 32;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_10000630C(v6, &v32);
      v8 = v33;
      v9 = v34;
      sub_100020E58(&v32, v33);
      v10 = (*(v9 + 64))(v8, v9);
      if (v10)
      {
        v11 = v10;
        sub_1009354E4();
        v12 = a2;
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          v14 = v33;
          v15 = v34;
          sub_100020E58(&v32, v33);
          (*(v15 + 88))(&v29, v14, v15);
          v16 = v30;
          v17 = v31;
          sub_100020E58(&v29, v30);
          v18 = (*(v17 + 80))(v16, v17);
          v19 = sub_100B76520(v18);
          v21 = v20;
          if (v19 == sub_100B76520(a1) && v21 == v22)
          {

            sub_100005070(&v29);
LABEL_14:
            sub_100050F74(&v32, &v29);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v35 = v7;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1007767E4(0, v7[2] + 1, 1);
              v7 = v35;
            }

            v27 = v7[2];
            v26 = v7[3];
            if (v27 >= v26 >> 1)
            {
              sub_1007767E4((v26 > 1), v27 + 1, 1);
              v7 = v35;
            }

            v7[2] = v27 + 1;
            sub_100050F74(&v29, &v7[5 * v27 + 4]);
            goto LABEL_4;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_100005070(&v29);
          if (v24)
          {
            goto LABEL_14;
          }
        }
      }

      sub_100005070(&v32);
LABEL_4:
      v6 += 40;
      if (!--v3)
      {
        goto LABEL_20;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_20:
  *&v32 = v7;

  sub_101137F0C(&v32);

  return v32;
}

uint64_t sub_10093524C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    result = sub_10000630C(result + 32, &v16);
    if (v3 == 1)
    {
      return sub_100050F74(&v16, a2);
    }

    else
    {
      v5 = v4 + 72;
      for (i = 1; ; ++i)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_10000630C(v5, &v13);
        v9 = v14;
        v8 = v15;
        sub_100020E58(&v13, v14);
        v10 = (*(*(*(v8 + 24) + 8) + 8))(v9);
        v12 = v17;
        v11 = v18;
        sub_100020E58(&v16, v17);
        if (v10 >= (*(*(*(v11 + 24) + 8) + 8))(v12))
        {
          result = sub_100005070(&v13);
        }

        else
        {
          sub_100005070(&v16);
          result = sub_100050F74(&v13, &v16);
        }

        v5 += 40;
        if (v7 == v3)
        {
          return sub_100050F74(&v16, a2);
        }
      }

      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100935398@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    result = sub_10000630C(result + 32, &v16);
    if (v3 == 1)
    {
      return sub_100050F74(&v16, a2);
    }

    else
    {
      v5 = v4 + 72;
      for (i = 1; ; ++i)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_10000630C(v5, &v13);
        v9 = v17;
        v8 = v18;
        sub_100020E58(&v16, v17);
        v10 = (*(*(*(v8 + 24) + 8) + 40))(v9);
        v12 = v14;
        v11 = v15;
        sub_100020E58(&v13, v14);
        if (v10 >= (*(*(*(v11 + 24) + 8) + 40))(v12))
        {
          result = sub_100005070(&v13);
        }

        else
        {
          sub_100005070(&v16);
          result = sub_100050F74(&v13, &v16);
        }

        v5 += 40;
        if (v7 == v3)
        {
          return sub_100050F74(&v16, a2);
        }
      }

      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1009354E4()
{
  result = qword_1019FFFF0;
  if (!qword_1019FFFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FFFF0);
  }

  return result;
}

uint64_t sub_100935530@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100934FBC(a1, a2, a3);
  v6 = result;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = result + 32;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_10000630C(v9, &v31);
      v11 = v32;
      v12 = v33;
      sub_100020E58(&v31, v32);
      (*(v12 + 88))(&v28, v11, v12);
      v13 = v29;
      v14 = v30;
      sub_100020E58(&v28, v29);
      v15 = (*(v14 + 136))(v13, v14);
      if (v15 == 2)
      {
        sub_100005070(&v28);
      }

      else
      {
        v16 = v15;
        sub_100005070(&v28);
        if (v16)
        {
          sub_100050F74(&v31, &v28);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1007767E4(0, v10[2] + 1, 1);
            v10 = v34;
          }

          v19 = v10[2];
          v18 = v10[3];
          if (v19 >= v18 >> 1)
          {
            sub_1007767E4((v18 > 1), v19 + 1, 1);
            v10 = v34;
          }

          v10[2] = v19 + 1;
          result = sub_100050F74(&v28, &v10[5 * v19 + 4]);
          goto LABEL_5;
        }
      }

      result = sub_100005070(&v31);
LABEL_5:
      ++v8;
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_15:

  v20 = v10[2];
  if (v20)
  {
    result = sub_10000630C((v10 + 4), &v31);
    if (v20 == 1)
    {
LABEL_17:

      return sub_100050F74(&v31, a4);
    }

    else
    {
      v21 = (v10 + 9);
      v22 = 1;
      while (v22 < v10[2])
      {
        sub_10000630C(v21, &v28);
        v24 = v32;
        v23 = v33;
        sub_100020E58(&v31, v32);
        v25 = (*(*(*(v23 + 24) + 8) + 40))(v24);
        v27 = v29;
        v26 = v30;
        sub_100020E58(&v28, v29);
        if (v25 >= (*(*(*(v26 + 24) + 8) + 40))(v27))
        {
          result = sub_100005070(&v28);
        }

        else
        {
          sub_100005070(&v31);
          result = sub_100050F74(&v28, &v31);
        }

        ++v22;
        v21 += 40;
        if (v20 == v22)
        {
          goto LABEL_17;
        }
      }

LABEL_26:
      __break(1u);
    }
  }

  else
  {

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100935850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100935898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100935920(void *a1, void *a2, char a3)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  type metadata accessor for CRLTextRange();
  type metadata accessor for CRLWPTextString();
  sub_100950684(v3, a1, a2, a3 & 1);
  return swift_arrayDestroy();
}

id sub_100935A00(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_1005B981C(&unk_101A0DAA0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v37 - v8);
  v10 = sub_1005B981C(&unk_101A096B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_1005B981C(&unk_101A0DAB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  v17 = sub_1005B981C(&qword_101A0D850);
  v18 = *(*(v17 - 8) + 56);
  v38 = v15;
  v18(v15, 1, 1, v17);
  v19 = sub_1005B981C(&qword_101A06188);
  v20 = *(*(v19 - 8) + 56);
  v37 = v12;
  v20(v12, 1, 1, v19);
  v21 = type metadata accessor for CRLWPTextString();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v23 = xmmword_101488C60;
  v23[16] = 0;
  v42.receiver = v22;
  v42.super_class = v21;
  v24 = v16;
  v25 = objc_msgSendSuper2(&v42, "init");
  v26 = type metadata accessor for CRLWPReplaceTextCommand(0);
  v27 = objc_allocWithZone(v26);
  v28 = v40;
  *v9 = v39;
  v9[1] = v28;
  v9[2] = v25;
  sub_10000BE14(v15, v9 + *(v4 + 72), &unk_101A0DAB0);
  sub_10000BE14(v12, v9 + *(v4 + 88), &unk_101A096B0);
  v29 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
  v30 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  (*(*(v30 - 8) + 56))(&v27[v29], 1, 1, v30);
  v27[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
  v27[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v24;
  sub_10000BE14(v9, v6, &unk_101A0DAA0);
  v31 = *(v6 + 2);
  v32 = *(v4 + 72);
  v33 = *(v4 + 88);
  v34 = &v27[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
  *v34 = *v6;
  *(v34 + 2) = v31;
  sub_10003DFF8(&v6[v32], &v34[*(v4 + 72)], &unk_101A0DAB0);
  sub_10003DFF8(&v6[v33], &v34[*(v4 + 88)], &unk_101A096B0);
  v41.receiver = v27;
  v41.super_class = v26;
  v35 = objc_msgSendSuper2(&v41, "init");
  sub_10000CAAC(v9, &unk_101A0DAA0);
  sub_10000CAAC(v37, &unk_101A096B0);
  sub_10000CAAC(v38, &unk_101A0DAB0);
  return v35;
}

void sub_100935E08()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100960E34();
  if (v11)
  {
    v12 = [v11 selectedTextRange];
    if (v12)
    {
      v13 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (v13)
      {
        v14 = *&v13[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
        if (!v14)
        {
LABEL_19:
          __break(1u);
          return;
        }

        v15 = v12;
        v16 = *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v27 = *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
        (*(*v14 + 896))();
        sub_1005E0A78(&v7[*(v5 + 20)], v10);
        v17 = v13;
        sub_1009625A4(v7, type metadata accessor for CRLWPShapeItemCRDTData);
        (*(v2 + 16))(v4, v10, v1);
        sub_1009625A4(v10, type metadata accessor for CRLWPStorageCRDTData);
        v18 = CRAttributedString.count.getter();
        (*(v2 + 8))(v4, v1);
        if (v18 >= (v16 & ~(v16 >> 63)))
        {
          v19 = (v16 & ~(v16 >> 63));
        }

        else
        {
          v19 = v18;
        }

        v20 = v27 & ~(v27 >> 63);
        if (v20 < v19)
        {
          __break(1u);
        }

        else
        {
          if (v18 >= v20)
          {
            v18 = (v27 & ~(v27 >> 63));
          }

          KeyPath = swift_getKeyPath();
          sub_10095EAFC(KeyPath, v17, v19, v18);
          v23 = v22;
          v25 = v24;

          if ((v25 & 1) == 0)
          {
            goto LABEL_14;
          }

          if (*(v23 + 16))
          {
            sub_1000C1080(v23, 1);
LABEL_14:

            return;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }
  }
}

void sub_100936120(uint64_t a1)
{
  v2 = v1;
  v90 = a1;
  v89 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v89);
  v88 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = (v79 - v5);
  v95 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = v79 - v7;
  v93 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v93);
  v92 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v9 - 8);
  v91 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v81 = Strong;
  v12 = [Strong commandController];
  if (!v12)
  {
    v39 = &v104;
LABEL_21:
    v40 = *(v39 - 32);

    return;
  }

  v80 = v12;
  sub_100960E34();
  if (!v13)
  {

    v39 = &v103;
    goto LABEL_21;
  }

  v14 = v13;
  v87 = [swift_unknownObjectRetain() selectedTextRange];
  if (v87)
  {
    v15 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v16 = *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
    v102 = _swiftEmptyArrayStorage;
    v17 = *(v16 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v17)
    {
      v79[1] = v14;
      v19 = *&v87[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v18 = *&v87[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
      v20 = v17;
      v21 = [v20 characterCount];
      if ((v21 & 0x8000000000000000) == 0)
      {
        if (v21 >= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v21;
        }

        if (v19 >= 0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (v21 >= v18)
        {
          v24 = v18 & ~(v18 >> 63);
        }

        else
        {
          v24 = v21;
        }

        v25 = sub_100619184(v20, v23, v24);
        v28 = sub_100618D84(v25, v26, v27);
        v30 = v29;
        v32 = v31;

        v86 = v30;
        if (v30 < v32)
        {
LABEL_17:

          v33 = [*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
          v34 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v33 forwardSelectionPath:v33 reverseSelectionPath:v33];
          v35 = v102;
          v36 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];
          v37 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
          swift_beginAccess();
          *(v36 + v37) = v35;

          v38 = v34;
          sub_100888700(v36, 0, v34, 4, 0);

          swift_unknownObjectRelease();
          return;
        }

        v85 = (v6 + 16);
        v84 = (v6 + 8);
        v82 = xmmword_101465920;
        v83 = v28;
        while (1)
        {
          v50 = [v28 charIndexForParagraphAtIndex:v32];
          if ([v28 characterCount] < v50)
          {
            break;
          }

          NSNotFound.getter();
          [v28 paragraphIndexAtCharIndex:v50];
          v51 = [v28 textRangeForParagraphAtIndex:v32];
          if (__OFADD__(v51, v52))
          {
            goto LABEL_54;
          }

          if (__OFADD__(v32, 1))
          {
            goto LABEL_55;
          }

          if (v51 + v52 < v50)
          {
            goto LABEL_56;
          }

          v53 = *(*(v2 + v15) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
          if (!v53)
          {
            goto LABEL_61;
          }

          v99 = v51 + v52;
          v96 = v32 + 1;
          v97 = v32;
          v54 = *&v53[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
          if (!v54)
          {
            goto LABEL_62;
          }

          v55 = v92;
          (*(*v54 + 896))();
          v56 = v91;
          sub_1005E0A78(v55 + *(v93 + 20), v91);
          v57 = v53;
          sub_1009625A4(v55, type metadata accessor for CRLWPShapeItemCRDTData);
          v59 = v94;
          v58 = v95;
          (*v85)(v94, v56, v95);
          sub_1009625A4(v56, type metadata accessor for CRLWPStorageCRDTData);
          v60 = CRAttributedString.count.getter();
          (*v84)(v59, v58);
          if (v60 >= (v50 & ~(v50 >> 63)))
          {
            v61 = (v50 & ~(v50 >> 63));
          }

          else
          {
            v61 = v60;
          }

          v62 = v99 & ~(v99 >> 63);
          if (v62 < v61)
          {
            goto LABEL_57;
          }

          if (v60 >= v62)
          {
            v60 = (v99 & ~(v99 >> 63));
          }

          KeyPath = swift_getKeyPath();
          sub_10095EAFC(KeyPath, v57, v61, v60);
          v65 = v64;
          v67 = v66;

          if (v67)
          {
            if (!*(v65 + 16))
            {
              goto LABEL_59;
            }

            v68 = *(v65 + 32);
            sub_1000C1080(v65, 1);
            v65 = v68;
          }

          if (__OFADD__(v65, v90))
          {
            goto LABEL_58;
          }

          if (((v65 + v90) & ~((v65 + v90) >> 63)) >= 8)
          {
            v69 = 8;
          }

          else
          {
            v69 = (v65 + v90) & ~((v65 + v90) >> 63);
          }

          *v98 = _swiftEmptySetSingleton;
          sub_10068D144();
          CRAttributedString.Attributes.init()();
          v70 = swift_getKeyPath();
          sub_100E6DE34(&v100, 0x7061726761726170, 0xEE006C6576654C68);

          __chkstk_darwin(v71);
          v79[-4] = &type metadata for CRLWPParagraphScope;
          v79[-3] = &type metadata for CRLWPParagraphLevelAttribute;
          v79[-2] = sub_100962030();
          v79[-1] = v70;
          swift_getKeyPath();
          v100 = v69;
          LOBYTE(v101) = 0;
          sub_1005B981C(qword_101A0CF60);
          sub_100962084();
          CRAttributedString.Attributes.subscript.setter();
          v72 = *(*(v2 + v15) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
          if (!v72)
          {
            goto LABEL_63;
          }

          v73 = v72;
          v74 = [v87 start];
          v75 = *&v74[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

          v76 = [v73 paragraphIndexAtCharIndex:v75];
          v77 = sub_1009412D4(v76);
          if ((v78 & 1) != 0 || v77)
          {
            v41 = swift_getKeyPath();
            sub_100E6DE34(&v100, 0x726174537473696CLL, 0xE900000000000074);

            __chkstk_darwin(v42);
            v79[-4] = &type metadata for CRLWPParagraphScope;
            v79[-3] = &type metadata for CRLWPListStartAttribute;
            v79[-2] = sub_1009620D8();
            v79[-1] = v41;
            swift_getKeyPath();
            v100 = 1;
            LOBYTE(v101) = 0;
            sub_10096212C();
            CRAttributedString.Attributes.subscript.setter();
          }

          v43 = *(v2 + v15);
          v44 = v98;
          v45 = v88;
          sub_10000BE14(v98, v88, &qword_101A06188);
          v46 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
          v47 = v43;
          v48 = sub_100961C20(v47, v50, v99, v45);

          sub_1005B981C(&unk_1019F4D60);
          inited = swift_initStackObject();
          *(inited + 16) = v82;
          *(inited + 32) = v48;
          sub_100799F10(inited);
          sub_10000CAAC(v44, &qword_101A06188);
          v32 = v97 + 1;
          v28 = v83;
          if (v86 < v96)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
}

void sub_100936C74()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange];
    v3 = v1;
    if (v2)
    {
      sub_100A28D8C();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100936CE8(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void *sub_100936D54()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = [result layoutForInfo:?];

    if (v3)
    {
      type metadata accessor for CRLWPLayout();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

char *sub_100936E18(char *a1, char *a2, char *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_autocorrectionKeys] = _swiftEmptySetSingleton;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_disableSmartQuotes] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard] = 1;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_resignFirstResponderWhenKeyboardHides] = 1;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor__textSelectionDelegate] = 0;
  v59 = OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___textEditingInputAccessoryStateManager;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___textEditingInputAccessoryStateManager] = 1;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectionBeingSetFromGestures] = 0;
  v57 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastCursor;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastCursor] = 0;
  v58 = OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___editMenu;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___editMenu] = 1;
  v9 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_baseWritingDirectionForInsertion];
  *v9 = 0;
  v9[8] = 1;
  v56 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_autoscroll;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_autoscroll] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastKeyDownTime] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isUserTypingAhead] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_suppressBreaks] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_suppressTabs] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editableTextSelectionForceGestureInProgress] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_initialPressTextSelectionGranularity] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectionSetFromSingleTap] = 0;
  v55 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_listDragAnimator;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_listDragAnimator] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isBecomingActive] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_resumeCollaborationTask] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_collabIsSuspendedByThisEditor] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_shouldPreventQuickSelect] = 1;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_gestureBeganWhenEditingBegan] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_readyToEnd] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_shouldQueueBeginScribbleMode] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_suppressEditMenuForIndirectGesture] = 0;
  v53 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_mostRecentGestureKind;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_mostRecentGestureKind] = 0;
  v54 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_fidgetResolver;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_fidgetResolver] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_shouldShowEditMenuForInsertionPoint] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_coalescingText] = 0;
  v52 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_dictationInterpretations;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_dictationInterpretations] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_ignoreFutureImmediatePresses] = 0;
  v51 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_tapInfo;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_tapInfo] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_shouldUseModernTextGestures] = 1;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_magnifier] = 0;
  v10 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTrackingDragPoint];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_firstTapUnscaledPoint];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTracking] = 0;
  v50 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTracker;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTracker] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTag] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTrackingTapCount] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsParagraphMode] = 0;
  v12 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_originalSelectionRange];
  *v12 = 0x7FFFFFFFFFFFFFFFLL;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobToTouchOffset];
  *v13 = 0;
  v13[1] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_twoFingerPanGestureInProgress] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_canIgnoreEvent] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isSelectingCaret] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_gestureIsSuppressingKnobs] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_pinchAndHalfDidStart] = 0;
  v14 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastSingleImmediateTapTime;
  static Date.now.getter();
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectionRangeDidChange] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_preventSelectionChanges] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_disallowEditingOfTextString] = 0;
  v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isDragAndDropBeginning] = 0;
  v15 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_dragRep;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_dragRep] = 0;
  v16 = [a3 editorController];
  if (!v16)
  {
    v17 = a3;
LABEL_10:

    swift_unknownObjectWeakDestroy();
    swift_unknownObjectRelease();
    sub_1000505D0(*&v4[v59]);

    sub_1000505D0(*&v4[v58]);

    swift_unknownObjectRelease();
    v48 = type metadata accessor for Date();
    (*(*(v48 - 8) + 8))(&v4[v14], v48);

    type metadata accessor for CRLWPEditor();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:

    a2 = a1;
    a1 = a3;
    goto LABEL_10;
  }

  v49 = a3;
  v19 = *((swift_isaMask & *Strong) + 0x380);
  v20 = Strong;
  a2 = a2;
  v21 = v19();

  if (!v21)
  {
    a3 = v49;
    goto LABEL_9;
  }

  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator] = a1;
  v22 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] = a2;
  result = swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] = v17;
  v24 = *&a2[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (v24)
  {
    type metadata accessor for CRLWPDictationAndAutocorrectionCoordinator();
    swift_allocObject();
    v25 = a2;
    v26 = a1;
    v27 = v21;
    v28 = v24;
    v29 = v17;
    v30 = sub_1008AE16C(v27, v28);

    *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_dictationAndAutocorrectionCoordinator] = v30;
    result = [*(*&v26[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_selectionDispatcher] + OBJC_IVAR____TtC8Freeform22CRLSelectionDispatcher_receivers) addObject:v30];
    v31 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_adjustedDragPoint];
    *v31 = 0;
    v31[1] = 0;
    v32 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_adjustedDragToNaturalPointOffset];
    *v32 = 0;
    v32[1] = 0;
    v33 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_textFieldBounds];
    *v33 = 0u;
    v33[1] = 0u;
    v34 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectionTargetToAdjustedDragOffset];
    *v34 = 0;
    v34[1] = 0;
    v35 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentKnobPoint];
    *v35 = 0;
    v35[1] = 0;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v39 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentTargetPinRect];
    *v39 = CGRectNull.origin.x;
    v39[1] = y;
    v39[2] = width;
    v39[3] = height;
    v40 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentStationaryPinRect];
    *v40 = CGRectNull.origin.x;
    v40[1] = y;
    v40[2] = width;
    v40[3] = height;
    v41 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectedRangeAtPinchAndHalfStart];
    *v41 = 0x7FFFFFFFFFFFFFFFLL;
    v41[1] = 0;
    v42 = &v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_expectedWordSelectionAtPoint];
    *v42 = 0x7FFFFFFFFFFFFFFFLL;
    v42[1] = 0;
    v43 = *(*&v4[v22] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v43)
    {
      v44 = [objc_allocWithZone(CRLWPEditorHelper) initWithTextSource:v43 icc:v49 layout:0];
      *&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper] = v44;
      v60.receiver = v4;
      v60.super_class = type metadata accessor for CRLWPEditor();
      v45 = objc_msgSendSuper2(&v60, "init");
      v46 = *&v45[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper];
      v47 = v45;
      [v46 setEditor:v47];

      return v45;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1009376A8(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v7 = [Strong textInputResponder];

    v4 = v7;
    if (v7)
    {
      if (*&v7[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
      {
        v5 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
        v7[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
        v6 = *&v7[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
        if (v6)
        {
          [v6 *a1];
          v4 = v7;
        }

        v4[v5] = 0;
      }
    }
  }
}

void sub_100937824()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong textInputResponder];

    if (v3)
    {
      v4 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
      v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
      v5 = *&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
      if (v5)
      {
        [v5 textWillChange:v3];
      }

      v3[v4] = 0;
    }
  }

  v7 = [objc_opt_self() activeKeyboard];
  [v7 removeAutocorrectPrompt];
  sub_1009481E4();
  v6 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v6)
  {
    if (*(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      sub_100947A80();
    }

    else
    {
      sub_100947BA0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100937998(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v7 = [Strong textInputResponder];

    v4 = v7;
    if (v7)
    {
      v5 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
      v7[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
      v6 = *&v7[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
      if (v6)
      {
        [v6 *a1];
        v4 = v7;
      }

      v4[v5] = 0;
    }
  }
}

void sub_100937A54()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong documentIsSharedReadOnly])
    {
      v4[3] = type metadata accessor for CRLWPEditor();
      v4[0] = v0;
      v2 = v0;
      sub_1009380EC();

      sub_10000CAAC(v4, &unk_1019F4D00);
    }

    else
    {
    }
  }
}

void sub_100937C74(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong editorController];

    if (v4)
    {
      type metadata accessor for CRLWPEditor();
      v5 = [v4 currentEditorsOfClass:swift_getObjCClassFromMetadata()];

      sub_1005B981C(&qword_101A09750);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v7 > 0)
      {
        v8 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController;
        if (([*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) isChangingSelection] & 1) == 0)
        {
          v9 = [*(v1 + v8) selectionForEditor:v1];
          if (v9)
          {
            v10 = v9;
            objc_opt_self();
            v11 = swift_dynamicCastObjCClass();

            if (v11)
            {
              if (!a1)
              {
                __break(1u);
                return;
              }

              v12 = *(v1 + v8);
              [v12 setSelection:a1 forEditor:v1];
            }
          }
        }
      }
    }
  }
}

id sub_100937E64()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController;
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v4 = [*(v1 + v2) selectionForEditor:v1];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  result = [v6 isValid];
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v9)
  {
    __break(1u);
    return result;
  }

  v10 = [objc_allocWithZone(CRLWPSearchReference) initWithStorage:v9 selection:v7 selectionPath:v3];
  if (!v10)
  {
LABEL_9:

LABEL_10:
    return 0;
  }

  v11 = v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v17[4] = sub_100967CE8;
    v17[5] = v14;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = *"";
    v17[2] = sub_100967EA4;
    v17[3] = &unk_10188E840;
    v15 = _Block_copy(v17);
    v16 = v11;

    [v13 withLayoutForSelectionPath:v3 performBlock:v15];

    _Block_release(v15);
  }

  else
  {
  }

  return v11;
}

id sub_100938064(void *a1, id a2)
{
  [a2 setRootIndex:0];
  result = [a1 calculatePointFromSearchReference:a2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {

    return [a2 setSearchReferencePoint:?];
  }

  return result;
}

void sub_1009380EC()
{
  v9 = [objc_allocWithZone(NSMutableSet) init];
  [v9 addObject:*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong selectionModelTranslator];

    if (v3)
    {
      v4 = v9;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();

      v5 = [v3 selectionPathForInfos:0];
      if (v5)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          v8 = [v6 editorController];

          if (v8)
          {
            [v8 setSelectionPath:v5 withFlags:0x2000];
          }
        }
      }
    }
  }
}

uint64_t sub_10093827C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

void sub_1009383D8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard);
  *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard) = a1;
  if (v2 != (a1 & 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong textInputResponder];

      if (v5)
      {
        sub_1007E4BF0();
      }
    }
  }
}

void *sub_1009385E0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result textInputResponder];

    if (!v3)
    {
      return 0;
    }

    if ([objc_opt_self() crl_phoneUI])
    {
      v4 = v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_writingToolsActive];

      if (v4)
      {
        return 0;
      }

      return *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1009386D4()
{
  v1 = sub_100938964();
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController];
    v3 = v1;
    v4 = v2;
  }

  else
  {
    v2 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong textInputResponder];

    if (v7)
    {
      if ([objc_opt_self() crl_phoneUI])
      {
        v8 = v7[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_writingToolsActive];

        if (v8 & 1) == 0 && (*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsVisibleKeyboard))
        {
          return v2;
        }
      }

      else
      {
      }
    }
  }

  if (!v2)
  {
    return v2;
  }

  result = [v2 view];
  if (result)
  {
    v10 = result;
    [result removeFromSuperview];

    return 0;
  }

  __break(1u);
  return result;
}

Class sub_100938834(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_100006370(0, &unk_101A012C0);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

char *sub_1009388D4(uint64_t (*a1)(void))
{
  if (![objc_opt_self() crl_padUI])
  {
    return 0;
  }

  result = sub_100938964();
  if (!result)
  {
    return result;
  }

  v3 = *&result[OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController];
  v4 = result;
  v5 = v3;

  if (!v3)
  {
    return 0;
  }

  v6 = a1();

  return v6;
}

void *sub_100938964()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___textEditingInputAccessoryStateManager;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___textEditingInputAccessoryStateManager];
  v3 = v2;
  if (v2 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = Strong;
    if (Strong)
    {
      v5 = [Strong editorController];
      if (v5)
      {
        v6 = v5;
        objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterTextEditingAccessoryStateManager());
        sub_100CE6AA0(v3, v0, v6);
        v3 = v7;
      }

      else
      {

        v3 = 0;
      }
    }

    v8 = *&v0[v1];
    *&v0[v1] = v3;
    v9 = v3;
    sub_1000505D0(v8);
  }

  sub_1000505E0(v2);
  return v3;
}

id sub_100938AB4(id result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = [v3 range];
    v7 = [v4 textRangeForParagraphsInCharRange:{v5, v6}];
    v9 = v8;

    result = [v3 copyWithNewRange:{v7, v9}];
    if (result)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000BF3C(&v11, &v12);
      sub_100006370(0, &qword_1019FFDF0);
      swift_dynamicCast();
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100938C50(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v77 = a1;
    if (a1)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      v11 = a2;
      if (v10 && ![v10 isValid])
      {
LABEL_15:
        [*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) setAnchorSelection:0];
LABEL_16:
        sub_100960E34();
        if (v18)
        {
          v19 = v18;
          v20 = a2;
          swift_unknownObjectRetain();
          v21 = [v9 range];
          v23 = v22;
          v24 = objc_allocWithZone(type metadata accessor for CRLTextRange());
          v25 = sub_10078CDF0(v21, v23);
          v26 = [v9 caretAffinity];

          *&v25[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v26;
          [v19 setSelectedTextRange:v25];
          swift_unknownObjectRelease();
        }

        v76 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper;
        [*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) notifySelectionChangedWithFlags:a3];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v28 = Strong;
          v29 = swift_unknownObjectWeakLoadStrong();
          v75 = a3;
          if (v29)
          {
            if (!*(*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
            {
LABEL_77:
              __break(1u);
              return;
            }

            v30 = v29;
            v31 = [v29 repsForInfo:?];
            sub_100006370(0, &qword_1019FB7A0);
            sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
            v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v32 = _swiftEmptySetSingleton;
          }

          v73 = v9;
          v74 = v4;
          if ((v32 & 0xC000000000000001) != 0)
          {
            __CocoaSet.makeIterator()();
            sub_100006370(0, &qword_1019FB7A0);
            sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
            Set.Iterator.init(_cocoa:)();
            v32 = v79[5];
            v33 = v79[6];
            v34 = v79[7];
            v35 = v79[8];
            v36 = v79[9];
          }

          else
          {
            v35 = 0;
            v37 = -1 << *(v32 + 32);
            v33 = v32 + 56;
            v34 = ~v37;
            v38 = -v37;
            if (v38 < 64)
            {
              v39 = ~(-1 << v38);
            }

            else
            {
              v39 = -1;
            }

            v36 = v39 & *(v32 + 56);
          }

          v72 = v34;
          v40 = (v34 + 64) >> 6;
          if (v32 < 0)
          {
            goto LABEL_36;
          }

          while (1)
          {
            v41 = v35;
            v42 = v36;
            v43 = v35;
            if (!v36)
            {
              break;
            }

LABEL_34:
            v44 = (v42 - 1) & v42;
            v45 = *(*(v32 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));
            if (!v45)
            {
LABEL_40:
              sub_100035F90();

              v4 = v74;
              LOBYTE(a3) = v75;
              v9 = v73;
              goto LABEL_41;
            }

            while (1)
            {
              [v28 invalidateContentLayersForRep:{v45, v72}];

              v35 = v43;
              v36 = v44;
              if ((v32 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_36:
              if (__CocoaSet.Iterator.next()())
              {
                sub_100006370(0, &qword_1019FB7A0);
                swift_dynamicCast();
                v45 = v79[0];
                v43 = v35;
                v44 = v36;
                if (v79[0])
                {
                  continue;
                }
              }

              goto LABEL_40;
            }
          }

          while (1)
          {
            v43 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v43 >= v40)
            {
              goto LABEL_40;
            }

            v42 = *(v33 + 8 * v43);
            ++v41;
            if (v42)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_41:
        if (v77 && (objc_opt_self(), (v46 = swift_dynamicCastObjCClass()) != 0))
        {
          v47 = v46;
          v48 = v77;
          v49 = [v47 superRange];
          v51 = v50;
          if (v49 == [v9 superRange] && v51 == v52)
          {
LABEL_59:
            if (!v47)
            {
              v79[3] = &type metadata for CRLUIKitFeatureFlags;
              v79[4] = sub_100757068();
              v61 = isFeatureEnabled(_:)();
              sub_100005070(v79);
              if (v61)
              {
                sub_100960E34();
                if (v62)
                {
                  v63 = [v62 selectionViewController];
                  if (v63)
                  {
                    v64 = v63;
                    if (!*(v63 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView))
                    {
                      v65 = (*((swift_isaMask & *v63) + 0x178))();
                      (*((swift_isaMask & *v64) + 0x180))(v65);
                      v66 = *(v64 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc);
                      [v66 addDecorator:v64];
                    }
                  }
                }
              }
            }

            v67 = swift_unknownObjectWeakLoadStrong();
            if (v67 && (v68 = v67, v69 = [v67 textInputResponder], v68, v69))
            {
              if (*&v69[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
              {
                v70 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
                v69[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
                v71 = *&v69[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
                if (v71)
                {
                  [v71 selectionDidChange:v69];
                }

                v69[v70] = 0;
              }
            }

            else
            {
            }

            return;
          }
        }

        else
        {
          [v9 superRange];
          v47 = 0;
        }

        v53 = swift_unknownObjectWeakLoadStrong();
        if (v53)
        {
          if (!*(*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
          {
            goto LABEL_76;
          }

          v54 = v53;
          v55 = [v53 repsForInfo:?];
          sub_100006370(0, &qword_1019FB7A0);
          sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
          v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v56 = _swiftEmptySetSingleton;
        }

        v57 = sub_100BC17E0(v56);

        if (v57)
        {
          objc_opt_self();
          v58 = swift_dynamicCastObjCClass();
          if (v58)
          {
            if ((a3 & 0x10) != 0)
            {
              [v58 refreshEditMenu];
            }

            else
            {
              [v58 setShouldIgnoreFirstRequestToShowEditMenu:1];
            }
          }
        }

        v59 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
        *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle) = 0;

        [v9 range];
        if ((a3 & 0x20) == 0)
        {
          v60 = *(v4 + v76);
          [v60 setSelectionAnchor:NSNotFound.getter()];
        }

        goto LABEL_59;
      }
    }

    else
    {
      v17 = a2;
    }

    if (![v9 isInsertionPoint])
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v78 = [v12 textInputResponder];

    v14 = v78;
    if (v78)
    {
      v15 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
      v78[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
      v16 = *&v78[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
      if (v16)
      {
        [v16 textDidChange:v78];
        v14 = v78;
      }

      v14[v15] = 0;
    }
  }
}

void sub_100939624()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    if (*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
      v3 = Strong;
      v12 = [Strong layoutForInfo:?];

      if (v12)
      {
        type metadata accessor for CRLWPLayout();
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          v5 = v4;
          if ([v4 parentAutosizes])
          {
            [v5 invalidateSize];
          }

          *(v5 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
          [v5 invalidate];
          [v5 setNeedsDisplay];
          v6 = swift_unknownObjectWeakLoadStrong();
          if (v6)
          {
            v7 = *(v0 + v2);
            v8 = v6;
            v9 = [v6 repForInfo:v7];

            if (v9)
            {
              objc_opt_self();
              v10 = swift_dynamicCastObjCClass();
              if (v10)
              {
                [v10 invalidateKnobs];
                v11 = v9;
              }

              else
              {
                v11 = v12;
                v12 = v9;
              }
            }
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100939810(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v6 = [Strong canvasEditor];
    if (v6)
    {
      v7 = [v6 pasteboardController];
      swift_unknownObjectRelease();
      v8 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController;
      v9 = [*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionForEditor:v2];
      if (v9)
      {
        v10 = v9;
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11 && (v12 = v11, [v11 isRange]))
        {
          v13 = [v7 newCopyAssistantWithPasteboard:a1];
          v22 = [*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) hasWhitespaceBoundedWordAtSelection:v12];
          v14 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
          if (!v14)
          {
            __break(1u);
            return;
          }

          v15 = *(v2 + v8);
          v16 = v14;
          v17 = [v15 selectionForEditor:v2];
          if (v17)
          {
            v18 = v17;
            objc_opt_self();
            v19 = swift_dynamicCastObjCClass();
            if (!v19)
            {
            }
          }

          else
          {
            v19 = 0;
          }

          [v7 copyTextStorage:v16 selection:v19 toPasteboard:a1 smartCopy:v22 writeAssistant:v13 nativeOnly:a2 & 1];

          v10 = v19;
        }

        else
        {
          v13 = v23;
          v16 = v7;
        }

        v21 = v16;
        v7 = v10;
      }

      else
      {
        v21 = v23;
      }

      v20 = v7;
    }

    else
    {
      v20 = v23;
    }
  }
}

void sub_100939B40(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v4 = [Strong canvasEditor];
    if (v4)
    {
      v5 = [v4 pasteboardController];
      swift_unknownObjectRelease();
      v6 = [objc_opt_self() generalPasteboard];
      v7 = [v5 ingestibleItemSourceForPasteboard:v6];

      sub_100939C9C(v7, a2 & 1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100939C9C(void *a1, char a2)
{
  v3 = v2;
  sub_100960E34();
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = [v6 selectedTextRangeWithoutMarkedText];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionForEditor:v2];
  if (!v9)
  {
    v10 = v8;
LABEL_15:

LABEL_16:
    v31 = objc_opt_self();
    v32 = [v31 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &aBlock);
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v39 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v32;
    v41 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v41;
    v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v42;
    *(inited + 72) = v33;
    *(inited + 136) = &type metadata for String;
    v43 = sub_1000053B0();
    *(inited + 112) = v36;
    *(inited + 120) = v38;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v43;
    *(inited + 152) = 639;
    v44 = aBlock;
    *(inited + 216) = v41;
    *(inited + 224) = v42;
    *(inited + 192) = v44;
    v45 = v33;
    v46 = v44;
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v48, "Failed to paste text. Preconditions unmet.", 42, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v49 = swift_allocObject();
    v49[2] = 8;
    v49[3] = 0;
    v49[4] = 0;
    v49[5] = 0;
    v50 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    [v31 handleFailureInFunction:v51 file:v52 lineNumber:639 isFatal:0 format:v53 args:v50];

    return;
  }

  v10 = v9;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_15;
  }

  memset(v73, 0, sizeof(v73));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CAAC(v73, &unk_1019F4D00);

    return;
  }

  v12 = Strong;
  v13 = [Strong commandController];
  if (!v13)
  {
    sub_10000CAAC(v73, &unk_1019F4D00);

LABEL_28:
    return;
  }

  v14 = v13;
  if ((sub_100962DFC(a1) & 1) == 0)
  {
LABEL_27:
    sub_10000CAAC(v73, &unk_1019F4D00);

    goto LABEL_28;
  }

  if (([a1 hasNativeText] & 1) == 0 && !objc_msgSend(a1, "hasNativeTextStorages"))
  {
    if ([a1 hasImportableRichText])
    {
      v54 = swift_allocObject();
      *(v54 + 16) = a2 & 1;
      *(v54 + 24) = v2;
      *(v54 + 32) = v8;
      *(v54 + 40) = 1;
      *(v54 + 48) = v14;
      v71 = sub_100967C78;
      v72 = v54;
      aBlock = _NSConcreteStackBlock;
      v68 = *"";
      v69 = sub_100967EB4;
      v70 = &unk_10188E6B0;
      v55 = _Block_copy(&aBlock);
      v56 = v3;
      v57 = v8;
      v58 = v14;

      v59 = [a1 loadImportedRichTextStringWithHandler:v55];
LABEL_25:
      v62 = v59;

      _Block_release(v55);
      goto LABEL_26;
    }

    if ([a1 hasImportableText])
    {
      v60 = swift_allocObject();
      v60[2] = v2;
      v60[3] = v8;
      v60[4] = 1;
      v60[5] = v14;
      v71 = sub_100967C6C;
      v72 = v60;
      aBlock = _NSConcreteStackBlock;
      v68 = *"";
      v69 = sub_10093B8DC;
      v70 = &unk_10188E660;
      v55 = _Block_copy(&aBlock);
      v61 = v3;
      v57 = v8;
      v58 = v14;

      v59 = [a1 loadImportedTextStringWithHandler:v55];
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v65 = v14;
  v15 = *&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator];
  if (*(v15 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator))
  {
    sub_100833EBC(0xD000000000000036, 0x800000010157BF00);
    v16 = *(*(v15 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
    v17 = type metadata accessor for CRLPasteboardSourceContext();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC8Freeform26CRLPasteboardSourceContext__store] = v16;
    v19 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
    *&v18[OBJC_IVAR____TtC8Freeform26CRLPasteboardSourceContext__sourceContext] = v19;
    v66.receiver = v18;
    v66.super_class = v17;
    v20 = v16;
    v21 = v19;
    v64 = objc_msgSendSuper2(&v66, "init");
    v22 = *(*&v3[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v22)
    {
      v63 = *(v15 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
      v23 = swift_allocObject();
      *(v23 + 16) = v3;
      *(v23 + 24) = 0xD000000000000036;
      *(v23 + 32) = 0x800000010157BF00;
      *(v23 + 40) = a2 & 1;
      *(v23 + 48) = v8;
      *(v23 + 56) = 1;
      *(v23 + 64) = v65;
      v71 = sub_100967C7C;
      v72 = v23;
      aBlock = _NSConcreteStackBlock;
      v68 = *"";
      v69 = sub_100967EB4;
      v70 = &unk_10188E700;
      v24 = _Block_copy(&aBlock);
      v25 = v22;
      v26 = v3;
      v27 = v8;
      v28 = v65;
      v29 = v63;

      v30 = [a1 loadTextStorageUsingBoardItemFactory:v29 forTargetContext:v64 targetStorage:v25 loadHandler:v24];

      _Block_release(v24);
LABEL_26:
      sub_10000CAAC(v73, &unk_1019F4D00);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}