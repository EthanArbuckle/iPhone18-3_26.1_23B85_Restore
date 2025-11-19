@interface SLRemoteService
+ (id)_cachedServiceWithType:(id)a3;
+ (id)_cachedServices;
- (BOOL)_isSupportedURL:(id)a3 withSupportedSchemes:(id)a4;
- (BOOL)_isValidAuthenicationStyleIdentifier:(id)a3;
- (BOOL)infoDictHasRequiredKeys:(id)a3;
- (BOOL)supportsImageURL:(id)a3;
- (BOOL)supportsVideoURL:(id)a3;
- (NSBundle)serviceBundle;
- (SLRemoteService)initWithCoder:(id)a3;
- (SLRemoteService)initWithServiceBundle:(id)a3 socialInfoDictionary:(id)a4;
- (id)_activityImageForImageResourceName:(id)a3 inBundle:(id)a4;
- (id)_requiredInfoDictKeys;
- (id)_setFromArrayWithKey:(id)a3 inDictionary:(id)a4;
- (id)activityImage;
- (id)composeViewController;
- (id)description;
- (id)integerPropertyKeyMappings;
- (int64_t)_authenticationStyleFromAuthenticationStyleIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLRemoteService

- (SLRemoteService)initWithServiceBundle:(id)a3 socialInfoDictionary:(id)a4
{
  v8 = a3;
  v9 = a4;
  v36.receiver = self;
  v36.super_class = SLRemoteService;
  v10 = [(SLRemoteService *)&v36 init];
  if (!v10)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
    v29 = v4;
    v30 = @"Bundle cannot be nil for remote service";
LABEL_12:
    v31 = 3;
LABEL_14:
    _SLLog(v29, v31, v30);
LABEL_15:
    v28 = 0;
    goto LABEL_16;
  }

  if (![v9 count])
  {
    v29 = v4;
    v30 = @"Social service info dictionary cannot be nil or empty";
    goto LABEL_12;
  }

  if (![(SLRemoteService *)v10 infoDictHasRequiredKeys:v9])
  {
    _SLLog(v4, 3, @"Social service info dictionary has missing or invalid required keys");
    v30 = @"Social info dict is %@";
    v29 = v4;
    v31 = 6;
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_serviceBundle, a3);
  v11 = [v8 bundleURL];
  [(SLRemoteService *)v10 setServiceBundleURL:v11];

  v12 = [v9 objectForKeyedSubscript:@"SLServiceTypeIdentifier"];
  [(SLRemoteService *)v10 setServiceTypeIdentifier:v12];

  v13 = [v9 objectForKeyedSubscript:@"SLServiceLocalizedName"];

  if (v13)
  {
    v14 = SLSocialFrameworkBundle();
    v15 = [v9 objectForKeyedSubscript:@"SLServiceLocalizedName"];
    v16 = [v14 localizedStringForKey:v15 value:&stru_1F41EC300 table:@"Localizable"];
    [(SLRemoteService *)v10 setLocalizedServiceName:v16];
  }

  v17 = [v9 objectForKeyedSubscript:@"SLServiceActivityViewIcon"];
  [(SLRemoteService *)v10 setActivityViewIconResourceName:v17];

  v18 = [v9 objectForKeyedSubscript:@"SLServiceTargetRegionChina"];
  -[SLRemoteService setServiceRegionTargetIsChina:](v10, "setServiceRegionTargetIsChina:", [v18 BOOLValue]);

  v19 = [v9 objectForKeyedSubscript:@"SLServiceAccountTypeIdentifier"];
  [(SLRemoteService *)v10 setAccountTypeIdentifier:v19];

  v20 = [v9 objectForKeyedSubscript:@"SLServiceAuthenticationStyle"];
  [(SLRemoteService *)v10 setAuthenticationStyle:[(SLRemoteService *)v10 _authenticationStyleFromAuthenticationStyleIdentifier:v20]];

  v21 = [v9 objectForKeyedSubscript:@"SLServiceAddDeviceClassToRequests"];
  -[SLRemoteService setAddDeviceClassToRequest:](v10, "setAddDeviceClassToRequest:", [v21 BOOLValue]);

  v22 = [(SLRemoteService *)v10 _setFromArrayWithKey:@"SLServiceSupportedImageAssetURLSchemes" inDictionary:v9];
  [(SLRemoteService *)v10 setSupportedImageAssetURLSchemes:v22];

  v23 = [(SLRemoteService *)v10 _setFromArrayWithKey:@"SLServiceSupportedVideoAssetURLSchemes" inDictionary:v9];
  [(SLRemoteService *)v10 setSupportedVideoAssetURLSchemes:v23];

  v24 = [v9 objectForKeyedSubscript:@"SLServiceActivityViewIcon"];

  if (v24)
  {
    v25 = [v9 objectForKeyedSubscript:@"SLServiceActivityViewIcon"];
    [(SLRemoteService *)v10 setActivityImageName:v25];
  }

  v26 = [(SLRemoteService *)v10 integerPropertyKeyMappings];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __62__SLRemoteService_initWithServiceBundle_socialInfoDictionary___block_invoke;
  v33[3] = &unk_1E8176790;
  v34 = v9;
  v27 = v10;
  v35 = v27;
  [v26 enumerateKeysAndObjectsUsingBlock:v33];

  v28 = v27;
