@interface TodayDebugSectionBackgroundView
- (_TtC18ASMessagesProvider31TodayDebugSectionBackgroundView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TodayDebugSectionBackgroundView

- (_TtC18ASMessagesProvider31TodayDebugSectionBackgroundView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UIView) init];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v2 = v6.receiver;
  [(TodayDebugSectionBackgroundView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31TodayDebugSectionBackgroundView_sectionTypeIndicator];
  sub_75D650();
  MinX = CGRectGetMinX(v7);
  sub_75D650();
  MinY = CGRectGetMinY(v8);
  sub_75D650();
  [v3 setFrame:{MinX, MinY, 10.0, CGRectGetHeight(v9), v6.receiver, v6.super_class}];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v2 = v5.receiver;
  [(TodayDebugSectionBackgroundView *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31TodayDebugSectionBackgroundView_sectionTypeIndicator];
  clearColor = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:clearColor];
}

@end