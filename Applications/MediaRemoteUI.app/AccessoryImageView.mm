@interface AccessoryImageView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC13MediaRemoteUI18AccessoryImageView)initWithCoder:(id)coder;
- (_TtC13MediaRemoteUI18AccessoryImageView)initWithFrame:(CGRect)frame;
- (_TtC13MediaRemoteUI18AccessoryImageView)initWithImage:(id)image;
- (_TtC13MediaRemoteUI18AccessoryImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation AccessoryImageView

- (_TtC13MediaRemoteUI18AccessoryImageView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  [(AccessoryImageView *)self sizeThatFits:mode, fits.width, fits.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC13MediaRemoteUI18AccessoryImageView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13MediaRemoteUI18AccessoryImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13MediaRemoteUI18AccessoryImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end