@interface MPModelLibraryPlaylistEditTransactionDetails
- (NSArray)changes;
- (id)_initWithIdentifier:(id)identifier referenceIdentifier:(id)referenceIdentifier changes:(id)changes;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPModelLibraryPlaylistEditTransactionDetails

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_identifier);
    objc_storeStrong(v5 + 3, self->_referenceIdentifier);
    objc_storeStrong(v5 + 1, self->_changes);
  }

  return v5;
}

- (NSArray)changes
{
  v2 = [(NSMutableArray *)self->_changes copy];

  return v2;
}

- (id)_initWithIdentifier:(id)identifier referenceIdentifier:(id)referenceIdentifier changes:(id)changes
{
  identifierCopy = identifier;
  referenceIdentifierCopy = referenceIdentifier;
  changesCopy = changes;
  v17.receiver = self;
  v17.super_class = MPModelLibraryPlaylistEditTransactionDetails;
  v12 = [(MPModelLibraryPlaylistEditTransactionDetails *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_referenceIdentifier, referenceIdentifier);
    if (changesCopy)
    {
      array = [changesCopy mutableCopy];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    changes = v13->_changes;
    v13->_changes = array;
  }

  return v13;
}

@end