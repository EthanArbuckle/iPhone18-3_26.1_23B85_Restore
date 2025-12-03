@interface _LSBundleProxiesOfTypeQuery
+ (id)queryWithType:(unint64_t)type;
- (BOOL)bundleUnitMeetsRequirements:(unsigned int)requirements bundleData:(const LSBundleData *)data context:(LSContext *)context;
- (BOOL)isEqual:(id)equal;
- (_LSBundleProxiesOfTypeQuery)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSBundleProxiesOfTypeQuery

+ (id)queryWithType:(unint64_t)type
{
  _init = [[self alloc] _init];
  v7 = _init;
  if (type != 6)
  {
    if (!_init)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"LSBundleQuery.mm" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"type != LSBundleTypePlugInKitPlugin"}];

  if (v7)
  {
LABEL_3:
    v7[2] = type;
  }

LABEL_4:

  return v7;
}

- (BOOL)bundleUnitMeetsRequirements:(unsigned int)requirements bundleData:(const LSBundleData *)data context:(LSContext *)context
{
  v5 = 0;
  if (requirements && data && context)
  {
    exactIdentifier = data->base.exactIdentifier;
    [(_LSDatabase *)context->db store];
    v10 = _CSStringCopyCFString();
    if (!v10)
    {
      goto LABEL_11;
    }

    if ([(_LSBundleProxiesOfTypeQuery *)self type]== 5)
    {
      v11 = data->_clas == 13;
      goto LABEL_7;
    }

    if ([(_LSBundleProxiesOfTypeQuery *)self type]== 2)
    {
      goto LABEL_11;
    }

    type = [(_LSBundleProxiesOfTypeQuery *)self type];
    clas = data->_clas;
    if (type == 7)
    {
      v11 = clas == 14;
      goto LABEL_7;
    }

    if (clas == 2)
    {
      type2 = [(_LSBundleProxiesOfTypeQuery *)self type];
      v5 = 0;
      if (type2 > 2)
      {
        if (type2 == 4)
        {
          if ((*(&data->_clas + 6) & 4) != 0)
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
          if (type2 != 3)
          {
            goto LABEL_12;
          }

          if ((*(&data->_clas + 6) & 4) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (type2)
      {
        if (type2 != 1)
        {
          goto LABEL_12;
        }

        if ((*(&data->_clas + 6) & 4) != 0)
        {
          goto LABEL_11;
        }
      }

      vendorName = data->vendorName;
      v19 = _LSDatabaseGetNSStringFromString(context->db);
      v20 = v19;
      if (!v19 || (v21 = [v19 isEqualToString:@"Hidden"], v20, (v21 & 1) == 0))
      {
        v22 = data->vendorName;
        v23 = _LSDatabaseGetNSStringFromString(context->db);
        v24 = v23;
        if (!v23 || (v25 = [v23 isEqualToString:@"SystemAppPlaceholder"], v24, (v25 & 1) == 0))
        {
          if (![(_LSBundleProxiesOfTypeQuery *)self type])
          {
            v5 = 1;
            goto LABEL_12;
          }

          v11 = (data->_bundleFlags & 0x200) == 0;
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

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
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
    v10 = blockCopy;
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

    (*(blockCopy + 2))(blockCopy, 0, v15);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _LSBundleProxiesOfTypeQuery;
  if ([(_LSQuery *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    type = [v5 type];
    if (type == [(_LSBundleProxiesOfTypeQuery *)self type])
    {
      isLegacy = [v5 isLegacy];
      v8 = isLegacy ^ [(_LSQuery *)self isLegacy]^ 1;
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
  type = [(_LSBundleProxiesOfTypeQuery *)self type];
  v5.receiver = self;
  v5.super_class = _LSBundleProxiesOfTypeQuery;
  return [(_LSQuery *)&v5 hash]^ (type << 16);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSBundleProxiesOfTypeQuery;
  [(_LSQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[_LSBundleProxiesOfTypeQuery type](self forKey:{"type"), @"type"}];
}

- (_LSBundleProxiesOfTypeQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _LSBundleProxiesOfTypeQuery;
  v5 = [(_LSQuery *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end