int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v3, v4, 0, 0);
  return 0;
}

__n128 sub_1000022DC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000022E8(uint64_t a1, int a2)
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

uint64_t sub_100002308(uint64_t result, int a2, int a3)
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

uint64_t sub_100002348(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000023C0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002440@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002484()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000024C0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002514()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

BOOL sub_1000025A4(void *a1, uint64_t *a2)
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

uint64_t sub_10000262C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000026D0(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000273C(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000027A8(void *a1, uint64_t a2)
{
  v4 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000285C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000028D8()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100002938@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100002990@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000029BC(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086F08, type metadata accessor for Key);
  v3 = sub_100002DB4(&qword_100086F10, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002A78(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EC0, type metadata accessor for SPPairingSessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002AE4(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EC0, type metadata accessor for SPPairingSessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002B54(uint64_t a1)
{
  v2 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002DB4(&qword_100086EF8, type metadata accessor for SPPairingSessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

__n128 sub_100002C44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002CB4(uint64_t a1, int a2)
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

uint64_t sub_100002CD4(uint64_t result, int a2, int a3)
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

uint64_t sub_100002DB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000300C()
{
  result = qword_100086EE8;
  if (!qword_100086EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086EE8);
  }

  return result;
}

void sub_10000314C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000031F4()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1000032C0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 1702259052, 0xE400000000000000, sub_1000033D8, 0, &type metadata for Bool);
}

uint64_t sub_1000032C0()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return _swift_task_switch(sub_1000033BC, 0, 0);
}

void sub_1000033D8(uint64_t a1)
{
  v2 = sub_100003958(&qword_100086F40, &unk_100062410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  aBlock[4] = sub_100003A9C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003570;
  aBlock[3] = &unk_100079928;
  v9 = _Block_copy(aBlock);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v9);
}

uint64_t sub_100003570(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2 != 0;

  v3(v4);
}

uint64_t sub_1000035E8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000036C8;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 1702259052, 0xE400000000000000, sub_100003950, v2, &type metadata for () + 8);
}

uint64_t sub_1000036C8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000037E0, 0, 0);
}

uint64_t sub_1000037F8()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    sub_100003958(&qword_100086F30, qword_100065160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000623F0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_10004EF78(inited);
    swift_setDeallocating();
    sub_1000039A0(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openSensitiveURL:v4 withOptions:isa];
  }

  sub_100003958(&qword_100086F28, &qword_100064560);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100003958(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000039A0(uint64_t a1)
{
  v2 = sub_100003958(&qword_100086F38, &qword_100063790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003A08()
{
  v1 = sub_100003958(&qword_100086F40, &unk_100062410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100003A9C()
{
  v0 = *(sub_100003958(&qword_100086F40, &unk_100062410) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_100003958(&qword_100086F40, &unk_100062410);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100003B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003B90()
{
  v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_imageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setContentMode:2];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2];

  [v1 setImage:v3];
  v4 = [v0 contentView];
  [v4 addSubview:v1];
}

void sub_100003C8C()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = [v2 mainContentGuide];

  v4 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100062420;
  v6 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_imageView];
  v7 = [v6 topAnchor];
  v8 = [v3 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v5 + 32) = v9;
  v10 = [v6 bottomAnchor];
  v11 = [v3 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  v13 = [v6 leadingAnchor];
  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v5 + 48) = v15;
  v16 = [v6 trailingAnchor];
  v17 = [v3 trailingAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v5 + 56) = v18;
  v19 = [v6 centerYAnchor];
  v20 = [v3 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v5 + 64) = v21;
  v22 = [v6 centerXAnchor];
  v23 = [v3 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v5 + 72) = v24;
  sub_100004E64(0, &qword_100086FD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

void sub_100003FE8()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v24._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x800000010005EE00;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v24);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = sub_100004358(*&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo], *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo + 8], *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo + 16], *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMLostDeviceCardViewController_lostModeInfo + 24]);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v10 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = [v1 mainBundle];
      v25._object = 0xE000000000000000;
      v12._object = 0x800000010005EE20;
      v12._countAndFlagsBits = 0xD000000000000016;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v25);

      sub_100003958(&qword_100086FB0, &unk_100062500);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1000623F0;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = sub_100004DB8();
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      static String.localizedStringWithFormat(_:_:)();

      sub_100003958(&qword_100086FC0, &unk_100064E50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000623F0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v16 = objc_opt_self();
      v17 = NSForegroundColorAttributeName;
      v18 = [v16 secondaryLabelColor];
      *(inited + 64) = sub_100004E64(0, &qword_100086FC8, UIColor_ptr);
      *(inited + 40) = v18;
      sub_10004F0A8(inited);
      swift_setDeallocating();
      sub_100004F1C(inited + 32, &qword_100086FD0, &unk_100062510);
      v19 = objc_allocWithZone(NSAttributedString);
      v20 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100004E0C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v22 = [v19 initWithString:v20 attributes:isa];

      [v0 setAttributedSubtitle:v22];
    }

    else
    {
    }
  }
}

uint64_t sub_100004358(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v5 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v5 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      goto LABEL_9;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = a1;
  if (!v6)
  {
    return 0;
  }

LABEL_9:

  return v4;
}

id sub_100004400()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000044D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100004534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

Swift::Int sub_100004598()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000045DC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000461C()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_100086F48);
  v1 = sub_1000054DC(v0, qword_100086F48);
  if (qword_100086D88 != -1)
  {
    swift_once();
  }

  v2 = sub_1000054DC(v0, qword_100086F60);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000046E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URLQueryItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003958(&qword_100086FE0, &qword_100062520);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  if (!a4)
  {
    goto LABEL_12;
  }

  v28 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v28 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    URLComponents.init(string:)();
    URLQueryItem.init(name:value:)();
    v29 = v48;
    v30 = *(v49 + 48);
    if (!v30(v27, 1, v48))
    {
      sub_100003958(&qword_100086FE8, &qword_100062528);
      v31 = *(v14 + 72);
      v32 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1000623F0;
      (*(v14 + 16))(v33 + v32, v17, v13);
      URLComponents.queryItems.setter();
    }

    if (v30(v27, 1, v29))
    {
      (*(v14 + 8))(v17, v13);
      v34 = type metadata accessor for URL();
      (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
    }

    else
    {
      v45 = v49;
      v46 = v47;
      (*(v49 + 16))(v47, v27, v29);
      URLComponents.url.getter();
      (*(v45 + 8))(v46, v29);
      (*(v14 + 8))(v17, v13);
    }

    return sub_100004F1C(v27, &qword_100086FE0, &qword_100062520);
  }

  else
  {
    if (!a2)
    {
      goto LABEL_15;
    }

LABEL_12:
    v35 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v35 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      sub_100003958(&qword_100086FB0, &unk_100062500);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000623F0;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_100004DB8();
      *(v36 + 32) = a1;
      *(v36 + 40) = a2;

      String.init(format:_:)();
      URLComponents.init(string:)();

      sub_100004EAC(v25, v22);
      v37 = v48;
      v38 = v49;
      if ((*(v49 + 48))(v22, 1, v48) == 1)
      {
        sub_100004F1C(v25, &qword_100086FE0, &qword_100062520);
        sub_100004F1C(v22, &qword_100086FE0, &qword_100062520);
        v39 = type metadata accessor for URL();
        return (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
      }

      else
      {
        URLComponents.url.getter();
        sub_100004F1C(v25, &qword_100086FE0, &qword_100062520);
        return (*(v38 + 8))(v22, v37);
      }
    }

    else
    {
LABEL_15:
      v41 = type metadata accessor for URL();
      v42 = *(*(v41 - 8) + 56);
      v43 = v41;
      v44 = v50;

      return v42(v44, 1, 1, v43);
    }
  }
}

uint64_t sub_100004C8C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100004D38()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_100086F60);
  sub_1000054DC(v0, qword_100086F60);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100004DB8()
{
  result = qword_100086FB8;
  if (!qword_100086FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FB8);
  }

  return result;
}

unint64_t sub_100004E0C()
{
  result = qword_100086F08;
  if (!qword_100086F08)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086F08);
  }

  return result;
}

uint64_t sub_100004E64(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100004EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003958(&qword_100086FE0, &qword_100062520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004F1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003958(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004F7C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v10;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v11 = sub_10004ECB0(v36), (v12 & 1) == 0))
  {

    sub_100005488(v36);
LABEL_8:
    if (qword_100086D80 != -1)
    {
      swift_once();
    }

    v16 = sub_1000054DC(v2, qword_100086F48);
    (*(v3 + 16))(v9, v16, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No lost mode device type key, this is an invalid payload", v19, 2u);
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  sub_100005514(*(a1 + 56) + 32 * v11, v37);
  sub_100005488(v36);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  v14 = v34;
  v13 = v35;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v14 && v15 == v13)
  {

    goto LABEL_16;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {

    if (qword_100086D80 != -1)
    {
      swift_once();
    }

    v29 = sub_1000054DC(v2, qword_100086F48);
    (*(v3 + 16))(v7, v29, v2);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Device type did not match", v32, 2u);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

LABEL_16:
  v37[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37[1] = v22;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v23 = sub_10004ECB0(v36), (v24 & 1) != 0))
  {
    sub_100005514(*(a1 + 56) + 32 * v23, v37);
    sub_100005488(v36);
    if (swift_dynamicCast())
    {
      v25 = v34;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_100005488(v36);
    v25 = 0;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v26;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v27 = sub_10004ECB0(v36), (v28 & 1) != 0))
  {
    sub_100005514(*(a1 + 56) + 32 * v27, v37);
    sub_100005488(v36);

    swift_dynamicCast();
  }

  else
  {

    sub_100005488(v36);
  }

  return v25;
}

uint64_t sub_1000054DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100005570(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for AirTagDetectionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AirTagDetectionError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000056DC()
{
  result = qword_100086FF0;
  if (!qword_100086FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FF0);
  }

  return result;
}

unint64_t sub_100005734()
{
  result = qword_100086FF8;
  if (!qword_100086FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086FF8);
  }

  return result;
}

id sub_10000579C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor:v1];

  [v0 setTextAlignment:1];
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v2];

  [v0 setNumberOfLines:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  return v0;
}

id sub_1000058B4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_loadingLabel;
  v6 = v2;
  *&v2[v5] = sub_10000579C();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_activityIndicator;
  v8 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v8 startAnimating];
  *&v6[v7] = v8;
  v6[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewAppeared] = 0;
  v6[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_videoViewReady] = 0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000054DC(v9, qword_10008C038);
  v10 = v6;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v21);
    *(v13 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087050, qword_100062670);
    v14 = String.init<A>(describing:)();
    v16 = sub_10005B0A0(v14, v15, &v21);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = &v10[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewModel];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = swift_unknownObjectRetain_n();
  v19 = sub_10004CF80(v18, v10);
  sub_100005F88();
  sub_10000AEA0();

  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_100005B3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewModel);

  return swift_unknownObjectRelease();
}

id sub_100005B8C()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087050, qword_100062670);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_100005DE0(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  if (v2[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_videoViewReady] == 1 && *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView])
  {
    v5 = *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView + 8];
    v6 = *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView];
    swift_getObjectType();
    result = dispatch thunk of VideoPlaybackControllable.play()();
  }

  v2[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewAppeared] = 1;
  return result;
}

uint64_t sub_100005F04()
{
  *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_videoViewReady) = 1;
  if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewAppeared) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView))
    {
      v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView + 8);
      v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView);
      swift_getObjectType();
      return dispatch thunk of VideoPlaybackControllable.play()();
    }
  }

  return result;
}

void sub_100005F88()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_viewModel];
  v3 = sub_10000626C();
  v4 = *(v3 + 16);
  v5 = type metadata accessor for AirTagLoadingViewModel();
  v4(v5, v3);
  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  v7 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_loadingLabel];
  v8 = [objc_opt_self() mainBundle];
  v21._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x495443454E4E4F43;
  v9._object = 0xEA0000000000474ELL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v21);

  v11 = String._bridgeToObjectiveC()();

  [v7 setText:v11];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagLoadingViewController_activityIndicator];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_allocWithZone(UIStackView) init];
  [v13 setAxis:0];
  [v13 setAlignment:3];
  [v13 setSpacing:10.0];
  [v13 addArrangedSubview:v12];
  [v13 addArrangedSubview:v7];
  sub_10000B1EC(v13);
  v14 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100062620;
  v16 = [v7 heightAnchor];
  v17 = [v12 heightAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 multiplier:2.0];

  *(v15 + 32) = v18;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];
}

unint64_t sub_10000626C()
{
  result = qword_100087058;
  if (!qword_100087058)
  {
    type metadata accessor for AirTagLoadingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087058);
  }

  return result;
}

unint64_t sub_1000062C4()
{
  result = qword_100086FD8;
  if (!qword_100086FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100086FD8);
  }

  return result;
}

