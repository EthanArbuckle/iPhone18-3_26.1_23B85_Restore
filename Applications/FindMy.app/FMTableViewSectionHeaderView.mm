@interface FMTableViewSectionHeaderView
- (_TtC6FindMy28FMTableViewSectionHeaderView)initWithCoder:(id)coder;
- (_TtC6FindMy28FMTableViewSectionHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation FMTableViewSectionHeaderView

- (_TtC6FindMy28FMTableViewSectionHeaderView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC6FindMy28FMTableViewSectionHeaderView_separatorView;
  *(&self->super.super.super.super.isa + v6) = [objc_allocWithZone(UIView) init];
  if (v5)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for FMTableViewSectionHeaderView();
  v8 = [(FMTableViewSectionHeaderView *)&v10 initWithReuseIdentifier:v7];

  return v8;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UIViewConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIViewConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = UIViewConfigurationState._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for FMTableViewSectionHeaderView();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(FMTableViewSectionHeaderView *)&v11 _bridgedUpdateConfigurationUsingState:isa];

  sub_10040E1B4();
  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMTableViewSectionHeaderView_separatorView) setHidden:UIViewConfigurationState.isPinned.getter() & 1];
  (*(v5 + 8))(v7, v4);
}

- (_TtC6FindMy28FMTableViewSectionHeaderView)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC6FindMy28FMTableViewSectionHeaderView_separatorView;
  v6 = objc_allocWithZone(UIView);
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMTableViewSectionHeaderView();
  v8 = [(FMTableViewSectionHeaderView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end