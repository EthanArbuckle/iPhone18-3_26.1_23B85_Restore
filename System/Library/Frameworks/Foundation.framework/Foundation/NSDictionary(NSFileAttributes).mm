@interface NSDictionary(NSFileAttributes)
- (uint64_t)fileExtensionHidden;
- (uint64_t)fileIsAppendOnly;
- (uint64_t)fileIsImmutable;
- (uint64_t)fileSize;
- (uint64_t)fileSystemFileNumber;
- (uint64_t)fileSystemNumber;
@end

@implementation NSDictionary(NSFileAttributes)

- (uint64_t)fileSize
{
  v1 = [a1 objectForKey:@"NSFileSize"];

  return [v1 longLongValue];
}

- (uint64_t)fileSystemNumber
{
  v1 = [a1 objectForKey:@"NSFileSystemNumber"];

  return [v1 integerValue];
}

- (uint64_t)fileSystemFileNumber
{
  v1 = [a1 objectForKey:@"NSFileSystemFileNumber"];

  return [v1 unsignedIntegerValue];
}

- (uint64_t)fileExtensionHidden
{
  v1 = [a1 objectForKey:@"NSFileExtensionHidden"];

  return [v1 BOOLValue];
}

- (uint64_t)fileIsImmutable
{
  v1 = [a1 objectForKey:@"NSFileImmutable"];

  return [v1 BOOLValue];
}

- (uint64_t)fileIsAppendOnly
{
  v1 = [a1 objectForKey:@"NSFileAppendOnly"];

  return [v1 BOOLValue];
}

@end