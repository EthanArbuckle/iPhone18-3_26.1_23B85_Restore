@interface ASCPasswordCredential
- (ASCPasswordCredential)initWithCoder:(id)coder;
- (ASCPasswordCredential)initWithUser:(id)user password:(id)password site:(id)site creationDate:(id)date externalProviderBundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPasswordCredential

- (ASCPasswordCredential)initWithUser:(id)user password:(id)password site:(id)site creationDate:(id)date externalProviderBundleIdentifier:(id)identifier
{
  userCopy = user;
  passwordCopy = password;
  siteCopy = site;
  dateCopy = date;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = ASCPasswordCredential;
  v17 = [(ASCPasswordCredential *)&v28 init];
  if (v17)
  {
    v18 = [userCopy copy];
    user = v17->_user;
    v17->_user = v18;

    v20 = [passwordCopy copy];
    password = v17->_password;
    v17->_password = v20;

    v22 = [siteCopy copy];
    site = v17->_site;
    v17->_site = v22;

    objc_storeStrong(&v17->_creationDate, date);
    v24 = [identifierCopy copy];
    externalProviderBundleIdentifier = v17->_externalProviderBundleIdentifier;
    v17->_externalProviderBundleIdentifier = v24;

    v26 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      user = self->_user;
      user = [(ASCPasswordCredential *)v6 user];
      if ([(NSString *)user isEqual:user])
      {
        password = self->_password;
        password = [(ASCPasswordCredential *)v6 password];
        if ([(NSString *)password isEqual:password])
        {
          site = self->_site;
          site = [(ASCPasswordCredential *)v6 site];
          if ([(NSString *)site isEqual:site])
          {
            creationDate = self->_creationDate;
            creationDate = [(ASCPasswordCredential *)v6 creationDate];
            if ([(NSDate *)creationDate isEqual:creationDate])
            {
              externalProviderBundleIdentifier = self->_externalProviderBundleIdentifier;
              externalProviderBundleIdentifier = [(ASCPasswordCredential *)v6 externalProviderBundleIdentifier];
              v17 = WBSIsEqual();
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_user hash];
  v4 = [(NSString *)self->_password hash]^ v3;
  v5 = [(NSString *)self->_site hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_creationDate hash];
  return v6 ^ [(NSString *)self->_externalProviderBundleIdentifier hash];
}

- (ASCPasswordCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"site"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalProviderBundleIdentifier"];

  v10 = [(ASCPasswordCredential *)self initWithUser:v5 password:v6 site:v7 creationDate:v8 externalProviderBundleIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  user = self->_user;
  coderCopy = coder;
  [coderCopy encodeObject:user forKey:@"user"];
  [coderCopy encodeObject:self->_password forKey:@"password"];
  [coderCopy encodeObject:self->_site forKey:@"site"];
  [coderCopy encodeObject:self->_creationDate forKey:@"date"];
  [coderCopy encodeObject:self->_externalProviderBundleIdentifier forKey:@"externalProviderBundleIdentifier"];
}

@end