id sub_100006310(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = qword_100086DA8;
  v7 = v2;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000054DC(v8, qword_10008C038);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v27);
    *(v12 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087090, qword_1000626D0);
    v13 = String.init<A>(describing:)();
    v15 = sub_10005B0A0(v13, v14, &v27);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = &v9[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel];
  *v16 = a1;
  *(v16 + 1) = a2;
  v28.receiver = v9;
  v28.super_class = ObjectType;
  swift_unknownObjectRetain();
  v17 = objc_msgSendSuper2(&v28, "initWithContentView:", 0);
  [v17 setDismissalType:1];
  v18 = [objc_opt_self() mainBundle];
  v29._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0x4741545F454D414ELL;
  v19._object = 0xE800000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v29);

  v21 = String._bridgeToObjectiveC()();

  [v17 setTitle:v21];

  v22 = [v17 contentView];
  v23 = [v22 pickerView];

  [v23 setDataSource:v17];
  v24 = [v17 contentView];
  v25 = [v24 pickerView];

  [v25 setDelegate:v17];
  sub_100006B08();

  swift_unknownObjectRelease();
  return v17;
}

id sub_100006694()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087090, qword_1000626D0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_100006B08()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x45554E49544E4F43;
  v2._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100006D98;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_100079B48;
  v6 = _Block_copy(aBlock);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [v0 addAction:v7];
}

uint64_t sub_100006CC4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagRolePickerViewController_viewModel);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = sub_100006DB8();
    v4 = *(v3 + 40);
    v5 = type metadata accessor for AirTagRolePickerViewModel();
    v4(v5, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100006D60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100006DB8()
{
  result = qword_100087098;
  if (!qword_100087098)
  {
    type metadata accessor for AirTagRolePickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryConfiguration.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryConfiguration.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_100006FE4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100007010()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100007058()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000709C()
{
  if (*v0)
  {
    return 0x65706172672ELL;
  }

  else
  {
    return 0x676154726941;
  }
}

unint64_t sub_1000070CC()
{
  result = qword_1000870A0;
  if (!qword_1000870A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870A0);
  }

  return result;
}

unint64_t sub_100007124()
{
  result = qword_1000870A8;
  if (!qword_1000870A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000870A8);
  }

  return result;
}

void sub_1000071A0()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:50.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  qword_1000870B0 = v2;
}

id sub_100007258(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_errorView;
  v8 = qword_100086D90;
  v9 = v2;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIImageView) initWithImage:qword_1000870B0];
  v11 = [objc_opt_self() systemRedColor];
  [v10 setTintColor:v11];

  [v10 setContentMode:1];
  *&v3[v7] = v10;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000054DC(v12, qword_10008C038);
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v23);
    *(v16 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_1000870F0, &qword_1000628E0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10005B0A0(v17, v18, &v23);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = &v13[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel];
  *v20 = a1;
  *(v20 + 1) = a2;
  v24.receiver = v13;
  v24.super_class = ObjectType;
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v24, "initWithContentView:", 0);
  sub_1000077F0();
  sub_100007C58();

  swift_unknownObjectRelease();
  return v21;
}

id sub_100007558()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_1000870F0, &qword_1000628E0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_1000077F0()
{
  v1 = v0;
  [v0 setDismissalType:1];
  v2 = &v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel];
  v4 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel];
  v3 = *(v2 + 1);
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(ObjectType, v3);
  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  (*(v3 + 24))(ObjectType, v3);
  v7 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v7];

  v8 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_errorView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v1 contentView];
  [v9 addSubview:v8];

  if (qword_100086D90 != -1)
  {
    swift_once();
  }

  if (qword_1000870B0)
  {
    [qword_1000870B0 size];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = 0.0;
    v13 = 0.0;
  }

  v14 = [v1 contentView];
  v15 = [v14 mainContentGuide];

  v16 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100062420;
  v18 = [v8 centerXAnchor];
  v19 = [v15 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v17 + 32) = v20;
  v21 = [v8 centerYAnchor];
  v22 = [v15 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 40) = v23;
  v24 = [v8 heightAnchor];
  v25 = [v24 constraintEqualToConstant:v13];

  *(v17 + 48) = v25;
  v26 = [v8 widthAnchor];
  v27 = [v26 constraintEqualToConstant:v11];

  *(v17 + 56) = v27;
  v28 = [v8 topAnchor];
  v29 = [v15 topAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29];

  *(v17 + 64) = v30;
  v31 = [v8 bottomAnchor];
  v32 = [v15 bottomAnchor];
  v33 = [v31 constraintLessThanOrEqualToAnchor:v32];

  *(v17 + 72) = v33;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];
}

void sub_100007C58()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel + 8];
  v3 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel];
  ObjectType = swift_getObjectType();
  (*(v2 + 32))(ObjectType, v2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();

  v10[4] = sub_100007EB8;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100047684;
  v10[3] = &unk_100079CB8;
  v7 = _Block_copy(v10);
  v8 = [objc_opt_self() actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v9 = [v1 addAction:v8];
}

uint64_t sub_100007DE8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel);
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagFailureViewController_viewModel + 8);
    v3 = result;
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v1 + 40))(ObjectType, v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100007E80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007ED8(uint64_t a1, void *a2)
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
  v13._object = 0xE000000000000000;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v13)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100007FE0(char a1)
{
  result = 0x656C64692ELL;
  switch(a1)
  {
    case 1:
      result = 0x697463657465642ELL;
      break;
    case 2:
      result = 0x527463656C65732ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x746E756F6363612ELL;
      break;
    case 6:
      result = 0x676E6964616F6C2ELL;
      break;
    case 7:
      result = 0x4449656C7070612ELL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x636972747365722ELL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x326173682ELL;
      break;
    case 13:
      result = 0x6572756C6961662ELL;
      break;
    case 14:
      result = 0x737365636375732ELL;
      break;
    case 15:
      result = 0x656873696E69662ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000821C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_10000823C, v1, 0);
}

uint64_t sub_10000823C()
{
  v1 = v0[6];
  v2 = *(v1 + 128);
  if (v2 > 7)
  {
    if (v2 - 9 >= 6)
    {
      if (v2 != 8)
      {
        if (qword_100086DA8 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000054DC(v21, qword_10008C038);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "No further transitions possible.", v24, 2u);
        }

        goto LABEL_14;
      }

      v17 = swift_task_alloc();
      v0[14] = v17;
      *v17 = v0;
      v18 = sub_100009800;
      goto LABEL_29;
    }

LABEL_7:
    v3 = 15;
    goto LABEL_8;
  }

  if (*(v1 + 128) > 3u)
  {
    if (*(v1 + 128) <= 5u)
    {
      if (v2 == 4)
      {
        v17 = swift_task_alloc();
        v0[11] = v17;
        *v17 = v0;
        v18 = sub_100009008;
      }

      else
      {
        v17 = swift_task_alloc();
        v0[12] = v17;
        *v17 = v0;
        v18 = sub_100009274;
      }

      goto LABEL_29;
    }

    if (v2 == 6)
    {
      v17 = swift_task_alloc();
      v0[13] = v17;
      *v17 = v0;
      v18 = sub_1000094E0;
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (*(v1 + 128) > 1u)
  {
    if (v2 == 2)
    {
      v17 = swift_task_alloc();
      v0[8] = v17;
      *v17 = v0;
      v18 = sub_1000088F0;
    }

    else
    {
      v17 = swift_task_alloc();
      v0[10] = v17;
      *v17 = v0;
      v18 = sub_100008D9C;
    }
  }

  else
  {
    if (!*(v1 + 128))
    {
      v3 = 1;
LABEL_8:
      *(v1 + 128) = v3;
      v4 = v0[6];
      v5 = *(v4 + 128);
      swift_beginAccess();
      v6 = *(v4 + 136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 136) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_10000A4D0(0, *(v6 + 2) + 1, 1, v6);
        *(v4 + 136) = v6;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_10000A4D0((v8 > 1), v9 + 1, 1, v6);
      }

      v10 = v0[6];
      *(v6 + 2) = v9 + 1;
      v6[v9 + 32] = v5;
      *(v4 + 136) = v6;
      swift_endAccess();
      v11 = *(v10 + 112);
      if (v11)
      {
        v12 = v0[6];
        v13 = *(v12 + 120);
        v14 = *(v12 + 128);

        v11(v14);
        sub_10000A788(v11);
      }

LABEL_14:
      v15 = v0[1];

      return v15();
    }

    v17 = swift_task_alloc();
    v0[7] = v17;
    *v17 = v0;
    v18 = sub_100008684;
  }

LABEL_29:
  v17[1] = v18;
  v19 = v0[5];
  v20 = v0[6];

  return sub_100009C3C(v19);
}

uint64_t sub_100008684(char a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10000879C, v3, 0);
}

uint64_t sub_10000879C()
{
  v1 = *(v0 + 120);
  if (v1 == 16)
  {
    LOBYTE(v1) = 2;
  }

  *(*(v0 + 48) + 128) = v1;
  v2 = *(v0 + 48);
  v3 = *(v2 + 128);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10000A4D0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 136) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10000A4D0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 48);
  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v3;
  *(v2 + 136) = v4;
  swift_endAccess();
  v9 = *(v8 + 112);
  if (v9)
  {
    v10 = *(v0 + 48);
    v11 = *(v10 + 120);
    v12 = *(v10 + 128);

    v9(v12);
    sub_10000A788(v9);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000088F0(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 121) = a1;

  return _swift_task_switch(sub_100008A08, v3, 0);
}

uint64_t sub_100008A08()
{
  v1 = *(v0 + 121);
  if (v1 == 16)
  {
    v2 = *(v0 + 40);

    return _swift_task_switch(sub_100008B98, v2, 0);
  }

  else
  {
    *(*(v0 + 48) + 128) = v1;
    v3 = *(v0 + 48);
    v4 = *(v3 + 128);
    swift_beginAccess();
    v5 = *(v3 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 136) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_10000A4D0(0, *(v5 + 2) + 1, 1, v5);
      *(v3 + 136) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_10000A4D0((v7 > 1), v8 + 1, 1, v5);
    }

    v9 = *(v0 + 48);
    *(v5 + 2) = v8 + 1;
    v5[v8 + 32] = v4;
    *(v3 + 136) = v5;
    swift_endAccess();
    v10 = *(v9 + 112);
    if (v10)
    {
      v11 = *(v0 + 48);
      v12 = *(v11 + 120);
      v13 = *(v11 + 128);

      v10(v13);
      sub_10000A788(v10);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100008B98()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole);
  v0[9] = v2;
  v3 = v2;

  return _swift_task_switch(sub_100008C18, v1, 0);
}

uint64_t sub_100008C18()
{
  v1 = *(v0 + 72);
  if (v1 && (v2 = [*(v0 + 72) roleId], v1, SPBeaconRoleIdOther == v2))
  {
    v3 = 3;
  }

  else
  {
    v3 = 5;
  }

  *(*(v0 + 48) + 128) = v3;
  v4 = *(v0 + 48);
  v5 = *(v4 + 128);
  swift_beginAccess();
  v6 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10000A4D0(0, *(v6 + 2) + 1, 1, v6);
    *(v4 + 136) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10000A4D0((v8 > 1), v9 + 1, 1, v6);
  }

  v10 = *(v0 + 48);
  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = v5;
  *(v4 + 136) = v6;
  swift_endAccess();
  v11 = *(v10 + 112);
  if (v11)
  {
    v12 = *(v0 + 48);
    v13 = *(v12 + 120);
    v14 = *(v12 + 128);

    v11(v14);
    sub_10000A788(v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100008D9C(char a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 122) = a1;

  return _swift_task_switch(sub_100008EB4, v3, 0);
}

uint64_t sub_100008EB4()
{
  v1 = *(v0 + 122);
  if (v1 == 16)
  {
    LOBYTE(v1) = 4;
  }

  *(*(v0 + 48) + 128) = v1;
  v2 = *(v0 + 48);
  v3 = *(v2 + 128);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10000A4D0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 136) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10000A4D0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 48);
  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v3;
  *(v2 + 136) = v4;
  swift_endAccess();
  v9 = *(v8 + 112);
  if (v9)
  {
    v10 = *(v0 + 48);
    v11 = *(v10 + 120);
    v12 = *(v10 + 128);

    v9(v12);
    sub_10000A788(v9);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100009008(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 123) = a1;

  return _swift_task_switch(sub_100009120, v3, 0);
}

uint64_t sub_100009120()
{
  v1 = *(v0 + 123);
  if (v1 == 16)
  {
    LOBYTE(v1) = 5;
  }

  *(*(v0 + 48) + 128) = v1;
  v2 = *(v0 + 48);
  v3 = *(v2 + 128);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10000A4D0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 136) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10000A4D0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 48);
  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v3;
  *(v2 + 136) = v4;
  swift_endAccess();
  v9 = *(v8 + 112);
  if (v9)
  {
    v10 = *(v0 + 48);
    v11 = *(v10 + 120);
    v12 = *(v10 + 128);

    v9(v12);
    sub_10000A788(v9);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100009274(char a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 124) = a1;

  return _swift_task_switch(sub_10000938C, v3, 0);
}

