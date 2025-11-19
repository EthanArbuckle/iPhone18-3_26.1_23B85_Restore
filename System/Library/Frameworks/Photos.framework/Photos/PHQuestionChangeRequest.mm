@interface PHQuestionChangeRequest
+ (id)changeRequestForQuestion:(id)a3;
+ (id)creationRequestForQuestionWithEntityIdentifier:(id)a3 type:(unsigned __int16)a4 state:(unsigned __int16)a5 entityType:(unsigned __int16)a6 displayType:(unsigned __int16)a7 score:(double)a8 additionalInfo:(id)a9 creationDate:(id)a10 questionVersion:(signed __int16)a11;
+ (void)deleteQuestions:(id)a3;
- (NSDate)creationDate;
- (NSDictionary)additionalInfo;
- (NSString)entityIdentifier;
- (PHObjectPlaceholder)placeholderForCreatedQuestion;
- (PHQuestionChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHQuestionChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (double)score;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (signed)questionVersion;
- (unsigned)displayType;
- (unsigned)entityType;
- (unsigned)state;
- (unsigned)type;
- (void)encodeToXPCDict:(id)a3;
- (void)setAdditionalInfo:(id)a3;
- (void)setCreationDate:(id)a3;
- (void)setDisplayType:(unsigned __int16)a3;
- (void)setEntityIdentifier:(id)a3;
- (void)setEntityType:(unsigned __int16)a3;
- (void)setQuestionVersion:(signed __int16)a3;
- (void)setScore:(double)a3;
- (void)setState:(unsigned __int16)a3;
- (void)setType:(unsigned __int16)a3;
@end

@implementation PHQuestionChangeRequest

- (void)setQuestionVersion:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"questionVersion"];
}

- (signed)questionVersion
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"questionVersion"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setCreationDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"creationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"creationDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"creationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"creationDate"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"creationDate"];

  return v5;
}

- (void)setAdditionalInfo:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"additionalInfo"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"additionalInfo"];
  }

  else
  {
    [v6 removeObjectForKey:@"additionalInfo"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"additionalInfo"];
  }
}

- (NSDictionary)additionalInfo
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"additionalInfo"];

  return v5;
}

- (void)setEntityIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"entityIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"entityIdentifier"];
  }

  else
  {
    [v6 removeObjectForKey:@"entityIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"entityIdentifier"];
  }
}

- (NSString)entityIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"entityIdentifier"];

  return v5;
}

- (void)setScore:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"score"];
}

- (double)score
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"score"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setDisplayType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"displayType"];
}

- (unsigned)displayType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"displayType"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setEntityType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"entityType"];
}

- (unsigned)entityType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"entityType"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"state"];
}

- (unsigned)state
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"state"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"type"];
}

- (unsigned)type
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"type"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (PHQuestionChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHQuestionChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];
}

- (PHQuestionChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PHQuestionChangeRequest;
  v11 = [(PHChangeRequest *)&v15 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;
  }

  return v11;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE710];
  v7 = a3;
  v8 = [(PHChangeRequest *)self uuid];
  v9 = [v6 insertIntoPhotoLibrary:v7 withUUID:v8];

  if (v9)
  {
    v10 = [(PHQuestionChangeRequest *)self entityIdentifier];
    [v9 setEntityIdentifier:v10];

    [v9 setType:{-[PHQuestionChangeRequest type](self, "type")}];
    [v9 setState:{-[PHQuestionChangeRequest state](self, "state")}];
    [v9 setEntityType:{-[PHQuestionChangeRequest entityType](self, "entityType")}];
    [v9 setDisplayType:{-[PHQuestionChangeRequest displayType](self, "displayType")}];
    [(PHQuestionChangeRequest *)self score];
    [v9 setScore:?];
    v11 = [(PHQuestionChangeRequest *)self additionalInfo];
    [v9 setAdditionalInfo:v11];

    v12 = [(PHQuestionChangeRequest *)self creationDate];
    [v9 setCreationDate:v12];

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
    if (a4)
    {
      v17 = v17;
      *a4 = v17;
    }
  }

  return v9;
}

- (PHObjectPlaceholder)placeholderForCreatedQuestion
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

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

+ (void)deleteQuestions:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHQuestionDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForQuestion:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHQuestionChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHQuestionChangeRequest *)v4 initWithUUID:v5 objectID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForQuestionWithEntityIdentifier:(id)a3 type:(unsigned __int16)a4 state:(unsigned __int16)a5 entityType:(unsigned __int16)a6 displayType:(unsigned __int16)a7 score:(double)a8 additionalInfo:(id)a9 creationDate:(id)a10 questionVersion:(signed __int16)a11
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v18 = a10;
  v19 = a9;
  v20 = a3;
  v21 = [[PHQuestionChangeRequest alloc] initForNewObject];
  [v21 setEntityIdentifier:v20];

  [v21 setType:v16];
  [v21 setState:v15];
  [v21 setEntityType:v14];
  [v21 setDisplayType:v13];
  [v21 setScore:a8];
  [v21 setAdditionalInfo:v19];

  [v21 setCreationDate:v18];
  [v21 setQuestionVersion:a11];

  return v21;
}

@end