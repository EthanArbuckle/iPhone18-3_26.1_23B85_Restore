@interface PFAIPackageState
- (PFAIPackageState)initWithDocumentRoot:(id)a3 applePubURL:(id)a4 archive:(id)a5;
- (void)addManifestItemAbsoluteEntryUri:(id)a3 withId:(id)a4 mediaType:(id)a5;
- (void)dealloc;
@end

@implementation PFAIPackageState

- (PFAIPackageState)initWithDocumentRoot:(id)a3 applePubURL:(id)a4 archive:(id)a5
{
  v10.receiver = self;
  v10.super_class = PFAIPackageState;
  v8 = [(PFAIPackageState *)&v10 init];
  if (v8)
  {
    v8->mDocumentRoot = a3;
    v8->mArchive = a5;
    v8->mManifestEntryUriById = objc_alloc_init(NSMutableDictionary);
    v8->mManifestEntryMeidaTypeByUri = objc_alloc_init(NSMutableDictionary);
    v8->mMetadata = objc_alloc_init(NSMutableDictionary);
    v8->mApplePubURL = a4;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFAIPackageState;
  [(PFAIPackageState *)&v3 dealloc];
}

- (void)addManifestItemAbsoluteEntryUri:(id)a3 withId:(id)a4 mediaType:(id)a5
{
  v9 = [(NSMutableDictionary *)self->mManifestEntryUriById objectForKey:a4];
  if (v9)
  {
    v10 = v9;
    [(NSMutableDictionary *)self->mManifestEntryUriById removeObjectForKey:a4];
    [(NSMutableDictionary *)self->mManifestEntryMeidaTypeByUri removeObjectForKey:v10];
  }

  [(NSMutableDictionary *)self->mManifestEntryUriById setObject:a3 forKey:a4];
  mManifestEntryMeidaTypeByUri = self->mManifestEntryMeidaTypeByUri;

  [(NSMutableDictionary *)mManifestEntryMeidaTypeByUri setObject:a5 forKey:a3];
}

@end