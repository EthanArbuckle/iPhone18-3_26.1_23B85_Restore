@interface SHServerShazamResponse
- (SHServerShazamResponse)initWithShazamDictionary:(id)dictionary;
- (id)itemForIdentifier:(id)identifier;
@end

@implementation SHServerShazamResponse

- (SHServerShazamResponse)initWithShazamDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SHServerShazamResponse;
  v6 = [(SHServerShazamResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shazamDictionary, dictionary);
  }

  return v7;
}

- (id)itemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  shazamDictionary = [(SHServerShazamResponse *)self shazamDictionary];
  v6 = [shazamDictionary objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v7 = [SHShazamResponseItem alloc];
    shazamDictionary2 = [(SHServerShazamResponse *)self shazamDictionary];
    v9 = [shazamDictionary2 objectForKeyedSubscript:identifierCopy];
    v10 = [(SHShazamResponseItem *)v7 initWithShazamItemDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end