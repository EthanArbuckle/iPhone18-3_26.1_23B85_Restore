@interface COSLegalController
- (BOOL)shouldShowBuiltinAppsPane;
- (COSLegalController)init;
- (id)specifiers;
- (void)handleLegalDocuments:(id)documents error:(id)error;
- (void)queryGizmoForLegalDocuments;
- (void)startSpinnerInCellForSpecifier:(id)specifier;
- (void)stopSpinner;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSLegalController

- (COSLegalController)init
{
  v6.receiver = self;
  v6.super_class = COSLegalController;
  v2 = [(COSLegalController *)&v6 init];
  if (v2)
  {
    objc_storeWeak(&qword_1002BD2D0, v2);
    v3 = objc_opt_new();
    nssManager = v2->_nssManager;
    v2->_nssManager = v3;

    [(COSLegalController *)v2 queryGizmoForLegalDocuments];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = COSLegalController;
  [(COSLegalController *)&v16 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"LEGAL" table:@"About" locale:v6 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [v8 initWithKey:@"GENERAL" table:@"Settings" locale:v9 bundleURL:bundleURL];

  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = [v11 initWithKey:@"About" table:@"General" locale:v12 bundleURL:bundleURL];

  v17[0] = v10;
  v17[1] = v13;
  v14 = [NSArray arrayWithObjects:v17 count:2];
  v15 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=ABOUT/LEGAL_CELL_ID"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v7 localizedNavigationComponents:v14 deepLink:v15];
}

- (void)queryGizmoForLegalDocuments
{
  objc_initWeak(&location, self);
  nssManager = self->_nssManager;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002A384;
  v4[3] = &unk_100268980;
  objc_copyWeak(&v5, &location);
  [(NSSManager *)nssManager getLegalDocuments:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleLegalDocuments:(id)documents error:(id)error
{
  documentsCopy = documents;
  errorCopy = error;
  v8 = errorCopy;
  self->_hasFetchedDocuments = 1;
  if (!documentsCopy || errorCopy)
  {
    self->_errorHasOccurred = 1;
    v20 = pbb_bridge_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Error has occured: %@", buf, 0xCu);
    }

    legalNoticesMarkup = self->_legalNoticesMarkup;
    self->_legalNoticesMarkup = 0;

    licenseMarkup = self->_licenseMarkup;
    self->_licenseMarkup = 0;

    rfExposureMarkup = self->_rfExposureMarkup;
    self->_rfExposureMarkup = 0;

    self->_sarURLAdded = 0;
    if (self->_remoteLoadingSpecifier == self->_licenseSpecifier)
    {
      v24 = [(COSLegalController *)self indexPathForSpecifier:?];
      table = [(COSLegalController *)self table];
      v26.receiver = self;
      v26.super_class = COSLegalController;
      [(COSLegalController *)&v26 tableView:table didSelectRowAtIndexPath:v24];
    }

    BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
  }

  else
  {
    self->_errorHasOccurred = 0;
    v9 = [documentsCopy objectForKeyedSubscript:kNSSLegalDocumentsLegalNoticesKey];
    v10 = self->_legalNoticesMarkup;
    self->_legalNoticesMarkup = v9;

    v11 = [documentsCopy objectForKeyedSubscript:kNSSLegalDocumentsLicenseKey];
    v12 = self->_licenseMarkup;
    self->_licenseMarkup = v11;

    v13 = [documentsCopy objectForKeyedSubscript:kNSSLegalDocumentsSarStatementKey];
    v14 = self->_rfExposureMarkup;
    self->_rfExposureMarkup = v13;

    v15 = [documentsCopy objectForKeyedSubscript:kNSSLegalDocumentsSarUrlAddedKey];
    self->_sarURLAdded = [v15 BOOLValue];

    v16 = [documentsCopy objectForKeyedSubscript:kNSSLegalDocumentsBuiltinAppsKey];
    builtinAppsMarkup = self->_builtinAppsMarkup;
    self->_builtinAppsMarkup = v16;

    if (self->_remoteLoadingSpecifier)
    {
      v18 = [(COSLegalController *)self indexPathForSpecifier:?];
      table2 = [(COSLegalController *)self table];
      [(COSLegalController *)self tableView:table2 didSelectRowAtIndexPath:v18];
    }
  }

  [(COSLegalController *)self stopSpinner];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"LEGAL_NOTICES" value:&stru_10026E598 table:@"Legal"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    legalNoticesSpecifier = self->_legalNoticesSpecifier;
    self->_legalNoticesSpecifier = v7;

    [(PSSpecifier *)self->_legalNoticesSpecifier setIdentifier:@"LEGAL_NOTICES_ID"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"LICENSE" value:&stru_10026E598 table:@"Legal"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    licenseSpecifier = self->_licenseSpecifier;
    self->_licenseSpecifier = v11;

    [(PSSpecifier *)self->_licenseSpecifier setIdentifier:@"LICENSE_ID"];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"WARRANTY_POINTER" value:&stru_10026E598 table:@"Legal"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    warrantyPointerSpecifier = self->_warrantyPointerSpecifier;
    self->_warrantyPointerSpecifier = v15;

    [(PSSpecifier *)self->_warrantyPointerSpecifier setIdentifier:@"WARRANTY_ID"];
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"RF_EXPOSURE" value:&stru_10026E598 table:@"Legal"];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    rfExposureSpecifier = self->_rfExposureSpecifier;
    self->_rfExposureSpecifier = v19;

    [(PSSpecifier *)self->_rfExposureSpecifier setIdentifier:@"RF_EXPOSURE_ID"];
    v21 = [NSMutableArray arrayWithObjects:self->_legalNoticesSpecifier, self->_licenseSpecifier, self->_warrantyPointerSpecifier, self->_rfExposureSpecifier, 0];
    if ([(COSLegalController *)self shouldShowBuiltinAppsPane])
    {
      v22 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"BUILTIN_APPS" value:&stru_10026E598 table:@"Legal"];
      v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
      builtinAppsSpecifier = self->_builtinAppsSpecifier;
      self->_builtinAppsSpecifier = v24;

      [v21 insertObject:self->_builtinAppsSpecifier atIndex:{objc_msgSend(v21, "indexOfObject:", self->_rfExposureSpecifier)}];
    }

    v26 = [NSArray arrayWithArray:v21];
    v27 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v26;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (void)startSpinnerInCellForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(COSLegalController *)self stopSpinner];
  v7 = [specifierCopy propertyForKey:PSTableCellKey];
  if (v7)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v5 startAnimating];
    [v7 setForceHideDisclosureIndicator:1];
    [v7 setAccessoryView:v5];
  }

  remoteLoadingSpecifier = self->_remoteLoadingSpecifier;
  self->_remoteLoadingSpecifier = specifierCopy;
}

