@interface NSURL(FPConflictWinner)
- (id)fp_addTestConflictLoserFromItemAtURL:()FPConflictWinner lastEditorDeviceName:lastEditorUserName:error:;
- (id)fp_lastEditorDeviceName;
- (id)fp_lastEditorNameComponents;
@end

@implementation NSURL(FPConflictWinner)

- (id)fp_lastEditorDeviceName
{
  FPPrecheckTCCReadAccess(self);
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = 0;
  v2 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__NSURL_FPConflictWinner__fp_lastEditorDeviceName__block_invoke;
  v5[3] = &unk_1E793D688;
  v5[4] = &v6;
  [v2 itemForURL:self options:0 completionHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)fp_lastEditorNameComponents
{
  FPPrecheckTCCReadAccess(self);
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = 0;
  v2 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__NSURL_FPConflictWinner__fp_lastEditorNameComponents__block_invoke;
  v5[3] = &unk_1E793D688;
  v5[4] = &v6;
  [v2 itemForURL:self options:0 completionHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)fp_addTestConflictLoserFromItemAtURL:()FPConflictWinner lastEditorDeviceName:lastEditorUserName:error:
{
  v59[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v34 = a4;
  v35 = a5;
  manager = [MEMORY[0x1E69A07C0] manager];
  v12 = [manager permanentStorageForItemAtURL:self allocateIfNone:1 error:a6];

  v13 = objc_alloc(MEMORY[0x1E696ADF0]);
  v14 = [NSFileProviderItemVersion alloc];
  data = [MEMORY[0x1E695DEF0] data];
  data2 = [MEMORY[0x1E695DEF0] data];
  v37 = [(NSFileProviderItemVersion *)v14 initWithContentVersion:data metadataVersion:data2];

  v17 = [MEMORY[0x1E695DF00] now];
  v18 = [FPConflictLoser alloc];
  lastPathComponent = [v10 lastPathComponent];
  v33 = [(FPFileVersion *)v18 initWithVersion:v37 displayName:lastPathComponent originalURL:v10 physicalURL:0 identifier:0 modificationDate:v17 lastEditorNameComponents:v13 size:0];

  v20 = MEMORY[0x1E695E118];
  v57 = v17;
  v58[0] = @"isFPFS";
  v58[1] = @"NSDocumentInfo";
  v59[0] = MEMORY[0x1E695E118];
  v56 = @"modificationDate";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v59[1] = v21;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];

  v54[0] = *MEMORY[0x1E69A0768];
  lastPathComponent2 = [v10 lastPathComponent];
  v23 = *MEMORY[0x1E69A0760];
  v55[0] = lastPathComponent2;
  v55[1] = v20;
  v24 = *MEMORY[0x1E69A0790];
  v54[1] = v23;
  v54[2] = v24;
  v54[3] = *MEMORY[0x1E69A0770];
  v25 = *MEMORY[0x1E69A07A8];
  v55[2] = v36;
  v55[3] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:4];

  v27 = dispatch_group_create();
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__20;
  v52 = __Block_byref_object_dispose__20;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__20;
  v46 = __Block_byref_object_dispose__20;
  v47 = 0;
  v28 = [v12 prepareAdditionCreationWithItemAtURL:v10 byMoving:1 creationInfo:v26 error:a6];
  dispatch_group_enter(v27);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __110__NSURL_FPConflictWinner__fp_addTestConflictLoserFromItemAtURL_lastEditorDeviceName_lastEditorUserName_error___block_invoke;
  v38[3] = &unk_1E793D6B0;
  v40 = &v42;
  v41 = &v48;
  v29 = v27;
  v39 = v29;
  [v12 createAdditionStagedAtURL:v28 creationInfo:v26 completionHandler:v38];
  dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
  if (a6)
  {
    *a6 = v43[5];
  }

  v30 = v49[5];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

@end