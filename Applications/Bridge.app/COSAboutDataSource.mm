@interface COSAboutDataSource
- (COSAboutDataSource)init;
- (id)getBTAddress:(id)address;
- (id)getCarrierInfo:(id)info;
- (id)getDeviceDetail:(id)detail;
- (id)getDeviceModel:(id)model;
- (id)getDeviceName:(id)name;
- (id)getICCID:(id)d;
- (id)getIMEI:(id)i;
- (id)getLocalizedArtworkDeviceDescription:(id)description;
- (id)getNumberOfApps:(id)apps;
- (id)getNumberOfPhotos:(id)photos;
- (id)getNumberOfSongs:(id)songs;
- (id)getSerialNumber:(id)number;
- (id)getStorageAvailable:(id)available;
- (id)getStorageCapacity:(id)capacity;
- (id)getSystemVersion:(id)version;
- (id)getWiFiAddress:(id)address;
- (id)guardedUint64StringValue:(unint64_t)value;
- (id)specifiersForSpecifier:(id)specifier observer:(id)observer;
- (void)cellularPlanInfoDidChange:(id)change;
- (void)dealloc;
- (void)displayNetworkActivityIndicator:(BOOL)indicator;
- (void)handleAboutInfo:(id)info error:(id)error;
- (void)handleRemoteBundleInfo:(id)info success:(BOOL)success;
- (void)handleRetrievedICCIDs:(id)ds;
- (void)handleUsageData:(id)data error:(id)error;
- (void)hideNetworkActivityIndicatorOnceRemoteQueriesHaveCompleted;
- (void)loadSpecifiers;
- (void)performUpdatesOnMainThreadWithAnimated:(BOOL)animated usingBlock:(id)block;
- (void)queryDevice;
- (void)setDeviceName:(id)name specifier:(id)specifier;
- (void)showUserManual:(id)manual;
- (void)tappedAppleLegalLink;
- (void)updateDeviceDetailSpecifier:(id)specifier;
- (void)updateICCIDSpecifier:(id)specifier;
- (void)updateModelSpecifier:(id)specifier;
@end

@implementation COSAboutDataSource

- (COSAboutDataSource)init
{
  v18.receiver = self;
  v18.super_class = COSAboutDataSource;
  v2 = [(COSAboutDataSource *)&v18 init];
  if (v2 && [objc_opt_class() useConnectedDevice])
  {
    v3 = sub_10000DB38();
    device = v2->_device;
    v2->_device = v3;

    if (_os_feature_enabled_impl())
    {
      v5 = [(NRDevice *)v2->_device valueForProperty:NRDevicePropertySerialNumber];
      if (v5)
      {
        v6 = [[NDOACController alloc] initWithSerialNumber:v5];
        ndoController = v2->_ndoController;
        v2->_ndoController = v6;
      }
    }

    [(COSAboutDataSource *)v2 checkDeviceHasCellularCapability];
    if (v2->_deviceHasCellularCapability)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v9 = qword_1002BD3D8;
      v27 = qword_1002BD3D8;
      if (!qword_1002BD3D8)
      {
        v19 = _NSConcreteStackBlock;
        v20 = 3221225472;
        v21 = sub_100056624;
        v22 = &unk_1002680D0;
        v23 = &v24;
        v10 = sub_10000DCBC();
        v11 = dlsym(v10, "NPHCellularPlanInfoDidChangeNotification");
        *(v23[1] + 24) = v11;
        qword_1002BD3D8 = *(v23[1] + 24);
        v9 = v25[3];
      }

      _Block_object_dispose(&v24, 8);
      if (!v9)
      {
        v17 = sub_100186904();
        _Block_object_dispose(&v24, 8);
        _Unwind_Resume(v17);
      }

      v12 = *v9;
      sharedInstance = [sub_10000DEBC() sharedInstance];
      [v8 addObserver:v2 selector:"cellularPlanInfoDidChange:" name:v12 object:sharedInstance];
    }

    v14 = dispatch_queue_create("com.apple.Bridge.CoreTelephony", 0);
    ctQueue = v2->_ctQueue;
    v2->_ctQueue = v14;
  }

  return v2;
}

