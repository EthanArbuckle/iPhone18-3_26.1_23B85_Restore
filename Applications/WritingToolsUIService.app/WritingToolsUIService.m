void sub_100002B34()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for UIHostingControllerSizingOptions() - 8) + 64);
  __chkstk_darwin();
  v3 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView + 16];
  v4 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView + 24];
  v48 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView];
  v49 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView + 8];
  objc_allocWithZone(sub_10000341C(&unk_10025ACF0, &unk_1001CE9B0));

  v5 = v3;
  v6 = v4;
  v7 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = v7;
  v11 = [v10 view];
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  [v9 addSubview:v11];

  v13 = [v10 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!_UISolariumEnabled())
  {
    goto LABEL_7;
  }

  v15 = [v10 view];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

LABEL_7:
    [v1 addChildViewController:v10];
    sub_10000341C(&qword_10025F470, &qword_1001D1020);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001CE090;
    v19 = [v10 view];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 leadingAnchor];

      v22 = [v1 view];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 leadingAnchor];

        v25 = [v21 constraintEqualToAnchor:v24];
        *(v18 + 32) = v25;
        v26 = [v10 view];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 trailingAnchor];

          v29 = [v1 view];
          if (v29)
          {
            v30 = v29;
            v31 = [v29 trailingAnchor];

            v32 = [v28 constraintEqualToAnchor:v31];
            *(v18 + 40) = v32;
            v33 = [v10 view];
            if (v33)
            {
              v34 = v33;
              v35 = [v33 topAnchor];

              v36 = [v1 view];
              if (v36)
              {
                v37 = v36;
                v38 = [v36 topAnchor];

                v39 = [v35 constraintEqualToAnchor:v38];
                *(v18 + 48) = v39;
                v40 = [v10 view];

                if (v40)
                {
                  v41 = [v40 bottomAnchor];

                  v42 = [v1 view];
                  if (v42)
                  {
                    v43 = v42;
                    v44 = objc_opt_self();
                    v45 = [v43 bottomAnchor];

                    v46 = [v41 constraintEqualToAnchor:v45];
                    *(v18 + 56) = v46;
                    sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v44 activateConstraints:isa];

                    return;
                  }

                  goto LABEL_26;
                }

LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
}

id sub_100003144()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of WritingToolsView._commonUIManager()
{
  type metadata accessor for CommonUIManager();
  sub_1000032CC(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  return Environment.init<A>(_:)();
}

uint64_t variable initialization expression of WritingToolsView._presentationModel()
{
  type metadata accessor for PresentationModel();
  sub_1000032CC(&qword_10025A910, type metadata accessor for PresentationModel);
  return Environment.init<A>(_:)();
}

uint64_t sub_1000032CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003354(uint64_t a1)
{
  v2 = *(*(type metadata accessor for DynamicTypeSize() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_10000341C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double variable initialization expression of WritingToolsView._analyticsInstance@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000034E0(uint64_t a1)
{
  v2 = (*(*(sub_10000341C(&qword_10025AD60, &qword_1001CEA18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_1000081F8(a1, &v5 - v3, &qword_10025AD60, &qword_1001CEA18);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_10000358C(uint64_t *a1)
{
  v1 = *a1;
  if (sub_1001C7274(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_1000035F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_1001C7274(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_1000036E8();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_1000032CC(&qword_10025A930, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_1000036E8()
{
  result = qword_10025A928;
  if (!qword_10025A928)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025A928);
  }

  return result;
}

uint64_t sub_10000385C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return a2();
}

uint64_t variable initialization expression of WritingToolsModel.networkQueue()
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v9 = &_swiftEmptyArrayStorage;
  sub_1000032CC(&unk_10025A9D0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000341C(&qword_10025FEC0, &qword_1001CE1A8);
  sub_100007120(&qword_10025A9E0, &qword_10025FEC0, &qword_1001CE1A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100003BA4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_10000341C(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of RewritingView._writingToolsModel()
{
  type metadata accessor for WritingToolsModel();
  sub_1000032CC(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  return Environment.init<A>(_:)();
}

uint64_t sub_100003C9C()
{
  v0 = (*(*(sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  return FBKEvaluationController.init(subject:)();
}

uint64_t sub_100003DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100003E34(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_100003EB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_100003EF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100003F20@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

BOOL sub_100003FEC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

Swift::Int sub_100004064()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000040D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100004124(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000419C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000421C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004260(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000042CC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100004318()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100004370()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000043D8(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF08, type metadata accessor for IAPayloadValue);
  v3 = sub_1000032CC(&qword_10025AF10, type metadata accessor for IAPayloadValue);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100008160(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000044E8(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004554(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000045C0(void *a1, uint64_t a2)
{
  v4 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000046F0()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100004754@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004780(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF18, type metadata accessor for IAPayloadKey);
  v3 = sub_1000032CC(&qword_10025AF20, type metadata accessor for IAPayloadKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000483C(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AEF8, type metadata accessor for MarkerFormat);
  v3 = sub_1000032CC(&qword_10025AF00, type metadata accessor for MarkerFormat);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000048F8(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025D590, type metadata accessor for Key);
  v3 = sub_1000032CC(&unk_10025AEE0, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000049B4(uint64_t a1)
{
  v2 = sub_1000032CC(&unk_10025F4C0, type metadata accessor for TCFormatFeature);
  v3 = sub_1000032CC(&qword_10025AEF0, type metadata accessor for TCFormatFeature);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004A70(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF38, type metadata accessor for OptionKey);
  v3 = sub_1000032CC(&qword_10025AF40, type metadata accessor for OptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004B2C(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF28, type metadata accessor for ActivityType);
  v3 = sub_1000032CC(&qword_10025AF30, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004BE8(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE28, type metadata accessor for SummarizationClientError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004C54(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE28, type metadata accessor for SummarizationClientError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004CC4(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032CC(&qword_10025AE60, type metadata accessor for SummarizationClientError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100004DB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100004DFC(uint64_t a1)
{
  v2 = sub_1000032CC(&qword_10025AF48, type metadata accessor for URLResourceKey);
  v3 = sub_1000032CC(&qword_10025AF50, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004EB8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100004EF4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004F48()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100004FBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_100005044(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_1000032CC(&unk_10025AC80, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000055D0(a1, v5, &type metadata accessor for UUID, &unk_10025F360, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10000511C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000536C(a1, a2, v6);
}

unint64_t sub_100005194(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005424(a1, v4);
}

unint64_t sub_100005224()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  UnitPoint.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100005528(v2);
}

unint64_t sub_100005298(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for FBKSForm.Question();
  sub_1000032CC(&qword_10025AC50, &type metadata accessor for FBKSForm.Question);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000055D0(a1, v5, &type metadata accessor for FBKSForm.Question, &qword_10025AC58, &type metadata accessor for FBKSForm.Question, &protocol conformance descriptor for FBKSForm.Question);
}

unint64_t sub_10000536C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005424(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
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

unint64_t sub_100005528(uint64_t a1)
{
  v2 = -1 << *(v1 + 32);
  v3 = a1 & ~v2;
  if ((*(v1 + 64 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
  {
    v4 = ~v2;
    do
    {
      v5 = (*(v1 + 48) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      if (static UnitPoint.== infix(_:_:)())
      {
        break;
      }

      v3 = (v3 + 1) & v4;
    }

    while (((*(v1 + 64 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) != 0);
  }

  return v3;
}

unint64_t sub_1000055D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1000032CC(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1000057A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&unk_10025AC10, &unk_1001CE8F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000081F8(v4, &v13, &qword_10025D5A0, &qword_1001D45E0);
      v5 = v13;
      v6 = v14;
      result = sub_10000511C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008150(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000058FC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_10000341C(a2, a3);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_10000341C(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1000081F8(v17, v13, a2, v28);
      result = sub_100005044(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_100005B00(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AD48, &qword_1001CEA00);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000341C(&qword_10025AD50, &qword_1001CEA08);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v10, v6, &qword_10025AD48, &qword_1001CEA00);
      result = sub_100005044(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100005D0C(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AD28, &unk_1001CE9E0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000341C(&qword_10025AD30, &qword_1001D8740);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v10, v6, &qword_10025AD28, &unk_1001CE9E0);
      result = sub_100005044(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100005F18(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AD08, &unk_1001CE9C0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000341C(&qword_10025AD10, &unk_1001D8720);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v10, v6, &qword_10025AD08, &unk_1001CE9C0);
      result = sub_100005044(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100006100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025ACD8, &qword_1001CE998);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000081F8(v4, &v13, &qword_10025ACE0, &qword_1001CE9A0);
      v5 = v13;
      v6 = v14;
      result = sub_10000511C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008198(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_100006248(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000341C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;
      result = sub_100005194(v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v9;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_10000635C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025ACA0, &qword_1001CE960);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000511C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100006470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025AC28, &qword_1001CE908);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000081F8(v4, &v11, &unk_10025AC30, &unk_1001CE910);
      v5 = v11;
      result = sub_100005194(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100008150(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100006598(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AC70, &qword_1001CE940);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000341C(&qword_10025AC78, &qword_1001CE948);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v10, v6, &qword_10025AC70, &qword_1001CE940);
      v12 = *v6;
      v13 = *(v6 + 1);
      result = sub_100005224();
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for LayoutSubview();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, &v6[v9], v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100006790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025AC68, &qword_1001CE938);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_100005224();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10000688C(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025AC40, &qword_1001CE920);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000341C(&qword_10025AC48, &qword_1001CE928);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000081F8(v10, v6, &qword_10025AC40, &qword_1001CE920);
      result = sub_100005298(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for FBKSForm.Question();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

Swift::Int sub_100006A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025AD58, &qword_1001CEA10);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100006BB0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1001C7274(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_100006C44(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1001C7274(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100006CD4()
{
  result = qword_10025AA10;
  if (!qword_10025AA10)
  {
    sub_100003E34(&unk_100265110, &unk_1001DD960);
    sub_100007120(&unk_10025AA20, &unk_100265120, &unk_1001CE200);
    sub_100006D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA10);
  }

  return result;
}

unint64_t sub_100006D8C()
{
  result = qword_10025AA30;
  if (!qword_10025AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA30);
  }

  return result;
}

unint64_t sub_100006DE0()
{
  result = qword_100265140;
  if (!qword_100265140)
  {
    sub_100003E34(&unk_10025AA40, &unk_1001CE210);
    sub_100006E9C();
    sub_1000032CC(&qword_100265170, type metadata accessor for InputDashboardNavigationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265140);
  }

  return result;
}

unint64_t sub_100006E9C()
{
  result = qword_10025AA50;
  if (!qword_10025AA50)
  {
    sub_100003E34(&unk_100265150, &unk_1001DD980);
    sub_100007120(&unk_10025AA60, &unk_100265160, &qword_1001CE220);
    sub_100006F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA50);
  }

  return result;
}

unint64_t sub_100006F54()
{
  result = qword_10025AA70;
  if (!qword_10025AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA70);
  }

  return result;
}

unint64_t sub_100006FA8()
{
  result = qword_10025AA98;
  if (!qword_10025AA98)
  {
    sub_100003E34(&qword_10025AAA0, &unk_1001E0E40);
    sub_100003E34(&qword_10025AAA8, &unk_1001CE240);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240);
    sub_1000032CC(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA98);
  }

  return result;
}

uint64_t sub_100007120(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000071C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000724C()
{
  result = qword_10025AB08;
  if (!qword_10025AB08)
  {
    sub_100003E34(&qword_10025AB10, &qword_1001CE270);
    sub_1000072D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AB08);
  }

  return result;
}

unint64_t sub_1000072D8()
{
  result = qword_10025AB18;
  if (!qword_10025AB18)
  {
    sub_100003E34(&qword_10025AB20, &qword_1001CE278);
    sub_100007364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AB18);
  }

  return result;
}

unint64_t sub_100007364()
{
  result = qword_10025AB28;
  if (!qword_10025AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AB28);
  }

  return result;
}

uint64_t sub_1000073B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_1001C7274(2, 26, 0, 0))
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

uint64_t sub_10000751C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_1001C7274(2, 26, 0, 0))
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

void *sub_10000771C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10000341C(&qword_10025ABF8, &qword_1001CE8E8);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000032CC(&qword_10025AC00, &type metadata accessor for PresentationDetent);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1000032CC(&qword_10025AC08, &type metadata accessor for PresentationDetent);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100007A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025F370, &qword_1001D41D0);
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

void *sub_100007BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000341C(&qword_10025AC20, &qword_1001CE900);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100007D98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_100007E0C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100007E18(uint64_t a1, int a2)
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

uint64_t sub_100007E38(uint64_t result, int a2, int a3)
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

__n128 sub_100007E8C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007ED4(uint64_t a1, int a2)
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

uint64_t sub_100007EF4(uint64_t result, int a2, int a3)
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

_OWORD *sub_100008150(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100008160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100008198(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000081B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000081F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000341C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1000087E4(uint64_t a1, unint64_t *a2)
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

unint64_t sub_10000887C()
{
  result = qword_10025AE50;
  if (!qword_10025AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AE50);
  }

  return result;
}

NSString sub_100008DD4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D00 = result;
  return result;
}

NSString sub_100008E0C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D08 = result;
  return result;
}

NSString sub_100008E44()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D10 = result;
  return result;
}

NSString sub_100008E7C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D18 = result;
  return result;
}

NSString sub_100008EBC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D20 = result;
  return result;
}

NSString sub_100008EF4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D28 = result;
  return result;
}

NSString sub_100008F2C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D30 = result;
  return result;
}

NSString sub_100008F6C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D38 = result;
  return result;
}

NSString sub_100008FA8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D40 = result;
  return result;
}

NSString sub_100008FDC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D48 = result;
  return result;
}

NSString sub_100009014()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D50 = result;
  return result;
}

NSString sub_100009054()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D58 = result;
  return result;
}

NSString sub_100009084()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D60 = result;
  return result;
}

NSString sub_1000090C0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D68 = result;
  return result;
}

NSString sub_1000090FC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D70 = result;
  return result;
}

NSString sub_100009134()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D78 = result;
  return result;
}

NSString sub_10000916C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D80 = result;
  return result;
}

NSString sub_1000091A4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D88 = result;
  return result;
}

NSString sub_1000091E4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D90 = result;
  return result;
}

NSString sub_100009214()
{
  result = String._bridgeToObjectiveC()();
  qword_100276D98 = result;
  return result;
}

NSString sub_100009248()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DA0 = result;
  return result;
}

NSString sub_100009284()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DA8 = result;
  return result;
}

NSString sub_1000092BC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DB0 = result;
  return result;
}

NSString sub_1000092E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DB8 = result;
  return result;
}

NSString sub_10000931C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DC0 = result;
  return result;
}

NSString sub_100009350()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DC8 = result;
  return result;
}

NSString sub_100009388()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DD0 = result;
  return result;
}

NSString sub_1000093C0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DD8 = result;
  return result;
}

NSString sub_1000093F8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DE0 = result;
  return result;
}

NSString sub_100009430()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DE8 = result;
  return result;
}

NSString sub_100009468()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DF0 = result;
  return result;
}

NSString sub_100009498()
{
  result = String._bridgeToObjectiveC()();
  qword_100276DF8 = result;
  return result;
}

NSString sub_1000094D0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E00 = result;
  return result;
}

NSString sub_100009504()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E08 = result;
  return result;
}

NSString sub_100009538()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E10 = result;
  return result;
}

NSString sub_100009574()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E18 = result;
  return result;
}

NSString sub_1000095B0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E20 = result;
  return result;
}

NSString sub_1000095E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E28 = result;
  return result;
}

NSString sub_100009628()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E30 = result;
  return result;
}

NSString sub_100009668()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E38 = result;
  return result;
}

NSString sub_1000096A4()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E40 = result;
  return result;
}

NSString sub_1000096D8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E48 = result;
  return result;
}

NSString sub_100009710()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E50 = result;
  return result;
}

NSString sub_100009748()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E58 = result;
  return result;
}

NSString sub_100009780()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E60 = result;
  return result;
}

NSString sub_1000097B8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E68 = result;
  return result;
}

NSString sub_1000097F0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E70 = result;
  return result;
}

NSString sub_100009828()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E78 = result;
  return result;
}

NSString sub_100009860()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E80 = result;
  return result;
}

NSString sub_100009898()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E88 = result;
  return result;
}

NSString sub_1000098D0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E90 = result;
  return result;
}

NSString sub_100009908()
{
  result = String._bridgeToObjectiveC()();
  qword_100276E98 = result;
  return result;
}

NSString sub_100009940()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EA0 = result;
  return result;
}

NSString sub_100009978()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EA8 = result;
  return result;
}

NSString sub_1000099B0()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EB0 = result;
  return result;
}

NSString sub_1000099E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EB8 = result;
  return result;
}

NSString sub_100009A20()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EC0 = result;
  return result;
}

NSString sub_100009A5C()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EC8 = result;
  return result;
}

NSString sub_100009A90()
{
  result = String._bridgeToObjectiveC()();
  qword_100276ED0 = result;
  return result;
}

NSString sub_100009AC8()
{
  result = String._bridgeToObjectiveC()();
  qword_100276ED8 = result;
  return result;
}

NSString sub_100009AFC()
{
  result = String._bridgeToObjectiveC()();
  qword_100276EE0 = result;
  return result;
}

uint64_t sub_100009B2C(uint64_t a1)
{
  v2 = v1;
  ObservationRegistrar.init()();
  sub_10000F384(a1, v1 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID);
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F50);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "WritingToolsAnalytics init", v7, 2u);
  }

  sub_10000F500(a1, &unk_100262450, &qword_1001CFAA0);
  return v2;
}

void sub_100009C54(void *a1)
{
  v2 = v1;
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F34C(v8, qword_100276F50);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136380675;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = sub_10002510C(v14, v15, &v29);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "reportButtonTapped: interactionType: %{private}s", v12, 0xCu);
    sub_10000F4B4(v13);
  }

  v17 = IASignalWritingToolsButtonTapped;
  v18 = IAChannelWritingTools;
  sub_10000F384(v2 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v7);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    sub_10000F500(v7, &unk_100262450, &qword_1001CFAA0);
    v21 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v20 + 8))(v7, v19);
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  v24 = IAPayloadKeyWritingToolsInteractionType;
  *(inited + 32) = IAPayloadKeyWritingToolsInteractionType;
  *(inited + 40) = v9;
  v25 = v9;
  v26 = v24;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 sendSignal:v17 toChannel:v18 withNullableUniqueStringID:v21 withPayload:isa];
}

void sub_100009FE8(char a1)
{
  v2 = v1;
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  if (a1)
  {
    v8 = 0x64657463656C6573;
  }

  else
  {
    v8 = 0x747865546C6C61;
  }

  if (a1)
  {
    v9 = 0xEC00000074786554;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F34C(v10, qword_100276F50);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136380675;
    v15 = sub_10002510C(v8, v9, &v31);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "reportInclusionPolicyChanged: inclusionPolicy: %{private}s", v13, 0xCu);
    sub_10000F4B4(v14);

    if ((a1 & 1) == 0)
    {
LABEL_11:
      if (qword_10025A6B8 != -1)
      {
        swift_once();
      }

      v16 = &qword_100276EC8;
      goto LABEL_18;
    }
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (qword_10025A6B0 != -1)
  {
    swift_once();
  }

  v16 = &qword_100276EC0;
LABEL_18:
  v17 = qword_10025A4F0;
  v18 = *v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_100276D00;
  v20 = IAChannelWritingTools;
  sub_10000F384(v2 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v7);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    sub_10000F500(v7, &unk_100262450, &qword_1001CFAA0);
    v23 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v22 + 8))(v7, v21);
    v23 = String._bridgeToObjectiveC()();
  }

  v24 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  if (qword_10025A540 != -1)
  {
    swift_once();
  }

  v26 = qword_100276D50;
  *(inited + 32) = qword_100276D50;
  *(inited + 40) = v18;
  v27 = v18;
  v28 = v26;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v24 sendSignal:v19 toChannel:v20 withNullableUniqueStringID:v23 withPayload:isa];
}

void sub_10000A4AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v36 - v10;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000F34C(v12, qword_100276F50);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v38 = v4;
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v15 = 136643075;
    v37 = v11;
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      a1 = 7104878;
      v16 = 0xE300000000000000;
    }

    v17 = sub_10002510C(a1, v16, &v39);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2085;

    v18 = Array.description.getter();
    v20 = v19;

    v11 = v37;
    v21 = sub_10002510C(v18, v20, &v39);
    v4 = v38;

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "reportSuggestionChosen: suggestionPrompt: %{sensitive}s suggestions: %{sensitive}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v22 = sub_100005794(_swiftEmptyArrayStorage);
  if (a2)
  {
    if (qword_10025A548 != -1)
    {
      swift_once();
    }

    v23 = qword_100276D58;
    v24 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v22;
    sub_1001A9924(v24, v23, isUniquelyReferenced_nonNull_native);

    v22 = v39;
  }

  if (a3)
  {
    if (qword_10025A558 != -1)
    {
      swift_once();
    }

    v26 = qword_100276D68;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v22;
    sub_1001A9924(isa, v26, v28);
  }

  if (qword_10025A500 != -1)
  {
    swift_once();
  }

  v29 = qword_100276D10;
  v30 = IAChannelWritingTools;
  sub_10000F384(v4 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v11);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) == 1)
  {
    sub_10000F500(v11, &unk_100262450, &qword_1001CFAA0);
    v33 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v32 + 8))(v11, v31);
    v33 = String._bridgeToObjectiveC()();
  }

  v34 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v34 sendSignal:v29 toChannel:v30 withNullableUniqueStringID:v33 withPayload:v35];
}

void sub_10000A9C0(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v68 = a6;
  v65 = a3;
  v66 = a5;
  LODWORD(v15) = a2;
  v17 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v60 - v19;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v67 = a9;
  v21 = type metadata accessor for Logger();
  sub_10000F34C(v21, qword_100276F50);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v64 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v62 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v63 = v15;
    v15 = v27;
    v69 = v27;
    *v26 = 134284547;
    if (v63)
    {
      v28 = 0;
    }

    else
    {
      v28 = a1;
    }

    *(v26 + 4) = v28;
    *(v26 + 12) = 2049;
    v29 = v65;
    if (a4)
    {
      v29 = 0;
    }

    *(v26 + 14) = v29;
    *(v26 + 22) = 2049;
    v30 = v66;
    if (v68)
    {
      v30 = 0;
    }

    *(v26 + 24) = v30;
    *(v26 + 32) = 2049;
    if (a8)
    {
      v31 = 0;
    }

    else
    {
      v31 = a7;
    }

    *(v26 + 34) = v31;
    *(v26 + 42) = 2085;
    v61 = a8;
    if (a10)
    {
      v32 = v67;
    }

    else
    {
      v32 = 7104878;
    }

    v33 = a4;
    if (a10)
    {
      v34 = a10;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_10002510C(v32, v34, &v69);
    a4 = v33;

    *(v26 + 44) = v35;
    LOBYTE(a8) = v61;
    _os_log_impl(&_mh_execute_header, v22, v23, "reportAttachmentsModified: numSelectedPhotos: %{private}ld numSelectedFiles: %{private}ld numRemovedPhotos: %{private}ld numRemovedFiles: %{private}ld slotID: %{sensitive}s", v26, 0x34u);
    sub_10000F4B4(v15);
    LOBYTE(v15) = v63;

    v11 = v62;
  }

  v36 = sub_100005794(&_swiftEmptyArrayStorage);
  if (v15)
  {
    if (a4)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v37 = a4;
    if (qword_10025A560 != -1)
    {
      swift_once();
    }

    v38 = qword_100276D70;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v36;
    sub_1001A9924(isa, v38, isUniquelyReferenced_nonNull_native);

    v36 = v69;
    if (v37)
    {
LABEL_23:
      if (v68)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  if (qword_10025A568 != -1)
  {
    swift_once();
  }

  v41 = qword_100276D78;
  v42 = Int._bridgeToObjectiveC()().super.super.isa;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v36;
  sub_1001A9924(v42, v41, v43);

  v36 = v69;
  if (v68)
  {
LABEL_24:
    if (a8)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (qword_10025A570 != -1)
  {
    swift_once();
  }

  v44 = qword_100276D80;
  v45 = Int._bridgeToObjectiveC()().super.super.isa;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v36;
  sub_1001A9924(v45, v44, v46);

  v36 = v69;
  if (a8)
  {
LABEL_25:
    if (!a10)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (qword_10025A578 != -1)
  {
    swift_once();
  }

  v47 = qword_100276D88;
  v48 = Int._bridgeToObjectiveC()().super.super.isa;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v36;
  sub_1001A9924(v48, v47, v49);

  v36 = v69;
  if (a10)
  {
LABEL_39:
    if (qword_10025A580 != -1)
    {
      swift_once();
    }

    v50 = qword_100276D90;
    v51 = String._bridgeToObjectiveC()();
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v69 = v36;
    sub_1001A9924(v51, v50, v52);
  }

LABEL_42:
  if (qword_10025A4F8 != -1)
  {
    swift_once();
  }

  v53 = qword_100276D08;
  v54 = IAChannelWritingTools;
  sub_10000F384(v11 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v20);
  v55 = type metadata accessor for UUID();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v20, 1, v55) == 1)
  {
    sub_10000F500(v20, &unk_100262450, &qword_1001CFAA0);
    v57 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v56 + 8))(v20, v55);
    v57 = String._bridgeToObjectiveC()();
  }

  v58 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v58 sendSignal:v53 toChannel:v54 withNullableUniqueStringID:v57 withPayload:v59];
}

