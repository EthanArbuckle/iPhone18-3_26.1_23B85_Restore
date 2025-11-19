@interface NSURL(_QLUtilities)
+ (id)_QLCreateTemporaryReplacementURLForOriginalFileAtURL:()_QLUtilities withExtension:temporaryDirectoryURL:;
+ (id)_QLTemporaryURLWithExtension:()_QLUtilities openingFileHandle:inDirectoryAtURL:;
- (BOOL)_QLIsThumbnailableWithError:()_QLUtilities;
- (id)_QLFileSize;
- (id)_QLIssueFileExtensionWithSandboxType:()_QLUtilities;
- (id)_QLUrlFileSize;
- (id)_qlFastRealpathURL;
- (id)ql_realpathURL;
- (uint64_t)_QLIsDataLess;
- (uint64_t)_QLNeedsCoordination;
- (uint64_t)_QLNeedsDownload;
- (void)_QLFileSize;
- (void)_QLIsDataLess;
- (void)_QLNeedsDownload;
- (void)_QLUrlFileSize;
- (void)_qlFastRealpathURL;
- (void)ql_realpathURL;
@end

@implementation NSURL(_QLUtilities)

- (uint64_t)_QLNeedsCoordination
{
  v5 = 0;
  v1 = [a1 getPromisedItemResourceValue:&v5 forKey:*MEMORY[0x1E695DBD8] error:0];
  v2 = v5;
  v3 = v2;
  if (v1)
  {
    v1 = [v2 BOOLValue];
  }

  return v1;
}

- (uint64_t)_QLIsDataLess
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1 startAccessingSecurityScopedResource];
  v3 = lstat([a1 fileSystemRepresentation], &v9);
  if (v2)
  {
    [a1 stopAccessingSecurityScopedResource];
  }

  if (v3)
  {
    v4 = _log();
    v5 = 1;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *__error();
      *buf = 138412546;
      v11 = a1;
      v12 = 1024;
      v13 = v6;
      v5 = 1;
      _os_log_impl(&dword_1CA1E7000, v4, OS_LOG_TYPE_INFO, "stat for %@ failed with errno %{darwin.errno}d; returning YES for _QLIsDataLess", buf, 0x12u);
    }
  }

  else
  {
    v5 = (v9.st_flags >> 30) & 1;
    v4 = _log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(_QLUtilities) _QLIsDataLess];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)_QLIsThumbnailableWithError:()_QLUtilities
{
  v26[1] = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  v5 = [a1 startAccessingSecurityScopedResource];
  v6 = lstat([a1 fileSystemRepresentation], &v20);
  v7 = v6 != 0;
  if (v5)
  {
    [a1 stopAccessingSecurityScopedResource];
  }

  if (v6)
  {
    v8 = _log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *__error();
      *buf = 138412546;
      v22 = a1;
      v23 = 1024;
      v24 = v9;
      _os_log_impl(&dword_1CA1E7000, v8, OS_LOG_TYPE_INFO, "stat for %@ failed with errno %{darwin.errno}d; returning YES for _QLIsThumbnailable", buf, 0x12u);
    }

LABEL_21:

    v12 = v7;
    goto LABEL_22;
  }

  v10 = v20.st_mode & 0xF000;
  v12 = v10 == 0x8000 || v10 == 0x4000;
  v13 = _log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [NSURL(_QLUtilities) _QLIsThumbnailableWithError:];
  }

  if (a3)
  {
    v14 = v12;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    v15 = _log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NSURL(_QLUtilities) _QLIsThumbnailableWithError:];
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot thumbnail %@ which is not a regular file", a1];
    v16 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    v26[0] = v8;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *a3 = [v16 errorWithDomain:@"QLThumbnailErrorDomain" code:4 userInfo:v17];

    goto LABEL_21;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)_QLNeedsDownload
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1 startAccessingSecurityScopedResource];
  memset(&v9, 0, sizeof(v9));
  v3 = lstat([a1 fileSystemRepresentation], &v9);
  if (v2)
  {
    [a1 stopAccessingSecurityScopedResource];
  }

  if (v3)
  {
    v4 = _log();
    v5 = 1;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *__error();
      *buf = 138412546;
      v11 = a1;
      v12 = 1024;
      v13 = v6;
      v5 = 1;
      _os_log_impl(&dword_1CA1E7000, v4, OS_LOG_TYPE_INFO, "stat for %@ failed with errno %{darwin.errno}d; returning YES for _QLNeedsDownload", buf, 0x12u);
    }
  }

  else
  {
    v5 = (v9.st_flags >> 30) & 1;
    v4 = _log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(_QLUtilities) _QLNeedsDownload];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_QLFileSize
{
  v8 = 0;
  v1 = *MEMORY[0x1E695DB50];
  v7 = 0;
  v2 = [a1 getPromisedItemResourceValue:&v8 forKey:v1 error:&v7];
  v3 = v8;
  v4 = v7;
  if ((v2 & 1) == 0)
  {
    v5 = _log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NSURL(_QLUtilities) _QLFileSize];
    }
  }

  return v3;
}

