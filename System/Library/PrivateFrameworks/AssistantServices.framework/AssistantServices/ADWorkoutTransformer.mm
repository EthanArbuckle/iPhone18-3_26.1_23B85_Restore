@interface ADWorkoutTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADWorkoutTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  responseCopy = response;
  errorCopy = error;
  commandCopy = command;
  v10 = commandCopy;
  if (!errorCopy)
  {
    _ad_transformedWorkoutSuccessResponse = [commandCopy _ad_transformedWorkoutSuccessResponse];
LABEL_10:
    v13 = _ad_transformedWorkoutSuccessResponse;
    goto LABEL_25;
  }

  domain = [errorCopy domain];
  v12 = [domain isEqualToString:STWorkoutErrorDomain];

  if (!v12)
  {
    _ad_transformedWorkoutSuccessResponse = [v10 ad_aceResponseCommandGenericErrorRepresentation];
    goto LABEL_10;
  }

  v13 = objc_alloc_init(SACommandFailed);
  aceId = [v10 aceId];
  [v13 setRefId:aceId];

  code = [errorCopy code];
  if (code > 103)
  {
    if (code > 199)
    {
      if (code == 200)
      {
        v16 = &SAHLWorkoutStartedAssumedIndoorErrorCode;
      }

      else
      {
        if (code != 201)
        {
          goto LABEL_25;
        }

        v16 = &SAHLWorkoutStartedAssumedOutdoorErrorCode;
      }
    }

    else if (code == 104)
    {
      v16 = &SAHLActivitySetupNeededErrorCode;
    }

    else
    {
      if (code != 105)
      {
        goto LABEL_25;
      }

      v16 = &SAHLLocationTypeUnknownErrorCode;
    }
  }

  else if (code > 101)
  {
    if (code == 102)
    {
      v16 = &SAHLInvalidWorkoutErrorCode;
    }

    else
    {
      v16 = &SAHLFitnessTrackingDisabledErrorCode;
    }
  }

  else if (code == 100)
  {
    v16 = &SAHLCannotStartWorkoutErrorCode;
  }

  else
  {
    if (code != 101)
    {
      goto LABEL_25;
    }

    v16 = &SAHLWorkoutLocationUnspecifiedErrorCode;
  }

  [v13 setErrorCode:*v16];
LABEL_25:

  return v13;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  _ad_transformedWorkoutRequest = [command _ad_transformedWorkoutRequest];
  (*(handler + 2))(handlerCopy, _ad_transformedWorkoutRequest);
}

@end