@interface _LSBundleProxiesOfTypeQuery
+ (id)queryWithType:(unint64_t)a3;
- (BOOL)bundleUnitMeetsRequirements:(unsigned int)a3 bundleData:(const LSBundleData *)a4 context:(LSContext *)a5;
- (BOOL)isEqual:(id)a3;
- (_LSBundleProxiesOfTypeQuery)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSBundleProxiesOfTypeQuery

+ (id)queryWithType:(unint64_t)a3
{
  v6 = [[a1 alloc] _init];
  v7 = v6;
  if (a3 != 6)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:a1 file:@"LSBundleQuery.mm" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"type != LSBundleTypePlugInKitPlugin"}];

  if (v7)
  {
LABEL_3:
    v7[2] = a3;
  }

LABEL_4:

  return v7;
}

- (BOOL)bundleUnitMeetsRequirements:(unsigned int)a3 bundleData:(const LSBundleData *)a4 context:(LSContext *)a5
{
  v5 = 0;
  if (a3 && a4 && a5)
  {
    exactIdentifier = a4->base.exactIdentifier;
    [(_LSDatabase *)a5->db store];
    v10 = _CSStringCopyCFString();
    if (!v10)
    {
      goto LABEL_11;
    }

    if ([(_LSBundleProxiesOfTypeQuery *)self type]== 5)
    {
      v11 = a4->_clas == 13;
      goto LABEL_7;
    }

    if ([(_LSBundleProxiesOfTypeQuery *)self type]== 2)
    {
      goto LABEL_11;
    }

    v13 = [(_LSBundleProxiesOfTypeQuery *)self type];
    clas = a4->_clas;
    if (v13 == 7)
    {
      v11 = clas == 14;
      goto LABEL_7;
    }

    if (clas == 2)
    {
      v15 = [(_LSBundleProxiesOfTypeQuery *)self type];
      v5 = 0;
      if (v15 > 2)
      {
        if (v15 == 4)
        {
          if ((*(&a4->_clas + 6) & 4) != 0)
          {
            goto LABEL_11;
          }

          v16 = +[LSApplicationRestrictionsManager sharedInstance];
          v17 = [(LSApplicationRestrictionsManager *)v16 isApplicationRestricted:v10 checkFeatureRestrictions:1];

          if (v17)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (v15 != 3)
          {
            goto LABEL_12;
          }

          if ((*(&a4->_clas + 6) & 4) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_12;
        }

        if ((*(&a4->_clas + 6) & 4) != 0)
        {
          goto LABEL_11;
        }
      }

      vendorName = a4->vendorName;
      v19 = _LSDatabaseGetNSStringFromString(a5->db);
      v20 = v19;
      if (!v19 || (v21 = [v19 isEqualToString:@"Hidden"], v20, (v21 & 1) == 0))
      {
        v22 = a4->vendorName;
        v23 = _LSDatabaseGetNSStringFromString(a5->db);
        v24 = v23;
        if (!v23 || (v25 = [v23 isEqualToString:@"SystemAppPlaceholder"], v24, (v25 & 1) == 0))
        {
          if (![(_LSBundleProxiesOfTypeQuery *)self type])
          {
            v5 = 1;
            goto LABEL_12;
          }

          v11 = (a4->_bundleFlags & 0x200) == 0;
LABEL_7:
          v5 = v11;
          goto LABEL_12;
        }
      }
    }

LABEL_11:
    v5 = 0;
LABEL_12:
  }

  return v5;
}

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v8 = +[_LSDServiceDomain defaultServiceDomain];
  v9 = LaunchServices::Database::Context::_get(&v21, v8, 0);

  if (v9)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65___LSBundleProxiesOfTypeQuery__enumerateWithXPCConnection_block___block_invoke;
    v18[3] = &unk_1E6A1ADB0;
    v18[4] = self;
    v20 = v9;
    v10 = v7;
    v19 = v10;
    v11 = _LSEnumerateViableBundlesOfClass(v9, 0, v18);
    if (v11)
    {
      v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v11, 0, "[_LSBundleProxiesOfTypeQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleQuery.mm", 273);
      (*(v10 + 2))(v10, 0, v12);
    }
  }

  else
  {
    v13 = +[_LSDServiceDomain defaultServiceDomain];
    v14 = LaunchServices::Database::Context::_get(&v21, v13, 0);

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v24;
    }

    (*(v7 + 2))(v7, 0, v15);
  }

  if (v21 && v23 == 1)
  {
    _LSContextDestroy(v21);
  }

  v16 = v22;
  v21 = 0;
  v22 = 0;

  v23 = 0;
  v17 = v24;
  v24 = 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _LSBundleProxiesOfTypeQuery;
  if ([(_LSQuery *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 type];
    if (v6 == [(_LSBundleProxiesOfTypeQuery *)self type])
    {
      v7 = [v5 isLegacy];
      v8 = v7 ^ [(_LSQuery *)self isLegacy]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_LSBundleProxiesOfTypeQuery *)self type];
  v5.receiver = self;
  v5.super_class = _LSBundleProxiesOfTypeQuery;
  return [(_LSQuery *)&v5 hash]^ (v3 << 16);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _LSBundleProxiesOfTypeQuery;
  [(_LSQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[_LSBundleProxiesOfTypeQuery type](self forKey:{"type"), @"type"}];
}

- (_LSBundleProxiesOfTypeQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _LSBundleProxiesOfTypeQuery;
  v5 = [(_LSQuery *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end