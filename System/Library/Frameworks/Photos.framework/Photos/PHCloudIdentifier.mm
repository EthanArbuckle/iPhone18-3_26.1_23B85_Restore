@interface PHCloudIdentifier
+ (id)_notFoundIdentifier;
- (BOOL)isEqual:(id)equal;
- (NSString)archivalStringValue;
- (PHCloudIdentifier)initWithArchivalStringValue:(id)value;
- (PHCloudIdentifier)initWithCoder:(id)coder;
- (PHCloudIdentifier)initWithLocalCloudIdentifier:(id)identifier identifierCode:(id)code stableHash:(id)hash;
- (id)initAsNotFoundIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHCloudIdentifier

- (PHCloudIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  v6 = [(PHCloudIdentifier *)self initWithStringValue:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(PHCloudIdentifier *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"stringValue"];
}

- (unint64_t)hash
{
  stringValue = [(PHCloudIdentifier *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifierCode = [(PHCloudIdentifier *)self identifierCode];
      identifierCode2 = [(PHCloudIdentifier *)v5 identifierCode];
      if ([identifierCode isEqualToString:identifierCode2])
      {
        localCloudIdentifier = [(PHCloudIdentifier *)self localCloudIdentifier];
        localCloudIdentifier2 = [(PHCloudIdentifier *)v5 localCloudIdentifier];
        v10 = [localCloudIdentifier isEqualToString:localCloudIdentifier2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (NSString)archivalStringValue
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:self->_localCloudIdentifier];
  [v3 addObject:self->_identifierCode];
  [v3 addObject:self->_stableHash];
  v4 = [v3 componentsJoinedByString:@":"];

  return v4;
}

- (id)initAsNotFoundIdentifier
{
  v8.receiver = self;
  v8.super_class = PHCloudIdentifier;
  v2 = [(PHCloudIdentifier *)&v8 init];
  v3 = v2;
  if (v2)
  {
    localCloudIdentifier = v2->_localCloudIdentifier;
    v2->_localCloudIdentifier = &stru_1F0FC60C8;

    identifierCode = v3->_identifierCode;
    v3->_identifierCode = &stru_1F0FC60C8;

    stableHash = v3->_stableHash;
    v3->_stableHash = &stru_1F0FC60C8;
  }

  return v3;
}

- (PHCloudIdentifier)initWithLocalCloudIdentifier:(id)identifier identifierCode:(id)code stableHash:(id)hash
{
  identifierCopy = identifier;
  codeCopy = code;
  hashCopy = hash;
  v15.receiver = self;
  v15.super_class = PHCloudIdentifier;
  v12 = [(PHCloudIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localCloudIdentifier, identifier);
    objc_storeStrong(&v13->_identifierCode, code);
    objc_storeStrong(&v13->_stableHash, hash);
    if (![(NSString *)v13->_identifierCode length]|| ![(NSString *)v13->_localCloudIdentifier length])
    {

      v13 = 0;
    }
  }

  return v13;
}

- (PHCloudIdentifier)initWithArchivalStringValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy componentsSeparatedByString:@":"];
  if ([v5 count] > 1)
  {
    selfCopy = [v5 objectAtIndexedSubscript:0];
    v8 = [v5 objectAtIndexedSubscript:1];
    if ([v5 count] < 3)
    {
      v9 = &stru_1F0FC60C8;
    }

    else
    {
      v9 = [v5 objectAtIndexedSubscript:2];
    }

    v6 = [(PHCloudIdentifier *)self initWithLocalCloudIdentifier:selfCopy identifierCode:v8 stableHash:v9];
  }

  else
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"stringValue cannot be initialized as a PHCloudIdentifier" userInfo:0];
      objc_exception_throw(v11);
    }

    v6 = 0;
    selfCopy = self;
  }

  return v6;
}

+ (id)_notFoundIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PHCloudIdentifier__notFoundIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_notFoundIdentifier_onceToken != -1)
  {
    dispatch_once(&_notFoundIdentifier_onceToken, block);
  }

  v2 = _notFoundIdentifier_sNotFoundCloudIdentifier;

  return v2;
}

uint64_t __40__PHCloudIdentifier__notFoundIdentifier__block_invoke(uint64_t a1)
{
  _notFoundIdentifier_sNotFoundCloudIdentifier = [objc_alloc(*(a1 + 32)) initAsNotFoundIdentifier];

  return MEMORY[0x1EEE66BB8]();
}

@end