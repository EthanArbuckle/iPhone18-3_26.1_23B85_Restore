@interface PHSearchEntityCreationRequest
+ (id)_placeholderForCreatedObjectWithClass:(Class)a3 uuid:(id)a4;
+ (id)creationRequestForNewSearchRankings;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (PHSearchEntityCreationRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)addSearchRankingWithLabel:(id)a3 identifier:(id)a4 type:(unint64_t)a5 rankingScore:(double)a6 localeIdentifier:(id)a7 synonyms:(id)a8;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)placeholderForCreatedSearchEntity;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHSearchEntityCreationRequest

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([(NSMutableArray *)self->_assetSearchEntities count])
  {
    v9 = [v8 managedObjectContext];
    [v9 deleteObject:v7];

    [MEMORY[0x1E69BE780] setSearchRankingsFromDictionaries:self->_assetSearchEntities inLibrary:v8];
  }

  return 1;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v5 = [a3 managedObjectContext];
  v6 = [MEMORY[0x1E69BE780] newNodeContainerWithManagedObjectContext:v5];
  v7 = [(PHChangeRequest *)self uuid];
  [v6 setUuid:v7];

  v8 = [v6 sourceNode];

  return v8;
}

- (void)encodeToXPCDict:(id)a3
{
  v5 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:v5];

  if (self->_assetSearchEntities)
  {
    PLXPCDictionarySetArray();
  }
}

- (PHSearchEntityCreationRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = PHSearchEntityCreationRequest;
  v10 = [(PHSearchEntityChangeRequest *)&v24 initWithXPCDict:v8 request:v9 clientAuthorization:a5];
  v11 = v10;
  if (v10)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __77__PHSearchEntityCreationRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
    v21 = &unk_1E75AAEB0;
    v12 = v10;
    v22 = v12;
    v23 = v9;
    v13 = _Block_copy(&v18);
    v14 = PLArrayFromXPCDictionary();
    v15 = [v14 mutableCopy];
    assetSearchEntities = v12->_assetSearchEntities;
    v12->_assetSearchEntities = v15;

    if (v12->_assetSearchEntities)
    {
      v13[2](v13);
    }
  }

  return v11;
}

uint64_t __77__PHSearchEntityCreationRequest_initWithXPCDict_request_clientAuthorization___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setMutated:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 recordUpdateRequest:v3];
}

- (id)initForNewObject
{
  v8.receiver = self;
  v8.super_class = PHSearchEntityCreationRequest;
  v2 = [(PHChangeRequest *)&v8 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super.super._helper;
    v2->super.super._helper = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    assetSearchEntities = v2->_assetSearchEntities;
    v2->_assetSearchEntities = v5;
  }

  return v2;
}

- (id)addSearchRankingWithLabel:(id)a3 identifier:(id)a4 type:(unint64_t)a5 rankingScore:(double)a6 localeIdentifier:(id)a7 synonyms:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  if (!a5)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PHSearchEntityChangeRequest.m" lineNumber:137 description:@"Must specify a type"];
  }

  if (a6 == 0.0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PHSearchEntityChangeRequest.m" lineNumber:138 description:@"Must specify a search ranking"];
  }

  if (!(v15 | v16))
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PHSearchEntityChangeRequest.m" lineNumber:139 description:@"Must specify a label or identifier"];
  }

  v19 = [MEMORY[0x1E695DF90] dictionary];
  v20 = [MEMORY[0x1E696AFB0] UUID];
  v21 = [v20 UUIDString];

  [v19 setObject:v21 forKeyedSubscript:@"uuid"];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v19 setObject:v22 forKeyedSubscript:@"type"];

  v23 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  [v19 setObject:v23 forKeyedSubscript:@"rankingScore"];

  [v19 setObject:v15 forKeyedSubscript:@"label"];
  [v19 setObject:v16 forKeyedSubscript:@"identifier"];
  [v19 setObject:v18 forKeyedSubscript:@"synonyms"];
  [v19 setObject:v17 forKeyedSubscript:@"localeIdentifier"];
  [(NSMutableArray *)self->_assetSearchEntities addObject:v19];
  [(PHChangeRequest *)self didMutate];
  v24 = [PHSearchEntityCreationRequest _placeholderForCreatedObjectWithClass:objc_opt_class() uuid:v21];

  return v24;
}

- (id)placeholderForCreatedSearchEntity
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

+ (id)_placeholderForCreatedObjectWithClass:(Class)a3 uuid:(id)a4
{
  v5 = a4;
  +[PHPhotoLibrary assertTransaction];
  v6 = [PHObjectPlaceholder alloc];
  v7 = [(objc_class *)a3 localIdentifierWithUUID:v5];

  v8 = [(PHObjectPlaceholder *)v6 initWithLocalIdentifier:v7];

  return v8;
}

+ (id)creationRequestForNewSearchRankings
{
  v2 = [[PHSearchEntityCreationRequest alloc] initForNewObject];

  return v2;
}

@end