int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  __chkstk_darwin(v3);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003E90();
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003EDC(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  qword_1006D3C30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  aBlock[4] = sub_100004B28;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100622FF0;
  v13 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100003EDC(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v15 = v27;
  v14 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v29 + 8))(v15, v14);
  (*(v25 + 8))(v12, v26);
  v16 = static CommandLine.argc.getter();
  v17 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for FMApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for FMAppDelegate();
  v20 = swift_getObjCClassFromMetadata();
  v21 = NSStringFromClass(v20);
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v16, v17, v19, v21);

  return 0;
}

unint64_t sub_100003E90()
{
  result = qword_1006AEDC0;
  if (!qword_1006AEDC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AEDC0);
  }

  return result;
}

uint64_t sub_100003EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003F24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003FB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003FFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004044(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10007EC08(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004098(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10007EC08(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000040E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000040F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000041A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000041B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000041C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000041D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000041E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000041F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004300(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004380(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004390(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004400(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004420(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004440(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004450(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004470(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000044A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000044B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000044C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000044D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000044E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000044F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004530(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004540(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004560(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004570(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000045A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000045B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000045C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000045D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000045E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000045F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004650(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004660(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004670(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004680(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000046A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000046B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000046C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000046D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000046E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000046F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004740(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004750(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004760(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004770(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004780(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000047A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000047B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000047C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000047D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000047E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000047F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004820(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004850(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004870(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004890(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000048A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000048B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000048C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000048D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000048E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000048F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004910(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004990(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000049A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000049B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000049C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000049D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000049E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000049F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004AE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100004B28()
{
  v0 = [objc_allocWithZone(CNContactStore) init];
  sub_10007EBC0(&qword_1006AF180);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v9];

  if (v2)
  {
    v3 = v9;
  }

  else
  {
    v4 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Prewarmed CNContactStore.", v8, 2u);
  }
}

uint64_t sub_100004E30(void *a1, unint64_t a2)
{
  v94 = a2;
  MyAppCoreTester = type metadata accessor for FindMyAppCoreTester();
  v102 = *(MyAppCoreTester - 8);
  v5 = __chkstk_darwin(MyAppCoreTester);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v85 - v8;
  __chkstk_darwin(v7);
  v11 = &v85 - v10;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v12 - 8);
  v100 = v12;
  __chkstk_darwin(v12);
  v98 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v97 = *(v106 - 8);
  __chkstk_darwin(v106);
  v96 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchTime();
  v93 = *(v105 - 8);
  v15 = __chkstk_darwin(v105);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v85 - v18;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100005B14(v19, qword_1006D4630);
  v21 = v2;
  v95 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v103 = MyAppCoreTester;
  v101 = v9;
  if (v24)
  {
    v25 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v25 = 136446466;
    ObjectType = swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920);
    v26 = String.init<A>(describing:)();
    v28 = v11;
    v29 = a1;
    v30 = sub_100005B4C(v26, v27, &aBlock);

    *(v25 + 4) = v30;
    a1 = v29;
    v11 = v28;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_100005B4C(0xD00000000000002DLL, 0x8000000100595BD0, &aBlock);
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s %{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v31 = off_1006BE550;
  v32 = objc_allocWithZone(type metadata accessor for FMMainViewController());

  v34 = sub_10000FCF8(v33);
  v90 = v31;

  v35 = OBJC_IVAR____TtC6FindMy13FMAppDelegate_mainViewController;
  v36 = *&v21[OBJC_IVAR____TtC6FindMy13FMAppDelegate_mainViewController];
  *&v21[OBJC_IVAR____TtC6FindMy13FMAppDelegate_mainViewController] = v34;

  v37 = [objc_opt_self() mainScreen];
  [v37 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = [objc_allocWithZone(UIWindow) initWithFrame:{v39, v41, v43, v45}];
  v47 = objc_opt_self();
  v48 = v46;
  v49 = [v47 systemBlueColor];
  [v48 setTintColor:v49];

  [v48 setRootViewController:*&v21[v35]];
  [v48 makeKeyAndVisible];
  v50 = v48;
  v51 = String._bridgeToObjectiveC()();
  [v50 setAccessibilityIdentifier:v51];

  v52 = *&v21[OBJC_IVAR____TtC6FindMy13FMAppDelegate_window];
  *&v21[OBJC_IVAR____TtC6FindMy13FMAppDelegate_window] = v50;
  v91 = v50;

  type metadata accessor for FMApplication();
  v53 = swift_dynamicCastClass();
  v104 = v11;
  if (v53)
  {
    v54 = a1;
  }

  v55 = *&v21[OBJC_IVAR____TtC6FindMy13FMAppDelegate_application];
  *&v21[OBJC_IVAR____TtC6FindMy13FMAppDelegate_application] = v53;

  sub_10004D7B4();
  v89 = sub_100003E90();
  v56 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v57 = v92;
  + infix(_:_:)();
  v93 = *(v93 + 8);
  (v93)(v17, v105);
  v58 = swift_allocObject();
  *(v58 + 16) = v94;
  *(v58 + 24) = v21;
  v112 = sub_1003E1BF0;
  v113 = v58;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_100004AE4;
  v111 = &unk_10063C3C8;
  v59 = _Block_copy(&aBlock);

  v60 = v21;

  v61 = v96;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v88 = sub_10000A4B0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  v87 = sub_10007EBC0(&unk_1006B0640);
  v94 = sub_100037970();
  v62 = v98;
  v63 = v100;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v59);

  v99 = *(v99 + 8);
  (v99)(v62, v63);
  v97 = *(v97 + 8);
  (v97)(v61, v106);
  (v93)(v57, v105);
  v64 = *(v90[6] + 16);
  v65 = static OS_dispatch_queue.main.getter();
  v66 = swift_allocObject();
  *(v66 + 16) = v60;
  v112 = sub_1003E1BF8;
  v113 = v66;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_100004AE4;
  v111 = &unk_10063C418;
  v67 = _Block_copy(&aBlock);
  v68 = v60;
  static DispatchQoS.unspecified.getter();
  ObjectType = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v67);

  (v99)(v62, v63);
  (v97)(v61, v106);

  v68[OBJC_IVAR____TtC6FindMy13FMAppDelegate_didHandleOpenURL] = 0;
  v69 = v104;
  FindMyAppCoreTester.init(text:)();
  v70 = v101;
  v71 = v102;
  v72 = *(v102 + 16);
  v73 = v103;
  v72(v101, v69, v103);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    aBlock = v77;
    *v76 = 136315138;
    v72(v86, v70, v73);
    v78 = String.init<A>(describing:)();
    v80 = v79;
    v81 = *(v71 + 8);
    v81(v70, v73);
    v82 = sub_100005B4C(v78, v80, &aBlock);

    *(v76 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v74, v75, "FindMyClient: %s", v76, 0xCu);
    sub_100006060(v77);

    v81(v104, v73);
  }

  else
  {

    v83 = *(v71 + 8);
    v83(v70, v73);
    v83(v69, v73);
  }

  return 1;
}

uint64_t sub_1000059E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005A20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005A64()
{
  v0 = type metadata accessor for Logger();
  sub_100005AB0(v0, qword_1006D4630);
  sub_100005B14(v0, qword_1006D4630);
  return Logger.init()();
}

uint64_t *sub_100005AB0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100005B14(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100005B4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005C18(v11, 0, 0, 1, a1, a2);
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
    sub_100006004(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006060(v11);
  return v7;
}

unint64_t sub_100005C18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005D24(a5, a6);
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

char *sub_100005D24(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005D70(a1, a2);
  sub_100005F18(&off_100621B80);
  return v3;
}

char *sub_100005D70(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005EA0(v5, 0);
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
        v7 = sub_100005EA0(v10, 0);
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

void *sub_100005EA0(uint64_t a1, uint64_t a2)
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

  sub_10007EBC0(&qword_1006B32B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100005F18(uint64_t result)
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

  result = sub_100247588(result, v11, 1, v3);
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

uint64_t sub_100006004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006060(uint64_t a1)
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

void *sub_1000060AC()
{
  type metadata accessor for FMMediator();
  swift_allocObject();
  result = sub_100006110();
  off_1006BE550 = result;
  return result;
}

uint64_t sub_100006110()
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for FMConditionProvider()) init];
  type metadata accessor for FMETAProvider();
  swift_allocObject();
  *(v0 + 32) = sub_1000073D0();
  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for FMLocationProvider()) init];
  type metadata accessor for FMPeopleProvider();
  swift_allocObject();
  *(v0 + 48) = sub_1000079B8();
  type metadata accessor for FMSelectionController(0);
  swift_allocObject();
  *(v0 + 56) = sub_10000C9D4();
  type metadata accessor for FMDevicesProvider();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 96) = 0;
  swift_allocObject();
  v2 = sub_10000D434();
  *(v0 + 24) = v2;
  type metadata accessor for FMProductAssetProvider();
  swift_allocObject();
  v3 = swift_retain_n();
  *(v0 + 64) = sub_100016510(v3);
  v4 = *(v0 + 56);

  sub_10000E85C(v5, v4);

  type metadata accessor for FMDevicesSubscription();
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v6 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100627DA8;
  swift_unknownObjectWeakAssign();
  v7 = v2[2];

  os_unfair_lock_lock((v7 + 24));
  sub_10000E7C0((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  v8 = *(v1 + 48);
  type metadata accessor for FMPeopleSubscription();
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v9 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100627D40;
  swift_unknownObjectWeakAssign();
  v10 = *(v8 + 32);

  os_unfair_lock_lock((v10 + 24));
  sub_10000E7C0((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));

  v11 = *(v1 + 16);

  v12 = v11;
  sub_10000EACC(v1, v12);

  v13 = *(v1 + 48);
  *(v13 + 72) = sub_10000EFDC();

  v14 = *(v1 + 16);
  v14[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized] = dispatch thunk of FMFManager.isInitialized.getter() & 1;
  sub_10000F064();

  v15 = *(v1 + 16);
  v15[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized] = FMIPManager.isInitialized.getter() & 1;
  sub_10000FAEC();

  return v1;
}

unint64_t sub_1000069D8()
{
  result = qword_1006B4220;
  if (!qword_1006B4220)
  {
    type metadata accessor for Feature.FindMy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4220);
  }

  return result;
}

uint64_t sub_100006A54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100006A6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NotificationSettingsObserver()
{
  result = qword_1006BF730;
  if (!qword_1006BF730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006B00()
{
  result = type metadata accessor for Logger();
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

id sub_100006BB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for Logger();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_queue;
  sub_100003E90();
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v11 = v20;
  *&v1[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(subsystem:category:)();
  v1[OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_isUpToDate] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_internalAuthorizationStatus] = 0;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v23, "init");
  v13 = v22;
  (*(v11 + 16))(v3, v12 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_logger, v22);
  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "NotificationSettingsObserver: Init", v17, 2u);
  }

  (*(v11 + 8))(v3, v13);
  sub_100006F64();

  return v14;
}

void sub_100006F64()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100005B4C(0x726573624F646461, 0xEE00292873726576, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "NotificationSettingsObserver: %s", v4, 0xCu);
    sub_100006060(v5);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v1 selector:"sceneWillEnterForegroundWithNotification:" name:UISceneWillEnterForegroundNotification object:0];
}

unint64_t sub_1000070D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B1B00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007204(v4, &v13, &unk_1006B8500);
      v5 = v13;
      v6 = v14;
      result = sub_10000726C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000072E4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100007204(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10007EBC0(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000726C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000072F4(a1, a2, v4);
}

_OWORD *sub_1000072E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000072F4(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_1000073D0()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v15 - 8);
  __chkstk_darwin(v15);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  v14[3] = sub_100003E90();
  v14[1] = "sQueue";
  static DispatchQoS.utility.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_100003F6C(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  v6 = v14[2];
  v6[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6[4] = &_swiftEmptyDictionarySingleton;
  v6[5] = &_swiftEmptyDictionarySingleton;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMETACache: initialized", v10, 2u);
  }

  v11 = [objc_allocWithZone(NSOperationQueue) init];
  v12 = String._bridgeToObjectiveC()();
  [v11 setName:v12];

  [v11 setMaxConcurrentOperationCount:2];
  v6[6] = v11;
  return v6;
}

char *sub_100007788()
{
  *&v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation] = 0;
  v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentHeading] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiLocations] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiFidelity] = 2;
  *&v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager] = 0;
  v1 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationShifter;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *&v0[v1] = FMLocationShifter.init()();
  v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLimitedPrecision] = 0;
  v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_includeHeading] = 0;
  v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized] = 0;
  v0[OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision] = 0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for FMLocationProvider();
  v2 = objc_msgSendSuper2(&v14, "init");
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000072E4(v12, v13);
    sub_1000072E4(v13, v12);
    v8 = swift_dynamicCast();
    v9 = v11;
    if (!v8)
    {
      v9 = 2;
    }

    *&v4[OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiFidelity] = v9;
  }

  else
  {
    *&v4[OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiFidelity] = 2;
  }

  return v4;
}

uint64_t sub_1000079B8()
{
  v1 = v0;
  v2 = type metadata accessor for InitialTabInfo();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v58 - v7;
  *(v0 + 16) = dispatch_group_create();
  *(v0 + 24) = dispatch_group_create();
  sub_10007EBC0(&qword_1006B04E0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = &_swiftEmptyArrayStorage;
  *(v0 + 32) = v9;
  *(v0 + 48) = 258;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  sub_10007EBC0(&qword_1006B04E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552C40;
  v11 = sub_10000905C(0, &qword_1006B04F0);
  *(v10 + 56) = sub_10007EBC0(&qword_1006B04F8);
  *(v10 + 32) = v11;
  v12 = sub_10000905C(0, &qword_1006B0500);
  *(v10 + 88) = sub_10007EBC0(&qword_1006B0508);
  *(v10 + 64) = v12;
  v13 = sub_10000905C(0, &qword_1006BEF40);
  *(v10 + 120) = sub_10007EBC0(&qword_1006B0510);
  *(v10 + 96) = v13;
  v14 = sub_10000905C(0, &qword_1006B0518);
  *(v10 + 152) = sub_10007EBC0(&qword_1006B0520);
  *(v10 + 128) = v14;
  v15 = sub_10000905C(0, &qword_1006B0528);
  *(v10 + 184) = sub_10007EBC0(&qword_1006B0530);
  *(v10 + 160) = v15;
  v16 = sub_10000905C(0, &qword_1006B0538);
  *(v10 + 216) = sub_10007EBC0(&qword_1006B0540);
  *(v10 + 192) = v16;
  v17 = sub_10000905C(0, &qword_1006B0548);
  *(v10 + 248) = sub_10007EBC0(&qword_1006B0550);
  *(v10 + 224) = v17;
  sub_10000905C(0, &qword_1006B0558);
  v18 = NSSet.init(arrayLiteral:)();
  v64[0] = 0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  if (v64[0])
  {
    v62 = v3;
    v19 = [objc_opt_self() standardUserDefaults];
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 dataForKey:v20];

    if (v21)
    {
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = objc_opt_self();
      isa = Set._bridgeToObjectiveC()().super.isa;

      v61 = v22;
      v27 = Data._bridgeToObjectiveC()().super.isa;
      v64[0] = 0;
      v28 = [v25 _strictlyUnarchivedObjectOfClasses:isa fromData:v27 error:v64];

      if (!v28)
      {
        v43 = v64[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();

        goto LABEL_28;
      }

      v29 = v64[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10007EBC0(&qword_1006B0568);
      if (!swift_dynamicCast())
      {
LABEL_28:
        v53 = v62;
        InitialTabInfo.init(lastVisitedTimes:currentTab:timeSpent:)();
        *(v1 + 48) = 0;
        dispatch_group_enter(*(v1 + 16));
        type metadata accessor for FMPersonImageCache();
        swift_allocObject();
        *(v1 + 64) = sub_100009124();
        (*(v53 + 16))(v6, v8, v2);
        type metadata accessor for FMFManagerConfiguration();
        static FMFManagerConfiguration.default.getter();
        type metadata accessor for FMFManager();
        swift_allocObject();
        v54 = FMFManager.init(configuration:tabInfo:)();
        *(v1 + 40) = v54;
        type metadata accessor for FMPeopleActionController();
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *(v55 + 24) = 0;
        *(v1 + 56) = v55;
        sub_100009E80(&qword_1006B0560, v56, type metadata accessor for FMPeopleProvider);

        dispatch thunk of FMFManager.delegate.setter();

        sub_10000A858(v61, v24);
        (*(v53 + 8))(v8, v2);
        goto LABEL_29;
      }

      v30 = v63;

      v31 = FMTabInfoLastVisited.getter();
      if (*(v30 + 16))
      {
        v33 = sub_10000726C(v31, v32);
        v35 = v34;

        if (v35)
        {
          v60 = *(*(v30 + 56) + 8 * v33);

          goto LABEL_18;
        }
      }

      else
      {
      }

      v60 = &_swiftEmptyArrayStorage;
LABEL_18:

      v44 = FMTabInfoCurrentTab.getter();
      if (*(v30 + 16))
      {
        v46 = sub_10000726C(v44, v45);
        v48 = v47;

        if (v48)
        {
          v59 = *(*(v30 + 56) + 8 * v46);

          goto LABEL_23;
        }
      }

      else
      {
      }

      v59 = &_swiftEmptyArrayStorage;
LABEL_23:
      v49 = FMTabInfoTimeSpent.getter();
      if (*(v30 + 16))
      {
        sub_10000726C(v49, v50);
        v52 = v51;

        if (v52)
        {

          goto LABEL_28;
        }
      }

      else
      {
      }

      goto LABEL_28;
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100005B14(v36, qword_1006D4630);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "FMPeopleProvider: no tab info, proceeding without", v39, 2u);
  }

  *(v1 + 48) = 0;
  dispatch_group_enter(*(v1 + 16));
  type metadata accessor for FMPersonImageCache();
  swift_allocObject();
  *(v1 + 64) = sub_100009124();
  type metadata accessor for FMFManagerConfiguration();
  static FMFManagerConfiguration.default.getter();
  InitialTabInfo.init()();
  type metadata accessor for FMFManager();
  swift_allocObject();
  v40 = FMFManager.init(configuration:tabInfo:)();
  *(v1 + 40) = v40;
  type metadata accessor for FMPeopleActionController();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = 0;
  *(v1 + 56) = v41;
  sub_100009E80(&qword_1006B0560, v42, type metadata accessor for FMPeopleProvider);
  swift_retain_n();

  dispatch thunk of FMFManager.delegate.setter();

LABEL_29:
  *(*(v1 + 64) + qword_1006B05C0 + 8) = &off_100624D98;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t type metadata accessor for FMPeopleSubscription()
{
  result = qword_1006BEB08;
  if (!qword_1006BEB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008370()
{
  result = type metadata accessor for UUID();
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

void sub_100008408(uint64_t a1, unint64_t *a2)
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

char *sub_100008454()
{
  v1 = v0;
  v43 = sub_10007EBC0(&unk_1006BF7C0);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v40 - v2;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountStore;
  *&v1[v8] = [objc_allocWithZone(ACAccountStore) init];
  v9 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountManager;
  *&v1[v9] = [objc_opt_self() sharedInstance];
  v10 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_networkMonitor;
  *&v1[v10] = [objc_allocWithZone(FMNetworkMonitor) init];
  v11 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_stewieStateMonitor;
  type metadata accessor for StewieStateMonitor();
  swift_allocObject();
  *&v1[v11] = sub_100008D80();
  v12 = &v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmfAccountIdentifier];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmipAccountIdentifier];
  *v13 = 0;
  v13[1] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountCheckPending] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_preventOnboarding] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_pushInfoBadgeNumber] = 0;
  v14 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_radioPreferencesQueue;
  sub_100003E90();
  static DispatchQoS.default.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100006A6C(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v46 + 104))(v45, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v47);
  *&v1[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_notificationSettingsObserver;
  *&v1[v15] = [objc_allocWithZone(type metadata accessor for NotificationSettingsObserver()) init];
  *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountVerificationContinuations] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp] = 1;
  *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_stewieServiceState] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasAccountCheckedOnce] = 0;
  v16 = [objc_opt_self() sharedConnection];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 effectiveBoolValueForSetting:MCFeatureFindMyFriendsAllowed];
    v19 = MCFeatureFindMyDeviceAllowed;
    v20 = [v17 effectiveBoolValueForSetting:v19];

    v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted] = v18 == 2;
    v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted] = v20 == 2;
  }

  else
  {
    v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted] = 0;
    v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted] = 0;
  }

  result = [objc_allocWithZone(RadiosPreferences) initWithQueue:*&v1[v14]];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_radioPreferences] = result;
    v22 = static OS_dispatch_queue.main.getter();
    sub_10007EBC0(&unk_1006BF7D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552210;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v24;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 0;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v25;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    sub_1000070D4(inited);
    swift_setDeallocating();
    sub_10007EBC0(&unk_1006B8500);
    swift_arrayDestroy();
    v26 = objc_allocWithZone(CBCentralManager);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = [v26 initWithDelegate:0 queue:v22 options:isa];

    *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_coreBluetoothMgr] = v28;
    LOBYTE(v49) = 0;
    sub_10007EBC0(&qword_1006BF7E0);
    swift_allocObject();
    v29 = CurrentValueSubject.init(_:)();
    LOBYTE(v49) = 0;
    swift_allocObject();
    v30 = CurrentValueSubject.init(_:)();
    *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitializedSubject] = v29;
    *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitializedSubject] = v30;
    v49 = v29;
    v47 = v29;
    sub_100004098(&qword_1006BF7E8, &qword_1006BF7E0);

    v31 = v41;
    Publisher<>.removeDuplicates()();
    sub_100004098(&unk_1006BF7F0, &unk_1006BF7C0);
    v32 = v43;
    v33 = Publisher.eraseToAnyPublisher()();
    v34 = *(v42 + 8);
    v34(v31, v32);
    *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitializedPublisher] = v33;
    v49 = v30;
    Publisher<>.removeDuplicates()();
    v35 = Publisher.eraseToAnyPublisher()();
    v34(v31, v32);
    *&v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitializedPublisher] = v35;
    v36 = type metadata accessor for FMConditionProvider();
    v48.receiver = v1;
    v48.super_class = v36;
    v37 = objc_msgSendSuper2(&v48, "init");
    v38 = *&v37[OBJC_IVAR____TtC6FindMy19FMConditionProvider_coreBluetoothMgr];
    v39 = v37;
    [v38 setDelegate:v39];

    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008D80()
{
  v1 = v0;
  v2 = type metadata accessor for ClientOrigin();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RequestOrigin();
  __chkstk_darwin(v6 - 8);
  My = type metadata accessor for Feature.FindMy();
  v15 = My;
  v16 = sub_1000069D8();
  v8 = sub_100008FC0(&v14);
  (*(*(My - 8) + 104))(v8, enum case for Feature.FindMy.secureLocationsMigration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&v14);
  if (My)
  {
    v9 = type metadata accessor for FMLStewieStateMonitorImpl();
    v10 = swift_allocObject();
    (*(v3 + 104))(v5, enum case for ClientOrigin.findMyApp(_:), v2);
    RequestOrigin.init(_:)();
    type metadata accessor for Session();
    swift_allocObject();
    v10[2] = Session.init(_:)();
    v11 = &off_100637C28;
  }

  else
  {
    v10 = [objc_allocWithZone(SPSecureLocationsManager) init];
    v9 = sub_10000905C(0, &qword_1006BC800);
    v11 = &off_100637C08;
  }

  v15 = v9;
  v16 = v11;
  *&v14 = v10;
  sub_100006A54(&v14, v1 + 16);
  return v1;
}

uint64_t *sub_100008FC0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000905C(uint64_t a1, unint64_t *a2)
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

uint64_t type metadata accessor for FMPersonImageCache()
{
  result = qword_1006B05C8;
  if (!qword_1006B05C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009124()
{
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v21 = qword_1006B05A0;
  v20[1] = sub_100003E90();
  static DispatchQoS.utility.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100003F24(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v5 = v23;
  *(v5 + v21) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 osBuildVersion];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
  }

  v11 = (v5 + qword_1006B05A8);
  *v11 = v8;
  v11[1] = v10;
  *(v5 + qword_1006B05B0) = &_swiftEmptyDictionarySingleton;
  *(v5 + qword_1006B05B8) = &_swiftEmptyDictionarySingleton;
  *(v5 + qword_1006B05C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMPersonImageCache: initialized", v15, 2u);
  }

  v16 = FMImageCache.init(converter:)();
  v17 = objc_opt_self();

  v18 = [v17 defaultCenter];
  [v18 addObserver:v16 selector:"contactStoreChangedWithNotification:" name:CNContactStoreDidChangeNotification object:0];

  sub_10000C4B0();

  return v16;
}

unint64_t sub_1000095A8()
{
  result = qword_1006B22F8;
  if (!qword_1006B22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B22F8);
  }

  return result;
}

void sub_100009654(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v64 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v64 - v10;
  __chkstk_darwin(v9);
  v13 = &v64 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  sub_10007EBC0(&qword_1006B0650);
  v16 = method lookup function for FMImageCache();
  v75 = a1;
  v16();
  URL.appendingPathComponent(_:isDirectory:)();
  v65 = v3;
  v17 = *(v3 + 8);
  v17(v11, v2);
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v73 = v17;
  v74 = v3 + 8;
  v17(v13, v2);
  v78[0] = 0;
  v21 = [v15 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:5 error:v78];

  v22 = v78[0];
  if (v21)
  {
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v22;

    v72 = *(v23 + 16);
    if (!v72)
    {
LABEL_15:

      return;
    }

    v26 = 0;
    v27 = *(v75 + qword_1006B05A8);
    v70 = *(v75 + qword_1006B05A8 + 8);
    v71 = v27;
    v28 = v65;
    v69 = v23 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v75 = v65 + 16;
    *&v25 = 136315138;
    v64 = v25;
    v67 = v23;
    while (v26 < *(v23 + 16))
    {
      v29 = *(v28 + 16);
      v29(v8, v69 + *(v28 + 72) * v26, v2);
      v78[0] = URL.lastPathComponent.getter();
      v78[1] = v30;
      v76 = v71;
      v77 = v70;
      sub_1000C5238();
      sub_1000C528C();
      v31 = BidirectionalCollection<>.starts<A>(with:)();

      if (v31)
      {
        v73(v8, v2);
      }

      else
      {
        v32 = [v14 defaultManager];
        URL._bridgeToObjectiveC()(v33);
        v35 = v34;
        v78[0] = 0;
        v36 = [v32 removeItemAtURL:v34 error:v78];

        if (!v36)
        {
          v55 = v78[0];

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v73(v8, v2);
          goto LABEL_18;
        }

        v37 = qword_1006AEBE0;
        v38 = v78[0];
        if (v37 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100005B14(v39, qword_1006D4630);
        v40 = v68;
        v29(v68, v8, v2);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = v40;
          v66 = swift_slowAlloc();
          v78[0] = v66;
          *v43 = v64;
          sub_100003F24(&qword_1006B0668, &type metadata accessor for URL);
          v45 = v8;
          v46 = v14;
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          v73(v44, v2);
          v50 = v47;
          v14 = v46;
          v8 = v45;
          v51 = sub_100005B4C(v50, v49, v78);

          *(v43 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v41, v42, "FMImageCache: Deleting stale file: %s", v43, 0xCu);
          sub_100006060(v66);

          v28 = v65;

          v73(v45, v2);
        }

        else
        {

          v52 = v40;
          v53 = v73;
          v73(v52, v2);
          v53(v8, v2);
        }

        v23 = v67;
      }

      if (v72 == ++v26)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v54 = v78[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_18:
    if (qword_1006AEBE0 == -1)
    {
      goto LABEL_19;
    }
  }

  swift_once();
LABEL_19:
  v56 = type metadata accessor for Logger();
  sub_100005B14(v56, qword_1006D4630);
  swift_errorRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v78[0] = v60;
    *v59 = 136315138;
    swift_getErrorValue();
    v61 = Error.localizedDescription.getter();
    v63 = sub_100005B4C(v61, v62, v78);

    *(v59 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "FMImageCache: Error deleting file: %s", v59, 0xCu);
    sub_100006060(v60);
  }

  else
  {
  }
}

uint64_t sub_100009E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009E80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100009EC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009F58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A030(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A0C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A1E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A2B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10000A300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A3D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A5D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A6A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A6F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A7C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A858(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000A8CC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FMSelectedSection()
{
  result = qword_1006B7A28;
  if (!qword_1006B7A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A950()
{
  type metadata accessor for FMSelectedSection();
  if (v0 <= 0x3F)
  {
    sub_10000ACC8(319, &qword_1006B2C08, type metadata accessor for FMSelectionPendingAction);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FMPendingActionInfo(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000AAAC()
{
  sub_10000ABA0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FMIPDevice();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FMFFriend();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FMIPItem();
        if (v3 <= 0x3F)
        {
          sub_10000AC20();
          if (v4 <= 0x3F)
          {
            type metadata accessor for FMIPUnknownItem();
            if (v5 <= 0x3F)
            {
              sub_10000AC98();
              if (v6 <= 0x3F)
              {
                sub_1002437D8();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000ABA0()
{
  if (!qword_1006B7A38)
  {
    type metadata accessor for FMIPDevice();
    sub_10007EC08(&qword_1006B07D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006B7A38);
    }
  }
}

void sub_10000AC20()
{
  if (!qword_1006B7A40)
  {
    sub_10007EC08(&qword_1006C0C10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006B7A40);
    }
  }
}

ValueMetadata *sub_10000AC98()
{
  result = qword_1006B7A48;
  if (!qword_1006B7A48)
  {
    result = &type metadata for FMSelectedSection.FMUnknownItemsMode;
    atomic_store(&type metadata for FMSelectedSection.FMUnknownItemsMode, &qword_1006B7A48);
  }

  return result;
}

void sub_10000ACC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10000AD3C()
{
  sub_10000AD9C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10000AD9C()
{
  if (!qword_1006B7EA0)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B7EA0);
    }
  }
}

void sub_10000AE04()
{
  sub_10000AF8C();
  if (v0 <= 0x3F)
  {
    sub_10000ACC8(319, &qword_1006B7DC0, &type metadata accessor for FMIPSeparationLocation);
    if (v1 <= 0x3F)
    {
      sub_10000ACC8(319, &qword_1006B7DC8, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        sub_10000ACC8(319, &qword_1006B3F80, &type metadata accessor for Date);
        if (v3 <= 0x3F)
        {
          sub_10000AFE0();
          if (v4 <= 0x3F)
          {
            sub_10000ACC8(319, &qword_1006B2C00, sub_10000C6B8);
            if (v5 <= 0x3F)
            {
              sub_10000ACC8(319, &unk_1006B7DD8, &type metadata accessor for FMIPUTAlertEvent);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000AF8C()
{
  if (!qword_1006C1BE0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C1BE0);
    }
  }
}

void sub_10000AFE0()
{
  if (!qword_1006B7DD0)
  {
    sub_10007EC08(&qword_1006C0C10);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B7DD0);
    }
  }
}

uint64_t sub_10000B044()
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
  sub_100232B3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000A858(v4, v6);

  if (!v1)
  {
    return v8;
  }

  return result;
}

uint64_t sub_10000B130(void *a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMapMode: Load Legacy type from UserDefaults", v5, 2u);
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v14 = v18;
  v15 = v19;
  if (!*(&v19 + 1))
  {
    sub_100012DF0(&v14, &unk_1006B8740);
    return 2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  v8 = 0;
  v9 = 0x10000;
  if (v17 > 2)
  {
    if (v17 != 3)
    {
      if (v17 != 4)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if (v17 != 1)
  {
    if (v17 != 2)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

LABEL_22:
  v8 = 1;
LABEL_23:
  My = type metadata accessor for Feature.FindMy();
  *(&v15 + 1) = My;
  v16 = sub_1000069D8();
  v12 = sub_100008FC0(&v14);
  (*(*(My - 8) + 104))(v12, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&v14);
  v13 = v9 | v8;
  sub_100231DAC(a1, My & 1, v13);
  return v13;
}

uint64_t sub_10000B3D8()
{
  result = type metadata accessor for UUID();
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

uint64_t type metadata accessor for FMDeviceImageCache()
{
  result = qword_1006B5EB8;
  if (!qword_1006B5EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B508()
{
  *(v0 + qword_1006B5EB0 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMDeviceImageCache: initialized", v4, 2u);
  }

  return FMIPDeviceImageCache.init(converter:)(sub_1001C43A0, 0);
}

char *sub_10000B624(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v61 = v2;
  v60 = v4;
  v5 = sub_10007EBC0(&unk_1006B0670);
  __chkstk_darwin(v5 - 8);
  v65 = &v56 - v6;
  v7 = type metadata accessor for FMFFriend();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  if (qword_1006AEC30 == -1)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
LABEL_3:
      v15 = 0;
      v59 = qword_1006D47A0;
      v58 = qword_1006B05A0;
      v57 = (v61 + qword_1006B05A8);
      v17 = v8[2];
      v16 = v8 + 2;
      v69 = v17;
      v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v66 = v16[7];
      v19 = _swiftEmptyArrayStorage;
      v70 = v16;
      v67 = (v16 - 1);
      v56 = xmmword_100552210;
      v72 = v10;
      v68 = v7;
      v17(v10, v18, v7);
      while (1)
      {
        v20 = FMFFriend.contactHandles.getter();
        a1 = *(v20 + 16);
        v73 = v18;
        v74 = v19;
        if (a1)
        {
          sub_10007EBC0(&unk_1006AF770);
          v8 = swift_allocObject();
          v21 = j__malloc_size(v8);
          v22 = v21 - 32;
          if (v21 < 32)
          {
            v22 = v21 - 17;
          }

          v8[2] = a1;
          v8[3] = 2 * (v22 >> 4);
          v71 = sub_100016318(v76, v8 + 4, a1, v20);
          v7 = v76[0];
          v10 = v76[2];

          sub_10000BEC8();
          if (v71 != a1)
          {
            goto LABEL_35;
          }

          v10 = v72;
          v18 = v73;
          v19 = v74;
        }

        else
        {
          v8 = _swiftEmptyArrayStorage;
        }

        v76[0] = v8;
        sub_10000BED0(v76);
        if (v15)
        {

          __break(1u);
          return result;
        }

        if (*(v76[0] + 2))
        {
          v23 = *(v76[0] + 4);
          v24 = *(v76[0] + 5);

          v25 = v65;
          FMFFriend.contact.getter();
          v26 = type metadata accessor for FMFContact();
          v27 = *(v26 - 8);
          if ((*(v27 + 48))(v25, 1, v26) == 1)
          {

            sub_10000BF3C(v25);
            v8 = _swiftEmptyArrayStorage;
          }

          else
          {
            v28 = FMFContact.storeUUID.getter();
            v29 = v25;
            v30 = v28;
            v63 = v23;
            v32 = v31;
            (*(v27 + 8))(v29, v26);
            v33 = FMFFriend.identifier.getter();
            v35 = v34;
            v36 = __chkstk_darwin(v33);
            *(&v56 - 6) = v37;
            *(&v56 - 5) = v36;
            *(&v56 - 4) = v35;
            *(&v56 - 3) = v30;
            v62 = v30;
            v38 = v60;
            *(&v56 - 2) = v32;
            *(&v56 - 1) = v38;
            OS_dispatch_queue.sync<A>(execute:)();
            v64 = 0;

            v40 = v76[0];
            v39 = v76[1];
            sub_10007EBC0(&qword_1006AF978);
            v8 = swift_allocObject();
            *(v8 + 1) = v56;
            v41 = FMFFriend.identifier.getter();
            v71 = v14;
            v43 = *v57;
            v42 = v57[1];
            v8[4] = v41;
            v8[5] = v44;
            v8[6] = v30;
            v8[7] = v32;
            v45 = v63;
            v8[8] = v63;
            v8[9] = v24;
            *(v8 + 80) = 0;
            *(v8 + 81) = v75[0];
            *(v8 + 21) = *(v75 + 3);
            v8[11] = v40;
            v8[12] = v39;
            v8[13] = v13;
            v46 = v59;
            v8[14] = v59;
            v8[15] = v43;
            v8[16] = v42;
            swift_bridgeObjectRetain_n();

            v8[17] = FMFFriend.identifier.getter();
            v8[18] = v47;
            v8[19] = v62;
            v8[20] = v32;
            v8[21] = v45;
            v8[22] = v24;
            *(v8 + 184) = 1;
            *(v8 + 185) = v76[0];
            *(v8 + 47) = *(v76 + 3);
            v8[24] = v40;
            v8[25] = v39;
            v8[26] = v13;
            v8[27] = v46;
            v8[28] = v43;
            v14 = v71;
            v15 = v64;
            v8[29] = v42;
            v10 = v72;
            v18 = v73;
          }

          v19 = v74;
        }

        else
        {

          v8 = _swiftEmptyArrayStorage;
        }

        v7 = v68;
        (*v67)(v10, v68);
        v48 = v8[2];
        a1 = *(v19 + 2);
        v49 = a1 + v48;
        if (__OFADD__(a1, v48))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v49 <= *(v19 + 3) >> 1)
        {
          if (!v8[2])
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (a1 <= v49)
          {
            v51 = a1 + v48;
          }

          else
          {
            v51 = a1;
          }

          v19 = sub_10000BFA4(isUniquelyReferenced_nonNull_native, v51, 1, v19);
          if (!v8[2])
          {
LABEL_4:

            if (v48)
            {
              goto LABEL_34;
            }

            goto LABEL_5;
          }
        }

        if ((*(v19 + 3) >> 1) - *(v19 + 2) < v48)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v48)
        {
          v52 = *(v19 + 2);
          v53 = __OFADD__(v52, v48);
          v54 = v52 + v48;
          if (v53)
          {
            goto LABEL_37;
          }

          *(v19 + 2) = v54;
        }

LABEL_5:
        v18 += v66;
        v14 = (v14 - 1);
        if (!v14)
        {
          return v19;
        }

        v69(v10, v18, v7);
      }
    }
  }

  else
  {
LABEL_38:
    swift_once();
    v14 = *(a1 + 16);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10000BD04()
{
  result = qword_1006B00C0;
  if (!qword_1006B00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B00C0);
  }

  return result;
}

double sub_10000BD58()
{
  v16 = &type metadata for SolariumFeatureFlag;
  v17 = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v15);
  if (v0)
  {
    v1 = 20.0;
  }

  else
  {
    v1 = 40.0;
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  xmmword_1006D4720 = xmmword_10055E2D0;
  unk_1006D4730 = vdupq_n_s64(0x4075400000000000uLL);
  v12 = Width > 385.0;
  qword_1006D4740 = *&v1;
  v13 = 16.0;
  if (v12)
  {
    v13 = 20.0;
  }

  *&qword_1006D4748 = xmmword_10055E2E0;
  *algn_1006D4758 = xmmword_10055E2F0;
  *&qword_1006D4768 = xmmword_10055E300;
  *&qword_1006D4778 = xmmword_10055E310;
  *&qword_1006D4788 = xmmword_10055E320;
  qword_1006D4798 = *&v13;
  qword_1006D47A0 = 0;
  result = 1000.0;
  unk_1006D47A8 = xmmword_10055E330;
  return result;
}

Swift::Int sub_10000BED0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10025F32C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10002E230(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_10000BF3C(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B0670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10000BFA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006AF978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000C0F0(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: devicesDidChange %ld", v7, 0xCu);
  }

  else
  {
  }

  v8 = *(v2 + 16);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v9 + 8 * i + 32);
    }

    v16 = v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 24))(v2, a1, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_18:
}

unint64_t sub_10000C3B0()
{
  result = qword_1006BFCF0;
  if (!qword_1006BFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFCF0);
  }

  return result;
}

unint64_t sub_10000C408()
{
  result = qword_1006B2300;
  if (!qword_1006B2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B2300);
  }

  return result;
}

unint64_t sub_10000C45C()
{
  result = qword_1006B2308;
  if (!qword_1006B2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B2308);
  }

  return result;
}

uint64_t sub_10000C4B0()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMImageCache: Purging stale cache...", v5, 2u);
  }

  v6 = *(v1 + qword_1006B05A0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100009DE0;
  *(v7 + 24) = v1;
  v10[4] = sub_10000964C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000095FC;
  v10[3] = &unk_100624EC0;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000C6B8()
{
  result = qword_1006BBCB0;
  if (!qword_1006BBCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BBCB0);
  }

  return result;
}

uint64_t sub_10000C704()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMPeopleProvider: fmfManagerDidInitialize", v5, 2u);
  }

  v6 = dispatch thunk of FMFManager.friends.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v6 + 16);
    _os_log_impl(&_mh_execute_header, v7, v8, "FMPersonImageCache: preloadImages for %ld", v9, 0xCu);
  }

  sub_10000B624(v6);
  dispatch thunk of FMImageCache.preload(requests:)();

  v10 = *(v1 + 32);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);

  os_unfair_lock_unlock((v10 + 24));

  if (v11 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v11 + 8 * i + 32);
    }

    v18 = v17 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(v1, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_19:
}

void *sub_10000C9D4()
{
  v1 = v0;
  v0[2] = &_swiftEmptyArrayStorage;
  sub_10007EBC0(&qword_1006B7F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552210;
  *(inited + 32) = FMTabInfoLastVisited.getter();
  *(inited + 40) = v3;
  *(inited + 48) = 0xBFF0000000000000;
  *(inited + 56) = FMTabInfoTimeSpent.getter();
  *(inited + 64) = v4;
  *(inited + 72) = 0xBFF0000000000000;
  v5 = sub_10000D060(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B7F08);
  swift_arrayDestroy();
  v0[3] = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_100552210;
  *(v6 + 32) = FMTabInfoLastVisited.getter();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0xBFF0000000000000;
  *(v6 + 56) = FMTabInfoTimeSpent.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = 0xBFF0000000000000;
  v9 = sub_10000D060(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  v0[4] = v9;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_100552210;
  *(v10 + 32) = FMTabInfoLastVisited.getter();
  *(v10 + 40) = v11;
  *(v10 + 48) = 0xBFF0000000000000;
  *(v10 + 56) = FMTabInfoTimeSpent.getter();
  *(v10 + 64) = v12;
  *(v10 + 72) = 0xBFF0000000000000;
  v13 = sub_10000D060(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  v0[5] = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_100552210;
  *(v14 + 32) = FMTabInfoLastVisited.getter();
  *(v14 + 40) = v15;
  *(v14 + 48) = 0xBFF0000000000000;
  *(v14 + 56) = FMTabInfoTimeSpent.getter();
  *(v14 + 64) = v16;
  *(v14 + 72) = 0xBFF0000000000000;
  v17 = sub_10000D060(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v1[6] = v17;
  type metadata accessor for FMSelectedSection();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v18 = v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode;
  *v18 = 0;
  v18[2] = 1;
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedUnit;
  *(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedUnit) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_mapZoomFactor) = 2;
  v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  v21 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100005B14(v22, qword_1006D4630);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "FMSelectionController: initialized", v25, 2u);
  }

  v26 = [objc_opt_self() standardUserDefaults];
  My = type metadata accessor for Feature.FindMy();
  v51 = My;
  v28 = sub_1000069D8();
  v52 = v28;
  v29 = sub_100008FC0(v50);
  v30 = enum case for Feature.FindMy.springfieldIntegration(_:);
  v31 = *(*(My - 8) + 104);
  v31(v29, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  v32 = isFeatureEnabled(_:)();
  sub_100006060(v50);
  v33 = sub_10000D164(v26, v32 & 1);

  if (v33 != 2)
  {
    *v18 = v33 & 1;
    v18[1] = BYTE1(v33) & 1;
    v18[2] = BYTE2(v33) & 1;
  }

  v51 = My;
  v52 = v28;
  v34 = sub_100008FC0(v50);
  v31(v34, v30, My);
  v35 = isFeatureEnabled(_:)();
  sub_100006060(v50);
  if ((v35 & 1) == 0)
  {
    if (qword_1006AEC58 != -1)
    {
      swift_once();
    }

    *(v1 + v19) = [qword_1006D48A8 measurementSystem];
  }

  v36 = v1 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  v37 = type metadata accessor for FMPendingActionInfo(0);
  *v36 = 0;
  *(v36 + 1) = 0;
  v38 = v37[5];
  v39 = type metadata accessor for FMIPSeparationLocation();
  (*(*(v39 - 8) + 56))(&v36[v38], 1, 1, v39);
  v40 = v37[6];
  v41 = type metadata accessor for UUID();
  (*(*(v41 - 8) + 56))(&v36[v40], 1, 1, v41);
  v42 = v37[7];
  v43 = type metadata accessor for Date();
  (*(*(v43 - 8) + 56))(&v36[v42], 1, 1, v43);
  *&v36[v37[8]] = 0;
  *&v36[v37[9]] = 0;
  v44 = v37[10];
  v45 = type metadata accessor for FMIPUTAlertEvent();
  (*(*(v45 - 8) + 56))(&v36[v44], 1, 1, v45);
  v46 = objc_opt_self();
  v47 = [v46 defaultCenter];
  [v47 addObserver:v1 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v48 = [v46 defaultCenter];
  [v48 addObserver:v1 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  return v1;
}

unint64_t sub_10000D060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B3940);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000726C(v5, v6);
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

uint64_t sub_10000D164(void *a1, char a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMMapMode: Load from UserDefaults", v7, 2u);
  }

  if ((a2 & 1) != 0 && (v8 = sub_10000B044(), v8 != 2))
  {
    LODWORD(v9) = sub_10023245C(v8 & 1) & 0x10101;
  }

  else
  {
    v9 = sub_10000B130(a1);
  }

  return v9 & 0xFFFFFF;
}

uint64_t sub_10000D2C0(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B8740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FMDevicesProvider()
{
  result = qword_1006B0F18;
  if (!qword_1006B0F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D374()
{
  result = type metadata accessor for FMIPBeaconSharingLimits();
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

void *sub_10000D434()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for FMIPManagerSubsystem();
  __chkstk_darwin(v3 - 8);
  sub_10007EBC0(&qword_1006B12F8);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  *(v0 + 16) = v4;
  *(v0 + 48) = 0;
  *(v0 + 64) = &_swiftEmptyArrayStorage;
  static FMIPBeaconSharingLimits.default.getter();
  *(v0 + OBJC_IVAR____TtC6FindMy17FMDevicesProvider_unknownItemsDetectedNearYou) = &_swiftEmptyArrayStorage;
  type metadata accessor for FMDeviceImageCache();
  swift_allocObject();
  *(v0 + 24) = sub_10000B508();
  type metadata accessor for FMItemImageCache();
  swift_allocObject();
  *(v0 + 40) = sub_10000D84C();
  type metadata accessor for FMIPManagerConfiguration();
  type metadata accessor for FMDefaultAuthenticationUIProvider();
  swift_allocObject();
  sub_10000DA0C(&qword_1006B1300, type metadata accessor for FMDefaultAuthenticationUIProvider);
  static FMIPManagerConfiguration.default.getter();
  FMIPManagerConfiguration.enabledSubsystems.getter();

  static FMIPManagerConfiguration.default.getter();
  FMIPManagerConfiguration.preferredLocale.getter();

  FMIPManagerConfiguration.__allocating_init(enabledSubsystems:preferredLocale:authenticationUIProvider:snapshotHandlers:)();
  [objc_allocWithZone(SPOwnerSession) init];
  type metadata accessor for FMIPManager();
  swift_allocObject();
  v5 = FMIPManager.init(configuration:ownerSession:)();
  v1[7] = v5;
  type metadata accessor for FMDevicesActionController();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  v1[4] = v6;
  sub_10000DA0C(&qword_1006B1308, type metadata accessor for FMDevicesProvider);
  swift_retain_n();

  FMIPManager.delegate.setter();

  *(v1[3] + qword_1006B5EB0 + 8) = &off_100626738;
  swift_unknownObjectWeakAssign();
  *(v1[5] + qword_1006B60E8 + 8) = &off_10063C8B0;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t type metadata accessor for FMDevicesSubscription()
{
  result = qword_1006C0830;
  if (!qword_1006C0830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FMItemImageCache()
{
  result = qword_1006B60F0;
  if (!qword_1006B60F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D84C()
{
  v1 = v0;
  *(v0 + qword_1006B60E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemImageCache: initialized", v5, 2u);
  }

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 osBuildVersion];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
  }

  v11 = (v1 + qword_1006B60E0);
  *v11 = v8;
  v11[1] = v10;

  return FMIPItemImageCache.init(converter:)(sub_1001C43A0, 0);
}

uint64_t sub_10000DA0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FMProductAssetProvider.DeviceFetchingContext()
{
  result = qword_1006B5BF8;
  if (!qword_1006B5BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10000DAA8()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v0[2] = [objc_allocWithZone(NSOperationQueue) init];
  v6 = sub_100003E90();
  v8[0] = "storageAccessQueue";
  v8[1] = v6;
  static DispatchQoS.unspecified.getter();
  v10 = &_swiftEmptyArrayStorage;
  sub_100016980(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v0[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_1006AEA80 != -1)
  {
    swift_once();
  }

  v0[4] = qword_1006D3CF0;

  v0[5] = sub_10000E4BC(&_swiftEmptyArrayStorage);
  return v0;
}

id sub_10000DDA0()
{
  type metadata accessor for FMAccessoryProductImageCache();
  v0 = swift_allocObject();
  v0[2] = sub_10000DE3C(&_swiftEmptyArrayStorage);
  v0[3] = sub_10000E2D8(&_swiftEmptyArrayStorage);
  sub_10007EBC0(&qword_1006B0B58);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[4] = v1;
  result = [objc_allocWithZone(NSOperationQueue) init];
  v0[5] = result;
  qword_1006D3CF0 = v0;
  return result;
}

unint64_t sub_10000DE3C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3920);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B3928);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B3920);
      result = sub_1001B3C04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FMAccessoryProductImageRequest();
      result = sub_100154AC0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for FMAccessoryProductImageRequest);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t type metadata accessor for FMAccessoryProductImageRequest()
{
  result = qword_1006C30A0;
  if (!qword_1006C30A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E06C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for FMAccessoryProductImageDownloadOperation()
{
  result = qword_1006B9000;
  if (!qword_1006B9000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E144()
{
  result = type metadata accessor for FMAccessoryProductImageRequest();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000E2D8(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3910);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B3918);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B3910);
      result = sub_1001B3C04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FMAccessoryProductImageRequest();
      result = sub_100154AC0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for FMAccessoryProductImageRequest);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000E4BC(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3900);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B3908);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B3900);
      result = sub_1001B3D38(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context();
      result = sub_100154AC0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      *(v7[7] + 16 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context()
{
  result = qword_1006BA140;
  if (!qword_1006BA140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E6EC()
{
  result = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000E778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E7DC(void *a1)
{

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_10000E88C(uint64_t a1, uint64_t a2, void (*a3)(void), void *a4, uint64_t a5, uint64_t a6)
{
  a3(0);
  v9 = swift_allocObject();
  *(v9 + *a4 + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v9 + *a4 + 8) = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v9;
}

uint64_t type metadata accessor for FMSelectionSubscription()
{
  result = qword_1006BBF60;
  if (!qword_1006BBF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E9E8()
{
  result = type metadata accessor for UUID();
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

uint64_t type metadata accessor for FMConditionSubscription()
{
  result = qword_1006BB260;
  if (!qword_1006BB260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000EACC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMConditionSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber + 8) = &off_100627CC0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t sub_10000EBF0()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10000EC88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPUTAlertState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 136315138;
    v12 = FMIPUTAlertState.rawValue.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_100005B4C(v12, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMDevicesProvider: utAlertStateDidChange: %s", v11, 0xCu);
    sub_100006060(v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v16 = *(v2 + 16);

  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));

  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_8;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (!result)
  {
  }

LABEL_8:
  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v17 + 8 * i + 32);
      }

      v24 = v23 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v24 + 8);
        ObjectType = swift_getObjectType();
        (*(v21 + 120))(v2, a1, ObjectType, v21);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EFDC()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for FMURLHandler();
    v1 = swift_allocObject();
    *(v1 + 16) = v0;
    *(v0 + 104) = v1;
  }

  return v1;
}

void sub_10000F064()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized;
  CurrentValueSubject.send(_:)();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v0[v1];

    _os_log_impl(&_mh_execute_header, v4, v5, "FMConditionProvider: Friends init state updated %{BOOL}d", v6, 8u);
  }

  else
  {

    v4 = v3;
  }

  v7 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize;
  *(&v3->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize) = 0;
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *(&v3->isa + v7);

    _os_log_impl(&_mh_execute_header, v9, v10, "FMConditionProvider: Friends failed to initialize %{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  sub_10000F24C();
  sub_10000F648();
}

void sub_10000F24C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize);
    *(v11 + 8) = 1024;
    *(v11 + 10) = *(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize);

    _os_log_impl(&_mh_execute_header, v9, v10, "FMConditionProvider: updateAppInitializationFailureStatus friend: %{BOOL}d, device: %{BOOL}d", v11, 0xEu);
  }

  else
  {

    v9 = v8;
  }

  if ((*(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize) & 1) != 0 || *(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize) == 1)
  {
    sub_100003E90();
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    aBlock[4] = sub_1004247C0;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063DFF8;
    v14 = _Block_copy(aBlock);
    v15 = v8;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v17 + 8))(v3, v1);
    (*(v4 + 8))(v6, v16);
  }
}

void sub_10000F648()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized);
    *(v11 + 8) = 1024;
    *(v11 + 10) = *(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized);

    _os_log_impl(&_mh_execute_header, v9, v10, "FMConditionProvider: updateAppInitializedStatus friend: %{BOOL}d, device: %{BOOL}d", v11, 0xEu);
  }

  else
  {

    v9 = v8;
  }

  if (*(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized) == 1 && *(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized) == 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "FMConditionProvider: App is now initialized", v14, 2u);
    }

    sub_100003E90();
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    aBlock[4] = sub_1004247C8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063E048;
    v17 = _Block_copy(aBlock);
    v18 = v8;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v22 + 8))(v3, v1);
    (*(v20 + 8))(v6, v21);
  }
}

uint64_t sub_10000FAB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000FAEC()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized;
  CurrentValueSubject.send(_:)();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v0[v1];

    _os_log_impl(&_mh_execute_header, v4, v5, "FMConditionProvider: Devices init state updated: %{BOOL}d", v6, 8u);
  }

  else
  {

    v4 = v3;
  }

  v7 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize;
  *(&v3->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize) = 0;
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *(&v3->isa + v7);

    _os_log_impl(&_mh_execute_header, v9, v10, "FMConditionProvider: Devices failed to initialize %{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  sub_10000F24C();
  sub_10000F648();
}

id sub_10000FCF8(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue] = _swiftEmptyArrayStorage;
  v4 = &v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_compactConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_regularConstraints] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert] = 0;
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 userInterfaceLayoutDirection];

  qword_1006D47A0 = v6;
  v7 = objc_allocWithZone(type metadata accessor for FMMapViewController());

  v9 = sub_100010144(v8);
  *&v2[OBJC_IVAR____TtC6FindMy20FMMainViewController_mapController] = v9;
  objc_allocWithZone(type metadata accessor for FMNoLocationViewController());

  v10 = v9;
  *&v2[OBJC_IVAR____TtC6FindMy20FMMainViewController_noLocationController] = sub_100019378(a1);
  v24 = &type metadata for SolariumFeatureFlag;
  v25 = sub_10000BD04();
  LOBYTE(v9) = isFeatureEnabled(_:)();
  sub_100006060(v23);
  if (v9)
  {
    v11 = objc_allocWithZone(type metadata accessor for FMEmbeddedTabBar());

    v13 = sub_100019B98(v12);
    v14 = &off_100632CB0;
  }

  else
  {
    v15 = objc_allocWithZone(type metadata accessor for FMLegacyTabBar());

    v13 = sub_1002215E4(v16);
    v14 = &off_10062FE30;
  }

  v17 = &v2[OBJC_IVAR____TtC6FindMy20FMMainViewController_tabBar];
  *v17 = v13;
  v17[1] = v14;
  v18 = objc_allocWithZone(type metadata accessor for FMInitialCardController());

  *&v2[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer] = sub_10001C524(v19);
  *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for FMMediatedViewController();

  v20 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);

  return v20;
}

