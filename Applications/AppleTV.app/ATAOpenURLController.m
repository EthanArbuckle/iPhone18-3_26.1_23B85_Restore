@interface ATAOpenURLController
- (void)prepareParsedOpenURL:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation ATAOpenURLController

- (void)prepareParsedOpenURL:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (v6)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"The %@ parameter must not be nil.", @"parsedOpenURL"];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  [NSException raise:NSInvalidArgumentException format:@"The %@ parameter must not be nil.", @"completionHandler"];
LABEL_3:
}

@end