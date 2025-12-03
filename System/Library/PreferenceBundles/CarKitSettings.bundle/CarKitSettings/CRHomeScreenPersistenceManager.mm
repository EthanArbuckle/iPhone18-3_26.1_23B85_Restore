@interface CRHomeScreenPersistenceManager
+ (id)_iconStateDebugDescription:(id)description;
- (CRHomeScreenPersistenceManager)initWithVehicleId:(id)id certificateSerial:(id)serial;
- (id)_iconForBundleIdentifier:(id)identifier;
- (void)_processIconStateResponse:(id)response completion:(id)completion;
- (void)dealloc;
- (void)fetchIconStateWithCompletion:(id)completion;
- (void)resetIconState;
- (void)setIconState:(id)state hiddenIcons:(id)icons;
@end

@implementation CRHomeScreenPersistenceManager

- (CRHomeScreenPersistenceManager)initWithVehicleId:(id)id certificateSerial:(id)serial
{
  idCopy = id;
  serialCopy = serial;
  v17.receiver = self;
  v17.super_class = CRHomeScreenPersistenceManager;
  v9 = [(CRHomeScreenPersistenceManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicleId, id);
    objc_storeStrong(&v10->_vehicleCertificateSerial, serial);
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
  iconLayoutController = [(CRHomeScreenPersistenceManager *)self iconLayoutController];
  [iconLayoutController invalidate];

  v4.receiver = self;
  v4.super_class = CRHomeScreenPersistenceManager;
  [(CRHomeScreenPersistenceManager *)&v4 dealloc];
}

- (void)fetchIconStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      vehicleId = [(CRHomeScreenPersistenceManager *)self vehicleId];
      *buf = 138412290;
      v17 = vehicleId;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Fetching icon state for vehicle %@", buf, 0xCu);
    }

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_BF5C;
    v13 = &unk_6E670;
    selfCopy = self;
    v15 = completionCopy;
    v7 = objc_retainBlock(&v10);
    v8 = [(CRHomeScreenPersistenceManager *)self iconLayoutController:v10];
    vehicleId2 = [(CRHomeScreenPersistenceManager *)self vehicleId];
    [v8 fetchIconStateForVehicleID:vehicleId2 completion:v7];
  }
}

- (void)setIconState:(id)state hiddenIcons:(id)icons
{
  iconsCopy = icons;
  stateCopy = state;
  iconLayoutController = [(CRHomeScreenPersistenceManager *)self iconLayoutController];
  vehicleId = [(CRHomeScreenPersistenceManager *)self vehicleId];
  [iconLayoutController setIconOrder:stateCopy hiddenIcons:iconsCopy forVehicleID:vehicleId];
}

- (void)resetIconState
{
  iconLayoutController = [(CRHomeScreenPersistenceManager *)self iconLayoutController];
  vehicleId = [(CRHomeScreenPersistenceManager *)self vehicleId];
  [iconLayoutController resetIconStateForVehicleID:vehicleId];
}

+ (id)_iconStateDebugDescription:(id)description
{
  v3 = kCRSIconLayoutDisplaysOEMIcon;
  descriptionCopy = description;
  v5 = [descriptionCopy objectForKeyedSubscript:v3];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 BOOLValue]);
  v7 = [descriptionCopy objectForKeyedSubscript:kCRSIconLayoutOEMIconLabel];
  v8 = [descriptionCopy objectForKeyedSubscript:kCRSIconLayoutIconOrderKey];
  firstObject = [v8 firstObject];
  v10 = [descriptionCopy objectForKeyedSubscript:kCRSIconLayoutHiddenIconsKey];

  v11 = [NSString stringWithFormat:@"%@ '%@', %@ icons, %@ hidden apps", v6, v7, firstObject, v10];

  return v11;
}

- (id)_iconForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v5 = [[CRApplicationIcon alloc] initWithBundleIdentifier:identifierCopy];
  if ([(CRApplicationIcon *)v5 hasCustomImage])
  {
    v6 = dispatch_semaphore_create(0);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_C6E8;
    v25 = &unk_6E698;
    v29 = &v42;
    v30 = &v36;
    v7 = identifierCopy;
    v26 = v7;
    selfCopy = self;
    v31 = &v32;
    v8 = v6;
    v28 = v8;
    v9 = objc_retainBlock(&v22);
    v10 = [(CRHomeScreenPersistenceManager *)self iconLayoutController:v22];
    vehicleId = [(CRHomeScreenPersistenceManager *)self vehicleId];
    [v10 fetchApplicationIconInformationForBundleIdentifier:v7 vehicleID:vehicleId showBorder:-[CRHomeScreenPersistenceManager drawIconBorders](self completion:{"drawIconBorders"), v9}];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v26;
LABEL_14:

    [(CRApplicationIcon *)v5 setDisplayName:v43[5]];
    [(CRApplicationIcon *)v5 setIconImage:v37[5]];
    [(CRApplicationIcon *)v5 setWantsDarkAppearance:*(v33 + 24)];
    v19 = v5;
    goto LABEL_15;
  }

  v8 = [LSApplicationProxy applicationProxyForIdentifier:identifierCopy];
  v12 = [CRCarPlayAppDeclaration declarationForAppProxy:v8];
  evaluator = [(CRHomeScreenPersistenceManager *)self evaluator];
  vehicleCertificateSerial = [(CRHomeScreenPersistenceManager *)self vehicleCertificateSerial];
  v15 = [evaluator effectivePolicyForAppDeclaration:v12 inVehicleWithCertificateSerial:vehicleCertificateSerial];

  if ([v15 isCarPlaySupported])
  {
    if ([identifierCopy isEqualToString:CRSBooksIdentifier])
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
      localizedName = [v8 localizedName];
      v16 = v43[5];
      v43[5] = localizedName;
    }

    goto LABEL_14;
  }

  v18 = CarGeneralLogging();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = identifierCopy;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Application %@ is not supported in this vehicle.", buf, 0xCu);
  }

  v19 = 0;
LABEL_15:

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);

  return v19;
}

- (void)_processIconStateResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v36 = [NSMutableDictionary dictionaryWithDictionary:responseCopy];
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() _iconStateDebugDescription:responseCopy];
    *buf = 138412290;
    v49 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Processing icon state response: %@", buf, 0xCu);
  }

  v35 = responseCopy;

  v33 = kCRSIconLayoutIconOrderKey;
  v9 = [v36 objectForKeyedSubscript:?];
  firstObject = [v9 firstObject];

  v11 = +[NSMutableArray array];
  v12 = [v36 objectForKeyedSubscript:kCRSIconLayoutDisplaysOEMIcon];
  bOOLValue = [v12 BOOLValue];

  v37 = [v36 objectForKeyedSubscript:kCRSIconLayoutOEMIconLabel];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = firstObject;
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
        if (bOOLValue & 1 | (([v20 isEqualToString:v18] & 1) == 0))
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
  completionCopy[2](completionCopy, v32);
}

@end