@interface UnsupportedAssetView
- (_TtC7Journal20UnsupportedAssetView)initWithCoder:(id)a3;
- (_TtC7Journal20UnsupportedAssetView)initWithFrame:(CGRect)a3;
@end

@implementation UnsupportedAssetView

- (_TtC7Journal20UnsupportedAssetView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC7Journal20UnsupportedAssetView_contentView;
  v6 = objc_allocWithZone(UIView);
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = OBJC_IVAR____TtC7Journal20UnsupportedAssetView_imageView;
  v9 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  *(&self->super.super.super.super.isa + v8) = v9;
  type metadata accessor for UnsupportedAssetView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtC7Journal20UnsupportedAssetView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end