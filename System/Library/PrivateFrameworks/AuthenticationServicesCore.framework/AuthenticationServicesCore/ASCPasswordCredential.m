@interface ASCPasswordCredential
- (ASCPasswordCredential)initWithCoder:(id)a3;
- (ASCPasswordCredential)initWithUser:(id)a3 password:(id)a4 site:(id)a5 creationDate:(id)a6 externalProviderBundleIdentifier:(id)a7;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCPasswordCredential

- (ASCPasswordCredential)initWithUser:(id)a3 password:(id)a4 site:(id)a5 creationDate:(id)a6 externalProviderBundleIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = ASCPasswordCredential;
  v17 = [(ASCPasswordCredential *)&v28 init];
  if (v17)
  {
    v18 = [v12 copy];
    user = v17->_user;
    v17->_user = v18;

    v20 = [v13 copy];
    password = v17->_password;
    v17->_password = v20;

    v22 = [v14 copy];
    site = v17->_site;
    v17->_site = v22;

    objc_storeStrong(&v17->_creationDate, a6);
    v24 = [v16 copy];
    externalProviderBundleIdentifier = v17->_externalProviderBundleIdentifier;
    v17->_externalProviderBundleIdentifier = v24;

    v26 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      user = self->_user;
      v8 = [(ASCPasswordCredential *)v6 user];
      if ([(NSString *)user isEqual:v8])
      {
        password = self->_password;
        v10 = [(ASCPasswordCredential *)v6 password];
        if ([(NSString *)password isEqual:v10])
        {
          site = self->_site;
          v12 = [(ASCPasswordCredential *)v6 site];
          if ([(NSString *)site isEqual:v12])
          {
            creationDate = self->_creationDate;
            v14 = [(ASCPasswordCredential *)v6 creationDate];
            if ([(NSDate *)creationDate isEqual:v14])
            {
              externalProviderBundleIdentifier = self->_externalProviderBundleIdentifier;
              v16 = [(ASCPasswordCredential *)v6 externalProviderBundleIdentifier];
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

- (ASCPasswordCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"site"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalProviderBundleIdentifier"];

  v10 = [(ASCPasswordCredential *)self initWithUser:v5 password:v6 site:v7 creationDate:v8 externalProviderBundleIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  user = self->_user;
  v5 = a3;
  [v5 encodeObject:user forKey:@"user"];
  [v5 encodeObject:self->_password forKey:@"password"];
  [v5 encodeObject:self->_site forKey:@"site"];
  [v5 encodeObject:self->_creationDate forKey:@"date"];
  [v5 encodeObject:self->_externalProviderBundleIdentifier forKey:@"externalProviderBundleIdentifier"];
}

@end