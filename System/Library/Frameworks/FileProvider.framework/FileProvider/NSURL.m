@interface NSURL
@end

@implementation NSURL

uint64_t __43__NSURL_FPAdditions__fp_matchesEDSLocation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) count];
    if (v4 >= [v3 count])
    {
      if (![v3 count])
      {
LABEL_9:
        v5 = 1;
        goto LABEL_10;
      }

      v6 = 0;
      while (1)
      {
        v7 = [v3 objectAtIndexedSubscript:v6];
        v8 = [*(a1 + 32) objectAtIndexedSubscript:v6];
        if (([v7 isEqualToString:@"<uuid>"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", v8) & 1) == 0)
        {
          break;
        }

        if (++v6 >= [v3 count])
        {
          goto LABEL_9;
        }
      }
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

uint64_t __42__NSURL_FPFSHelpers__fp_defaultMoverBlock__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696AC08];
  v7 = a3;
  v8 = a2;
  v9 = [v6 defaultManager];
  v10 = [v9 moveItemAtURL:v8 toURL:v7 error:a4];

  return v10;
}

void __41__NSURL_FPFSHelpers__getMaxChildrenCount__block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  v0 = [v1 integerForKey:@"FPMaxChildrenCountForScanOverride"];
  if (v0)
  {
    getMaxChildrenCount_maxChildrenCount = v0;
  }
}

void __133__NSURL_FPFSHelpers__fp_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("fp move work queue", v2);
  v1 = fp_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler__workQueue;
  fp_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler__workQueue = v0;
}

void __140__NSURL_FPFSHelpers__fp_queued_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v28 = 0;
    v7 = *MEMORY[0x1E695DA98];
    v27 = 0;
    v8 = [v5 getResourceValue:&v28 forKey:v7 error:&v27];
    v9 = v28;
    v10 = v27;
    if ((v8 & 1) == 0)
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __140__NSURL_FPFSHelpers__fp_queued_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke_cold_1();
      }
    }

    if (v9 && ([v9 isEqual:*(a1 + 32)] & 1) == 0)
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

LABEL_22:
      goto LABEL_23;
    }
  }

  if (*(a1 + 80) == 1)
  {
    [*(a1 + 40) itemAtURL:v5 willMoveToURL:v6];
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *(*(a1 + 56) + 8);
  obj = *(v14 + 40);
  v15 = (*(*(a1 + 48) + 16))();
  objc_storeStrong((v14 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v15;
  v16 = [*(*(*(a1 + 56) + 8) + 40) domain];
  if ([v16 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v17 = [*(*(*(a1 + 56) + 8) + 40) code];

    if (v17 != 516)
    {
      goto LABEL_15;
    }

    v18 = [MEMORY[0x1E696ABC0] fp_errorForCollisionWithURL:v6];
    v19 = *(*(a1 + 56) + 8);
    v16 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

LABEL_15:
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __140__NSURL_FPFSHelpers__fp_queued_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke_cold_2();
    }

    if (*(a1 + 80) == 1)
    {
      [*(a1 + 40) itemAtURL:v5 didMoveToURL:v6];
    }

    v21 = *(*(a1 + 72) + 8);
    v22 = v6;
    v10 = *(v21 + 40);
    *(v21 + 40) = v22;
    goto LABEL_22;
  }

LABEL_23:
}

void __90__NSURL_FPFSHelpers__fp_importUnderFolder_allowCoordination_usingBlock_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v5)
  {
    [v6 fp_hideExtension:1];
  }

  (*(*(a1 + 32) + 16))();
}

void __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_2;
  v5[3] = &unk_1E793A3F8;
  v7 = *(a1 + 56);
  v6 = *(a1 + 40);
  [v2 coordinateWritingItemAtURL:a2 options:1 error:&v8 byAccessor:v5];
  v3 = v8;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_cold_1();
    }
  }
}

void __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  memset(&v8, 0, sizeof(v8));
  if (fstat(*(a1 + 48), &v8) < 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_2_cold_3(v3);
    }
  }

  else if (fpfs_is_busy_date(v8.st_birthtimespec.tv_sec))
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = 0;
    [v4 removeItemAtURL:v3 error:&v7];
    v5 = v7;

    if (v5)
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_2_cold_2();
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_2_cold_1(a1);
    }
  }
}

void __54__NSURL_FPFSHelpers__fp_coordinatedDeleteWithHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1[4])
  {
LABEL_9:
    if (*(*(a1[6] + 8) + 40))
    {
      v13 = 0;
    }

    else
    {
      v13 = v4;
    }

    (*(a1[5] + 16))(a1[5], v13);
    goto LABEL_16;
  }

  v16 = 0;
  v5 = *MEMORY[0x1E695DA98];
  v15 = 0;
  v6 = [v3 getResourceValue:&v16 forKey:v5 error:&v15];
  v7 = v16;
  v8 = v15;
  if (v6)
  {
    if (v7 && ([v7 isEqual:a1[4]] & 1) == 0)
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __54__NSURL_FPFSHelpers__fp_coordinatedDeleteWithHandler___block_invoke_cold_2();
      }

      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    goto LABEL_9;
  }

  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __140__NSURL_FPFSHelpers__fp_queued_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke_cold_1();
  }

