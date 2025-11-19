@interface CarAudioControlViewController
- (_TtC4Maps29CarAudioControlViewController)initWithDelegate:(id)a3;
- (_TtC4Maps29CarAudioControlViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps37CarAudioControlViewControllerDelegate_)delegate;
- (unint64_t)currentAudioType;
- (void)didSelectWithAudioType:(unint64_t)a3;
- (void)setCurrentAudioType:(unint64_t)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CarAudioControlViewController

- (_TtP4Maps37CarAudioControlViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps29CarAudioControlViewController)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_10046E794();
  swift_unknownObjectRelease();
  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10046CAD8(a3);
}

- (unint64_t)currentAudioType
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setCurrentAudioType:(unint64_t)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (void)didSelectWithAudioType:(unint64_t)a3
{
  v4 = self;
  sub_10046D1C4(a3);
}

- (_TtC4Maps29CarAudioControlViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end