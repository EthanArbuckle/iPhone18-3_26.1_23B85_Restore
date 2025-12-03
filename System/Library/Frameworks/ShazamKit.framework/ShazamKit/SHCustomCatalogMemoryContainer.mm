@interface SHCustomCatalogMemoryContainer
- (BOOL)containsSignatureWithIdentifier:(id)identifier;
- (NSArray)referenceSignatures;
- (NSData)dataRepresentation;
- (SHCustomCatalogMemoryContainer)init;
- (id)matchReferenceAtIndex:(int64_t)index;
- (id)matchReferenceForTrackID:(unint64_t)d;
- (id)mediaItemsForReferenceSignature:(id)signature;
- (id)referenceSignatureForTrackID:(unint64_t)d;
- (int64_t)count;
- (void)addSignature:(id)signature representingMediaItems:(id)items;
- (void)removeSignatureWithID:(id)d;
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

- (void)addSignature:(id)signature representingMediaItems:(id)items
{
  itemsCopy = items;
  signatureCopy = signature;
  container = [(SHCustomCatalogMemoryContainer *)self container];
  [container addSignature:signatureCopy representingMediaItems:itemsCopy];
}

- (void)removeSignatureWithID:(id)d
{
  dCopy = d;
  container = [(SHCustomCatalogMemoryContainer *)self container];
  [container removeSignatureWithID:dCopy];
}

- (id)mediaItemsForReferenceSignature:(id)signature
{
  signatureCopy = signature;
  container = [(SHCustomCatalogMemoryContainer *)self container];
  v6 = [container mediaItemsForReferenceSignature:signatureCopy];

  return v6;
}

- (id)referenceSignatureForTrackID:(unint64_t)d
{
  container = [(SHCustomCatalogMemoryContainer *)self container];
  v5 = [container referenceSignatureForTrackID:d];

  return v5;
}

- (NSArray)referenceSignatures
{
  container = [(SHCustomCatalogMemoryContainer *)self container];
  referenceSignatures = [container referenceSignatures];

  return referenceSignatures;
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
  referenceSignatures = [(SHCustomCatalogMemoryContainer *)self referenceSignatures];
  v3 = [referenceSignatures count];

  return v3;
}

- (id)matchReferenceAtIndex:(int64_t)index
{
  referenceSignatures = [(SHCustomCatalogMemoryContainer *)self referenceSignatures];
  v6 = [referenceSignatures objectAtIndexedSubscript:index];

  v7 = [(SHCustomCatalogMemoryContainer *)self mediaItemsForReferenceSignature:v6];
  v8 = [SHReferenceMatch alloc];
  signature = [v6 signature];
  v10 = [(SHReferenceMatch *)v8 initWithSignature:signature mediaItems:v7];

  return v10;
}

- (id)matchReferenceForTrackID:(unint64_t)d
{
  v4 = [(SHCustomCatalogMemoryContainer *)self referenceSignatureForTrackID:d];
  if (v4)
  {
    v5 = [(SHCustomCatalogMemoryContainer *)self mediaItemsForReferenceSignature:v4];
    v6 = [SHReferenceMatch alloc];
    signature = [v4 signature];
    v8 = [(SHReferenceMatch *)v6 initWithSignature:signature mediaItems:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsSignatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  container = [(SHCustomCatalogMemoryContainer *)self container];
  v6 = [container signatureExistsForIdentifier:identifierCopy];

  return v6;
}

@end