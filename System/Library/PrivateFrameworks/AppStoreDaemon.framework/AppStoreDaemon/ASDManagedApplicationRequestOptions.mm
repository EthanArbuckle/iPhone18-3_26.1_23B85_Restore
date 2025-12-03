@interface ASDManagedApplicationRequestOptions
- (ASDManagedApplicationRequestOptions)initWithCoder:(id)coder;
- (ASDManagedApplicationRequestOptions)initWithItemIdentifer:(id)identifer externalVersionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier bundleVersion:(id)version skipDownloads:(BOOL)downloads;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDManagedApplicationRequestOptions

- (ASDManagedApplicationRequestOptions)initWithItemIdentifer:(id)identifer externalVersionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier bundleVersion:(id)version skipDownloads:(BOOL)downloads
{
  identiferCopy = identifer;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  versionCopy = version;
  v20.receiver = self;
  v20.super_class = ASDManagedApplicationRequestOptions;
  v17 = [(ASDManagedApplicationRequestOptions *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_itemIdentifier, identifer);
    objc_storeStrong(&v18->_externalVersionIdentifier, identifier);
    objc_storeStrong(&v18->_bundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v18->_bundleVersion, version);
    v18->_skipDownloads = downloads;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDManagedApplicationRequestOptions allocWithZone:](ASDManagedApplicationRequestOptions init];
  v6 = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v8;

  v10 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  bundleVersion = v5->_bundleVersion;
  v5->_bundleVersion = v10;

  v12 = [(NSNumber *)self->_externalVersionIdentifier copyWithZone:zone];
  externalVersionIdentifier = v5->_externalVersionIdentifier;
  v5->_externalVersionIdentifier = v12;

  v14 = [(NSNumber *)self->_itemIdentifier copyWithZone:zone];
  itemIdentifier = v5->_itemIdentifier;
  v5->_itemIdentifier = v14;

  v5->_requestType = self->_requestType;
  v5->_skipDownloads = self->_skipDownloads;
  return v5;
}

- (ASDManagedApplicationRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ASDManagedApplicationRequestOptions;
  v5 = [(ASDRequestOptions *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifierKey"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifierKey"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersionKey"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalVersionIdentifierKey"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemIdentifierKey"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v14;

    v5->_requestType = [coderCopy decodeIntegerForKey:@"requestType"];
    v5->_skipDownloads = [coderCopy decodeBoolForKey:@"skipDownloadsKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentifier = [(ASDManagedApplicationRequestOptions *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifierKey"];

  bundleIdentifier = [(ASDManagedApplicationRequestOptions *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifierKey"];

  bundleVersion = [(ASDManagedApplicationRequestOptions *)self bundleVersion];
  [coderCopy encodeObject:bundleVersion forKey:@"bundleVersionKey"];

  externalVersionIdentifier = [(ASDManagedApplicationRequestOptions *)self externalVersionIdentifier];
  [coderCopy encodeObject:externalVersionIdentifier forKey:@"externalVersionIdentifierKey"];

  itemIdentifier = [(ASDManagedApplicationRequestOptions *)self itemIdentifier];
  [coderCopy encodeObject:itemIdentifier forKey:@"itemIdentifierKey"];

  [coderCopy encodeInteger:-[ASDManagedApplicationRequestOptions requestType](self forKey:{"requestType"), @"requestType"}];
  [coderCopy encodeBool:-[ASDManagedApplicationRequestOptions skipDownloads](self forKey:{"skipDownloads"), @"skipDownloadsKey"}];
}

@end