void sub_10000B06C(void *a1)
{
  v2 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v53 - v4;
  if (qword_10025A6F8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    v59 = sub_10000F34C(v6, qword_100276F50);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "reportSlotFormShown", v9, 2u);
    }

    v54 = v5;

    v5 = a1[2];
    if (!v5)
    {
      break;
    }

    v10 = sub_10000341C(&qword_10025AC60, &qword_1001CE930);
    v11 = a1 + 6;
    v64 = _swiftEmptyArrayStorage;
    *&v12 = 136643331;
    v55 = v12;
    v13 = &unk_10025A000;
    v56 = v10;
    while (1)
    {
      v15 = *(v11 - 2);
      v14 = *(v11 - 1);
      v16 = v11[1];
      v17 = v11[3];
      v18 = v11[4];
      v60 = *v11;
      v61 = v17;
      v19 = v11[5];

      v62 = v19;

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      v22 = os_log_type_enabled(v20, v21);
      v63 = v15;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v58 = v5;
        v24 = v23;
        v57 = swift_slowAlloc();
        v65 = v57;
        *v24 = v55;

        v25 = v13;
        v26 = sub_10002510C(v15, v14, &v65);

        *(v24 + 4) = v26;
        *(v24 + 12) = 2085;

        v27 = sub_10002510C(v60, v16, &v65);

        *(v24 + 14) = v27;
        *(v24 + 22) = 2085;
        v13 = v25;

        v28 = sub_10002510C(v61, v18, &v65);

        *(v24 + 24) = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "reportSlotFormShown: slot: %{sensitive}s query: %{sensitive}s response: %{sensitive}s", v24, 0x20u);
        swift_arrayDestroy();

        v5 = v58;
      }

      if (v13[180] != -1)
      {
        swift_once();
      }

      v66 = qword_100276DB0;
      v29 = qword_100276DB0;
      v67 = String._bridgeToObjectiveC()();

      v30 = static _DictionaryStorage.allocate(capacity:)();

      v31 = v67;
      a1 = v66;
      v32 = v31;
      v33 = sub_100005118(a1);
      if (v34)
      {
        break;
      }

      v30[(v33 >> 6) + 8] |= 1 << v33;
      *(v30[6] + 8 * v33) = a1;
      *(v30[7] + 8 * v33) = v32;
      v35 = v30[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_28;
      }

      v30[2] = v37;

      sub_10000F500(&v66, &qword_10025B1A0, &unk_1001D45A0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_10017D590(0, v64[2] + 1, 1, v64);
      }

      v39 = v64[2];
      v38 = v64[3];
      if (v39 >= v38 >> 1)
      {
        v64 = sub_10017D590((v38 > 1), v39 + 1, 1, v64);
      }

      v40 = v64;
      v64[2] = v39 + 1;
      v40[v39 + 4] = v30;
      v11 += 8;
      if (!--v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v64 = _swiftEmptyArrayStorage;
LABEL_19:
  if (qword_10025A508 != -1)
  {
    swift_once();
  }

  v41 = qword_100276D18;
  v42 = IAChannelWritingTools;
  v43 = v54;
  sub_10000F384(v53 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v54);
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_10000F500(v43, &unk_100262450, &qword_1001CFAA0);
    v46 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v45 + 8))(v43, v44);
    v46 = String._bridgeToObjectiveC()();
  }

  v47 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  if (qword_10025A588 != -1)
  {
    swift_once();
  }

  v49 = qword_100276D98;
  *(inited + 32) = qword_100276D98;
  v50 = v49;
  sub_10000341C(&unk_10025B1B0, &qword_1001CFA68);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 40) = isa;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v52 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v47 sendSignal:v41 toChannel:v42 withNullableUniqueStringID:v46 withPayload:v52];
}

void sub_10000B7B0(int a1, void *a2)
{
  LODWORD(v3) = a1;
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v75 - v6;
  if (qword_10025A6F8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    v81 = sub_10000F34C(v8, qword_100276F50);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67174657;
      *(v11 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "reportSlotFormCompleted: slotsUpdated: %{BOOL,private}d", v11, 8u);
    }

    v76 = v7;
    v77 = v3;

    v7 = a2[2];
    if (!v7)
    {
      break;
    }

    v80 = sub_10000341C(&qword_10025AC60, &qword_1001CE930);
    v86 = _swiftEmptyArrayStorage;
    v12 = (a2 + 6);
    *&v13 = 136643331;
    v78 = v13;
    while (1)
    {
      v15 = *(v12 - 2);
      v14 = *(v12 - 1);
      v16 = *(v12 + 1);
      v82 = *v12;
      v83 = v12[16];
      v17 = *(v12 + 3);
      v18 = *(v12 + 4);
      v19 = *(v12 + 5);

      v85 = v19;

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      v22 = os_log_type_enabled(v20, v21);
      v84 = v15;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v79 = v7;
        v24 = v23;
        v87 = swift_slowAlloc();
        *v24 = v78;

        v25 = sub_10002510C(v15, v14, &v87);
        v26 = v17;
        v27 = v25;

        *(v24 + 4) = v27;
        *(v24 + 12) = 2085;

        v28 = sub_10002510C(v82, v16, &v87);

        *(v24 + 14) = v28;
        *(v24 + 22) = 2085;

        v29 = sub_10002510C(v26, v18, &v87);

        *(v24 + 24) = v29;
        _os_log_impl(&_mh_execute_header, v20, v21, "reportSlotFormCompleted: slot: %{sensitive}s query: %{sensitive}s response: %{sensitive}s", v24, 0x20u);
        swift_arrayDestroy();

        v7 = v79;
      }

      if (v83)
      {
        if (v83 == 1)
        {
          v30 = &qword_100276ED8;
          if (qword_10025A6C8 != -1)
          {
            swift_once();
            v30 = &qword_100276ED8;
          }
        }

        else
        {
          v30 = &qword_100276EE0;
          if (qword_10025A6D0 != -1)
          {
            swift_once();
            v30 = &qword_100276EE0;
          }
        }
      }

      else
      {
        v30 = &qword_100276ED0;
        if (qword_10025A6C0 != -1)
        {
          swift_once();
          v30 = &qword_100276ED0;
        }
      }

      v31 = qword_10025A5A0;
      v32 = *v30;
      if (v31 != -1)
      {
        swift_once();
      }

      v88 = qword_100276DB0;
      v33 = qword_100276DB0;
      v89 = String._bridgeToObjectiveC()();
      if (qword_10025A5B0 != -1)
      {
        swift_once();
      }

      v90 = qword_100276DC0;
      v34 = qword_100276DC0;
      v91 = String._bridgeToObjectiveC()();
      if (qword_10025A5A8 != -1)
      {
        swift_once();
      }

      v35 = qword_100276DB8;
      v92 = qword_100276DB8;
      v93 = v32;
      v3 = v32;
      v36 = v35;

      v37 = static _DictionaryStorage.allocate(capacity:)();

      v38 = v89;
      a2 = v88;
      v39 = v38;
      v40 = sub_100005118(a2);
      if (v41)
      {
        break;
      }

      v42 = v37 + 8;
      *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v40;
      *(v37[6] + 8 * v40) = a2;
      *(v37[7] + 8 * v40) = v39;
      v43 = v37[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_46;
      }

      v37[2] = v45;
      v46 = v91;
      a2 = v90;
      v47 = v46;
      v48 = sub_100005118(a2);
      if (v49)
      {
        break;
      }

      *(v42 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      *(v37[6] + 8 * v48) = a2;
      *(v37[7] + 8 * v48) = v47;
      v50 = v37[2];
      v44 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v44)
      {
        goto LABEL_46;
      }

      v37[2] = v51;
      v52 = v93;
      a2 = v92;
      v53 = v52;
      v54 = sub_100005118(a2);
      if (v55)
      {
        break;
      }

      *(v42 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      *(v37[6] + 8 * v54) = a2;
      *(v37[7] + 8 * v54) = v53;
      v56 = v37[2];
      v44 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v44)
      {
        goto LABEL_46;
      }

      v37[2] = v57;

      sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_10017D590(0, v86[2] + 1, 1, v86);
      }

      v59 = v86[2];
      v58 = v86[3];
      if (v59 >= v58 >> 1)
      {
        v86 = sub_10017D590((v58 > 1), v59 + 1, 1, v86);
      }

      v60 = v86;
      v86[2] = v59 + 1;
      v60[v59 + 4] = v37;
      v12 += 64;
      if (!--v7)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_35:
  if (qword_10025A510 != -1)
  {
    swift_once();
  }

  v61 = qword_100276D20;
  v62 = v76;
  sub_10000F384(v75[1] + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v76);
  v63 = type metadata accessor for UUID();
  v64 = *(v63 - 8);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {
    sub_10000F500(v62, &unk_100262450, &qword_1001CFAA0);
    v65 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v64 + 8))(v62, v63);
    v65 = String._bridgeToObjectiveC()();
  }

  v66 = IAChannelWritingTools;
  v67 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  if (qword_10025A590 != -1)
  {
    swift_once();
  }

  v69 = qword_100276DA0;
  *(inited + 32) = qword_100276DA0;
  v70 = v69;
  *(inited + 40) = Bool._bridgeToObjectiveC()();
  if (qword_10025A598 != -1)
  {
    swift_once();
  }

  v71 = qword_100276DA8;
  *(inited + 48) = qword_100276DA8;
  v72 = v71;
  sub_10000341C(&unk_10025B1B0, &qword_1001CFA68);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 56) = isa;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v74 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v67 sendSignal:v61 toChannel:v66 withNullableUniqueStringID:v65 withPayload:v74];
}

void sub_10000C1CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v64 = a7;
  v65 = a8;
  v63 = a5;
  v16 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v59 - v18;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000F34C(v20, qword_100276F50);
  sub_10000F3F4(a1, a2, a3, a4);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  sub_10000F428(a1, a2, a3, a4);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v62 = v19;
    v24 = v23;
    v59 = swift_slowAlloc();
    v60 = a6;
    v66 = v59;
    *v24 = 136380675;
    sub_100106A3C();
    v61 = v10;
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 key];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v33 = v32;

    v10 = v61;
    v34 = sub_10002510C(v27, v33, &v66);
    a4 = v31;
    a3 = v30;
    a2 = v29;
    a1 = v28;

    *(v24 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "reportResultsRequested: mode: %{private}s", v24, 0xCu);
    sub_10000F4B4(v59);
    a6 = v60;

    v19 = v62;
  }

  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  v36 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v37 = v36;
  v38 = sub_10000F174(a1, a2, a3, a4);
  *(inited + 40) = v38;
  v39 = v38;
  v40 = sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  if (a6)
  {
    if (qword_10025A548 != -1)
    {
      swift_once();
    }

    v41 = qword_100276D58;
    v42 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v40;
    sub_1001A9924(v42, v41, isUniquelyReferenced_nonNull_native);

    v40 = v66;
  }

  if (v65)
  {
    if (qword_10025A550 != -1)
    {
      swift_once();
    }

    v44 = qword_100276D60;
    v45 = String._bridgeToObjectiveC()();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v40;
    sub_1001A9924(v45, v44, v46);

    v40 = v66;
  }

  if (a9 != 2)
  {
    if (a9)
    {
      if (qword_10025A6B0 != -1)
      {
        swift_once();
      }

      v47 = &qword_100276EC0;
    }

    else
    {
      if (qword_10025A6B8 != -1)
      {
        swift_once();
      }

      v47 = &qword_100276EC8;
    }

    v48 = qword_10025A540;
    v49 = *v47;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = qword_100276D50;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v40;
    sub_1001A9924(v49, v50, v51);
  }

  v52 = IASignalWritingToolsResultsRequested;
  v53 = IAChannelWritingTools;
  sub_10000F384(v10 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v19);
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v19, 1, v54) == 1)
  {
    sub_10000F500(v19, &unk_100262450, &qword_1001CFAA0);
    v56 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v55 + 8))(v19, v54);
    v56 = String._bridgeToObjectiveC()();
  }

  v57 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v57 sendSignal:v52 toChannel:v53 withNullableUniqueStringID:v56 withPayload:isa];
}

void sub_10000C830(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, int a6)
{
  v7 = v6;
  v90 = a5;
  v13 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v79 = &v78 - v15;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000F34C(v16, qword_100276F50);
  sub_10000F3F4(a1, a2, a3, a4);
  v87 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  sub_10000F428(a1, a2, a3, a4);
  v20 = os_log_type_enabled(v18, v19);
  v81 = a2;
  v80 = a1;
  v78 = v7;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v95[0] = v22;
    *v21 = 136380675;
    sub_100106A3C();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 key];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10002510C(v25, v27, v95);

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "reportActionSelected: mode: %{private}s", v21, 0xCu);
    sub_10000F4B4(v22);
  }

  v84 = a6;
  v83 = a4;
  v82 = a3;
  if (!v90)
  {
    goto LABEL_20;
  }

  if (v90 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_8;
    }

LABEL_20:
    v92 = 0xE000000000000000;
    goto LABEL_21;
  }

  v30 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v30 < 1)
  {
    __break(1u);
    return;
  }

  v31 = 0;
  v32 = 0;
  v88 = v90 & 0xC000000000000001;
  v92 = 0xE000000000000000;
  p_name = (&stru_100256FF8 + 8);
  v34 = (&stru_100256FF8 + 8);
  *&v29 = 134218496;
  v85 = v29;
  v89 = v30;
  do
  {
    v91 = v31;
    if (v88)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v41 = *(v90 + 8 * v32 + 32);
    }

    v42 = v41;
    [v41 range];
    v43 = [v42 p_name[368]];
    v44 = [v43 v34[369]];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Range<>.init(_:in:)();
    LOBYTE(v43) = v45;

    if (v43)
    {
      v46 = p_name;
      v47 = [v42 p_name[368]];
      v48 = [v47 v34[369]];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v49;

      v50 = v42;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = v85;
        v86 = v52;
        *(v53 + 4) = [v50 range];
        *(v53 + 12) = 2048;
        [v50 range];
        *(v53 + 14) = v54;
        *(v53 + 22) = 2048;
        v55 = [v50 v46[368]];
        v56 = [v55 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = String.count.getter();

        *(v53 + 24) = v57;

        _os_log_impl(&_mh_execute_header, v51, v86, "context.range (%ld, %ld out of bounds (%ld!", v53, 0x20u);
      }

      else
      {
      }
    }

    else
    {
      v35 = [v42 p_name[368]];
      v36 = [v35 v34[369]];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.subscript.getter();

      v37 = static String._fromSubstring(_:)();
      v39 = v38;
    }

    ++v32;
    v95[0] = v37;
    v95[1] = v39;
    v93 = v91;
    v94 = v92;
    v93 = String.init<A>(_:)();
    v94 = v40;
    String.append<A>(contentsOf:)();

    v31 = v93;
    v92 = v94;
    p_name = &stru_100256FF8.name;
    v34 = &stru_100256FF8.name;
  }

  while (v89 != v32);
LABEL_21:
  v58 = IASignalWritingToolsActionSelected;
  v59 = IAChannelWritingTools;
  v60 = v79;
  sub_10000F384(v78 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v79);
  v61 = type metadata accessor for UUID();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v60, 1, v61) == 1)
  {
    sub_10000F500(v60, &unk_100262450, &qword_1001CFAA0);
    v63 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v62 + 8))(v60, v61);
    v63 = String._bridgeToObjectiveC()();
  }

  v64 = v83;
  v65 = v82;
  v66 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  v68 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v69 = v68;
  v70 = sub_10000F174(v80, v81, v65, v64);
  v71 = IAPayloadKeyWritingToolsInputText;
  *(inited + 40) = v70;
  *(inited + 48) = v71;
  v72 = v70;
  v73 = v71;
  v74 = String._bridgeToObjectiveC()();

  *(inited + 56) = v74;
  if (qword_10025A538 != -1)
  {
    swift_once();
  }

  v75 = qword_100276D48;
  *(inited + 64) = qword_100276D48;
  v76 = v75;
  *(inited + 72) = Bool._bridgeToObjectiveC()();
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v66 sendSignal:v58 toChannel:v59 withNullableUniqueStringID:v63 withPayload:isa];
}

void sub_10000D118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v99 = a6;
  v11 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v90 - v13;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000F34C(v15, qword_100276F50);

  sub_10000F3F4(a2, a3, a4, a5);
  v98 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  sub_10000F428(a2, a3, a4, a5);
  v19 = os_log_type_enabled(v17, v18);
  v100 = a3;
  v96 = v14;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v102 = v101;
    *v20 = 136643075;
    v21 = Dictionary.description.getter();
    v22 = a4;
    v23 = a5;
    v25 = sub_10002510C(v21, v24, &v102);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2081;
    sub_100106A3C();
    v26 = String._bridgeToObjectiveC()();

    v27 = [v26 key];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v28;
    a3 = v100;
    v32 = sub_10002510C(v31, v30, &v102);

    *(v20 + 14) = v32;
    a5 = v23;
    a4 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "reportResultsGenerated: resultOptions: %{sensitive}s mode: %{private}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v33 = sub_10009D1E0(a1);
  v35 = v34;
  v92 = sub_10009D508(a1);
  v94 = v36;
  v101 = sub_10009D5C4(a1);
  v37 = sub_10009D5D0(a1);
  sub_10000F3F4(a2, a3, a4, a5);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  sub_10000F428(a2, a3, a4, a5);
  v40 = os_log_type_enabled(v38, v39);
  v97 = v35;
  v98 = v37;
  v93 = v33;
  if (!v40)
  {

    v51 = v96;
    v50 = v37;
    if (v99)
    {
      goto LABEL_7;
    }

LABEL_13:
    v53 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v41 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  *v41 = 136643075;
  *(v41 + 4) = sub_10002510C(v33, v35, &v102);
  *(v41 + 12) = 2081;
  sub_100106A3C();
  v91 = a2;
  v42 = a4;
  v43 = a5;
  v44 = String._bridgeToObjectiveC()();

  v45 = [v44 key];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = sub_10002510C(v46, v48, &v102);
  v50 = v98;

  *(v41 + 14) = v49;
  a5 = v43;
  a4 = v42;
  a2 = v91;
  _os_log_impl(&_mh_execute_header, v38, v39, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v41, 0x16u);
  swift_arrayDestroy();

  v51 = v96;
  if ((v99 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_10025A5D0 != -1)
  {
    swift_once();
  }

  v52 = qword_100276DE0;
  v53 = sub_10017D6C4(0, 1, 1, _swiftEmptyArrayStorage);
  v55 = v53[2];
  v54 = v53[3];
  if (v55 >= v54 >> 1)
  {
    v53 = sub_10017D6C4((v54 > 1), v55 + 1, 1, v53);
  }

  v53[2] = v55 + 1;
  v53[v55 + 4] = v52;
LABEL_14:
  if ((v99 & 2) != 0)
  {
    if (qword_10025A5D8 != -1)
    {
      swift_once();
    }

    v56 = qword_100276DE8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_10017D6C4(0, v53[2] + 1, 1, v53);
    }

    v58 = v53[2];
    v57 = v53[3];
    if (v58 >= v57 >> 1)
    {
      v53 = sub_10017D6C4((v57 > 1), v58 + 1, 1, v53);
    }

    v53[2] = v58 + 1;
    v53[v58 + 4] = v56;
  }

  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  if (qword_10025A528 != -1)
  {
    swift_once();
  }

  v60 = qword_100276D38;
  *(inited + 32) = qword_100276D38;
  v61 = v60;
  v62 = String._bridgeToObjectiveC()();

  v63 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 40) = v62;
  *(inited + 48) = v63;
  v64 = v63;
  v65 = sub_10000F174(a2, v100, a4, a5);
  *(inited + 56) = v65;
  v66 = qword_10025A530;
  v67 = v65;
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = qword_100276D40;
  *(inited + 64) = qword_100276D40;
  type metadata accessor for IAPayloadValue(0);
  v69 = v68;
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(inited + 72) = isa;
  v71 = sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  if (v94)
  {
    v72 = IAPayloadKeyWritingToolsInputLanguage;
    v73 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v71;
    sub_1001A9924(v73, v72, isUniquelyReferenced_nonNull_native);

    v71 = v102;
  }

  if (v101)
  {
    v75 = qword_10025A5B8;
    v76 = v101;
    if (v75 != -1)
    {
      swift_once();
    }

    v77 = qword_100276DC8;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v71;
    sub_1001A9924(v76, v77, v78);

    v71 = v102;
  }

  if (v50)
  {
    v79 = qword_10025A5C0;
    v80 = v50;
    if (v79 != -1)
    {
      swift_once();
    }

    v81 = qword_100276DD0;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v71;
    sub_1001A9924(v80, v81, v82);
  }

  v83 = IASignalWritingToolsResultsGenerated;
  v84 = IAChannelWritingTools;
  sub_10000F384(v95 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v51);
  v85 = type metadata accessor for UUID();
  v86 = *(v85 - 8);
  if ((*(v86 + 48))(v51, 1, v85) == 1)
  {
    sub_10000F500(v51, &unk_100262450, &qword_1001CFAA0);
    v87 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v86 + 8))(v51, v85);
    v87 = String._bridgeToObjectiveC()();
  }

  v88 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  v89 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v88 sendSignal:v83 toChannel:v84 withNullableUniqueStringID:v87 withPayload:v89];
}

