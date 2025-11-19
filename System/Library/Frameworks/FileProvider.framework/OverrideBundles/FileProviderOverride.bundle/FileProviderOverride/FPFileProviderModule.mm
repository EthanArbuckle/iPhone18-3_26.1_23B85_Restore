@interface FPFileProviderModule
- (BOOL)FPSetValue:(id)a3 forAttribute:(id)a4 onItemAtURL:(id)a5 error:(id *)a6;
- (BOOL)responsibleForBookmarksInRealPathURL:(id)a3;
- (id)FPBookmarkableStringFromDocumentURL:(id)a3 options:(int64_t)a4 error:(id *)a5;
- (id)FPDocumentURLFromBookmarkableString:(id)a3 error:(id *)a4;
- (id)FPTrashURLForItemAtURL:(id)a3 error:(id *)a4;
- (id)_originalDocumentURLForURL:(id)a3;
- (void)FPBookmarkableStringFromDocumentURL:(id)a3 completionHandler:(id)a4;
- (void)FPDocumentURLFromBookmarkableString:(id)a3 completionHandler:(id)a4;
- (void)FPEvictItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)FPExtendBookmarkForDocumentURL:(id)a3 forBundleID:(id)a4 completionHandler:(id)a5;
- (void)FPStateForDomainWithID:(id)a3 completionHandler:(id)a4;
- (void)FPValuesForAttributes:(id)a3 forItemAtURL:(id)a4 completionHandler:(id)a5;
@end

@implementation FPFileProviderModule

- (BOOL)responsibleForBookmarksInRealPathURL:(id)a3
{
  v3 = a3;
  v4 = getuid();
  v7 = objc_msgSend_fp_matchesFileProviderHeuristics_options_(v3, v5, v4, 3, v6);

  return v7;
}

- (void)FPBookmarkableStringFromDocumentURL:(id)a3 completionHandler:(id)a4
{
  v21 = a4;
  v10 = objc_msgSend_fp_realpathURL(a3, v6, v7, v8, v9);
  if (objc_msgSend_responsibleForBookmarksInRealPathURL_(self, v11, v10, v12, v13))
  {
    v18 = objc_msgSend_sharedConnection(MEMORY[0x277CC63A8], v14, v15, v16, v17);
    objc_msgSend_bookmarkableStringFromDocumentURL_completionHandler_(v18, v19, v10, v21, v20);
  }

  else if (v21)
  {
    (*(v21 + 2))(v21, 0, 0);
  }
}

- (id)FPBookmarkableStringFromDocumentURL:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v13 = objc_msgSend_fp_realpathURL(v8, v9, v10, v11, v12);
  if (objc_msgSend_responsibleForBookmarksInRealPathURL_(self, v14, v13, v15, v16))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_23834D0FC;
    v37 = sub_23834D10C;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_23834D0FC;
    v31 = sub_23834D10C;
    v32 = 0;
    v21 = objc_msgSend_synchronousSharedConnectionProxy(MEMORY[0x277CC63A8], v17, v18, v19, v20);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_23834D114;
    v26[3] = &unk_278A50838;
    v26[4] = &v33;
    v26[5] = &v27;
    objc_msgSend_bookmarkableStringFromDocumentURL_options_completionHandler_(v21, v22, v13, a4, v26);

    if (a5)
    {
      v23 = v28[5];
      if (v23)
      {
        *a5 = v23;
      }
    }

    v24 = v34[5];
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)FPDocumentURLFromBookmarkableString:(id)a3 completionHandler:(id)a4
{
  v15 = a3;
  v5 = a4;
  if (objc_msgSend_rangeOfString_options_(v15, v6, @"fp:", 8, v7))
  {
    if (v5)
    {
      (*(v5 + 2))(v5, 0, 0);
    }
  }

  else
  {
    v12 = objc_msgSend_sharedConnection(MEMORY[0x277CC63A8], v8, v9, v10, v11);
    objc_msgSend_documentURLFromBookmarkableString_completionHandler_(v12, v13, v15, v5, v14);
  }
}

- (id)FPDocumentURLFromBookmarkableString:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (objc_msgSend_rangeOfString_options_(v5, v6, @"fp:", 8, v7))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_sharedConnection(MEMORY[0x277CC63A8], v8, v9, v10, v11);
    v12 = objc_msgSend_documentURLFromBookmarkableString_error_(v13, v14, v5, a4, v15);
  }

  return v12;
}

