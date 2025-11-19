@interface ADGenericIntentResponseTransformer
- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5;
@end

@implementation ADGenericIntentResponseTransformer

- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(ADSiriRequestSucceededResponseTransformer);
    v11 = [(ADSiriRequestSucceededResponseTransformer *)v10 aceCommandForSiriResponse:v7 responseError:v8 forRequestCommand:v9];

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v7 responseCode];
    if (v12 == 2)
    {
      v13 = &SAIntentGroupIntentEnabledAppHasNoResultsErrorCode;
    }

    else
    {
      if (v12 != 1)
      {
        v15 = -1;
        goto LABEL_11;
      }

      v13 = &SAIntentGroupIntentEnabledAppDoesNotSupportIntentErrorCode;
    }

    v15 = *v13;
LABEL_11:
    v14 = [v9 ad_aceResponseCommandRepresentationWithErrorCode:v15 reason:0];
    goto LABEL_12;
  }

  v14 = objc_alloc_init(SACommandFailed);
LABEL_12:
  v11 = v14;
LABEL_13:

  return v11;
}

@end