- (void)dealloc
{
  [(COSAboutDataSource *)self displayNetworkActivityIndicator:0];
  ctConnection = self->_ctConnection;
  if (ctConnection)
  {
    CFRelease(ctConnection);
    self->_ctConnection = 0;
  }

  v4.receiver = self;
  v4.super_class = COSAboutDataSource;
  [(COSAboutDataSource *)&v4 dealloc];
}

- (id)specifiersForSpecifier:(id)specifier observer:(id)observer
{
  specifierCopy = specifier;
  observerCopy = observer;
  if ([observerCopy observerType] == 1)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000530B0;
    block[3] = &unk_100268430;
    objc_copyWeak(&v12, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v10.receiver = self;
  v10.super_class = COSAboutDataSource;
  v8 = [(COSAboutDataSource *)&v10 specifiersForSpecifier:specifierCopy observer:observerCopy];

  return v8;
}

- (void)loadSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"About" inBundle:v3 target:self stringsTable:@"About"];
  v5 = [v4 mutableCopy];

  v6 = [v5 specifierForID:@"OS_VERSION_CELL_ID"];
  v7 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyArtworkTraits];
  v64 = v7;
  if (v7)
  {
    v8 = [v7 valueForKey:@"ArtworkDeviceProductDescription"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 specifierForID:@"DEVICE_DETAIL_CELL_ID"];
  v10 = objc_opt_class();
  v11 = PSCellClassKey;
  v62 = v9;
  [v9 setProperty:v10 forKey:PSCellClassKey];
  v12 = BPSRemoteUISetupStyle_ptr;
  if ([v8 length])
  {
    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v72 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found Artwork Device Description: %@", buf, 0xCu);
    }

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"DEVICE_MODEL_ART_NAME" value:&stru_10026E598 table:@"About"];
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:"getLocalizedArtworkDeviceDescription:" detail:0 cell:4 edit:0];

    [v16 setProperty:objc_opt_class() forKey:v11];
    [v16 setProperty:v8 forKey:@"artworkDeviceDescription"];
    [v16 setIdentifier:@"DEVICE_MARKETING_NAME_CELL_ID"];
    [v16 setProperty:&__kCFBooleanTrue forKey:PSCopyableCellKey];
    [v5 ps_insertObject:v16 afterObject:v6];
  }

  v63 = v8;
  v17 = [v5 specifierForID:@"DEVICE_WIFI_ADDRESS_CELL_ID"];
  v18 = +[NSBundle mainBundle];
  v19 = SFLocalizableWAPIStringKeyForKey();
  v20 = [v18 localizedStringForKey:v19 value:&stru_10026E598 table:@"About"];
  v61 = v17;
  [v17 setName:v20];

  v21 = [v5 specifierForID:@"LEGAL_GROUP_CELL_ID"];
  if ([objc_opt_class() useConnectedDevice])
  {
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"LEGAL_FOOTER" value:&stru_10026E598 table:@"About"];
    v24 = [NSString stringWithFormat:v23, @"https://www.apple.com/legal/"];

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [v21 setProperty:v26 forKey:PSFooterCellClassGroupKey];

    [v21 setProperty:v24 forKey:PSFooterHyperlinkViewTitleKey];
    v73.location = [v24 rangeOfString:@"https://www.apple.com/legal/"];
    v27 = NSStringFromRange(v73);
    [v21 setProperty:v27 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v28 = [NSValue valueWithNonretainedObject:self];
    [v21 setProperty:v28 forKey:PSFooterHyperlinkViewTargetKey];

    [v21 setProperty:@"tappedAppleLegalLink" forKey:PSFooterHyperlinkViewActionKey];
  }

  else
  {
    v70[0] = @"ABOUT_GROUP_ID";
    v70[1] = @"DEVICE_STORAGE_GROUP_ID";
    v70[2] = @"SONGS_CELL_ID";
    v70[3] = @"PHOTOS_CELL_ID";
    v70[4] = @"APPLICATIONS_CELL_ID";
    v70[5] = @"STORAGE_CAPACITY_CELL_ID";
    v70[6] = @"STORAGE_AVAILABLE_CELL_ID";
    v70[7] = @"SHOW_MANUAL_GROUP_ID";
    v70[8] = @"SHOW_MANUAL_CELL_ID";
    v70[9] = @"LEGAL_GROUP_CELL_ID";
    v70[10] = @"LEGAL_CELL_ID";
    [NSArray arrayWithObjects:v70 count:11];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v24 = v68 = 0u;
    v29 = [v24 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v66;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v66 != v31)
          {
            objc_enumerationMutation(v24);
          }

          v33 = [v5 specifierForID:*(*(&v65 + 1) + 8 * i)];
          [v5 removeObject:v33];
        }

        v30 = [v24 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v30);
    }

    v34 = [v5 specifierForID:@"NAME_CELL_ID"];
    [v34 setDetailControllerClass:0];
    [v34 setCellType:4];
  }

  if (self->_deviceHasCellularCapability)
  {
    v60 = v6;
    v35 = BPSRemoteUISetupStyle_ptr;
    if ([objc_opt_class() useConnectedDevice])
    {
      v36 = [v5 specifierForID:@"DEVICE_TECH_DETAILS_GROUP_ID"];
      v37 = +[NSBundle mainBundle];
      v38 = [v37 localizedStringForKey:@"CARRIER_INFO" value:&stru_10026E598 table:@"About"];
      v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:self set:0 get:"getCarrierInfo:" detail:0 cell:4 edit:0];

      [v39 setIdentifier:@"CARRIER_CELL_ID"];
      [v5 ps_insertObject:v39 afterObject:v36];
    }

    v40 = [v5 specifierForID:@"DEVICE_BLUETOOTH_ADDRESS_CELL_ID"];
    v41 = +[NSBundle mainBundle];
    v42 = [v41 localizedStringForKey:@"IMEI" value:&stru_10026E598 table:@"About"];
    v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:0 get:"getIMEI:" detail:0 cell:4 edit:0];

    [v43 setIdentifier:@"IMEI_CELL_ID"];
    v44 = PSCopyableCellKey;
    [v43 setProperty:&__kCFBooleanTrue forKey:PSCopyableCellKey];
    v45 = PSUseHighLegibilityAlternateKey;
    [v43 setProperty:&__kCFBooleanTrue forKey:PSUseHighLegibilityAlternateKey];
    [v5 ps_insertObject:v43 afterObject:v40];
    if ([objc_opt_class() useConnectedDevice])
    {
      v46 = +[NSBundle mainBundle];
      v47 = [v46 localizedStringForKey:@"ICCID" value:&stru_10026E598 table:@"About"];
      v48 = [PSSpecifier preferenceSpecifierNamed:v47 target:self set:0 get:"getICCID:" detail:0 cell:4 edit:0];

      v35 = BPSRemoteUISetupStyle_ptr;
      [v48 setIdentifier:@"ICCID_CELL_ID"];
      [v48 setProperty:&__kCFBooleanTrue forKey:v44];
      v12 = BPSRemoteUISetupStyle_ptr;
      [v48 setProperty:&__kCFBooleanTrue forKey:v45];
      [v5 ps_insertObject:v48 afterObject:v43];
    }

    else
    {
      v48 = v43;
    }

    v49 = v12[378];
    mainBundle = [v35[501] mainBundle];
    v51 = [mainBundle localizedStringForKey:@"EID" value:&stru_10026E598 table:@"About"];
    v52 = [v49 preferenceSpecifierNamed:v51 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v52 setIdentifier:@"EID_CELL_ID"];
    [v5 ps_insertObject:v52 afterObject:v48];

    v6 = v60;
  }

  if ([objc_opt_class() useConnectedDevice] && _os_feature_enabled_impl())
  {
    ndoController = [(COSAboutDataSource *)self ndoController];
    [ndoController setSpecifierIDToInsertAfter:@"DEVICE_SERIAL_NUMBER_CELL_ID"];

    ndoController2 = [(COSAboutDataSource *)self ndoController];
    specifiers = [ndoController2 specifiers];

    if (specifiers)
    {
      ndoController3 = [(COSAboutDataSource *)self ndoController];
      specifierIDToInsertAfter = [ndoController3 specifierIDToInsertAfter];
      v58 = [v5 specifierForID:specifierIDToInsertAfter];

      [v5 ps_insertObjectsFromArray:specifiers afterObject:v58];
    }
  }

  specifiers2 = [(COSAboutDataSource *)self specifiers];
  [specifiers2 addObjectsFromArray:v5];
}

