@interface MicaLayerView
- (CGSize)intrinsicContentSize;
- (_TtC5Books13MicaLayerView)initWithCoder:(id)a3;
- (_TtC5Books13MicaLayerView)initWithFrame:(CGRect)a3;
- (void)micaPlayerDidChangePlaybackTime:(id)a3;
@end

@implementation MicaLayerView

- (_TtC5Books13MicaLayerView)initWithCoder:(id)a3
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

- (_TtC5Books13MicaLayerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)micaPlayerDidChangePlaybackTime:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10065C924(a3);
}

@end