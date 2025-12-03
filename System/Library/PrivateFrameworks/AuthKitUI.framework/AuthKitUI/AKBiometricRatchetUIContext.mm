@interface AKBiometricRatchetUIContext
- (AKBiometricRatchetUIContext)initWithAttributes:(id)attributes presentationContext:(id)context;
- (AKBiometricRatchetUIContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l presentationContext:(id)context fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration;
- (AKBiometricRatchetUIContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l presentationContext:(id)context fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration beginRatchetTitle:(id)title beginRatchetBody:(id)self0 showsLocationWarning:(BOOL)self1 countdownText:(id)self2 findMyErrorTitle:(id)self3 findMyErrorMessage:(id)self4 metaContext:(id)self5;
- (AKBiometricRatchetUIContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l presentationContext:(id)context fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration beginRatchetTitle:(id)title beginRatchetBody:(id)self0 showsLocationWarning:(BOOL)self1 countdownText:(id)self2 findMyErrorTitle:(id)self3 findMyErrorMessage:(id)self4 metaContext:(id)self5 embeddedUIPresentationMode:(id)self6 embeddedUIRightNavButtonTitle:(id)self7;
- (AKBiometricRatchetUIProvider)bioRatchetUIProvider;
- (NSString)debugDescription;
- (UIViewController)presentingViewController;
- (id)_findMappedDeeplinkFor:(id)for withKey:(id)key;
- (void)_assertValidPresentingViewController;
- (void)presentRatchetUIWithCompletion:(id)completion;
@end

@implementation AKBiometricRatchetUIContext

- (AKBiometricRatchetUIContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l presentationContext:(id)context fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v21 = 0;
  objc_storeStrong(&v21, calloutReason);
  v20 = 0;
  objc_storeStrong(&v20, l);
  v19 = 0;
  objc_storeStrong(&v19, context);
  authCopy = auth;
  expirationCopy = expiration;
  v8 = selfCopy;
  selfCopy = 0;
  v16.receiver = v8;
  v16.super_class = AKBiometricRatchetUIContext;
  selfCopy = [(AKBiometricRatchetContext *)&v16 initWithReason:location[0] calloutReason:v21 deeplinkURL:v20 fallbackToNoAuth:auth useShortExpiration:expiration];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_presentingViewController, v19);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (AKBiometricRatchetUIContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l presentationContext:(id)context fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration beginRatchetTitle:(id)title beginRatchetBody:(id)self0 showsLocationWarning:(BOOL)self1 countdownText:(id)self2 findMyErrorTitle:(id)self3 findMyErrorMessage:(id)self4 metaContext:(id)self5
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v35 = 0;
  objc_storeStrong(&v35, calloutReason);
  v34 = 0;
  objc_storeStrong(&v34, l);
  v33 = 0;
  objc_storeStrong(&v33, context);
  authCopy = auth;
  expirationCopy = expiration;
  v30 = 0;
  objc_storeStrong(&v30, title);
  v29 = 0;
  objc_storeStrong(&v29, body);
  warningCopy = warning;
  v27 = 0;
  objc_storeStrong(&v27, text);
  v26 = 0;
  objc_storeStrong(&v26, errorTitle);
  v25 = 0;
  objc_storeStrong(&v25, message);
  v24 = 0;
  objc_storeStrong(&v24, metaContext);
  v15 = selfCopy;
  selfCopy = 0;
  v23.receiver = v15;
  v23.super_class = AKBiometricRatchetUIContext;
  selfCopy = [(AKBiometricRatchetContext *)&v23 initWithReason:location[0] calloutReason:v35 deeplinkURL:v34 fallbackToNoAuth:authCopy useShortExpiration:expirationCopy beginRatchetTitle:v30 beginRatchetBody:v29 showsLocationWarning:warningCopy countdownText:v27 findMyErrorTitle:v26 findMyErrorMessage:v25 metaContext:v24 notInteractive:0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_presentingViewController, v33);
  }

  v17 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (AKBiometricRatchetUIContext)initWithReason:(id)reason calloutReason:(id)calloutReason deeplinkURL:(id)l presentationContext:(id)context fallbackToNoAuth:(BOOL)auth useShortExpiration:(BOOL)expiration beginRatchetTitle:(id)title beginRatchetBody:(id)self0 showsLocationWarning:(BOOL)self1 countdownText:(id)self2 findMyErrorTitle:(id)self3 findMyErrorMessage:(id)self4 metaContext:(id)self5 embeddedUIPresentationMode:(id)self6 embeddedUIRightNavButtonTitle:(id)self7
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  v39 = 0;
  objc_storeStrong(&v39, calloutReason);
  v38 = 0;
  objc_storeStrong(&v38, l);
  v37 = 0;
  objc_storeStrong(&v37, context);
  authCopy = auth;
  expirationCopy = expiration;
  v34 = 0;
  objc_storeStrong(&v34, title);
  v33 = 0;
  objc_storeStrong(&v33, body);
  warningCopy = warning;
  v31 = 0;
  objc_storeStrong(&v31, text);
  v30 = 0;
  objc_storeStrong(&v30, errorTitle);
  v29 = 0;
  objc_storeStrong(&v29, message);
  v28 = 0;
  objc_storeStrong(&v28, metaContext);
  v27 = 0;
  objc_storeStrong(&v27, mode);
  v26 = 0;
  objc_storeStrong(&v26, buttonTitle);
  v17 = selfCopy;
  selfCopy = 0;
  v25.receiver = v17;
  v25.super_class = AKBiometricRatchetUIContext;
  selfCopy = [(AKBiometricRatchetContext *)&v25 initWithReason:location[0] calloutReason:v39 deeplinkURL:v38 fallbackToNoAuth:authCopy useShortExpiration:expirationCopy beginRatchetTitle:v34 beginRatchetBody:v33 showsLocationWarning:warningCopy countdownText:v31 findMyErrorTitle:v30 findMyErrorMessage:v29 metaContext:v28 notInteractive:0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_presentingViewController, v37);
    objc_storeStrong(&selfCopy->_embeddedUIPresentationMode, v27);
    objc_storeStrong(&selfCopy->_embeddedUIRightNavButtonTitle, v26);
  }

  v19 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (AKBiometricRatchetUIContext)initWithAttributes:(id)attributes presentationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attributes);
  v76 = 0;
  objc_storeStrong(&v76, context);
  bOOLValue = 0;
  v54 = objc_opt_class();
  v55 = [location[0] objectForKeyedSubscript:@"fallback"];
  v74 = _AKSafeCast_6(v54, v55);
  *&v4 = MEMORY[0x277D82BD8](v55).n128_u64[0];
  if (v74)
  {
    bOOLValue = [v74 BOOLValue];
  }

  bOOLValue2 = 0;
  v51 = objc_opt_class();
  v52 = [location[0] objectForKeyedSubscript:@"notInteractive"];
  v72 = _AKSafeCast_6(v51, v52);
  *&v5 = MEMORY[0x277D82BD8](v52).n128_u64[0];
  if (v72)
  {
    bOOLValue2 = [v72 BOOLValue];
  }

  v49 = objc_opt_class();
  v50 = [location[0] objectForKeyedSubscript:@"fallbackText"];
  v71 = _AKSafeCast_6(v49, v50);
  MEMORY[0x277D82BD8](v50);
  if (!v71)
  {
    v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v71 = [v48 localizedStringForKey:@"BIOMETRIC_RATCHET_FALLBACK_TEXT" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v48);
  }

  v46 = objc_opt_class();
  v47 = [location[0] objectForKeyedSubscript:@"reason"];
  v70 = _AKSafeCast_6(v46, v47);
  MEMORY[0x277D82BD8](v47);
  if (!v70)
  {
    v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v70 = [v45 localizedStringForKey:@"BIOMETRIC_RATCHET_COUNTDOWN_TEXT" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v45);
  }

  v43 = objc_opt_class();
  v44 = [location[0] objectForKeyedSubscript:@"calloutReason"];
  v69 = _AKSafeCast_6(v43, v44);
  MEMORY[0x277D82BD8](v44);
  if (!v69)
  {
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v69 = [v42 localizedStringForKey:@"BIOMETRIC_RATCHET_CALLOUT_REASON" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v42);
  }

  v38 = objc_opt_class();
  v39 = [location[0] objectForKeyedSubscript:@"deeplink"];
  v68 = _AKSafeCast_6(v38, v39);
  MEMORY[0x277D82BD8](v39);
  v40 = objc_opt_class();
  v41 = [location[0] objectForKeyedSubscript:@"deeplinkType"];
  v67 = _AKSafeCast_6(v40, v41);
  *&v6 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  v66 = 0;
  if (v68 && v67)
  {
    v9 = [(AKBiometricRatchetUIContext *)selfCopy _findMappedDeeplinkFor:v68 withKey:v67, v6];
    v10 = v66;
    v66 = v9;
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=APPLE_ACCOUNT"];
    v8 = v66;
    v66 = v7;
    MEMORY[0x277D82BD8](v8);
  }

  v36 = objc_opt_class();
  v37 = [location[0] objectForKeyedSubscript:@"beginRatchetTitle"];
  v65 = _AKSafeCast_6(v36, v37);
  MEMORY[0x277D82BD8](v37);
  if (!v65)
  {
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v65 = [v35 localizedStringForKey:@"BIOMETRIC_RATCHET_BEGIN_RATCHET_TITLE" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v35);
  }

  v33 = objc_opt_class();
  v34 = [location[0] objectForKeyedSubscript:@"beginRatchetBody"];
  v64 = _AKSafeCast_6(v33, v34);
  MEMORY[0x277D82BD8](v34);
  if (!v64)
  {
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v64 = [v32 localizedStringForKey:@"BIOMETRIC_RATCHET_BEGIN_RATCHET_BODY" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v32);
  }

  bOOLValue3 = 0;
  v30 = objc_opt_class();
  v31 = [location[0] objectForKeyedSubscript:@"disableFM"];
  v62 = _AKSafeCast_6(v30, v31);
  *&v11 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  if (v62)
  {
    bOOLValue3 = [v62 BOOLValue];
  }

  v28 = objc_opt_class();
  v29 = [location[0] objectForKeyedSubscript:@"disableFMErrorTitle"];
  v61 = _AKSafeCast_6(v28, v29);
  MEMORY[0x277D82BD8](v29);
  if (!v61)
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v61 = [v27 localizedStringForKey:@"BIOMETRIC_RATCHET_FIND_MY_ERROR_TITLE" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v27);
  }

  v25 = objc_opt_class();
  v26 = [location[0] objectForKeyedSubscript:@"disableFMErrorMessage"];
  v60 = _AKSafeCast_6(v25, v26);
  MEMORY[0x277D82BD8](v26);
  if (!v60)
  {
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v60 = [v24 localizedStringForKey:@"BIOMETRIC_RATCHET_FIND_MY_ERROR_MESSAGE" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v24);
  }

  v20 = objc_opt_class();
  v21 = [location[0] objectForKeyedSubscript:@"metaContext"];
  v59 = _AKSafeCast_6(v20, v21);
  MEMORY[0x277D82BD8](v21);
  v22 = objc_opt_class();
  v23 = [location[0] objectForKeyedSubscript:@"presentationMode"];
  v58 = _AKSafeCast_6(v22, v23);
  MEMORY[0x277D82BD8](v23);
  if (!v58)
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v58 = [v19 localizedStringForKey:@"BIOMETRIC_RATCHET_EMBEDDEDUI_PRESENTATION_MODE" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v19);
  }

  v17 = objc_opt_class();
  v18 = [location[0] objectForKeyedSubscript:@"rightNavBarButtonTitle"];
  v57 = _AKSafeCast_6(v17, v18);
  v12 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (!v57)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v57 = [v16 localizedStringForKey:@"BIOMETRIC_RATCHET_EMBEDDEDUI_RIGHT_NAVBUTTON_TITLE" value:&stru_28358EF68 table:AKDTOLocalizationTable_31];
    MEMORY[0x277D82BD8](0);
    v12 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  }

  v13 = selfCopy;
  selfCopy = 0;
  v56.receiver = v13;
  v56.super_class = AKBiometricRatchetUIContext;
  selfCopy = [(AKBiometricRatchetContext *)&v56 initWithReason:v71 calloutReason:v69 deeplinkURL:v66 fallbackToNoAuth:bOOLValue & 1 useShortExpiration:0 beginRatchetTitle:v65 beginRatchetBody:*&v12 showsLocationWarning:v64 countdownText:bOOLValue3 & 1 findMyErrorTitle:v70 findMyErrorMessage:v61 metaContext:v60 notInteractive:v59, bOOLValue2 & 1];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_presentingViewController, v76);
    objc_storeStrong(&selfCopy->_embeddedUIPresentationMode, v58);
    objc_storeStrong(&selfCopy->_embeddedUIRightNavButtonTitle, v57);
  }

  v15 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (AKBiometricRatchetUIProvider)bioRatchetUIProvider
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_bioRatchetUIProvider)
  {
    location[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_222379000, log, type, "Bio Ratchet UI Provider initialized", v9, 2u);
    }

    objc_storeStrong(location, 0);
    v2 = [AKBiometricRatchetiOSUIProvider alloc];
    v3 = [(AKBiometricRatchetiOSUIProvider *)v2 initWithContext:selfCopy];
    bioRatchetUIProvider = selfCopy->_bioRatchetUIProvider;
    selfCopy->_bioRatchetUIProvider = v3;
    MEMORY[0x277D82BD8](bioRatchetUIProvider);
  }

  v5 = selfCopy->_bioRatchetUIProvider;

  return v5;
}

