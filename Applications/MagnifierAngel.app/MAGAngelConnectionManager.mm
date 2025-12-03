@interface MAGAngelConnectionManager
- (_TtC14MagnifierAngel25MAGAngelConnectionManager)init;
- (id)currentState;
- (void)dealloc;
- (void)describeScene;
- (void)dismissUI;
- (void)hideUI;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)presentDetectionUI;
- (void)simulateEvent:(id)event;
- (void)stopSpeech;
- (void)toggleCurrentActivity;
- (void)toggleDoorDetection;
- (void)toggleFurnitureDetection;
- (void)toggleImageDescriptions;
- (void)togglePeopleDetection;
- (void)togglePointAndSpeak;
- (void)toggleTextDetection;
- (void)toggleUI;
@end

@implementation MAGAngelConnectionManager

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
    v6 = *(&self->super.isa + v3);
    *(&self->super.isa + v3) = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MAGAngelConnectionManager();
  [(MAGAngelConnectionManager *)&v7 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100034A0C(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC14MagnifierAngel25MAGAngelConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentDetectionUI
{
  selfCopy = self;
  sub_100031BFC();
}

- (void)dismissUI
{
  selfCopy = self;
  sub_1000336C0(0x557373696D736964, 0xEB00000000292849, 2u);
}

- (void)hideUI
{
  selfCopy = self;
  sub_1000336C0(0x2928495565646968, 0xE800000000000000, 3u);
}

- (void)toggleUI
{
  selfCopy = self;
  sub_1000336C0(0x4955656C67676F74, 0xEA00000000002928, 4u);
}

- (void)toggleTextDetection
{
  selfCopy = self;
  sub_1000320C0();
}

- (void)toggleFurnitureDetection
{
  selfCopy = self;
  sub_10003244C();
}

- (void)togglePeopleDetection
{
  selfCopy = self;
  sub_1000327D8();
}

- (void)toggleDoorDetection
{
  selfCopy = self;
  sub_100032B64();
}

- (void)toggleImageDescriptions
{
  selfCopy = self;
  sub_100032EF0();
}

- (void)togglePointAndSpeak
{
  selfCopy = self;
  sub_10003327C();
}

- (void)describeScene
{
  selfCopy = self;
  sub_1000336C0(0x6562697263736564, 0xEF2928656E656353, 0xBu);
}

- (id)currentState
{
  sub_100034DD0();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)stopSpeech
{
  selfCopy = self;
  sub_1000336C0(0x65657053706F7473, 0xEC00000029286863, 0xCu);
}

- (void)toggleCurrentActivity
{
  selfCopy = self;
  sub_100033A64();
}

- (void)simulateEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100033DF0(v5, v7);
  sub_1000343B0(v5, v7);
}

@end