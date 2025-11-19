@interface AccessoryImageView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC13MediaRemoteUI18AccessoryImageView)initWithCoder:(id)a3;
- (_TtC13MediaRemoteUI18AccessoryImageView)initWithFrame:(CGRect)a3;
- (_TtC13MediaRemoteUI18AccessoryImageView)initWithImage:(id)a3;
- (_TtC13MediaRemoteUI18AccessoryImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation AccessoryImageView

- (_TtC13MediaRemoteUI18AccessoryImageView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  [(AccessoryImageView *)self sizeThatFits:a4, a3.width, a3.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC13MediaRemoteUI18AccessoryImageView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13MediaRemoteUI18AccessoryImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13MediaRemoteUI18AccessoryImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end