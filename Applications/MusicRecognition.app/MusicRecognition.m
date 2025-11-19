uint64_t sub_100002688(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100141F30);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v17[-v4];
  v6 = sub_100002D44(&qword_100141F38);
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  v18 = a1;
  Label.init(title:icon:)();
  v9 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v11 = &v5[*(sub_100002D44(&qword_100141F40) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  *&v5[*(v3 + 44)] = static HierarchicalShapeStyle.secondary.getter();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100004274(v5, v8);
  v12 = &v8[*(v6 + 36)];
  v13 = v24;
  v12[4] = v23;
  v12[5] = v13;
  v12[6] = v25;
  v14 = v20;
  *v12 = v19;
  v12[1] = v14;
  v15 = v22;
  v12[2] = v21;
  v12[3] = v15;
  sub_1000042E4();
  View.accessibilityIdentifier(_:)();
  return sub_100004554(v8);
}

uint64_t sub_1000028D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100141F90);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v18 - v13;
  v18[1] = a1;
  static Locale.autoupdatingCurrent.getter();
  sub_1000045BC();
  IntegerFormatStyle.init(locale:)();
  static Locale.current.getter();
  IntegerFormatStyle.locale(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_100004610(&qword_100141FA0, &qword_100141F90);
  BinaryInteger.formatted<A>(_:)();
  result = (v15)(v14, v8);
  v17 = v18[3];
  *a2 = v18[2];
  *(a2 + 8) = v17;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100002B30@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100002B9C()
{
  if (sub_1000EEF04(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100002C04()
{
  if (sub_1000EEF04(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_100002CF8();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100003B98(&qword_100141DD8, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_100002CF8()
{
  result = qword_100141DD0;
  if (!qword_100141DD0)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141DD0);
  }

  return result;
}

uint64_t sub_100002D44(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D8C()
{
  if (sub_1000EEF04(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_100002EF0()
{
  if (sub_1000EEF04(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000030FC(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EC0, type metadata accessor for SHError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003168(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EC0, type metadata accessor for SHError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000031D8(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003264@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000329C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003314(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003394@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000033EC(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003458(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000034C4(void *a1, uint64_t a2)
{
  v4 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003578(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000035F4()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100003654@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003B98(&qword_100141EF8, type metadata accessor for SHError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000036FC(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141E48, type metadata accessor for ASCAppState);
  v3 = sub_100003B98(&qword_100141E50, type metadata accessor for ASCAppState);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000037B8(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141F00, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_100003B98(&qword_100141F08, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003874@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000038BC(uint64_t a1)
{
  v2 = sub_100003B98(&qword_100141F10, type metadata accessor for Key);
  v3 = sub_100003B98(&qword_100141F18, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003978()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000039B4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003A08()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100003A7C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100003B04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003CD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003CF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1000040EC()
{
  result = qword_100141EE8;
  if (!qword_100141EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141EE8);
  }

  return result;
}

__n128 sub_1000041D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000041DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000041FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100004274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100141F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000042E4()
{
  result = qword_100141F48;
  if (!qword_100141F48)
  {
    sub_100004370(&qword_100141F38);
    sub_1000043B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141F48);
  }

  return result;
}

uint64_t sub_100004370(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000043B8()
{
  result = qword_100141F50;
  if (!qword_100141F50)
  {
    sub_100004370(&qword_100141F30);
    sub_100004470();
    sub_100004610(&qword_100141F80, &qword_100141F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141F50);
  }

  return result;
}

unint64_t sub_100004470()
{
  result = qword_100141F58;
  if (!qword_100141F58)
  {
    sub_100004370(&qword_100141F40);
    sub_100004610(&qword_100141F60, &qword_100141F68);
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141F58);
  }

  return result;
}

uint64_t sub_100004554(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100141F38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000045BC()
{
  result = qword_100141F98;
  if (!qword_100141F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141F98);
  }

  return result;
}

uint64_t sub_100004610(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100004658(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004664(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004684(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1000046C8()
{
  result = qword_100141FB0;
  if (!qword_100141FB0)
  {
    sub_100004370(&qword_100141FB8);
    sub_1000042E4();
    sub_100003B98(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141FB0);
  }

  return result;
}

void sub_1000047AC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100004834@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_100002D44(&qword_100141DE0);
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v44 = &v37 - v6;
  v7 = sub_100002D44(&qword_100141FF0);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  KeyPath = swift_getKeyPath();
  v38 = KeyPath;
  type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel();
  swift_allocObject();
  v12 = sub_1000B9C14();
  v13 = swift_getKeyPath();
  v45 = a1;
  v46 = a2;
  sub_100002D44(&qword_100142028);
  State.wrappedValue.getter();
  v45 = KeyPath;
  LOBYTE(v46) = 0;
  v47 = v12;
  v48 = v13;
  v49 = v50;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  v15 = sub_100002D44(&qword_100141FF8);
  v16 = sub_1000075EC();
  View.onContinueUserActivity(_:perform:)();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  v45 = v15;
  v46 = v16;
  swift_getOpaqueTypeConformance2();
  v18 = v39;
  View.onContinueUserActivity(_:perform:)();

  (v40[1])(v10, v18);
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  v21 = type metadata accessor for TaskPriority();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v37 - v24;
  static TaskPriority.userInitiated.getter();
  if (sub_1000EEF04(2, 26, 4, 0))
  {
    v39 = type metadata accessor for _TaskModifier2();
    v40 = &v37;
    v38 = *(v39 - 8);
    __chkstk_darwin(v39);
    v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v45 = 0xD000000000000034;
    v46 = 0x80000001000FF260;
    v50 = 38;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    __chkstk_darwin(v29);
    (*(v22 + 16))(&v37 - v24, v25, v21);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v22 + 8))(v25, v21);
    v30 = v43;
    (*(v41 + 32))(v43, v44, v42);
    v31 = sub_100002D44(&qword_100141DE8);
    return (*(v38 + 32))(v30 + *(v31 + 36), v27, v39);
  }

  else
  {
    v33 = sub_100002D44(&qword_100141DF0);
    v34 = v43;
    v35 = (v43 + *(v33 + 36));
    v36 = type metadata accessor for _TaskModifier();
    (*(v22 + 32))(&v35[*(v36 + 20)], &v37 - v24, v21);
    *v35 = &unk_1000F50C0;
    *(v35 + 1) = v20;
    return (*(v41 + 32))(v34, v44, v42);
  }
}

uint64_t sub_100004E9C@<X0>(void *a1@<X8>)
{
  sub_100007990();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100004EEC()
{
  sub_100007990();

  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100004F4C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100002D44(&qword_100142028);
  State.wrappedValue.getter();
  sub_1000B70AC(a4, a1);
}

uint64_t sub_100004FBC()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100005050, v2, v1);
}

uint64_t sub_100005050()
{
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100005114;

  return sub_1000C8618();
}

uint64_t sub_100005114()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_100005234, v3, v2);
}

uint64_t sub_100005234()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005294()
{
  v1 = sub_100002D44(&qword_100141FE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_100002D44(&qword_100141FE8);
  v8 = sub_100004370(&qword_100141DE0);
  v9 = sub_100004370(&qword_100141FF0);
  v10 = sub_100004370(&qword_100141FF8);
  v11 = sub_1000075EC();
  v15 = v10;
  v16 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v9;
  v16 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v15 = v8;
  v16 = v13;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100004610(&qword_100142020, &qword_100141FE0);
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1000054EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007568();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005514@<X0>(char *a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v39 = a4;
  v40 = sub_100002D44(&qword_100142038);
  __chkstk_darwin(v40);
  v7 = &v32 - v6;
  v34 = sub_100002D44(&qword_100142040);
  __chkstk_darwin(v34);
  v9 = (&v32 - v8);
  v36 = sub_100002D44(&qword_100142048);
  __chkstk_darwin(v36);
  v38 = &v32 - v10;
  v33 = sub_100002D44(&qword_100142050);
  __chkstk_darwin(v33);
  v12 = (&v32 - v11);
  v37 = sub_100002D44(&qword_100142058);
  __chkstk_darwin(v37);
  v32 = &v32 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = a1;
  v19 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v14);
    v18 = v41;
  }

  swift_getKeyPath();
  v41 = v18;
  sub_100007B78(&qword_100142060, type metadata accessor for ViewConfiguration);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v18 + 16);

  if (v21)
  {
    if (v21 == 1)
    {
      type metadata accessor for HistoryListProvider();
      v23 = swift_allocObject();
      type metadata accessor for SHLibrary();
      *(v23 + 16) = static SHLibrary.default.getter();
      ObservationRegistrar.init()();
      sub_100002D44(&qword_1001420B8);
      v24 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v24 + 16) = v23;
      sub_100002D44(&qword_1001420C0);
      swift_allocObject();

      *(v24 + 24) = sub_100006C08(v25);
      *v9 = v24;
      v26 = *(sub_100002D44(&qword_100142090) + 36);
      *(v9 + v26) = swift_getKeyPath();
      sub_100002D44(&qword_1001420C8);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel();
      sub_100007B78(&qword_100142070, type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel);

      Bindable<A>.init(wrappedValue:)();
      sub_100007FDC(v9, v12, &qword_100142040);
      swift_storeEnumTagMultiPayload();
      sub_100007A90();
      v27 = v32;
      _ConditionalContent<>.init(storage:)();
      sub_100007FDC(v27, v38, &qword_100142058);
      swift_storeEnumTagMultiPayload();
      sub_100007A04();
      sub_100007BC0();
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v27, &qword_100142058);
      v28 = v9;
      v29 = &qword_100142040;
    }

    else
    {
      __chkstk_darwin(v22);
      *(&v32 - 4) = a1;
      *(&v32 - 24) = v19 & 1;
      *(&v32 - 2) = v35;
      type metadata accessor for TrackPageView();
      sub_100007B78(&qword_100142068, type metadata accessor for TrackPageView);
      NavigationStack.init<>(root:)();
      type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel();
      sub_100007B78(&qword_100142070, type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel);

      Bindable<A>.init(wrappedValue:)();
      sub_100007FDC(v7, v38, &qword_100142038);
      swift_storeEnumTagMultiPayload();
      sub_100007A04();
      sub_100007BC0();
      _ConditionalContent<>.init(storage:)();
      v28 = v7;
      v29 = &qword_100142038;
    }
  }

  else
  {
    v41 = static Color.clear.getter();
    sub_100007D0C();
    *v12 = Color.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_100007A90();

    v30 = v32;
    _ConditionalContent<>.init(storage:)();
    sub_100007FDC(v30, v38, &qword_100142058);
    swift_storeEnumTagMultiPayload();
    sub_100007A04();
    sub_100007BC0();
    _ConditionalContent<>.init(storage:)();

    v28 = v30;
    v29 = &qword_100142058;
  }

  return sub_100007E14(v28, v29);
}

uint64_t sub_100005D48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100002D44(&unk_100144630);
  v7 = __chkstk_darwin(v6 - 8);
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v82 = &v72 - v10;
  v11 = __chkstk_darwin(v9);
  v80 = &v72 - v12;
  v13 = __chkstk_darwin(v11);
  v73 = &v72 - v14;
  __chkstk_darwin(v13);
  v79 = &v72 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v20 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v20 = v84[0];
  }

  swift_getKeyPath();
  v84[0] = v20;
  sub_100007B78(&qword_100142060, type metadata accessor for ViewConfiguration);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v78 = *(v20 + 24);
  v72 = v78;

  v22 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v22 = v84[0];
  }

  swift_getKeyPath();
  v84[0] = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v22 + 40);
  v76 = *(v22 + 32);
  v77 = v24;

  v25 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v25 = v84[0];
  }

  swift_getKeyPath();
  v84[0] = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = *(v25 + 48);

  v27 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v27 = v84[0];
  }

  swift_getKeyPath();
  v84[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + 16);

  if (a2)
  {
    v85 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    a1 = v85;
  }

  v31 = 0x2000Bu >> (8 * v29);
  swift_getKeyPath();
  v84[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = *(a1 + 49);

  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v32 = qword_10014FF90;
  v33 = type metadata accessor for MusicSubscriptionStatusController();
  v84[3] = v33;
  v84[4] = &off_100139B30;
  v84[0] = v32;
  type metadata accessor for TrackPageViewModel();
  v34 = swift_allocObject();
  v35 = sub_100007D60(v84, v33);
  __chkstk_darwin(v35);
  v37 = (&v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v83[3] = v33;
  v83[4] = &off_100139B30;
  v83[0] = v39;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0u;
  *(v34 + 64) = 0u;
  *(v34 + 80) = 0u;
  *(v34 + 96) = 0u;
  *(v34 + 112) = 0u;
  *(v34 + 128) = 0;
  *(v34 + 136) = 2;
  *(v34 + 144) = 0x3FE6666666666666;
  *(v34 + 200) = 0;
  *(v34 + 152) = 0u;
  *(v34 + 168) = 0u;
  *(v34 + 177) = 0u;
  *(v34 + 248) = 0;
  *(v34 + 232) = 0u;
  *(v34 + 216) = 0u;
  *(v34 + 392) = 0u;
  *(v34 + 408) = 0u;
  *(v34 + 360) = 0u;
  *(v34 + 376) = 0u;
  *(v34 + 328) = 0u;
  *(v34 + 344) = 0u;
  *(v34 + 296) = 0u;
  *(v34 + 312) = 0u;
  *(v34 + 264) = 0u;
  *(v34 + 280) = 0u;
  *(v34 + 424) = 0;
  *(v34 + 432) = 1;
  *(v34 + 440) = 0u;
  *(v34 + 456) = 0u;
  *(v34 + 472) = 0u;
  v40 = objc_opt_self();

  *(v34 + 488) = [v40 sharedInstance];
  *(v34 + 496) = LocalizedStringKey.init(stringLiteral:)();
  *(v34 + 504) = v41;
  *(v34 + 512) = v42 & 1;
  *(v34 + 520) = v43;
  *(v34 + 528) = LocalizedStringKey.init(stringLiteral:)();
  *(v34 + 536) = v44;
  *(v34 + 544) = v45 & 1;
  *(v34 + 552) = v46;
  ObservationRegistrar.init()();
  v47 = v78;
  *(v34 + 560) = v78;
  v48 = v77;
  *(v34 + 568) = v76;
  *(v34 + 576) = v48;
  *(v34 + 584) = v74;
  sub_100007DB0(v83, v34 + 592);
  *(v34 + 256) = v31;
  if (v47)
  {
    v49 = [v72 artworkURL];
    v50 = v79;
    if (v49)
    {
      v51 = v73;
      v52 = v49;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v51 = v73;
    }

    v55 = type metadata accessor for URL();
    (*(*(v55 - 8) + 56))(v51, v53, 1, v55);
    sub_100007F6C(v51, v50);
  }

  else
  {
    v54 = type metadata accessor for URL();
    v50 = v79;
    (*(*(v54 - 8) + 56))(v79, 1, 1, v54);
  }

  v56 = type metadata accessor for URL();
  v57 = *(*(v56 - 8) + 56);
  v58 = v80;
  v57(v80, 1, 1, v56);
  type metadata accessor for SongArtworkViewModel();
  v59 = swift_allocObject();
  v57((v59 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL), 1, 1, v56);
  v57((v59 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL), 1, 1, v56);
  ObservationRegistrar.init()();
  v60 = v82;
  sub_100007FDC(v50, v82, &unk_100144630);
  sub_1000D88D8(v60);
  sub_100007FDC(v58, v60, &unk_100144630);
  v61 = v50;
  v62 = v81;
  sub_100007FDC(v60, v81, &unk_100144630);
  sub_1000D8B98(v62);
  sub_100007E14(v58, &unk_100144630);
  sub_100007E14(v61, &unk_100144630);
  sub_100007E14(v60, &unk_100144630);
  sub_100007E74(v83);
  *(v34 + 208) = v59;
  *(v34 + 632) = v75;
  sub_100007E74(v84);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v63 = type metadata accessor for TrackPageView();
  v64 = v63[5];
  *(a3 + v64) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8);
  swift_storeEnumTagMultiPayload();
  v65 = v63[6];
  *(a3 + v65) = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8);
  swift_storeEnumTagMultiPayload();
  v66 = v63[7];
  *(a3 + v66) = swift_getKeyPath();
  sub_100002D44(&qword_1001420E0);
  swift_storeEnumTagMultiPayload();
  v67 = (a3 + v63[9]);
  *v67 = [objc_allocWithZone(CLLocationManager) init];
  type metadata accessor for LocationManager();
  Logger.init(subsystem:category:)();
  v68 = (a3 + v63[10]);
  sub_100002D44(&qword_1001420E8);
  *(swift_allocObject() + 16) = 0;
  sub_100004610(&qword_1001420F0, &qword_1001420E8);
  result = ObservedObject.init(wrappedValue:)();
  *v68 = result;
  v68[1] = v70;
  *(a3 + v63[8]) = v34;
  v71 = (a3 + v63[11]);
  *v71 = 0;
  v71[1] = 0;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006A30();
  static App.main()();
  return 0;
}

unint64_t sub_100006A30()
{
  result = qword_100141FD8;
  if (!qword_100141FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100141FD8);
  }

  return result;
}

uint64_t sub_100006A84(uint64_t *a1, int a2)
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

uint64_t sub_100006ACC(uint64_t result, int a2, int a3)
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

__n128 sub_100006B24(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006B80(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100006C08(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_100002D44(&unk_100144630);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v55 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - v11;
  __chkstk_darwin(v10);
  v14 = &v55 - v13;
  v15 = type metadata accessor for NavigationPath();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringResource.init(stringLiteral:)();
  v19 = v2 + qword_10014FEE8;
  *v19 = LocalizedStringKey.init(stringLiteral:)();
  *(v19 + 8) = v20;
  *(v19 + 16) = v21 & 1;
  *(v19 + 24) = v22;
  v23 = v2 + qword_10014FEF0;
  *v23 = LocalizedStringKey.init(stringLiteral:)();
  *(v23 + 8) = v24;
  *(v23 + 16) = v25 & 1;
  *(v23 + 24) = v26;
  v27 = v2 + qword_10014FEF8;
  *v27 = LocalizedStringKey.init(stringLiteral:)();
  *(v27 + 8) = v28;
  *(v27 + 16) = v29 & 1;
  *(v27 + 24) = v30;
  v31 = v2 + qword_10014FF00;
  *v31 = LocalizedStringKey.init(stringLiteral:)();
  *(v31 + 8) = v32;
  *(v31 + 16) = v33 & 1;
  *(v31 + 24) = v34;
  v35 = (v2 + qword_100142EB8);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  *(v2 + qword_100142EC0) = 0;
  *(v2 + qword_100142EC8) = 0;
  NavigationPath.init()();
  (*(v16 + 32))(v2 + qword_100142ED0, v18, v15);
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v36 = qword_10014FF90;
  v37 = type metadata accessor for MusicSubscriptionStatusController();
  v58[3] = v37;
  v58[4] = &off_100139B30;
  v58[0] = v36;
  type metadata accessor for TrackPageViewModel();
  v38 = swift_allocObject();
  v39 = sub_100007D60(v58, v37);
  v55 = &v55;
  __chkstk_darwin(v39);
  v41 = (&v55 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  v57[3] = v37;
  v57[4] = &off_100139B30;
  v57[0] = v43;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0u;
  *(v38 + 64) = 0u;
  *(v38 + 80) = 0u;
  *(v38 + 96) = 0u;
  *(v38 + 112) = 0u;
  *(v38 + 128) = 0;
  *(v38 + 136) = 2;
  *(v38 + 144) = 0x3FE6666666666666;
  *(v38 + 200) = 0;
  *(v38 + 152) = 0u;
  *(v38 + 168) = 0u;
  *(v38 + 177) = 0u;
  *(v38 + 248) = 0;
  *(v38 + 232) = 0u;
  *(v38 + 216) = 0u;
  *(v38 + 392) = 0u;
  *(v38 + 408) = 0u;
  *(v38 + 360) = 0u;
  *(v38 + 376) = 0u;
  *(v38 + 328) = 0u;
  *(v38 + 344) = 0u;
  *(v38 + 296) = 0u;
  *(v38 + 312) = 0u;
  *(v38 + 264) = 0u;
  *(v38 + 280) = 0u;
  *(v38 + 424) = 0;
  *(v38 + 432) = 1;
  *(v38 + 440) = 0u;
  *(v38 + 456) = 0u;
  *(v38 + 472) = 0u;
  v44 = objc_opt_self();

  *(v38 + 488) = [v44 sharedInstance];
  *(v38 + 496) = LocalizedStringKey.init(stringLiteral:)();
  *(v38 + 504) = v45;
  *(v38 + 512) = v46 & 1;
  *(v38 + 520) = v47;
  *(v38 + 528) = LocalizedStringKey.init(stringLiteral:)();
  *(v38 + 536) = v48;
  *(v38 + 544) = v49 & 1;
  *(v38 + 552) = v50;
  ObservationRegistrar.init()();
  *(v38 + 584) = 0;
  *(v38 + 576) = 0;
  *(v38 + 560) = 0u;
  sub_100007DB0(v57, v38 + 592);
  *(v38 + 256) = 11;
  v51 = type metadata accessor for URL();
  v52 = *(*(v51 - 8) + 56);
  v52(v14, 1, 1, v51);
  v52(v12, 1, 1, v51);
  type metadata accessor for SongArtworkViewModel();
  v53 = swift_allocObject();
  v52((v53 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL), 1, 1, v51);
  v52((v53 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL), 1, 1, v51);
  ObservationRegistrar.init()();
  sub_100007FDC(v14, v9, &unk_100144630);
  sub_1000D88D8(v9);
  sub_100007FDC(v12, v9, &unk_100144630);
  sub_100007FDC(v9, v6, &unk_100144630);
  sub_1000D8B98(v6);
  sub_100007E14(v12, &unk_100144630);
  sub_100007E14(v14, &unk_100144630);
  sub_100007E14(v9, &unk_100144630);
  sub_100007E74(v57);
  *(v38 + 208) = v53;
  *(v38 + 632) = 0;
  sub_100007E74(v58);
  *(v2 + qword_100142ED8) = v38;
  *(v2 + qword_100142EE0) = sub_10001AAA4();
  ObservationRegistrar.init()();
  *(v2 + *(*v2 + 184)) = v56;
  return v2;
}

uint64_t sub_1000073A0(uint64_t a1)
{
  v2 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v2 - 8);
  sub_100007FDC(a1, &v5 - v3, &qword_1001420F8);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_100007498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100007568()
{
  type metadata accessor for ViewConfiguration();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  return v2;
}

unint64_t sub_1000075EC()
{
  result = qword_100142000;
  if (!qword_100142000)
  {
    sub_100004370(&qword_100141FF8);
    sub_1000076A4();
    sub_100004610(&qword_100142010, &qword_100142018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142000);
  }

  return result;
}

unint64_t sub_1000076A4()
{
  result = qword_100142008;
  if (!qword_100142008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142008);
  }

  return result;
}

uint64_t sub_1000076F8@<X0>(void *a1@<X8>)
{
  sub_100007990();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10000776C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000077CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000789C;

  return sub_100004FBC();
}

uint64_t sub_10000789C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100007990()
{
  result = qword_100142030;
  if (!qword_100142030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142030);
  }

  return result;
}

unint64_t sub_100007A04()
{
  result = qword_100142078;
  if (!qword_100142078)
  {
    sub_100004370(&qword_100142058);
    sub_100007A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142078);
  }

  return result;
}

unint64_t sub_100007A90()
{
  result = qword_100142080;
  if (!qword_100142080)
  {
    sub_100004370(&qword_100142040);
    sub_100004610(&qword_100142088, &qword_100142090);
    sub_100007B78(&qword_100142098, type metadata accessor for PrivacySplashPresenter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142080);
  }

  return result;
}

uint64_t sub_100007B78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100007BC0()
{
  result = qword_1001420A0;
  if (!qword_1001420A0)
  {
    sub_100004370(&qword_100142038);
    sub_100004610(&qword_1001420A8, &qword_1001420B0);
    sub_100007B78(&qword_100142098, type metadata accessor for PrivacySplashPresenter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001420A0);
  }

  return result;
}

unint64_t sub_100007D0C()
{
  result = qword_1001420D0;
  if (!qword_1001420D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001420D0);
  }

  return result;
}

uint64_t sub_100007D60(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100007DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007E14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100002D44(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100007E74(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100007F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007FDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100002D44(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000808C()
{
  result = qword_100142100;
  if (!qword_100142100)
  {
    sub_100004370(&qword_100142108);
    sub_100007A04();
    sub_100007BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142100);
  }

  return result;
}

uint64_t sub_100008120@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  URL.init(string:)();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v4, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v7, v4, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    *a1 = 0x495F545349545241;
    *(a1 + 8) = 0xE900000000000044;
    *(a1 + 16) = 0x747369747241;
    *(a1 + 24) = 0xE600000000000000;
    *(a1 + 32) = xmmword_1000F52E0;
    v11 = type metadata accessor for DesignTimeArtistMetadata();
    result = sub_100007F6C(v7, a1 + *(v11 + 28));
    v12 = (a1 + *(v11 + 32));
    *v12 = 0xD0000000000001BDLL;
    v12[1] = 0x80000001000FF3E0;
  }

  return result;
}

uint64_t type metadata accessor for DesignTimeArtistMetadata()
{
  result = qword_100142168;
  if (!qword_100142168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008368(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002D44(&unk_100144630);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008438(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&unk_100144630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000084E8()
{
  sub_100008580();
  if (v0 <= 0x3F)
  {
    sub_1000085D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100008580()
{
  if (!qword_100142178)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100142178);
    }
  }
}

void sub_1000085D0()
{
  if (!qword_100142180)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100142180);
    }
  }
}

uint64_t sub_100008628()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100008658()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100008698(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_100008724@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100008790(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_1001421C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000088E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&qword_1001421C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ContextMenuForUnsubscribedUserView()
{
  result = qword_100142220;
  if (!qword_100142220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000089E0()
{
  sub_100008ADC();
  if (v0 <= 0x3F)
  {
    sub_100008B40(319, &qword_100142240, type metadata accessor for ContextMenuForUnsubscribedUserViewModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100008B40(319, &qword_100142248, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100008ADC()
{
  if (!qword_100142230)
  {
    sub_100004370(&qword_100142238);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100142230);
    }
  }
}

void sub_100008B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100008BC0@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v49 = type metadata accessor for URL();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContextMenuForUnsubscribedUserView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v45 = sub_100002D44(&qword_100142280);
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v43 - v6;
  v50 = sub_100002D44(&qword_100142288);
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v58 = &v43 - v7;
  v8 = sub_100002D44(&qword_100142290);
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  __chkstk_darwin(v8);
  v51 = &v43 - v10;
  v54 = sub_100002D44(&qword_100142298);
  __chkstk_darwin(v54);
  v52 = &v43 - v11;
  sub_10000BA8C(v1, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_10000BD04(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ContextMenuForUnsubscribedUserView);
  v59 = v1;
  sub_100002D44(&qword_1001422A8);
  sub_100002D44(&qword_1001422B0);
  v14 = sub_100004370(&qword_1001422B8);
  v60[0] = &type metadata for Image;
  v60[1] = &protocol witness table for Image;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60[0] = v14;
  v60[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_1001422C0, &qword_1001422B0);
  Menu.init(onPresentationChanged:content:label:)();
  v16 = *(v1 + 24);
  v70 = *(v1 + 16);
  v17 = v70;
  v71 = v16;
  sub_100002D44(&qword_1001422C8);
  State.projectedValue.getter();
  v18 = v60[0];
  v19 = v60[1];
  v20 = v61;
  swift_getKeyPath();
  v60[0] = v18;
  v60[1] = v19;
  v61 = v20;
  sub_100002D44(&qword_1001422D0);
  Binding.subscript.getter();

  v68 = v17;
  v69 = v16;
  State.wrappedValue.getter();
  v21 = v47;
  v22 = v46;
  v23 = v49;
  (*(v47 + 16))(v46, v67 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v49);

  v42 = sub_100004610(&qword_1001422D8, &qword_100142280);
  v24 = v45;
  v25 = v22;
  v26 = v44;
  View.sharingPicker(isPresented:item:subject:message:)();

  (*(v21 + 8))(v25, v23);
  (*(v48 + 8))(v26, v24);
  Solarium.init()();
  v27 = sub_100002D44(&qword_1001422E0);
  v28 = sub_100002D44(&qword_1001422E8);
  v60[0] = v24;
  v60[1] = v42;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = type metadata accessor for PlainButtonStyle();
  v31 = sub_10000BF5C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  v32 = v50;
  v60[0] = v50;
  v60[1] = v30;
  v61 = v29;
  v62 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = type metadata accessor for NavigationBarButtonStyle();
  v35 = sub_10000BF5C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
  v60[0] = v32;
  v60[1] = v34;
  v61 = v29;
  v62 = v35;
  v41 = swift_getOpaqueTypeConformance2();
  v36 = v51;
  v37 = v58;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v53 + 8))(v37, v32);
  v60[0] = v32;
  v60[1] = &type metadata for Solarium;
  v61 = v27;
  v62 = v28;
  v63 = v29;
  v64 = &protocol witness table for Solarium;
  v65 = v33;
  v66 = v41;
  swift_getOpaqueTypeConformance2();
  v38 = v52;
  v39 = v55;
  View.accessibilityIdentifier(_:)();
  (*(v56 + 8))(v36, v39);
  strcpy(v60, "Overflow Menu");
  HIWORD(v60[1]) = -4864;
  sub_10000B730();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  return sub_10000B784(v38);
}

uint64_t sub_1000094FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v3 = sub_100002D44(&qword_100142310);
  v47 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = v41 - v4;
  v5 = sub_100002D44(&qword_100142318);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v41 - v9;
  v11 = sub_100002D44(&qword_100142320);
  v44 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v49 = v41 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v41 - v18;
  __chkstk_darwin(v17);
  v21 = v41 - v20;
  v51 = a1;
  sub_100002D44(&qword_100142328);
  sub_10000B804();
  v48 = v21;
  Section<>.init(content:)();
  v50 = a1;
  v45 = v19;
  Section<>.init(content:)();
  v22 = *(a1 + 24);
  v53 = *(a1 + 16);
  v54 = v22;
  sub_100002D44(&qword_1001422C8);
  State.wrappedValue.getter();
  v23 = *(*(v52 + OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel_streamingServices) + 16);

  if (v23)
  {
    v24 = LocalizedStringKey.init(stringLiteral:)();
    v41[0] = v25;
    v41[1] = v24;
    v42 = v10;
    __chkstk_darwin(v24);
    v41[-2] = a1;
    sub_100002D44(&qword_100142348);
    sub_10000B918();
    v26 = v42;
    v27 = v43;
    Section<>.init(_:content:)();
    v28 = v47;
    v10 = v26;
    (*(v47 + 32))(v26, v27, v3);
    v29 = 0;
    v30 = v28;
  }

  else
  {
    v29 = 1;
    v30 = v47;
  }

  (*(v30 + 56))(v10, v29, 1, v3);
  v31 = v44;
  v32 = *(v44 + 16);
  v33 = v49;
  v32(v49, v48, v11);
  v34 = v14;
  v35 = v45;
  v32(v14, v45, v11);
  v36 = v8;
  sub_10000B99C(v10, v8);
  v37 = v46;
  v32(v46, v33, v11);
  v38 = sub_100002D44(&qword_100142358);
  v32(&v37[*(v38 + 48)], v34, v11);
  sub_10000B99C(v36, &v37[*(v38 + 64)]);
  sub_100007E14(v10, &qword_100142318);
  v39 = *(v31 + 8);
  v39(v35, v11);
  v39(v48, v11);
  sub_100007E14(v36, &qword_100142318);
  v39(v34, v11);
  return (v39)(v49, v11);
}

uint64_t sub_100009A4C(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuForUnsubscribedUserView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100002D44(&qword_100142340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000BA8C(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_10000BD04(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ContextMenuForUnsubscribedUserView);
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340);
  View.accessibilityIdentifier(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100009CDC@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v2 = type metadata accessor for ContextMenuForUnsubscribedUserView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100002D44(&qword_100142340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  v9 = sub_100002D44(&qword_100142328);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  sub_10000BA8C(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_10000BD04(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ContextMenuForUnsubscribedUserView);
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340);
  View.accessibilityIdentifier(_:)();
  (*(v6 + 8))(v8, v5);
  LocalizedStringKey.init(stringLiteral:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  LOBYTE(v4) = v17;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000BFBC(v14, v16, v4 & 1);

  return sub_100007E14(v11, &qword_100142328);
}

uint64_t sub_10000A05C(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuForUnsubscribedUserView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *(a1 + 24);
  v11 = *(a1 + 16);
  v12 = v5;
  sub_100002D44(&qword_1001422C8);
  State.wrappedValue.getter();
  v6 = *(v10[1] + OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel_streamingServices);

  v11 = v6;
  sub_10000BA8C(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_10000BD04(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ContextMenuForUnsubscribedUserView);
  sub_100002D44(&qword_100142360);
  sub_100002D44(&qword_100142328);
  sub_100004610(&qword_100142368, &qword_100142360);
  sub_10000B804();
  sub_10000BF5C(&qword_100142370, type metadata accessor for StreamingService);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10000A29C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
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
    (*(v2 + 8))(v5, v1);
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

uint64_t sub_10000A504@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000BF5C(&qword_100142308, type metadata accessor for ContextMenuViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow);
  return result;
}

uint64_t sub_10000A5B4()
{
  v0 = type metadata accessor for PlainButtonStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlainButtonStyle.init()();
  sub_100002D44(&qword_100142288);
  v4 = sub_100004370(&qword_100142280);
  v5 = sub_100004610(&qword_1001422D8, &qword_100142280);
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  sub_10000BF5C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10000A770()
{
  v0 = type metadata accessor for NavigationBarButtonStyle();
  __chkstk_darwin(v0);
  v2 = (v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8);
  swift_storeEnumTagMultiPayload();
  sub_100002D44(&qword_100142288);
  v3 = sub_100004370(&qword_100142280);
  v4 = sub_100004610(&qword_1001422D8, &qword_100142280);
  v6[0] = v3;
  v6[1] = v4;
  swift_getOpaqueTypeConformance2();
  sub_10000BF5C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
  View.buttonStyle<A>(_:)();
  return sub_10000BEFC(v2, type metadata accessor for NavigationBarButtonStyle);
}

uint64_t sub_10000A928()
{
  sub_100002D44(&qword_1001422C8);
  State.wrappedValue.getter();
  sub_1000E7B74(sub_10000C190);
}

uint64_t sub_10000A9A4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OpenURLAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextMenuForUnsubscribedUserView();
  sub_100041144(v9);
  v10 = *(a1 + 24);
  v12[2] = *(a1 + 16);
  v12[3] = v10;
  sub_100002D44(&qword_1001422C8);
  State.wrappedValue.getter();
  (*(v3 + 16))(v5, v12[1] + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL, v2);

  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10000ABDC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000AC54()
{
  sub_100002D44(&qword_1001422C8);
  State.wrappedValue.getter();
  sub_1000E7A1C();
}

uint64_t sub_10000AD04@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000AD7C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10000ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v25 = a3;
  v5 = type metadata accessor for ContextMenuForUnsubscribedUserView();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for StreamingService();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100142340);
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  sub_10000BA8C(a1, v10, type metadata accessor for StreamingService);
  sub_10000BA8C(a2, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuForUnsubscribedUserView);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + *(v22 + 80) + v15) & ~*(v22 + 80);
  v17 = swift_allocObject();
  sub_10000BD04(v10, v17 + v15, type metadata accessor for StreamingService);
  sub_10000BD04(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ContextMenuForUnsubscribedUserView);
  v26 = v21;
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(action:label:)();
  sub_100004610(&qword_100142338, &qword_100142340);
  v18 = v23;
  View.accessibilityIdentifier(_:)();
  return (*(v24 + 8))(v14, v18);
}

uint64_t sub_10000B11C(void *a1, uint64_t a2)
{
  v4 = *a1 == 0x6C7070612E6D6F63 && a1[1] == 0xEF636973754D2E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100002D44(&qword_1001422C8);
    State.wrappedValue.getter();
    sub_10000B280(a1, a2, "Opening Apple Music provider URL %s");
    if (*(v7 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
    {
      v5 = 66305;
    }

    else
    {
      v5 = 769;
    }
  }

  else
  {
    sub_100002D44(&qword_1001422C8);
    State.wrappedValue.getter();
    sub_10000B280(a1, a2, "Opening third party provider URL %s");
    if (*(v7 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
    {
      v5 = 66308;
    }

    else
    {
      v5 = 772;
    }
  }

  sub_1000C3900(v5, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_10000B280(uint64_t a1, uint64_t a2, const char *a3)
{
  v26 = a3;
  v5 = type metadata accessor for OpenURLAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StreamingService();
  __chkstk_darwin(v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000BEC4(v12, qword_10014FEA0);
  sub_10000BA8C(a1, v11, type metadata accessor for StreamingService);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24[1] = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24[2] = a1;
    v18 = v17;
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for URL();
    v25 = v5;
    sub_10000BF5C(&qword_100142378, &type metadata accessor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10000BEFC(v11, type metadata accessor for StreamingService);
    v22 = sub_1000BA1EC(v19, v21, &v27);

    *(v16 + 4) = v22;
    v5 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, v26, v16, 0xCu);
    sub_100007E74(v18);
  }

  else
  {

    sub_10000BEFC(v11, type metadata accessor for StreamingService);
  }

  type metadata accessor for ContextMenuForUnsubscribedUserView();
  sub_100041144(v8);
  OpenURLAction.callAsFunction(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000B5A8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StreamingService();
  sub_10000B730();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000B628@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StreamingService();

  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10000B688(char a1)
{
  v3 = type metadata accessor for ContextMenuForUnsubscribedUserView();
  v6 = *(v3 - 8);
  result = v3 - 8;
  v5 = v6;
  if (a1)
  {
    v7 = (v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
    if (*v7)
    {
      return (*v7)();
    }
  }

  return result;
}

unint64_t sub_10000B730()
{
  result = qword_100142300;
  if (!qword_100142300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142300);
  }

  return result;
}

uint64_t sub_10000B784(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B804()
{
  result = qword_100142330;
  if (!qword_100142330)
  {
    sub_100004370(&qword_100142328);
    sub_100004610(&qword_100142338, &qword_100142340);
    sub_10000BF5C(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142330);
  }

  return result;
}

unint64_t sub_10000B918()
{
  result = qword_100142350;
  if (!qword_100142350)
  {
    sub_100004370(&qword_100142348);
    sub_10000B804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142350);
  }

  return result;
}

uint64_t sub_10000B99C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContextMenuForUnsubscribedUserView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000ADBC(a1, v6, a2);
}

uint64_t sub_10000BA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000BAF4()
{
  v1 = (type metadata accessor for StreamingService() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ContextMenuForUnsubscribedUserView();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = (v3 + v4 + v6) & ~v6;

  v9 = v1[7];
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  if (*(v0 + v8))
  {
  }

  v11 = *(v5 + 24);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v8 + v7, v2 | v6 | 7);
}

uint64_t sub_10000BD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000BD6C()
{
  v1 = *(type metadata accessor for StreamingService() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ContextMenuForUnsubscribedUserView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10000B11C((v0 + v2), v5);
}

uint64_t sub_10000BEC4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BF5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000BFBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000BFCC()
{
  v1 = type metadata accessor for ContextMenuForUnsubscribedUserView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (*(v0 + v3))
  {
  }

  v5 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C11C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContextMenuForUnsubscribedUserView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10000C19C()
{
  result = qword_100142380;
  if (!qword_100142380)
  {
    sub_100004370(&qword_100142298);
    sub_100004370(&qword_100142288);
    sub_100004370(&qword_1001422E0);
    sub_100004370(&qword_1001422E8);
    sub_100004370(&qword_100142280);
    sub_100004610(&qword_1001422D8, &qword_100142280);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PlainButtonStyle();
    sub_10000BF5C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for NavigationBarButtonStyle();
    sub_10000BF5C(&qword_1001422F8, type metadata accessor for NavigationBarButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000BF5C(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142380);
  }

  return result;
}

id sub_10000C460()
{
  v1 = [objc_opt_self() effectWithStyle:*v0];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

void sub_10000C4D0(void *a1)
{
  v3 = [objc_opt_self() effectWithStyle:*v1];
  [a1 setEffect:v3];
}

uint64_t sub_10000C5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C6E8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000C604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C6E8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000C668()
{
  sub_10000C6E8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10000C694()
{
  result = qword_100142388;
  if (!qword_100142388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142388);
  }

  return result;
}

unint64_t sub_10000C6E8()
{
  result = qword_100142390;
  if (!qword_100142390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142390);
  }

  return result;
}

uint64_t sub_10000C750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000C7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ShazamCampaignWebView()
{
  result = qword_1001423F0;
  if (!qword_1001423F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C88C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10000C940()
{
  v0 = [objc_allocWithZone(WKWebViewConfiguration) init];
  v1 = [objc_allocWithZone(WKUserContentController) init];
  [v0 setUserContentController:v1];

  v2 = [objc_allocWithZone(WKPreferences) init];
  [v2 setTextInteractionEnabled:0];
  [v0 setPreferences:v2];
  v3 = [objc_allocWithZone(WKWebView) initWithFrame:v0 configuration:{0.0, 0.0, 0.0, 0.0}];
  [v3 setAllowsBackForwardNavigationGestures:0];

  return v3;
}

uint64_t sub_10000CA38(void *a1)
{
  v3 = type metadata accessor for ShazamCampaignWebView();
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLRequest();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000BEC4(v14, qword_10014FEA0);
  sub_10000CF50(v1, v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    sub_10000D010(&qword_100142378, &type metadata accessor for URL);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_10000CFB4(v5);
    v23 = sub_1000BA1EC(v20, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Opening %s", v18, 0xCu);
    sub_100007E74(v19);

    a1 = v26;
  }

  else
  {

    sub_10000CFB4(v5);
  }

  isa = URLRequest._bridgeToObjectiveC()().super.isa;

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10000CDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D010(&qword_100142430, type metadata accessor for ShazamCampaignWebView);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000CE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D010(&qword_100142430, type metadata accessor for ShazamCampaignWebView);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000CEF8()
{
  sub_10000D010(&qword_100142430, type metadata accessor for ShazamCampaignWebView);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10000CF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamCampaignWebView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CFB4(uint64_t a1)
{
  v2 = type metadata accessor for ShazamCampaignWebView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D058()
{
  v0 = type metadata accessor for Logger();
  sub_10000D0C8(v0, qword_10014FEA0);
  sub_10000BEC4(v0, qword_10014FEA0);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10000D0C8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000D12C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10000D1AC()
{

  sub_100007E74(v0 + 24);

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_10000D23C()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10000DCC4;

  return v6(v2, v3);
}

uint64_t sub_10000D388()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10000D4B0;

  return v6(v2, v3);
}

uint64_t sub_10000D4B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D5C8()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10000D6F0;

  return v6(v2, v3);
}

uint64_t sub_10000D6F0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000D7EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10000D810, 0, 0);
}

uint64_t sub_10000D810()
{
  v1 = v0[3];
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10000D940;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_10000D940()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000DA34(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return _swift_task_switch(sub_10000DA5C, 0, 0);
}

uint64_t sub_10000DA5C()
{
  v1 = v0[4];
  v2 = v1[6];
  v3 = v1[7];
  sub_10000DC80(v1 + 3, v2);
  v8 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10000DB8C;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_10000DB8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10000DC80(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000DCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  ObservationRegistrar.init()();
  *(v3 + OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel_streamingServices) = a3;
  v14 = v8[2];
  v14(v13, a1, v7);
  v14(v10, a2, v7);
  *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) = 0;
  ObservationRegistrar.init()();
  v15 = v8[1];
  v15(a2, v7);
  v15(a1, v7);
  v16 = v8[4];
  v16(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL, v13, v7);
  v16(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v10, v7);
  *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member) = 0;
  return v3;
}

uint64_t sub_10000DEA8()
{

  v1 = OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_10000DF20()
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

  v6(v0 + OBJC_IVAR____TtC16MusicRecognition39ContextMenuForUnsubscribedUserViewModel___observationRegistrar, v5);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for ContextMenuForUnsubscribedUserViewModel()
{
  result = qword_100142518;
  if (!qword_100142518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E0CC()
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

id sub_10000E224()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView) heightAnchor];
    v5 = [v4 constraintEqualToConstant:84.0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10000E32C()
{
  ObjectType = swift_getObjectType();
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deinitializing %@", v6, 0xCu);
    sub_100007E14(v7, &unk_100142880);
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

id sub_10000E574()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  v9 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v9];

  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = result;
  [result addSubview:*&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView]];

  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v11 = qword_10014FF28;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v25;
  v13 = v26;
  v14 = v27;
  sub_1000BFAF4(v25, v26, v27);
  sub_1000120D0(v12, v13, v14);
  sub_10000E9AC();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;

  sub_1000C8DF8(0, 0, v5, &unk_1000F58B8, v18);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_spectralOutputObservers;
  swift_beginAccess();
  v20 = *(v11 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + v19) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_100057DEC(0, v20[2] + 1, 1, v20);
    *(v11 + v19) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_100057DEC((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  sub_1000121E8(v28, &v20[v23 + 4]);
  *(v11 + v19) = v20;
  swift_endAccess();
  sub_100002D44(&qword_100142828);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000F57C0;
  *(v24 + 32) = type metadata accessor for UITraitBacklightLuminance();
  *(v24 + 40) = &protocol witness table for UITraitBacklightLuminance;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

uint64_t sub_10000E9AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_retryHandler);
  *v3 = sub_100012738;
  v3[1] = v2;

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_cancellationHandler);
  *v5 = sub_100012788;
  v5[1] = v4;

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_appleMusicURLHandler);
  *v7 = sub_1000127D8;
  v7[1] = v6;

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = (v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_displayMatchedMediaItemHandler);
  *v9 = sub_1000127E0;
  v9[1] = v8;
}

void sub_10000EB68(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  if ((v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle] & 1) == 0)
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      if (qword_100141A78 != -1)
      {
        swift_once();
      }

      [v4 setBackgroundColor:qword_10014FEC0];

      v5 = objc_opt_self();
      v6 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeConstraints;
      sub_1000123E4(0, &qword_100143260);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 deactivateConstraints:isa];

      sub_10000ECFC(4);
      *&v1[v6] = v8;

      v9 = Array._bridgeToObjectiveC()().super.isa;

      [v5 activateConstraints:v9];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10000ECFC(uint64_t a1)
{
  if (a1 != 4)
  {
    if (a1 == 3)
    {
      sub_100002D44(&qword_100142810);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1000F57E0;
      v8 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_listeningAccessoryView];
      v9 = [v8 centerXAnchor];
      v10 = [v1 view];
      if (!v10)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 = v10;
      v12 = [v10 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

      v13 = [v12 centerXAnchor];
      v14 = [v9 constraintEqualToAnchor:v13];

      *(v2 + 32) = v14;
      v15 = [v8 widthAnchor];
      v16 = [v15 constraintEqualToConstant:25.0];

      *(v2 + 40) = v16;
      v17 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_waveformAccessoryView];
      v18 = [v17 widthAnchor];
      v19 = [v18 constraintEqualToConstant:24.0];

      *(v2 + 48) = v19;
      v20 = [v17 centerXAnchor];
      v21 = [v1 view];
      if (!v21)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v22 = v21;
      v23 = [v21 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

      v24 = [v23 centerXAnchor];
      v25 = [v20 constraintEqualToAnchor:v24];

      *(v2 + 56) = v25;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
      if (a1 == 2)
      {
        sub_100002D44(&qword_100142810);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_1000F57F0;
        v3 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_minimalAccessoryView];
        v4 = [v3 heightAnchor];
        v5 = [v4 constraintEqualToConstant:20.0];

        *(v2 + 32) = v5;
        v6 = [v3 widthAnchor];
        v7 = [v6 constraintEqualToConstant:20.0];

        *(v2 + 40) = v7;
      }
    }

LABEL_21:
    if (v2 >> 62)
    {
      v70 = _CocoaArrayWrapper.endIndex.getter();
      if (v70)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v70 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
LABEL_23:
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v70 & 0x8000000000000000) == 0)
        {
          v71 = 0;
          do
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v72 = *(v2 + 8 * v71 + 32);
            }

            ++v71;
            LODWORD(v73) = 1144750080;
            [v72 setPriority:v73];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v70 != v71);
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

LABEL_31:

    return;
  }

  v26 = [v1 view];
  if (!v26)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v27 = v26;
  v28 = [v26 window];

  if (v28)
  {

    v29 = [v1 view];
    if (!v29)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v30 = v29;
    v31 = [v29 widthAnchor];

    v32 = [v1 view];
    if (!v32)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v33 = v32;
    v34 = [v32 window];

    if (!v34)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v35 = [v34 widthAnchor];

    v36 = [v31 constraintEqualToAnchor:v35];
    goto LABEL_16;
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v35 = [v37 widthAnchor];

    v39 = [objc_opt_self() mainScreen];
    [v39 nativeBounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v74.origin.x = v41;
    v74.origin.y = v43;
    v74.size.width = v45;
    v74.size.height = v47;
    v36 = [v35 constraintEqualToConstant:CGRectGetWidth(v74)];
LABEL_16:

    sub_100002D44(&qword_100142810);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1000F57D0;
    *(v2 + 32) = v36;
    v48 = v36;
    *(v2 + 40) = sub_10000E224();
    v49 = *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView];
    v50 = [v49 topAnchor];
    v51 = [v1 view];
    if (!v51)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v52 = v51;
    v53 = [v51 topAnchor];

    v54 = [v50 constraintEqualToAnchor:v53];
    *(v2 + 48) = v54;
    v55 = [v49 bottomAnchor];
    v56 = [v1 view];
    if (!v56)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v57 = v56;
    v58 = [v56 bottomAnchor];

    v59 = [v55 constraintEqualToAnchor:v58];
    *(v2 + 56) = v59;
    v60 = [v49 leadingAnchor];
    v61 = [v1 view];
    if (!v61)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v62 = v61;
    v63 = [v61 leadingAnchor];

    v64 = [v60 constraintEqualToAnchor:v63];
    *(v2 + 64) = v64;
    v65 = [v49 trailingAnchor];
    v66 = [v1 view];
    if (!v66)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v67 = v66;
    v68 = [v66 trailingAnchor];

    v69 = [v65 constraintEqualToAnchor:v68];
    *(v2 + 72) = v69;

    goto LABEL_21;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_10000F578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  sub_100002D44(&qword_100142830);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_100002D44(&qword_100142838);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_100002D44(&qword_100142840);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000F774, v9, v8);
}

uint64_t sub_10000F774()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_100141B48 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v3 = *(v0 + 144);
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v13 = *(v0 + 160);
    v14 = *(v0 + 120);
    v15 = *(v0 + 152);
    swift_beginAccess();
    sub_100002D44(&qword_100142848);
    Published.projectedValue.getter();
    swift_endAccess();
    NSRunLoop.SchedulerTimeType.Stride.init(_:)();
    v7 = [objc_opt_self() mainRunLoop];
    *(v0 + 88) = v7;
    v8 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_1000123E4(0, &qword_100142850);
    sub_100004610(&qword_100142858, &qword_100142838);
    sub_10001242C();
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_100007E14(v6, &qword_100142830);

    (*(v4 + 8))(v5, v14);
    (*(v15 + 8))(v13, v3);
    swift_allocObject();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_100004610(&qword_100142868, &qword_100142840);
    v10 = Publisher<>.sink(receiveValue:)();

    (*(v17 + 8))(v2, v16);
    *&Strong[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_musicRecognitionCancellable] = v10;
  }

  **(v0 + 96) = Strong == 0;

  v11 = *(v0 + 8);

  return v11();
}

void sub_10000FB28(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000C0668(v1, v2, v3);
    sub_1000BFAF4(v1, v2, v3);
    sub_1000BFDEC(v1, v2, v3);
    sub_1000BFDEC(v1, v2, v3);
    sub_1000C029C(v1, v2, v3);
  }
}

void sub_10000FC14(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 _backlightLuminance];

  if (v3 == 2)
  {
    v4 = *(*&a1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView] + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
    sub_10008DA90();
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = *(*&a1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView] + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
    sub_10008D93C();
  }
}

void sub_10000FD04(void *a1)
{
  sub_10000ECFC(*(v1 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeLayoutMode));
  v4 = v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v8[4] = sub_1000120C0;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000FF38;
  v8[3] = &unk_100135B08;
  v7 = _Block_copy(v8);

  [a1 animateAlongsideTransition:v7 completion:0];
  _Block_release(v7);
}

void sub_10000FE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = objc_opt_self();
    v7 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeConstraints;
    sub_1000123E4(0, &qword_100143260);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 deactivateConstraints:isa];

    *&v5[v7] = a3;

    v9 = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints:v9];
  }
}

uint64_t sub_10000FF38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_100010008(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_listeningAccessoryView;
  v8 = type metadata accessor for ListeningAccessoryView();
  *&v3[v7] = [objc_allocWithZone(v8) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_waveformAccessoryView;
  *&v3[v9] = [objc_allocWithZone(type metadata accessor for WaveformAccessoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_minimalAccessoryView;
  *&v3[v10] = [objc_allocWithZone(v8) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for MatchingFlowCustomView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle] = 1;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeLayoutMode] = 0;
  v12 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_keyColor;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() colorNamed:v13];

  *&v3[v12] = v14;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_musicRecognitionCancellable] = 0;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_assertionTimer] = 0;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_maximumLayoutMode] = 4;
  *&v3[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeConstraints] = &_swiftEmptyArrayStorage;
  if (a2)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

id sub_1000102B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_listeningAccessoryView;
  v5 = type metadata accessor for ListeningAccessoryView();
  *&v1[v4] = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_waveformAccessoryView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for WaveformAccessoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_minimalAccessoryView;
  *&v1[v7] = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for MatchingFlowCustomView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle] = 1;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeLayoutMode] = 0;
  v9 = OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_keyColor;
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() colorNamed:v10];

  *&v1[v9] = v11;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_musicRecognitionCancellable] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_assertionTimer] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController____lazy_storage___customLayoutHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_maximumLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeConstraints] = &_swiftEmptyArrayStorage;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

void sub_100010518(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(v1 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView) + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
  v5 = *&v4[OBJC_IVAR____TtC16MusicRecognition13ListeningView_waveformView];
  v6 = *(a1 + 16);
  if (v6)
  {
    v30 = &_swiftEmptyArrayStorage;
    v7 = v4;
    sub_100063028(0, v6, 0);
    v8 = &_swiftEmptyArrayStorage;
    v9 = (a1 + 32);
    v10 = *(&_swiftEmptyArrayStorage + 2);
    v11 = v6;
    do
    {
      v12 = *v9;
      v30 = v8;
      v13 = v8[3];
      if (v10 >= v13 >> 1)
      {
        sub_100063028((v13 > 1), v10 + 1, 1);
        v8 = v30;
      }

      v14 = powf(v12 * 0.6, 0.4);
      v8[2] = (v10 + 1);
      *(v8 + v10 + 8) = v14;
      ++v9;
      ++v10;
      --v11;
    }

    while (v11);
  }

  else
  {
    v15 = v4;
    v8 = &_swiftEmptyArrayStorage;
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = v8;
  v34 = sub_100011FE8;
  v35 = v17;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000C1C84;
  v33 = &unk_100135A40;
  v18 = _Block_copy(&v30);
  v19 = v5;

  [v16 animateWithDuration:0 delay:v18 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];
  _Block_release(v18);

  v20 = *(*(v2 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_waveformAccessoryView) + OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView);
  v21 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v30 = &_swiftEmptyArrayStorage;
    sub_100063028(0, v6, 0);
    v21 = v30;
    v22 = (a1 + 32);
    v23 = v30[2];
    do
    {
      v24 = *v22;
      v30 = v21;
      v25 = v21[3];
      if (v23 >= v25 >> 1)
      {
        sub_100063028((v25 > 1), (v23 + 1), 1);
        v21 = v30;
      }

      v26 = powf(v24 * 0.6, 0.4);
      v21[2] = v23 + 1;
      *(v21 + v23 + 8) = v26;
      ++v22;
      ++v23;
      --v6;
    }

    while (v6);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  *(v27 + 24) = v21;
  v34 = sub_100012ECC;
  v35 = v27;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000C1C84;
  v33 = &unk_100135A90;
  v28 = _Block_copy(&v30);
  v29 = v20;

  [v16 animateWithDuration:0 delay:v28 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];
  _Block_release(v28);
}

uint64_t sub_100010928(uint64_t a1)
{
  v1[5] = a1;
  sub_100002D44(&qword_100142878);
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_1000109FC, v3, v2);
}

uint64_t sub_1000109FC()
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

  return _swift_task_switch(sub_100010AC4, v2, v1);
}

uint64_t sub_100010AC4()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC16MusicRecognition15MusicRecognizer_origin;
  swift_beginAccess();
  sub_100012CAC(v1 + v3, v2);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100010B98;
  v5 = v0[6];

  return sub_100054B0C(1, v5);
}

uint64_t sub_100010B98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 48);
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  *(v5 + 144) = a3;

  sub_100007E14(v6, &qword_100142878);
  v7 = *(v4 + 112);
  v8 = *(v4 + 104);

  return _swift_task_switch(sub_100010CF8, v8, v7);
}

uint64_t sub_100010CF8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100010D5C, v1, v2);
}

uint64_t sub_100010D5C()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 40);

  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100010DE8(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, uint64_t))
{
  v8 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1000127E8(a2);
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

uint64_t sub_100010F3C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100010FD0, v2, v1);
}

uint64_t sub_100010FD0()
{
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100005114;

  return sub_100052DC4();
}

void sub_100011094(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000127E8(1u);
  }

  sub_1000E9654(a1);
}

