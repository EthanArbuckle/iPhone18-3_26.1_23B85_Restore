@interface _NSBundleODRDataCommon
- (BOOL)assetPacksBecameAvailable:(id)available error:(id *)error;
- (BOOL)assetPacksBecameUnavailable:(id)unavailable error:(id *)error;
- (_NSBundleODRDataCommon)initWithBundle:(id)bundle;
- (void)dealloc;
@end

@implementation _NSBundleODRDataCommon

- (_NSBundleODRDataCommon)initWithBundle:(id)bundle
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _NSBundleODRDataCommon;
  v4 = [(_NSBundleODRDataCommon *)&v6 init];
  v4->_bundle = bundle;
  v4->_assetPackToURL = objc_opt_new();
  v4->_lock = objc_opt_new();
  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  if (self->_sandboxToken >= 1)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = _NSBundleODRDataCommon;
  [(_NSBundleODRDataCommon *)&v3 dealloc];
}

- (BOOL)assetPacksBecameAvailable:(id)available error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  [(NSLock *)self->_lock lock];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58___NSBundleODRDataCommon_assetPacksBecameAvailable_error___block_invoke;
  v11[3] = &unk_1E69F60B8;
  v11[5] = &v18;
  v11[6] = &v12;
  v11[4] = self;
  [available enumerateKeysAndObjectsUsingBlock:v11];
  [(NSLock *)self->_lock unlock];
  v7 = v13;
  if (error)
  {
    if ((v19[3] & 1) == 0)
    {
      v8 = v13[5];
      if (v8)
      {
        *error = v8;
        v7 = v13;
      }
    }
  }

  v9 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

- (BOOL)assetPacksBecameUnavailable:(id)unavailable error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  [(NSLock *)self->_lock lock];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60___NSBundleODRDataCommon_assetPacksBecameUnavailable_error___block_invoke;
  v11[3] = &unk_1E69F60B8;
  v11[5] = &v18;
  v11[6] = &v12;
  v11[4] = self;
  [unavailable enumerateKeysAndObjectsUsingBlock:v11];
  [(NSLock *)self->_lock unlock];
  v7 = v13;
  if (error)
  {
    if ((v19[3] & 1) == 0)
    {
      v8 = v13[5];
      if (v8)
      {
        *error = v8;
        v7 = v13;
      }
    }
  }

  v9 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

@end