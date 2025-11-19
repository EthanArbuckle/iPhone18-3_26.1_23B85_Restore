@interface AMSContractBagShim
+ (id)_callSelector:(SEL)a3 onBagContract:(id)a4;
- (AMSContractBagShim)initWithBagContract:(id)a3;
- (SEL)_selectorForBagKey:(id)a3;
- (id)_bagValueForBagKey:(id)a3 bagValueType:(unint64_t)a4;
- (void)createSnapshotWithCompletion:(id)a3;
@end

@implementation AMSContractBagShim

- (AMSContractBagShim)initWithBagContract:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSContractBagShim;
  v6 = [(AMSContractBagShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagContract, a3);
  }

  return v7;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AMSError(205, @"Not Supported", @"AMSContractBagShim doesn't support creating a snapshot.", 0);
  (*(a3 + 2))(v4, 0, v5);
}

- (id)_bagValueForBagKey:(id)a3 bagValueType:(unint64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(AMSContractBagShim *)self bagContract];

  if (v8)
  {
    v9 = [(AMSContractBagShim *)self bagContract];
    [v7 addObject:v9];
  }

  v10 = NSSelectorFromString(&cfstr_Mescalcontract.isa);
  v11 = [(AMSContractBagShim *)self bagContract];
  if (objc_opt_respondsToSelector())
  {
    v12 = objc_opt_class();
    v13 = [(AMSContractBagShim *)self bagContract];
    v14 = [v12 _callSelector:v10 onBagContract:v13];

    if (v14)
    {
      [v7 addObject:v14];
    }
  }

  else
  {

    v14 = 0;
  }

  v15 = NSSelectorFromString(&cfstr_Metricscontrac.isa);
  v16 = [(AMSContractBagShim *)self bagContract];
  v31 = a4;
  v33 = v14;
  if (objc_opt_respondsToSelector())
  {
    v17 = objc_opt_class();
    v18 = [(AMSContractBagShim *)self bagContract];
    v19 = [v17 _callSelector:v15 onBagContract:v18];

    if (v19)
    {
      v32 = v19;
      [v7 addObject:v19];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v32 = 0;
LABEL_12:
  v20 = [(AMSContractBagShim *)self _selectorForBagKey:v6];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v34 + 1) + 8 * i);
        if (!v20 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          if (![v6 isEqualToString:@"metrics/metricsUrl"])
          {
            continue;
          }

          v20 = NSSelectorFromString(&cfstr_Metricsurl.isa);
          if (!v20 || (objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }
        }

        v27 = [objc_opt_class() _callSelector:v20 onBagContract:v26];
        if (v27)
        {
          v29 = v27;
          v28 = v21;
          goto LABEL_27;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v28 = AMSError(204, @"Bag Value Missing", @"The underlying bag contract returned nil instead of an AMSBagValue instance.", 0);
  v29 = [AMSBagValue failingBagValueWithKey:v6 valueType:v31 error:v28];
LABEL_27:

  return v29;
}

+ (id)_callSelector:(SEL)a3 onBagContract:(id)a4
{
  v5 = a4;
  v6 = ([v5 methodForSelector:a3])(v5, a3);

  return v6;
}

- (SEL)_selectorForBagKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"appleMusicDeviceOfferDeepLink"])
  {
    v4 = @"appleMusicDeviceOfferDeepLink";
  }

  else if ([v3 isEqualToString:@"iCloudDeviceOfferDeepLink"])
  {
    v4 = @"iCloudDeviceOfferDeepLink";
  }

  else if ([v3 isEqualToString:@"family-info"])
  {
    v4 = @"familyInfoURL";
  }

  else if ([v3 isEqualToString:@"storeplatform-lookup-url"])
  {
    v4 = @"personalizedLookupURL";
  }

  else if ([v3 isEqualToString:@"storeplatform-lookup-url-unpersonalized"])
  {
    v4 = @"unpersonalizedLookupURL";
  }

  else if ([v3 isEqualToString:@"sign-sap-setup-cert"])
  {
    v4 = @"mescalCertificateURL";
  }

  else if ([v3 isEqualToString:@"primeUrl"])
  {
    v4 = @"mescalPrimingURL";
  }

  else if ([v3 isEqualToString:@"sign-sap-setup"])
  {
    v4 = @"mescalSetupURL";
  }

  else if ([v3 isEqualToString:@"signed-actions"])
  {
    v4 = @"mescalSignedActions";
  }

  else if ([v3 isEqualToString:@"sign-sap-request"])
  {
    v4 = @"mescalSignSapRequests";
  }

  else if ([v3 isEqualToString:@"sign-sap-response"])
  {
    v4 = @"mescalSignSapResponses";
  }

  else if ([v3 isEqualToString:@"metrics"])
  {
    v4 = @"metricsDictionary";
  }

  else if ([v3 isEqualToString:@"metrics/metricsUrl"])
  {
    v4 = @"metricsURL";
  }

  else if ([v3 isEqualToString:@"aps-enabled-patterns"])
  {
    v4 = @"apsEnabledPatterns";
  }

  else if ([v3 isEqualToString:@"aps-sampling-percentage"])
  {
    v4 = @"apsSamplingPercent";
  }

  else if ([v3 isEqualToString:@"aps-allowed-product-type"])
  {
    v4 = @"apsAllowedProductTypes";
  }

  else if ([v3 isEqualToString:@"guid-urls/regex"])
  {
    v4 = @"guidRegexes";
  }

  else if ([v3 isEqualToString:@"guid-urls/schemes"])
  {
    v4 = @"guidSchemes";
  }

  else if ([v3 isEqualToString:@"storefront-header-suffix"])
  {
    v4 = @"storefrontSuffix";
  }

  else if ([v3 isEqualToString:@"TLSSamplingPercentage"])
  {
    v4 = @"TLSSamplingPercentage";
  }

  else if ([v3 isEqualToString:@"TLSSamplingSessionDuration"])
  {
    v4 = @"TLSSamplingSessionDuration";
  }

  else if ([v3 isEqualToString:@"TFOSamplingPercentage"])
  {
    v4 = @"TFOSamplingPercentage";
  }

  else if ([v3 isEqualToString:@"TFOSamplingSessionDuration"])
  {
    v4 = @"TFOSamplingSessionDuration";
  }

  else if ([v3 isEqualToString:@"schemesThatOverrideTrustedDomains"])
  {
    v4 = @"schemesThatOverrideTrustedDomains";
  }

  else
  {
    if (![v3 isEqualToString:@"trustedDomains"])
    {
      v5 = 0;
      goto LABEL_52;
    }

    v4 = @"trustedDomains";
  }

  v5 = NSSelectorFromString(&v4->isa);
LABEL_52:

  return v5;
}

@end