@interface TPSCallForwardingController
- (BOOL)isLoading;
- (NSArray)conditionalServiceRequests;
- (NSArray)unconditionalServiceRequests;
- (NSDictionary)carrierBundleLocalizedStringKeys;
- (NSString)conditionalServiceBusyPhoneNumber;
- (NSString)conditionalServiceUnansweredPhoneNumber;
- (NSString)conditionalServiceUnreachablePhoneNumber;
- (NSString)localizedConditionalBusyTitle;
- (NSString)localizedConditionalUnansweredTitle;
- (NSString)localizedConditionalUnreachableTitle;
- (NSString)subscriptionISOCountryCode;
- (NSString)unconditionalServicePhoneNumber;
- (TPSCallForwardingController)init;
- (TPSCallForwardingController)initWithSubscriptionContext:(id)context;
- (TPSCallForwardingControllerDelegate)delegate;
- (id)localizedCarrierBundleStringForKey:(id)key;
- (int64_t)conditionalServiceState;
- (int64_t)unconditionalServiceState;
- (void)enableConditionalServiceIfNeeded;
- (void)enableUnconditionalServiceIfNeeded;
- (void)requestController:(id)controller didReceiveResponse:(id)response;
- (void)sendConditionalServicesRequest;
- (void)sendEnableSetRequestForValue:(id)value;
- (void)sendServicesRequest;
- (void)sendSetAllServicesDisabledRequest;
- (void)sendSetRequestForValue:(id)value;
- (void)sendSetUnconditionalServiceDisabledRequest;
- (void)sendUnconditionalServicesRequest;
- (void)setConditionalServiceBusyPhoneNumber:(id)number;
- (void)setConditionalServiceUnansweredPhoneNumber:(id)number;
- (void)setConditionalServiceUnreachablePhoneNumber:(id)number;
- (void)setCurrentServiceType:(int64_t)type;
- (void)setUnconditionalServicePhoneNumber:(id)number;
- (void)updateServiceType:(int64_t)type;
@end

@implementation TPSCallForwardingController

- (TPSCallForwardingController)init
{
  [(TPSCallForwardingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallForwardingController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TPSCallForwardingController;
  v6 = [(TPSCallForwardingController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v8 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = v7->_carrierBundleController;
    v7->_carrierBundleController = v8;

    [(TPSCarrierBundleController *)v7->_carrierBundleController addDelegate:v7 queue:&_dispatch_main_q];
    v10 = objc_alloc_init(TPSCallForwardingRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v10;

    [(TPSCallForwardingRequestController *)v7->_requestController addDelegate:v7 queue:&_dispatch_main_q];
    [(TPSCallForwardingController *)v7 sendServicesRequest];
  }

  return v7;
}

- (BOOL)isLoading
{
  if ([(TPSCallForwardingController *)self isConditionalServiceLoading])
  {
    return 1;
  }

  return [(TPSCallForwardingController *)self isUnconditionalServiceLoading];
}

- (NSString)subscriptionISOCountryCode
{
  subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  if (!subscriptionISOCountryCode)
  {
    subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
    tps_isoCountryCode = [subscriptionContext tps_isoCountryCode];
    v6 = self->_subscriptionISOCountryCode;
    self->_subscriptionISOCountryCode = tps_isoCountryCode;

    subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  }

  return subscriptionISOCountryCode;
}

- (void)setCurrentServiceType:(int64_t)type
{
  if (self->_currentServiceType != type)
  {
    self->_currentServiceType = type;
    if (type == 1)
    {
      [(TPSCallForwardingController *)self setUnloading:0];
    }

    delegate = [(TPSCallForwardingController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(TPSCallForwardingController *)self delegate];
      [delegate2 callForwardingController:self didChangeServiceType:type];
    }
  }
}

- (void)updateServiceType:(int64_t)type
{
  currentServiceType = [(TPSCallForwardingController *)self currentServiceType];
  if (currentServiceType == type)
  {
    return;
  }

  v6 = currentServiceType;
  v7 = TPSCallForwardingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSString tps_stringWithTPSCallForwardingServiceType:v6];
    v9 = [NSString tps_stringWithTPSCallForwardingServiceType:type];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Transitioning call forwarding service from %@ to %@.", &v10, 0x16u);
  }

  if (v6 == 2)
  {
    if ((type | 2) == 3)
    {
      if ([(TPSCallForwardingController *)self unconditionalServiceState]== &dword_0 + 3)
      {
        [(TPSCallForwardingController *)self setPendingServiceType:type];
        [(TPSCallForwardingController *)self sendSetUnconditionalServiceDisabledRequest];
      }

      else
      {
        [(TPSCallForwardingController *)self setCurrentServiceType:type];
        if (type == 3)
        {
          [(TPSCallForwardingController *)self enableConditionalServiceIfNeeded];
        }
      }

      return;
    }

LABEL_15:
    [(TPSCallForwardingController *)self setCurrentServiceType:type];
    return;
  }

  if (v6 != 3)
  {
    if (type == 2 && v6 == 1)
    {
      [(TPSCallForwardingController *)self setCurrentServiceType:2];
LABEL_19:
      [(TPSCallForwardingController *)self enableUnconditionalServiceIfNeeded];
      return;
    }

    goto LABEL_15;
  }

  if ((type - 1) > 1)
  {
    goto LABEL_15;
  }

  if ([(TPSCallForwardingController *)self conditionalServiceState]== &dword_0 + 3)
  {
    [(TPSCallForwardingController *)self setPendingServiceType:type];
    [(TPSCallForwardingController *)self sendSetAllServicesDisabledRequest];
    return;
  }

  [(TPSCallForwardingController *)self setCurrentServiceType:type];
  if (type == 2)
  {
    goto LABEL_19;
  }
}

- (void)enableConditionalServiceIfNeeded
{
  conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (conditionalServiceBusyValue)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:conditionalServiceBusyValue];
  }

  conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];

  if (conditionalServiceUnansweredValue)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:conditionalServiceUnansweredValue];
  }

  conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

  v5 = conditionalServiceUnreachableValue;
  if (conditionalServiceUnreachableValue)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:conditionalServiceUnreachableValue];
    v5 = conditionalServiceUnreachableValue;
  }
}

