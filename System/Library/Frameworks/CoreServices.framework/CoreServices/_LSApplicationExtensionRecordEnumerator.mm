@interface _LSApplicationExtensionRecordEnumerator
- (BOOL)_evaluatePluginNoIO:(unsigned int)o data:(const LSPluginData *)data extensionPointID:(unsigned int)d context:(LSContext *)context;
- (BOOL)_getExtensionPointID:(unsigned int *)d context:(LSContext *)context error:(id *)error;
- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context;
- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error;
- (_LSApplicationExtensionRecordEnumerator)initWithExtensionPoint:(id)point options:(unint64_t)options;
- (_LSApplicationExtensionRecordEnumerator)initWithExtensionPointIdentifier:(id)identifier options:(unint64_t)options platform:(unsigned int)platform filter:(id)filter;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _LSApplicationExtensionRecordEnumerator

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  return self;
}

- (_LSApplicationExtensionRecordEnumerator)initWithExtensionPointIdentifier:(id)identifier options:(unint64_t)options platform:(unsigned int)platform filter:(id)filter
{
  v18.receiver = self;
  v18.super_class = _LSApplicationExtensionRecordEnumerator;
  v10 = [(_LSDBEnumerator *)&v18 _initWithContext:0];
  if (v10)
  {
    v11 = [identifier copy];
    extensionPointID = v10->_extensionPointID;
    v10->_extensionPointID = v11;

    v10->_options = options;
    v13 = [filter copy];
    filterBlock = v10->_filterBlock;
    v10->_filterBlock = v13;

    v10->_platform = platform;
    if (filter)
    {
      v15 = _LSLazyPropertyListGetSharedEmptyPropertyList();
      propertyList = v10->_propertyList;
      v10->_propertyList = v15;
    }
  }

  return v10;
}

- (_LSApplicationExtensionRecordEnumerator)initWithExtensionPoint:(id)point options:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = _LSApplicationExtensionRecordEnumerator;
  v6 = [(_LSDBEnumerator *)&v10 _initWithContext:0];
  if (v6)
  {
    identifier = [point identifier];
    objc_storeStrong(&v6->_extensionPointID, identifier);
    v6->_options = options;
    filterBlock = v6->_filterBlock;
    v6->_filterBlock = 0;

    v6->_platform = [point platform];
    objc_storeStrong(&v6->_extensionPointRecord, point);
  }

  return v6;
}

- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error
{
  v21 = 0;
  v6 = [(_LSApplicationExtensionRecordEnumerator *)self _getExtensionPointID:&v21 context:context error:error];
  if (v6)
  {
    v7 = (LOBYTE(self->_options) >> 4) & 1;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69___LSApplicationExtensionRecordEnumerator__prepareWithContext_error___block_invoke;
    v18[3] = &unk_1E6A1D698;
    v19 = v21;
    v18[4] = self;
    v18[5] = context;
    v20 = v7;
    v8 = MEMORY[0x1865D71B0](v18);
    [(_LSDatabase *)context->db store];
    [(_LSDatabase *)context->db schema];
    v9 = v8;
    _CSStringBindingEnumerateAllBindings();
    v10 = _LSEnumeratorLog;
    if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
    {
      [(_LSApplicationExtensionRecordEnumerator *)self _prepareWithContext:v10 error:v11, v12, v13, v14, v15, v16];
    }
  }

  return v6;
}

- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context
{
  begin = self->_plugins.__begin_;
  v7 = self->_plugins.__end_ - begin;
  if (v7 > index)
  {
    v11 = begin[index];
    v12 = _LSGetPlugin(context->db, begin[index]);
    if (v12)
    {
      v13 = v12;
      v14 = (self->_options >> 60) & 2 | (self->_options >> 63);
      db = context->db;
      v21 = 0;
      IsValid = _LSPluginIsValid(db, v11, v13, 0, v14, &v21);
      v17 = v21;
      if (IsValid)
      {
        if (self->_extensionPointRecord)
        {
          v18 = [[LSApplicationExtensionRecord alloc] _initWithContext:context pluginID:v11 pluginData:v13 extensionPointRecord:self->_extensionPointRecord error:0];
        }

        else
        {
          v18 = [[LSApplicationExtensionRecord alloc] _initWithContext:context pluginID:v11 pluginData:v13 error:0];
        }

        v19 = *object;
        *object = v18;
      }

      else if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
      {
        [_LSApplicationExtensionRecordEnumerator _getObject:atIndex:context:];
      }
    }
  }

  return v7 > index;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = _LSApplicationExtensionRecordEnumerator;
  v5 = [(_LSDBEnumerator *)&v13 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_extensionPointID copyWithZone:zone];
    extensionPointID = v5->_extensionPointID;
    v5->_extensionPointID = v6;

    v5->_options = self->_options;
    v8 = [self->_filterBlock copy];
    filterBlock = v5->_filterBlock;
    v5->_filterBlock = v8;

    v10 = [(LSPropertyList *)self->_propertyList copyWithZone:zone];
    propertyList = v5->_propertyList;
    v5->_propertyList = v10;

    if (v5 != self)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&v5->_plugins.__begin_, self->_plugins.__begin_, self->_plugins.__end_, self->_plugins.__end_ - self->_plugins.__begin_);
    }

    objc_storeStrong(&v5->_extensionPointRecord, self->_extensionPointRecord);
  }

  return v5;
}