- (id)_QLUrlFileSize
{
  v1 = a1;
  v44[2] = *MEMORY[0x1E69E9840];
  if ([a1 _QLNeedsDownload])
  {
    goto LABEL_25;
  }

  v38 = 0;
  v2 = *MEMORY[0x1E695DB78];
  v37 = 0;
  v29 = v2;
  v3 = [v1 getResourceValue:&v38 forKey:? error:?];
  v4 = v38;
  v5 = 0;
  if ((v3 & 1) == 0)
  {
    v24 = _log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [NSURL(_QLUtilities) _QLUrlFileSize];
    }

    goto LABEL_24;
  }

  if (![v4 BOOLValue])
  {
LABEL_24:

LABEL_25:
    v25 = [v1 _QLFileSize];
    goto LABEL_26;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = *MEMORY[0x1E695DB50];
  v44[0] = v29;
  v44[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v28 = v1;
  v9 = [v6 enumeratorAtURL:v1 includingPropertiesForKeys:v8 options:0 errorHandler:&__block_literal_global_12];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v34;
    do
    {
      v14 = 0;
      v15 = v5;
      v16 = v4;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * v14);
        v31 = 0;
        v32 = 0;
        v18 = [v17 getResourceValue:&v32 forKey:v29 error:&v31];
        v4 = v32;

        v5 = v31;
        if ((v18 & 1) == 0)
        {
          v19 = _log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v40 = v17;
            v41 = 2112;
            v42 = v5;
            _os_log_error_impl(&dword_1CA1E7000, v19, OS_LOG_TYPE_ERROR, "Failed to determine if the url(%@) is a directory error: %@", buf, 0x16u);
          }
        }

        v20 = [v17 _QLFileSize];
        v21 = [v20 unsignedLongLongValue];
        v22 = [v4 BOOLValue];
        if (v20)
        {
          v23 = v22 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          [obj skipDescendants];
        }

        v12 += v21;

        ++v14;
        v15 = v5;
        v16 = v4;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];

  v1 = v28;
  if (!v25)
  {
    goto LABEL_25;
  }

LABEL_26:
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)_QLIssueFileExtensionWithSandboxType:()_QLUtilities
{
  [a1 fileSystemRepresentation];
  v1 = sandbox_extension_issue_file();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v1 encoding:4];
    free(v2);
  }

  else
  {
    v4 = _log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [NSURL(_QLUtilities) _QLIssueFileExtensionWithSandboxType:];
    }

    v3 = 0;
  }

  return v3;
}

+ (id)_QLTemporaryURLWithExtension:()_QLUtilities openingFileHandle:inDirectoryAtURL:
{
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    if (v7)
    {
LABEL_3:
      v9 = [@"QuickLookThumbnailing.XXXXX" stringByAppendingPathExtension:v7];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = MEMORY[0x1E695DFF8];
    v11 = NSTemporaryDirectory();
    v8 = [v10 fileURLWithPath:v11];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = @"QuickLookThumbnailing.XXXXX";
LABEL_6:
  v12 = [v8 URLByAppendingPathComponent:v9 isDirectory:0];
  v13 = strdup([v12 fileSystemRepresentation]);
  if (v7)
  {
    v14 = [v7 length] + 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = mkstemps(v13, v14);
  if (v15 < 0)
  {
    v16 = _log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NSURL(_QLUtilities) _QLTemporaryURLWithExtension:v13 openingFileHandle:v16 inDirectoryAtURL:?];
    }
  }

  v17 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v13 isDirectory:0 relativeToURL:0];
  free(v13);
  if (a4)
  {
    *a4 = v15;
  }

  else
  {
    close(v15);
  }

  return v17;
}

