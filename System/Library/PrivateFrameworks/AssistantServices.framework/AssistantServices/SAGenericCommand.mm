@interface SAGenericCommand
- (int64_t)resultCallbackCode;
@end

@implementation SAGenericCommand

- (int64_t)resultCallbackCode
{
  v3 = [(SAGenericCommand *)self className];
  if ([v3 isEqualToString:SACommandFailedClassIdentifier])
  {
    v4 = [(SAGenericCommand *)self properties];
    v5 = [v4 objectForKey:SACommandFailedErrorCodePListKey];
    v6 = [v5 integerValue];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = -1;
    }

    goto LABEL_16;
  }

  if ([v3 isEqualToString:SACommandSucceededClassIdentifier])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:SAPhoneSearchCompletedClassIdentifier])
  {
    v8 = [(SAGenericCommand *)self properties];
    v9 = [v8 objectForKey:SAPhoneSearchCompletedPhoneSearchResultsPListKey];

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
    if (([v3 isEqualToString:SACFFlowCompletedClassIdentifier] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", SACFProviderCompletedClassIdentifier))
    {
      goto LABEL_6;
    }

    v12 = [(SAGenericCommand *)self properties];
    v13 = [v12 objectForKey:SACFAbstractClientCommandCompletedStatusPListKey];
    v14 = [v13 integerValue];

    if (v14 == SACFSuccessErrorCode)
    {
      v7 = 0;
    }

    else
    {
      v7 = v14;
    }
  }

LABEL_16:

  return v7;
}

@end