uint64_t sub_10000938C()
{
  v1 = *(v0 + 124);
  if (v1 == 16)
  {
    LOBYTE(v1) = 6;
  }

  *(*(v0 + 48) + 128) = v1;
  v2 = *(v0 + 48);
  v3 = *(v2 + 128);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10000A4D0(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + 136) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10000A4D0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = *(v0 + 48);
  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v3;
  *(v2 + 136) = v4;
  swift_endAccess();
  v9 = *(v8 + 112);
  if (v9)
  {
    v10 = *(v0 + 48);
    v11 = *(v10 + 120);
    v12 = *(v10 + 128);

    v9(v12);
    sub_10000A788(v9);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000094E0(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 125) = a1;

  return _swift_task_switch(sub_1000095F8, v3, 0);
}

uint64_t sub_1000095F8()
{
  v1 = *(v0 + 125);
  if (v1 == 16)
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000054DC(v2, qword_10008C038);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No pairing result, next step is ambiguous.", v5, 2u);
    }
  }

  else
  {
    *(*(v0 + 48) + 128) = v1;
  }

  v6 = *(v0 + 48);
  v7 = *(v6 + 128);
  swift_beginAccess();
  v8 = *(v6 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 136) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_10000A4D0(0, *(v8 + 2) + 1, 1, v8);
    *(v6 + 136) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_10000A4D0((v10 > 1), v11 + 1, 1, v8);
  }

  v12 = *(v0 + 48);
  *(v8 + 2) = v11 + 1;
  v8[v11 + 32] = v7;
  *(v6 + 136) = v8;
  swift_endAccess();
  v13 = *(v12 + 112);
  if (v13)
  {
    v14 = *(v0 + 48);
    v15 = *(v14 + 120);
    v16 = *(v14 + 128);

    v13(v16);
    sub_10000A788(v13);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100009800(char a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 126) = a1;

  return _swift_task_switch(sub_100009918, v3, 0);
}

uint64_t sub_100009918()
{
  v1 = *(v0 + 126);
  if (v1 == 8 || v1 == 16)
  {
    v3 = *(v0 + 40);

    return _swift_task_switch(sub_100009AAC, v3, 0);
  }

  else
  {
    *(*(v0 + 48) + 128) = v1;
    v4 = *(v0 + 48);
    v5 = *(v4 + 128);
    swift_beginAccess();
    v6 = *(v4 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 136) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10000A4D0(0, *(v6 + 2) + 1, 1, v6);
      *(v4 + 136) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_10000A4D0((v8 > 1), v9 + 1, 1, v6);
    }

    v10 = *(v0 + 48);
    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = v5;
    *(v4 + 136) = v6;
    swift_endAccess();
    v11 = *(v10 + 112);
    if (v11)
    {
      v12 = *(v0 + 48);
      v13 = *(v12 + 120);
      v14 = *(v12 + 128);

      v11(v14);
      sub_10000A788(v11);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100009AAC()
{
  v1 = *(v0 + 48);
  *(v0 + 127) = *(*(v0 + 40) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled);
  return _swift_task_switch(sub_100009ADC, v1, 0);
}

uint64_t sub_100009ADC()
{
  v2 = *(v0 + 127);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = 15;
  }

  else
  {
    v3 = 2;
  }

  *(*(v0 + 48) + 128) = v3;
  v4 = *(v0 + 48);
  v5 = *(v4 + 128);
  swift_beginAccess();
  v6 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10000A4D0(0, *(v6 + 2) + 1, 1, v6);
    *(v4 + 136) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10000A4D0((v8 > 1), v9 + 1, 1, v6);
  }

  v10 = *(v0 + 48);
  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = v5;
  *(v4 + 136) = v6;
  swift_endAccess();
  v11 = *(v10 + 112);
  if (v11)
  {
    v12 = *(v0 + 48);
    v13 = *(v12 + 120);
    v14 = *(v12 + 128);

    v11(v14);
    sub_10000A788(v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100009C3C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_100009C5C, a1, 0);
}

uint64_t sub_100009C5C()
{
  v1 = *(v0 + 144);
  *(v0 + 73) = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingRestricted);
  return _swift_task_switch(sub_100009C8C, v1, 0);
}

uint64_t sub_100009C8C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  *(v0 + 74) = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled);
  *(v0 + 75) = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isManateeAvailable);
  v3 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v5 = v3[1];
  v4 = v3[2];
  v6 = *v3;
  *(v0 + 57) = *(v3 + 41);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  *(v0 + 16) = v6;
  sub_10000A79C(v0 + 16, v0 + 80);

  return _swift_task_switch(sub_100009D4C, v2, 0);
}

uint64_t sub_100009D4C()
{
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    if (!v1)
    {
      v4 = 0;
      goto LABEL_10;
    }

    v2 = *(v0 + 32);
    v3 = *(v0 + 75);
    sub_10000A80C(v0 + 16);
    if (v3 == 2 || (*(v0 + 75) & 1) != 0)
    {
      LOBYTE(v1) = v2 ^ 1;
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  v4 = 1;
LABEL_10:
  *(v0 + 77) = v4;
  *(v0 + 76) = v1 & 1;
  v5 = *(v0 + 144);

  return _swift_task_switch(sub_100009E08, v5, 0);
}

uint64_t sub_100009E08()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144) + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult;
  v3 = *v2;
  *(v0 + 160) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 78) = v4;
  sub_10000A874(v3, v4);

  return _swift_task_switch(sub_100009E90, v1, 0);
}

uint64_t sub_100009E90()
{
  v1 = *(v0 + 78);
  if (v1 == 255)
  {
    if (*(v0 + 73))
    {
      v3 = 9;
      goto LABEL_26;
    }

    v4 = *(v0 + 75);
    if (v4 == 2)
    {
      if (!*(v0 + 77))
      {
        v3 = 7;
        goto LABEL_26;
      }
    }

    else
    {
      v5 = v4 & 1;
      if (v5)
      {
        v3 = 7;
      }

      else
      {
        v3 = 11;
      }

      if ((v5 & *(v0 + 77) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (((*(v0 + 74) != 2) ^ *(v0 + 74)))
    {
      v6 = 8;
    }

    else
    {
      v6 = 16;
    }

    if (*(v0 + 76))
    {
      v3 = 12;
    }

    else
    {
      v3 = v6;
    }

    goto LABEL_26;
  }

  v2 = *(v0 + 160);
  if ((v1 & 1) == 0)
  {
    sub_10000A8A8(v2, v1);
    v3 = 14;
    goto LABEL_26;
  }

  if (v2 > 2)
  {
    if (v2 != 3)
    {
LABEL_13:
      sub_10000A8A8(v2, v1);
      v3 = 13;
      goto LABEL_26;
    }

    sub_10000A8A8(3uLL, v1);
    v3 = 11;
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_13;
    }

    sub_10000A8A8(1uLL, v1);
    v3 = 10;
  }

LABEL_26:
  v7 = *(v0 + 8);

  return v7(v3);
}

void sub_100009FD0()
{
  v1 = v0;
  if (*(v0 + 128) != 4)
  {
    if (qword_100086DA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  swift_beginAccess();
  v2 = *(v0 + 136);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 0;
    while (v2[v4 + 32] != 4)
    {
      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_32;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v14 = *(v2 + 2);
      if (v13 != v14)
      {
        break;
      }

LABEL_16:
      *(v1 + 136) = v2;

      v5 = *(v2 + 2);
      v3 = v4;
      if (v5 >= v4)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v2 = sub_10000A610(v2);
    }

    v17 = v2 + 32;
    v18 = &v2[v4 + 33];
    while (v13 < v14)
    {
      v20 = *v18;
      if (v20 != *(v1 + 128))
      {
        if (v13 != v4)
        {
          if (v4 >= v14)
          {
            __break(1u);
            break;
          }

          v19 = v17[v4];
          v17[v4] = v20;
          *v18 = v19;
          v14 = *(v2 + 2);
        }

        ++v4;
      }

      ++v13;
      ++v18;
      if (v13 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
LABEL_8:
    v6 = type metadata accessor for Logger();
    sub_1000054DC(v6, qword_10008C038);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446210;
      v10 = sub_100007FE0(*(v1 + 128));
      v12 = sub_10005B0A0(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Move back unsupported for current state %{public}s", v8, 0xCu);
      sub_10000A5C4(v9);
    }

    else
    {
    }

    return;
  }

LABEL_6:
  v5 = *(v2 + 2);
LABEL_17:
  sub_10000A6C8(v3, v5);
  swift_endAccess();
  *(v1 + 128) = 3;
  v15 = *(v1 + 112);
  if (v15)
  {
    v16 = *(v1 + 120);

    v15(3);
    sub_10000A788(v15);
  }
}

uint64_t sub_10000A2B0()
{
  v1 = v0[15];
  sub_10000A788(v0[14]);
  v2 = v0[17];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t getEnumTagSinglePayload for PairingContentState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingContentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A470()
{
  result = qword_100087218;
  if (!qword_100087218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087218);
  }

  return result;
}

char *sub_10000A4D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003958(&qword_100087220, &qword_100062A20);
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

uint64_t sub_10000A5C4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_10000A624(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_10000A6C8(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_10000A4D0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_10000A624(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10000A788(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003958(&qword_100087228, &unk_100062A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A80C(uint64_t a1)
{
  v2 = sub_100003958(&qword_100087228, &unk_100062A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000A874(unint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000A88C(result, a2 & 1);
  }

  return result;
}

unint64_t sub_10000A88C(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_10000A898(result);
  }

  return result;
}

unint64_t sub_10000A898(unint64_t result)
{
  if (result >= 6)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_10000A8A8(unint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000A8C0(result, a2 & 1);
  }

  return result;
}

unint64_t sub_10000A8C0(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_10000A8CC(result);
  }

  return result;
}

unint64_t sub_10000A8CC(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

void sub_10000A8DC(void *a1)
{
  v3 = [objc_allocWithZone(UIView) init];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_stackView);
  [v5 addArrangedSubview:v3];
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:a1];
  v6 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_footerView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addArrangedSubview:v6];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v1 contentView];
  [v7 addSubview:v5];

  v8 = [v1 contentView];
  v39 = [v8 mainContentGuide];

  v38 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100062A40;
  v10 = [a1 leadingAnchor];
  v11 = [v3 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [a1 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [a1 centerYAnchor];
  v17 = [v3 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [a1 heightAnchor];
  v20 = [v19 constraintEqualToConstant:362.0];

  *(v9 + 56) = v20;
  v21 = [v3 heightAnchor];
  v22 = [v21 constraintEqualToConstant:200.0];

  *(v9 + 64) = v22;
  v23 = [a1 widthAnchor];
  v24 = [v23 constraintEqualToConstant:350.0];

  *(v9 + 72) = v24;
  v25 = [v5 leadingAnchor];
  v26 = [v39 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v9 + 80) = v27;
  v28 = [v5 trailingAnchor];
  v29 = [v39 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v9 + 88) = v30;
  v31 = [v5 topAnchor];
  v32 = [v39 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v9 + 96) = v33;
  v34 = [v5 bottomAnchor];
  v35 = [v39 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v9 + 104) = v36;
  sub_100004E64(0, &qword_100086FD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];

  (*((swift_isaMask & *v1) + 0x90))();
}

void sub_10000AEA0()
{
  v1 = v0;
  v2 = type metadata accessor for AirTagPairing2.Assets.ViewIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000054DC(v7, qword_10008C038);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing view preparation...", v10, 2u);
  }

  v11 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_viewModel);
  v12 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_viewModel + 8);
  ObjectType = swift_getObjectType();
  (*(v12 + 24))(ObjectType, v12);
  v14 = (*(v12 + 16))(ObjectType, v12);
  v15 = &enum case for AirTagPairing2.Assets.ViewIdentifier.loop(_:);
  if ((v14 & 1) == 0)
  {
    v15 = &enum case for AirTagPairing2.Assets.ViewIdentifier.intro(_:);
  }

  (*(v3 + 104))(v6, *v15, v2);
  v16 = AirTagPairing2.Assets.view(_:)();
  v18 = v17;

  (*(v3 + 8))(v6, v2);
  v19 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView);
  v20 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView);
  *v19 = v16;
  v19[1] = v18;
  v21 = v16;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Got a video view.", v24, 2u);
  }

  v25 = v21;
  sub_10000A8DC(v25);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Added pairing view.", v28, 2u);
  }
}

void sub_10000B1EC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_footerView);
  v4 = [v3 subviews];
  sub_100004E64(0, &qword_100087278, UIView_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:a1];
  v11 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100062A50;
  v13 = [a1 topAnchor];
  v14 = [v3 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [a1 centerXAnchor];
  v17 = [v3 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [a1 bottomAnchor];
  v20 = [v3 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v12 + 48) = v21;
  sub_100004E64(0, &qword_100086FD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];
}

id sub_10000B504(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MovieViewController();
  result = objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  v4 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView];
  if (*&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView])
  {
    v5 = *(v4 + 1);
    v6 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView];
    swift_getObjectType();
    dispatch thunk of VideoPlaybackControllable.stop()();
    result = *v4;
    if (*v4)
    {
      return [result removeFromSuperview];
    }
  }

  return result;
}

