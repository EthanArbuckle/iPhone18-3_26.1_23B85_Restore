@interface BYODDataCardView
- (BYODDataCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (void)setHideChevron:(BOOL)chevron;
@end

@implementation BYODDataCardView

- (BYODDataCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  titleCopy = title;
  subtitleCopy = subtitle;
  iconCopy = icon;
  v16.receiver = self;
  v16.super_class = BYODDataCardView;
  v11 = [(BYODStackView *)&v16 init];
  if (v11)
  {
    v12 = [[BYODDataCardPrimaryCell alloc] initWithTitle:titleCopy subtitle:subtitleCopy icon:iconCopy];
    primaryCell = v11->_primaryCell;
    v11->_primaryCell = v12;

    [(BYODDataCardPrimaryCell *)v11->_primaryCell setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BYODDataCardPrimaryCell *)v11->_primaryCell setDirectionalLayoutMargins:0.0, 16.0, 0.0, 16.0];
    [(BYODDataCardPrimaryCell *)v11->_primaryCell setHideChevron:0];
    stackView = [(BYODStackView *)v11 stackView];
    [stackView addArrangedSubview:v11->_primaryCell];
  }

  return v11;
}

- (void)setHideChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  primaryCell = [(BYODDataCardView *)self primaryCell];
  [primaryCell setHideChevron:chevronCopy];
}

@end