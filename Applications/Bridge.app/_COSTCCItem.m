@interface _COSTCCItem
- (_COSTCCItem)initWithBundleID:(id)a3 displayName:(id)a4 enabled:(BOOL)a5;
@end

@implementation _COSTCCItem

- (_COSTCCItem)initWithBundleID:(id)a3 displayName:(id)a4 enabled:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _COSTCCItem;
  v10 = [(_COSTCCItem *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    bundleID = v10->_bundleID;
    v10->_bundleID = v11;

    v13 = [v9 copy];
    displayName = v10->_displayName;
    v10->_displayName = v13;

    v10->_enabled = a5;
  }

  return v10;
}

@end