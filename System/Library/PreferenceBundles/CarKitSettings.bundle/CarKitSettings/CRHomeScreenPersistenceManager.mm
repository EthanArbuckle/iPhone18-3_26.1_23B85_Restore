@interface CRHomeScreenPersistenceManager
+ (id)_iconStateDebugDescription:(id)a3;
- (CRHomeScreenPersistenceManager)initWithVehicleId:(id)a3 certificateSerial:(id)a4;
- (id)_iconForBundleIdentifier:(id)a3;
- (void)_processIconStateResponse:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)fetchIconStateWithCompletion:(id)a3;
- (void)resetIconState;
- (void)setIconState:(id)a3 hiddenIcons:(id)a4;
@end

@implementation CRHomeScreenPersistenceManager

- (CRHomeScreenPersistenceManager)initWithVehicleId:(id)a3 certificateSerial:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CRHomeScreenPersistenceManager;
  v9 = [(CRHomeScreenPersistenceManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicleId, a3);
    objc_storeStrong(&v10->_vehicleCertificateSerial, a4);
    v11 = objc_alloc_init(CRSIconLayoutController);
    iconLayoutController = v10->_iconLayoutController;
    v10->_iconLayoutController = v11;

    v13 = objc_alloc_init(CRCarPlayAppPolicyEvaluator);
    evaluator = v10->_evaluator;
    v10->_evaluator = v13;

    v15 = +[GEOCountryConfiguration sharedConfiguration];
    -[CRCarPlayAppPolicyEvaluator setGeoSupported:](v10->_evaluator, "setGeoSupported:", [v15 currentCountrySupportsCarIntegration]);
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(CRHomeScreenPersistenceManager *)self iconLayoutController];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CRHomeScreenPersistenceManager;
  [(CRHomeScreenPersistenceManager *)&v4 dealloc];
}

- (void)fetchIconStateWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CRHomeScreenPersistenceManager *)self vehicleId];
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Fetching icon state for vehicle %@", buf, 0xCu);
    }

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_BF5C;
    v13 = &unk_6E670;
    v14 = self;
    v15 = v4;
    v7 = objc_retainBlock(&v10);
    v8 = [(CRHomeScreenPersistenceManager *)self iconLayoutController:v10];
    v9 = [(CRHomeScreenPersistenceManager *)self vehicleId];
    [v8 fetchIconStateForVehicleID:v9 completion:v7];
  }
}

- (void)setIconState:(id)a3 hiddenIcons:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CRHomeScreenPersistenceManager *)self iconLayoutController];
  v8 = [(CRHomeScreenPersistenceManager *)self vehicleId];
  [v9 setIconOrder:v7 hiddenIcons:v6 forVehicleID:v8];
}

- (void)resetIconState
{
  v4 = [(CRHomeScreenPersistenceManager *)self iconLayoutController];
  v3 = [(CRHomeScreenPersistenceManager *)self vehicleId];
  [v4 resetIconStateForVehicleID:v3];
}

+ (id)_iconStateDebugDescription:(id)a3
{
  v3 = kCRSIconLayoutDisplaysOEMIcon;
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 BOOLValue]);
  v7 = [v4 objectForKeyedSubscript:kCRSIconLayoutOEMIconLabel];
  v8 = [v4 objectForKeyedSubscript:kCRSIconLayoutIconOrderKey];
  v9 = [v8 firstObject];
  v10 = [v4 objectForKeyedSubscript:kCRSIconLayoutHiddenIconsKey];

  v11 = [NSString stringWithFormat:@"%@ '%@', %@ icons, %@ hidden apps", v6, v7, v9, v10];

  return v11;
}

