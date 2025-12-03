@interface AVMediaDataStorage
- (AVMediaDataStorage)initWithURL:(NSURL *)URL options:(NSDictionary *)options;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVMediaDataStorage

- (AVMediaDataStorage)initWithURL:(NSURL *)URL options:(NSDictionary *)options
{
  v6 = URL;
  v13.receiver = self;
  v13.super_class = AVMediaDataStorage;
  v7 = [(AVMediaDataStorage *)&v13 init];
  if (v7)
  {
    v8 = objc_alloc_init(AVMediaDataStorageInternal);
    mediaDataStorageInternal = v7->_mediaDataStorageInternal;
    v7->_mediaDataStorageInternal = v8;

    v10 = v7->_mediaDataStorageInternal;
    if (!v10)
    {
      v11 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v10->URL, URL);
  }

  v11 = v7;
LABEL_6:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AVMediaDataStorage *)self URL];
      v6 = [(AVMediaDataStorage *)equalCopy URL];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  if (self->_mediaDataStorageInternal->URL)
  {
    URL = self->_mediaDataStorageInternal->URL;

    return CFHash(URL);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = AVMediaDataStorage;
    return [(AVMediaDataStorage *)&v6 hash];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVMediaDataStorage *)self URL];
  v7 = [v3 stringWithFormat:@"<%@: %p, URL = %@>", v5, self, v6];

  return v7;
}

@end