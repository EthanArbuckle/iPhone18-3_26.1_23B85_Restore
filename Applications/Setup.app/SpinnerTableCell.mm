@interface SpinnerTableCell
- (SpinnerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation SpinnerTableCell

- (SpinnerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  v13 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = SpinnerTableCell;
  selfCopy = [(SpinnerTableCell *)&v10 initWithStyle:styleCopy reuseIdentifier:location];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v6 = *(selfCopy + 1);
    *(selfCopy + 1) = v5;

    [*(selfCopy + 1) startAnimating];
    contentView = [selfCopy contentView];
    [contentView addSubview:*(selfCopy + 1)];
  }

  v8 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)layoutSubviews
{
  selfCopy = self;
  v18 = a2;
  v17.receiver = self;
  v17.super_class = SpinnerTableCell;
  [(SpinnerTableCell *)&v17 layoutSubviews];
  contentView = [(SpinnerTableCell *)selfCopy contentView];
  [contentView bounds];
  v14 = v3;
  v13 = v4;
  v16 = v5;
  v15 = v6;

  [(UIActivityIndicatorView *)selfCopy->_spinner frame:0];
  v8 = (v15 - v7) * 0.5;
  v12 = floorf(v8);
  v10 = (v16 - v9) * 0.5;
  v11 = floorf(v10);
  [(UIActivityIndicatorView *)selfCopy->_spinner setFrame:v12, v11, v7, v9, *&v12, *&v11, *&v7, *&v9];
}

@end