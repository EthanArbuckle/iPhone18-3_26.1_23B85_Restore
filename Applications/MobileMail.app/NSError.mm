@interface NSError
+ (id)_mf_errorWithCode:(unint64_t)code request:(id)request underlyingError:(id)error allowFallbackRouting:(BOOL)routing debugDescription:(id)description;
+ (id)_restorationStateErrorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)mailHandoffErrorWithActivityContextInfo:(id)info errorFormat:(id)format;
+ (id)mailHandoffSimulatedError;
+ (id)mf_generalRoutingErrorWithDescription:(id)description request:(id)request;
+ (id)mf_invalidRestorationDataErrorWithUnderlyingError:(id)error;
+ (id)mf_noSuitableRouteErrorWithRequest:(id)request;
+ (id)mf_restorationAccountNotAvailableErrorWithUnderlyingError:(id)error;
+ (id)mf_restorationMailboxNotAvailableErrorWithUnderlyingError:(id)error;
+ (id)mf_restorationMessageNotAvailableErrorWithUnderlyingError:(id)error;
+ (id)mf_routingErrorWithUnderlyingError:(id)error request:(id)request allowFallbackRouting:(BOOL)routing;
- (BOOL)mf_allowFallbackRouting;
- (BOOL)mf_isAnyRestorationError;
- (BOOL)mf_isBlackPearlStateRestorationNotSupportedError;
- (BOOL)mf_isBlockedURLError;
- (BOOL)mf_isInvalidRestorationDataError;
- (BOOL)mf_isNoSuitableRouteError;
- (BOOL)mf_isRestorationAccountNotAvailableError;
- (BOOL)mf_isRestorationMailboxNotAvailableError;
- (BOOL)mf_isRestorationMessageNotAvailableError;
- (BOOL)mf_isSpotlightHandoffError;
- (MFURLRoutingRequest)mf_request;
- (NSDictionary)mf_mailHandoffActivityContextInfo;
- (NSString)mf_mailHandoffActivityType;
- (unint64_t)mf_activityErrorReason;
- (unint64_t)mf_activitySource;
@end

@implementation NSError

- (NSDictionary)mf_mailHandoffActivityContextInfo
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"ceActivityType"];

  if (v3)
  {
    v4 = userInfo;
  }

  else
  {
    v4 = [userInfo objectForKeyedSubscript:@"ceActivityInfo"];
  }

  v5 = v4;

  return v5;
}

- (unint64_t)mf_activitySource
{
  mf_mailHandoffActivityContextInfo = [(NSError *)self mf_mailHandoffActivityContextInfo];
  v3 = [mf_mailHandoffActivityContextInfo objectForKeyedSubscript:@"ceActivityIsHandoff"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)mf_activityErrorReason
{
  mf_mailHandoffActivityContextInfo = [(NSError *)self mf_mailHandoffActivityContextInfo];
  v3 = [mf_mailHandoffActivityContextInfo objectForKeyedSubscript:@"ceActivityErrorReason"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (NSString)mf_mailHandoffActivityType
{
  mf_mailHandoffActivityContextInfo = [(NSError *)self mf_mailHandoffActivityContextInfo];
  v3 = [mf_mailHandoffActivityContextInfo objectForKeyedSubscript:@"ceActivityType"];

  return v3;
}

- (BOOL)mf_isSpotlightHandoffError
{
  mf_mailHandoffActivityType = [(NSError *)self mf_mailHandoffActivityType];
  v3 = [CSSearchableItemActionType isEqualToString:mf_mailHandoffActivityType];

  return v3;
}

+ (id)mailHandoffErrorWithActivityContextInfo:(id)info errorFormat:(id)format
{
  infoCopy = info;
  formatCopy = format;
  v7 = [[NSString alloc] initWithFormat:formatCopy arguments:&v14];
  v11[0] = NSLocalizedDescriptionKey;
  v11[1] = @"ceActivityInfo";
  v12[0] = v7;
  v12[1] = infoCopy;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [NSError errorWithDomain:MFHandoffErrorDomain code:-1 userInfo:v8];

  return v9;
}

+ (id)mailHandoffSimulatedError
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Simulated handoff error.";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:MFHandoffErrorDomain code:101 userInfo:v2];

  return v3;
}

+ (id)mf_noSuitableRouteErrorWithRequest:(id)request
{
  v3 = [self _mf_errorWithCode:6000002 request:request underlyingError:0 allowFallbackRouting:1 debugDescription:0];

  return v3;
}

+ (id)mf_routingErrorWithUnderlyingError:(id)error request:(id)request allowFallbackRouting:(BOOL)routing
{
  v5 = [self _mf_errorWithCode:6000003 request:request underlyingError:error allowFallbackRouting:routing debugDescription:0];

  return v5;
}

+ (id)mf_generalRoutingErrorWithDescription:(id)description request:(id)request
{
  v4 = [self _mf_errorWithCode:6000000 request:request underlyingError:0 allowFallbackRouting:1 debugDescription:description];

  return v4;
}

+ (id)_mf_errorWithCode:(unint64_t)code request:(id)request underlyingError:(id)error allowFallbackRouting:(BOOL)routing debugDescription:(id)description
{
  routingCopy = routing;
  requestCopy = request;
  errorCopy = error;
  descriptionCopy = description;
  if (qword_1006DD7A0 != -1)
  {
    sub_10048C928();
  }

  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setObject:requestCopy forKeyedSubscript:@"MFURLRouterErrorRequestKey"];
  v15 = [NSNumber numberWithBool:routingCopy];
  [v14 setObject:v15 forKeyedSubscript:@"MFURLRoutingErrorAllowFallbackRoutingKey"];

  if (errorCopy)
  {
    [v14 setObject:errorCopy forKeyedSubscript:NSUnderlyingErrorKey];
  }

  if (descriptionCopy)
  {
    [v14 setObject:descriptionCopy forKeyedSubscript:NSDebugDescriptionErrorKey];
  }

  v16 = [v14 copy];
  v17 = [NSError errorWithDomain:@"MFURLRoutingErrorDomain" code:code userInfo:v16];

  return v17;
}

- (BOOL)mf_isBlockedURLError
{
  ef_match = [(NSError *)self ef_match];
  v3 = (ef_match)[2](ef_match, @"MFURLRoutingErrorDomain", 6000001);

  return v3;
}

- (BOOL)mf_isNoSuitableRouteError
{
  ef_match = [(NSError *)self ef_match];
  v3 = (ef_match)[2](ef_match, @"MFURLRoutingErrorDomain", 6000002);

  return v3;
}

- (BOOL)mf_allowFallbackRouting
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"MFURLRoutingErrorAllowFallbackRoutingKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (MFURLRoutingRequest)mf_request
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"MFURLRouterErrorRequestKey"];

  return v3;
}

