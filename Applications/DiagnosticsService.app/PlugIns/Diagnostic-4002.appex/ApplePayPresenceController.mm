@interface ApplePayPresenceController
- (BOOL)isInIORegistry;
- (BOOL)pingNearField:(id *)field;
- (BOOL)pingiPadNearField:(id *)field;
- (id)checkPresence;
- (void)start;
- (void)teardown;
@end

@implementation ApplePayPresenceController

- (void)start
{
  v3 = MGCopyAnswer();
  if ([v3 isEqualToString:@"iPhone"])
  {
    v4 = MGGetBoolAnswer();
  }

  else
  {
    v4 = 0;
  }

  [(ApplePayPresenceController *)self setShouldOverrideUserNFC:v4];
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = [(ApplePayPresenceController *)self shouldOverrideUserNFC];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Apple Pay presence test will override user NFC enablement: %d", v11, 8u);
  }

  if (([(ApplePayPresenceController *)self isCancelled]& 1) == 0)
  {
    v6 = objc_alloc_init(OSDStockholm);
    nearField = self->_nearField;
    self->_nearField = v6;

    if (self->_nearField)
    {
      checkPresence = [(ApplePayPresenceController *)self checkPresence];
      result = [(ApplePayPresenceController *)self result];
      [result setStatusCode:checkPresence];
    }

    else
    {
      v10 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "NearField.fwk is missing, assuming Apple Pay is not present.", v11, 2u);
      }

      checkPresence = [(ApplePayPresenceController *)self result];
      [checkPresence setStatusCode:&off_1000083F8];
    }
  }

  [(ApplePayPresenceController *)self setFinished:1];
}

- (void)teardown
{
  if ([(ApplePayPresenceController *)self shouldOverrideUserNFC])
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "End of Apple Pay presence test with overridden user NFC enablement. Ensuring original NFC enabled state is restored", v5, 2u);
    }

    nearField = [(ApplePayPresenceController *)self nearField];
    [nearField restoreNfcEnabledState];
  }
}

- (BOOL)pingNearField:(id *)field
{
  nearField = [(ApplePayPresenceController *)self nearField];
  v5 = [nearField startCardEmulationWithTimeout:5.0];

  if (v5)
  {
    nearField2 = [(ApplePayPresenceController *)self nearField];
    [nearField2 stopCardEmulation:5.0];
  }

  return v5;
}

- (BOOL)pingiPadNearField:(id *)field
{
  nearField = [(ApplePayPresenceController *)self nearField];
  serialNumber = [nearField serialNumber];

  valid = isValidSerialNumber(serialNumber);
  if (!valid)
  {
    [DAError setError:field withCode:1 format:@"Server registration info missing seId"];
  }

  return valid;
}

- (BOOL)isInIORegistry
{
  v2 = IOServiceMatching("AppleStockholmControl");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v4 != 0;
}

- (id)checkPresence
{
  if ([(ApplePayPresenceController *)self isInIORegistry])
  {
    v3 = MGGetBoolAnswer();
    if ([(ApplePayPresenceController *)self shouldOverrideUserNFC])
    {
      nearField = [(ApplePayPresenceController *)self nearField];
      overrideNfcEnabledState = [nearField overrideNfcEnabledState];

      if (!overrideNfcEnabledState)
      {
        nearField2 = [(ApplePayPresenceController *)self nearField];
        isNfcDisabledByProfile = [nearField2 isNfcDisabledByProfile];

        v7 = 0;
        if (isNfcDisabledByProfile)
        {
          v8 = &off_100008440;
        }

        else
        {
          v8 = &off_100008458;
        }

        goto LABEL_13;
      }
    }

    if (v3)
    {
      v14 = 0;
      v6 = [(ApplePayPresenceController *)self pingiPadNearField:&v14];
      v7 = v14;
      if (v6)
      {
LABEL_6:
        v8 = &off_100008428;
LABEL_13:

        return v8;
      }
    }

    else
    {
      v13 = 0;
      v9 = [(ApplePayPresenceController *)self pingNearField:&v13];
      v7 = v13;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    v8 = &off_1000083F8;
    goto LABEL_13;
  }

  return &off_100008410;
}

@end