uint64_t type metadata accessor for FMMapViewController()
{
  result = qword_1006BEE08;
  if (!qword_1006BEE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FFA4()
{
  sub_1000100C8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FMSelectedSection();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000100C8()
{
  if (!qword_1006B3F80)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B3F80);
    }
  }
}

char *sub_100010144(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_isAnimationEnabled] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled] = 1;
  v4 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_isExiting3DMode] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_selectionSubscription] = 0;
  type metadata accessor for FMSelectedSection();
  swift_storeEnumTagMultiPayload();
  *&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_lastMode] = 0;
  v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_cameraDidReachLiveLocation] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_userTrackingAnnotationView] = 0;
  v6 = &v1[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration];
  *v6 = 0;
  v6[8] = 1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMMapViewController: initialized", v10, 2u);
  }

  v11 = [objc_allocWithZone(MKMapView) init];
  v12 = [objc_opt_self() compassButtonWithMapView:v11];
  *&v2[OBJC_IVAR____TtC6FindMy19FMMapViewController_compassButton] = v12;
  v13 = objc_allocWithZone(type metadata accessor for FMStatusBar());

  *&v2[OBJC_IVAR____TtC6FindMy19FMMapViewController_statusBar] = sub_100010744(v14);
  type metadata accessor for FMMapViewDataSource();
  swift_allocObject();

  v15 = v11;
  v16 = sub_100011F8C(a1, v15);

  *&v2[OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource] = v16;
  *&v2[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView] = v15;
  *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for FMMediatedViewController();

  v17 = v15;
  v18 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);

  v19 = v18;
  v20 = [v17 mapType];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = objc_allocWithZone(type metadata accessor for FMMapOptionsView());
  v23 = sub_1004035A4(a1, v19, v20, sub_100406EB4, v21, v22);
  v24 = *&v19[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView];
  *&v19[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView] = v23;

  *(*&v19[OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource] + 32) = &off_10063CF60;
  swift_unknownObjectWeakAssign();

  v25 = [objc_opt_self() sharedInstance];
  LODWORD(v21) = [v25 isInternalBuild];

  if (v21)
  {
    v26 = [objc_opt_self() standardUserDefaults];
    v27 = String._bridgeToObjectiveC()();
    [v26 doubleForKey:v27];
    v29 = v28;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "liveAnimationDuration from defaults %f", v32, 0xCu);
    }

    if (v29 > 0.0)
    {
      v33 = &v19[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration];
      *v33 = v29;
      *(v33 + 8) = 0;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v34, v35, "FMMapViewController: overriding liveAnimationDuration %f", v36, 0xCu);
      }
    }
  }

  return v19;
}

