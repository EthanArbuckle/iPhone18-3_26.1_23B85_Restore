@interface _LSPlugInPropertyList
- (BOOL)_getPropertyList:(id *)a3;
- (BOOL)_getValue:(id *)a3 forPropertyListKey:(id)a4;
- (_LSPlugInPropertyList)initWithCoder:(id)a3;
- (_LSPlugInPropertyList)initWithInfoPlist:(id)a3 SDKPlist:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSPlugInPropertyList

- (_LSPlugInPropertyList)initWithInfoPlist:(id)a3 SDKPlist:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_LSLazyPropertyList *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_infoPlist, a3);
    objc_storeStrong(&v10->_sdkPlist, a4);
    v10->_mergeLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (BOOL)_getPropertyList:(id *)a3
{
  os_unfair_lock_lock(&self->_mergeLock);
  if (!self->_mergedPlist)
  {
    v5 = [(_LSLazyPropertyList *)self->_infoPlist propertyList];
    v6 = [(_LSLazyPropertyList *)self->_sdkPlist propertyList];
    v7 = v6;
    if (v5 | v6)
    {
      if (v5)
      {
        v8 = [v5 ls_resolvePlugInKitInfoPlistWithDictionary:v6];
      }

      else
      {
        v8 = v6;
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
  *a3 = v12;
  return v12 != 0;
}

- (BOOL)_getValue:(id *)a3 forPropertyListKey:(id)a4
{
  v11 = 0;
  v6 = a4;
  [(_LSPlugInPropertyList *)self _getPropertyList:&v11];
  v7 = v11;
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = v8;
  *a3 = v8;
  return v8 != 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _LSPlugInPropertyList;
  v4 = a3;
  [(_LSLazyPropertyList *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_infoPlist forKey:{@"infoPlist", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sdkPlist forKey:@"sdkPlist"];
}

- (_LSPlugInPropertyList)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _LSPlugInPropertyList;
  v5 = [(_LSLazyPropertyList *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"infoPlist"];
    v7 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"sdkPlist"];
    if (v6 | v7)
    {
      objc_storeStrong(&v5->_infoPlist, v6);
      objc_storeStrong(&v5->_sdkPlist, v7);
    }
  }

  return v5;
}

@end