@interface NSItemRepresentationLoadResult
+ (id)resultWithData:(id)a3 urlWrapper:(id)a4 cleanupHandler:(id)a5 error:(id)a6;
- (id)copyWithData:(id)a3 urlWrapper:(id)a4 cleanupHandler:(id)a5 error:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setArchivedObjectClassName:(id)a3;
@end

@implementation NSItemRepresentationLoadResult

+ (id)resultWithData:(id)a3 urlWrapper:(id)a4 cleanupHandler:(id)a5 error:(id)a6
{
  v10 = objc_alloc_init(a1);
  [v10 setData:a3];
  [v10 setUrlWrapper:a4];
  [v10 setCleanupHandler:a5];
  [v10 setError:a6];

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSItemRepresentationLoadResult;
  [(NSItemRepresentationLoadResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (id)copyWithData:(id)a3 urlWrapper:(id)a4 cleanupHandler:(id)a5 error:(id)a6
{
  v10 = [(NSItemRepresentationLoadResult *)self copy];
  [v10 setData:a3];
  [v10 setUrlWrapper:a4];
  [v10 setCleanupHandler:a5];
  [v10 setError:a6];
  return v10;
}

- (void)setArchivedObjectClassName:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _NSIPLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 138543362;
    v6 = a3;
    _os_log_fault_impl(&dword_18075C000, v4, OS_LOG_TYPE_FAULT, "It is insecure to set the archived object class name. The class name provided will be ignored: %{public}@. Please use .archivedObjectClass instead and do _NOT_ use NSClassFromString(…) unless you are matching the class to an allow-list.", &v5, 0xCu);
  }
}

@end