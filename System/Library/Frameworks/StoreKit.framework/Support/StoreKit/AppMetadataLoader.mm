@interface AppMetadataLoader
+ (id)_loaderForApplicationRecord:(id)record error:(id *)error;
+ (id)loadMetadataFromApplicationRecord:(id)record withError:(id *)error;
+ (id)loadMetadataFromBundleContainerURL:(id)l withError:(id *)error;
- (id)_initWithTargetURL:(id)l isContainer:(BOOL)container;
- (id)_loadMetadataFromBundleContainerURLWithError:(id *)error;
- (id)_loadMetadataFromExtendedAttributeWithError:(id *)error;
- (id)_loadMetadataWithError:(id *)error;
@end

@implementation AppMetadataLoader

+ (id)_loaderForApplicationRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v5 = [AppMetadataLoader alloc];
  bundleContainerURL = [recordCopy bundleContainerURL];

  v7 = [(AppMetadataLoader *)v5 _initWithTargetURL:bundleContainerURL isContainer:1];

  return v7;
}

- (id)_initWithTargetURL:(id)l isContainer:(BOOL)container
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = AppMetadataLoader;
  v8 = [(AppMetadataLoader *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_targetIsContainer = container;
    objc_storeStrong(&v8->_targetURL, l);
  }

  return v9;
}

+ (id)loadMetadataFromApplicationRecord:(id)record withError:(id *)error
{
  v5 = [AppMetadataLoader _loaderForApplicationRecord:record error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _loadMetadataWithError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadMetadataFromBundleContainerURL:(id)l withError:(id *)error
{
  lCopy = l;
  v6 = [[AppMetadataLoader alloc] _initWithTargetURL:lCopy isContainer:1];

  v7 = [v6 _loadMetadataWithError:error];

  return v7;
}

- (id)_loadMetadataFromBundleContainerURLWithError:(id *)error
{
  v5 = [(NSURL *)self->_targetURL URLByAppendingPathComponent:@"iTunesMetadata"];
  v6 = [v5 URLByAppendingPathExtension:@"plist"];

  if (v6)
  {
    v10 = 0;
    v7 = [MIStoreMetadata metadataFromPlistAtURL:v6 error:&v10];
    v8 = v10;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    *error = sub_100004334(self->_targetURL, v8, @"Loading failed");
  }

LABEL_7:

  return v7;
}

- (id)_loadMetadataFromExtendedAttributeWithError:(id *)error
{
  if (error)
  {
    *error = sub_100004334(self->_targetURL, 0, @"Extended attribute is not available on this platform");
  }

  return 0;
}

- (id)_loadMetadataWithError:(id *)error
{
  if (self->_targetIsContainer)
  {
    [(AppMetadataLoader *)self _loadMetadataFromBundleContainerURLWithError:error];
  }

  else
  {
    [(AppMetadataLoader *)self _loadMetadataFromExtendedAttributeWithError:error];
  }
  v3 = ;

  return v3;
}

@end