LABEL_16:

  return v28;
}

void __62__SLRemoteService_initWithServiceBundle_socialInfoDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v5 || (v6 = objc_opt_respondsToSelector(), v7 = v5, (v6 & 1) == 0))
  {
    v7 = &unk_1F4202AA8;
  }

  [*(a1 + 40) setValue:v7 forKey:v8];
}

- (BOOL)infoDictHasRequiredKeys:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(SLRemoteService *)self _requiredInfoDictKeys];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];

        if (!v11)
        {
          _SLLog(v3, 3, @"Social Info Dictionary is missing required key %@");
          v15 = @"Social info dict is %@";
          v16 = v3;
          v17 = 6;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = [v5 objectForKeyedSubscript:@"SLServiceAuthenticationStyle"];
  v13 = [(SLRemoteService *)self _isValidAuthenicationStyleIdentifier:v12];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v6 = [v5 objectForKeyedSubscript:@"SLServiceAuthenticationStyle"];
    v15 = @"Social Info Dictionary has invalid authentication style identifier %@";
    v16 = v3;
    v17 = 3;
LABEL_13:
    _SLLog(v16, v17, v15);

    v14 = 0;
  }

  return v14;
}

- (id)_requiredInfoDictKeys
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"SLServiceTypeIdentifier";
  v4[1] = @"SLServiceLocalizedName";
  v4[2] = @"SLServiceAuthenticationStyle";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)integerPropertyKeyMappings
{
  v5[6] = *MEMORY[0x1E69E9840];
  v4[0] = @"SLServiceMaximumURLCount";
  v4[1] = @"SLServiceMaximumImageCount";
  v5[0] = @"maximumURLCount";
  v5[1] = @"maximumImageCount";
  v4[2] = @"SLServiceMaximumImageDataSize";
  v4[3] = @"SLServiceMaximumVideoCount";
  v5[2] = @"maximumImageDataSize";
  v5[3] = @"maximumVideoCount";
  v4[4] = @"SLServiceMaximumVideoDataSize";
  v4[5] = @"SLServiceMaximumVideoTimeLimit";
  v5[4] = @"maximumVideoDataSize";
  v5[5] = @"maximumVideoTimeLimit";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (BOOL)_isValidAuthenicationStyleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SLRemoteService *)self _authenticationStyleIdentifierMappings];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (int64_t)_authenticationStyleFromAuthenticationStyleIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(SLRemoteService *)self _authenticationStyleIdentifierMappings];
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 integerValue];
    }

    else
    {
      _SLLog(v3, 3, @"Invalid authentication style %@ in Social Service info dictionary");
      v9 = -1;
    }
  }

  else
  {
    _SLLog(v3, 3, @"Invalid authentication style %@ in Social Service info dictionary");
    v9 = -1;
  }

  return v9;
}

- (id)_setFromArrayWithKey:(id)a3 inDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = MEMORY[0x1E695DFD8];
      v12 = [v7 objectForKeyedSubscript:v6];
      v13 = [v11 setWithArray:v12];

      goto LABEL_6;
    }

    _SLLog(v4, 3, @"Incorrect type for SLService info key %@, must be of type NSArray");
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)_activityImageForImageResourceName:(id)a3 inBundle:(id)a4
{
  v7 = MEMORY[0x1E69DCEB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 mainScreen];
  [v10 scale];
  _UISharedImageSetPreferredImageScale();

  v11 = [MEMORY[0x1E69DCAB8] _deviceSpecificImageNamed:v9 inBundle:v8];

  v12 = [v11 _applicationIconImageForFormat:10 precomposed:1];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v15 = [(SLRemoteService *)self serviceTypeIdentifier];
    _SLLog(v4, 4, @"Unable to fetch activity image for Social XPC service %@");
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SLRemoteService *)self serviceBundleURL];
  [v4 encodeObject:v5 forKey:@"serviceBundleURL"];

  [v4 encodeBool:-[SLRemoteService serviceRegionTargetIsChina](self forKey:{"serviceRegionTargetIsChina"), @"serviceRegionTargetIsChina"}];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SLRemoteService authenticationStyle](self, "authenticationStyle")}];
  [v4 encodeObject:v6 forKey:@"authenticationStyle"];

  [v4 encodeBool:-[SLRemoteService addDeviceClassToRequest](self forKey:{"addDeviceClassToRequest"), @"addDeviceClassToRequest"}];
  v7 = [(SLRemoteService *)self supportedImageAssetURLSchemes];
  [v4 encodeObject:v7 forKey:@"supportedImageAssetURLSchemes"];

  v8 = [(SLRemoteService *)self supportedVideoAssetURLSchemes];
  [v4 encodeObject:v8 forKey:@"supportedVideoAssetURLSchemes"];

  v9 = [(SLRemoteService *)self _encodableStringProperties];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __35__SLRemoteService_encodeWithCoder___block_invoke;
  v23[3] = &unk_1E81767B8;
  v10 = v4;
  v24 = v10;
  v25 = self;
  [v9 enumerateObjectsUsingBlock:v23];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(SLRemoteService *)self integerPropertyKeyMappings];
  v12 = [v11 objectEnumerator];

  v13 = [v12 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        v18 = [(SLRemoteService *)self valueForKey:v17];
        [v10 encodeObject:v18 forKey:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v14);
  }
}

