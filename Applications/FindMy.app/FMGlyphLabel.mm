@interface FMGlyphLabel
- (NSString)accessibilityLabel;
- (_TtC6FindMy12FMGlyphLabel)initWithCoder:(id)coder;
- (_TtC6FindMy12FMGlyphLabel)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FMGlyphLabel

- (_TtC6FindMy12FMGlyphLabel)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy12FMGlyphLabel_titleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy12FMGlyphLabel_iconView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIImageView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy12FMGlyphLabel_titleLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMGlyphLabel();
  v2 = v5.receiver;
  [(FMGlyphLabel *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC6FindMy12FMGlyphLabel_titleLabel];
  [v2 frame];
  [v3 setPreferredMaxLayoutWidth:v4 * 0.8];
}

- (_TtC6FindMy12FMGlyphLabel)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end