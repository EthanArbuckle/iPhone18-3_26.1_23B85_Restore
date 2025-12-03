@interface SHCustomCatalogConfiguration
- (SHCustomCatalogConfiguration)init;
- (SHCustomCatalogConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHCustomCatalogConfiguration

- (SHCustomCatalogConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SHCustomCatalogConfiguration;
  v2 = [(SHCatalogConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_density = 3;
    v2->_algorithm = 0;
    v4 = [SHRange rangeWithLowerBound:1.0 upperBound:12.0];
    [(SHCatalogConfiguration *)v3 setSignatureDurationRange:v4];

    [(SHCatalogConfiguration *)v3 setStreamingBufferDuration:240.0];
    [(SHCustomCatalogConfiguration *)v3 setSupportsSignatureTracking:0];
    v3->_numHistogramBuckets = 6;
    v3->_scoreThreshold = 1.0;
    v3->_queryThreshold = 1.0;
    v3->_boundingBox = 3;
    v3->_frequencyPenaltyMultiplier = 0.5;
    v3->_forwardPassOnly = 0;
    v3->_singlePassOnly = 0;
    v3->_refineStartEnd = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  installationID = [(SHCatalogConfiguration *)self installationID];
  v7 = [installationID copyWithZone:zone];
  [v5 setInstallationID:v7];

  [v5 setDensity:{-[SHCustomCatalogConfiguration density](self, "density")}];
  [v5 setAlgorithm:{-[SHCustomCatalogConfiguration algorithm](self, "algorithm")}];
  [v5 setSupportsSignatureTracking:{-[SHCustomCatalogConfiguration supportsSignatureTracking](self, "supportsSignatureTracking")}];
  signatureDurationRange = [(SHCatalogConfiguration *)self signatureDurationRange];
  v9 = [signatureDurationRange copyWithZone:zone];
  [v5 setSignatureDurationRange:v9];

  [(SHCatalogConfiguration *)self streamingBufferDuration];
  [v5 setStreamingBufferDuration:?];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SHCustomCatalogConfiguration;
  coderCopy = coder;
  [(SHCatalogConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[SHCustomCatalogConfiguration density](self forKey:{"density", v5.receiver, v5.super_class), @"SHCatalogConfigurationDensityKey"}];
  [coderCopy encodeInteger:-[SHCustomCatalogConfiguration algorithm](self forKey:{"algorithm"), @"SHCatalogConfigurationAlgorithmKey"}];
  [coderCopy encodeBool:-[SHCustomCatalogConfiguration supportsSignatureTracking](self forKey:{"supportsSignatureTracking"), @"SHCatalogConfigurationSupportsSignatureTrackingKey"}];
}

- (SHCustomCatalogConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SHCustomCatalogConfiguration;
  v5 = [(SHCatalogConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_density = [coderCopy decodeIntegerForKey:@"SHCatalogConfigurationDensityKey"];
    v5->_algorithm = [coderCopy decodeIntegerForKey:@"SHCatalogConfigurationAlgorithmKey"];
    v5->_supportsSignatureTracking = [coderCopy decodeBoolForKey:@"SHCatalogConfigurationSupportsSignatureTrackingKey"];
  }

  return v5;
}

@end