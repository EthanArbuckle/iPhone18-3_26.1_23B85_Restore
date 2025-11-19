@interface MPServerObjectDatabaseImportResult
- (MPServerObjectDatabaseImportResult)initWithAnnotatedPayload:(id *)a3 playableAssetIdentifiers:(id)a4 importedIdentifiers:(id)a5 assetsCount:(int64_t)a6 hlsAssetsCount:(int64_t)a7 error:(id)a8;
@end

@implementation MPServerObjectDatabaseImportResult

- (MPServerObjectDatabaseImportResult)initWithAnnotatedPayload:(id *)a3 playableAssetIdentifiers:(id)a4 importedIdentifiers:(id)a5 assetsCount:(int64_t)a6 hlsAssetsCount:(int64_t)a7 error:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v27.receiver = self;
  v27.super_class = MPServerObjectDatabaseImportResult;
  v17 = [(MPServerObjectDatabaseImportResult *)&v27 init];
  if (v17)
  {
    if (a3)
    {
      v18 = [*a3 copy];
    }

    else
    {
      v18 = 0;
    }

    annotatedPayload = v17->_annotatedPayload;
    v17->_annotatedPayload = v18;

    v20 = [v14 copy];
    playableAssetIdentifiers = v17->_playableAssetIdentifiers;
    v17->_playableAssetIdentifiers = v20;

    v22 = [v15 copy];
    importedIdentifiers = v17->_importedIdentifiers;
    v17->_importedIdentifiers = v22;

    v24 = [v16 copy];
    error = v17->_error;
    v17->_error = v24;

    v17->_importedObjectsCount = [v15 count];
    v17->_importedAssetsCount = a6;
    v17->_importedHLSAssetsCount = a7;
  }

  return v17;
}

@end