- (NSArray)conditionalServiceRequests
{
  conditionalServiceRequests = self->_conditionalServiceRequests;
  if (!conditionalServiceRequests)
  {
    v4 = [TPSCallForwardingRequest alloc];
    subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:subscriptionContext reason:1];
    v7 = [TPSCallForwardingRequest alloc];
    subscriptionContext2 = [(TPSCallForwardingController *)self subscriptionContext];
    v9 = [v7 initWithSubscriptionContext:subscriptionContext2 reason:2];
    v16[1] = v9;
    v10 = [TPSCallForwardingRequest alloc];
    subscriptionContext3 = [(TPSCallForwardingController *)self subscriptionContext];
    v12 = [v10 initWithSubscriptionContext:subscriptionContext3 reason:3];
    v16[2] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:3];
    v14 = self->_conditionalServiceRequests;
    self->_conditionalServiceRequests = v13;

    conditionalServiceRequests = self->_conditionalServiceRequests;
  }

  return conditionalServiceRequests;
}

- (int64_t)conditionalServiceState
{
  if (!MGGetBoolAnswer())
  {
    return 1;
  }

  conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (conditionalServiceBusyValue)
  {
    conditionalServiceBusyValue2 = conditionalServiceBusyValue;
    conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
    if (!conditionalServiceUnansweredValue)
    {
      v8 = 0;
LABEL_17:

      return v8;
    }

    v6 = conditionalServiceUnansweredValue;
    conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

    if (conditionalServiceUnreachableValue)
    {
      conditionalServiceBusyValue2 = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
      if ([conditionalServiceBusyValue2 enabled])
      {
        v8 = 3;
      }

      else
      {
        conditionalServiceUnansweredValue2 = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
        if ([conditionalServiceUnansweredValue2 enabled])
        {
          v8 = 3;
        }

        else
        {
          conditionalServiceUnreachableValue2 = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
          if ([conditionalServiceUnreachableValue2 enabled])
          {
            v8 = 3;
          }

          else
          {
            v8 = 2;
          }
        }
      }

      goto LABEL_17;
    }
  }

  return 0;
}

- (NSString)conditionalServiceBusyPhoneNumber
{
  conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  saveNumber = [conditionalServiceBusyValue saveNumber];
  subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString();

  return v6;
}

- (void)setConditionalServiceBusyPhoneNumber:(id)number
{
  numberCopy = number;
  conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (conditionalServiceBusyValue)
  {
    subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString();

    saveNumber = [conditionalServiceBusyValue saveNumber];
    v9 = v7;
    v10 = saveNumber;
    if (v9 | v10)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v9 isEqualToString:v10];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [conditionalServiceBusyValue copy];
      [v13 setSaveNumber:v9];
      [v13 setEnabled:{objc_msgSend(v9, "length") != 0}];
      v14 = TPSCallForwardingLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Sending set conditional call forwarding service busy phone number request for value %@.", &v15, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v13];
    }

