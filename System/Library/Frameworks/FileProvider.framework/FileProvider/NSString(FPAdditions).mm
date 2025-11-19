@interface NSString(FPAdditions)
+ (char)_fpd_pathWithFileSystemRepresentation:()FPAdditions;
+ (char)fp_pathWithFileSystemRepresentation:()FPAdditions;
+ (id)fp_commonParentPathForItemURLs:()FPAdditions;
+ (id)fp_fromParsedDiskIdentifier:()FPAdditions;
+ (id)fp_hashForToken:()FPAdditions;
+ (id)fp_representableHFSFileNameWithBase:()FPAdditions suffix:extension:makeDotFile:;
+ (uint64_t)fp_coordinatorReadingOptions:()FPAdditions;
+ (uint64_t)fp_wordTokenizer;
- (__CFString)fp_fpIdentifier;
- (__CFString)fp_relativePathWithRealpath:()FPAdditions;
- (const)fp_fileSystemRepresentation;
- (id)fp_alwaysObfuscatedDotSeparatedComponents;
- (id)fp_alwaysObfuscatedExtendedAttributeName;
- (id)fp_alwaysObfuscatedFilename;
- (id)fp_bouncedNameWithIndex:()FPAdditions isDir:;
- (id)fp_displayNameFromFilenameWithHiddenPathExtension:()FPAdditions isFolder:;
- (id)fp_filenameFromDisplayNameWithExtension:()FPAdditions;
- (id)fp_getCrashDate;
- (id)fp_obfuscatedPath;
- (id)fp_obfuscatedProviderDomainID;
- (id)fp_pathExtension;
- (id)fp_prettyPathWithObfuscation:()FPAdditions;
- (id)fp_realpath;
- (id)fp_representableHFSFileNameWithNumber:()FPAdditions addedExtension:makeDotFile:;
- (id)fp_representableHFSFileNameWithNumber:()FPAdditions addedExtension:makeDotFile:isDir:;
- (id)fp_representableHFSFileNameWithSuffix:()FPAdditions addedExtension:makeDotFile:isDir:;
- (id)fp_stringByDeletingPathBounceNo:()FPAdditions andPathExtension:isFolder:;
- (id)fp_stringByDeletingPathExtension;
- (id)fp_valueForKeyPath:()FPAdditions;
- (uint64_t)fp_getParsedDiskIdentifier:()FPAdditions;
- (uint64_t)fp_isCJKLanguageIdentifier;
- (uint64_t)fp_isiCloudDriveIdentifier;
- (uint64_t)fp_isiCloudDriveOrCloudDocsIdentifier;
- (uint64_t)fp_prettyPath;
- (uint64_t)fp_splitKeyPathInProperty:()FPAdditions remainder:;
- (void)fp_enumerateTokensInRange:()FPAdditions tokenizer:usingBlock:;
- (void)fp_obfuscatedDotSeparatedComponents;
- (void)fp_obfuscatedExtendedAttributeName;
- (void)fp_obfuscatedFilename;
- (void)fp_realpath;
@end

@implementation NSString(FPAdditions)

- (id)fp_realpath
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = &stru_1F1F94B20;
    v4 = v1;
    while ([v4 length])
    {
      v5 = [v4 fileSystemRepresentation];
      if (!v5)
      {
        break;
      }

      v6 = fpfs_fast_realpath();
      if (v6)
      {
        v12 = v6;
        if ([(__CFString *)v3 length]|| strcmp(v5, v12))
        {
          v13 = [MEMORY[0x1E696AEC0] _fpd_pathWithFileSystemRepresentation:v12];
          v10 = [v13 stringByAppendingPathComponent:v3];

          free(v12);
          goto LABEL_12;
        }

        free(v12);
        break;
      }

      if (*__error() != 2 && *__error() != 70)
      {
        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(NSString(FPAdditions) *)v4 fp_realpath];
        }

        break;
      }

      v7 = [v4 lastPathComponent];
      v8 = [v7 stringByAppendingPathComponent:v3];

      v9 = [v4 stringByDeletingLastPathComponent];

      v4 = v9;
      v3 = v8;
      if (!v9)
      {
        v3 = v8;
        break;
      }
    }
  }

  else
  {
    v4 = 0;
    v3 = &stru_1F1F94B20;
  }

  v10 = v2;
