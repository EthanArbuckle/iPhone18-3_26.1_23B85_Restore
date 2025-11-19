@interface ASDProgress
- (ASDProgress)initWithBundleID:(id)a3;
- (ASDProgress)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDProgress

- (ASDProgress)initWithBundleID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDProgress;
  v5 = [(ASDProgress *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDProgress allocWithZone:](ASDProgress init];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v5->_completedUnitCount = self->_completedUnitCount;
  v5->_reportRemotely = self->_reportRemotely;
  v5->_totalUnitCount = self->_totalUnitCount;
  v5->_downloadCompletedUnitCount = self->_downloadCompletedUnitCount;
  v5->_downloadTotalUnitCount = self->_downloadTotalUnitCount;
  v5->_installCompletedUnitCount = self->_installCompletedUnitCount;
  v5->_installTotalUnitCount = self->_installTotalUnitCount;
  v5->_postProcessCompletedUnitCount = self->_postProcessCompletedUnitCount;
  v5->_postProcessTotalUnitCount = self->_postProcessTotalUnitCount;
  v5->_hasPostProcessing = self->_hasPostProcessing;
  *&v5->_essentialBackgroundAssetDownloadEstimate = *&self->_essentialBackgroundAssetDownloadEstimate;
  v5->_secondsRemaining = self->_secondsRemaining;
  v5->_throughput = self->_throughput;
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = ASDProgress;
  v4 = [(ASDProgress *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: {bundleID = %@ fractionCompleted = %.2f; reportRemotely = %d}", v4, self->_bundleID, self->_completedUnitCount / self->_totalUnitCount, self->_reportRemotely];;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"A"];
  [v5 encodeInt64:self->_completedUnitCount forKey:@"B"];
  [v5 encodeBool:self->_reportRemotely forKey:@"C"];
  [v5 encodeInt64:self->_totalUnitCount forKey:@"D"];
  [v5 encodeInt64:self->_downloadCompletedUnitCount forKey:@"E"];
  [v5 encodeInt64:self->_downloadTotalUnitCount forKey:@"F"];
  [v5 encodeInt64:self->_installCompletedUnitCount forKey:@"G"];
  [v5 encodeInt64:self->_installTotalUnitCount forKey:@"H"];
  [v5 encodeInt64:self->_postProcessCompletedUnitCount forKey:@"K"];
  [v5 encodeInt64:self->_postProcessTotalUnitCount forKey:@"L"];
  [v5 encodeBool:self->_hasPostProcessing forKey:@"M"];
  [v5 encodeInt64:self->_essentialBackgroundAssetDownloadEstimate forKey:@"N"];
  [v5 encodeInteger:self->_phase forKey:@"I"];
  [v5 encodeInteger:self->_secondsRemaining forKey:@"O"];
  [v5 encodeDouble:@"J" forKey:self->_throughput];
}

- (ASDProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASDProgress;
  v5 = [(ASDProgress *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_completedUnitCount = [v4 decodeInt64ForKey:@"B"];
    v5->_reportRemotely = [v4 decodeBoolForKey:@"C"];
    v5->_totalUnitCount = [v4 decodeInt64ForKey:@"D"];
    v5->_downloadCompletedUnitCount = [v4 decodeInt64ForKey:@"E"];
    v5->_downloadTotalUnitCount = [v4 decodeInt64ForKey:@"F"];
    v5->_installCompletedUnitCount = [v4 decodeInt64ForKey:@"G"];
    v5->_installTotalUnitCount = [v4 decodeInt64ForKey:@"H"];
    v5->_postProcessCompletedUnitCount = [v4 decodeInt64ForKey:@"K"];
    v5->_postProcessTotalUnitCount = [v4 decodeInt64ForKey:@"L"];
    v5->_hasPostProcessing = [v4 decodeBoolForKey:@"M"];
    v5->_essentialBackgroundAssetDownloadEstimate = [v4 decodeInt64ForKey:@"N"];
    v5->_phase = [v4 decodeIntegerForKey:@"I"];
    v5->_secondsRemaining = [v4 decodeIntegerForKey:@"O"];
    [v4 decodeDoubleForKey:@"J"];
    v5->_throughput = v8;
  }

  return v5;
}

@end