@interface ADWorkoutTransformer
- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5;
- (void)getSiriRequestForClientBoundAceCommand:(id)a3 completionHandler:(id)a4;
@end

@implementation ADWorkoutTransformer

- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v17 = [v9 _ad_transformedWorkoutSuccessResponse];
LABEL_10:
    v13 = v17;
    goto LABEL_25;
  }

  v11 = [v8 domain];
  v12 = [v11 isEqualToString:STWorkoutErrorDomain];

  if (!v12)
  {
    v17 = [v10 ad_aceResponseCommandGenericErrorRepresentation];
    goto LABEL_10;
  }

  v13 = objc_alloc_init(SACommandFailed);
  v14 = [v10 aceId];
  [v13 setRefId:v14];

  v15 = [v8 code];
  if (v15 > 103)
  {
    if (v15 > 199)
    {
      if (v15 == 200)
      {
        v16 = &SAHLWorkoutStartedAssumedIndoorErrorCode;
      }

      else
      {
        if (v15 != 201)
        {
          goto LABEL_25;
        }

        v16 = &SAHLWorkoutStartedAssumedOutdoorErrorCode;
      }
    }

    else if (v15 == 104)
    {
      v16 = &SAHLActivitySetupNeededErrorCode;
    }

    else
    {
      if (v15 != 105)
      {
        goto LABEL_25;
      }

      v16 = &SAHLLocationTypeUnknownErrorCode;
    }
  }

  else if (v15 > 101)
  {
    if (v15 == 102)
    {
      v16 = &SAHLInvalidWorkoutErrorCode;
    }

    else
    {
      v16 = &SAHLFitnessTrackingDisabledErrorCode;
    }
  }

  else if (v15 == 100)
  {
    v16 = &SAHLCannotStartWorkoutErrorCode;
  }

  else
  {
    if (v15 != 101)
    {
      goto LABEL_25;
    }

    v16 = &SAHLWorkoutLocationUnspecifiedErrorCode;
  }

  [v13 setErrorCode:*v16];
LABEL_25:

  return v13;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 _ad_transformedWorkoutRequest];
  (*(a4 + 2))(v6, v7);
}

@end