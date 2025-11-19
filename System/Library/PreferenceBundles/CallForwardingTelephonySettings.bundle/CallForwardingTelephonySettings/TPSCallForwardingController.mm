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
- (TPSCallForwardingController)initWithSubscriptionContext:(id)a3;
- (TPSCallForwardingControllerDelegate)delegate;
- (id)localizedCarrierBundleStringForKey:(id)a3;
- (int64_t)conditionalServiceState;
- (int64_t)unconditionalServiceState;
- (void)enableConditionalServiceIfNeeded;
- (void)enableUnconditionalServiceIfNeeded;
- (void)requestController:(id)a3 didReceiveResponse:(id)a4;
- (void)sendConditionalServicesRequest;
- (void)sendEnableSetRequestForValue:(id)a3;
- (void)sendServicesRequest;
- (void)sendSetAllServicesDisabledRequest;
- (void)sendSetRequestForValue:(id)a3;
- (void)sendSetUnconditionalServiceDisabledRequest;
- (void)sendUnconditionalServicesRequest;
- (void)setConditionalServiceBusyPhoneNumber:(id)a3;
- (void)setConditionalServiceUnansweredPhoneNumber:(id)a3;
- (void)setConditionalServiceUnreachablePhoneNumber:(id)a3;
- (void)setCurrentServiceType:(int64_t)a3;
- (void)setUnconditionalServicePhoneNumber:(id)a3;
- (void)updateServiceType:(int64_t)a3;
@end

@implementation TPSCallForwardingController

- (TPSCallForwardingController)init
{
  [(TPSCallForwardingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallForwardingController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TPSCallForwardingController;
  v6 = [(TPSCallForwardingController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
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
    v4 = [(TPSCallForwardingController *)self subscriptionContext];
    v5 = [v4 tps_isoCountryCode];
    v6 = self->_subscriptionISOCountryCode;
    self->_subscriptionISOCountryCode = v5;

    subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  }

  return subscriptionISOCountryCode;
}

- (void)setCurrentServiceType:(int64_t)a3
{
  if (self->_currentServiceType != a3)
  {
    self->_currentServiceType = a3;
    if (a3 == 1)
    {
      [(TPSCallForwardingController *)self setUnloading:0];
    }

    v5 = [(TPSCallForwardingController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(TPSCallForwardingController *)self delegate];
      [v7 callForwardingController:self didChangeServiceType:a3];
    }
  }
}

- (void)updateServiceType:(int64_t)a3
{
  v5 = [(TPSCallForwardingController *)self currentServiceType];
  if (v5 == a3)
  {
    return;
  }

  v6 = v5;
  v7 = TPSCallForwardingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSString tps_stringWithTPSCallForwardingServiceType:v6];
    v9 = [NSString tps_stringWithTPSCallForwardingServiceType:a3];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Transitioning call forwarding service from %@ to %@.", &v10, 0x16u);
  }

  if (v6 == 2)
  {
    if ((a3 | 2) == 3)
    {
      if ([(TPSCallForwardingController *)self unconditionalServiceState]== &dword_0 + 3)
      {
        [(TPSCallForwardingController *)self setPendingServiceType:a3];
        [(TPSCallForwardingController *)self sendSetUnconditionalServiceDisabledRequest];
      }

      else
      {
        [(TPSCallForwardingController *)self setCurrentServiceType:a3];
        if (a3 == 3)
        {
          [(TPSCallForwardingController *)self enableConditionalServiceIfNeeded];
        }
      }

      return;
    }

LABEL_15:
    [(TPSCallForwardingController *)self setCurrentServiceType:a3];
    return;
  }

  if (v6 != 3)
  {
    if (a3 == 2 && v6 == 1)
    {
      [(TPSCallForwardingController *)self setCurrentServiceType:2];
LABEL_19:
      [(TPSCallForwardingController *)self enableUnconditionalServiceIfNeeded];
      return;
    }

    goto LABEL_15;
  }

  if ((a3 - 1) > 1)
  {
    goto LABEL_15;
  }

  if ([(TPSCallForwardingController *)self conditionalServiceState]== &dword_0 + 3)
  {
    [(TPSCallForwardingController *)self setPendingServiceType:a3];
    [(TPSCallForwardingController *)self sendSetAllServicesDisabledRequest];
    return;
  }

  [(TPSCallForwardingController *)self setCurrentServiceType:a3];
  if (a3 == 2)
  {
    goto LABEL_19;
  }
}

- (void)enableConditionalServiceIfNeeded
{
  v3 = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (v3)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:v3];
  }

  v4 = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];

  if (v4)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:v4];
  }

  v6 = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

  v5 = v6;
  if (v6)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:v6];
    v5 = v6;
  }
}

