@interface ASDExtensionMonitor
- (ASDExtensionMonitor)initWithAttributes:(id)attributes;
- (NSArray)extensions;
- (id)updateHandler;
- (void)dealloc;
- (void)setUpdateHandler:(id)handler;
@end

@implementation ASDExtensionMonitor

- (ASDExtensionMonitor)initWithAttributes:(id)attributes
{
  v23[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v18.receiver = self;
  v18.super_class = ASDExtensionMonitor;
  v5 = [(ASDExtensionMonitor *)&v18 init];
  if (v5)
  {
    v6 = [attributesCopy copy];
    extensionAttributes = v5->_extensionAttributes;
    v5->_extensionAttributes = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    v17 = 0;
    v8 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v5->_extensionAttributes error:&v17];
    extensions = v5->_extensions;
    v5->_extensions = v8;

    if (!v5->_extensions)
    {
      v5->_extensions = MEMORY[0x1E695E0F0];
      v10 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v17;
        _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "Failed to get extensions: %{public}@", &buf, 0xCu);
      }
    }

    objc_initWeak(&location, v5);
    v11 = MEMORY[0x1E696ABD0];
    v12 = v5->_extensionAttributes;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v21 = __49__ASDExtensionMonitor__startMonitoringExtensions__block_invoke;
    v22 = &unk_1E7CDDBE8;
    objc_copyWeak(v23, &location);
    v13 = [v11 beginMatchingExtensionsWithAttributes:v12 completion:&buf];
    matchingContext = v5->_matchingContext;
    v5->_matchingContext = v13;

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)dealloc
{
  if (self)
  {
    [MEMORY[0x1E696ABD0] endMatchingExtensions:self->_matchingContext];
    matchingContext = self->_matchingContext;
    self->_matchingContext = 0;
  }

  v4.receiver = self;
  v4.super_class = ASDExtensionMonitor;
  [(ASDExtensionMonitor *)&v4 dealloc];
}

- (NSArray)extensions
{
  os_unfair_lock_lock_with_options();
  v3 = self->_extensions;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)updateHandler
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x1B8CBC4F0](self->_updateHandler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x1B8CBC4F0](v3);

  return v4;
}

- (void)setUpdateHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  v5 = [handlerCopy copy];

  updateHandler = self->_updateHandler;
  self->_updateHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

void __49__ASDExtensionMonitor__startMonitoringExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 copy];
    if (v8)
    {
      os_unfair_lock_lock_with_options();
      objc_storeStrong(WeakRetained + 4, v8);
      v9 = MEMORY[0x1B8CBC4F0](*(WeakRetained + 5));
      os_unfair_lock_unlock(WeakRetained + 6);
      if (v9)
      {
        (*(v9 + 16))(v9, v8);
      }
    }

    else
    {
      v9 = ASDLogHandleForCategory(13);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543362;
        v12 = v6;
        _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "Failed to get extensions: %{public}@", &v11, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end