- (void)queryDevice
{
  if (self->_hasStartedFetchingInfo)
  {
    v2 = pbb_bridge_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location) = 0;
      v3 = "Already fetching info from device.";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, &location, 2u);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  self->_hasStartedFetchingInfo = 1;
  if ([(COSAboutDataSource *)self shouldQueryWatchForDetails])
  {
    [(COSAboutDataSource *)self displayNetworkActivityIndicator:1];
    if (!self->_nssManager)
    {
      v5 = [[NSSManager alloc] initWithQueue:&_dispatch_main_q];
      nssManager = self->_nssManager;
      self->_nssManager = v5;
    }

    objc_initWeak(&location, self);
    v7 = self->_nssManager;
    if (v7)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100054154;
      v28[3] = &unk_100268980;
      objc_copyWeak(&v29, &location);
      [(NSSManager *)v7 getAboutInfo:v28];
      v8 = self->_nssManager;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000541CC;
      v26[3] = &unk_1002694F8;
      objc_copyWeak(&v27, &location);
      [(NSSManager *)v8 getUsageData:v26];
      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
    }

    else
    {
      [(COSAboutDataSource *)self handleAboutInfo:0 error:0];
      [(COSAboutDataSource *)self handleUsageData:0 error:0];
    }

    objc_destroyWeak(&location);
  }

  if (self->_deviceHasCellularCapability)
  {
    v2 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyPairingID];
    if (v2)
    {
      v9 = self->_ctQueue;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v10 = off_1002BD3F0;
      v33 = off_1002BD3F0;
      if (!off_1002BD3F0)
      {
        location = _NSConcreteStackBlock;
        v35 = 3221225472;
        v36 = sub_1000566E8;
        v37 = &unk_1002680D0;
        v38 = &v30;
        v11 = sub_100056738();
        v12 = dlsym(v11, "_CTServerConnectionCreateOnTargetQueue");
        *(v38[1] + 24) = v12;
        off_1002BD3F0 = *(v38[1] + 24);
        v10 = v31[3];
      }

      _Block_object_dispose(&v30, 8);
      if (!v10)
      {
        goto LABEL_45;
      }

      v13 = v10(kCFAllocatorDefault, @"com.apple.coremedia", v9, 0);

      self->_ctConnection = v13;
      if (v13)
      {
        v25 = 0;
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v14 = off_1002BD400;
        v33 = off_1002BD400;
        if (!off_1002BD400)
        {
          location = _NSConcreteStackBlock;
          v35 = 3221225472;
          v36 = sub_1000568AC;
          v37 = &unk_1002680D0;
          v38 = &v30;
          v15 = sub_100056738();
          v16 = dlsym(v15, "_CTServerConnectionGetRemoteBundleInfo");
          *(v38[1] + 24) = v16;
          off_1002BD400 = *(v38[1] + 24);
          v14 = v31[3];
        }

        _Block_object_dispose(&v30, 8);
        if (v14)
        {
          v17 = v14(v13, &v25);
          v18 = v17;
          v19 = HIDWORD(v17);
          if (HIDWORD(v17))
          {
            v20 = 0;
          }

          else
          {
            v20 = v17 == 0;
          }

          v21 = v20;
          if (!v20)
          {
            v22 = pbb_bridge_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(location) = 67109376;
              HIDWORD(location) = v18;
              LOWORD(v35) = 1024;
              *(&v35 + 2) = v19;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Error requesting Remote Bundle Info; Domain: (%d); Code: (%d)", &location, 0xEu);
            }
          }

          [(COSAboutDataSource *)self handleRemoteBundleInfo:v25 success:v21];
          goto LABEL_43;
        }

LABEL_45:
        sub_100186904();
        __break(1u);
      }

      v23 = pbb_bridge_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Could not create CTServerConnection. Not querying cellular bundle.", &location, 2u);
      }
    }

    else
    {
      v23 = pbb_bridge_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Device does not have pairing ID. Not querying cellular bundle.", &location, 2u);
      }
    }

