@interface ADCalendarTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADCalendarTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  responseCopy = response;
  errorCopy = error;
  commandCopy = command;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"com.apple.siri.calendar.Error"])
    {
      code = [errorCopy code];

      if (code == 100)
      {
        v12 = objc_alloc_init(SACommandFailed);
        aceId = [commandCopy aceId];
        [v12 setRefId:aceId];

        [v12 setErrorCode:SACalendarNoEventsFoundErrorCode];
        [v12 setReason:@"No matching event was found"];
        goto LABEL_9;
      }
    }

    else
    {
    }

    ad_aceResponseCommandGenericErrorRepresentation = [commandCopy ad_aceResponseCommandGenericErrorRepresentation];
  }

  else
  {
    ad_aceResponseCommandGenericErrorRepresentation = objc_alloc_init(SACommandSucceeded);
  }

  v12 = ad_aceResponseCommandGenericErrorRepresentation;
LABEL_9:

  return v12;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_alloc_init(AFShowNextEventRequest);
  }

  else
  {
    v7 = 0;
  }

  handlerCopy[2](handlerCopy, v7);
}

@end