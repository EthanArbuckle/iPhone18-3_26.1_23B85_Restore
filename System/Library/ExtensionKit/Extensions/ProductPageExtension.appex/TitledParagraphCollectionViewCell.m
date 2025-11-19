@interface TitledParagraphCollectionViewCell
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TitledParagraphCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_100396DEC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100397A14(a3);
}

@end