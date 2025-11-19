@interface SpinnerTableCell
- (SpinnerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation SpinnerTableCell

- (SpinnerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v14;
  v14 = 0;
  v10.receiver = v4;
  v10.super_class = SpinnerTableCell;
  v14 = [(SpinnerTableCell *)&v10 initWithStyle:v12 reuseIdentifier:location];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v6 = *(v14 + 1);
    *(v14 + 1) = v5;

    [*(v14 + 1) startAnimating];
    v7 = [v14 contentView];
    [v7 addSubview:*(v14 + 1)];
  }

  v8 = v14;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
  return v8;
}

- (void)layoutSubviews
{
  v19 = self;
  v18 = a2;
  v17.receiver = self;
  v17.super_class = SpinnerTableCell;
  [(SpinnerTableCell *)&v17 layoutSubviews];
  v2 = [(SpinnerTableCell *)v19 contentView];
  [v2 bounds];
  v14 = v3;
  v13 = v4;
  v16 = v5;
  v15 = v6;

  [(UIActivityIndicatorView *)v19->_spinner frame:0];
  v8 = (v15 - v7) * 0.5;
  v12 = floorf(v8);
  v10 = (v16 - v9) * 0.5;
  v11 = floorf(v10);
  [(UIActivityIndicatorView *)v19->_spinner setFrame:v12, v11, v7, v9, *&v12, *&v11, *&v7, *&v9];
}

@end