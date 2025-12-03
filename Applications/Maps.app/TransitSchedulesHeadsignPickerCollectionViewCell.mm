@interface TransitSchedulesHeadsignPickerCollectionViewCell
- (TransitSchedulesHeadsignPickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (TransitSchedulesHeadsignPickerCollectionViewCellDelegate)delegate;
- (void)_updateDeparturePickerWithSelectedDepartureSequence:(id)sequence;
- (void)configureViews;
- (void)setDepartureSequences:(id)sequences withSelectedDepartureSequence:(id)sequence;
@end

@implementation TransitSchedulesHeadsignPickerCollectionViewCell

- (TransitSchedulesHeadsignPickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDeparturePickerWithSelectedDepartureSequence:(id)sequence
{
  sequenceCopy = sequence;
  v5 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  departureSequences = self->_departureSequences;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100C90090;
  v13 = &unk_10164FBF0;
  objc_copyWeak(&v16, &location);
  v7 = sequenceCopy;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  [(NSArray *)departureSequences enumerateObjectsUsingBlock:&v10];
  v9 = [UIMenu menuWithTitle:&stru_1016631F0 children:v8, v10, v11, v12, v13];
  [(UIButton *)self->_picker setMenu:v9];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)setDepartureSequences:(id)sequences withSelectedDepartureSequence:(id)sequence
{
  sequenceCopy = sequence;
  v6 = [sequences copy];
  departureSequences = self->_departureSequences;
  self->_departureSequences = v6;

  [(TransitSchedulesHeadsignPickerCollectionViewCell *)self _updateDeparturePickerWithSelectedDepartureSequence:sequenceCopy];
}

- (void)configureViews
{
  contentView = [(TransitSchedulesHeadsignPickerCollectionViewCell *)self contentView];
  [contentView setAccessibilityIdentifier:@"TransitSchedulesHeadsignPickerCollectionViewCell"];
  v4 = [UIButton buttonWithType:124];
  picker = self->_picker;
  self->_picker = v4;

  titleLabel = [(UIButton *)self->_picker titleLabel];
  [titleLabel setTextAlignment:0];

  [(UIButton *)self->_picker setContentHorizontalAlignment:1];
  [(UIButton *)self->_picker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_picker setShowsMenuAsPrimaryAction:1];
  [(UIButton *)self->_picker setContextMenuInteractionEnabled:1];
  [(UIButton *)self->_picker setAccessibilityIdentifier:@"TransitSchedulesHeadsignPickerCollectionViewCellPicker"];
  [contentView addSubview:self->_picker];
  leadingAnchor = [(UIButton *)self->_picker leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v17;
  trailingAnchor = [(UIButton *)self->_picker trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v8;
  topAnchor = [(UIButton *)self->_picker topAnchor];
  topAnchor2 = [contentView topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[2] = v11;
  bottomAnchor = [(UIButton *)self->_picker bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[3] = v14;
  v15 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (TransitSchedulesHeadsignPickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesHeadsignPickerCollectionViewCell;
  v3 = [(TransitSchedulesHeadsignPickerCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesHeadsignPickerCollectionViewCell *)v3 configureViews];
  }

  return v4;
}

@end