+ (id)_QLCreateTemporaryReplacementURLForOriginalFileAtURL:()_QLUtilities withExtension:temporaryDirectoryURL:
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v10 = [v9 URLForDirectory:99 inDomain:1 appropriateForURL:v7 create:1 error:&v20];
  v11 = v20;

  if (!v10)
  {
    v12 = _log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[NSURL(_QLUtilities) _QLCreateTemporaryReplacementURLForOriginalFileAtURL:withExtension:temporaryDirectoryURL:];
    }

    goto LABEL_13;
  }

  if (v8)
  {
    v12 = [@"thumbnailXXXXXX" stringByAppendingPathExtension:v8];
  }

  else
  {
    v12 = @"thumbnailXXXXXX";
  }

  v13 = [v10 URLByAppendingPathComponent:v12];
  v14 = strdup([v13 fileSystemRepresentation]);

  v15 = mkstemps(v14, [v8 length] + 1);
  if (v15 < 0)
  {
    v18 = _log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[NSURL(_QLUtilities) _QLCreateTemporaryReplacementURLForOriginalFileAtURL:withExtension:temporaryDirectoryURL:];
    }

    [MEMORY[0x1E696AC08] _QLTRemoveTemporaryDirectoryAtURL:v10];
    free(v14);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  close(v15);
  v16 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v14 isDirectory:0 relativeToURL:0];
  free(v14);
  if (a5)
  {
    v17 = v10;
    *a5 = v10;
  }

LABEL_14:

  return v16;
}

- (id)_qlFastRealpathURL
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = xmmword_1CA21FED8;
  v7 = 0;
  memset(v8, 0, 512);
  if (getattrlist([a1 fileSystemRepresentation], &v6, v8, 0x410uLL, 0x20u) < 0)
  {
    v3 = _log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(_QLUtilities) *)a1 _qlFastRealpathURL];
    }

    v2 = a1;
  }

  else
  {
    v2 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v8 + SDWORD2(v8[0]) + 8 isDirectory:DWORD1(v8[0]) == 2 relativeToURL:0];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)ql_realpathURL
{
  if (_CFURLIsItemPromiseAtURL())
  {
    v2 = [a1 _qlFastRealpathURL];
  }

  else
  {
    v3 = _CFURLPromiseCopyPhysicalURL();
    v4 = v3;
    if (!v3 || v3 == a1)
    {
      v2 = [a1 _qlFastRealpathURL];
    }

    else
    {
      v5 = [v3 _qlFastRealpathURL];
      if (v5)
      {
        cf = 0;
        v6 = _CFURLCopyLogicalURLOfPromiseAtURL();
        v7 = v6;
        if (!v6)
        {
          v8 = _log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [(NSURL(_QLUtilities) *)v5 ql_realpathURL];
          }

          v7 = v5;
          if (cf)
          {
            CFRelease(cf);
            v7 = v5;
          }
        }

        v2 = v7;
      }

      else
      {
        v9 = _log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [NSURL(_QLUtilities) ql_realpathURL];
        }

        v2 = a1;
      }
    }
  }

  return v2;
}

- (void)_QLIsDataLess
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0(&dword_1CA1E7000, v0, v1, "stat for %@ succeeded; dataless = %d");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_QLIsThumbnailableWithError:()_QLUtilities .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0(&dword_1CA1E7000, v0, v1, "stat for %@ succeeded; thumbnailable = %d");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_QLIsThumbnailableWithError:()_QLUtilities .cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Cannot thumbnail %@ which is not a regular file", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_QLNeedsDownload
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0(&dword_1CA1E7000, v0, v1, "stat for %@ succeeded; downloaded = %d");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_QLFileSize
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Error getting the size of file(%@) with error (%@)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_QLUrlFileSize
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Failed to determine if the url(%@) is a directory error:%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_QLIssueFileExtensionWithSandboxType:()_QLUtilities .cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Couldn't issue file extension for url: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_QLTemporaryURLWithExtension:()_QLUtilities openingFileHandle:inDirectoryAtURL:.cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v6 = 136315394;
  v7 = a1;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "Could not make temporary file at %s: %{darwin.errno}d", &v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_QLCreateTemporaryReplacementURLForOriginalFileAtURL:()_QLUtilities withExtension:temporaryDirectoryURL:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Could not create temporary file on the same volume as %@: mkstemps failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_QLCreateTemporaryReplacementURLForOriginalFileAtURL:()_QLUtilities withExtension:temporaryDirectoryURL:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v0, v1, "Could not create temporary directory on the same voume as %@. URLForDirectory failed with error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_qlFastRealpathURL
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v8 = 138412802;
  v9 = a1;
  v10 = 1024;
  v11 = v4;
  v12 = 2080;
  v13 = v6;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "getattrlist() failed for %@: %d (%s)", &v8, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)ql_realpathURL
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1CA1E7000, v0, v1, "Failed to get realpath of %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end