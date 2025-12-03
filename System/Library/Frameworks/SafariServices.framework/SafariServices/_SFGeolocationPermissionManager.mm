@interface _SFGeolocationPermissionManager
+ (id)sharedManager;
- (BOOL)hasPreciseLocationPermission;
- (void)_showDialogRequestingPermissionForURL:(id)l frame:(id)frame dialogPresenter:(id)presenter browserPersona:(int64_t)persona completionHandler:(id)handler;
- (void)requestPermissionForURL:(id)l frame:(id)frame dialogPresenter:(id)presenter browserPersona:(int64_t)persona completionHandler:(id)handler;
- (void)setValue:(id)value ofPreference:(id)preference forDomain:(id)domain completionHandler:(id)handler;
@end

@implementation _SFGeolocationPermissionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[_SFGeolocationPermissionManager sharedManager];
  }

  v3 = sharedManager_instance;

  return v3;
}

- (void)setValue:(id)value ofPreference:(id)preference forDomain:(id)domain completionHandler:(id)handler
{
  valueCopy = value;
  preferenceCopy = preference;
  domainCopy = domain;
  handlerCopy = handler;
  if (!self->_policyDecider)
  {
    mEMORY[0x1E69DD2D8] = [MEMORY[0x1E69DD2D8] sharedPolicyDecider];
    policyDecider = self->_policyDecider;
    self->_policyDecider = mEMORY[0x1E69DD2D8];
  }

  if (objc_opt_respondsToSelector())
  {
    [(UIWebGeolocationPolicyDecider *)self->_policyDecider clearAuthorizationForDomain:domainCopy];
  }

  v16.receiver = self;
  v16.super_class = _SFGeolocationPermissionManager;
  [(WBSGeolocationPreferenceManager *)&v16 setValue:valueCopy ofPreference:preferenceCopy forDomain:domainCopy completionHandler:handlerCopy];
}

- (void)requestPermissionForURL:(id)l frame:(id)frame dialogPresenter:(id)presenter browserPersona:(int64_t)persona completionHandler:(id)handler
{
  lCopy = l;
  frameCopy = frame;
  presenterCopy = presenter;
  handlerCopy = handler;
  safari_userVisibleHostWithoutWWWSubdomain = [lCopy safari_userVisibleHostWithoutWWWSubdomain];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114___SFGeolocationPermissionManager_requestPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke;
  v21[3] = &unk_1E84954A8;
  v21[4] = self;
  v22 = lCopy;
  v23 = frameCopy;
  v24 = presenterCopy;
  v25 = handlerCopy;
  personaCopy = persona;
  v17 = presenterCopy;
  v18 = frameCopy;
  v19 = lCopy;
  v20 = handlerCopy;
  [(WBSGeolocationPreferenceManager *)self getGeolocationSettingForDomain:safari_userVisibleHostWithoutWWWSubdomain completionHandler:v21];
}

- (void)_showDialogRequestingPermissionForURL:(id)l frame:(id)frame dialogPresenter:(id)presenter browserPersona:(int64_t)persona completionHandler:(id)handler
{
  lCopy = l;
  frameCopy = frame;
  presenterCopy = presenter;
  handlerCopy = handler;
  securityOrigin = [frameCopy securityOrigin];
  v16 = objc_alloc_init(MEMORY[0x1E696AF20]);
  protocol = [securityOrigin protocol];
  [v16 setScheme:protocol];

  if ([securityOrigin port])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(securityOrigin, "port")}];
    [v16 setPort:v18];
  }

  else
  {
    [v16 setPort:0];
  }

  host = [securityOrigin host];
  [v16 setHost:host];

  v20 = objc_alloc(MEMORY[0x1E69E2F98]);
  v21 = [v16 URL];
  v22 = [v20 initWithURL:v21];

  securityOrigin2 = [frameCopy securityOrigin];
  [securityOrigin2 safari_userVisibleName];
  v46 = v45 = securityOrigin2;
  if (([lCopy isFileURL] & 1) == 0)
  {
    v24 = MEMORY[0x1E695DFF8];
    safari_userVisibleName = [securityOrigin2 safari_userVisibleName];
    v26 = [v24 URLWithString:safari_userVisibleName];

    lCopy = v26;
  }

  webView = [frameCopy webView];
  webui_privateBrowsingEnabled = [webView webui_privateBrowsingEnabled];

  if (webui_privateBrowsingEnabled)
  {
LABEL_7:
    v29 = 0;
    goto LABEL_11;
  }

  policyDecider = self->_policyDecider;
  if (!policyDecider)
  {
    mEMORY[0x1E69DD2D8] = [MEMORY[0x1E69DD2D8] sharedPolicyDecider];
    v32 = self->_policyDecider;
    self->_policyDecider = mEMORY[0x1E69DD2D8];

    policyDecider = self->_policyDecider;
  }

  v61[0] = 0;
  v33 = [(UIWebGeolocationPolicyDecider *)policyDecider getAuthorizationStatusForOrigin:v22 requestingURL:lCopy promptInfo:v61];
  v29 = v61[0];
  if (!v29)
  {
    if (([MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari] & v33 & 1) == 0)
    {
      v39 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, v33);
      v37 = presenterCopy;
      v38 = 0;
      v42 = v46;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_11:
  v44 = v22;
  personaCopy = persona;
  permissionDialogThrottler = [presenterCopy permissionDialogThrottler];
  if (permissionDialogThrottler)
  {
    v36 = permissionDialogThrottler;
    v37 = presenterCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128___SFGeolocationPermissionManager__showDialogRequestingPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke;
    aBlock[3] = &unk_1E84954D0;
    v56 = permissionDialogThrottler;
    v57 = frameCopy;
    v38 = v29;
    v58 = v38;
    selfCopy = self;
    v39 = handlerCopy;
    v60 = handlerCopy;
    v40 = v36;
    v41 = _Block_copy(aBlock);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __128___SFGeolocationPermissionManager__showDialogRequestingPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke_2;
    v48[3] = &unk_1E8491C28;
    v53 = v41;
    v49 = lCopy;
    v42 = v46;
    v50 = v46;
    selfCopy2 = self;
    v54 = personaCopy;
    v52 = v37;
    v43 = v41;
    [v40 requestPermissionDialogPresentation:v48];

    v22 = v44;
LABEL_13:

    return;
  }

  __break(0xC471u);
}

- (BOOL)hasPreciseLocationPermission
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695FBE8]);
    v5 = self->_locationManager;
    self->_locationManager = v4;

    locationManager = self->_locationManager;
  }

  return [(CLLocationManager *)locationManager authorizationStatus]- 3 <= 1 && [(CLLocationManager *)self->_locationManager accuracyAuthorization]== CLAccuracyAuthorizationFullAccuracy;
}

@end