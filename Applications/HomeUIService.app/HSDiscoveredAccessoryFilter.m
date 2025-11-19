@interface HSDiscoveredAccessoryFilter
- (BOOL)shouldShowAccessory:(id)a3;
- (HSDiscoveredAccessoryFilter)initWithEntitlementContext:(id)a3 setupAccessoryDescription:(id)a4 matterDeviceSetupRequest:(id)a5;
- (void)_computeDenylistedAccessoryCategories;
@end

@implementation HSDiscoveredAccessoryFilter

- (HSDiscoveredAccessoryFilter)initWithEntitlementContext:(id)a3 setupAccessoryDescription:(id)a4 matterDeviceSetupRequest:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HSDiscoveredAccessoryFilter;
  v12 = [(HSDiscoveredAccessoryFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entitlementContext, a3);
    objc_storeStrong(&v13->_setupAccessoryDescription, a4);
    objc_storeStrong(&v13->_matterDeviceSetupRequest, a5);
    [(HSDiscoveredAccessoryFilter *)v13 _computeDenylistedAccessoryCategories];
  }

  return v13;
}

- (BOOL)shouldShowAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 accessory];
  v6 = [(HSDiscoveredAccessoryFilter *)self setupAccessoryDescription];
  if ([v6 isSetupInitiatedByOtherMatterEcosystem] && v5)
  {
    v7 = [v5 supportsCHIP];

    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v8 = [(HSDiscoveredAccessoryFilter *)self entitlementContext];
  v9 = [v8 isEntitledForHomeKitSPI];

  v10 = [v4 sharingDevice];
  v11 = v10;
  if (v9)
  {

    if (v11)
    {
      v12 = [v4 sharingDevice];
      v13 = [v12 deviceClassCode];

      LOBYTE(v13) = (v13 & 0xFFFFFFFD) == 4;
      goto LABEL_22;
    }

    if (!v5)
    {
LABEL_14:
      LOBYTE(v13) = 0;
      goto LABEL_22;
    }
  }

  else
  {

    LOBYTE(v13) = 0;
    if (v11 || !v5)
    {
      goto LABEL_22;
    }
  }

  v14 = [(HSDiscoveredAccessoryFilter *)self denylistedAccessoryCategories];
  v15 = [v5 category];
  v16 = [v15 categoryType];
  v17 = [v14 containsObject:v16];

  if (v17)
  {
    goto LABEL_14;
  }

  if ([v5 supportsCHIP] && objc_msgSend(v5, "knownToSystemCommissioner") && (-[HSDiscoveredAccessoryFilter matterDeviceSetupRequest](self, "matterDeviceSetupRequest"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = [(HSDiscoveredAccessoryFilter *)self matterDeviceSetupRequest];
    v13 = [v19 hs_shouldShowAccessory:v5];

    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(HSDiscoveredAccessoryFilter *)self matterDeviceSetupRequest];
      v23[0] = 67109634;
      v23[1] = v13;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "answerFromRequest=%d for accessory %@ request %@", v23, 0x1Cu);
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

LABEL_22:

  return v13;
}

- (void)_computeDenylistedAccessoryCategories
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004B03C;
  v4[3] = &unk_1000C77B8;
  v4[4] = self;
  v3 = sub_10004B03C(v4);
  [(HSDiscoveredAccessoryFilter *)self setDenylistedAccessoryCategories:v3];
}

@end