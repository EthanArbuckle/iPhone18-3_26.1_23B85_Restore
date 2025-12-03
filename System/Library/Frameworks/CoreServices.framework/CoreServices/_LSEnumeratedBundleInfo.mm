@interface _LSEnumeratedBundleInfo
- (BOOL)isEqual:(id)equal;
- (_LSEnumeratedBundleInfo)initWithBundleID:(id)d isPlaceholder:(BOOL)placeholder;
@end

@implementation _LSEnumeratedBundleInfo

- (_LSEnumeratedBundleInfo)initWithBundleID:(id)d isPlaceholder:(BOOL)placeholder
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = _LSEnumeratedBundleInfo;
  v8 = [(_LSEnumeratedBundleInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleID, d);
    v9->_isPlaceholder = placeholder;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [v5 bundleID];
    if ([bundleID isEqualToString:self->_bundleID])
    {
      v7 = self->_isPlaceholder == [v5 isPlaceholder];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end