@interface AKBiometricRatchetContext
- (AKBiometricRatchetContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration;
- (AKBiometricRatchetContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration beginRatchetTitle:(id)title beginRatchetBody:(id)body showsLocationWarning:(BOOL)self0 countdownText:(id)self1 findMyErrorTitle:(id)self2 findMyErrorMessage:(id)self3 metaContext:(id)self4 notInteractive:(BOOL)self5;
- (id)debugDescription;
@end

@implementation AKBiometricRatchetContext

- (AKBiometricRatchetContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v19 = 0;
  objc_storeStrong(&v19, calloutReason);
  v18 = 0;
  objc_storeStrong(&v18, l);
  authCopy = auth;
  expirationCopy = expiration;
  v7 = selfCopy;
  selfCopy = 0;
  v15.receiver = v7;
  v15.super_class = AKBiometricRatchetContext;
  v14 = [(AKBiometricRatchetContext *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    objc_storeStrong(&selfCopy->_reason, location[0]);
    objc_storeStrong(&selfCopy->_calloutReason, v19);
    objc_storeStrong(&selfCopy->_deeplinkURL, v18);
    selfCopy->_fallbackToNoAuth = authCopy;
    selfCopy->_useShortExpiration = expirationCopy;
    selfCopy->_showsLocationWarning = 0;
    objc_storeStrong(&selfCopy->_beginRatchetTitle, 0);
    objc_storeStrong(&selfCopy->_beginRatchetBody, 0);
    objc_storeStrong(&selfCopy->_countdownText, 0);
    objc_storeStrong(&selfCopy->_findMyErrorTitle, 0);
    objc_storeStrong(&selfCopy->_findMyErrorMessage, 0);
    objc_storeStrong(&selfCopy->_metaContext, 0);
    selfCopy->_notInteractive = 0;
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKBiometricRatchetContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration beginRatchetTitle:(id)title beginRatchetBody:(id)body showsLocationWarning:(BOOL)self0 countdownText:(id)self1 findMyErrorTitle:(id)self2 findMyErrorMessage:(id)self3 metaContext:(id)self4 notInteractive:(BOOL)self5
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v36 = 0;
  objc_storeStrong(&v36, calloutReason);
  v35 = 0;
  objc_storeStrong(&v35, l);
  authCopy = auth;
  expirationCopy = expiration;
  v32 = 0;
  objc_storeStrong(&v32, title);
  v31 = 0;
  objc_storeStrong(&v31, body);
  warningCopy = warning;
  v29 = 0;
  objc_storeStrong(&v29, text);
  v28 = 0;
  objc_storeStrong(&v28, errorTitle);
  v27 = 0;
  objc_storeStrong(&v27, message);
  v26 = 0;
  objc_storeStrong(&v26, context);
  interactiveCopy = interactive;
  v15 = selfCopy;
  selfCopy = 0;
  v24.receiver = v15;
  v24.super_class = AKBiometricRatchetContext;
  v23 = [(AKBiometricRatchetContext *)&v24 init];
  selfCopy = v23;
  objc_storeStrong(&selfCopy, v23);
  if (v23)
  {
    objc_storeStrong(&selfCopy->_reason, location[0]);
    objc_storeStrong(&selfCopy->_calloutReason, v36);
    objc_storeStrong(&selfCopy->_deeplinkURL, v35);
    selfCopy->_fallbackToNoAuth = authCopy;
    selfCopy->_useShortExpiration = expirationCopy;
    objc_storeStrong(&selfCopy->_beginRatchetTitle, v32);
    objc_storeStrong(&selfCopy->_beginRatchetBody, v31);
    selfCopy->_showsLocationWarning = warningCopy;
    objc_storeStrong(&selfCopy->_countdownText, v29);
    objc_storeStrong(&selfCopy->_findMyErrorTitle, v28);
    objc_storeStrong(&selfCopy->_findMyErrorMessage, v27);
    objc_storeStrong(&selfCopy->_metaContext, v26);
    selfCopy->_notInteractive = interactiveCopy;
  }

  v17 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (id)debugDescription
{
  v11 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  reason = self->_reason;
  calloutReason = self->_calloutReason;
  absoluteString = [(NSURL *)self->_deeplinkURL absoluteString];
  v12 = absoluteString;
  v3 = @"YES";
  if (self->_fallbackToNoAuth)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_useShortExpiration)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_showsLocationWarning)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (!self->_notInteractive)
  {
    v3 = @"NO";
  }

  v13 = [v11 stringWithFormat:@"<%@: %p> \n\treason: %@, \n\tcalloutReason: %@, \n\tdeeplinkURL: %@, \n\tfallbackToNoAuth: %@, \n\tseShortExpiration: %@, \n\tbeginRatchetTitle: %@, \n\tbeginRatchetBody: %@, \n\tshowsLocationWarning: %@, \n\tcountdownText: %@, \n\tfindMyErrorTitle: %@, \n\tfindMyErrorMessage: %@, \n\tnotInteractive: %@, \n", v8, self, reason, calloutReason, absoluteString, v4, v5, self->_beginRatchetTitle, self->_beginRatchetBody, v6, self->_countdownText, self->_findMyErrorTitle, self->_findMyErrorMessage, v3];
  MEMORY[0x1E69E5920](v12);

  return v13;
}

@end