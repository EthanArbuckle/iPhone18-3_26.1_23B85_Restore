@interface SHCustomCatalogMemoryStorage
- (BOOL)signatureExistsForIdentifier:(id)a3;
- (NSArray)referenceSignatures;
- (SHCustomCatalogMemoryStorage)init;
- (id)mediaItemsForReferenceSignature:(id)a3;
- (id)referenceSignatureForTrackID:(unint64_t)a3;
- (void)addSignature:(id)a3 representingMediaItems:(id)a4;
- (void)producedMediaItem:(id)a3 forID:(id)a4;
- (void)producedSignature:(id)a3 forID:(id)a4;
- (void)removeSignatureWithID:(id)a3;
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

    v5 = [MEMORY[0x277CBEB38] dictionary];
    signatures = v2->_signatures;
    v2->_signatures = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    mediaItems = v2->_mediaItems;
    v2->_mediaItems = v7;
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
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(SHCustomCatalogMemoryStorage *)self signatureIDs];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [(SHCustomCatalogMemoryStorage *)self signatureIDs];
        v10 = [v9 objectAtIndexedSubscript:v8];

        v11 = [(SHCustomCatalogMemoryStorage *)self signatures];
        v12 = [v11 objectForKeyedSubscript:v10];

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
              [v5 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v15);
        }

        ++v8;
        v19 = [(SHCustomCatalogMemoryStorage *)self signatureIDs];
        v20 = [v19 count];
      }

      while (v20 > v8);
    }

    v21 = [v5 copy];
    v22 = self->_referenceSignatures;
    self->_referenceSignatures = v21;

    v3 = self->_referenceSignatures;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)mediaItemsForReferenceSignature:(id)a3
{
  v4 = a3;
  v5 = [(SHCustomCatalogMemoryStorage *)self mediaItems];
  v6 = [v4 ID];

  v7 = [v5 objectForKeyedSubscript:v6];
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

- (void)addSignature:(id)a3 representingMediaItems:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 _ID];
  v9 = [v8 UUIDString];
  [(SHCustomCatalogMemoryStorage *)self producedSignature:v6 forID:v9];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v7;
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
        v16 = [v6 _ID];
        v17 = [v16 UUIDString];
        [(SHCustomCatalogMemoryStorage *)self producedMediaItem:v15 forID:v17];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeSignatureWithID:(id)a3
{
  v4 = a3;
  v5 = [(SHCustomCatalogMemoryStorage *)self signatureIDs];
  [v5 removeObject:v4];

  v6 = [(SHCustomCatalogMemoryStorage *)self signatures];
  [v6 removeObjectForKey:v4];

  v7 = [(SHCustomCatalogMemoryStorage *)self mediaItems];
  [v7 removeObjectForKey:v4];

  referenceSignatures = self->_referenceSignatures;
  self->_referenceSignatures = 0;
}

- (id)referenceSignatureForTrackID:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SHCustomCatalogMemoryStorage *)self referenceSignatures];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 trackID] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)producedMediaItem:(id)a3 forID:(id)a4
{
  v14 = a4;
  referenceSignatures = self->_referenceSignatures;
  self->_referenceSignatures = 0;
  v7 = a3;

  v8 = [(SHCustomCatalogMemoryStorage *)self mediaItems];
  v9 = [v8 objectForKeyedSubscript:v14];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(SHCustomCatalogMemoryStorage *)self mediaItems];
    [v11 setObject:v10 forKeyedSubscript:v14];
  }

  v12 = [(SHCustomCatalogMemoryStorage *)self mediaItems];
  v13 = [v12 objectForKeyedSubscript:v14];
  [v13 addObject:v7];
}

- (void)producedSignature:(id)a3 forID:(id)a4
{
  v14 = a4;
  referenceSignatures = self->_referenceSignatures;
  self->_referenceSignatures = 0;
  v7 = a3;

  v8 = [(SHCustomCatalogMemoryStorage *)self signatures];
  v9 = [v8 objectForKeyedSubscript:v14];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(SHCustomCatalogMemoryStorage *)self signatures];
    [v11 setObject:v10 forKeyedSubscript:v14];

    [(NSMutableArray *)self->_signatureIDs addObject:v14];
  }

  v12 = [(SHCustomCatalogMemoryStorage *)self signatures];
  v13 = [v12 objectForKeyedSubscript:v14];
  [v13 addObject:v7];
}

- (BOOL)signatureExistsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHCustomCatalogMemoryStorage *)self signatures];
  v6 = [v4 UUIDString];

  v7 = [v5 objectForKeyedSubscript:v6];
  LOBYTE(v4) = v7 != 0;

  return v4;
}

@end