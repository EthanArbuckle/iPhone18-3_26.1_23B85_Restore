@interface NSExtensionURLResult
- (NSExtensionURLResult)init;
- (NSURL)url;
- (id)copiedURL;
- (void)dealloc;
- (void)setURL:(id)a3;
@end

@implementation NSExtensionURLResult

- (NSExtensionURLResult)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSExtensionURLResult;
  v2 = [(NSExtensionURLResult *)&v4 init];
  v2->_lock._os_unfair_lock_opaque = 0;
  v2->_url = 0;
  v2->_sema = dispatch_semaphore_create(0);
  return v2;
}

- (void)setURL:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_url == a3)
  {
    url = 0;
  }

  else
  {
    url = self->_url;
    self->_url = [a3 copy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copiedURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSURL *)self->_url copy];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSURL)url
{
  v2 = [(NSExtensionURLResult *)self copiedURL];

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_release(self->_sema);
  v3.receiver = self;
  v3.super_class = NSExtensionURLResult;
  [(NSExtensionURLResult *)&v3 dealloc];
}

@end