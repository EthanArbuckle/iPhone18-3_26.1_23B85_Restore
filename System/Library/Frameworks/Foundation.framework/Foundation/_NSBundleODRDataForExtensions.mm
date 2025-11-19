@interface _NSBundleODRDataForExtensions
+ (_NSBundleODRDataForExtensions)dataForBundle:(int)a3 createIfRequired:;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)accessSandboxExtension:(id)a3;
- (void)dealloc;
- (void)hostApplicationAssetPacksBecameAvailable:(id)a3;
- (void)hostApplicationAssetPacksBecameUnavailable:(id)a3;
@end

@implementation _NSBundleODRDataForExtensions

+ (_NSBundleODRDataForExtensions)dataForBundle:(int)a3 createIfRequired:
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
    if (!a3)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    qword_1ED439AB0 = v5;
  }

  v6 = [(NSMapTable *)v5 objectForKey:a2];
  v7 = v6;
  if (a3 && !v6)
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

- (void)accessSandboxExtension:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  [a3 UTF8String];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  [a4 setExportedObject:self];
  [a4 setExportedInterface:_appExtensionInterface()];
  [a4 resume];
  self->_connection = a4;
  return 1;
}

- (void)hostApplicationAssetPacksBecameAvailable:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  if (![(_NSBundleODRDataCommon *)self assetPacksBecameAvailable:a3 error:&v4])
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

- (void)hostApplicationAssetPacksBecameUnavailable:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (![(_NSBundleODRDataCommon *)self assetPacksBecameUnavailable:a3 error:0])
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