id sub_10000B618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MovieViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000B6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_continueAction] = 0;
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField;
  v8 = objc_allocWithZone(PRXTextField);
  v9 = v2;
  *&v3[v7] = [v8 init];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v22);
    *(v14 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_1000872C0, "~M");
    v15 = String.init<A>(describing:)();
    v17 = sub_10005B0A0(v15, v16, &v22);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = &v11[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_viewModel];
  *v18 = a1;
  *(v18 + 1) = a2;
  v23.receiver = v11;
  v23.super_class = ObjectType;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v23, "initWithContentView:", 0);
  sub_10000BD08();
  sub_10000C238();
  v20 = [objc_opt_self() defaultCenter];
  [v20 addObserver:v19 selector:"updateContinueButton" name:UITextFieldTextDidChangeNotification object:0];

  swift_unknownObjectRelease();
  return v19;
}

id sub_10000B9B0()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v12);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_1000872C0, "~M");
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver:v3];

  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_10000BD08()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v40._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x4741545F454D414ELL;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v40);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = [v1 mainBundle];
  v41._object = 0xE000000000000000;
  v7._object = 0x800000010005F330;
  v7._countAndFlagsBits = 0xD000000000000014;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v41);

  v9 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v9];

  v10 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField];
  v11 = [v1 mainBundle];
  v42._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000017;
  v12._object = 0x800000010005F350;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v42);

  v14 = String._bridgeToObjectiveC()();

  [v10 setPlaceholder:v14];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v0 contentView];
  [v15 addSubview:v10];

  v37 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100062AB0;
  v17 = [v10 topAnchor];
  v18 = [v0 contentView];
  v19 = [v18 mainContentGuide];

  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];

  *(v16 + 32) = v21;
  v22 = [v10 leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 mainContentGuide];

  v25 = [v24 leadingAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];

  *(v16 + 40) = v26;
  v27 = [v10 trailingAnchor];
  v28 = [v0 contentView];
  v29 = [v28 mainContentGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];

  *(v16 + 48) = v31;
  v32 = [v10 bottomAnchor];
  v33 = [v0 contentView];
  v34 = [v33 mainContentGuide];

  v35 = [v34 bottomAnchor];
  v36 = [v32 constraintLessThanOrEqualToAnchor:v35];

  *(v16 + 56) = v36;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];
}

void sub_10000C238()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x45554E49544E4F43;
  v2._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000C7E8;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_100079D98;
  v6 = _Block_copy(aBlock);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  [v7 setEnabled:0];

  v8 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_continueAction];
  *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_continueAction] = v7;
}

void sub_10000C414()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField;
    v3 = [*(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField) text];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_viewModel];
      v9 = sub_10000C808();
      v10 = *(v9 + 48);
      v11 = type metadata accessor for AirTagCustomNameViewModel();
      swift_unknownObjectRetain();
      v10(v5, v7, v11, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100086DA8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000054DC(v12, qword_10008C038);
      v13 = v1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136446210;
        v18 = [*&v1[v2] text];
        if (v18)
        {
          v19 = v18;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100003958(&qword_1000872C8, &unk_1000639F0);
        v20 = String.init<A>(describing:)();
        v22 = sub_10005B0A0(v20, v21, &v23);

        *(v16 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "Can't select Name! Invalid textField text! %{public}s", v16, 0xCu);
        sub_10000A5C4(v17);
      }
    }
  }
}

void sub_10000C688()
{
  v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_continueAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService30AirTagCustomNameViewController_nameField);
    v10 = v1;
    v3 = [v2 text];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }

    [v10 setEnabled:v9];
  }
}

uint64_t sub_10000C7B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000C808()
{
  result = qword_1000872D0;
  if (!qword_1000872D0)
  {
    type metadata accessor for AirTagCustomNameViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000872D0);
  }

  return result;
}

id sub_10000C860()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = objc_opt_self();
  v2 = [v1 secondarySystemFillColor];
  [v0 setBackgroundColor:v2];

  v3 = [v0 layer];
  [v3 setCornerRadius:41.5];

  v4 = [v0 layer];
  v5 = [v1 systemBlueColor];
  v6 = [v5 CGColor];

  [v4 setBorderColor:v6];
  v7 = [v0 layer];
  [v7 setBorderWidth:3.0];

  [v0 setClipsToBounds:1];
  return v0;
}

id sub_10000C9D0()
{
  v0 = [objc_opt_self() buttonWithType:1];
  v1 = [objc_opt_self() configurationWithPointSize:3 weight:2 scale:50.0];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  [v0 setImage:v3 forState:0];
  v4 = [objc_opt_self() tertiaryLabelColor];
  [v0 setTintColor:v4];

  return v0;
}

id sub_10000CB00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiContainer;
  v8 = v2;
  *&v3[v7] = sub_10000C860();
  v9 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiButton;
  *&v8[v9] = sub_10000C9D0();
  v10 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = [objc_opt_self() systemFontOfSize:50.0];
  [v11 setFont:v12];

  [v11 setAdjustsFontSizeToFitWidth:1];
  *&v8[v10] = v11;
  v13 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField;
  type metadata accessor for EmojiTextField();
  *&v8[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v8[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_continueAction] = 0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000054DC(v14, qword_10008C038);
  v15 = v8;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v25);
    *(v18 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087398, "BM");
    v19 = String.init<A>(describing:)();
    v21 = sub_10005B0A0(v19, v20, &v25);

    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = &v15[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_viewModel];
  *v22 = a1;
  *(v22 + 1) = a2;
  v26.receiver = v15;
  v26.super_class = ObjectType;
  swift_unknownObjectRetain();
  v23 = objc_msgSendSuper2(&v26, "initWithContentView:", 0);
  sub_10000D16C();
  sub_10000DAC4();

  swift_unknownObjectRelease();
  return v23;
}

id sub_10000CE1C()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087398, "BM");
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_10000D16C()
{
  v1 = v0;
  [v0 setDismissalType:1];
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v72._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x455F45534F4F4843;
  v4._object = 0xEC000000494A4F4DLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v72);

  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  v7 = [v2 mainBundle];
  v73._object = 0xE000000000000000;
  v8._object = 0x800000010005F4C0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v73);

  v10 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v10];

  v11 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiContainer];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 contentView];
  [v12 addSubview:v11];

  v13 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel];
  v67 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:v13];
  v14 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiButton];
  v68 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 addTarget:v1 action:"handleEmojiButtonTapped" forControlEvents:64];
  [v11 addSubview:v14];
  v15 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setHidden:1];
  [v15 setDelegate:v1];
  [v11 addSubview:v15];
  v69 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100062B20;
  v17 = [v11 topAnchor];
  v18 = [v1 contentView];
  v19 = [v18 mainContentGuide];

  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];

  *(v16 + 32) = v21;
  v22 = [v11 centerXAnchor];
  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v25 = [v24 centerXAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];

  *(v16 + 40) = v26;
  v27 = [v11 heightAnchor];
  v28 = [v27 constraintEqualToConstant:83.0];

  *(v16 + 48) = v28;
  v29 = [v11 widthAnchor];
  v30 = [v11 heightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v16 + 56) = v31;
  v32 = [v11 bottomAnchor];
  v33 = [v1 contentView];
  v34 = [v33 mainContentGuide];

  v35 = [v34 bottomAnchor];
  v36 = [v32 constraintLessThanOrEqualToAnchor:v35];

  *(v16 + 64) = v36;
  v37 = [v67 centerXAnchor];
  v38 = [v11 centerXAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v16 + 72) = v39;
  v40 = [v67 centerYAnchor];
  v41 = [v11 centerYAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v16 + 80) = v42;
  v43 = [v67 leadingAnchor];
  v44 = [v11 leadingAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

  *(v16 + 88) = v45;
  v46 = [v67 trailingAnchor];
  v47 = [v11 trailingAnchor];
  v48 = [v46 constraintLessThanOrEqualToAnchor:v47];

  *(v16 + 96) = v48;
  v49 = [v68 centerXAnchor];
  v50 = [v11 centerXAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v16 + 104) = v51;
  v52 = [v68 centerYAnchor];
  v53 = [v11 centerYAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v16 + 112) = v54;
  v55 = [v68 leadingAnchor];
  v56 = [v11 leadingAnchor];
  v57 = [v55 constraintGreaterThanOrEqualToAnchor:v56];

  *(v16 + 120) = v57;
  v58 = [v68 trailingAnchor];
  v59 = [v11 trailingAnchor];
  v60 = [v58 constraintLessThanOrEqualToAnchor:v59];

  *(v16 + 128) = v60;
  v61 = [v15 centerXAnchor];
  v62 = [v11 centerXAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v16 + 136) = v63;
  v64 = [v15 centerYAnchor];
  v65 = [v11 centerYAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:25.0];

  *(v16 + 144) = v66;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:isa];
}

void sub_10000DAC4()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v26._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x45554E49544E4F43;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v26);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();

  v24 = sub_10000E3AC;
  v25 = v5;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100047684;
  v23 = &unk_100079DE8;
  v7 = _Block_copy(&aBlock);
  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v10 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_continueAction];
  *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_continueAction] = v9;
  v11 = v9;

  v12 = [v1 mainBundle];
  v27._object = 0xE000000000000000;
  v13._countAndFlagsBits = 1262698818;
  v13._object = 0xE400000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v27);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = String._bridgeToObjectiveC()();

  v24 = sub_10000E3CC;
  v25 = v15;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100047684;
  v23 = &unk_100079E10;
  v17 = _Block_copy(&aBlock);
  v18 = [v8 actionWithTitle:v16 style:1 handler:v17];

  _Block_release(v17);

  v19 = [v0 addAction:v18];
}

void sub_10000DE18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel;
    v3 = [*(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel) text];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_viewModel];
      v9 = sub_10000E3D4();
      v10 = *(v9 + 48);
      v11 = type metadata accessor for AirTagCustomEmojiViewModel();
      swift_unknownObjectRetain();
      v10(v5, v7, v11, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100086DA8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000054DC(v12, qword_10008C038);
      v13 = v1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136446210;
        v18 = [*&v1[v2] text];
        if (v18)
        {
          v19 = v18;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100003958(&qword_1000872C8, &unk_1000639F0);
        v20 = String.init<A>(describing:)();
        v22 = sub_10005B0A0(v20, v21, &v23);

        *(v16 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "Can't select emoji! Invalid label text! %{public}s", v16, 0xCu);
        sub_10000A5C4(v17);
      }
    }
  }
}

uint64_t sub_10000E08C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_viewModel);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = sub_10000E3D4();
    v4 = *(v3 + 56);
    v5 = type metadata accessor for AirTagCustomEmojiViewModel();
    v4(v5, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000E140()
{
  v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_continueAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField);
    v10 = v1;
    v3 = [v2 text];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }

    [v10 setEnabled:v9];
  }
}

void sub_10000E2A8(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *&a1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiContainer];
  v9 = a1;
  v6 = [v5 layer];
  v7 = [objc_opt_self() *a4];
  v8 = [v7 CGColor];

  [v6 setBorderColor:v8];
}

uint64_t sub_10000E374()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E3B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E3D4()
{
  result = qword_1000873A0;
  if (!qword_1000873A0)
  {
    type metadata accessor for AirTagCustomEmojiViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000873A0);
  }

  return result;
}

BOOL sub_10000E42C()
{
  v1 = String._bridgeToObjectiveC()();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (IsSingleEmoji)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_selectedEmojiLabel);
    v4 = String._bridgeToObjectiveC()();
    [v3 setText:v4];

    v5 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_hiddenEmojiField);
    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];

    [*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagCustomEmojiViewController_emojiButton) setImage:0 forState:0];
  }

  sub_10000E140();
  return IsSingleEmoji == 0;
}

id sub_10000E51C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService33AirTagInstallFindMyViewController_iconView;
  v8 = objc_allocWithZone(UIImageView);
  v9 = v2;
  *&v3[v7] = [v8 init];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v21);
    *(v14 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087458, "\nM");
    v15 = String.init<A>(describing:)();
    v17 = sub_10005B0A0(v15, v16, &v21);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = &v11[OBJC_IVAR____TtC21FindMyRemoteUIService33AirTagInstallFindMyViewController_viewModel];
  *v18 = a1;
  *(v18 + 1) = a2;
  v22.receiver = v11;
  v22.super_class = ObjectType;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v22, "initWithContentView:", 0);
  sub_10000EA2C();
  sub_10000EEE4();

  swift_unknownObjectRelease();
  return v19;
}

id sub_10000E794()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087458, "\nM");
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_10000EA2C()
{
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v35._object = 0xE000000000000000;
  v3._object = 0x800000010005F590;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v35);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v6 = [v1 mainBundle];
  v36._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v7._object = 0x800000010005F5B0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v36);

  v9 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v9];

  v10 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService33AirTagInstallFindMyViewController_iconView];
  v11 = sub_10000F16C();
  [v10 setImage:v11];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v0 contentView];
  [v12 addSubview:v10];

  v13 = [v0 contentView];
  v14 = [v13 mainContentGuide];

  v15 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100062420;
  v17 = [v10 centerXAnchor];
  v18 = [v14 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v10 centerYAnchor];
  v21 = [v14 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v23 = [v10 widthAnchor];
  v24 = [v23 constraintEqualToConstant:76.0];

  *(v16 + 48) = v24;
  v25 = [v10 heightAnchor];
  v26 = [v25 constraintEqualToConstant:76.0];

  *(v16 + 56) = v26;
  v27 = [v10 topAnchor];
  v28 = [v14 topAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];

  *(v16 + 64) = v29;
  v30 = [v10 bottomAnchor];
  v31 = [v14 bottomAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor:v31];

  *(v16 + 72) = v32;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];
}

