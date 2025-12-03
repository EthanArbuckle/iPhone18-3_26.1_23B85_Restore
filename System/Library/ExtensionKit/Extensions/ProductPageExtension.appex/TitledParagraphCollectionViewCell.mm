@interface TitledParagraphCollectionViewCell
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TitledParagraphCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100396DEC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100397A14(change);
}

@end