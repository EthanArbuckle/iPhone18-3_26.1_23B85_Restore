@interface WebBundleConfiguration
- (BOOL)isEqual:(id)a3;
- (NSURL)absoluteBuiltInWebBundleDirectory;
- (NSURL)absoluteCachedWebBundleDirectory;
- (NSURL)entryPointUrlBase;
- (NSURL)webBundleDirectory;
- (WebBundleConfiguration)initWithCoder:(id)a3;
- (id)_webBundleConfigurationStorageDirectory;
- (id)copyWithZone:(_NSZone *)a3;
- (id)directoryForNewWebBundleName:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WebBundleConfiguration

- (NSURL)webBundleDirectory
{
  if (!self->_webBundleDirectory)
  {
    v3 = [(WebBundleConfiguration *)self absoluteBuiltInWebBundleDirectory];
    webBundleDirectory = self->_webBundleDirectory;
    self->_webBundleDirectory = v3;
  }

  if ([(WebBundleConfiguration *)self temporarilyUseOnDeviceDirectory])
  {
    v5 = [(WebBundleConfiguration *)self absoluteCachedWebBundleDirectory];
  }

  else
  {
    v5 = self->_webBundleDirectory;
  }

  return v5;
}

- (id)_webBundleConfigurationStorageDirectory
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Caches"];
  v4 = [NSURL fileURLWithPath:v3];

  return v4;
}

- (NSURL)absoluteCachedWebBundleDirectory
{
  v3 = [(WebBundleConfiguration *)self onDeviceDirectoryWritable];
  v4 = [(WebBundleConfiguration *)self directoryForNewWebBundleName:v3];

  return v4;
}

- (id)directoryForNewWebBundleName:(id)a3
{
  v4 = a3;
  v5 = [(WebBundleConfiguration *)self _webBundleConfigurationStorageDirectory];
  v12 = 0;
  [v5 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = sub_100038318();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Marking directory as excluded from backup error: %@", buf, 0xCu);
    }
  }

  v8 = [(WebBundleConfiguration *)self rootDirectory];
  v9 = [v5 URLByAppendingPathComponent:v8];

  v10 = [v9 URLByAppendingPathComponent:v4];

  return v10;
}

- (NSURL)absoluteBuiltInWebBundleDirectory
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 pathForResource:@"index" ofType:@"html" inDirectory:@"OnDeviceWebBundle"];

  v4 = [v3 stringByDeletingLastPathComponent];

  v5 = [NSURL fileURLWithPath:v4];

  return v5;
}

- (NSURL)entryPointUrlBase
{
  v3 = [(WebBundleConfiguration *)self urlScheme];
  v4 = [(WebBundleConfiguration *)self rootDirectory];
  v5 = [NSString stringWithFormat:@"%@://%@/", v3, v4];
  v6 = [NSURL URLWithString:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(WebBundleConfiguration *)v5 webBundleDirectory];
    v7 = [(WebBundleConfiguration *)self webBundleDirectory];
    if (v6 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [v6 isEqual:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WebBundleConfiguration *)self webBundleDirectory];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WebBundleConfiguration *)self webBundleDirectory];
  [v4 encodeObject:v5 forKey:@"WebBundleConfigurationDirectory"];
}

- (WebBundleConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WebBundleConfiguration;
  v5 = [(WebBundleConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebBundleConfigurationDirectory"];
    [(WebBundleConfiguration *)v5 setWebBundleDirectory:v6];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(WebBundleConfiguration *)self webBundleDirectory];
  [v4 setWebBundleDirectory:v5];

  return v4;
}

@end