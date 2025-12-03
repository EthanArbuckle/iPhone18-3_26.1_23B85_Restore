@interface _SFRequestDesktopSiteQuirksSnapshot
- (_SFRequestDesktopSiteQuirksSnapshot)initWithSnapshotData:(id)data error:(id *)error;
- (id)snapshotData;
@end

@implementation _SFRequestDesktopSiteQuirksSnapshot

- (_SFRequestDesktopSiteQuirksSnapshot)initWithSnapshotData:(id)data error:(id *)error
{
  dataCopy = data;
  v27.receiver = self;
  v27.super_class = _SFRequestDesktopSiteQuirksSnapshot;
  v7 = [(_SFRequestDesktopSiteQuirksSnapshot *)&v27 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:dataCopy options:0];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 safari_dictionaryForKey:@"RequestDesktopSiteQuirks"];
      v11 = v10;
      if (v10)
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v26 = 1;
        v17 = 0;
        v18 = &v17;
        v19 = 0x3032000000;
        v20 = __Block_byref_object_copy__5;
        v21 = __Block_byref_object_dispose__5;
        v22 = 0;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __66___SFRequestDesktopSiteQuirksSnapshot_initWithSnapshotData_error___block_invoke;
        v16[3] = &unk_1E84944D8;
        v16[4] = &v17;
        v16[5] = &v23;
        [v10 enumerateKeysAndObjectsUsingBlock:v16];
        if (v24[3])
        {
          objc_storeStrong(&v7->_requestDesktopSiteQuirks, v11);
          v12 = v7;
        }

        else
        {
          v12 = 0;
          if (error)
          {
            *error = v18[5];
          }
        }

        _Block_object_dispose(&v17, 8);

        _Block_object_dispose(&v23, 8);
        goto LABEL_16;
      }

      v14 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_SFRequestDesktopSiteQuirksSnapshot initWithSnapshotData:v14 error:?];
        if (error)
        {
          goto LABEL_12;
        }
      }

      else if (error)
      {
LABEL_12:
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
        *error = v12 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v12 = 0;
      goto LABEL_16;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_SFRequestDesktopSiteQuirksSnapshot initWithSnapshotData:v13 error:?];
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      *error = v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v12 = 0;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)snapshotData
{
  v7[2] = *MEMORY[0x1E69E9840];
  requestDesktopSiteQuirks = self->_requestDesktopSiteQuirks;
  v6[0] = @"RequestDesktopSiteQuirks";
  v6[1] = @"Version";
  v7[0] = requestDesktopSiteQuirks;
  v7[1] = &unk_1F50232F0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];

  return v4;
}

@end