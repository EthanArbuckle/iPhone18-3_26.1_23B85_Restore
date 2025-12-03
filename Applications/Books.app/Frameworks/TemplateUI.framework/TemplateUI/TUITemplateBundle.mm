@interface TUITemplateBundle
+ (id)bundleWithURL:(id)l requireInfoPlist:(BOOL)plist;
- (id)_initWithURL:(id)l info:(id)info;
- (void)registerFonts;
- (void)registerPackagesWithFactory:(id)factory;
- (void)unregisterFonts;
- (void)unregisterPackages;
@end

@implementation TUITemplateBundle

+ (id)bundleWithURL:(id)l requireInfoPlist:(BOOL)plist
{
  plistCopy = plist;
  lCopy = l;
  v7 = [lCopy URLByAppendingPathComponent:@"Info.plist"];
  v8 = [NSDictionary dictionaryWithContentsOfURL:v7];
  v9 = objc_opt_class();
  v10 = [v8 objectForKeyedSubscript:@"version"];
  v11 = TUIDynamicCast(v9, v10);

  if (!plistCopy || v11)
  {
    v12 = [[self alloc] _initWithURL:lCopy info:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_initWithURL:(id)l info:(id)info
{
  lCopy = l;
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = TUITemplateBundle;
  v8 = [(TUITemplateBundle *)&v22 init];
  if (v8)
  {
    v9 = dispatch_queue_create("TUITemplateBundle.access", 0);
    accessQueue = v8->_accessQueue;
    v8->_accessQueue = v9;

    v11 = [lCopy copy];
    url = v8->_url;
    v8->_url = v11;

    v13 = objc_opt_class();
    v14 = [infoCopy objectForKeyedSubscript:@"version"];
    v15 = TUIDynamicCast(v13, v14);
    version = v8->_version;
    v8->_version = v15;

    v17 = objc_opt_new();
    registeredFonts = v8->_registeredFonts;
    v8->_registeredFonts = v17;

    v19 = [NSHashTable hashTableWithOptions:517];
    factories = v8->_factories;
    v8->_factories = v19;
  }

  return v8;
}

- (void)registerFonts
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F22B0;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)unregisterFonts
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F25CC;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)registerPackagesWithFactory:(id)factory
{
  factoryCopy = factory;
  if (factoryCopy)
  {
    os_unfair_lock_lock(&unk_2E64D0);
    packages = self->_packages;
    if (!packages)
    {
      location = &self->_packages;
      os_unfair_lock_unlock(&unk_2E64D0);
      obj = [NSHashTable hashTableWithOptions:512];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v6 = +[NSFileManager defaultManager];
      selfCopy = self;
      v7 = [v6 contentsOfDirectoryAtURL:self->_url includingPropertiesForKeys:0 options:0 error:0];

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v29 + 1) + 8 * i);
            pathExtension = [v12 pathExtension];
            v14 = [pathExtension isEqualToString:@"tpkg"];

            if (v14)
            {
              uRLByStandardizingPath = [v12 URLByStandardizingPath];
              v16 = [TUIBinaryPackage packageWithURL:uRLByStandardizingPath];

              if (v16)
              {
                [obj addObject:v16];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v9);
      }

      os_unfair_lock_lock(&unk_2E64D0);
      if (!*location)
      {
        objc_storeStrong(location, obj);
      }

      packages = *location;
      self = selfCopy;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = packages;
    v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [factoryCopy registerPackage:*(*(&v25 + 1) + 8 * j)];
        }

        v19 = [(NSHashTable *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [(NSHashTable *)self->_factories addObject:factoryCopy];
    os_unfair_lock_unlock(&unk_2E64D0);
  }
}

- (void)unregisterPackages
{
  os_unfair_lock_lock(&unk_2E64D0);
  if ([(NSHashTable *)self->_packages count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = self->_factories;
    v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        v7 = 0;
        do
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * v7);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v9 = self->_packages;
          v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v16;
            do
            {
              v13 = 0;
              do
              {
                if (*v16 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                [v8 unregisterPackage:*(*(&v15 + 1) + 8 * v13)];
                v13 = v13 + 1;
              }

              while (v11 != v13);
              v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v11);
          }

          v7 = v7 + 1;
        }

        while (v7 != v5);
        v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }
  }

  [(NSHashTable *)self->_factories removeAllObjects];
  packages = self->_packages;
  self->_packages = 0;

  os_unfair_lock_unlock(&unk_2E64D0);
}

@end