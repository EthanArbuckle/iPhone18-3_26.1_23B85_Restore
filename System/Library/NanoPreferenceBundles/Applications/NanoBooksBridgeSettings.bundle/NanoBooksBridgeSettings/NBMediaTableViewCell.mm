@interface NBMediaTableViewCell
- (NBMediaTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation NBMediaTableViewCell

- (NBMediaTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = NBMediaTableViewCell;
  v9 = [(NBMediaTableViewCell *)&v14 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v10 preferredContentSizeCategory];
    v12 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryLarge);

    if (v12 == NSOrderedDescending)
    {
      [specifierCopy removePropertyForKey:PSTableCellHeightKey];
    }
  }

  return v9;
}

@end