void sub_10000DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v12 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276F50);
  swift_errorRetain();
  sub_10000F3F4(a2, a3, a4, a5);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  sub_10000F428(a2, a3, a4, a5);
  v19 = os_log_type_enabled(v17, v18);
  v52 = a5;
  v51 = a1;
  if (v19)
  {
    v50 = v5;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v23 = 136643075;
    if (a1)
    {
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = v25;
    }

    else
    {
      v26 = 0xE400000000000000;
      v24 = 1701736270;
    }

    v27 = sub_10002510C(v24, v26, &v53);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2081;
    sub_100106A3C();
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 key];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_10002510C(v30, v32, &v53);

    *(v23 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v17, v18, "reportResultsFailed: error: %{sensitive}s mode: %{private}s", v23, 0x16u);
    swift_arrayDestroy();

    a4 = v22;
    a3 = v21;
    a2 = v20;

    v6 = v50;
  }

  else
  {
  }

  v34 = IASignalWritingToolsResultsFailed;
  v35 = IAChannelWritingTools;
  sub_10000F384(v6 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v15);
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v15, 1, v36) == 1)
  {
    sub_10000F500(v15, &unk_100262450, &qword_1001CFAA0);
    v38 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v37 + 8))(v15, v36);
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v41 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v42 = v41;
  v43 = sub_10000F174(a2, a3, a4, v52);
  v44 = IAPayloadKeyWritingToolsFailureReason;
  *(inited + 40) = v43;
  *(inited + 48) = v44;
  v45 = v43;
  v46 = v44;
  *(inited + 56) = sub_10000F560(v51);
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v39 sendSignal:v34 toChannel:v35 withNullableUniqueStringID:v38 withPayload:isa];
}

void sub_10000E064(void *a1)
{
  v2 = v1;
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26[-v6];
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F34C(v8, qword_100276F50);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138477827;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "reportResultsAccepted: interactionType: %{private}@", v12, 0xCu);
    sub_10000F500(v13, &unk_10025D580, &qword_1001CFA60);
  }

  v15 = IASignalWritingToolsResultsAccepted;
  v16 = IAChannelWritingTools;
  sub_10000F384(v2 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v7);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_10000F500(v7, &unk_100262450, &qword_1001CFAA0);
    v19 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v18 + 8))(v7, v17);
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  v22 = IAPayloadKeyWritingToolsInteractionType;
  *(inited + 32) = IAPayloadKeyWritingToolsInteractionType;
  *(inited + 40) = v9;
  v23 = v9;
  v24 = v22;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 sendSignal:v15 toChannel:v16 withNullableUniqueStringID:v19 withPayload:isa];
}

void sub_10000E3E4(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F34C(v10, qword_100276F50);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138478083;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 1025;
    *(v14 + 14) = a2 & 1;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "reportPanelAppeared: interactionType: %{private}@ editable: %{BOOL,private}d", v14, 0x12u);
    sub_10000F500(v15, &unk_10025D580, &qword_1001CFA60);
  }

  v34 = IASignalWritingToolsPanelAppeared;
  v33 = IAChannelWritingTools;
  sub_10000F384(v3 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v9);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_10000F500(v9, &unk_100262450, &qword_1001CFAA0);
    v19 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v18 + 8))(v9, v17);
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  v22 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 16) = xmmword_1001CF9F0;
  v23 = IAPayloadKeyWritingToolsUI;
  *(inited + 40) = v11;
  *(inited + 48) = v23;
  v24 = IAPayloadValueWritingToolsUIPanel;
  *(inited + 56) = IAPayloadValueWritingToolsUIPanel;
  v25 = qword_10025A538;
  v26 = v11;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v30 = qword_100276D48;
  *(inited + 64) = qword_100276D48;
  v31 = v30;
  *(inited + 72) = Bool._bridgeToObjectiveC()();
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 sendSignal:v34 toChannel:v33 withNullableUniqueStringID:v19 withPayload:isa];
}

void sub_10000E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v44[1] = a1;
  v44[2] = a2;
  v12 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v44 - v14;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276F50);
  sub_10000F3F4(a3, a4, a5, a6);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  sub_10000F428(a3, a4, a5, a6);
  v19 = os_log_type_enabled(v17, v18);
  v46 = a6;
  v45 = a5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44[0] = v7;
    v22 = v21;
    v47 = v21;
    *v20 = 136380675;
    sub_100106A3C();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 key];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10002510C(v25, v27, &v47);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "reportHandoffRequested: mode: %{private}s", v20, 0xCu);
    sub_10000F4B4(v22);
    v7 = v44[0];
  }

  if (qword_10025A518 != -1)
  {
    swift_once();
  }

  v29 = qword_100276D28;
  v30 = IAChannelWritingTools;
  sub_10000F384(v7 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v15);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    sub_10000F500(v15, &unk_100262450, &qword_1001CFAA0);
    v33 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v32 + 8))(v15, v31);
    v33 = String._bridgeToObjectiveC()();
  }

  v34 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  if (qword_10025A528 != -1)
  {
    swift_once();
  }

  v36 = qword_100276D38;
  *(inited + 32) = qword_100276D38;
  v37 = v36;
  v38 = String._bridgeToObjectiveC()();
  v39 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 40) = v38;
  *(inited + 48) = v39;
  v40 = v39;
  v41 = sub_10000F174(a3, a4, v45, v46);
  *(inited + 56) = v41;
  v42 = v41;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_10000F45C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v34 sendSignal:v29 toChannel:v30 withNullableUniqueStringID:v33 withPayload:isa];
}

void sub_10000ECC4()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  if (qword_10025A6F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F34C(v6, qword_100276F50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "reportHandoffStarted", v9, 2u);
  }

  if (qword_10025A520 != -1)
  {
    swift_once();
  }

  v10 = qword_100276D30;
  v11 = IAChannelWritingTools;
  sub_10000F384(v1 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, v5);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_10000F500(v5, &unk_100262450, &qword_1001CFAA0);
    v14 = 0;
  }

  else
  {
    UUID.uuidString.getter();
    (*(v13 + 8))(v5, v12);
    v14 = String._bridgeToObjectiveC()();
  }

  [objc_opt_self() sendSignal:v10 toChannel:v11 withNullableUniqueStringID:v14 withPayload:0];
}

uint64_t sub_10000EF40()
{
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics_analyticsUUID, &unk_100262450, &qword_1001CFAA0);
  v1 = OBJC_IVAR____TtC21WritingToolsUIService21WritingToolsAnalytics___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WritingToolsAnalytics()
{
  result = qword_10025B050;
  if (!qword_10025B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F050()
{
  sub_10000F11C();
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

void sub_10000F11C()
{
  if (!qword_10025B060)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10025B060);
    }
  }
}

uint64_t sub_10000F174(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (qword_10025A5F0 != -1)
      {
        swift_once();
      }

      v4 = &qword_100276E00;
    }

    else if (a3 | a2 | a1)
    {
      if (a1 != 1 || a3 | a2)
      {
        if (qword_10025A5E8 != -1)
        {
          swift_once();
        }

        v4 = &qword_100276DF8;
      }

      else
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsProofreadingReview;
      }
    }

    else
    {
      if (qword_10025A5E0 != -1)
      {
        swift_once();
      }

      v4 = &qword_100276DF0;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsOpenEndedTone;
      }

      else
      {
        if (qword_10025A5C8 != -1)
        {
          swift_once();
        }

        v4 = &qword_100276DD8;
      }
    }

    else
    {
      v8 = &IAPayloadValueWritingToolsFeatureDetailsBulletsTransform;
      if (a1 != 8)
      {
        v8 = &IAPayloadValueWritingToolsFeatureDetailsTablesTransform;
      }

      if (a1 == 7)
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform;
      }

      else
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v5 = &IAPayloadValueWritingToolsFeatureDetailsMagicRewrite;
    v6 = &IAPayloadValueWritingToolsFeatureDetailsConciseTone;
    v7 = &IAPayloadValueWritingToolsFeatureDetailsFriendlyTone;
    if (a1 != 3)
    {
      v7 = &IAPayloadValueWritingToolsFeatureDetailsProfessionalTone;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = &IAPayloadValueWritingToolsFeatureDetailsProofreadingReview;
    }

    if (a1 <= 1u)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }
  }

  return *v4;
}

uint64_t sub_10000F34C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000F384(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F3F4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_10000F414(result, a2);
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_10000F414(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000F428(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_10000F448(result, a2);
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_10000F448(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10000F45C()
{
  result = qword_10025AF18;
  if (!qword_10025AF18)
  {
    type metadata accessor for IAPayloadKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AF18);
  }

  return result;
}

uint64_t sub_10000F4B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000F500(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000341C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_10000F560(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10000341C(&qword_10025F410, &qword_1001D4370);
    sub_1000081B0(0, &qword_10025B1A8, NSError_ptr);
    if (swift_dynamicCast())
    {
      v1 = [v12 domain];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v3;

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v5 == v4)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          if (qword_10025A628 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E38;
LABEL_11:
          v9 = v8;

          return v9;
        }
      }

      switch([v12 code])
      {
        case 1uLL:
          if (qword_10025A638 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E48;
          break;
        case 2uLL:
          if (qword_10025A640 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E50;
          break;
        case 3uLL:
          if (qword_10025A648 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E58;
          break;
        case 4uLL:
          if (qword_10025A650 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E60;
          break;
        case 5uLL:
          if (qword_10025A658 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E68;
          break;
        case 6uLL:
          if (qword_10025A660 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E70;
          break;
        case 7uLL:
          if (qword_10025A668 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E78;
          break;
        case 8uLL:
          if (qword_10025A670 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E80;
          break;
        case 9uLL:
          if (qword_10025A678 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E88;
          break;
        case 0xAuLL:
          if (qword_10025A680 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E90;
          break;
        case 0xBuLL:
          if (qword_10025A688 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E98;
          break;
        case 0xCuLL:
          if (qword_10025A690 != -1)
          {
            swift_once();
          }

          v8 = qword_100276EA0;
          break;
        case 0xDuLL:
          if (qword_10025A698 != -1)
          {
            swift_once();
          }

          v8 = qword_100276EA8;
          break;
        case 0xEuLL:
          if (qword_10025A6A0 != -1)
          {
            swift_once();
          }

          v8 = qword_100276EB0;
          break;
        case 0xFuLL:
          if (qword_10025A6A8 != -1)
          {
            swift_once();
          }

          v8 = qword_100276EB8;
          break;
        default:
          if (qword_10025A630 != -1)
          {
            swift_once();
          }

          v8 = qword_100276E40;
          break;
      }

      goto LABEL_11;
    }
  }

  if (qword_10025A628 != -1)
  {
    swift_once();
  }

  v11 = qword_100276E38;

  return v11;
}

uint64_t property wrapper backing initializer of WritingToolsView.navigationPath(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

uint64_t property wrapper backing initializer of WritingToolsView.analyticsInstance(uint64_t a1)
{
  sub_1000081F8(a1, v3, &unk_10025B1C0, &unk_1001CFA90);
  sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
  State.init(wrappedValue:)();
  return sub_10000F500(a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t property wrapper backing initializer of WritingToolsView.writingToolsModel()
{
  type metadata accessor for WritingToolsModel();
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);

  return Bindable<A>.init(wrappedValue:)();
}

uint64_t property wrapper backing initializer of WritingToolsView.proofreadingModel()
{
  type metadata accessor for ProofreadingModel();
  State.init(wrappedValue:)();
  return v1;
}

uint64_t property wrapper backing initializer of WritingToolsView.unifiedIconWidth()
{
  sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_10000FE5C()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v3 + 8))(v6, v2);
    v7 = v17;
  }

  if (v7)
  {
    v10 = sub_10016FEDC();

    v11 = (v1 + *(type metadata accessor for WritingToolsView() + 100));
    v12 = *v11;
    v13 = *(v11 + 1);
    LOBYTE(v11) = v11[16];
    LOBYTE(v17) = v12;
    v18 = v13;
    v19 = v11;
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    v14 = v16[7] & v10;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t WritingToolsView.init(writingToolsDelegate:writingToolsModel:hostAppAuditToken:prompt:smartReplyConfiguration:isForEditableContent:wantsInlineEditing:allowedResultOptions:includesTextListMarkers:rewritingModel:proofreadingModel:analyticsUUID:bundleID:sceneID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  LODWORD(v18) = a8;
  v105 = a7;
  v100 = a5;
  v101 = a6;
  v99 = a4;
  v98 = a3;
  v106 = a2;
  v107 = a14;
  v109 = a12;
  v103 = a10;
  v21 = (*(*(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v102 = &v90[-v22];
  v23 = type metadata accessor for NavigationPath();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = (__chkstk_darwin)();
  v28 = &v90[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v30 = &v90[-v29];
  type metadata accessor for CommonUIManager();
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  *a9 = Environment.init<A>(_:)();
  *(a9 + 8) = v31 & 1;
  type metadata accessor for PresentationModel();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
  *(a9 + 16) = Environment.init<A>(_:)();
  *(a9 + 24) = v32 & 1;
  v33 = type metadata accessor for WritingToolsView();
  v34 = v33[6];
  *(a9 + v34) = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  v35 = v33[7];
  swift_unknownObjectWeakInit();
  v36 = v33[17];
  NavigationPath.init()();
  (*(v24 + 16))(v28, v30, v23);
  State.init(wrappedValue:)();
  (*(v24 + 8))(v30, v23);
  v37 = a9 + v33[18];
  v110 = 0;
  v111 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v38 = v113;
  *v37 = v112;
  *(v37 + 16) = v38;
  v39 = v33[19];
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  sub_1000081F8(&v112, &v110, &unk_10025B1C0, &unk_1001CFA90);
  v40 = sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
  v97 = v39;
  v96 = v40;
  State.init(wrappedValue:)();
  sub_10000F500(&v112, &unk_10025B1C0, &unk_1001CFA90);
  v41 = a9 + v33[22];
  v110 = 0;
  LOBYTE(v111) = 1;
  sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
  State.init(wrappedValue:)();
  v42 = BYTE8(v112);
  v43 = v113;
  *v41 = v112;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43;
  v44 = a9 + v33[23];
  LOBYTE(v110) = 0;
  State.init(wrappedValue:)();
  v45 = *(&v112 + 1);
  *v44 = v112;
  *(v44 + 8) = v45;
  v46 = v33[24];
  *(a9 + v46) = swift_getKeyPath();
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  swift_storeEnumTagMultiPayload();
  v47 = a9 + v33[25];
  *v47 = FocusState.init<>()() & 1;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49 & 1;
  v108 = a1;
  if (a1)
  {
    v50 = 7562617;
  }

  else
  {
    v50 = 28526;
  }

  if (a1)
  {
    v51 = 0xE300000000000000;
  }

  else
  {
    v51 = 0xE200000000000000;
  }

  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v94 = a17;
  v93 = a16;
  v92 = a15;
  v104 = a13;
  v52 = a11;
  v53 = type metadata accessor for Logger();
  sub_10000F34C(v53, qword_100276F20);
  v54 = static os_log_type_t.debug.getter();

  v55 = Logger.logObject.getter();

  v56 = os_log_type_enabled(v55, v54);
  v95 = v18;
  if (v56)
  {
    v18 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v91 = a11;
    v58 = v57;
    *&v112 = v57;
    *v18 = 136315138;
    v59 = sub_10002510C(v50, v51, &v112);

    *(v18 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v55, v54, "Initializing WritingToolsView initializing QuestionnaireView with delegate: %s", v18, 0xCu);
    sub_10000F4B4(v58);
    v52 = v91;

    LOBYTE(v18) = v95;
  }

  else
  {
  }

  swift_unknownObjectWeakAssign();
  v60 = v33[20];
  type metadata accessor for WritingToolsModel();
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);

  Bindable<A>.init(wrappedValue:)();
  *(a9 + v33[8]) = v98;
  v61 = (a9 + v33[9]);
  v63 = v100;
  v62 = v101;
  *v61 = v99;
  v61[1] = v63;
  *(a9 + v33[10]) = v62;
  v64 = v33[11];
  LODWORD(v101) = v105 & 1;
  *(a9 + v64) = v105 & 1;
  v65 = v33[12];
  LODWORD(v100) = v18 & 1;
  *(a9 + v65) = v18 & 1;
  v66 = v103;
  *(a9 + v33[13]) = v103;
  *(a9 + v33[14]) = v52 & 1;
  v67 = (a9 + v33[21]);
  v110 = v104;
  type metadata accessor for ProofreadingModel();

  State.init(wrappedValue:)();
  v68 = *(&v112 + 1);
  *v67 = v112;
  v67[1] = v68;
  v69 = v102;
  sub_1000081F8(v107, v102, &unk_100262450, &qword_1001CFAA0);
  v70 = type metadata accessor for WritingToolsAnalytics();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  v73 = sub_100009B2C(v69);
  *(&v113 + 1) = v70;
  v114 = &off_10024B270;
  *&v112 = v73;
  sub_10000F500(a9 + v97, &unk_10025B200, &qword_1001CFB18);
  sub_1000081F8(&v112, &v110, &unk_10025B1C0, &unk_1001CFA90);
  State.init(wrappedValue:)();
  sub_10000F500(&v112, &unk_10025B1C0, &unk_1001CFA90);
  v74 = (a9 + v33[15]);
  v75 = v93;
  *v74 = v92;
  v74[1] = v75;
  v76 = (a9 + v33[16]);
  *v76 = v94;
  v76[1] = a18;
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();

  sub_1000A73A0(v77);

  Bindable.wrappedValue.getter();
  v78 = v112;
  swift_getKeyPath();
  *&v112 = v78;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v79 = *(v78 + 32);

  if (*(v79 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) == v66)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v90[-16] = v79;
    *&v90[-8] = v81;
    *&v112 = v79;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    LOBYTE(v18) = v95;
  }

  Bindable.wrappedValue.getter();
  v82 = v112;
  swift_getKeyPath();
  *&v112 = v82;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v83 = *(v82 + 32);

  if (*(v83 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) == (v18 & 1))
  {
    *(v83 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) = v100;
  }

  else
  {
    v84 = swift_getKeyPath();
    __chkstk_darwin(v84);
    *&v90[-16] = v83;
    v90[-8] = v100;
    *&v112 = v83;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v85 = v112;
  swift_getKeyPath();
  *&v112 = v85;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v86 = *(v85 + 32);

  v87 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent;
  if (*(v86 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) == (v105 & 1))
  {
    sub_10000F500(v107, &unk_100262450, &qword_1001CFAA0);

    swift_unknownObjectRelease();
    *(v86 + v87) = v101;
  }

  else
  {
    v88 = swift_getKeyPath();
    __chkstk_darwin(v88);
    *&v90[-16] = v86;
    v90[-8] = v101;
    *&v112 = v86;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();

    sub_10000F500(v107, &unk_100262450, &qword_1001CFAA0);
  }
}

uint64_t sub_100010CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v78 = sub_10000341C(&qword_10025B2A8, &qword_1001CFC38);
  v3 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = &v65 - v4;
  v5 = sub_10000341C(&qword_10025B650, &qword_1001D0080);
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v73 = &v65 - v7;
  v8 = type metadata accessor for ProofreadingView();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WritingToolsView();
  v14 = (v1 + *(v13 + 84));
  v16 = *v14;
  v15 = v14[1];
  v81 = v16;
  v82 = v15;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v76 = v80;
  v17 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v65 - v19;
  v21 = *(v13 + 68);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v22 = State.projectedValue.getter();
  v23 = *(v13 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002631C(v2, &v65 - v25);
  v26 = *(v23 + 80);
  v27 = swift_allocObject();
  v69 = type metadata accessor for WritingToolsView;
  v71 = (v26 + 16) & ~v26;
  sub_100029074(&v65 - v25, v27 + v71, type metadata accessor for WritingToolsView);
  type metadata accessor for CommonUIManager();
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  *v12 = Environment.init<A>(_:)();
  v12[8] = v28 & 1;
  v29 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v65 - v31;
  v33 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  v34 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v80 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v35 = v82;
  *(v12 + 4) = v81;
  *(v12 + 5) = v35;
  v36 = &v12[v9[10]];
  AccessibilityFocusState.init<>()();
  sub_1000081F8(v20, &v12[v9[9]], &qword_1002632E0, &qword_1001D11A0);
  v80 = v76;
  type metadata accessor for ProofreadingModel();
  State.init(wrappedValue:)();
  v37 = sub_10000F500(v20, &qword_1002632E0, &qword_1001D11A0);
  v38 = v82;
  *(v12 + 2) = v81;
  *(v12 + 3) = v38;
  v39 = &v12[v9[11]];
  *v39 = sub_1000285A4;
  *(v39 + 1) = v27;
  __chkstk_darwin(v37);
  v40 = &v65 - v25;
  v76 = v2;
  sub_10002631C(v2, v40);
  type metadata accessor for MainActor();
  v41 = static MainActor.shared.getter();
  v72 = v24;
  v70 = v26;
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = &protocol witness table for MainActor;
  sub_100029074(v40, v42 + ((v26 + 32) & ~v26), v69);
  v43 = type metadata accessor for TaskPriority();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = &v65 - v46;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v68 = type metadata accessor for _TaskModifier2();
    v69 = &v65;
    v67 = *(v68 - 8);
    v48 = *(v67 + 64);
    __chkstk_darwin(v68);
    v66 = &v65 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v81 = 0xD000000000000039;
    v82 = 0x80000001001E38C0;
    v80 = 106;
    v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v50);

    __chkstk_darwin(v51);
    (*(v44 + 16))(&v65 - v46, &v65 - v46, v43);
    v52 = v66;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v44 + 8))(v47, v43);
    v53 = v73;
    sub_100029074(v12, v73, type metadata accessor for ProofreadingView);
    v54 = sub_10000341C(&qword_10025A938, &qword_1001CE118);
    (*(v67 + 32))(v53 + *(v54 + 36), v52, v68);
  }

  else
  {
    v55 = sub_10000341C(&qword_10025A940, &unk_1001CE120);
    v56 = v43;
    v53 = v73;
    v57 = (v73 + *(v55 + 36));
    v58 = type metadata accessor for _TaskModifier();
    (*(v44 + 32))(&v57[*(v58 + 20)], &v65 - v46, v56);
    *v57 = &unk_1001D0090;
    *(v57 + 1) = v42;
    sub_100029074(v12, v53, type metadata accessor for ProofreadingView);
  }

  v59 = v79;
  v60 = (*(v74 + 32))(v79, v53, v75);
  v61 = v72;
  __chkstk_darwin(v60);
  sub_10002631C(v76, &v65 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v71;
  v63 = swift_allocObject();
  sub_100029074(&v65 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0), v63 + v62, type metadata accessor for WritingToolsView);
  sub_10000341C(&qword_10025B2B0, &qword_1001CFC40);
  sub_100025928();
  sub_100025A68();
  sub_100025ABC();
  View.navigationDestination<A, B>(for:destination:)();

  return sub_10000F500(v59, &qword_10025B2A8, &qword_1001CFC38);
}

void sub_10001160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v64 = a4;
  v65 = a5;
  v63 = a3;
  v66 = a6;
  v9 = a6;
  v10 = type metadata accessor for WritingToolsView();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin(v10);
  v61 = v12;
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v67 = &v56 - v15;
  v16 = type metadata accessor for NavigationPath();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v59 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v9)
  {
    qword_100277028 = a1;
    qword_100277030 = a2;

    qword_10025E340 = 2;
    byte_10025E348 = 0;
  }

  v68 = a1;
  v69 = a2;
  v19 = *(v10 + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v20 = v71[0];
  swift_getKeyPath();
  v71[0] = v20;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v20 + 32);

  swift_getKeyPath();
  v71[0] = v21;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v21 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);

  if (v22 != 1)
  {
    v27 = *(v10 + 28);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v29 = Strong;
    if ([Strong respondsToSelector:"enrollmentBegan"])
    {
      [v29 enrollmentBegan];
    }

    goto LABEL_9;
  }

  v57 = v10;
  v58 = v6;
  Bindable.wrappedValue.getter();
  v23 = v71[0];
  swift_getKeyPath();
  v71[0] = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + 32);

  swift_getKeyPath();
  v71[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v24 + v25, v71, &unk_10025B1C0, &unk_1001CFA90);

  if (v72)
  {
    sub_100028458(v71, v70);
    sub_10000F500(v71, &unk_10025B1C0, &unk_1001CFA90);
    v26 = *sub_100027874(v70, v70[3]);
    sub_10000ECC4();
    sub_10000F4B4(v70);
  }

  else
  {
    sub_10000F500(v71, &unk_10025B1C0, &unk_1001CFA90);
  }

  v30 = v58;
  Bindable.wrappedValue.getter();
  v31 = v71[0];
  swift_getKeyPath();
  v71[0] = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v31 + 32);

  swift_getKeyPath();
  v71[0] = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(v32 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  sub_100170300();

  v34 = [objc_opt_self() currentDevice];
  v35 = [v34 userInterfaceIdiom];

  if (v35 != 1)
  {
    v71[0] = v68;
    v71[1] = v69;
    v71[2] = 1;
    LOBYTE(v72) = 1;
    v40 = *(v57 + 68);

    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.wrappedValue.getter();
    sub_100025A68();
    NavigationPath.append<A>(_:)();

    State.wrappedValue.setter();
    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v67, 1, 1, v41);
    v42 = v30;
    v43 = v62;
    sub_10002631C(v42, v62);
    type metadata accessor for MainActor();

    v44 = v63;
    v45 = v64;
    v46 = v65;
    v47 = v66;
    sub_10002879C(v63, v64, v65, v66);
    v48 = static MainActor.shared.getter();
    v49 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v50 = (v49 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v49 + v61 + 39) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v48;
    *(v52 + 24) = &protocol witness table for MainActor;
    sub_100029074(v43, v52 + v49, type metadata accessor for WritingToolsView);
    v53 = v52 + v50;
    *v53 = v44;
    *(v53 + 8) = v45;
    *(v53 + 16) = v46;
    *(v53 + 24) = v47;
    v54 = (v52 + v51);
    v55 = v69;
    *v54 = v68;
    v54[1] = v55;
    sub_10015C9C8(0, 0, v67, &unk_1001D0120, v52);

    return;
  }

  v36 = *(v57 + 28);
  v37 = swift_unknownObjectWeakLoadStrong();
  v38 = v69;
  if (!v37)
  {
    return;
  }

  v39 = v37;
  if (([v37 respondsToSelector:"handoffFromUCBFromTool:withPrompt:"] & 1) == 0)
  {
LABEL_9:
    swift_unknownObjectRelease();
    return;
  }

  if (v38)
  {
    v38 = String._bridgeToObjectiveC()();
  }

  [v39 handoffFromUCBFromTool:2 withPrompt:v38];
  swift_unknownObjectRelease();
}

uint64_t sub_100011DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100011E78, v5, v4);
}

uint64_t sub_100011E78()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for WritingToolsView() + 84));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100011F4C;

  return sub_1001A2C88();
}

uint64_t sub_100011F4C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_100012090, v5, v4);
}

