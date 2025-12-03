@interface PHPersistentChangeToken
+ (PHPersistentChangeToken)tokenWithPersistentHistoryToken:(id)token;
+ (id)currentTokenForContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPersistentChangeToken:(id)token;
- (PHPersistentChangeToken)initWithCoder:(id)coder;
- (PHPersistentChangeToken)initWithPersistentHistoryToken:(id)token version:(int)version;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHPersistentChangeToken

- (PHPersistentChangeToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PersistentHistoryToken"];
  v6 = [coderCopy decodeIntForKey:@"Version"];

  v7 = [(PHPersistentChangeToken *)self initWithPersistentHistoryToken:v5 version:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  persistentHistoryToken = self->_persistentHistoryToken;
  coderCopy = coder;
  [coderCopy encodeObject:persistentHistoryToken forKey:@"PersistentHistoryToken"];
  [coderCopy encodeInt:self->_version forKey:@"Version"];
}

- (unint64_t)hash
{
  persistentHistoryToken = [(PHPersistentChangeToken *)self persistentHistoryToken];

  if (!persistentHistoryToken)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPersistentChangeToken.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"self.persistentHistoryToken"}];
  }

  persistentHistoryToken2 = [(PHPersistentChangeToken *)self persistentHistoryToken];
  v6 = [persistentHistoryToken2 hash];
  version = [(PHPersistentChangeToken *)self version];

  return v6 ^ version;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PHPersistentChangeToken *)self isEqualToPersistentChangeToken:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPersistentChangeToken:(id)token
{
  tokenCopy = token;
  version = [tokenCopy version];
  if (version == [(PHPersistentChangeToken *)self version])
  {
    persistentHistoryToken = [tokenCopy persistentHistoryToken];
    persistentHistoryToken2 = [(PHPersistentChangeToken *)self persistentHistoryToken];
    v8 = [persistentHistoryToken isEqual:persistentHistoryToken2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E69BE3C8] descriptionBuilderWithObject:self];
  [v3 appendName:@"persistentHistoryToken" typeCode:"@" value:&self->_persistentHistoryToken];
  [v3 appendName:@"version" typeCode:"i" value:&self->_version];
  build = [v3 build];

  return build;
}

- (PHPersistentChangeToken)initWithPersistentHistoryToken:(id)token version:(int)version
{
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = PHPersistentChangeToken;
  v7 = [(PHPersistentChangeToken *)&v12 init];
  if (v7)
  {
    v8 = [tokenCopy copy];
    persistentHistoryToken = v7->_persistentHistoryToken;
    v7->_persistentHistoryToken = v8;

    v7->_version = version;
    v10 = v7;
  }

  return v7;
}

+ (PHPersistentChangeToken)tokenWithPersistentHistoryToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    v4 = [[PHPersistentChangeToken alloc] initWithPersistentHistoryToken:tokenCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)currentTokenForContext:(id)context
{
  persistentStoreCoordinator = [context persistentStoreCoordinator];
  v5 = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:0];

  v6 = [self tokenWithPersistentHistoryToken:v5];

  return v6;
}

@end