uint64_t sub_1000110F8(void *a1)
{
  v2 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1000127E8(0xBu);
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
  sub_1000C1D74(0, 0, v4, &unk_1000F5918, v10);
}

uint64_t sub_100011258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_1000112F0, v6, v5);
}

uint64_t sub_1000112F0()
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
  v0[13] = &unk_100135C20;
  v0[14] = v3;
  [v2 presentMediaItem:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100011420()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_1000115B4;
  }

  else
  {
    v5 = sub_100011550;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100011550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000115B4()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

id sub_100011628()
{
  result = [objc_opt_self() blackColor];
  qword_10014FEC0 = result;
  return result;
}

void sub_100011664(double a1)
{
  if (v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle] == 1)
  {
    v3 = sub_10000E224();
    [v3 setConstant:a1];

    if (*&v1[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_activeLayoutMode] == 4)
    {
      v4 = [v1 systemApertureElementContext];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_100012730;
      v7[5] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1000C1C84;
      v7[3] = &unk_100135BD0;
      v6 = _Block_copy(v7);

      [v4 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v6];
      _Block_release(v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000117B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10001184C, v6, v5);
}

uint64_t sub_10001184C()
{
  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100011910;

  return sub_100052DC4();
}

uint64_t sub_100011910()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100011A30, v3, v2);
}

