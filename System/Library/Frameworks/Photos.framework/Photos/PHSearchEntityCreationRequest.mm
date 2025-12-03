@interface PHSearchEntityCreationRequest
+ (id)_placeholderForCreatedObjectWithClass:(Class)class uuid:(id)uuid;
+ (id)creationRequestForNewSearchRankings;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (PHSearchEntityCreationRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)addSearchRankingWithLabel:(id)label identifier:(id)identifier type:(unint64_t)type rankingScore:(double)score localeIdentifier:(id)localeIdentifier synonyms:(id)synonyms;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)placeholderForCreatedSearchEntity;
- (void)encodeToXPCDict:(id)dict;
@end

@implementation PHSearchEntityCreationRequest

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  objectCopy = object;
  libraryCopy = library;
  if ([(NSMutableArray *)self->_assetSearchEntities count])
  {
    managedObjectContext = [libraryCopy managedObjectContext];
    [managedObjectContext deleteObject:objectCopy];

    [MEMORY[0x1E69BE780] setSearchRankingsFromDictionaries:self->_assetSearchEntities inLibrary:libraryCopy];
  }

  return 1;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  managedObjectContext = [library managedObjectContext];
  v6 = [MEMORY[0x1E69BE780] newNodeContainerWithManagedObjectContext:managedObjectContext];
  uuid = [(PHChangeRequest *)self uuid];
  [v6 setUuid:uuid];

  sourceNode = [v6 sourceNode];

  return sourceNode;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  if (self->_assetSearchEntities)
  {
    PLXPCDictionarySetArray();
  }
}

- (PHSearchEntityCreationRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  v24.receiver = self;
  v24.super_class = PHSearchEntityCreationRequest;
  v10 = [(PHSearchEntityChangeRequest *)&v24 initWithXPCDict:dictCopy request:requestCopy clientAuthorization:authorization];
  v11 = v10;
  if (v10)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __77__PHSearchEntityCreationRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
    v21 = &unk_1E75AAEB0;
    v12 = v10;
    v22 = v12;
    v23 = requestCopy;
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

    array = [MEMORY[0x1E695DF70] array];
    assetSearchEntities = v2->_assetSearchEntities;
    v2->_assetSearchEntities = array;
  }

  return v2;
}

- (id)addSearchRankingWithLabel:(id)label identifier:(id)identifier type:(unint64_t)type rankingScore:(double)score localeIdentifier:(id)localeIdentifier synonyms:(id)synonyms
{
  labelCopy = label;
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  synonymsCopy = synonyms;
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchEntityChangeRequest.m" lineNumber:137 description:@"Must specify a type"];
  }

  if (score == 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchEntityChangeRequest.m" lineNumber:138 description:@"Must specify a search ranking"];
  }

  if (!(labelCopy | identifierCopy))
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchEntityChangeRequest.m" lineNumber:139 description:@"Must specify a label or identifier"];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  [dictionary setObject:uUIDString forKeyedSubscript:@"uuid"];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [dictionary setObject:v22 forKeyedSubscript:@"type"];

  v23 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  [dictionary setObject:v23 forKeyedSubscript:@"rankingScore"];

  [dictionary setObject:labelCopy forKeyedSubscript:@"label"];
  [dictionary setObject:identifierCopy forKeyedSubscript:@"identifier"];
  [dictionary setObject:synonymsCopy forKeyedSubscript:@"synonyms"];
  [dictionary setObject:localeIdentifierCopy forKeyedSubscript:@"localeIdentifier"];
  [(NSMutableArray *)self->_assetSearchEntities addObject:dictionary];
  [(PHChangeRequest *)self didMutate];
  v24 = [PHSearchEntityCreationRequest _placeholderForCreatedObjectWithClass:objc_opt_class() uuid:uUIDString];

  return v24;
}

- (id)placeholderForCreatedSearchEntity
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

+ (id)_placeholderForCreatedObjectWithClass:(Class)class uuid:(id)uuid
{
  uuidCopy = uuid;
  +[PHPhotoLibrary assertTransaction];
  v6 = [PHObjectPlaceholder alloc];
  v7 = [(objc_class *)class localIdentifierWithUUID:uuidCopy];

  v8 = [(PHObjectPlaceholder *)v6 initWithLocalIdentifier:v7];

  return v8;
}

+ (id)creationRequestForNewSearchRankings
{
  initForNewObject = [[PHSearchEntityCreationRequest alloc] initForNewObject];

  return initForNewObject;
}

@end