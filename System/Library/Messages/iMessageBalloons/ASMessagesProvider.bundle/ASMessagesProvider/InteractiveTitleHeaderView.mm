@interface InteractiveTitleHeaderView
- (_TtC18ASMessagesProvider26InteractiveTitleHeaderView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation InteractiveTitleHeaderView

- (_TtC18ASMessagesProvider26InteractiveTitleHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_currentState;
  v6 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for InteractiveTitleHeaderView();
  v2 = v4.receiver;
  [(InteractiveTitleHeaderView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v3 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for InteractiveTitleHeaderView();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(InteractiveTitleHeaderView *)&v11 prepareForReuse];
  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView) prepareForReuse];
  v8 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_currentState;
  swift_beginAccess();
  sub_11CBF0(v5, selfCopy + v9);
  swift_endAccess();
}

@end