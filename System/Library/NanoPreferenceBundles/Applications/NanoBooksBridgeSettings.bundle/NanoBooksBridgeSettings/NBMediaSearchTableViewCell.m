@interface NBMediaSearchTableViewCell
- (NBMediaSearchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation NBMediaSearchTableViewCell

- (NBMediaSearchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = NBMediaSearchTableViewCell;
  v5 = [(NBMediaTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(NBMediaSearchTableViewCell *)v5 setSelectionStyle:3];
  }

  return v6;
}

@end