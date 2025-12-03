@interface _NSBundleODRDataForExtensions
+ (_NSBundleODRDataForExtensions)dataForBundle:(int)bundle createIfRequired:;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)accessSandboxExtension:(id)extension;
- (void)dealloc;
- (void)hostApplicationAssetPacksBecameAvailable:(id)available;
- (void)hostApplicationAssetPacksBecameUnavailable:(id)unavailable;
@end

@implementation _NSBundleODRDataForExtensions

+ (_NSBundleODRDataForExtensions)dataForBundle:(int)bundle createIfRequired:
{
  objc_opt_self();
  if (qword_1ED439AC0 != -1)
  {
    dispatch_once(&qword_1ED439AC0, &__block_literal_global_221_0);
  }

  [qword_1ED439AB8 lock];
  v5 = qword_1ED439AB0;
  if (!qword_1ED439AB0)
  {
    if (!bundle)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    qword_1ED439AB0 = v5;
  }

  v6 = [(NSMapTable *)v5 objectForKey:a2];
  v7 = v6;
  if (bundle && !v6)
  {
    v7 = [(_NSBundleODRDataCommon *)[_NSBundleODRDataForExtensions alloc] initWithBundle:a2];
    [qword_1ED439AB0 setObject:v7 forKey:a2];
    v8 = v7;
  }

LABEL_10:
  [qword_1ED439AB8 unlock];
  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSXPCConnection *)self->_connection invalidate];

  v3.receiver = self;
  v3.super_class = _NSBundleODRDataForExtensions;
  [(_NSBundleODRDataCommon *)&v3 dealloc];
}

- (void)accessSandboxExtension:(id)extension
{
  v8 = *MEMORY[0x1E69E9840];
  [extension UTF8String];
  v4 = sandbox_extension_consume();
  self->super._sandboxToken = v4;
  if (v4 < 0)
  {
    v5 = *__error();
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v6 = qword_1ED439AF8;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "NSBundleResourceRequest encountered a sandboxing error (extensions): %d", v7, 8u);
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  [connection setExportedObject:self];
  [connection setExportedInterface:_appExtensionInterface()];
  [connection resume];
  self->_connection = connection;
  return 1;
}

- (void)hostApplicationAssetPacksBecameAvailable:(id)available
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  if (![(_NSBundleODRDataCommon *)self assetPacksBecameAvailable:available error:&v4])
  {
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v3 = qword_1ED439AF8;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_18075C000, v3, OS_LOG_TYPE_ERROR, "Error in extension adding asset packs: %@", buf, 0xCu);
    }
  }
}

- (void)hostApplicationAssetPacksBecameUnavailable:(id)unavailable
{
  v6 = *MEMORY[0x1E69E9840];
  if (![(_NSBundleODRDataCommon *)self assetPacksBecameUnavailable:unavailable error:0])
  {
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v3 = qword_1ED439AF8;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = 0;
      _os_log_error_impl(&dword_18075C000, v3, OS_LOG_TYPE_ERROR, "Error in extension removing asset packs: %@", &v4, 0xCu);
    }
  }
}

@end