uint64_t sub_100011A30()
{
  v1 = *(v0 + 16);

  v2 = *(*(v1 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView) + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
  sub_10008DA90();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100011ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100011BB0, v7, v6);
}

uint64_t sub_100011BB0()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_100011C8C;

  return sub_100057934(v1, v3, 0, 0, 1);
}

uint64_t sub_100011C8C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[11];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_100011EF4;
  }

  else
  {
    v5 = sub_100011E14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100011E14()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_maximumLayoutMode] = 1;
    *&Strong[OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_preferredLayoutMode] = 1;
    v2 = Strong;
    [objc_msgSend(Strong "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100011EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100011F60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      [v2 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100011FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012008()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012048()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012080()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000120D0(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1000120E4(a1, a2, a3);
  }
}

void sub_1000120E4(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_100012134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_10000F578(a1, v4, v5, v6);
}

uint64_t sub_1000121E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100012258(void *a1, id a2)
{
  v3 = [a2 _backlightLuminance] == 1;
  v4 = [a1 traitCollection];
  v5 = [v4 _backlightLuminance];

  if (((v3 ^ (v5 != 1)) & 1) == 0)
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v10[4] = sub_1000123DC;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000C1C84;
    v10[3] = &unk_100135B80;
    v8 = _Block_copy(v10);
    v9 = a1;

    [v6 animateWithDuration:v8 animations:0.15];
    _Block_release(v8);
  }
}

