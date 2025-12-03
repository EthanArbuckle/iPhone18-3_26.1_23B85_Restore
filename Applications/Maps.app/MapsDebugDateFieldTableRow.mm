@interface MapsDebugDateFieldTableRow
- (MapsDebugDateFieldTableRow)init;
- (void)_fieldDidChangeValue:(id)value;
- (void)_showDatePicker;
- (void)configureCell:(id)cell;
- (void)dealloc;
- (void)invalidate;
- (void)setDate:(id)date;
@end

@implementation MapsDebugDateFieldTableRow

- (void)_showDatePicker
{
  title = [(MapsDebugTableRow *)self title];
  v4 = [UIAlertController alertControllerWithTitle:title message:0 preferredStyle:0];

  v5 = objc_alloc_init(MapsDebugDataPickerViewController);
  date = [(MapsDebugDateFieldTableRow *)self date];
  datePicker = [(MapsDebugDataPickerViewController *)v5 datePicker];
  [datePicker setDate:date];

  [v4 setContentViewController:v5];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100A82B24;
  v24 = &unk_1016383E0;
  selfCopy = self;
  v8 = v5;
  v26 = v8;
  v9 = [UIAlertAction actionWithTitle:@"Ok" style:0 handler:&v21];
  [v4 addAction:{v9, v21, v22, v23, v24, selfCopy}];

  v10 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v4 addAction:v10];

  popoverPresentationController = [v4 popoverPresentationController];
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  contentView = [WeakRetained contentView];
  [contentView bounds];
  [popoverPresentationController setSourceRect:?];

  v14 = objc_loadWeakRetained(&self->_cell);
  contentView2 = [v14 contentView];
  [popoverPresentationController setSourceView:contentView2];

  v16 = objc_loadWeakRetained(&self->_cell);
  if (v16)
  {
    superview = v16;
    do
    {
      v18 = superview;
      v19 = [UIViewController viewControllerForView:superview];
      superview = [superview superview];

      if (v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = superview == 0;
      }
    }

    while (!v20);
  }

  else
  {
    v19 = 0;
  }

  [v19 presentViewController:v4 animated:1 completion:0];
}

- (void)_fieldDidChangeValue:(id)value
{
  date = [value date];
  date2 = [(MapsDebugDateFieldTableRow *)self date];
  v5 = [date isEqual:date2];

  if ((v5 & 1) == 0)
  {
    v6 = [(MapsDebugDateFieldTableRow *)self set];

    if (v6)
    {
      v7 = [(MapsDebugDateFieldTableRow *)self set];
      (v7)[2](v7, date);
    }

    [(MapsDebugDateFieldTableRow *)self setDate:date];
  }
}