void sub_10000EEE4()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v2._object = 0x800000010005F570;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000F14C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_100079E60;
  v6 = _Block_copy(aBlock);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [v0 addAction:v7];
}

uint64_t sub_10000F0A4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService33AirTagInstallFindMyViewController_viewModel);
    v2 = result;
    swift_unknownObjectRetain();

    sub_100051150();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000F114()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000F16C()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v3 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v4 = [v2 prepareImageForDescriptor:v3];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v7 = result;
    [v5 scale];
    v9 = [objc_allocWithZone(UIImage) initWithCGImage:v7 scale:0 orientation:v8];

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F2E0()
{
  v1 = v0[2];
  v0[3] = *(v1 + 112);
  v0[4] = *(v1 + 120);
  return _swift_task_switch(sub_10000F310, 0, 0);
}

uint64_t sub_10000F310()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000F374()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000F3D0()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_10000F428(uint64_t a1)
{
  result = sub_10000F450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000F450()
{
  result = qword_100087508;
  if (!qword_100087508)
  {
    type metadata accessor for AirTagHSA2ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087508);
  }

  return result;
}

uint64_t sub_10000F4A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10000F2C4(a1, v1);
}

uint64_t sub_10000F540()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10000F640()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryType] = 2;
  v5 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryColor];
  *v5 = 0;
  v5[8] = 1;
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_deviceState] = 2;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData] = xmmword_100062C70;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture] = 0;
  v6 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account];
  *v6 = xmmword_100062C80;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 41) = 0u;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories] = 0;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets] = 0;
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isMultiDetection] = 0;
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingRestricted] = 2;
  v7 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult];
  *v9 = 0;
  v9[8] = -1;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_location] = 0;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole] = 0;
  *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation] = 0;
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_didAgreeToLinking] = 2;
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled] = 2;
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isBatteryLevelCritical] = 2;
  v10 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_device;
  v11 = type metadata accessor for Device();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isManateeAvailable] = 2;
  v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue] = 2;
  v4(&v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_beaconIdentifier], 1, 1, v3);
  v12 = &v1[OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId];
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x800000010005F5D0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000054DC(v13, qword_10008C038);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10005B0A0(0x292874696E69, 0xE600000000000000, &v22);
    *(v16 + 12) = 2080;
    v21 = *v1;
    sub_100003958(&qword_100087A90, &qword_100062F68);
    v17 = String.init<A>(describing:)();
    v19 = sub_10005B0A0(v17, v18, &v22);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return v1;
}

void *sub_10000FA3C()
{
  v1 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v16);
    *(v5 + 12) = 2080;
    v15 = *v1;
    sub_100003958(&qword_100087A90, &qword_100062F68);
    v6 = String.init<A>(describing:)();
    v8 = sub_10005B0A0(v6, v7, &v16);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_100004F1C(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID, &qword_100087AB8, &qword_100062F90);
  sub_100014CF8(*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8));

  sub_100014E30(*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 8), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 16), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 24), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 32), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 40), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 48), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 56));
  v9 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories);

  v10 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets);

  v11 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName + 8);

  v12 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji + 8);

  sub_10000A8A8(*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult), *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult + 8));

  sub_100004F1C(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_device, &qword_100087AA0, &qword_100062F78);
  sub_100004F1C(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_beaconIdentifier, &qword_100087AB8, &qword_100062F90);
  v13 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId + 8);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10000FD64()
{
  sub_10000FA3C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PairingContentStore()
{
  result = qword_100087590;
  if (!qword_100087590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FDE4()
{
  sub_10001473C(319, &qword_1000875A0, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_10001473C(319, &unk_1000875A8, &type metadata accessor for Device);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10000FF6C()
{
  sub_100004E64(0, &qword_100087AF0, LSBundleRecord_ptr);
  v1 = v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId;
  v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_findMyAppBundleId);
  v3 = *(v1 + 8);

  v4 = sub_100010160();
  v5 = [v4 localizedShortName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

id sub_100010160()
{
  v0 = String._bridgeToObjectiveC()();

  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100010238()
{
  if ((*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryColor + 8) & 1) != 0 || (v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_deviceState), v1 == 2))
  {
    sub_100014B3C();
    swift_allocError();
    *v2 = 2;
    return swift_willThrow();
  }

  v4 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryColor);
  v5 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8);
  if (v5 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v6 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData);
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
LABEL_12:
      sub_100014CF8(*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData), *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8));
      goto LABEL_14;
    }

    if (*(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    if ((v5 & 0xFF000000000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v6 != v6 >> 32)
  {
LABEL_22:
    sub_100014C90(*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData), *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8));
  }

LABEL_14:
  if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue) != 2)
  {
    v11 = (v4 == 99) | ((v1 & 1) << 8);
    if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue))
    {
      goto LABEL_18;
    }

LABEL_20:
    v12 = 0;
    return v12 | v11;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = MGGetBoolAnswer();

  v10 = v4 == 99;
  if (!v9)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = MGGetBoolAnswer();

    v11 = v10 & 0xFFFFFEFF | ((v1 & 1) << 8);
    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v11 = v10 & 0xFFFFFEFF | ((v1 & 1) << 8);
LABEL_18:
  v12 = 0x10000;
  return v12 | v11;
}

uint64_t sub_100010408()
{
  v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets);
  if (v1 && *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_deviceState) != 2)
  {
    if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue) == 2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets);

      v4 = String._bridgeToObjectiveC()();
      v5 = MGGetBoolAnswer();

      if (!v5)
      {
        v9 = String._bridgeToObjectiveC()();
        MGGetBoolAnswer();
      }

      v6 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isMultiDetection);
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isMultiDetection);
      v8 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets);
    }
  }

  else
  {
    sub_100014B3C();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
  }

  return v1;
}

id sub_100010564()
{
  v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole);
  if (!v2)
  {
    sub_100014B3C();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
    return v1;
  }

  v3 = v2;
  v4 = [v3 roleId];
  v1 = SPBeaconRoleIdOther;
  if (SPBeaconRoleIdOther == v4)
  {
    if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName + 8) && *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji + 8))
    {
      v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName);
      v5 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji);
      v6 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName + 8);

      return v1;
    }

    sub_100014B3C();
    swift_allocError();
    v12 = 5;
LABEL_10:
    *v11 = v12;
    swift_willThrow();

    return v1;
  }

  v8 = (v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v9 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 16);
  v32[0] = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v32[1] = v9;
  v33[0] = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 32);
  *(v33 + 9) = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 41);
  v10 = *(&v32[0] + 1);
  if (*(&v32[0] + 1) <= 1uLL)
  {
    sub_100014B3C();
    swift_allocError();
    v12 = 4;
    goto LABEL_10;
  }

  v34 = *&v32[0];
  v14 = v8[1];
  v30[0] = *v8;
  v30[1] = v14;
  v31[0] = v8[2];
  *(v31 + 9) = *(v8 + 41);
  sub_100014B90(v30, v29);
  if ([v3 roleId] == v1)
  {
    v15 = [objc_opt_self() mainBundle];
    v35._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0x4741545F524941;
    v16._object = 0xE700000000000000;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v35);
    object = v20._object;
    countAndFlagsBits = v20._countAndFlagsBits;
  }

  else
  {
    v15 = [v3 role];
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v21 = countAndFlagsBits;
  v22 = object;

  v23 = [objc_opt_self() mainBundle];
  v36._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0x4D414E5F454B414DLL;
  v24._object = 0xE900000000000045;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v36);

  sub_100003958(&qword_100086FB0, &unk_100062500);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100062C90;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_100004DB8();
  *(v26 + 32) = v34;
  *(v26 + 40) = v10;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = v21;
  *(v26 + 80) = v22;

  sub_100004F1C(v32, &qword_100087228, &unk_100062A30);
  v1 = static String.localizedStringWithFormat(_:_:)();

  v28 = [v3 roleEmoji];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

void sub_100010900(uint64_t *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult);
  v3 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult + 8);
  if (v3 == 255)
  {
    sub_100014B3C();
    swift_allocError();
    v20 = 1;
LABEL_10:
    *v19 = v20;
    swift_willThrow();
    return;
  }

  if ((v3 & 1) == 0)
  {
    sub_100014B3C();
    swift_allocError();
    v20 = 2;
    goto LABEL_10;
  }

  v4 = *v2;
  if (*v2 > 2)
  {
    if (v4 == 3)
    {
      goto LABEL_15;
    }

    v5 = a1;
    if (v4 == 4)
    {
      v21 = [objc_opt_self() mainBundle];
      v44._object = 0xE000000000000000;
      v36._countAndFlagsBits = 0x5F4B524F5754454ELL;
      v36._object = 0xED0000524F525245;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      v44._countAndFlagsBits = 0;
      v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v21, v37, v44);
      countAndFlagsBits = v38._countAndFlagsBits;
      object = v38._object;
      v25 = 4;
    }

    else
    {
      if (v4 != 5)
      {
        goto LABEL_17;
      }

      v21 = [objc_opt_self() mainBundle];
      v41._object = 0xE000000000000000;
      v22._countAndFlagsBits = 0x5F4449454C505041;
      v22._object = 0xEF4547415353454DLL;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v41._countAndFlagsBits = 0;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v41);
      countAndFlagsBits = v24._countAndFlagsBits;
      object = v24._object;
      v25 = 5;
    }

    sub_10000A8A8(v25, v3);

LABEL_20:
    v4 = 0;
    goto LABEL_21;
  }

  if (!v4)
  {
    v5 = a1;
    v27 = [objc_opt_self() mainBundle];
    v42._object = 0xE000000000000000;
    v28._object = 0x800000010005FCE0;
    v28._countAndFlagsBits = 0xD000000000000012;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v42);
    countAndFlagsBits = v30._countAndFlagsBits;
    object = v30._object;

    goto LABEL_20;
  }

  if (v4 == 1)
  {
LABEL_15:
    sub_100014B3C();
    swift_allocError();
    *v26 = 6;
    swift_willThrow();
    sub_10000A8A8(v4, v3);
    return;
  }

  v5 = a1;
  if (v4 != 2)
  {
LABEL_17:
    v31 = objc_opt_self();
    sub_10000A874(v4, v3);
    sub_10000A88C(v4, 1);
    v32 = [v31 mainBundle];
    v43._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0xD00000000000001CLL;
    v33._object = 0x800000010005FCA0;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v43._countAndFlagsBits = 0;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v43);
    countAndFlagsBits = v35._countAndFlagsBits;
    object = v35._object;

    sub_10000A8A8(v4, v3);
LABEL_21:
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v39._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  v8._object = 0x800000010005FCC0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v39);
  v11 = v10._countAndFlagsBits;
  v12 = v10._object;

  v13 = [v6 mainBundle];
  v40._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x45525F54494D494CLL;
  v14._object = 0xED00004445484341;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v40);
  countAndFlagsBits = v16._countAndFlagsBits;
  object = v16._object;
  sub_10000A8A8(2uLL, v3);

  v4 = 0;
LABEL_22:
  *v5 = v11;
  v5[1] = v12;
  v5[2] = countAndFlagsBits;
  v5[3] = object;
  v5[4] = v4;
}

