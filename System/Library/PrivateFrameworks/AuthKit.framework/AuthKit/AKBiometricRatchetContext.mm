@interface AKBiometricRatchetContext
- (AKBiometricRatchetContext)initWithReason:(id)a3 calloutReason:(id)a4 deeplinkURL:(id)a5 fallbackToNoAuth:(BOOL)a6 useShortExpiration:(BOOL)a7;
- (AKBiometricRatchetContext)initWithReason:(id)a3 calloutReason:(id)a4 deeplinkURL:(id)a5 fallbackToNoAuth:(BOOL)a6 useShortExpiration:(BOOL)a7 beginRatchetTitle:(id)a8 beginRatchetBody:(id)a9 showsLocationWarning:(BOOL)a10 countdownText:(id)a11 findMyErrorTitle:(id)a12 findMyErrorMessage:(id)a13 metaContext:(id)a14 notInteractive:(BOOL)a15;
- (id)debugDescription;
@end

@implementation AKBiometricRatchetContext

- (AKBiometricRatchetContext)initWithReason:(id)a3 calloutReason:(id)a4 deeplinkURL:(id)a5 fallbackToNoAuth:(BOOL)a6 useShortExpiration:(BOOL)a7
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = a6;
  v16 = a7;
  v7 = v21;
  v21 = 0;
  v15.receiver = v7;
  v15.super_class = AKBiometricRatchetContext;
  v14 = [(AKBiometricRatchetContext *)&v15 init];
  v21 = v14;
  objc_storeStrong(&v21, v14);
  if (v14)
  {
    objc_storeStrong(&v21->_reason, location[0]);
    objc_storeStrong(&v21->_calloutReason, v19);
    objc_storeStrong(&v21->_deeplinkURL, v18);
    v21->_fallbackToNoAuth = v17;
    v21->_useShortExpiration = v16;
    v21->_showsLocationWarning = 0;
    objc_storeStrong(&v21->_beginRatchetTitle, 0);
    objc_storeStrong(&v21->_beginRatchetBody, 0);
    objc_storeStrong(&v21->_countdownText, 0);
    objc_storeStrong(&v21->_findMyErrorTitle, 0);
    objc_storeStrong(&v21->_findMyErrorMessage, 0);
    objc_storeStrong(&v21->_metaContext, 0);
    v21->_notInteractive = 0;
  }

  v9 = MEMORY[0x1E69E5928](v21);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v9;
}

- (AKBiometricRatchetContext)initWithReason:(id)a3 calloutReason:(id)a4 deeplinkURL:(id)a5 fallbackToNoAuth:(BOOL)a6 useShortExpiration:(BOOL)a7 beginRatchetTitle:(id)a8 beginRatchetBody:(id)a9 showsLocationWarning:(BOOL)a10 countdownText:(id)a11 findMyErrorTitle:(id)a12 findMyErrorMessage:(id)a13 metaContext:(id)a14 notInteractive:(BOOL)a15
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = 0;
  objc_storeStrong(&v35, a5);
  v34 = a6;
  v33 = a7;
  v32 = 0;
  objc_storeStrong(&v32, a8);
  v31 = 0;
  objc_storeStrong(&v31, a9);
  v30 = a10;
  v29 = 0;
  objc_storeStrong(&v29, a11);
  v28 = 0;
  objc_storeStrong(&v28, a12);
  v27 = 0;
  objc_storeStrong(&v27, a13);
  v26 = 0;
  objc_storeStrong(&v26, a14);
  v25 = a15;
  v15 = v38;
  v38 = 0;
  v24.receiver = v15;
  v24.super_class = AKBiometricRatchetContext;
  v23 = [(AKBiometricRatchetContext *)&v24 init];
  v38 = v23;
  objc_storeStrong(&v38, v23);
  if (v23)
  {
    objc_storeStrong(&v38->_reason, location[0]);
    objc_storeStrong(&v38->_calloutReason, v36);
    objc_storeStrong(&v38->_deeplinkURL, v35);
    v38->_fallbackToNoAuth = v34;
    v38->_useShortExpiration = v33;
    objc_storeStrong(&v38->_beginRatchetTitle, v32);
    objc_storeStrong(&v38->_beginRatchetBody, v31);
    v38->_showsLocationWarning = v30;
    objc_storeStrong(&v38->_countdownText, v29);
    objc_storeStrong(&v38->_findMyErrorTitle, v28);
    objc_storeStrong(&v38->_findMyErrorMessage, v27);
    objc_storeStrong(&v38->_metaContext, v26);
    v38->_notInteractive = v25;
  }

  v17 = MEMORY[0x1E69E5928](v38);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v38, 0);
  return v17;
}

- (id)debugDescription
{
  v11 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  reason = self->_reason;
  calloutReason = self->_calloutReason;
  v2 = [(NSURL *)self->_deeplinkURL absoluteString];
  v12 = v2;
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

  v13 = [v11 stringWithFormat:@"<%@: %p> \n\treason: %@, \n\tcalloutReason: %@, \n\tdeeplinkURL: %@, \n\tfallbackToNoAuth: %@, \n\tseShortExpiration: %@, \n\tbeginRatchetTitle: %@, \n\tbeginRatchetBody: %@, \n\tshowsLocationWarning: %@, \n\tcountdownText: %@, \n\tfindMyErrorTitle: %@, \n\tfindMyErrorMessage: %@, \n\tnotInteractive: %@, \n", v8, self, reason, calloutReason, v2, v4, v5, self->_beginRatchetTitle, self->_beginRatchetBody, v6, self->_countdownText, self->_findMyErrorTitle, self->_findMyErrorMessage, v3];
  MEMORY[0x1E69E5920](v12);

  return v13;
}

@end