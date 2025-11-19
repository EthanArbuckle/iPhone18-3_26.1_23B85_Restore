@interface SHLLibraryItemMetadata
- (SHLLibraryItemMetadata)initWithEncodedSystemData:(id)a3;
- (SHLLibraryItemMetadata)initWithMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SHLLibraryItemMetadata

- (SHLLibraryItemMetadata)initWithEncodedSystemData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SHLLibraryItemMetadata;
  v6 = [(SHLLibraryItemMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (![(SHLLibraryItemMetadata *)v6 validEncodedSystemData:v5])
    {
      v9 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:@"You must provide a valid encoded data."];
      objc_exception_throw(v9);
    }

    objc_storeStrong(&v7->_encodedSystemData, a3);
  }

  return v7;
}

- (SHLLibraryItemMetadata)initWithMetadata:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SHLLibraryItemMetadata;
  v5 = [(SHLLibraryItemMetadata *)&v10 init];
  if (v5)
  {
    v6 = [v4 encodedSystemData];
    v7 = [v6 copy];
    encodedSystemData = v5->_encodedSystemData;
    v5->_encodedSystemData = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SHLLibraryItemMetadata allocWithZone:a3];

  return [(SHLLibraryItemMetadata *)v4 initWithMetadata:self];
}

@end