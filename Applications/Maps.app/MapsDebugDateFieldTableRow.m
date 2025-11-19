@interface MapsDebugDateFieldTableRow
- (MapsDebugDateFieldTableRow)init;
- (void)_fieldDidChangeValue:(id)a3;
- (void)_showDatePicker;
- (void)configureCell:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setDate:(id)a3;
@end

@implementation MapsDebugDateFieldTableRow

- (void)_showDatePicker
{
  v3 = [(MapsDebugTableRow *)self title];
  v4 = [UIAlertController alertControllerWithTitle:v3 message:0 preferredStyle:0];

  v5 = objc_alloc_init(MapsDebugDataPickerViewController);
  v6 = [(MapsDebugDateFieldTableRow *)self date];
  v7 = [(MapsDebugDataPickerViewController *)v5 datePicker];
  [v7 setDate:v6];

  [v4 setContentViewController:v5];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100A82B24;
  v24 = &unk_1016383E0;
  v25 = self;
  v8 = v5;
  v26 = v8;
  v9 = [UIAlertAction actionWithTitle:@"Ok" style:0 handler:&v21];
  [v4 addAction:{v9, v21, v22, v23, v24, v25}];

  v10 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v4 addAction:v10];

  v11 = [v4 popoverPresentationController];
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v13 = [WeakRetained contentView];
  [v13 bounds];
  [v11 setSourceRect:?];

  v14 = objc_loadWeakRetained(&self->_cell);
  v15 = [v14 contentView];
  [v11 setSourceView:v15];

  v16 = objc_loadWeakRetained(&self->_cell);
  if (v16)
  {
    v17 = v16;
    do
    {
      v18 = v17;
      v19 = [UIViewController viewControllerForView:v17];
      v17 = [v17 superview];

      if (v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = v17 == 0;
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

- (void)_fieldDidChangeValue:(id)a3
{
  v8 = [a3 date];
  v4 = [(MapsDebugDateFieldTableRow *)self date];
  v5 = [v8 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(MapsDebugDateFieldTableRow *)self set];

    if (v6)
    {
      v7 = [(MapsDebugDateFieldTableRow *)self set];
      (v7)[2](v7, v8);
    }

    [(MapsDebugDateFieldTableRow *)self setDate:v8];
  }
}

- (void)setDate:(id)a3
{
  objc_storeStrong(&self->_date, a3);
  v5 = a3;
  v8 = objc_alloc_init(NSDateFormatter);
  [v8 setTimeStyle:0];
  [v8 setDateStyle:1];
  v6 = [(MapsDebugDateFieldTableRow *)self date];
  v7 = [v8 stringFromDate:v6];
  [(UILabel *)self->_dateLabel setText:v7];
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = MapsDebugDateFieldTableRow;
  [(MapsDebugTableRow *)&v50 configureCell:v4];
  v5 = [v4 contentView];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [v4 contentView];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        if ([v12 tag] == 999)
        {
          [v12 removeFromSuperview];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v9);
  }

  [v4 setSelectionStyle:0];
  objc_storeWeak(&self->_cell, v4);
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

  v19 = [(MapsDebugDateFieldTableRow *)self date];

  if (!v19)
  {
    v20 = +[NSDate date];
    [(MapsDebugDateFieldTableRow *)self setDate:v20];
  }

  [(UILabel *)self->_dateLabel removeFromSuperview];
  v21 = [v4 contentView];
  [v21 addSubview:self->_dateLabel];

  [v4 setPreservesSuperviewLayoutMargins:1];
  v22 = [v4 contentView];
  [v22 setPreservesSuperviewLayoutMargins:1];

  v23 = [(MapsDebugTableRow *)self title];
  v24 = [v23 length];

  v25 = self->_dateLabel;
  if (v24)
  {
    [(UILabel *)v25 setTextAlignment:2];
    v26 = [(UILabel *)self->_dateLabel leadingAnchor];
    v45 = [v5 textLayoutGuide];
    v44 = [v45 trailingAnchor];
    v43 = [v26 constraintEqualToAnchor:5.0 constant:?];
    v52[0] = v43;
    v27 = [v5 trailingAnchor];
    v41 = [(UILabel *)self->_dateLabel trailingAnchor];
    v42 = v27;
    v28 = [v27 constraintEqualToAnchor:?];
    v52[1] = v28;
    v29 = [(UILabel *)self->_dateLabel centerYAnchor];
    v30 = [v5 textLayoutGuide];
    v31 = [v30 centerYAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    v52[2] = v32;
    v33 = [NSArray arrayWithObjects:v52 count:3];
  }

  else
  {
    [(UILabel *)v25 setTextAlignment:0];
    v40 = [(UILabel *)self->_dateLabel leadingAnchor];
    v45 = [v5 leadingAnchor];
    v44 = [v40 constraintEqualToAnchor:?];
    v51[0] = v44;
    v34 = [v5 trailingAnchor];
    v42 = [(UILabel *)self->_dateLabel trailingAnchor];
    v43 = v34;
    v41 = [v34 constraintEqualToAnchor:?];
    v51[1] = v41;
    v28 = [(UILabel *)self->_dateLabel topAnchor];
    v29 = [v5 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v51[2] = v30;
    v31 = [(UILabel *)self->_dateLabel bottomAnchor];
    v32 = [v5 bottomAnchor];
    [v31 constraintEqualToAnchor:v32];
    v36 = v35 = v5;
    v51[3] = v36;
    v33 = [NSArray arrayWithObjects:v51 count:4];

    v5 = v35;
    v26 = v40;
  }

  if (self->_lastConstraints)
  {
    v37 = [v4 contentView];
    [v37 removeConstraints:self->_lastConstraints];
  }

  v38 = [v4 contentView];
  [v38 addConstraints:v33];

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