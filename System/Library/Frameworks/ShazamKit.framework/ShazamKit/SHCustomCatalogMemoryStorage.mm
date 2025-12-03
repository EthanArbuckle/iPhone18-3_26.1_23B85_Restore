@interface SHCustomCatalogMemoryStorage
- (BOOL)signatureExistsForIdentifier:(id)identifier;
- (NSArray)referenceSignatures;
- (SHCustomCatalogMemoryStorage)init;
- (id)mediaItemsForReferenceSignature:(id)signature;
- (id)referenceSignatureForTrackID:(unint64_t)d;
- (void)addSignature:(id)signature representingMediaItems:(id)items;
- (void)producedMediaItem:(id)item forID:(id)d;
- (void)producedSignature:(id)signature forID:(id)d;
- (void)removeSignatureWithID:(id)d;
@end

@implementation SHCustomCatalogMemoryStorage

- (SHCustomCatalogMemoryStorage)init
{
  v10.receiver = self;
  v10.super_class = SHCustomCatalogMemoryStorage;
  v2 = [(SHCustomCatalogMemoryStorage *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    signatureIDs = v2->_signatureIDs;
    v2->_signatureIDs = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    signatures = v2->_signatures;
    v2->_signatures = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    mediaItems = v2->_mediaItems;
    v2->_mediaItems = dictionary2;
  }

  return v2;
}

- (NSArray)referenceSignatures
{
  v30 = *MEMORY[0x277D85DE8];
  referenceSignatures = self->_referenceSignatures;
  if (referenceSignatures)
  {
    v3 = referenceSignatures;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    signatureIDs = [(SHCustomCatalogMemoryStorage *)self signatureIDs];
    v7 = [signatureIDs count];

    if (v7)
    {
      v8 = 0;
      do
      {
        signatureIDs2 = [(SHCustomCatalogMemoryStorage *)self signatureIDs];
        v10 = [signatureIDs2 objectAtIndexedSubscript:v8];

        signatures = [(SHCustomCatalogMemoryStorage *)self signatures];
        v12 = [signatures objectForKeyedSubscript:v10];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [[SHReferenceSignature alloc] initWithID:v10 trackID:v8 signature:*(*(&v25 + 1) + 8 * i)];
              [array addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v15);
        }

        ++v8;
        signatureIDs3 = [(SHCustomCatalogMemoryStorage *)self signatureIDs];
        v20 = [signatureIDs3 count];
      }

      while (v20 > v8);
    }

    v21 = [array copy];
    v22 = self->_referenceSignatures;
    self->_referenceSignatures = v21;

    v3 = self->_referenceSignatures;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)mediaItemsForReferenceSignature:(id)signature
{
  signatureCopy = signature;
  mediaItems = [(SHCustomCatalogMemoryStorage *)self mediaItems];
  v6 = [signatureCopy ID];

  v7 = [mediaItems objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  return v9;
}

- (void)addSignature:(id)signature representingMediaItems:(id)items
{
  v24 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  itemsCopy = items;
  v8 = [signatureCopy _ID];
  uUIDString = [v8 UUIDString];
  [(SHCustomCatalogMemoryStorage *)self producedSignature:signatureCopy forID:uUIDString];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = [signatureCopy _ID];
        uUIDString2 = [v16 UUIDString];
        [(SHCustomCatalogMemoryStorage *)self producedMediaItem:v15 forID:uUIDString2];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeSignatureWithID:(id)d
{
  dCopy = d;
  signatureIDs = [(SHCustomCatalogMemoryStorage *)self signatureIDs];
  [signatureIDs removeObject:dCopy];

  signatures = [(SHCustomCatalogMemoryStorage *)self signatures];
  [signatures removeObjectForKey:dCopy];

  mediaItems = [(SHCustomCatalogMemoryStorage *)self mediaItems];
  [mediaItems removeObjectForKey:dCopy];

  referenceSignatures = self->_referenceSignatures;
  self->_referenceSignatures = 0;
}

- (id)referenceSignatureForTrackID:(unint64_t)d
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  referenceSignatures = [(SHCustomCatalogMemoryStorage *)self referenceSignatures];
  v5 = [referenceSignatures countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(referenceSignatures);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 trackID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [referenceSignatures countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)producedMediaItem:(id)item forID:(id)d
{
  dCopy = d;
  referenceSignatures = self->_referenceSignatures;
  self->_referenceSignatures = 0;
  itemCopy = item;

  mediaItems = [(SHCustomCatalogMemoryStorage *)self mediaItems];
  v9 = [mediaItems objectForKeyedSubscript:dCopy];

  if (!v9)
  {
    array = [MEMORY[0x277CBEB18] array];
    mediaItems2 = [(SHCustomCatalogMemoryStorage *)self mediaItems];
    [mediaItems2 setObject:array forKeyedSubscript:dCopy];
  }

  mediaItems3 = [(SHCustomCatalogMemoryStorage *)self mediaItems];
  v13 = [mediaItems3 objectForKeyedSubscript:dCopy];
  [v13 addObject:itemCopy];
}

- (void)producedSignature:(id)signature forID:(id)d
{
  dCopy = d;
  referenceSignatures = self->_referenceSignatures;
  self->_referenceSignatures = 0;
  signatureCopy = signature;

  signatures = [(SHCustomCatalogMemoryStorage *)self signatures];
  v9 = [signatures objectForKeyedSubscript:dCopy];

  if (!v9)
  {
    array = [MEMORY[0x277CBEB18] array];
    signatures2 = [(SHCustomCatalogMemoryStorage *)self signatures];
    [signatures2 setObject:array forKeyedSubscript:dCopy];

    [(NSMutableArray *)self->_signatureIDs addObject:dCopy];
  }

  signatures3 = [(SHCustomCatalogMemoryStorage *)self signatures];
  v13 = [signatures3 objectForKeyedSubscript:dCopy];
  [v13 addObject:signatureCopy];
}

- (BOOL)signatureExistsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  signatures = [(SHCustomCatalogMemoryStorage *)self signatures];
  uUIDString = [identifierCopy UUIDString];

  v7 = [signatures objectForKeyedSubscript:uUIDString];
  LOBYTE(identifierCopy) = v7 != 0;

  return identifierCopy;
}

@end