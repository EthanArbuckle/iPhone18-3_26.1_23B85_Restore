@interface FPCKStats
- (FPCKStats)init;
- (FPCKStats)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPCKStats

- (FPCKStats)init
{
  v3.receiver = self;
  v3.super_class = FPCKStats;
  return [(FPCKStats *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  numberOfFilesChecked = self->_numberOfFilesChecked;
  coderCopy = coder;
  [coderCopy encodeInteger:numberOfFilesChecked forKey:@"_numberOfFilesChecked"];
  [coderCopy encodeInteger:self->_numberOfBrokenFilesInFSAndFSSnapshotCheck forKey:@"_numberOfBrokenFilesInFSAndFSSnapshotCheck"];
  [coderCopy encodeInteger:self->_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck forKey:@"_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck"];
  [coderCopy encodeInteger:self->_numberOfBrokenFilesInReconciliationTableCheck forKey:@"_numberOfBrokenFilesInReconciliationTableCheck"];
  [coderCopy encodeInteger:self->_numberOfBrokenFilesInBackupManifestCheck forKey:@"_numberOfBrokenFilesInBackupManifestCheck"];
}

- (FPCKStats)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FPCKStats;
  v5 = [(FPCKStats *)&v7 init];
  if (v5)
  {
    v5->_numberOfFilesChecked = [coderCopy decodeIntegerForKey:@"_numberOfFilesChecked"];
    v5->_numberOfBrokenFilesInFSAndFSSnapshotCheck = [coderCopy decodeIntegerForKey:@"_numberOfBrokenFilesInFSAndFSSnapshotCheck"];
    v5->_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck = [coderCopy decodeIntegerForKey:@"_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck"];
    v5->_numberOfBrokenFilesInReconciliationTableCheck = [coderCopy decodeIntegerForKey:@"_numberOfBrokenFilesInReconciliationTableCheck"];
    v5->_numberOfBrokenFilesInBackupManifestCheck = [coderCopy decodeIntegerForKey:@"_numberOfBrokenFilesInBackupManifestCheck"];
  }

  return v5;
}

@end