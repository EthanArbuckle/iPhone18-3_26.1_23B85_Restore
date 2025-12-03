@interface HSDiscoveredAccessoryFilter
- (BOOL)shouldShowAccessory:(id)accessory;
- (HSDiscoveredAccessoryFilter)initWithEntitlementContext:(id)context setupAccessoryDescription:(id)description matterDeviceSetupRequest:(id)request;
- (void)_computeDenylistedAccessoryCategories;
@end

@implementation HSDiscoveredAccessoryFilter

- (HSDiscoveredAccessoryFilter)initWithEntitlementContext:(id)context setupAccessoryDescription:(id)description matterDeviceSetupRequest:(id)request
{
  contextCopy = context;
  descriptionCopy = description;
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = HSDiscoveredAccessoryFilter;
  v12 = [(HSDiscoveredAccessoryFilter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entitlementContext, context);
    objc_storeStrong(&v13->_setupAccessoryDescription, description);
    objc_storeStrong(&v13->_matterDeviceSetupRequest, request);
    [(HSDiscoveredAccessoryFilter *)v13 _computeDenylistedAccessoryCategories];
  }

  return v13;
}

- (BOOL)shouldShowAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessory = [accessoryCopy accessory];
  setupAccessoryDescription = [(HSDiscoveredAccessoryFilter *)self setupAccessoryDescription];
  if ([setupAccessoryDescription isSetupInitiatedByOtherMatterEcosystem] && accessory)
  {
    supportsCHIP = [accessory supportsCHIP];

    if ((supportsCHIP & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  entitlementContext = [(HSDiscoveredAccessoryFilter *)self entitlementContext];
  isEntitledForHomeKitSPI = [entitlementContext isEntitledForHomeKitSPI];

  sharingDevice = [accessoryCopy sharingDevice];
  v11 = sharingDevice;
  if (isEntitledForHomeKitSPI)
  {

    if (v11)
    {
      sharingDevice2 = [accessoryCopy sharingDevice];
      deviceClassCode = [sharingDevice2 deviceClassCode];

      LOBYTE(deviceClassCode) = (deviceClassCode & 0xFFFFFFFD) == 4;
      goto LABEL_22;
    }

    if (!accessory)
    {
LABEL_14:
      LOBYTE(deviceClassCode) = 0;
      goto LABEL_22;
    }
  }

  else
  {

    LOBYTE(deviceClassCode) = 0;
    if (v11 || !accessory)
    {
      goto LABEL_22;
    }
  }

  denylistedAccessoryCategories = [(HSDiscoveredAccessoryFilter *)self denylistedAccessoryCategories];
  category = [accessory category];
  categoryType = [category categoryType];
  v17 = [denylistedAccessoryCategories containsObject:categoryType];

  if (v17)
  {
    goto LABEL_14;
  }

  if ([accessory supportsCHIP] && objc_msgSend(accessory, "knownToSystemCommissioner") && (-[HSDiscoveredAccessoryFilter matterDeviceSetupRequest](self, "matterDeviceSetupRequest"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    matterDeviceSetupRequest = [(HSDiscoveredAccessoryFilter *)self matterDeviceSetupRequest];
    deviceClassCode = [matterDeviceSetupRequest hs_shouldShowAccessory:accessory];

    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      matterDeviceSetupRequest2 = [(HSDiscoveredAccessoryFilter *)self matterDeviceSetupRequest];
      v23[0] = 67109634;
      v23[1] = deviceClassCode;
      v24 = 2112;
      v25 = accessory;
      v26 = 2112;
      v27 = matterDeviceSetupRequest2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "answerFromRequest=%d for accessory %@ request %@", v23, 0x1Cu);
    }
  }

  else
  {
    LOBYTE(deviceClassCode) = 1;
  }

LABEL_22:

  return deviceClassCode;
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