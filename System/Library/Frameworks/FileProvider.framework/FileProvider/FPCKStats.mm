@interface FPCKStats
- (FPCKStats)init;
- (FPCKStats)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPCKStats

- (FPCKStats)init
{
  v3.receiver = self;
  v3.super_class = FPCKStats;
  return [(FPCKStats *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  numberOfFilesChecked = self->_numberOfFilesChecked;
  v5 = a3;
  [v5 encodeInteger:numberOfFilesChecked forKey:@"_numberOfFilesChecked"];
  [v5 encodeInteger:self->_numberOfBrokenFilesInFSAndFSSnapshotCheck forKey:@"_numberOfBrokenFilesInFSAndFSSnapshotCheck"];
  [v5 encodeInteger:self->_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck forKey:@"_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck"];
  [v5 encodeInteger:self->_numberOfBrokenFilesInReconciliationTableCheck forKey:@"_numberOfBrokenFilesInReconciliationTableCheck"];
  [v5 encodeInteger:self->_numberOfBrokenFilesInBackupManifestCheck forKey:@"_numberOfBrokenFilesInBackupManifestCheck"];
}

- (FPCKStats)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FPCKStats;
  v5 = [(FPCKStats *)&v7 init];
  if (v5)
  {
    v5->_numberOfFilesChecked = [v4 decodeIntegerForKey:@"_numberOfFilesChecked"];
    v5->_numberOfBrokenFilesInFSAndFSSnapshotCheck = [v4 decodeIntegerForKey:@"_numberOfBrokenFilesInFSAndFSSnapshotCheck"];
    v5->_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck = [v4 decodeIntegerForKey:@"_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck"];
    v5->_numberOfBrokenFilesInReconciliationTableCheck = [v4 decodeIntegerForKey:@"_numberOfBrokenFilesInReconciliationTableCheck"];
    v5->_numberOfBrokenFilesInBackupManifestCheck = [v4 decodeIntegerForKey:@"_numberOfBrokenFilesInBackupManifestCheck"];
  }

  return v5;
}

@end