uint64_t sub_1000106E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_100010744(uint64_t a1)
{
  v31 = &type metadata for SolariumFeatureFlag;
  v3 = sub_10000BD04();
  v32 = v3;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v30);
  if (v4)
  {
    v5 = 2.0;
  }

  else
  {
    v5 = 10.0;
  }

  v6 = objc_opt_self();
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v6 _effectWithBlurRadius:v5 scale:v9];
  v11 = OBJC_IVAR____TtC6FindMy11FMStatusBar_blurView;
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *&v1[v11] = v12;
  v13 = OBJC_IVAR____TtC6FindMy11FMStatusBar_maskLayer;
  *&v1[v13] = [objc_allocWithZone(CAGradientLayer) init];
  v14 = OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView;
  *&v1[v14] = [objc_allocWithZone(UIView) init];
  v15 = OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabel;
  *&v1[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC6FindMy11FMStatusBar_chevron;
  *&v1[v16] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelBottomConstraint] = 0;
  v1[OBJC_IVAR____TtC6FindMy11FMStatusBar_initialState] = 1;
  v1[OBJC_IVAR____TtC6FindMy11FMStatusBar_state] = 0;
  v1[OBJC_IVAR____TtC6FindMy11FMStatusBar_userDidInteractWithMap] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy11FMStatusBar_mediator] = a1;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for FMStatusBar();

  v17 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v18 = *(a1 + 56);
  v19 = v17;

  sub_100010A94(v19, v18);

  v20 = *(a1 + 40);
  v21 = v19;
  v22 = v20;
  sub_100010AC4(v21, v22);

  sub_100010CCC();
  v31 = &type metadata for SolariumFeatureFlag;
  v32 = v3;
  v23 = isFeatureEnabled(_:)();
  sub_100006060(v30);
  if (v23)
  {
    sub_10033AF04();
  }

  sub_10001172C();
  v24 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v21 action:"handleTapWithSender:"];
  [*&v21[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView] addGestureRecognizer:v24];

  v25 = *(a1 + 40);

  v26 = v25[OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision];

  if (v26)
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v21[OBJC_IVAR____TtC6FindMy11FMStatusBar_state] = v27;

  return v21;
}

