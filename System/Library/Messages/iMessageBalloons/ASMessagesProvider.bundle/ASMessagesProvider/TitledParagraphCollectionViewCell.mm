@interface TitledParagraphCollectionViewCell
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TitledParagraphCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_33D780();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_33E3A8(change);
}

@end