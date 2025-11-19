@interface SHMusicalFeaturesConfigurationProvider
- (SHMusicalFeaturesConfiguration)musicalFeaturesConfiguration;
- (SHMusicalFeaturesConfigurationProvider)initWithRemoteConfiguration:(id)a3 bundleIdentifier:(id)a4 localModelStore:(id)a5;
- (SHMusicalFeaturesConfigurationProvider)initWithSourceBundleIdentifier:(id)a3;
- (double)minimumDurationPerCurrentIdentifier;
- (id)debugDescription;
- (unint64_t)availableModelsPerCurrentIdentifier;
@end

@implementation SHMusicalFeaturesConfigurationProvider

- (SHMusicalFeaturesConfigurationProvider)initWithSourceBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[SHRemoteConfiguration sharedInstance];
  v6 = objc_opt_new();
  v7 = [(SHMusicalFeaturesConfigurationProvider *)self initWithRemoteConfiguration:v5 bundleIdentifier:v4 localModelStore:v6];

  return v7;
}

- (SHMusicalFeaturesConfigurationProvider)initWithRemoteConfiguration:(id)a3 bundleIdentifier:(id)a4 localModelStore:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [a3 musicalFeaturesBagConfigurationWithPromise];
  v15.receiver = self;
  v15.super_class = SHMusicalFeaturesConfigurationProvider;
  v12 = [(SHMusicalFeaturesConfigurationProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localModelStore, a5);
    objc_storeStrong(&v13->_configuration, v11);
    objc_storeStrong(&v13->_bundleIdentifier, a4);
  }

  return v13;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(SHMusicalFeaturesConfigurationProvider *)self bundleIdentifier];
  v5 = [(SHMusicalFeaturesConfigurationProvider *)self configuration];
  v6 = [v5 debugDescription];
  v7 = [(SHMusicalFeaturesConfigurationProvider *)self localModelStore];
  v8 = [NSString stringWithFormat:@"<%@: %p>\n\tBundle Identifier: %@\n\tConfiguration: %@\n\tLocal Store: %@", v3, self, v4, v6, v7];

  return v8;
}

- (unint64_t)availableModelsPerCurrentIdentifier
{
  if (_os_feature_enabled_impl())
  {
    return 3;
  }

  v4 = [(SHMusicalFeaturesConfigurationProvider *)self configuration];
  v5 = [(SHMusicalFeaturesConfigurationProvider *)self bundleIdentifier];
  v6 = [v4 availableModelsForClientIdentifier:v5];

  return v6;
}

- (double)minimumDurationPerCurrentIdentifier
{
  if (_os_feature_enabled_impl())
  {
    return SHMusicalFeaturesConfigurationDefaultMinimumDuration;
  }

  v4 = [(SHMusicalFeaturesConfigurationProvider *)self configuration];
  v5 = [(SHMusicalFeaturesConfigurationProvider *)self bundleIdentifier];
  [v4 minimumDurationInSecondsForClientIdentifier:v5];
  v7 = v6;

  return v7;
}

- (SHMusicalFeaturesConfiguration)musicalFeaturesConfiguration
{
  if (([(SHMusicalFeaturesConfigurationProvider *)self availableModelsPerCurrentIdentifier]& 1) != 0)
  {
    v4 = [(SHMusicalFeaturesConfigurationProvider *)self localModelStore];
    v3 = [v4 cremaModelURL];
  }

  else
  {
    v3 = 0;
  }

  if (([(SHMusicalFeaturesConfigurationProvider *)self availableModelsPerCurrentIdentifier]& 2) != 0)
  {
    v6 = [(SHMusicalFeaturesConfigurationProvider *)self localModelStore];
    v5 = [v6 crepeModelURL];
  }

  else
  {
    v5 = 0;
  }

  [(SHMusicalFeaturesConfigurationProvider *)self minimumDurationPerCurrentIdentifier];
  v8 = v7;
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(SHMusicalFeaturesConfigurationProvider *)self bundleIdentifier];
    *buf = 138413058;
    v22 = v10;
    v23 = 1024;
    v24 = v3 != 0;
    v25 = 1024;
    v26 = v5 != 0;
    v27 = 2048;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Models available for %@ are CREMA %d and CREPE %d with minimum signature duration of %f", buf, 0x22u);
  }

  if (v3 | v5)
  {
    if (!v3 || v5)
    {
      v14 = [SHMusicalFeaturesConfiguration alloc];
      if (v3 || !v5)
      {
        v18 = 0;
        v11 = &v18;
        v12 = [v14 initWithCremaModelURL:v3 crepeModelURL:v5 minimumDuration:&v18 error:v8];
      }

      else
      {
        v19 = 0;
        v11 = &v19;
        v12 = [v14 initWithCrepeModelURL:v5 minimumDuration:&v19 error:v8];
      }
    }

    else
    {
      v20 = 0;
      v11 = &v20;
      v12 = [[SHMusicalFeaturesConfiguration alloc] initWithCremaModelURL:v3 minimumDuration:&v20 error:v8];
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