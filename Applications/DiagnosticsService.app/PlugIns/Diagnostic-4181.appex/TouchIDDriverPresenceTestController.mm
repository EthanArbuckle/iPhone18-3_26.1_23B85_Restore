@interface TouchIDDriverPresenceTestController
- (void)start;
@end

@implementation TouchIDDriverPresenceTestController

- (void)start
{
  if (([(TouchIDDriverPresenceTestController *)self isCancelled]& 1) != 0 || ([TouchIDManager runTouchIDDiagnostic:1 options:&__NSDictionary0__struct], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
    if (([(TouchIDDriverPresenceTestController *)self isCancelled]& 1) == 0)
    {
      v4 = [v8 objectForKeyedSubscript:@"data"];
      result = [(TouchIDDriverPresenceTestController *)self result];
      [result setData:v4];

      v6 = [v8 objectForKeyedSubscript:@"testStatus"];
      result2 = [(TouchIDDriverPresenceTestController *)self result];
      [result2 setStatusCode:v6];
    }
  }

  [(TouchIDDriverPresenceTestController *)self setFinished:1];
}

@end