uint64_t sub_1000123A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000123E4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10001242C()
{
  result = qword_100142860;
  if (!qword_100142860)
  {
    sub_1000123E4(255, &qword_100142850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142860);
  }

  return result;
}

void sub_10001249C()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_100011664(128.0);
  v5 = *(*(v0 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_matchingFlowView) + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
  sub_10008DA90();

  if (*(v1 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle) == 1)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;

    sub_1000C1D74(0, 0, v4, &unk_1000F5908, v9);
  }
}

uint64_t sub_10001263C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001267C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_100011ABC(a1, v4, v5, v6);
}

uint64_t sub_1000127E8(unsigned __int8 a1)
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
  sub_100012CAC(v9 + v10, v8);
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

uint64_t sub_100012B44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012B84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012EC8;

  return sub_100011258(a1, v4, v5, v6);
}

uint64_t sub_100012C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100012CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012D1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012D54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100012EC8;

  return sub_100010F3C();
}

uint64_t sub_100012E00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100012EC8;

  return sub_100010928(a1);
}

uint64_t sub_100012EE0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100012EF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100012F0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100012F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100012FD0()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_1001428F0 = result;
  *algn_1001428F8 = v1;
  byte_100142900 = v2 & 1;
  qword_100142908 = v3;
  return result;
}

