@interface SHCustomCatalogMemoryContainer
- (BOOL)containsSignatureWithIdentifier:(id)a3;
- (NSArray)referenceSignatures;
- (NSData)dataRepresentation;
- (SHCustomCatalogMemoryContainer)init;
- (id)matchReferenceAtIndex:(int64_t)a3;
- (id)matchReferenceForTrackID:(unint64_t)a3;
- (id)mediaItemsForReferenceSignature:(id)a3;
- (id)referenceSignatureForTrackID:(unint64_t)a3;
- (int64_t)count;
- (void)addSignature:(id)a3 representingMediaItems:(id)a4;
- (void)removeSignatureWithID:(id)a3;
@end

@implementation SHCustomCatalogMemoryContainer

- (SHCustomCatalogMemoryContainer)init
{
  v6.receiver = self;
  v6.super_class = SHCustomCatalogMemoryContainer;
  v2 = [(SHCustomCatalogMemoryContainer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SHCustomCatalogMemoryStorage);
    container = v2->_container;
    v2->_container = v3;
  }

  return v2;
}

- (void)addSignature:(id)a3 representingMediaItems:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHCustomCatalogMemoryContainer *)self container];
  [v8 addSignature:v7 representingMediaItems:v6];
}

- (void)removeSignatureWithID:(id)a3
{
  v4 = a3;
  v5 = [(SHCustomCatalogMemoryContainer *)self container];
  [v5 removeSignatureWithID:v4];
}

- (id)mediaItemsForReferenceSignature:(id)a3
{
  v4 = a3;
  v5 = [(SHCustomCatalogMemoryContainer *)self container];
  v6 = [v5 mediaItemsForReferenceSignature:v4];

  return v6;
}

- (id)referenceSignatureForTrackID:(unint64_t)a3
{
  v4 = [(SHCustomCatalogMemoryContainer *)self container];
  v5 = [v4 referenceSignatureForTrackID:a3];

  return v5;
}

- (NSArray)referenceSignatures
{
  v2 = [(SHCustomCatalogMemoryContainer *)self container];
  v3 = [v2 referenceSignatures];

  return v3;
}

- (NSData)dataRepresentation
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"In memory Custom Catalog containers cannot be written to disk"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (int64_t)count
{
  v2 = [(SHCustomCatalogMemoryContainer *)self referenceSignatures];
  v3 = [v2 count];

  return v3;
}

- (id)matchReferenceAtIndex:(int64_t)a3
{
  v5 = [(SHCustomCatalogMemoryContainer *)self referenceSignatures];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(SHCustomCatalogMemoryContainer *)self mediaItemsForReferenceSignature:v6];
  v8 = [SHReferenceMatch alloc];
  v9 = [v6 signature];
  v10 = [(SHReferenceMatch *)v8 initWithSignature:v9 mediaItems:v7];

  return v10;
}

- (id)matchReferenceForTrackID:(unint64_t)a3
{
  v4 = [(SHCustomCatalogMemoryContainer *)self referenceSignatureForTrackID:a3];
  if (v4)
  {
    v5 = [(SHCustomCatalogMemoryContainer *)self mediaItemsForReferenceSignature:v4];
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
  v5 = [(SHCustomCatalogMemoryContainer *)self container];
  v6 = [v5 signatureExistsForIdentifier:v4];

  return v6;
}

@end