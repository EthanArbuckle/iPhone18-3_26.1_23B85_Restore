@interface LSBundleIdentity
+ (id)bundleIdentityForIdentityString:(id)string;
- (BOOL)isEqual:(id)equal;
- (LSBundleIdentity)initWithCoder:(id)coder;
- (LSBundleIdentity)initWithIdentityString:(id)string personaUniqueString:(id)uniqueString personaType:(unint64_t)type;
- (NSString)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSBundleIdentity

- (LSBundleIdentity)initWithIdentityString:(id)string personaUniqueString:(id)uniqueString personaType:(unint64_t)type
{
  stringCopy = string;
  uniqueStringCopy = uniqueString;
  v16.receiver = self;
  v16.super_class = LSBundleIdentity;
  v10 = [(LSBundleIdentity *)&v16 init];
  if (v10)
  {
    v11 = [stringCopy copy];
    identityString = v10->_identityString;
    v10->_identityString = v11;

    v13 = [uniqueStringCopy copy];
    personaUniqueString = v10->_personaUniqueString;
    v10->_personaUniqueString = v13;

    v10->_personaType = type;
  }

  return v10;
}

- (LSBundleIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"identityString"];
  v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
  v7 = [coderCopy decodeIntegerForKey:@"personaType"];

  if (v5)
  {
    v8 = [(LSBundleIdentity *)self initWithIdentityString:v5 personaUniqueString:v6 personaType:v7];
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  identityString = self->_identityString;
  coderCopy = coder;
  [coderCopy encodeObject:identityString forKey:@"identityString"];
  [coderCopy encodeObject:self->_personaUniqueString forKey:@"personaUniqueString"];
  [coderCopy encodeInteger:self->_personaType forKey:@"personaType"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v7 = [(NSString *)self->_identityString isEqual:v5[1]]&& ((personaUniqueString = self->_personaUniqueString, personaUniqueString == v5[2]) || [(NSString *)personaUniqueString isEqual:?]) && self->_personaType == v5[3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)bundleIdentityForIdentityString:(id)string
{
  stringCopy = string;
  v4 = MEMORY[0x1E696ACB0];
  v5 = [stringCopy dataUsingEncoding:4];
  v6 = [v4 JSONObjectWithData:v5 options:0 error:0];

  if (!v6)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v7 = objc_opt_class();
  v8 = [v6 objectForKey:@"it"];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue != 1)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v12 = off_1E6A182D0;
  }

  else
  {
    v12 = off_1E6A18190;
  }

  v13 = [objc_alloc(*v12) initWithIdentityString:stringCopy parsedIdentityStringDictionary:v6 error:0];
LABEL_15:

LABEL_16:

  return v13;
}

- (NSString)bundleIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end