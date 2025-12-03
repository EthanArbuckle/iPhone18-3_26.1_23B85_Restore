@interface _AVOOPInputViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC5AVKit25_AVOOPInputViewController)initWithCoder:(id)coder;
- (_TtC5AVKit25_AVOOPInputViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5AVKit25_AVOOPInputViewController)initWithTappingForDismissing:(id)dismissing;
- (void)handleTapGestureRecognizer;
- (void)viewDidLoad;
@end

@implementation _AVOOPInputViewController

- (_TtC5AVKit25_AVOOPInputViewController)initWithTappingForDismissing:(id)dismissing
{
  v3 = _Block_copy(dismissing);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_18B5356C8;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_18B53541C(v3, v4);
  sub_18B4A31A4(v3);
  return v5;
}

- (_TtC5AVKit25_AVOOPInputViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController_onTappingForDismissing);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController__kRSInputRoutingActivityBundleID);
  *v4 = 0xD000000000000023;
  v4[1] = 0x800000018B6FC610;
  result = sub_18B6C5C5C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_18B534CBC();
}

- (void)handleTapGestureRecognizer
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController_onTappingForDismissing);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_18B4A324C(v2);
    v2(v4);

    sub_18B4A31A4(v2);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_18B535588(touchCopy);

  return v9 & 1;
}

- (_TtC5AVKit25_AVOOPInputViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end