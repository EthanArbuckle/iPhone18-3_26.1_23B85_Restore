uint64_t sub_100001B3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Binding();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100001C00(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for _CPUITextField()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v4 setDelegate:v19];

  UIViewRepresentableContext.coordinator.getter();
  [v4 addTarget:v19 action:"textFieldValueChanged:" forControlEvents:0x20000];

  [v4 setAutocapitalizationType:3];
  [v4 setAutocorrectionType:1];
  v5 = *(v2 + *(a2 + 40));
  [v4 setKeyboardType:v5];
  [v4 setTextAlignment:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setReturnKeyType:9];
  v6 = *(a2 + 16);
  v7 = sub_1000043F4();
  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  [v4 setFont:v8];

  if (v5 == 8)
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (!v10)
    {
      v18 = [objc_allocWithZone(UIToolbar) init];
      sub_100004944(&qword_1000746F0, &qword_10004E888);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10004E490;
      *(v11 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
      *(v11 + 40) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v4 action:"resignFirstResponder"];
      sub_10000598C(0, &qword_1000746F8, UIBarButtonItem_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v18 setItems:isa];

      v13 = v18;
      [v13 sizeToFit];
      [v4 setInputAccessoryView:v13];
    }
  }

  sub_10000598C(0, &qword_1000746E8, UIScribbleInteraction_ptr);
  UIViewRepresentableContext.coordinator.getter();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:v19];

  [v4 addInteraction:v14];
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    [v4 setBorderStyle:3];
  }

  return v4;
}

void sub_100001FF4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v3 + *(v11 + 56));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v33) = v13;
  v34 = v14;
  sub_100004944(&qword_1000746E0, &qword_10004E880);
  State.wrappedValue.getter();
  if (v36 != 1 || *(v3 + *(a3 + 32)) == 1)
  {
    v15 = v3 + *(a3 + 44);
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(a3 + 28);
    type metadata accessor for Binding();
    Binding.wrappedValue.getter();
    v19 = v17(v10);
    v21 = v20;
    (*(v7 + 8))(v10, v6);
    v22 = [a1 text];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v19 == v24 && v21 == v26)
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_12;
    }

LABEL_9:
    v29 = String._bridgeToObjectiveC()();

    [a1 setText:v29];

    swift_getWitnessTable();
    type metadata accessor for UIViewRepresentableContext();
    UIViewRepresentableContext.coordinator.getter();
    v30 = v33;
    sub_100002B08(a1);
  }

LABEL_12:
  sub_100004378();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v31 = sub_100004990(v35 << 8 != 512);
  [a1 setTextColor:v31];
}

id sub_1000022EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Binding();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v32 = type metadata accessor for CPTextField.Coordinator();
  v10 = sub_100004378();
  v31 = *(v2 + *(a1 + 36));
  v11 = (v2 + *(a1 + 56));
  v12 = *v11;
  v13 = *(v11 + 1);
  v38 = v12;
  v39 = v13;

  sub_100004944(&qword_1000746E0, &qword_10004E880);
  State.projectedValue.getter();
  v29 = v36;
  v30 = v35;
  v28 = v37;
  v14 = *(a1 + 48);
  v15 = (v2 + *(a1 + 44));
  v16 = v15[1];
  v27 = *v15;
  v17 = *(v2 + v14);
  v18 = *(v2 + v14 + 8);
  v19 = (v2 + *(a1 + 52));
  v20 = *v19;
  v21 = v19[1];
  v22 = *(a1 + 28);

  v23 = v33;
  Binding.projectedValue.getter();
  v24 = sub_100004CB8(v10, v31, v30, v29, v28, v27, v16, v17, v18, v20, v21, v9);
  (*(v34 + 8))(v9, v23);

  return v24;
}

uint64_t sub_1000024DC()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x80);
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  sub_100004944(&qword_100074608, &qword_100053770);
  return Binding.wrappedValue.setter();
}

id sub_100002560(void *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v21 - v12;
  result = [a1 text];
  if (result)
  {
    v22 = v5;
    v15 = result;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v1 + *((swift_isaMask & *v1) + 0x70);
    v20 = *(v19 + 1);
    (*v19)(v16, v18);

    if ((*(v10 + 48))(v9, 1, v3) == 1)
    {
      return (*(v22 + 8))(v9, v4);
    }

    else
    {
      (*(v10 + 32))(v13, v9, v3);
      sub_100004D6C(v13);
      return (*(v10 + 8))(v13, v3);
    }
  }

  return result;
}

void sub_1000027B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100002560(v4);
}

uint64_t sub_100002818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 text];
  if (!v10)
  {
    v17 = 0;
    return v17 & 1;
  }

  v11 = v10;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!__OFADD__(a2, a3))
  {
    v14 = result;
    v15 = v13;
    v16 = [v11 length];

    if (v16 >= a2 + a3)
    {
      v18 = v5 + *((swift_isaMask & *v5) + 0x78);
      v19 = *(v18 + 1);
      v17 = (*v18)(v14, v15, a2, a3, a4, a5);
    }

    else
    {
      v17 = 0;
    }

    return v17 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002924(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = sub_100002818(v12, a4, a5, v9, v11);

  return a5 & 1;
}

void sub_1000029B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100004F2C();
}

void sub_100002A14(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100004F34();
}

void sub_100002AA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100002A9C(v4);
}