uint64_t sub_100012090()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000120F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v85 = sub_10000341C(&qword_10025B348, &qword_1001CFC78);
  v3 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v86 = &v74 - v4;
  v5 = sub_10000341C(&qword_10025B670, &qword_1001D0128);
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  __chkstk_darwin(v5);
  v81 = &v74 - v7;
  v8 = type metadata accessor for RewritingView();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WritingToolsView();
  v14 = v13[20];
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v15 = v88;
  swift_getKeyPath();
  v88 = v15;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v84 = *(v15 + 24);

  v16 = v13[17];
  v17 = v9[12];
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.projectedValue.getter();
  v18 = v2 + v13[23];
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v91) = v19;
  v92 = v20;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  v21 = State.projectedValue.getter();
  v78 = v89;
  v79 = v88;
  LODWORD(v77) = v90;
  v22 = *(v13 - 1);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002631C(v2, &v74 - v24);
  v25 = *(v22 + 80);
  v26 = (v25 + 16) & ~v25;
  v75 = swift_allocObject();
  v76 = type metadata accessor for WritingToolsView;
  v27 = sub_100029074(&v74 - v24, v75 + v26, type metadata accessor for WritingToolsView);
  __chkstk_darwin(v27);
  sub_10002631C(v2, &v74 - v24);
  v28 = swift_allocObject();
  v80 = v26;
  v29 = v28 + v26;
  v30 = v28;
  sub_100029074(&v74 - v24, v29, type metadata accessor for WritingToolsView);
  type metadata accessor for CommonUIManager();
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  *v12 = Environment.init<A>(_:)();
  v12[8] = v31 & 1;
  type metadata accessor for WritingToolsModel();
  *(v12 + 2) = Environment.init<A>(_:)();
  v12[24] = v32 & 1;
  type metadata accessor for PresentationModel();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
  *(v12 + 4) = Environment.init<A>(_:)();
  v12[40] = v33 & 1;
  LOBYTE(v91) = 0;
  State.init(wrappedValue:)();
  v34 = v89;
  v12[56] = v88;
  *(v12 + 8) = v34;
  v35 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v74 - v37;
  v39 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  v40 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v91 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v41 = v89;
  *(v12 + 9) = v88;
  *(v12 + 10) = v41;
  v42 = &v12[v9[13]];
  v43 = FocusState.init<>()();
  *v42 = v43 & 1;
  *(v42 + 1) = v44;
  v42[16] = v45 & 1;
  *(v12 + 6) = v84;
  v46 = &v12[v9[14]];
  v47 = v78;
  *v46 = v79;
  *(v46 + 1) = v47;
  v46[16] = v77;
  v48 = &v12[v9[15]];
  v49 = v75;
  *v48 = sub_100028CD0;
  *(v48 + 1) = v49;
  v50 = &v12[v9[16]];
  *v50 = sub_10002B2AC;
  *(v50 + 1) = v30;
  __chkstk_darwin(v43);
  v51 = &v74 - v24;
  v84 = v2;
  sub_10002631C(v2, &v74 - v24);
  type metadata accessor for MainActor();
  v52 = static MainActor.shared.getter();
  v79 = v25;
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = &protocol witness table for MainActor;
  sub_100029074(v51, v53 + ((v25 + 32) & ~v25), v76);
  v54 = type metadata accessor for TaskPriority();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = &v74 - v57;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v76 = type metadata accessor for _TaskModifier2();
    v77 = &v74;
    v75 = *(v76 - 1);
    v59 = *(v75 + 64);
    __chkstk_darwin(v76);
    v74 = &v74 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v88 = 0xD000000000000039;
    v89 = 0x80000001001E38C0;
    v91 = 131;
    v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v23;
    String.append(_:)(v61);

    __chkstk_darwin(v62);
    (*(v55 + 16))(&v74 - v57, &v74 - v57, v54);
    v63 = v74;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v23 = v78;
    (*(v55 + 8))(v58, v54);
    v64 = v81;
    sub_100029074(v12, v81, type metadata accessor for RewritingView);
    v65 = sub_10000341C(&qword_10025A948, &unk_1001D0140);
    (*(v75 + 32))(v64 + *(v65 + 36), v63, v76);
  }

  else
  {
    v66 = sub_10000341C(&unk_10025A950, &qword_1001CE130);
    v64 = v81;
    v67 = (v81 + *(v66 + 36));
    v68 = type metadata accessor for _TaskModifier();
    (*(v55 + 32))(&v67[*(v68 + 20)], &v74 - v57, v54);
    *v67 = &unk_1001D0138;
    *(v67 + 1) = v53;
    sub_100029074(v12, v64, type metadata accessor for RewritingView);
  }

  v69 = v86;
  v70 = (*(v82 + 32))(v86, v64, v83);
  __chkstk_darwin(v70);
  sub_10002631C(v84, &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = v80;
  v72 = swift_allocObject();
  sub_100029074(&v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v72 + v71, type metadata accessor for WritingToolsView);
  sub_10000341C(&qword_10025B2B0, &qword_1001CFC40);
  sub_100025F58();
  sub_100025A68();
  sub_100025ABC();
  View.navigationDestination<A, B>(for:destination:)();

  return sub_10000F500(v69, &qword_10025B348, &qword_1001CFC78);
}

uint64_t sub_100012B9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for WritingToolsView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = *(v7 + 88);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v16 = v24;
  swift_getKeyPath();
  v24 = v16;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v16 + 24);

  sub_100036534(5, a1, a2, 0);

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  sub_10002631C(v3, v10);
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = &protocol witness table for MainActor;
  sub_100029074(v10, v21 + v20, type metadata accessor for WritingToolsView);
  sub_10015C9C8(0, 0, v14, &unk_1001D0158, v21);
}

uint64_t sub_100012E54(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for WritingToolsView() + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v10 + 48);
  v6 = *(v10 + 56);
  v7 = *(v10 + 64);
  v8 = *(v10 + 72);
  sub_10000F3F4(v5, v6, v7, *(v10 + 72));

  sub_10001160C(a1, a2, v5, v6, v7, v8);
  return sub_10000F428(v5, v6, v7, v8);
}

uint64_t sub_100012F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100013034, v5, v4);
}

uint64_t sub_100013034()
{
  v1 = v0[4];
  v2 = *(type metadata accessor for WritingToolsView() + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v3 = v0[2];
  swift_getKeyPath();
  v0[3] = v3;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v3 + 24);

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100013188;

  return sub_1000B6880(1);
}

uint64_t sub_100013188()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10002B2BC, v5, v4);
}

uint64_t sub_1000132CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100013400(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, a3);
  v5 = a2 + *(type metadata accessor for WritingToolsView() + 92);
  v15 = *v5;
  v16 = *(v5 + 8);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  type metadata accessor for PresentationModel();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
  v6 = Environment.init<A>(_:)();
  v8 = v7;
  v9 = static Alignment.center.getter();
  v11 = v10;
  result = sub_10000341C(&qword_10025B2B0, &qword_1001CFC40);
  v13 = a3 + *(result + 36);
  *v13 = v6;
  *(v13 + 8) = v8 & 1;
  *(v13 + 9) = 0;
  *(v13 + 10) = v14;
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  return result;
}

uint64_t sub_100013400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a6;
  v10 = a4;
  v63 = sub_10000341C(&qword_10025B668, &qword_1001D0098);
  v11 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v64 = &v53 - v12;
  v13 = type metadata accessor for CompositionView(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000341C(&unk_10025B300, &qword_1001CFC58);
  v58 = *(v61 - 8);
  v17 = *(v58 + 64);
  __chkstk_darwin(v61);
  v57 = &v53 - v18;
  v62 = sub_10000341C(&qword_10025B5F8, &qword_1001CFFD0);
  v60 = *(v62 - 8);
  v19 = *(v60 + 64);
  __chkstk_darwin(v62);
  v59 = &v53 - v20;
  if (v10 == 1)
  {
    v21 = type metadata accessor for WritingToolsView();
    v22 = v21[17];
    v23 = v13[7];
    sub_10000F414(a1, a2);
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.projectedValue.getter();
    v24 = (a5 + v21[23]);
    v25 = *v24;
    v26 = *(v24 + 1);
    v70 = v25;
    v71 = v26;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.projectedValue.getter();
    v53 = a5;
    v27 = a2;
    v29 = v66;
    v28 = v67;
    v54 = v68;
    v30 = type metadata accessor for CompositionModel(0);
    v31 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    v55 = v30;
    v56 = v31;
    *(v16 + 3) = Environment.init<A>(_:)();
    v16[32] = v32 & 1;
    type metadata accessor for CommonUIManager();
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    *(v16 + 5) = Environment.init<A>(_:)();
    v16[48] = v33 & 1;
    v34 = &v16[v13[9]];
    *v34 = FocusState.init<>()() & 1;
    *(v34 + 1) = v35;
    v34[16] = v36 & 1;
    *v16 = a1;
    *(v16 + 1) = v27;
    v16[16] = a3;
    v37 = &v16[v13[8]];
    *v37 = v29;
    *(v37 + 1) = v28;
    v37[16] = v54;
    v38 = v21[20];
    sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
    Bindable.wrappedValue.getter();
    v39 = type metadata accessor for WritingToolsModel();
    v40 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView);
    v41 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    v42 = v57;
    View.environment<A>(_:)();

    sub_10002B070(v16, type metadata accessor for CompositionView);
    Bindable.wrappedValue.getter();
    v43 = v66;
    swift_getKeyPath();
    v66 = v43;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v44 = *(v43 + 4);

    v66 = v13;
    v67 = v39;
    v68 = v40;
    v69 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v59;
    v47 = v61;
    v49 = v55;
    v48 = v56;
    View.environment<A>(_:)();

    (*(v58 + 8))(v42, v47);
    v50 = v60;
    v51 = v62;
    (*(v60 + 16))(v64, v46, v62);
    swift_storeEnumTagMultiPayload();
    v66 = v47;
    v67 = v49;
    v68 = OpaqueTypeConformance2;
    v69 = v48;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v50 + 8))(v46, v51);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100013A50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_10000341C(&qword_10025B678, &qword_1001D0160);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  __chkstk_darwin(v3);
  v63 = &v58 - v5;
  v6 = type metadata accessor for ModelResponseView(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for WritingToolsView();
  v12 = *(v11 + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v13 = v68;
  swift_getKeyPath();
  v68 = v13;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v13 + 24);

  v14 = *(v11 + 68);
  v15 = v7[12];
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v16 = State.projectedValue.getter();
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002631C(v2, &v58 - v19);
  v20 = *(v17 + 80);
  v21 = swift_allocObject();
  v61 = type metadata accessor for WritingToolsView;
  sub_100029074(&v58 - v19, v21 + ((v20 + 16) & ~v20), type metadata accessor for WritingToolsView);
  *v10 = swift_getKeyPath();
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  swift_storeEnumTagMultiPayload();
  v22 = v10 + v7[7];
  type metadata accessor for CommonUIManager();
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  *v22 = Environment.init<A>(_:)();
  v22[8] = v23 & 1;
  v24 = v10 + v7[8];
  type metadata accessor for PresentationModel();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
  *v24 = Environment.init<A>(_:)();
  v24[8] = v25 & 1;
  v26 = v10 + v7[10];
  LOBYTE(v67) = 0;
  State.init(wrappedValue:)();
  v27 = v69;
  *v26 = v68;
  *(v26 + 1) = v27;
  v28 = (v10 + v7[11]);
  v29 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v58 - v31;
  v33 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  v34 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v67 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v35 = v69;
  *v28 = v68;
  v28[1] = v35;
  v36 = (v10 + v7[9]);
  v67 = v62;
  type metadata accessor for RewritingModel();
  v37 = State.init(wrappedValue:)();
  v38 = v69;
  *v36 = v68;
  v36[1] = v38;
  v39 = (v10 + v7[13]);
  *v39 = sub_10002B2AC;
  v39[1] = v21;
  __chkstk_darwin(v37);
  sub_10002631C(v2, &v58 - v19);
  type metadata accessor for MainActor();
  v40 = static MainActor.shared.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = &protocol witness table for MainActor;
  sub_100029074(&v58 - v19, v41 + ((v20 + 32) & ~v20), v61);
  v42 = type metadata accessor for TaskPriority();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = &v58 - v45;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v61 = type metadata accessor for _TaskModifier2();
    v62 = &v58;
    v60 = *(v61 - 1);
    v47 = *(v60 + 64);
    __chkstk_darwin(v61);
    v59 = &v58 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v68 = 0xD000000000000039;
    v69 = 0x80000001001E38C0;
    v67 = 154;
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    __chkstk_darwin(v50);
    (*(v43 + 16))(&v58 - v45, &v58 - v45, v42);
    v51 = v59;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v43 + 8))(v46, v42);
    v52 = v63;
    sub_100029074(v10, v63, type metadata accessor for ModelResponseView);
    v53 = sub_10000341C(&unk_10025B680, &qword_1001CE138);
    (*(v60 + 32))(v52 + *(v53 + 36), v51, v61);
  }

  else
  {
    v54 = sub_10000341C(&qword_10025A960, &unk_1001CE140);
    v52 = v63;
    v55 = (v63 + *(v54 + 36));
    v56 = type metadata accessor for _TaskModifier();
    (*(v43 + 32))(&v55[*(v56 + 20)], &v58 - v45, v42);
    *v55 = &unk_1001D0170;
    *(v55 + 1) = v41;
    sub_100029074(v10, v52, type metadata accessor for ModelResponseView);
  }

  return (*(v64 + 32))(v66, v52, v65);
}

uint64_t sub_1000142DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100014374, v5, v4);
}

uint64_t sub_100014374()
{
  v1 = v0[4];
  v2 = *(type metadata accessor for WritingToolsView() + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v3 = v0[2];
  swift_getKeyPath();
  v0[3] = v3;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v3 + 24);

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1000144C8;

  return sub_1000B6880(1);
}

uint64_t sub_1000144C8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10001460C, v5, v4);
}

uint64_t sub_10001460C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t WritingToolsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  v118 = type metadata accessor for NavigationPath();
  v122 = *(v118 - 8);
  v3 = *(v122 + 64);
  __chkstk_darwin(v118);
  v109 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for WritingToolsBehavior();
  v108 = *(v120 - 8);
  v5 = *(v108 + 64);
  __chkstk_darwin(v120);
  v104 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WritingToolsView();
  v129 = *(v7 - 8);
  v8 = *(v129 + 8);
  __chkstk_darwin(v7);
  v123 = v9;
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for EnvironmentValues();
  v11 = *(v96 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v96);
  v95 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10000341C(&qword_10025B220, &qword_1001CFBD0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v94 - v19;
  v125 = sub_10000341C(&qword_10025B228, &qword_1001CFBD8);
  v21 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v98 = &v94 - v22;
  v102 = sub_10000341C(&qword_10025B230, &qword_1001CFBE0);
  v23 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v99 = &v94 - v24;
  v103 = sub_10000341C(&qword_10025B238, &qword_1001CFBE8);
  v101 = *(v103 - 8);
  v25 = *(v101 + 64);
  __chkstk_darwin(v103);
  v100 = &v94 - v26;
  v106 = sub_10000341C(&qword_10025B240, &qword_1001CFBF0);
  v27 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v105 = &v94 - v28;
  v110 = sub_10000341C(&qword_10025B248, &qword_1001CFBF8);
  v107 = *(v110 - 8);
  v29 = *(v107 + 64);
  __chkstk_darwin(v110);
  v124 = &v94 - v30;
  v114 = sub_10000341C(&qword_10025B250, &qword_1001CFC00);
  v112 = *(v114 - 8);
  v31 = *(v112 + 64);
  __chkstk_darwin(v114);
  v111 = &v94 - v32;
  v116 = sub_10000341C(&qword_10025B258, &qword_1001CFC08);
  v115 = *(v116 - 8);
  v33 = *(v115 + 64);
  __chkstk_darwin(v116);
  v113 = &v94 - v34;
  v35 = (v1 + *(v7 + 68));
  v127 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v128 = v35;
  State.projectedValue.getter();
  v130 = v2;
  sub_10000341C(&qword_10025B268, &qword_1001CFC18);
  sub_100025648();
  NavigationStack.init<>(path:root:)();
  v117 = v7;
  v36 = v2 + *(v7 + 92);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v135) = v37;
  *(&v135 + 1) = v38;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  LOBYTE(v7) = v131;
  type metadata accessor for PresentationModel();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
  v39 = Environment.init<A>(_:)();
  v41 = v40;
  v42 = static Alignment.center.getter();
  v43 = *(v17 + 44);
  v126 = v20;
  v44 = &v20[v43];
  *v44 = v39;
  v44[8] = v41 & 1;
  v44[9] = 0;
  v44[10] = v7;
  *(v44 + 2) = v42;
  *(v44 + 3) = v45;
  v46 = *(v2 + 16);
  LOBYTE(v39) = *(v2 + 24);

  if ((v39 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v48 = v95;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v11 + 8))(v48, v96);
    v46 = v135;
  }

  if (v46)
  {
    swift_getKeyPath();
    *&v135 = v46;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v49 = *(v46 + 48);
    v50 = *(v46 + 56);
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v51 = v98;
  sub_10002A894(v126, v98, &qword_10025B220, &qword_1001CFBD0);
  v52 = (v51 + *(v125 + 36));
  v53 = v140;
  v52[4] = v139;
  v52[5] = v53;
  v52[6] = v141;
  v54 = v136;
  *v52 = v135;
  v52[1] = v54;
  v55 = v138;
  v52[2] = v137;
  v52[3] = v55;
  KeyPath = swift_getKeyPath();
  sub_10002631C(v2, v10);
  v126 = *(v129 + 80);
  v57 = (v126 + 16) & ~v126;
  v58 = swift_allocObject();
  v129 = type metadata accessor for WritingToolsView;
  sub_100029074(v10, v58 + v57, type metadata accessor for WritingToolsView);
  v59 = v99;
  sub_10002A894(v51, v99, &qword_10025B228, &qword_1001CFBD8);
  v60 = (v59 + *(v102 + 36));
  *v60 = KeyPath;
  v60[1] = sub_100026384;
  v60[2] = v58;
  v61 = v104;
  static WritingToolsBehavior.disabled.getter();
  sub_100026404();
  v62 = v100;
  View.writingToolsBehavior(_:)();
  (*(v108 + 8))(v61, v120);
  sub_10000F500(v59, &qword_10025B230, &qword_1001CFBE0);
  v63 = v105;
  (*(v101 + 32))(v105, v62, v103);
  v64 = v106;
  v65 = (v63 + *(v106 + 36));
  *v65 = sub_100021074;
  v65[1] = 0;
  v65[2] = 0;
  v65[3] = 0;
  v66 = v109;
  State.wrappedValue.getter();
  sub_10002631C(v2, v10);
  v125 = v57;
  v67 = swift_allocObject();
  sub_100029074(v10, v67 + v57, v129);
  v68 = sub_1000269BC();
  v120 = sub_10002B028(&qword_10025B3E0, &type metadata accessor for NavigationPath);
  v69 = v118;
  View.onChange<A>(of:initial:_:)();

  v70 = v2;
  v121 = v2;
  v71 = v69;
  v122 = *(v122 + 8);
  (v122)(v66, v69);
  sub_10000F500(v63, &qword_10025B240, &qword_1001CFBF0);
  State.wrappedValue.getter();
  v97 = v10;
  sub_10002631C(v70, v10);
  v72 = v125;
  v73 = swift_allocObject();
  sub_100029074(v10, v73 + v72, v129);
  v131 = v64;
  v132 = v69;
  v133 = v68;
  v134 = v120;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v111;
  v76 = v110;
  v77 = v124;
  View.onChange<A>(of:initial:_:)();

  (v122)(v66, v69);
  (*(v107 + 8))(v77, v76);
  State.wrappedValue.getter();
  v78 = v97;
  sub_10002631C(v121, v97);
  v79 = v125;
  v80 = swift_allocObject();
  v81 = v78;
  sub_100029074(v78, v80 + v79, v129);
  v131 = v76;
  v132 = v71;
  v82 = v120;
  v133 = OpaqueTypeConformance2;
  v134 = v120;
  v128 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v127 = swift_getOpaqueTypeConformance2();
  v83 = v113;
  v84 = v114;
  v85 = v82;
  View.onChange<A>(of:initial:_:)();

  (v122)(v66, v71);
  (*(v112 + 8))(v75, v84);
  v86 = v121;
  v87 = (v121 + *(v117 + 100));
  v88 = *v87;
  v89 = *(v87 + 1);
  LOBYTE(v87) = v87[16];
  LOBYTE(v131) = v88;
  v132 = v89;
  LOBYTE(v133) = v87;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  sub_10002631C(v86, v81);
  v90 = v125;
  v91 = swift_allocObject();
  sub_100029074(v81, v91 + v90, v129);
  v131 = v84;
  v132 = v71;
  v133 = v127;
  v134 = v85;
  swift_getOpaqueTypeConformance2();
  v92 = v116;
  View.onChange<A>(of:initial:_:)();

  return (*(v115 + 8))(v83, v92);
}

