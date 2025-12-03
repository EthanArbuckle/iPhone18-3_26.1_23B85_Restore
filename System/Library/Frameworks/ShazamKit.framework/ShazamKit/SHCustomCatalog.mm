@interface SHCustomCatalog
- (BOOL)addCustomCatalog:(id)catalog error:(id *)error;
- (BOOL)addCustomCatalogDataRepresentation:(id)representation error:(id *)error;
- (BOOL)addCustomCatalogFromURL:(NSURL *)customCatalogURL error:(NSError *)error;
- (BOOL)addReferenceSignature:(SHSignature *)signature representingMediaItems:(NSArray *)mediaItems error:(NSError *)error;
- (BOOL)writeToURL:(NSURL *)destinationURL error:(NSError *)error;
- (NSData)dataRepresentation;
- (SHCustomCatalog)init;
- (SHCustomCatalog)initWithConfiguration:(id)configuration dataRepresentation:(id)representation error:(id *)error;
- (SHCustomCatalog)initWithConfiguration:(id)configuration error:(id *)error;
- (SHCustomCatalog)initWithDataRepresentation:(id)representation error:(id *)error;
- (id)_createMatcher;
- (id)objectAtIndexedSubscript:(int64_t)subscript;
- (int64_t)count;
- (void)enumerateWithBlock:(id)block;
- (void)removeReferenceSignatureWithID:(id)d;
@end

@implementation SHCustomCatalog

- (SHCustomCatalog)init
{
  v3 = objc_opt_new();
  v4 = [(SHCustomCatalog *)self initWithConfiguration:v3 error:0];

  return v4;
}

- (SHCustomCatalog)initWithDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v7 = objc_opt_new();
  v8 = [(SHCustomCatalog *)self initWithConfiguration:v7 dataRepresentation:representationCopy error:error];

  return v8;
}

- (SHCustomCatalog)initWithConfiguration:(id)configuration dataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v9 = [(SHCustomCatalog *)self initWithConfiguration:configuration error:error];
  v10 = v9;
  if (v9 && ![(SHCustomCatalog *)v9 addCustomCatalogDataRepresentation:representationCopy error:error])
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (SHCustomCatalog)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = SHCustomCatalog;
  v8 = [(SHCatalog *)&v13 initWithConfiguration:configurationCopy error:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->__configuration, configuration);
    v10 = objc_alloc_init(SHJSONLCustomCatalogContainer);
    customCatalogContainer = v9->_customCatalogContainer;
    v9->_customCatalogContainer = v10;
  }

  return v9;
}

- (BOOL)addCustomCatalogFromURL:(NSURL *)customCatalogURL error:(NSError *)error
{
  v6 = customCatalogURL;
  customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
  v8 = [customCatalogContainer loadFromURL:v6 error:error];

  [SHError remapErrorToClientErrorPointer:error];
  return v8;
}

- (BOOL)addCustomCatalog:(id)catalog error:(id *)error
{
  dataRepresentation = [catalog dataRepresentation];
  LOBYTE(error) = [(SHCustomCatalog *)self addCustomCatalogDataRepresentation:dataRepresentation error:error];

  return error;
}

- (BOOL)addCustomCatalogDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
  v8 = [customCatalogContainer loadFromData:representationCopy error:error];

  if ((v8 & 1) == 0)
  {
    [SHError remapErrorToClientErrorPointer:error];
  }

  return v8;
}

- (BOOL)writeToURL:(NSURL *)destinationURL error:(NSError *)error
{
  v6 = destinationURL;
  customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
  v8 = [customCatalogContainer writeToURL:v6 error:error];

  [SHError remapErrorToClientErrorPointer:error];
  return v8;
}

- (NSData)dataRepresentation
{
  customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
  dataRepresentation = [customCatalogContainer dataRepresentation];

  return dataRepresentation;
}

