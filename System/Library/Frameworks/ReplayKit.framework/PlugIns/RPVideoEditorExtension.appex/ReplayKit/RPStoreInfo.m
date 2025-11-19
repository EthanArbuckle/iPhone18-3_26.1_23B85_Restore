@interface RPStoreInfo
- (id)dictionary;
@end

@implementation RPStoreInfo

- (id)dictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKeyedSubscript:@"RPStoreInfoBundleIDKey"];
  }

  appName = self->_appName;
  if (appName)
  {
    [v4 setObject:appName forKeyedSubscript:@"RPStoreInfoAppNameKey"];
  }

  author = self->_author;
  if (author)
  {
    [v4 setObject:author forKeyedSubscript:@"RPStoreInfoAuthorKey"];
  }

  itemURL = self->_itemURL;
  if (itemURL)
  {
    [v4 setObject:itemURL forKeyedSubscript:@"RPStoreInfoItemURLKey"];
  }

  return v4;
}

@end