- (id)_iconForBundleIdentifier:(id)a3
{
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_C6D0;
  v46 = sub_C6E0;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_C6D0;
  v40 = sub_C6E0;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v5 = [[CRApplicationIcon alloc] initWithBundleIdentifier:v4];
  if ([(CRApplicationIcon *)v5 hasCustomImage])
  {
    v6 = dispatch_semaphore_create(0);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_C6E8;
    v25 = &unk_6E698;
    v29 = &v42;
    v30 = &v36;
    v7 = v4;
    v26 = v7;
    v27 = self;
    v31 = &v32;
    v8 = v6;
    v28 = v8;
    v9 = objc_retainBlock(&v22);
    v10 = [(CRHomeScreenPersistenceManager *)self iconLayoutController:v22];
    v11 = [(CRHomeScreenPersistenceManager *)self vehicleId];
    [v10 fetchApplicationIconInformationForBundleIdentifier:v7 vehicleID:v11 showBorder:-[CRHomeScreenPersistenceManager drawIconBorders](self completion:{"drawIconBorders"), v9}];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v26;
LABEL_14:

    [(CRApplicationIcon *)v5 setDisplayName:v43[5]];
    [(CRApplicationIcon *)v5 setIconImage:v37[5]];
    [(CRApplicationIcon *)v5 setWantsDarkAppearance:*(v33 + 24)];
    v19 = v5;
    goto LABEL_15;
  }

  v8 = [LSApplicationProxy applicationProxyForIdentifier:v4];
  v12 = [CRCarPlayAppDeclaration declarationForAppProxy:v8];
  v13 = [(CRHomeScreenPersistenceManager *)self evaluator];
  v14 = [(CRHomeScreenPersistenceManager *)self vehicleCertificateSerial];
  v15 = [v13 effectivePolicyForAppDeclaration:v12 inVehicleWithCertificateSerial:v14];

  if ([v15 isCarPlaySupported])
  {
    if ([v4 isEqualToString:CRSBooksIdentifier])
    {
      v16 = [v8 localizedNameForContext:@"Car"];
      v17 = v16;
      if (!v16)
      {
        v17 = [v8 localizedNameForContext:0];
      }

      objc_storeStrong(v43 + 5, v17);
      if (!v16)
      {
      }
    }

    else
    {
      v20 = [v8 localizedName];
      v16 = v43[5];
      v43[5] = v20;
    }

    goto LABEL_14;
  }

  v18 = CarGeneralLogging();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v4;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Application %@ is not supported in this vehicle.", buf, 0xCu);
  }

  v19 = 0;
LABEL_15:

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);

  return v19;
}

- (void)_processIconStateResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v34 = a4;
  v36 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() _iconStateDebugDescription:v6];
    *buf = 138412290;
    v49 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Processing icon state response: %@", buf, 0xCu);
  }

  v35 = v6;

  v33 = kCRSIconLayoutIconOrderKey;
  v9 = [v36 objectForKeyedSubscript:?];
  v10 = [v9 firstObject];

  v11 = +[NSMutableArray array];
  v12 = [v36 objectForKeyedSubscript:kCRSIconLayoutDisplaysOEMIcon];
  v13 = [v12 BOOLValue];

  v37 = [v36 objectForKeyedSubscript:kCRSIconLayoutOEMIconLabel];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    v18 = CRSOEMIdentifier;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        if (v13 & 1 | (([v20 isEqualToString:v18] & 1) == 0))
        {
          v21 = [(CRHomeScreenPersistenceManager *)self _iconForBundleIdentifier:v20];
          if (v21)
          {
            if ([v20 isEqualToString:v18] && objc_msgSend(v37, "length"))
            {
              [v21 setDisplayName:v37];
            }

            [v11 addObject:v21];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v16);
  }

  v22 = [NSArray arrayWithArray:v11];
  [v36 setObject:v22 forKeyedSubscript:v33];

  v23 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = kCRSIconLayoutHiddenIconsKey;
  v25 = [v36 objectForKeyedSubscript:kCRSIconLayoutHiddenIconsKey];
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [(CRHomeScreenPersistenceManager *)self _iconForBundleIdentifier:*(*(&v38 + 1) + 8 * j)];
        if (v30)
        {
          [v23 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v27);
  }

  v31 = [NSArray arrayWithArray:v23];
  [v36 setObject:v31 forKeyedSubscript:v24];

  v32 = [NSDictionary dictionaryWithDictionary:v36];
  v34[2](v34, v32);
}

@end