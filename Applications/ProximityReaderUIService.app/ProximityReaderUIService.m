id sub_1000010A0(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithName:v4 sessionRole:v2];

  return v5;
}

id sub_100001254()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_100001498(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

void *sub_100001530()
{
  v1 = OBJC_IVAR____TtC24ProximityReaderUIService13SceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000015DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24ProximityReaderUIService13SceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000178C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000017D0(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(UIWindow);
    v6 = a1;
    v7 = [v5 initWithWindowScene:v4];
    type metadata accessor for ViewController();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v7 setRootViewController:v10];
    [v7 makeKeyAndVisible];
    v8 = *((swift_isaMask & *v1) + 0x60);
    v9 = v7;
    v8(v7);
  }
}