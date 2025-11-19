@interface Defaults.Observation
- (_TtCC11MobilePhone8Defaults11Observation)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation Defaults.Observation

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault);
  v3 = self;
  v4 = v2;

  v5 = String._bridgeToObjectiveC()();

  [v4 removeObserver:v3 forKeyPath:v5];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for Defaults.Observation();
  [(Defaults.Observation *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v8 = self;
  }

  (*(&self->super.isa + OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange))(v8);
  outlined destroy of Any?(v9);
}

- (_TtCC11MobilePhone8Defaults11Observation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end