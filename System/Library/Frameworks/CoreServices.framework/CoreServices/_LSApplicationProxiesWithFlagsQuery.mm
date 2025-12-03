@interface _LSApplicationProxiesWithFlagsQuery
+ (id)queryWithPlistFlags:(unsigned int)flags bundleFlags:(unint64_t)bundleFlags;
- (BOOL)isEqual:(id)equal;
- (_LSApplicationProxiesWithFlagsQuery)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSApplicationProxiesWithFlagsQuery

+ (id)queryWithPlistFlags:(unsigned int)flags bundleFlags:(unint64_t)bundleFlags
{
  _init = [[self alloc] _init];
  if (_init)
  {
    *(_init + 12) = flags;
    *(_init + 16) = bundleFlags;
  }

  return _init;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  blockCopy = block;
  plistFlags = [(_LSApplicationProxiesWithFlagsQuery *)self plistFlags];
  bundleFlags = [(_LSApplicationProxiesWithFlagsQuery *)self bundleFlags];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___LSApplicationProxiesWithFlagsQuery__enumerateWithXPCConnection_block___block_invoke;
  v8[3] = &__block_descriptor_44_e379_B28__0___LSDatabase_8I16r__LSBundleData__LSBundleBaseData_IIIIIIi_LSVersionNumber__32C___LSVersionNumber__32C__IIIIIIIIIIIIIICCISI_LSBundleBaseFlags_b1b1b1b1b1b1b1__IQIIC_LSBundleMoreFlags_b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1_IiI_LSVersionNumber__32C___LSVersionNumber__32C__IQQQIIIIIIIIIIQIIQQQQIQQIIIQIQIIIIIIIIIIIIIIIIIICCCI_1I_II_LSAppClipFields_I_iIIIIIII_20l;
  v9 = plistFlags;
  v8[4] = bundleFlags;
  yieldAppsMatchingSearch(blockCopy, v8);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _LSApplicationProxiesWithFlagsQuery;
  if ([(_LSQuery *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    plistFlags = [v5 plistFlags];
    if (plistFlags == [(_LSApplicationProxiesWithFlagsQuery *)self plistFlags])
    {
      bundleFlags = [v5 bundleFlags];
      v8 = bundleFlags == [(_LSApplicationProxiesWithFlagsQuery *)self bundleFlags];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  plistFlags = [(_LSApplicationProxiesWithFlagsQuery *)self plistFlags];
  v4 = [(_LSApplicationProxiesWithFlagsQuery *)self bundleFlags]^ (plistFlags << 32);
  v6.receiver = self;
  v6.super_class = _LSApplicationProxiesWithFlagsQuery;
  return v4 ^ [(_LSQuery *)&v6 hash];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSApplicationProxiesWithFlagsQuery;
  [(_LSQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[_LSApplicationProxiesWithFlagsQuery plistFlags](self forKey:{"plistFlags"), @"plistFlags"}];
  [coderCopy encodeInt64:-[_LSApplicationProxiesWithFlagsQuery bundleFlags](self forKey:{"bundleFlags"), @"bundleFlags"}];
}

- (_LSApplicationProxiesWithFlagsQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _LSApplicationProxiesWithFlagsQuery;
  v5 = [(_LSQuery *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    *(&v5->super.super._legacy + 1) = [coderCopy decodeInt64ForKey:@"plistFlags"];
    *&v5->_plistFlags = [coderCopy decodeInt64ForKey:@"bundleFlags"];
  }

  return v5;
}

@end