void sub_100002B08(void *a1)
{
  if (*(v1 + *((swift_isaMask & *v1) + 0x60)) != 1)
  {
    return;
  }

  v3 = [a1 selectedTextRange];
  if (!v3)
  {
    return;
  }

  v26 = v3;
  sub_10000598C(0, &qword_1000745F8, NSObject_ptr);
  v4 = [v26 start];
  v5 = [v26 end];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  v7 = [a1 text];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = sub_100004674(v9, v11);
  if (v14)
  {

    return;
  }

  v15 = v12;
  v16 = v13;
  v17 = [a1 beginningOfDocument];
  v18 = [v26 start];
  v19 = [a1 offsetFromPosition:v17 toPosition:v18];

  if (v19 < v15)
  {
    v20 = [a1 beginningOfDocument];
    v21 = [a1 positionFromPosition:v20 offset:v15];

    if (v21)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v22 = __OFADD__(v15, v16);
  v23 = v15 + v16;
  if (v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v23 >= v19)
  {

    goto LABEL_18;
  }

  v24 = [a1 beginningOfDocument];
  v21 = [a1 positionFromPosition:v24 offset:v23];

  if (!v21)
  {
LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:

  v25 = [a1 textRangeFromPosition:v21 toPosition:v21];
  [a1 setSelectedTextRange:v25];

LABEL_18:
}

uint64_t sub_100002E34(uint64_t *a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  CharacterSet.init(charactersIn:)();
  v9 = CharacterSet.isSuperset(of:)();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

uint64_t sub_100002F20(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

id sub_100003014()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CPTextField.Coordinator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100003070(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = *&a1[*((swift_isaMask & *a1) + 0x58) + 8];

  v5 = *&a1[*((swift_isaMask & *a1) + 0x68) + 8];

  v6 = *&a1[*((swift_isaMask & *a1) + 0x70) + 8];

  v7 = *&a1[*((swift_isaMask & *a1) + 0x78) + 8];

  v8 = &a1[*((swift_isaMask & *a1) + 0x80)];
  v10 = *v8;
  v9 = *(v8 + 1);

  v11 = *((swift_isaMask & *a1) + 0x88);
  v12 = *((v3 & v2) + 0x50);
  v13 = type metadata accessor for Binding();
  v14 = *(*(v13 - 8) + 8);

  return v14(&a1[v11], v13);
}

id sub_100003214@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000022EC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100003284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100003300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100003398()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100003494(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _CPUITextField();
  objc_msgSendSuper2(&v6, "buildMenuWithBuilder:", a1);
  sub_10000598C(0, &qword_1000745F8, NSObject_ptr);
  v3 = [a1 system];
  v4 = [objc_opt_self() contextSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    [a1 removeMenuForIdentifier:UIMenuLookup];
    [a1 removeMenuForIdentifier:UIMenuLearn];
    [a1 removeMenuForIdentifier:UIMenuAutoFill];
    [a1 removeMenuForIdentifier:UIMenuShare];
  }
}

id sub_10000371C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CPUITextField();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100003778(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000037C8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003844(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000038C8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003914(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100003968(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1000039C0@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_1000039F4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003A30()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003A84()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100003B04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

BOOL sub_100003BB4(void *a1, uint64_t *a2)
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

void *sub_100003BE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100003C10@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100003D00(uint64_t *a1, uint64_t *a2)
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

void *sub_100003D88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003DAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100005F48(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003DEC()
{
  sub_100005278(&qword_100074728, type metadata accessor for AttributeName);
  sub_100005278(&qword_1000747E8, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100003EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003EF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100003F20()
{
  sub_100005278(&qword_1000747D8, type metadata accessor for TraitKey);
  sub_100005278(&qword_1000747E0, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_100003FDC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100003FE8()
{
  v2 = *v0;
  sub_100005278(&qword_1000747C0, type metadata accessor for Weight);
  sub_100005278(&qword_1000747C8, type metadata accessor for Weight);
  sub_100005EF4();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000040B0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_1000040FC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100004154()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000041C4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_10000422C(uint64_t result, Swift::String_optional *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = String.Iterator.next()();
      if (!v11.value._object)
      {
        a4 = v13;
        a5 = v14;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      if (v8 == v10)
      {
        break;
      }

      ++v9;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v13;
    a5 = v14;
LABEL_15:
    v7 = v15;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000042F4(uint64_t a1, uint64_t a2)
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

  sub_100004944(&qword_100074600, &unk_10004E590);
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

uint64_t sub_100004378()
{
  result = *v0;
  if (!*v0)
  {
    v2 = v0[1];
    type metadata accessor for ColorPickerState();
    sub_100005278(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_1000043F4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  v3 = &UIFontTextStyleCallout;
  if (v1 == 6)
  {
    v4 = &UIFontWeightSemibold;
  }

  else
  {
    v3 = &UIFontTextStyleBody;
    v4 = &UIFontWeightMedium;
  }

  v5 = [v2 preferredFontDescriptorWithTextStyle:*v3];
  sub_100004944(&qword_100074700, &qword_10004E890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004E4A0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100004944(&qword_100074708, &qword_10004E898);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10004E4A0;
  *(v7 + 32) = UIFontWeightTrait;
  *(v7 + 40) = *v4;
  v8 = UIFontDescriptorTraitsAttribute;
  v9 = UIFontWeightTrait;
  v10 = sub_1000309F8(v7);
  swift_setDeallocating();
  sub_1000059D4(v7 + 32, &qword_100074710, &qword_10004E8A0);
  *(inited + 64) = sub_100004944(&qword_100074718, &qword_10004E8A8);
  *(inited + 40) = v10;
  sub_100030AE8(inited);
  swift_setDeallocating();
  sub_1000059D4(inited + 32, &qword_100074720, &qword_10004E8B0);
  type metadata accessor for AttributeName(0);
  sub_100005278(&qword_100074728, type metadata accessor for AttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v5 fontDescriptorByAddingAttributes:isa];

  return v12;
}

uint64_t sub_100004674(uint64_t a1, unint64_t a2)
{
  v29 = type metadata accessor for CharacterSet();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  static CharacterSet.decimalDigits.getter();
  v11 = String.count.getter();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000042F4(v11, 0);

    v14 = sub_10000422C(v30, v13 + 2, v12, a1, a2);

    if (v14 == v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v13 = &_swiftEmptyArrayStorage;
LABEL_5:
  __chkstk_darwin(v11);
  *(&v25 - 2) = v10;
  result = sub_100002F20(sub_100004924, (&v25 - 4), v13);
  if (v16)
  {

    v17 = 0;
LABEL_18:
    (*(v4 + 8))(v10, v29);
    return v17;
  }

  v17 = result;
  v18 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_21;
  }

  countAndFlagsBits = v13[1].value._countAndFlagsBits;
  if (v18 < countAndFlagsBits)
  {
    v27 = v16;
    v28 = v4;
    v20 = (v4 + 8);
    v26 = result;
    p_object = &v13[result + 3].value._object;
    v22 = result + 1;
    while ((v18 & 0x8000000000000000) == 0)
    {
      if (v22 >= v13[1].value._countAndFlagsBits)
      {
        goto LABEL_20;
      }

      v23 = *(p_object - 1);
      v24 = *p_object;

      CharacterSet.init(charactersIn:)();

      LOBYTE(v23) = CharacterSet.isSuperset(of:)();
      result = (*v20)(v8, v29);
      if ((v23 & 1) == 0)
      {
        v18 = v22;
        goto LABEL_16;
      }

      ++v22;
      p_object += 2;
      if (countAndFlagsBits == v22)
      {
        v18 = countAndFlagsBits;
LABEL_16:
        v4 = v28;
        v17 = v26;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:

  if (!__OFSUB__(v18, v17))
  {
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100004944(uint64_t *a1, uint64_t *a2)
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

id sub_100004990(char a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = objc_opt_self();
  v5 = &selRef_whiteColor;
  v6 = &selRef_labelColor;
  if ((a1 & 1) == 0)
  {
    v6 = &selRef_tertiaryLabelColor;
  }

  if (v3 != 6)
  {
    v5 = v6;
  }

  v7 = [v4 *v5];

  return v7;
}

id sub_100004A40(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *v12;
  v17 = swift_isaMask;
  v18 = (v12 + *((swift_isaMask & *v12) + 0x58));
  swift_beginAccess();
  v19 = *((v17 & v16) + 0x50);
  type metadata accessor for ColorPickerState();
  sub_100005278(&qword_100076250, type metadata accessor for ColorPickerState);

  *v18 = ObservedObject.init(wrappedValue:)();
  v18[1] = v20;
  swift_endAccess();
  *(v12 + *((swift_isaMask & *v12) + 0x60)) = a2;
  v21 = v12 + *((swift_isaMask & *v12) + 0x80);
  *v21 = a3;
  *(v21 + 1) = a4;
  v21[16] = a5;
  v22 = (v12 + *((swift_isaMask & *v12) + 0x68));
  *v22 = a6;
  v22[1] = a7;
  v23 = (v12 + *((swift_isaMask & *v12) + 0x70));
  *v23 = a8;
  v23[1] = a9;
  v24 = (v12 + *((swift_isaMask & *v12) + 0x78));
  *v24 = a10;
  v24[1] = a11;
  v25 = *((swift_isaMask & *v12) + 0x88);
  v26 = type metadata accessor for Binding();
  (*(*(v26 - 8) + 16))(v12 + v25, a12, v26);
  v32.receiver = v12;
  v32.super_class = type metadata accessor for CPTextField.Coordinator();
  return objc_msgSendSuper2(&v32, "init");
}

id sub_100004CB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = *(v12 + 80);
  v21 = objc_allocWithZone(type metadata accessor for CPTextField.Coordinator());
  return sub_100004A40(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_100004D6C(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Binding();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  (*(v11 + 16))(&v16 - v13, &v1[*((v4 & v3) + 0x88)], v10);
  (*(v6 + 16))(v9, a1, v5);
  Binding.wrappedValue.setter();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100004F34()
{
  sub_1000024DC();
  v1 = v0 + *((swift_isaMask & *v0) + 0x58);
  swift_beginAccess();
  v2 = *(v1 + 1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v8 << 8 == 512)
  {
    v4 = v0 + *((swift_isaMask & *v0) + 0x58);
    swift_beginAccess();
    v5 = *(v4 + 1);
    v6 = v0 + *((swift_isaMask & *v0) + 0x58);
    swift_beginAccess();
    v7 = *(v6 + 1);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100005278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000052C0(uint64_t a1, int a2)
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

uint64_t sub_1000052E0(uint64_t result, int a2, int a3)
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

__n128 sub_100005330(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000533C(uint64_t a1, int a2)
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

uint64_t sub_10000535C(uint64_t result, int a2, int a3)
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

void sub_1000053B8(uint64_t a1)
{
  sub_100005880();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    type metadata accessor for Binding();
    if (v4 <= 0x3F)
    {
      type metadata accessor for UIKeyboardType(319);
      if (v5 <= 0x3F)
      {
        sub_100005914();
        if (v6 <= 0x3F)
        {
          sub_100005AFC(319, &qword_1000746D8, &type metadata for Bool, &type metadata accessor for State);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000054C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v6) | v8) + ((-17 - v6) | v6)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((((a1 + v8 + 16) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 8) & ~v6);
    }

    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_100005654(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((((((*(*(*(a4 + 16) - 8) + 64) - (((-17 - v8) | v8 | 7) + ((-17 - v8) | v8)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((((((((*(*(*(a4 + 16) - 8) + 64) - (((-17 - v8) | v8 | 7) + ((-17 - v8) | v8)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      v18 = (((&result[(v8 | 7) + 16] & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((((((((*(*(*(a4 + 16) - 8) + 64) - (((-17 - v8) | v8 | 7) + ((-17 - v8) | v8)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((*(*(*(a4 + 16) - 8) + 64) - (((-17 - v8) | v8 | 7) + ((-17 - v8) | v8)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_100005880()
{
  if (!qword_1000746C0)
  {
    type metadata accessor for ColorPickerState();
    sub_100005278(&qword_100076250, type metadata accessor for ColorPickerState);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1000746C0);
    }
  }
}

unint64_t sub_100005914()
{
  result = qword_1000746D0;
  if (!qword_1000746D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000746D0);
  }

  return result;
}

uint64_t sub_10000598C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000059D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004944(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100005AFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100005EF4()
{
  result = qword_1000747D0;
  if (!qword_1000747D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000747D0);
  }

  return result;
}

uint64_t sub_100005F48(uint64_t a1)
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

uint64_t sub_100005FF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1000060D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RGBAView()
{
  result = qword_100074970;
  if (!qword_100074970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000061D0()
{
  sub_100005880();
  if (v0 <= 0x3F)
  {
    sub_1000062A4(319, &qword_100074980, type metadata accessor for ColorPickerConfiguration);
    if (v1 <= 0x3F)
    {
      sub_1000062A4(319, &qword_100074988, &type metadata accessor for DynamicTypeSize);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000062A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

id sub_100006314(char a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  v6 = &selRef_systemBackgroundColor;
  if ((a1 & 1) == 0)
  {
    v6 = &selRef_systemGray5Color;
  }

  if (v3 != 6)
  {
    v5 = v6;
  }

  v7 = [v4 *v5];

  return v7;
}

uint64_t sub_1000063C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100004944(&qword_1000749C8, &qword_10004EFD8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_100004944(&qword_1000749D0, &qword_10004EFE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - v16;
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 6)
  {
    v22 = 0x4030000000000000;
  }

  else
  {
    v22 = 0x4032000000000000;
  }

  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = v22;
  v17[16] = 0;
  v23 = sub_100004944(&qword_1000749D8, &qword_10004EFE8);
  sub_100006690(a1, &v17[*(v23 + 44)]);
  sub_1000084B0(v17, v19, &qword_1000749D0, &qword_10004EFE0);
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v24 = sub_100004944(&qword_1000749E0, &qword_10004EFF0);
  sub_100006DB0(a1, &v9[*(v24 + 44)]);
  sub_100008A40(v19, v14, &qword_1000749D0, &qword_10004EFE0);
  sub_100008A40(v9, v7, &qword_1000749C8, &qword_10004EFD8);
  v25 = v29;
  sub_100008A40(v14, v29, &qword_1000749D0, &qword_10004EFE0);
  v26 = sub_100004944(&qword_1000749E8, &qword_10004EFF8);
  sub_100008A40(v7, v25 + *(v26 + 48), &qword_1000749C8, &qword_10004EFD8);
  sub_1000059D4(v9, &qword_1000749C8, &qword_10004EFD8);
  sub_1000059D4(v19, &qword_1000749D0, &qword_10004EFE0);
  sub_1000059D4(v7, &qword_1000749C8, &qword_10004EFD8);
  return sub_1000059D4(v14, &qword_1000749D0, &qword_10004EFE0);
}

uint64_t sub_100006690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v81 = a2;
  v2 = sub_100004944(&qword_100074A40, &qword_10004F108);
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v70 = &v69 - v5;
  v6 = sub_100004944(&qword_100074A48, &qword_10004F110);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v69 - v10;
  v11 = type metadata accessor for ColorSlider(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v79 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v78 = &v69 - v17;
  v18 = __chkstk_darwin(v16);
  v77 = &v69 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v69 - v24;
  __chkstk_darwin(v23);
  v27 = &v69 - v26;
  v28 = type metadata accessor for ColorPickerState();
  v72 = sub_100008870(&qword_100076250, type metadata accessor for ColorPickerState);
  v82 = v28;
  v29 = EnvironmentObject.init()();
  v31 = v30;
  *&v27[v12[9]] = swift_getKeyPath();
  v71 = sub_100004944(&qword_100074A18, &unk_100051000);
  swift_storeEnumTagMultiPayload();
  *v27 = 0;
  *(v27 + 1) = v29;
  *(v27 + 2) = v31;
  type metadata accessor for ColorPickerConfiguration();
  sub_100008870(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
  *(v27 + 3) = Environment.init<A>(_:)();
  v27[32] = v32 & 1;
  v33 = &v27[v12[10]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v12[11];
  static Font.Weight.semibold.getter();
  v84 = v27;
  *&v27[v34] = v35;
  v36 = v73;
  v37 = EnvironmentObject.init()();
  v39 = v38;
  *&v25[v12[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v25 = 1;
  *(v25 + 1) = v37;
  *(v25 + 2) = v39;
  *(v25 + 3) = Environment.init<A>(_:)();
  v25[32] = v40 & 1;
  v41 = &v25[v12[10]];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  v42 = v12[11];
  static Font.Weight.semibold.getter();
  v76 = v25;
  *&v25[v42] = v43;
  v44 = EnvironmentObject.init()();
  v46 = v45;
  *&v22[v12[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v22 = 2;
  *(v22 + 1) = v44;
  *(v22 + 2) = v46;
  v48 = v74;
  v47 = v75;
  *(v22 + 3) = Environment.init<A>(_:)();
  v22[32] = v49 & 1;
  v50 = &v22[v12[10]];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = v12[11];
  static Font.Weight.semibold.getter();
  *&v22[v51] = v52;
  v53 = sub_10001CE7C(v36[2], *(v36 + 24));
  sub_1000088E4(v53 + 16, &v85);

  v54 = v86;
  v55 = v87;
  sub_100008948(&v85, v86);
  LOBYTE(v51) = (*(v55 + 16))(v54, v55);
  sub_10000898C(&v85);
  v56 = 1;
  if (v51)
  {
    v57 = *v36;
    v58 = v36[1];
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    sub_100004944(&qword_100074A60, &qword_10004F178);
    sub_100008B0C();
    v59 = v70;
    Toggle.init(isOn:label:)();
    (*(v47 + 32))(v83, v59, v48);
    v56 = 0;
  }

  v60 = v83;
  (*(v47 + 56))(v83, v56, 1, v48);
  v61 = v77;
  sub_1000089D8(v84, v77, type metadata accessor for ColorSlider);
  v62 = v76;
  v63 = v78;
  sub_1000089D8(v76, v78, type metadata accessor for ColorSlider);
  v64 = v79;
  sub_1000089D8(v22, v79, type metadata accessor for ColorSlider);
  v65 = v80;
  sub_100008A40(v60, v80, &qword_100074A48, &qword_10004F110);
  v66 = v81;
  sub_1000089D8(v61, v81, type metadata accessor for ColorSlider);
  v67 = sub_100004944(&qword_100074A58, &qword_10004F148);
  sub_1000089D8(v63, v66 + v67[12], type metadata accessor for ColorSlider);
  sub_1000089D8(v64, v66 + v67[16], type metadata accessor for ColorSlider);
  sub_100008A40(v65, v66 + v67[20], &qword_100074A48, &qword_10004F110);
  sub_1000059D4(v60, &qword_100074A48, &qword_10004F110);
  sub_100008AA8(v22);
  sub_100008AA8(v62);
  sub_100008AA8(v84);
  sub_1000059D4(v65, &qword_100074A48, &qword_10004F110);
  sub_100008AA8(v64);
  sub_100008AA8(v63);
  return sub_100008AA8(v61);
}

uint64_t sub_100006DB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004944(&qword_1000749F0, &qword_10004F000);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v21 - v9);
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + *(type metadata accessor for RGBAView() + 24);
  sub_10001CBF0(v15);
  LOBYTE(v16) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v22 = static HorizontalAlignment.center.getter();
    v23 = 0;
    v24 = 1;
    sub_1000082F0();
  }

  else
  {
    v22 = static VerticalAlignment.center.getter();
    v23 = 0x4030000000000000;
    v24 = 0;
    sub_10000829C();
  }

  *v10 = AnyLayout.init<A>(_:)();
  v17 = *(v4 + 44);

  sub_100007018(a1, (v10 + v17));
  sub_100008A40(v10, v8, &qword_1000749F0, &qword_10004F000);
  sub_100008A40(v8, a2, &qword_1000749F0, &qword_10004F000);
  v18 = *(sub_100004944(&qword_100074A00, &qword_10004F008) + 48);

  v19 = a2 + v18;
  *v19 = 0;
  *(v19 + 8) = 0;
  sub_1000059D4(v10, &qword_1000749F0, &qword_10004F000);
  return sub_1000059D4(v8, &qword_1000749F0, &qword_10004F000);
}

uint64_t sub_100007018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for RGBAView();
  v68 = *(v3 - 8);
  v4 = *(v68 + 64);
  __chkstk_darwin(v3 - 8);
  v69 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ColorSpaceButton();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100004944(&qword_100074A10, &qword_10004F010);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v71 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v61[-v14];
  __chkstk_darwin(v13);
  v17 = &v61[-v16];
  v70 = a1;
  v18 = *a1;
  if (*a1)
  {
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    swift_retain_n();
    Binding.init(get:set:)();
    *&v8[*(v5 + 24)] = swift_getKeyPath();
    sub_100004944(&qword_100074A18, &unk_100051000);
    swift_storeEnumTagMultiPayload();
    v21 = v125;
    *(v8 + 2) = v124;
    *(v8 + 3) = v21;
    *(v8 + 32) = v126;
    v22 = v123;
    *v8 = v122;
    *(v8 + 1) = v22;
    v23 = *(v5 + 20);
    v95 = 0x4049000000000000;
    sub_100008368();
    ScaledMetric.init(wrappedValue:)();
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v24 = BYTE1(v99) << 8 == 512;
    KeyPath = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_10000863C(v8, v15, type metadata accessor for ColorSpaceButton);
    v27 = &v15[*(v9 + 36)];
    *v27 = KeyPath;
    v27[1] = sub_100008498;
    v27[2] = v26;
    sub_1000084B0(v15, v17, &qword_100074A10, &qword_10004F010);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v18;
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v18;
    swift_retain_n();
    Binding.init(get:set:)();
    v30 = v69;
    sub_1000089D8(v70, v69, type metadata accessor for RGBAView);
    v31 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v66 = swift_allocObject();
    sub_10000863C(v30, v66 + v31, type metadata accessor for RGBAView);
    type metadata accessor for ColorPickerState();
    sub_100008870(&qword_100076250, type metadata accessor for ColorPickerState);
    v63 = EnvironmentObject.init()();
    v68 = v32;
    v77 = v129;
    v78 = v130;
    v79 = v131;
    v75 = v127;
    v76 = v128;
    LOBYTE(v80) = 0;
    State.init(wrappedValue:)();
    v64 = v95;
    v65 = v96;
    v33 = objc_opt_self();
    v34 = [v33 defaultMetrics];
    v35 = objc_opt_self();
    v36 = [v35 currentDevice];
    v69 = v17;
    v37 = [v36 userInterfaceIdiom];

    v38 = 100.0;
    if (v37 == 6)
    {
      v38 = 88.0;
    }

    [v34 scaledValueForValue:v38];

    v39 = [v33 defaultMetrics];
    v40 = [v35 currentDevice];
    v41 = [v40 userInterfaceIdiom];

    v42 = 36.0;
    if (v41 == 6)
    {
      v42 = 44.0;
    }

    [v39 scaledValueForValue:v42];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_100006314(BYTE1(v99) << 8 != 512);
    v43 = Color.init(uiColor:)();
    v70 = v43;
    v62 = static Edge.Set.all.getter();
    v44 = v71;
    sub_100008A40(v69, v71, &qword_100074A10, &qword_10004F010);
    v45 = v67;
    *v67 = 0;
    *(v45 + 8) = 0;
    v46 = sub_100004944(&qword_100074A28, &qword_10004F0C8);
    sub_100008A40(v44, v45 + *(v46 + 48), &qword_100074A10, &qword_10004F010);
    v47 = v45 + *(v46 + 64);
    v48 = v63;
    *&v80 = v63;
    *(&v80 + 1) = v68;
    LODWORD(v85) = v79;
    v83 = v77;
    v84 = v78;
    v81 = v75;
    v82 = v76;
    *(&v85 + 1) = 1;
    *&v86 = sub_1000079D4;
    *(&v86 + 1) = 0;
    *&v87 = sub_1000086A4;
    v50 = v65;
    v49 = v66;
    *(&v87 + 1) = v66;
    *&v88 = sub_100007CFC;
    *(&v88 + 1) = 0;
    v51 = v64;
    LOBYTE(v89) = v64;
    DWORD1(v89) = *&v120[3];
    *(&v89 + 1) = *v120;
    *(&v89 + 1) = v65;
    v90 = v72;
    v91 = v73;
    v92 = v74;
    *&v93 = v43;
    LOBYTE(v46) = v62;
    BYTE8(v93) = v62;
    HIDWORD(v93) = *&v121[3];
    *(&v93 + 9) = *v121;
    v94 = 0x4020000000000000;
    *(v47 + 28) = 0x4020000000000000;
    v52 = v93;
    *(v47 + 12) = v92;
    *(v47 + 13) = v52;
    v53 = v89;
    *(v47 + 8) = v88;
    *(v47 + 9) = v53;
    v54 = v91;
    *(v47 + 10) = v90;
    *(v47 + 11) = v54;
    v55 = v85;
    *(v47 + 4) = v84;
    *(v47 + 5) = v55;
    v56 = v87;
    *(v47 + 6) = v86;
    *(v47 + 7) = v56;
    v57 = v81;
    *v47 = v80;
    *(v47 + 1) = v57;
    v58 = v83;
    *(v47 + 2) = v82;
    *(v47 + 3) = v58;
    sub_100008A40(&v80, &v95, &qword_100074A30, &qword_10004F0D0);
    sub_1000059D4(v69, &qword_100074A10, &qword_10004F010);
    v95 = v48;
    v96 = v68;
    v99 = v77;
    v100 = v78;
    v101 = v79;
    v97 = v75;
    v98 = v76;
    v102 = 0;
    v103 = 1;
    v104 = sub_1000079D4;
    v105 = 0;
    v106 = sub_1000086A4;
    v107 = v49;
    v108 = sub_100007CFC;
    v109 = 0;
    v110 = v51;
    *&v111[3] = *&v120[3];
    *v111 = *v120;
    v113 = v72;
    v114 = v73;
    v115 = v74;
    v112 = v50;
    v116 = v70;
    v117 = v46;
    *&v118[3] = *&v121[3];
    *v118 = *v121;
    v119 = 0x4020000000000000;
    sub_1000059D4(&v95, &qword_100074A30, &qword_10004F0D0);
    return sub_1000059D4(v71, &qword_100074A10, &qword_10004F010);
  }

  else
  {
    v60 = v70[1];
    type metadata accessor for ColorPickerState();
    sub_100008870(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000079D4(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  return sub_1000181B4();
}

void sub_100007A18(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v3;
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v3;
    swift_retain_n();
    Binding.init(get:set:)();
    swift_getKeyPath();
    v20 = v23[2];
    v21 = v23[3];
    v22 = v24;
    v18 = v23[0];
    v19 = v23[1];
    sub_100004944(&qword_100076350, &qword_100051160);
    Binding.subscript.getter();

    sub_1000059D4(v23, &qword_100076350, &qword_100051160);
    sub_100004944(&qword_100074A38, &qword_10004F100);
    Binding.wrappedValue.getter();

    v6 = String._bridgeToObjectiveC()();
    v7 = &kCGColorSpaceDisplayP3;
    if (!v17)
    {
      v7 = &kCGColorSpaceSRGB;
    }

    v8 = *v7;
    *&v18 = 0;
    v9 = [objc_opt_self() hexValuedColor:v6 colorSpace:v8 error:&v18];

    v10 = v18;
    if (v9)
    {
      sub_100019C44(v9, v17, &v18);
      v11 = v18;
      v12 = v19;
      v13 = v20;
      v14 = v21;
    }

    else
    {
      v15 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v11 = 0uLL;
      v14 = 512;
      v12 = 0uLL;
      v13 = 0uLL;
    }

    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v14;
  }

  else
  {
    v16 = a1[1];
    type metadata accessor for ColorPickerState();
    sub_100008870(&qword_100076250, type metadata accessor for ColorPickerState);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100007CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String.count.getter();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000042F4(v6, 0);
    v9 = sub_10000422C(v22, v8 + 2, v7, 0xD000000000000016, 0x8000000100053DA0);

    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_5:
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringByReplacingCharactersInRange:a3 withString:{a4, v11}];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (String.count.getter() >= 7)
  {
LABEL_11:

    return 0;
  }

  else
  {
    v16 = HIBYTE(v15) & 0xF;
    v22[0] = v13;
    v22[1] = v15;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    v22[2] = 0;
    v22[3] = v16;
    while (1)
    {
      v17 = String.Iterator.next()();
      if (!v17.value._object)
      {
        break;
      }

      v21 = v17;
      __chkstk_darwin(v17.value._countAndFlagsBits);
      v20[2] = &v21;
      v18 = sub_10000872C(sub_1000087D8, v20, v8);

      if ((v18 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }
}

__n128 sub_100007EFC@<Q0>(uint64_t a1@<X8>)
{
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  *(a1 + 128) = v17;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  result = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  return result;
}

uint64_t sub_1000080A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = (a2 + *(sub_100004944(&qword_100074A80, &qword_10004F218) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)] = 256;
  v10 = sub_100004944(&qword_100074A90, &qword_10004F228);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1000081D0@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = 0x4030000000000000;
  }

  else
  {
    v5 = 0x4039000000000000;
  }

  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = sub_100004944(&qword_1000749C0, &qword_10004EFD0);
  return sub_1000063C4(v1, a1 + *(v6 + 44));
}

uint64_t sub_100008270@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10000829C()
{
  result = qword_1000749F8;
  if (!qword_1000749F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000749F8);
  }

  return result;
}

unint64_t sub_1000082F0()
{
  result = qword_100074A08;
  if (!qword_100074A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074A08);
  }

  return result;
}

uint64_t sub_100008348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100027730(a1);
}

uint64_t sub_100008354(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100027838(a1);
}

unint64_t sub_100008368()
{
  result = qword_100074A20;
  if (!qword_100074A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074A20);
  }

  return result;
}

uint64_t sub_1000083C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000083F4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000084B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004944(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008518()
{
  v1 = (type metadata accessor for RGBAView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = v1[8];
  sub_100004944(&qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000863C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000086A4(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RGBAView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_100007A18(v4, a1);
}

uint64_t sub_10000872C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000087D8(void *a1)
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

uint64_t sub_100008830()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000088B8@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000088E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100008948(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000898C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000089D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100008A40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004944(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008AA8(uint64_t a1)
{
  v2 = type metadata accessor for ColorSlider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008B0C()
{
  result = qword_100074A68;
  if (!qword_100074A68)
  {
    sub_100008B90(&qword_100074A60, &qword_10004F178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074A68);
  }

  return result;
}

uint64_t sub_100008B90(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100008BD8()
{
  result = qword_1000762F0;
  if (!qword_1000762F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000762F0);
  }

  return result;
}

unint64_t sub_100008C98()
{
  result = qword_100074A98;
  if (!qword_100074A98)
  {
    sub_100008B90(&qword_100074A80, &qword_10004F218);
    sub_100008D7C(&qword_100074AA0, &qword_100074A90, &qword_10004F228);
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074A98);
  }

  return result;
}

uint64_t sub_100008D7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100008DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004944(&qword_100074B10, &qword_10004F480);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100004944(&qword_100074B18, &qword_10004F488);
  sub_100008F40(a1, a2, &v9[*(v10 + 44)]);
  v11 = [objc_opt_self() currentDevice];
  [v11 userInterfaceIdiom];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10000B9B0(v9, a3);
  v12 = (a3 + *(sub_100004944(&qword_100074B20, &qword_10004F490) + 36));
  v13 = v15[1];
  *v12 = v15[0];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

uint64_t sub_100008F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_100004944(&qword_100074B28, &qword_10004F498);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = sub_100004944(&qword_100074B30, &qword_10004F4A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_100004944(&qword_100074B38, &qword_10004F4A8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  v41 = &v37 - v23;
  sub_10000944C(a1, a2, &v37 - v23);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v46[55] = v51;
  *&v46[71] = v52;
  *&v46[87] = v53;
  *&v46[103] = v54;
  *&v46[7] = v48;
  *&v46[23] = v49;
  v47 = 1;
  *&v46[39] = v50;
  v39 = v17;
  sub_1000096D0(a1, v17);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v44[55] = v58;
  *&v44[71] = v59;
  *&v44[87] = v60;
  *&v44[103] = v61;
  *&v44[7] = v55;
  *&v44[23] = v56;
  v45 = 1;
  *&v44[39] = v57;
  v38 = v10;
  sub_100009B28(a1, a2, v10);
  v40 = v22;
  sub_100008A40(v24, v22, &qword_100074B38, &qword_10004F4A8);
  sub_100008A40(v17, v15, &qword_100074B30, &qword_10004F4A0);
  v25 = v42;
  sub_100008A40(v10, v42, &qword_100074B28, &qword_10004F498);
  v26 = v43;
  sub_100008A40(v22, v43, &qword_100074B38, &qword_10004F4A8);
  v27 = sub_100004944(&qword_100074B40, &qword_10004F4B0);
  v28 = v26 + v27[12];
  v29 = *&v46[80];
  *(v28 + 73) = *&v46[64];
  *(v28 + 89) = v29;
  *(v28 + 105) = *&v46[96];
  v30 = *&v46[16];
  *(v28 + 9) = *v46;
  *(v28 + 25) = v30;
  v31 = *&v46[48];
  *(v28 + 41) = *&v46[32];
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v28 + 120) = *&v46[111];
  *(v28 + 57) = v31;
  sub_100008A40(v15, v26 + v27[16], &qword_100074B30, &qword_10004F4A0);
  v32 = v26 + v27[20];
  v33 = *&v44[80];
  *(v32 + 73) = *&v44[64];
  *(v32 + 89) = v33;
  *(v32 + 105) = *&v44[96];
  v34 = *&v44[16];
  *(v32 + 9) = *v44;
  *(v32 + 25) = v34;
  v35 = *&v44[48];
  *(v32 + 41) = *&v44[32];
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v32 + 120) = *&v44[111];
  *(v32 + 57) = v35;
  sub_100008A40(v25, v26 + v27[24], &qword_100074B28, &qword_10004F498);
  sub_1000059D4(v38, &qword_100074B28, &qword_10004F498);
  sub_1000059D4(v39, &qword_100074B30, &qword_10004F4A0);
  sub_1000059D4(v41, &qword_100074B38, &qword_10004F4A8);
  sub_1000059D4(v25, &qword_100074B28, &qword_10004F498);
  sub_1000059D4(v15, &qword_100074B30, &qword_10004F4A0);
  return sub_1000059D4(v40, &qword_100074B38, &qword_10004F4A8);
}

uint64_t sub_10000944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = sub_100004944(&qword_100074B58, &qword_10004F4C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_100004944(&qword_100074C48, &qword_10004F688);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = sub_100004944(&qword_100074B48, &qword_10004F4B8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v23 - v15;
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    sub_10000AB1C(a1, a2, v16);
    sub_100008A40(v16, v12, &qword_100074B48, &qword_10004F4B8);
    swift_storeEnumTagMultiPayload();
    sub_10000BDA0();
    sub_10000BA20();
    _ConditionalContent<>.init(storage:)();
    v19 = v16;
    v20 = &qword_100074B48;
    v21 = &qword_10004F4B8;
  }

  else
  {
    sub_10000A0A8(a1, a2, v8);
    sub_100008A40(v8, v12, &qword_100074B58, &qword_10004F4C8);
    swift_storeEnumTagMultiPayload();
    sub_10000BDA0();
    sub_10000BA20();
    _ConditionalContent<>.init(storage:)();
    v19 = v8;
    v20 = &qword_100074B58;
    v21 = &qword_10004F4C8;
  }

  return sub_1000059D4(v19, v20, v21);
}

uint64_t sub_1000096D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_100004944(&qword_100074B70, &qword_10004F4D8);
  v4 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v6 = &v33 - v5;
  v7 = sub_100004944(&qword_100074C20, &qword_10004F5F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v34 = &v33 - v10;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_10000C030();
    v11 = Text.init<A>(_:)();
    v13 = v12;
    v15 = v14;
    v16 = [objc_opt_self() currentDevice];
    v17 = [v16 userInterfaceIdiom];

    v37 = v7;
    v38 = a2;
    v36 = v8;
    if (v17 == 6)
    {
      static Font.title2.getter();
    }

    else
    {
      static Font.headline.getter();
    }

    v18 = Text.font(_:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_10000C084(v11, v13, v15 & 1);

    KeyPath = swift_getKeyPath();
    v39 = v18;
    v40 = v20;
    v26 = v22 & 1;
    v41 = v26;
    v42 = v24;
    v43 = KeyPath;
    v44 = 1;
    v45 = 0;
    v27 = enum case for DynamicTypeSize.xxxLarge(_:);
    v28 = type metadata accessor for DynamicTypeSize();
    (*(*(v28 - 8) + 104))(v6, v27, v28);
    sub_10000C094(&qword_100074C10, &type metadata accessor for DynamicTypeSize);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      sub_100004944(&qword_100074C28, &qword_10004F678);
      sub_10000C1B0();
      sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8);
      v29 = v18;
      v30 = v34;
      View.dynamicTypeSize<A>(_:)();
      sub_1000059D4(v6, &qword_100074B70, &qword_10004F4D8);
      sub_10000C084(v29, v20, v26);

      v31 = v38;
      (*(v36 + 32))(v38, v30, v37);
      result = sub_100004944(&qword_100074B30, &qword_10004F4A0);
      *(v31 + *(result + 36)) = 0x3FF0000000000000;
      return result;
    }

    __break(1u);
  }

  type metadata accessor for ColorPickerState();
  sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100009B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = sub_100004944(&qword_100074B48, &qword_10004F4B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_100004944(&qword_100074B50, &qword_10004F4C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = sub_100004944(&qword_100074B58, &qword_10004F4C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v23 - v15;
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    sub_10000A0A8(a1, a2, v16);
    sub_100008A40(v16, v12, &qword_100074B58, &qword_10004F4C8);
    swift_storeEnumTagMultiPayload();
    sub_10000BA20();
    sub_10000BDA0();
    _ConditionalContent<>.init(storage:)();
    v19 = v16;
    v20 = &qword_100074B58;
    v21 = &qword_10004F4C8;
  }

  else
  {
    sub_10000AB1C(a1, a2, v8);
    sub_100008A40(v8, v12, &qword_100074B48, &qword_10004F4B8);
    swift_storeEnumTagMultiPayload();
    sub_10000BA20();
    sub_10000BDA0();
    _ConditionalContent<>.init(storage:)();
    v19 = v8;
    v20 = &qword_100074B48;
    v21 = &qword_10004F4B8;
  }

  return sub_1000059D4(v19, v20, v21);
}

uint64_t sub_100009DAC(uint64_t a1)
{
  v2 = sub_100004944(&qword_100074C60, &qword_10004F700);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = sub_100004944(&qword_100074C68, &qword_10004F708);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v12 = sub_100004944(&qword_100074C70, &qword_10004F710);
    (*(*(v12 - 8) + 16))(v9, a1, v12);
    v13 = &v9[*(v6 + 36)];
    v14 = v17[1];
    *v13 = v17[0];
    *(v13 + 1) = v14;
    *(v13 + 2) = v17[2];
    sub_10000C408(v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_10000C350();
    sub_100008D7C(&qword_100074C80, &qword_100074C70, &qword_10004F710);
    _ConditionalContent<>.init(storage:)();
    return sub_1000059D4(v9, &qword_100074C68, &qword_10004F708);
  }

  else
  {
    v16 = sub_100004944(&qword_100074C70, &qword_10004F710);
    (*(*(v16 - 8) + 16))(v5, a1, v16);
    swift_storeEnumTagMultiPayload();
    sub_10000C350();
    sub_100008D7C(&qword_100074C80, &qword_100074C70, &qword_10004F710);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10000A0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74[2] = a2;
  v79 = a1;
  v80 = a3;
  v78 = sub_100004944(&qword_100074B70, &qword_10004F4D8);
  v3 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v86 = v74 - v4;
  v5 = type metadata accessor for UIButton.Configuration();
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = *(v87 + 64);
  __chkstk_darwin(v5);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100004944(&qword_100074BA8, &qword_10004F4F0);
  v8 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v89 = v74 - v9;
  v83 = sub_100004944(&qword_100074B68, &qword_10004F4D0);
  v10 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = v74 - v11;
  v77 = sub_100004944(&qword_100074BF8, &qword_10004F508);
  v76 = *(v77 - 8);
  v12 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = v74 - v13;
  v14 = type metadata accessor for ColorPickerState();
  v15 = sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState);
  v74[1] = v14;
  v74[0] = v15;
  v92 = EnvironmentObject.init()();
  v93 = v16;
  sub_10000598C(0, &qword_1000762F0, UIColorPickerViewController_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass:ObjCClassFromMetadata];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v90 = v23;
  v91 = v25;
  v81 = sub_10000C030();
  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  sub_10000B530();
  View.accessibility(label:)();
  sub_10000C084(v26, v28, v30 & 1);

  sub_100004944(&qword_100074C08, &qword_10004F510);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10004F230;
  v32 = [v18 bundleForClass:ObjCClassFromMetadata];
  v33 = String._bridgeToObjectiveC()();
  v34 = String._bridgeToObjectiveC()();
  v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(v31 + 32) = v36;
  *(v31 + 40) = v38;
  v39 = v18;
  v40 = v83;
  v41 = [v39 bundleForClass:ObjCClassFromMetadata];
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48 = v86;
  *(v31 + 48) = v45;
  *(v31 + 56) = v47;
  v49 = v84;
  v50 = v89;
  ModifiedContent<>.accessibilityInputLabels<A>(_:)();

  sub_1000059D4(v50, &qword_100074BA8, &qword_10004F4F0);
  *(v49 + *(sub_100004944(&qword_100074B98, &qword_10004F4E8) + 36)) = 257;
  LOBYTE(v31) = static Edge.Set.leading.getter();
  v51 = v82;
  sub_10000A9B8();
  UIButton.Configuration.contentInsets.getter();
  v52 = v88;
  v53 = *(v87 + 8);
  v53(v51, v88);
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v49 + *(sub_100004944(&qword_100074B88, &qword_10004F4E0) + 36);
  *v62 = v31;
  *(v62 + 8) = v55;
  *(v62 + 16) = v57;
  *(v62 + 24) = v59;
  *(v62 + 32) = v61;
  *(v62 + 40) = 0;
  LOBYTE(v31) = static Edge.Set.trailing.getter();
  sub_10000A9B8();
  UIButton.Configuration.contentInsets.getter();
  v53(v51, v52);
  EdgeInsets.init(_all:)();
  v63 = v49 + *(v40 + 36);
  *v63 = v31;
  *(v63 + 8) = v64;
  *(v63 + 16) = v65;
  *(v63 + 24) = v66;
  *(v63 + 32) = v67;
  *(v63 + 40) = 0;
  v68 = enum case for DynamicTypeSize.xLarge(_:);
  v69 = type metadata accessor for DynamicTypeSize();
  (*(*(v69 - 8) + 104))(v48, v68, v69);
  sub_10000C094(&qword_100074C10, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10000BBAC(&qword_100074B78, &qword_100074B68, &qword_10004F4D0, sub_10000BB7C);
  sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8);
  v70 = v75;
  View.dynamicTypeSize<A>(_:)();
  sub_1000059D4(v48, &qword_100074B70, &qword_10004F4D8);
  sub_1000059D4(v49, &qword_100074B68, &qword_10004F4D0);
  if (!v79)
  {
LABEL_8:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v92)
  {
    v71 = 1.0;
  }

  else
  {
    v71 = 0.0;
  }

  v72 = v80;
  (*(v76 + 32))(v80, v70, v77);
  result = sub_100004944(&qword_100074B58, &qword_10004F4C8);
  *(v72 + *(result + 36)) = v71;
  return result;
}

uint64_t sub_10000A9B8()
{
  static UIButton.Configuration.plain()();
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  UIButton.Configuration.image.setter();
  v2 = objc_opt_self();
  v3 = [v2 configurationWithTextStyle:UIFontTextStyleBody];
  v4 = [v2 configurationWithWeight:6];
  v5 = [v3 configurationByApplyingConfiguration:v4];

  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v6 = [objc_opt_self() clearColor];
  v7 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  return v7(&v9, 0);
}

uint64_t sub_10000AB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004944(&qword_100074B70, &qword_10004F4D8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_100004944(&qword_100074C18, &qword_10004F560);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v21[1] = a2;
  v25 = sub_10000C11C;
  v26 = v14;
  v27 = 257;
  v15 = enum case for DynamicTypeSize.xLarge(_:);
  v16 = type metadata accessor for DynamicTypeSize();
  (*(*(v16 - 8) + 104))(v9, v15, v16);
  sub_10000C094(&qword_100074C10, &type metadata accessor for DynamicTypeSize);

  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v22 = v10;
    v23 = a3;
    sub_100004944(&qword_100074BC8, &qword_10004F4F8);
    sub_10000BC60(&qword_100074BD0, &qword_100074BC8, &qword_10004F4F8, sub_10000BEFC);
    sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8);
    View.dynamicTypeSize<A>(_:)();
    sub_1000059D4(v9, &qword_100074B70, &qword_10004F4D8);

    if (a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v25)
      {

        v17 = v22;
        v18 = v23;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v19 = 1.0;
        v17 = v22;
        v18 = v23;
        if (v25 != 1)
        {
LABEL_7:
          (*(v24 + 32))(v18, v13, v17);
          result = sub_100004944(&qword_100074B48, &qword_10004F4B8);
          *(v18 + *(result + 36)) = v19;
          return result;
        }
      }

      v19 = 0.0;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for ColorPickerState();
  sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10000AF48(uint64_t result)
{
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close);
    if (v1)
    {
      v2 = *(result + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close + 8);

      v1(v3);

      return sub_10000C134(v1);
    }
  }

  else
  {
    type metadata accessor for ColorPickerState();
    sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B018(uint64_t a1)
{
  v2 = sub_100004944(&qword_100074AF8, &qword_10004F370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for UIPointerEffect();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [objc_allocWithZone(UITargetedPreview) initWithView:a1];
  sub_10000598C(0, &qword_100074B00, UIPointerStyle_ptr);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for UIPointerEffect.highlight(_:), v6);
  v12 = type metadata accessor for UIPointerShape();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  return UIPointerStyle.init(effect:shape:)();
}

id sub_10000B340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EyeDropperView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000B3C4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = type metadata accessor for EyeDropperView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator_parent];
  *v7 = v3;
  *(v7 + 1) = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10000B43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000B72C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000B4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000B72C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000B504()
{
  sub_10000B72C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10000B530()
{
  result = qword_100074AE0;
  if (!qword_100074AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074AE0);
  }

  return result;
}

id sub_10000B584()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10000598C(0, &qword_100074AE8, UIButton_ptr);
  sub_10000A9B8();
  v2 = UIButton.init(configuration:primaryAction:)();
  sub_100004944(&qword_100074AF0, &qword_10004F368);
  UIViewRepresentableContext.coordinator.getter();
  [v2 addTarget:v4 action:"buttonPressed:" forControlEvents:1];

  UIViewRepresentableContext.coordinator.getter();
  [v2 addTarget:v4 action:"buttonUp:" forControlEvents:64];

  UIViewRepresentableContext.coordinator.getter();
  [v2 addTarget:v4 action:"buttonUp:" forControlEvents:128];

  [v2 setContentHorizontalAlignment:4];
  UIButton.pointerStyleProvider.setter();
  return v2;
}

unint64_t sub_10000B72C()
{
  result = qword_100074B08;
  if (!qword_100074B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074B08);
  }

  return result;
}

uint64_t sub_10000B780()
{
  v1 = (v0 + OBJC_IVAR____TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator_parent);
  if (!*(v0 + OBJC_IVAR____TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator_parent))
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if ((v4 & 1) == 0)
  {
    return result;
  }

  if (!*v1)
  {
LABEL_6:
    v3 = v1[1];
    type metadata accessor for ColorPickerState();
    sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000B8D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10000B934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10000B9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100074B10, &qword_10004F480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000BA20()
{
  result = qword_100074B60;
  if (!qword_100074B60)
  {
    sub_100008B90(&qword_100074B58, &qword_10004F4C8);
    sub_100008B90(&qword_100074B68, &qword_10004F4D0);
    sub_100008B90(&qword_100074B70, &qword_10004F4D8);
    sub_10000BBAC(&qword_100074B78, &qword_100074B68, &qword_10004F4D0, sub_10000BB7C);
    sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074B60);
  }

  return result;
}

uint64_t sub_10000BBAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BC60(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BCE4()
{
  result = qword_100074BA0;
  if (!qword_100074BA0)
  {
    sub_100008B90(&qword_100074BA8, &qword_10004F4F0);
    sub_10000B530();
    sub_10000C094(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BA0);
  }

  return result;
}

unint64_t sub_10000BDA0()
{
  result = qword_100074BC0;
  if (!qword_100074BC0)
  {
    sub_100008B90(&qword_100074B48, &qword_10004F4B8);
    sub_100008B90(&qword_100074BC8, &qword_10004F4F8);
    sub_100008B90(&qword_100074B70, &qword_10004F4D8);
    sub_10000BC60(&qword_100074BD0, &qword_100074BC8, &qword_10004F4F8, sub_10000BEFC);
    sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BC0);
  }

  return result;
}

unint64_t sub_10000BEFC()
{
  result = qword_100074BD8;
  if (!qword_100074BD8)
  {
    sub_100008B90(&qword_100074BE0, &qword_10004F500);
    sub_10000BF88();
    sub_10000BFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BD8);
  }

  return result;
}

unint64_t sub_10000BF88()
{
  result = qword_100074BE8;
  if (!qword_100074BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BE8);
  }

  return result;
}

unint64_t sub_10000BFDC()
{
  result = qword_100074BF0;
  if (!qword_100074BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BF0);
  }

  return result;
}

unint64_t sub_10000C030()
{
  result = qword_100074C00;
  if (!qword_100074C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C00);
  }

  return result;
}

uint64_t sub_10000C084(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000C094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C0E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C134(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000C14C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000C180(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

unint64_t sub_10000C1B0()
{
  result = qword_100074C30;
  if (!qword_100074C30)
  {
    sub_100008B90(&qword_100074C28, &qword_10004F678);
    sub_100008D7C(&qword_100074C38, &qword_100074C40, &qword_10004F680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C30);
  }

  return result;
}

unint64_t sub_10000C27C()
{
  result = qword_100074C50;
  if (!qword_100074C50)
  {
    sub_100008B90(&qword_100074B20, &qword_10004F490);
    sub_100008D7C(&qword_100074C58, &qword_100074B10, &qword_10004F480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C50);
  }

  return result;
}

unint64_t sub_10000C350()
{
  result = qword_100074C78;
  if (!qword_100074C78)
  {
    sub_100008B90(&qword_100074C68, &qword_10004F708);
    sub_100008D7C(&qword_100074C80, &qword_100074C70, &qword_10004F710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C78);
  }

  return result;
}

uint64_t sub_10000C408(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100074C68, &qword_10004F708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000C47C()
{
  result = qword_100074C88;
  if (!qword_100074C88)
  {
    sub_100008B90(&qword_100074C90, &qword_10004F718);
    sub_10000C350();
    sub_100008D7C(&qword_100074C80, &qword_100074C70, &qword_10004F710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C88);
  }

  return result;
}

char *sub_10000C540()
{
  v1 = &v0[OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey];
  strcpy(&v0[OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey], "FavoriteColors");
  v1[15] = -18;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for FavoritesStore();
  v2 = objc_msgSendSuper2(&v20, "init");
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 standardUserDefaults];
  v6 = &v4[OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey];
  v7 = *&v4[OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey];
  v8 = *&v4[OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey + 8];

  v9 = String._bridgeToObjectiveC()();

  v10 = [v5 dataForKey:v9];

  if (v10)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    sub_10000DAC4(v11, v13);
  }

  else
  {
    v15 = [v3 standardUserDefaults];
    v16 = *v6;
    v17 = *(v6 + 1);
    v18 = String._bridgeToObjectiveC()();
    v14 = [v15 arrayForKey:v18];

    if (v14)
    {

      goto LABEL_6;
    }

    sub_10000D834();
  }

  v14 = v4;
LABEL_6:

  return v4;
}

char *sub_10000C704(char a1)
{
  v2 = sub_10000D0EC();
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    v4 = *(v2 + 2);
    if (v4)
    {
      v5 = v4 - 1;
      for (i = v2 + 64; ; i += 56)
      {
        v13 = *(i - 2);
        v14 = *(i - 2);
        v11 = *i;
        v12 = *(i + 8);
        if (*(i - 1) == 1.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10002F074(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v8 = _swiftEmptyArrayStorage[2];
          v7 = _swiftEmptyArrayStorage[3];
          if (v8 >= v7 >> 1)
          {
            sub_10002F074((v7 > 1), v8 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v8 + 1;
          v9 = &_swiftEmptyArrayStorage[7 * v8];
          *(v9 + 2) = v13;
          v9[6] = v14;
          v9[7] = 0x3FF0000000000000;
          *(v9 + 40) = v12;
          *(v9 + 4) = v11;
        }

        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10000C860(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100004944(&qword_100074D00, "ʦ");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v86 - v9;
  if (a2)
  {
    v11 = type metadata accessor for JSONEncoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    *v100 = a1;
    sub_100004944(&unk_1000765A0, &qword_1000516B0);
    sub_10000DBC4(&qword_100074CC8, sub_10000DA70);
    v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v16 = v15;

    v17 = [objc_opt_self() standardUserDefaults];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = *(v3 + OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey);
    v20 = *(v3 + OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey + 8);
    v21 = String._bridgeToObjectiveC()();
    [v17 setValue:isa forKey:v21];

    return sub_10000DAC4(v14, v16);
  }

  v89 = v8;
  v23 = sub_10000D0EC();
  v102 = sub_10000C704(0);
  v103 = v23;
  *v100 = a1;
  v24 = sub_100004944(&unk_1000765A0, &qword_1000516B0);
  sub_10000DD00();
  sub_10000DD64();
  v88 = v24;
  BidirectionalCollection<>.difference<A>(from:)();

  v90 = v10;
  v25 = CollectionDifference.removals.getter();
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v86 = v6;
    v87 = v3;
    v28 = 0;
    v95 = v25 + 32;
    v94 = a1;
    v91 = (a1 + 81);
    v93 = v25;
    v92 = v27;
    while (1)
    {
      v29 = v95 + 80 * v28;
      v30 = *v29;
      v31 = *(v29 + 24);
      v32 = *(v29 + 8);
      v33 = *(v29 + 40);
      v34 = *(v29 + 48);
      v35 = *(v29 + 73);
      v36 = *(v29 + 57);
      LOBYTE(v102) = *(v29 + 56);
      v101 = v36;
      if ((v35 & 1) == 0)
      {
        goto LABEL_49;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
LABEL_67:
        __break(1u);
        swift_unexpectedError();
        __break(1u);

        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v98 = v32;
      v99 = v31;
      if (*(v94 + 16) >= v30)
      {
        v37 = v30;
      }

      else
      {
        v37 = *(v94 + 16);
      }

      if (v30)
      {
        v38 = v37 == 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = _swiftEmptyArrayStorage;
      if (!v38)
      {

        v40 = v91;
        v41 = v99;
        v42 = v98;
        while (1)
        {
          v48 = *(v40 - 49);
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v48, v42), vceqq_f64(*(v40 - 33), v41)))))
          {
            v49 = *(v40 - 17);
            if (v49 == v33)
            {
              v50 = *(v40 - 9);
              v51 = *(v40 - 1);
              v52 = *v40;
              v53 = v102;
              if ((v51 & 1) == 0)
              {
                v54 = *(v40 - 9);
                if (v50 != v34)
                {
                  v53 = 1;
                }

                if (v53)
                {
                  goto LABEL_18;
                }

LABEL_27:
                if (v101 == (v52 & 1))
                {
                  v96 = *(v40 - 33);
                  v97 = v48;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *v100 = v39;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_10002F074(0, v39[2] + 1, 1);
                    v39 = *v100;
                  }

                  v43 = v97;
                  v44 = v96;
                  v46 = v39[2];
                  v45 = v39[3];
                  v41 = v99;
                  v42 = v98;
                  if (v46 >= v45 >> 1)
                  {
                    sub_10002F074((v45 > 1), v46 + 1, 1);
                    v44 = v96;
                    v43 = v97;
                    v42 = v98;
                    v41 = v99;
                    v39 = *v100;
                  }

                  v39[2] = v46 + 1;
                  v47 = &v39[7 * v46];
                  v47[2] = v43;
                  v47[3] = v44;
                  v47[4].f64[0] = v49;
                  v47[4].f64[1] = v50;
                  LOBYTE(v47[5].f64[0]) = v51;
                  BYTE1(v47[5].f64[0]) = v52;
                }

                goto LABEL_18;
              }

              if (v102)
              {
                goto LABEL_27;
              }
            }
          }

LABEL_18:
          v40 += 56;
          if (!--v37)
          {

            break;
          }
        }
      }

      v56 = v39[2];

      v57 = *(v103 + 2);
      v26 = v93;
      v27 = v92;
      if (!v57)
      {
        goto LABEL_49;
      }

      v58 = 0;
      v59 = (v103 + 81);
      while (1)
      {
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v59 - 49), v98), vceqq_f64(*(v59 - 33), v99)))) & 1) == 0 || *(v59 - 17) != v33)
        {
          goto LABEL_33;
        }

        v60 = *v59;
        if (*(v59 - 1))
        {
          if ((v102 ^ 1 | v60 ^ v101))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (*(v59 - 9) == v34)
          {
            v61 = v102;
          }

          else
          {
            v61 = 1;
          }

          if (v61 & 1) != 0 || ((v60 ^ v101))
          {
            goto LABEL_33;
          }
        }

        if (!v56)
        {
          break;
        }

        if (__OFSUB__(v56--, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

LABEL_33:
        ++v58;
        v59 += 56;
        if (v57 == v58)
        {
          goto LABEL_49;
        }
      }

      sub_100027B20(v58, v100);
LABEL_49:
      if (++v28 == v27)
      {
LABEL_52:

        v3 = v87;
        v6 = v86;
        goto LABEL_54;
      }

      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }
    }
  }

LABEL_54:
  v63 = v6;
  v64 = CollectionDifference.insertions.getter();
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v103;
    v67 = v65 - 1;
    for (i = (v64 + 105); ; i += 80)
    {
      *&v100[16] = *(i - 57);
      *&v100[32] = *(i - 41);
      *&v100[48] = *(i - 25);
      *&v100[57] = *(i - 1);
      *v100 = *(i - 73);
      if ((*i & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_10002EC04(0, *(v66 + 2) + 1, 1, v66);
        }

        v70 = *(v66 + 2);
        v69 = *(v66 + 3);
        if (v70 >= v69 >> 1)
        {
          v66 = sub_10002EC04((v69 > 1), v70 + 1, 1, v66);
        }

        *(v66 + 2) = v70 + 1;
        v71 = &v66[56 * v70];
        v72 = *&v100[8];
        v73 = *&v100[24];
        v74 = *&v100[40];
        *(v71 + 40) = *&v100[56];
        *(v71 + 3) = v73;
        *(v71 + 4) = v74;
        *(v71 + 2) = v72;
      }

      if (!v67)
      {
        break;
      }

      --v67;
    }

    v103 = v66;
  }

  else
  {

    v66 = v103;
  }

  v75 = type metadata accessor for JSONEncoder();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v100 = v66;
  sub_10000DBC4(&qword_100074CC8, sub_10000DA70);

  v78 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v80 = v79;

  swift_bridgeObjectRelease_n();
  v81 = [objc_opt_self() standardUserDefaults];
  v82 = Data._bridgeToObjectiveC()().super.isa;
  v83 = *(v3 + OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey);
  v84 = *(v3 + OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey + 8);
  v85 = String._bridgeToObjectiveC()();
  [v81 setValue:v82 forKey:v85];
  sub_10000DAC4(v78, v80);

  return (*(v89 + 8))(v90, v63);
}

char *sub_10000D0EC()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = v0 + OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey;
  v4 = *(v0 + OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey);
  v5 = *(v3 + 8);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v2 dataForKey:v6];

  if (v7)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100004944(&unk_1000765A0, &qword_1000516B0);
    sub_10000DBC4(&qword_100074CF0, sub_10000DC3C);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_10000DAC4(v8, v10);
    return *&v51[0];
  }

  v14 = [v1 standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 arrayForKey:v15];

  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10000D708(v17);

  v28 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    return v28;
  }

  *&v51[0] = _swiftEmptyArrayStorage;
  v19 = v18[2];
  if (!v19)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v20 = 0;
  v21 = v18 + 5;
  v22 = _swiftEmptyArrayStorage;
  v49 = v18[2];
  do
  {
    v50 = v22;
    v23 = v19 - v20;
    v24 = &v21[2 * v20];
    while (1)
    {
      if (v20 >= v18[2])
      {
        __break(1u);
        goto LABEL_45;
      }

      v25 = *(v24 - 1);
      v22 = *v24;
      sub_10000598C(0, &qword_100074CD8, NSKeyedUnarchiver_ptr);
      sub_10000598C(0, &qword_100074CE0, UIColor_ptr);
      sub_10000DB18(v25, v22);
      v26 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      sub_10000DAC4(v25, v22);
      if (v26)
      {
        break;
      }

      v24 += 2;
      ++v20;
      if (!--v23)
      {
        v22 = v50;
        goto LABEL_17;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((*&v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v20;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v22 = *&v51[0];
    v21 = v18 + 5;
    v19 = v49;
  }

  while (v23 != 1);
LABEL_17:

  if (v22 >> 62)
  {
LABEL_45:
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_19:
    v53 = _swiftEmptyArrayStorage;
    result = sub_10002F074(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = 0;
    v28 = v53;
    v32 = v22;
    v48 = kCGColorSpaceExtendedDisplayP3;
    v33 = v29 - 1;
    if ((v22 & 0xC000000000000001) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v32 + 8 * v31 + 32))
    {
      v35 = i;
      v36 = [i CGColor];
      v37 = CGColorGetColorSpace(v36);

      if (v37)
      {
        v38 = CGColorSpaceCopyName(v37);
        if (v38)
        {
          v39 = v38;
          type metadata accessor for CFString(0);
          sub_10000DB6C();
          if (static _CFObject.== infix(_:_:)() & 1) != 0 || (static _CFObject.== infix(_:_:)())
          {
            v40 = 0;
            goto LABEL_28;
          }

          if (static _CFObject.== infix(_:_:)())
          {
            v40 = 1;
LABEL_28:

LABEL_29:
            sub_100019C44(v35, v40, v51);

            goto LABEL_38;
          }

          v41 = static _CFObject.== infix(_:_:)();

          if (v41)
          {
            v40 = 1;
            goto LABEL_29;
          }
        }
      }

      if (qword_1000743E0 != -1)
      {
        swift_once();
      }

      sub_100019C44(v35, byte_10007B138, v51);
LABEL_38:
      v32 = v22;
      v53 = v28;
      v43 = v28[2];
      v42 = v28[3];
      if (v43 >= v42 >> 1)
      {
        sub_10002F074((v42 > 1), v43 + 1, 1);
        v32 = v22;
        v28 = v53;
      }

      v28[2] = v43 + 1;
      v44 = &v28[7 * v43];
      v45 = v51[0];
      v46 = v51[1];
      v47 = v51[2];
      *(v44 + 40) = v52;
      *(v44 + 3) = v46;
      *(v44 + 4) = v47;
      *(v44 + 2) = v45;
      if (v33 == v31)
      {

        return v28;
      }

      ++v31;
      if ((v22 & 0xC000000000000001) != 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      ;
    }
  }

  v29 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    goto LABEL_19;
  }

LABEL_46:

  return _swiftEmptyArrayStorage;
}

void *sub_10000D708(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  sub_10002F094(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000DC90(i, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        sub_10002F094((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      v3[2] = v7 + 1;
      *&v3[2 * v7 + 4] = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_10000DCEC(0, 0xF000000000000000);
    return 0;
  }

  return v3;
}

uint64_t sub_10000D834()
{
  v1 = v0;
  if (qword_1000743E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100004944(&unk_1000765A0, &qword_1000516B0);
  sub_10000DBC4(&qword_100074CC8, sub_10000DA70);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v8 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = *(v1 + OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey);
  v11 = *(v1 + OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey + 8);
  v12 = String._bridgeToObjectiveC()();
  [v8 setValue:isa forKey:v12];

  return sub_10000DAC4(v5, v7);
}

id sub_10000DA04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoritesStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000DA70()
{
  result = qword_100074CD0;
  if (!qword_100074CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074CD0);
  }

  return result;
}

uint64_t sub_10000DAC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000DB18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000DB6C()
{
  result = qword_100074CE8;
  if (!qword_100074CE8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074CE8);
  }

  return result;
}

uint64_t sub_10000DBC4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(&unk_1000765A0, &qword_1000516B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000DC3C()
{
  result = qword_100074CF8;
  if (!qword_100074CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074CF8);
  }

  return result;
}

uint64_t sub_10000DC90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DCEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000DAC4(a1, a2);
  }

  return a1;
}

unint64_t sub_10000DD00()
{
  result = qword_100074D08;
  if (!qword_100074D08)
  {
    sub_100008B90(&unk_1000765A0, &qword_1000516B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D08);
  }

  return result;
}

unint64_t sub_10000DD64()
{
  result = qword_100074D10;
  if (!qword_100074D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D10);
  }

  return result;
}

double sub_10000DDE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 8.0;
  }

  v7 = [objc_opt_self() systemBackgroundColor];
  v8 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = static Alignment.center.getter();
  v11 = v10;
  static Color.black.getter();
  v12 = Color.opacity(_:)();

  *(a2 + 8) = v6;
  result = *&v14;
  *(a2 + 24) = v14;
  *a2 = 0x3FF0000000000000;
  *(a2 + 16) = a1;
  *(a2 + 40) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v8;
  *(a2 + 72) = 256;
  *(a2 + 80) = v9;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0x4010000000000000;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

double sub_10000DF38@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Path.init()();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMinY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMaxX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMaxY(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxY(v21);
  Path.move(to:)();
  Path.addLine(to:)();
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  Path.addLine(to:)();
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  Path.addLine(to:)();
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  Path.addLine(to:)();
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  Path.closeSubpath()();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_10000E19C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  sub_10000DF38(v12, a2, a3, a4, a5);
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v11;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_10000E208(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10000E290;
}

void sub_10000E290(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10000E2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000E668();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000E340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000E668();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000E3A4(uint64_t a1)
{
  v2 = sub_10000E668();

  return Shape.body.getter(a1, v2);
}

__n128 initializeBufferWithCopyOfBuffer for RoundedRectShape(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RoundedRectShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoundedRectShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_10000E464()
{
  result = qword_100074D18;
  if (!qword_100074D18)
  {
    sub_100008B90(&qword_100074D20, &qword_10004F828);
    sub_100008D7C(&qword_100074D28, &qword_100074D30, &qword_10004F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D18);
  }

  return result;
}

unint64_t sub_10000E564()
{
  result = qword_100074D48;
  if (!qword_100074D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D48);
  }

  return result;
}

unint64_t sub_10000E5BC()
{
  result = qword_100074D50;
  if (!qword_100074D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D50);
  }

  return result;
}

unint64_t sub_10000E614()
{
  result = qword_100074D58;
  if (!qword_100074D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D58);
  }

  return result;
}

unint64_t sub_10000E668()
{
  result = qword_100074D60;
  if (!qword_100074D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D60);
  }

  return result;
}

uint64_t sub_10000E6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000E704(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Tab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Tab(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000E904()
{
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_10000EA38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6D75727463657053;
  if (v2 != 1)
  {
    v4 = 0x73726564696C53;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684632135;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6D75727463657053;
  if (*a2 != 1)
  {
    v8 = 0x73726564696C53;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684632135;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10000EB34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000EBD0()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000EC58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000ECF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100014D0C(*a1);
  *a2 = result;
  return result;
}

void sub_10000ED20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6D75727463657053;
  if (v2 != 1)
  {
    v5 = 0x73726564696C53;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684632135;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10000ED8C()
{
  result = qword_100074D78;
  if (!qword_100074D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D78);
  }

  return result;
}

uint64_t sub_10000EDFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_100004944(&qword_100074D80, &qword_10004FAC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - v10;
  v53 = sub_100004944(&qword_100074D88, &qword_10004FAC8);
  v12 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v14 = &v49 - v13;
  v54 = sub_100004944(&qword_100074D90, &qword_10004FAD0);
  v15 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v17 = &v49 - v16;
  v18 = sub_100004944(&qword_100074D98, &qword_10004FAD8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v58 = &v49 - v21;
  v57 = sub_100004944(&qword_100074DA0, &qword_10004FAE0);
  v22 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v55 = &v49 - v23;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v24 = &v11[*(sub_100004944(&qword_100074DA8, &qword_10004FAE8) + 44)];
  *&v56 = a2;
  *(&v56 + 1) = a3;
  sub_10000F4E0(v24);
  if (sub_100025F10())
  {
    v50 = v19;
    v51 = v18;
    v52 = a4;
    sub_100004944(&qword_100074DE8, &qword_10004FB50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004F930;
    v26 = static Edge.Set.leading.getter();
    *(inited + 32) = v26;
    v27 = static Edge.Set.bottom.getter();
    *(inited + 33) = v27;
    v28 = static Edge.Set.trailing.getter();
    *(inited + 34) = v28;
    v29 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v26)
    {
      v29 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v27)
    {
      v29 = Edge.Set.init(rawValue:)();
    }

    v18 = v51;

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v28)
    {
      v29 = Edge.Set.init(rawValue:)();
    }

    v30 = v52;
    v19 = v50;
  }

  else
  {
    v29 = static Edge.Set.all.getter();
    v30 = a4;
  }

  sub_100014D58();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1000084B0(v11, v14, &qword_100074D80, &qword_10004FAC0);
  v39 = &v14[*(v53 + 36)];
  *v39 = v29;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  type metadata accessor for ColorPickerState();
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
  v40 = static ObservableObject.environmentStore.getter();
  sub_1000084B0(v14, v17, &qword_100074D88, &qword_10004FAC8);
  v41 = &v17[*(v54 + 36)];
  *v41 = v40;
  v41[1] = a1;
  v59 = v56;

  sub_100004944(&qword_100074DB0, &qword_10004FAF0);
  State.wrappedValue.getter();
  type metadata accessor for ColorPickerConfiguration();
  sub_100014E24();
  sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
  v42 = v58;
  View.environment<A>(_:)();

  sub_1000059D4(v17, &qword_100074D90, &qword_10004FAD0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v43 = v55;
  (*(v19 + 32))(v55, v42, v18);
  v44 = (v43 + *(v57 + 36));
  v45 = v64;
  v44[4] = v63;
  v44[5] = v45;
  v44[6] = v65;
  v46 = v60;
  *v44 = v59;
  v44[1] = v46;
  v47 = v62;
  v44[2] = v61;
  v44[3] = v47;
  LOBYTE(v40) = static Edge.Set.all.getter();
  sub_100014F9C(v43, v30);
  result = sub_100004944(&qword_100074DE0, &qword_10004FB48);
  *(v30 + *(result + 36)) = v40;
  return result;
}

uint64_t sub_10000F4E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorPickerContent();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v33 - v7);
  if (sub_100025F10())
  {
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    v9 = EnvironmentObject.init()();
    v11 = v10;
  }

  else
  {
    v11 = 0;
    v9 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v37[0])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    v15 = EnvironmentObject.init()();
    v12 = v19;
    LOBYTE(v13) = static Edge.Set.bottom.getter();
    sub_100014D58();
    EdgeInsets.init(_all:)();
    v14 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    LOBYTE(v37[0]) = 0;
    v13 = v13;
  }

  type metadata accessor for ColorPickerState();
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
  *v8 = EnvironmentObject.init()();
  v8[1] = v24;
  v25 = *(v2 + 20);
  *(v8 + v25) = swift_getKeyPath();
  sub_100004944(&qword_100074A18, &unk_100051000);
  swift_storeEnumTagMultiPayload();
  sub_100016228(v8, v6, type metadata accessor for ColorPickerContent);
  *a1 = v9;
  *(a1 + 8) = v11;
  *&v34 = v15;
  *(&v34 + 1) = v12;
  *&v35 = v13;
  *(&v35 + 1) = v14;
  *v36 = v16;
  *&v36[8] = v17;
  *&v36[16] = v18;
  v36[24] = 0;
  v26 = v35;
  *(a1 + 16) = v34;
  *(a1 + 32) = v26;
  *(a1 + 48) = *v36;
  *(a1 + 57) = *&v36[9];
  v27 = sub_100004944(&qword_100074DF0, &qword_10004FC20);
  sub_100016228(v6, a1 + *(v27 + 64), type metadata accessor for ColorPickerContent);
  v28 = *(v27 + 80);
  v29 = v13;
  v30 = v12;
  v31 = a1 + v28;
  sub_10001515C(v9);
  sub_100008A40(&v34, v37, &qword_100074DF8, &qword_10004FC28);
  sub_10001516C(v9);
  *v31 = 0;
  *(v31 + 8) = 0;
  sub_100016344(v8, type metadata accessor for ColorPickerContent);
  sub_100016344(v6, type metadata accessor for ColorPickerContent);
  v37[0] = v15;
  v37[1] = v30;
  v37[2] = v29;
  v37[3] = v14;
  v37[4] = v16;
  v37[5] = v17;
  v37[6] = v18;
  v38 = 0;
  sub_1000059D4(v37, &qword_100074DF8, &qword_10004FC28);
  return sub_10001516C(v9);
}

uint64_t sub_10000F8B8@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = type metadata accessor for SegmentedPickerStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004944(&qword_100074FD0, &qword_10004FE88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v23 - v9;
  type metadata accessor for ColorPickerState();
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v28 = v31;
  v29 = v32;
  v30 = v33;
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v24 = v16;
  v25 = v18;
  sub_10000C030();
  v24 = Text.init<A>(_:)();
  v25 = v19;
  v26 = v20 & 1;
  v27 = v21;
  sub_100004944(&qword_100074FD8, &unk_10004FE90);
  sub_100015C7C();
  sub_100015CD0();
  Picker.init(selection:label:content:)();
  SegmentedPickerStyle.init()();
  sub_100008D7C(&qword_100074FF0, &qword_100074FD0, &qword_10004FE88);
  View.pickerStyle<A>(_:)();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10000FC8C()
{
  swift_getKeyPath();
  sub_100004944(&qword_100074D70, qword_10004F990);
  sub_100008D7C(&qword_100074FF8, &qword_100074D70, qword_10004F990);
  sub_100015C7C();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10000FD78@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10000E904();
  sub_10000C030();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_10000FDD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10000F8B8(a1);
}

uint64_t sub_10000FDDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004944(&qword_100074EA0, &qword_10004FD28);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  v48 = sub_100004944(&qword_100074EA8, &qword_10004FD30);
  v10 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v12 = (&v44 - v11);
  v44 = sub_100004944(&qword_100074EB0, &qword_10004FD38);
  v13 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v46 = &v44 - v14;
  v45 = sub_100004944(&qword_100074EB8, &qword_10004FD40);
  v15 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v17 = (&v44 - v16);
  if (*v1)
  {
    v47 = a1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v50)
    {
      *v17 = swift_getKeyPath();
      sub_100004944(&qword_100074F28, &qword_10004FDA0);
      swift_storeEnumTagMultiPayload();
      v18 = type metadata accessor for ColorSwatchPickerView();
      v19 = (v17 + v18[5]);
      type metadata accessor for ColorPickerState();
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
      *v19 = EnvironmentObject.init()();
      v19[1] = v20;
      v21 = v17 + v18[6];
      v49 = 0;
      GestureState.init(wrappedValue:)();
      v22 = v51;
      v23 = v52;
      *v21 = v50;
      *(v21 + 1) = v22;
      *(v21 + 1) = v23;
      *(v17 + v18[7]) = &off_10006C248;
      v24 = v18[8];
      if (qword_1000743C8 != -1)
      {
        swift_once();
      }

      *(v17 + v24) = qword_1000754D0;

      sub_100011C64();
      *(v17 + *(sub_100004944(&qword_100074ED8, &qword_10004FD50) + 36)) = v25;
      KeyPath = swift_getKeyPath();
      v27 = (v17 + *(v45 + 36));
      v28 = *(sub_100004944(&qword_100074EF8, &qword_10004FD58) + 28);
      v29 = enum case for LayoutDirection.leftToRight(_:);
      v30 = type metadata accessor for LayoutDirection();
      (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
      *v27 = KeyPath;
      v31 = &qword_100074EB8;
      v32 = &qword_10004FD40;
      sub_100008A40(v17, v46, &qword_100074EB8, &qword_10004FD40);
      swift_storeEnumTagMultiPayload();
      sub_1000155F8();
      sub_1000157C0();
      _ConditionalContent<>.init(storage:)();
      v33 = v17;
    }

    else
    {
      *v12 = sub_1000104B4();
      v34 = v12 + *(v48 + 44);
      sub_100010674(v1, v9);
      *&v9[*(v3 + 36)] = 256;
      type metadata accessor for ColorPickerState();
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
      v35 = EnvironmentObject.init()();
      v37 = v36;
      type metadata accessor for ColorPickerConfiguration();
      sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
      v38 = Environment.init<A>(_:)();
      v40 = v39;
      sub_100008A40(v9, v7, &qword_100074EA0, &qword_10004FD28);
      sub_100008A40(v7, v34, &qword_100074EA0, &qword_10004FD28);
      v41 = v34 + *(sub_100004944(&qword_100074EC0, &qword_10004FD48) + 48);
      *v41 = v35;
      *(v41 + 8) = v37;
      *(v41 + 16) = v38;
      *(v41 + 24) = v40 & 1;
      *(v41 + 32) = sub_1000124E8;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;

      sub_1000155E8();
      sub_1000059D4(v9, &qword_100074EA0, &qword_10004FD28);

      sub_1000155F0();
      sub_1000059D4(v7, &qword_100074EA0, &qword_10004FD28);
      v31 = &qword_100074EA8;
      v32 = &qword_10004FD30;
      sub_100008A40(v12, v46, &qword_100074EA8, &qword_10004FD30);
      swift_storeEnumTagMultiPayload();
      sub_1000155F8();
      sub_1000157C0();
      _ConditionalContent<>.init(storage:)();
      v33 = v12;
    }

    return sub_1000059D4(v33, v31, v32);
  }

  else
  {
    v43 = v1[1];
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000104B4()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v5)
    {
      static VerticalAlignment.top.getter();
      v1 = [objc_opt_self() currentDevice];
      [v1 userInterfaceIdiom];

      sub_10000829C();
    }

    else
    {
      v2 = [objc_opt_self() currentDevice];
      [v2 userInterfaceIdiom];

      static HorizontalAlignment.center.getter();
      sub_1000082F0();
    }

    return AnyLayout.init<A>(_:)();
  }

  else
  {
    v4 = v0[1];
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100010674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v102 = sub_100004944(&qword_100074F30, &qword_10004FDD8);
  v3 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v5 = (&v84 - v4);
  v6 = sub_100004944(&qword_100074F38, &qword_10004FDE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v84 - v8;
  v100 = type metadata accessor for RGBAView();
  v10 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v88 = (&v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_100004944(&qword_100074F40, &qword_10004FDE8);
  v12 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v90 = &v84 - v13;
  v96 = sub_100004944(&qword_100074F48, &qword_10004FDF0);
  v14 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v98 = &v84 - v15;
  v92 = sub_100004944(&qword_100074F50, &qword_10004FDF8);
  v16 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v93 = &v84 - v17;
  v97 = sub_100004944(&qword_100074F58, &qword_10004FE00);
  v18 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v95 = &v84 - v19;
  v91 = sub_100004944(&qword_100074EB8, &qword_10004FD40);
  v20 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v89 = (&v84 - v21);
  v22 = sub_100004944(&qword_100074F60, &qword_10004FE08);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v99 = &v84 - v24;
  v25 = type metadata accessor for DynamicTypeSize();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1 + *(type metadata accessor for ColorPickerContent() + 20);
  sub_10001CBF0(v29);
  LOBYTE(v30) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
    *v5 = static Alignment.top.getter();
    v5[1] = v56;
    v57 = sub_100004944(&qword_100074F68, &qword_10004FE10);
    sub_100011498(a1, v5 + *(v57 + 44));
    v58 = &qword_100074F30;
    v59 = &qword_10004FDD8;
    sub_100008A40(v5, v9, &qword_100074F30, &qword_10004FDD8);
    swift_storeEnumTagMultiPayload();
    sub_10001596C();
    sub_100008D7C(&qword_100074FA8, &qword_100074F30, &qword_10004FDD8);
    _ConditionalContent<>.init(storage:)();
    v60 = v5;
    return sub_1000059D4(v60, v58, v59);
  }

  v86 = v22;
  v87 = v6;
  v85 = v9;
  v31 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v103)
    {
      if (v103 != 1)
      {
        type metadata accessor for ColorPickerState();
        sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
        v77 = EnvironmentObject.init()();
        v78 = v88;
        *v88 = v77;
        *(v78 + 8) = v79;
        type metadata accessor for ColorPickerConfiguration();
        sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
        *(v78 + 16) = Environment.init<A>(_:)();
        *(v78 + 24) = v80 & 1;
        v81 = *(v100 + 24);
        *(v78 + v81) = swift_getKeyPath();
        sub_100004944(&qword_100074A18, &unk_100051000);
        swift_storeEnumTagMultiPayload();
        sub_100016228(v78, v98, type metadata accessor for RGBAView);
        swift_storeEnumTagMultiPayload();
        sub_100015A54(&qword_100074F78, &qword_100074F58, &qword_10004FE00, sub_100015AD8);
        sub_100016780(&qword_100074FA0, type metadata accessor for RGBAView);
        v55 = v99;
        _ConditionalContent<>.init(storage:)();
        sub_100016344(v78, type metadata accessor for RGBAView);
        goto LABEL_12;
      }

      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v31;
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v31;
      swift_retain_n();
      Binding.init(get:set:)();
      type metadata accessor for ColorPickerState();
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
      v34 = EnvironmentObject.init()();
      sub_1000249B8(v117, v34, v35, &v103);
      sub_100011C64();
      v37 = v36;
      KeyPath = swift_getKeyPath();
      v39 = v90;
      v40 = &v90[*(v94 + 36)];
      v41 = *(sub_100004944(&qword_100074EF8, &qword_10004FD58) + 28);
      v42 = enum case for LayoutDirection.leftToRight(_:);
      v43 = type metadata accessor for LayoutDirection();
      (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
      *v40 = KeyPath;
      v44 = v114;
      *(v39 + 160) = v113;
      *(v39 + 176) = v44;
      *(v39 + 192) = v115;
      *(v39 + 208) = v116;
      v45 = v110;
      *(v39 + 96) = v109;
      *(v39 + 112) = v45;
      v46 = v112;
      *(v39 + 128) = v111;
      *(v39 + 144) = v46;
      v47 = v106;
      *(v39 + 32) = v105;
      *(v39 + 48) = v47;
      v48 = v108;
      *(v39 + 64) = v107;
      *(v39 + 80) = v48;
      v49 = v104;
      *v39 = v103;
      *(v39 + 16) = v49;
      *(v39 + 216) = v37;
      v50 = &qword_100074F40;
      v51 = &qword_10004FDE8;
      sub_100008A40(v39, v93, &qword_100074F40, &qword_10004FDE8);
      swift_storeEnumTagMultiPayload();
      sub_1000155F8();
      sub_100015AD8();
      v52 = v95;
      _ConditionalContent<>.init(storage:)();
      sub_100008A40(v52, v98, &qword_100074F58, &qword_10004FE00);
      swift_storeEnumTagMultiPayload();
      sub_100015A54(&qword_100074F78, &qword_100074F58, &qword_10004FE00, sub_100015AD8);
      sub_100016780(&qword_100074FA0, type metadata accessor for RGBAView);
      v53 = v99;
      _ConditionalContent<>.init(storage:)();
      sub_1000059D4(v52, &qword_100074F58, &qword_10004FE00);
      v54 = v39;
      v55 = v53;
    }

    else
    {
      v61 = swift_getKeyPath();
      v62 = v89;
      *v89 = v61;
      sub_100004944(&qword_100074F28, &qword_10004FDA0);
      swift_storeEnumTagMultiPayload();
      v63 = type metadata accessor for ColorSwatchPickerView();
      v64 = (v62 + v63[5]);
      type metadata accessor for ColorPickerState();
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
      *v64 = EnvironmentObject.init()();
      v64[1] = v65;
      v66 = v62 + v63[6];
      v117[0] = 0;
      GestureState.init(wrappedValue:)();
      v67 = *(&v103 + 1);
      v68 = v104;
      *v66 = v103;
      *(v66 + 8) = v67;
      *(v66 + 16) = v68;
      *(v62 + v63[7]) = &off_10006C248;
      v69 = v63[8];
      if (qword_1000743C8 != -1)
      {
        swift_once();
      }

      *(v62 + v69) = qword_1000754D0;

      sub_100011C64();
      *(v62 + *(sub_100004944(&qword_100074ED8, &qword_10004FD50) + 36)) = v70;
      v71 = swift_getKeyPath();
      v72 = (v62 + *(v91 + 36));
      v73 = *(sub_100004944(&qword_100074EF8, &qword_10004FD58) + 28);
      v74 = enum case for LayoutDirection.leftToRight(_:);
      v75 = type metadata accessor for LayoutDirection();
      (*(*(v75 - 8) + 104))(v72 + v73, v74, v75);
      *v72 = v71;
      v50 = &qword_100074EB8;
      v51 = &qword_10004FD40;
      sub_100008A40(v62, v93, &qword_100074EB8, &qword_10004FD40);
      swift_storeEnumTagMultiPayload();
      sub_1000155F8();
      sub_100015AD8();
      v76 = v95;
      _ConditionalContent<>.init(storage:)();
      sub_100008A40(v76, v98, &qword_100074F58, &qword_10004FE00);
      swift_storeEnumTagMultiPayload();
      sub_100015A54(&qword_100074F78, &qword_100074F58, &qword_10004FE00, sub_100015AD8);
      sub_100016780(&qword_100074FA0, type metadata accessor for RGBAView);
      v55 = v99;
      _ConditionalContent<>.init(storage:)();
      sub_1000059D4(v76, &qword_100074F58, &qword_10004FE00);
      v54 = v62;
    }

    sub_1000059D4(v54, v50, v51);
LABEL_12:
    v58 = &qword_100074F60;
    v59 = &qword_10004FE08;
    sub_100008A40(v55, v85, &qword_100074F60, &qword_10004FE08);
    swift_storeEnumTagMultiPayload();
    sub_10001596C();
    sub_100008D7C(&qword_100074FA8, &qword_100074F30, &qword_10004FDD8);
    _ConditionalContent<>.init(storage:)();
    v60 = v55;
    return sub_1000059D4(v60, v58, v59);
  }

  v83 = a1[1];
  type metadata accessor for ColorPickerState();
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100011498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v78 = sub_100004944(&qword_100074FB0, &qword_10004FE68);
  v3 = *(*(v78 - 8) + 64);
  v4 = __chkstk_darwin(v78);
  v82 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v79 = &v72[-v6];
  v76 = sub_100004944(&qword_100074FB8, &qword_10004FE70);
  v7 = *(*(v76 - 8) + 64);
  v8 = __chkstk_darwin(v76);
  v80 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v72[-v10];
  v75 = sub_100004944(&qword_100074FC0, &qword_10004FE78);
  v12 = *(*(v75 - 1) + 64);
  v13 = __chkstk_darwin(v75);
  v77 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v72[-v15];
  *v16 = swift_getKeyPath();
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for ColorSwatchPickerView();
  v18 = (v16 + v17[5]);
  v19 = type metadata accessor for ColorPickerState();
  v83 = sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
  v84 = v19;
  *v18 = EnvironmentObject.init()();
  v18[1] = v20;
  v21 = v16 + v17[6];
  v99[0] = 0;
  GestureState.init(wrappedValue:)();
  v22 = *(&v85 + 1);
  v23 = v86;
  *v21 = v85;
  *(v21 + 1) = v22;
  *(v21 + 1) = v23;
  *(v16 + v17[7]) = &off_10006C248;
  v24 = v17[8];
  if (qword_1000743C8 != -1)
  {
    swift_once();
  }

  *(v16 + v24) = qword_1000754D0;

  sub_100011C64();
  *(v16 + *(sub_100004944(&qword_100074ED8, &qword_10004FD50) + 36)) = v25;
  KeyPath = swift_getKeyPath();
  v27 = (v16 + *(sub_100004944(&qword_100074EB8, &qword_10004FD40) + 36));
  v74 = sub_100004944(&qword_100074EF8, &qword_10004FD58);
  v28 = *(v74 + 28);
  v29 = enum case for LayoutDirection.leftToRight(_:);
  v30 = type metadata accessor for LayoutDirection();
  v31 = *(*(v30 - 8) + 104);
  v73 = v29;
  v32 = v29;
  v33 = v31;
  v31(v27 + v28, v32, v30);
  *v27 = KeyPath;
  v34 = EnvironmentObject.init()();
  v35 = *(v75 + 9);
  v75 = v16;
  v36 = v16 + v35;
  *v36 = v34;
  *(v36 + 1) = v37;
  v36[16] = 0;
  v38 = *a1;
  if (*a1)
  {
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v38;
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v38;
    swift_retain_n();
    Binding.init(get:set:)();
    v41 = EnvironmentObject.init()();
    sub_1000249B8(v99, v41, v42, &v85);
    sub_100011C64();
    v44 = v43;
    v45 = swift_getKeyPath();
    v46 = &v11[*(sub_100004944(&qword_100074F40, &qword_10004FDE8) + 36)];
    v33(v46 + *(v74 + 28), v73, v30);
    *v46 = v45;
    v47 = v96;
    *(v11 + 10) = v95;
    *(v11 + 11) = v47;
    *(v11 + 12) = v97;
    *(v11 + 26) = v98;
    v48 = v92;
    *(v11 + 6) = v91;
    *(v11 + 7) = v48;
    v49 = v94;
    *(v11 + 8) = v93;
    *(v11 + 9) = v49;
    v50 = v88;
    *(v11 + 2) = v87;
    *(v11 + 3) = v50;
    v51 = v90;
    *(v11 + 4) = v89;
    *(v11 + 5) = v51;
    v52 = v86;
    *v11 = v85;
    *(v11 + 1) = v52;
    *(v11 + 27) = v44;
    v53 = EnvironmentObject.init()();
    v54 = &v11[*(v76 + 36)];
    *v54 = v53;
    *(v54 + 1) = v55;
    v54[16] = 1;
    v56 = EnvironmentObject.init()();
    v57 = v79;
    *v79 = v56;
    *(v57 + 8) = v58;
    type metadata accessor for ColorPickerConfiguration();
    sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
    *(v57 + 16) = Environment.init<A>(_:)();
    *(v57 + 24) = v59 & 1;
    v60 = *(type metadata accessor for RGBAView() + 24);
    *(v57 + v60) = swift_getKeyPath();
    sub_100004944(&qword_100074A18, &unk_100051000);
    swift_storeEnumTagMultiPayload();
    v61 = EnvironmentObject.init()();
    v62 = v77;
    v63 = v57 + *(v78 + 36);
    *v63 = v61;
    *(v63 + 8) = v64;
    *(v63 + 16) = 2;
    v65 = v75;
    sub_100008A40(v75, v62, &qword_100074FC0, &qword_10004FE78);
    v66 = v80;
    sub_100008A40(v11, v80, &qword_100074FB8, &qword_10004FE70);
    v67 = v82;
    sub_100008A40(v57, v82, &qword_100074FB0, &qword_10004FE68);
    v68 = v81;
    sub_100008A40(v62, v81, &qword_100074FC0, &qword_10004FE78);
    v69 = sub_100004944(&qword_100074FC8, &qword_10004FE80);
    sub_100008A40(v66, v68 + *(v69 + 48), &qword_100074FB8, &qword_10004FE70);
    sub_100008A40(v67, v68 + *(v69 + 64), &qword_100074FB0, &qword_10004FE68);
    sub_1000059D4(v57, &qword_100074FB0, &qword_10004FE68);
    sub_1000059D4(v11, &qword_100074FB8, &qword_10004FE70);
    sub_1000059D4(v65, &qword_100074FC0, &qword_10004FE78);
    sub_1000059D4(v67, &qword_100074FB0, &qword_10004FE68);
    sub_1000059D4(v66, &qword_100074FB8, &qword_10004FE70);
    return sub_1000059D4(v62, &qword_100074FC0, &qword_10004FE78);
  }

  else
  {
    v71 = a1[1];
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100011C64()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();
    }
  }

  else
  {
    v2 = v0[1];
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100011E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W3>, uint64_t a4@<X8>)
{
  v31 = a1;
  v32 = a4;
  v30 = sub_100004944(&qword_100075148, &qword_100050370);
  v6 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v8 = &v30 - v7;
  v9 = sub_100004944(&qword_100075150, &qword_100050378);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_100004944(&qword_100075158, &qword_100050380);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v33)
    {
      if (v33 == 1)
      {
        v17 = 0x6D75727463657053;
      }

      else
      {
        v17 = 0x73726564696C53;
      }

      if (v33 == 1)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      v19 = a3;
      if (a3)
      {
LABEL_10:
        if (v19 == 1)
        {
          v20 = 0x6D75727463657053;
        }

        else
        {
          v20 = 0x73726564696C53;
        }

        if (v19 == 1)
        {
          v21 = 0xE800000000000000;
        }

        else
        {
          v21 = 0xE700000000000000;
        }

        if (v17 != v20)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v17 = 1684632135;
      v19 = a3;
      if (a3)
      {
        goto LABEL_10;
      }
    }

    v21 = 0xE400000000000000;
    if (v17 != 1684632135)
    {
      goto LABEL_22;
    }

LABEL_20:
    if (v18 == v21)
    {

      goto LABEL_23;
    }

LABEL_22:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      v24 = 0;
      v23 = 0.0;
      goto LABEL_25;
    }

LABEL_23:
    v23 = 1.0;
    v24 = 1;
LABEL_25:
    v25 = sub_100004944(&qword_100075160, &qword_100050388);
    (*(*(v25 - 8) + 16))(v8, v31, v25);
    *&v8[*(v30 + 36)] = v23;
    sub_1000084B0(v8, v12, &qword_100075148, &qword_100050370);
    v12[*(v9 + 36)] = v24;
    KeyPath = swift_getKeyPath();
    v27 = swift_allocObject();
    *(v27 + 16) = v24 ^ 1;
    sub_1000084B0(v12, v16, &qword_100075150, &qword_100050378);
    v28 = &v16[*(v13 + 36)];
    *v28 = KeyPath;
    v28[1] = sub_100016CAC;
    v28[2] = v27;
    sub_100016CB4();
    View.accessibilityHidden(_:)();
    return sub_1000059D4(v16, &qword_100075158, &qword_100050380);
  }

  type metadata accessor for ColorPickerState();
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100012234(uint64_t a1, double a2)
{
  v4 = sub_100004944(&qword_100075010, &qword_1000500F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100004944(&qword_100075018, &qword_100050100);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v14 = sub_100004944(&qword_100075020, &qword_100050108);
  v15 = *(*(v14 - 8) + 16);
  if (v13 == 6)
  {
    v15(v11, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_100008D7C(&qword_100075028, &qword_100075020, &qword_100050108);
    sub_10001607C();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v15(v7, a1, v14);
    v17 = &v7[*(v4 + 36)];
    *v17 = a2;
    *(v17 + 4) = 0;
    sub_100008A40(v7, v11, &qword_100075010, &qword_1000500F8);
    swift_storeEnumTagMultiPayload();
    sub_100008D7C(&qword_100075028, &qword_100075020, &qword_100050108);
    sub_10001607C();
    _ConditionalContent<>.init(storage:)();
    return sub_1000059D4(v7, &qword_100075010, &qword_1000500F8);
  }
}

uint64_t sub_1000124E8()
{
  v0 = type metadata accessor for FavoriteColorPickerView.Model();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10002D660();
}

uint64_t sub_100012520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_100004944(&qword_100075040, &qword_100050118);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v100 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v92 = &v86[-v7];
  v8 = type metadata accessor for Divider();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  __chkstk_darwin(v8);
  v88 = &v86[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100004944(&qword_100075048, &qword_100050120);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v98 = &v86[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v86[-v15];
  v89 = sub_100004944(&qword_100075050, &qword_100050128);
  v17 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v19 = &v86[-v18];
  v20 = type metadata accessor for ColorSlider(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v86[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_100004944(&qword_100075058, &qword_100050130);
  v25 = *(*(v90 - 8) + 64);
  v26 = __chkstk_darwin(v90);
  v97 = &v86[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v94 = &v86[-v29];
  __chkstk_darwin(v28);
  v31 = &v86[-v30];
  v32 = sub_100004944(&qword_100075060, &qword_100050138);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v93 = &v86[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v102 = &v86[-v36];
  if (!*a1)
  {
    v85 = a1[1];
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v37 = *a1;

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  v38 = v107;
  v87 = v107 > 1.0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v101 = v16;
  v91 = v21;
  if (v106)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v38 <= 1.0)
    {
      v46 = 1;
    }

    else
    {
      type metadata accessor for ColorPickerState();
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
      v39 = EnvironmentObject.init()();
      v41 = v40;
      *&v24[v20[7]] = swift_getKeyPath();
      sub_100004944(&qword_100074A18, &unk_100051000);
      swift_storeEnumTagMultiPayload();
      *v24 = 5;
      *(v24 + 1) = v39;
      *(v24 + 2) = v41;
      type metadata accessor for ColorPickerConfiguration();
      sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
      *(v24 + 3) = Environment.init<A>(_:)();
      v24[32] = v42 & 1;
      v43 = &v24[v20[8]];
      *v43 = swift_getKeyPath();
      v43[8] = 0;
      v44 = v20[9];
      static Font.Weight.semibold.getter();
      *&v24[v44] = v45;
      sub_1000163AC(v24, v31, type metadata accessor for ColorSlider);
      v46 = 0;
    }

    (*(v21 + 56))(v31, v46, 1, v20);
    sub_100008A40(v31, v19, &qword_100075058, &qword_100050130);
    swift_storeEnumTagMultiPayload();
    sub_100016290();
    sub_100016780(&qword_100075088, type metadata accessor for ColorSlider);
    v54 = v102;
    _ConditionalContent<>.init(storage:)();
    sub_1000059D4(v31, &qword_100075058, &qword_100050130);
    v55 = 0;
    v16 = v101;
    goto LABEL_9;
  }

  if (v38 > 1.0)
  {
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    v47 = EnvironmentObject.init()();
    v49 = v48;
    *&v24[v20[7]] = swift_getKeyPath();
    sub_100004944(&qword_100074A18, &unk_100051000);
    swift_storeEnumTagMultiPayload();
    *v24 = 4;
    *(v24 + 1) = v47;
    *(v24 + 2) = v49;
    type metadata accessor for ColorPickerConfiguration();
    sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
    *(v24 + 3) = Environment.init<A>(_:)();
    v24[32] = v50 & 1;
    v51 = &v24[v20[8]];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    v52 = v20[9];
    static Font.Weight.semibold.getter();
    *&v24[v52] = v53;
    sub_100016228(v24, v19, type metadata accessor for ColorSlider);
    swift_storeEnumTagMultiPayload();
    sub_100016290();
    sub_100016780(&qword_100075088, type metadata accessor for ColorSlider);
    v54 = v102;
    _ConditionalContent<>.init(storage:)();
    sub_100016344(v24, type metadata accessor for ColorSlider);
    v55 = 0;
LABEL_9:
    v56 = v94;
    goto LABEL_11;
  }

  v55 = 1;
  v56 = v94;
  v54 = v102;
LABEL_11:
  v57 = sub_100004944(&qword_100075068, &qword_1000501D0);
  v58 = 1;
  (*(*(v57 - 8) + 56))(v54, v55, 1, v57);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v105 == 1)
  {
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    v59 = EnvironmentObject.init()();
    v61 = v60;
    *&v24[v20[7]] = swift_getKeyPath();
    sub_100004944(&qword_100074A18, &unk_100051000);
    swift_storeEnumTagMultiPayload();
    *v24 = 3;
    *(v24 + 1) = v59;
    *(v24 + 2) = v61;
    type metadata accessor for ColorPickerConfiguration();
    sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
    *(v24 + 3) = Environment.init<A>(_:)();
    v24[32] = v62 & 1;
    v63 = &v24[v20[8]];
    *v63 = swift_getKeyPath();
    v63[8] = 0;
    v64 = v20[9];
    static Font.Weight.semibold.getter();
    *&v24[v64] = v65;
    sub_1000163AC(v24, v56, type metadata accessor for ColorSlider);
    v58 = 0;
  }

  (*(v91 + 56))(v56, v58, 1, v20);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v104 == 1)
  {

    v66 = v102;
LABEL_16:
    v67 = 1;
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v66 = v102;
  v67 = v87;
  if (v103 == 1)
  {
    goto LABEL_16;
  }

LABEL_17:
  v68 = [objc_opt_self() currentDevice];
  v69 = [v68 userInterfaceIdiom];

  v70 = 1;
  if (v69 == 6)
  {
    v72 = v95;
    v71 = v96;
  }

  else
  {
    v72 = v95;
    v71 = v96;
    if (v67)
    {
      v73 = v88;
      Divider.init()();
      (*(v72 + 32))(v16, v73, v71);
      v70 = 0;
    }
  }

  (*(v72 + 56))(v16, v70, 1, v71);
  v74 = static VerticalAlignment.top.getter();
  v75 = v92;
  *v92 = v74;
  *(v75 + 8) = 0x4030000000000000;
  *(v75 + 16) = 0;
  v76 = sub_100004944(&qword_100075070, &qword_100050220);
  sub_100013388(a1, (v75 + *(v76 + 44)));
  v77 = v93;
  sub_100008A40(v66, v93, &qword_100075060, &qword_100050138);
  v78 = v97;
  sub_100008A40(v56, v97, &qword_100075058, &qword_100050130);
  v79 = v98;
  sub_100008A40(v16, v98, &qword_100075048, &qword_100050120);
  v80 = v56;
  v81 = v100;
  sub_10001614C(v75, v100);
  v82 = v99;
  sub_100008A40(v77, v99, &qword_100075060, &qword_100050138);
  v83 = sub_100004944(&qword_100075078, &qword_100050228);
  sub_100008A40(v78, v82 + v83[12], &qword_100075058, &qword_100050130);
  sub_100008A40(v79, v82 + v83[16], &qword_100075048, &qword_100050120);
  sub_10001614C(v81, v82 + v83[20]);
  sub_1000161BC(v75);
  sub_1000059D4(v101, &qword_100075048, &qword_100050120);
  sub_1000059D4(v80, &qword_100075058, &qword_100050130);
  sub_1000059D4(v102, &qword_100075060, &qword_100050138);
  sub_1000161BC(v81);
  sub_1000059D4(v79, &qword_100075048, &qword_100050120);
  sub_1000059D4(v78, &qword_100075058, &qword_100050130);
  return sub_1000059D4(v77, &qword_100075060, &qword_100050138);
}

uint64_t sub_100013388@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v119 = a2;
  v3 = type metadata accessor for ContentShapeKinds();
  v113 = *(v3 - 8);
  v114 = v3;
  v4 = *(v113 + 64);
  __chkstk_darwin(v3);
  v112 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for RoundedRectangle();
  v6 = *(*(v121 - 8) + 64);
  v7 = __chkstk_darwin(v121);
  v109 = (&v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (&v95 - v9);
  v11 = sub_100004944(&qword_100075090, &qword_100050260);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v95 - v13;
  v106 = sub_100004944(&qword_100075098, &qword_100050268);
  v15 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = &v95 - v16;
  v17 = sub_100004944(&qword_1000750A0, &qword_100050270);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v108 = &v95 - v19;
  v110 = sub_100004944(&qword_1000750A8, &qword_100050278);
  v20 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v111 = &v95 - v21;
  v22 = sub_100004944(&qword_1000750B0, &qword_100050280);
  v117 = *(v22 - 8);
  v118 = v22;
  v23 = *(v117 + 64);
  v24 = __chkstk_darwin(v22);
  v116 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v122 = &v95 - v26;
  v115 = a1;
  v27 = *a1;
  if (v27)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v98 = *&v134[24];
    v99 = *&v134[16];
    v97 = *&v134[32];
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    v95 = *v134;
    v96 = v133;
    v28 = EnvironmentObject.init()();
    v30 = v29;
    v120 = objc_opt_self();
    v31 = v27;
    v32 = [v120 currentDevice];
    v33 = [v32 userInterfaceIdiom];

    if (v33 == 6)
    {
      v34 = 22.0;
    }

    else
    {
      v34 = 10.0;
    }

    v35 = *(v121 + 20);
    v36 = enum case for RoundedCornerStyle.continuous(_:);
    v104 = enum case for RoundedCornerStyle.continuous(_:);
    v103 = type metadata accessor for RoundedCornerStyle();
    v37 = *(v103 - 8);
    v102 = *(v37 + 104);
    v105 = v37 + 104;
    v102(v10 + v35, v36, v103);
    *v10 = v34;
    v10[1] = v34;
    v38 = &v14[*(v11 + 36)];
    v101 = &type metadata accessor for RoundedRectangle;
    sub_1000163AC(v10, v38, &type metadata accessor for RoundedRectangle);
    *(v38 + *(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)) = 256;
    *v14 = v28;
    *(v14 + 1) = v30;
    v39 = v95;
    *(v14 + 1) = v96;
    *(v14 + 2) = v39;
    v40 = v98;
    *(v14 + 6) = v99;
    *(v14 + 7) = v40;
    *(v14 + 32) = v97;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v41 = v120;
    v42 = [v120 currentDevice];
    [v42 userInterfaceIdiom];

    v43 = [v41 currentDevice];
    [v43 userInterfaceIdiom];

    swift_getKeyPath();
    swift_getKeyPath();

    v100 = v31;
    static Published.subscript.getter();

    v44 = [v41 currentDevice];
    [v44 userInterfaceIdiom];

    v45 = [v41 currentDevice];
    [v45 userInterfaceIdiom];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v46 = v107;
    sub_1000084B0(v14, v107, &qword_100075090, &qword_100050260);
    v47 = (v46 + *(v106 + 36));
    v48 = *&v135[47];
    *v47 = *&v135[31];
    v47[1] = v48;
    v47[2] = *&v135[63];
    sub_100008BD8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v50 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v51 = String._bridgeToObjectiveC()();
    v52 = String._bridgeToObjectiveC()();
    v53 = [v50 localizedStringForKey:v51 value:0 table:v52];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    *&v133 = v54;
    *(&v133 + 1) = v56;
    sub_10000C030();
    v57 = Text.init<A>(_:)();
    v59 = v58;
    LOBYTE(v53) = v60;
    sub_100016414();
    v61 = v108;
    View.accessibility(label:)();
    sub_10000C084(v57, v59, v53 & 1);

    sub_1000059D4(v46, &qword_100075098, &qword_100050268);
    sub_100004944(&qword_1000750D0, &qword_1000502D8);
    v62 = v113;
    v63 = *(v113 + 72);
    v64 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10004E4A0;
    static ContentShapeKinds.dragPreview.getter();
    *&v133 = v65;
    sub_100016780(&qword_1000750D8, &type metadata accessor for ContentShapeKinds);
    sub_100004944(&qword_1000750E0, &qword_1000502E0);
    sub_100008D7C(&qword_1000750E8, &qword_1000750E0, &qword_1000502E0);
    v66 = v112;
    v67 = v114;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v68 = [v120 currentDevice];
    v69 = [v68 userInterfaceIdiom];

    if (v69 == 6)
    {
      v70 = 22.0;
    }

    else
    {
      v70 = 10.0;
    }

    v71 = v109;
    v102(v109 + *(v121 + 20), v104, v103);
    *v71 = v70;
    v71[1] = v70;
    v72 = v111;
    v73 = &v111[*(v110 + 36)];
    sub_1000163AC(v71, v73, v101);
    v74 = sub_100004944(&qword_1000750F0, &qword_1000502E8);
    (*(v62 + 32))(v73 + *(v74 + 40), v66, v67);
    *(v73 + *(v74 + 36)) = 0;
    sub_1000084B0(v61, v72, &qword_1000750A0, &qword_100050270);
    v75 = v115;
    v138 = v115[2];
    v139 = *(v115 + 24);
    v136 = *(v115 + 2);
    v137 = *(v115 + 48);
    v76 = swift_allocObject();
    v77 = *(v75 + 1);
    *(v76 + 16) = *v75;
    *(v76 + 32) = v77;
    *(v76 + 48) = *(v75 + 2);
    *(v76 + 64) = *(v75 + 48);

    sub_100008A40(&v138, &v133, &qword_1000750F8, &qword_1000502F0);
    sub_100008A40(&v136, &v133, &qword_100075100, &qword_1000502F8);
    sub_1000165B8();
    v78 = v122;
    View.onDrag(_:)();

    sub_1000059D4(v72, &qword_1000750A8, &qword_100050278);
    v79 = static HorizontalAlignment.center.getter();
    v124 = 1;
    sub_1000142C0(v75, &v133);
    v127 = *&v134[16];
    v128 = *&v134[32];
    v125 = v133;
    v126 = *v134;
    v130[2] = *&v134[16];
    v130[3] = *&v134[32];
    v130[4] = *&v134[48];
    v130[1] = *v134;
    v129 = *&v134[48];
    v130[0] = v133;
    sub_100008A40(&v125, v131, &qword_100075120, &qword_100050300);
    sub_1000059D4(v130, &qword_100075120, &qword_100050300);
    *&v123[23] = v126;
    *&v123[39] = v127;
    *&v123[55] = v128;
    *&v123[71] = v129;
    *&v123[7] = v125;
    v80 = v124;
    v82 = v116;
    v81 = v117;
    v83 = *(v117 + 16);
    v84 = v118;
    v83(v116, v78, v118);
    v85 = v119;
    v83(v119, v82, v84);
    v86 = &v85[*(sub_100004944(&qword_100075128, &qword_100050308) + 48)];
    v131[0] = v79;
    v131[1] = 0;
    v132[0] = v80;
    *&v132[1] = *v123;
    *&v132[17] = *&v123[16];
    *&v132[65] = *&v123[64];
    *&v132[80] = *&v123[79];
    *&v132[49] = *&v123[48];
    *&v132[33] = *&v123[32];
    v87 = *v132;
    *v86 = v79;
    *(v86 + 1) = v87;
    v88 = *&v132[16];
    v89 = *&v132[32];
    v90 = *&v132[48];
    v91 = *&v132[64];
    *(v86 + 12) = *&v132[80];
    *(v86 + 4) = v90;
    *(v86 + 5) = v91;
    *(v86 + 2) = v88;
    *(v86 + 3) = v89;
    sub_100008A40(v131, &v133, &qword_100075130, &qword_100050310);
    v92 = *(v81 + 8);
    v92(v122, v84);
    *&v134[33] = *&v123[32];
    *&v134[49] = *&v123[48];
    *v135 = *&v123[64];
    *&v134[1] = *v123;
    v133 = v79;
    v134[0] = v80;
    *&v135[15] = *&v123[79];
    *&v134[17] = *&v123[16];
    sub_1000059D4(&v133, &qword_100075130, &qword_100050310);
    return (v92)(v82, v84);
  }

  else
  {
    v94 = v115[1];
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100014164(void *a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v6 & 0xFF00) == 0x200)
    {
      v1 = [objc_opt_self() clearColor];
    }

    else
    {
      sub_100018314();
    }

    v2 = v1;
    v3 = [objc_allocWithZone(NSItemProvider) initWithObject:v1];

    return v3;
  }

  else
  {
    v5 = a1[1];
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000142C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v42 = a1[2];
  v43 = *(a1 + 24);
  v6 = a1[4];
  v5 = a1[5];
  v7 = *(a1 + 48);
  v8 = swift_allocObject();
  v9 = *(a1 + 1);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 2);
  *(v8 + 64) = *(a1 + 48);
  if (v3)
  {
    v10 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_100008A40(&v42, &v30, &qword_1000750F8, &qword_1000502F0);
    sub_1000155E8();
    static Published.subscript.getter();

    v11 = objc_opt_self();
    v12 = [v11 currentDevice];
    [v12 userInterfaceIdiom];

    v13 = [v11 currentDevice];
    [v13 userInterfaceIdiom];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v22 = v38;
    v23 = v36;
    v20 = v41;
    v21 = v40;
    v35 = v37;
    v34 = v39;
    type metadata accessor for FavoriteColorPickerView.Model();
    sub_100016780(&qword_100075138, type metadata accessor for FavoriteColorPickerView.Model);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = 0;
    v15 = 0;
    if (v30 > 1)
    {
      StateObject.wrappedValue.getter();
      v14 = ObservedObject.init(wrappedValue:)();
      v15 = v16;
    }

    *&v26 = sub_100016778;
    *(&v26 + 1) = v10;
    *&v27 = v23;
    BYTE8(v27) = v35;
    *&v28 = v22;
    BYTE8(v28) = v34;
    *&v29 = v21;
    *(&v29 + 1) = v20;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_100008A40(&v26, v25, &qword_100075140, &qword_100050360);
    v17 = v31;
    *a2 = v30;
    *(a2 + 16) = v17;
    v18 = v33;
    *(a2 + 32) = v32;
    *(a2 + 48) = v18;
    *(a2 + 64) = v14;
    *(a2 + 72) = v15;
  }

  else
  {
    sub_100008A40(&v42, &v30, &qword_1000750F8, &qword_1000502F0);
    sub_1000155E8();
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000146EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  type metadata accessor for FavoriteColorPickerView.Model();
  sub_100016780(&qword_100075138, type metadata accessor for FavoriteColorPickerView.Model);
  StateObject.wrappedValue.getter();
  GeometryProxy.size.getter();
  v7 = *a1;
  v8 = *(a1 + 8);
  v23 = sub_1000167D0(*a1, v9);
  type metadata accessor for ColorPickerState();
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
  v22 = EnvironmentObject.init()();
  v11 = v10;
  v12 = ObservedObject.init(wrappedValue:)();
  v14 = v13;
  sub_100030C10(&_swiftEmptyArrayStorage);
  sub_100004944(&qword_100076330, &qword_100050368);
  State.init(wrappedValue:)();
  v15 = static Edge.Set.horizontal.getter();
  GeometryProxy.size.getter();
  sub_100016A48(v7, v16);
  result = EdgeInsets.init(_all:)();
  *a2 = v22;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v25;
  *(a2 + 56) = v15;
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;
  *(a2 + 88) = v21;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_1000148A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v10 = *(v1 + 32);
  LOBYTE(v11) = *(v1 + 48);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = 0x4038000000000000;
  }

  else
  {
    v6 = 0x4036000000000000;
  }

  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  v7 = sub_100004944(&qword_100075038, &qword_100050110);
  return sub_100012520(v9, a1 + *(v7 + 44));
}

uint64_t sub_100014A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

double sub_100014AFC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100014B7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100014C0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100014C9C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100014D0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10006A610, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

double sub_100014D58()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 24.0;
  if (v1 != 6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    result = 16.0;
    if (v3)
    {
      return 20.0;
    }
  }

  return result;
}

unint64_t sub_100014E24()
{
  result = qword_100074DB8;
  if (!qword_100074DB8)
  {
    sub_100008B90(&qword_100074D90, &qword_10004FAD0);
    sub_100014EDC();
    sub_100008D7C(&qword_100074DD0, &qword_100074DD8, &qword_10004FAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074DB8);
  }

  return result;
}

unint64_t sub_100014EDC()
{
  result = qword_100074DC0;
  if (!qword_100074DC0)
  {
    sub_100008B90(&qword_100074D88, &qword_10004FAC8);
    sub_100008D7C(&qword_100074DC8, &qword_100074D80, &qword_10004FAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074DC0);
  }

  return result;
}

uint64_t sub_100014F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100074DA0, &qword_10004FAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ColorPickerContent()
{
  result = qword_100074E58;
  if (!qword_100074E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001515C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10001516C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100015190(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_10001526C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001531C()
{
  sub_100005880();
  if (v0 <= 0x3F)
  {
    sub_1000153A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000153A0()
{
  if (!qword_100074988)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100074988);
    }
  }
}

unint64_t sub_10001540C()
{
  result = qword_100074E90;
  if (!qword_100074E90)
  {
    sub_100008B90(&qword_100074DE0, &qword_10004FB48);
    sub_100015498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074E90);
  }

  return result;
}

unint64_t sub_100015498()
{
  result = qword_100074E98;
  if (!qword_100074E98)
  {
    sub_100008B90(&qword_100074DA0, &qword_10004FAE0);
    sub_100008B90(&qword_100074D90, &qword_10004FAD0);
    type metadata accessor for ColorPickerConfiguration();
    sub_100014E24();
    sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074E98);
  }

  return result;
}

unint64_t sub_1000155F8()
{
  result = qword_100074EC8;
  if (!qword_100074EC8)
  {
    sub_100008B90(&qword_100074EB8, &qword_10004FD40);
    sub_1000156B0();
    sub_100008D7C(&qword_100074EF0, &qword_100074EF8, &qword_10004FD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074EC8);
  }

  return result;
}

unint64_t sub_1000156B0()
{
  result = qword_100074ED0;
  if (!qword_100074ED0)
  {
    sub_100008B90(&qword_100074ED8, &qword_10004FD50);
    sub_100016780(&qword_100074EE0, type metadata accessor for ColorSwatchPickerView);
    sub_10001576C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074ED0);
  }

  return result;
}

unint64_t sub_10001576C()
{
  result = qword_100074EE8;
  if (!qword_100074EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074EE8);
  }

  return result;
}

unint64_t sub_1000157C0()
{
  result = qword_100074F00;
  if (!qword_100074F00)
  {
    sub_100008B90(&qword_100074EA8, &qword_10004FD30);
    sub_100008D7C(&qword_100074F08, &qword_100074F10, &qword_10004FD60);
    sub_100008D7C(&qword_100074F18, &qword_100074F20, &qword_10004FD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F00);
  }

  return result;
}

unint64_t sub_10001596C()
{
  result = qword_100074F70;
  if (!qword_100074F70)
  {
    sub_100008B90(&qword_100074F60, &qword_10004FE08);
    sub_100015A54(&qword_100074F78, &qword_100074F58, &qword_10004FE00, sub_100015AD8);
    sub_100016780(&qword_100074FA0, type metadata accessor for RGBAView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F70);
  }

  return result;
}

uint64_t sub_100015A54(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(a2, a3);
    sub_1000155F8();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100015AD8()
{
  result = qword_100074F80;
  if (!qword_100074F80)
  {
    sub_100008B90(&qword_100074F40, &qword_10004FDE8);
    sub_100015B90();
    sub_100008D7C(&qword_100074EF0, &qword_100074EF8, &qword_10004FD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F80);
  }

  return result;
}

unint64_t sub_100015B90()
{
  result = qword_100074F88;
  if (!qword_100074F88)
  {
    sub_100008B90(&qword_100074F90, &qword_10004FE18);
    sub_100015C1C();
    sub_10001576C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F88);
  }

  return result;
}

unint64_t sub_100015C1C()
{
  result = qword_100074F98;
  if (!qword_100074F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F98);
  }

  return result;
}

unint64_t sub_100015C7C()
{
  result = qword_100074FE0;
  if (!qword_100074FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074FE0);
  }

  return result;
}

unint64_t sub_100015CD0()
{
  result = qword_100074FE8;
  if (!qword_100074FE8)
  {
    sub_100008B90(&qword_100074FD8, &unk_10004FE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074FE8);
  }

  return result;
}

__n128 sub_100015D64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100015D80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100015DDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_100015E50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100015E64(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100015EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100015F78()
{
  sub_100008B90(&qword_100074FD0, &qword_10004FE88);
  type metadata accessor for SegmentedPickerStyle();
  sub_100008D7C(&qword_100074FF0, &qword_100074FD0, &qword_10004FE88);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001607C()
{
  result = qword_100075030;
  if (!qword_100075030)
  {
    sub_100008B90(&qword_100075010, &qword_1000500F8);
    sub_100008D7C(&qword_100075028, &qword_100075020, &qword_100050108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075030);
  }

  return result;
}

uint64_t sub_10001614C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100075040, &qword_100050118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000161BC(uint64_t a1)
{
  v2 = sub_100004944(&qword_100075040, &qword_100050118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100016290()
{
  result = qword_100075080;
  if (!qword_100075080)
  {
    sub_100008B90(&qword_100075058, &qword_100050130);
    sub_100016780(&qword_100075088, type metadata accessor for ColorSlider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075080);
  }

  return result;
}

uint64_t sub_100016344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000163AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100016414()
{
  result = qword_1000750B8;
  if (!qword_1000750B8)
  {
    sub_100008B90(&qword_100075098, &qword_100050268);
    sub_1000164A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000750B8);
  }

  return result;
}

unint64_t sub_1000164A0()
{
  result = qword_1000750C0;
  if (!qword_1000750C0)
  {
    sub_100008B90(&qword_100075090, &qword_100050260);
    sub_100016558();
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000750C0);
  }

  return result;
}

unint64_t sub_100016558()
{
  result = qword_1000750C8;
  if (!qword_1000750C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000750C8);
  }

  return result;
}

unint64_t sub_1000165B8()
{
  result = qword_100075108;
  if (!qword_100075108)
  {
    sub_100008B90(&qword_1000750A8, &qword_100050278);
    sub_100016670();
    sub_100008D7C(&qword_100075118, &qword_1000750F0, &qword_1000502E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075108);
  }

  return result;
}

unint64_t sub_100016670()
{
  result = qword_100075110;
  if (!qword_100075110)
  {
    sub_100008B90(&qword_1000750A0, &qword_100050270);
    sub_100016414();
    sub_100016780(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075110);
  }

  return result;
}

uint64_t sub_10001672C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_1000155F0();

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100016780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000167D0(uint64_t a1, double a2)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = 30.0;
  if (v15)
  {
    v6 = 28.0;
  }

  if (v5 == 6)
  {
    v7 = 42.0;
  }

  else
  {
    v7 = v6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = [v3 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 20.0;
  }

  else
  {
    v10 = 18.0;
    if (v14)
    {
      v10 = 16.0;
    }
  }

  v11 = 50.0;
  if (a2 > 50.0)
  {
    v11 = a2;
  }

  v12 = (v11 + v10) / (v7 + v10);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 + 0x4000000000000000 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (2 * v12 >= 16)
  {
    return 16;
  }

  else
  {
    return 2 * v12;
  }
}

uint64_t sub_100016A48(uint64_t a1, double a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = objc_opt_self();
    v5 = [v4 currentDevice];
    [v5 userInterfaceIdiom];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = [v4 currentDevice];
    [v6 userInterfaceIdiom];

    return sub_1000167D0(a1, a2);
  }

  else
  {
    type metadata accessor for ColorPickerState();
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100016CB4()
{
  result = qword_100075168;
  if (!qword_100075168)
  {
    sub_100008B90(&qword_100075158, &qword_100050380);
    sub_100016D6C();
    sub_100008D7C(&qword_100075188, &qword_100075190, &qword_1000503C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075168);
  }

  return result;
}

unint64_t sub_100016D6C()
{
  result = qword_100075170;
  if (!qword_100075170)
  {
    sub_100008B90(&qword_100075150, &qword_100050378);
    sub_100016DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075170);
  }

  return result;
}

unint64_t sub_100016DF8()
{
  result = qword_100075178;
  if (!qword_100075178)
  {
    sub_100008B90(&qword_100075148, &qword_100050370);
    sub_100008D7C(&qword_100075180, &qword_100075160, &qword_100050388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075178);
  }

  return result;
}

unint64_t sub_100016EB4()
{
  result = qword_100075198;
  if (!qword_100075198)
  {
    sub_100008B90(&qword_1000751A0, &qword_1000503C8);
    sub_100008D7C(&qword_100075028, &qword_100075020, &qword_100050108);
    sub_10001607C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075198);
  }

  return result;
}

unint64_t sub_100016FB4()
{
  result = qword_1000751B8;
  if (!qword_1000751B8)
  {
    sub_100008B90(&qword_1000751C0, &qword_1000503D8);
    sub_100016CB4();
    sub_100016780(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000751B8);
  }

  return result;
}

id sub_100017094(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    [a1 setNumberOfPages:v3];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return [a1 setCurrentPage:v3];
  }

  return result;
}

id sub_1000172AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageControl.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017318(uint64_t a1, int a2)
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

uint64_t sub_100017360(uint64_t result, int a2, int a3)
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

id sub_1000173B8@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for PageControl.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV20ColorPickerUIService11PageControl11Coordinator_parent];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10001742C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000176A8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100017490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000176A8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000174F4()
{
  sub_1000176A8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100017520()
{
  result = qword_1000751F8;
  if (!qword_1000751F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000751F8);
  }

  return result;
}

id sub_10001758C()
{
  v0 = [objc_allocWithZone(UIPageControl) init];
  v1 = objc_opt_self();
  v2 = [v1 secondaryLabelColor];
  [v0 setPageIndicatorTintColor:v2];

  v3 = [v1 labelColor];
  [v0 setCurrentPageIndicatorTintColor:v3];

  [v0 setHidesForSinglePage:1];
  sub_100004944(&qword_100075200, &qword_1000505E0);
  UIViewRepresentableContext.coordinator.getter();
  [v0 addTarget:v5 action:"valueChanged:" forControlEvents:4096];

  return v0;
}

unint64_t sub_1000176A8()
{
  result = qword_100075208;
  if (!qword_100075208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075208);
  }

  return result;
}

id sub_1000177D4(void *a1)
{
  v3 = OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_plusImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_maskShapeView;
  type metadata accessor for ShapeView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AddColorCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1000178B0();
  }

  return v6;
}

void sub_1000178B0()
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v0 contentView];
  v5 = objc_allocWithZone(UIColor);
  if (v3 == 6)
  {
    v6 = 0.58;
  }

  else
  {
    v6 = 0.85;
  }

  v7 = [v5 initWithRed:v6 green:v6 blue:v6 alpha:1.0];
  [v4 setBackgroundColor:v7];

  v8 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_plusImageView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 contentView];
  [v9 addSubview:v8];

  v10 = [v0 contentView];
  v11 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_maskShapeView];
  [v10 setMaskView:v11];

  v12 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:17.0];
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
  v14 = [v1 currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    v16 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];

    v13 = v16;
  }

  v34 = v12;
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v34];

  if (v18)
  {
    v19 = [v18 imageWithTintColor:v13 renderingMode:1];

    [v8 setImage:v19];
    v20 = [objc_opt_self() blackColor];
    v21 = [v11 layer];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    if (v20)
    {
      v23 = v22;
      v24 = [v20 CGColor];
      v22 = v23;
    }

    else
    {
      v24 = 0;
    }

    [v22 setFillColor:v24];

    v25 = objc_opt_self();
    sub_100004944(&qword_1000746F0, &qword_10004E888);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10004E490;
    v27 = [v0 centerXAnchor];
    v28 = [v8 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v26 + 32) = v29;
    v30 = [v0 centerYAnchor];
    v31 = [v8 centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    sub_10000598C(0, &qword_100075248, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100017D8C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AddColorCell();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v8);
  [v0 bounds];
  Height = CGRectGetHeight(v9);
  if (Height < Width)
  {
    Width = Height;
  }

  v3 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_maskShapeView];
  [v3 setFrame:{0.0, 0.0, Width, Width}];
  v4 = [objc_opt_self() bezierPathWithOvalInRect:{0.0, 0.0, Width, Width}];
  v5 = *&v3[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath];
  *&v3[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] = v4;
  v6 = v4;

  sub_1000367F8();
}

id sub_100017F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddColorCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017FF0()
{
  sub_10000598C(0, &qword_1000762F0, UIColorPickerViewController_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

__n128 sub_1000180F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001810C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100018150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000181B4()
{
  sub_100004944(&qword_100075300, &qword_100050C20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10004F930;
  v2 = *v0 * 255.0;
  v3 = lroundf(v2);
  *(v1 + 56) = &type metadata for Int;
  *(v1 + 64) = &protocol witness table for Int;
  *(v1 + 32) = v3;
  v4 = v0[1] * 255.0;
  v5 = lroundf(v4);
  *(v1 + 96) = &type metadata for Int;
  *(v1 + 104) = &protocol witness table for Int;
  *(v1 + 72) = v5;
  v6 = v0[2] * 255.0;
  v7 = lroundf(v6);
  *(v1 + 136) = &type metadata for Int;
  *(v1 + 144) = &protocol witness table for Int;
  *(v1 + 112) = v7;
  v8 = String.init(format:_:)();
  v10 = v9;
  sub_100004944(&qword_100075308, &qword_100050C28);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004E4A0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;

  print(_:separator:terminator:)();

  return v8;
}

void sub_100018314()
{
  v1 = &kCGColorSpaceDisplayP3;
  if (!*(v0 + 49))
  {
    v1 = &kCGColorSpaceSRGB;
  }

  v2 = CGColorSpaceCreateWithName(*v1);
  if (v2)
  {
    v3 = v2;
    sub_100004944(&qword_100076300, &qword_100051020);
    inited = swift_initStackObject();
    v5 = *v0;
    v6 = v0[1];
    *(inited + 16) = xmmword_100050620;
    *(inited + 32) = v5;
    *(inited + 48) = v6;
    v8 = inited;
    if ((v0[3] & 1) == 0)
    {
      sub_100019328(&v8, *(v0 + 5));
      inited = v8;
    }

    v7 = CGColorCreate(v3, (inited + 32));

    if (v7)
    {
      [objc_allocWithZone(UIColor) initWithCGColor:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10001840C()
{
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_100018564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100018604(uint64_t a1)
{
  v2 = sub_10001AF88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018640(uint64_t a1)
{
  v2 = sub_10001AF88();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10001867C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000186C0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100018710(void *a1, char a2)
{
  v4 = sub_100004944(&qword_1000752D8, &qword_100050A58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  sub_100008948(a1, a1[3]);
  sub_10001AF88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = &kCGColorSpaceDisplayP3;
  if ((a2 & 1) == 0)
  {
    v10 = &kCGColorSpaceSRGB;
  }

  v11 = *v10;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v5 + 8))(v8, v4);
}

Swift::Int sub_100018880()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000188F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100018938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001A098(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void sub_100018994(uint64_t a1@<X8>)
{
  v2 = v1;
  if ((*(v1 + 49) & 1) == 0)
  {
    v17 = *(v1 + 49);
    v18 = *(v1 + 48);
    v16 = *(v1 + 40);
    Alpha = *(v1 + 24);
    v12 = *(v1 + 32);
    v14 = *(v1 + 8);
    v15 = *(v1 + 16);
    v13 = *v1;
    goto LABEL_7;
  }

  sub_100018314();
  v5 = v4;
  v6 = [v4 CGColor];

  v7 = UISCreateCachedColorTransform();
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = CGColorGetColorSpace(v6);
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  if (CGColorRef.components.getter())
  {
    CGColorTransformConvertColorComponents();

    Alpha = CGColorGetAlpha(v6);
    v12 = *(v2 + 32);

    v13 = sub_10001B2A0(0.0);
    v14 = sub_10001B2A0(0.0);
    v15 = sub_10001B2A0(0.0);
    v16 = 0;
    v17 = 0;
    v18 = 1;
LABEL_7:
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    *(a1 + 24) = Alpha;
    *(a1 + 32) = v12;
    *(a1 + 40) = v16;
    *(a1 + 48) = v18;
    *(a1 + 49) = v17;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100018B1C(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 49) == 1)
  {
    v4 = *(v1 + 49);
    v5 = *(v1 + 48);
    v6 = *(v1 + 40);
    Alpha = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = *(v1 + 8);
    v9 = *(v1 + 16);
    v11 = *v1;
LABEL_7:
    *a1 = v11;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
    *(a1 + 24) = Alpha;
    *(a1 + 32) = v8;
    *(a1 + 40) = v6;
    *(a1 + 48) = v5;
    *(a1 + 49) = v4;
    return;
  }

  sub_100018314();
  v13 = v12;
  v14 = [v12 CGColor];

  v15 = UISCreateCachedColorTransform();
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = CGColorGetColorSpace(v14);
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = v17;
  if (CGColorRef.components.getter())
  {
    CGColorTransformConvertColorComponents();

    Alpha = CGColorGetAlpha(v14);
    v8 = *(v2 + 32);

    v11 = sub_10001B2A0(0.0);
    v10 = sub_10001B2A0(0.0);
    v9 = sub_10001B2A0(0.0);
    v6 = 0;
    v5 = 1;
    v4 = 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_100018CC4()
{
  v1 = *v0;
  v2 = 114;
  v3 = 0x6A644174736F6F62;
  if (v1 != 5)
  {
    v3 = 0x617053726F6C6F63;
  }

  v4 = 97;
  if (v1 != 3)
  {
    v4 = 1852399975;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 103;
  if (v1 != 1)
  {
    v5 = 98;
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

uint64_t sub_100018D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001A258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100018DAC(uint64_t a1)
{
  v2 = sub_10001A7C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018DE8(uint64_t a1)
{
  v2 = sub_10001A7C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100018E24(void *a1)
{
  v3 = v1;
  v5 = sub_100004944(&qword_100075270, &qword_100050728);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_100008948(a1, a1[3]);
  sub_10001A7C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v14 = 0;
  sub_10001A8C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v14 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[2];
    v14 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[3];
    v14 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[4];
    v14 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[5];
    v13 = *(v3 + 48);
    v14 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + 49);
    v14 = 6;
    sub_10001A918();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10001910C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(v0 + 24);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v0 + 32);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  if (*(v0 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }

  Hasher._combine(_:)(*(v0 + 49));
}

Swift::Int sub_1000191E0()
{
  Hasher.init(_seed:)();
  sub_10001910C();
  return Hasher._finalize()();
}

Swift::Int sub_100019224()
{
  Hasher.init(_seed:)();
  sub_10001910C();
  return Hasher._finalize()();
}

uint64_t sub_100019260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100019DF8(v5, v7) & 1;
}

double sub_1000192BC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001A484(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100019328(uint64_t *a1, double a2)
{
  v5 = *v2;
  v4 = v2[1];
  if (*v2 > v4)
  {
    v6 = *v2;
  }

  else
  {
    v6 = v2[1];
  }

  v7 = v2[2];
  if (v6 > v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v2[2];
  }

  v9 = a2 + 1.0;
  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  if (v8 > 0.0)
  {
    v11 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v13 = *(v11 + 16);
      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_100019C30(v11);
      v11 = result;
      v13 = *(result + 16);
      if (v13)
      {
LABEL_13:
        v14 = v10 / v8;
        *(v11 + 32) = v5 * (v10 / v8);
        if (v13 != 1)
        {
          *(v11 + 40) = v4 * v14;
          if (v13 >= 3)
          {
            v10 = v7 * v14;
LABEL_20:
            *(v11 + 48) = v10;
            *a1 = v11;
            return result;
          }

          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    result = sub_100019C30(v11);
    v11 = result;
    v15 = *(result + 16);
    if (!v15)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v11 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(v11 + 16);
  if (!v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:
  *(v11 + 32) = v10;
  if (v15 == 1)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v11 + 40) = v10;
  if (v15 >= 3)
  {
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10001944C()
{
  v1 = type metadata accessor for Color.RGBColorSpace();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004944(&qword_100076300, &qword_100051020);
  inited = swift_initStackObject();
  v7 = *v0;
  v8 = *(v0 + 1);
  *(inited + 16) = xmmword_100050620;
  *(inited + 32) = v7;
  *(inited + 48) = v8;
  v17 = inited;
  if ((v0[6] & 1) == 0)
  {
    sub_100019328(&v17, v0[5]);
    inited = v17;
  }

  v9 = &enum case for Color.RGBColorSpace.displayP3(_:);
  if (!*(v0 + 49))
  {
    v9 = &enum case for Color.RGBColorSpace.sRGB(_:);
  }

  result = (*(v2 + 104))(v5, *v9, v1);
  v11 = *(inited + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v11 != 3)
  {
    v12 = *(inited + 32);
    v13 = *(inited + 40);
    v14 = *(inited + 48);
    v15 = *(inited + 56);

    return Color.init(_:red:green:blue:opacity:)();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1000195E4(double a1)
{
  sub_100004944(&qword_100076300, &qword_100051020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100050620;
  v4 = *(v1 + 1);
  *(inited + 32) = *v1;
  *(inited + 40) = v4;
  v5 = *(v1 + 3);
  *(inited + 48) = *(v1 + 2);
  *(inited + 56) = v5;
  v20 = inited;
  if (*(v1 + 48))
  {
    v6 = &kCGColorSpaceDisplayP3;
    if (!*(v1 + 49))
    {
      v6 = &kCGColorSpaceSRGB;
    }

    v7 = CGColorSpaceCreateWithName(*v6);
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = v7;
    v9 = *(v1 + 4);
    v1 = _UICreateBoostedRGBColor();

    if (v1)
    {
LABEL_16:

      return;
    }

    __break(1u);
  }

  v10 = *(v1 + 5);
  sub_100019328(&v20, v10);
  v11 = v20;
  if (v10 > 0.0)
  {
    sub_100019E94(v10, a1);
  }

  v12 = v11[2];
  if (!v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 < 3)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v11[4];
  v14 = v11[5];
  v15 = v11[6];
  v16 = &kCGColorSpaceDisplayP3;
  if (!*(v1 + 49))
  {
    v16 = &kCGColorSpaceSRGB;
  }

  v17 = CGColorSpaceCreateWithName(*v16);
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v19 = _UICreateBoostedRGBColor();

  if (v19)
  {
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_10001979C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B030(*a1);
  *a2 = result;
  return result;
}

_OWORD *sub_1000197D4@<X0>(_OWORD *result@<X0>, char a2@<W1>, uint64_t a3@<X8>, unint64_t a4@<D0>)
{
  v6 = v4[1];
  v27 = *v4;
  v28 = v6;
  v29 = v4[2];
  v30 = *(v4 + 24);
  if (result > 2u)
  {
    if (result == 3)
    {
      *(&v28 + 1) = a4;
    }

    else if (result == 4)
    {
      v29 = a4;
      LOBYTE(v30) = 1;
    }

    else
    {
      *(&v29 + 1) = a4;
      LOBYTE(v30) = 0;
    }

    goto LABEL_28;
  }

  v7 = result;
  swift_getKeyPath();
  if (a2)
  {
LABEL_27:

LABEL_28:
    v24 = v28;
    *a3 = v27;
    *(a3 + 16) = v24;
    *(a3 + 32) = v29;
    *(a3 + 48) = v30;
    return result;
  }

  if (v4[3])
  {
LABEL_26:
    v26 = a4;
    swift_setAtWritableKeyPath();
    goto LABEL_27;
  }

  v10 = *(v4 + 5);
  v11 = v4[1];
  v31 = *v4;
  v32 = v11;
  v33 = v4[2];
  v34 = *(v4 + 24);
  sub_100004944(&qword_100076300, &qword_100051020);
  result = swift_initStackObject();
  v12 = result;
  v13 = v31;
  v14 = v32;
  result[1] = xmmword_100050620;
  result[2] = v13;
  result[3] = v14;
  v26 = result;
  if ((v34 & 1) == 0)
  {
    result = sub_100019328(&v26, *(&v33 + 1));
    v12 = v26;
  }

  v15 = off_10006D418[v7];
  v16 = v15[2];
  if (v10 <= 0.0)
  {
    if (!v16)
    {
LABEL_25:

      LOBYTE(v30) = 1;
      v29 = 0x3FF0000000000000uLL;
      goto LABEL_26;
    }

LABEL_20:
    v21 = 0;
    while (v21 < v15[2])
    {
      v22 = *(v15 + v21 + 32);
      if (v22 > 2)
      {
        goto LABEL_34;
      }

      v23 = *(&off_10006D430 + v22);
      result = swift_getKeyPath();
      if (*(v12 + 16) <= v22)
      {
        goto LABEL_30;
      }

      ++v21;
      v25 = *(v12 + 32 + 8 * v22);
      swift_setAtWritableKeyPath();

      if (v16 == v21)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = *(v15 + 32);
  v18 = *(v12 + 16);
  if (v18 > v17)
  {
    v19 = v16[(v15 + 4) - 1];
    if (v18 <= v19)
    {
      goto LABEL_33;
    }

    v20 = *(v12 + 32 + 8 * v17);
    if (v20 <= *(v12 + 32 + 8 * v19))
    {
      v20 = *(v12 + 32 + 8 * v19);
    }

    if (v20 >= 1.0)
    {

      goto LABEL_26;
    }

    goto LABEL_20;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100019A94(uint64_t result, char a2)
{
  if (result > 2u)
  {
    if (result != 3)
    {
      if (result == 4)
      {
        v7 = *(v2 + 4);
      }

      else if (v2[3])
      {
        v13 = *v2;
        if (*v2 <= *(v2 + 1))
        {
          v13 = *(v2 + 1);
        }

        if (v13 <= *(v2 + 2))
        {
          v14 = *(v2 + 2);
        }
      }

      else
      {
        v16 = *(v2 + 5);
      }

      return result;
    }

LABEL_13:
    v12 = *(v2 + 3);
    return result;
  }

  v3 = result;
  if ((a2 & 1) == 0)
  {
    sub_100004944(&qword_100076300, &qword_100051020);
    result = swift_initStackObject();
    v8 = *v2;
    *(result + 16) = xmmword_10004F930;
    *(result + 32) = v8;
    *(result + 48) = *(v2 + 2);
    v17 = result;
    v9 = 3;
    if ((v2[3] & 1) == 0)
    {
      v10 = *(v2 + 5);
      if (v10 < 0.0)
      {
        sub_100019328(&v17, v10);
        result = v17;
        v9 = *(v17 + 16);
      }
    }

    v11 = v3;
    if (v9 > v3)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_100004944(&qword_100076300, &qword_100051020);
  result = swift_initStackObject();
  v4 = *v2;
  v5 = v2[1];
  *(result + 16) = xmmword_100050620;
  *(result + 32) = v4;
  *(result + 48) = v5;
  v17 = result;
  if (v2[3])
  {
    v6 = 4;
  }

  else
  {
    sub_100019328(&v17, *(v2 + 5));
    result = v17;
    v6 = *(v17 + 16);
  }

  v11 = v3;
  if (v6 > v3)
  {
LABEL_22:
    v15 = *(result + 8 * v11 + 32);
  }

  __break(1u);
  return result;
}

void sub_100019C44(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  [a1 _boost];
  v7 = v6;
  if (v6 <= 1.0)
  {
    v10 = [a1 CGColor];
LABEL_5:
    v11 = &kCGColorSpaceDisplayP3;
    if ((a2 & 1) == 0)
    {
      v11 = &kCGColorSpaceSRGB;
    }

    v12 = *v11;
    v13 = UISCreateCachedColorTransform();
    if (v13)
    {
      v14 = v13;
      v15 = CGColorGetColorSpace(v10);
      if (v15)
      {
        v16 = v15;
        if (CGColorRef.components.getter())
        {
          CGColorTransformConvertColorComponents();

          Alpha = CGColorGetAlpha(v10);

          *a3 = 0uLL;
          *(a3 + 16) = 0;
          *(a3 + 24) = Alpha;
          *(a3 + 32) = v7;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 49) = a2 & 1;
          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = [a1 _standardDynamicRangeColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 CGColor];

    goto LABEL_5;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_100019DF8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return 0;
    }

    return (*(a1 + 49) ^ *(a2 + 49) ^ 1) & 1;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  return (*(a1 + 49) ^ *(a2 + 49) ^ 1) & 1;
}

uint64_t sub_100019EAC()
{
  type metadata accessor for CFString(0);
  sub_10000DB6C();
  if (static _CFObject.== infix(_:_:)() & 1) != 0 || (static _CFObject.== infix(_:_:)())
  {
    return 0;
  }

  v1 = static _CFObject.== infix(_:_:)();
  result = 1;
  if ((v1 & 1) == 0)
  {
    if (static _CFObject.== infix(_:_:)())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}