uint64_t sub_100013018@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100002D44(&qword_100142918);
  v4 = __chkstk_darwin(v3 - 8);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v30 - v6;
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002D44(&qword_100142920);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v33 = sub_100002D44(&qword_100142928);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v14 = &v30 - v13;
  v15 = sub_100002D44(&qword_100142930);
  v16 = __chkstk_darwin(v15 - 8);
  v30 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v30 - v18;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v20 = sub_100002D44(&qword_100142938);
  sub_1000134D0(&v12[*(v20 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v21 = sub_100004610(&qword_100142940, &qword_100142920);
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v32);
  sub_100007E14(v12, &qword_100142920);
  v38 = *a1;
  v39 = v38;
  sub_100014804(&v39, v37);
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  String.append(_:)(a1[1]);
  v38._countAndFlagsBits = v10;
  v38._object = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v33;
  View.accessibilityLabel(_:)();

  (*(v31 + 8))(v14, v23);
  v24 = v34;
  sub_100013EE8(v34);
  v25 = v30;
  sub_100007FDC(v19, v30, &qword_100142930);
  v26 = v35;
  sub_100007FDC(v24, v35, &qword_100142918);
  v27 = v36;
  sub_100007FDC(v25, v36, &qword_100142930);
  v28 = sub_100002D44(&qword_100142948);
  sub_100007FDC(v26, v27 + *(v28 + 48), &qword_100142918);
  sub_100007E14(v24, &qword_100142918);
  sub_100007E14(v19, &qword_100142930);
  sub_100007E14(v26, &qword_100142918);
  return sub_100007E14(v25, &qword_100142930);
}

uint64_t sub_1000134D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D44(&qword_1001429F8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_100002D44(&qword_100142A00);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_1000136C0(&v16 - v12);
  sub_100013B58(v7);
  sub_100007FDC(v13, v11, &qword_100142A00);
  sub_100007FDC(v7, v5, &qword_1001429F8);
  sub_100007FDC(v11, a1, &qword_100142A00);
  v14 = sub_100002D44(&qword_100142A08);
  sub_100007FDC(v5, a1 + *(v14 + 48), &qword_1001429F8);
  sub_100007E14(v7, &qword_1001429F8);
  sub_100007E14(v13, &qword_100142A00);
  sub_100007E14(v5, &qword_1001429F8);
  return sub_100007E14(v11, &qword_100142A00);
}

uint64_t sub_1000136C0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v34);
  v3 = &v31 - v2;
  v4 = sub_100002D44(&qword_100142A28);
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v33 = sub_100002D44(&qword_100142A30);
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v31 - v7;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  *&v43[0] = v9;
  *(&v43[0] + 1) = v10;
  sub_10000B730();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v19 = static HierarchicalShapeStyle.secondary.getter();
  v42 = v15 & 1;
  v41 = 0;
  v20 = static Font.caption.getter();
  v21 = swift_getKeyPath();
  *&v36 = v11;
  *(&v36 + 1) = v13;
  LOBYTE(v37) = v42;
  *(&v37 + 1) = v17;
  *&v38 = KeyPath;
  *(&v38 + 1) = 1;
  LOBYTE(v39) = v41;
  DWORD1(v39) = v19;
  *(&v39 + 1) = v21;
  v40 = v20;
  static Font.Weight.semibold.getter();
  v22 = sub_100002D44(&qword_100142A38);
  v23 = sub_100014D58();
  View.fontWeight(_:)();
  v43[2] = v38;
  v43[3] = v39;
  v44 = v40;
  v43[0] = v36;
  v43[1] = v37;
  sub_100007E14(v43, &qword_100142A38);
  v24 = enum case for DynamicTypeSize.xxxLarge(_:);
  v25 = type metadata accessor for DynamicTypeSize();
  (*(*(v25 - 8) + 104))(v3, v24, v25);
  sub_100014B84(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *&v36 = v22;
    *(&v36 + 1) = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_100004610(&qword_1001429F0, &qword_100142950);
    v29 = v34;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v3, &qword_100142950);
    (*(v31 + 8))(v6, v4);
    *&v36 = v4;
    *(&v36 + 1) = v29;
    *&v37 = OpaqueTypeConformance2;
    *(&v37 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    v30 = v33;
    View.accessibilityIdentifier(_:)();
    return (*(v32 + 8))(v8, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013B58@<X0>(uint64_t a1@<X8>)
{
  v29 = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v29);
  v4 = &v28 - v3;
  v5 = sub_100002D44(&qword_100142A10);
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = *v1;
  v9 = v1[1];
  *&v38[0] = v8;
  *(&v38[0] + 1) = v9;
  sub_10000B730();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v18 = static Font.subheadline.getter();
  v19 = swift_getKeyPath();
  v37 = v14 & 1;
  v36 = 0;
  *&v31 = v10;
  *(&v31 + 1) = v12;
  LOBYTE(v32) = v14 & 1;
  *(&v32 + 1) = v16;
  *&v33 = KeyPath;
  *(&v33 + 1) = 1;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = v19;
  v35 = v18;
  v20 = enum case for DynamicTypeSize.xxxLarge(_:);
  v21 = type metadata accessor for DynamicTypeSize();
  (*(*(v21 - 8) + 104))(v4, v20, v21);
  sub_100014B84(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v23 = sub_100002D44(&qword_100142A18);
    v24 = sub_100014CA0();
    v28 = a1;
    v25 = v5;
    v26 = sub_100004610(&qword_1001429F0, &qword_100142950);
    v27 = v29;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v4, &qword_100142950);
    v38[2] = v33;
    v38[3] = v34;
    v39 = v35;
    v38[0] = v31;
    v38[1] = v32;
    sub_100007E14(v38, &qword_100142A18);
    *&v31 = v23;
    *(&v31 + 1) = v27;
    *&v32 = v24;
    *(&v32 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    View.accessibilityIdentifier(_:)();
    return (*(v30 + 8))(v7, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013EE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v3);
  v5 = &v48 - v4;
  v62 = type metadata accessor for DefaultButtonStyle();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142958);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v59 = sub_100002D44(&qword_100142960);
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v61 = &v48 - v11;
  v12 = sub_100002D44(&qword_100142968);
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v55 = &v48 - v13;
  v14 = sub_100002D44(&qword_100142970);
  v15 = __chkstk_darwin(v14);
  v57 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v20 = *(v1 + 40);
  if (v20)
  {
    v21 = *(v1 + 32);
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v49 = &v48 - v19;
      v50 = v12;
      v51 = v18;
      v52 = v17;
      v53 = v3;
      v54 = a1;
      v23 = swift_allocObject();
      v24 = *(v1 + 16);
      v23[1] = *v1;
      v23[2] = v24;
      v25 = *(v1 + 48);
      v23[3] = *(v1 + 32);
      v23[4] = v25;
      __chkstk_darwin(v23);
      *(&v48 - 2) = v21;
      *(&v48 - 1) = v20;
      sub_1000148F0(v1, &v63);
      sub_100002D44(&qword_100142978);
      sub_100014928();
      Button.init(action:label:)();
      v26 = static Color.blue.getter();
      KeyPath = swift_getKeyPath();
      v28 = &v10[*(v8 + 36)];
      *v28 = KeyPath;
      v28[1] = v26;
      DefaultButtonStyle.init()();
      v29 = sub_100014AA0();
      v30 = sub_100014B84(&qword_1001429E0, &type metadata accessor for DefaultButtonStyle);
      v32 = v61;
      v31 = v62;
      View.buttonStyle<A>(_:)();
      (*(v60 + 8))(v7, v31);
      sub_100007E14(v10, &qword_100142958);
      v33 = enum case for DynamicTypeSize.xxxLarge(_:);
      v34 = type metadata accessor for DynamicTypeSize();
      (*(*(v34 - 8) + 104))(v5, v33, v34);
      sub_100014B84(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v63 = v8;
        v64 = v31;
        v65 = v29;
        v66 = v30;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v36 = sub_100004610(&qword_1001429F0, &qword_100142950);
        v37 = v55;
        v38 = v59;
        v39 = v32;
        v40 = v53;
        View.dynamicTypeSize<A>(_:)();
        sub_100007E14(v5, &qword_100142950);
        (*(v56 + 8))(v39, v38);
        v63 = v38;
        v64 = v40;
        v65 = OpaqueTypeConformance2;
        v66 = v36;
        swift_getOpaqueTypeConformance2();
        v5 = v57;
        v41 = v50;
        View.accessibilityIdentifier(_:)();
        (*(v58 + 8))(v37, v41);
        if (qword_100141A80 == -1)
        {
LABEL_7:
          v42 = v49;
          v43 = v52;
          ModifiedContent<>.accessibilityHint(_:)();
          sub_100007E14(v5, &qword_100142970);
          v44 = v42;
          v45 = v54;
          sub_100014BCC(v44, v54);
          return (*(v51 + 56))(v45, 0, 1, v43);
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_7;
    }
  }

  v47 = *(v18 + 56);

  return v47(a1, 1, 1);
}

uint64_t sub_10001467C@<X0>(uint64_t a1@<X8>)
{
  sub_10000B730();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10000BFBC(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = result;
  *(a1 + 64) = 0x3FE3333333333333;
  return result;
}

uint64_t sub_100014798@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v5 = sub_100002D44(&qword_100142910);
  return sub_100013018(v7, a1 + *(v5 + 44));
}

uint64_t sub_100014860()
{

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000148B8()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100014928()
{
  result = qword_100142980;
  if (!qword_100142980)
  {
    sub_100004370(&qword_100142978);
    sub_1000149E0();
    sub_100004610(&qword_1001429A8, &qword_1001429B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142980);
  }

  return result;
}

unint64_t sub_1000149E0()
{
  result = qword_100142988;
  if (!qword_100142988)
  {
    sub_100004370(&qword_100142990);
    sub_100004610(&qword_100142998, &qword_1001429A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142988);
  }

  return result;
}

unint64_t sub_100014AA0()
{
  result = qword_1001429B8;
  if (!qword_1001429B8)
  {
    sub_100004370(&qword_100142958);
    sub_100004610(&qword_1001429C0, &qword_1001429C8);
    sub_100004610(&qword_1001429D0, &qword_1001429D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001429B8);
  }

  return result;
}

uint64_t sub_100014B84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014C44@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_100014CA0()
{
  result = qword_100142A20;
  if (!qword_100142A20)
  {
    sub_100004370(&qword_100142A18);
    sub_1000149E0();
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A20);
  }

  return result;
}

unint64_t sub_100014D58()
{
  result = qword_100142A40;
  if (!qword_100142A40)
  {
    sub_100004370(&qword_100142A38);
    sub_100014E10();
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A40);
  }

  return result;
}

unint64_t sub_100014E10()
{
  result = qword_100142A48;
  if (!qword_100142A48)
  {
    sub_100004370(&qword_100142A50);
    sub_1000149E0();
    sub_100004610(&qword_100141F80, &qword_100141F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A48);
  }

  return result;
}

uint64_t sub_100014F38()
{
  Image.init(systemName:)();
  swift_getKeyPath();

  static Font.Weight.bold.getter();
  sub_100002D44(&qword_100142A68);
  sub_10001502C();
  View.fontWeight(_:)();
}

unint64_t sub_10001502C()
{
  result = qword_100142A70;
  if (!qword_100142A70)
  {
    sub_100004370(&qword_100142A68);
    sub_1000150E4();
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A70);
  }

  return result;
}

unint64_t sub_1000150E4()
{
  result = qword_100142A78;
  if (!qword_100142A78)
  {
    sub_100004370(&qword_100142A80);
    sub_100004610(&qword_100142A88, &unk_100142A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142A78);
  }

  return result;
}

uint64_t sub_10001519C()
{
  sub_100004370(&qword_100142A68);
  sub_10001502C();
  return swift_getOpaqueTypeConformance2();
}

void sub_100015200()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent:0.9];

  qword_100142AA0 = v1;
}

id sub_1000153AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100015454(void *a1)
{
  v2 = v1;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Scene will connect %@", v8, 0xCu);
    sub_1000157BC(v9);
  }

  type metadata accessor for ActivityScene();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    type metadata accessor for MusicRecognitionPlatterViewController();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = v5;
    v15 = [v13 init];
    v16 = OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_musicRecognitionPlatterViewController;
    v17 = *(v2 + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_musicRecognitionPlatterViewController);
    *(v2 + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_musicRecognitionPlatterViewController) = v15;

    v30 = v14;
    if ([v12 SBUI_isHostedBySystemAperture])
    {
      v18 = *(v2 + v16);
      [v12 setSystemApertureElementViewControllerProvider:v18];
    }

    else
    {
      v21 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      dispatch thunk of ActivityScene.resolvedMetrics.setter();
      if (qword_100141A88 != -1)
      {
        swift_once();
      }

      v22 = qword_100142AA0;
      dispatch thunk of ActivityScene.backgroundTintColor.setter();
      v23 = *(v2 + v16);
      if (v23)
      {
        *(v23 + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_presentationStyle) = 0;
      }

      v24 = [objc_allocWithZone(UIWindow) initWithWindowScene:v12];

      v25 = OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window;
      v26 = *(v2 + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window);
      *(v2 + OBJC_IVAR____TtC16MusicRecognition29MusicRecognitionSceneDelegate_window) = v24;

      v27 = *(v2 + v25);
      if (v27)
      {
        [v27 setRootViewController:*(v2 + v16)];
        v28 = *(v2 + v25);
        if (v28)
        {
          v29 = v28;
          [v29 makeKeyAndVisible];
        }
      }
    }
  }

  else
  {
    v30 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v30, v19, "Unable to connect to ActivityScene", v20, 2u);
    }
  }
}

uint64_t sub_1000157BC(uint64_t a1)
{
  v2 = sub_100002D44(&unk_100142880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&unk_100144630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100015918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&unk_100144630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AnyAlbum()
{
  result = qword_100142BF8;
  if (!qword_100142BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015A2C()
{
  sub_1000085D0();
  if (v0 <= 0x3F)
  {
    sub_100015AB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100015AB0()
{
  result = qword_100142C08;
  if (!qword_100142C08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100142C08);
  }

  return result;
}

uint64_t sub_100015B14(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 8))(v3, v4);
}

uint64_t sub_100015B74(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_100015BCC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 24))(v3, v4);
}

uint64_t sub_100015C24(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 32))(v3, v4);
}

uint64_t sub_100015C7C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 40))(v3, v4);
}

uint64_t sub_100015CD4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 48))(v3, v4);
}

uint64_t sub_100015D34(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 56))(v3, v4);
}

uint64_t sub_100015D94(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 64))(v3, v4);
}

unint64_t sub_100015DF0()
{
  result = qword_100142C38;
  if (!qword_100142C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C38);
  }

  return result;
}

uint64_t sub_100015E44()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10000D0C8(v0, qword_10014FEC8);
  sub_10000BEC4(v0, qword_10014FEC8);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

uint64_t sub_100015EA8@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = sub_100002D44(&qword_100142CC0);
  __chkstk_darwin(v1 - 8);
  v20[0] = v20 - v2;
  v3 = sub_100002D44(&qword_100142CC8);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v20 - v12;
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  EntityProperty.wrappedValue.getter();
  v16 = v21;
  LocalizedStringResource.init(stringLiteral:)();
  if (v16)
  {
    LocalizedStringResource.init(stringLiteral:)();
    (*(v7 + 8))(v13, v6);
  }

  else
  {
    (*(v7 + 32))(v15, v13, v6);
  }

  EntityProperty.wrappedValue.getter();
  v17 = v21;
  LocalizedStringResource.init(stringLiteral:)();
  if (v17)
  {
    LocalizedStringResource.init(stringLiteral:)();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 32))(v5, v10, v6);
  }

  (*(v7 + 56))(v5, 0, 1, v6);
  v18 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v18 - 8) + 56))(v20[0], 1, 1, v18);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

__n128 sub_1000161BC@<Q0>(uint64_t a1@<X8>)
{
  sub_100016A00(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100016208()
{
  result = qword_100142C40;
  if (!qword_100142C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C40);
  }

  return result;
}

unint64_t sub_100016260()
{
  result = qword_100142C48;
  if (!qword_100142C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C48);
  }

  return result;
}

unint64_t sub_1000162B8()
{
  result = qword_100142C50;
  if (!qword_100142C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C50);
  }

  return result;
}

uint64_t sub_10001635C(uint64_t a1)
{
  v2 = sub_1000168E4();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

unint64_t sub_1000163AC()
{
  result = qword_100142C68;
  if (!qword_100142C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C68);
  }

  return result;
}

unint64_t sub_100016404()
{
  result = qword_100142C70;
  if (!qword_100142C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C70);
  }

  return result;
}

unint64_t sub_10001645C()
{
  result = qword_100142C78;
  if (!qword_100142C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C78);
  }

  return result;
}

unint64_t sub_1000164B4()
{
  result = qword_100142C80;
  if (!qword_100142C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C80);
  }

  return result;
}

uint64_t sub_100016514@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = EntityProperty.wrappedValue.getter();
  v7 = v11;
  if (v11)
  {
    v8 = v10;
  }

  else
  {
    UUID.init()();
    v8 = UUID.uuidString.getter();
    v7 = v9;
    result = (*(v3 + 8))(v5, v2);
  }

  *a1 = v8;
  a1[1] = v7;
  return result;
}

