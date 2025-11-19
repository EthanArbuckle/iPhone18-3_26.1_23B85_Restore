@interface InfoCardFixedHeaderView
- (NSString)title;
- (_TtC4Maps23InfoCardFixedHeaderView)initWithCoder:(id)a3;
- (_TtP4Maps31InfoCardFixedHeaderViewDelegate_)delegate;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)setButtonConfiguration:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation InfoCardFixedHeaderView

- (void)setButtonConfiguration:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_buttonConfiguration);
  *(self + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_buttonConfiguration) = a3;
  v3 = a3;
}

- (_TtP4Maps31InfoCardFixedHeaderViewDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_100310DE4(v4, v6);
}

- (_TtC4Maps23InfoCardFixedHeaderView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR____TtC4Maps23InfoCardFixedHeaderView_title);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong fixedHeaderViewTapped:self];

    swift_unknownObjectRelease();
  }
}

@end