LABEL_43:
    self->_hasReceivedCellularPlanUpdate = 0;
    sharedInstance = [sub_10000DEBC() sharedInstance];
    [sharedInstance updateCellularPlansWithFetch:1];

    goto LABEL_44;
  }

  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location) = 0;
    v3 = "Device not cellular capable. Not querying cellular bundle.";
    goto LABEL_34;
  }

LABEL_44:
}

- (void)cellularPlanInfoDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054310;
  block[3] = &unk_100268458;
  objc_copyWeak(&v8, &location);
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)displayNetworkActivityIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  if (indicator)
  {
    v4 = 1;
  }

  else
  {
    if (!self->_displayNetworkProgressIndicator)
    {
      return;
    }

    v4 = 0;
  }

  self->_displayNetworkProgressIndicator = v4;
  v5 = +[UIApplication sharedApplication];
  [v5 setNetworkActivityIndicatorVisible:indicatorCopy];
}

- (void)hideNetworkActivityIndicatorOnceRemoteQueriesHaveCompleted
{
  if (!self->_hasFetchedAboutInfo)
  {
    goto LABEL_6;
  }

  hasReceivedCellularPlanUpdate = !self->_deviceHasCellularCapability && self->_hasFetchedUsageData;
  if (self->_deviceHasCellularCapability && self->_hasFetchedUsageData)
  {
    if (self->_hasFetchedRemoteBundleInfo)
    {
      hasReceivedCellularPlanUpdate = self->_hasReceivedCellularPlanUpdate;
      goto LABEL_7;
    }

LABEL_6:
    hasReceivedCellularPlanUpdate = 0;
  }

LABEL_7:
  [(COSAboutDataSource *)self displayNetworkActivityIndicator:!hasReceivedCellularPlanUpdate];
}

