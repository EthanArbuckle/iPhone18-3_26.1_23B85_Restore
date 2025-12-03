@interface PFAIPackageState
- (PFAIPackageState)initWithDocumentRoot:(id)root applePubURL:(id)l archive:(id)archive;
- (void)addManifestItemAbsoluteEntryUri:(id)uri withId:(id)id mediaType:(id)type;
- (void)dealloc;
@end

@implementation PFAIPackageState

- (PFAIPackageState)initWithDocumentRoot:(id)root applePubURL:(id)l archive:(id)archive
{
  v10.receiver = self;
  v10.super_class = PFAIPackageState;
  v8 = [(PFAIPackageState *)&v10 init];
  if (v8)
  {
    v8->mDocumentRoot = root;
    v8->mArchive = archive;
    v8->mManifestEntryUriById = objc_alloc_init(NSMutableDictionary);
    v8->mManifestEntryMeidaTypeByUri = objc_alloc_init(NSMutableDictionary);
    v8->mMetadata = objc_alloc_init(NSMutableDictionary);
    v8->mApplePubURL = l;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFAIPackageState;
  [(PFAIPackageState *)&v3 dealloc];
}

- (void)addManifestItemAbsoluteEntryUri:(id)uri withId:(id)id mediaType:(id)type
{
  v9 = [(NSMutableDictionary *)self->mManifestEntryUriById objectForKey:id];
  if (v9)
  {
    v10 = v9;
    [(NSMutableDictionary *)self->mManifestEntryUriById removeObjectForKey:id];
    [(NSMutableDictionary *)self->mManifestEntryMeidaTypeByUri removeObjectForKey:v10];
  }

  [(NSMutableDictionary *)self->mManifestEntryUriById setObject:uri forKey:id];
  mManifestEntryMeidaTypeByUri = self->mManifestEntryMeidaTypeByUri;

  [(NSMutableDictionary *)mManifestEntryMeidaTypeByUri setObject:type forKey:uri];
}

@end