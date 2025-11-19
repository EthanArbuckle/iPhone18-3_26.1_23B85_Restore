@interface ASDManagedApplicationRequestOptions
- (ASDManagedApplicationRequestOptions)initWithCoder:(id)a3;
- (ASDManagedApplicationRequestOptions)initWithItemIdentifer:(id)a3 externalVersionIdentifier:(id)a4 bundleIdentifier:(id)a5 bundleVersion:(id)a6 skipDownloads:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDManagedApplicationRequestOptions

- (ASDManagedApplicationRequestOptions)initWithItemIdentifer:(id)a3 externalVersionIdentifier:(id)a4 bundleIdentifier:(id)a5 bundleVersion:(id)a6 skipDownloads:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = ASDManagedApplicationRequestOptions;
  v17 = [(ASDManagedApplicationRequestOptions *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_itemIdentifier, a3);
    objc_storeStrong(&v18->_externalVersionIdentifier, a4);
    objc_storeStrong(&v18->_bundleIdentifier, a5);
    objc_storeStrong(&v18->_bundleVersion, a6);
    v18->_skipDownloads = a7;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDManagedApplicationRequestOptions allocWithZone:](ASDManagedApplicationRequestOptions init];
  v6 = [(NSNumber *)self->_accountIdentifier copyWithZone:a3];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v8;

  v10 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  bundleVersion = v5->_bundleVersion;
  v5->_bundleVersion = v10;

  v12 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:a3];
  externalVersionIdentifier = v5->_externalVersionIdentifier;
  v5->_externalVersionIdentifier = v12;

  v14 = [(NSNumber *)self->_itemIdentifier copyWithZone:a3];
  itemIdentifier = v5->_itemIdentifier;
  v5->_itemIdentifier = v14;

  v5->_requestType = self->_requestType;
  v5->_skipDownloads = self->_skipDownloads;
  return v5;
}

- (ASDManagedApplicationRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ASDManagedApplicationRequestOptions;
  v5 = [(ASDRequestOptions *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifierKey"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifierKey"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersionKey"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalVersionIdentifierKey"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemIdentifierKey"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v14;

    v5->_requestType = [v4 decodeIntegerForKey:@"requestType"];
    v5->_skipDownloads = [v4 decodeBoolForKey:@"skipDownloadsKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(ASDManagedApplicationRequestOptions *)self accountIdentifier];
  [v9 encodeObject:v4 forKey:@"accountIdentifierKey"];

  v5 = [(ASDManagedApplicationRequestOptions *)self bundleIdentifier];
  [v9 encodeObject:v5 forKey:@"bundleIdentifierKey"];

  v6 = [(ASDManagedApplicationRequestOptions *)self bundleVersion];
  [v9 encodeObject:v6 forKey:@"bundleVersionKey"];

  v7 = [(ASDManagedApplicationRequestOptions *)self externalVersionIdentifier];
  [v9 encodeObject:v7 forKey:@"externalVersionIdentifierKey"];

  v8 = [(ASDManagedApplicationRequestOptions *)self itemIdentifier];
  [v9 encodeObject:v8 forKey:@"itemIdentifierKey"];

  [v9 encodeInteger:-[ASDManagedApplicationRequestOptions requestType](self forKey:{"requestType"), @"requestType"}];
  [v9 encodeBool:-[ASDManagedApplicationRequestOptions skipDownloads](self forKey:{"skipDownloads"), @"skipDownloadsKey"}];
}

@end