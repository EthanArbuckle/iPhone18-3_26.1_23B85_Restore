@interface PHPersistentObjectChangeDetails
- (PHPersistentObjectChangeDetails)initWithObjectType:(int64_t)type insertedIdentifiers:(id)identifiers updatedIdentifiers:(id)updatedIdentifiers deletedIdentifiers:(id)deletedIdentifiers;
@end

@implementation PHPersistentObjectChangeDetails

- (PHPersistentObjectChangeDetails)initWithObjectType:(int64_t)type insertedIdentifiers:(id)identifiers updatedIdentifiers:(id)updatedIdentifiers deletedIdentifiers:(id)deletedIdentifiers
{
  identifiersCopy = identifiers;
  updatedIdentifiersCopy = updatedIdentifiers;
  deletedIdentifiersCopy = deletedIdentifiers;
  v22.receiver = self;
  v22.super_class = PHPersistentObjectChangeDetails;
  v13 = [(PHPersistentObjectChangeDetails *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_objectType = type;
    if (identifiersCopy)
    {
      v15 = identifiersCopy;
    }

    else
    {
      v15 = [MEMORY[0x1E695DFD8] set];
    }

    insertedLocalIdentifiers = v14->_insertedLocalIdentifiers;
    v14->_insertedLocalIdentifiers = v15;

    if (updatedIdentifiersCopy)
    {
      v17 = updatedIdentifiersCopy;
    }

    else
    {
      v17 = [MEMORY[0x1E695DFD8] set];
    }

    updatedLocalIdentifiers = v14->_updatedLocalIdentifiers;
    v14->_updatedLocalIdentifiers = v17;

    if (deletedIdentifiersCopy)
    {
      v19 = deletedIdentifiersCopy;
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