uint64_t sub_100016618@<X0>(uint64_t a1@<X8>)
{
  if (qword_100141A90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10000BEC4(v2, qword_10014FEC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100016704(uint64_t a1)
{
  v2 = sub_100015DF0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100016754()
{
  result = qword_100142C98;
  if (!qword_100142C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142C98);
  }

  return result;
}

uint64_t sub_1000167AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000789C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100016870(uint64_t a1)
{
  v2 = sub_1000164B4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000168BC(uint64_t a1)
{
  result = sub_1000168E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000168E4()
{
  result = qword_100142CA0;
  if (!qword_100142CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142CA0);
  }

  return result;
}

__n128 sub_100016938(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100016954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10001699C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100016A00@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v2 - 8);
  sub_100002D44(&qword_100142CA8);
  LocalizedStringResource.init(stringLiteral:)();
  v12 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v11 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v10 = EntityProperty<>.init(title:)();
  sub_100002D44(&qword_100142CB0);
  LocalizedStringResource.init(stringLiteral:)();
  v9 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v3 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v4 = EntityProperty<>.init(title:)();
  sub_100002D44(&qword_100142CB8);
  LocalizedStringResource.init(stringLiteral:)();
  v5 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v6 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v7 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  result = EntityProperty<>.init(title:)();
  *a1 = v12;
  a1[1] = v11;
  a1[2] = v10;
  a1[3] = v9;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  a1[7] = v6;
  a1[8] = v7;
  a1[9] = result;
  return result;
}

__n128 sub_100016C9C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v3 - 8);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v61 - v6;
  __chkstk_darwin(v7);
  v9 = &v61 - v8;
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v15 = &v61 - v14;
  sub_100016A00(v67);
  v16 = [a1 appleMusicID];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v65 = v18;
  v66 = v20;
  EntityProperty.wrappedValue.setter();
  v21 = [a1 artist];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v65 = v23;
  v66 = v25;
  EntityProperty.wrappedValue.setter();
  v26 = [a1 title];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v65 = v28;
  v66 = v30;
  EntityProperty.wrappedValue.setter();
  v31 = [a1 artworkURL];
  if (v31)
  {
    v32 = v31;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = type metadata accessor for URL();
  v35 = *(*(v34 - 8) + 56);
  v36 = 1;
  v35(v15, v33, 1, v34);
  sub_100008790(v15, v12);
  EntityProperty.wrappedValue.setter();
  sub_10001719C(v15);
  v37 = [a1 webURL];
  if (v37)
  {
    v38 = v37;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  v39 = 1;
  v35(v9, v36, 1, v34);
  sub_100008790(v9, v12);
  EntityProperty.wrappedValue.setter();
  sub_10001719C(v9);
  v40 = [a1 appleMusicURL];
  v41 = v62;
  if (v40)
  {
    v42 = v40;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
  }

  v43 = 1;
  v35(v41, v39, 1, v34);
  sub_100008790(v41, v12);
  EntityProperty.wrappedValue.setter();
  sub_10001719C(v41);
  LOBYTE(v65) = [a1 explicitContent];
  EntityProperty.wrappedValue.setter();
  v44 = [a1 videoURL];
  v45 = v63;
  if (v44)
  {
    v46 = v44;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  v35(v45, v43, 1, v34);
  sub_100008790(v45, v12);
  EntityProperty.wrappedValue.setter();
  sub_10001719C(v45);
  v47 = [a1 lyricsSnippet];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v65 = v49;
  v66 = v51;
  EntityProperty.wrappedValue.setter();
  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (v52 && (v53 = [v52 syncedLyricsSnippet]) != 0)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v65 = v55;
  v66 = v57;
  EntityProperty.wrappedValue.setter();
  v58 = v67[3];
  v59 = v64;
  *(v64 + 32) = v67[2];
  *(v59 + 48) = v58;
  *(v59 + 64) = v67[4];
  result = v67[1];
  *v59 = v67[0];
  *(v59 + 16) = result;
  return result;
}

uint64_t sub_10001719C(uint64_t a1)
{
  v2 = sub_100002D44(&unk_100144630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000172A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MusicKitArtist()
{
  result = qword_100142D28;
  if (!qword_100142D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001735C()
{
  result = type metadata accessor for Artist();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000173C8()
{
  v0 = sub_100002D44(&qword_100142DB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_100002D44(&qword_100142DB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  Artist.genres.getter();
  v6 = sub_100002D44(&qword_100142DC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    v8 = &qword_100142DB0;
    v9 = v2;
LABEL_5:
    sub_100007E14(v9, v8);
    return 0;
  }

  sub_100060398(v5);
  (*(v7 + 8))(v2, v6);
  v10 = type metadata accessor for Genre();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    v8 = &qword_100142DB8;
    v9 = v5;
    goto LABEL_5;
  }

  v13 = Genre.name.getter();
  (*(v11 + 8))(v5, v10);
  return v13;
}

uint64_t sub_1000175EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v3 = type metadata accessor for Artwork.ImageFormat();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artwork.CropStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100142D60);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  sub_100002D44(&qword_100142D68);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();
  v19 = v8;

  v14 = type metadata accessor for Artwork();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007E14(v13, &qword_100142D60);
    v16 = type metadata accessor for URL();
    return (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
  }

  else
  {
    static Artwork.CropStyle.boundedBox.getter();
    (*(v4 + 104))(v6, enum case for Artwork.ImageFormat.heic(_:), v3);
    Artwork.url(width:height:cropStyle:format:)();
    (*(v4 + 8))(v6, v3);
    (*(v19 + 8))(v10, v7);
    return (*(v15 + 8))(v13, v14);
  }
}

uint64_t sub_100017998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v24 = a2;
  v2 = type metadata accessor for ArtworkUnavailableView();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002D44(&qword_100142D90);
  __chkstk_darwin(v23);
  v6 = &v19 - v5;
  v22 = sub_100002D44(&qword_100142DA8);
  __chkstk_darwin(v22);
  v8 = (&v19 - v7);
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AsyncImagePhase();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v21, v13);
  if ((*(v14 + 88))(v16, v13) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v14 + 96))(v16, v13);
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v17 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    *v8 = v17;
    swift_storeEnumTagMultiPayload();
    sub_100018034();
    swift_retain_n();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
    sub_100018120(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView);
    View.accessibilityIdentifier(_:)();
    (*(v20 + 8))(v4, v2);
    sub_1000181CC(v6, v8);
    swift_storeEnumTagMultiPayload();
    sub_100018034();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v6, &qword_100142D90);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_100017E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_100002D44(&qword_100142D70);
  __chkstk_darwin(v7);
  sub_1000175EC(a1, a2, v6);
  sub_100002D44(&qword_100142D78);
  sub_100017FA8();
  AsyncImage.init(url:scale:transaction:content:)();
  sub_100018168();
  return AnyView.init<A>(_:)();
}

unint64_t sub_100017FA8()
{
  result = qword_100142D80;
  if (!qword_100142D80)
  {
    sub_100004370(&qword_100142D78);
    sub_100018034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142D80);
  }

  return result;
}

unint64_t sub_100018034()
{
  result = qword_100142D88;
  if (!qword_100142D88)
  {
    sub_100004370(&qword_100142D90);
    sub_100018120(&qword_100142D98, &type metadata accessor for ArtworkUnavailableView);
    sub_100018120(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142D88);
  }

  return result;
}

uint64_t sub_100018120(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100018168()
{
  result = qword_100142DA0;
  if (!qword_100142DA0)
  {
    sub_100004370(&qword_100142D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142DA0);
  }

  return result;
}

uint64_t sub_1000181CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10001823C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.36];
  qword_100142DC8 = result;
  return result;
}

id sub_100018294()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.615686275 green:0.615686275 blue:0.615686275 alpha:1.0];
  qword_100142DD0 = result;
  return result;
}

id sub_1000182DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayerView;
  *&v4[v10] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayer;
  *&v4[v11] = [objc_allocWithZone(SHListeningLayer) initWithIntroAnimation:0 useCustomCompatibleBackground:1];
  v12 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton;
  *&v4[v13] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_10001842C();

  return v14;
}

void sub_10001842C()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayerView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 layer];
  v54 = *&v0[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayer];
  [v2 addSublayer:?];

  [v0 addSubview:v1];
  v3 = *&v0[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v3];
  v4 = [objc_opt_self() systemFontOfSize:62.0 weight:UIFontWeightSemibold];
  [v3 setFont:v4];

  v5 = [objc_opt_self() whiteColor];
  [v3 setTextColor:v5];

  v6 = [objc_opt_self() mainBundle];
  v57._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x80000001000FFF60;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v57);

  v9 = String._bridgeToObjectiveC()();

  [v3 setText:v9];

  v10 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v10];

  v11 = *&v0[OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v11];
  sub_100002D44(&qword_100142810);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000F57F0;
  if (qword_100141AA0 != -1)
  {
    swift_once();
  }

  v13 = qword_100142DD0;
  *(v12 + 32) = qword_100142DD0;
  v14 = qword_100141A98;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_100142DC8;
  *(v12 + 40) = qword_100142DC8;
  sub_1000123E4(0, &qword_100142E20);
  v17 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() configurationWithPaletteColors:isa];

  v53 = v19;
  v20 = String._bridgeToObjectiveC()();
  v55 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v53];

  [v11 setImage:v55 forState:0];
  [v11 setContentVerticalAlignment:3];
  [v11 setContentHorizontalAlignment:3];
  v21 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v21];

  v52 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000F60E0;
  v23 = [v1 leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [v1 centerYAnchor];
  v27 = [v0 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v1 heightAnchor];
  v30 = [v0 heightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 multiplier:0.65];

  *(v22 + 48) = v31;
  v32 = [v1 widthAnchor];
  v33 = [v0 heightAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 multiplier:0.65];

  *(v22 + 56) = v34;
  v35 = [v3 centerYAnchor];
  v36 = [v0 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v22 + 64) = v37;
  v38 = [v3 trailingAnchor];
  v39 = [v0 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-36.0];

  *(v22 + 72) = v40;
  v41 = [v11 heightAnchor];
  v42 = [v41 constraintEqualToConstant:54.0];

  *(v22 + 80) = v42;
  v43 = [v11 widthAnchor];
  v44 = [v43 constraintEqualToConstant:54.0];

  *(v22 + 88) = v44;
  v45 = [v11 topAnchor];
  v46 = [v0 topAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-26.0];

  *(v22 + 96) = v47;
  v48 = [v11 trailingAnchor];
  v49 = [v0 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v22 + 104) = v50;
  sub_1000123E4(0, &qword_100143260);
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:v51];

  [v54 startActiveListeningAnimation];
}

id sub_100018D08(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayerView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLayer;
  *&v1[v5] = [objc_allocWithZone(SHListeningLayer) initWithIntroAnimation:0 useCustomCompatibleBackground:1];
  v6 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_listeningLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC16MusicRecognition20AmbientListeningView_cancelButton;
  *&v1[v7] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_10001842C();
  }

  return v9;
}

void sub_100019130(void *a1)
{
  v2 = v1;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Ambient scene will connect %@", v8, 0xCu);
    sub_1000157BC(v9);
  }

  type metadata accessor for ActivityScene();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    type metadata accessor for MusicRecognitionAmbientViewController();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    oslog = v5;
    v14 = [v13 init];
    v15 = OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_musicRecognitionAmbientViewController;
    v16 = *(v2 + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_musicRecognitionAmbientViewController);
    *(v2 + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_musicRecognitionAmbientViewController) = v14;

    v17 = [objc_allocWithZone(UIWindow) initWithWindowScene:v12];
    v18 = OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window;
    v19 = *(v2 + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC16MusicRecognition36MusicRecognitionAmbientSceneDelegate_window) = v17;

    v20 = *(v2 + v18);
    if (v20)
    {
      [v20 setRootViewController:*(v2 + v15)];
      v21 = *(v2 + v18);
      if (v21)
      {
        v22 = v21;
        [v22 makeKeyAndVisible];
      }
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Unable to connect to ActivityScene", v24, 2u);
    }
  }
}

uint64_t sub_100019454@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShortcutTileColor.blue(_:);
  v3 = type metadata accessor for ShortcutTileColor();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000194D8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v0 - 8);
  v46 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for AppShortcutPhraseToken();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142E90);
  v7 = __chkstk_darwin(v6);
  v42 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v37 = v33 - v10;
  __chkstk_darwin(v9);
  v11 = type metadata accessor for AppShortcut();
  v44 = *(v11 - 8);
  v45 = v11;
  __chkstk_darwin(v11);
  v43 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100022D7C();
  v49 = v13;
  sub_100002D44(&qword_100142E98);
  v14 = *(sub_100002D44(&qword_100142EA0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v39 = *(v14 + 72);
  v40 = 2 * v39;
  v16 = swift_allocObject();
  v41 = v16;
  *(v16 + 16) = xmmword_1000F6160;
  v38 = v16 + v15;
  v17 = sub_100019A88();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x206E69676542;
  v18._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v18);
  v36 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v19 = *(v3 + 104);
  v33[0] = v2;
  v19(v5);
  v34 = v19;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v35 = *(v3 + 8);
  v47 = v3 + 8;
  v35(v5, v2);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v20);
  v33[1] = v17;
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x207472617453;
  v21._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v36;
  v23 = v33[0];
  (v19)(v5, v36, v33[0]);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v24 = v35;
  v35(v5, v23);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v25);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v26);
  v34(v5, v22, v23);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v24(v5, v23);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v27);
  AppShortcutPhrase.init(stringInterpolation:)();
  LocalizedStringResource.init(stringLiteral:)();
  v28 = v43;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v29 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v44 + 8))(v28, v45);
  sub_100002D44(&qword_100142EB0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000F57C0;
  *(v30 + 32) = v29;
  v31 = static AppShortcutsBuilder.buildBlock(_:)();

  return v31;
}

unint64_t sub_100019A88()
{
  result = qword_100142EA8;
  if (!qword_100142EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142EA8);
  }

  return result;
}

uint64_t sub_100019AE0()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NavigationPath();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100019C60(char a1)
{
  v2 = 0xD000000000000015;
  v3 = [objc_opt_self() mainBundle];
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = "SHAZAM_SORT_TYPE_SUBTITLE";
    }

    else
    {
      v4 = "v20@?0B8@NSError12";
    }

    if (a1 == 1)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD000000000000019;
    }
  }

  else
  {
    v4 = "SHAZAM_SORT_TYPE_TITLE";
  }

  v9._object = 0xE000000000000000;
  v5._object = (v4 | 0x8000000000000000);
  v5._countAndFlagsBits = v2;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v3, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

Swift::Int sub_100019D50()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019DC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100019E54()
{
  v0 = sub_10001E088();

  return v0;
}

uint64_t sub_100019E8C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_100142EB8);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001A090();
  }
}

uint64_t sub_10001A168()
{
  swift_getKeyPath();
  sub_100019FF0();

  return *(v0 + qword_100142EC8);
}

uint64_t sub_10001A1E4(char a1)
{
  v2 = qword_100142EC8;
  v3 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v2) = v3;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001A090();
  }

  return result;
}

uint64_t sub_10001A330@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100019FF0();

  v3 = qword_100142ED0;
  swift_beginAccess();
  v4 = type metadata accessor for NavigationPath();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10001A404(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for NavigationPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_100142ED0;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v14[0] = *(v4 + 80);
  sub_1000208CC(&qword_100142F68, &type metadata accessor for NavigationPath);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v6 + 8);
  v11 = v10(v8, v5);
  if (v4)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    v14[-1] = v14[0];
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v14[-1] = v2;
    *(&v14[-1] + 1) = a1;
    sub_10001A090();
  }

  return v10(a1, v5);
}

uint64_t sub_10001A694(uint64_t a1, uint64_t a2)
{
  v4 = qword_100142ED0;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10001A730()
{
  swift_getKeyPath();
  swift_getWitnessTable();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_10001A7F8()
{
  sub_10001E16C(&unk_1000F6408, &qword_100142ED8);
}

uint64_t sub_10001A830(uint64_t a1)
{
  v3 = *(v1 + qword_100142ED8);
  v4 = type metadata accessor for TrackPageViewModel();
  if (v3 == a1)
  {
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001A090();
  }
}

uint64_t sub_10001A97C()
{
  v1 = (*(*(*v0 + 88) + 8))(*(*v0 + 80));
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

id sub_10001AAA4()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result primaryAccountAltDSID];

    if (!v2)
    {
      return 0;
    }

    v3 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionFlowContext) initWithAltDSID:v2];

    [v3 setDeviceToDeviceEncryptionUpgradeType:0];
    [v3 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
    v4 = [objc_opt_self() mainBundle];
    v8._object = 0xE000000000000000;
    v5._object = 0x8000000100100170;
    v5._countAndFlagsBits = 0xD00000000000001ELL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v8);

    v7 = String._bridgeToObjectiveC()();

    [v3 setFeatureName:v7];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10001AC10()
{
  v0 = sub_10001E16C(&unk_1000F6398, qword_100142EE0);
  v1 = v0;
  return v0;
}

void sub_10001AC4C(void *a1)
{
  v3 = qword_100142EE0[0];
  sub_100002D44(&qword_100142F80);
  sub_10001E490();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001A090();
  }
}