uint64_t sub_1000156E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v241 = a2;
  v3 = type metadata accessor for WritingToolsView();
  v202 = *(v3 - 8);
  v4 = *(v202 + 64);
  __chkstk_darwin(v3);
  v203 = v5;
  v204 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for CompositionView(0);
  v6 = *(*(v242 - 8) + 64);
  __chkstk_darwin(v242);
  v215 = &v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_10000341C(&unk_10025B300, &qword_1001CFC58);
  v217 = *(v228 - 8);
  v8 = *(v217 + 64);
  __chkstk_darwin(v228);
  v216 = &v194 - v9;
  v230 = sub_10000341C(&qword_10025B5F8, &qword_1001CFFD0);
  v218 = *(v230 - 8);
  v10 = *(v218 + 64);
  __chkstk_darwin(v230);
  v231 = &v194 - v11;
  v225 = sub_10000341C(&qword_10025B600, &qword_1001CFFD8);
  v12 = *(*(v225 - 8) + 64);
  __chkstk_darwin(v225);
  v227 = &v194 - v13;
  v237 = sub_10000341C(&qword_10025B368, &qword_1001CFC80);
  v14 = *(*(v237 - 8) + 64);
  __chkstk_darwin(v237);
  v229 = &v194 - v15;
  v16 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v208 = &v194 - v18;
  v206 = type metadata accessor for QuestionnaireView(0);
  v19 = *(*(v206 - 8) + 64);
  v20 = __chkstk_darwin(v206);
  v207 = (&v194 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v197 = &v194 - v22;
  v226 = sub_10000341C(&qword_10025B378, &qword_1001CFC88);
  v23 = *(*(v226 - 8) + 64);
  v24 = __chkstk_darwin(v226);
  v196 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v198 = &v194 - v26;
  v210 = sub_10000341C(&qword_10025B608, &qword_1001CFFE0);
  v27 = *(*(v210 - 8) + 64);
  __chkstk_darwin(v210);
  v214 = &v194 - v28;
  v211 = sub_10000341C(&qword_10025B610, &qword_1001CFFE8);
  v205 = *(v211 - 8);
  v29 = *(v205 + 64);
  __chkstk_darwin(v211);
  v213 = &v194 - v30;
  v224 = sub_10000341C(&qword_10025B340, &qword_1001CFC70);
  v31 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v212 = &v194 - v32;
  v238 = sub_10000341C(&qword_10025B618, &qword_1001CFFF0);
  v33 = *(*(v238 - 8) + 64);
  __chkstk_darwin(v238);
  v240 = (&v194 - v34);
  v233 = sub_10000341C(&qword_10025B620, &qword_1001CFFF8);
  v35 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v235 = &v194 - v36;
  v221 = sub_10000341C(&qword_10025B628, &qword_1001D0000);
  v37 = *(*(v221 - 8) + 64);
  __chkstk_darwin(v221);
  v222 = (&v194 - v38);
  v234 = sub_10000341C(&qword_10025B290, &qword_1001CFC28);
  v39 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v223 = &v194 - v40;
  v239 = sub_10000341C(&qword_10025B280, &qword_1001CFC20);
  v41 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v236 = &v194 - v42;
  v219 = sub_10000341C(&qword_10025B328, &qword_1001CFC68);
  v43 = *(*(v219 - 8) + 64);
  __chkstk_darwin(v219);
  v209 = &v194 - v44;
  v45 = sub_10000341C(&qword_10025B630, &qword_1001D0008);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v199 = &v194 - v47;
  v200 = sub_10000341C(&qword_10025B638, &qword_1001D0010);
  v195 = *(v200 - 8);
  v48 = *(v195 + 64);
  __chkstk_darwin(v200);
  v194 = &v194 - v49;
  v220 = sub_10000341C(&qword_10025B2A0, &qword_1001CFC30);
  v50 = *(*(v220 - 8) + 64);
  __chkstk_darwin(v220);
  v201 = &v194 - v51;
  v52 = v3;
  v53 = a1;
  v54 = a1 + *(v3 + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v55 = v243;
  swift_getKeyPath();
  v243 = v55;
  v232 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v56 = *(v55 + 48);
  v57 = *(v55 + 56);
  v58 = *(v55 + 64);
  v59 = *(v55 + 72);
  sub_10000F3F4(v56, v57, v58, *(v55 + 72));

  if (!v59)
  {
    v93 = v213;
    v94 = v214;
    sub_10000F428(v56, v57, v58, 0);
    Bindable.wrappedValue.getter();
    v95 = v243;
    swift_getKeyPath();
    v243 = v95;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v96 = *(v95 + 24);

    LOBYTE(v95) = sub_1000B1594();

    if (v95)
    {
      v97 = v93;
      sub_1000120F0(v93);
      v98 = v205;
      v99 = v93;
      v100 = v211;
      (*(v205 + 16))(v94, v99, v211);
      swift_storeEnumTagMultiPayload();
      v101 = sub_100003E34(&qword_10025B348, &qword_1001CFC78);
      v102 = sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
      v103 = sub_100025F58();
      v104 = sub_100025A68();
      v105 = sub_100025ABC();
      v243 = v101;
      v244 = &type metadata for Mode;
      v245 = v102;
      v246 = v103;
      v247 = v104;
      v248 = v105;
      swift_getOpaqueTypeConformance2();
      sub_100025D5C();
      v106 = v212;
      _ConditionalContent<>.init(storage:)();
      (*(v98 + 8))(v97, v100);
    }

    else
    {
      v118 = v209;
      sub_100013A50(v209);
      sub_1000081F8(v118, v94, &qword_10025B328, &qword_1001CFC68);
      swift_storeEnumTagMultiPayload();
      v119 = sub_100003E34(&qword_10025B348, &qword_1001CFC78);
      v120 = sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
      v121 = sub_100025F58();
      v122 = sub_100025A68();
      v123 = sub_100025ABC();
      v243 = v119;
      v244 = &type metadata for Mode;
      v245 = v120;
      v246 = v121;
      v247 = v122;
      v248 = v123;
      swift_getOpaqueTypeConformance2();
      sub_100025D5C();
      v106 = v212;
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v118, &qword_10025B328, &qword_1001CFC68);
    }

    v124 = &qword_1001CFC70;
    sub_1000081F8(v106, v222, &qword_10025B340, &qword_1001CFC70);
    swift_storeEnumTagMultiPayload();
    sub_100025818();
    sub_100025E48();
    v125 = v223;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v125, v235, &qword_10025B290, &qword_1001CFC28);
    swift_storeEnumTagMultiPayload();
    sub_10002578C();
    sub_100026044();
    v126 = v236;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v125, &qword_10025B290, &qword_1001CFC28);
    sub_1000081F8(v126, v240, &qword_10025B280, &qword_1001CFC20);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v126, &qword_10025B280, &qword_1001CFC20);
    v127 = v106;
    v128 = &qword_10025B340;
    return sub_10000F500(v127, v128, v124);
  }

  if (v59 == 1)
  {
    v60 = v52[17];
    v61 = *(v242 + 28);
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v62 = v215;
    State.projectedValue.getter();
    v63 = v53 + v52[23];
    v64 = *v63;
    v65 = *(v63 + 8);
    LOBYTE(v249) = v64;
    v250 = v65;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.projectedValue.getter();
    v66 = v243;
    v222 = v244;
    LODWORD(v221) = v245;
    v67 = type metadata accessor for CompositionModel(0);
    v224 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    v223 = v67;
    *(v62 + 24) = Environment.init<A>(_:)();
    *(v62 + 32) = v68 & 1;
    type metadata accessor for CommonUIManager();
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    *(v62 + 40) = Environment.init<A>(_:)();
    *(v62 + 48) = v69 & 1;
    v70 = v242;
    v71 = v62 + *(v242 + 36);
    *v71 = FocusState.init<>()() & 1;
    *(v71 + 8) = v72;
    *(v71 + 16) = v73 & 1;
    *v62 = v56;
    *(v62 + 8) = v57;
    *(v62 + 16) = v58;
    v74 = v62 + *(v70 + 32);
    v75 = v222;
    *v74 = v66;
    *(v74 + 8) = v75;
    *(v74 + 16) = v221;
    Bindable.wrappedValue.getter();
    v76 = type metadata accessor for WritingToolsModel();
    v77 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView);
    v78 = v216;
    v79 = v232;
    View.environment<A>(_:)();

    sub_10002B070(v62, type metadata accessor for CompositionView);
    Bindable.wrappedValue.getter();
    v80 = v243;
    swift_getKeyPath();
    v243 = v80;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v81 = *(v80 + 32);

    v243 = v242;
    v244 = v76;
    v245 = v77;
    v246 = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v83 = v231;
    v84 = v228;
    v85 = v223;
    v86 = v224;
    View.environment<A>(_:)();

    (*(v217 + 8))(v78, v84);
    v87 = v218;
    v88 = v83;
    v89 = v230;
    (*(v218 + 16))(v227, v88, v230);
    swift_storeEnumTagMultiPayload();
    sub_100026208();
    v243 = v84;
    v244 = v85;
    v245 = OpaqueTypeConformance2;
    v246 = v86;
    swift_getOpaqueTypeConformance2();
    v90 = v229;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v90, v235, &qword_10025B368, &qword_1001CFC80);
    swift_storeEnumTagMultiPayload();
    sub_10002578C();
    sub_100026044();
    v91 = v236;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v90, &qword_10025B368, &qword_1001CFC80);
    sub_1000081F8(v91, v240, &qword_10025B280, &qword_1001CFC20);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v91, &qword_10025B280, &qword_1001CFC20);
    return (*(v87 + 8))(v231, v89);
  }

  v107 = v58 | v57;
  if (!(v58 | v57 | v56))
  {
    v129 = v204;
    sub_10002631C(v53, v204);
    v130 = (*(v202 + 80) + 16) & ~*(v202 + 80);
    v131 = swift_allocObject();
    sub_100029074(v129, v131 + v130, type metadata accessor for WritingToolsView);
    v132 = v240;
    *v240 = sub_100028518;
    v132[1] = v131;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90);
    return _ConditionalContent<>.init(storage:)();
  }

  v108 = v53;
  if (v56 == 1 && !v107)
  {
    if (*(v53 + v52[11]) == 1 && *(v53 + v52[12]) == 1)
    {
      v109 = v194;
      sub_100010CC8(v194);
      v110 = v195;
      v111 = v200;
      (*(v195 + 16))(v199, v109, v200);
      swift_storeEnumTagMultiPayload();
      v112 = sub_100003E34(&qword_10025B2A8, &qword_1001CFC38);
      v113 = sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
      v114 = sub_100025928();
      v115 = sub_100025A68();
      v116 = sub_100025ABC();
      v243 = v112;
      v244 = &type metadata for Mode;
      v245 = v113;
      v246 = v114;
      v247 = v115;
      v248 = v116;
      swift_getOpaqueTypeConformance2();
      sub_100025D5C();
      v117 = v201;
      _ConditionalContent<>.init(storage:)();
      (*(v110 + 8))(v109, v111);
    }

    else
    {
      v186 = v209;
      sub_100013A50(v209);
      sub_1000081F8(v186, v199, &qword_10025B328, &qword_1001CFC68);
      swift_storeEnumTagMultiPayload();
      v187 = sub_100003E34(&qword_10025B2A8, &qword_1001CFC38);
      v188 = sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
      v189 = sub_100025928();
      v190 = sub_100025A68();
      v191 = sub_100025ABC();
      v243 = v187;
      v244 = &type metadata for Mode;
      v245 = v188;
      v246 = v189;
      v247 = v190;
      v248 = v191;
      swift_getOpaqueTypeConformance2();
      sub_100025D5C();
      v117 = v201;
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v186, &qword_10025B328, &qword_1001CFC68);
    }

    v124 = &qword_1001CFC30;
    sub_1000081F8(v117, v222, &qword_10025B2A0, &qword_1001CFC30);
    swift_storeEnumTagMultiPayload();
    sub_100025818();
    sub_100025E48();
    v192 = v223;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v192, v235, &qword_10025B290, &qword_1001CFC28);
    swift_storeEnumTagMultiPayload();
    sub_10002578C();
    sub_100026044();
    v193 = v236;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v192, &qword_10025B290, &qword_1001CFC28);
    sub_1000081F8(v193, v240, &qword_10025B280, &qword_1001CFC20);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v193, &qword_10025B280, &qword_1001CFC20);
    v127 = v117;
    v128 = &qword_10025B2A0;
    return sub_10000F500(v127, v128, v124);
  }

  v133 = v52[7];
  result = swift_unknownObjectWeakLoadStrong();
  v134 = *(v53 + v52[10]);
  if (v134)
  {
    v135 = result;
    v136 = *(v108 + v52[8]);
    v137 = v52[17];
    v222 = v134;
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.projectedValue.getter();
    v138 = v52[16];
    v139 = (v108 + v52[15]);
    v140 = v139[1];
    v223 = *v139;
    v141 = *(v108 + v138 + 8);
    v231 = *(v108 + v138);
    v142 = v207;
    *v207 = 0x4024000000000000;
    v142[2] = 5;
    *(v142 + 3) = xmmword_1001CFA80;
    __asm { FMOV            V0.2D, #24.0 }

    *(v142 + 5) = _Q0;
    v148 = v206;
    v149 = *(v206 + 32);
    *(v142 + v149) = swift_getKeyPath();
    sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
    swift_storeEnumTagMultiPayload();
    v150 = v142 + *(v148 + 36);
    type metadata accessor for CommonUIManager();
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);

    v224 = v141;

    *v150 = Environment.init<A>(_:)();
    v150[8] = v151 & 1;
    v152 = v142 + *(v148 + 48);
    LOBYTE(v249) = 0;
    State.init(wrappedValue:)();
    v153 = v244;
    *v152 = v243;
    *(v152 + 1) = v153;
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    sub_10000F34C(v154, qword_100276F20);
    v155 = static os_log_type_t.debug.getter();
    swift_unknownObjectRetain();
    v156 = Logger.logObject.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v156, v155))
    {
      v157 = swift_slowAlloc();
      v158 = v136;
      v159 = swift_slowAlloc();
      v243 = v159;
      *v157 = 136315138;
      if (v135)
      {
        v160 = 7562617;
      }

      else
      {
        v160 = 28526;
      }

      if (v135)
      {
        v161 = 0xE300000000000000;
      }

      else
      {
        v161 = 0xE200000000000000;
      }

      v162 = sub_10002510C(v160, v161, &v243);

      *(v157 + 4) = v162;
      _os_log_impl(&_mh_execute_header, v156, v155, "Initialize QuestionnaireView with delegate: %s", v157, 0xCu);
      sub_10000F4B4(v159);
      v136 = v158;
    }

    v163 = v222;
    v164 = v207;
    v207[1] = v134;
    v165 = type metadata accessor for QuestionnaireModel();
    v166 = *(v165 + 48);
    v167 = *(v165 + 52);
    swift_allocObject();
    v168 = v163;
    swift_unknownObjectRetain();
    sub_10004F8B0(v168, v135, v136);
    v169 = v206;
    v170 = (v164 + *(v206 + 44));
    v249 = v171;
    State.init(wrappedValue:)();
    v172 = v243;
    v173 = v244;
    *v170 = v243;
    v170[1] = v173;
    v174 = v164 + *(v169 + 40);
    v175 = v208;
    sub_1000081F8(v208, v174, &qword_1002632E0, &qword_1001D11A0);
    v243 = v172;
    v244 = v173;

    sub_10000341C(&qword_10025B648, &qword_1001D0050);
    State.wrappedValue.getter();
    sub_100036040(v223, v140);

    v243 = v172;
    v244 = v173;
    State.wrappedValue.getter();

    sub_100036200(v231, v224);
    swift_unknownObjectRelease();

    sub_10000F500(v175, &qword_1002632E0, &qword_1001D11A0);
    v176 = v197;
    sub_100029074(v164, v197, type metadata accessor for QuestionnaireView);
    v177 = v196;
    sub_100029074(v176, v196, type metadata accessor for QuestionnaireView);
    v178 = v198;
    sub_10002A894(v177, v198, &qword_10025B378, &qword_1001CFC88);
    sub_1000081F8(v178, v227, &qword_10025B378, &qword_1001CFC88);
    swift_storeEnumTagMultiPayload();
    sub_100026208();
    v179 = type metadata accessor for CompositionModel(255);
    v180 = type metadata accessor for WritingToolsModel();
    v181 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView);
    v243 = v242;
    v244 = v180;
    v245 = v181;
    v246 = v232;
    v182 = swift_getOpaqueTypeConformance2();
    v183 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    v243 = v228;
    v244 = v179;
    v245 = v182;
    v246 = v183;
    swift_getOpaqueTypeConformance2();
    v184 = v229;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v184, v235, &qword_10025B368, &qword_1001CFC80);
    swift_storeEnumTagMultiPayload();
    sub_10002578C();
    sub_100026044();
    v185 = v236;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v184, &qword_10025B368, &qword_1001CFC80);
    sub_1000081F8(v185, v240, &qword_10025B280, &qword_1001CFC20);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&unk_10025B390, &unk_1001CFC90);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v185, &qword_10025B280, &qword_1001CFC20);
    return sub_10000F500(v178, &qword_10025B378, &qword_1001CFC88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v5 = type metadata accessor for WritingToolsView();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v5 - 8);
  v68 = v7;
  v69 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ContainerBackgroundPlacement();
  v65 = *(v66 - 8);
  v8 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ScrollBounceBehavior();
  v55 = *(v56 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v56);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_10025B690, &qword_1001D0178);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v54 = sub_10000341C(&qword_10025B698, &qword_1001D0180);
  v18 = *(v54 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v54);
  v21 = &v54 - v20;
  v59 = sub_10000341C(&qword_10025B6A0, &qword_1001D0188);
  v58 = *(v59 - 8);
  v22 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = &v54 - v23;
  v60 = sub_10000341C(&qword_10025B6A8, &qword_1001D0190);
  v24 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v26 = &v54 - v25;
  v63 = sub_10000341C(&qword_10025B6B0, &qword_1001D0198);
  v62 = *(v63 - 8);
  v27 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61 = &v54 - v28;
  v72 = a2;
  v73 = a1;
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_10025B6B8, &qword_1001D01A0);
  sub_1000290E4();
  ScrollView.init(_:showsIndicators:content:)();
  v70 = a2;
  sub_10000FE5C();
  v29 = sub_100007120(&qword_10025B720, &qword_10025B690, &qword_1001D0178);
  View.scrollDisabled(_:)();
  (*(v14 + 8))(v17, v13);
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v17) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    Axis.Set.init(rawValue:)();
  }

  *&v78 = v13;
  *(&v78 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v57;
  v31 = v54;
  View.scrollBounceBehavior(_:axes:)();
  (*(v55 + 8))(v12, v56);
  (*(v18 + 8))(v21, v31);
  v32 = [objc_opt_self() mainScreen];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v85.origin.x = v34;
  v85.origin.y = v36;
  v85.size.width = v38;
  v85.size.height = v40;
  CGRectGetHeight(v85);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v58 + 32))(v26, v30, v59);
  v41 = v60;
  v42 = &v26[*(v60 + 36)];
  v43 = v83;
  *(v42 + 4) = v82;
  *(v42 + 5) = v43;
  *(v42 + 6) = v84;
  v44 = v79;
  *v42 = v78;
  *(v42 + 1) = v44;
  v45 = v81;
  *(v42 + 2) = v80;
  *(v42 + 3) = v45;
  v74 = static Color.clear.getter();
  v46 = v64;
  static ContainerBackgroundPlacement.navigation.getter();
  v47 = sub_100029478();
  v48 = v61;
  View.containerBackground<A>(_:for:)();
  (*(v65 + 8))(v46, v66);

  sub_10000F500(v26, &qword_10025B6A8, &qword_1001D0190);
  v49 = v69;
  sub_10002631C(v70, v69);
  v50 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v51 = swift_allocObject();
  sub_100029074(v49, v51 + v50, type metadata accessor for WritingToolsView);
  sub_10000341C(&qword_10025B730, &qword_1001D01D0);
  v74 = v41;
  v75 = &type metadata for Color;
  v76 = v47;
  v77 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  sub_100025A68();
  sub_100029638();
  v52 = v63;
  View.navigationDestination<A, B>(for:destination:)();

  return (*(v62 + 8))(v48, v52);
}

