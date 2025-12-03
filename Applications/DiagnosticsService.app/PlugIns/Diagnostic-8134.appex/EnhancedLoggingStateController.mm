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
  inputs = [(EnhancedLoggingStateController *)self inputs];
  rawParameters = [inputs rawParameters];
  v19[1] = @"specifications";
  v20[0] = rawParameters;
  inputs2 = [(EnhancedLoggingStateController *)self inputs];
  rawSpecifications = [inputs2 rawSpecifications];
  v20[1] = rawSpecifications;
  v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

  v18 = 0;
  v12 = [v6 configureSessionWithParameters:v11 ticket:v5 error:&v18];
  v13 = v12;
  if (v12)
  {
    data = [v12 data];
    result = [(EnhancedLoggingStateController *)self result];
    [result setData:data];

    result3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 statusCode]);
    result2 = [(EnhancedLoggingStateController *)self result];
    [result2 setStatusCode:result3];

LABEL_8:
    goto LABEL_9;
  }

  if (v18)
  {
    result3 = [(EnhancedLoggingStateController *)self result];
    [result3 setStatusCode:&off_100004148];
    goto LABEL_8;
  }

LABEL_9:
  [(EnhancedLoggingStateController *)self setFinished:1];
}

@end