void sub_100010D5C(Swift::String *a1@<X8>)
{
  v3 = type metadata accessor for Device();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &object - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003958(&qword_100087AA0, &qword_100062F78);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &object - v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = MGGetBoolAnswer();

  v14 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_device;
  swift_beginAccess();
  sub_100014D60(v1 + v14, v11, &qword_100087AA0, &qword_100062F78);
  if (!(*(v4 + 48))(v11, 1, v3))
  {
    (*(v4 + 16))(v7, v11, v3);
    sub_100004F1C(v11, &qword_100087AA0, &qword_100062F78);
    v127 = Device.deviceName.getter();
    v22 = v21;
    (*(v4 + 8))(v7, v3);
    if (v13)
    {
      if (!v22)
      {
LABEL_3:
        v15 = 0x800000010005FC30;
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 modelSpecificLocalizedStringKeyForKey:v17];

        if (v18)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v20;
        }

        else
        {
          v19 = 0xD000000000000016;
        }

        v35 = objc_opt_self();
        v77 = [v35 mainBundle];
        v132._object = 0xE000000000000000;
        v78._countAndFlagsBits = v19;
        v78._object = v15;
        v79._countAndFlagsBits = 0;
        v79._object = 0xE000000000000000;
        v132._countAndFlagsBits = 0;
        v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v132);
        object = v80._object;
        countAndFlagsBits = v80._countAndFlagsBits;

        v81 = 0x800000010005FC70;
        v82 = 0xD00000000000002ALL;
        v83 = String._bridgeToObjectiveC()();
        v84 = [v16 modelSpecificLocalizedStringKeyForKey:v83];

        if (v84)
        {
          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v85;
        }

        v86 = [v35 mainBundle];
        v133._object = 0xE000000000000000;
        v87._countAndFlagsBits = v82;
        v87._object = v81;
        v88._countAndFlagsBits = 0;
        v88._object = 0xE000000000000000;
        v133._countAndFlagsBits = 0;
        v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v133);
        v49 = v89._countAndFlagsBits;
        v51 = v89._object;

        v74 = 0x800000010005FBE0;
        v90 = String._bridgeToObjectiveC()();
        v76 = [v16 modelSpecificLocalizedStringKeyForKey:v90];

        if (!v76)
        {
          v91 = 0xD000000000000016;
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      v23 = 0x800000010005FC30;
      v24 = objc_opt_self();
      v25 = String._bridgeToObjectiveC()();
      v26 = [v24 modelSpecificLocalizedStringKeyForKey:v25];

      if (v26)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v28;
      }

      else
      {
        v27 = 0xD000000000000016;
      }

      v35 = objc_opt_self();
      v100 = [v35 mainBundle];
      v135._object = 0xE000000000000000;
      v101._countAndFlagsBits = v27;
      v101._object = v23;
      v102._countAndFlagsBits = 0;
      v102._object = 0xE000000000000000;
      v135._countAndFlagsBits = 0;
      v103 = NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, v100, v102, v135);
      object = v103._object;
      countAndFlagsBits = v103._countAndFlagsBits;

      v104 = 0x800000010005FC50;
      v105 = 0xD00000000000001FLL;
      v106 = String._bridgeToObjectiveC()();
      v107 = [v24 modelSpecificLocalizedStringKeyForKey:v106];

      if (v107)
      {
        v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v108;
      }

      v109 = [v35 mainBundle];
      v136._object = 0xE000000000000000;
      v110._countAndFlagsBits = v105;
      v110._object = v104;
      v111._countAndFlagsBits = 0;
      v111._object = 0xE000000000000000;
      v136._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v110, 0, v109, v111, v136);

      sub_100003958(&qword_100086FB0, &unk_100062500);
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_1000623F0;
      *(v112 + 56) = &type metadata for String;
      *(v112 + 64) = sub_100004DB8();
      *(v112 + 32) = v127;
      *(v112 + 40) = v22;
      v49 = String.init(format:arguments:)();
      v51 = v113;

      v52 = 0x800000010005FBE0;
      v114 = String._bridgeToObjectiveC()();
      v54 = [v24 modelSpecificLocalizedStringKeyForKey:v114];

      if (!v54)
      {
        v115 = 0xD000000000000016;
        goto LABEL_37;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_16;
      }

      v29 = 0x800000010005FB90;
      v30 = objc_opt_self();
      v31 = 0xD00000000000001ALL;
      v32 = String._bridgeToObjectiveC()();
      v33 = [v30 modelSpecificLocalizedStringKeyForKey:v32];

      if (v33)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v34;
      }

      v35 = objc_opt_self();
      v36 = [v35 mainBundle];
      v128._object = 0xE000000000000000;
      v37._countAndFlagsBits = v31;
      v37._object = v29;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v128._countAndFlagsBits = 0;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v128);
      object = v39._object;
      countAndFlagsBits = v39._countAndFlagsBits;

      v40 = 0x800000010005FBB0;
      v41 = 0xD000000000000023;
      v42 = String._bridgeToObjectiveC()();
      v43 = [v30 modelSpecificLocalizedStringKeyForKey:v42];

      if (v43)
      {
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v44;
      }

      v45 = [v35 mainBundle];
      v129._object = 0xE000000000000000;
      v46._countAndFlagsBits = v41;
      v46._object = v40;
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v129._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v129);

      sub_100003958(&qword_100086FB0, &unk_100062500);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1000623F0;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = sub_100004DB8();
      *(v48 + 32) = v127;
      *(v48 + 40) = v22;
      v49 = String.init(format:arguments:)();
      v51 = v50;

      v52 = 0x800000010005FBE0;
      v53 = String._bridgeToObjectiveC()();
      v54 = [v30 modelSpecificLocalizedStringKeyForKey:v53];

      if (!v54)
      {
        v115 = 0xD000000000000016;
        goto LABEL_37;
      }
    }

    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v116;

LABEL_37:
    v94 = [v35 mainBundle];
    v137._object = 0xE000000000000000;
    v117._countAndFlagsBits = v115;
    v117._object = v52;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    v137._countAndFlagsBits = 0;
    v119 = NSLocalizedString(_:tableName:bundle:value:comment:)(v117, 0, v94, v118, v137);
    v98 = v119._countAndFlagsBits;
    v99 = v119._object;
    v93 = 0;
    goto LABEL_38;
  }

  sub_100004F1C(v11, &qword_100087AA0, &qword_100062F78);
  v127 = 0;
  if (v13)
  {
    goto LABEL_3;
  }

LABEL_16:
  v55 = 0x800000010005FB90;
  v56 = objc_opt_self();
  v57 = 0xD00000000000001ALL;
  v58 = String._bridgeToObjectiveC()();
  v59 = [v56 modelSpecificLocalizedStringKeyForKey:v58];

  if (v59)
  {
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v60;
  }

  v35 = objc_opt_self();
  v61 = [v35 mainBundle];
  v130._object = 0xE000000000000000;
  v62._countAndFlagsBits = v57;
  v62._object = v55;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v130._countAndFlagsBits = 0;
  v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, 0, v61, v63, v130);
  object = v64._object;
  countAndFlagsBits = v64._countAndFlagsBits;

  v65 = 0x800000010005FC00;
  v66 = 0xD00000000000002ELL;
  v67 = String._bridgeToObjectiveC()();
  v68 = [v56 modelSpecificLocalizedStringKeyForKey:v67];

  if (v68)
  {
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v69;
  }

  v70 = [v35 mainBundle];
  v131._object = 0xE000000000000000;
  v71._countAndFlagsBits = v66;
  v71._object = v65;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v131._countAndFlagsBits = 0;
  v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v131);
  v49 = v73._countAndFlagsBits;
  v51 = v73._object;

  v74 = 0x800000010005FBE0;
  v75 = String._bridgeToObjectiveC()();
  v76 = [v56 modelSpecificLocalizedStringKeyForKey:v75];

  if (!v76)
  {
    v91 = 0xD000000000000016;
    goto LABEL_29;
  }

LABEL_26:
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v92;

LABEL_29:
  v93 = v127;
  v94 = [v35 mainBundle];
  v134._object = 0xE000000000000000;
  v95._countAndFlagsBits = v91;
  v95._object = v74;
  v96._countAndFlagsBits = 0;
  v96._object = 0xE000000000000000;
  v134._countAndFlagsBits = 0;
  v97 = NSLocalizedString(_:tableName:bundle:value:comment:)(v95, 0, v94, v96, v134);
  v98 = v97._countAndFlagsBits;
  v99 = v97._object;
LABEL_38:

  v120 = [v35 mainBundle];
  v138._object = 0xE000000000000000;
  v121._countAndFlagsBits = 0x574F4E5F544F4ELL;
  v121._object = 0xE700000000000000;
  v122._countAndFlagsBits = 0;
  v122._object = 0xE000000000000000;
  v138._countAndFlagsBits = 0;
  v123 = NSLocalizedString(_:tableName:bundle:value:comment:)(v121, v93, v120, v122, v138);

  v124 = object;
  a1->_countAndFlagsBits = countAndFlagsBits;
  a1->_object = v124;
  a1[1]._countAndFlagsBits = v49;
  a1[1]._object = v51;
  a1[2]._countAndFlagsBits = v98;
  a1[2]._object = v99;
  a1[3] = v123;
}

uint64_t sub_1000119F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003958(&qword_100087AB8, &qword_100062F90);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23[-1] - v9;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000054DC(v11, qword_10008C038);
  sub_100014D60(a1, v10, &qword_100087AB8, &qword_100062F90);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = a1;
    v15 = v14;
    v23[0] = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_10005B0A0(0xD00000000000001CLL, 0x800000010005FB70, v23);
    *(v15 + 12) = 2080;
    sub_100014D60(v10, v8, &qword_100087AB8, &qword_100062F90);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    sub_100004F1C(v10, &qword_100087AB8, &qword_100062F90);
    v19 = sub_10005B0A0(v16, v18, v23);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s %s", v15, 0x16u);
    swift_arrayDestroy();

    a1 = v22;
  }

  else
  {

    sub_100004F1C(v10, &qword_100087AB8, &qword_100062F90);
  }

  v20 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryID;
  swift_beginAccess();
  sub_100014DC8(a1, v2 + v20, &qword_100087AB8, &qword_100062F90);
  return swift_endAccess();
}

void sub_100011CC8(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001ELL, 0x800000010005FB50, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087AE8, &qword_100062FB0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryType) = a1;
}

void sub_100011E7C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10005B0A0(0xD00000000000001FLL, 0x800000010005FB30, &v14);
    *(v9 + 12) = 2080;
    sub_100003958(&qword_100087AE0, &qword_100062FA8);
    v10 = String.init<A>(describing:)();
    v12 = sub_10005B0A0(v10, v11, &v14);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_accessoryColor;
  *v13 = a1;
  *(v13 + 8) = a2 & 1;
}

void sub_100012050(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001CLL, 0x800000010005FB10, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087AD8, &qword_100062FA0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_deviceState) = a1;
}

uint64_t sub_100012204(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  sub_100014C90(a1, a2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v7, v8))
  {
    sub_100014CF8(a1, a2);
    goto LABEL_17;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v17 = v10;
  *v9 = 136446466;
  *(v9 + 4) = sub_10005B0A0(0xD00000000000001ELL, 0x800000010005FAF0, &v17);
  *(v9 + 12) = 1026;
  if (a2 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (!v12)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  if (a1 != a1 >> 32)
  {
    goto LABEL_15;
  }

LABEL_5:
  v11 = 0;
LABEL_16:
  *(v9 + 14) = v11;
  sub_100014CF8(a1, a2);
  _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %{BOOL,public}d", v9, 0x12u);
  sub_10000A5C4(v10);

LABEL_17:

  v13 = (v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData);
  v14 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData);
  v15 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_engravingData + 8);
  *v13 = a1;
  v13[1] = a2;
  sub_100014C90(a1, a2);

  return sub_100014CF8(v14, v15);
}

uint64_t sub_100012420(__int128 *a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  sub_100014D60(a1, &v18, &qword_100087228, &unk_100062A30);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100004F1C(a1, &qword_100087228, &unk_100062A30);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001DLL, 0x800000010005FAD0, &v16);
    *(v7 + 12) = 2080;
    v8 = a1[1];
    v18 = *a1;
    v19 = v8;
    v20[0] = a1[2];
    *(v20 + 9) = *(a1 + 41);
    sub_100014D60(a1, v17, &qword_100087228, &unk_100062A30);
    sub_100003958(&qword_100087228, &unk_100062A30);
    v9 = String.init<A>(describing:)();
    v11 = sub_10005B0A0(v9, v10, &v16);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v12 = (v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v13 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 16);
  v18 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account);
  v19 = v13;
  v20[0] = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 32);
  *(v20 + 9) = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 41);
  v14 = a1[1];
  *v12 = *a1;
  v12[1] = v14;
  v12[2] = a1[2];
  *(v12 + 41) = *(a1 + 41);
  sub_100014D60(a1, v17, &qword_100087228, &unk_100062A30);
  return sub_100004F1C(&v18, &qword_100087228, &unk_100062A30);
}

void sub_10001269C(void *a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10005B0A0(0xD00000000000001FLL, 0x800000010005FAB0, &v15);
    *(v8 + 12) = 2080;
    v9 = v5;
    sub_100003958(&qword_100087AD0, &qword_100062F98);
    v10 = String.init<A>(describing:)();
    v12 = sub_10005B0A0(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture);
  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture) = a1;
  v14 = v5;
}

uint64_t sub_100012874(uint64_t a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD000000000000018, 0x800000010005FA90, &v13);
    *(v7 + 12) = 2080;
    sub_100004E64(0, &qword_100087AC8, SPBeaconRoleCategory_ptr);
    v8 = Array.description.getter();
    v10 = sub_10005B0A0(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories);
  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_roleCategories) = a1;
}

void sub_100012A58(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x800000010005FA70, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{BOOL}d", v7, 0x12u);
    sub_10000A5C4(v8);
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingRestricted) = a1 & 1;
}

uint64_t sub_100012BC0(uint64_t a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD000000000000015, 0x800000010005FA50, &v13);
    *(v7 + 12) = 2080;

    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets);
  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_videoAssets) = a1;
}

void sub_100012D90(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD000000000000018, 0x800000010005FA30, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{BOOL}d", v7, 0x12u);
    sub_10000A5C4(v8);
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isMultiDetection) = a1 & 1;
}