uint64_t sub_100017FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v92 = a3;
  v4 = type metadata accessor for ScrollDismissesKeyboardMode();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  __chkstk_darwin(v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_10025B700, &qword_1001D01C8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v81 - v10;
  v84 = sub_10000341C(&qword_10025B6F8, &qword_1001D01C0);
  v86 = *(v84 - 8);
  v12 = *(v86 + 64);
  __chkstk_darwin(v84);
  v14 = &v81 - v13;
  v87 = sub_10000341C(&qword_10025B828, &qword_1001D0270);
  v83 = *(v87 - 8);
  v15 = *(v83 + 64);
  __chkstk_darwin(v87);
  v82 = &v81 - v16;
  v17 = sub_10000341C(&qword_10025B6F0, &qword_1001D01B8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  *&v93 = &v81 - v20;
  v21 = sub_10000341C(&qword_10025B6E0, &qword_1001D01B0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v94 = &v81 - v24;
  v25 = sub_10000341C(&qword_10025B6D0, &qword_1001D01A8);
  v26 = *(v25 - 8);
  v91 = v25 - 8;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25 - 8);
  v90 = &v81 - v28;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0x4024000000000000;
  v11[16] = 0;
  v29 = sub_10000341C(&unk_10025B830, &qword_1001D0278);
  sub_1000187F8(a1, v85, &v11[*(v29 + 44)]);
  v30 = sub_100007120(&qword_10025B708, &qword_10025B700, &qword_1001D01C8);
  View.scrollContentBackground(_:)();
  sub_10000F500(v11, &qword_10025B700, &qword_1001D01C8);
  static ScrollDismissesKeyboardMode.interactively.getter();
  *&v95 = v8;
  *(&v95 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v82;
  v32 = v84;
  View.scrollDismissesKeyboard(_:)();
  (*(v88 + 8))(v7, v89);
  (*(v86 + 8))(v14, v32);
  v33 = a1;
  if (sub_10000FE5C())
  {
    v34 = 0;
  }

  else
  {
    v34 = 0x4030000000000000;
  }

  v35 = static Edge.Set.all.getter();
  v36 = v93;
  (*(v83 + 32))(v93, v31, v87);
  v37 = v36 + *(v18 + 44);
  *v37 = v35;
  *(v37 + 8) = v34;
  *(v37 + 16) = v34;
  *(v37 + 24) = 0;
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  v38 = type metadata accessor for WritingToolsView();
  v39 = v38[7];
  v40 = v33;
  swift_unknownObjectWeakLoadStrong();
  v41 = v38[17];
  v42 = v94 + *(v22 + 44);
  v43 = type metadata accessor for PreferredContentSizeModifier(0);
  v44 = v43[7];
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.projectedValue.getter();
  LOBYTE(v95) = 0;
  static Binding.constant(_:)();
  v45 = v98;
  v46 = v99;
  v47 = v100;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v42 + 8) = 256;
  v48 = v42 + v43[8];
  *v48 = v45;
  *(v48 + 8) = v46;
  *(v48 + 16) = v47;
  v49 = (v42 + v43[9]);
  *v49 = 0xD000000000000010;
  v49[1] = 0x80000001001CFD50;
  v50 = v42 + v43[10];
  type metadata accessor for CGSize(0);
  v101 = 0;
  v102 = 0;
  State.init(wrappedValue:)();
  v51 = v96;
  *v50 = v95;
  *(v50 + 16) = v51;
  v52 = v42 + v43[11];
  LOBYTE(v101) = 0;
  State.init(wrappedValue:)();
  v53 = *(&v95 + 1);
  *v52 = v95;
  *(v52 + 8) = v53;
  v54 = v42 + v43[12];
  v101 = 0;
  LOBYTE(v102) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v55 = BYTE8(v95);
  v56 = v96;
  *v54 = v95;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56;
  v57 = v42 + v43[13];
  LOBYTE(v101) = 0;
  State.init(wrappedValue:)();
  v58 = *(&v95 + 1);
  *v57 = v95;
  *(v57 + 8) = v58;
  v59 = v42 + v43[14];
  type metadata accessor for PresentationModel();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
  *v59 = Environment.init<A>(_:)();
  *(v59 + 8) = v60 & 1;
  v61 = v94;
  sub_10002A894(v93, v94, &qword_10025B6F0, &qword_1001D01B8);
  v62 = (v40 + v38[22]);
  v63 = *v62;
  v64 = *(v62 + 8);
  v65 = v62[2];
  v98 = v63;
  LOBYTE(v99) = v64;
  v100 = v65;
  sub_10000341C(&qword_10025B840, &unk_1001D7B00);
  State.projectedValue.getter();
  v93 = v95;
  v66 = v96;
  LOBYTE(v57) = v97;
  v67 = v90;
  sub_10002A894(v61, v90, &qword_10025B6E0, &qword_1001D01B0);
  v68 = v67 + *(v91 + 44);
  *v68 = v93;
  *(v68 + 16) = v66;
  *(v68 + 24) = v57;
  v69 = (v40 + v38[23]);
  v70 = *v69;
  v71 = *(v69 + 1);
  LOBYTE(v95) = v70;
  *(&v95 + 1) = v71;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  LOBYTE(v61) = v98;
  v72 = Environment.init<A>(_:)();
  LOBYTE(v66) = v73;
  v74 = static Alignment.center.getter();
  v76 = v75;
  v77 = v67;
  v78 = v92;
  sub_10002A894(v77, v92, &qword_10025B6D0, &qword_1001D01A8);
  result = sub_10000341C(&qword_10025B6B8, &qword_1001D01A0);
  v80 = v78 + *(result + 36);
  *v80 = v72;
  *(v80 + 8) = v66 & 1;
  *(v80 + 9) = 1;
  *(v80 + 10) = v61;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  return result;
}

uint64_t sub_1000187F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v314 = a2;
  v333 = a3;
  v4 = sub_10000341C(&qword_10025B848, &qword_1001D0290);
  v332 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v294 - v5;
  v7 = sub_10000FE5C();
  v8 = sub_10000341C(&qword_10025B850, &qword_1001D0298);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = v10;
  if (v7)
  {
    (*(v10 + 56))(v6, 1, 1, v8);
  }

  else
  {
    v12 = *(v10 + 64);
    __chkstk_darwin(v8);
    v14 = &v294 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v14 = static VerticalAlignment.center.getter();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v15 = sub_10000341C(&qword_10025B858, &qword_1001D02A0);
    sub_10001B2FC(a1, &v14[*(v15 + 44)]);
    v16 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v17 = &v14[*(v9 + 36)];
    *v17 = v16;
    *(v17 + 1) = v18;
    *(v17 + 2) = v19;
    *(v17 + 3) = v20;
    *(v17 + 4) = v21;
    v17[40] = 0;
    sub_10002A894(v14, v6, &qword_10025B850, &qword_1001D0298);
    (*(v11 + 56))(v6, 0, 1, v9);
  }

  v22 = sub_10000FE5C();
  v343 = v6;
  if (v22)
  {
    goto LABEL_7;
  }

  v23 = *(type metadata accessor for WritingToolsView() + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v24 = sub_1000A9218();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  if (!v30)
  {
LABEL_7:
    v331 = 0;
    v26 = 0;
    v328 = 0;
    v329 = 0;
  }

  else
  {
    v328 = v28 & 1;
    v331 = v24;
    sub_100007D98(v24, v26, v28 & 1);
    v329 = v30;
  }

  v330 = v26;
  v31 = sub_10000341C(&qword_10025B860, &qword_1001D02A8);
  v327 = &v294;
  v325 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v342 = &v294 - v32;
  v33 = type metadata accessor for WritingToolsView();
  v34 = v33[20];
  v35 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();

  v36 = sub_10000341C(&qword_10025B868, &qword_1001D02B0);
  v326 = &v294;
  v341 = v36;
  v340 = *(v36 - 8);
  v37 = v340[8];
  v38 = __chkstk_darwin(v36);
  v339 = &v294 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = &v294;
  v321 = v39;
  __chkstk_darwin(v38);
  v323 = &v294 - v40;
  v41 = a1 + v33[25];
  v42 = *v41;
  v43 = *(v41 + 8);
  LOBYTE(v41) = *(v41 + 16);
  LOBYTE(v348) = v42;
  *(&v348 + 1) = v43;
  LOBYTE(v349) = v41;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  v334 = v356;
  v322 = v357;
  LODWORD(v319) = v358;
  Bindable.wrappedValue.getter();
  v317 = sub_1000A7C14();

  v44 = sub_10000FE5C();
  LODWORD(v315) = v44;
  v316 = &v294;
  v318 = v33;
  v45 = *(v33 - 1);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002631C(a1, &v294 - v47);
  v48 = *(v45 + 80);
  v49 = swift_allocObject();
  v335 = ((v48 + 16) & ~v48);
  sub_100029074(&v294 - v47, v335 + v49, type metadata accessor for WritingToolsView);
  v338 = v34;
  v337 = v35;
  Bindable.wrappedValue.getter();
  v50 = a1;
  v51 = v348;
  swift_getKeyPath();
  *&v348 = v51;
  v320 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(v51 + 24);

  swift_getKeyPath();
  *&v348 = v52;
  sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v52 + v53, &v350 + 8, &unk_10025B1C0, &unk_1001CFA90);

  *&v348 = v334;
  *(&v348 + 1) = v322;
  LOBYTE(v349) = v319;
  BYTE1(v349) = (v317 & 2) != 0;
  BYTE2(v349) = v315 & 1;
  *(&v349 + 1) = sub_10002A520;
  *&v350 = v49;
  v322 = &v294;
  __chkstk_darwin(v54);
  v344 = v50;
  sub_10002631C(v50, &v294 - v47);
  type metadata accessor for MainActor();
  v55 = static MainActor.shared.getter();
  v336 = v46;
  v334 = v48;
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = &protocol witness table for MainActor;
  sub_100029074(&v294 - v47, v56 + ((v48 + 32) & ~v48), type metadata accessor for WritingToolsView);
  v57 = type metadata accessor for TaskPriority();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v61 = &v294 - v60;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v317 = type metadata accessor for _TaskModifier2();
    v319 = &v294;
    v316 = *(v317 - 8);
    v62 = *(v316 + 8);
    __chkstk_darwin(v317);
    v315 = &v294 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    v345 = 0;
    v346 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v345 = 0xD000000000000039;
    v346 = 0x80000001001E38C0;
    v355 = 221;
    v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v64);

    __chkstk_darwin(v65);
    (*(v58 + 16))(&v294 - v60, &v294 - v60, v57);
    v66 = v315;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v58 + 8))(v61, v57);
    v67 = v351;
    v68 = v323;
    *(v323 + 2) = v350;
    *(v68 + 3) = v67;
    *(v68 + 4) = v352;
    v69 = v349;
    *v68 = v348;
    *(v68 + 1) = v69;
    v70 = sub_10000341C(&qword_10025A968, &unk_1001D02F0);
    (*(v316 + 4))(&v68[*(v70 + 36)], v66, v317);
  }

  else
  {
    v71 = sub_10000341C(&unk_10025A970, &unk_1001CE150);
    v68 = v323;
    v72 = &v323[*(v71 + 36)];
    v73 = type metadata accessor for _TaskModifier();
    (*(v58 + 32))(&v72[*(v73 + 20)], &v294 - v60, v57);
    *v72 = &unk_1001D02E8;
    *(v72 + 1) = v56;
    v74 = v352;
    v75 = v350;
    *(v68 + 3) = v351;
    *(v68 + 4) = v74;
    v76 = v349;
    *v68 = v348;
    *(v68 + 1) = v76;
    *(v68 + 2) = v75;
  }

  (v340[4])(v339, v68, v341);
  v77 = sub_10000341C(&qword_10025B880, &qword_1001DCA20);
  v324 = &v294;
  v78 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77 - 8);
  v80 = &v294 - v79;
  v81 = sub_10000FE5C();
  v82 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v83 = v82;
  v84 = *(v82 - 8);
  v85 = v84;
  v316 = v80;
  if (v81)
  {
    (*(v84 + 56))(v80, 1, 1, v82);
  }

  else
  {
    v86 = *(v84 + 64);
    __chkstk_darwin(v82);
    v88 = &v294 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    Divider.init()();
    v89 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v90 = &v88[*(v83 + 36)];
    *v90 = v89;
    *(v90 + 1) = v91;
    *(v90 + 2) = v92;
    *(v90 + 3) = v93;
    *(v90 + 4) = v94;
    v90[40] = 0;
    sub_10002A894(v88, v80, &qword_10025B888, &qword_1001D0300);
    (*(v85 + 56))(v80, 0, 1, v83);
  }

  v319 = sub_10000341C(&qword_10025B890, &qword_1001D0308);
  v323 = &v294;
  v317 = *(v319 - 1);
  v95 = (*(v317 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = __chkstk_darwin(v319);
  v98 = &v294 - v97;
  v322 = &v294;
  __chkstk_darwin(v96);
  v100 = &v294 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v340;
  v102 = v340[2];
  v103 = v339;
  v104 = v341;
  v105 = v102(v100, v339, v341);
  v321 = &v294;
  __chkstk_darwin(v105);
  v106 = &v294 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v316;
  sub_1000081F8(v316, v106, &qword_10025B880, &qword_1001DCA20);
  v102(v98, v100, v104);
  v108 = sub_10000341C(&qword_10025B898, &qword_1001D0310);
  sub_1000081F8(v106, &v98[*(v108 + 48)], &qword_10025B880, &qword_1001DCA20);
  sub_10000F500(v107, &qword_10025B880, &qword_1001DCA20);
  v109 = v101[1];
  v109(v103, v104);
  sub_10000F500(v106, &qword_10025B880, &qword_1001DCA20);
  v109(v100, v104);
  v110 = v342;
  sub_10002A894(v98, v342, &qword_10025B890, &qword_1001D0308);
  (*(v317 + 56))(v110, 0, 1, v319);
  v111 = sub_10000341C(&qword_10025B8A0, &qword_1001D0318);
  v340 = &v294;
  v112 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111 - 8);
  v114 = &v294 - v113;
  v115 = v344;
  v116 = sub_10000FE5C();
  v341 = v114;
  if (v116)
  {
    v117 = sub_10000341C(&qword_10025B8F8, &qword_1001D0358);
    v118 = (*(*(v117 - 8) + 56))(v114, 1, 1, v117);
  }

  else
  {
    v311 = v112;
    v119 = sub_10000341C(&qword_10025B8A8, &unk_1001D0320);
    v310 = &v294;
    v339 = v119;
    v317 = *(v119 - 8);
    v308 = *(v317 + 64);
    __chkstk_darwin(v119);
    v319 = &v294 - v120;
    v121 = v318;
    v122 = v318[12];
    LODWORD(v315) = *(v115 + v318[11]);
    LODWORD(v316) = *(v115 + v122);
    v312 = (v115 + v318[7]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v123 = v336;
    __chkstk_darwin(Strong);
    v124 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_10002631C(v115, &v294 - v124);
    v125 = v335;
    v126 = swift_allocObject();
    v127 = sub_100029074(&v294 - v124, v125 + v126, type metadata accessor for WritingToolsView);
    __chkstk_darwin(v127);
    v128 = &v294 - v124;
    sub_10002631C(v115, &v294 - v124);
    v129 = swift_allocObject();
    sub_100029074(v128, v125 + v129, type metadata accessor for WritingToolsView);
    v130 = v115 + v121[22];
    v131 = *v130;
    v132 = *(v130 + 8);
    v133 = *(v130 + 16);
    *&v304 = v131;
    v345 = v131;
    LODWORD(v303) = v132;
    LOBYTE(v346) = v132;
    v302 = v133;
    v347 = v133;
    v301 = sub_10000341C(&qword_10025B840, &unk_1001D7B00);
    State.projectedValue.getter();
    v307 = v348;
    v134 = v349;
    v135 = BYTE8(v349);
    v136 = type metadata accessor for WritingToolsModel();
    v137 = Environment.init<A>(_:)();
    v139 = v138;
    LOBYTE(v348) = v315;
    BYTE1(v348) = v316;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *&v349 = sub_10002A680;
    *(&v349 + 1) = v126;
    *&v350 = sub_10002A698;
    *(&v350 + 1) = v129;
    v351 = v307;
    *&v352 = v134;
    BYTE8(v352) = v135;
    v353 = v137;
    v140 = v344;
    v354 = v139 & 1;
    Bindable.wrappedValue.getter();
    sub_10002A6B0();
    v313 = v136;
    View.environment<A>(_:)();

    sub_10002A704(&v348);
    v141 = sub_10000341C(&unk_100264220, &qword_1001D7E50);
    Strong = &v294;
    v306 = *(*(v141 - 8) + 64);
    __chkstk_darwin(v141 - 8);
    v143 = &v294 - v142;
    v144 = type metadata accessor for DynamicTypeSize();
    v145 = *(v144 - 8);
    v146 = *(v145 + 64);
    __chkstk_darwin(v144);
    v148 = &v294 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
    v149 = v140 + v318[6];
    sub_10011F024(v148);
    LOBYTE(v129) = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v145 + 8))(v148, v144);
    v150 = type metadata accessor for Divider();
    v151 = v150;
    v152 = *(v150 - 8);
    v153 = v152;
    v316 = v143;
    if (v129)
    {
      v154 = *(v152 + 64);
      __chkstk_darwin(v150);
      v156 = &v294 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
      Divider.init()();
      (*(v153 + 32))(v143, v156, v151);
      (*(v153 + 56))(v143, 0, 1, v151);
    }

    else
    {
      (*(v152 + 56))(v143, 1, 1, v150);
    }

    v157 = sub_10000341C(&qword_10025B8C0, &qword_1001D0330);
    *&v307 = &v294;
    v158 = *(v157 - 8);
    v297 = v157 - 8;
    v159 = *(v158 + 64);
    v160 = __chkstk_darwin(v157 - 8);
    v318 = (&v294 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0));
    v298 = &v294;
    v305 = v161;
    __chkstk_darwin(v160);
    v295 = &v294 - v162;
    v163 = sub_10000341C(&qword_10025B8C8, &qword_1001D0338);
    v296 = &v294;
    v164 = v163 - 8;
    v165 = (*(*(v163 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v166 = __chkstk_darwin(v163);
    v168 = &v294 - v167;
    __chkstk_darwin(v166);
    v300 = ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    v170 = (&v294 - v300);
    sub_10002631C(v344, &v294 - v300);
    v171 = v335;
    v172 = swift_allocObject();
    v299 = type metadata accessor for WritingToolsView;
    sub_100029074(v170, v171 + v172, type metadata accessor for WritingToolsView);
    v345 = v304;
    LOBYTE(v346) = v303;
    v347 = v302;
    State.projectedValue.getter();
    v304 = v348;
    v173 = v349;
    v174 = BYTE8(v349);
    swift_unknownObjectWeakLoadStrong();
    v175 = Environment.init<A>(_:)();
    v177 = v176;
    *&v348 = sub_10002B208;
    *(&v348 + 1) = v172;
    v349 = v304;
    *&v350 = v173;
    BYTE8(v350) = v174;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *(&v351 + 1) = v175;
    LOBYTE(v352) = v177 & 1;
    v178 = v344;
    Bindable.wrappedValue.getter();
    sub_10002A758();
    View.environment<A>(_:)();

    sub_10002A7AC(&v348);
    LOBYTE(v170) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v179 = &v168[*(v164 + 44)];
    *v179 = v170;
    *(v179 + 1) = v180;
    *(v179 + 2) = v181;
    *(v179 + 3) = v182;
    *(v179 + 4) = v183;
    v179[40] = 0;
    LOBYTE(v170) = static Edge.Set.top.getter();
    static Solarium.isEnabled.getter();
    EdgeInsets.init(_all:)();
    v185 = v184;
    v187 = v186;
    v189 = v188;
    v191 = v190;
    v192 = v295;
    sub_10002A894(v168, v295, &qword_10025B8C8, &qword_1001D0338);
    v193 = v192 + *(v297 + 44);
    *v193 = v170;
    *(v193 + 8) = v185;
    *(v193 + 16) = v187;
    *(v193 + 24) = v189;
    *(v193 + 32) = v191;
    *(v193 + 40) = 0;
    sub_10002A894(v192, v318, &qword_10025B8C0, &qword_1001D0330);
    v194 = sub_10000341C(&qword_10025B8D8, &qword_1001D0340);
    *&v304 = &v294;
    v303 = v194;
    v302 = *(v194 - 8);
    v301 = *(v302 + 64);
    __chkstk_darwin(v194);
    v196 = &v294 - v195;
    v197 = type metadata accessor for TransformSection(0);
    v298 = &v294;
    v198 = *(*(v197 - 1) + 64);
    v199 = __chkstk_darwin(v197);
    v201 = (&v294 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0));
    __chkstk_darwin(v199);
    v202 = (&v294 - v300);
    sub_10002631C(v178, &v294 - v300);
    v203 = v335;
    v204 = swift_allocObject();
    sub_100029074(v202, v203 + v204, v299);
    v205 = v197[5];
    v206 = type metadata accessor for GeometryProxy();
    (*(*(v206 - 8) + 16))(v201 + v205, v314, v206);
    swift_unknownObjectWeakLoadStrong();
    v207 = Environment.init<A>(_:)();
    v209 = v208;
    *v201 = sub_10002B208;
    v201[1] = v204;
    *(v201 + v197[6]) = v315;
    v210 = v197[7];
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v211 = v201 + v197[8];
    *v211 = v207;
    v211[8] = v209 & 1;
    v212 = v197[9];
    *(v201 + v212) = swift_getKeyPath();
    sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
    swift_storeEnumTagMultiPayload();
    v213 = v201 + v197[10];
    type metadata accessor for PresentationModel();
    sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
    *v213 = Environment.init<A>(_:)();
    v213[8] = v214 & 1;
    Bindable.wrappedValue.getter();
    sub_10002B028(&qword_10025B8E0, type metadata accessor for TransformSection);
    v336 = v196;
    View.environment<A>(_:)();

    sub_10002B070(v201, type metadata accessor for TransformSection);
    v215 = sub_10000341C(&qword_10025B8E8, &qword_1001D0348);
    v335 = &v294;
    v216 = *(*(v215 - 8) + 64);
    __chkstk_darwin(v215 - 8);
    v218 = &v294 - v217;
    if ((sub_100138554() & 1) == 0)
    {
      goto LABEL_22;
    }

    v219 = type metadata accessor for GenerativeAssistantRestrictionManager();
    v220 = *(v219 - 8);
    v221 = *(v220 + 64);
    __chkstk_darwin(v219);
    v334 = v216;
    v223 = &v294 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
    static GenerativeAssistantRestrictionManager.instance.getter();
    v224 = GenerativeAssistantRestrictions.isMontaraAllowed.getter();
    v225 = v223;
    v216 = v334;
    (*(v220 + 8))(v225, v219);
    if (v224)
    {
      v226 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
      v320 = &v294;
      v227 = v226 - 8;
      v228 = *(*(v226 - 8) + 64);
      __chkstk_darwin(v226);
      v229 = &v294 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0);
      Divider.init()();
      v230 = static Edge.Set.vertical.getter();
      EdgeInsets.init(_all:)();
      v231 = &v229[*(v227 + 44)];
      *v231 = v230;
      *(v231 + 1) = v232;
      *(v231 + 2) = v233;
      *(v231 + 3) = v234;
      *(v231 + 4) = v235;
      v231[40] = 0;
      v236 = sub_10000341C(&qword_10025B910, &qword_1001D0370);
      v315 = &v294;
      v237 = v236 - 8;
      v238 = *(*(v236 - 8) + 64);
      v239 = __chkstk_darwin(v236);
      v313 = ((v238 + 15) & 0xFFFFFFFFFFFFFFF0);
      v314 = v218;
      v240 = (&v294 - v313);
      __chkstk_darwin(v239);
      *(&v294 - 2) = v344;
      sub_10000341C(&qword_10025B918, &qword_1001D0378);
      sub_10002A99C();
      Section<>.init(content:)();
      Bindable.wrappedValue.getter();
      v241 = sub_1000A7C14();

      KeyPath = swift_getKeyPath();
      v243 = swift_allocObject();
      *(v243 + 16) = (v241 & 2) == 0;
      v244 = &v240[*(v237 + 44)];
      *v244 = KeyPath;
      v244[1] = sub_10002AAC0;
      v244[2] = v243;
      v338 = sub_10000341C(&qword_10025B8F0, &qword_1001D0350);
      v344 = &v294;
      v245 = *(v338 - 1);
      v246 = *(v245 + 64);
      v247 = __chkstk_darwin(v338);
      v249 = &v294 - v248;
      v337 = &v294;
      __chkstk_darwin(v247);
      v250 = sub_1000081F8(v229, v229, &qword_10025B888, &qword_1001D0300);
      v312 = &v294;
      __chkstk_darwin(v250);
      v251 = (&v294 - v313);
      sub_1000081F8(v240, &v294 - v313, &qword_10025B910, &qword_1001D0370);
      sub_1000081F8(v229, v249, &qword_10025B888, &qword_1001D0300);
      v252 = sub_10000341C(&unk_10025B940, &unk_1001D03B8);
      sub_1000081F8(v251, &v249[*(v252 + 48)], &qword_10025B910, &qword_1001D0370);
      sub_10000F500(v240, &qword_10025B910, &qword_1001D0370);
      sub_10000F500(v229, &qword_10025B888, &qword_1001D0300);
      sub_10000F500(v251, &qword_10025B910, &qword_1001D0370);
      sub_10000F500(v229, &qword_10025B888, &qword_1001D0300);
      v253 = v314;
      sub_10002A894(v249, v314, &qword_10025B8F0, &qword_1001D0350);
      v218 = v253;
      v216 = v334;
      (*(v245 + 56))(v253, 0, 1, v338);
    }

    else
    {
LABEL_22:
      v254 = sub_10000341C(&qword_10025B8F0, &qword_1001D0350);
      (*(*(v254 - 8) + 56))(v218, 1, 1, v254);
    }

    v334 = sub_10000341C(&qword_10025B8F8, &qword_1001D0358);
    v337 = &v294;
    v320 = *(v334 - 8);
    v255 = (v320[8] + 15) & 0xFFFFFFFFFFFFFFF0;
    v256 = __chkstk_darwin(v334);
    v258 = &v294 - v257;
    v315 = &v294;
    __chkstk_darwin(v256);
    v344 = (&v294 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0));
    v300 = *(v317 + 16);
    v260 = v300();
    v314 = &v294;
    __chkstk_darwin(v260);
    v338 = (&v294 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0));
    v262 = sub_1000081F8(v316, v338, &unk_100264220, &qword_1001D7E50);
    v313 = &v294;
    __chkstk_darwin(v262);
    v264 = &v294 - ((v263 + 15) & 0xFFFFFFFFFFFFFFF0);
    v306 = v264;
    v265 = sub_1000081F8(v318, v264, &qword_10025B8C0, &qword_1001D0330);
    v312 = &v294;
    __chkstk_darwin(v265);
    v267 = &v294 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0);
    v268 = v302;
    v269 = *(v302 + 16);
    v270 = v303;
    v271 = v269(v267, v336, v303);
    v308 = &v294;
    __chkstk_darwin(v271);
    v272 = &v294 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000081F8(v218, v272, &qword_10025B8E8, &qword_1001D0348);
    (v300)(v258, v344, v339);
    v273 = sub_10000341C(&qword_10025B900, &qword_1001D0360);
    sub_1000081F8(v338, &v258[v273[12]], &unk_100264220, &qword_1001D7E50);
    sub_1000081F8(v264, &v258[v273[16]], &qword_10025B8C0, &qword_1001D0330);
    v269(&v258[v273[20]], v267, v270);
    sub_1000081F8(v272, &v258[v273[24]], &qword_10025B8E8, &qword_1001D0348);
    v274 = &v258[v273[28]];
    *v274 = 0;
    v274[8] = 1;
    sub_10000F500(v218, &qword_10025B8E8, &qword_1001D0348);
    v275 = *(v268 + 8);
    v275(v336, v270);
    sub_10000F500(v318, &qword_10025B8C0, &qword_1001D0330);
    sub_10000F500(v316, &unk_100264220, &qword_1001D7E50);
    v276 = *(v317 + 8);
    v277 = v339;
    v276(v319, v339);
    sub_10000F500(v272, &qword_10025B8E8, &qword_1001D0348);
    v275(v267, v270);
    sub_10000F500(v306, &qword_10025B8C0, &qword_1001D0330);
    sub_10000F500(v338, &unk_100264220, &qword_1001D7E50);
    v276(v344, v277);
    v114 = v341;
    sub_10002A894(v258, v341, &qword_10025B8F8, &qword_1001D0358);
    v118 = (v320[7])(v114, 0, 1, v334);
    v112 = v311;
  }

  v344 = &v294;
  __chkstk_darwin(v118);
  v279 = &v294 - ((v278 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_1000081F8(v343, v279, &qword_10025B848, &qword_1001D0290);
  v339 = &v294;
  __chkstk_darwin(v280);
  v282 = &v294 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = v342;
  v284 = sub_1000081F8(v342, v282, &qword_10025B860, &qword_1001D02A8);
  v338 = &v294;
  __chkstk_darwin(v284);
  v285 = &v294 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081F8(v114, v285, &qword_10025B8A0, &qword_1001D0318);
  v286 = v333;
  sub_1000081F8(v279, v333, &qword_10025B848, &qword_1001D0290);
  v287 = sub_10000341C(&qword_10025B908, &qword_1001D0368);
  v288 = (v286 + v287[12]);
  v289 = v331;
  v290 = v330;
  *v288 = v331;
  v288[1] = v290;
  v291 = v328;
  v292 = v329;
  v288[2] = v328;
  v288[3] = v292;
  sub_1000081F8(v282, v286 + v287[16], &qword_10025B860, &qword_1001D02A8);
  sub_1000081F8(v285, v286 + v287[20], &qword_10025B8A0, &qword_1001D0318);
  sub_10002A8FC(v289, v290, v291, v292);
  sub_10002A940(v289, v290, v291, v292);
  sub_10000F500(v341, &qword_10025B8A0, &qword_1001D0318);
  sub_10000F500(v283, &qword_10025B860, &qword_1001D02A8);
  sub_10000F500(v343, &qword_10025B848, &qword_1001D0290);
  sub_10000F500(v285, &qword_10025B8A0, &qword_1001D0318);
  sub_10000F500(v282, &qword_10025B860, &qword_1001D02A8);
  sub_10002A940(v289, v290, v291, v292);
  return sub_10000F500(v279, &qword_10025B848, &qword_1001D0290);
}

uint64_t sub_10001B2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = type metadata accessor for HeaderButtonWithIconStyle(0);
  v4 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v67 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WritingToolsView();
  v7 = v6 - 8;
  v59 = *(v6 - 8);
  v8 = *(v59 + 64);
  __chkstk_darwin(v6);
  v60 = v9;
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_10025B9A0, &qword_1001D04F8);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  __chkstk_darwin(v10);
  v63 = &v58 - v12;
  v13 = sub_10000341C(&qword_10025B9A8, &qword_1001D0500);
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  __chkstk_darwin(v13);
  v62 = &v58 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v68 = *(v16 - 8);
  v17 = *(v68 + 64);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000341C(&qword_10025B9B0, &qword_1001D0508);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v75 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v58 - v24;
  v26 = *(v7 + 88);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v95 = 1;
  v94 = v89;
  v93 = v91;
  v96 = 1;
  *&v83 = 0;
  BYTE8(v83) = 1;
  *&v84 = v88;
  BYTE8(v84) = v89;
  *&v85 = v90;
  BYTE8(v85) = v91;
  v86 = v92;
  BYTE8(v87[1]) = 1;
  sub_10000341C(&qword_10025B9B8, &unk_1001D0510);
  sub_10000341C(&qword_10025B9C0, &qword_1001D6190);
  sub_100007120(&qword_10025B9C8, &qword_10025B9B8, &unk_1001D0510);
  sub_10002AF84();
  _ConditionalContent<>.init(storage:)();
  LocalizedStringKey.init(stringLiteral:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v71 = v28;
  v72 = v27;
  v69 = v29;
  v70 = v30;
  v31 = *(a1 + 16);
  LOBYTE(v26) = *(a1 + 24);

  if ((v26 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v68 + 8))(v19, v16);
    v31 = v83;
  }

  if (!v31)
  {
    goto LABEL_8;
  }

  v33 = [objc_opt_self() currentDevice];
  v34 = [v33 userInterfaceIdiom];

  if (v34 != 6 && !sub_10016FEDC())
  {

LABEL_8:
    v45 = 1;
    v44 = v73;
    v43 = v74;
    goto LABEL_9;
  }

  v35 = v61;
  sub_10002631C(a1, v61);
  v36 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v37 = swift_allocObject();
  sub_100029074(v35, v37 + v36, type metadata accessor for WritingToolsView);
  v38 = v63;
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v40 = v67;
  *v67 = KeyPath;
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  sub_100007120(&qword_10025B9F0, &qword_10025B9A0, &qword_1001D04F8);
  sub_10002B028(&qword_10025B9F8, type metadata accessor for HeaderButtonWithIconStyle);
  v41 = v62;
  v42 = v65;
  View.buttonStyle<A>(_:)();

  sub_10002B070(v40, type metadata accessor for HeaderButtonWithIconStyle);
  (*(v64 + 8))(v38, v42);
  v44 = v73;
  v43 = v74;
  (*(v73 + 32))(v25, v41, v74);
  v45 = 0;