uint64_t sub_10001AE2C(__int16 a1)
{
  v2 = a1;
  LODWORD(v53) = a1 & 0x100;
  v3 = *v1;
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = sub_100002D44(&qword_100142FC0);
  v51 = *(v14 - 8);
  v52 = v14;
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = (*(*(v3 + 88) + 8))(*(v3 + 80), v18);
  if (v2)
  {
    v54 = v21;
    swift_getKeyPath();
    static String.StandardComparator.localizedStandard.getter();
    if (v2 == 1)
    {
      (*(v5 + 16))(v10, v7, v4);
      SortDescriptor.init(_:comparator:order:)();
      (*(v5 + 8))(v7, v4);
      sub_100002D44(&qword_100142FC8);
      sub_100004610(&qword_100142FD0, &qword_100142FC8);
      sub_100004610(&qword_100142FD8, &qword_100142FC0);
      v22 = v52;
      v23 = Sequence.sorted<A>(using:)();
      (*(v51 + 8))(v16, v22);

      v26 = sub_1000201FC(v23, &selRef_title);
    }

    else
    {
      (*(v5 + 16))(v10, v13, v4);
      SortDescriptor.init(_:comparator:order:)();
      (*(v5 + 8))(v13, v4);
      sub_100002D44(&qword_100142FC8);
      sub_100004610(&qword_100142FD0, &qword_100142FC8);
      sub_100004610(&qword_100142FD8, &qword_100142FC0);
      v32 = v52;
      v33 = Sequence.sorted<A>(using:)();
      (*(v51 + 8))(v20, v32);

      v26 = sub_1000201FC(v33, &selRef_subtitle);
    }

    v29 = v24;
    v31 = v25;
    v50 = 0;
  }

  else
  {

    v54 = sub_10001DDB8(v27);
    sub_10001D7D0(&v54, v53);

    v26 = sub_10001D460(v54);
    v29 = v28;
    v31 = v30;
    v50 = 0;
  }

  v34 = *(v31 + 16);
  swift_retain_n();
  v53 = v26;

  v35 = 0;
  v36 = v29 + 40;
  v37 = _swiftEmptyArrayStorage;
  v51 = v34;
  v52 = v29 + 40;
LABEL_8:
  if (v35 <= v34)
  {
    v38 = v34;
  }

  else
  {
    v38 = v35;
  }

  v39 = (v36 + 16 * v35);
  while (1)
  {
    if (v38 == v35)
    {

      return v37;
    }

    if (v35 >= *(v29 + 16))
    {
      break;
    }

    if (v35 >= *(v31 + 16))
    {
      goto LABEL_27;
    }

    v40 = *(v39 - 1);
    v41 = *v39;
    v42 = *(v31 + 32 + 8 * v35);
    if (v42 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 += 2;
    ++v35;
    if (v43)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_100057F6C(0, *(v37 + 2) + 1, 1, v37);
      }

      v46 = *(v37 + 2);
      v45 = *(v37 + 3);
      v36 = v52;
      if (v46 >= v45 >> 1)
      {
        v48 = sub_100057F6C((v45 > 1), v46 + 1, 1, v37);
        v36 = v52;
        v37 = v48;
      }

      *(v37 + 2) = v46 + 1;
      v47 = &v37[24 * v46];
      *(v47 + 4) = v40;
      *(v47 + 5) = v41;
      *(v47 + 6) = v42;
      v34 = v51;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10001B4CC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v49 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v38 - v10;
  __chkstk_darwin(v11);
  v43 = &v38 - v12;
  v13 = sub_100002D44(&qword_100142FE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v38 - v22;
  v24 = [*a1 creationDate];
  v39 = v23;
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v5;
    v27 = v4;
    v28 = *(v17 + 32);
    v28(v15, v19, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    v28(v23, v15, v16);
    v4 = v27;
    v5 = v26;
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    static Date.now.getter();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_100007E14(v15, &qword_100142FE0);
    }
  }

  v29 = v41;
  static FormatStyle<>.dateTime.getter();
  v30 = v42;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v31 = v40;
  Date.FormatStyle.month(_:)();
  (*(v5 + 8))(v30, v4);
  v32 = v46;
  v33 = *(v45 + 8);
  v33(v29, v46);
  v34 = v47;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v35 = v43;
  Date.FormatStyle.year(_:)();
  (*(v48 + 8))(v34, v49);
  v33(v31, v32);
  sub_1000208CC(&qword_100142FE8, &type metadata accessor for Date.FormatStyle);
  v36 = v39;
  Date.formatted<A>(_:)();
  v33(v35, v32);
  return (*(v17 + 8))(v36, v16);
}

void sub_10001B9E8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

uint64_t sub_10001BA4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v23 - v6;
  v8 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_10001E16C(&unk_1000F6398, qword_100142EE0);
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    (*(v5 + 16))(v7, v2 + *(*v2 + 184), v4);
    type metadata accessor for MainActor();
    v14 = v12;
    v15 = static MainActor.shared.getter();
    v16 = (*(v5 + 80) + 56) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v15;
    *(v17 + 3) = &protocol witness table for MainActor;
    *(v17 + 4) = v4;
    *(v17 + 5) = *(v3 + 88);
    *(v17 + 6) = v14;
    (*(v5 + 32))(&v17[v16], v7, v4);
    sub_1000C1D74(0, 0, v10, &unk_1000F6348, v17);

    return sub_10001A1E4(0);
  }

  else
  {
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000BEC4(v19, qword_10014FEA0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to perform encryption repair, missing context", v22, 2u);
    }

    return sub_10001A1E4(0);
  }
}

uint64_t sub_10001BDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  type metadata accessor for MainActor();
  v7[22] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[23] = v9;
  v7[24] = v8;

  return _swift_task_switch(sub_10001BE54, v9, v8);
}

uint64_t sub_10001BE54()
{
  v1 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionHelper) initWithContext:v0[18]];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_10001BF94;
  v2 = swift_continuation_init();
  v0[17] = sub_100002D44(&qword_100142F70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001C584;
  v0[13] = &unk_100136098;
  v0[14] = v2;
  [v1 performDeviceToDeviceEncryptionStateRepairWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001BF94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_10001C50C;
  }

  else
  {
    v5 = sub_10001C0C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001C0C4()
{
  v17 = v0;
  v1 = *(v0 + 224);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = 0x6564656563637573;
    }

    else
    {
      v7 = 0x64656C696166;
    }

    if (v1)
    {
      v8 = 0xE900000000000064;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    v9 = sub_1000BA1EC(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encryption repair %s", v5, 0xCu);
    sub_100007E74(v6);
  }

  if (v1)
  {
    v15 = (*(*(v0 + 168) + 48) + **(*(v0 + 168) + 48));
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_10001C37C;
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);

    return v15(v12, v11);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10001C37C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_10001C49C, v3, v2);
}

uint64_t sub_10001C49C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001C50C()
{
  v1 = *(v0 + 200);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001C584(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000DC80((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002D44(&qword_100142F78);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10001C650()
{
  v0 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationPath.init()();
  return sub_10001A404(v2);
}

uint64_t sub_10001C6C4(char a1)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v6 = __chkstk_darwin(v3);
  if (a1)
  {
    (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + qword_10014FEE0, v6);
    v7 = String.init(localized:)();
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  return sub_100019E8C(v7, v8);
}

uint64_t sub_10001C7A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v7 - 8);
  v59 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v51[-v10];
  __chkstk_darwin(v12);
  v58 = &v51[-v13];
  __chkstk_darwin(v14);
  v16 = &v51[-v15];
  __chkstk_darwin(v17);
  v56 = a1;
  v57 = &v51[-v18];
  v64[0] = a1;
  v62 = *(v6 + 80);
  v19 = v62;
  v63 = *(v6 + 88);
  v20 = v63;
  swift_getKeyPath();
  sub_100019FF0();

  v65[0] = v3;
  v60 = v19;
  v61 = v20;
  swift_getKeyPath();
  swift_getWitnessTable();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000123E4(0, &qword_100142FB0);
  sub_10001E540(&qword_100142FB8, &qword_100142FB0);
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  sub_10001A730();
  swift_getKeyPath();
  v65[0] = a2;
  sub_1000208CC(&qword_100142060, type metadata accessor for ViewConfiguration);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(a2 + 40);
  v53 = *(a2 + 32);
  swift_getKeyPath();
  v65[0] = a2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(a2 + 48);
  swift_getKeyPath();
  v65[0] = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = 0x2000Bu >> (8 * *(a2 + 16));
  swift_getKeyPath();
  v65[0] = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = *(a2 + 49);
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v23 = qword_10014FF90;
  v24 = type metadata accessor for MusicSubscriptionStatusController();
  v65[3] = v24;
  v65[4] = &off_100139B30;
  v65[0] = v23;
  type metadata accessor for TrackPageViewModel();
  v25 = swift_allocObject();
  v26 = sub_100007D60(v65, v24);
  v54 = v51;
  v27 = __chkstk_darwin(v26);
  v29 = &v51[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v30 + 16))(v29, v27);
  v31 = *v29;
  v64[3] = v24;
  v64[4] = &off_100139B30;
  v64[0] = v31;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 96) = 0u;
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0;
  *(v25 + 136) = 2;
  *(v25 + 144) = 0x3FE6666666666666;
  *(v25 + 200) = 0;
  *(v25 + 152) = 0u;
  *(v25 + 168) = 0u;
  *(v25 + 177) = 0u;
  *(v25 + 248) = 0;
  *(v25 + 232) = 0u;
  *(v25 + 216) = 0u;
  *(v25 + 392) = 0u;
  *(v25 + 408) = 0u;
  *(v25 + 360) = 0u;
  *(v25 + 376) = 0u;
  *(v25 + 328) = 0u;
  *(v25 + 344) = 0u;
  *(v25 + 296) = 0u;
  *(v25 + 312) = 0u;
  *(v25 + 264) = 0u;
  *(v25 + 280) = 0u;
  v32 = 1;
  *(v25 + 424) = 0;
  *(v25 + 432) = 1;
  *(v25 + 440) = 0u;
  *(v25 + 456) = 0u;
  *(v25 + 472) = 0u;
  v33 = objc_opt_self();

  v34 = v56;
  v35 = v56;
  *(v25 + 488) = [v33 sharedInstance];
  *(v25 + 496) = LocalizedStringKey.init(stringLiteral:)();
  *(v25 + 504) = v36;
  *(v25 + 512) = v37 & 1;
  *(v25 + 520) = v38;
  *(v25 + 528) = LocalizedStringKey.init(stringLiteral:)();
  *(v25 + 536) = v39;
  *(v25 + 544) = v40 & 1;
  *(v25 + 552) = v41;
  ObservationRegistrar.init()();
  *(v25 + 560) = v34;
  *(v25 + 568) = v53;
  *(v25 + 576) = v21;
  *(v25 + 584) = v52;
  sub_100007DB0(v64, v25 + 592);
  *(v25 + 256) = v22;
  v42 = [v35 artworkURL];
  if (v42)
  {
    v43 = v42;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  v44 = type metadata accessor for URL();
  v45 = *(*(v44 - 8) + 56);
  v45(v16, v32, 1, v44);
  v46 = v57;
  sub_100007F6C(v16, v57);
  v47 = v58;
  v45(v58, 1, 1, v44);
  type metadata accessor for SongArtworkViewModel();
  v48 = swift_allocObject();
  v45((v48 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL), 1, 1, v44);
  v45((v48 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL), 1, 1, v44);
  ObservationRegistrar.init()();
  sub_100007FDC(v46, v11, &unk_100144630);
  sub_1000D88D8(v11);
  sub_100007FDC(v47, v11, &unk_100144630);
  v49 = v59;
  sub_100007FDC(v11, v59, &unk_100144630);
  sub_1000D8B98(v49);
  sub_100007E14(v47, &unk_100144630);
  sub_100007E14(v46, &unk_100144630);
  sub_100007E14(v11, &unk_100144630);
  sub_100007E74(v64);
  *(v25 + 208) = v48;
  *(v25 + 632) = v55;
  sub_100007E74(v65);
  return sub_10001A830(v25);
}

uint64_t *sub_10001CFC8()
{
  v1 = *v0;
  v2 = qword_10014FEE0;
  v3 = type metadata accessor for LocalizedStringResource();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = qword_100142ED0;
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 184));
  v6 = *(*v0 + 192);
  v7 = type metadata accessor for ObservationRegistrar();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_10001D1C8()
{
  sub_10001CFC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for HistorySortSelection(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HistorySortSelection(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_10001D3D8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100002D44(&qword_100142810);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10001D460(unint64_t a1)
{
  v2 = v1;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    v4 = 0;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = a1 & 0xC000000000000001;
    v23 = v3;
    v24 = a1 + 32;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v26)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v25 + 16))
        {
          goto LABEL_40;
        }

        a1 = *(v24 + 8 * v4);
      }

      v6 = a1;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v22 = a1;
        v3 = _CocoaArrayWrapper.endIndex.getter();
        a1 = v22;
        goto LABEL_3;
      }

      v28 = a1;
      sub_10001B4CC(&v28, v27);
      if (v2)
      {

        v20 = v30;

        return v20;
      }

      v8 = v27[0];
      v9 = v27[1];
      v11 = v29;
      v10 = v30;
      v12 = v30[2];
      if (v29)
      {

        v13 = sub_10001DC6C(v8, v9, (v10 + 4), v12, v11 + 2);
        v2 = v14;

        if (v2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (!v12)
        {
LABEL_27:
          sub_10001D854(v8, v9);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100063048(0, v5[2] + 1, 1);
            v5 = v31;
          }

          v18 = v5[2];
          v17 = v5[3];
          if (v18 >= v17 >> 1)
          {
            sub_100063048((v17 > 1), v18 + 1, 1);
            v5 = v31;
          }

          v5[2] = v18 + 1;
          v19 = &v5[v18];
          v19[4] = _swiftEmptyArrayStorage;
          v6;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v19[4] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v19[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_5;
          }

LABEL_32:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          goto LABEL_5;
        }

        v13 = 0;
        v2 = v30 + 5;
        while (1)
        {
          v15 = *(v2 - 1) == v8 && *v2 == v9;
          if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v13;
          v2 += 2;
          if (v12 == v13)
          {
            goto LABEL_27;
          }
        }
      }

      a1 = swift_isUniquelyReferenced_nonNull_native();
      if ((a1 & 1) == 0)
      {
        a1 = sub_10005CEF0(v5);
        v5 = a1;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v13 >= v5[2])
      {
        goto LABEL_42;
      }

      v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v5[v13 + 4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[v13 + 4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_32;
      }

LABEL_5:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = 0;
      if (v4 == v23)
      {
        v20 = v29;
        goto LABEL_37;
      }
    }
  }

  v20 = 0;
LABEL_37:

  return v20;
}

uint64_t sub_10001D7D0(uint64_t *a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10005CEDC(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1000200DC(v8, v2 & 1);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_10001D854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_100063068(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_100063068((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  if (*v3)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v13 = *v3;
      if ((result & 1) == 0)
      {
        if (!v13)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v14 = _HashTable.copy()();

        *v3 = v14;
        v13 = v14;
      }

      if (v13)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_10001D9CC();
}

uint64_t sub_10001D9CC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_10001DA6C(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_10001DA6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_10001DAEC(a1, (v9 + 16));
    return v9;
  }

  return result;
}

Swift::Int sub_10001DB3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v7)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_10001DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v14 & 1) == 0)
          {
            v15 = (a3 + 16 * result);
            if (*v15 != a1 || v15[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v13;
      }
    }
  }

  return result;
}

void *sub_10001DDB8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10001D3D8(v3, 0);
  sub_10001DE4C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10001DE4C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100004610(&qword_100142FF0, &qword_100142FC8);
          for (i = 0; i != v6; ++i)
          {
            sub_100002D44(&qword_100142FC8);
            v9 = sub_10001E000(v13, i, a3);
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
        sub_1000123E4(0, &qword_100142FB0);
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

void (*sub_10001E000(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10001E080;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E088()
{
  swift_getKeyPath();
  sub_100019FF0();

  return *(v0 + qword_100142EB8);
}

__n128 sub_10001E11C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10001E16C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100019FF0();

  return *(v2 + *a2);
}

uint64_t sub_10001E1E8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001E2AC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000789C;

  return sub_10001BDB8(a1, v7, v8, v9, v1 + v6, v4, v5);
}

id sub_10001E408@<X0>(void *a1@<X8>)
{
  v2 = sub_10001E16C(&unk_1000F6398, qword_100142EE0);
  *a1 = v2;

  return v2;
}

void sub_10001E454(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10001AC4C(v1);
}

unint64_t sub_10001E490()
{
  result = qword_100142F88;
  if (!qword_100142F88)
  {
    sub_100004370(&qword_100142F80);
    sub_10001E540(&qword_100142F90, &qword_100142F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142F88);
  }

  return result;
}

uint64_t sub_10001E540(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000123E4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001E584()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + qword_100142EE0[0]);
  *(v1 + qword_100142EE0[0]) = v2;
  v4 = v2;
}

uint64_t sub_10001E5C4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

BOOL sub_10001E660(void **a1, void **a2, int a3)
{
  v45 = a3;
  v5 = sub_100002D44(&qword_100142FE0);
  __chkstk_darwin(v5 - 8);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = *a2;
  p_align = &stru_10013EFE8.align;
  v24 = [v21 creationDate];
  v43 = v20;
  if (v24)
  {
    v25 = v20;
    v42 = v13;
    v26 = v22;
    v27 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v11 + 32);
    v28(v9, v16, v10);
    v29 = *(v11 + 56);
    v29(v9, 0, 1, v10);
    v30 = v25;
    p_align = (&stru_10013EFE8 + 24);
    v28(v30, v9, v10);
    v22 = v26;
    v13 = v42;
  }

  else
  {
    v29 = *(v11 + 56);
    v29(v9, 1, 1, v10);
    static Date.now.getter();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_100007E14(v9, &qword_100142FE0);
    }
  }

  v31 = [v22 *(p_align + 238)];
  if (v31)
  {
    v32 = v31;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v11 + 32);
    v34 = v44;
    v33(v44, v16, v10);
    v29(v34, 0, 1, v10);
    v33(v13, v34, v10);
    v35 = v43;
  }

  else
  {
    v36 = v44;
    v29(v44, 1, 1, v10);
    static Date.now.getter();
    v37 = (*(v11 + 48))(v36, 1, v10);
    v35 = v43;
    if (v37 != 1)
    {
      sub_100007E14(v36, &qword_100142FE0);
    }
  }

  v38 = Date.compare(_:)();
  v39 = *(v11 + 8);
  v39(v13, v10);
  v39(v35, v10);
  v40 = -1;
  if ((v45 & 1) == 0)
  {
    v40 = 1;
  }

  return v38 == v40;
}

