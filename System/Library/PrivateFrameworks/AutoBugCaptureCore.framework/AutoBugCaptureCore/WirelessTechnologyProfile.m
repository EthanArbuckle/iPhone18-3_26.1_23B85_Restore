@interface WirelessTechnologyProfile
+ (id)fetchFormattedHomeCarrierNameForContext:(id)a3;
+ (id)fetchMCCMNCHomeCarrierNameForContext:(id)a3;
+ (id)fetchRegulatoryDomainCountry;
+ (id)sharedInstance;
- (WirelessTechnologyProfile)init;
- (id)fetchHomeCarrier;
- (void)carrierBundleChange:(id)a3;
- (void)currentDataSimChanged:(id)a3;
- (void)dealloc;
- (void)subscriptionInfoDidChange;
- (void)updateHomeCarrier;
@end

@implementation WirelessTechnologyProfile

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[WirelessTechnologyProfile sharedInstance];
  }

  v3 = sharedInstance_sharedProfile;

  return v3;
}

uint64_t __43__WirelessTechnologyProfile_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WirelessTechnologyProfile);
  v1 = sharedInstance_sharedProfile;
  sharedInstance_sharedProfile = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WirelessTechnologyProfile)init
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = WirelessTechnologyProfile;
  v2 = [(WirelessTechnologyProfile *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.autobugcapture.wirelesstechnologyprofile", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    regulatoryDomainCountry = v2->_regulatoryDomainCountry;
    v2->_regulatoryDomainCountry = @"Unknown";

    homeCarrier = v2->_homeCarrier;
    v2->_homeCarrier = @"Unknown";

    dataContext = v2->_dataContext;
    v2->_dataContext = 0;

    out_token = -1;
    objc_initWeak(&location, v2);
    v9 = [*MEMORY[0x277D443B8] UTF8String];
    v10 = v2->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__WirelessTechnologyProfile_init__block_invoke;
    handler[3] = &unk_278CF09E0;
    objc_copyWeak(&v20, &location);
    v11 = notify_register_dispatch(v9, &out_token, v10, handler);
    if (v11)
    {
      v12 = symptomsLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v25 = v11;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Failed to register for regulatory domain update notification: %u", buf, 8u);
      }
    }

    v2->_regulatoryDomainUpdateNotificationToken = out_token;
    v13 = +[WirelessTechnologyProfile fetchRegulatoryDomainCountry];
    [(WirelessTechnologyProfile *)v2 setRegulatoryDomainCountry:v13];

    v14 = +[CoreTelephonyShim sharedInstance];
    [v14 addDelegate:v2];

    v15 = [(WirelessTechnologyProfile *)v2 fetchHomeCarrier];
    [(WirelessTechnologyProfile *)v2 setHomeCarrier:v15];

    v16 = v2;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

void __33__WirelessTechnologyProfile_init__block_invoke(uint64_t a1)
{
  v2 = symptomsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Received notification for regulatory domain country, updating value", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[WirelessTechnologyProfile fetchRegulatoryDomainCountry];
    [WeakRetained setRegulatoryDomainCountry:v4];
  }
}

- (void)dealloc
{
  regulatoryDomainUpdateNotificationToken = self->_regulatoryDomainUpdateNotificationToken;
  if (regulatoryDomainUpdateNotificationToken != -1)
  {
    notify_cancel(regulatoryDomainUpdateNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = WirelessTechnologyProfile;
  [(WirelessTechnologyProfile *)&v4 dealloc];
}

+ (id)fetchRegulatoryDomainCountry
{
  if (!fetchRegulatoryDomainCountry_enUSLocale)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
    v3 = fetchRegulatoryDomainCountry_enUSLocale;
    fetchRegulatoryDomainCountry_enUSLocale = v2;
  }

  v4 = [MEMORY[0x277D443A8] lastKnownEstimates];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 countryCode];

    if (v6)
    {
      v7 = [fetchRegulatoryDomainCountry_enUSLocale localizedStringForCountryCode:v6];
      v8 = v7;
      if (v7)
      {
        v8 = v7;
        v9 = v8;
LABEL_16:

        goto LABEL_17;
      }

      v10 = symptomsLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Error while fetching regulatory domain country: no localized string", v12, 2u);
      }
    }

    else
    {
      v8 = symptomsLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Error while fetching regulatory domain country: no ISO code", v13, 2u);
      }
    }

    v9 = @"Unknown";
    goto LABEL_16;
  }

  v6 = symptomsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "Error while fetching regulatory domain country: no estimates", buf, 2u);
  }

  v9 = @"Unknown";
LABEL_17:

  return v9;
}