uint64_t sub_100010AC4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_1006374D8;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

uint64_t type metadata accessor for FMLocationSubscription()
{
  result = qword_1006BFE20;
  if (!qword_1006BFE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010C34()
{
  result = type metadata accessor for UUID();
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

void sub_100010CCC()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView];
  v2 = [v1 layer];
  [v2 setMasksToBounds:1];

  [v1 addSubview:*&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabel]];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_chevron]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_blurView]];
  [v0 addSubview:v1];

  sub_100010D98();
}

void sub_100010D98()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    BYTE8(v55) = 0;
    v56 = v6;
    *&v55 = v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_state];
    _print_unlocked<A, B>(_:_:)();
    v7 = sub_100005B4C(*(&v55 + 1), 0xE000000000000000, &v56);

    *(v5 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMStatusBar: updateAppearance for state %s", v5, 0xCu);
    sub_100006060(v6);
  }

  v8 = v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_state];
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v16 = [objc_opt_self() configurationWithScale:-1];
      v17 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView];
      [v17 setAlpha:1.0];
      [v17 setUserInteractionEnabled:1];
      [*&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillBottomConstraint] setConstant:-10.0];
      [*&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillHeightConstraint] setConstant:30.0];
      [*&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelTopConstraint] setConstant:8.0];
      v18 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelBottomConstraint];
      if (v18)
      {
        [v18 setConstant:-8.0];
      }

      v19 = objc_opt_self();
      v20 = [v19 systemBlueColor];
      [v17 setBackgroundColor:v20];

      v21 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabel];
      v22 = [objc_opt_self() mainBundle];
      v57._object = 0x80000001005919F0;
      v23._object = 0x80000001005919D0;
      v57._countAndFlagsBits = 0xD000000000000026;
      v23._countAndFlagsBits = 0xD000000000000014;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v57);

      v25 = String._bridgeToObjectiveC()();

      [v21 setText:v25];

      v26 = [v19 whiteColor];
      [v21 setTextColor:v26];

      v27 = [objc_opt_self() systemFontOfSize:15.0];
      sub_10007EBC0(&qword_1006BA720);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100552220;
      *(inited + 32) = UIFontWeightTrait;
      *(inited + 40) = UIFontWeightMedium;
      v29 = UIFontWeightTrait;
      v30 = sub_10002AB84(inited);
      swift_setDeallocating();
      sub_100012DF0(inited + 32, &qword_1006B47A0);
      v31 = sub_10002ACDC(v30);

      [v21 setFont:v31];

      v32 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_chevron];
      v33 = String._bridgeToObjectiveC()();
      v34 = [objc_opt_self() systemImageNamed:v33];

      v35 = [v34 imageByApplyingSymbolConfiguration:v16];
      [v32 setImage:v35];

      v15 = [v19 whiteColor];
      [v32 setTintColor:v15];
    }

    else
    {
      v36 = [objc_opt_self() configurationWithPointSize:11.0];
      v37 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView];
      [v37 setAlpha:1.0];
      [v37 setUserInteractionEnabled:1];
      v38 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillBottomConstraint];
      if (v38)
      {
        [v38 setConstant:0.0];
      }

      [*&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillHeightConstraint] setConstant:30.0];
      [*&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelTopConstraint] setConstant:8.0];
      v39 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelBottomConstraint];
      if (v39)
      {
        [v39 setConstant:-8.0];
      }

      v40 = objc_opt_self();
      v41 = [v40 clearColor];
      [v37 setBackgroundColor:v41];

      v42 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabel];
      v43 = [objc_opt_self() mainBundle];
      v58._object = 0x80000001005919F0;
      v44._object = 0x80000001005919D0;
      v58._countAndFlagsBits = 0xD000000000000026;
      v44._countAndFlagsBits = 0xD000000000000014;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v58);

      v46 = String._bridgeToObjectiveC()();

      [v42 setText:v46];

      v47 = [v40 labelColor];
      [v42 setTextColor:v47];

      v48 = [objc_opt_self() systemFontOfSize:13.0];
      [v42 setFont:v48];

      v49 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_chevron];
      v50 = String._bridgeToObjectiveC()();
      v51 = [objc_opt_self() systemImageNamed:v50];

      v52 = [v51 imageByApplyingSymbolConfiguration:v36];
      [v49 setImage:v52];

      v15 = [v40 labelColor];
      [v49 setTintColor:v15];
    }
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillBottomConstraint];
    if (v9)
    {
      [v9 setConstant:0.0];
    }

    v10 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillHeightConstraint];
    if (v10)
    {
      [v10 setConstant:0.0];
    }

    v11 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelTopConstraint];
    if (v11)
    {
      [v11 setConstant:0.0];
    }

    v12 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelBottomConstraint];
    if (v12)
    {
      [v12 setConstant:0.0];
    }

    v13 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView];
    [v13 setAlpha:0.0];
    [v13 setUserInteractionEnabled:0];
    v14 = *&v2[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabel];
    v15 = String._bridgeToObjectiveC()();
    [v14 setText:v15];
  }

  v53 = [v2 superview];
  [v53 setNeedsLayout];

  v54 = [v2 superview];
  [v54 layoutIfNeeded];
}

