@interface PHPersistentChangeToken
+ (PHPersistentChangeToken)tokenWithPersistentHistoryToken:(id)a3;
+ (id)currentTokenForContext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPersistentChangeToken:(id)a3;
- (PHPersistentChangeToken)initWithCoder:(id)a3;
- (PHPersistentChangeToken)initWithPersistentHistoryToken:(id)a3 version:(int)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHPersistentChangeToken

- (PHPersistentChangeToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PersistentHistoryToken"];
  v6 = [v4 decodeIntForKey:@"Version"];

  v7 = [(PHPersistentChangeToken *)self initWithPersistentHistoryToken:v5 version:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  persistentHistoryToken = self->_persistentHistoryToken;
  v5 = a3;
  [v5 encodeObject:persistentHistoryToken forKey:@"PersistentHistoryToken"];
  [v5 encodeInt:self->_version forKey:@"Version"];
}

- (unint64_t)hash
{
  v4 = [(PHPersistentChangeToken *)self persistentHistoryToken];

  if (!v4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PHPersistentChangeToken.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"self.persistentHistoryToken"}];
  }

  v5 = [(PHPersistentChangeToken *)self persistentHistoryToken];
  v6 = [v5 hash];
  v7 = [(PHPersistentChangeToken *)self version];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PHPersistentChangeToken *)self isEqualToPersistentChangeToken:v4];
  }

  return v5;
}

- (BOOL)isEqualToPersistentChangeToken:(id)a3
{
  v4 = a3;
  v5 = [v4 version];
  if (v5 == [(PHPersistentChangeToken *)self version])
  {
    v6 = [v4 persistentHistoryToken];
    v7 = [(PHPersistentChangeToken *)self persistentHistoryToken];
    v8 = [v6 isEqual:v7];
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
  v4 = [v3 build];

  return v4;
}

- (PHPersistentChangeToken)initWithPersistentHistoryToken:(id)a3 version:(int)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PHPersistentChangeToken;
  v7 = [(PHPersistentChangeToken *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    persistentHistoryToken = v7->_persistentHistoryToken;
    v7->_persistentHistoryToken = v8;

    v7->_version = a4;
    v10 = v7;
  }

  return v7;
}

+ (PHPersistentChangeToken)tokenWithPersistentHistoryToken:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[PHPersistentChangeToken alloc] initWithPersistentHistoryToken:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)currentTokenForContext:(id)a3
{
  v4 = [a3 persistentStoreCoordinator];
  v5 = [v4 currentPersistentHistoryTokenFromStores:0];

  v6 = [a1 tokenWithPersistentHistoryToken:v5];

  return v6;
}

@end