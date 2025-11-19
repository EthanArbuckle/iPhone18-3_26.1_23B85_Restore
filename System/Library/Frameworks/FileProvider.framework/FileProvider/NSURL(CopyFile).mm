@interface NSURL(CopyFile)
+ (void)_fp_createInTempDirectoryWithName:()CopyFile creationBlock:completion:;
- (id)fp_copyToTempFolderWithFilename:()CopyFile queue:precomputedItemSize:completion:;
- (id)fp_copyToURL:()CopyFile queue:precomputedItemSize:replacePlaceholder:ignoreVFSSkipMtime:completion:;
- (id)fp_copyToURL:()CopyFile queue:precomputedItemSize:replacePlaceholder:shouldCopyAppleDouble:ignoreVFSSkipMtime:completion:;
- (uint64_t)fp_getSize:()CopyFile error:;
- (uint64_t)fp_volumeUsesAppleDouble:()CopyFile;
@end

@implementation NSURL(CopyFile)

- (uint64_t)fp_getSize:()CopyFile error:
{
  v7 = 0;
  v4 = [a1 getResourceValue:&v7 forKey:*MEMORY[0x1E695DB50] error:0];
  if (a3)
  {
    if (v4)
    {
      v5 = v7 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      *a3 = [v7 unsignedLongLongValue];
    }
  }

  return 1;
}

- (uint64_t)fp_volumeUsesAppleDouble:()CopyFile
{
  v3 = [a3 URLByDeletingLastPathComponent];
  v11 = 0;
  v4 = *MEMORY[0x1E695DEA0];
  v10 = 0;
  [v3 getResourceValue:&v11 forKey:v4 error:&v10];
  v5 = v11;
  v6 = v10;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(CopyFile) *)v3 fp_volumeUsesAppleDouble:v6, v7];
    }

    v8 = 0;
  }

  else if ([v5 isEqualToString:@"exfat"])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 isEqualToString:@"msdos"];
  }

  return v8;
}

- (id)fp_copyToURL:()CopyFile queue:precomputedItemSize:replacePlaceholder:shouldCopyAppleDouble:ignoreVFSSkipMtime:completion:
{
  v15 = a3;
  queue = a4;
  v16 = a9;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = -1;
  }

  v18 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:v17];
  memset(&v70, 0, sizeof(v70));
  v19 = [a1 path];
  v20 = lstat([v19 fileSystemRepresentation], &v70);

  if (!v20)
  {
    st_mode = v70.st_mode;
    v45 = a7;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v47 = a6;
    if (a6)
    {
      v22 = 268697614;
    }

    else
    {
      v22 = 268828686;
    }

    v69 = v22;
    memset(&v65, 0, sizeof(v65));
    memset(&v64, 0, sizeof(v64));
    v46 = v15;
    v23 = [v15 path];
    v24 = a1;
    v25 = [v23 stringByDeletingLastPathComponent];
    if (stat([v25 fileSystemRepresentation], &v65))
    {
    }

    else
    {
      v26 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
      v27 = [v26 path];
      v28 = [v27 stringByDeletingLastPathComponent];
      v29 = stat([v28 fileSystemRepresentation], &v64);

      if (!v29 && v70.st_dev == v65.st_dev && v70.st_dev == v64.st_dev)
      {
        *(v67 + 6) |= 0x1000000u;
      }
    }

    if ((st_mode & 0xF000) == 0x4000)
    {
      *(v67 + 6) |= 0x8000u;
      if (v47)
      {
        v30 = [v46 path];
        if ((rmdir([v30 fileSystemRepresentation]) & 0x80000000) == 0)
        {

LABEL_26:
          memset(&v63, 0, sizeof(v63));
          goto LABEL_27;
        }

        v35 = *__error();

        if (v35 == 2)
        {
          goto LABEL_26;
        }

        v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
        v16[2](v16, 0, v33);
LABEL_24:

        v34 = v18;
        _Block_object_dispose(&v66, 8);
        v15 = v46;
        goto LABEL_29;
      }

      memset(&v63, 0, sizeof(v63));
    }

    else
    {
      memset(&v63, 0, sizeof(v63));
      if (v47)
      {
        goto LABEL_27;
      }
    }

    v31 = [v46 path];
    v32 = stat([v31 fileSystemRepresentation], &v63);

    if (v32)
    {
LABEL_27:
      v36 = copyfile_state_alloc();
      copyfile_state_set(v36, 6u, copyfile_status_cb);
      v37 = objc_opt_new();
      [v37 setCopyError:0];
      [v37 setProgress:v18];
      v38 = objc_opt_new();
      [v37 setLastBytesCopiedByFile:v38];

      [v37 setShouldCopyAppleDouble:v45];
      copyfile_state_set(v36, 7u, v37);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __129__NSURL_CopyFile__fp_copyToURL_queue_precomputedItemSize_replacePlaceholder_shouldCopyAppleDouble_ignoreVFSSkipMtime_completion___block_invoke;
      block[3] = &unk_1E793CBA0;
      v51 = v37;
      v52 = v24;
      v15 = v46;
      v39 = v46;
      v60 = v45;
      v57 = v70;
      v53 = v39;
      v56 = &v66;
      v58 = v43;
      v61 = a8;
      v62 = v47;
      v54 = v18;
      v55 = v16;
      v59 = v36;
      v40 = v37;
      dispatch_async(queue, block);

      _Block_object_dispose(&v66, 8);
      goto LABEL_28;
    }

    v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:17 userInfo:0];
    v16[2](v16, 0, v33);
    goto LABEL_24;
  }

  v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  v16[2](v16, 0, v21);

