@interface TitledParagraphCollectionViewCell
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TitledParagraphCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002DAD18();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002DB940(change);
}

@end