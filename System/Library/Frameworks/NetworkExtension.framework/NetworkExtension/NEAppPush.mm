@interface NEAppPush
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)overlapsWithConfiguration:(id)configuration;
- (NEAppPush)init;
- (NEAppPush)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEAppPush

- (BOOL)overlapsWithConfiguration:(id)configuration
{
  v71 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = MEMORY[0x1E695DFD8];
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  v7 = [v5 setWithArray:matchSSIDs];

  v8 = MEMORY[0x1E695DFD8];
  matchSSIDs2 = [configurationCopy matchSSIDs];
  v10 = [v8 setWithArray:matchSSIDs2];

  if (([v10 intersectsSet:v7] & 1) == 0)
  {
    matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
    matchPrivateLTENetworks2 = [configurationCopy matchPrivateLTENetworks];
    v13 = matchPrivateLTENetworks;
    v14 = matchPrivateLTENetworks2;
    v15 = v14;
    if (!self || (LOBYTE(self) = 0, !v13) || !v14)
    {
LABEL_45:

      goto LABEL_46;
    }

    if (![v13 count] || !objc_msgSend(v15, "count"))
    {
      LOBYTE(self) = 0;
      goto LABEL_45;
    }

    v16 = [v13 count];
    v17 = [v15 count];
    if (v16 >= v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = v13;
    }

    if (v16 >= v17)
    {
      v19 = v13;
    }

    else
    {
      v19 = v15;
    }

    v20 = v18;
    v21 = v19;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v22 = v20;
    v48 = [v22 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (!v48)
    {
      LOBYTE(self) = 0;
      goto LABEL_44;
    }

    v23 = *v62;
    v55 = v7;
    v56 = configurationCopy;
    v53 = v13;
    v54 = v10;
    v51 = v21;
    v52 = v15;
    v50 = v22;
    v47 = *v62;
LABEL_16:
    v24 = 0;
LABEL_17:
    if (*v62 != v23)
    {
      objc_enumerationMutation(v22);
    }

    v49 = v24;
    v25 = *(*(&v61 + 1) + 8 * v24);
    v26 = v21;
    v27 = v25;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (!v29)
    {
      goto LABEL_38;
    }

    v30 = v29;
    v31 = *v66;
    v57 = v28;
LABEL_21:
    v32 = 0;
    while (1)
    {
      if (*v66 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v65 + 1) + 8 * v32);
      mobileCountryCode = [v33 mobileCountryCode];
      mobileCountryCode2 = [v27 mobileCountryCode];
      if ([mobileCountryCode isEqual:mobileCountryCode2])
      {
        break;
      }

LABEL_36:
      if (v30 == ++v32)
      {
        v30 = [v28 countByEnumeratingWithState:&v65 objects:v70 count:16];
        if (v30)
        {
          goto LABEL_21;
        }

LABEL_38:

        v24 = v49 + 1;
        v7 = v55;
        configurationCopy = v56;
        v13 = v53;
        v10 = v54;
        v21 = v51;
        v15 = v52;
        v22 = v50;
        v23 = v47;
        if (v49 + 1 == v48)
        {
          LOBYTE(self) = 0;
          v48 = [v50 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (!v48)
          {
LABEL_44:

            goto LABEL_45;
          }

          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    mobileNetworkCode = [v33 mobileNetworkCode];
    mobileNetworkCode2 = [v27 mobileNetworkCode];
    if (![mobileNetworkCode isEqual:mobileNetworkCode2])
    {
      v44 = 0;
      goto LABEL_35;
    }

    trackingAreaCode = [v33 trackingAreaCode];
    if (trackingAreaCode || ([v27 trackingAreaCode], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      trackingAreaCode2 = [v33 trackingAreaCode];
      [v27 trackingAreaCode];
      v39 = v30;
      v40 = v31;
      v42 = v41 = v27;
      v60 = [trackingAreaCode2 isEqual:v42];

      v27 = v41;
      v31 = v40;
      v30 = v39;

      v28 = v57;
      v43 = trackingAreaCode;
      if (trackingAreaCode)
      {
LABEL_34:

        v44 = v60;
LABEL_35:

        if (v44)
        {

          LOBYTE(self) = 1;
          v7 = v55;
          configurationCopy = v56;
          v13 = v53;
          v10 = v54;
          v21 = v51;
          v15 = v52;
          v22 = v50;
          goto LABEL_44;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v58 = 0;
      v60 = 1;
      v43 = 0;
    }

    goto LABEL_34;
  }

  LOBYTE(self) = 1;
LABEL_46:

  v45 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v68 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  if ([matchSSIDs count])
  {
    goto LABEL_4;
  }

  matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
  if ([matchPrivateLTENetworks count])
  {

LABEL_4:
    goto LABEL_5;
  }

  matchEthernet = [(NEAppPush *)self matchEthernet];

  if (!matchEthernet)
  {
    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_DEFAULT, "%@ no network matching configuration found", buf, 0xCu);
    }

    [(NEAppPush *)self setEnabled:0];
  }

LABEL_5:
  matchSSIDs2 = [(NEAppPush *)self matchSSIDs];
  v8 = [matchSSIDs2 count];

  if (v8 < 0xB)
  {
    matchPrivateLTENetworks2 = [(NEAppPush *)self matchPrivateLTENetworks];
    v11 = [matchPrivateLTENetworks2 count];

    if (v11 < 0xB)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      matchSSIDs3 = [(NEAppPush *)self matchSSIDs];
      v16 = [matchSSIDs3 countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v61;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v61 != v18)
            {
              objc_enumerationMutation(matchSSIDs3);
            }

            v20 = *(*(&v60 + 1) + 8 * i);
            if (!isa_nsstring(v20) || ![v20 length])
            {
              [NEConfiguration addError:errorsCopy toList:?];

              goto LABEL_10;
            }
          }

          v17 = [matchSSIDs3 countByEnumeratingWithState:&v60 objects:v65 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = [(NEAppPush *)self matchPrivateLTENetworks];
      v21 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v21)
      {
        v22 = v21;
        v54 = *v57;
        v23 = 0x1E696A000uLL;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v57 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v56 + 1) + 8 * j);
            mobileCountryCode = [v25 mobileCountryCode];
            v27 = mobileCountryCode;
            if (!self || !isa_nsstring(mobileCountryCode) || [v27 length] != 3)
            {
              v52 = v27;
              v53 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_61;
            }

            decimalDigitCharacterSet = [*(v23 + 2824) decimalDigitCharacterSet];
            invertedSet = [decimalDigitCharacterSet invertedSet];

            v30 = [v27 rangeOfCharacterFromSet:invertedSet];
            if (v30 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v53 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_62;
            }

            mobileNetworkCode = [v25 mobileNetworkCode];
            if (!isa_nsstring(mobileNetworkCode) || [mobileNetworkCode length] != 3 && objc_msgSend(mobileNetworkCode, "length") != 2)
            {
              v53 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_60;
            }

            v32 = v23;
            decimalDigitCharacterSet2 = [*(v23 + 2824) decimalDigitCharacterSet];
            invertedSet2 = [decimalDigitCharacterSet2 invertedSet];

            v35 = [mobileNetworkCode rangeOfCharacterFromSet:invertedSet2];
            if (v35 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v53 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_63;
            }

            trackingAreaCode = [v25 trackingAreaCode];
            v23 = v32;
            if (trackingAreaCode)
            {
              v27 = trackingAreaCode;
              mobileNetworkCode = [v25 trackingAreaCode];
              if (!isa_nsstring(mobileNetworkCode))
              {
                goto LABEL_59;
              }

              decimalDigitCharacterSet3 = [*(v32 + 2824) decimalDigitCharacterSet];
              invertedSet3 = [decimalDigitCharacterSet3 invertedSet];

              if ([mobileNetworkCode rangeOfCharacterFromSet:invertedSet3] != 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(mobileNetworkCode, "length"))
              {

LABEL_59:
                v53 = @"Invalid TAC in Private LTE configuration";
LABEL_60:
                v52 = v27;

                v27 = mobileNetworkCode;
LABEL_61:

                v27 = v52;
LABEL_62:

LABEL_63:
                [NEConfiguration addError:v53 toList:errorsCopy];

                goto LABEL_10;
              }

              v39 = [mobileNetworkCode length];

              if (v39 > 5)
              {
                v53 = @"Invalid TAC in Private LTE configuration";
                goto LABEL_63;
              }
            }
          }

          v22 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      providerBundleIdentifier = [(NEAppPush *)self providerBundleIdentifier];
      v41 = [providerBundleIdentifier length];

      if (v41)
      {
        providerConfiguration = [(NEAppPush *)self providerConfiguration];
        if (!providerConfiguration)
        {
          goto LABEL_44;
        }

        v43 = providerConfiguration;
        providerConfiguration2 = [(NEAppPush *)self providerConfiguration];
        allKeys = [providerConfiguration2 allKeys];
        v46 = [allKeys count];

        if (!v46)
        {
LABEL_44:
          v47 = ne_log_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy2 = self;
            _os_log_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_INFO, "%@ no provider configuration found", buf, 0xCu);
          }
        }

        pluginType = [(NEAppPush *)self pluginType];
        v49 = [pluginType length];

        if (v49)
        {
          v12 = 1;
          goto LABEL_11;
        }

        v9 = @"missing plugin type";
      }

      else
      {
        v9 = @"provider bundle identifier not found";
      }
    }

    else
    {
      v9 = @"A configuration can have maximum 10 Private LTE networks";
    }
  }

  else
  {
    v9 = @"A configuration can have maximum 10 SSIDs";
  }

  [NEConfiguration addError:v9 toList:errorsCopy];
