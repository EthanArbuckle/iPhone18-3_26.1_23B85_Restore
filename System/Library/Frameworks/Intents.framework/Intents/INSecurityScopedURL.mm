@interface INSecurityScopedURL
- (BOOL)startAccessingSecurityScopedResource;
- (INSecurityScopedURL)initWithURL:(id)l;
- (void)stopAccessingSecurityScopedResource;
@end

@implementation INSecurityScopedURL

- (void)stopAccessingSecurityScopedResource
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_accessCount - 1;
  self->_accessCount = v3;
  if (!v3)
  {
    v4 = [(INSecurityScopedURL *)self url];
    [v4 stopAccessingSecurityScopedResource];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)startAccessingSecurityScopedResource
{
  os_unfair_lock_lock(&self->_lock);
  accessCount = self->_accessCount;
  if (!accessCount)
  {
    v4 = [(INSecurityScopedURL *)self url];
    startAccessingSecurityScopedResource = [v4 startAccessingSecurityScopedResource];

    if (!startAccessingSecurityScopedResource)
    {
      v6 = 0;
      goto LABEL_5;
    }

    accessCount = self->_accessCount;
  }

  self->_accessCount = accessCount + 1;
  v6 = 1;
LABEL_5:
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (INSecurityScopedURL)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = INSecurityScopedURL;
  v6 = [(INSecurityScopedURL *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = v7;
  }

  return v7;
}

@end