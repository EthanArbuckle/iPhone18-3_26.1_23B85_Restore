@interface TransitSchedulesHeadsignPickerCollectionViewCell
- (TransitSchedulesHeadsignPickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (TransitSchedulesHeadsignPickerCollectionViewCellDelegate)delegate;
- (void)_updateDeparturePickerWithSelectedDepartureSequence:(id)a3;
- (void)configureViews;
- (void)setDepartureSequences:(id)a3 withSelectedDepartureSequence:(id)a4;
@end

@implementation TransitSchedulesHeadsignPickerCollectionViewCell

- (TransitSchedulesHeadsignPickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDeparturePickerWithSelectedDepartureSequence:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  departureSequences = self->_departureSequences;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100C90090;
  v13 = &unk_10164FBF0;
  objc_copyWeak(&v16, &location);
  v7 = v4;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  [(NSArray *)departureSequences enumerateObjectsUsingBlock:&v10];
  v9 = [UIMenu menuWithTitle:&stru_1016631F0 children:v8, v10, v11, v12, v13];
  [(UIButton *)self->_picker setMenu:v9];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)setDepartureSequences:(id)a3 withSelectedDepartureSequence:(id)a4
{
  v8 = a4;
  v6 = [a3 copy];
  departureSequences = self->_departureSequences;
  self->_departureSequences = v6;

  [(TransitSchedulesHeadsignPickerCollectionViewCell *)self _updateDeparturePickerWithSelectedDepartureSequence:v8];
}

- (void)configureViews
{
  v3 = [(TransitSchedulesHeadsignPickerCollectionViewCell *)self contentView];
  [v3 setAccessibilityIdentifier:@"TransitSchedulesHeadsignPickerCollectionViewCell"];
  v4 = [UIButton buttonWithType:124];
  picker = self->_picker;
  self->_picker = v4;

  v6 = [(UIButton *)self->_picker titleLabel];
  [v6 setTextAlignment:0];

  [(UIButton *)self->_picker setContentHorizontalAlignment:1];
  [(UIButton *)self->_picker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_picker setShowsMenuAsPrimaryAction:1];
  [(UIButton *)self->_picker setContextMenuInteractionEnabled:1];
  [(UIButton *)self->_picker setAccessibilityIdentifier:@"TransitSchedulesHeadsignPickerCollectionViewCellPicker"];
  [v3 addSubview:self->_picker];
  v19 = [(UIButton *)self->_picker leadingAnchor];
  v18 = [v3 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v16 = [(UIButton *)self->_picker trailingAnchor];
  v7 = [v3 trailingAnchor];
  v8 = [v16 constraintEqualToAnchor:v7];
  v20[1] = v8;
  v9 = [(UIButton *)self->_picker topAnchor];
  v10 = [v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v20[2] = v11;
  v12 = [(UIButton *)self->_picker bottomAnchor];
  v13 = [v3 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v20[3] = v14;
  v15 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (TransitSchedulesHeadsignPickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TransitSchedulesHeadsignPickerCollectionViewCell;
  v3 = [(TransitSchedulesHeadsignPickerCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TransitSchedulesHeadsignPickerCollectionViewCell *)v3 configureViews];
  }

  return v4;
}

@end