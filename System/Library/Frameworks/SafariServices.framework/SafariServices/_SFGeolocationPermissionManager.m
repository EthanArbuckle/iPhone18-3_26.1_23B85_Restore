@interface _SFGeolocationPermissionManager
+ (id)sharedManager;
- (BOOL)hasPreciseLocationPermission;
- (void)_showDialogRequestingPermissionForURL:(id)a3 frame:(id)a4 dialogPresenter:(id)a5 browserPersona:(int64_t)a6 completionHandler:(id)a7;
- (void)requestPermissionForURL:(id)a3 frame:(id)a4 dialogPresenter:(id)a5 browserPersona:(int64_t)a6 completionHandler:(id)a7;
- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 completionHandler:(id)a6;
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

- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!self->_policyDecider)
  {
    v14 = [MEMORY[0x1E69DD2D8] sharedPolicyDecider];
    policyDecider = self->_policyDecider;
    self->_policyDecider = v14;
  }

  if (objc_opt_respondsToSelector())
  {
    [(UIWebGeolocationPolicyDecider *)self->_policyDecider clearAuthorizationForDomain:v12];
  }

  v16.receiver = self;
  v16.super_class = _SFGeolocationPermissionManager;
  [(WBSGeolocationPreferenceManager *)&v16 setValue:v10 ofPreference:v11 forDomain:v12 completionHandler:v13];
}

- (void)requestPermissionForURL:(id)a3 frame:(id)a4 dialogPresenter:(id)a5 browserPersona:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v12 safari_userVisibleHostWithoutWWWSubdomain];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114___SFGeolocationPermissionManager_requestPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke;
  v21[3] = &unk_1E84954A8;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a6;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v15;
  [(WBSGeolocationPreferenceManager *)self getGeolocationSettingForDomain:v16 completionHandler:v21];
}

- (void)_showDialogRequestingPermissionForURL:(id)a3 frame:(id)a4 dialogPresenter:(id)a5 browserPersona:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v47 = a7;
  v15 = [v13 securityOrigin];
  v16 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v17 = [v15 protocol];
  [v16 setScheme:v17];

  if ([v15 port])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "port")}];
    [v16 setPort:v18];
  }

  else
  {
    [v16 setPort:0];
  }

  v19 = [v15 host];
  [v16 setHost:v19];

  v20 = objc_alloc(MEMORY[0x1E69E2F98]);
  v21 = [v16 URL];
  v22 = [v20 initWithURL:v21];

  v23 = [v13 securityOrigin];
  [v23 safari_userVisibleName];
  v46 = v45 = v23;
  if (([v12 isFileURL] & 1) == 0)
  {
    v24 = MEMORY[0x1E695DFF8];
    v25 = [v23 safari_userVisibleName];
    v26 = [v24 URLWithString:v25];

    v12 = v26;
  }

  v27 = [v13 webView];
  v28 = [v27 webui_privateBrowsingEnabled];

  if (v28)
  {
LABEL_7:
    v29 = 0;
    goto LABEL_11;
  }

  policyDecider = self->_policyDecider;
  if (!policyDecider)
  {
    v31 = [MEMORY[0x1E69DD2D8] sharedPolicyDecider];
    v32 = self->_policyDecider;
    self->_policyDecider = v31;

    policyDecider = self->_policyDecider;
  }

  v61[0] = 0;
  v33 = [(UIWebGeolocationPolicyDecider *)policyDecider getAuthorizationStatusForOrigin:v22 requestingURL:v12 promptInfo:v61];
  v29 = v61[0];
  if (!v29)
  {
    if (([MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari] & v33 & 1) == 0)
    {
      v39 = v47;
      (*(v47 + 2))(v47, v33);
      v37 = v14;
      v38 = 0;
      v42 = v46;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_11:
  v44 = v22;
  v34 = a6;
  v35 = [v14 permissionDialogThrottler];
  if (v35)
  {
    v36 = v35;
    v37 = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128___SFGeolocationPermissionManager__showDialogRequestingPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke;
    aBlock[3] = &unk_1E84954D0;
    v56 = v35;
    v57 = v13;
    v38 = v29;
    v58 = v38;
    v59 = self;
    v39 = v47;
    v60 = v47;
    v40 = v36;
    v41 = _Block_copy(aBlock);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __128___SFGeolocationPermissionManager__showDialogRequestingPermissionForURL_frame_dialogPresenter_browserPersona_completionHandler___block_invoke_2;
    v48[3] = &unk_1E8491C28;
    v53 = v41;
    v49 = v12;
    v42 = v46;
    v50 = v46;
    v51 = self;
    v54 = v34;
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