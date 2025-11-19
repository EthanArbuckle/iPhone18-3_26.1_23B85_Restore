@interface LSBundleIdentity
+ (id)bundleIdentityForIdentityString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LSBundleIdentity)initWithCoder:(id)a3;
- (LSBundleIdentity)initWithIdentityString:(id)a3 personaUniqueString:(id)a4 personaType:(unint64_t)a5;
- (NSString)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSBundleIdentity

- (LSBundleIdentity)initWithIdentityString:(id)a3 personaUniqueString:(id)a4 personaType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = LSBundleIdentity;
  v10 = [(LSBundleIdentity *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    identityString = v10->_identityString;
    v10->_identityString = v11;

    v13 = [v9 copy];
    personaUniqueString = v10->_personaUniqueString;
    v10->_personaUniqueString = v13;

    v10->_personaType = a5;
  }

  return v10;
}

- (LSBundleIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"identityString"];
  v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueString"];
  v7 = [v4 decodeIntegerForKey:@"personaType"];

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

- (void)encodeWithCoder:(id)a3
{
  identityString = self->_identityString;
  v5 = a3;
  [v5 encodeObject:identityString forKey:@"identityString"];
  [v5 encodeObject:self->_personaUniqueString forKey:@"personaUniqueString"];
  [v5 encodeInteger:self->_personaType forKey:@"personaType"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v7 = [(NSString *)self->_identityString isEqual:v5[1]]&& ((personaUniqueString = self->_personaUniqueString, personaUniqueString == v5[2]) || [(NSString *)personaUniqueString isEqual:?]) && self->_personaType == v5[3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)bundleIdentityForIdentityString:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696ACB0];
  v5 = [v3 dataUsingEncoding:4];
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

  v11 = [v9 unsignedIntegerValue];
  if (v11)
  {
    if (v11 != 1)
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

  v13 = [objc_alloc(*v12) initWithIdentityString:v3 parsedIdentityStringDictionary:v6 error:0];
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end