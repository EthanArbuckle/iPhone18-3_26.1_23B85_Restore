@interface PHPersistentObjectChangeDetails
- (PHPersistentObjectChangeDetails)initWithObjectType:(int64_t)a3 insertedIdentifiers:(id)a4 updatedIdentifiers:(id)a5 deletedIdentifiers:(id)a6;
@end

@implementation PHPersistentObjectChangeDetails

- (PHPersistentObjectChangeDetails)initWithObjectType:(int64_t)a3 insertedIdentifiers:(id)a4 updatedIdentifiers:(id)a5 deletedIdentifiers:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = PHPersistentObjectChangeDetails;
  v13 = [(PHPersistentObjectChangeDetails *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_objectType = a3;
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = [MEMORY[0x1E695DFD8] set];
    }

    insertedLocalIdentifiers = v14->_insertedLocalIdentifiers;
    v14->_insertedLocalIdentifiers = v15;

    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = [MEMORY[0x1E695DFD8] set];
    }

    updatedLocalIdentifiers = v14->_updatedLocalIdentifiers;
    v14->_updatedLocalIdentifiers = v17;

    if (v12)
    {
      v19 = v12;
    }

    else
    {
      v19 = [MEMORY[0x1E695DFD8] set];
    }

    deletedLocalIdentifiers = v14->_deletedLocalIdentifiers;
    v14->_deletedLocalIdentifiers = v19;
  }

  return v14;
}

@end