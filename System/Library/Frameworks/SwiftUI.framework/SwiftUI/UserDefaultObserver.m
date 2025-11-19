@interface UserDefaultObserver
- (_TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)userDefaultsDidChange:(id)a3;
@end

@implementation UserDefaultObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state);
  if (v5)
  {
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    self;
    outlined copy of UserDefaultObserver.State(v5);
    UserDefaultObserver.unobserve(oldDefaults:key:)(v5, v6, v7);
  }

  else
  {
    v8 = self;
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  [(UserDefaultObserver *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v15 = a5;
    v16 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  specialized UserDefaultObserver.observeValue(forKeyPath:of:change:context:)(v10, v12, v17, a6);

  outlined destroy of Any?(v17);
}

- (void)userDefaultsDidChange:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  UserDefaultObserver.userDefaultsDidChange(_:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end