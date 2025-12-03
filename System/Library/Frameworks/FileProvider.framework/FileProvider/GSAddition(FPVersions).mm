@interface GSAddition(FPVersions)
- (BOOL)fp_markResolvedWithError:()FPVersions;
- (id)fp_etag;
- (id)fp_lastEditorDeviceName;
- (id)fp_lastEditorNameComponents;
@end

@implementation GSAddition(FPVersions)

- (BOOL)fp_markResolvedWithError:()FPVersions
{
  storage = [self storage];
  documentURL = [storage documentURL];
  FPPrecheckTCCReadAccess(documentURL);

  [self markSavedConflictAsResolved:1 error:a3];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20;
  v17 = __Block_byref_object_dispose__20;
  v18 = 0;
  v7 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  storage2 = [self storage];
  documentURL2 = [storage2 documentURL];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__GSAddition_FPVersions__fp_markResolvedWithError___block_invoke;
  v12[3] = &unk_1E793B278;
  v12[4] = &v13;
  [v7 resolveConflictAtURL:documentURL2 completionHandler:v12];

  if (a3)
  {
    *a3 = v14[5];
  }

  v10 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v10;
}

- (id)fp_lastEditorDeviceName
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:fpVersionLastEditorDeviceNameKey];

  return v2;
}

- (id)fp_lastEditorNameComponents
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:fpVersionLastEditorNameComponentsKey];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = v2;
    v5 = [[v3 alloc] initForReadingFromData:v4 error:0];

    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fp_etag
{
  name = [self name];
  v2 = [FPFileVersion parseEtag:name];

  return v2;
}

@end