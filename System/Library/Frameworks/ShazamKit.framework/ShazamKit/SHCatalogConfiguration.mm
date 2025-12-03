@interface SHCatalogConfiguration
- (SHCatalogConfiguration)init;
- (SHCatalogConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHCatalogConfiguration

- (SHCatalogConfiguration)init
{
  v9.receiver = self;
  v9.super_class = SHCatalogConfiguration;
  v2 = [(SHCatalogConfiguration *)&v9 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    installationID = v2->_installationID;
    v2->_installationID = uUIDString;

    v6 = [SHRange rangeWithLowerBound:3.0 upperBound:12.0];
    signatureDurationRange = v2->_signatureDurationRange;
    v2->_signatureDurationRange = v6;

    v2->_streamingBufferDuration = 24.0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  installationID = [(SHCatalogConfiguration *)self installationID];
  v7 = [installationID copyWithZone:zone];
  [v5 setInstallationID:v7];

  signatureDurationRange = [(SHCatalogConfiguration *)self signatureDurationRange];
  v9 = [signatureDurationRange copyWithZone:zone];
  [v5 setSignatureDurationRange:v9];

  [(SHCatalogConfiguration *)self streamingBufferDuration];
  [v5 setStreamingBufferDuration:?];
  musicalFeaturesConfiguration = [(SHCatalogConfiguration *)self musicalFeaturesConfiguration];
  v11 = [musicalFeaturesConfiguration copyWithZone:zone];
  [v5 setMusicalFeaturesConfiguration:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  installationID = [(SHCatalogConfiguration *)self installationID];
  [coderCopy encodeObject:installationID forKey:@"SHCatalogConfigurationInstallationIDKey"];

  [(SHCatalogConfiguration *)self streamingBufferDuration];
  [coderCopy encodeDouble:@"SHCatalogConfigurationBufferDurationKey" forKey:?];
  signatureDurationRange = [(SHCatalogConfiguration *)self signatureDurationRange];
  [coderCopy encodeObject:signatureDurationRange forKey:@"SHCatalogConfigurationSignatureDurationRangeKey"];

  musicalFeaturesConfiguration = [(SHCatalogConfiguration *)self musicalFeaturesConfiguration];
  [coderCopy encodeObject:musicalFeaturesConfiguration forKey:@"SHCatalogConfigurationMusicalFeaturesConfigurationKey"];
}

- (SHCatalogConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SHCatalogConfiguration;
  v5 = [(SHCatalogConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHCatalogConfigurationInstallationIDKey"];
    installationID = v5->_installationID;
    v5->_installationID = v6;

    [coderCopy decodeDoubleForKey:@"SHCatalogConfigurationBufferDurationKey"];
    v5->_streamingBufferDuration = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHCatalogConfigurationSignatureDurationRangeKey"];
    signatureDurationRange = v5->_signatureDurationRange;
    v5->_signatureDurationRange = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHCatalogConfigurationMusicalFeaturesConfigurationKey"];
    musicalFeaturesConfiguration = v5->_musicalFeaturesConfiguration;
    v5->_musicalFeaturesConfiguration = v11;
  }

  return v5;
}

@end