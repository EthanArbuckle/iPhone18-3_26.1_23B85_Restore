@interface ADCalendarTransformer
- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5;
- (void)getSiriRequestForClientBoundAceCommand:(id)a3 completionHandler:(id)a4;
@end

@implementation ADCalendarTransformer

- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 domain];
    if ([v10 isEqualToString:@"com.apple.siri.calendar.Error"])
    {
      v11 = [v8 code];

      if (v11 == 100)
      {
        v12 = objc_alloc_init(SACommandFailed);
        v13 = [v9 aceId];
        [v12 setRefId:v13];

        [v12 setErrorCode:SACalendarNoEventsFoundErrorCode];
        [v12 setReason:@"No matching event was found"];
        goto LABEL_9;
      }
    }

    else
    {
    }

    v14 = [v9 ad_aceResponseCommandGenericErrorRepresentation];
  }

  else
  {
    v14 = objc_alloc_init(SACommandSucceeded);
  }

  v12 = v14;
LABEL_9:

  return v12;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  v5 = a3;
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

  v8[2](v8, v7);
}

@end