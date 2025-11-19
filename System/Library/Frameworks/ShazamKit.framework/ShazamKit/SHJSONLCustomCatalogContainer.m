@interface SHJSONLCustomCatalogContainer
+ (id)customCatalogURLFromURL:(id)a3 error:(id *)a4;
- (BOOL)containsSignatureWithIdentifier:(id)a3;
- (BOOL)loadFromData:(id)a3 error:(id *)a4;
- (BOOL)loadFromURL:(id)a3 error:(id *)a4;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (NSArray)referenceSignatures;
- (NSData)dataRepresentation;
- (SHJSONLCustomCatalogContainer)init;
- (id)jsonObjectRepresentationWithError:(id *)a3;
- (id)matchReferenceAtIndex:(int64_t)a3;
- (id)matchReferenceForTrackID:(unint64_t)a3;
- (id)mediaItemsForReferenceSignature:(id)a3;
- (id)referenceSignatureForTrackID:(unint64_t)a3;
- (int64_t)count;
- (void)addSignature:(id)a3 representingMediaItems:(id)a4;
- (void)removeSignatureWithID:(id)a3;
@end

@implementation SHJSONLCustomCatalogContainer

- (SHJSONLCustomCatalogContainer)init
{
  v8.receiver = self;
  v8.super_class = SHJSONLCustomCatalogContainer;
  v2 = [(SHJSONLCustomCatalogContainer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SHJSONLCustomCatalogTransformer);
    transformer = v2->_transformer;
    v2->_transformer = v3;

    v5 = objc_alloc_init(SHCustomCatalogMemoryStorage);
    container = v2->_container;
    v2->_container = v5;
  }

  return v2;
}

- (BOOL)loadFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x277D54E18]);
    v8 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [v7 setDelegate:v8];

    v9 = [(SHJSONLCustomCatalogContainer *)self container];
    v10 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [v10 setDelegate:v9];

    v11 = [v7 loadData:v6 withCompression:517 error:a4];
    v12 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [v12 reset];
  }

  else
  {
    [SHError annotateClientError:a4 code:300 underlyingError:0];
    v11 = 0;
  }

  return v11;
}

- (BOOL)loadFromURL:(id)a3 error:(id *)a4
{
  v6 = [SHJSONLCustomCatalogContainer customCatalogURLFromURL:a3 error:?];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D54E18]);
    v8 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [v7 setDelegate:v8];

    v9 = [(SHJSONLCustomCatalogContainer *)self container];
    v10 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [v10 setDelegate:v9];

    v11 = [v7 loadDataFromURL:v6 withCompression:517 error:a4];
    v12 = [(SHJSONLCustomCatalogContainer *)self transformer];
    [v12 reset];
  }

  else
  {
    [SHError annotateClientError:a4 code:301 underlyingError:0];
    v11 = 0;
  }

  return v11;
}

- (NSData)dataRepresentation
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v2 = [(SHJSONLCustomCatalogContainer *)self jsonObjectRepresentationWithError:&v10];
  v3 = v10;
  if (v2)
  {
    v9 = v3;
    v4 = [MEMORY[0x277D54E20] dataForJSONObjects:v2 compression:517 error:&v9];
    v5 = v9;

    if (v4)
    {
      goto LABEL_10;
    }

    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_ERROR, "Failed to compress contents: %@", buf, 0xCu);
    }

    v3 = v5;
  }

  else
  {
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_ERROR, "Failed to convert catalog contents to json representation: %@", buf, 0xCu);
    }

    v4 = 0;
  }

  v5 = v3;
