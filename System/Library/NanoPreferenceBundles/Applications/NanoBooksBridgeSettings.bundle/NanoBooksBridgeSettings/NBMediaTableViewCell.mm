@interface NBMediaTableViewCell
- (NBMediaTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation NBMediaTableViewCell

- (NBMediaTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = NBMediaTableViewCell;
  v9 = [(NBMediaTableViewCell *)&v14 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 preferredContentSizeCategory];
    v12 = UIContentSizeCategoryCompareToCategory(v11, UIContentSizeCategoryLarge);

    if (v12 == NSOrderedDescending)
    {
      [v8 removePropertyForKey:PSTableCellHeightKey];
    }
  }

  return v9;
}

@end