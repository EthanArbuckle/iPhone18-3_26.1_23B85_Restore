@interface MPServerObjectDatabaseImportResult
- (MPServerObjectDatabaseImportResult)initWithAnnotatedPayload:(id *)payload playableAssetIdentifiers:(id)identifiers importedIdentifiers:(id)importedIdentifiers assetsCount:(int64_t)count hlsAssetsCount:(int64_t)assetsCount error:(id)error;
@end

@implementation MPServerObjectDatabaseImportResult

- (MPServerObjectDatabaseImportResult)initWithAnnotatedPayload:(id *)payload playableAssetIdentifiers:(id)identifiers importedIdentifiers:(id)importedIdentifiers assetsCount:(int64_t)count hlsAssetsCount:(int64_t)assetsCount error:(id)error
{
  identifiersCopy = identifiers;
  importedIdentifiersCopy = importedIdentifiers;
  errorCopy = error;
  v27.receiver = self;
  v27.super_class = MPServerObjectDatabaseImportResult;
  v17 = [(MPServerObjectDatabaseImportResult *)&v27 init];
  if (v17)
  {
    if (payload)
    {
      v18 = [*payload copy];
    }

    else
    {
      v18 = 0;
    }

    annotatedPayload = v17->_annotatedPayload;
    v17->_annotatedPayload = v18;

    v20 = [identifiersCopy copy];
    playableAssetIdentifiers = v17->_playableAssetIdentifiers;
    v17->_playableAssetIdentifiers = v20;

    v22 = [importedIdentifiersCopy copy];
    importedIdentifiers = v17->_importedIdentifiers;
    v17->_importedIdentifiers = v22;

    v24 = [errorCopy copy];
    error = v17->_error;
    v17->_error = v24;

    v17->_importedObjectsCount = [importedIdentifiersCopy count];
    v17->_importedAssetsCount = count;
    v17->_importedHLSAssetsCount = assetsCount;
  }

  return v17;
}

@end