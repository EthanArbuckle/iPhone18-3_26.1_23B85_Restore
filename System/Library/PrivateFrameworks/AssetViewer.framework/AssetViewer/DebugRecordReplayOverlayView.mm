@interface DebugRecordReplayOverlayView
- (_TtC11AssetViewer28DebugRecordReplayOverlayView)initWithFrame:(CGRect)a3;
- (void)bottomButtonPressed:(id)a3;
@end

@implementation DebugRecordReplayOverlayView

- (void)bottomButtonPressed:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 isSelected];
  [v4 setSelected_];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2412D94BC([v4 tag], v5 ^ 1);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC11AssetViewer28DebugRecordReplayOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end