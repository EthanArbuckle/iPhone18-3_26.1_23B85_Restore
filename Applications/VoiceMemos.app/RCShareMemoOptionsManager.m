@interface RCShareMemoOptionsManager
- (RCShareMemoOptionsManager)init;
- (RCShareMemoOptionsManager)initWithCompositions:(id)a3 onUpdate:(id)a4;
- (id)_customizationGroupsForActivityViewController:(id)a3;
@end

@implementation RCShareMemoOptionsManager

- (RCShareMemoOptionsManager)initWithCompositions:(id)a3 onUpdate:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1000067AC(0, &qword_1002D02B8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___RCShareMemoOptionsManager_selectedSendAsOptionIndex) = 0;
  *(&self->super.isa + OBJC_IVAR___RCShareMemoOptionsManager_selectedExportOptionIndex) = 0;
  *(v7 + 16) = v5;
  *(&self->super.isa + OBJC_IVAR___RCShareMemoOptionsManager_compositions) = v6;
  v8 = (self + OBJC_IVAR___RCShareMemoOptionsManager_onUpdate);
  *v8 = sub_1000FE07C;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ShareMemoOptionsManager();
  return [(RCShareMemoOptionsManager *)&v10 init];
}

- (RCShareMemoOptionsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)_customizationGroupsForActivityViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000FDF14();

  sub_1000067AC(0, &qword_1002D0298);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end