@interface CarAudioControlViewController
- (_TtC4Maps29CarAudioControlViewController)initWithDelegate:(id)delegate;
- (_TtC4Maps29CarAudioControlViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps37CarAudioControlViewControllerDelegate_)delegate;
- (unint64_t)currentAudioType;
- (void)didSelectWithAudioType:(unint64_t)type;
- (void)setCurrentAudioType:(unint64_t)type;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CarAudioControlViewController

- (_TtP4Maps37CarAudioControlViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps29CarAudioControlViewController)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v3 = sub_10046E794();
  swift_unknownObjectRelease();
  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10046CAD8(appear);
}

- (unint64_t)currentAudioType
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setCurrentAudioType:(unint64_t)type
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

- (void)didSelectWithAudioType:(unint64_t)type
{
  selfCopy = self;
  sub_10046D1C4(type);
}

- (_TtC4Maps29CarAudioControlViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end