LABEL_9:
  v46 = v25;
  (*(v44 + 56))(v25, v45, 1, v43);
  v78 = v99;
  v79 = v100;
  v80[0] = v101[0];
  *(v80 + 9) = *(v101 + 9);
  v76 = v97;
  v77 = v98;
  v47 = v75;
  sub_1000081F8(v25, v75, &qword_10025B9B0, &qword_1001D0508);
  v48 = v79;
  v81[2] = v78;
  v81[3] = v79;
  v49 = v80[0];
  v82[0] = v80[0];
  v50 = *(v80 + 9);
  *(v82 + 9) = *(v80 + 9);
  v51 = v76;
  v52 = v77;
  v81[0] = v76;
  v81[1] = v77;
  *(a2 + 32) = v78;
  *(a2 + 48) = v48;
  *(a2 + 64) = v49;
  *(a2 + 73) = v50;
  *a2 = v51;
  *(a2 + 16) = v52;
  v53 = v71;
  v54 = v72;
  *(a2 + 96) = v72;
  *(a2 + 104) = v53;
  v55 = v69 & 1;
  *(a2 + 112) = v69 & 1;
  *(a2 + 120) = v70;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v56 = sub_10000341C(&qword_10025B9D8, &qword_1001D0520);
  sub_1000081F8(v47, a2 + *(v56 + 80), &qword_10025B9B0, &qword_1001D0508);
  sub_1000081F8(v81, &v83, &unk_10025B9E0, &qword_1001D0528);
  sub_100007D98(v54, v53, v55);

  sub_10000F500(v46, &qword_10025B9B0, &qword_1001D0508);
  sub_10000F500(v47, &qword_10025B9B0, &qword_1001D0508);
  sub_10002A984(v54, v53, v55);

  v85 = v78;
  v86 = v79;
  v87[0] = v80[0];
  *(v87 + 9) = *(v80 + 9);
  v83 = v76;
  v84 = v77;
  return sub_10000F500(&v83, &unk_10025B9E0, &qword_1001D0528);
}

void *sub_10001BBE4()
{
  v0 = *(type metadata accessor for WritingToolsView() + 28);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result endWritingTools];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001BC4C@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(21);
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

const char *sub_10001BC7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v90 = a4;
  v88 = a2;
  v89 = a3;
  v91 = 0;
  v7 = type metadata accessor for NavigationPath();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v82[0] = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WritingToolsView();
  v83 = *(v10 - 1);
  v11 = *(v83 + 64);
  __chkstk_darwin(v10);
  v85 = v12;
  v86 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v84 = v82 - v15;
  v16 = v10[20];
  v17 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v18 = type metadata accessor for RewritingModel();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1000C32AC();
  sub_1000A73A0(v21);

  Bindable.wrappedValue.getter();
  v22 = v96[0];
  swift_getKeyPath();
  v96[0] = v22;
  v23 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v22 + 24);

  v25 = v88;
  v26 = v89;
  LOBYTE(v22) = v90;
  sub_10000F3F4(a1, v88, v89, v90);
  v87 = a1;
  sub_100036534(a1, v25, v26, v22);

  Bindable.wrappedValue.getter();
  v27 = v96[0];
  swift_getKeyPath();
  v96[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v27 + 24);

  v29 = v10[7];
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  Bindable.wrappedValue.getter();
  v30 = v96[0];
  swift_getKeyPath();
  v96[0] = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v30 + 24);

  v32 = *(v5 + v10[8]);
  v33 = v32;
  sub_100035E70(v32);

  v93 = v16;
  Bindable.wrappedValue.getter();
  v34 = v96[0];
  swift_getKeyPath();
  v96[0] = v34;
  v94 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v34 + 24);

  v92 = v10;
  v36 = *(v5 + v10[11]);
  if (v36 == *(v35 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent))
  {
    *(v35 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = v36;

    v38 = v91;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v82[-2] = v35;
    LOBYTE(v82[-1]) = v36;
    v96[0] = v35;
    sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel);
    v38 = v91;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v39 = v96[0];
  swift_getKeyPath();
  v96[0] = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(v39 + 24);

  v41 = *(v5 + v92[13]);
  if (*(v40 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) != v41)
  {
    v42 = swift_getKeyPath();
    __chkstk_darwin(v42);
    v82[-2] = v40;
    v82[-1] = v41;
    v96[0] = v40;
    sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v43 = v96[0];
  swift_getKeyPath();
  v96[0] = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v43 + 24);

  v45 = *(v5 + v92[12]);
  if (v45 == *(v44 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing))
  {
    *(v44 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = v45;
  }

  else
  {
    v46 = swift_getKeyPath();
    __chkstk_darwin(v46);
    v82[-2] = v44;
    LOBYTE(v82[-1]) = v45;
    v96[0] = v44;
    sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  Bindable.wrappedValue.getter();
  v47 = v96[0];
  swift_getKeyPath();
  v96[0] = v47;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v47 + 24);

  v49 = *(v5 + v92[14]);
  if (v49 == *(v48 + 64))
  {
    *(v48 + 64) = v49;

    v91 = v38;
  }

  else
  {
    v50 = swift_getKeyPath();
    __chkstk_darwin(v50);
    v82[-2] = v48;
    LOBYTE(v82[-1]) = v49;
    v96[0] = v48;
    sub_10002B028(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v91 = v38;
  }

  Bindable.wrappedValue.getter();
  v51 = v96[0];
  swift_getKeyPath();
  v96[0] = v51;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(v51 + 24);

  v53 = v92;
  v54 = v92[19];
  sub_10000341C(&unk_10025B200, &qword_1001CFB18);
  State.wrappedValue.getter();
  v55 = swift_getKeyPath();
  __chkstk_darwin(v55);
  v82[-2] = v52;
  v82[-1] = v96;
  v95 = v52;
  sub_10002B028(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000F500(v96, &unk_10025B1C0, &unk_1001CFA90);
  v82[1] = v17;
  Bindable.wrappedValue.getter();
  v56 = v96[0];
  swift_getKeyPath();
  v96[0] = v56;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v56 + 24);

  v58 = (v5 + v53[15]);
  v59 = *v58;
  v60 = v58[1];

  sub_100036040(v59, v60);

  Bindable.wrappedValue.getter();
  v61 = v96[0];
  swift_getKeyPath();
  v96[0] = v61;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v61 + 24);

  v63 = (v5 + v53[16]);
  v64 = *v63;
  v65 = v63[1];

  sub_100036200(v64, v65);

  v66 = type metadata accessor for TaskPriority();
  v67 = v84;
  (*(*(v66 - 8) + 56))(v84, 1, 1, v66);
  v68 = v86;
  sub_10002631C(v5, v86);
  type metadata accessor for MainActor();
  v69 = static MainActor.shared.getter();
  v70 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v69;
  *(v71 + 24) = &protocol witness table for MainActor;
  sub_100029074(v68, v71 + v70, type metadata accessor for WritingToolsView);
  sub_10015C9C8(0, 0, v67, &unk_1001D0490, v71);

  Bindable.wrappedValue.getter();
  v72 = v96[0];
  swift_getKeyPath();
  v96[0] = v72;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73 = *(v72 + 24);

  v74 = sub_1000B1594();

  v76 = v87;
  v75 = v88;
  v77 = v89;
  v78 = v90;
  if (sub_100023698(v87, v88, v89, v90) || (v74 & 1) == 0)
  {
    v96[0] = v76;
    v96[1] = v75;
    v96[2] = v77;
    v97 = v78;
    v79 = v92[17];
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.wrappedValue.getter();
    sub_100025A68();
    NavigationPath.append<A>(_:)();
    State.wrappedValue.setter();
  }

  result = sub_10006CA84(v76, v75, v77, v78);
  if ((v81 & 0x100) == 0)
  {
    return sub_10006CF60(result);
  }

  return result;
}

uint64_t sub_10001C9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001CA90, v5, v4);
}

