@interface PromptCollectionViewCell
- (_TtC7Journal24PromptCollectionViewCell)initWithCoder:(id)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation PromptCollectionViewCell

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001E74AC(v4);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1001E763C(v4);

  return v6;
}

- (_TtC7Journal24PromptCollectionViewCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC7Journal24PromptCollectionViewCell_promptTextView;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(UITextView) init];
  static UIBackgroundConfiguration.listCell()();
  v4 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end