LABEL_12:

  return v10;
}

- (uint64_t)fp_prettyPath
{
  shouldObfuscateFilenames = fp_shouldObfuscateFilenames();

  return [a1 fp_prettyPathWithObfuscation:shouldObfuscateFilenames];
}

- (id)fp_obfuscatedProviderDomainID
{
  if (fp_shouldObfuscateFilenames())
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [a1 fp_toProviderID];
    v4 = [a1 fp_toDomainIdentifier];
    v5 = [v4 fp_obfuscatedFilename];
    v6 = [v2 stringWithFormat:@"%@/%@", v3, v5];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (void)fp_obfuscatedFilename
{
  v1 = a1;
  v2 = [a1 fp_alwaysObfuscatedFilename];
  if (fp_shouldObfuscateFilenames())
  {
    v1 = v2;
  }

  v3 = v1;

  return v1;
}

- (id)fp_alwaysObfuscatedFilename
{
  if (![a1 length])
  {
    v5 = a1;
    goto LABEL_14;
  }

  v16 = 0;
  v17 = 0;
  v2 = [a1 fp_stringByDeletingPathBounceNo:&v17 andPathExtension:&v16];
  v3 = v17;
  v4 = v16;
  if ([v2 length] > 2)
  {
    v6 = obfuscateString(v2);
    v7 = v6;
    if (v4 && v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v14 = [v3 intValue];
      v15 = v4;
      v13 = v7;
      v9 = @"%@ %u.%@";
    }

    else
    {
      if (v4)
      {
        v10 = MEMORY[0x1E696AEC0];
        v13 = v7;
        v14 = v4;
        v9 = @"%@.%@";
        goto LABEL_11;
      }

      if (!v3)
      {
        v11 = v6;
        goto LABEL_12;
      }

      v8 = MEMORY[0x1E696AEC0];
      v13 = v6;
      v14 = [v3 intValue];
      v9 = @"%@ %u";
    }

    v10 = v8;
LABEL_11:
    v11 = [v10 stringWithFormat:v9, v13, v14, v15];
LABEL_12:
    v5 = v11;

    goto LABEL_13;
  }

  v5 = a1;
LABEL_13:

LABEL_14:

  return v5;
}

- (uint64_t)fp_isiCloudDriveIdentifier
{
  if ([a1 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];
}

- (__CFString)fp_fpIdentifier
{
  if ([a1 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"])
  {
    v2 = @"icloud";
  }

  else if ([a1 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"])
  {
    v2 = @"icloudmanaged";
  }

  else if ([a1 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
  {
    v2 = @"localstorage";
  }

  else if ([a1 isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
  {
    v2 = @"userfs";
  }

  else if ([a1 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"])
  {
    v2 = @"smbfs";
  }

  else if ([a1 hasPrefix:@"com.getdropbox.Dropbox.FileProvider"])
  {
    v2 = @"dropbox";
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (uint64_t)fp_isiCloudDriveOrCloudDocsIdentifier
{
  if ([a1 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.CloudDocs.MobileDocumentsFileProvider"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"];
}

- (uint64_t)fp_getParsedDiskIdentifier:()FPAdditions
{
  if ([a1 hasPrefix:@"__fp/fs/"])
  {
    v5 = [a1 substringFromIndex:8];
    if ([v5 isEqualToString:@"root"])
    {
      *a3 = 0;
LABEL_7:
      v6 = 1;
LABEL_8:

      return v6;
    }

    if ([v5 isEqualToString:@"trash"])
    {
      *a3 = 0xFFFFFFFF80000000;
      goto LABEL_7;
    }

    if ([v5 hasSuffix:@""]))
    {
      if ([v5 hasPrefix:@"docID("]
      {
        v8 = [v5 substringWithRange:{6, objc_msgSend(v5, "length") - 7}];
        v9 = [v8 integerValue];
        if (v9 >= 1)
        {
          *a3 = -v9;
LABEL_17:

          goto LABEL_7;
        }

LABEL_18:

        goto LABEL_19;
      }

      if ([v5 hasPrefix:@"fileID("]
      {
        v8 = [v5 substringWithRange:{7, objc_msgSend(v5, "length") - 8}];
        v10 = [v8 integerValue];
        if (v10 >= 1)
        {
          *a3 = v10;
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

LABEL_19:
    v6 = 0;
    goto LABEL_8;
  }

  return 0;
}

+ (id)fp_fromParsedDiskIdentifier:()FPAdditions
{
  if (a3 == 0xFFFFFFFF80000000)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@trash", @"__fp/fs/"];
  }

  else
  {
    if (a3)
    {
      v4 = MEMORY[0x1E696AEC0];
      if (a3 < 0)
      {
        v5 = [MEMORY[0x1E696AD98] numberWithInteger:-a3];
        [v4 stringWithFormat:@"%@%@%@"], @"__fp/fs/", @"docID("), v5;
      }

      else
      {
        v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v4 stringWithFormat:@"%@%@%@"], @"__fp/fs/", @"fileID("), v5;
      }
      v3 = ;

      goto LABEL_10;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@root", @"__fp/fs/"];
  }
  v3 = ;
LABEL_10:

  return v3;
}

- (id)fp_getCrashDate
{
  if (fp_getCrashDate_once != -1)
  {
    [NSString(FPAdditions) fp_getCrashDate];
  }

  v2 = [fp_getCrashDate_regexp firstMatchInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rangeAtIndex:1];
    v6 = [a1 substringWithRange:{v4, v5}];
    v7 = [v3 rangeAtIndex:2];
    v9 = [a1 substringWithRange:{v7, v8}];
    v10 = [v3 rangeAtIndex:3];
    v12 = [a1 substringWithRange:{v10, v11}];
    v13 = [v3 rangeAtIndex:4];
    v15 = [a1 substringWithRange:{v13, v14}];
    v16 = [v3 rangeAtIndex:5];
    v18 = [a1 substringWithRange:{v16, v17}];
    v19 = [v3 rangeAtIndex:6];
    v21 = [a1 substringWithRange:{v19, v20}];
    v22 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v22 setYear:{objc_msgSend(v6, "longLongValue")}];
    [v22 setMonth:{objc_msgSend(v9, "longLongValue")}];
    [v22 setDay:{objc_msgSend(v12, "longLongValue")}];
    [v22 setHour:{objc_msgSend(v15, "longLongValue")}];
    [v22 setMinute:{objc_msgSend(v18, "longLongValue")}];
    [v22 setSecond:{objc_msgSend(v21, "longLongValue")}];
    v23 = [MEMORY[0x1E695DEE8] currentCalendar];
    v24 = [v23 dateFromComponents:v22];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (char)_fpd_pathWithFileSystemRepresentation:()FPAdditions
{
  v3 = a3;
  if (a3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v4 stringWithFileSystemRepresentation:v3 length:strlen(v3)];
  }

  return v3;
}

- (id)fp_displayNameFromFilenameWithHiddenPathExtension:()FPAdditions isFolder:
{
  v6 = a1;
  v7 = v6;
  if (a3 && (a4 & 1) == 0)
  {
    v8 = [v6 stringByDeletingPathExtension];

    v7 = v8;
  }

  v9 = [v7 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

  return v9;
}

- (id)fp_filenameFromDisplayNameWithExtension:()FPAdditions
{
  v4 = a3;
  v5 = [a1 stringByReplacingOccurrencesOfString:@"/" withString:@":"];
  if (v4)
  {
    v6 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

    v7 = [v5 stringByAppendingPathExtension:v6];

    v5 = v7;
  }

  return v5;
}

+ (char)fp_pathWithFileSystemRepresentation:()FPAdditions
{
  v3 = a3;
  if (a3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v4 stringWithFileSystemRepresentation:v3 length:strlen(v3)];
  }

  return v3;
}

+ (id)fp_commonParentPathForItemURLs:()FPAdditions
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__12;
    v38 = __Block_byref_object_dispose__12;
    v21 = v3;
    v4 = [v3 firstObject];
    v5 = [v4 URLByDeletingLastPathComponent];
    v39 = [v5 pathComponents];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v7)
    {
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v30 + 1) + 8 * i) pathComponents];
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 0;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __56__NSString_FPAdditions__fp_commonParentPathForItemURLs___block_invoke;
          v22[3] = &unk_1E793BDD8;
          v24 = &v34;
          v25 = &v26;
          v11 = v10;
          v23 = v11;
          [v11 enumerateObjectsUsingBlock:v22];
          if ((v27[3] & 1) == 0)
          {
            if ([v11 count])
            {
              v12 = [v11 subarrayWithRange:{0, objc_msgSend(v11, "count") - 1}];
              v13 = v35[5];
              v35[5] = v12;
            }

            else
            {
              v14 = v6;
              v15 = v35;
              v16 = v11;
              v13 = v15[5];
              v15[5] = v16;
              v6 = v14;
            }
          }

          _Block_object_dispose(&v26, 8);
        }

        v7 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v7);
    }

    v17 = [MEMORY[0x1E696AEC0] pathWithComponents:v35[5]];
    if (([v17 hasSuffix:@"/"] & 1) == 0)
    {
      v18 = [v17 stringByAppendingString:@"/"];

      v17 = v18;
    }

    _Block_object_dispose(&v34, 8);

    v3 = v21;
  }

  else
  {
    v17 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)fp_stringByDeletingPathBounceNo:()FPAdditions andPathExtension:isFolder:
{
  v9 = [a1 fileSystemRepresentation];
  v10 = v9;
  if ((a5 & 1) != 0 || (v11 = _extensionInFilename(v9, 0)) == 0)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v14 = strlen(v10);
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v12 = v11;
    if (a4)
    {
      *a4 = [MEMORY[0x1E696AEC0] fp_pathWithFileSystemRepresentation:v11];
    }

    v13 = 0;
    v14 = &v12[~v10];
  }

  v15 = strrchr(v10, 32);
  if (v15)
  {
    v16 = v15;
    if (v15 != v10 && v15 != &v10[v14])
    {
      v17 = v15 + 1;
      if (v15[1] != 48)
      {
        v32 = v17 - v10;
        if (v14 == v17 - v10)
        {
          goto LABEL_21;
        }

        v30 = v12;
        v31 = a3;
        v18 = 0;
        v19 = &v10[v14] - v15;
        v20 = 1;
        do
        {
          v21 = v16[v20];
          if ((v21 & 0x80000000) != 0)
          {
            if (!__maskrune(v21, 0x400uLL))
            {
              break;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x400) == 0)
          {
            break;
          }

          v18 = v20++ >= v14 - (v17 - v10);
        }

        while (v19 != v20);
        v12 = v30;
        a3 = v31;
        if (v18)
        {
LABEL_21:
          *__error() = 0;
          v22 = strtoll(v16 + 1, 0, 10);
          v23 = *__error() == 0;
          v24 = (v22 - 2) < 0x1F2;
          if (v23 && v24)
          {
            v25 = v22;
          }

          else
          {
            v25 = 0;
          }

          if (v23 && v24)
          {
            v14 = v32 - 1;
          }

          if (a3 && v25 >= 1)
          {
            *a3 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
          }
        }
      }
    }
  }

  if (a4)
  {
    v26 = 1;
  }

  else
  {
    v26 = v13;
  }

  if (v26)
  {
    if (v10[v14])
    {
      v27 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = [v27 stringWithFileSystemRepresentation:v10 length:v14];
    }

    else
    {
      v28 = a1;
    }
  }

  else
  {
    v33 = 0;
    asprintf(&v33, "%.*s.%s", v14, v10, v12);
    v28 = [MEMORY[0x1E696AEC0] fp_pathWithFileSystemRepresentation:v33];
    free(v33);
  }

  return v28;
}

- (void)fp_obfuscatedDotSeparatedComponents
{
  v1 = a1;
  v2 = [a1 fp_alwaysObfuscatedDotSeparatedComponents];
  if (fp_shouldObfuscateFilenames())
  {
    v1 = v2;
  }

  v3 = v1;

  return v1;
}

- (id)fp_alwaysObfuscatedDotSeparatedComponents
{
  if ([a1 length])
  {
    v2 = [a1 componentsSeparatedByString:@"."];
    v3 = [v2 mutableCopy];

    if ([v3 count])
    {
      v4 = 0;
      do
      {
        v5 = [v3 objectAtIndexedSubscript:v4];
        v6 = obfuscateString(v5);
        [v3 setObject:v6 atIndexedSubscript:v4];

        ++v4;
      }

      while (v4 < [v3 count]);
    }

    v7 = [v3 componentsJoinedByString:@"."];
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

- (void)fp_obfuscatedExtendedAttributeName
{
  v1 = a1;
  v2 = [a1 fp_alwaysObfuscatedExtendedAttributeName];
  if (fp_shouldObfuscateFilenames())
  {
    v1 = v2;
  }

  v3 = v1;

  return v1;
}

- (id)fp_alwaysObfuscatedExtendedAttributeName
{
  if ([a1 length])
  {
    v2 = [a1 rangeOfString:@"#" options:5];
    v4 = v3;
    v5 = [a1 length];
    v6 = &stru_1F1F94B20;
    if (v4)
    {
      if (v2)
      {
        [a1 rangeOfComposedCharacterSequenceAtIndex:v2];
        v8 = v7 + v2;
        if (v7 + v2 < [a1 length])
        {
          v9 = 0;
          while (1)
          {
            v10 = [a1 characterAtIndex:v8];
            if (v10 > 97)
            {
              if (v10 <= 109)
              {
                if (v10 != 98)
                {
                  v11 = 2;
                  if (v10 != 99)
                  {
                    break;
                  }

                  goto LABEL_26;
                }

LABEL_25:
                v11 = 16;
                goto LABEL_26;
              }

              if (v10 == 110)
              {
LABEL_24:
                v11 = 4;
                goto LABEL_26;
              }

              if (v10 == 115)
              {
                goto LABEL_23;
              }

              if (v10 != 112)
              {
                break;
              }
            }

            else
            {
              if (v10 <= 77)
              {
                if (v10 != 66)
                {
                  v11 = 2;
                  if (v10 != 67)
                  {
                    break;
                  }

                  goto LABEL_26;
                }

                goto LABEL_25;
              }

              if (v10 == 78)
              {
                goto LABEL_24;
              }

              if (v10 != 80)
              {
                if (v10 != 83)
                {
                  break;
                }

LABEL_23:
                v11 = 8;
                goto LABEL_26;
              }
            }

            v11 = 1;
LABEL_26:
            if ((v11 & v9) != 0)
            {
              break;
            }

            v9 |= v11;
            if (++v8 >= [a1 length])
            {
              v6 = [a1 substringWithRange:{v2, objc_msgSend(a1, "length") - v2}];
              v5 = v2;
              break;
            }
          }
        }
      }
    }

    v12 = [a1 rangeOfString:@":" options:5 range:{0, v5}];
    if (v13 && (v14 = v12) != 0)
    {
      v15 = [a1 rangeOfComposedCharacterSequenceAtIndex:v12];
      if (v5 == v15 + v16)
      {
        v17 = 0;
      }

      else
      {
        v19 = [a1 substringWithRange:{v15 + v16, v5 - (v15 + v16)}];
        v17 = [v19 fp_alwaysObfuscatedDotSeparatedComponents];

        v5 = v14;
      }
    }

    else
    {
      v17 = 0;
    }

    v20 = [a1 substringWithRange:{0, v5}];
    v21 = [v20 fp_alwaysObfuscatedDotSeparatedComponents];

    if (v17)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@%@", v21, v17, v6];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v21, v6, v23];
    }
    v18 = ;
  }

  else
  {
    v18 = a1;
  }

  return v18;
}

- (id)fp_prettyPathWithObfuscation:()FPAdditions
{
  if (([a1 hasPrefix:@"/Applications/"] & 1) != 0 || (objc_msgSend(a1, "hasPrefix:", @"/System/Library/") & 1) != 0 || objc_msgSend(a1, "hasPrefix:", @"/AppleInternal/"))
  {
    v5 = a1;
  }

  else
  {
    v7 = [a1 mutableCopy];
    if (fp_prettyPathWithObfuscation__onceToken != -1)
    {
      [NSString(FPAdditions) fp_prettyPathWithObfuscation:];
    }

    v21 = replacePrefix(v7, fp_prettyPathWithObfuscation__temporaryDirectory, @"<Temp>/");
    v8 = replacePrefix(v7, @"/private/var/mobile/", @"~/");
    v9 = replacePrefix(v7, @"/var/mobile/", @"~/");
    v10 = replacePrefix(v7, @"~/Containers/Shared/AppGroup/", @"<GroupContainers>/");
    v11 = replacePrefix(v7, @"~/Library/Group Containers/", @"<GroupContainers>/");
    v12 = replacePrefix(v7, @"~/Library/Application Support/", @"<AppSupport>/");
    v13 = replacePrefix(v7, @"~/Library/Mobile Documents/", @"~LMD/");
    v14 = replacePrefix(v7, @"~/Containers/Data/Application/", @"<AppContainers>/");
    v15 = replacePrefix(v7, @"~/Library/CloudStorage/", @"<FPFS>/");
    v16 = replacePrefix(v7, @"~/Library/Group Containers/group.com.apple.FileProvider.LocalStorage/File Provider Storage", @"<LocalStorage>");
    if (a3)
    {
      v17 = v9 | v21 | v8;
      if (v12 | v10 | v11)
      {
        v17 = 2;
      }

      if (v13 | v14)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      if (v15)
      {
        v18 = 2;
      }

      if (v16)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      v20 = obfuscatePath(v7, v19);
    }

    else
    {
      v20 = v7;
    }

    v5 = v20;
  }

  return v5;
}

- (id)fp_obfuscatedPath
{
  if (fp_shouldObfuscateFilenames())
  {
    v2 = [a1 fp_alwaysObfuscatedPath];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)fp_bouncedNameWithIndex:()FPAdditions isDir:
{
  if (a4)
  {
    v7 = [a1 lastPathComponent];
    v8 = 0;
  }

  else
  {
    v7 = [a1 fp_stringByDeletingPathExtension];
    v8 = [a1 fp_pathExtension];
  }

  if ([v8 isEqualToString:@"icloud"])
  {
    v9 = [v7 fp_pathExtension];
    v10 = [v7 fp_stringByDeletingPathExtension];

    if (v9)
    {
      v11 = [v9 stringByAppendingPathExtension:v8];

      v8 = v11;
    }

    v7 = v10;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v13 = [v7 fp_representableHFSFileNameWithNumber:v12 addedExtension:v8 makeDotFile:0 isDir:a4];

  return v13;
}

- (const)fp_fileSystemRepresentation
{
  if (![a1 length])
  {
    return ".";
  }

  v2 = a1;

  return [v2 fileSystemRepresentation];
}

+ (id)fp_representableHFSFileNameWithBase:()FPAdditions suffix:extension:makeDotFile:
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 length];
  v13 = [v11 lengthOfBytesUsingEncoding:4];
  if (v13 < 0x33)
  {
    v15 = v13;
  }

  else
  {
    v14 = [v9 stringByAppendingPathExtension:v11];

    v15 = 0;
    v11 = 0;
    v9 = v14;
  }

  memset(&v33[2], 0, 223);
  v16 = 254 - v12;
  if (v15)
  {
    v17 = ~v15;
  }

  else
  {
    v17 = 0;
  }

  memset(v33, 0, 32);
  if (a6)
  {
    v18 = v33 + 1;
    LOBYTE(v33[0]) = 46;
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v18 = v33;
  }

  v32 = 0;
  if (!v12)
  {
    v16 = 255;
  }

  v20 = [v9 getBytes:v18 maxLength:v16 + v17 - v19 usedLength:&v32 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v9, "length"), 0}];
  v21 = v32;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = v21 + v19;
  if (!v12)
  {
LABEL_17:
    if (!v15)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v23 = v22 + 1;
  *(v33 + v22) = 32;
  if ([v10 getBytes:v33 + v22 + 1 maxLength:v12 usedLength:&v32 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v10, "length"), 0}])
  {
    v22 = v32 + v23;
    goto LABEL_17;
  }

  v24 = fp_current_or_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [NSString(FPAdditions) fp_representableHFSFileNameWithBase:v9 suffix:v24 extension:? makeDotFile:?];
  }

  v25 = [MEMORY[0x1E696AFB0] UUID];
  v26 = [v25 UUIDString];
  v22 = v23 + snprintf(v33 + v23, 254 - v22, "com-apple-bird-recovered-%s", [v26 UTF8String]);

  if (v15)
  {
LABEL_22:
    v27 = v22 + 1;
    *(v33 + v22) = 46;
    if ([v11 getBytes:v33 + ++v22 maxLength:v15 usedLength:&v32 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v11, "length"), 0}])
    {
      v22 = v32 + v27;
    }
  }

LABEL_24:
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v33 length:v22 encoding:4];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)fp_representableHFSFileNameWithSuffix:()FPAdditions addedExtension:makeDotFile:isDir:
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 length];
  v13 = [v11 length];
  if ((a5 & 1) != 0 || v12 || v13 || [a1 lengthOfBytesUsingEncoding:4] >= 0x100)
  {
    if (v11 || a6)
    {
      v14 = v11;
      v15 = a1;
    }

    else
    {
      v14 = [a1 fp_pathExtension];
      v15 = [a1 fp_stringByDeletingPathExtension];
    }

    v16 = v15;
    v17 = [MEMORY[0x1E696AEC0] fp_representableHFSFileNameWithBase:v15 suffix:v10 extension:v14 makeDotFile:a5];
  }

  else
  {
    v17 = a1;
  }

  return v17;
}

