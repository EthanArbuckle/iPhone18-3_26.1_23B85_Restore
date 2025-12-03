@interface JournalShareUtility
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (_TtC7Journal19JournalShareUtility)init;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
@end

@implementation JournalShareUtility

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_1000F1BB0(v6);
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  swift_unknownObjectRetain();
  v4 = sub_1000EC874();
  swift_unknownObjectRelease();
  return v4 & 1;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  v4 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:2];

  return v4;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7Journal19JournalShareUtility_presentingViewController);
  v7 = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000F1DCC(drop, v6);

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