LABEL_28:
  v41 = v18;
LABEL_29:

  return v18;
}

- (id)fp_copyToURL:()CopyFile queue:precomputedItemSize:replacePlaceholder:ignoreVFSSkipMtime:completion:
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if ([a1 fp_volumeUsesAppleDouble:v14])
  {
    v17 = 0;
  }

  else
  {
    v17 = [a1 fp_volumeUsesAppleDouble:a1] ^ 1;
  }

  v18 = [a1 fp_copyToURL:v14 queue:v15 precomputedItemSize:a5 replacePlaceholder:a6 shouldCopyAppleDouble:v17 ignoreVFSSkipMtime:a7 completion:v16];

  return v18;
}

- (id)fp_copyToTempFolderWithFilename:()CopyFile queue:precomputedItemSize:completion:
{
  v8 = a4;
  v9 = a6;
  v10 = MEMORY[0x1E696AC08];
  v11 = a3;
  v12 = [v10 defaultManager];
  v13 = [MEMORY[0x1E695DFF8] fp_insecureTempDirectory];
  v14 = [v13 path];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [v15 UUIDString];
  v17 = [v14 stringByAppendingPathComponent:v16];

  v18 = [v17 stringByAppendingPathComponent:v11];

  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18 isDirectory:0];
  v29 = 0;
  LOBYTE(v16) = [v12 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v29];
  v20 = v29;
  if (v16)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __88__NSURL_CopyFile__fp_copyToTempFolderWithFilename_queue_precomputedItemSize_completion___block_invoke;
    v25[3] = &unk_1E793CBC8;
    v28 = v9;
    v26 = v19;
    v27 = v17;
    v21 = [a1 fp_copyToURL:v26 queue:v8 precomputedItemSize:a5 replacePlaceholder:1 ignoreVFSSkipMtime:0 completion:v25];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0, v20);
    v21 = 0;
  }

  return v21;
}

+ (void)_fp_createInTempDirectoryWithName:()CopyFile creationBlock:completion:
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E696AC08];
  v10 = a3;
  v11 = [v9 defaultManager];
  v12 = [MEMORY[0x1E695DFF8] fp_insecureTempDirectory];
  v13 = [v12 path];
  v14 = [MEMORY[0x1E696AFB0] UUID];
  v15 = [v14 UUIDString];
  v16 = [v13 stringByAppendingPathComponent:v15];

  v17 = [v16 stringByAppendingPathComponent:v10];

  v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17 isDirectory:0];
  v25 = 0;
  LOBYTE(v14) = [v11 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v25];
  v19 = v25;
  v20 = v19;
  if (v14)
  {
    v24 = v19;
    v21 = v7[2](v7, v18, &v24);
    v22 = v24;

    if (v21)
    {
      v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16 isDirectory:1];
      v8[2](v8, v18, v23, 0);
    }

    else
    {
      (v8)[2](v8, 0, 0, v22);
    }

    v20 = v22;
  }

  else
  {
    (v8)[2](v8, 0, 0, v19);
  }
}

- (void)fp_volumeUsesAppleDouble:()CopyFile .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v6 = *__error();
  v8 = 138412802;
  v9 = a1;
  v10 = 2112;
  v11 = v5;
  v12 = 1024;
  v13 = v6;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] copyfile: statfs(%@) failed: %@ %{errno}d", &v8, 0x1Cu);

  v7 = *MEMORY[0x1E69E9840];
}

@end