- (id)fp_representableHFSFileNameWithNumber:()FPAdditions addedExtension:makeDotFile:isDir:
{
  v10 = a4;
  v11 = [a3 stringValue];
  v12 = [a1 fp_representableHFSFileNameWithSuffix:v11 addedExtension:v10 makeDotFile:a5 isDir:a6];

  return v12;
}

- (id)fp_representableHFSFileNameWithNumber:()FPAdditions addedExtension:makeDotFile:
{
  v8 = a4;
  v9 = [a3 stringValue];
  v10 = [a1 fp_representableHFSFileNameWithSuffix:v9 addedExtension:v8 makeDotFile:a5 isDir:0];

  return v10;
}

- (id)fp_pathExtension
{
  v1 = _extensionInFilename([a1 fileSystemRepresentation], 0);
  v2 = v1;
  if (v1)
  {
    v3 = strlen(v1);
    if (v3)
    {
      v4 = v3;
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      v2 = [v5 stringWithFileSystemRepresentation:v2 length:v4];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)fp_stringByDeletingPathExtension
{
  v2 = [a1 fileSystemRepresentation];
  v3 = _extensionInFilename(v2, 0);
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 stringWithFileSystemRepresentation:v2 length:&v4[~v2]];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

+ (uint64_t)fp_wordTokenizer
{
  if (fp_wordTokenizer_onceToken != -1)
  {
    +[NSString(FPAdditions) fp_wordTokenizer];
  }

  return fp_wordTokenizer_tokenizerRef;
}

- (void)fp_enumerateTokensInRange:()FPAdditions tokenizer:usingBlock:
{
  v11 = a6;
  if (!a5)
  {
    [NSString(FPAdditions) fp_enumerateTokensInRange:a2 tokenizer:a1 usingBlock:?];
  }

  v17.location = a3;
  v17.length = a4;
  CFStringTokenizerSetString(a5, a1, v17);
  do
  {
    if (!CFStringTokenizerAdvanceToNextToken(a5))
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(a5);
    v14 = [(__CFString *)a1 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
    v16 = 0;
    v11[2](v11, v14, CurrentTokenRange.location, CurrentTokenRange.length, &v16);
    v15 = v16;

    objc_autoreleasePoolPop(v12);
  }

  while (v15 != 1);
}

- (uint64_t)fp_isCJKLanguageIdentifier
{
  if (fp_isCJKLanguageIdentifier_onceToken != -1)
  {
    [NSString(FPAdditions) fp_isCJKLanguageIdentifier];
  }

  v2 = fp_isCJKLanguageIdentifier_cjkLanguages;

  return [v2 containsObject:a1];
}

+ (id)fp_hashForToken:()FPAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    memset(&v12, 0, sizeof(v12));
    v3 = a3;
    CC_SHA1_Init(&v12);
    v4 = v3;
    v5 = [v4 bytes];
    v6 = [v3 length];

    CC_SHA1_Update(&v12, v5, v6);
    *md = 0;
    v14 = 0;
    v15 = 0;
    CC_SHA1_Final(md, &v12);
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
    v8 = [v7 base64EncodedDataWithOptions:0];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (uint64_t)fp_coordinatorReadingOptions:()FPAdditions
{
  v3 = 109;
  v4 = 45;
  if ((a3 & 0x40000000) == 0)
  {
    v3 = 45;
  }

  v18 = v3;
  v5 = 112;
  if ((a3 & 0x20000000) == 0)
  {
    v5 = 45;
  }

  v6 = 99;
  if ((a3 & 0x80000) == 0)
  {
    v6 = 45;
  }

  v16 = v6;
  v17 = v5;
  v7 = 98;
  if ((a3 & 0x40000) == 0)
  {
    v7 = 45;
  }

  v8 = 114;
  if ((a3 & 0x20000) == 0)
  {
    v8 = 45;
  }

  v14 = v8;
  v15 = v7;
  v9 = 117;
  if ((a3 & 8) == 0)
  {
    v9 = 45;
  }

  v10 = 105;
  if ((a3 & 4) == 0)
  {
    v10 = 45;
  }

  v13 = v9;
  v11 = 115;
  if ((a3 & 2) == 0)
  {
    v11 = 45;
  }

  if (a3)
  {
    v4 = 119;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c%c%c%c%c%c (0x%lx)", v4, v11, v10, v13, v14, v15, v16, v17, v18, a3];
}

- (uint64_t)fp_splitKeyPathInProperty:()FPAdditions remainder:
{
  result = [a1 length];
  if (result)
  {
    v8 = result;
    result = [a1 rangeOfString:@"."];
    if (result)
    {
      v9 = result;
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = a1;
        v11 = 0;
        *a3 = a1;
      }

      else
      {
        if (result == v8 - 1)
        {
          return 0;
        }

        *a3 = [a1 substringWithRange:{0, result}];
        v11 = [a1 substringWithRange:{v9 + 1, v8 + ~v9}];
      }

      *a4 = v11;
      return 1;
    }
  }

  return result;
}

- (id)fp_valueForKeyPath:()FPAdditions
{
  if ([a3 isEqual:@"pathExtension"])
  {
    v4 = [a1 pathExtension];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__CFString)fp_relativePathWithRealpath:()FPAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ([v4 hasPrefix:a1])
  {
    v6 = [v5 length];
    if (v6 == [a1 length])
    {
      v7 = &stru_1F1F94B20;
      goto LABEL_15;
    }

    v8 = [v5 substringFromIndex:{objc_msgSend(a1, "length")}];
    if ([v8 length] && (objc_msgSend(v8, "isEqualToString:", @"/") & 1) == 0)
    {
      if ([v8 hasPrefix:@"/"])
      {
        v7 = [v8 substringFromIndex:1];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = &stru_1F1F94B20;
    }

    goto LABEL_14;
  }

  if (![a1 hasPrefix:v5])
  {
LABEL_10:
    v7 = 0;
    goto LABEL_15;
  }

  v8 = [a1 substringFromIndex:{objc_msgSend(v5, "length")}];
  v7 = &stru_1F1F94B20;
  if ([v8 length] && !objc_msgSend(v8, "isEqualToString:", @"/"))
  {
    v7 = 0;
  }

LABEL_14:

LABEL_15:

  return v7;
}

- (void)fp_realpath
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v6 = 138412546;
  v7 = a1;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] realpath(%@) failed: %{errno}d", &v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fp_representableHFSFileNameWithBase:()FPAdditions suffix:extension:makeDotFile:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fp_enumerateTokensInRange:()FPAdditions tokenizer:usingBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSString+FPAdditions.m" lineNumber:956 description:@"tokenizerRef may not be null."];
}

@end