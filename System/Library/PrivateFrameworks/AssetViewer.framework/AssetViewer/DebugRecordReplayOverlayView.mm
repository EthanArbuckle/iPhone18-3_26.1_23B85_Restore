@interface DebugRecordReplayOverlayView
- (_TtC11AssetViewer28DebugRecordReplayOverlayView)initWithFrame:(CGRect)frame;
- (void)bottomButtonPressed:(id)pressed;
@end

@implementation DebugRecordReplayOverlayView

- (void)bottomButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  isSelected = [pressedCopy isSelected];
  [pressedCopy setSelected_];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2412D94BC([pressedCopy tag], isSelected ^ 1);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC11AssetViewer28DebugRecordReplayOverlayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end