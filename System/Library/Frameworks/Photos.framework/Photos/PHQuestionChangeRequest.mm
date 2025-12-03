@interface PHQuestionChangeRequest
+ (id)changeRequestForQuestion:(id)question;
+ (id)creationRequestForQuestionWithEntityIdentifier:(id)identifier type:(unsigned __int16)type state:(unsigned __int16)state entityType:(unsigned __int16)entityType displayType:(unsigned __int16)displayType score:(double)score additionalInfo:(id)info creationDate:(id)self0 questionVersion:(signed __int16)self1;
+ (void)deleteQuestions:(id)questions;
- (NSDate)creationDate;
- (NSDictionary)additionalInfo;
- (NSString)entityIdentifier;
- (PHObjectPlaceholder)placeholderForCreatedQuestion;
- (PHQuestionChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHQuestionChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (double)score;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (signed)questionVersion;
- (unsigned)displayType;
- (unsigned)entityType;
- (unsigned)state;
- (unsigned)type;
- (void)encodeToXPCDict:(id)dict;
- (void)setAdditionalInfo:(id)info;
- (void)setCreationDate:(id)date;
- (void)setDisplayType:(unsigned __int16)type;
- (void)setEntityIdentifier:(id)identifier;
- (void)setEntityType:(unsigned __int16)type;
- (void)setQuestionVersion:(signed __int16)version;
- (void)setScore:(double)score;
- (void)setState:(unsigned __int16)state;
- (void)setType:(unsigned __int16)type;
@end

@implementation PHQuestionChangeRequest

- (void)setQuestionVersion:(signed __int16)version
{
  versionCopy = version;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:versionCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"questionVersion"];
}

- (signed)questionVersion
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"questionVersion"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"creationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"creationDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"creationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"creationDate"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"creationDate"];

  return v5;
}

- (void)setAdditionalInfo:(id)info
{
  infoCopy = info;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (infoCopy)
  {
    [mutations setObject:infoCopy forKeyedSubscript:@"additionalInfo"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"additionalInfo"];
  }

  else
  {
    [mutations removeObjectForKey:@"additionalInfo"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"additionalInfo"];
  }
}

- (NSDictionary)additionalInfo
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"additionalInfo"];

  return v5;
}

- (void)setEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (identifierCopy)
  {
    [mutations setObject:identifierCopy forKeyedSubscript:@"entityIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"entityIdentifier"];
  }

  else
  {
    [mutations removeObjectForKey:@"entityIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"entityIdentifier"];
  }
}

- (NSString)entityIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"entityIdentifier"];

  return v5;
}

- (void)setScore:(double)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"score"];
}

- (double)score
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"score"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setDisplayType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"displayType"];
}

- (unsigned)displayType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"displayType"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setEntityType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"entityType"];
}

- (unsigned)entityType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"entityType"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setState:(unsigned __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"state"];
}

- (unsigned)state
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"state"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"type"];
}

- (unsigned)type
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"type"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (PHQuestionChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHQuestionChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];
}

- (PHQuestionChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v15.receiver = self;
  v15.super_class = PHQuestionChangeRequest;
  v11 = [(PHChangeRequest *)&v15 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;
  }

  return v11;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE710];
  libraryCopy = library;
  uuid = [(PHChangeRequest *)self uuid];
  v9 = [v6 insertIntoPhotoLibrary:libraryCopy withUUID:uuid];

  if (v9)
  {
    entityIdentifier = [(PHQuestionChangeRequest *)self entityIdentifier];
    [v9 setEntityIdentifier:entityIdentifier];

    [v9 setType:{-[PHQuestionChangeRequest type](self, "type")}];
    [v9 setState:{-[PHQuestionChangeRequest state](self, "state")}];
    [v9 setEntityType:{-[PHQuestionChangeRequest entityType](self, "entityType")}];
    [v9 setDisplayType:{-[PHQuestionChangeRequest displayType](self, "displayType")}];
    [(PHQuestionChangeRequest *)self score];
    [v9 setScore:?];
    additionalInfo = [(PHQuestionChangeRequest *)self additionalInfo];
    [v9 setAdditionalInfo:additionalInfo];

    creationDate = [(PHQuestionChangeRequest *)self creationDate];
    [v9 setCreationDate:creationDate];

    [v9 setQuestionVersion:{-[PHQuestionChangeRequest questionVersion](self, "questionVersion")}];
    v13 = v9;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create question"];
    v20[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v17 = [v14 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v16];
    if (error)
    {
      v17 = v17;
      *error = v17;
    }
  }

  return v9;
}

- (PHObjectPlaceholder)placeholderForCreatedQuestion
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHQuestionChangeRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;
  }

  return v2;
}

+ (void)deleteQuestions:(id)questions
{
  questionsCopy = questions;
  v4 = [(PHObjectDeleteRequest *)PHQuestionDeleteRequest deleteRequestsForObjects:questionsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForQuestion:(id)question
{
  questionCopy = question;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHQuestionChangeRequest alloc];
    uuid = [questionCopy uuid];
    objectID = [questionCopy objectID];
    v7 = [(PHQuestionChangeRequest *)v4 initWithUUID:uuid objectID:objectID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForQuestionWithEntityIdentifier:(id)identifier type:(unsigned __int16)type state:(unsigned __int16)state entityType:(unsigned __int16)entityType displayType:(unsigned __int16)displayType score:(double)score additionalInfo:(id)info creationDate:(id)self0 questionVersion:(signed __int16)self1
{
  displayTypeCopy = displayType;
  entityTypeCopy = entityType;
  stateCopy = state;
  typeCopy = type;
  dateCopy = date;
  infoCopy = info;
  identifierCopy = identifier;
  initForNewObject = [[PHQuestionChangeRequest alloc] initForNewObject];
  [initForNewObject setEntityIdentifier:identifierCopy];

  [initForNewObject setType:typeCopy];
  [initForNewObject setState:stateCopy];
  [initForNewObject setEntityType:entityTypeCopy];
  [initForNewObject setDisplayType:displayTypeCopy];
  [initForNewObject setScore:score];
  [initForNewObject setAdditionalInfo:infoCopy];

  [initForNewObject setCreationDate:dateCopy];
  [initForNewObject setQuestionVersion:version];

  return initForNewObject;
}

@end