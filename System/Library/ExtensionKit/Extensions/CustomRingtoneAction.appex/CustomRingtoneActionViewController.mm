@interface CustomRingtoneActionViewController
- (_TtC20CustomRingtoneAction34CustomRingtoneActionViewController)initWithCoder:(id)coder;
- (_TtC20CustomRingtoneAction34CustomRingtoneActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation CustomRingtoneActionViewController

- (void)viewDidLoad
{
  v3 = (*(*(sub_100005288(&qword_100010428, &qword_100006ED8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = type metadata accessor for CustomRingtoneActionViewController();
  v12.receiver = self;
  v12.super_class = v6;
  selfCopy = self;
  [(CustomRingtoneActionViewController *)&v12 viewDidLoad];
  v8 = sub_100006800();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1000067E0();
  v9 = selfCopy;
  v10 = sub_1000067D0();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_100001980(0, 0, v5, &unk_100006EE8, v11);
}

- (_TtC20CustomRingtoneAction34CustomRingtoneActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100006740();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC20CustomRingtoneAction34CustomRingtoneActionViewController_maximumDurationForRingtone) = 0x403E000000000000;
    bundleCopy = bundle;
    v7 = sub_100006720();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC20CustomRingtoneAction34CustomRingtoneActionViewController_maximumDurationForRingtone) = 0x403E000000000000;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CustomRingtoneActionViewController();
  v9 = [(CustomRingtoneActionViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC20CustomRingtoneAction34CustomRingtoneActionViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20CustomRingtoneAction34CustomRingtoneActionViewController_maximumDurationForRingtone) = 0x403E000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomRingtoneActionViewController();
  coderCopy = coder;
  v5 = [(CustomRingtoneActionViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end