void sub_10001172C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_blurView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabel];
  [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
  v63 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_chevron];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:isa];

  v17 = [v2 bottomAnchor];
  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  v20 = [v2 heightAnchor];
  v21 = [v20 constraintEqualToConstant:0.0];

  LODWORD(v22) = 1148846080;
  [v21 setPriority:v22];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1005521F0;
  v24 = [v2 topAnchor];
  v25 = [v0 safeAreaLayoutGuide];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v23 + 32) = v27;
  v28 = [v2 centerXAnchor];
  v29 = [v0 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v23 + 40) = v30;
  *(v23 + 48) = v19;
  *(v23 + 56) = v21;
  v60 = v19;
  v61 = v21;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:v31];

  v32 = [v62 topAnchor];
  v33 = [v2 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  v35 = [v62 bottomAnchor];
  v36 = [v2 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100552EF0;
  v39 = [v62 leadingAnchor];
  v40 = [v2 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:11.0];

  *(v38 + 32) = v41;
  *(v38 + 40) = v34;
  *(v38 + 48) = v37;
  v58 = v34;
  v59 = v37;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:v42];

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100552EF0;
  v44 = [v63 leadingAnchor];
  v45 = [v62 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:4.0];

  *(v43 + 32) = v46;
  v47 = [v63 trailingAnchor];
  v48 = [v2 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-7.0];

  *(v43 + 40) = v49;
  v50 = [v63 centerYAnchor];
  v51 = [v62 centerYAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v43 + 48) = v52;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:v53];

  v54 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillBottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillBottomConstraint] = v60;

  v55 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillHeightConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillHeightConstraint] = v61;

  v56 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelTopConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelTopConstraint] = v58;

  v57 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelBottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelBottomConstraint] = v59;
}

uint64_t sub_100011F8C(uint64_t a1, void *a2)
{
  v3 = v2;
  v27 = a2;
  v28 = a1;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 48) = &_swiftEmptyDictionarySingleton;
  v9 = sub_10000905C(0, &qword_1006AEDC0);
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  v25[1] = "Annotation>: deleted: ";
  v25[2] = v9;
  *(v2 + 64) = 0;
  static DispatchQoS.userInitiated.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_10000A738(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *(v2 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 96) = 0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMMapViewDataSource: initialized", v13, 2u);
  }

  v14 = v27;
  v15 = v28;
  *(v3 + 16) = v28;
  *(v3 + 40) = v14;
  v16 = *(v15 + 56);

  v17 = v14;

  v19 = sub_100012440(v18, v16);

  *(v3 + 80) = v19;

  v20 = *(v15 + 48);
  type metadata accessor for FMPeopleSubscription();
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v21 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100641E68;
  swift_unknownObjectWeakAssign();
  v22 = *(v20 + 32);

  os_unfair_lock_lock((v22 + 24));
  sub_100012470((v22 + 16));
  os_unfair_lock_unlock((v22 + 24));

  *(v3 + 72) = v21;

  v23 = dispatch thunk of FMFManager.friends.getter();
  if (*(v3 + 56) - 1 >= 2)
  {
    *(v3 + 57) = 0;
    sub_100012488(v23);
  }

  else
  {
    sub_1004BD720(v23);
  }

  return v3;
}

uint64_t sub_100012488(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyDictionarySingleton;
  v13 = *(v1 + 88);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v9;
  v10[4] = v1;
  aBlock[4] = sub_100012BDC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642690;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_1000127A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for FMAnnotationIdentifier()
{
  result = qword_1006B48D0;
  if (!qword_1006B48D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001283C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v32 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v32);
  v31 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for FMFFriend();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v36 = *(v13 + 56);
    v37 = v14;
    v16 = (v13 - 8);
    v30 = v8;
    v35 = v13;
    v14(v11, v15, v8);
    while (1)
    {
      FMFFriend.location.getter();
      v17 = type metadata accessor for FMFLocation();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v7, 1, v17) == 1)
      {
        (*v16)(v11, v8);
        sub_100012DF0(v7, &qword_1006AF740);
      }

      else
      {
        v19 = FMFLocation.location.getter();
        (*(v18 + 8))(v7, v17);
        if (v19)
        {
          v20 = FMFFriend.identifier.getter();
          v21 = v31;
          *v31 = v20;
          *(v21 + 8) = v22;
          swift_storeEnumTagMultiPayload();
          v23 = *(v34 + 48);

          v24 = sub_1004BEE98(v11, v19, v23);

          v25 = v33;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(v25 + 16);
          *(v25 + 16) = 0x8000000000000000;
          sub_1001BCC70(v24, v21, isUniquelyReferenced_nonNull_native);
          v27 = v21;
          v8 = v30;
          sub_10002A100(v27, type metadata accessor for FMAnnotationIdentifier);
          *(v25 + 16) = v38;
          swift_endAccess();
        }

        (*v16)(v11, v8);
      }

      v15 += v36;
      if (!--v12)
      {
        break;
      }

      v37(v11, v15, v8);
    }
  }

  swift_beginAccess();

  sub_100012E50(v28, &_swiftEmptyArrayStorage);
}

void sub_100012BE8()
{
  sub_100012C94();
  if (v0 <= 0x3F)
  {
    sub_100012D18();
    if (v1 <= 0x3F)
    {
      sub_100012D48();
      if (v2 <= 0x3F)
      {
        sub_100012DA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void *sub_100012C94()
{
  result = qword_1006B48E0;
  if (!qword_1006B48E0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1006B48E0);
  }

  return result;
}

void *sub_100012D18()
{
  result = qword_1006B48E8;
  if (!qword_1006B48E8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1006B48E8);
  }

  return result;
}

void sub_100012D48()
{
  if (!qword_1006B48F0[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1006B48F0);
    }
  }
}

void sub_100012DA8()
{
  if (!qword_1006B3848)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B3848);
    }
  }
}

uint64_t sub_100012DF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10007EBC0(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100012E50(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v61 = a2;
  v6 = sub_10007EBC0(&qword_1006AF830);
  v58 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = (v56 - v7);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v64 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006AF840);
  v57 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v14 = (v56 - v13);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v4 + 88);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v22 = *(v4 + 48);
  v23 = *(a1 + 16);
  v71 = v4;
  v60 = a1;
  if (!v23)
  {
    goto LABEL_7;
  }

  v70 = sub_10008FC98(v23, 0);
  v69 = sub_1004A7F2C(aBlock, v70 + 32, v23, a1);

  result = sub_10000BEC8();
  if (v69 == v23)
  {
    v4 = v71;
    v25 = *(v22 + 16);
    if (v25)
    {
      while (1)
      {
        v26 = sub_10008FC98(v25, 0);
        v22 = sub_1004A7F2C(aBlock, v26 + 32, v25, v22);
        sub_10000BEC8();
        if (v22 == v25)
        {
          break;
        }

        __break(1u);
LABEL_7:

        v70 = &_swiftEmptyArrayStorage;
        v25 = *(v22 + 16);
        if (!v25)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:

      v26 = &_swiftEmptyArrayStorage;
    }

    v15 = sub_100016A70(v70, v26);
    a1 = v27;
    v3 = v28;
    v21 = v29;

    if (qword_1006AEBE0 == -1)
    {
LABEL_10:
      v30 = type metadata accessor for Logger();
      sub_100005B14(v30, qword_1006D4630);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      v33 = os_log_type_enabled(v31, v32);
      v68 = v3;
      v69 = a1;
      v59 = v21;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 136315138;
        v36 = sub_10001707C();
        v38 = sub_100005B4C(v36, v37, aBlock);

        *(v34 + 4) = v38;
        a1 = v69;
        _os_log_impl(&_mh_execute_header, v31, v32, "*x* FMMapViewDataSource: annotations difference %s", v34, 0xCu);
        sub_100006060(v35);

        v4 = v71;
      }

      v39 = *(v15 + 16);
      if (v39)
      {
        aBlock[0] = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v40 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v56[1] = v15;
        v41 = v15 + v40;
        v42 = v57[9];
        do
        {
          sub_100007204(v41, v14, &qword_1006AF840);
          v43 = *v14;
          sub_100012DF0(v14, &qword_1006AF840);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v41 += v42;
          --v39;
        }

        while (v39);
        v4 = v71;
        v44 = aBlock[0];
        a1 = v69;
        v45 = *(v69 + 16);
        if (v45)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v44 = &_swiftEmptyArrayStorage;
        v45 = *(a1 + 16);
        if (v45)
        {
LABEL_16:
          v57 = v44;
          aBlock[0] = &_swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v46 = a1 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
          v47 = *(v58 + 72);
          do
          {
            sub_100007204(v46, v8, &qword_1006AF830);
            v48 = *v8;
            sub_100012DF0(v8, &qword_1006AF830);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v46 += v47;
            --v45;
          }

          while (v45);

          v4 = v71;
          v49 = aBlock[0];
          v44 = v57;
          goto LABEL_21;
        }
      }

      v49 = &_swiftEmptyArrayStorage;
LABEL_21:
      *(v4 + 48) = v60;

      sub_10000905C(0, &qword_1006AEDC0);
      v50 = static OS_dispatch_queue.main.getter();
      v51 = swift_allocObject();
      v51[2] = v61;
      v51[3] = v4;
      v51[4] = v49;
      v51[5] = v44;
      v51[6] = v70;
      aBlock[4] = sub_100057084;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100642870;
      v52 = _Block_copy(aBlock);

      v53 = v62;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
      v54 = v64;
      v55 = v67;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v52);

      (*(v66 + 8))(v54, v55);
      return (*(v63 + 8))(v53, v65);
    }