- (NSArray)conditionalServiceRequests
{
  conditionalServiceRequests = self->_conditionalServiceRequests;
  if (!conditionalServiceRequests)
  {
    v4 = [TPSCallForwardingRequest alloc];
    v5 = [(TPSCallForwardingController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:v5 reason:1];
    v7 = [TPSCallForwardingRequest alloc];
    v8 = [(TPSCallForwardingController *)self subscriptionContext];
    v9 = [v7 initWithSubscriptionContext:v8 reason:2];
    v16[1] = v9;
    v10 = [TPSCallForwardingRequest alloc];
    v11 = [(TPSCallForwardingController *)self subscriptionContext];
    v12 = [v10 initWithSubscriptionContext:v11 reason:3];
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

  v3 = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (v3)
  {
    v4 = v3;
    v5 = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
    if (!v5)
    {
      v8 = 0;
LABEL_17:

      return v8;
    }

    v6 = v5;
    v7 = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

    if (v7)
    {
      v4 = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
      if ([v4 enabled])
      {
        v8 = 3;
      }

      else
      {
        v9 = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
        if ([v9 enabled])
        {
          v8 = 3;
        }

        else
        {
          v10 = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
          if ([v10 enabled])
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
  v3 = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  v4 = [v3 saveNumber];
  v5 = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString();

  return v6;
}

- (void)setConditionalServiceBusyPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (v5)
  {
    v6 = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString();

    v8 = [v5 saveNumber];
    v9 = v7;
    v10 = v8;
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

      v13 = [v5 copy];
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
  v3 = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
  v4 = [v3 saveNumber];
  v5 = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString();

  return v6;
}

- (void)setConditionalServiceUnansweredPhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
  if (v5)
  {
    v6 = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString();

    v8 = [v5 saveNumber];
    v9 = v7;
    v10 = v8;
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

      v13 = [v5 copy];
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
  v3 = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
  v4 = [v3 saveNumber];
  v5 = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString();

  return v6;
}

- (void)setConditionalServiceUnreachablePhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
  if (v5)
  {
    v6 = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString();

    v8 = [v5 saveNumber];
    v9 = v7;
    v10 = v8;
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

      v13 = [v5 copy];
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
  v3 = [(TPSCallForwardingController *)self unconditionalServiceValue];
  if (v3)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:v3];
  }

  _objc_release_x1();
}

- (NSArray)unconditionalServiceRequests
{
  unconditionalServiceRequests = self->_unconditionalServiceRequests;
  if (!unconditionalServiceRequests)
  {
    v4 = [TPSCallForwardingRequest alloc];
    v5 = [(TPSCallForwardingController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:v5 reason:0];
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
  v2 = [(TPSCallForwardingController *)self unconditionalServiceValue];
  v3 = v2;
  if (v2)
  {
    if ([v2 enabled])
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
  v3 = [(TPSCallForwardingController *)self unconditionalServiceValue];
  v4 = [v3 saveNumber];
  v5 = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString();

  return v6;
}

- (void)setUnconditionalServicePhoneNumber:(id)a3
{
  v4 = a3;
  v5 = [(TPSCallForwardingController *)self unconditionalServiceValue];
  if (v5)
  {
    v6 = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString();

    v8 = [v5 saveNumber];
    v9 = v7;
    v10 = v8;
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

      v13 = [v5 copy];
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
  v3 = [(TPSCallForwardingController *)self carrierBundleController];
  v4 = [(TPSCallForwardingController *)self subscriptionContext];
  v5 = [v3 objectForKey:@"CallForwardingCustomLabels" subscriptionContext:v4];

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

- (id)localizedCarrierBundleStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(TPSCallForwardingController *)self carrierBundleLocalizedStringKeys];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [NSString stringWithFormat:@"%@_CALL_FORWARDING_CUSTOM_LABEL", v6];

    v8 = [(TPSCallForwardingController *)self carrierBundleController];
    v9 = [(TPSCallForwardingController *)self subscriptionContext];
    v10 = [v8 localizedStringForKey:v7 subscriptionContext:v9];
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
  v3 = [(TPSCallForwardingController *)self conditionalServiceRequests];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = TPSCallForwardingLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v8;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Sending conditional call forwarding services request for %@.", buf, 0xCu);
        }

        v10 = [(TPSCallForwardingController *)self requestController];
        [v10 addRequest:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)sendUnconditionalServicesRequest
{
  v3 = [(TPSCallForwardingController *)self unconditionalServiceRequests];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = TPSCallForwardingLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v8;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Sending unconditional call forwarding services request for %@.", buf, 0xCu);
        }

        v10 = [(TPSCallForwardingController *)self requestController];
        [v10 addRequest:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
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
    v4 = [(TPSCallForwardingController *)self unconditionalServiceValue];
    v3 = [v4 copy];

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
  v3 = [(TPSCallForwardingController *)self unconditionalServiceValue];
  v4 = [v3 copy];

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

- (void)sendSetRequestForValue:(id)a3
{
  v4 = a3;
  v5 = [TPSSetCallForwardingRequest alloc];
  v6 = [(TPSCallForwardingController *)self subscriptionContext];
  v8 = [v5 initWithSubscriptionContext:v6 value:v4];

  v7 = [(TPSCallForwardingController *)self requestController];
  [v7 addRequest:v8];
}

- (void)sendEnableSetRequestForValue:(id)a3
{
  v4 = a3;
  if (([v4 enabled] & 1) == 0)
  {
    v5 = [v4 saveNumber];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v4 copy];
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

- (void)requestController:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  v6 = TPSCallForwardingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 138412546;
    *&v29[4] = objc_opt_class();
    *&v29[12] = 2112;
    *&v29[14] = v5;
    v7 = *&v29[4];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", v29, 0x16u);
  }

  v8 = [v5 value];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 reason];
    if (v10 <= 1)
    {
      if (!v10)
      {
        v14 = [(TPSCallForwardingController *)self unconditionalServiceValue];
        if (v14)
        {
          [v14 setEnabled:{objc_msgSend(v9, "enabled")}];
          v16 = [v9 saveNumber];
          [v14 setSaveNumber:v16];

          if ([v14 enabled])
          {
            v17 = TPSCallForwardingLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *v29 = 138412290;
              *&v29[4] = v14;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Setting service type to Unconditional for value %@.", v29, 0xCu);
            }

            v15 = &dword_0 + 2;
          }

          else if ([(TPSCallForwardingController *)self isConditionalServiceAvailable])
          {
            v18 = TPSCallForwardingLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v29 = 0;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Conditional service is available; settings service type to Conditional.", v29, 2u);
            }

            v15 = &dword_0 + 3;
          }

          else
          {
            v15 = &dword_0 + 1;
          }
        }

        else
        {
          [(TPSCallForwardingController *)self setUnconditionalServiceValue:v9];
          v15 = 0;
        }

LABEL_25:
        [(TPSCallForwardingController *)self resetPendingServiceType:*v29];

        if (v15)
        {
          goto LABEL_41;
        }

        goto LABEL_26;
      }

      if (v10 == 1)
      {
        [(TPSCallForwardingController *)self setConditionalServiceBusyValue:v9];
      }
    }

    else
    {
      switch(v10)
      {
        case 2:
          [(TPSCallForwardingController *)self setConditionalServiceUnansweredValue:v9];
          break;
        case 3:
          [(TPSCallForwardingController *)self setConditionalServiceUnreachableValue:v9];
          break;
        case 4:
          v11 = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
          [v11 setEnabled:{objc_msgSend(v9, "enabled")}];
          v12 = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];

          [v12 setEnabled:{objc_msgSend(v9, "enabled")}];
          v13 = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

          [v13 setEnabled:{objc_msgSend(v9, "enabled")}];
          v14 = [(TPSCallForwardingController *)self unconditionalServiceValue];

          [v14 setEnabled:{objc_msgSend(v9, "enabled")}];
          v15 = [(TPSCallForwardingController *)self pendingServiceType];
          goto LABEL_25;
      }
    }
  }

LABEL_26:
  if ([(TPSCallForwardingController *)self isLoading])
  {
    v15 = 0;
  }

  else
  {
    v19 = [(TPSCallForwardingController *)self conditionalServiceState];
    v20 = [(TPSCallForwardingController *)self unconditionalServiceState];
    if (v19 == 3)
    {
      v21 = TPSCallForwardingLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Conditional service is enabled; setting service type to Conditional.", v29, 2u);
      }

      v15 = &dword_0 + 3;
    }

    else
    {
      v22 = v20;
      v23 = v19 - 1;
      v21 = TPSCallForwardingLog();
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v23 <= 1 && v22 == 2)
      {
        if (v24)
        {
          *v29 = 0;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Conditional service is unavailable/disabled and Unconditional service is disabled; setting service type to None.", v29, 2u);
        }

        v15 = &dword_0 + 1;
      }

      else if (v24)
      {
        *v29 = 0;
        v15 = &dword_0 + 2;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Unconditional service is enabled; setting service type to Unconditional.", v29, 2u);
      }

      else
      {
        v15 = &dword_0 + 2;
      }
    }
  }

LABEL_41:
  if ([(TPSCallForwardingController *)self currentServiceType]== v15)
  {
    v25 = [(TPSCallForwardingController *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = [(TPSCallForwardingController *)self delegate];
      v28 = [v5 error];
      [v27 callForwardingController:self didChangeValue:v9 error:v28];
    }
  }

  else
  {
    [(TPSCallForwardingController *)self setCurrentServiceType:v15];
  }
}

- (TPSCallForwardingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end