@interface FileSystemInfo
- (unint64_t)offsetForCluster:(unint64_t)a3;
- (unint64_t)offsetForDirBlock:(unint64_t)a3;
- (unint64_t)rootDirBytes;
@end

@implementation FileSystemInfo

- (unint64_t)offsetForCluster:(unint64_t)a3
{
  v4 = a3 - 2;
  v5 = [(FileSystemInfo *)self bytesPerCluster];
  v6 = [(FileSystemInfo *)self firstClusterOffset];
  return [(FileSystemInfo *)self bytesPerSector]* v6 + v4 * v5;
}

- (unint64_t)offsetForDirBlock:(unint64_t)a3
{
  v4 = a3 - [(FileSystemInfo *)self firstDirBlockNum];
  v5 = [(FileSystemInfo *)self dirBlockSize];
  v6 = [(FileSystemInfo *)self firstClusterOffset];
  return [(FileSystemInfo *)self bytesPerSector]* v6 + v4 * v5;
}

- (unint64_t)rootDirBytes
{
  if (![(FileSystemInfo *)self isFAT12Or16])
  {
    return 0;
  }

  v3 = [(FileSystemInfo *)self rootDirSize];
  return [(FileSystemInfo *)self bytesPerSector]* v3;
}

@end