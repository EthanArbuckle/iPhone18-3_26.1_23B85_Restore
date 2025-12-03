@interface HotReloadStatusHUDView
- (CGRect)frame;
- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView)initWithCoder:(id)coder;
- (void)setFrame:(CGRect)frame;
@end

@implementation HotReloadStatusHUDView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for HotReloadStatusHUDView();
  [(HotReloadStatusHUDView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HotReloadStatusHUDView();
  v7 = v8.receiver;
  [(HotReloadStatusHUDView *)&v8 setFrame:x, y, width, height];
  sub_5CD30();
}

- (_TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView)initWithCoder:(id)coder
{
  result = sub_84AFC();
  __break(1u);
  return result;
}

@end