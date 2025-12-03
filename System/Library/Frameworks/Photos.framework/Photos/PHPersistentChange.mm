@interface PHPersistentChange
- (PHPersistentChange)initWithChange:(id)change;
- (PHPersistentObjectChangeDetails)changeDetailsForObjectType:(PHObjectType)objectType error:(NSError *)error;
@end

@implementation PHPersistentChange

- (PHPersistentObjectChangeDetails)changeDetailsForObjectType:(PHObjectType)objectType error:(NSError *)error
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(PHChange *)self->_change hasIncrementalChanges])
  {
    v7 = [PHPhotoLibrary PHObjectClassForObjectType:objectType];
    if (v7)
    {
      v8 = [(PHChange *)self->_change changedLocalIdentifiersForEntityClass:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKeyedSubscript:@"PHInsertedLocalIdentifiersKey"];
        v11 = [v9 objectForKeyedSubscript:@"PHUpdatedLocalIdentifiersKey"];
        v12 = [v9 objectForKeyedSubscript:@"PHDeletedLocalIdentifiersKey"];
        v13 = [[PHPersistentObjectChangeDetails alloc] initWithObjectType:objectType insertedIdentifiers:v10 updatedIdentifiers:v11 deletedIdentifiers:v12];

        if (v13)
        {
LABEL_15:

          goto LABEL_16;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      change = self->_change;
      v19 = 138412546;
      v20 = change;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Missing changeDetails for change %@ and entityClass %@", &v19, 0x16u);
    }

    v17 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
    if (error)
    {
      v17 = v17;
      *error = v17;
    }

    v13 = 0;
    goto LABEL_15;
  }

  v14 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3210 userInfo:0];
  if (error)
  {
    v14 = v14;
    *error = v14;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (PHPersistentChange)initWithChange:(id)change
{
  changeCopy = change;
  v6 = [(PHPersistentChange *)self init];
  if (v6)
  {
    changeToken = [changeCopy changeToken];
    if (changeToken)
    {
      objc_storeStrong(&v6->_change, change);
      objc_storeStrong(&v6->_changeToken, changeToken);
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

@end