void sub_100012EF8(void *a1, uint64_t a2)
{
  v5 = sub_100003958(&qword_100087AB8, &qword_100062F90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    v14 = v12;
    do
    {
      sub_100013200(v14, a1);
      v14 += v13;
      --v9;
    }

    while (v9);
    v15 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation);
    *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation) = a1;
    v16 = a1;

    (*(v11 + 16))(v8, v12, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    v17 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_beaconIdentifier;
    swift_beginAccess();
    sub_100014BC8(v8, v2 + v17);
    swift_endAccess();
  }

  else
  {
    v18 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation);
    *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingLocation) = a1;
    v19 = a1;

    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000054DC(v20, qword_10008C038);
    v26 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10005B0A0(0xD000000000000022, 0x800000010005FA00, &v27);
      _os_log_impl(&_mh_execute_header, v26, v21, "%s Missing beaconId!", v22, 0xCu);
      sub_10000A5C4(v23);
    }

    else
    {
      v24 = v26;
    }
  }
}

void sub_100013200(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  (*(v6 + 16))(v9, a1, v5);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v2;
    v15 = v14;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v15 = 136446979;
    *(v15 + 4) = sub_10005B0A0(0xD000000000000022, 0x800000010005FA00, &v27);
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    sub_100014C38();
    v23 = v12;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    v19 = sub_10005B0A0(v16, v18, &v27);

    *(v15 + 24) = v19;
    *(v15 + 32) = 2112;
    *(v15 + 34) = v11;
    v20 = v24;
    *v24 = a2;
    v21 = v11;
    v22 = v23;
    _os_log_impl(&_mh_execute_header, v23, v13, "%{public}s beaconId:%{private,mask.hash}s location:%@ ", v15, 0x2Au);
    sub_100004F1C(v20, &qword_100087AA8, &unk_100062F80);

    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100013508(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10005B0A0(0xD000000000000014, 0x800000010005F9E0, &v13);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10005B0A0(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = (v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName);
  v11 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customName + 8);
  *v10 = a1;
  v10[1] = a2;
}

uint64_t sub_1000136C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10005B0A0(0x6D45657461647075, 0xEF293A5F28696A6FLL, &v13);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10005B0A0(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = (v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji);
  v11 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_customEmoji + 8);
  *v10 = a1;
  v10[1] = a2;
}

void sub_100013890(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x800000010005F9C0, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{BOOL}d", v7, 0x12u);
    sub_10000A5C4(v8);
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_didAgreeToLinking) = a1 & 1;
}

unint64_t sub_1000139F8(unint64_t a1, char a2)
{
  v3 = v2;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000054DC(v6, qword_10008C038);
  sub_10000A88C(a1, a2 & 1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10000A8C0(a1, a2 & 1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10005B0A0(0xD00000000000001ELL, 0x800000010005F9A0, &v18);
    *(v9 + 12) = 2080;
    sub_10000A88C(a1, a2 & 1);
    sub_100003958(&qword_100087AB0, &qword_1000636E0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10005B0A0(v10, v11, &v18);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult;
  v14 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_pairingResult);
  *v13 = a1;
  v15 = a2 & 1;
  v16 = *(v13 + 8);
  *(v13 + 8) = v15;
  sub_10000A88C(a1, v15);
  return sub_10000A8A8(v14, v16);
}

void sub_100013C0C(void *a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_10005B0A0(0xD000000000000016, 0x800000010005F980, &v14);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s %@", v8, 0x16u);
    sub_100004F1C(v9, &qword_100087AA8, &unk_100062F80);

    sub_10000A5C4(v10);
  }

  v13 = *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole);
  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_selectedRole) = v5;
  v12 = v5;
}

void sub_100013DE4(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001ELL, 0x800000010005F960, &v9);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{BOOL}d", v7, 0x12u);
    sub_10000A5C4(v8);
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isFindMyAppInstalled) = a1 & 1;
}

void sub_100013F4C(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x800000010005F940, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087A98, &qword_100062F70);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_greenTeaTestValue) = a1;
}

void sub_100014100(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001BLL, 0x800000010005F920, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087A98, &qword_100062F70);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isBatteryLevelCritical) = a1;
}

uint64_t sub_1000142B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_100003958(&qword_100087AA0, &qword_100062F78) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22[-1] - v8;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  sub_100014D60(a1, v9, &qword_100087AA0, &qword_100062F78);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a1;
    v14 = v13;
    v22[0] = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_10005B0A0(0xD000000000000015, 0x800000010005F900, v22);
    *(v14 + 12) = 2080;
    sub_100014D60(v9, v7, &qword_100087AA0, &qword_100062F78);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100004F1C(v9, &qword_100087AA0, &qword_100062F78);
    v18 = sub_10005B0A0(v15, v17, v22);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s %s", v14, 0x16u);
    swift_arrayDestroy();

    a1 = v21;
  }

  else
  {

    sub_100004F1C(v9, &qword_100087AA0, &qword_100062F78);
  }

  v19 = OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_device;
  swift_beginAccess();
  sub_100014DC8(a1, v2 + v19, &qword_100087AA0, &qword_100062F78);
  return swift_endAccess();
}

void sub_100014588(char a1)
{
  v2 = v1;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000054DC(v4, qword_10008C038);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10005B0A0(0xD00000000000001FLL, 0x800000010005F8E0, &v11);
    *(v7 + 12) = 2080;
    sub_100003958(&qword_100087A98, &qword_100062F70);
    v8 = String.init<A>(describing:)();
    v10 = sub_10005B0A0(v8, v9, &v11);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_isManateeAvailable) = a1;
}

void sub_10001473C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100014790(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000147B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001480C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_10001485C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100014898(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000148B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000148CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001491C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_10001497C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000149C0(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v15._object = 0xE000000000000000;
  v4._object = 0x800000010005F880;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  v7 = [v2 mainBundle];
  v16._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000017;
  v8._object = 0x800000010005F8A0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v16);

  v11 = [v2 mainBundle];
  v17._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  v12._object = 0x800000010005F8C0;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v17);

  *a1 = v6;
  a1[1] = v10;
  a1[2] = v14;
}

unint64_t sub_100014B3C()
{
  result = qword_100087A88;
  if (!qword_100087A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087A88);
  }

  return result;
}

uint64_t sub_100014BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003958(&qword_100087AB8, &qword_100062F90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014C38()
{
  result = qword_100087AC0;
  if (!qword_100087AC0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087AC0);
  }

  return result;
}

uint64_t sub_100014C90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014CA4(a1, a2);
  }

  return a1;
}

uint64_t sub_100014CA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100014CF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014D0C(a1, a2);
  }

  return a1;
}

uint64_t sub_100014D0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100014D60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003958(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014DC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003958(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_100014E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a2 != 1)
  {
    sub_100014E40(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_100014E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a2)
  {

    sub_100014EB4(a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100014EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingContentStore.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingContentStore.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100015068(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001507C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000150C4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100015124(uint64_t a1, int a2)
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

uint64_t sub_10001516C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000151BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100015204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100015268()
{
  result = qword_100087AF8;
  if (!qword_100087AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087AF8);
  }

  return result;
}

uint64_t sub_1000152BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000152D8, a2, 0);
}

uint64_t sub_1000152D8()
{
  **(v0 + 16) = *(*(v0 + 24) + 112);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100015348(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_defaultActor_initialize();
  v4[14] = _swiftEmptyArrayStorage;
  v4[15] = a1;
  v4[16] = 0;
  v4[17] = a2;
  v4[18] = a3;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  swift_bridgeObjectRetain_n();

  sub_100015FB8(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v25 = v4;
  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = [v11 role];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      sub_100015FB8((v17 > 1), v18 + 1, 1);
    }

    ++v10;
    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[2 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
  }

  while (v9 != v10);

  v4 = v25;
  v8 = a1 >> 62;
LABEL_14:
  v20 = v4[14];
  v4[14] = _swiftEmptyArrayStorage;

  if (!v8)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_21:

    v23 = 0;
    goto LABEL_22;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_24:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(a1 + 32);
LABEL_19:
    v23 = v22;

LABEL_22:
    v24 = v4[16];
    v4[16] = v23;

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001559C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1000155BC, 0, 0);
}

uint64_t sub_1000155BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v4 = v3[3];
  v6 = *(v5 + 120);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v4)
    {
      v7 = *(v6 + 8 * v4 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return _swift_task_switch(v4, v6, a3);
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v5 = v3[2];
LABEL_5:
  v3[4] = v7;
  v4 = sub_100015664;
  v6 = v5;
  a3 = 0;

  return _swift_task_switch(v4, v6, a3);
}

uint64_t sub_100015664()
{
  v1 = v0[2];
  v2 = *(v1 + 128);
  *(v1 + 128) = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000156EC()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 24) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100015760, 0, 0);
}

uint64_t sub_100015760()
{
  if (v0[3])
  {
    v1 = v0[2];

    return _swift_task_switch(sub_1000158B8, v1, 0);
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000054DC(v2, qword_10008C038);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Can't continue, no role picked!", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000158B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 144);
  v7 = (*(v1 + 136) + **(v1 + 136));
  v4 = *(*(v1 + 136) + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1000159AC;

  return v7(v2);
}

uint64_t sub_1000159AC()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100015AA8, 0, 0);
}

uint64_t sub_100015AA8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015B08()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100015B8C()
{

  sub_100003958(&qword_100087BC8, &qword_100063330);
  unsafeFromAsyncTask<A>(_:)();

  return v1;
}

uint64_t sub_100015BF4()
{

  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_100015C4C(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_100015CD4(uint64_t a1)
{
  result = sub_100015CFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015CFC()
{
  result = qword_100087BC0;
  if (!qword_100087BC0)
  {
    type metadata accessor for AirTagRolePickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087BC0);
  }

  return result;
}

uint64_t sub_100015D50()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015D88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F540;

  return sub_10001559C(a1, v5, v4);
}

uint64_t sub_100015E34(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000156D0(a1, v1);
}

uint64_t sub_100015ED0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100015F1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000152BC(a1, v1);
}

char *sub_100015FB8(char *a1, int64_t a2, char a3)
{
  result = sub_100015FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015FD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003958(&unk_100087BD0, qword_100063338);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_1000160E4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100016164;
  }

  __break(1u);
  return result;
}

void sub_1000161D4()
{
  v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapView];
  [v1 setAutoresizingMask:18];
  [v1 setDelegate:v0];
  [v1 setUserInteractionEnabled:0];
  v2 = [objc_opt_self() filterIncludingAllCategories];
  [v1 setPointOfInterestFilter:v2];

  [v1 setShowsAttribution:0];
  [v1 setShowsBuildings:1];
  v3 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapAnnotation];
  if (v3)
  {
    [v1 setRegion:{*(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region), *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region + 8), *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region + 16), *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region + 24)}];
  }

  type metadata accessor for AirTagAnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v5];

  v6 = [objc_allocWithZone(UIView) init];
  [v6 setClipsToBounds:1];
  [v6 addSubview:v1];
  [v0 setView:v6];
}

id sub_1000164C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagMapViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001656C(void *a1)
{
  type metadata accessor for AirTagMapAnnotation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapAnnotation);
    if (v4)
    {
      v5 = result;
      swift_unknownObjectRetain();
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        v8 = String._bridgeToObjectiveC()();
        v9 = [a1 dequeueReusableAnnotationViewWithIdentifier:v8 forAnnotation:v5];

        type metadata accessor for AirTagAnnotationView();
        v10 = swift_dynamicCastClassUnconditional();
        v11 = v9;
        [v10 setCanShowCallout:1];
        [v10 setAllowsPulse:1];
        v12 = *(v5 + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_pairingLocation);
        [v10 updateStateFromLocation:v12 duration:0.0];

        swift_unknownObjectRelease();
        return v10;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void *sub_100016760(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = &_swiftEmptyArrayStorage;
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject roles];
      sub_100004E64(0, &qword_100087E10, SPBeaconRole_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v33 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_100035F08(&qword_100087E20, &qword_100087E18, &qword_1000638C0);
            for (i = 0; i != v17; ++i)
            {
              sub_100003958(&qword_100087E18, &qword_1000638C0);
              v20 = sub_1000160E4(v32, i, v8);
              v22 = *v21;
              (v20)(v32, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100016AE0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000016;
    v6 = 0x61466D6F74737563;
    if (a1 == 10)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 == 9)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xD000000000000013;
    if (a1 == 7)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v8 = v5;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x794D646E69466F6ELL;
    v2 = 0x53676E6972696170;
    v3 = 0x54676E6972696170;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000019;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100016C88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100016AE0(*a1);
  v5 = v4;
  if (v3 == sub_100016AE0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100016D10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100016AE0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100016D74()
{
  sub_100016AE0(*v0);
  String.hash(into:)();
}

Swift::Int sub_100016DC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100016AE0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100016E28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100034730(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100016E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016AE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100016E94()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100003958(&qword_100087E30, &qword_1000638F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(SPAccessoryDiscoveryAndPairingSession) initWithPreviousState:0];
  v0[15] = [objc_allocWithZone(SPBeaconManager) init];
  v8 = sub_100003958(&qword_100087E38, &qword_100063900);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[16] = AsyncStreamProvider.init()();
  v11 = type metadata accessor for PairingContentStore();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[17] = sub_10000F640();
  type metadata accessor for PairingAccountStore();
  v14 = swift_allocObject();
  *(v14 + 16) = [objc_opt_self() sharedInstance];
  *(v14 + 24) = [objc_opt_self() defaultStore];
  v1[18] = v14;
  type metadata accessor for PairingViewModelFactory();
  v1[19] = swift_allocObject();
  type metadata accessor for WorkItemQueue();
  v15 = type metadata accessor for WorkItemQueue.WarningOptions();
  v1[20] = 0;
  v1[21] = 0;
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  UUID.init()();
  v1[22] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v1 + 92) = 3072;
  type metadata accessor for PairingStateManager();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  *(v16 + 128) = 0;
  *(v16 + 136) = _swiftEmptyArrayStorage;
  v1[24] = v16;
  v1[25] = [objc_allocWithZone(GEOLocationShifter) init];
  swift_unknownObjectWeakInit();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000054DC(v17, qword_10008C038);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_10005B0A0(0x292874696E69, 0xE600000000000000, &v26);
    *(v20 + 12) = 2080;
    v25 = *v1;
    sub_100003958(&qword_100087E40, &qword_100063908);
    v21 = String.init<A>(describing:)();
    v23 = sub_10005B0A0(v21, v22, &v26);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  return v1;
}

uint64_t *sub_1000172E4()
{
  v1 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v18);
    *(v5 + 12) = 2080;
    v17 = *v1;
    sub_100003958(&qword_100087E40, &qword_100063908);
    v6 = String.init<A>(describing:)();
    v8 = sub_10005B0A0(v6, v7, &v18);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v1[16];

  v10 = v1[17];

  v11 = v1[18];

  v12 = v1[19];

  v13 = v1[20];
  swift_unknownObjectRelease();
  v14 = v1[22];

  v15 = v1[24];

  sub_100036D08((v1 + 26));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100017518()
{
  sub_1000172E4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t getEnumTagSinglePayload for PairingContentViewModel.TestRunScenario(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingContentViewModel.TestRunScenario(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000176C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000176E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100017730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000177D4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100017820()
{
  result = qword_100087D98;
  if (!qword_100087D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087D98);
  }

  return result;
}

uint64_t sub_100017874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100017898, 0, 0);
}

uint64_t sub_100017898()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 192);
    v0[9] = v3;

    return _swift_task_switch(sub_100017968, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100017968()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v1 + 112) = v0[6];
  *(v1 + 120) = v2;

  sub_10000A788(v3);

  return _swift_task_switch(sub_1000179F8, 0, 0);
}

uint64_t sub_1000179F8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100017A5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 2728) = a2;
  *(v2 + 2680) = a1;
  return _swift_task_switch(sub_100017A80, 0, 0);
}

