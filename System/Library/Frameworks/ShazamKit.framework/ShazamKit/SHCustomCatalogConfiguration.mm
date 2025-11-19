@interface SHCustomCatalogConfiguration
- (SHCustomCatalogConfiguration)init;
- (SHCustomCatalogConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  v6 = [(SHCatalogConfiguration *)self installationID];
  v7 = [v6 copyWithZone:a3];
  [v5 setInstallationID:v7];

  [v5 setDensity:{-[SHCustomCatalogConfiguration density](self, "density")}];
  [v5 setAlgorithm:{-[SHCustomCatalogConfiguration algorithm](self, "algorithm")}];
  [v5 setSupportsSignatureTracking:{-[SHCustomCatalogConfiguration supportsSignatureTracking](self, "supportsSignatureTracking")}];
  v8 = [(SHCatalogConfiguration *)self signatureDurationRange];
  v9 = [v8 copyWithZone:a3];
  [v5 setSignatureDurationRange:v9];

  [(SHCatalogConfiguration *)self streamingBufferDuration];
  [v5 setStreamingBufferDuration:?];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SHCustomCatalogConfiguration;
  v4 = a3;
  [(SHCatalogConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[SHCustomCatalogConfiguration density](self forKey:{"density", v5.receiver, v5.super_class), @"SHCatalogConfigurationDensityKey"}];
  [v4 encodeInteger:-[SHCustomCatalogConfiguration algorithm](self forKey:{"algorithm"), @"SHCatalogConfigurationAlgorithmKey"}];
  [v4 encodeBool:-[SHCustomCatalogConfiguration supportsSignatureTracking](self forKey:{"supportsSignatureTracking"), @"SHCatalogConfigurationSupportsSignatureTrackingKey"}];
}

- (SHCustomCatalogConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SHCustomCatalogConfiguration;
  v5 = [(SHCatalogConfiguration *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_density = [v4 decodeIntegerForKey:@"SHCatalogConfigurationDensityKey"];
    v5->_algorithm = [v4 decodeIntegerForKey:@"SHCatalogConfigurationAlgorithmKey"];
    v5->_supportsSignatureTracking = [v4 decodeBoolForKey:@"SHCatalogConfigurationSupportsSignatureTrackingKey"];
  }

  return v5;
}

@end