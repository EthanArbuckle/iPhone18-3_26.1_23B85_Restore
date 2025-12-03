@interface BuddySetupTableViewCell
- (BuddySetupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation BuddySetupTableViewCell

- (BuddySetupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  v12 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = BuddySetupTableViewCell;
  selfCopy = [(BuddySetupTableViewCell *)&v9 initWithStyle:styleCopy reuseIdentifier:location];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = +[BFFStyle sharedStyle];
    [v5 applyThemeToTableCell:selfCopy];

    textLabel = [selfCopy textLabel];
    [textLabel setNumberOfLines:0];
  }

  v7 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end