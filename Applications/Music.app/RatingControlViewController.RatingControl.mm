@interface RatingControlViewController.RatingControl
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl)initWithCoder:(id)coder;
- (_TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RatingControlViewController.RatingControl

- (_TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005EC4FC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1005ED700();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(RatingControlViewController.RatingControl *)selfCopy bounds];
  if (qword_10117F958 != -1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    swift_once();
    v10 = v16;
    v9 = v15;
    v8 = v14;
    v7 = v13;
  }

  v18.origin.x = sub_100058728(v7, v8, v9, v10, *&qword_101197A78, unk_101197A80);
  v17.x = x;
  v17.y = y;
  v11 = CGRectContainsPoint(v18, v17);

  return v11;
}

- (_TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end