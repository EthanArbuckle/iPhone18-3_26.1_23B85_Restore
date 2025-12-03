@interface APSDictionaryTopicSaltStore
- (APSDictionaryTopicSaltStore)initWithDictionary:(id)dictionary;
- (BOOL)saveSalt:(id)salt forIdentifier:(id)identifier user:(id)user;
- (id)loadIdentifiersToSaltsForUser:(id)user;
- (id)loadSaltForIdentifier:(id)identifier user:(id)user;
@end

@implementation APSDictionaryTopicSaltStore

- (APSDictionaryTopicSaltStore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = APSDictionaryTopicSaltStore;
  v5 = [(APSDictionaryTopicSaltStore *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    identifierToSalt = v5->_identifierToSalt;
    v5->_identifierToSalt = v6;
  }

  return v5;
}

- (id)loadSaltForIdentifier:(id)identifier user:(id)user
{
  identifierCopy = identifier;
  identifierToSalt = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
  v7 = [identifierToSalt objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (BOOL)saveSalt:(id)salt forIdentifier:(id)identifier user:(id)user
{
  saltCopy = salt;
  identifierCopy = identifier;
  identifierToSalt = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
  v10 = identifierToSalt;
  if (saltCopy)
  {

    if (!v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [(APSDictionaryTopicSaltStore *)self setIdentifierToSalt:v11];
    }

    identifierToSalt2 = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
    [identifierToSalt2 setObject:saltCopy forKeyedSubscript:identifierCopy];
  }

  else
  {
    [identifierToSalt setObject:0 forKeyedSubscript:identifierCopy];

    identifierToSalt3 = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
    v14 = [identifierToSalt3 count];

    if (!v14)
    {
      [(APSDictionaryTopicSaltStore *)self setIdentifierToSalt:0];
    }
  }

  return 1;
}

- (id)loadIdentifiersToSaltsForUser:(id)user
{
  identifierToSalt = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
  v4 = [identifierToSalt copy];

  return v4;
}

@end