@interface TransitSchedulesLineOptionsProviderViewCell
- (TransitSchedulesLineOptionsProviderViewCell)initWithFrame:(CGRect)a3;
- (void)setTitle:(id)a3 symbolName:(id)a4 action:(id)a5 axIdentifierForAction:(id)a6;
@end

@implementation TransitSchedulesLineOptionsProviderViewCell

- (void)setTitle:(id)a3 symbolName:(id)a4 action:(id)a5 axIdentifierForAction:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[TransitSchedulesLineOptionsProviderViewModel alloc] initWithTitle:v13 symbolName:v12 action:v11 axIdentifierForAction:v10];

  [(MUButtonCellRowView *)self->_mapsUIButtonCellView setViewModel:v14];
}

- (TransitSchedulesLineOptionsProviderViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v10 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    [v10 addSubview:v7->_mapsUIButtonCellView];

    v27 = [(MUButtonCellRowView *)v7->_mapsUIButtonCellView topAnchor];
    v28 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    v26 = [v28 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v30[0] = v25;
    v23 = [(MUButtonCellRowView *)v7->_mapsUIButtonCellView bottomAnchor];
    v24 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    v22 = [v24 bottomAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v30[1] = v21;
    v11 = [(MUButtonCellRowView *)v7->_mapsUIButtonCellView leadingAnchor];
    v12 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    v13 = [v12 leadingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v30[2] = v14;
    v15 = [(MUButtonCellRowView *)v7->_mapsUIButtonCellView trailingAnchor];
    v16 = [(TransitSchedulesLineOptionsProviderViewCell *)v7 contentView];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v30[3] = v18;
    v19 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    [(TransitSchedulesLineOptionsProviderViewCell *)v7 setAccessibilityIdentifier:@"TransitSchedulesLineOptionsProviderViewCell"];
  }

  return v7;
}

@end