@interface MPModelLibraryPlaylistEditTransactionDetails
- (NSArray)changes;
- (id)_initWithIdentifier:(id)a3 referenceIdentifier:(id)a4 changes:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPModelLibraryPlaylistEditTransactionDetails

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (id)_initWithIdentifier:(id)a3 referenceIdentifier:(id)a4 changes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MPModelLibraryPlaylistEditTransactionDetails;
  v12 = [(MPModelLibraryPlaylistEditTransactionDetails *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_referenceIdentifier, a4);
    if (v11)
    {
      v14 = [v11 mutableCopy];
    }

    else
    {
      v14 = [MEMORY[0x1E695DF70] array];
    }

    changes = v13->_changes;
    v13->_changes = v14;
  }

  return v13;
}

@end