- (void)setDate:(id)date
{
  objc_storeStrong(&self->_date, date);
  dateCopy = date;
  v8 = objc_alloc_init(NSDateFormatter);
  [v8 setTimeStyle:0];
  [v8 setDateStyle:1];
  date = [(MapsDebugDateFieldTableRow *)self date];
  v7 = [v8 stringFromDate:date];
  [(UILabel *)self->_dateLabel setText:v7];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  v50.receiver = self;
  v50.super_class = MapsDebugDateFieldTableRow;
  [(MapsDebugTableRow *)&v50 configureCell:cellCopy];
  contentView = [cellCopy contentView];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  contentView2 = [cellCopy contentView];
  subviews = [contentView2 subviews];

  v8 = [subviews countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        if ([v12 tag] == 999)
        {
          [v12 removeFromSuperview];
        }
      }

      v9 = [subviews countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v9);
  }

  [cellCopy setSelectionStyle:0];
  objc_storeWeak(&self->_cell, cellCopy);
  if (!self->_dateLabel)
  {
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    dateLabel = self->_dateLabel;
    self->_dateLabel = v13;

    v15 = +[UIColor clearColor];
    [(UILabel *)self->_dateLabel setBackgroundColor:v15];

    [(UILabel *)self->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_dateLabel setTag:999];
  }

  v16 = [(MapsDebugDateFieldTableRow *)self get];

  if (v16)
  {
    v17 = [(MapsDebugDateFieldTableRow *)self get];
    v18 = v17[2]();
    [(MapsDebugDateFieldTableRow *)self setDate:v18];
  }

  date = [(MapsDebugDateFieldTableRow *)self date];

  if (!date)
  {
    v20 = +[NSDate date];
    [(MapsDebugDateFieldTableRow *)self setDate:v20];
  }

  [(UILabel *)self->_dateLabel removeFromSuperview];
  contentView3 = [cellCopy contentView];
  [contentView3 addSubview:self->_dateLabel];

  [cellCopy setPreservesSuperviewLayoutMargins:1];
  contentView4 = [cellCopy contentView];
  [contentView4 setPreservesSuperviewLayoutMargins:1];

  title = [(MapsDebugTableRow *)self title];
  v24 = [title length];

  v25 = self->_dateLabel;
  if (v24)
  {
    [(UILabel *)v25 setTextAlignment:2];
    leadingAnchor = [(UILabel *)self->_dateLabel leadingAnchor];
    textLayoutGuide = [contentView textLayoutGuide];
    trailingAnchor = [textLayoutGuide trailingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:5.0 constant:?];
    v52[0] = v43;
    trailingAnchor2 = [contentView trailingAnchor];
    trailingAnchor3 = [(UILabel *)self->_dateLabel trailingAnchor];
    trailingAnchor5 = trailingAnchor2;
    topAnchor = [trailingAnchor2 constraintEqualToAnchor:?];
    v52[1] = topAnchor;
    centerYAnchor = [(UILabel *)self->_dateLabel centerYAnchor];
    textLayoutGuide2 = [contentView textLayoutGuide];
    centerYAnchor2 = [textLayoutGuide2 centerYAnchor];
    bottomAnchor = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v52[2] = bottomAnchor;
    v33 = [NSArray arrayWithObjects:v52 count:3];
  }

  else
  {
    [(UILabel *)v25 setTextAlignment:0];
    leadingAnchor2 = [(UILabel *)self->_dateLabel leadingAnchor];
    textLayoutGuide = [contentView leadingAnchor];
    trailingAnchor = [leadingAnchor2 constraintEqualToAnchor:?];
    v51[0] = trailingAnchor;
    trailingAnchor4 = [contentView trailingAnchor];
    trailingAnchor5 = [(UILabel *)self->_dateLabel trailingAnchor];
    v43 = trailingAnchor4;
    trailingAnchor3 = [trailingAnchor4 constraintEqualToAnchor:?];
    v51[1] = trailingAnchor3;
    topAnchor = [(UILabel *)self->_dateLabel topAnchor];
    centerYAnchor = [contentView topAnchor];
    textLayoutGuide2 = [topAnchor constraintEqualToAnchor:centerYAnchor];
    v51[2] = textLayoutGuide2;
    centerYAnchor2 = [(UILabel *)self->_dateLabel bottomAnchor];
    bottomAnchor = [contentView bottomAnchor];
    [centerYAnchor2 constraintEqualToAnchor:bottomAnchor];
    v36 = v35 = contentView;
    v51[3] = v36;
    v33 = [NSArray arrayWithObjects:v51 count:4];

    contentView = v35;
    leadingAnchor = leadingAnchor2;
  }

  if (self->_lastConstraints)
  {
    contentView5 = [cellCopy contentView];
    [contentView5 removeConstraints:self->_lastConstraints];
  }

  contentView6 = [cellCopy contentView];
  [contentView6 addConstraints:v33];

  lastConstraints = self->_lastConstraints;
  self->_lastConstraints = v33;
}

- (void)invalidate
{
  [(MapsDebugDateFieldTableRow *)self setGet:0];
  [(MapsDebugDateFieldTableRow *)self setSet:0];
  v3.receiver = self;
  v3.super_class = MapsDebugDateFieldTableRow;
  [(MapsDebugTableRow *)&v3 invalidate];
}

- (void)dealloc
{
  [(MapsDebugDateFieldTableRow *)self invalidate];
  v3.receiver = self;
  v3.super_class = MapsDebugDateFieldTableRow;
  [(MapsDebugTableRow *)&v3 dealloc];
}

- (MapsDebugDateFieldTableRow)init
{
  v7.receiver = self;
  v7.super_class = MapsDebugDateFieldTableRow;
  v2 = [(MapsDebugTableRow *)&v7 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100A83420;
    v4[3] = &unk_101661B98;
    objc_copyWeak(&v5, &location);
    [(MapsDebugTableRow *)v2 setSelectionAction:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  return v2;
}

@end