@interface _ExistingItemUpdater
- (BOOL)fetchExistingImages;
- (BOOL)fetchExistingPosters;
- (BOOL)getResult:(id *)a3;
- (BOOL)updateExistingImagesWithImage:(id)a3;
- (BOOL)updateExistingPostersWithPoster:(id)a3;
- (_ExistingItemUpdater)initWithContactIdentifier:(id)a3 updateIsCurrent:(BOOL)a4 context:(id)a5;
- (id)existingPosterWithIdentifier:(id)a3;
- (void)enforceImageQuotas;
- (void)enforcePosterQuotas;
- (void)enforceQuotas;
- (void)insertImage:(id)a3;
- (void)insertPoster:(id)a3;
- (void)processCreatedAndUpdatedItems:(id)a3;
- (void)visitImage:(id)a3;
- (void)visitPoster:(id)a3;
@end

@implementation _ExistingItemUpdater

- (_ExistingItemUpdater)initWithContactIdentifier:(id)a3 updateIsCurrent:(BOOL)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = _ExistingItemUpdater;
  v10 = [(_ExistingItemUpdater *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v10->_updateIsCurrent = a4;
    objc_storeStrong(&v10->_context, a5);
    v10->_countOfAddedPosters = 0;
    v10->_countOfAddedImages = 0;
    error = v10->_error;
    v10->_error = 0;

    v14 = v10;
  }

  return v10;
}

- (BOOL)fetchExistingPosters
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = self->_contactIdentifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v4 = [CNContactPosterFetchRequest allPostersRequestForContactIdentifiers:v3];

  context = self->_context;
  v6 = [v4 persistentStoreRequest];
  v12 = 0;
  v7 = [(NSManagedObjectContext *)context executeFetchRequest:v6 error:&v12];
  v8 = v12;
  existingPosters = self->_existingPosters;
  self->_existingPosters = v7;

  error = self->_error;
  self->_error = v8;

  return 1;
}

- (BOOL)fetchExistingImages
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = self->_contactIdentifier;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v4 = [CNContactImageFetchRequest allImagesRequestForContactIdentifiers:v3];

  context = self->_context;
  v6 = [v4 persistentStoreRequest];
  v12 = 0;
  v7 = [(NSManagedObjectContext *)context executeFetchRequest:v6 error:&v12];
  v8 = v12;
  existingImages = self->_existingImages;
  self->_existingImages = v7;

  error = self->_error;
  self->_error = v8;

  return 1;
}

- (void)processCreatedAndUpdatedItems:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) acceptVisitor:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)enforceQuotas
{
  [(_ExistingItemUpdater *)self enforcePosterQuotas];

  [(_ExistingItemUpdater *)self enforceImageQuotas];
}

- (void)enforcePosterQuotas
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)self->_existingPosters _cn_skip:8, 0];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSManagedObjectContext *)self->_context deleteObject:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)enforceImageQuotas
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)self->_existingImages _cn_skip:8, 0];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSManagedObjectContext *)self->_context deleteObject:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)getResult:(id *)a3
{
  error = self->_error;
  if (a3 && error)
  {
    error = error;
    *a3 = error;
  }

  return error == 0;
}

- (void)visitPoster:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_updateIsCurrent)
  {
    [(NSArray *)self->_existingPosters _cn_each:&__block_literal_global_17_3];
    v4 = v5;
  }

  if (![(_ExistingItemUpdater *)self updateExistingPostersWithPoster:v4])
  {
    [(_ExistingItemUpdater *)self insertPoster:v5];
  }
}

- (id)existingPosterWithIdentifier:(id)a3
{
  v4 = a3;
  existingPosters = self->_existingPosters;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___ExistingItemUpdater_existingPosterWithIdentifier___block_invoke;
  v9[3] = &unk_1E7415F38;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)existingPosters _cn_firstObjectPassingTest:v9];

  return v7;
}

- (BOOL)updateExistingPostersWithPoster:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(_ExistingItemUpdater *)self existingPosterWithIdentifier:v5];

  if (v6)
  {
    [v6 updateWithContactPoster:v4];
    if (self->_updateIsCurrent)
    {
      [v6 setIsCurrent:1];
    }
  }

  return v6 != 0;
}

- (void)insertPoster:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactPoster" inManagedObjectContext:self->_context];
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:self->_existingPosters];
  existingPosters = self->_existingPosters;
  self->_existingPosters = v7;

  updateIsCurrent = self->_updateIsCurrent;
  v10 = [v4 pairedImage];

  if (v10)
  {
    v11 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactImage" inManagedObjectContext:self->_context];
    v16 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v13 = [v12 arrayByAddingObjectsFromArray:self->_existingImages];
    existingImages = self->_existingImages;
    self->_existingImages = v13;

    v15 = [v4 pairedImage];
    [v11 setupWithContactImage:v15 pairedPoster:v5 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];

    [v5 setupWithContactPoster:v4 pairedImage:v11 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
  }

  else
  {
    [v5 setupWithContactPoster:v4 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
  }

  ++self->_countOfAddedPosters;
}

- (void)visitImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_updateIsCurrent)
  {
    [(NSArray *)self->_existingImages _cn_each:&__block_literal_global_22_0];
    v4 = v5;
  }

  if (![(_ExistingItemUpdater *)self updateExistingImagesWithImage:v4])
  {
    [(_ExistingItemUpdater *)self insertImage:v5];
  }
}

- (BOOL)updateExistingImagesWithImage:(id)a3
{
  v4 = a3;
  v5 = [v4 pairedPoster];

  if ([v4 source])
  {
    v6 = [v4 source];
    v7 = 0;
    if (!v5 && v6 != 2)
    {
      existingImages = self->_existingImages;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54___ExistingItemUpdater_updateExistingImagesWithImage___block_invoke;
      v13[3] = &unk_1E7415F80;
      v9 = v4;
      v14 = v9;
      v10 = [(NSArray *)existingImages _cn_firstObjectPassingTest:v13];
      v11 = v10;
      v7 = v10 != 0;
      if (v10)
      {
        [v10 updateWithContactImage:v9];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)insertImage:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactImage" inManagedObjectContext:self->_context];
  v19[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:self->_existingImages];
  existingImages = self->_existingImages;
  self->_existingImages = v7;

  updateIsCurrent = self->_updateIsCurrent;
  v10 = [v4 pairedPoster];

  if (v10)
  {
    v11 = [v4 pairedPoster];
    v12 = [v11 identifier];
    v13 = [(_ExistingItemUpdater *)self existingPosterWithIdentifier:v12];

    if (!v13)
    {
      v13 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactPoster" inManagedObjectContext:self->_context];
      v18 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v15 = [v14 arrayByAddingObjectsFromArray:self->_existingPosters];
      existingPosters = self->_existingPosters;
      self->_existingPosters = v15;

      v17 = [v4 pairedPoster];
      [v13 setupWithContactPoster:v17 pairedImage:v5 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
    }

    [v5 setupWithContactImage:v4 pairedPoster:v13 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
  }

  else
  {
    [v5 setupWithContactImage:v4 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
  }

  ++self->_countOfAddedImages;
}

@end