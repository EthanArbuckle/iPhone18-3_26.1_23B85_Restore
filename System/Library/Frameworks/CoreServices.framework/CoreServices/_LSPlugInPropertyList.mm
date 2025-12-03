@interface _LSPlugInPropertyList
- (BOOL)_getPropertyList:(id *)list;
- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key;
- (_LSPlugInPropertyList)initWithCoder:(id)coder;
- (_LSPlugInPropertyList)initWithInfoPlist:(id)plist SDKPlist:(id)kPlist;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSPlugInPropertyList

- (_LSPlugInPropertyList)initWithInfoPlist:(id)plist SDKPlist:(id)kPlist
{
  plistCopy = plist;
  kPlistCopy = kPlist;
  v9 = [(_LSLazyPropertyList *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_infoPlist, plist);
    objc_storeStrong(&v10->_sdkPlist, kPlist);
    v10->_mergeLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (BOOL)_getPropertyList:(id *)list
{
  os_unfair_lock_lock(&self->_mergeLock);
  if (!self->_mergedPlist)
  {
    propertyList = [(_LSLazyPropertyList *)self->_infoPlist propertyList];
    propertyList2 = [(_LSLazyPropertyList *)self->_sdkPlist propertyList];
    v7 = propertyList2;
    if (propertyList | propertyList2)
    {
      if (propertyList)
      {
        v8 = [propertyList ls_resolvePlugInKitInfoPlistWithDictionary:propertyList2];
      }

      else
      {
        v8 = propertyList2;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 copy];
    mergedPlist = self->_mergedPlist;
    self->_mergedPlist = v10;
  }

  os_unfair_lock_unlock(&self->_mergeLock);
  v12 = self->_mergedPlist;
  *list = v12;
  return v12 != 0;
}

- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key
{
  v11 = 0;
  keyCopy = key;
  [(_LSPlugInPropertyList *)self _getPropertyList:&v11];
  v7 = v11;
  v8 = [v7 objectForKeyedSubscript:keyCopy];

  v9 = v8;
  *value = v8;
  return v8 != 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _LSPlugInPropertyList;
  coderCopy = coder;
  [(_LSLazyPropertyList *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_infoPlist forKey:{@"infoPlist", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sdkPlist forKey:@"sdkPlist"];
}

- (_LSPlugInPropertyList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _LSPlugInPropertyList;
  v5 = [(_LSLazyPropertyList *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"infoPlist"];
    v7 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"sdkPlist"];
    if (v6 | v7)
    {
      objc_storeStrong(&v5->_infoPlist, v6);
      objc_storeStrong(&v5->_sdkPlist, v7);
    }
  }

  return v5;
}

@end