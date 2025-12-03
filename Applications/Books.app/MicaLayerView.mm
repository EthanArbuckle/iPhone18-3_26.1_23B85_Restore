@interface MicaLayerView
- (CGSize)intrinsicContentSize;
- (_TtC5Books13MicaLayerView)initWithCoder:(id)coder;
- (_TtC5Books13MicaLayerView)initWithFrame:(CGRect)frame;
- (void)micaPlayerDidChangePlaybackTime:(id)time;
@end

@implementation MicaLayerView

- (_TtC5Books13MicaLayerView)initWithCoder:(id)coder
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books13MicaLayerView_micaSize);
  v3 = *&self->mica[OBJC_IVAR____TtC5Books13MicaLayerView_micaSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC5Books13MicaLayerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)micaPlayerDidChangePlaybackTime:(id)time
{
  timeCopy = time;
  selfCopy = self;
  sub_10065C924(time);
}

@end