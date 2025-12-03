@interface _CoreSpotlightActivityHandlingTask
- (void)performTask;
@end

@implementation _CoreSpotlightActivityHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  userActivity = [(UserActivityHandlingTask *)self userActivity];
  userInfo = [userActivity userInfo];
  v5 = [userInfo objectForKey:CSSearchQueryString];

  if ([v5 length])
  {
    v6 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v6 setSearchString:v5];
    v7 = [SearchAction alloc];
    v8 = +[MNNavigationService sharedService];
    [v8 state];
    v9 = [(SearchAction *)v7 initWithSearchItem:v6 alongRoute:MNNavigationServiceStateIsNavigating()];

    v10 = [[RichMapsActivity alloc] initWithMapsAction:v9];
    [(UserActivityHandlingTask *)self taskFinished:v10];
  }

  else
  {
    v11 = sub_100005610();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "_CoreSpotlightActivityHandlingTask no query", v20, 2u);
    }

    v12 = +[NSBundle mainBundle];
    v6 = [v12 localizedStringForKey:@"Failed to continue activity [Spotlight opening error alert]" value:@"localized string not found" table:0];

    v13 = +[NSBundle mainBundle];
    v9 = [v13 localizedStringForKey:@"The Spotlight selection could not be opened. [Spotlight opening error alert]" value:@"localized string not found" table:0];

    v14 = [ErrorActionOption alloc];
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"OK [Continuation error alert]" value:@"localized string not found" table:0];
    v17 = [(ErrorActionOption *)v14 initWithTitle:v16 cancels:1 handler:0];
    v21 = v17;
    v10 = [NSArray arrayWithObjects:&v21 count:1];

    v18 = [[ErrorAction alloc] initWithTitle:v6 message:v9 options:v10];
    v19 = [[RichMapsActivity alloc] initWithMapsAction:v18];
    [(UserActivityHandlingTask *)self taskFinished:v19];
  }
}

@end