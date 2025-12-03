@interface AMSContractBagShim
+ (id)_callSelector:(SEL)selector onBagContract:(id)contract;
- (AMSContractBagShim)initWithBagContract:(id)contract;
- (SEL)_selectorForBagKey:(id)key;
- (id)_bagValueForBagKey:(id)key bagValueType:(unint64_t)type;
- (void)createSnapshotWithCompletion:(id)completion;
@end

@implementation AMSContractBagShim

- (AMSContractBagShim)initWithBagContract:(id)contract
{
  contractCopy = contract;
  v9.receiver = self;
  v9.super_class = AMSContractBagShim;
  v6 = [(AMSContractBagShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagContract, contract);
  }

  return v7;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AMSError(205, @"Not Supported", @"AMSContractBagShim doesn't support creating a snapshot.", 0);
  (*(completion + 2))(completionCopy, 0, v5);
}

- (id)_bagValueForBagKey:(id)key bagValueType:(unint64_t)type
{
  v39 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  bagContract = [(AMSContractBagShim *)self bagContract];

  if (bagContract)
  {
    bagContract2 = [(AMSContractBagShim *)self bagContract];
    [v7 addObject:bagContract2];
  }

  v10 = NSSelectorFromString(&cfstr_Mescalcontract.isa);
  bagContract3 = [(AMSContractBagShim *)self bagContract];
  if (objc_opt_respondsToSelector())
  {
    v12 = objc_opt_class();
    bagContract4 = [(AMSContractBagShim *)self bagContract];
    v14 = [v12 _callSelector:v10 onBagContract:bagContract4];

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
  bagContract5 = [(AMSContractBagShim *)self bagContract];
  typeCopy = type;
  v33 = v14;
  if (objc_opt_respondsToSelector())
  {
    v17 = objc_opt_class();
    bagContract6 = [(AMSContractBagShim *)self bagContract];
    v19 = [v17 _callSelector:v15 onBagContract:bagContract6];

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
  v20 = [(AMSContractBagShim *)self _selectorForBagKey:keyCopy];
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
          if (![keyCopy isEqualToString:@"metrics/metricsUrl"])
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
  v29 = [AMSBagValue failingBagValueWithKey:keyCopy valueType:typeCopy error:v28];
LABEL_27:

  return v29;
}

+ (id)_callSelector:(SEL)selector onBagContract:(id)contract
{
  contractCopy = contract;
  v6 = ([contractCopy methodForSelector:selector])(contractCopy, selector);

  return v6;
}

- (SEL)_selectorForBagKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"appleMusicDeviceOfferDeepLink"])
  {
    v4 = @"appleMusicDeviceOfferDeepLink";
  }

  else if ([keyCopy isEqualToString:@"iCloudDeviceOfferDeepLink"])
  {
    v4 = @"iCloudDeviceOfferDeepLink";
  }

  else if ([keyCopy isEqualToString:@"family-info"])
  {
    v4 = @"familyInfoURL";
  }

  else if ([keyCopy isEqualToString:@"storeplatform-lookup-url"])
  {
    v4 = @"personalizedLookupURL";
  }

  else if ([keyCopy isEqualToString:@"storeplatform-lookup-url-unpersonalized"])
  {
    v4 = @"unpersonalizedLookupURL";
  }

  else if ([keyCopy isEqualToString:@"sign-sap-setup-cert"])
  {
    v4 = @"mescalCertificateURL";
  }

  else if ([keyCopy isEqualToString:@"primeUrl"])
  {
    v4 = @"mescalPrimingURL";
  }

  else if ([keyCopy isEqualToString:@"sign-sap-setup"])
  {
    v4 = @"mescalSetupURL";
  }

  else if ([keyCopy isEqualToString:@"signed-actions"])
  {
    v4 = @"mescalSignedActions";
  }

  else if ([keyCopy isEqualToString:@"sign-sap-request"])
  {
    v4 = @"mescalSignSapRequests";
  }

  else if ([keyCopy isEqualToString:@"sign-sap-response"])
  {
    v4 = @"mescalSignSapResponses";
  }

  else if ([keyCopy isEqualToString:@"metrics"])
  {
    v4 = @"metricsDictionary";
  }

  else if ([keyCopy isEqualToString:@"metrics/metricsUrl"])
  {
    v4 = @"metricsURL";
  }

  else if ([keyCopy isEqualToString:@"aps-enabled-patterns"])
  {
    v4 = @"apsEnabledPatterns";
  }

  else if ([keyCopy isEqualToString:@"aps-sampling-percentage"])
  {
    v4 = @"apsSamplingPercent";
  }

  else if ([keyCopy isEqualToString:@"aps-allowed-product-type"])
  {
    v4 = @"apsAllowedProductTypes";
  }

  else if ([keyCopy isEqualToString:@"guid-urls/regex"])
  {
    v4 = @"guidRegexes";
  }

  else if ([keyCopy isEqualToString:@"guid-urls/schemes"])
  {
    v4 = @"guidSchemes";
  }

  else if ([keyCopy isEqualToString:@"storefront-header-suffix"])
  {
    v4 = @"storefrontSuffix";
  }

  else if ([keyCopy isEqualToString:@"TLSSamplingPercentage"])
  {
    v4 = @"TLSSamplingPercentage";
  }

  else if ([keyCopy isEqualToString:@"TLSSamplingSessionDuration"])
  {
    v4 = @"TLSSamplingSessionDuration";
  }

  else if ([keyCopy isEqualToString:@"TFOSamplingPercentage"])
  {
    v4 = @"TFOSamplingPercentage";
  }

  else if ([keyCopy isEqualToString:@"TFOSamplingSessionDuration"])
  {
    v4 = @"TFOSamplingSessionDuration";
  }

  else if ([keyCopy isEqualToString:@"schemesThatOverrideTrustedDomains"])
  {
    v4 = @"schemesThatOverrideTrustedDomains";
  }

  else
  {
    if (![keyCopy isEqualToString:@"trustedDomains"])
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