LABEL_23:
    swift_once();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000137C4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013840(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100013888(uint64_t a1, uint64_t a2)
{
  result = sub_100013840(&unk_1006B4960, a2, type metadata accessor for FMAnnotation);
  *(a1 + 8) = result;
  return result;
}

void *sub_100013904(unint64_t a1, unint64_t a2)
{
  v31 = a1;
  v3 = sub_10007EBC0(&qword_1006C24C0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v23 - v4);
  v6 = sub_10007EBC0(&qword_1006AF830);
  v25 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v24 = &v23 - v9;
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    v28 = a2 & 0xFFFFFFFFFFFFFF8;
    v29 = a2 & 0xC000000000000001;
    v26 = (v25 + 48);
    v27 = (v25 + 56);
    v32 = &_swiftEmptyArrayStorage;
    while (v29)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v33 = v12;
      v14 = __chkstk_darwin(v12);
      *(&v23 - 2) = &v33;
      v15 = v14;
      if (sub_10008FC44(sub_1004D1FBC, (&v23 - 4), v31))
      {
        v16 = 1;
      }

      else
      {
        v17 = v15;
        IndexPath.init(row:section:)();
        v16 = 0;
        *v5 = v17;
      }

      (*v27)(v5, v16, 1, v6);

      if ((*v26)(v5, 1, v6) == 1)
      {
        sub_100012DF0(v5, &qword_1006C24C0);
      }

      else
      {
        v18 = v24;
        sub_100035318(v5, v24, &qword_1006AF830);
        sub_100035318(v18, v30, &qword_1006AF830);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_10008C428(0, v32[2] + 1, 1, v32);
        }

        v20 = v32[2];
        v19 = v32[3];
        if (v20 >= v19 >> 1)
        {
          v32 = sub_10008C428(v19 > 1, v20 + 1, 1, v32);
        }

        v21 = v32;
        v32[2] = v20 + 1;
        sub_100035318(v30, v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, &qword_1006AF830);
      }

      ++v11;
      if (v13 == i)
      {
        return v32;
      }
    }

    if (v11 >= *(v28 + 16))
    {
      goto LABEL_21;
    }

    v12 = *(a2 + 8 * v11 + 32);
    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_100013CE8(int64_t a1, unint64_t a2)
{
  v47 = a1;
  v3 = type metadata accessor for FMAnnotationIdentifier();
  v4 = __chkstk_darwin(v3 - 8);
  v44 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = v39 - v6;
  v7 = sub_10007EBC0(&unk_1006C24B0);
  __chkstk_darwin(v7 - 8);
  v9 = (v39 - v8);
  v10 = sub_10007EBC0(&qword_1006AF820);
  v46 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = v39 - v14;
  if (a2 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v53 = a2 & 0xFFFFFFFFFFFFFF8;
    v54 = a2 & 0xC000000000000001;
    v16 = v47 & 0xFFFFFFFFFFFFFF8;
    v55 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v47 < 0)
    {
      v16 = v47;
    }

    v39[1] = v16;
    v42 = v47 & 0xC000000000000001;
    v50 = (v46 + 48);
    v51 = (v46 + 56);
    v56 = &_swiftEmptyArrayStorage;
    v17 = 4;
    v52 = v47 >> 62;
    v48 = i;
    v49 = a2;
    v40 = v13;
    v41 = v10;
    while (1)
    {
      v18 = v17 - 4;
      if (v54)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v53 + 16))
        {
          goto LABEL_36;
        }

        v19 = *(a2 + 8 * v17);
      }

      v20 = v19;
      v21 = v17 - 3;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v57 = v19;
      if (v52)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v22 = *(v55 + 16);
      }

      if (v18 >= v22)
      {
        v31 = v20;
        v30 = 1;
      }

      else
      {
        if (v42)
        {
          v37 = v20;
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v23 = *(v47 + 8 * v17);
          v24 = v20;
          v25 = v23;
        }

        v26 = v25;
        v27 = v43;
        (*((swift_isaMask & *v25) + 0x190))();

        v28 = v44;
        (*((swift_isaMask & *v20) + 0x190))();
        LOBYTE(v26) = sub_10017E734(v27, v28);
        sub_10002A100(v28, type metadata accessor for FMAnnotationIdentifier);
        v29 = sub_10002A100(v27, type metadata accessor for FMAnnotationIdentifier);
        if (v26)
        {
          v30 = 1;
          i = v48;
          a2 = v49;
          v13 = v40;
          v10 = v41;
        }

        else
        {
          __chkstk_darwin(v29);
          v39[-2] = &v57;
          sub_1004B236C(sub_1004D1EAC, &v39[-4], v47);
          v13 = v40;
          v10 = v41;
          if (v32)
          {
            v30 = 1;
          }

          else
          {
            v20 = v20;
            IndexPath.init(row:section:)();
            IndexPath.init(row:section:)();
            v30 = 0;
            *v9 = v20;
          }

          i = v48;
          a2 = v49;
        }
      }

      (*v51)(v9, v30, 1, v10);

      if ((*v50)(v9, 1, v10) == 1)
      {
        sub_100012DF0(v9, &unk_1006C24B0);
      }

      else
      {
        v33 = v45;
        sub_100035318(v9, v45, &qword_1006AF820);
        sub_100035318(v33, v13, &qword_1006AF820);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_10008C404(0, v56[2] + 1, 1, v56);
        }

        v35 = v56[2];
        v34 = v56[3];
        if (v35 >= v34 >> 1)
        {
          v56 = sub_10008C404(v34 > 1, v35 + 1, 1, v56);
        }

        v36 = v56;
        v56[2] = v35 + 1;
        sub_100035318(v13, v36 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v35, &qword_1006AF820);
        i = v48;
        a2 = v49;
      }

      ++v17;
      if (v21 == i)
      {
        return v56;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_1000142E8(uint64_t a1, unint64_t a2)
{
  v48 = a1;
  v3 = type metadata accessor for FMAnnotationIdentifier();
  v4 = __chkstk_darwin(v3 - 8);
  v44 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = v39 - v6;
  v7 = sub_10007EBC0(&unk_1006C24A0);
  __chkstk_darwin(v7 - 8);
  v9 = v39 - v8;
  v10 = sub_10007EBC0(&qword_1006AF810);
  v46 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = v39 - v14;
  if (a2 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v53 = a2 & 0xFFFFFFFFFFFFFF8;
    v54 = a2 & 0xC000000000000001;
    v16 = v48 & 0xFFFFFFFFFFFFFF8;
    v55 = v48 & 0xFFFFFFFFFFFFFF8;
    if (v48 < 0)
    {
      v16 = v48;
    }

    v39[1] = v16;
    v47 = v48 & 0xC000000000000001;
    v50 = (v46 + 48);
    v51 = (v46 + 56);
    v17 = &_swiftEmptyArrayStorage;
    v18 = 4;
    v52 = v48 >> 62;
    v41 = v10;
    v42 = a2;
    v40 = v13;
    v49 = i;
    while (1)
    {
      v19 = v18 - 4;
      if (v54)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v53 + 16))
        {
          goto LABEL_38;
        }

        v20 = *(a2 + 8 * v18);
      }

      v21 = v20;
      v22 = v18 - 3;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v52)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v23 = *(v55 + 16);
      }

      if (v19 >= v23)
      {
        v31 = 1;
      }

      else
      {
        if (v47)
        {
          v37 = v21;
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v55 + 16))
          {
            goto LABEL_40;
          }

          v24 = *(v48 + 8 * v18);
          v25 = v21;
          v26 = v24;
        }

        v27 = v26;
        v28 = v43;
        (*((swift_isaMask & *v26) + 0x190))();

        v29 = v44;
        (*((swift_isaMask & *v21) + 0x190))();
        LOBYTE(v27) = sub_10017E734(v28, v29);
        sub_10002A100(v29, type metadata accessor for FMAnnotationIdentifier);
        sub_10002A100(v28, type metadata accessor for FMAnnotationIdentifier);
        v13 = v40;
        v10 = v41;
        if ((v27 & 1) != 0 && (!v47 ? (v30 = *(v48 + 8 * v18)) : (v30 = specialized _ArrayBuffer._getElementSlowPath(_:)()), v32 = v30, type metadata accessor for FMAnnotation(), v33 = static NSObject.== infix(_:_:)(), v32, (v33 & 1) == 0))
        {
          IndexPath.init(row:section:)();
          v31 = 0;
          *&v9[*(v10 + 36)] = v21;
        }

        else
        {

          v31 = 1;
        }

        a2 = v42;
        i = v49;
      }

      (*v51)(v9, v31, 1, v10);

      if ((*v50)(v9, 1, v10) == 1)
      {
        sub_100012DF0(v9, &unk_1006C24A0);
      }

      else
      {
        v34 = v45;
        sub_100035318(v9, v45, &qword_1006AF810);
        sub_100035318(v34, v13, &qword_1006AF810);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10008C3E0(0, v17[2] + 1, 1, v17);
        }

        v36 = v17[2];
        v35 = v17[3];
        if (v36 >= v35 >> 1)
        {
          v17 = sub_10008C3E0(v35 > 1, v36 + 1, 1, v17);
        }

        v17[2] = v36 + 1;
        sub_100035318(v13, v17 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v36, &qword_1006AF810);
        i = v49;
      }

      ++v18;
      if (v22 == i)
      {
        return v17;
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
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000148A0()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100014950(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "FMDevicesProvider: didReceive items: %ld", v7, 0xCu);
  }

  else
  {
  }

  sub_100014BB0(a1);
  v8 = *(v2 + 16);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v9 + 8 * i + 32);
    }

    v16 = v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 80))(v2, a1, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_18:
}

uint64_t sub_100014BB0(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItemRole();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FMIPItemImageSize();
  v72 = *(v78 - 8);
  v5 = __chkstk_darwin(v78);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v55 = v7;
  if (v17)
  {
    v18 = v13;
    v19 = v11;
    v20 = v10;
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v15, v16, "FMItemImageCache: preloadImages for %ld", v21, 0xCu);
    v10 = v20;
    v11 = v19;
    v13 = v18;
  }

  else
  {
  }

  v79 = _swiftEmptyArrayStorage;
  v22 = *(a1 + 16);
  if (v22)
  {
    v77 = objc_opt_self();
    v76 = objc_opt_self();
    v23 = *(v48 + qword_1006B60E0 + 8);
    v75 = *(v48 + qword_1006B60E0);
    v67 = v23;
    v25 = *(v11 + 16);
    v24 = v11 + 16;
    v52 = v25;
    v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v51 = *(v24 + 56);
    v61 = enum case for FMIPItemImageSize.list(_:);
    ++v74;
    v73 = (v72 + 16);
    v65 = (v72 + 8);
    v66 = (v72 + 104);
    v60 = enum case for FMIPItemImageSize.infobox(_:);
    v50 = (v24 - 8);
    v49 = xmmword_100558330;
    v72 = v2;
    v27 = v78;
    v54 = v10;
    v53 = v24;
    v71 = v13;
    do
    {
      v64 = v26;
      v59 = v22;
      v52(v13, v26, v10);
      sub_10007EBC0(&qword_1006AF948);
      v28 = *(type metadata accessor for FMIPItemImageCacheRequest() - 8);
      v63 = *(v28 + 72);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = swift_allocObject();
      v58 = v30;
      *(v30 + 16) = v49;
      v62 = v30 + v29;
      v69 = *v66;
      v69(v9, v61, v27);
      v31 = [v77 systemBackgroundColor];
      FMIPItem.role.getter();
      FMIPItemRole.emoji.getter();
      v70 = *v74;
      v70(v4, v72);
      v68 = *v73;
      v32 = v55;
      v68(v55, v9, v27);
      v33 = [v76 mainScreen];
      [v33 scale];

      v34 = [v31 CGColor];
      swift_bridgeObjectRetain_n();
      FMIPItemImageCacheRequest.init(emoji:size:scale:backgroundColor:osVersion:)();

      v57 = *v65;
      v57(v9, v78);
      v69(v9, v61, v78);
      v35 = [v77 systemGray3Color];
      FMIPItem.role.getter();
      v56 = FMIPItemRole.emoji.getter();
      v70(v4, v72);
      v68(v32, v9, v78);
      v36 = [v76 mainScreen];
      [v36 scale];

      v37 = [v35 CGColor];

      FMIPItemImageCacheRequest.init(emoji:size:scale:backgroundColor:osVersion:)();

      v38 = v57;
      v57(v9, v78);
      v69(v9, v60, v78);
      v39 = [v77 systemBackgroundColor];
      FMIPItem.role.getter();
      FMIPItemRole.emoji.getter();
      v70(v4, v72);
      v68(v32, v9, v78);
      v40 = [v76 mainScreen];
      [v40 scale];

      v41 = [v39 CGColor];
      FMIPItemImageCacheRequest.init(emoji:size:scale:backgroundColor:osVersion:)();

      v38(v9, v78);
      v69(v9, v60, v78);
      v42 = [v77 systemGray3Color];
      FMIPItem.role.getter();
      FMIPItemRole.emoji.getter();
      v70(v4, v72);
      v68(v32, v9, v78);
      v43 = [v76 mainScreen];
      [v43 scale];

      v27 = v78;
      v44 = [v42 CGColor];
      v45 = v71;
      FMIPItemImageCacheRequest.init(emoji:size:scale:backgroundColor:osVersion:)();

      v10 = v54;
      v38(v9, v27);
      v13 = v45;
      (*v50)(v45, v10);
      sub_100493DA8(v58);
      v26 = v64 + v51;
      v22 = v59 - 1;
    }

    while (v59 != 1);
  }

  dispatch thunk of FMImageCache.preload(requests:)();
}