LABEL_16:
}

void __70__NSURL_FPFSHelpers__fp_deleteAllowingCoordination_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = 0;
    v8 = [v7 removeItemAtURL:v5 error:&v24];
    v9 = v24;
    v10 = v9;
    if (v8)
    {
LABEL_18:

      goto LABEL_19;
    }

    v11 = [v9 domain];
    v12 = *MEMORY[0x1E696A250];
    if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v13 = [v10 code];

      if (v13 == 4)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v14 = [v10 domain];
    if ([v14 isEqualToString:v12])
    {
      v15 = [v10 code];

      if (v15 == 513)
      {
        v16 = fp_current_or_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __70__NSURL_FPFSHelpers__fp_deleteAllowingCoordination_completionHandler___block_invoke_cold_1();
        }

        v17 = objc_opt_new();
        v18 = objc_opt_new();
        [v17 setDelegate:v18];
        v23 = v10;
        v19 = [v17 removeItemAtURL:v5 error:&v23];
        v20 = v23;
        v21 = v23;

        if ((v19 & 1) == 0)
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), v20);
        }

        v7 = v17;
        goto LABEL_17;
      }
    }

    else
    {
    }

LABEL_16:
    v22 = *(*(a1 + 32) + 8);
    v21 = v10;
    v18 = *(v22 + 40);
    *(v22 + 40) = v21;
LABEL_17:

    v10 = v21;
    goto LABEL_18;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_19:
}

uint64_t __61__NSURL_FPAdditions__fp_personaSharedDirectoryPathForUserID___block_invoke()
{
  fp_personaSharedDirectoryPathForUserID__pathByPersonaID = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __59__NSURL_FPAdditions__fp_secureTempDirectoryIgnoringPersona__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFF8];
  v1 = NSTemporaryDirectory();
  v2 = [v0 fileURLWithPath:v1];
  v3 = fp_secureTempDirectoryIgnoringPersona_sandboxedTemporaryDirectory;
  fp_secureTempDirectoryIgnoringPersona_sandboxedTemporaryDirectory = v2;

  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [fp_secureTempDirectoryIgnoringPersona_sandboxedTemporaryDirectory path];
    v6 = [v5 fp_prettyPath];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_INFO, "[INFO] Sandboxed temporary directory is %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __48__NSURL_FPAdditions__fp_makeWritableOnFD_error___block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = sysconf(71);
  if (v0 == -1)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __48__NSURL_FPAdditions__fp_makeWritableOnFD_error___block_invoke_cold_2(v5);
    }
  }

  else
  {
    v1 = v0;
    v2 = &v7 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v2, v0);
    memset(&v9, 0, sizeof(v9));
    v8 = 0;
    if (getpwnam_r("mobile", &v9, v2, v1, &v8))
    {
      v3 = 1;
    }

    else
    {
      v3 = v8 == 0;
    }

    if (v3)
    {
      v4 = fp_current_or_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __48__NSURL_FPAdditions__fp_makeWritableOnFD_error___block_invoke_cold_1();
      }
    }

    else
    {
      fp_makeWritableOnFD_error__mobile_uid = v9.pw_uid;
      fp_makeWritableOnFD_error__mobile_gid = v9.pw_gid;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __61__NSURL_FPAdditions__fp_additionalContainerPathsForBookmarks__block_invoke()
{
  v0 = fp_additionalContainerPathsForBookmarks_additionalContainerPathsForBookmarks;
  fp_additionalContainerPathsForBookmarks_additionalContainerPathsForBookmarks = &unk_1F1FC9B90;
}

void __129__NSURL_CopyFile__fp_copyToURL_queue_precomputedItemSize_replacePlaceholder_shouldCopyAppleDouble_ignoreVFSSkipMtime_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __129__NSURL_CopyFile__fp_copyToURL_queue_precomputedItemSize_replacePlaceholder_shouldCopyAppleDouble_ignoreVFSSkipMtime_completion___block_invoke_cold_1(a1, v3);
  }

  if ((*(a1 + 196) & 0x20) == 0 && ((v4 = *(*(a1 + 72) + 8), v5 = *(v4 + 24), (*(a1 + 84) & 0xF000) == 0x8000) ? (v6 = (v5 & 0x1000000) == 0) : (v6 = 0), v6))
  {
    if ((v5 & 8) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:*(a1 + 224) object:*(a1 + 40) file:@"NSURL+CopyFile.m" lineNumber:327 description:@"flags must include COPYFILE_DATA"];

      v4 = *(*(a1 + 72) + 8);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 ^ 8;
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 24);
    if ((v10 & 0x40000) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 224) object:*(a1 + 40) file:@"NSURL+CopyFile.m" lineNumber:329 description:@"flags must include COPYFILE_NOFOLLOW_SRC"];

      v9 = *(*(a1 + 72) + 8);
      v10 = *(v9 + 24);
    }

    *(v9 + 24) = v10 ^ 0x40000;
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 24);
    if ((v13 & 0x20000) != 0)
    {
      *(v12 + 24) = v13 & 0xFFFDFFFF;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v14 = [*(a1 + 40) path];
  v15 = [*(a1 + 48) path];
  if (*(a1 + 241) == 1)
  {
    v16 = fpfs_ignore_thread_skip_mtime_iopolicy();
    if (!v7)
    {
LABEL_18:
      v17 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v16 = 0;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v18 = +[FPThreadedCopier sharedCopier];
  v19 = *(a1 + 242);
  v20 = *(a1 + 56);
  v29 = 0;
  v21 = [v18 copy:v14 to:v15 overwriteDestination:v19 progress:v20 error:&v29];
  v17 = v29;

  if ((v21 & 1) == 0)
  {
    v24 = *(a1 + 64);
    [*(a1 + 32) rootWasCopied];
    v23 = *(v24 + 16);
    goto LABEL_26;
  }

LABEL_21:
  if (copyfile([v14 fileSystemRepresentation], objc_msgSend(v15, "fileSystemRepresentation"), *(a1 + 232), *(*(*(a1 + 72) + 8) + 24)))
  {
    if ([*(a1 + 32) copyError])
    {
      v22 = [*(a1 + 32) copyError];
    }

    else
    {
      v22 = *__error();
    }

    v25 = v22;
    v26 = *(a1 + 64);
    v27 = [*(a1 + 32) rootWasCopied];
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v25 userInfo:0];
    (*(v26 + 16))(v26, v27, v28);

    goto LABEL_29;
  }

  [*(a1 + 48) fp_makeWritableAndRemoveNonExportableAttributes];
  v23 = *(*(a1 + 64) + 16);
LABEL_26:
  v23();
LABEL_29:
  copyfile_state_free(*(a1 + 232));
  if (*(a1 + 241) == 1)
  {
    fpfs_restore_thread_skip_mtime_iopolicy(v16);
  }
}

void __88__NSURL_CopyFile__fp_copyToTempFolderWithFilename_queue_precomputedItemSize_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[6];
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = a1[6];

    v4(v5, 0, 0, a3);
  }

  else
  {
    v6 = a1[4];
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1[5] isDirectory:1];
    (*(v3 + 16))(v3, v6, v7, 0);
  }
}