- (void)handleAboutInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  self->_hasFetchedAboutInfo = 1;
  [(COSAboutDataSource *)self hideNetworkActivityIndicatorOnceRemoteQueriesHaveCompleted];
  if (!infoCopy || errorCopy)
  {
    if (errorCopy)
    {
      self->_errorOccurredFetchingAboutInfo = 1;
      v15 = pbb_bridge_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = errorCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Error occurred retrieving the About info: %@", &v16, 0xCu);
      }

      BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
    }
  }

  else
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = infoCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "About info: (%@)", &v16, 0xCu);
    }

    v9 = [infoCopy objectForKeyedSubscript:kNSSAboutAppsKey];
    numberOfApps = self->_numberOfApps;
    self->_numberOfApps = v9;

    v11 = [infoCopy objectForKeyedSubscript:kNSSAboutSongsKey];
    numberOfSongs = self->_numberOfSongs;
    self->_numberOfSongs = v11;

    v13 = [infoCopy objectForKeyedSubscript:kNSSAboutPhotosKey];
    numberOfPhotos = self->_numberOfPhotos;
    self->_numberOfPhotos = v13;

    if ([objc_opt_class() useConnectedDevice])
    {
      [(COSAboutDataSource *)self performUpdatesOnMainThreadWithAnimated:0 usingBlock:&stru_100269538];
    }
  }
}

