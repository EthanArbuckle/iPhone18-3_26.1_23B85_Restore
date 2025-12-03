@interface RecentPlacesVC
- (_TtC7Journal14RecentPlacesVC)initWithCoder:(id)coder;
- (_TtC7Journal14RecentPlacesVC)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal14RecentPlacesVC)initWithStyle:(int64_t)style;
- (void)refreshData;
- (void)viewDidLoad;
@end

@implementation RecentPlacesVC

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10074C7FC();
}

- (void)refreshData
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1003E9628(0, 0, v5, &unk_100966D18, v9);
}

- (_TtC7Journal14RecentPlacesVC)initWithStyle:(int64_t)style
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14RecentPlacesVC_dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14RecentPlacesVC_cancellable) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RecentPlacesVC();
  return [(RecentPlacesVC *)&v5 initWithStyle:style];
}

- (_TtC7Journal14RecentPlacesVC)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14RecentPlacesVC_dataSource) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14RecentPlacesVC_cancellable) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14RecentPlacesVC_dataSource) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14RecentPlacesVC_cancellable) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RecentPlacesVC();
  v9 = [(RecentPlacesVC *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7Journal14RecentPlacesVC)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14RecentPlacesVC_dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14RecentPlacesVC_cancellable) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecentPlacesVC();
  coderCopy = coder;
  v5 = [(RecentPlacesVC *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end