@interface SHCatalogConfiguration
- (SHCatalogConfiguration)init;
- (SHCatalogConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHCatalogConfiguration

- (SHCatalogConfiguration)init
{
  v9.receiver = self;
  v9.super_class = SHCatalogConfiguration;
  v2 = [(SHCatalogConfiguration *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    installationID = v2->_installationID;
    v2->_installationID = v4;

    v6 = [SHRange rangeWithLowerBound:3.0 upperBound:12.0];
    signatureDurationRange = v2->_signatureDurationRange;
    v2->_signatureDurationRange = v6;

    v2->_streamingBufferDuration = 24.0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  v6 = [(SHCatalogConfiguration *)self installationID];
  v7 = [v6 copyWithZone:a3];
  [v5 setInstallationID:v7];

  v8 = [(SHCatalogConfiguration *)self signatureDurationRange];
  v9 = [v8 copyWithZone:a3];
  [v5 setSignatureDurationRange:v9];

  [(SHCatalogConfiguration *)self streamingBufferDuration];
  [v5 setStreamingBufferDuration:?];
  v10 = [(SHCatalogConfiguration *)self musicalFeaturesConfiguration];
  v11 = [v10 copyWithZone:a3];
  [v5 setMusicalFeaturesConfiguration:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SHCatalogConfiguration *)self installationID];
  [v4 encodeObject:v5 forKey:@"SHCatalogConfigurationInstallationIDKey"];

  [(SHCatalogConfiguration *)self streamingBufferDuration];
  [v4 encodeDouble:@"SHCatalogConfigurationBufferDurationKey" forKey:?];
  v6 = [(SHCatalogConfiguration *)self signatureDurationRange];
  [v4 encodeObject:v6 forKey:@"SHCatalogConfigurationSignatureDurationRangeKey"];

  v7 = [(SHCatalogConfiguration *)self musicalFeaturesConfiguration];
  [v4 encodeObject:v7 forKey:@"SHCatalogConfigurationMusicalFeaturesConfigurationKey"];
}

- (SHCatalogConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SHCatalogConfiguration;
  v5 = [(SHCatalogConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHCatalogConfigurationInstallationIDKey"];
    installationID = v5->_installationID;
    v5->_installationID = v6;

    [v4 decodeDoubleForKey:@"SHCatalogConfigurationBufferDurationKey"];
    v5->_streamingBufferDuration = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHCatalogConfigurationSignatureDurationRangeKey"];
    signatureDurationRange = v5->_signatureDurationRange;
    v5->_signatureDurationRange = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHCatalogConfigurationMusicalFeaturesConfigurationKey"];
    musicalFeaturesConfiguration = v5->_musicalFeaturesConfiguration;
    v5->_musicalFeaturesConfiguration = v11;
  }

  return v5;
}

@end