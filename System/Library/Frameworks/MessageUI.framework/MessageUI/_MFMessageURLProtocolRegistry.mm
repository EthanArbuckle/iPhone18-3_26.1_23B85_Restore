@interface _MFMessageURLProtocolRegistry
+ (id)sharedRegistry;
- (_MFMessageURLProtocolRegistry)init;
- (id)contentRepresentationForURL:(id)a3;
- (void)registerContentRepresentation:(id)a3;
@end

@implementation _MFMessageURLProtocolRegistry

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___MFMessageURLProtocolRegistry_sharedRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedRegistry_onceToken != -1)
  {
    dispatch_once(&sharedRegistry_onceToken, block);
  }

  v2 = sharedRegistry_instance;

  return v2;
}

- (_MFMessageURLProtocolRegistry)init
{
  v7.receiver = self;
  v7.super_class = _MFMessageURLProtocolRegistry;
  v2 = [(_MFMessageURLProtocolRegistry *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    storage = v3->_storage;
    v3->_storage = v4;
  }

  return v3;
}

- (void)registerContentRepresentation:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 contentURL];
  if (v5)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMapTable *)self->_storage setObject:v4 forKey:v5];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = +[MFMessageURLProtocol log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v4 ef_publicDescription];
      [(_MFMessageURLProtocolRegistry *)v7 registerContentRepresentation:v8, v6];
    }
  }
}

- (id)contentRepresentationForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMapTable *)self->_storage objectForKey:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)registerContentRepresentation:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "unexpected attempt to register a content representation without an associated URL: %{public}@", buf, 0xCu);
}

@end