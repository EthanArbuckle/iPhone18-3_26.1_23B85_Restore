@interface AppMetadataLoader
+ (id)_loaderForApplicationRecord:(id)a3 error:(id *)a4;
+ (id)loadMetadataFromApplicationRecord:(id)a3 withError:(id *)a4;
+ (id)loadMetadataFromBundleContainerURL:(id)a3 withError:(id *)a4;
- (id)_initWithTargetURL:(id)a3 isContainer:(BOOL)a4;
- (id)_loadMetadataFromBundleContainerURLWithError:(id *)a3;
- (id)_loadMetadataFromExtendedAttributeWithError:(id *)a3;
- (id)_loadMetadataWithError:(id *)a3;
@end

@implementation AppMetadataLoader

+ (id)_loaderForApplicationRecord:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [AppMetadataLoader alloc];
  v6 = [v4 bundleContainerURL];

  v7 = [(AppMetadataLoader *)v5 _initWithTargetURL:v6 isContainer:1];

  return v7;
}

- (id)_initWithTargetURL:(id)a3 isContainer:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AppMetadataLoader;
  v8 = [(AppMetadataLoader *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_targetIsContainer = a4;
    objc_storeStrong(&v8->_targetURL, a3);
  }

  return v9;
}

+ (id)loadMetadataFromApplicationRecord:(id)a3 withError:(id *)a4
{
  v5 = [AppMetadataLoader _loaderForApplicationRecord:a3 error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _loadMetadataWithError:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadMetadataFromBundleContainerURL:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = [[AppMetadataLoader alloc] _initWithTargetURL:v5 isContainer:1];

  v7 = [v6 _loadMetadataWithError:a4];

  return v7;
}

- (id)_loadMetadataFromBundleContainerURLWithError:(id *)a3
{
  v5 = [(NSURL *)self->_targetURL URLByAppendingPathComponent:@"iTunesMetadata"];
  v6 = [v5 URLByAppendingPathExtension:@"plist"];

  if (v6)
  {
    v10 = 0;
    v7 = [MIStoreMetadata metadataFromPlistAtURL:v6 error:&v10];
    v8 = v10;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    *a3 = sub_100004334(self->_targetURL, v8, @"Loading failed");
  }

LABEL_7:

  return v7;
}

- (id)_loadMetadataFromExtendedAttributeWithError:(id *)a3
{
  if (a3)
  {
    *a3 = sub_100004334(self->_targetURL, 0, @"Extended attribute is not available on this platform");
  }

  return 0;
}

- (id)_loadMetadataWithError:(id *)a3
{
  if (self->_targetIsContainer)
  {
    [(AppMetadataLoader *)self _loadMetadataFromBundleContainerURLWithError:a3];
  }

  else
  {
    [(AppMetadataLoader *)self _loadMetadataFromExtendedAttributeWithError:a3];
  }
  v3 = ;

  return v3;
}

@end