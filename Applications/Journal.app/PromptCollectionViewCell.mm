@interface PromptCollectionViewCell
- (_TtC7Journal24PromptCollectionViewCell)initWithCoder:(id)coder;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation PromptCollectionViewCell

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1001E74AC(attributesCopy);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_1001E763C(attributesCopy);

  return v6;
}

- (_TtC7Journal24PromptCollectionViewCell)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(UITextView) init];
  static UIBackgroundConfiguration.listCell()();
  secondarySystemGroupedBackgroundColor = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end