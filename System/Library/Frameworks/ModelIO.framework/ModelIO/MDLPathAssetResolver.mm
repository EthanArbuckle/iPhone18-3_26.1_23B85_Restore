@interface MDLPathAssetResolver
- (BOOL)canResolveAssetNamed:(id)named;
- (MDLPathAssetResolver)initWithPath:(NSString *)path;
- (id)resolveAssetNamed:(id)named;
- (void)setPath:(NSString *)path;
@end

@implementation MDLPathAssetResolver

- (void)setPath:(NSString *)path
{
  v7 = path;
  if (objc_msgSend_hasSuffix_(v7, v4, @"/"))
  {
    v5 = v7;
  }

  else
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@/", v7);
  }

  v6 = self->_path;
  self->_path = v5;
}

- (MDLPathAssetResolver)initWithPath:(NSString *)path
{
  v5 = path;
  v10.receiver = self;
  v10.super_class = MDLPathAssetResolver;
  v6 = [(MDLPathAssetResolver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    v8 = v7;
  }

  return v7;
}

- (BOOL)canResolveAssetNamed:(id)named
{
  namedCopy = named;
  if (namedCopy && self->_path)
  {
    v6 = objc_msgSend_resolveAssetNamed_(self, v4, namedCopy);
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)resolveAssetNamed:(id)named
{
  namedCopy = named;
  v6 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v5, self->_path, 1);
  v8 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, namedCopy);

  return v8;
}

@end