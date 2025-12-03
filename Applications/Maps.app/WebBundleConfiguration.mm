@interface WebBundleConfiguration
- (BOOL)isEqual:(id)equal;
- (NSURL)absoluteBuiltInWebBundleDirectory;
- (NSURL)absoluteCachedWebBundleDirectory;
- (NSURL)entryPointUrlBase;
- (NSURL)webBundleDirectory;
- (WebBundleConfiguration)initWithCoder:(id)coder;
- (id)_webBundleConfigurationStorageDirectory;
- (id)copyWithZone:(_NSZone *)zone;
- (id)directoryForNewWebBundleName:(id)name;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WebBundleConfiguration

- (NSURL)webBundleDirectory
{
  if (!self->_webBundleDirectory)
  {
    absoluteBuiltInWebBundleDirectory = [(WebBundleConfiguration *)self absoluteBuiltInWebBundleDirectory];
    webBundleDirectory = self->_webBundleDirectory;
    self->_webBundleDirectory = absoluteBuiltInWebBundleDirectory;
  }

  if ([(WebBundleConfiguration *)self temporarilyUseOnDeviceDirectory])
  {
    absoluteCachedWebBundleDirectory = [(WebBundleConfiguration *)self absoluteCachedWebBundleDirectory];
  }

  else
  {
    absoluteCachedWebBundleDirectory = self->_webBundleDirectory;
  }

  return absoluteCachedWebBundleDirectory;
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
  onDeviceDirectoryWritable = [(WebBundleConfiguration *)self onDeviceDirectoryWritable];
  v4 = [(WebBundleConfiguration *)self directoryForNewWebBundleName:onDeviceDirectoryWritable];

  return v4;
}

- (id)directoryForNewWebBundleName:(id)name
{
  nameCopy = name;
  _webBundleConfigurationStorageDirectory = [(WebBundleConfiguration *)self _webBundleConfigurationStorageDirectory];
  v12 = 0;
  [_webBundleConfigurationStorageDirectory setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v12];
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

  rootDirectory = [(WebBundleConfiguration *)self rootDirectory];
  v9 = [_webBundleConfigurationStorageDirectory URLByAppendingPathComponent:rootDirectory];

  v10 = [v9 URLByAppendingPathComponent:nameCopy];

  return v10;
}

- (NSURL)absoluteBuiltInWebBundleDirectory
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 pathForResource:@"index" ofType:@"html" inDirectory:@"OnDeviceWebBundle"];

  stringByDeletingLastPathComponent = [v3 stringByDeletingLastPathComponent];

  v5 = [NSURL fileURLWithPath:stringByDeletingLastPathComponent];

  return v5;
}

- (NSURL)entryPointUrlBase
{
  urlScheme = [(WebBundleConfiguration *)self urlScheme];
  rootDirectory = [(WebBundleConfiguration *)self rootDirectory];
  v5 = [NSString stringWithFormat:@"%@://%@/", urlScheme, rootDirectory];
  v6 = [NSURL URLWithString:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    webBundleDirectory = [(WebBundleConfiguration *)v5 webBundleDirectory];
    webBundleDirectory2 = [(WebBundleConfiguration *)self webBundleDirectory];
    if (webBundleDirectory == webBundleDirectory2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [webBundleDirectory isEqual:webBundleDirectory2];
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
  webBundleDirectory = [(WebBundleConfiguration *)self webBundleDirectory];
  v3 = [webBundleDirectory hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  webBundleDirectory = [(WebBundleConfiguration *)self webBundleDirectory];
  [coderCopy encodeObject:webBundleDirectory forKey:@"WebBundleConfigurationDirectory"];
}

- (WebBundleConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WebBundleConfiguration;
  v5 = [(WebBundleConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebBundleConfigurationDirectory"];
    [(WebBundleConfiguration *)v5 setWebBundleDirectory:v6];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  webBundleDirectory = [(WebBundleConfiguration *)self webBundleDirectory];
  [v4 setWebBundleDirectory:webBundleDirectory];

  return v4;
}

@end