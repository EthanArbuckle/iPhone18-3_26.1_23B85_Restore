@interface QLCacheVersionedFileIdentifier
+ (id)versionedFileIdentifierWithThumbnailRequest:(id)a3;
- (BOOL)isEqual:(id)a3;
- (QLCacheVersionedFileIdentifier)initWithCoder:(id)a3;
- (QLCacheVersionedFileIdentifier)initWithFileIdentifier:(id)a3 version:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLCacheVersionedFileIdentifier

+ (id)versionedFileIdentifierWithThumbnailRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 fileIdentifier];
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "versionedFileIdentifierClass"))];

  return v5;
}

- (QLCacheVersionedFileIdentifier)initWithFileIdentifier:(id)a3 version:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = QLCacheVersionedFileIdentifier;
  v9 = [(QLCacheVersionedFileIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileIdentifier, a3);
    objc_storeStrong(&v10->_version, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  version = self->_version;
  fileIdentifier = self->_fileIdentifier;

  return [v4 initWithFileIdentifier:fileIdentifier version:version];
}

- (QLCacheVersionedFileIdentifier)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"i"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"v"];

  v10 = [(QLCacheVersionedFileIdentifier *)self initWithFileIdentifier:v8 version:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  fileIdentifier = self->_fileIdentifier;
  v5 = a3;
  [v5 encodeObject:fileIdentifier forKey:@"i"];
  [v5 encodeObject:self->_version forKey:@"v"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      fileIdentifier = self->_fileIdentifier;
      v7 = [(QLCacheVersionedFileIdentifier *)v5 fileIdentifier];
      if ([(QLCacheFileIdentifier *)fileIdentifier isEqual:v7])
      {
        version = self->_version;
        v9 = [(QLCacheVersionedFileIdentifier *)v5 version];
        v10 = [(QLThumbnailVersion *)version isEqual:v9];
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