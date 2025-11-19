@interface NEAppPush
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)overlapsWithConfiguration:(id)a3;
- (NEAppPush)init;
- (NEAppPush)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEAppPush

- (BOOL)overlapsWithConfiguration:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(NEAppPush *)self matchSSIDs];
  v7 = [v5 setWithArray:v6];

  v8 = MEMORY[0x1E695DFD8];
  v9 = [v4 matchSSIDs];
  v10 = [v8 setWithArray:v9];

  if (([v10 intersectsSet:v7] & 1) == 0)
  {
    v11 = [(NEAppPush *)self matchPrivateLTENetworks];
    v12 = [v4 matchPrivateLTENetworks];
    v13 = v11;
    v14 = v12;
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
    v56 = v4;
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
      v34 = [v33 mobileCountryCode];
      v35 = [v27 mobileCountryCode];
      if ([v34 isEqual:v35])
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
        v4 = v56;
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

    v36 = [v33 mobileNetworkCode];
    v37 = [v27 mobileNetworkCode];
    if (![v36 isEqual:v37])
    {
      v44 = 0;
      goto LABEL_35;
    }

    v59 = [v33 trackingAreaCode];
    if (v59 || ([v27 trackingAreaCode], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v38 = [v33 trackingAreaCode];
      [v27 trackingAreaCode];
      v39 = v30;
      v40 = v31;
      v42 = v41 = v27;
      v60 = [v38 isEqual:v42];

      v27 = v41;
      v31 = v40;
      v30 = v39;

      v28 = v57;
      v43 = v59;
      if (v59)
      {
LABEL_34:

        v44 = v60;
LABEL_35:

        if (v44)
        {

          LOBYTE(self) = 1;
          v7 = v55;
          v4 = v56;
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

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEAppPush *)self matchSSIDs];
  if ([v5 count])
  {
    goto LABEL_4;
  }

  v6 = [(NEAppPush *)self matchPrivateLTENetworks];
  if ([v6 count])
  {

LABEL_4:
    goto LABEL_5;
  }

  v50 = [(NEAppPush *)self matchEthernet];

  if (!v50)
  {
    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = self;
      _os_log_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_DEFAULT, "%@ no network matching configuration found", buf, 0xCu);
    }

    [(NEAppPush *)self setEnabled:0];
  }

LABEL_5:
  v7 = [(NEAppPush *)self matchSSIDs];
  v8 = [v7 count];

  if (v8 < 0xB)
  {
    v10 = [(NEAppPush *)self matchPrivateLTENetworks];
    v11 = [v10 count];

    if (v11 < 0xB)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v15 = [(NEAppPush *)self matchSSIDs];
      v16 = [v15 countByEnumeratingWithState:&v60 objects:v65 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v60 + 1) + 8 * i);
            if (!isa_nsstring(v20) || ![v20 length])
            {
              [NEConfiguration addError:v4 toList:?];

              goto LABEL_10;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v60 objects:v65 count:16];
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
            v26 = [v25 mobileCountryCode];
            v27 = v26;
            if (!self || !isa_nsstring(v26) || [v27 length] != 3)
            {
              v52 = v27;
              v53 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_61;
            }

            v28 = [*(v23 + 2824) decimalDigitCharacterSet];
            v29 = [v28 invertedSet];

            v30 = [v27 rangeOfCharacterFromSet:v29];
            if (v30 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v53 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_62;
            }

            v31 = [v25 mobileNetworkCode];
            if (!isa_nsstring(v31) || [v31 length] != 3 && objc_msgSend(v31, "length") != 2)
            {
              v53 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_60;
            }

            v32 = v23;
            v33 = [*(v23 + 2824) decimalDigitCharacterSet];
            v34 = [v33 invertedSet];

            v35 = [v31 rangeOfCharacterFromSet:v34];
            if (v35 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v53 = @"Invalid MCC/MNC in Private LTE configuration";
              goto LABEL_63;
            }

            v36 = [v25 trackingAreaCode];
            v23 = v32;
            if (v36)
            {
              v27 = v36;
              v31 = [v25 trackingAreaCode];
              if (!isa_nsstring(v31))
              {
                goto LABEL_59;
              }

              v37 = [*(v32 + 2824) decimalDigitCharacterSet];
              v38 = [v37 invertedSet];

              if ([v31 rangeOfCharacterFromSet:v38] != 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(v31, "length"))
              {

LABEL_59:
                v53 = @"Invalid TAC in Private LTE configuration";
LABEL_60:
                v52 = v27;

                v27 = v31;
LABEL_61:

                v27 = v52;
LABEL_62:

LABEL_63:
                [NEConfiguration addError:v53 toList:v4];

                goto LABEL_10;
              }

              v39 = [v31 length];

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

      v40 = [(NEAppPush *)self providerBundleIdentifier];
      v41 = [v40 length];

      if (v41)
      {
        v42 = [(NEAppPush *)self providerConfiguration];
        if (!v42)
        {
          goto LABEL_44;
        }

        v43 = v42;
        v44 = [(NEAppPush *)self providerConfiguration];
        v45 = [v44 allKeys];
        v46 = [v45 count];

        if (!v46)
        {
LABEL_44:
          v47 = ne_log_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v67 = self;
            _os_log_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_INFO, "%@ no provider configuration found", buf, 0xCu);
          }
        }

        v48 = [(NEAppPush *)self pluginType];
        v49 = [v48 length];

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

  [NEConfiguration addError:v9 toList:v4];
LABEL_10:
  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEAppPush allocWithZone:?]];
  [(NEAppPush *)v4 setEnabled:[(NEAppPush *)self isEnabled]];
  v5 = [(NEAppPush *)self matchSSIDs];
  [(NEAppPush *)v4 setMatchSSIDs:v5];

  v6 = [(NEAppPush *)self providerConfiguration];
  [(NEAppPush *)v4 setProviderConfiguration:v6];

  v7 = [(NEAppPush *)self providerBundleIdentifier];
  [(NEAppPush *)v4 setProviderBundleIdentifier:v7];

  v8 = [(NEAppPush *)self pluginType];
  [(NEAppPush *)v4 setPluginType:v8];

  v9 = [(NEAppPush *)self matchPrivateLTENetworks];
  [(NEAppPush *)v4 setMatchPrivateLTENetworks:v9];

  [(NEAppPush *)v4 setMatchEthernet:[(NEAppPush *)self matchEthernet]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeBool:-[NEAppPush isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  v4 = [(NEAppPush *)self matchSSIDs];
  [v9 encodeObject:v4 forKey:@"MatchSSIDs"];

  v5 = [(NEAppPush *)self providerConfiguration];
  [v9 encodeObject:v5 forKey:@"ProviderConfig"];

  v6 = [(NEAppPush *)self providerBundleIdentifier];
  [v9 encodeObject:v6 forKey:@"ProviderBundleID"];

  v7 = [(NEAppPush *)self pluginType];
  [v9 encodeObject:v7 forKey:@"PluginType"];

  v8 = [(NEAppPush *)self matchPrivateLTENetworks];
  [v9 encodeObject:v8 forKey:@"MatchPLTEs"];

  [v9 encodeBool:-[NEAppPush matchEthernet](self forKey:{"matchEthernet"), @"MatchEthernet"}];
}

- (NEAppPush)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = NEAppPush;
  v5 = [(NEAppPush *)&v29 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MatchSSIDs"];
    matchSSIDs = v5->_matchSSIDs;
    v5->_matchSSIDs = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"ProviderConfig"];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProviderBundleID"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    pluginType = v5->_pluginType;
    v5->_pluginType = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"MatchPLTEs"];
    matchPrivateLTENetworks = v5->_matchPrivateLTENetworks;
    v5->_matchPrivateLTENetworks = v26;

    v5->_matchEthernet = [v4 decodeBoolForKey:@"MatchEthernet"];
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