- (void)handleUsageData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  self->_hasFetchedUsageData = 1;
  [(COSAboutDataSource *)self hideNetworkActivityIndicatorOnceRemoteQueriesHaveCompleted];
  if (!dataCopy || errorCopy)
  {
    if (errorCopy)
    {
      self->_errorOccurredFetchingUsageData = 1;
      v9 = pbb_bridge_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = errorCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error occurred retrieving the usage data: %@", &v10, 0xCu);
      }

      BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
    }
  }

  else
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dataCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Usage data: (%@)", &v10, 0xCu);
    }

    self->_storageAvailable = [dataCopy availableStorageInBytes];
    self->_storageCapacity = [dataCopy capacityInBytes];
    if ([objc_opt_class() useConnectedDevice])
    {
      [(COSAboutDataSource *)self performUpdatesOnMainThreadWithAnimated:0 usingBlock:&stru_100269558];
    }
  }
}

- (void)handleRemoteBundleInfo:(id)info success:(BOOL)success
{
  successCopy = success;
  infoCopy = info;
  self->_hasFetchedRemoteBundleInfo = 1;
  [(COSAboutDataSource *)self hideNetworkActivityIndicatorOnceRemoteQueriesHaveCompleted];
  if (successCopy)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = infoCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remote Bundle Info: (%@)", &v13, 0xCu);
    }

    v8 = [infoCopy objectForKeyedSubscript:@"kCarrier"];
    v9 = [v8 objectForKeyedSubscript:@"CarrierName"];
    carrierName = self->_carrierName;
    self->_carrierName = v9;

    v11 = [v8 objectForKeyedSubscript:@"BundleVersion"];
    carrierVersion = self->_carrierVersion;
    self->_carrierVersion = v11;

    if ([objc_opt_class() useConnectedDevice])
    {
      [(COSAboutDataSource *)self performUpdatesOnMainThreadWithAnimated:0 usingBlock:&stru_100269578];
    }
  }

  else
  {
    self->_errorOccurredFetchingRemoteBundleInfo = 1;
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error occured fetching Remote Bundle Info", &v13, 2u);
    }
  }
}

- (void)handleRetrievedICCIDs:(id)ds
{
  objc_storeStrong(&self->_simICCIDs, ds);
  if ([objc_opt_class() useConnectedDevice])
  {

    [(COSAboutDataSource *)self performUpdatesOnMainThreadWithAnimated:0 usingBlock:&stru_100269598];
  }
}

- (id)guardedUint64StringValue:(unint64_t)value
{
  if (self->_hasFetchedAboutInfo && !self->_errorOccurredFetchingAboutInfo)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:value];
    dash = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:1];
  }

  else
  {
    dash = [(COSAboutDataSource *)self dash];
  }

  return dash;
}

- (id)getNumberOfSongs:(id)songs
{
  numberOfSongs = self->_numberOfSongs;
  if (numberOfSongs)
  {
    [(COSAboutDataSource *)self guardedUint64StringValue:[(NSNumber *)numberOfSongs unsignedLongLongValue]];
  }

  else
  {
    [(COSAboutDataSource *)self dash];
  }
  v5 = ;

  return v5;
}

- (id)getNumberOfPhotos:(id)photos
{
  numberOfPhotos = self->_numberOfPhotos;
  if (numberOfPhotos)
  {
    [(COSAboutDataSource *)self guardedUint64StringValue:[(NSNumber *)numberOfPhotos unsignedLongLongValue]];
  }

  else
  {
    [(COSAboutDataSource *)self dash];
  }
  v5 = ;

  return v5;
}

- (id)getNumberOfApps:(id)apps
{
  numberOfApps = self->_numberOfApps;
  if (numberOfApps)
  {
    [(COSAboutDataSource *)self guardedUint64StringValue:[(NSNumber *)numberOfApps unsignedLongLongValue]];
  }

  else
  {
    [(COSAboutDataSource *)self dash];
  }
  v5 = ;

  return v5;
}

