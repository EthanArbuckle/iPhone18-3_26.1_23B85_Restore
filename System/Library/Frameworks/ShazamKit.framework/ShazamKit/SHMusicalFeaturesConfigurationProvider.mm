@interface SHMusicalFeaturesConfigurationProvider
- (SHMusicalFeaturesConfiguration)musicalFeaturesConfiguration;
- (SHMusicalFeaturesConfigurationProvider)initWithRemoteConfiguration:(id)configuration bundleIdentifier:(id)identifier localModelStore:(id)store;
- (SHMusicalFeaturesConfigurationProvider)initWithSourceBundleIdentifier:(id)identifier;
- (double)minimumDurationPerCurrentIdentifier;
- (id)debugDescription;
- (unint64_t)availableModelsPerCurrentIdentifier;
@end

@implementation SHMusicalFeaturesConfigurationProvider

- (SHMusicalFeaturesConfigurationProvider)initWithSourceBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SHRemoteConfiguration sharedInstance];
  v6 = objc_opt_new();
  v7 = [(SHMusicalFeaturesConfigurationProvider *)self initWithRemoteConfiguration:v5 bundleIdentifier:identifierCopy localModelStore:v6];

  return v7;
}

- (SHMusicalFeaturesConfigurationProvider)initWithRemoteConfiguration:(id)configuration bundleIdentifier:(id)identifier localModelStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  musicalFeaturesBagConfigurationWithPromise = [configuration musicalFeaturesBagConfigurationWithPromise];
  v15.receiver = self;
  v15.super_class = SHMusicalFeaturesConfigurationProvider;
  v12 = [(SHMusicalFeaturesConfigurationProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localModelStore, store);
    objc_storeStrong(&v13->_configuration, musicalFeaturesBagConfigurationWithPromise);
    objc_storeStrong(&v13->_bundleIdentifier, identifier);
  }

  return v13;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  bundleIdentifier = [(SHMusicalFeaturesConfigurationProvider *)self bundleIdentifier];
  configuration = [(SHMusicalFeaturesConfigurationProvider *)self configuration];
  v6 = [configuration debugDescription];
  localModelStore = [(SHMusicalFeaturesConfigurationProvider *)self localModelStore];
  v8 = [NSString stringWithFormat:@"<%@: %p>\n\tBundle Identifier: %@\n\tConfiguration: %@\n\tLocal Store: %@", v3, self, bundleIdentifier, v6, localModelStore];

  return v8;
}

- (unint64_t)availableModelsPerCurrentIdentifier
{
  if (_os_feature_enabled_impl())
  {
    return 3;
  }

  configuration = [(SHMusicalFeaturesConfigurationProvider *)self configuration];
  bundleIdentifier = [(SHMusicalFeaturesConfigurationProvider *)self bundleIdentifier];
  v6 = [configuration availableModelsForClientIdentifier:bundleIdentifier];

  return v6;
}

- (double)minimumDurationPerCurrentIdentifier
{
  if (_os_feature_enabled_impl())
  {
    return SHMusicalFeaturesConfigurationDefaultMinimumDuration;
  }

  configuration = [(SHMusicalFeaturesConfigurationProvider *)self configuration];
  bundleIdentifier = [(SHMusicalFeaturesConfigurationProvider *)self bundleIdentifier];
  [configuration minimumDurationInSecondsForClientIdentifier:bundleIdentifier];
  v7 = v6;

  return v7;
}

- (SHMusicalFeaturesConfiguration)musicalFeaturesConfiguration
{
  if (([(SHMusicalFeaturesConfigurationProvider *)self availableModelsPerCurrentIdentifier]& 1) != 0)
  {
    localModelStore = [(SHMusicalFeaturesConfigurationProvider *)self localModelStore];
    cremaModelURL = [localModelStore cremaModelURL];
  }

  else
  {
    cremaModelURL = 0;
  }

  if (([(SHMusicalFeaturesConfigurationProvider *)self availableModelsPerCurrentIdentifier]& 2) != 0)
  {
    localModelStore2 = [(SHMusicalFeaturesConfigurationProvider *)self localModelStore];
    crepeModelURL = [localModelStore2 crepeModelURL];
  }

  else
  {
    crepeModelURL = 0;
  }

  [(SHMusicalFeaturesConfigurationProvider *)self minimumDurationPerCurrentIdentifier];
  v8 = v7;
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    bundleIdentifier = [(SHMusicalFeaturesConfigurationProvider *)self bundleIdentifier];
    *buf = 138413058;
    v22 = bundleIdentifier;
    v23 = 1024;
    v24 = cremaModelURL != 0;
    v25 = 1024;
    v26 = crepeModelURL != 0;
    v27 = 2048;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Models available for %@ are CREMA %d and CREPE %d with minimum signature duration of %f", buf, 0x22u);
  }

  if (cremaModelURL | crepeModelURL)
  {
    if (!cremaModelURL || crepeModelURL)
    {
      v14 = [SHMusicalFeaturesConfiguration alloc];
      if (cremaModelURL || !crepeModelURL)
      {
        v18 = 0;
        v11 = &v18;
        v12 = [v14 initWithCremaModelURL:cremaModelURL crepeModelURL:crepeModelURL minimumDuration:&v18 error:v8];
      }

      else
      {
        v19 = 0;
        v11 = &v19;
        v12 = [v14 initWithCrepeModelURL:crepeModelURL minimumDuration:&v19 error:v8];
      }
    }

    else
    {
      v20 = 0;
      v11 = &v20;
      v12 = [[SHMusicalFeaturesConfiguration alloc] initWithCremaModelURL:cremaModelURL minimumDuration:&v20 error:v8];
    }

    v13 = v12;
    v15 = *v11;
    if (!v13)
    {
      v16 = sh_log_object();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not initialize musical features configuration: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end