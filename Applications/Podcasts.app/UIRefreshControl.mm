@interface UIRefreshControl
- (void)setLastRefreshDate:(id)date textColor:(id)color;
@end

@implementation UIRefreshControl

- (void)setLastRefreshDate:(id)date textColor:(id)color
{
  dateCopy = date;
  colorCopy = color;
  if (dateCopy)
  {
    if (qword_100583D90 != -1)
    {
      sub_1003B2D14();
    }

    v16 = NSForegroundColorAttributeName;
    v8 = colorCopy;
    if (!colorCopy)
    {
      v8 = +[UIColor refreshControlTextColor];
    }

    v17 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    if (!colorCopy)
    {
    }

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"LAST_REFRESH_FORMAT" value:&stru_1004F3018 table:0];
    friendlyDisplayString = [dateCopy friendlyDisplayString];
    v13 = [qword_100583D88 stringFromDate:dateCopy];
    v14 = [NSString localizedStringWithFormat:v11, friendlyDisplayString, v13];

    v15 = [[NSAttributedString alloc] initWithString:v14 attributes:v9];
  }

  else
  {
    v15 = 0;
  }

  [(UIRefreshControl *)self setAttributedTitle:v15];
}

@end