@interface CSTitleSpinnerTableCellTableViewCell
- (CSTitleSpinnerTableCellTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation CSTitleSpinnerTableCellTableViewCell

- (CSTitleSpinnerTableCellTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CSTitleSpinnerTableCellTableViewCell;
  v5 = [(CSTitleSpinnerTableCellTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v6 startAnimating];
    [(CSTitleSpinnerTableCellTableViewCell *)v5 setAccessoryView:v6];
  }

  return v5;
}

@end