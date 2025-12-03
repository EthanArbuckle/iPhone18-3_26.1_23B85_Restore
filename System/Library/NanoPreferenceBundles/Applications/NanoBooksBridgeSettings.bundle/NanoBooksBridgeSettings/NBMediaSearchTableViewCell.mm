@interface NBMediaSearchTableViewCell
- (NBMediaSearchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation NBMediaSearchTableViewCell

- (NBMediaSearchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = NBMediaSearchTableViewCell;
  v5 = [(NBMediaTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(NBMediaSearchTableViewCell *)v5 setSelectionStyle:3];
  }

  return v6;
}

@end