uint64_t sub_100017A80()
{
  v1 = v0[335];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[347] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[353] = v3;
    *v3 = v0;
    v3[1] = sub_100017B78;
    v4 = v0[341];

    return sub_100018534(v4);
  }

  else
  {
    sub_10000A788(0);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100017B78()
{
  v2 = *(*v1 + 2824);
  v5 = *v1;
  *(*v1 + 2872) = v0;

  if (v0)
  {
    v3 = sub_100018000;
  }

  else
  {
    v3 = sub_100017C8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100017C8C()
{
  v1 = *(v0 + 2776);

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 656, v2, sub_100017DB8, v0 + 2640);
}

uint64_t sub_100017DB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 2920) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100018064, v3 + 2688);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 1296, a2, sub_100017DF8, v3 + 2880);
  }
}

uint64_t sub_100017DF8(uint64_t a1, uint64_t a2)
{
  *(v3 + 2968) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100018198, v3 + 2928);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 1936, a2, sub_100017E38, v3 + 3120);
  }
}

uint64_t sub_100017E38(uint64_t a1, uint64_t a2)
{
  *(v3 + 3016) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_1000182CC, v3 + 3168);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 16, a2, sub_100017E78, v3 + 3360);
  }
}

uint64_t sub_100017E78(uint64_t a1, uint64_t a2)
{
  *(v3 + 3064) = v2;
  if (v2)
  {
    v4 = sub_100018400;
    v5 = v3 + 16;
    v6 = v3 + 3408;
  }

  else
  {
    v4 = sub_100017EB8;
    v5 = v3 + 16;
    v6 = v3 + 3600;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100017F7C()
{
  v1 = *(v0 + 2776);

  v2 = *(v0 + 2776);
  sub_10000A788(&unk_100063968);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100018000()
{
  v1 = v0[359];
  v2 = v0[347];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100018128()
{
  v1 = v0[347];

  v2 = v0[365];
  v3 = v0[347];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001825C()
{
  v1 = v0[347];

  v2 = v0[371];
  v3 = v0[347];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100018390()
{
  v1 = v0[347];

  v2 = v0[377];
  v3 = v0[347];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000184C4()
{
  v1 = v0[347];

  v2 = v0[383];
  v3 = v0[347];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100018534(uint64_t a1)
{
  v2[171] = v1;
  v2[170] = a1;
  v3 = *(*(sub_100003958(&qword_100087AB8, &qword_100062F90) - 8) + 64) + 15;
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[174] = v4;
  v5 = *(v4 - 8);
  v2[175] = v5;
  v6 = *(v5 + 64) + 15;
  v2[176] = swift_task_alloc();

  return _swift_task_switch(sub_10001863C, v1, 0);
}

uint64_t sub_1000197EC()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1376);
  sub_1000119F4(v2);
  sub_100004F1C(v2, &qword_100087AB8, &qword_100062F90);

  return _swift_task_switch(sub_100019874, v1, 0);
}

uint64_t sub_100019874()
{
  v1 = *(v0 + 1440);
  sub_100011CC8(*(v0 + 1321));

  return _swift_task_switch(sub_1000198E0, v1, 0);
}

uint64_t sub_1000198E0()
{
  v1 = *(v0 + 1440);
  sub_100011E7C(*(v0 + 1416), 0);

  return _swift_task_switch(sub_100019950, v1, 0);
}

uint64_t sub_100019950()
{
  v1 = *(v0 + 1440);
  sub_100012050(*(v0 + 1322));

  return _swift_task_switch(sub_1000199BC, v1, 0);
}

uint64_t sub_1000199BC()
{
  v1 = v0[180];
  sub_100012204(v0[178], v0[179]);

  return _swift_task_switch(sub_100019A2C, v1, 0);
}

uint64_t sub_100019A2C()
{
  v1 = *(v0 + 1440);
  sub_100013F4C(*(v0 + 1311));

  return _swift_task_switch(sub_100019A98, v1, 0);
}

uint64_t sub_100019A98()
{
  v1 = *(v0 + 1440);
  sub_100014100(*(v0 + 1308));

  return _swift_task_switch(sub_100019B04, v1, 0);
}

uint64_t sub_100019B04()
{
  v1 = *(v0 + 1440);
  sub_100014588(*(v0 + 1309));

  return _swift_task_switch(sub_100019B70, v1, 0);
}

uint64_t sub_100019B70()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1368);
  sub_100012D90(*(v0 + 1310) & 1);

  return _swift_task_switch(sub_100019BE4, v2, 0);
}

uint64_t sub_100019BE4()
{
  v1 = v0[178];
  v20 = v0[176];
  v2 = v0[175];
  v18 = v0[179];
  v19 = v0[174];
  v3 = *(v0[171] + 112);
  v4 = swift_allocObject();
  swift_weakInit();
  v0[18] = sub_100036624;
  v0[19] = v4;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_10002E794;
  v0[17] = &unk_10007A678;
  v5 = _Block_copy(v0 + 14);
  v6 = v0[19];

  [v3 setProximityPairingErrorCallback:v5];
  _Block_release(v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v0[12] = sub_100036644;
  v0[13] = v7;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10002EED4;
  v0[11] = &unk_10007A6A0;
  v8 = _Block_copy(v0 + 8);
  v9 = v0[13];

  [v3 setNotifyPairingAccessoryChanged:v8];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_10003664C;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100030288;
  v0[5] = &unk_10007A6C8;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v3 setProximityPairingCompletedCallback:v11];
  _Block_release(v11);
  sub_100014CF8(v1, v18);
  (*(v2 + 8))(v20, v19);
  v13 = v0[176];
  v14 = v0[173];
  v15 = v0[172];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100019EBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_100019F4C();
}

uint64_t sub_100019F4C()
{
  *(v1 + 464) = v0;
  v2 = *(*(sub_100003958(&qword_100087DB0, &qword_1000636B0) - 8) + 64) + 15;
  *(v1 + 472) = swift_task_alloc();

  return _swift_task_switch(sub_100019FE8, v0, 0);
}

uint64_t sub_100019FE8()
{
  v1 = v0[58];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 176);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = *(v0[58] + 136);
    v0[60] = v3;

    return _swift_task_switch(sub_10001A0E8, v3, 0);
  }

  else
  {
    v4 = v0[59];
    sub_10003477C();
    swift_allocError();
    *v5 = 5;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10001A0E8()
{
  v1 = *(v0 + 480);
  if (*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_account + 8) == 1)
  {
    v2 = *(v0 + 464);
    if (*(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService19PairingContentStore_profilePicture))
    {
      v3 = sub_100037090;
    }

    else
    {
      v3 = sub_10001A278;
    }
  }

  else
  {
    v2 = *(v0 + 464);
    v3 = sub_10001A158;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10001A158()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Account info already saved!", v4, 2u);
  }

  v5 = *(v0 + 472);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001A278()
{
  v1 = *(v0 + 464);
  if (*(v1 + 184) != 1)
  {
    v10 = *(v0 + 472);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v13 = sub_100036CC0(&qword_100087E50, v12, type metadata accessor for PairingContentViewModel);
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v13;
    v14[4] = v1;
    swift_retain_n();
    sub_100053D04(0, 0, v10, &unk_1000639A8, v14);

    v15 = swift_allocObject();
    *(v0 + 488) = v15;
    swift_weakInit();
    v16 = async function pointer to withTimeout<A>(_:block:)[1];
    v17 = swift_task_alloc();
    *(v0 + 496) = v17;
    v9 = sub_100003958(&qword_100087E58, &qword_1000639C0);
    *v17 = v0;
    v17[1] = sub_10001A614;
    v7 = &unk_1000639B8;
    v5 = 0x8AC7230489E80000;
    v4 = v0 + 272;
    v6 = 0;
    v8 = v15;

    return withTimeout<A>(_:block:)(v4, v5, v6, v7, v8, v9);
  }

  v2 = (v0 + 400);
  v3 = *(v1 + 185);
  if (!*(v1 + 185))
  {
    goto LABEL_13;
  }

  if (v3 == 1)
  {
LABEL_12:
    *(v0 + 400) = 1802658125;
    *(v0 + 408) = 0xE400000000000000;
    *(v0 + 416) = 0;
    *(v0 + 424) = 0x373635343332312BLL;
    *(v0 + 432) = 0xEB00000000303938;
    *(v0 + 440) = 0;
    *(v0 + 448) = 0;
    *(v0 + 456) = 1;
    goto LABEL_14;
  }

  if (v3 == 12)
  {
    v4 = sub_1000346A4(3uLL);
    if (v4 <= 2)
    {
      if (*(&off_100079480 + v4 + 32))
      {
        if (*(&off_100079480 + v4 + 32) == 1)
        {
          goto LABEL_8;
        }

LABEL_13:
        *(v0 + 441) = 0u;
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
        *v2 = 0u;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    __break(1u);
    return withTimeout<A>(_:block:)(v4, v5, v6, v7, v8, v9);
  }

LABEL_8:
  *(v0 + 400) = 1802658125;
  *(v0 + 408) = 0xE400000000000000;
  *(v0 + 416) = 1;
  *(v0 + 424) = 0x373635343332312BLL;
  *(v0 + 432) = 0xEB00000000303938;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
LABEL_14:
  v18 = *(v0 + 480);
  v19 = *(v0 + 416);
  *(v0 + 208) = *v2;
  *(v0 + 224) = v19;
  *(v0 + 240) = *(v0 + 432);
  *(v0 + 249) = *(v0 + 441);

  return _swift_task_switch(sub_10001A59C, v18, 0);
}

uint64_t sub_10001A59C()
{
  v1 = *(v0 + 480);
  sub_100012420((v0 + 208));
  sub_100036534(v0 + 400);
  v2 = *(v0 + 472);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001A614()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v9 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = *(v2 + 464);
    v5 = sub_10001A8B4;
  }

  else
  {
    v6 = *(v2 + 488);
    v7 = *(v2 + 464);

    v5 = sub_10001A73C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10001A73C()
{
  v1 = *(v0 + 288);
  *(v0 + 336) = *(v0 + 272);
  *(v0 + 352) = v1;
  *(v0 + 368) = *(v0 + 304);
  *(v0 + 377) = *(v0 + 313);
  v2 = *(v0 + 344);
  v3 = *(v0 + 480);
  if (v2)
  {
    v4 = *(v0 + 336);
    v5 = *(v0 + 304);
    *(v0 + 160) = *(v0 + 288);
    *(v0 + 176) = v5;
    *(v0 + 185) = *(v0 + 313);
    *(v0 + 144) = v4;
    *(v0 + 152) = v2;
    v6 = sub_10001A7BC;
  }

  else
  {
    *(v0 + 121) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 80) = 0u;
    v6 = sub_10001A844;
  }

  return _swift_task_switch(v6, v3, 0);
}