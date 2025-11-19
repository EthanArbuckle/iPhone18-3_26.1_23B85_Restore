@interface BuddySetupTableViewCell
- (BuddySetupTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation BuddySetupTableViewCell

- (BuddySetupTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v13;
  v13 = 0;
  v9.receiver = v4;
  v9.super_class = BuddySetupTableViewCell;
  v13 = [(BuddySetupTableViewCell *)&v9 initWithStyle:v11 reuseIdentifier:location];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v5 = +[BFFStyle sharedStyle];
    [v5 applyThemeToTableCell:v13];

    v6 = [v13 textLabel];
    [v6 setNumberOfLines:0];
  }

  v7 = v13;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v13, 0);
  return v7;
}

@end