- (id)_originalDocumentURLForURL:(id)a3
{
  v3 = a3;
  v9 = 0;
  objc_msgSend_getResourceValue_forKey_error_(v3, v4, &v9, *MEMORY[0x277CC62C8], 0);
  v5 = v9;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_23834F004(v5, v3, v6);
    }

    v7 = v5;
    v3 = v7;
  }

  return v3;
}

- (void)FPExtendBookmarkForDocumentURL:(id)a3 forBundleID:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v27 = objc_msgSend__originalDocumentURLForURL_(self, v10, a3, v11, v12);
  v17 = objc_msgSend_fp_realpathURL(v27, v13, v14, v15, v16);
  if (objc_msgSend_responsibleForBookmarksInRealPathURL_(self, v18, v17, v19, v20))
  {
    v25 = objc_msgSend_sharedConnectionProxy(MEMORY[0x277CC63A8], v21, v22, v23, v24);
    objc_msgSend_extendBookmarkForFileURL_toConsumerID_options_completionHandler_(v25, v26, v17, v8, 0, v9);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

- (void)FPValuesForAttributes:(id)a3 forItemAtURL:(id)a4 completionHandler:(id)a5
{
  v7 = MEMORY[0x277CC63A8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v15 = objc_msgSend_sharedConnection(v7, v11, v12, v13, v14);
  v19 = 0;
  v17 = objc_msgSend_valuesForAttributes_forItemAtURL_error_(v15, v16, v10, v9, &v19);

  v18 = v19;
  v8[2](v8, v17, v18);
}

- (BOOL)FPSetValue:(id)a3 forAttribute:(id)a4 onItemAtURL:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (objc_msgSend_isEqualToString_(a4, v11, *MEMORY[0x277CBE968], v12, v13))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v9;
      v15 = v10;
      v20 = objc_msgSend_fileSystemRepresentation(v15, v16, v17, v18, v19);
      if (v20)
      {
        v21 = open(v20, 2097156);
        if (v21 < 0)
        {
          if (a6)
          {
            v28 = MEMORY[0x277CCA9B8];
            v29 = __error();
            objc_msgSend_fp_errorWithPOSIXCode_(v28, v30, *v29, v31, v32);
            *a6 = v27 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          v26 = v21;
          objc_msgSend_BOOLValue(v14, v22, v23, v24, v25);
          if ((fpfs_set_is_ignore_root() & 0x80000000) == 0)
          {
            close(v26);
            v27 = 1;
LABEL_14:

            goto LABEL_15;
          }

          if (a6)
          {
            v33 = MEMORY[0x277CCA9B8];
            v34 = __error();
            *a6 = objc_msgSend_fp_errorWithPOSIXCode_(v33, v35, *v34, v36, v37);
          }

          close(v26);
        }
      }

      v27 = 0;
      goto LABEL_14;
    }
  }

  v27 = 0;
LABEL_15:

  return v27;
}

- (id)FPTrashURLForItemAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v10 = objc_msgSend_fp_fpfsRootURL(v5, v6, v7, v8, v9);
  v14 = objc_msgSend_fp_relationshipToItemAtURL_(v10, v11, v5, v12, v13);

  if (v14 == 1)
  {
    v17 = 0;
  }

  else
  {
    v18 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v10, v15, @".Trash", 1, v16);
    v19 = v18;
    if (v18 && (v20 = v18, v25 = objc_msgSend_fileSystemRepresentation(v20, v21, v22, v23, v24), getxattr(v25, "com.apple.fileprovider.unsynced-trash", 0, 0, 0, 1) < 0))
    {
      v17 = v19;
    }

    else if (a4)
    {
      FPNotSupportedError();
      *a4 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (void)FPEvictItemAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (FPURLMightBeInFileProvider())
  {
    FPPrecheckTCCReadAccess();
    v11 = objc_msgSend_synchronousSharedConnectionProxy(MEMORY[0x277CC63A8], v7, v8, v9, v10);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23834DD98;
    v14[3] = &unk_278A508B0;
    v15 = v6;
    v13 = objc_msgSend_evictItemAtURL_evenIfEnumeratingFP_andClearACLForConsumer_completionHandler_(v11, v12, v5, 1, 0, v14);
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)FPStateForDomainWithID:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x277CC63A8];
  v6 = a4;
  v7 = a3;
  v14 = objc_msgSend_sharedConnection(v5, v8, v9, v10, v11);
  objc_msgSend_stateForDomainWithID_completionHandler_(v14, v12, v7, v6, v13);
}

@end