- (void)stopSpinner
{
  remoteLoadingSpecifier = self->_remoteLoadingSpecifier;
  if (remoteLoadingSpecifier)
  {
    v5 = [(PSSpecifier *)remoteLoadingSpecifier propertyForKey:PSTableCellKey];
    [v5 setAccessoryView:0];
    [v5 setForceHideDisclosureIndicator:0];
    v4 = self->_remoteLoadingSpecifier;
    self->_remoteLoadingSpecifier = 0;
  }
}

- (BOOL)shouldShowBuiltinAppsPane
{
  activeWatch = [UIApp activeWatch];
  NRWatchOSVersionForRemoteDevice();
  v3 = [activeWatch valueForProperty:NRDevicePropertyGreenTeaDevice];
  if ([v3 BOOLValue])
  {
    IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
  }

  else
  {
    IsGreaterThanOrEqual = 0;
  }

  return IsGreaterThanOrEqual;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(COSLegalController *)self indexForIndexPath:pathCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
    if (v9 == self->_warrantyPointerSpecifier || self->_hasFetchedDocuments && !self->_errorHasOccurred)
    {
      [(COSLegalController *)self stopSpinner];
      v10.receiver = self;
      v10.super_class = COSLegalController;
      [(COSLegalController *)&v10 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    }

    else
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      [(COSLegalController *)self startSpinnerInCellForSpecifier:v9];
      if (self->_errorHasOccurred)
      {
        [(COSLegalController *)self queryGizmoForLegalDocuments];
      }
    }
  }
}

@end