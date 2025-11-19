@interface BKAppearanceTableViewCell
- (BKAppearanceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation BKAppearanceTableViewCell

- (BKAppearanceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = BKAppearanceTableViewCell;
  return [(BKAppearanceTableViewCell *)&v5 initWithStyle:1 reuseIdentifier:a4];
}

@end