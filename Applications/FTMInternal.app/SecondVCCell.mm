@interface SecondVCCell
- (_TtC11FTMInternal12SecondVCCell)initWithCoder:(id)coder;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SecondVCCell

- (_TtC11FTMInternal12SecondVCCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal12SecondVCCell_metricFavorited) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1001D2B8C(highlighted, type metadata accessor for SecondVCCell, &unk_10031E2F0, sub_1001D2E90, &unk_10031E308);
}

@end