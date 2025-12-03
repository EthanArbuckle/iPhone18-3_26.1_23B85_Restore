@interface TPSWiFiCallingController
- (BOOL)isThumperCallingEnabled;
- (BOOL)isWiFiCallingCertified;
- (BOOL)isWiFiCallingEnabled;
- (BOOL)isWiFiCallingRoamingEnabled;
- (BOOL)supportsEncryptedIdentity;
- (BOOL)supportsThumperCalling;
- (BOOL)supportsWiFiCalling;
- (BOOL)supportsWiFiEmergencyCalling;
- (NSDictionary)encryptedIdentityInfo;
- (NSString)localizedCarrierName;
- (TPSCarrierBundleController)carrierBundleController;
- (TPSEncryptedIdentityClient)encryptedIdentityClient;
- (TPSWiFiCallingController)init;
- (TPSWiFiCallingController)initWithSubscriptionContext:(id)context;
- (TUSenderIdentityCapabilities)subscriptionCapabilities;
- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)d;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
- (void)didChangeWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
@end

@implementation TPSWiFiCallingController

- (TPSWiFiCallingController)init
{
  [(TPSWiFiCallingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSWiFiCallingController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TPSWiFiCallingController;
  v6 = [(TPSWiFiCallingController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    uuid = [contextCopy uuid];
    v9 = [(TPSWiFiCallingController *)v7 subscriptionCapabilitiesForSubscriptionContextUUID:uuid];
    subscriptionCapabilities = v7->_subscriptionCapabilities;
    v7->_subscriptionCapabilities = v9;

    [TUCallCapabilities addDelegate:v7 queue:&_dispatch_main_q];
  }

  return v7;
}

- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)d
{
  dCopy = d;
  v4 = +[TUCallCapabilities senderIdentityCapabilities];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        senderIdentityUUID = [v10 senderIdentityUUID];
        v12 = [senderIdentityUUID isEqual:dCopy];

        if (v12)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TUSenderIdentityCapabilities)subscriptionCapabilities
{
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v5 = [(TPSWiFiCallingController *)self subscriptionCapabilitiesForSubscriptionContextUUID:uuid];

  return v5;
}

- (BOOL)isThumperCallingEnabled
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  if (([subscriptionCapabilities isThumperCallingEnabled] & 1) != 0 || objc_msgSend(subscriptionCapabilities, "thumperCallingProvisioningStatus") == 1)
  {
    v3 = +[TUCallCapabilities isRelayCallingEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isWiFiCallingEnabled
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  v3 = ([subscriptionCapabilities isWiFiCallingEnabled] & 1) != 0 || objc_msgSend(subscriptionCapabilities, "wiFiCallingProvisioningStatus") == 1;

  return v3;
}

- (BOOL)isWiFiCallingRoamingEnabled
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  isWiFiCallingRoamingEnabled = [subscriptionCapabilities isWiFiCallingRoamingEnabled];

  return isWiFiCallingRoamingEnabled;
}

- (BOOL)supportsThumperCalling
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  supportsThumperCalling = [subscriptionCapabilities supportsThumperCalling];

  return supportsThumperCalling;
}

- (BOOL)supportsWiFiCalling
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  supportsWiFiCalling = [subscriptionCapabilities supportsWiFiCalling];

  return supportsWiFiCalling;
}

- (BOOL)supportsWiFiEmergencyCalling
{
  subscriptionCapabilities = [(TPSWiFiCallingController *)self subscriptionCapabilities];
  supportsEmergencyWiFiCalling = [subscriptionCapabilities supportsEmergencyWiFiCalling];

  return supportsEmergencyWiFiCalling;
}

- (BOOL)isWiFiCallingCertified
{
  carrierBundleController = [(TPSWiFiCallingController *)self carrierBundleController];
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  v5 = [carrierBundleController objectForKeyHierarchy:&off_8728 subscriptionContext:subscriptionContext];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (TPSCarrierBundleController)carrierBundleController
{
  carrierBundleController = self->_carrierBundleController;
  if (!carrierBundleController)
  {
    v4 = objc_alloc_init(TPSCarrierBundleController);
    v5 = self->_carrierBundleController;
    self->_carrierBundleController = v4;

    carrierBundleController = self->_carrierBundleController;
  }

  return carrierBundleController;
}

- (TPSEncryptedIdentityClient)encryptedIdentityClient
{
  encryptedIdentityClient = self->_encryptedIdentityClient;
  if (!encryptedIdentityClient)
  {
    v4 = objc_alloc_init(TPSEncryptedIdentityClient);
    v5 = self->_encryptedIdentityClient;
    self->_encryptedIdentityClient = v4;

    encryptedIdentityClient = self->_encryptedIdentityClient;
  }

  return encryptedIdentityClient;
}

- (NSDictionary)encryptedIdentityInfo
{
  encryptedIdentityInfo = self->_encryptedIdentityInfo;
  if (!encryptedIdentityInfo)
  {
    encryptedIdentityClient = [(TPSWiFiCallingController *)self encryptedIdentityClient];
    subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
    v6 = [encryptedIdentityClient encryptedIdentityInfoForSubscriptionContext:subscriptionContext type:1];
    v7 = self->_encryptedIdentityInfo;
    self->_encryptedIdentityInfo = v6;

    encryptedIdentityInfo = self->_encryptedIdentityInfo;
  }

  return encryptedIdentityInfo;
}

- (BOOL)supportsEncryptedIdentity
{
  encryptedIdentityInfo = [(TPSWiFiCallingController *)self encryptedIdentityInfo];
  v3 = encryptedIdentityInfo != 0;

  return v3;
}

- (NSString)localizedCarrierName
{
  carrierBundleController = [(TPSWiFiCallingController *)self carrierBundleController];
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  v5 = [carrierBundleController localizedCarrierNameForSubscriptionContext:subscriptionContext];

  return v5;
}

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v8 = TPSWiFiCallingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      subscriptionContext2 = [(TPSWiFiCallingController *)self subscriptionContext];
      v11 = 138412290;
      v12 = subscriptionContext2;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Thumper calling capabilities changed for subscription context %@.", &v11, 0xCu);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"TPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification" object:self];
  }
}

- (void)didChangeWiFiCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  subscriptionContext = [(TPSWiFiCallingController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v8 = TPSWiFiCallingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      subscriptionContext2 = [(TPSWiFiCallingController *)self subscriptionContext];
      v11 = 138412290;
      v12 = subscriptionContext2;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "WiFi calling capabilities changed for subscription context %@.", &v11, 0xCu);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"TPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification" object:self];
  }
}

@end