uint64_t __61__NSURL_CopyFile__fp_createEmptyTempFileWithName_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a2;
  v6 = [v4 data];
  v7 = [v6 writeToURL:v5 options:0 error:a3];

  return v7;
}

uint64_t __64__NSURL_CopyFile__fp_createEmptyTempPackageWithName_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AC38];
  v5 = a2;
  v6 = [v4 alloc];
  v7 = [v6 initDirectoryWithFileWrappers:MEMORY[0x1E695E0F8]];
  v8 = [v7 writeToURL:v5 options:0 originalContentsURL:0 error:a3];

  return v8;
}

void __50__NSURL_FPConflictWinner__fp_lastEditorDeviceName__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v7 = [a2 itemVersion];
    v4 = [v7 lastEditorDeviceName];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

uint64_t __54__NSURL_FPConflictWinner__fp_lastEditorNameComponents__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v11 = v5;
    v5 = [v5 isShared];
    v6 = v11;
    if (v5)
    {
      v7 = [v11 mostRecentEditorNameComponents];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = v11;
    }
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __110__NSURL_FPConflictWinner__fp_addTestConflictLoserFromItemAtURL_lastEditorDeviceName_lastEditorUserName_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __140__NSURL_FPFSHelpers__fp_queued_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_13() fp_prettyDescription];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __140__NSURL_FPFSHelpers__fp_queued_moveUnderFolder_withNewName_coordinationOptions_allowBounce_allowCoordination_moveHandler_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  [v1 fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_13() fp_shortDescription];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) absoluteString];
  v2 = [v1 fp_obfuscatedPath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Failed to remove file at url: %@ error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __92__NSURL_FPFSHelpers__fp_deleteStaleBusyFileWithFileDescriptor_coordinatorPurposeIdentifier___block_invoke_2_cold_3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 absoluteString];
  v2 = [v1 fp_obfuscatedPath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __54__NSURL_FPFSHelpers__fp_coordinatedDeleteWithHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_13() fp_prettyDescription];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __70__NSURL_FPFSHelpers__fp_deleteAllowingCoordination_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__NSURL_FPAdditions__fp_makeWritableOnFD_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_12_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __48__NSURL_FPAdditions__fp_makeWritableOnFD_error___block_invoke_cold_2(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_1AAAE1000, a1, OS_LOG_TYPE_FAULT, "[CRIT] cannot fetch _SC_GETPW_R_SIZE_MAX: %{errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void __129__NSURL_CopyFile__fp_copyToURL_queue_precomputedItemSize_replacePlaceholder_shouldCopyAppleDouble_ignoreVFSSkipMtime_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 40) path];
  v5 = [*(a1 + 48) path];
  v6 = *(a1 + 240);
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 1024;
  v13 = v6;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] copyfile: %@ -> %@ AD-copy: %d", &v8, 0x1Cu);

  v7 = *MEMORY[0x1E69E9840];
}

@end