LABEL_10:
  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEAppPush allocWithZone:?]];
  [(NEAppPush *)v4 setEnabled:[(NEAppPush *)self isEnabled]];
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  [(NEAppPush *)v4 setMatchSSIDs:matchSSIDs];

  providerConfiguration = [(NEAppPush *)self providerConfiguration];
  [(NEAppPush *)v4 setProviderConfiguration:providerConfiguration];

  providerBundleIdentifier = [(NEAppPush *)self providerBundleIdentifier];
  [(NEAppPush *)v4 setProviderBundleIdentifier:providerBundleIdentifier];

  pluginType = [(NEAppPush *)self pluginType];
  [(NEAppPush *)v4 setPluginType:pluginType];

  matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
  [(NEAppPush *)v4 setMatchPrivateLTENetworks:matchPrivateLTENetworks];

  [(NEAppPush *)v4 setMatchEthernet:[(NEAppPush *)self matchEthernet]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEAppPush isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  matchSSIDs = [(NEAppPush *)self matchSSIDs];
  [coderCopy encodeObject:matchSSIDs forKey:@"MatchSSIDs"];

  providerConfiguration = [(NEAppPush *)self providerConfiguration];
  [coderCopy encodeObject:providerConfiguration forKey:@"ProviderConfig"];

  providerBundleIdentifier = [(NEAppPush *)self providerBundleIdentifier];
  [coderCopy encodeObject:providerBundleIdentifier forKey:@"ProviderBundleID"];

  pluginType = [(NEAppPush *)self pluginType];
  [coderCopy encodeObject:pluginType forKey:@"PluginType"];

  matchPrivateLTENetworks = [(NEAppPush *)self matchPrivateLTENetworks];
  [coderCopy encodeObject:matchPrivateLTENetworks forKey:@"MatchPLTEs"];

  [coderCopy encodeBool:-[NEAppPush matchEthernet](self forKey:{"matchEthernet"), @"MatchEthernet"}];
}

- (NEAppPush)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = NEAppPush;
  v5 = [(NEAppPush *)&v29 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MatchSSIDs"];
    matchSSIDs = v5->_matchSSIDs;
    v5->_matchSSIDs = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"ProviderConfig"];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProviderBundleID"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    pluginType = v5->_pluginType;
    v5->_pluginType = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"MatchPLTEs"];
    matchPrivateLTENetworks = v5->_matchPrivateLTENetworks;
    v5->_matchPrivateLTENetworks = v26;

    v5->_matchEthernet = [coderCopy decodeBoolForKey:@"MatchEthernet"];
  }

  return v5;
}

- (NEAppPush)init
{
  v5.receiver = self;
  v5.super_class = NEAppPush;
  v2 = [(NEAppPush *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NEAppPush *)v2 setEnabled:0];
  }

  return v3;
}

@end