@interface JournalShareUtility
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (_TtC7Journal19JournalShareUtility)init;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
@end

@implementation JournalShareUtility

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1000F1BB0(v6);
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  swift_unknownObjectRetain();
  v4 = sub_1000EC874();
  swift_unknownObjectRelease();
  return v4 & 1;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:2];

  return v4;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7Journal19JournalShareUtility_presentingViewController);
  v7 = v6;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1000F1DCC(a4, v6);

  swift_unknownObjectRelease();
}

- (_TtC7Journal19JournalShareUtility)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal19JournalShareUtility_presentingViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for JournalShareUtility();
  return [(JournalShareUtility *)&v3 init];
}

@end