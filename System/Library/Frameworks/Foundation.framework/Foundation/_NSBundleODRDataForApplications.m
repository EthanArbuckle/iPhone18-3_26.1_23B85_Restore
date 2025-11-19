@interface _NSBundleODRDataForApplications
+ (_NSBundleODRDataForApplications)dataForBundle:(int)a3 createIfRequired:;
- (BOOL)assetPacksBecameAvailable:(id)a3 error:(id *)a4;
- (BOOL)assetPacksBecameUnavailable:(id)a3 error:(id *)a4;
- (_NSBundleODRDataForApplications)initWithBundle:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation _NSBundleODRDataForApplications

+ (_NSBundleODRDataForApplications)dataForBundle:(int)a3 createIfRequired:
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_1_0);
  v5 = qword_1ED439AA8;
  if (!qword_1ED439AA8)
  {
    if (!a3)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    qword_1ED439AA8 = v5;
  }

  v6 = [(NSMapTable *)v5 objectForKey:a2];
  v7 = v6;
  if (a3 && !v6)
  {
    v7 = [[_NSBundleODRDataForApplications alloc] initWithBundle:a2];
    [qword_1ED439AA8 setObject:v7 forKey:a2];
    v8 = v7;
  }

LABEL_8:
  os_unfair_lock_unlock(&_MergedGlobals_1_0);
  return v7;
}

- (_NSBundleODRDataForApplications)initWithBundle:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _NSBundleODRDataForApplications;
  v4 = [(_NSBundleODRDataCommon *)&v17 initWithBundle:?];
  v5 = dispatch_group_create();
  *(v4 + 8) = v5;
  dispatch_group_enter(v5);
  dispatch_group_enter(*(v4 + 8));
  v6 = +[NSBundleResourceRequest _connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50___NSBundleODRDataForApplications_initWithBundle___block_invoke;
  v16[3] = &unk_1E69F3A28;
  v16[4] = v4;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v16];
  v8 = [a3 bundleURL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50___NSBundleODRDataForApplications_initWithBundle___block_invoke_192;
  v15[3] = &unk_1E69F60E0;
  v15[4] = v4;
  [v7 tagStateInBundle:v8 completionHandler:v15];
  v9 = +[NSBundleResourceRequest _connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50___NSBundleODRDataForApplications_initWithBundle___block_invoke_194;
  v14[3] = &unk_1E69F3A28;
  v14[4] = v4;
  v10 = [v9 remoteObjectProxyWithErrorHandler:v14];
  v11 = [a3 bundleURL];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50___NSBundleODRDataForApplications_initWithBundle___block_invoke_195;
  v13[3] = &unk_1E69F6130;
  v13[4] = v4;
  v13[5] = a3;
  [v10 beginWithBundleURL:v11 completionHandler:v13];
  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  extensionConnections = self->_extensionConnections;
  if (extensionConnections)
  {
    [(NSMutableSet *)extensionConnections enumerateObjectsUsingBlock:&__block_literal_global_48];
  }

  dispatch_release(self->_initialStateGroup);
  v4.receiver = self;
  v4.super_class = _NSBundleODRDataForApplications;
  [(_NSBundleODRDataCommon *)&v4 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSBundleODRDataForApplications;
  return [NSString stringWithFormat:@"%@\n\tTags State: %@\n\tAsset Packs to URL: %@", [(_NSBundleODRDataForApplications *)&v3 description], self->_tagToTagState, self->super._assetPackToURL];
}

- (BOOL)assetPacksBecameAvailable:(id)a3 error:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSBundleODRDataForApplications;
  v6 = [(_NSBundleODRDataCommon *)&v10 assetPacksBecameAvailable:a3 error:a4];
  if (v6)
  {
    [(NSLock *)self->super._lock lock];
    extensionConnections = self->_extensionConnections;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67___NSBundleODRDataForApplications_assetPacksBecameAvailable_error___block_invoke;
    v9[3] = &unk_1E69F6108;
    v9[4] = a3;
    [(NSMutableSet *)extensionConnections enumerateObjectsUsingBlock:v9];
    [(NSLock *)self->super._lock unlock];
  }

  return v6;
}

- (BOOL)assetPacksBecameUnavailable:(id)a3 error:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSBundleODRDataForApplications;
  v6 = [(_NSBundleODRDataCommon *)&v10 assetPacksBecameUnavailable:a3 error:a4];
  if (v6)
  {
    [(NSLock *)self->super._lock lock];
    extensionConnections = self->_extensionConnections;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69___NSBundleODRDataForApplications_assetPacksBecameUnavailable_error___block_invoke;
    v9[3] = &unk_1E69F6108;
    v9[4] = a3;
    [(NSMutableSet *)extensionConnections enumerateObjectsUsingBlock:v9];
    [(NSLock *)self->super._lock unlock];
  }

  return v6;
}

@end