uint64_t sub_10001CA90()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(type metadata accessor for WritingToolsView() + 28);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"supressAssistantBarInUIService"])
    {
      [v5 supressAssistantBarInUIService];
    }

    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001CB38(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = a4;
  v22 = a2;
  v23 = a3;
  v6 = type metadata accessor for NavigationPath();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for WritingToolsView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_10002631C(v4, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_100029074(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for WritingToolsView);
  sub_10015C9C8(0, 0, v14, &unk_1001D04F0, v18);

  if (sub_100023698(0, 0, 0, 255))
  {
    v25 = a1;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v19 = *(v8 + 68);
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.wrappedValue.getter();
    sub_100025A68();
    NavigationPath.append<A>(_:)();
    State.wrappedValue.setter();
  }

  return sub_10006CF60("ProofreadGeneration");
}

double sub_10001CE08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WritingToolsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10002631C(a1, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100029074(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for WritingToolsView);
  v15 = a1;
  sub_10000341C(&qword_10025B950, &qword_1001D03C8);
  sub_10002AAE8();
  Button.init(action:label:)();
  v16 = 0;
  v17 = 0;
  v18 = 1;
  sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v9 = v19;
  v10 = v20;
  v11 = v22;
  LOBYTE(v19) = v21;
  v12 = a2 + *(sub_10000341C(&qword_10025B918, &qword_1001D0378) + 36);
  *&result = 16842752;
  *v12 = 16842752;
  *(v12 + 8) = v9;
  *(v12 + 16) = v10;
  *(v12 + 24) = v19;
  *(v12 + 32) = v11;
  return result;
}

void *sub_10001CFDC()
{
  v0 = type metadata accessor for NavigationPath();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for WritingToolsView();
  v3 = v2[20];
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v16[0] + 32);

  swift_getKeyPath();
  v16[0] = v4;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  sub_100170300();

  v6 = v2[19];
  sub_10000341C(&unk_10025B200, &qword_1001CFB18);
  State.wrappedValue.getter();
  if (v17)
  {
    sub_100028458(v16, v15);
    sub_10000F500(v16, &unk_10025B1C0, &unk_1001CFA90);
    v7 = sub_100027874(v15, v15[3]);
    if (qword_10025A600 != -1)
    {
      v14 = v7;
      swift_once();
      v7 = v14;
    }

    v8 = *v7;
    sub_100009C54(qword_100276E10);
    sub_10000F4B4(v15);
  }

  else
  {
    sub_10000F500(v16, &unk_10025B1C0, &unk_1001CFA90);
  }

  v17 = &type metadata for WritingTools;
  v18 = sub_10002AC88();
  LOBYTE(v16[0]) = 6;
  v9 = isFeatureEnabled(_:)();
  sub_10000F4B4(v16);
  if (v9)
  {
    v10 = v2[7];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      if ([result respondsToSelector:"updatePromptEntryState:"])
      {
        [v12 updatePromptEntryState:1];
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    LOBYTE(v17) = 1;
    v13 = v2[17];
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.wrappedValue.getter();
    sub_100025A68();
    NavigationPath.append<A>(_:)();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10001D350@<X0>(uint64_t a1@<X8>)
{
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  LabeledContent<>.init(content:label:)();
  v2 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = sub_10000341C(&qword_10025B950, &qword_1001D03C8);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_10001D478@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10001D4C0()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = *(type metadata accessor for WritingToolsView() + 80);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100125454(16);
  sub_10002AC34();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_10001D638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001D768(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, a3);
  v5 = a2 + *(type metadata accessor for WritingToolsView() + 92);
  v15 = *v5;
  v16 = *(v5 + 8);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  type metadata accessor for PresentationModel();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
  v6 = Environment.init<A>(_:)();
  v8 = v7;
  v9 = static Alignment.center.getter();
  v11 = v10;
  result = sub_10000341C(&qword_10025B730, &qword_1001D01D0);
  v13 = a3 + *(result + 36);
  *v13 = v6;
  *(v13 + 8) = v8 & 1;
  *(v13 + 9) = 0;
  *(v13 + 10) = v14;
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  return result;
}

uint64_t sub_10001D768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v373 = a6;
  if (!a4)
  {
    v367 = a2;
    v371 = a3;
    v369 = sub_10000341C(&qword_10025B798, &qword_1001D0200);
    v64 = *(*(v369 - 1) + 64);
    __chkstk_darwin(v369);
    v370 = &v351 - v65;
    v66 = type metadata accessor for WritingToolsView();
    v67 = v66[20];
    sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
    Bindable.wrappedValue.getter();
    v68 = v376;
    swift_getKeyPath();
    v376 = v68;
    v69 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v70 = *(v68 + 24);

    LOBYTE(v68) = sub_1000B1594();

    v372 = a5;
    if (v68)
    {
      v366 = sub_10000341C(&qword_10025B7A8, &qword_1001D0208);
      v368 = &v351;
      v71 = (*(*(v366 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v366);
      v72 = a5;
      v74 = &v351 - v73;
      Bindable.wrappedValue.getter();
      v75 = v376;
      swift_getKeyPath();
      v376 = v75;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v365 = *(v75 + 24);

      v76 = v66[17];
      v360 = type metadata accessor for RewritingView();
      v77 = v360[10];
      sub_10000341C(&qword_10025B260, &qword_1001CFC10);
      State.projectedValue.getter();
      v78 = v72 + v66[23];
      v79 = *v78;
      v80 = *(v78 + 8);
      LOBYTE(v374) = v79;
      v375 = v80;
      sub_10000341C(&unk_1002640F0, &qword_1001D3490);
      v81 = State.projectedValue.getter();
      v364 = &v351;
      v362 = v377;
      v363 = v376;
      LODWORD(v361) = v378;
      v82 = *(v66 - 1);
      v83 = *(v82 + 64);
      __chkstk_darwin(v81);
      v84 = &v351 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      v358 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
      sub_10002631C(v72, v84);
      v85 = ((*(v82 + 80) + 16) & ~*(v82 + 80));
      v357 = v83;
      v353 = v69;
      v359 = (v85 + v83);
      v354 = swift_allocObject();
      v356 = v85;
      v86 = sub_100029074(v84, v85 + v354, type metadata accessor for WritingToolsView);
      v355 = &v351;
      __chkstk_darwin(v86);
      sub_10002631C(v72, v84);
      v87 = swift_allocObject();
      sub_100029074(v84, v85 + v87, type metadata accessor for WritingToolsView);
      v88 = v87 + ((v85 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
      v89 = v367;
      *v88 = a1;
      *(v88 + 8) = v89;
      *(v88 + 16) = v371;
      *(v88 + 24) = 0;
      type metadata accessor for CommonUIManager();
      sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);

      *v74 = Environment.init<A>(_:)();
      v74[8] = v90 & 1;
      type metadata accessor for WritingToolsModel();
      *(v74 + 2) = Environment.init<A>(_:)();
      v74[24] = v91 & 1;
      type metadata accessor for PresentationModel();
      sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
      *(v74 + 4) = Environment.init<A>(_:)();
      v74[40] = v92 & 1;
      LOBYTE(v374) = 0;
      State.init(wrappedValue:)();
      v93 = v377;
      v74[56] = v376;
      *(v74 + 8) = v93;
      v94 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
      v95 = (*(*(v94 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v94 - 8);
      v97 = &v351 - v96;
      v98 = type metadata accessor for FBKSEvaluation.Subject();
      (*(*(v98 - 8) + 56))(v97, 1, 1, v98);
      v99 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
      v374 = FBKEvaluationController.init(subject:)();
      State.init(wrappedValue:)();
      v100 = v377;
      *(v74 + 9) = v376;
      *(v74 + 10) = v100;
      v101 = v360;
      v102 = &v74[v360[11]];
      v103 = FocusState.init<>()();
      *v102 = v103 & 1;
      *(v102 + 1) = v104;
      v102[16] = v105 & 1;
      *(v74 + 6) = v365;
      v106 = &v74[v101[12]];
      v107 = v362;
      *v106 = v363;
      *(v106 + 1) = v107;
      v106[16] = v361;
      v108 = &v74[v101[13]];
      v109 = v354;
      *v108 = sub_10002B2B0;
      *(v108 + 1) = v109;
      v110 = &v74[v101[14]];
      *v110 = sub_10002A390;
      *(v110 + 1) = v87;
      __chkstk_darwin(v103);
      v111 = &v351 - v358;
      sub_10002631C(v372, &v351 - v358);
      v112 = swift_allocObject();
      sub_100029074(v111, v356 + v112, type metadata accessor for WritingToolsView);
      v113 = &v74[*(v366 + 9)];
      *v113 = 0;
      *(v113 + 1) = 0;
      *(v113 + 2) = sub_10002B25C;
      *(v113 + 3) = v112;
      v114 = sub_10000341C(&qword_10025B818, &qword_1001D0250);
      v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v114);
      sub_1000081F8(v74, &v351 - v116, &qword_10025B7A8, &qword_1001D0208);
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_10025B7C8, &qword_1001D0218);
      sub_100029A54();
      sub_100029B9C();
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v74, &qword_10025B7A8, &qword_1001D0208);
    }

    else
    {
      v366 = sub_10000341C(&qword_10025B7C8, &qword_1001D0218);
      v368 = &v351;
      v178 = (*(*(v366 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v366);
      v180 = (&v351 - v179);
      Bindable.wrappedValue.getter();
      v181 = v376;
      swift_getKeyPath();
      v376 = v181;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v365 = *(v181 + 24);

      v182 = v66[17];
      v183 = type metadata accessor for ModelResponseView(0);
      v184 = v183[10];
      sub_10000341C(&qword_10025B260, &qword_1001CFC10);
      v185 = State.projectedValue.getter();
      v364 = &v351;
      v186 = *(v66 - 1);
      v187 = *(v186 + 64);
      __chkstk_darwin(v185);
      v362 = (v187 + 15) & 0xFFFFFFFFFFFFFFF0;
      v188 = &v351 - v362;
      sub_10002631C(a5, &v351 - v362);
      v189 = (*(v186 + 80) + 16) & ~*(v186 + 80);
      v363 = (v189 + v187);
      v190 = swift_allocObject();
      v361 = type metadata accessor for WritingToolsView;
      sub_100029074(v188, v190 + v189, type metadata accessor for WritingToolsView);
      v191 = v190 + ((v189 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
      v192 = v367;
      *v191 = a1;
      *(v191 + 8) = v192;
      *(v191 + 16) = v371;
      *(v191 + 24) = 0;
      *v180 = swift_getKeyPath();
      sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
      swift_storeEnumTagMultiPayload();
      v193 = v180 + v183[5];
      type metadata accessor for CommonUIManager();
      sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);

      *v193 = Environment.init<A>(_:)();
      v193[8] = v194 & 1;
      v195 = v180 + v183[6];
      type metadata accessor for PresentationModel();
      sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel);
      *v195 = Environment.init<A>(_:)();
      v195[8] = v196 & 1;
      v197 = v180 + v183[8];
      LOBYTE(v374) = 0;
      State.init(wrappedValue:)();
      v198 = v377;
      *v197 = v376;
      *(v197 + 1) = v198;
      v199 = (v180 + v183[9]);
      v200 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
      v201 = (*(*(v200 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v200 - 8);
      v203 = &v351 - v202;
      v204 = type metadata accessor for FBKSEvaluation.Subject();
      (*(*(v204 - 8) + 56))(v203, 1, 1, v204);
      v205 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
      v374 = FBKEvaluationController.init(subject:)();
      State.init(wrappedValue:)();
      v206 = v377;
      *v199 = v376;
      v199[1] = v206;
      v207 = (v180 + v183[7]);
      v374 = v365;
      type metadata accessor for RewritingModel();
      v208 = State.init(wrappedValue:)();
      v209 = v377;
      *v207 = v376;
      v207[1] = v209;
      v210 = (v180 + v183[11]);
      *v210 = sub_10002B2B4;
      v210[1] = v190;
      __chkstk_darwin(v208);
      v211 = &v351 - v362;
      sub_10002631C(v372, &v351 - v362);
      v212 = swift_allocObject();
      sub_100029074(v211, v212 + v189, v361);
      v213 = (v180 + *(v366 + 9));
      *v213 = 0;
      v213[1] = 0;
      v213[2] = sub_10002B25C;
      v213[3] = v212;
      v214 = sub_10000341C(&qword_10025B818, &qword_1001D0250);
      v215 = (*(*(v214 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v214);
      sub_1000081F8(v180, &v351 - v216, &qword_10025B7C8, &qword_1001D0218);
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_10025B7A8, &qword_1001D0208);
      sub_100029A54();
      sub_100029B9C();
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v180, &qword_10025B7C8, &qword_1001D0218);
    }

    v368 = sub_10000341C(&qword_10025B768, &qword_1001D01E8);
    v372 = &v351;
    v217 = (*(*(v368 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v368);
    v219 = &v351 - v218;
    v220 = sub_10000341C(&qword_10025B778, &qword_1001D01F0);
    v371 = &v351;
    v221 = (*(*(v220 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v220);
    v223 = &v351 - v222;
    v224 = sub_10000341C(&qword_10025B820, &qword_1001D0258);
    v225 = (*(*(v224 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v224);
    v226 = v370;
    sub_1000081F8(v370, &v351 - v227, &qword_10025B798, &qword_1001D0200);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B788, &qword_1001D01F8);
    sub_10002993C();
    sub_1000299C8();
    _ConditionalContent<>.init(storage:)();
    v228 = sub_10000341C(&qword_10025B808, &qword_1001D0240);
    v229 = (*(*(v228 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v228);
    sub_1000081F8(v223, &v351 - v230, &qword_10025B778, &qword_1001D01F0);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B7E8, &qword_1001D0228);
    sub_1000298B0();
    sub_100029CE4();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v223, &qword_10025B778, &qword_1001D01F0);
    v231 = sub_10000341C(&qword_10025B810, &qword_1001D0248);
    v232 = (*(*(v231 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v231);
    sub_1000081F8(v219, &v351 - v233, &qword_10025B768, &qword_1001D01E8);
    swift_storeEnumTagMultiPayload();
    sub_100029824();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v219, &qword_10025B768, &qword_1001D01E8);
    return sub_10000F500(v226, &qword_10025B798, &qword_1001D0200);
  }

  if (a4 == 1)
  {
    v371 = a3;
    v367 = sub_10000341C(&qword_10025B5F8, &qword_1001CFFD0);
    v370 = *(v367 - 1);
    v9 = (*(v370 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v367);
    v369 = &v351 - v10;
    v368 = sub_10000341C(&unk_10025B300, &qword_1001CFC58);
    v366 = &v351;
    v365 = *(v368 - 1);
    v11 = (v365[8] + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v368);
    v363 = &v351 - v12;
    v13 = type metadata accessor for CompositionView(0);
    v364 = &v351;
    v14 = *(*(v13 - 1) + 64);
    __chkstk_darwin(v13);
    v16 = &v351 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = type metadata accessor for WritingToolsView();
    v18 = v17[17];
    v19 = v13[7];
    sub_10000F414(a1, a2);
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    State.projectedValue.getter();
    v20 = a5 + v17[23];
    v21 = *v20;
    v22 = *(v20 + 8);
    LOBYTE(v374) = v21;
    v375 = v22;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.projectedValue.getter();
    v23 = a2;
    v24 = v376;
    v25 = v377;
    v26 = v378;
    v27 = type metadata accessor for CompositionModel(0);
    v28 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
    v361 = v27;
    v362 = v28;
    *(v16 + 3) = Environment.init<A>(_:)();
    v16[32] = v29 & 1;
    type metadata accessor for CommonUIManager();
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    *(v16 + 5) = Environment.init<A>(_:)();
    v16[48] = v30 & 1;
    v31 = &v16[v13[9]];
    *v31 = FocusState.init<>()() & 1;
    *(v31 + 1) = v32;
    v31[16] = v33 & 1;
    *v16 = a1;
    *(v16 + 1) = v23;
    v16[16] = v371;
    v34 = &v16[v13[8]];
    *v34 = v24;
    *(v34 + 1) = v25;
    v34[16] = v26;
    v35 = v17[20];
    sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
    Bindable.wrappedValue.getter();
    v371 = type metadata accessor for WritingToolsModel();
    v36 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView);
    v37 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    v38 = v363;
    View.environment<A>(_:)();

    sub_10002B070(v16, type metadata accessor for CompositionView);
    Bindable.wrappedValue.getter();
    v39 = v376;
    swift_getKeyPath();
    v376 = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = *(v39 + 32);

    v376 = v13;
    v377 = v371;
    v378 = v36;
    v379 = v37;
    v364 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v368;
    v43 = v369;
    v45 = v361;
    v44 = v362;
    View.environment<A>(_:)();

    (v365[1])(v38, v42);
    v371 = sub_10000341C(&qword_10025B768, &qword_1001D01E8);
    v372 = &v351;
    v46 = (*(*(v371 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v371);
    v48 = &v351 - v47;
    v365 = sub_10000341C(&qword_10025B7E8, &qword_1001D0228);
    v366 = &v351;
    v49 = (*(*(v365 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v365);
    v51 = &v351 - v50;
    v52 = sub_10000341C(&qword_10025B800, &qword_1001D0238);
    v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v52);
    v55 = v43;
    v56 = v367;
    (*(v370 + 16))(&v351 - v54, v55, v367);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B7F8, &qword_1001D0230);
    v376 = v368;
    v377 = v45;
    v378 = OpaqueTypeConformance2;
    v379 = v44;
    swift_getOpaqueTypeConformance2();
    sub_100029EA0();
    _ConditionalContent<>.init(storage:)();
    v57 = sub_10000341C(&qword_10025B808, &qword_1001D0240);
    v58 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v57);
    sub_1000081F8(v51, &v351 - v59, &qword_10025B7E8, &qword_1001D0228);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B778, &qword_1001D01F0);
    sub_1000298B0();
    sub_100029CE4();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v51, &qword_10025B7E8, &qword_1001D0228);
    v60 = sub_10000341C(&qword_10025B810, &qword_1001D0248);
    v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v60);
    sub_1000081F8(v48, &v351 - v62, &qword_10025B768, &qword_1001D01E8);
    swift_storeEnumTagMultiPayload();
    sub_100029824();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v48, &qword_10025B768, &qword_1001D01E8);
    return (*(v370 + 8))(v369, v56);
  }

  if (!(a3 | a2 | a1))
  {
LABEL_28:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v372 = a5;
  if (a1 == 1 && !(a3 | a2))
  {
    v370 = sub_10000341C(&qword_10025B788, &qword_1001D01F8);
    v117 = *(*(v370 - 8) + 64);
    v118 = __chkstk_darwin(v370);
    v371 = (&v351 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
    v369 = &v351;
    __chkstk_darwin(v118);
    v368 = &v351 - v120;
    v121 = sub_10000341C(&qword_10025B2A8, &qword_1001CFC38);
    v367 = &v351;
    v122 = (*(*(v121 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v121 - 8);
    v366 = (&v351 - v123);
    v364 = sub_10000341C(&qword_10025B650, &qword_1001D0080);
    v365 = &v351;
    v363 = *(v364 - 1);
    v124 = (*(v363 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v364);
    v362 = &v351 - v125;
    v126 = type metadata accessor for ProofreadingView();
    v361 = &v351;
    v127 = (v126 - 8);
    v128 = *(*(v126 - 8) + 64);
    __chkstk_darwin(v126);
    v130 = &v351 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
    v131 = type metadata accessor for WritingToolsView();
    v132 = (a5 + *(v131 + 84));
    v134 = *v132;
    v133 = v132[1];
    v376 = v134;
    v377 = v133;
    sub_10000341C(&unk_10025B658, &qword_1001D0830);
    State.wrappedValue.getter();
    v358 = v374;
    v135 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v359 = &v351;
    v136 = (*(*(v135 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v135 - 8);
    v138 = &v351 - v137;
    v139 = *(v131 + 68);
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v140 = State.projectedValue.getter();
    v356 = &v351;
    v141 = *(v131 - 8);
    v142 = *(v141 + 64);
    __chkstk_darwin(v140);
    v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_10002631C(v372, &v351 - v143);
    v144 = *(v141 + 80);
    v145 = (v144 + 16) & ~v144;
    v357 = v145 + v142;
    v146 = swift_allocObject();
    v355 = type metadata accessor for WritingToolsView;
    v360 = v145;
    sub_100029074(&v351 - v143, v146 + v145, type metadata accessor for WritingToolsView);
    v147 = v146 + ((v145 + v142 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(v147 + 8) = 0;
    *(v147 + 16) = 0;
    *v147 = 1;
    *(v147 + 24) = 2;
    type metadata accessor for CommonUIManager();
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    *v130 = Environment.init<A>(_:)();
    v130[8] = v148 & 1;
    v149 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
    v150 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v149 - 8);
    v152 = &v351 - v151;
    v153 = type metadata accessor for FBKSEvaluation.Subject();
    (*(*(v153 - 8) + 56))(v152, 1, 1, v153);
    v154 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
    v374 = FBKEvaluationController.init(subject:)();
    State.init(wrappedValue:)();
    v155 = v377;
    *(v130 + 4) = v376;
    *(v130 + 5) = v155;
    v156 = &v130[v127[10]];
    AccessibilityFocusState.init<>()();
    sub_1000081F8(v138, &v130[v127[9]], &qword_1002632E0, &qword_1001D11A0);
    v374 = v358;
    type metadata accessor for ProofreadingModel();
    State.init(wrappedValue:)();
    v157 = sub_10000F500(v138, &qword_1002632E0, &qword_1001D11A0);
    v158 = v377;
    *(v130 + 2) = v376;
    *(v130 + 3) = v158;
    v159 = &v130[v127[11]];
    *v159 = sub_10002B2B4;
    *(v159 + 1) = v146;
    v354 = &v351;
    __chkstk_darwin(v157);
    v160 = &v351 - v143;
    v161 = v372;
    sub_10002631C(v372, v160);
    type metadata accessor for MainActor();
    v162 = static MainActor.shared.getter();
    v359 = v142;
    v358 = v144;
    v163 = swift_allocObject();
    *(v163 + 16) = v162;
    *(v163 + 24) = &protocol witness table for MainActor;
    sub_100029074(v160, v163 + ((v144 + 32) & ~v144), v355);
    v356 = type metadata accessor for TaskPriority();
    v164 = *(v356 - 1);
    v165 = *(v164 + 64);
    __chkstk_darwin(v356);
    v166 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
    v167 = &v351 - v166;
    static TaskPriority.userInitiated.getter();
    if (sub_1001C7274(2, 26, 4, 0))
    {
      v352 = type metadata accessor for _TaskModifier2();
      v353 = &v351;
      v351 = *(v352 - 8);
      v168 = *(v351 + 64);
      __chkstk_darwin(v352);
      v170 = &v351 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
      v376 = 0;
      v377 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v376 = 0xD000000000000039;
      v377 = 0x80000001001E38C0;
      v374 = 326;
      v171._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v171);

      v355 = &v351;
      __chkstk_darwin(v172);
      v173 = &v351 - v166;
      v174 = &v351 - v166;
      v175 = v356;
      (*(v164 + 16))(v173, v174, v356);
      v161 = v372;
      _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
      (*(v164 + 8))(v167, v175);
      v176 = v362;
      sub_100029074(v130, v362, type metadata accessor for ProofreadingView);
      v177 = sub_10000341C(&qword_10025A938, &qword_1001CE118);
      (*(v351 + 32))(v176 + *(v177 + 36), v170, v352);
    }

    else
    {
      v324 = sub_10000341C(&qword_10025A940, &unk_1001CE120);
      v176 = v362;
      v325 = (v362 + *(v324 + 36));
      v326 = type metadata accessor for _TaskModifier();
      (*(v164 + 32))(&v325[*(v326 + 20)], v167, v356);
      *v325 = &unk_1001D0268;
      *(v325 + 1) = v163;
      sub_100029074(v130, v176, type metadata accessor for ProofreadingView);
    }

    v327 = v366;
    v328 = (*(v363 + 4))(v366, v176, v364);
    __chkstk_darwin(v328);
    v330 = &v351 - ((v329 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10002631C(v161, v330);
    v331 = swift_allocObject();
    sub_100029074(v330, v360 + v331, type metadata accessor for WritingToolsView);
    v332 = v368;
    sub_10002A894(v327, v368, &qword_10025B2A8, &qword_1001CFC38);
    v333 = v371;
    v334 = (v332 + *(v370 + 36));
    *v334 = 0;
    v334[1] = 0;
    v334[2] = sub_10002A51C;
    v334[3] = v331;
    sub_10002A894(v332, v333, &qword_10025B788, &qword_1001D01F8);
    v369 = sub_10000341C(&qword_10025B768, &qword_1001D01E8);
    v372 = &v351;
    v335 = (*(*(v369 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v369);
    v337 = &v351 - v336;
    v338 = sub_10000341C(&qword_10025B778, &qword_1001D01F0);
    v368 = &v351;
    v339 = (*(*(v338 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v338);
    v341 = &v351 - v340;
    v342 = sub_10000341C(&qword_10025B820, &qword_1001D0258);
    v343 = (*(*(v342 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v342);
    sub_1000081F8(v333, &v351 - v344, &qword_10025B788, &qword_1001D01F8);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B798, &qword_1001D0200);
    sub_10002993C();
    sub_1000299C8();
    _ConditionalContent<>.init(storage:)();
    v345 = sub_10000341C(&qword_10025B808, &qword_1001D0240);
    v346 = (*(*(v345 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v345);
    sub_1000081F8(v341, &v351 - v347, &qword_10025B778, &qword_1001D01F0);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025B7E8, &qword_1001D0228);
    sub_1000298B0();
    sub_100029CE4();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v341, &qword_10025B778, &qword_1001D01F0);
    v348 = sub_10000341C(&qword_10025B810, &qword_1001D0248);
    v349 = (*(*(v348 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v348);
    sub_1000081F8(v337, &v351 - v350, &qword_10025B768, &qword_1001D01E8);
    swift_storeEnumTagMultiPayload();
    sub_100029824();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v337, &qword_10025B768, &qword_1001D01E8);
    return sub_10000F500(v333, &qword_10025B788, &qword_1001D01F8);
  }

  v370 = sub_10000341C(&qword_10025B7F8, &qword_1001D0230);
  v234 = *(*(v370 - 8) + 64);
  v235 = __chkstk_darwin(v370);
  v371 = (&v351 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0));
  v369 = &v351;
  __chkstk_darwin(v235);
  v368 = &v351 - v237;
  v238 = sub_10000341C(&qword_10025B378, &qword_1001CFC88);
  v367 = &v351;
  v239 = (*(*(v238 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v238 - 8);
  v366 = (&v351 - v240);
  v241 = type metadata accessor for QuestionnaireView(0);
  v365 = &v351;
  v242 = *(*(v241 - 1) + 64);
  __chkstk_darwin(v241);
  v243 = (v242 + 15) & 0xFFFFFFFFFFFFFFF0;
  v364 = (&v351 - v243);
  v244 = type metadata accessor for WritingToolsView();
  v245 = v244[7];
  Strong = swift_unknownObjectWeakLoadStrong();
  v247 = *(a5 + v244[10]);
  if (!v247)
  {
    __break(1u);
    goto LABEL_28;
  }

  v248 = a5;
  v249 = Strong;
  v356 = *(a5 + v244[8]);
  v250 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v363 = &v351;
  v251 = (*(*(v250 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v250 - 8);
  v253 = &v351 - v252;
  v254 = v244[17];
  v355 = v247;
  v354 = v247;
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v362 = v253;
  v255 = State.projectedValue.getter();
  v361 = &v351;
  v256 = v244[16];
  v257 = (v248 + v244[15]);
  v258 = v257[1];
  v358 = *v257;
  v259 = *(v248 + v256 + 8);
  v360 = *(v248 + v256);
  __chkstk_darwin(v255);
  v260 = &v351 - v243;
  *v260 = 0x4024000000000000;
  *(v260 + 2) = 5;
  *(v260 + 24) = xmmword_1001CFA80;
  __asm { FMOV            V0.2D, #24.0 }

  *(v260 + 40) = _Q0;
  v266 = v241[8];
  *&v260[v266] = swift_getKeyPath();
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  swift_storeEnumTagMultiPayload();
  v267 = &v260[v241[9]];
  type metadata accessor for CommonUIManager();
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  v357 = v258;

  v359 = v259;

  *v267 = Environment.init<A>(_:)();
  v267[8] = v268 & 1;
  v269 = &v260[v241[12]];
  LOBYTE(v374) = 0;
  State.init(wrappedValue:)();
  v270 = v377;
  *v269 = v376;
  *(v269 + 1) = v270;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v271 = type metadata accessor for Logger();
  sub_10000F34C(v271, qword_100276F20);
  v272 = static os_log_type_t.debug.getter();
  swift_unknownObjectRetain();
  v273 = Logger.logObject.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v273, v272))
  {
    v274 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v376 = v275;
    *v274 = 136315138;
    if (v249)
    {
      v276 = 7562617;
    }

    else
    {
      v276 = 28526;
    }

    if (v249)
    {
      v277 = 0xE300000000000000;
    }

    else
    {
      v277 = 0xE200000000000000;
    }

    v278 = v241;
    v279 = sub_10002510C(v276, v277, &v376);

    *(v274 + 4) = v279;
    v241 = v278;
    _os_log_impl(&_mh_execute_header, v273, v272, "Initialize QuestionnaireView with delegate: %s", v274, 0xCu);
    sub_10000F4B4(v275);
  }

  *(v260 + 1) = v355;
  v280 = type metadata accessor for QuestionnaireModel();
  v281 = *(v280 + 48);
  v282 = *(v280 + 52);
  swift_allocObject();
  v283 = v354;
  swift_unknownObjectRetain();
  sub_10004F8B0(v283, v249, v356);
  v284 = &v260[v241[11]];
  v374 = v285;
  State.init(wrappedValue:)();
  v286 = v376;
  v287 = v377;
  *v284 = v376;
  *(v284 + 1) = v287;
  v288 = &v260[v241[10]];
  v289 = v362;
  sub_1000081F8(v362, v288, &qword_1002632E0, &qword_1001D11A0);
  v376 = v286;
  v377 = v287;

  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100036040(v358, v357);

  v376 = v286;
  v377 = v287;
  State.wrappedValue.getter();

  sub_100036200(v360, v359);
  swift_unknownObjectRelease();

  sub_10000F500(v289, &qword_1002632E0, &qword_1001D11A0);
  v290 = v364;
  sub_100029074(v260, v364, type metadata accessor for QuestionnaireView);
  v291 = v366;
  v292 = sub_100029074(v290, v366, type metadata accessor for QuestionnaireView);
  v293 = *(v244 - 1);
  v294 = *(v293 + 64);
  __chkstk_darwin(v292);
  sub_10002631C(v372, &v351 - ((v294 + 15) & 0xFFFFFFFFFFFFFFF0));
  v295 = (*(v293 + 80) + 16) & ~*(v293 + 80);
  v296 = swift_allocObject();
  sub_100029074(&v351 - ((v294 + 15) & 0xFFFFFFFFFFFFFFF0), v296 + v295, type metadata accessor for WritingToolsView);
  v297 = v368;
  sub_10002A894(v291, v368, &qword_10025B378, &qword_1001CFC88);
  v298 = v371;
  v299 = (v297 + *(v370 + 36));
  *v299 = 0;
  v299[1] = 0;
  v299[2] = sub_10002B25C;
  v299[3] = v296;
  sub_10002A894(v297, v298, &qword_10025B7F8, &qword_1001D0230);
  v369 = sub_10000341C(&qword_10025B768, &qword_1001D01E8);
  v372 = &v351;
  v300 = (*(*(v369 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v369);
  v302 = &v351 - v301;
  v303 = sub_10000341C(&qword_10025B7E8, &qword_1001D0228);
  v368 = &v351;
  v304 = (*(*(v303 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v303);
  v306 = &v351 - v305;
  v307 = sub_10000341C(&qword_10025B800, &qword_1001D0238);
  v367 = &v351;
  v308 = (*(*(v307 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v307);
  sub_1000081F8(v298, &v351 - v309, &qword_10025B7F8, &qword_1001D0230);
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_10025B5F8, &qword_1001CFFD0);
  v310 = sub_100003E34(&unk_10025B300, &qword_1001CFC58);
  v311 = type metadata accessor for CompositionModel(255);
  v312 = type metadata accessor for CompositionView(255);
  v313 = type metadata accessor for WritingToolsModel();
  v314 = sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView);
  v315 = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  v376 = v312;
  v377 = v313;
  v378 = v314;
  v379 = v315;
  v316 = swift_getOpaqueTypeConformance2();
  v317 = sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel);
  v376 = v310;
  v377 = v311;
  v378 = v316;
  v379 = v317;
  swift_getOpaqueTypeConformance2();
  sub_100029EA0();
  _ConditionalContent<>.init(storage:)();
  v318 = sub_10000341C(&qword_10025B808, &qword_1001D0240);
  v319 = (*(*(v318 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v318);
  sub_1000081F8(v306, &v351 - v320, &qword_10025B7E8, &qword_1001D0228);
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_10025B778, &qword_1001D01F0);
  sub_1000298B0();
  sub_100029CE4();
  _ConditionalContent<>.init(storage:)();
  sub_10000F500(v306, &qword_10025B7E8, &qword_1001D0228);
  v321 = sub_10000341C(&qword_10025B810, &qword_1001D0248);
  v322 = (*(*(v321 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v321);
  sub_1000081F8(v302, &v351 - v323, &qword_10025B768, &qword_1001D01E8);
  swift_storeEnumTagMultiPayload();
  sub_100029824();
  _ConditionalContent<>.init(storage:)();
  sub_10000F500(v302, &qword_10025B768, &qword_1001D01E8);
  return sub_10000F500(v371, &qword_10025B7F8, &qword_1001D0230);
}