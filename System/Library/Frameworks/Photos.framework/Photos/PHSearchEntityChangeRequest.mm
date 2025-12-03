@interface PHSearchEntityChangeRequest
+ (id)changeRequestForSearchRanking:(id)ranking;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (PHSearchEntityChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHSearchEntityChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (void)encodeToXPCDict:(id)dict;
- (void)setRankingScore:(double)score;
- (void)setSynonyms:(id)synonyms;
@end

@implementation PHSearchEntityChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v6 = [MEMORY[0x1E69BE780] newNodeContainerWithNode:{object, library, error}];
  v7 = v6;
  if (self->_didSetRankingScore)
  {
    [v6 setRankingScore:self->_rankingScore];
  }

  if (self->_didSetSynonyms)
  {
    [v7 setSynonyms:self->_synonyms];
  }

  return 1;
}

- (PHSearchEntityChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v24.receiver = self;
  v24.super_class = PHSearchEntityChangeRequest;
  v11 = [(PHChangeRequest *)&v24 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__PHSearchEntityChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
    v21[3] = &unk_1E75AAEB0;
    v14 = v11;
    v22 = v14;
    v23 = requestCopy;
    v15 = _Block_copy(v21);
    v16 = xpc_dictionary_get_value(dictCopy, "rankingScoreKey");
    v17 = v16;
    if (v16)
    {
      v14->_rankingScore = xpc_double_get_value(v16);
      v14->_didSetRankingScore = 1;
      v15[2](v15);
    }

    v18 = PLArrayFromXPCDictionary();
    synonyms = v14->_synonyms;
    v14->_synonyms = v18;

    if (v14->_synonyms)
    {
      v14->_didSetSynonyms = 1;
      v15[2](v15);
    }
  }

  return v11;
}

uint64_t __75__PHSearchEntityChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setMutated:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 recordUpdateRequest:v3];
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

  if (self->_didSetRankingScore)
  {
    xpc_dictionary_set_double(xdict, "rankingScoreKey", self->_rankingScore);
  }

  if (self->_didSetSynonyms)
  {
    PLXPCDictionarySetArray();
  }
}

- (PHSearchEntityChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHSearchEntityChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)setSynonyms:(id)synonyms
{
  objc_storeStrong(&self->_synonyms, synonyms);
  self->_didSetSynonyms = 1;

  [(PHChangeRequest *)self didMutate];
}

- (void)setRankingScore:(double)score
{
  self->_rankingScore = score;
  self->_didSetRankingScore = 1;
  [(PHChangeRequest *)self didMutate];
}

+ (id)changeRequestForSearchRanking:(id)ranking
{
  rankingCopy = ranking;
  v4 = [PHSearchEntityChangeRequest alloc];
  uuid = [rankingCopy uuid];
  objectID = [rankingCopy objectID];

  v7 = [(PHSearchEntityChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

  return v7;
}

@end