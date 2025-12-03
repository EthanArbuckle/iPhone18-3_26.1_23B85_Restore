@interface PHAssetDeleteOptions
- (PHAssetDeleteOptions)init;
- (PHAssetDeleteOptions)initWithXPCDict:(id)dict;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeToXPCDict:(id)dict;
@end

@implementation PHAssetDeleteOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHAssetDeleteOptions);
  [(PHAssetDeleteOptions *)v4 setShouldExpungeFromLocalStorageOnly:self->_shouldExpungeFromLocalStorageOnly];
  [(PHAssetDeleteOptions *)v4 setExpungeSource:self->_expungeSource];
  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(dictCopy, "deleteOptions", xdict);

  xpc_dictionary_set_BOOL(xdict, "shouldExpungeFromLocalStorageOnly", self->_shouldExpungeFromLocalStorageOnly);
  xpc_dictionary_set_int64(xdict, "expungeSource", self->_expungeSource);
}

- (PHAssetDeleteOptions)initWithXPCDict:(id)dict
{
  dictCopy = dict;
  v5 = [(PHAssetDeleteOptions *)self init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(dictCopy, "deleteOptions");
    v7 = v6;
    if (v6)
    {
      v5->_shouldExpungeFromLocalStorageOnly = xpc_dictionary_get_BOOL(v6, "shouldExpungeFromLocalStorageOnly");
      v5->_expungeSource = xpc_dictionary_get_int64(v7, "expungeSource");
    }
  }

  return v5;
}

- (PHAssetDeleteOptions)init
{
  v3.receiver = self;
  v3.super_class = PHAssetDeleteOptions;
  return [(PHAssetDeleteOptions *)&v3 init];
}

@end