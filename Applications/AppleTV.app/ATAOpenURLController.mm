@interface ATAOpenURLController
- (void)prepareParsedOpenURL:(id)l withCompletionHandler:(id)handler;
@end

@implementation ATAOpenURLController

- (void)prepareParsedOpenURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (lCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"The %@ parameter must not be nil.", @"parsedOpenURL"];
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  [NSException raise:NSInvalidArgumentException format:@"The %@ parameter must not be nil.", @"completionHandler"];
LABEL_3:
}

@end