- (BOOL)addReferenceSignature:(SHSignature *)signature representingMediaItems:(NSArray *)mediaItems error:(NSError *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = signature;
  v9 = mediaItems;
  [(SHSignature *)v8 duration];
  v11 = v10;
  [(SHCatalog *)self minimumQuerySignatureDuration];
  if (v11 >= v12)
  {
    customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
    v22 = [(SHSignature *)v8 _ID];
    v23 = [customCatalogContainer containsSignatureWithIdentifier:v22];

    if (!v23)
    {
      customCatalogContainer2 = [(SHCustomCatalog *)self customCatalogContainer];
      [customCatalogContainer2 addSignature:v8 representingMediaItems:v9];

      v27 = 1;
      goto LABEL_7;
    }

    v24 = MEMORY[0x277CCACA8];
    v25 = [(SHSignature *)v8 _ID];
    uUIDString = [v25 UUIDString];
    v17 = [v24 stringWithFormat:@"A signature with the ID %@ already exists in the catalog.", uUIDString];

    v31 = *MEMORY[0x277CCA470];
    v32 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v19 = error;
    v20 = 300;
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    [(SHCatalog *)self minimumQuerySignatureDuration];
    v15 = v14;
    [(SHSignature *)v8 duration];
    v17 = [v13 stringWithFormat:@"The minimum signature duration allowed is %.2f secs, this signature is only %.2f secs", v15, v16];
    v33 = *MEMORY[0x277CCA470];
    v34[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v19 = error;
    v20 = 201;
  }

  [SHError annotateClientError:v19 code:v20 underlyingError:0 keyOverrides:v18];

  [SHError remapErrorToClientErrorPointer:error];
  v27 = 0;
LABEL_7:

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)enumerateWithBlock:(id)block
{
  blockCopy = block;
  v16 = 0;
  customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
  referenceSignatures = [customCatalogContainer referenceSignatures];
  v7 = [referenceSignatures count];

  if (v7)
  {
    v8 = 0;
    do
    {
      customCatalogContainer2 = [(SHCustomCatalog *)self customCatalogContainer];
      v10 = [customCatalogContainer2 matchReferenceAtIndex:v8];

      signature = [v10 signature];
      mediaItems = [v10 mediaItems];
      blockCopy[2](blockCopy, signature, mediaItems, &v16);

      LODWORD(signature) = v16;
      if (signature == 1)
      {
        break;
      }

      ++v8;
      customCatalogContainer3 = [(SHCustomCatalog *)self customCatalogContainer];
      referenceSignatures2 = [customCatalogContainer3 referenceSignatures];
      v15 = [referenceSignatures2 count];
    }

    while (v15 > v8);
  }
}

- (id)_createMatcher
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__SHCustomCatalog__createMatcher__block_invoke;
  v11[3] = &unk_2788F8028;
  v11[4] = &v12;
  [(SHCustomCatalog *)self enumerateWithBlock:v11];
  _configuration = [(SHCustomCatalog *)self _configuration];
  supportsSignatureTracking = [_configuration supportsSignatureTracking];

  if (supportsSignatureTracking)
  {
    v5 = [SHCustomCatalogTrackerMatcher alloc];
    _customCatalogConfiguration = [(SHCustomCatalog *)self _customCatalogConfiguration];
    customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
    v8 = [(SHCustomCatalogTrackerMatcher *)v5 initWithCustomCatalogConfiguration:_customCatalogConfiguration container:customCatalogContainer];
  }

  else
  {
    if (*(v13 + 24))
    {
      v9 = off_2788F75D8;
    }

    else
    {
      v9 = off_2788F7508;
    }

    v8 = [objc_alloc(*v9) initWithCustomCatalog:self];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __33__SHCustomCatalog__createMatcher__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 timeRanges];
        if ([v12 count])
        {
        }

        else
        {
          v13 = [v11 frequencySkewRanges];
          v14 = [v13 count];

          if (!v14)
          {
            continue;
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)count
{
  customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
  v3 = [customCatalogContainer count];

  return v3;
}

- (id)objectAtIndexedSubscript:(int64_t)subscript
{
  customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
  v5 = [customCatalogContainer matchReferenceAtIndex:subscript];

  return v5;
}

- (void)removeReferenceSignatureWithID:(id)d
{
  dCopy = d;
  customCatalogContainer = [(SHCustomCatalog *)self customCatalogContainer];
  uUIDString = [dCopy UUIDString];

  [customCatalogContainer removeSignatureWithID:uUIDString];
}

@end