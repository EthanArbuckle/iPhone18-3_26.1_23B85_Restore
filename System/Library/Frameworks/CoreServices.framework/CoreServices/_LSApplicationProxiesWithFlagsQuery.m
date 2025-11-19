@interface _LSApplicationProxiesWithFlagsQuery
+ (id)queryWithPlistFlags:(unsigned int)a3 bundleFlags:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (_LSApplicationProxiesWithFlagsQuery)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSApplicationProxiesWithFlagsQuery

+ (id)queryWithPlistFlags:(unsigned int)a3 bundleFlags:(unint64_t)a4
{
  v6 = [[a1 alloc] _init];
  if (v6)
  {
    *(v6 + 12) = a3;
    *(v6 + 16) = a4;
  }

  return v6;
}

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = [(_LSApplicationProxiesWithFlagsQuery *)self plistFlags];
  v7 = [(_LSApplicationProxiesWithFlagsQuery *)self bundleFlags];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___LSApplicationProxiesWithFlagsQuery__enumerateWithXPCConnection_block___block_invoke;
  v8[3] = &__block_descriptor_44_e379_B28__0___LSDatabase_8I16r__LSBundleData__LSBundleBaseData_IIIIIIi_LSVersionNumber__32C___LSVersionNumber__32C__IIIIIIIIIIIIIICCISI_LSBundleBaseFlags_b1b1b1b1b1b1b1__IQIIC_LSBundleMoreFlags_b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1_IiI_LSVersionNumber__32C___LSVersionNumber__32C__IQQQIIIIIIIIIIQIIQQQQIQQIIIQIQIIIIIIIIIIIIIIIIIICCCI_1I_II_LSAppClipFields_I_iIIIIIII_20l;
  v9 = v6;
  v8[4] = v7;
  yieldAppsMatchingSearch(v5, v8);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _LSApplicationProxiesWithFlagsQuery;
  if ([(_LSQuery *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 plistFlags];
    if (v6 == [(_LSApplicationProxiesWithFlagsQuery *)self plistFlags])
    {
      v7 = [v5 bundleFlags];
      v8 = v7 == [(_LSApplicationProxiesWithFlagsQuery *)self bundleFlags];
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
  v3 = [(_LSApplicationProxiesWithFlagsQuery *)self plistFlags];
  v4 = [(_LSApplicationProxiesWithFlagsQuery *)self bundleFlags]^ (v3 << 32);
  v6.receiver = self;
  v6.super_class = _LSApplicationProxiesWithFlagsQuery;
  return v4 ^ [(_LSQuery *)&v6 hash];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _LSApplicationProxiesWithFlagsQuery;
  [(_LSQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:-[_LSApplicationProxiesWithFlagsQuery plistFlags](self forKey:{"plistFlags"), @"plistFlags"}];
  [v4 encodeInt64:-[_LSApplicationProxiesWithFlagsQuery bundleFlags](self forKey:{"bundleFlags"), @"bundleFlags"}];
}

- (_LSApplicationProxiesWithFlagsQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _LSApplicationProxiesWithFlagsQuery;
  v5 = [(_LSQuery *)&v7 initWithCoder:v4];
  if (v5)
  {
    *(&v5->super.super._legacy + 1) = [v4 decodeInt64ForKey:@"plistFlags"];
    *&v5->_plistFlags = [v4 decodeInt64ForKey:@"bundleFlags"];
  }

  return v5;
}

@end