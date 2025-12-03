@interface Defaults.Observation
- (_TtCC11MobilePhone8Defaults11Observation)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation Defaults.Observation

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault);
  selfCopy = self;
  v4 = v2;

  v5 = String._bridgeToObjectiveC()();

  [v4 removeObserver:selfCopy forKeyPath:v5];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for Defaults.Observation();
  [(Defaults.Observation *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    selfCopy2 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  (*(&self->super.isa + OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange))(selfCopy2);
  outlined destroy of Any?(v9);
}

- (_TtCC11MobilePhone8Defaults11Observation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end