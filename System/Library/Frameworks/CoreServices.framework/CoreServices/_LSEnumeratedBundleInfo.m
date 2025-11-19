@interface _LSEnumeratedBundleInfo
- (BOOL)isEqual:(id)a3;
- (_LSEnumeratedBundleInfo)initWithBundleID:(id)a3 isPlaceholder:(BOOL)a4;
@end

@implementation _LSEnumeratedBundleInfo

- (_LSEnumeratedBundleInfo)initWithBundleID:(id)a3 isPlaceholder:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _LSEnumeratedBundleInfo;
  v8 = [(_LSEnumeratedBundleInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleID, a3);
    v9->_isPlaceholder = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 bundleID];
    if ([v6 isEqualToString:self->_bundleID])
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