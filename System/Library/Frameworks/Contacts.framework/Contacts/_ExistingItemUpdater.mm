@interface _ExistingItemUpdater
- (BOOL)fetchExistingImages;
- (BOOL)fetchExistingPosters;
- (BOOL)getResult:(id *)result;
- (BOOL)updateExistingImagesWithImage:(id)image;
- (BOOL)updateExistingPostersWithPoster:(id)poster;
- (_ExistingItemUpdater)initWithContactIdentifier:(id)identifier updateIsCurrent:(BOOL)current context:(id)context;
- (id)existingPosterWithIdentifier:(id)identifier;
- (void)enforceImageQuotas;
- (void)enforcePosterQuotas;
- (void)enforceQuotas;
- (void)insertImage:(id)image;
- (void)insertPoster:(id)poster;
- (void)processCreatedAndUpdatedItems:(id)items;
- (void)visitImage:(id)image;
- (void)visitPoster:(id)poster;
@end

@implementation _ExistingItemUpdater

- (_ExistingItemUpdater)initWithContactIdentifier:(id)identifier updateIsCurrent:(BOOL)current context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = _ExistingItemUpdater;
  v10 = [(_ExistingItemUpdater *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    contactIdentifier = v10->_contactIdentifier;
    v10->_contactIdentifier = v11;

    v10->_updateIsCurrent = current;
    objc_storeStrong(&v10->_context, context);
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
  persistentStoreRequest = [v4 persistentStoreRequest];
  v12 = 0;
  v7 = [(NSManagedObjectContext *)context executeFetchRequest:persistentStoreRequest error:&v12];
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
  persistentStoreRequest = [v4 persistentStoreRequest];
  v12 = 0;
  v7 = [(NSManagedObjectContext *)context executeFetchRequest:persistentStoreRequest error:&v12];
  v8 = v12;
  existingImages = self->_existingImages;
  self->_existingImages = v7;

  error = self->_error;
  self->_error = v8;

  return 1;
}

- (void)processCreatedAndUpdatedItems:(id)items
{
  v14 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        [*(*(&v9 + 1) + 8 * v8++) acceptVisitor:self];
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)getResult:(id *)result
{
  error = self->_error;
  if (result && error)
  {
    error = error;
    *result = error;
  }

  return error == 0;
}

- (void)visitPoster:(id)poster
{
  posterCopy = poster;
  v5 = posterCopy;
  if (self->_updateIsCurrent)
  {
    [(NSArray *)self->_existingPosters _cn_each:&__block_literal_global_17_3];
    posterCopy = v5;
  }

  if (![(_ExistingItemUpdater *)self updateExistingPostersWithPoster:posterCopy])
  {
    [(_ExistingItemUpdater *)self insertPoster:v5];
  }
}

- (id)existingPosterWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  existingPosters = self->_existingPosters;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___ExistingItemUpdater_existingPosterWithIdentifier___block_invoke;
  v9[3] = &unk_1E7415F38;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [(NSArray *)existingPosters _cn_firstObjectPassingTest:v9];

  return v7;
}

- (BOOL)updateExistingPostersWithPoster:(id)poster
{
  posterCopy = poster;
  identifier = [posterCopy identifier];
  v6 = [(_ExistingItemUpdater *)self existingPosterWithIdentifier:identifier];

  if (v6)
  {
    [v6 updateWithContactPoster:posterCopy];
    if (self->_updateIsCurrent)
    {
      [v6 setIsCurrent:1];
    }
  }

  return v6 != 0;
}

- (void)insertPoster:(id)poster
{
  v17[1] = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  v5 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactPoster" inManagedObjectContext:self->_context];
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:self->_existingPosters];
  existingPosters = self->_existingPosters;
  self->_existingPosters = v7;

  updateIsCurrent = self->_updateIsCurrent;
  pairedImage = [posterCopy pairedImage];

  if (pairedImage)
  {
    v11 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactImage" inManagedObjectContext:self->_context];
    v16 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v13 = [v12 arrayByAddingObjectsFromArray:self->_existingImages];
    existingImages = self->_existingImages;
    self->_existingImages = v13;

    pairedImage2 = [posterCopy pairedImage];
    [v11 setupWithContactImage:pairedImage2 pairedPoster:v5 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];

    [v5 setupWithContactPoster:posterCopy pairedImage:v11 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
  }

  else
  {
    [v5 setupWithContactPoster:posterCopy contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
  }

  ++self->_countOfAddedPosters;
}

- (void)visitImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (self->_updateIsCurrent)
  {
    [(NSArray *)self->_existingImages _cn_each:&__block_literal_global_22_0];
    imageCopy = v5;
  }

  if (![(_ExistingItemUpdater *)self updateExistingImagesWithImage:imageCopy])
  {
    [(_ExistingItemUpdater *)self insertImage:v5];
  }
}

- (BOOL)updateExistingImagesWithImage:(id)image
{
  imageCopy = image;
  pairedPoster = [imageCopy pairedPoster];

  if ([imageCopy source])
  {
    source = [imageCopy source];
    v7 = 0;
    if (!pairedPoster && source != 2)
    {
      existingImages = self->_existingImages;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54___ExistingItemUpdater_updateExistingImagesWithImage___block_invoke;
      v13[3] = &unk_1E7415F80;
      v9 = imageCopy;
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

- (void)insertImage:(id)image
{
  v19[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v5 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactImage" inManagedObjectContext:self->_context];
  v19[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:self->_existingImages];
  existingImages = self->_existingImages;
  self->_existingImages = v7;

  updateIsCurrent = self->_updateIsCurrent;
  pairedPoster = [imageCopy pairedPoster];

  if (pairedPoster)
  {
    pairedPoster2 = [imageCopy pairedPoster];
    identifier = [pairedPoster2 identifier];
    v13 = [(_ExistingItemUpdater *)self existingPosterWithIdentifier:identifier];

    if (!v13)
    {
      v13 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CNContactPoster" inManagedObjectContext:self->_context];
      v18 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v15 = [v14 arrayByAddingObjectsFromArray:self->_existingPosters];
      existingPosters = self->_existingPosters;
      self->_existingPosters = v15;

      pairedPoster3 = [imageCopy pairedPoster];
      [v13 setupWithContactPoster:pairedPoster3 pairedImage:v5 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
    }

    [v5 setupWithContactImage:imageCopy pairedPoster:v13 contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
  }

  else
  {
    [v5 setupWithContactImage:imageCopy contactIdentifier:self->_contactIdentifier externalDetails:0 isCurrent:updateIsCurrent];
  }

  ++self->_countOfAddedImages;
}

@end