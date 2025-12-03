@interface RemoteProgressObserver
- (_TtC8GameSave22RemoteProgressObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation RemoteProgressObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_remoteProgress);
  selfCopy = self;
  v4 = v2;
  v5 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898C250);
  [v4 removeObserver:selfCopy forKeyPath:v5];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for RemoteProgressObserver();
  [(RemoteProgressObserver *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  specialized RemoteProgressObserver.observeValue(forKeyPath:of:change:context:)();

  outlined destroy of URL?(v13, &_sypSgMd, &_sypSgMR);
}

- (_TtC8GameSave22RemoteProgressObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end