- (BOOL)_getExtensionPointID:(unsigned int *)d context:(LSContext *)context error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  extensionPointID = self->_extensionPointID;
  if (!extensionPointID)
  {
    goto LABEL_5;
  }

  StringForCFString = _LSDatabaseGetStringForCFString(context->db, extensionPointID, 0);
  if (!StringForCFString)
  {
    v9 = _LSEnumeratorLog;
    StringForCFString = os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEFAULT);
    if (StringForCFString)
    {
      v10 = self->_extensionPointID;
      v13 = 138477827;
      v14 = v10;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Could not find extension point %{private}@ in database; will yield nothing", &v13, 0xCu);
LABEL_5:
      StringForCFString = 0;
    }
  }

  if (d)
  {
    *d = StringForCFString;
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_evaluatePluginNoIO:(unsigned int)o data:(const LSPluginData *)data extensionPointID:(unsigned int)d context:(LSContext *)context
{
  v36 = *MEMORY[0x1E69E9840];
  if (d && data->var4 != d)
  {
    v17 = _LSEnumeratorLog;
    v12 = os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG);
    if (!v12)
    {
      goto LABEL_31;
    }

    var4 = data->var4;
    *buf = 134218496;
    *&buf[4] = o;
    v33 = 2048;
    *v34 = d;
    *&v34[8] = 2048;
    v35 = var4;
    v19 = "Skipping plugin %llx during enumeration because it is on the wrong extension point (want %llx, had %llx)";
    v20 = v17;
    v21 = 32;
    goto LABEL_20;
  }

  options = self->_options;
  if ((options & 1) == 0 || (*&data->var0.flags & 1) == 0)
  {
    platform = self->_platform;
    if (!platform || data->var0.platform == platform)
    {
      if ((options & 0x4000000000000000) == 0)
      {
        v14 = _LSBundleGet(context->db, data->var8);
        if (v14)
        {
          if ((*(v14 + 191) & 0x10) != 0)
          {
            v31 = 0;
            *buf = 0;
            _LSExtensionPointFindWithStringID(context->db, data->var4, data->var0.platform, 0, &v31, buf);
            if (*buf)
            {
              v15 = *(*buf + 68);
              v16 = os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG);
              if ((v15 & 1) == 0)
              {
                if (v16)
                {
                  [_LSApplicationExtensionRecordEnumerator(Private) _evaluatePluginNoIO:data:extensionPointID:context:];
                }

                goto LABEL_30;
              }

              if (v16)
              {
                [_LSApplicationExtensionRecordEnumerator(Private) _evaluatePluginNoIO:data:extensionPointID:context:];
              }
            }
          }
        }
      }

      if (self->_filterBlock)
      {
        v25 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:data->var0.infoDictionary];
        v26 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:_LSPluginGetSDKDictionaryDataUnit(context->db, o, data)];
        v27 = [[_LSPlugInPropertyList alloc] initWithInfoPlist:v25 SDKPlist:v26];
        objc_storeStrong(&self->_propertyList, v27);
        propertyList = self->_propertyList;
        if (((*(self->_filterBlock + 2))() & 1) == 0)
        {
          if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
          {
            [_LSApplicationExtensionRecordEnumerator(Private) _evaluatePluginNoIO:data:extensionPointID:context:];
          }

          goto LABEL_30;
        }
      }

      LOBYTE(v12) = 1;
      goto LABEL_31;
    }

    v22 = _LSEnumeratorLog;
    v12 = os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG);
    if (!v12)
    {
      goto LABEL_31;
    }

    v23 = data->var0.platform;
    v24 = self->_platform;
    *buf = 134218496;
    *&buf[4] = o;
    v33 = 1024;
    *v34 = v23;
    *&v34[4] = 1024;
    *&v34[6] = v24;
    v19 = "Skipping plugin %llx during enumeration because it is the wrong platform (%x, want %x)";
    v20 = v22;
    v21 = 24;
LABEL_20:
    _os_log_debug_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
    goto LABEL_30;
  }

  v12 = os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    [_LSApplicationExtensionRecordEnumerator(Private) _evaluatePluginNoIO:data:extensionPointID:context:];
LABEL_30:
    LOBYTE(v12) = 0;
  }

LABEL_31:
  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_prepareWithContext:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = ((*(a1 + 144) - *(a1 + 136)) >> 2) >> 32;
  OUTLINED_FUNCTION_1(&dword_18162D000, a2, a3, "Will enumerate %llu candidate plugins", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_getObject:atIndex:context:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEBUG, "Skipping plugin %llx during enumeration because it is invalid: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end