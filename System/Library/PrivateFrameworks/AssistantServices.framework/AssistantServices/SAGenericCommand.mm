@interface SAGenericCommand
- (int64_t)resultCallbackCode;
@end

@implementation SAGenericCommand

- (int64_t)resultCallbackCode
{
  className = [(SAGenericCommand *)self className];
  if ([className isEqualToString:SACommandFailedClassIdentifier])
  {
    properties = [(SAGenericCommand *)self properties];
    v5 = [properties objectForKey:SACommandFailedErrorCodePListKey];
    integerValue = [v5 integerValue];

    if (integerValue)
    {
      v7 = integerValue;
    }

    else
    {
      v7 = -1;
    }

    goto LABEL_16;
  }

  if ([className isEqualToString:SACommandSucceededClassIdentifier])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_16;
  }

  if ([className isEqualToString:SAPhoneSearchCompletedClassIdentifier])
  {
    properties2 = [(SAGenericCommand *)self properties];
    v9 = [properties2 objectForKey:SAPhoneSearchCompletedPhoneSearchResultsPListKey];

    v10 = [v9 count];
    v11 = &SAPhonePhoneSearchHasResultsErrorCode;
    if (!v10)
    {
      v11 = &SAPhonePhoneSearchHasNoResultsErrorCode;
    }

    v7 = *v11;
  }

  else
  {
    if (([className isEqualToString:SACFFlowCompletedClassIdentifier] & 1) == 0 && !objc_msgSend(className, "isEqualToString:", SACFProviderCompletedClassIdentifier))
    {
      goto LABEL_6;
    }

    properties3 = [(SAGenericCommand *)self properties];
    v13 = [properties3 objectForKey:SACFAbstractClientCommandCompletedStatusPListKey];
    integerValue2 = [v13 integerValue];

    if (integerValue2 == SACFSuccessErrorCode)
    {
      v7 = 0;
    }

    else
    {
      v7 = integerValue2;
    }
  }

LABEL_16:

  return v7;
}

@end