@interface SHLLibraryItemMetadata
- (SHLLibraryItemMetadata)initWithEncodedSystemData:(id)data;
- (SHLLibraryItemMetadata)initWithMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SHLLibraryItemMetadata

- (SHLLibraryItemMetadata)initWithEncodedSystemData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = SHLLibraryItemMetadata;
  v6 = [(SHLLibraryItemMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (![(SHLLibraryItemMetadata *)v6 validEncodedSystemData:dataCopy])
    {
      v9 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:@"You must provide a valid encoded data."];
      objc_exception_throw(v9);
    }

    objc_storeStrong(&v7->_encodedSystemData, data);
  }

  return v7;
}

- (SHLLibraryItemMetadata)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10.receiver = self;
  v10.super_class = SHLLibraryItemMetadata;
  v5 = [(SHLLibraryItemMetadata *)&v10 init];
  if (v5)
  {
    encodedSystemData = [metadataCopy encodedSystemData];
    v7 = [encodedSystemData copy];
    encodedSystemData = v5->_encodedSystemData;
    v5->_encodedSystemData = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SHLLibraryItemMetadata allocWithZone:zone];

  return [(SHLLibraryItemMetadata *)v4 initWithMetadata:self];
}

@end