unint64_t sub_1000155D8(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B3938);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B3930);
      result = sub_1001B3E04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext();
      result = sub_100154AC0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10001582C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006BA5F8);
  __chkstk_darwin(v2 - 8);
  v61 = &v57 - v3;
  v4 = sub_10007EBC0(&qword_1006B6D60);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for _Glass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for _GlassGroup();
  v67 = &protocol witness table for _GlassGroup;
  sub_100008FC0(aBlock);
  _GlassGroup.init(foreground:)();
  UIView._background.setter();
  v12 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_platterContainer];
  [v12 setAxis:1];
  [v12 setDistribution:0];
  [v12 setAlignment:3];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v64 = v12;
  [v12 setSpacing:*&qword_1006D4750];
  v13 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_firstPlatter];
  v14 = [v13 layer];
  [v14 setMasksToBounds:1];

  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v13 setBackgroundColor:v16];

  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v66 = v8;
  v67 = &protocol witness table for _Glass;
  sub_100008FC0(aBlock);
  _Glass.flexible(_:)();
  v58 = *(v9 + 8);
  v59 = (v9 + 8);
  v58(v11, v8);
  v63 = v13;
  UIView._background.setter();
  v66 = &type metadata for SolariumFeatureFlag;
  v67 = sub_10000BD04();
  LOBYTE(v16) = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  p_cache = &OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator.cache;
  if (v16)
  {
    v18 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_userLocationButton];
    v19 = [v15 labelColor];
    [v18 setTintColor:v19];

    v20 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective2dButton];
    v21 = [v15 labelColor];
    [v20 setTintColor:v21];

    v22 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective3dButton];
    p_cache = (&OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator + 16);
    v23 = [v15 labelColor];
    [v22 setTintColor:v23];

    v24 = &selRef_clearColor;
  }

  else
  {
    v24 = &selRef_separatorColor;
  }

  v62 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_firstPlatterSeparatorView];
  v25 = v62;
  v26 = [v15 *v24];
  [v25 setBackgroundColor:v26];

  v27 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_secondPlatter];
  v28 = [v27 layer];
  [v28 setMasksToBounds:1];

  v29 = [v15 clearColor];
  v60 = v27;
  [v27 setBackgroundColor:v29];

  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v66 = v8;
  v67 = &protocol witness table for _Glass;
  sub_100008FC0(aBlock);
  _Glass.flexible(_:)();
  v58(v11, v8);
  UIView._background.setter();
  v30 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton];
  static UIButton.Configuration.plain()();
  v31 = v61;
  UIConfigurationColorTransformer.init(_:)();
  v32 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  UIButton.Configuration.imageColorTransformer.setter();
  v33 = type metadata accessor for UIButton.Configuration();
  (*(*(v33 - 8) + 56))(v6, 0, 1, v33);
  UIButton.configuration.setter();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = sub_1000173EC;
  v68 = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  v66 = &unk_1006340D0;
  v35 = _Block_copy(aBlock);

  [v30 setConfigurationUpdateHandler:v35];
  _Block_release(v35);
  v59 = v30;
  [v30 addTarget:v1 action:"mapSettingsButtonAction" forControlEvents:64];
  v36 = [objc_opt_self() mainBundle];
  v69._object = 0x800000010057ECE0;
  v37._object = 0x800000010057ECC0;
  v69._countAndFlagsBits = 0xD000000000000023;
  v37._countAndFlagsBits = 0xD000000000000011;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v69);

  v39 = String._bridgeToObjectiveC()();

  [v30 setAccessibilityLabel:v39];

  v61 = *(p_cache[172] + v1);
  v40 = v61;
  [v61 _setSelectsWhenTracking:0];
  [v40 setEnabled:*(*(*&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mediator] + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized)];
  v41 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspectiveButtonContainer];
  [v41 setAxis:1];
  [v41 setDistribution:1];
  [v41 setAlignment:3];
  [v41 setClipsToBounds:1];
  v42 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective2dButton];
  v43 = objc_opt_self();
  v44 = [v43 configurationWithPointSize:5 weight:17.0];
  v45 = String._bridgeToObjectiveC()();
  v46 = objc_opt_self();
  v47 = [v46 systemImageNamed:v45 withConfiguration:v44];

  [v42 setImage:v47 forState:0];
  v48 = *&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective3dButton];
  v49 = [v43 configurationWithPointSize:5 weight:17.0];
  v50 = String._bridgeToObjectiveC()();
  v51 = [v46 systemImageNamed:v50 withConfiguration:v49];

  [v48 setImage:v51 forState:0];
  [v42 addTarget:v1 action:"perspectiveButtonActionWithSender:" forControlEvents:64];
  [v48 addTarget:v1 action:"perspectiveButtonActionWithSender:" forControlEvents:64];
  v52 = v64;
  [v1 addSubview:v64];
  v53 = v63;
  [v52 addArrangedSubview:v63];
  v54 = v52;
  v55 = v60;
  [v54 addArrangedSubview:v60];
  [v53 addSubview:v59];
  [v53 addSubview:v61];
  [v53 addSubview:v62];
  [v41 addArrangedSubview:v42];
  [v41 addArrangedSubview:v48];
  [v55 addSubview:v41];
  return sub_100017AE0(2, 0);
}

uint64_t sub_1000162D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100016318(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100016470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1000164B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100016510(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v1[3] = sub_1000155D8(&_swiftEmptyArrayStorage);
  v1[4] = 0;
  type metadata accessor for FMAccessoryProductImageFetchingCoordinator();
  swift_allocObject();
  v1[5] = sub_10000DAA8();
  v8 = sub_10000905C(0, &qword_1006AEDC0);
  v15[0] = " fetch asynchronously.";
  v15[1] = v8;
  static DispatchQoS.userInteractive.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_10000E778(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  v1[6] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = [objc_opt_self() defaultSessionConfiguration];
  v10 = [objc_opt_self() sessionWithConfiguration:v9];

  v2[7] = v10;
  v11 = v17;
  v2[2] = v17;
  type metadata accessor for FMDevicesSubscription();
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v12 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10062C6A8;
  swift_unknownObjectWeakAssign();
  v13 = *(v11 + 16);

  os_unfair_lock_lock((v13 + 24));
  sub_10000E7C0((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));

  v2[4] = v12;

  return v2;
}

uint64_t sub_1000168D8()
{
  result = type metadata accessor for FMIPDevice();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMIPDeviceImageSize();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100016980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000169E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100016A70(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v5;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v8 = sub_100016C08(&_swiftEmptyArrayStorage, a1);
  sub_100013904(&_swiftEmptyArrayStorage, a1);
  sub_100013CE8(&_swiftEmptyArrayStorage, a1);
  sub_1000142E8(&_swiftEmptyArrayStorage, a1);

  return v8;
}

void *sub_100016C08(unint64_t a1, unint64_t a2)
{
  v31 = a2;
  v3 = sub_10007EBC0(&unk_1006C24C8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v23 - v4);
  v6 = sub_10007EBC0(&qword_1006AF840);
  v25 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v24 = &v23 - v9;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1 & 0xC000000000000001;
    v26 = (v25 + 48);
    v27 = (v25 + 56);
    v32 = &_swiftEmptyArrayStorage;
    while (v29)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v33 = v12;
      v14 = __chkstk_darwin(v12);
      *(&v23 - 2) = &v33;
      v15 = v14;
      if (sub_10008FC44(sub_1004D1FBC, (&v23 - 4), v31))
      {
        v16 = 1;
      }

      else
      {
        v17 = v15;
        IndexPath.init(row:section:)();
        v16 = 0;
        *v5 = v17;
      }

      (*v27)(v5, v16, 1, v6);

      if ((*v26)(v5, 1, v6) == 1)
      {
        sub_100012DF0(v5, &unk_1006C24C8);
      }

      else
      {
        v18 = v24;
        sub_100035318(v5, v24, &qword_1006AF840);
        sub_100035318(v18, v30, &qword_1006AF840);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_10008C44C(0, v32[2] + 1, 1, v32);
        }

        v20 = v32[2];
        v19 = v32[3];
        if (v20 >= v19 >> 1)
        {
          v32 = sub_10008C44C(v19 > 1, v20 + 1, 1, v32);
        }

        v21 = v32;
        v32[2] = v20 + 1;
        sub_100035318(v30, v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, &qword_1006AF840);
      }

      ++v11;
      if (v13 == i)
      {
        return v32;
      }
    }

    if (v11 >= *(v28 + 16))
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 8 * v11 + 32);
    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100016FF4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10001707C()
{
  _StringGuts.grow(_:)(29);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x65747265736E6920;
  v1._object = 0xEA00000000003A64;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  _StringGuts.grow(_:)(20);

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x64616F6C6572202CLL;
  v5._object = 0xE90000000000003ALL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A6465766F6DLL;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);

  return 0xD000000000000026;
}

uint64_t sub_100017284()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000172C4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

void sub_100017328(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100017390(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000173F4(a1);
  }
}

void sub_1000173F4(void *a1)
{
  v3 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v3 - 8);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B6D60);
  v6 = __chkstk_darwin(v5 - 8);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v44 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - v15;
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  My = type metadata accessor for Feature.FindMy();
  v48 = My;
  v49 = sub_10000A0C0(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v20 = sub_100008FC0(v47);
  (*(*(My - 8) + 104))(v20, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v47);
  v46 = v13;
  if (My)
  {
    sub_1002311CC(*(v1 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapType));
    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() systemImageNamed:v21];

    if (([a1 state] & 1) != 0 || (objc_msgSend(a1, "state") & 4) != 0)
    {
      v27 = [objc_opt_self() labelColor];
      v23 = [v27 colorWithAlphaComponent:0.3];
    }

    else
    {
      v23 = [objc_opt_self() labelColor];
    }

    v28 = objc_opt_self();
    v29 = v23;
    v30 = [v28 configurationWithPointSize:5 weight:2 scale:18.0];
    v31 = [v28 configurationWithHierarchicalColor:v29];

    v26 = [v30 configurationByApplyingConfiguration:v31];
    if (v22)
    {
      v32 = v22;
      v25 = [v32 imageWithRenderingMode:2];
    }

    else
    {

      v25 = 0;
    }
  }

  else
  {
    v24 = String._bridgeToObjectiveC()();
    v25 = [objc_opt_self() systemImageNamed:v24];

    v26 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:22.0];
  }

  UIButton.configuration.getter();
  v33 = type metadata accessor for UIButton.Configuration();
  v34 = *(*(v33 - 8) + 48);
  if (v34(v18, 1, v33))
  {
    sub_10028247C(v18, v10);
    UIButton.configuration.setter();
    sub_1002BE394(v18);
  }

  else
  {
    v35 = v26;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  v36 = v25;
  if (v34(v16, 1, v33))
  {
    sub_10028247C(v16, v10);
    UIButton.configuration.setter();
    sub_1002BE394(v16);
  }

  else
  {
    v37 = v25;
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  v38 = v46;
  if (([a1 state] & 1) != 0 || (objc_msgSend(a1, "state") & 4) != 0)
  {
    UIButton.configuration.getter();
    if (!v34(v38, 1, v33))
    {
      v48 = &type metadata for SolariumFeatureFlag;
      v49 = sub_10000BD04();
      v39 = isFeatureEnabled(_:)();
      sub_100006060(v47);
      v40 = objc_opt_self();
      v41 = &selRef_clearColor;
      if ((v39 & 1) == 0)
      {
        v41 = &selRef_tertiarySystemFillColor;
      }

      v42 = [v40 *v41];
      v43 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v43(v47, 0);
      goto LABEL_25;
    }

LABEL_21:
    sub_10028247C(v38, v10);
    UIButton.configuration.setter();

    sub_1002BE394(v38);
    return;
  }

  v38 = v45;
  UIButton.configuration.getter();
  if (v34(v38, 1, v33))
  {
    goto LABEL_21;
  }

  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
LABEL_25:
  UIButton.configuration.setter();
}

id sub_100017AA0()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

uint64_t sub_100017AE0(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _Glass();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&aBlock = v14;
    *v13 = 136315138;
    v64 = a1;
    v15 = String.init<A>(describing:)();
    v17 = sub_100005B4C(v15, v16, &aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMMapOptionView: updatePerspectiveButton - state: %s", v13, 0xCu);
    sub_100006060(v14);
  }

  *(v3 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_currentPerspectiveButtonState) = a1;
  v18 = *(v3 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_secondPlatter);
  v19 = *(v3 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_platterContainer);
  v20 = *(v3 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective2dButton);
  v21 = *(v3 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective3dButton);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = a1;
  *(v22 + 32) = v18;
  *(v22 + 40) = v20;
  *(v22 + 48) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = a1;
  *(v23 + 32) = v18;
  *(v23 + 40) = v20;
  *(v23 + 48) = v21;
  if ((a2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v67 = 0;
      aBlock = 0u;
      v66 = 0u;
      v39 = v21;
      v40 = v20;
      v41 = v18;
      v42 = v19;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      v46 = v42;
      UIView._background.setter();
      [v46 layoutIfNeeded];
      [v45 setAlpha:0.0];
      if (([v45 isHidden] & 1) == 0)
      {
        [v45 setHidden:1];
      }

      [v46 layoutIfNeeded];
      goto LABEL_25;
    }

    v47 = v21;
    v48 = v20;
    v49 = v18;
    v50 = v19;
    v51 = v47;
    v30 = v48;
    v29 = v49;
    v52 = v50;
    v53 = v51;
    v54 = v52;
    v35 = &selRef_pushViewController_animated_;
    if (![v29 isHidden])
    {
LABEL_18:
      [v54 layoutIfNeeded];
      [v29 setAlpha:1.0];
      if ([v29 v35[357]])
      {
        [v29 setHidden:0];
      }

      if ((a1 == 0) != [v30 v35[357]])
      {
        [v30 setHidden:a1 == 0];
      }

      if ((a1 == 1) != [v53 v35[357]])
      {
        [v53 setHidden:a1 == 1];
      }

      [v54 layoutIfNeeded];
LABEL_25:
      v38 = 0;
      goto LABEL_26;
    }

    v59 = v54;
    isEscapingClosureAtFileLocation = v51;
    if (qword_1006AEC30 == -1)
    {
LABEL_14:
      static _Glass._GlassVariant.regular.getter();
      v55 = v60;
      _Glass.init(_:smoothness:)();
      v56 = v63;
      *(&v66 + 1) = v63;
      v67 = &protocol witness table for _Glass;
      sub_100008FC0(&aBlock);
      _Glass.flexible(_:)();
      (*(v62 + 8))(v55, v56);
      UIView._background.setter();
      if ((a1 == 0) != [v30 v35[357]])
      {
        [v30 setHidden:a1 == 0];
      }

      v53 = isEscapingClosureAtFileLocation;
      v57 = [isEscapingClosureAtFileLocation v35[357]];
      v54 = v59;
      if ((((a1 == 0) ^ v57) & 1) == 0)
      {
        [v53 setHidden:a1 != 0];
      }

      goto LABEL_18;
    }

LABEL_28:
    swift_once();
    goto LABEL_14;
  }

  v24 = objc_opt_self();
  v25 = swift_allocObject();
  a1 = v25;
  *(v25 + 16) = sub_100060FF8;
  *(v25 + 24) = v22;
  v67 = sub_10000964C;
  v68 = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v63 = &v66;
  *&v66 = sub_1000095FC;
  *(&v66 + 1) = &unk_100634058;
  v26 = _Block_copy(&aBlock);
  v27 = v21;
  v28 = v20;
  v29 = v18;
  v30 = v19;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;

  v35 = v24;
  [v24 performWithoutAnimation:v26];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v67 = sub_1000623E4;
  v68 = v23;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v66 = sub_100004AE4;
  *(&v66 + 1) = &unk_100634080;
  v37 = _Block_copy(&aBlock);

  [v24 animateWithDuration:v37 animations:0 completion:0.25];
  _Block_release(v37);
  v38 = sub_100060FF8;
LABEL_26:

  return sub_10001835C(v38);
}

uint64_t sub_10001835C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10001836C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_platterContainer];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_firstPlatter];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v109 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_secondPlatter];
  [v109 setTranslatesAutoresizingMaskIntoConstraints:0];
  v105 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_firstPlatterSeparatorView];
  [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
  v104 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton];
  [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
  v106 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_userLocationButton];
  [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
  v107 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspectiveButtonContainer];
  [v107 setTranslatesAutoresizingMaskIntoConstraints:0];
  v110 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective2dButton];
  [v110 setTranslatesAutoresizingMaskIntoConstraints:0];
  v111 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective3dButton];
  [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [v1 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [v0 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v1 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v108 = v3;
  [v3 activateConstraints:isa];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100552F00;
  v19 = [v2 heightAnchor];
  v20 = [v19 constraintEqualToConstant:89.0];

  *(v18 + 32) = v20;
  v21 = [v2 widthAnchor];
  v22 = [v21 constraintEqualToConstant:44.0];

  *(v18 + 40) = v22;
  v23 = [v109 widthAnchor];
  v24 = [v23 constraintEqualToConstant:44.0];

  *(v18 + 48) = v24;
  v25 = [v110 heightAnchor];
  v26 = [v25 constraintEqualToConstant:44.5];

  *(v18 + 56) = v26;
  v27 = [v111 heightAnchor];
  v28 = [v27 constraintEqualToConstant:44.5];

  *(v18 + 64) = v28;
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:v29];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100552F00;
  v31 = [v104 topAnchor];
  v32 = [v2 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v30 + 32) = v33;
  v34 = [v104 bottomAnchor];
  v35 = [v105 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v30 + 40) = v36;
  v37 = [v104 centerXAnchor];
  v38 = [v2 centerXAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v30 + 48) = v39;
  v40 = [v104 widthAnchor];
  v41 = [v2 widthAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v30 + 56) = v42;
  v43 = [v104 heightAnchor];
  v44 = [v2 widthAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v30 + 64) = v45;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v108 activateConstraints:v46];

  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100552EF0;
  v48 = [v105 leadingAnchor];
  v49 = [v2 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v47 + 32) = v50;
  v51 = [v105 trailingAnchor];
  v52 = [v2 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v47 + 40) = v53;
  v54 = [v105 heightAnchor];
  v55 = [objc_opt_self() mainScreen];
  [v55 scale];
  v57 = v56;

  v58 = [v54 constraintEqualToConstant:1.0 / v57];
  *(v47 + 48) = v58;
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v108 activateConstraints:v59];

  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100552F00;
  v61 = [v106 topAnchor];
  v62 = [v105 bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v60 + 32) = v63;
  v64 = [v106 bottomAnchor];
  v65 = [v2 bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v60 + 40) = v66;
  v67 = [v106 centerXAnchor];
  v68 = [v2 centerXAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v60 + 48) = v69;
  v70 = [v106 widthAnchor];
  v71 = [v2 widthAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v60 + 56) = v72;
  v73 = [v106 heightAnchor];
  v74 = [v2 widthAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v60 + 64) = v75;
  v76 = Array._bridgeToObjectiveC()().super.isa;

  [v108 activateConstraints:v76];

  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1005521F0;
  v78 = [v107 topAnchor];
  v79 = [v109 topAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v77 + 32) = v80;
  v81 = [v107 bottomAnchor];
  v82 = [v109 bottomAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v77 + 40) = v83;
  v84 = [v107 widthAnchor];
  v85 = [v109 widthAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v77 + 48) = v86;
  v87 = [v107 heightAnchor];
  v88 = [v109 widthAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v77 + 56) = v89;
  v90 = Array._bridgeToObjectiveC()().super.isa;

  [v108 activateConstraints:v90];

  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1005521F0;
  v92 = [v110 heightAnchor];
  v93 = [v107 widthAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];

  *(v91 + 32) = v94;
  v95 = [v110 widthAnchor];
  v96 = [v107 widthAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];

  *(v91 + 40) = v97;
  v98 = [v111 heightAnchor];
  v99 = [v107 widthAnchor];
  v100 = [v98 constraintEqualToAnchor:v99];

  *(v91 + 48) = v100;
  v101 = [v111 widthAnchor];
  v102 = [v107 widthAnchor];
  v103 = [v101 constraintEqualToAnchor:v102];

  *(v91 + 56) = v103;
  v112.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v108 activateConstraints:v112.super.isa];
}

