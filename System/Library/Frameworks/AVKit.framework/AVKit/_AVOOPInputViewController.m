@interface _AVOOPInputViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC5AVKit25_AVOOPInputViewController)initWithCoder:(id)a3;
- (_TtC5AVKit25_AVOOPInputViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5AVKit25_AVOOPInputViewController)initWithTappingForDismissing:(id)a3;
- (void)handleTapGestureRecognizer;
- (void)viewDidLoad;
@end

@implementation _AVOOPInputViewController

- (_TtC5AVKit25_AVOOPInputViewController)initWithTappingForDismissing:(id)a3
{
  v3 = _Block_copy(a3);
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

- (_TtC5AVKit25_AVOOPInputViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_18B534CBC();
}

- (void)handleTapGestureRecognizer
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController_onTappingForDismissing);
  if (v2)
  {
    v3 = self;
    v4 = sub_18B4A324C(v2);
    v2(v4);

    sub_18B4A31A4(v2);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_18B535588(v7);

  return v9 & 1;
}

- (_TtC5AVKit25_AVOOPInputViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end