- (void)_assertValidPresentingViewController
{
  location[2] = self;
  location[1] = a2;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  MEMORY[0x277D82BD8](WeakRetained);
  if (!WeakRetained)
  {
    location[0] = _AKLogSystem();
    v6 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_error_impl(&dword_222379000, log, type, "Presenting view controller is missing! Things don't look good!", v5, 2u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)presentRatchetUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v8 = _AKLogSystem();
  v7 = 2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_222379000, log, type, "Calling bioRatchetUIProvider to present the ratchet arming UI", v6, 2u);
  }

  objc_storeStrong(&v8, 0);
  bioRatchetUIProvider = [(AKBiometricRatchetUIContext *)selfCopy bioRatchetUIProvider];
  [(AKBiometricRatchetUIProvider *)bioRatchetUIProvider presentRatchetUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](bioRatchetUIProvider);
  objc_storeStrong(location, 0);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = AKBiometricRatchetUIContext;
  v8[0] = [(AKBiometricRatchetContext *)&v7 debugDescription];
  v4 = MEMORY[0x277CCACA8];
  v3 = v8[0];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_presentingViewController);
  weakRetained = [v4 stringWithFormat:@"%@ \tpresentationContext: %@, \n", v3, WeakRetained];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(v8, 0);

  return weakRetained;
}

- (id)_findMappedDeeplinkFor:(id)for withKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
  v14 = 0;
  objc_storeStrong(&v14, key);
  v13 = 0;
  if ([v14 isEqualToString:@"url"])
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:location[0]];
    v5 = v13;
    v13 = v4;
    MEMORY[0x277D82BD8](v5);
  }

  else if ([v14 isEqualToString:@"urlBagKey"])
  {
    mEMORY[0x277CF02F0] = [MEMORY[0x277CF02F0] sharedBag];
    v6 = [mEMORY[0x277CF02F0] urlAtKey:v14];
    v7 = v13;
    v13 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](mEMORY[0x277CF02F0]);
    if (!v13)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v16, v14);
        _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "URL not found for key: %@", v16, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  v9 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end