- (id)getStorageAvailable:(id)available
{
  if (self->_hasFetchedUsageData && !self->_errorOccurredFetchingUsageData)
  {
    dash = NSLocalizedFileSizeDescription();
  }

  else
  {
    dash = [(COSAboutDataSource *)self dash];
  }

  return dash;
}

- (id)getStorageCapacity:(id)capacity
{
  if (self->_hasFetchedUsageData && !self->_errorOccurredFetchingUsageData)
  {
    dash = NSLocalizedFileSizeDescription();
  }

  else
  {
    dash = [(COSAboutDataSource *)self dash];
  }

  return dash;
}

- (id)getDeviceName:(id)name
{
  v4 = [UIApp cachedNameForDevice:self->_device];
  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyName];
    v8 = 136315650;
    v9 = "[COSAboutDataSource getDeviceName:]";
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@ / %@", &v8, 0x20u);
  }

  return v4;
}

- (void)setDeviceName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  if ([nameCopy length])
  {
    [(NSSManager *)self->_nssManager setDeviceName:nameCopy];
    v6 = UIApp;
    v7 = [nameCopy copy];
    [v6 setCachedName:v7 forDevice:self->_device];

    v8 = pbb_setup_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[COSAboutDataSource setDeviceName:specifier:]";
      v12 = 2112;
      v13 = nameCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"COSAboutControllerUserDidChangeDeviceNameNotification" object:0];

    [(COSAboutDataSource *)self performUpdatesAnimated:0 usingBlock:&stru_1002695B8];
  }
}

- (id)getSystemVersion:(id)version
{
  v4 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyMarketingVersion];
  if (!v4)
  {
    v4 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertySystemVersion];
  }

  v5 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertySystemBuildVersion];
  v6 = [NSString stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (id)getDeviceModel:(id)model
{
  modelCopy = model;
  if (self->_showRegulatoryModelNumber)
  {
    v5 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyRegulatoryModelNumber];
    v6 = v5;
    if (v5 && ![v5 isEqualToString:@"Unknown"])
    {
      goto LABEL_11;
    }
  }

  v6 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyModelNumber];
  v7 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyRegionInfo];
  if (v7)
  {
    if ([v6 length])
    {
      v8 = [NSString stringWithFormat:@"%@%@", v6, v7];
    }

    else
    {
      v9 = +[NSBundle mainBundle];
      v8 = [v9 localizedStringForKey:@"N/A" value:&stru_10026E598 table:@"About"];

      v6 = v9;
    }

    v6 = v8;
  }

LABEL_11:

  return v6;
}

- (void)updateModelSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    self->_showRegulatoryModelNumber ^= 1u;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100055724;
    v6[3] = &unk_1002695E0;
    v7 = specifierCopy;
    [(COSAboutDataSource *)self performUpdatesAnimated:0 usingBlock:v6];
  }
}

- (id)getSerialNumber:(id)number
{
  v3 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertySerialNumber];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v4 = [v5 localizedStringForKey:@"N/A" value:&stru_10026E598 table:@"About"];
  }

  return v4;
}

- (id)getWiFiAddress:(id)address
{
  v3 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyWIFIMACAddress];
  uppercaseString = [v3 uppercaseString];

  if ([uppercaseString length])
  {
    v5 = uppercaseString;
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v5 = [v6 localizedStringForKey:@"N/A" value:&stru_10026E598 table:@"About"];
  }

  return v5;
}

- (id)getBTAddress:(id)address
{
  v3 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyBluetoothMACAddress];
  uppercaseString = [v3 uppercaseString];

  if ([uppercaseString length])
  {
    v5 = uppercaseString;
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v5 = [v6 localizedStringForKey:@"N/A" value:&stru_10026E598 table:@"About"];
  }

  return v5;
}

