@interface APSDictionaryTopicSaltStore
- (APSDictionaryTopicSaltStore)initWithDictionary:(id)a3;
- (BOOL)saveSalt:(id)a3 forIdentifier:(id)a4 user:(id)a5;
- (id)loadIdentifiersToSaltsForUser:(id)a3;
- (id)loadSaltForIdentifier:(id)a3 user:(id)a4;
@end

@implementation APSDictionaryTopicSaltStore

- (APSDictionaryTopicSaltStore)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APSDictionaryTopicSaltStore;
  v5 = [(APSDictionaryTopicSaltStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    identifierToSalt = v5->_identifierToSalt;
    v5->_identifierToSalt = v6;
  }

  return v5;
}

- (id)loadSaltForIdentifier:(id)a3 user:(id)a4
{
  v5 = a3;
  v6 = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

- (BOOL)saveSalt:(id)a3 forIdentifier:(id)a4 user:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
  v10 = v9;
  if (v7)
  {

    if (!v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [(APSDictionaryTopicSaltStore *)self setIdentifierToSalt:v11];
    }

    v12 = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
    [v12 setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    [v9 setObject:0 forKeyedSubscript:v8];

    v13 = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
    v14 = [v13 count];

    if (!v14)
    {
      [(APSDictionaryTopicSaltStore *)self setIdentifierToSalt:0];
    }
  }

  return 1;
}

- (id)loadIdentifiersToSaltsForUser:(id)a3
{
  v3 = [(APSDictionaryTopicSaltStore *)self identifierToSalt];
  v4 = [v3 copy];

  return v4;
}

@end