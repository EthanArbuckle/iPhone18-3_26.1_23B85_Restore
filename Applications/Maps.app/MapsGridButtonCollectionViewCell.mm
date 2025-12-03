@interface MapsGridButtonCollectionViewCell
- (_TtC4Maps32MapsGridButtonCollectionViewCell)initWithCoder:(id)coder;
- (void)setViewModel:(id)model;
@end

@implementation MapsGridButtonCollectionViewCell

- (void)setViewModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_100234B64(model);
}

- (_TtC4Maps32MapsGridButtonCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps32MapsGridButtonCollectionViewCell_viewModel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end