- (id)getCarrierInfo:(id)info
{
  carrierName = self->_carrierName;
  if (carrierName && (carrierVersion = self->_carrierVersion) != 0)
  {
    carrierVersion = [NSString stringWithFormat:@"%@ %@", carrierName, carrierVersion];
  }

  else
  {
    carrierVersion = [(COSAboutDataSource *)self dash];
  }

  return carrierVersion;
}

- (id)getIMEI:(id)i
{
  sub_10002EE00(@"Reading IMEI from NRDevice", a2, i, v3, v4, v5, v6, v7, v13);
  v9 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyIMEI];
  if ([v9 length])
  {
    v10 = sub_100052BF8(v9);
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v10 = [v11 localizedStringForKey:@"N/A" value:&stru_10026E598 table:@"About"];
  }

  return v10;
}

- (id)getLocalizedArtworkDeviceDescription:(id)description
{
  v3 = [description propertyForKey:@"artworkDeviceDescription"];
  v4 = PBLocalizedAppleWatchModelStringForDeviceDescription();
  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[COSAboutDataSource getLocalizedArtworkDeviceDescription:]";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ~ Artwork Description: %@ (Localized: %@)", &v7, 0x20u);
  }

  return v4;
}

- (void)updateDeviceDetailSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    self->_showMarketingBehaviorDescription ^= 1u;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100055C54;
    v6[3] = &unk_1002695E0;
    v7 = specifierCopy;
    [(COSAboutDataSource *)self performUpdatesAnimated:0 usingBlock:v6];
  }
}

- (id)getDeviceDetail:(id)detail
{
  v4 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyDeviceBrand];
  [v4 integerValue];
  v5 = BPSLocalizedShortEdition();
  if ([v5 length] && self->_showMarketingBehaviorDescription)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyProductType];
    v8 = BPSLocalizedVariantSizeForProductType();

    [PBBridgeWatchAttributeController materialFromDevice:self->_device];
    v9 = BPSLocalizedNameForMaterial();
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"GIZMO_DESCRIPTION_FORMAT_%@_%@" value:&stru_10026E598 table:@"Pairing"];
    v6 = [NSString stringWithFormat:v11, v8, v9];
  }

  return v6;
}

- (id)getICCID:(id)d
{
  if ([(NSArray *)self->_simICCIDs count])
  {
    v4 = [(NSArray *)self->_simICCIDs objectAtIndexedSubscript:self->_iccidDisplayIndex];
    dash = sub_100052AE8(v4, 4uLL);
  }

  else
  {
    dash = [(COSAboutDataSource *)self dash];
  }

  return dash;
}

- (void)updateICCIDSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    if ([(NSArray *)self->_simICCIDs count])
    {
      v5 = self->_iccidDisplayIndex + 1;
      v6 = v5 % [(NSArray *)self->_simICCIDs count];
    }

    else
    {
      v6 = 0;
    }

    self->_iccidDisplayIndex = v6;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100055F4C;
    v7[3] = &unk_1002695E0;
    v8 = specifierCopy;
    [(COSAboutDataSource *)self performUpdatesAnimated:0 usingBlock:v7];
  }
}

- (void)tappedAppleLegalLink
{
  v2 = [NSURL URLWithString:@"https://www.apple.com/legal/"];
  BPSOpenSensitiveURLAsync();
}

- (void)showUserManual:(id)manual
{
  v3 = [(COSAboutDataSource *)self observersOfClass:objc_opt_class()];
  anyObject = [v3 anyObject];

  v4 = objc_alloc_init(BCUserGuide);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"USER_GUIDE_TITLE" value:&stru_10026E598 table:@"About"];
  v7 = [v4 getUserGuideViewWithTitle:v6];
  [anyObject presentViewController:v7 animated:1 completion:0];
}

- (void)performUpdatesOnMainThreadWithAnimated:(BOOL)animated usingBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100056170;
  v8[3] = &unk_100269608;
  objc_copyWeak(&v10, &location);
  animatedCopy = animated;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

@end