LABEL_10:
  }
}

- (NSString)conditionalServiceUnansweredPhoneNumber
{
  conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
  saveNumber = [conditionalServiceUnansweredValue saveNumber];
  subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString();

  return v6;
}

- (void)setConditionalServiceUnansweredPhoneNumber:(id)number
{
  numberCopy = number;
  conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
  if (conditionalServiceUnansweredValue)
  {
    subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString();

    saveNumber = [conditionalServiceUnansweredValue saveNumber];
    v9 = v7;
    v10 = saveNumber;
    if (v9 | v10)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v9 isEqualToString:v10];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [conditionalServiceUnansweredValue copy];
      [v13 setSaveNumber:v9];
      [v13 setEnabled:{objc_msgSend(v9, "length") != 0}];
      v14 = TPSCallForwardingLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Sending set conditional call forwarding service unanswered phone number request for value %@.", &v15, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v13];
    }

LABEL_10:
  }
}

- (NSString)conditionalServiceUnreachablePhoneNumber
{
  conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
  saveNumber = [conditionalServiceUnreachableValue saveNumber];
  subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString();

  return v6;
}

- (void)setConditionalServiceUnreachablePhoneNumber:(id)number
{
  numberCopy = number;
  conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
  if (conditionalServiceUnreachableValue)
  {
    subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString();

    saveNumber = [conditionalServiceUnreachableValue saveNumber];
    v9 = v7;
    v10 = saveNumber;
    if (v9 | v10)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v9 isEqualToString:v10];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [conditionalServiceUnreachableValue copy];
      [v13 setSaveNumber:v9];
      [v13 setEnabled:{objc_msgSend(v9, "length") != 0}];
      v14 = TPSCallForwardingLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Sending set conditional call forwarding service unreachable phone number request for value %@.", &v15, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v13];
    }

LABEL_10:
  }
}

- (void)enableUnconditionalServiceIfNeeded
{
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  if (unconditionalServiceValue)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:unconditionalServiceValue];
  }

  _objc_release_x1();
}

- (NSArray)unconditionalServiceRequests
{
  unconditionalServiceRequests = self->_unconditionalServiceRequests;
  if (!unconditionalServiceRequests)
  {
    v4 = [TPSCallForwardingRequest alloc];
    subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:subscriptionContext reason:0];
    v10 = v6;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = self->_unconditionalServiceRequests;
    self->_unconditionalServiceRequests = v7;

    unconditionalServiceRequests = self->_unconditionalServiceRequests;
  }

  return unconditionalServiceRequests;
}

- (int64_t)unconditionalServiceState
{
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  v3 = unconditionalServiceValue;
  if (unconditionalServiceValue)
  {
    if ([unconditionalServiceValue enabled])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)unconditionalServicePhoneNumber
{
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  saveNumber = [unconditionalServiceValue saveNumber];
  subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString();

  return v6;
}

- (void)setUnconditionalServicePhoneNumber:(id)number
{
  numberCopy = number;
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  if (unconditionalServiceValue)
  {
    subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString();

    saveNumber = [unconditionalServiceValue saveNumber];
    v9 = v7;
    v10 = saveNumber;
    if (v9 | v10)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v9 isEqualToString:v10];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [unconditionalServiceValue copy];
      [v13 setSaveNumber:v9];
      [v13 setEnabled:{objc_msgSend(v9, "length") != 0}];
      v14 = TPSCallForwardingLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Sending set unconditional call forwarding service phone number request for value %@.", &v15, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v13];
    }

LABEL_10:
  }
}

