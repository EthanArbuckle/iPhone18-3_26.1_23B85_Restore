@interface NearbySharingInteractionViewModel
- (_TtC9AirDropUI33NearbySharingInteractionViewModel)init;
- (id)collaborationItemsProvider:(id)provider resolveActivityItem:(id)item;
- (id)collaborationServiceForItemsProvider:(id)provider;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change;
@end

@implementation NearbySharingInteractionViewModel

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask))
  {
    selfCopy = self;

    Task.cancel()();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for NearbySharingInteractionViewModel(0);
  [(NearbySharingInteractionViewModel *)&v5 dealloc];
}

- (void)observable:(id)observable didChange:(unint64_t)change
{
  if (change == 4)
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    shareOptions = [observable shareOptions];
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = shareOptions;
    static Published.subscript.setter();

    swift_unknownObjectRelease();
  }
}

- (id)collaborationItemsProvider:(id)provider resolveActivityItem:(id)item
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000077C8(&qword_100172A90, &qword_1001187E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001186F0;
  sub_100058DC8(&v7, (v4 + 32));
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)collaborationServiceForItemsProvider:(id)provider
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService);
  if (v3)
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for PlaceholderSFCollaborationService()) init];
    v3 = 0;
  }

  v5 = v3;

  return v4;
}

- (_TtC9AirDropUI33NearbySharingInteractionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end