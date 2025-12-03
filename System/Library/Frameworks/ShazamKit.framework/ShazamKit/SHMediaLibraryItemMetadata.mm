@interface SHMediaLibraryItemMetadata
- (SHMediaLibraryItemMetadata)initWithEncodedSystemData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SHMediaLibraryItemMetadata

- (SHMediaLibraryItemMetadata)initWithEncodedSystemData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = SHMediaLibraryItemMetadata;
  v6 = [(SHMediaLibraryItemMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (![(SHMediaLibraryItemMetadata *)v6 validEncodedSystemData:dataCopy])
    {
      v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"You must provide a valid encoded data." userInfo:0];
      objc_exception_throw(v9);
    }

    objc_storeStrong(&v7->_encodedSystemData, data);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMediaLibraryItemMetadata allocWithZone:?];
  encodedSystemData = [(SHMediaLibraryItemMetadata *)self encodedSystemData];
  v7 = [encodedSystemData copyWithZone:zone];
  v8 = [(SHMediaLibraryItemMetadata *)v5 initWithEncodedSystemData:v7];

  return v8;
}

@end