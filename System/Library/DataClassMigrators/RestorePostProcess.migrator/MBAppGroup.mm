@interface MBAppGroup
- (id)domain;
@end

@implementation MBAppGroup

- (id)domain
{
  identifier = [(MBContainer *)self identifier];
  volumeMountPoint = [(MBContainer *)self volumeMountPoint];
  containerDir = [(MBContainer *)self containerDir];
  v6 = [MBDomain appGroupDomainWithIdentifier:identifier volumeMountPoint:volumeMountPoint rootPath:containerDir];

  if (qword_2A7D8 != -1)
  {
    sub_1361C();
  }

  [v6 setRelativePathsToBackupAndRestore:qword_2A7D0];
  if (qword_2A7E8 != -1)
  {
    sub_13630();
  }

  [v6 setRelativePathsNotToBackup:qword_2A7E0];
  if (qword_2A7F8 != -1)
  {
    sub_13644();
  }

  [v6 setRelativePathsNotToRestore:qword_2A7F0];
  [v6 setShouldDigest:0];

  return v6;
}

@end