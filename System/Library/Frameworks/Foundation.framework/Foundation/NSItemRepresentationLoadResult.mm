@interface NSItemRepresentationLoadResult
+ (id)resultWithData:(id)data urlWrapper:(id)wrapper cleanupHandler:(id)handler error:(id)error;
- (id)copyWithData:(id)data urlWrapper:(id)wrapper cleanupHandler:(id)handler error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setArchivedObjectClassName:(id)name;
@end

@implementation NSItemRepresentationLoadResult

+ (id)resultWithData:(id)data urlWrapper:(id)wrapper cleanupHandler:(id)handler error:(id)error
{
  v10 = objc_alloc_init(self);
  [v10 setData:data];
  [v10 setUrlWrapper:wrapper];
  [v10 setCleanupHandler:handler];
  [v10 setError:error];

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSItemRepresentationLoadResult;
  [(NSItemRepresentationLoadResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NSItemRepresentationLoadResult);
  [(NSItemRepresentationLoadResult *)v4 setData:self->_data];
  [(NSItemRepresentationLoadResult *)v4 setUrlWrapper:self->_urlWrapper];
  [(NSItemRepresentationLoadResult *)v4 setCleanupHandler:self->_cleanupHandler];
  [(NSItemRepresentationLoadResult *)v4 setError:self->_error];
  [(NSItemRepresentationLoadResult *)v4 setWasOpenedInPlace:self->_wasOpenedInPlace];
  [(NSItemRepresentationLoadResult *)v4 setArchivedObjectClass:self->_archivedObjectClass];
  return v4;
}

- (id)copyWithData:(id)data urlWrapper:(id)wrapper cleanupHandler:(id)handler error:(id)error
{
  v10 = [(NSItemRepresentationLoadResult *)self copy];
  [v10 setData:data];
  [v10 setUrlWrapper:wrapper];
  [v10 setCleanupHandler:handler];
  [v10 setError:error];
  return v10;
}

- (void)setArchivedObjectClassName:(id)name
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _NSIPLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 138543362;
    nameCopy = name;
    _os_log_fault_impl(&dword_18075C000, v4, OS_LOG_TYPE_FAULT, "It is insecure to set the archived object class name. The class name provided will be ignored: %{public}@. Please use .archivedObjectClass instead and do _NOT_ use NSClassFromString(…) unless you are matching the class to an allow-list.", &v5, 0xCu);
  }
}

@end