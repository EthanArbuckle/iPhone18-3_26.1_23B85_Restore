@interface SKMutablePayment
- (void)setAppleIDAuthorizationClientInfo:(id)info;
- (void)setApplicationUsername:(NSString *)applicationUsername;
- (void)setMetricsOverlay:(id)overlay;
- (void)setPartnerIdentifier:(id)identifier;
- (void)setPartnerTransactionIdentifier:(id)identifier;
- (void)setPaymentDiscount:(SKPaymentDiscount *)paymentDiscount;
- (void)setProductIdentifier:(NSString *)productIdentifier;
- (void)setRequestData:(NSData *)requestData;
- (void)setRequestParameters:(id)parameters;
@end

@implementation SKMutablePayment

- (void)setApplicationUsername:(NSString *)applicationUsername
{
  internal = self->super._internal;
  if (internal[1] != applicationUsername)
  {
    v7 = internal;
    v5 = [(NSString *)applicationUsername copy];
    v6 = internal[1];
    internal[1] = v5;
  }
}

- (void)setProductIdentifier:(NSString *)productIdentifier
{
  internal = self->super._internal;
  if (internal[4] != productIdentifier)
  {
    v7 = internal;
    v5 = [(NSString *)productIdentifier copy];
    v6 = internal[4];
    internal[4] = v5;
  }
}

- (void)setRequestData:(NSData *)requestData
{
  v4 = requestData;
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.storekit.request-data", &error);
    if (v7)
    {
      v8 = v7;
      TypeID = CFBooleanGetTypeID();
      v10 = TypeID == CFGetTypeID(v8) && CFBooleanGetValue(v8) != 0;
      CFRelease(v8);
    }

    else
    {
      if (error)
      {
        NSLog(&cfstr_Sectaskcopyval.isa, error);
        CFRelease(error);
      }

      v10 = 0;
    }

    error = 0;
    v11 = SecTaskCopyValueForEntitlement(v6, @"com.apple.developer.storekit.request-data", &error);
    if (v11)
    {
      v12 = v11;
      v13 = CFBooleanGetTypeID();
      if (v13 == CFGetTypeID(v12))
      {
        v10 |= CFBooleanGetValue(v12) != 0;
      }

      v14 = v12;
    }

    else
    {
      if (!error)
      {
        goto LABEL_17;
      }

      NSLog(&cfstr_Sectaskcopyval_0.isa, error);
      v14 = error;
    }

    CFRelease(v14);
LABEL_17:
    CFRelease(v6);
    if (v10)
    {
      goto LABEL_19;
    }
  }

  NSLog(&cfstr_WarningThisApp.isa);
LABEL_19:
  if ([(NSData *)v4 length]> 0x2000)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The request data must be less than %d bytes", 0x2000}];
  }

  internal = self->super._internal;
  if (internal[7] != v4)
  {
    v16 = internal;
    v17 = [(NSData *)v4 copy];
    v18 = internal[7];
    internal[7] = v17;
  }
}

- (void)setPaymentDiscount:(SKPaymentDiscount *)paymentDiscount
{
  objc_storeStrong(self->super._internal + 12, paymentDiscount);
  v4 = paymentDiscount;
}

- (void)setPartnerIdentifier:(id)identifier
{
  internal = self->super._internal;
  if (internal[2] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[2];
    internal[2] = v5;
  }
}

- (void)setPartnerTransactionIdentifier:(id)identifier
{
  internal = self->super._internal;
  if (internal[3] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[3];
    internal[3] = v5;
  }
}

- (void)setRequestParameters:(id)parameters
{
  internal = self->super._internal;
  if (internal[8] != parameters)
  {
    v7 = internal;
    v5 = [parameters copy];
    v6 = internal[8];
    internal[8] = v5;
  }
}

- (void)setAppleIDAuthorizationClientInfo:(id)info
{
  internal = self->super._internal;
  if (internal[13] != info)
  {
    v7 = internal;
    v5 = [info copy];
    v6 = internal[13];
    internal[13] = v5;
  }
}

- (void)setMetricsOverlay:(id)overlay
{
  internal = self->super._internal;
  if (internal[14] != overlay)
  {
    v7 = internal;
    v5 = [overlay copy];
    v6 = internal[14];
    internal[14] = v5;
  }
}

@end