@interface RPStoreInfo
- (id)dictionary;
@end

@implementation RPStoreInfo

- (id)dictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [dictionary setObject:bundleID forKeyedSubscript:@"RPStoreInfoBundleIDKey"];
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