+ (id)mf_invalidRestorationDataErrorWithUnderlyingError:(id)error
{
  v3 = [self _restorationStateErrorWithCode:5000000 underlyingError:error];

  return v3;
}

+ (id)mf_restorationAccountNotAvailableErrorWithUnderlyingError:(id)error
{
  v3 = [self _restorationStateErrorWithCode:5000001 underlyingError:error];

  return v3;
}

+ (id)mf_restorationMailboxNotAvailableErrorWithUnderlyingError:(id)error
{
  v3 = [self _restorationStateErrorWithCode:5000002 underlyingError:error];

  return v3;
}

+ (id)mf_restorationMessageNotAvailableErrorWithUnderlyingError:(id)error
{
  v3 = [self _restorationStateErrorWithCode:5000003 underlyingError:error];

  return v3;
}

+ (id)_restorationStateErrorWithCode:(int64_t)code underlyingError:(id)error
{
  errorCopy = error;
  if (qword_1006DD7A8 != -1)
  {
    sub_10048C93C();
  }

  if (errorCopy)
  {
    v9 = NSUnderlyingErrorKey;
    v10 = errorCopy;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSError errorWithDomain:@"com.apple.mobilemail.restoration" code:code userInfo:v6];

  return v7;
}

- (BOOL)mf_isAnyRestorationError
{
  domain = [(NSError *)self domain];
  v3 = [domain isEqualToString:@"com.apple.mobilemail.restoration"];

  return v3;
}

- (BOOL)mf_isInvalidRestorationDataError
{
  ef_match = [(NSError *)self ef_match];
  v3 = (ef_match)[2](ef_match, @"com.apple.mobilemail.restoration", 5000000);

  return v3;
}

- (BOOL)mf_isRestorationAccountNotAvailableError
{
  ef_match = [(NSError *)self ef_match];
  v3 = (ef_match)[2](ef_match, @"com.apple.mobilemail.restoration", 5000001);

  return v3;
}

- (BOOL)mf_isRestorationMailboxNotAvailableError
{
  ef_match = [(NSError *)self ef_match];
  v3 = (ef_match)[2](ef_match, @"com.apple.mobilemail.restoration", 5000002);

  return v3;
}

- (BOOL)mf_isRestorationMessageNotAvailableError
{
  ef_match = [(NSError *)self ef_match];
  v3 = (ef_match)[2](ef_match, @"com.apple.mobilemail.restoration", 5000003);

  return v3;
}

- (BOOL)mf_isBlackPearlStateRestorationNotSupportedError
{
  ef_match = [(NSError *)self ef_match];
  v3 = (ef_match)[2](ef_match, @"com.apple.mobilemail.restoration", 5000004);

  return v3;
}

@end