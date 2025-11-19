@interface MAGAngelConnectionManager
- (_TtC14MagnifierAngel25MAGAngelConnectionManager)init;
- (id)currentState;
- (void)dealloc;
- (void)describeScene;
- (void)dismissUI;
- (void)hideUI;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)presentDetectionUI;
- (void)simulateEvent:(id)a3;
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
  v5 = self;
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

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_100034A0C(v8);

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
  v2 = self;
  sub_100031BFC();
}

- (void)dismissUI
{
  v2 = self;
  sub_1000336C0(0x557373696D736964, 0xEB00000000292849, 2u);
}

- (void)hideUI
{
  v2 = self;
  sub_1000336C0(0x2928495565646968, 0xE800000000000000, 3u);
}

- (void)toggleUI
{
  v2 = self;
  sub_1000336C0(0x4955656C67676F74, 0xEA00000000002928, 4u);
}

- (void)toggleTextDetection
{
  v2 = self;
  sub_1000320C0();
}

- (void)toggleFurnitureDetection
{
  v2 = self;
  sub_10003244C();
}

- (void)togglePeopleDetection
{
  v2 = self;
  sub_1000327D8();
}

- (void)toggleDoorDetection
{
  v2 = self;
  sub_100032B64();
}

- (void)toggleImageDescriptions
{
  v2 = self;
  sub_100032EF0();
}

- (void)togglePointAndSpeak
{
  v2 = self;
  sub_10003327C();
}

- (void)describeScene
{
  v2 = self;
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
  v2 = self;
  sub_1000336C0(0x65657053706F7473, 0xEC00000029286863, 0xCu);
}

- (void)toggleCurrentActivity
{
  v2 = self;
  sub_100033A64();
}

- (void)simulateEvent:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100033DF0(v5, v7);
  sub_1000343B0(v5, v7);
}

@end