@interface UIRefreshControl
- (void)setLastRefreshDate:(id)a3 textColor:(id)a4;
@end

@implementation UIRefreshControl

- (void)setLastRefreshDate:(id)a3 textColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (qword_100583D90 != -1)
    {
      sub_1003B2D14();
    }

    v16 = NSForegroundColorAttributeName;
    v8 = v7;
    if (!v7)
    {
      v8 = +[UIColor refreshControlTextColor];
    }

    v17 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    if (!v7)
    {
    }

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"LAST_REFRESH_FORMAT" value:&stru_1004F3018 table:0];
    v12 = [v6 friendlyDisplayString];
    v13 = [qword_100583D88 stringFromDate:v6];
    v14 = [NSString localizedStringWithFormat:v11, v12, v13];

    v15 = [[NSAttributedString alloc] initWithString:v14 attributes:v9];
  }

  else
  {
    v15 = 0;
  }

  [(UIRefreshControl *)self setAttributedTitle:v15];
}

@end