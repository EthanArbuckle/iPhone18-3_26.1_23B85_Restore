@interface TitledParagraphCollectionViewCell
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TitledParagraphCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002EC608();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002ED230(change);
}

@end