- (NSDictionary)carrierBundleLocalizedStringKeys
{
  carrierBundleController = [(TPSCallForwardingController *)self carrierBundleController];
  subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
  v5 = [carrierBundleController objectForKey:@"CallForwardingCustomLabels" subscriptionContext:subscriptionContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localizedCarrierBundleStringForKey:(id)key
{
  keyCopy = key;
  carrierBundleLocalizedStringKeys = [(TPSCallForwardingController *)self carrierBundleLocalizedStringKeys];
  v6 = [carrierBundleLocalizedStringKeys objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    v7 = [NSString stringWithFormat:@"%@_CALL_FORWARDING_CUSTOM_LABEL", v6];

    carrierBundleController = [(TPSCallForwardingController *)self carrierBundleController];
    subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
    v10 = [carrierBundleController localizedStringForKey:v7 subscriptionContext:subscriptionContext];
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

  return v10;
}

- (NSString)localizedConditionalBusyTitle
{
  v2 = [(TPSCallForwardingController *)self localizedCarrierBundleStringForKey:@"Busy"];
  if (!v2)
  {
    v2 = [TPSCallForwardingStrings localizedStringForKey:@"CONDITIONAL_SERVICE_BUSY_SPECIFIER_TITLE"];
  }

  return v2;
}

- (NSString)localizedConditionalUnansweredTitle
{
  v2 = [(TPSCallForwardingController *)self localizedCarrierBundleStringForKey:@"NoAnswer"];
  if (!v2)
  {
    v2 = [TPSCallForwardingStrings localizedStringForKey:@"CONDITIONAL_SERVICE_UNANSWERED_SPECIFIER_TITLE"];
  }

  return v2;
}

- (NSString)localizedConditionalUnreachableTitle
{
  v2 = [(TPSCallForwardingController *)self localizedCarrierBundleStringForKey:@"Unreachable"];
  if (!v2)
  {
    v2 = [TPSCallForwardingStrings localizedStringForKey:@"CONDITIONAL_SERVICE_UNREACHABLE_SPECIFIER_TITLE"];
  }

  return v2;
}

- (void)sendConditionalServicesRequest
{
  conditionalServiceRequests = [(TPSCallForwardingController *)self conditionalServiceRequests];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [conditionalServiceRequests countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(conditionalServiceRequests);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = TPSCallForwardingLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v8;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Sending conditional call forwarding services request for %@.", buf, 0xCu);
        }

        requestController = [(TPSCallForwardingController *)self requestController];
        [requestController addRequest:v8];
      }

      v5 = [conditionalServiceRequests countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)sendUnconditionalServicesRequest
{
  unconditionalServiceRequests = [(TPSCallForwardingController *)self unconditionalServiceRequests];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [unconditionalServiceRequests countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(unconditionalServiceRequests);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = TPSCallForwardingLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v8;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Sending unconditional call forwarding services request for %@.", buf, 0xCu);
        }

        requestController = [(TPSCallForwardingController *)self requestController];
        [requestController addRequest:v8];
      }

      v5 = [unconditionalServiceRequests countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)sendServicesRequest
{
  v3 = TPSCallForwardingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Sending initial request for call forwarding services.", v4, 2u);
  }

  if ([(TPSCallForwardingController *)self isConditionalServiceAvailable])
  {
    [(TPSCallForwardingController *)self sendConditionalServicesRequest];
  }

  [(TPSCallForwardingController *)self sendUnconditionalServicesRequest];
}

- (void)sendSetAllServicesDisabledRequest
{
  if ([(TPSCallForwardingController *)self isConditionalServiceAvailable])
  {
    v3 = objc_alloc_init(CTCallForwardingValue);
    [v3 setClss:1];
    [v3 setEnabled:0];
    [v3 setReason:4];
  }

  else
  {
    unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
    v3 = [unconditionalServiceValue copy];

    [v3 setEnabled:0];
  }

  v5 = TPSCallForwardingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Sending disable call forwarding services request for value %@.", &v6, 0xCu);
  }

  [(TPSCallForwardingController *)self sendSetRequestForValue:v3];
}

- (void)sendSetUnconditionalServiceDisabledRequest
{
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  v4 = [unconditionalServiceValue copy];

  [v4 setEnabled:0];
  v5 = TPSCallForwardingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Sending disable all unconditional call forwarding services request for value %@.", &v6, 0xCu);
  }

  [(TPSCallForwardingController *)self sendSetRequestForValue:v4];
}

- (void)sendSetRequestForValue:(id)value
{
  valueCopy = value;
  v5 = [TPSSetCallForwardingRequest alloc];
  subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
  v8 = [v5 initWithSubscriptionContext:subscriptionContext value:valueCopy];

  requestController = [(TPSCallForwardingController *)self requestController];
  [requestController addRequest:v8];
}

- (void)sendEnableSetRequestForValue:(id)value
{
  valueCopy = value;
  if (([valueCopy enabled] & 1) == 0)
  {
    saveNumber = [valueCopy saveNumber];
    v6 = [saveNumber length];

    if (v6)
    {
      v7 = [valueCopy copy];
      [v7 setEnabled:1];
      v8 = TPSCallForwardingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Sending enable call forwarding service request for value %@.", &v9, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v7];
    }
  }
}

