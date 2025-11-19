@interface EnhancedLoggingStateController
- (void)start;
@end

@implementation EnhancedLoggingStateController

- (void)start
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Diagnostics"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"currentTicketNumber"];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(ELSessionConfigurator);
  v19[0] = @"parameters";
  v7 = [(EnhancedLoggingStateController *)self inputs];
  v8 = [v7 rawParameters];
  v19[1] = @"specifications";
  v20[0] = v8;
  v9 = [(EnhancedLoggingStateController *)self inputs];
  v10 = [v9 rawSpecifications];
  v20[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

  v18 = 0;
  v12 = [v6 configureSessionWithParameters:v11 ticket:v5 error:&v18];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 data];
    v15 = [(EnhancedLoggingStateController *)self result];
    [v15 setData:v14];

    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 statusCode]);
    v17 = [(EnhancedLoggingStateController *)self result];
    [v17 setStatusCode:v16];

LABEL_8:
    goto LABEL_9;
  }

  if (v18)
  {
    v16 = [(EnhancedLoggingStateController *)self result];
    [v16 setStatusCode:&off_100004148];
    goto LABEL_8;
  }

LABEL_9:
  [(EnhancedLoggingStateController *)self setFinished:1];
}

@end