uint64_t sub_10001EA4C(void **__dst, void **__src, void **a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v17 = &v16[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = v17;
      v20 = v8;
      v55 = *v8;
      v21 = v16;
      v54 = *v16;
      v22 = v54;
      v23 = v55;
      v24 = v22;
      v25 = sub_10001E660(&v55, &v54, a5 & 1);
      if (v6)
      {

        v45 = v19 - v21 + 7;
        if (v19 - v21 >= 0)
        {
          v45 = v19 - v21;
        }

        v46 = v45 >> 3;
        if (v9 < v21 || v9 >= (v21 + (v45 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v9, v21, 8 * v46);
          return 1;
        }

        if (v9 == v21)
        {
          return 1;
        }

        v44 = 8 * v46;
        v42 = v9;
        v43 = v21;
        goto LABEL_57;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v18 = v21;
      v16 = v21 + 1;
      v8 = v20;
      if (v9 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      v17 = v19;
      v6 = 0;
      if (v16 >= v19)
      {
        goto LABEL_10;
      }
    }

    v18 = v20;
    v8 = v20 + 1;
    v16 = v21;
    if (v9 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v15);
    a4 = v27;
  }

  v52 = a4;
  v17 = (a4 + 8 * v15);
  if (v13 >= 8 && v8 > v9)
  {
    v28 = -a4;
    v49 = -a4;
    v50 = v9;
LABEL_25:
    v51 = v8;
    v29 = v8 - 1;
    v30 = v17 + v28;
    --v7;
    v31 = v17;
    while (1)
    {
      v32 = *--v31;
      v55 = v32;
      v33 = v29;
      v54 = *v29;
      v34 = v54;
      v35 = v32;
      v36 = v34;
      v37 = sub_10001E660(&v55, &v54, a5 & 1);
      if (v6)
      {
        break;
      }

      v38 = v37;

      v39 = v7 + 1;
      if (v38)
      {
        if (v39 != v51)
        {
          *v7 = *v33;
        }

        v16 = v52;
        v6 = 0;
        if (v17 <= v52 || (v8 = v33, v28 = v49, v33 <= v50))
        {
          v8 = v33;
          goto LABEL_51;
        }

        goto LABEL_25;
      }

      if (v39 != v17)
      {
        *v7 = *v31;
      }

      v30 -= 8;
      --v7;
      v17 = v31;
      v6 = 0;
      v29 = v33;
      if (v31 <= v52)
      {
        v17 = v31;
        v8 = v51;
        v16 = v52;
        goto LABEL_51;
      }
    }

    if (v30 >= 0)
    {
      v40 = v30;
    }

    else
    {
      v40 = v30 + 7;
    }

    v41 = v40 >> 3;
    v42 = v51;
    v43 = v52;
    if (v51 < v52 || v51 >= (v52 + (v40 & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v51, v52, 8 * v41);
      return 1;
    }

    if (v51 == v52)
    {
      return 1;
    }

    v44 = 8 * v41;
    goto LABEL_57;
  }

  v16 = a4;
LABEL_51:
  v47 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v47 = v17 - v16;
  }

  if (v8 < v16 || v8 >= (v16 + (v47 & 0xFFFFFFFFFFFFFFF8)) || v8 != v16)
  {
    v44 = 8 * (v47 >> 3);
    v42 = v8;
    v43 = v16;
LABEL_57:
    memmove(v42, v43, v44);
  }

  return 1;
}

uint64_t sub_10001EE10(uint64_t *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a1;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_10005CDE4(v7);
    v7 = result;
  }

  v16 = v6;
  *v6 = v7;
  v9 = (v7 + 16);
  v10 = *(v7 + 16);
  if (v10 < 2)
  {
LABEL_9:
    *v16 = v7;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v6 = (v7 + 16 * v10);
      v11 = *v6;
      v12 = &v9[2 * v10];
      v13 = v12[1];
      sub_10001EA4C((*a3 + 8 * *v6), (*a3 + 8 * *v12), (*a3 + 8 * v13), a2, a4 & 1);
      if (v4)
      {
        goto LABEL_9;
      }

      if (v13 < v11)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v14 = *v9;
      if (v10 - 2 >= *v9)
      {
        goto LABEL_11;
      }

      *v6 = v11;
      v6[1] = v13;
      v15 = v14 - v10;
      if (v14 < v10)
      {
        goto LABEL_12;
      }

      v10 = v14 - 1;
      result = memmove(v12, v12 + 2, 16 * v15);
      *v9 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v16 = v7;
    __break(1u);
  }

  return result;
}

void sub_10001EF50(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v146 = a1;
  v8 = sub_100002D44(&qword_100142FE0);
  __chkstk_darwin(v8 - 8);
  v165 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v161 = &v144 - v11;
  __chkstk_darwin(v12);
  v154 = &v144 - v13;
  __chkstk_darwin(v14);
  v152 = &v144 - v15;
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v169 = &v144 - v18;
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v167 = &v144 - v21;
  __chkstk_darwin(v22);
  v156 = &v144 - v26;
  v173 = _swiftEmptyArrayStorage;
  v155 = a3;
  v27 = a3[1];
  if (v27 >= 1)
  {
    v144 = a4;
    v28 = 0;
    v166 = (v23 + 32);
    v170 = (v23 + 56);
    v159 = (v23 + 48);
    v164 = (v23 + 8);
    v29 = -1;
    v30 = _swiftEmptyArrayStorage;
    if ((a5 & 1) == 0)
    {
      v29 = 1;
    }

    v163 = v29;
    v153 = a5;
    v160 = v24;
    v151 = v25;
    do
    {
      v147 = v28;
      if (v28 + 1 >= v27)
      {
        v27 = v28 + 1;
        v59 = v28;
      }

      else
      {
        v145 = v30;
        v31 = *v155;
        v32 = *(*v155 + 8 * (v28 + 1));
        v171 = *(*v155 + 8 * v28);
        v33 = v171;
        v172 = v32;
        v34 = v32;
        v35 = v33;
        v36 = v158;
        LODWORD(v162) = sub_10001E660(&v172, &v171, a5 & 1);
        v158 = v36;
        if (v36)
        {

          goto LABEL_108;
        }

        v37 = v28 + 2;
        v150 = 8 * v28;
        v38 = (v31 + 8 * v28 + 16);
        v157 = v27;
        while (v27 != v37)
        {
          v47 = *(v38 - 1);
          v48 = *v38;
          v49 = v47;
          v168 = v48;
          v50 = [v48 creationDate];
          if (v50)
          {
            v51 = v167;
            v52 = v50;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v53 = *v166;
            v54 = v152;
            (*v166)(v152, v51, v16);
            v55 = *v170;
            (*v170)(v54, 0, 1, v16);
            (v53)(v156, v54, v16);
          }

          else
          {
            v55 = *v170;
            v56 = v152;
            (*v170)(v152, 1, 1, v16);
            static Date.now.getter();
            if ((*v159)(v56, 1, v16) != 1)
            {
              sub_100007E14(v56, &qword_100142FE0);
            }
          }

          v57 = [v49 creationDate];
          if (v57)
          {
            v39 = v167;
            v40 = v57;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v41 = *v166;
            v42 = v154;
            (*v166)(v154, v39, v16);
            v55(v42, 0, 1, v16);
            v43 = v151;
            (v41)(v151, v42, v16);
          }

          else
          {
            v58 = v154;
            v55(v154, 1, 1, v16);
            v43 = v151;
            static Date.now.getter();
            if ((*v159)(v58, 1, v16) != 1)
            {
              sub_100007E14(v154, &qword_100142FE0);
            }
          }

          v44 = v156;
          v45 = Date.compare(_:)();
          v46 = *v164;
          (*v164)(v43, v16);
          v46(v44, v16);

          ++v37;
          ++v38;
          v27 = v157;
          if (((v162 ^ (v45 != v163)) & 1) == 0)
          {
            v27 = v37 - 1;
            break;
          }
        }

        v30 = v145;
        v59 = v147;
        v60 = v150;
        if (v162)
        {
          if (v27 < v147)
          {
            goto LABEL_129;
          }

          if (v147 < v27)
          {
            v61 = 8 * v27 - 8;
            v62 = v27;
            v63 = v147;
            do
            {
              if (v63 != --v62)
              {
                v64 = *v155;
                if (!*v155)
                {
                  goto LABEL_132;
                }

                v65 = *(v64 + v60);
                *(v64 + v60) = *(v64 + v61);
                *(v64 + v61) = v65;
              }

              ++v63;
              v61 -= 8;
              v60 += 8;
            }

            while (v63 < v62);
          }
        }
      }

      v66 = v155[1];
      if (v27 < v66)
      {
        if (__OFSUB__(v27, v59))
        {
          goto LABEL_126;
        }

        if (v27 - v59 < v144)
        {
          if (__OFADD__(v59, v144))
          {
            goto LABEL_127;
          }

          if (v59 + v144 < v66)
          {
            v66 = v59 + v144;
          }

          if (v66 < v59)
          {
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
            return;
          }

          if (v27 != v66)
          {
            v148 = v66;
            v145 = v30;
            v162 = *v155;
            v67 = v162 + 8 * v27 - 8;
            v68 = v59 - v27;
            do
            {
              v157 = v27;
              v69 = *(v162 + 8 * v27);
              v149 = v68;
              v150 = v67;
              do
              {
                v70 = *v67;
                v71 = v69;
                v72 = v70;
                v168 = v71;
                v73 = [v71 creationDate];
                if (v73)
                {
                  v74 = v167;
                  v75 = v73;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v76 = *v166;
                  v77 = v161;
                  (*v166)(v161, v74, v16);
                  v78 = *v170;
                  (*v170)(v77, 0, 1, v16);
                  (v76)(v169, v77, v16);
                }

                else
                {
                  v78 = *v170;
                  v79 = v161;
                  (*v170)(v161, 1, 1, v16);
                  static Date.now.getter();
                  if ((*v159)(v79, 1, v16) != 1)
                  {
                    sub_100007E14(v79, &qword_100142FE0);
                  }
                }

                v80 = [v72 creationDate];
                if (v80)
                {
                  v81 = v167;
                  v82 = v80;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v83 = v165;
                  v84 = *v166;
                  (*v166)(v165, v81, v16);
                  v78(v83, 0, 1, v16);
                  v85 = v160;
                  v84();
                }

                else
                {
                  v86 = v165;
                  v78(v165, 1, 1, v16);
                  v85 = v160;
                  static Date.now.getter();
                  if ((*v159)(v86, 1, v16) != 1)
                  {
                    sub_100007E14(v165, &qword_100142FE0);
                  }
                }

                v87 = v169;
                v88 = Date.compare(_:)();
                v89 = *v164;
                (*v164)(v85, v16);
                v89(v87, v16);

                if (v88 != v163)
                {
                  break;
                }

                if (!v162)
                {
                  goto LABEL_130;
                }

                v90 = *v67;
                v69 = *(v67 + 8);
                *v67 = v69;
                *(v67 + 8) = v90;
                v67 -= 8;
              }

              while (!__CFADD__(v68++, 1));
              v27 = v157 + 1;
              v67 = v150 + 8;
              v68 = v149 - 1;
            }

            while (v157 + 1 != v148);
            v30 = v145;
            v59 = v147;
            v27 = v148;
          }
        }
      }

      if (v27 < v59)
      {
        goto LABEL_125;
      }

      v148 = v27;
      v92 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = v92;
      }

      else
      {
        v30 = sub_10005808C(0, *(v92 + 2) + 1, 1, v92);
      }

      v94 = *(v30 + 2);
      v93 = *(v30 + 3);
      v95 = v94 + 1;
      if (v94 >= v93 >> 1)
      {
        v30 = sub_10005808C((v93 > 1), v94 + 1, 1, v30);
      }

      *(v30 + 2) = v95;
      v96 = v30 + 32;
      v97 = &v30[16 * v94 + 32];
      v98 = v148;
      *v97 = v147;
      *(v97 + 1) = v98;
      v173 = v30;
      v168 = *v146;
      if (!v168)
      {
        goto LABEL_133;
      }

      if (v94)
      {
        while (1)
        {
          v99 = v95 - 1;
          if (v95 >= 4)
          {
            break;
          }

          if (v95 == 3)
          {
            v100 = *(v30 + 4);
            v101 = *(v30 + 5);
            v110 = __OFSUB__(v101, v100);
            v102 = v101 - v100;
            v103 = v110;
LABEL_75:
            if (v103)
            {
              goto LABEL_116;
            }

            v116 = &v30[16 * v95];
            v118 = *v116;
            v117 = *(v116 + 1);
            v119 = __OFSUB__(v117, v118);
            v120 = v117 - v118;
            v121 = v119;
            if (v119)
            {
              goto LABEL_119;
            }

            v122 = &v96[16 * v99];
            v124 = *v122;
            v123 = *(v122 + 1);
            v110 = __OFSUB__(v123, v124);
            v125 = v123 - v124;
            if (v110)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v120, v125))
            {
              goto LABEL_123;
            }

            if (v120 + v125 >= v102)
            {
              if (v102 < v125)
              {
                v99 = v95 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v126 = &v30[16 * v95];
          v128 = *v126;
          v127 = *(v126 + 1);
          v110 = __OFSUB__(v127, v128);
          v120 = v127 - v128;
          v121 = v110;
LABEL_89:
          if (v121)
          {
            goto LABEL_118;
          }

          v129 = &v96[16 * v99];
          v131 = *v129;
          v130 = *(v129 + 1);
          v110 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v110)
          {
            goto LABEL_121;
          }

          if (v132 < v120)
          {
            goto LABEL_5;
          }

LABEL_96:
          if (v99 - 1 >= v95)
          {
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
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*v155)
          {
            goto LABEL_131;
          }

          v137 = v30;
          v138 = &v96[16 * v99 - 16];
          v139 = *v138;
          v140 = &v96[16 * v99];
          v141 = *(v140 + 1);
          v142 = v158;
          sub_10001EA4C((*v155 + 8 * *v138), (*v155 + 8 * *v140), (*v155 + 8 * v141), v168, v153 & 1);
          v158 = v142;
          if (v142)
          {
            v173 = v137;
            goto LABEL_108;
          }

          if (v141 < v139)
          {
            goto LABEL_111;
          }

          v143 = *(v137 + 2);
          if (v99 > v143)
          {
            goto LABEL_112;
          }

          *v138 = v139;
          *(v138 + 1) = v141;
          if (v99 >= v143)
          {
            goto LABEL_113;
          }

          v95 = v143 - 1;
          memmove(&v96[16 * v99], v140 + 16, 16 * (v143 - 1 - v99));
          v30 = v137;
          *(v137 + 2) = v143 - 1;
          if (v143 <= 2)
          {
LABEL_5:
            v173 = v30;
            goto LABEL_6;
          }
        }

        v104 = &v96[16 * v95];
        v105 = *(v104 - 8);
        v106 = *(v104 - 7);
        v110 = __OFSUB__(v106, v105);
        v107 = v106 - v105;
        if (v110)
        {
          goto LABEL_114;
        }

        v109 = *(v104 - 6);
        v108 = *(v104 - 5);
        v110 = __OFSUB__(v108, v109);
        v102 = v108 - v109;
        v103 = v110;
        if (v110)
        {
          goto LABEL_115;
        }

        v111 = &v30[16 * v95];
        v113 = *v111;
        v112 = *(v111 + 1);
        v110 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v110)
        {
          goto LABEL_117;
        }

        v110 = __OFADD__(v102, v114);
        v115 = v102 + v114;
        if (v110)
        {
          goto LABEL_120;
        }

        if (v115 >= v107)
        {
          v133 = &v96[16 * v99];
          v135 = *v133;
          v134 = *(v133 + 1);
          v110 = __OFSUB__(v134, v135);
          v136 = v134 - v135;
          if (v110)
          {
            goto LABEL_124;
          }

          if (v102 < v136)
          {
            v99 = v95 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_6:
      v27 = v155[1];
      v28 = v148;
      LOBYTE(a5) = v153;
    }

    while (v148 < v27);
  }

  if (!*v146)
  {
    goto LABEL_134;
  }

  sub_10001EE10(&v173, *v146, v155, a5 & 1);
LABEL_108:
}