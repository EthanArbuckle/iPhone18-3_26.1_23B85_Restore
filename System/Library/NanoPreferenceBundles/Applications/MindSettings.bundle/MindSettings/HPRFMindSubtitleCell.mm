@interface HPRFMindSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HPRFMindSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v20 = [specifierCopy propertyForKey:@"HPRFMindSubtitleCellReminderSpecifierKey"];
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setTimeStyle:1];
  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSDate date];
  v8 = [v6 startOfDayForDate:v7];

  v9 = +[NSCalendar currentCalendar];
  customDateComponents = [v20 customDateComponents];
  v11 = [v9 dateByAddingComponents:customDateComponents toDate:v8 options:0];

  v12 = [v5 stringFromDate:v11];
  titleLabel = [(HPRFMindSubtitleCell *)self titleLabel];
  [titleLabel setText:v12];

  v14 = +[UIColor whiteColor];
  titleLabel2 = [(HPRFMindSubtitleCell *)self titleLabel];
  [titleLabel2 setTextColor:v14];

  v16 = [specifierCopy propertyForKey:@"HPRFMindSubtitleCellSubtitleSpecifierKey"];

  detailTextLabel = [(HPRFMindSubtitleCell *)self detailTextLabel];
  [detailTextLabel setText:v16];

  v18 = +[UIColor systemGrayColor];
  detailTextLabel2 = [(HPRFMindSubtitleCell *)self detailTextLabel];
  [detailTextLabel2 setTextColor:v18];

  [(HPRFMindSubtitleCell *)self setAccessoryType:1];
}

@end