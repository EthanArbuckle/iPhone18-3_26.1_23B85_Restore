@interface FileSystemInfo
- (unint64_t)offsetForCluster:(unint64_t)cluster;
- (unint64_t)offsetForDirBlock:(unint64_t)block;
- (unint64_t)rootDirBytes;
@end

@implementation FileSystemInfo

- (unint64_t)offsetForCluster:(unint64_t)cluster
{
  v4 = cluster - 2;
  bytesPerCluster = [(FileSystemInfo *)self bytesPerCluster];
  firstClusterOffset = [(FileSystemInfo *)self firstClusterOffset];
  return [(FileSystemInfo *)self bytesPerSector]* firstClusterOffset + v4 * bytesPerCluster;
}

- (unint64_t)offsetForDirBlock:(unint64_t)block
{
  v4 = block - [(FileSystemInfo *)self firstDirBlockNum];
  dirBlockSize = [(FileSystemInfo *)self dirBlockSize];
  firstClusterOffset = [(FileSystemInfo *)self firstClusterOffset];
  return [(FileSystemInfo *)self bytesPerSector]* firstClusterOffset + v4 * dirBlockSize;
}

- (unint64_t)rootDirBytes
{
  if (![(FileSystemInfo *)self isFAT12Or16])
  {
    return 0;
  }

  rootDirSize = [(FileSystemInfo *)self rootDirSize];
  return [(FileSystemInfo *)self bytesPerSector]* rootDirSize;
}

@end