uint64_t sub_100019230(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLocationSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber + 8) = &off_100633ED0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v3;
}

id sub_100019378(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_visualEffectView;
  *&v1[v3] = [objc_allocWithZone(UIVisualEffectView) init];
  v4 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_darkenerView;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for FMNoLocationBackgroundView()) initWithFrame:{0.0, 0.0, 80.0, 80.0}];
  v6 = OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_iconImageViewWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageViewTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_selectionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_devicesSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_peopleSubscription] = 0;
  v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_isNoLocationShowing] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_compactConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_regularConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_mediator] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FMNoLocationViewController();
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

id sub_1000194FC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle];
  v10 = [objc_opt_self() systemBlueColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v11 CGColor];
  *v9 = xmmword_10055D670;
  *(v9 + 1) = xmmword_10055D680;
  *(v9 + 2) = xmmword_10055CCB0;
  *(v9 + 3) = xmmword_1005526C0;
  __asm
  {
    FMOV            V0.2D, #20.0
    FMOV            V1.2D, #15.0
  }

  *(v9 + 4) = _Q0;
  *(v9 + 5) = _Q1;
  *(v9 + 6) = xmmword_10055CCC0;
  *(v9 + 7) = vdupq_n_s64(0x3FD999999999999AuLL);
  __asm { FMOV            V0.2D, #30.0 }

  *(v9 + 8) = _Q0;
  *(v9 + 9) = xmmword_10055CCD0;
  *(v9 + 20) = v12;
  v9[168] = 1;
  v20 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerCircle;
  *&v4[v20] = [objc_allocWithZone(CALayer) init];
  v21 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerPlaceholder;
  *&v4[v21] = [objc_allocWithZone(CALayer) init];
  v22 = OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerImage;
  *&v4[v22] = [objc_allocWithZone(CALayer) init];
  v25.receiver = v4;
  v25.super_class = type metadata accessor for FMNoLocationBackgroundView();
  v23 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  sub_1000196EC();
  sub_100019994();

  return v23;
}

id sub_1000196EC()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerCircle];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle + 8];
  if (v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle + 168])
  {
    v4 = v2 - (v3 + v3);
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle];
  }

  [*&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerCircle] setFrame:{*&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle + 8], *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_appliedStyle + 8], v4, v4}];
  [v1 setCornerRadius:v4 * 0.5];
  [v1 setAnchorPoint:{0.5, 0.5}];
  v5 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerPlaceholder];
  v6 = v4 + -4.0;
  [v5 setCornerRadius:v6 * 0.5];
  [v1 addSublayer:v5];
  [v1 addSublayer:*&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerImage]];
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  [v1 bounds];
  v7 = CGPathCreateWithEllipseInRect(v15, &transform);
  [v1 setShadowPath:v7];

  v8 = [objc_opt_self() blackColor];
  v9 = [v8 CGColor];

  [v1 setShadowColor:v9];
  [v1 setShadowOffset:{0.0, 0.0}];
  LODWORD(v10) = 1045220557;
  [v1 setShadowOpacity:v10];
  [v1 setShadowRadius:v3];
  v11 = [v0 layer];
  [v11 addSublayer:v1];

  v12 = [v0 layer];
  [v12 setFrame:{0.0, 0.0, v2, v2}];

  return [v5 setFrame:{2.0, 2.0, v6, v6}];
}

void sub_100019994()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  if (v2 == 2)
  {
    v4 = v3;
    v5 = [v3 systemGray2Color];
    v6 = [v5 CGColor];

    v7 = [v4 systemGray3Color];
    [*&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerCircle] setBackgroundColor:v6];
    v8 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerPlaceholder];
    v13 = [v7 CGColor];
    [v8 setBackgroundColor:?];
  }

  else
  {
    v9 = v3;
    v10 = [v3 systemGray6Color];
    v7 = [v10 CGColor];

    [*&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerCircle] setBackgroundColor:v7];
    v11 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationBackgroundView_centerPlaceholder];
    v12 = [v9 whiteColor];
    v13 = [v12 CGColor];

    [v11 setBackgroundColor:v13];
  }
}

char *sub_100019B98(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesSubscription] = 0;
  v3 = &v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_selectionSubscription];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_contentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_items] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleTabItem] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesTabItem] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem] = 0;
  v4 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style;
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  v25[4] = xmmword_1006D43C0;
  v25[5] = unk_1006D43D0;
  v25[6] = xmmword_1006D43E0;
  v25[0] = xmmword_1006D4380;
  v25[1] = *&qword_1006D4390;
  v25[2] = xmmword_1006D43A0;
  v25[3] = unk_1006D43B0;
  memmove(&v1[v4], &xmmword_1006D4380, 0x70uLL);
  v5 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorView;
  v6 = objc_allocWithZone(UIView);
  sub_10001A0A8(v25, v24);
  *&v1[v5] = [v6 init];
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewLeadingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewTrailingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsLeadingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsTrailingConstraint] = 0;
  v7 = [objc_allocWithZone(UIStackView) init];
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabBarButtonsStackView] = v7;
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_mediator] = a1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for FMEmbeddedTabBar();

  v8 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = a1[6];
  type metadata accessor for FMPeopleSubscription();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = v8;

  UUID.init()();
  *(v10 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100632C48;
  swift_unknownObjectWeakAssign();
  v12 = *(v9 + 32);

  os_unfair_lock_lock((v12 + 24));
  sub_10000E7C0((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));

  *&v11[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleSubscription] = v10;

  v13 = a1[7];
  v14 = v11;

  v15 = sub_10001A0E0(v14, v13);

  v16 = &v14[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_selectionSubscription];
  *v16 = v15;
  v16[1] = &off_100637420;
  swift_unknownObjectRelease();
  v17 = a1[3];
  type metadata accessor for FMDevicesSubscription();
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = v14;

  UUID.init()();
  *(v18 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100632BA8;
  swift_unknownObjectWeakAssign();
  v20 = *(v17 + 16);

  os_unfair_lock_lock((v20 + 24));
  sub_10000E7C0((v20 + 16));
  os_unfair_lock_unlock((v20 + 24));

  *&v19[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesSubscription] = v18;

  sub_100289718();
  sub_10001BD98();
  sub_10001C364();
  sub_10007EBC0(&qword_1006B6D68);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100552220;
  *(v21 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v21 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v19;
}

double sub_10001A020()
{
  v0 = [objc_opt_self() configurationWithPointSize:17.0];
  xmmword_1006D4380 = xmmword_10055B540;
  qword_1006D4390 = 0x4034000000000000;
  qword_1006D4398 = v0;
  xmmword_1006D43A0 = xmmword_10055B550;
  unk_1006D43B0 = xmmword_10055B560;
  xmmword_1006D43C0 = xmmword_10055B570;
  unk_1006D43D0 = xmmword_10055B580;
  result = 28.0;
  xmmword_1006D43E0 = xmmword_10055B590;
  return result;
}

uint64_t sub_10001A110()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_items;
  swift_beginAccess();
  *&v0[v2] = _swiftEmptyArrayStorage;

  v73 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabBarButtonsStackView;
  v3 = [*&v0[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabBarButtonsStackView] arrangedSubviews];
  sub_10000905C(0, &qword_1006BA410);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
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

  v10 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_mediator;
  v11 = qword_1006AECC0;
  v12 = *(*&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_mediator] + 16);
  if (v11 != -1)
  {
    v72 = v12;
    swift_once();
    v12 = v72;
  }

  v13 = &selRef__enter3DMode;
  if (byte_1006D4AD1 == 1)
  {
    v14 = v12[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v16 = [objc_opt_self() mainBundle];
      v74._object = 0x8000000100587640;
      v17._countAndFlagsBits = 0x545F454C504F4550;
      v74._countAndFlagsBits = 0xD00000000000001CLL;
      v17._object = 0xEA00000000004241;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v74);

      v20 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 24];
      v21 = String._bridgeToObjectiveC()();
      v22 = [objc_opt_self() systemImageNamed:v21 withConfiguration:v20];

      v23 = objc_allocWithZone(type metadata accessor for FMEmbeddedTabBarItem());
      v24 = v1;
      v25 = sub_1002292C4(v19._countAndFlagsBits, v19._object, v22, 0, v1, &off_100632B70);
      [*&v1[v73] addArrangedSubview:v25];
      v26 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected;
      v25[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected] = 1;
      v27 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
      [*&v25[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button] setSelected:1];
      LODWORD(v21) = v25[v26];
      v28 = *&v25[v27];
      v29 = objc_opt_self();
      v30 = &selRef_systemBlueColor;
      if (!v21)
      {
        v30 = &selRef_labelColor;
      }

      v31 = [v29 *v30];
      [v28 setTintColor:v31];

      swift_beginAccess();
      v15 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v13 = &selRef__enter3DMode;
    }
  }

  else
  {

    v15 = 0;
  }

  v32 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleTabItem];
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleTabItem] = v15;

  if (*(*(*&v1[v10] + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted))
  {
    v33 = 0;
  }

  else
  {
    v34 = [objc_opt_self() mainBundle];
    v75._object = 0x8000000100587660;
    v35._countAndFlagsBits = 0x5F53454349564544;
    v35._object = 0xEB00000000424154;
    v75._countAndFlagsBits = 0xD00000000000001DLL;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v75);

    v38 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 24];
    v39 = String._bridgeToObjectiveC()();
    v40 = [objc_opt_self() systemImageNamed:v39 withConfiguration:v38];

    objc_allocWithZone(type metadata accessor for FMEmbeddedTabBarItem());
    v41 = v1;
    v42 = sub_1002292C4(v37._countAndFlagsBits, v37._object, v40, 1, v1, &off_100632B70);
    [*&v1[v73] addArrangedSubview:v42];
    swift_beginAccess();
    v33 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v13 = &selRef__enter3DMode;
  }

  v43 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesTabItem];
  *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesTabItem] = v33;

  if (FMIPItemsTabEnabled.getter())
  {
    v44 = [objc_opt_self() mainBundle];
    v45.value._countAndFlagsBits = 0xD000000000000013;
    v76._object = 0x8000000100579A00;
    v46._countAndFlagsBits = 0x41545F534D455449;
    v45.value._object = 0x80000001005799E0;
    v46._object = 0xE900000000000042;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v76._countAndFlagsBits = 0xD000000000000018;
    v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v45, v44, v47, v76);

    v49 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 24];
    v50 = String._bridgeToObjectiveC()();
    v51 = [objc_opt_self() systemImageNamed:v50 withConfiguration:v49];

    objc_allocWithZone(type metadata accessor for FMEmbeddedTabBarItem());
    v52 = v1;
    v53 = sub_1002292C4(v48._countAndFlagsBits, v48._object, v51, 2, v1, &off_100632B70);
    [*&v1[v73] addArrangedSubview:v53];
    swift_beginAccess();
    v54 = v53;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v55 = *&v52[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem];
    *&v52[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem] = v54;

    v13 = &selRef__enter3DMode;
  }

  else
  {
    v56 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem];
    *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem] = 0;
  }

  v57 = [objc_opt_self() v13[272]];
  v77._object = 0x80000001005876A0;
  v58._countAndFlagsBits = 0x4241545F454DLL;
  v58._object = 0xE600000000000000;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v77._countAndFlagsBits = 0xD000000000000018;
  v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v77);

  v61 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 24];
  v62 = String._bridgeToObjectiveC()();
  v63 = [objc_opt_self() systemImageNamed:v62 withConfiguration:v61];

  objc_allocWithZone(type metadata accessor for FMEmbeddedTabBarItem());
  v64 = v1;
  v65 = sub_1002292C4(v60._countAndFlagsBits, v60._object, v63, 3, v1, &off_100632B70);
  [*&v1[v73] addArrangedSubview:v65];
  swift_beginAccess();
  v66 = v65;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v67 = *&v64[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem];
  *&v64[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem] = v66;
  v68 = v66;

  v69 = dispatch thunk of FMFManager.friends.getter();

  sub_10001AE5C(v69);

  sub_10001B278(v70);
}