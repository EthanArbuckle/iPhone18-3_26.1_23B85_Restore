@interface ADGenericIntentResponseTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
@end

@implementation ADGenericIntentResponseTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  responseCopy = response;
  errorCopy = error;
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(ADSiriRequestSucceededResponseTransformer);
    v11 = [(ADSiriRequestSucceededResponseTransformer *)v10 aceCommandForSiriResponse:responseCopy responseError:errorCopy forRequestCommand:commandCopy];

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    responseCode = [responseCopy responseCode];
    if (responseCode == 2)
    {
      v13 = &SAIntentGroupIntentEnabledAppHasNoResultsErrorCode;
    }

    else
    {
      if (responseCode != 1)
      {
        v15 = -1;
        goto LABEL_11;
      }

      v13 = &SAIntentGroupIntentEnabledAppDoesNotSupportIntentErrorCode;
    }

    v15 = *v13;
LABEL_11:
    v14 = [commandCopy ad_aceResponseCommandRepresentationWithErrorCode:v15 reason:0];
    goto LABEL_12;
  }

  v14 = objc_alloc_init(SACommandFailed);
LABEL_12:
  v11 = v14;
LABEL_13:

  return v11;
}

@end