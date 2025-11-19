@interface TUITemplateFactory
- (TUITemplateFactory)initWithRegistry:(id)a3;
- (id)_prebuiltTemplateForURL:(id)a3 looseMatch:(BOOL)a4;
- (id)templateFromURL:(id)a3;
- (id)templateFromURL:(id)a3 looseMatch:(BOOL)a4;
- (void)debugPackages;
- (void)registerPackage:(id)a3;
- (void)unregisterAllPackages;
- (void)unregisterPackage:(id)a3;
@end

@implementation TUITemplateFactory

- (TUITemplateFactory)initWithRegistry:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = TUITemplateFactory;
  v6 = [(TUITemplateFactory *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("TUITemplateFactory.cache", v8);
    cacheQueue = v7->_cacheQueue;
    v7->_cacheQueue = v9;

    v11 = objc_opt_new();
    prebuiltTemplates = v7->_prebuiltTemplates;
    v7->_prebuiltTemplates = v11;

    v13 = [NSHashTable hashTableWithOptions:512];
    prebuiltPackages = v7->_prebuiltPackages;
    v7->_prebuiltPackages = v13;
  }

  return v7;
}

- (void)registerPackage:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    cacheQueue = self->_cacheQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1649DC;
    v6[3] = &unk_25F7C8;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(cacheQueue, v6);
  }
}

- (void)unregisterPackage:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    cacheQueue = self->_cacheQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_164C60;
    v6[3] = &unk_25F7C8;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(cacheQueue, v6);
  }
}

- (void)unregisterAllPackages
{
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_164EBC;
  block[3] = &unk_262240;
  block[4] = self;
  dispatch_sync(cacheQueue, block);
}

- (void)debugPackages
{
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_164F74;
  block[3] = &unk_262240;
  block[4] = self;
  dispatch_sync(cacheQueue, block);
}

- (id)_prebuiltTemplateForURL:(id)a3 looseMatch:(BOOL)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1652DC;
  v25 = sub_1652EC;
  v26 = 0;
  if (v6)
  {
    v7 = [NSURLComponents componentsWithURL:v6 resolvingAgainstBaseURL:1];
    v8 = [v7 path];
    v9 = [v8 stringByStandardizingPath];
    [v7 setPath:v9];

    v10 = [v7 URL];
    cacheQueue = self->_cacheQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1652F4;
    block[3] = &unk_263268;
    v19 = &v21;
    block[4] = self;
    v17 = v10;
    v20 = a4;
    v18 = v6;
    v12 = v10;
    dispatch_sync(cacheQueue, block);

    v13 = v22[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  _Block_object_dispose(&v21, 8);

  return v14;
}

- (id)templateFromURL:(id)a3
{
  v3 = [(TUITemplateFactory *)self templateFromURL:a3 looseMatch:0];

  return v3;
}

- (id)templateFromURL:(id)a3 looseMatch:(BOOL)a4
{
  v4 = [(TUITemplateFactory *)self _prebuiltTemplateForURL:a3 looseMatch:a4];

  return v4;
}

@end