+ (id)fetchFormattedHomeCarrierNameForContext:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!fetchFormattedHomeCarrierNameForContext__sInvalidCarrierNames)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28537A6B0];
    v5 = fetchFormattedHomeCarrierNameForContext__sInvalidCarrierNames;
    fetchFormattedHomeCarrierNameForContext__sInvalidCarrierNames = v4;
  }

  v6 = +[CoreTelephonyShim sharedInstance];
  v7 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
  v25 = 0;
  v8 = [v6 copyCarrierBundleValue:v3 key:@"CarrierName" bundleType:v7 error:&v25];
  v9 = v25;

  if (!v9)
  {
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = +[CoreTelephonyShim sharedInstance];
        v24 = 0;
        v11 = [v10 getEnglishCarrierNameFor:v8 error:&v24];
        v9 = v24;

        if (v9 || !v11)
        {
          v12 = symptomsLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v9;
            _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Error fetching english carrier name: %@", buf, 0xCu);
          }
        }

        else if ([fetchFormattedHomeCarrierNameForContext__sInvalidCarrierNames containsObject:v11])
        {
          v12 = symptomsLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v27 = v11;
            _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "Carrier name invalid: %@", buf, 0xCu);
          }

          v9 = 0;
        }

        else
        {
          v14 = +[CoreTelephonyShim sharedInstance];
          v15 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:5];
          v23 = 0;
          v12 = [v14 copyCarrierBundleValue:v3 key:@"ISOAlpha2CountryCode" bundleType:v15 error:&v23];
          v9 = v23;

          if (!v9)
          {
            if (v12)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v12 = v12;
                if ([v12 count])
                {
                  v16 = [v12 objectAtIndexedSubscript:0];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v17 = v16;
                    if ([v17 length]== 2)
                    {
                      v18 = objc_alloc(MEMORY[0x277CCACA8]);
                      v19 = [v17 uppercaseString];
                      v13 = [v18 initWithFormat:@"%@ %@", v11, v19];
                    }

                    else
                    {
                      v19 = symptomsLogHandle();
                      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "Country code has unexpected length", buf, 2u);
                      }

                      v13 = 0;
                    }
                  }

                  else
                  {
                    v17 = symptomsLogHandle();
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "Country code is not a string", buf, 2u);
                    }

                    v13 = 0;
                  }
                }

                else
                {
                  v16 = symptomsLogHandle();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "Country codes from bundle are empty", buf, 2u);
                  }

                  v13 = 0;
                }

                goto LABEL_28;
              }
            }
          }

          v20 = symptomsLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v9;
            _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "Error fetching country code from bundle: %@", buf, 0xCu);
          }
        }

        v13 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }
  }

  v11 = symptomsLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Error fetching carrier name from bundle: %@", buf, 0xCu);
  }

  v13 = 0;
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)fetchMCCMNCHomeCarrierNameForContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CoreTelephonyShim sharedInstance];
  v15 = 0;
  v5 = [v4 copyMobileCountryCode:v3 error:&v15];
  v6 = v15;

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    v9 = symptomsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch MCC: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = +[CoreTelephonyShim sharedInstance];
    v14 = 0;
    v9 = [v8 copyMobileNetworkCode:v3 error:&v14];
    v6 = v14;

    if (!v6 && v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown (mcc=%@, mnc=%@)", v5, v9];
      goto LABEL_15;
    }

    v11 = symptomsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch MNC: %@", buf, 0xCu);
    }
  }

  v10 = 0;
LABEL_15:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)fetchHomeCarrier
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(WirelessTechnologyProfile *)self dataContext];
  if (v3)
  {
LABEL_5:
    v6 = [WirelessTechnologyProfile fetchFormattedHomeCarrierNameForContext:v3];
    v5 = v6;
    if (v6)
    {
      v5 = v6;
      v7 = v5;
    }

    else
    {
      v8 = [WirelessTechnologyProfile fetchMCCMNCHomeCarrierNameForContext:v3];
      v9 = v8;
      v10 = @"Unknown";
      if (v8)
      {
        v10 = v8;
      }

      v7 = v10;
    }

    goto LABEL_13;
  }

  v4 = +[CoreTelephonyShim sharedInstance];
  v14 = 0;
  v3 = [v4 getCurrentDataSubscriptionContextSync:&v14];
  v5 = v14;

  if (!v5 && v3)
  {
    [(WirelessTechnologyProfile *)self setDataContext:v3];
    goto LABEL_5;
  }

  v11 = symptomsLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Error while fetching data context: %@", buf, 0xCu);
  }

  v7 = @"Unknown";
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)updateHomeCarrier
{
  v3 = symptomsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Received notification for home carrier, updating value", v5, 2u);
  }

  v4 = [(WirelessTechnologyProfile *)self fetchHomeCarrier];
  [(WirelessTechnologyProfile *)self setHomeCarrier:v4];
}

- (void)subscriptionInfoDidChange
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[CoreTelephonyShim sharedInstance];
  v16 = 0;
  v4 = [v3 getCurrentDataSubscriptionContextSync:&v16];
  v5 = v16;

  v6 = symptomsLogHandle();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Error while fetching data context: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = [(WirelessTechnologyProfile *)self dataContext];
      v10 = [v9 uuid];
      v11 = [v4 uuid];
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "subscriptionInfoDidChange: %@ -> %@", buf, 0x16u);
    }

    if (v4)
    {
      v12 = [v4 uuid];
      v13 = [(WirelessTechnologyProfile *)self dataContext];
      v14 = [v13 uuid];
      v15 = [v12 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        [(WirelessTechnologyProfile *)self setDataContext:v4];
        [(WirelessTechnologyProfile *)self updateHomeCarrier];
      }
    }

    else
    {
      [(WirelessTechnologyProfile *)self setDataContext:0];
      [(WirelessTechnologyProfile *)self setHomeCarrier:@"Unknown"];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)currentDataSimChanged:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = symptomsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(WirelessTechnologyProfile *)self dataContext];
    v7 = [v6 uuid];
    v8 = [v4 uuid];
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "currentDataSimChanged: %@ -> %@", &v14, 0x16u);
  }

  if (v4)
  {
    v9 = [v4 uuid];
    v10 = [(WirelessTechnologyProfile *)self dataContext];
    v11 = [v10 uuid];
    v12 = [v9 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      [(WirelessTechnologyProfile *)self setDataContext:v4];
      [(WirelessTechnologyProfile *)self updateHomeCarrier];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = symptomsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uuid];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "carrierBundleChange: %@", &v12, 0xCu);
  }

  v7 = [v4 uuid];
  v8 = [(WirelessTechnologyProfile *)self dataContext];
  v9 = [v8 uuid];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    [(WirelessTechnologyProfile *)self updateHomeCarrier];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end