@interface VolumeControlView
- (_TtC4Maps17VolumeControlView)initWithFrame:(CGRect)frame;
- (void)buttonTapped:(id)tapped;
- (void)swiped:(id)swiped;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation VolumeControlView

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1003839F0([tappedCopy tag]);
}

- (_TtC4Maps17VolumeControlView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)swiped:(id)swiped
{
  swipedCopy = swiped;
  selfCopy = self;
  sub_1003843A4(swipedCopy);
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  v4 = sub_100384588(key.var0, key.var1, 736, &unk_101644C90);
  selfCopy = self;
  if (v4)
  {
    v8 = selfCopy;
    Integer = GEOConfigGetInteger();
    if (Integer < 0)
    {
      __break(1u);
      return;
    }

    v7 = v8 + OBJC_IVAR____TtC4Maps17VolumeControlView_currentVolumeGuidance;
    *v7 = Integer;
    v7[8] = 0;
    sub_100382628();
    sub_100382628();
    selfCopy = v8;
  }
}

@end