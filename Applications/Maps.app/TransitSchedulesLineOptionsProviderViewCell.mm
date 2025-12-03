@interface TransitSchedulesLineOptionsProviderViewCell
- (TransitSchedulesLineOptionsProviderViewCell)initWithFrame:(CGRect)frame;
- (void)setTitle:(id)title symbolName:(id)name action:(id)action axIdentifierForAction:(id)forAction;
@end

@implementation TransitSchedulesLineOptionsProviderViewCell

- (void)setTitle:(id)title symbolName:(id)name action:(id)action axIdentifierForAction:(id)forAction
{
  forActionCopy = forAction;
  actionCopy = action;
  nameCopy = name;
  titleCopy = title;
  v14 = [[TransitSchedulesLineOptionsProviderViewModel alloc] initWithTitle:titleCopy symbolName:nameCopy action:actionCopy axIdentifierForAction:forActionCopy];

  [(MUButtonCellRowView *)self->_mapsUIButtonCellView setViewModel:v14];
}

- (TransitSchedulesLineOptionsProviderViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v29.receiver = self;
  v29.super_class = TransitSchedulesLineOptionsProviderViewCell;
  v7 = [(MapsThemeCollectionViewCell *)&v29 initWithFrame:?];
  if (v7)
  {
    v8 = [[MUButtonCellRowView alloc] initWithFrame:{x, y, width, height}];
    mapsUIButtonCellView = v7->_mapsUIButtonCellView;
    v7->_mapsUIButtonCellView = v8;

    [(MUButtonCellRowView *)v7->_mapsUIButtonCellView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUButtonCellRowView *)v7->_mapsUIButtonCellView setHandlesHighlighting:0];
    [(MUButtonCellRowView *)v7->_mapsUIButtonCellView setBottomHairlineHidden:1];
    contentView = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    [contentView addSubview:v7->_mapsUIButtonCellView];

    topAnchor = [(MUButtonCellRowView *)v7->_mapsUIButtonCellView topAnchor];
    contentView2 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v25;
    bottomAnchor = [(MUButtonCellRowView *)v7->_mapsUIButtonCellView bottomAnchor];
    contentView3 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[1] = v21;
    leadingAnchor = [(MUButtonCellRowView *)v7->_mapsUIButtonCellView leadingAnchor];
    contentView4 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[2] = v14;
    trailingAnchor = [(MUButtonCellRowView *)v7->_mapsUIButtonCellView trailingAnchor];
    contentView5 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[3] = v18;
    v19 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    [(TransitSchedulesLineOptionsProviderViewCell *)v7 setAccessibilityIdentifier:@"TransitSchedulesLineOptionsProviderViewCell"];
  }

  return v7;
}

@end