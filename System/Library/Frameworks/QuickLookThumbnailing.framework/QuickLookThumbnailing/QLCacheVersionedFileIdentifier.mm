@interface QLCacheVersionedFileIdentifier
+ (id)versionedFileIdentifierWithThumbnailRequest:(id)request;
- (BOOL)isEqual:(id)equal;
- (QLCacheVersionedFileIdentifier)initWithCoder:(id)coder;
- (QLCacheVersionedFileIdentifier)initWithFileIdentifier:(id)identifier version:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLCacheVersionedFileIdentifier

+ (id)versionedFileIdentifierWithThumbnailRequest:(id)request
{
  requestCopy = request;
  fileIdentifier = [requestCopy fileIdentifier];
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "versionedFileIdentifierClass"))];

  return v5;
}

- (QLCacheVersionedFileIdentifier)initWithFileIdentifier:(id)identifier version:(id)version
{
  identifierCopy = identifier;
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = QLCacheVersionedFileIdentifier;
  v9 = [(QLCacheVersionedFileIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileIdentifier, identifier);
    objc_storeStrong(&v10->_version, version);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  version = self->_version;
  fileIdentifier = self->_fileIdentifier;

  return [v4 initWithFileIdentifier:fileIdentifier version:version];
}

- (QLCacheVersionedFileIdentifier)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"i"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"v"];

  v10 = [(QLCacheVersionedFileIdentifier *)self initWithFileIdentifier:v8 version:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  fileIdentifier = self->_fileIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:fileIdentifier forKey:@"i"];
  [coderCopy encodeObject:self->_version forKey:@"v"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fileIdentifier = self->_fileIdentifier;
      fileIdentifier = [(QLCacheVersionedFileIdentifier *)v5 fileIdentifier];
      if ([(QLCacheFileIdentifier *)fileIdentifier isEqual:fileIdentifier])
      {
        version = self->_version;
        version = [(QLCacheVersionedFileIdentifier *)v5 version];
        v10 = [(QLThumbnailVersion *)version isEqual:version];
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

@end