LABEL_10:

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)jsonObjectRepresentationWithError:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = +[SHJSONLCustomCatalogTransformer outputFileHeader];
  v6 = [v4 arrayWithObject:v5];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(SHJSONLCustomCatalogContainer *)self container];
  v8 = [v7 referenceSignatures];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 signature];
        v15 = [v13 ID];
        v16 = [SHJSONLCustomCatalogTransformer catalogFileRepresentationOfSignature:v14 withID:v15];
        [v6 addObject:v16];

        v17 = [(SHJSONLCustomCatalogContainer *)self mediaItemsForReferenceSignature:v13];
        v18 = [v13 ID];
        v19 = [SHJSONLCustomCatalogTransformer catalogFileRepresentationOfMediaItems:v17 withID:v18 error:a3];

        if (!v19)
        {

          v20 = 0;
          goto LABEL_11;
        }

        [v6 addObjectsFromArray:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v20 = v6;
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [SHJSONLCustomCatalogContainer customCatalogURLFromURL:a3 error:?];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D54E20]) initWithDestination:v6 compression:517];
    v8 = [(SHJSONLCustomCatalogContainer *)self jsonObjectRepresentationWithError:a4];
    v9 = v8;
    if (v8)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if (![v7 writeObject:*(*(&v18 + 1) + 8 * i) error:{a4, v18}])
            {

              goto LABEL_14;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v15 = [v7 closeWithError:a4];
    }

    else
    {
LABEL_14:
      v15 = 0;
    }
  }

  else
  {
    [SHError annotateClientError:a4 code:301 underlyingError:0];
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)customCatalogURLFromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 isFileURL])
  {
    v13 = 0;
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v5 path];
    [v6 fileExistsAtPath:v7 isDirectory:&v13];

    if (v13 == 1)
    {
      v8 = [v5 URLByAppendingPathComponent:@"Signatures"];

      v9 = [MEMORY[0x277CE1CB8] SHCustomCatalogContentType];
      v10 = [v9 preferredFilenameExtension];
      v5 = [v8 URLByAppendingPathExtension:v10];
    }

    v5 = v5;
    v11 = v5;
  }

  else
  {
    [SHError annotateClientError:a4 code:301 underlyingError:0];
    v11 = 0;
  }

  return v11;
}

- (id)mediaItemsForReferenceSignature:(id)a3
{
  v4 = a3;
  v5 = [(SHJSONLCustomCatalogContainer *)self container];
  v6 = [v5 mediaItemsForReferenceSignature:v4];

  return v6;
}

- (id)referenceSignatureForTrackID:(unint64_t)a3
{
  v4 = [(SHJSONLCustomCatalogContainer *)self container];
  v5 = [v4 referenceSignatureForTrackID:a3];

  return v5;
}

- (void)addSignature:(id)a3 representingMediaItems:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHJSONLCustomCatalogContainer *)self container];
  [v8 addSignature:v7 representingMediaItems:v6];
}

- (void)removeSignatureWithID:(id)a3
{
  v4 = a3;
  v5 = [(SHJSONLCustomCatalogContainer *)self container];
  [v5 removeSignatureWithID:v4];
}

- (NSArray)referenceSignatures
{
  v2 = [(SHJSONLCustomCatalogContainer *)self container];
  v3 = [v2 referenceSignatures];

  return v3;
}

- (int64_t)count
{
  v2 = [(SHJSONLCustomCatalogContainer *)self referenceSignatures];
  v3 = [v2 count];

  return v3;
}

- (id)matchReferenceAtIndex:(int64_t)a3
{
  v5 = [(SHJSONLCustomCatalogContainer *)self referenceSignatures];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(SHJSONLCustomCatalogContainer *)self mediaItemsForReferenceSignature:v6];
  v8 = [SHReferenceMatch alloc];
  v9 = [v6 signature];
  v10 = [(SHReferenceMatch *)v8 initWithSignature:v9 mediaItems:v7];

  return v10;
}

- (id)matchReferenceForTrackID:(unint64_t)a3
{
  v4 = [(SHJSONLCustomCatalogContainer *)self referenceSignatureForTrackID:a3];
  if (v4)
  {
    v5 = [(SHJSONLCustomCatalogContainer *)self mediaItemsForReferenceSignature:v4];
    v6 = [SHReferenceMatch alloc];
    v7 = [v4 signature];
    v8 = [(SHReferenceMatch *)v6 initWithSignature:v7 mediaItems:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsSignatureWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHJSONLCustomCatalogContainer *)self container];
  v6 = [v5 signatureExistsForIdentifier:v4];

  return v6;
}

@end