void __35__SLRemoteService_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [v2 encodeObject:v5 forKey:v4];
}

- (SLRemoteService)initWithCoder:(id)a3
{
  v42[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = SLRemoteService;
  v5 = [(SLRemoteService *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceBundleURL"];
    [(SLRemoteService *)v5 setServiceBundleURL:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceRegionTargetIsChina"];
    -[SLRemoteService setServiceRegionTargetIsChina:](v5, "setServiceRegionTargetIsChina:", [v7 BOOLValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationStyle"];
    -[SLRemoteService setAuthenticationStyle:](v5, "setAuthenticationStyle:", [v8 integerValue]);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addDeviceClassToRequest"];
    -[SLRemoteService setAddDeviceClassToRequest:](v5, "setAddDeviceClassToRequest:", [v9 BOOLValue]);

    v10 = MEMORY[0x1E695DFD8];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"supportedImageAssetURLSchemes"];
    [(SLRemoteService *)v5 setSupportedImageAssetURLSchemes:v13];

    v14 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"supportedVideoAssetURLSchemes"];
    [(SLRemoteService *)v5 setSupportedVideoAssetURLSchemes:v17];

    v18 = [(SLRemoteService *)v5 _encodableStringProperties];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __33__SLRemoteService_initWithCoder___block_invoke;
    v36[3] = &unk_1E81767B8;
    v19 = v5;
    v37 = v19;
    v31 = v4;
    v20 = v4;
    v38 = v20;
    [v18 enumerateObjectsUsingBlock:v36];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = [(SLRemoteService *)v19 integerPropertyKeyMappings];
    v22 = [v21 objectEnumerator];

    v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        v26 = 0;
        do
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v32 + 1) + 8 * v26);
          v28 = [v20 decodeObjectOfClass:objc_opt_class() forKey:v27];
          [(SLRemoteService *)v19 setValue:v28 forKey:v27];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v24);
    }

    v29 = v19;
    v4 = v31;
  }

  return v5;
}

void __33__SLRemoteService_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [v2 setValue:v5 forKey:v4];
}

- (BOOL)supportsImageURL:(id)a3
{
  v4 = a3;
  v5 = [(SLRemoteService *)self supportedImageAssetURLSchemes];
  LOBYTE(self) = [(SLRemoteService *)self _isSupportedURL:v4 withSupportedSchemes:v5];

  return self;
}

- (BOOL)supportsVideoURL:(id)a3
{
  v4 = a3;
  v5 = [(SLRemoteService *)self supportedVideoAssetURLSchemes];
  LOBYTE(self) = [(SLRemoteService *)self _isSupportedURL:v4 withSupportedSchemes:v5];

  return self;
}

- (BOOL)_isSupportedURL:(id)a3 withSupportedSchemes:(id)a4
{
  v5 = a4;
  v6 = [a3 scheme];
  v7 = [v5 member:v6];

  return v7 != 0;
}

- (NSBundle)serviceBundle
{
  serviceBundle = self->_serviceBundle;
  if (!serviceBundle)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = [(SLRemoteService *)self serviceBundleURL];
    v6 = [v4 bundleWithURL:v5];
    v7 = self->_serviceBundle;
    self->_serviceBundle = v6;

    serviceBundle = self->_serviceBundle;
  }

  return serviceBundle;
}

- (id)activityImage
{
  v4 = [(SLRemoteService *)self activityImageName];

  if (v4)
  {
    v5 = [(SLRemoteService *)self activityImageName];
    v6 = [(SLRemoteService *)self serviceBundle];
    v7 = [(SLRemoteService *)self _activityImageForImageResourceName:v5 inBundle:v6];
  }

  else
  {
    _SLLog(v2, 4, @"Cannot create activity image, activityImageName is nil");
    v7 = 0;
  }

  return v7;
}

- (id)composeViewController
{
  v2 = [(SLRemoteService *)self serviceType];
  v3 = [SLComposeViewController composeViewControllerForServiceType:v2];

  return v3;
}

+ (id)_cachedServices
{
  if (_cachedServices_onceToken != -1)
  {
    +[SLRemoteService _cachedServices];
  }

  v3 = __remoteServices;

  return v3;
}

uint64_t __34__SLRemoteService__cachedServices__block_invoke()
{
  __remoteServices = +[SLRemoteServicePlistLoader allServices];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_cachedServiceWithType:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  +[SLRemoteService _cachedServices];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 serviceType];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(SLRemoteService *)self serviceType];
  v4 = [v2 stringWithFormat:@"SLRemoteService(serviceType=%@)", v3];

  return v4;
}

@end