- (void)requestController:(id)controller didReceiveResponse:(id)response
{
  responseCopy = response;
  v6 = TPSCallForwardingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 138412546;
    *&v29[4] = objc_opt_class();
    *&v29[12] = 2112;
    *&v29[14] = responseCopy;
    v7 = *&v29[4];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", v29, 0x16u);
  }

  value = [responseCopy value];
  v9 = value;
  if (value)
  {
    reason = [value reason];
    if (reason <= 1)
    {
      if (!reason)
      {
        unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
        if (unconditionalServiceValue)
        {
          [unconditionalServiceValue setEnabled:{objc_msgSend(v9, "enabled")}];
          saveNumber = [v9 saveNumber];
          [unconditionalServiceValue setSaveNumber:saveNumber];

          if ([unconditionalServiceValue enabled])
          {
            v17 = TPSCallForwardingLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *v29 = 138412290;
              *&v29[4] = unconditionalServiceValue;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Setting service type to Unconditional for value %@.", v29, 0xCu);
            }

            pendingServiceType = &dword_0 + 2;
          }

          else if ([(TPSCallForwardingController *)self isConditionalServiceAvailable])
          {
            v18 = TPSCallForwardingLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v29 = 0;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Conditional service is available; settings service type to Conditional.", v29, 2u);
            }

            pendingServiceType = &dword_0 + 3;
          }

          else
          {
            pendingServiceType = &dword_0 + 1;
          }
        }

        else
        {
          [(TPSCallForwardingController *)self setUnconditionalServiceValue:v9];
          pendingServiceType = 0;
        }

LABEL_25:
        [(TPSCallForwardingController *)self resetPendingServiceType:*v29];

        if (pendingServiceType)
        {
          goto LABEL_41;
        }

        goto LABEL_26;
      }

      if (reason == 1)
      {
        [(TPSCallForwardingController *)self setConditionalServiceBusyValue:v9];
      }
    }

    else
    {
      switch(reason)
      {
        case 2:
          [(TPSCallForwardingController *)self setConditionalServiceUnansweredValue:v9];
          break;
        case 3:
          [(TPSCallForwardingController *)self setConditionalServiceUnreachableValue:v9];
          break;
        case 4:
          conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
          [conditionalServiceBusyValue setEnabled:{objc_msgSend(v9, "enabled")}];
          conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];

          [conditionalServiceUnansweredValue setEnabled:{objc_msgSend(v9, "enabled")}];
          conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

          [conditionalServiceUnreachableValue setEnabled:{objc_msgSend(v9, "enabled")}];
          unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];

          [unconditionalServiceValue setEnabled:{objc_msgSend(v9, "enabled")}];
          pendingServiceType = [(TPSCallForwardingController *)self pendingServiceType];
          goto LABEL_25;
      }
    }
  }

LABEL_26:
  if ([(TPSCallForwardingController *)self isLoading])
  {
    pendingServiceType = 0;
  }

  else
  {
    conditionalServiceState = [(TPSCallForwardingController *)self conditionalServiceState];
    unconditionalServiceState = [(TPSCallForwardingController *)self unconditionalServiceState];
    if (conditionalServiceState == 3)
    {
      v21 = TPSCallForwardingLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Conditional service is enabled; setting service type to Conditional.", v29, 2u);
      }

      pendingServiceType = &dword_0 + 3;
    }

    else
    {
      v22 = unconditionalServiceState;
      v23 = conditionalServiceState - 1;
      v21 = TPSCallForwardingLog();
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v23 <= 1 && v22 == 2)
      {
        if (v24)
        {
          *v29 = 0;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Conditional service is unavailable/disabled and Unconditional service is disabled; setting service type to None.", v29, 2u);
        }

        pendingServiceType = &dword_0 + 1;
      }

      else if (v24)
      {
        *v29 = 0;
        pendingServiceType = &dword_0 + 2;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Unconditional service is enabled; setting service type to Unconditional.", v29, 2u);
      }

      else
      {
        pendingServiceType = &dword_0 + 2;
      }
    }
  }

LABEL_41:
  if ([(TPSCallForwardingController *)self currentServiceType]== pendingServiceType)
  {
    delegate = [(TPSCallForwardingController *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate2 = [(TPSCallForwardingController *)self delegate];
      error = [responseCopy error];
      [delegate2 callForwardingController:self didChangeValue:v9 error:error];
    }
  }

  else
  {
    [(TPSCallForwardingController *)self setCurrentServiceType:pendingServiceType];
  }
}

- (TPSCallForwardingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end