@interface ASDProgress
- (ASDProgress)initWithBundleID:(id)d;
- (ASDProgress)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDProgress

- (ASDProgress)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDProgress;
  v5 = [(ASDProgress *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDProgress allocWithZone:](ASDProgress init];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"A"];
  [coderCopy encodeInt64:self->_completedUnitCount forKey:@"B"];
  [coderCopy encodeBool:self->_reportRemotely forKey:@"C"];
  [coderCopy encodeInt64:self->_totalUnitCount forKey:@"D"];
  [coderCopy encodeInt64:self->_downloadCompletedUnitCount forKey:@"E"];
  [coderCopy encodeInt64:self->_downloadTotalUnitCount forKey:@"F"];
  [coderCopy encodeInt64:self->_installCompletedUnitCount forKey:@"G"];
  [coderCopy encodeInt64:self->_installTotalUnitCount forKey:@"H"];
  [coderCopy encodeInt64:self->_postProcessCompletedUnitCount forKey:@"K"];
  [coderCopy encodeInt64:self->_postProcessTotalUnitCount forKey:@"L"];
  [coderCopy encodeBool:self->_hasPostProcessing forKey:@"M"];
  [coderCopy encodeInt64:self->_essentialBackgroundAssetDownloadEstimate forKey:@"N"];
  [coderCopy encodeInteger:self->_phase forKey:@"I"];
  [coderCopy encodeInteger:self->_secondsRemaining forKey:@"O"];
  [coderCopy encodeDouble:@"J" forKey:self->_throughput];
}

- (ASDProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ASDProgress;
  v5 = [(ASDProgress *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_completedUnitCount = [coderCopy decodeInt64ForKey:@"B"];
    v5->_reportRemotely = [coderCopy decodeBoolForKey:@"C"];
    v5->_totalUnitCount = [coderCopy decodeInt64ForKey:@"D"];
    v5->_downloadCompletedUnitCount = [coderCopy decodeInt64ForKey:@"E"];
    v5->_downloadTotalUnitCount = [coderCopy decodeInt64ForKey:@"F"];
    v5->_installCompletedUnitCount = [coderCopy decodeInt64ForKey:@"G"];
    v5->_installTotalUnitCount = [coderCopy decodeInt64ForKey:@"H"];
    v5->_postProcessCompletedUnitCount = [coderCopy decodeInt64ForKey:@"K"];
    v5->_postProcessTotalUnitCount = [coderCopy decodeInt64ForKey:@"L"];
    v5->_hasPostProcessing = [coderCopy decodeBoolForKey:@"M"];
    v5->_essentialBackgroundAssetDownloadEstimate = [coderCopy decodeInt64ForKey:@"N"];
    v5->_phase = [coderCopy decodeIntegerForKey:@"I"];
    v5->_secondsRemaining = [coderCopy decodeIntegerForKey:@"O"];
    [coderCopy decodeDoubleForKey:@"J"];
    v5->_throughput = v8;
  }

  return v5;
}

@end