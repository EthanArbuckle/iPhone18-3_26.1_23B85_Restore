@interface _COSTCCItem
- (_COSTCCItem)initWithBundleID:(id)d displayName:(id)name enabled:(BOOL)enabled;
@end

@implementation _COSTCCItem

- (_COSTCCItem)initWithBundleID:(id)d displayName:(id)name enabled:(BOOL)enabled
{
  dCopy = d;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = _COSTCCItem;
  v10 = [(_COSTCCItem *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    bundleID = v10->_bundleID;
    v10->_bundleID = v11;

    v13 = [nameCopy copy];
    displayName = v10->_displayName;
    v10->_displayName = v13;

    v10->_enabled = enabled;
  }

  return v10;
}

@end