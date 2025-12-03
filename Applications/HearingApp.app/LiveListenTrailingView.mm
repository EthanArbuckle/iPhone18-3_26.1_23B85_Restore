@interface LiveListenTrailingView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC10HearingApp22LiveListenTrailingView)init;
- (_TtC10HearingApp22LiveListenTrailingView)initWithCoder:(id)coder;
- (_TtC10HearingApp22LiveListenTrailingView)initWithFrame:(CGRect)frame;
@end

@implementation LiveListenTrailingView

- (_TtC10HearingApp22LiveListenTrailingView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10HearingApp22LiveListenTrailingView_compressedWidth) = 0x4043000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10HearingApp22LiveListenTrailingView_compressedHeight) = 0x4010000000000000;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LiveListenTrailingView();
  return [(LiveListenTrailingView *)&v3 initWithFrame:0.0, 0.0, 38.0, 4.0];
}

- (_TtC10HearingApp22LiveListenTrailingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10HearingApp22LiveListenTrailingView_compressedWidth) = 0x4043000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10HearingApp22LiveListenTrailingView_compressedHeight) = 0x4010000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LiveListenTrailingView();
  coderCopy = coder;
  v5 = [(LiveListenTrailingView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = 19.0;
  v5 = 4.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC10HearingApp22LiveListenTrailingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end