@interface NSFileManager
+ (NSFileManager)defaultManager;
- (BOOL)_handleFaultedOutCloudDocFromSource:(id)a3 toDestination:(id)a4 handled:(BOOL *)a5 error:(id *)a6;
- (BOOL)_processCanAccessUbiquityIdentityToken;
- (BOOL)_processHasUbiquityContainerEntitlement;
- (BOOL)_processUsesCloudServices;
- (BOOL)_web_createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5;
- (BOOL)_web_createFileAtPathWithIntermediateDirectories:(id)a3 contents:(id)a4 attributes:(id)a5 directoryAttributes:(id)a6;
- (BOOL)_web_createIntermediateDirectoriesForPath_nowarn:(id)a3 attributes:(id)a4;
- (BOOL)_web_fileExistsAtPath_nowarn:(id)a3 isDirectory:(BOOL *)a4 traverseLink:(BOOL)a5;
- (BOOL)_web_removeFileOnlyAtPath:(id)a3;
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)copyItemAtURL:(id)a3 toURL:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)createDirectoryAtPath:(NSString *)path attributes:(NSDictionary *)attributes;
- (BOOL)createDirectoryAtURL:(NSURL *)url withIntermediateDirectories:(BOOL)createIntermediates attributes:(NSDictionary *)attributes error:(NSError *)error;
- (BOOL)createFileAtPath:(NSString *)path contents:(NSData *)data attributes:(NSDictionary *)attr;
- (BOOL)createSymbolicLinkAtURL:(NSURL *)url withDestinationURL:(NSURL *)destURL error:(NSError *)error;
- (BOOL)directoryCanBeCreatedAtPath:(id)a3;
- (BOOL)evictUbiquitousItemAtURL:(NSURL *)url error:(NSError *)error;
- (BOOL)getFileSystemRepresentation:(char *)a3 maxLength:(unint64_t)a4 withPath:(id)a5;
- (BOOL)isDeletableFileAtPath:(NSString *)path;
- (BOOL)isUbiquitousItemAtURL:(NSURL *)url;
- (BOOL)linkItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError *)error;
- (BOOL)linkItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL error:(NSError *)error;
- (BOOL)moveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError *)error;
- (BOOL)moveItemAtURL:(id)a3 toURL:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)replaceItemAtURL:(NSURL *)originalItemURL withItemAtURL:(NSURL *)newItemURL backupItemName:(NSString *)backupItemName options:(NSFileManagerItemReplacementOptions)options resultingItemURL:(NSURL *)resultingURL error:(NSError *)error;
- (BOOL)setUbiquitous:(BOOL)flag itemAtURL:(NSURL *)url destinationURL:(NSURL *)destinationURL error:(NSError *)error;
- (BOOL)startDownloadingUbiquitousItemAtURL:(NSURL *)url error:(NSError *)error;
- (BOOL)trashItemAtURL:(NSURL *)url resultingItemURL:(NSURL *)outResultingURL error:(NSError *)error;
- (NSArray)componentsToDisplayForPath:(NSString *)path;
- (NSArray)contentsOfDirectoryAtPath:(NSString *)path error:(NSError *)error;
- (NSArray)contentsOfDirectoryAtURL:(NSURL *)url includingPropertiesForKeys:(NSArray *)keys options:(NSDirectoryEnumerationOptions)mask error:(NSError *)error;
- (NSArray)subpathsAtPath:(NSString *)path;
- (NSArray)subpathsOfDirectoryAtPath:(NSString *)path error:(NSError *)error;
- (NSData)contentsAtPath:(NSString *)path;
- (NSDirectoryEnumerator)enumeratorAtPath:(NSString *)path;
- (NSDirectoryEnumerator)enumeratorAtURL:(NSURL *)url includingPropertiesForKeys:(NSArray *)keys options:(NSDirectoryEnumerationOptions)mask errorHandler:(void *)handler;
- (NSFileManager)init;
- (NSFileManager)retain;
- (NSString)displayNameAtPath:(NSString *)path;
- (NSURL)URLForPublishingUbiquitousItemAtURL:(NSURL *)url expirationDate:(NSDate *)outDate error:(NSError *)error;
- (NSURL)URLForUbiquityContainerIdentifier:(NSString *)containerIdentifier;
- (NSURL)containerURLForSecurityApplicationGroupIdentifier:(NSString *)groupIdentifier;
- (id)_URLForReplacingItemAtURL:(id)a3 error:(id *)a4;
- (id)_URLForTrashingItemAtURL:(id)a3 create:(BOOL)a4 error:(id *)a5;
- (id)_displayPathForPath:(id)a3;
- (id)_safeDelegate;
- (id)_web_pathWithUniqueFilenameForPath:(id)a3;
- (id)_web_startupVolumeName_nowarn;
- (id)directoryContentsAtPath:(id)a3 matchingExtension:(id)a4 options:(int64_t)a5 keepExtension:(BOOL)a6 error:(id *)a7;
- (id)ubiquityIdentityToken;
- (void)_performRemoveFileAtPath:(id)a3;
- (void)_web_backgroundRemoveFileAtPath:(id)a3;
- (void)_web_backgroundRemoveLeftoverFiles:(id)a3;
- (void)dealloc;
- (void)fetchLatestRemoteVersionOfItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)getFileProviderMessageInterfacesForItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)getFileProviderServicesForItemAtURL:(NSURL *)url completionHandler:(void *)completionHandler;
- (void)pauseSyncForUbiquitousItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)release;
- (void)resumeSyncForUbiquitousItemAtURL:(id)a3 withBehavior:(int64_t)a4 completionHandler:(id)a5;
- (void)setDelegate:(id)delegate;
- (void)synchronouslyGetFileProviderServiceWithName:(id)a3 forItemAtURL:(id)a4 completionHandler:(id)a5;
- (void)synchronouslyGetFileProviderServicesForItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)uploadLocalVersionOfUbiquitousItemAtURL:(id)a3 withConflictResolutionPolicy:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation NSFileManager

+ (NSFileManager)defaultManager
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__NSFileManager_defaultManager__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = a1;
  if (qword_1ED43F318 != -1)
  {
    dispatch_once(&qword_1ED43F318, v3);
  }

  return qword_1ED43F320;
}

- (NSFileManager)retain
{
  v3 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F320 != self)
  {
    v2.receiver = self;
    v2.super_class = NSFileManager;
    return [(NSFileManager *)&v2 retain];
  }

  return self;
}

- (void)release
{
  v3 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F320 != self)
  {
    v2.receiver = self;
    v2.super_class = NSFileManager;
    [(NSFileManager *)&v2 release];
  }
}

uint64_t __31__NSFileManager_defaultManager__block_invoke(uint64_t a1)
{
  result = [objc_allocWithZone(*(a1 + 32)) init];
  qword_1ED43F320 = result;
  return result;
}

- (NSFileManager)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSFileManager;
  v2 = [(NSFileManager *)&v4 init];
  if (v2)
  {
    v2->swiftBridge = [[_NSFileManagerBridge alloc] initWithFileManager:v2];
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F320 == self)
  {
    qword_1EA7BB378 = "You cannot deallocate the default file manager singleton";
    __break(1u);
  }

  v3.receiver = self;
  v3.super_class = NSFileManager;
  [(NSFileManager *)&v3 dealloc];
}

- (id)_safeDelegate
{
  if (dyld_program_sdk_at_least() && ((v3 = objc_opt_class(), v3 == NSFileManager) || (InstanceMethod = class_getInstanceMethod(v3, sel_delegate), InstanceMethod == class_getInstanceMethod(NSFileManager, sel_delegate))))
  {
    weakDelegateValue = self->_weakDelegateValue;

    return [(NSValue *)weakDelegateValue weakObjectValue];
  }

  else
  {

    return [(NSFileManager *)self delegate];
  }
}

- (BOOL)_processCanAccessUbiquityIdentityToken
{
  if (_processCanAccessUbiquityIdentityToken_once != -1)
  {
    dispatch_once(&_processCanAccessUbiquityIdentityToken_once, &__block_literal_global_374);
  }

  return _processCanAccessUbiquityIdentityToken_result;
}

- (BOOL)_processHasUbiquityContainerEntitlement
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__NSFileManager__processHasUbiquityContainerEntitlement__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED43F360 != -1)
  {
    dispatch_once(&qword_1ED43F360, v3);
  }

  return byte_1ED43F2F9;
}

void __56__NSFileManager__processHasUbiquityContainerEntitlement__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _processUsesCloudServices])
  {
    goto LABEL_2;
  }

  *task_info_out = 0u;
  v7 = 0u;
  task_info_outCnt = 8;
  task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  v2 = xpc_copy_entitlement_for_token();
  if (v2)
  {
    v3 = v2;
    if (object_getClass(v2) != MEMORY[0x1E69E9E50] || !xpc_array_get_count(v3))
    {
      xpc_release(v3);
      return;
    }

    string = xpc_array_get_string(v3, 0);
    xpc_release(v3);
    if (string)
    {
LABEL_2:
      if (qword_1ED43F3C8 != -1)
      {
        dispatch_once(&qword_1ED43F3C8, &__block_literal_global_666);
      }

      if (off_1ED43F368)
      {
        v1 = off_1ED43F368();
      }

      else
      {
        v1 = 0;
      }

      byte_1ED43F2F9 = v1;
    }
  }
}

- (BOOL)_processUsesCloudServices
{
  if (qword_1ED43F370 != -1)
  {
    dispatch_once(&qword_1ED43F370, &__block_literal_global_370);
  }

  return byte_1ED43F2FA;
}

void __42__NSFileManager__processUsesCloudServices__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  *task_info_out = 0u;
  v6 = 0u;
  task_info_outCnt = 8;
  task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt);
  v0 = xpc_copy_entitlement_for_token();
  if (v0)
  {
    v1 = v0;
    if (object_getClass(v0) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v1) && xpc_array_get_string(v1, 0))
    {
      byte_1ED43F2FA = 1;
    }

    xpc_release(v1);
  }

  if ((byte_1ED43F2FA & 1) == 0)
  {
    v2 = xpc_copy_entitlement_for_token();
    if (v2)
    {
      v3 = v2;
      byte_1ED43F2FA = object_getClass(v2) == MEMORY[0x1E69E9F10];
      xpc_release(v3);
    }
  }
}

uint64_t __55__NSFileManager__processCanAccessUbiquityIdentityToken__block_invoke()
{
  getpid();
  result = sandbox_check();
  _processCanAccessUbiquityIdentityToken_result = result == 0;
  return result;
}

- (id)ubiquityIdentityToken
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED43F3C8 != -1)
  {
    dispatch_once(&qword_1ED43F3C8, &__block_literal_global_666);
  }

  v4[0] = 0;
  if (off_1ED43F378)
  {
    off_1ED43F378(v4, 0);
    v2 = v4[0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSDirectoryEnumerator)enumeratorAtURL:(NSURL *)url includingPropertiesForKeys:(NSArray *)keys options:(NSDirectoryEnumerationOptions)mask errorHandler:(void *)handler
{
  if (!url)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: URL is nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  v6 = [[NSURLDirectoryEnumerator alloc] initWithURL:url includingPropertiesForKeys:keys options:mask errorHandler:handler];

  return v6;
}

- (NSArray)contentsOfDirectoryAtURL:(NSURL *)url includingPropertiesForKeys:(NSArray *)keys options:(NSDirectoryEnumerationOptions)mask error:(NSError *)error
{
  v41[129] = *MEMORY[0x1E69E9840];
  if (!url)
  {
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: URL is nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v32);
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  if (!keys && !mask)
  {
    keys = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695EB68]];
  }

  v12 = mask & 4;
  v13 = MEMORY[0x1865CEC90](*MEMORY[0x1E695E4A8], url, mask & 0x80000000 | (((mask >> 4) & 1) << 6) | (v12 >> 1), keys);
  if (v13)
  {
    v14 = v13;
    v41[0] = 0;
    *&v40.st_dev = 0;
    do
    {
      while (1)
      {
        v15 = MEMORY[0x1865CECB0](v14, &v40, v41);
        if (v15 != 1)
        {
          break;
        }

        [(NSArray *)v11 addObject:*&v40.st_dev];
      }
    }

    while (v15 != 2);
    v16 = v41[0];
    if (v41[0])
    {
      if (error)
      {
        *error = v41[0];
        v17 = v16;
      }

      else
      {
        CFRelease(v41[0]);
      }

      v11 = 0;
    }

    CFRelease(v14);
    return v11;
  }

  v34 = 0;
  v18 = [(NSURL *)url path];
  if (!v18)
  {
    v31 = _NSErrorWithFilePath(4, url);
    if (!v31)
    {
      return v11;
    }

    goto LABEL_44;
  }

  v19 = v18;
  v33 = error;
  v20 = [(NSFileManager *)self contentsOfDirectoryAtPath:v18 error:&v34];
  memset(&v40, 0, sizeof(v40));
  if ([(NSFileManager *)self getFileSystemRepresentation:v41 maxLength:1024 withPath:v19])
  {
    v21 = lstat(v41, &v40);
    if (v20)
    {
      if (!v21)
      {
        if ((v40.st_mode & 0xF000) == 0x4000)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v22 = [(NSArray *)v20 countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v37;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v37 != v24)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v36 + 1) + 8 * i);
                v27 = [v19 stringByAppendingPathComponent:v26];
                if ([(NSFileManager *)self getFileSystemRepresentation:v41 maxLength:1024 withPath:v27]&& !lstat(v41, &v40))
                {
                  v28 = [v26 characterAtIndex:0];
                  if (!v12 || (v28 != 46 ? (v29 = (v40.st_flags & 0x8000) == 0) : (v29 = 0), v29))
                  {
                    -[NSArray addObject:](v11, "addObject:", [MEMORY[0x1E695DFF8] fileURLWithPath:v27 isDirectory:(v40.st_mode & 0xF000) == 0x4000]);
                  }
                }
              }

              v23 = [(NSArray *)v20 countByEnumeratingWithState:&v36 objects:v35 count:16];
            }

            while (v23);
          }
        }

        else
        {
          v34 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(20, url, 1, 0, 0);
        }
      }
    }
  }

  error = v33;
  v31 = v34;
  if (v34)
  {
LABEL_44:
    v11 = 0;
    if (error)
    {
      *error = v31;
    }
  }

  return v11;
}

- (id)_URLForReplacingItemAtURL:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = __Block_byref_object_copy__4;
  v51 = __Block_byref_object_dispose__4;
  v52 = 0;
  if (![a3 fileSystemRepresentation] || !_dirhelper_relative() && (!objc_msgSend(objc_msgSend(a3, "URLByDeletingLastPathComponent"), "fileSystemRepresentation") || !_dirhelper_relative()) || (v6 = objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", __s, 1, 0), (v7 = v6) != 0) && ((*__s = 0, v46 = 0, v8 = *MEMORY[0x1E695DD70], v9 = objc_msgSend(v6, "getResourceValue:forKey:error:", __s, *MEMORY[0x1E695DD70], 0), (objc_msgSend(a3, "getResourceValue:forKey:error:", &v46, v8, 0) & 1) == 0) ? (v10 = objc_msgSend(objc_msgSend(a3, "URLByDeletingLastPathComponent"), "getResourceValue:forKey:error:", &v46, v8, 0)) : (v10 = 1), (v9 & v10) != 1 || (objc_msgSend(*__s, "isEqual:", v46) & 1) == 0))
  {
    v7 = 0;
  }

  getpid();
  v11 = sandbox_check();
  if (!v7 && v11)
  {
    v12 = [objc_msgSend(a3 "path")];
    v13 = _amkrtemp();
    if (v13 || (v17 = _NSOpenFileDescriptor(v12, 512, 448), (v17 & 0x80000000) == 0) && (close(v17), (v13 = _amkrtemp()) != 0))
    {
      if (mkdir(v13, 0x1C0u))
      {
        if (a4)
        {
          v14 = *__error();
          v15 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v14, a3, 0, 0, 0);
          *a4 = v15;
          if (![(NSError *)v15 localizedFailureReason])
          {
            NSLog(@"Foundation called mkdir(%s), it didn't return 0, and errno was set to %i.", v13, v14);
          }
        }
      }

      else
      {
        v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:+[NSString stringWithUTF8String:](NSString isDirectory:{"stringWithUTF8String:", v13), 1}];
        v48[5] = v34;
      }

      free(v13);
      goto LABEL_64;
    }

    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_24:
    v7 = [a3 URLByDeletingLastPathComponent];
    v16 = [_NSFoundationBundle() localizedStringForKey:@"(A Document Being Saved By %@)" value:&stru_1EEEFDF90 table:@"Document"] != 0;
    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:
  v46 = 0;
  if ([v7 getResourceValue:&v46 forKey:*MEMORY[0x1E695DDA8] error:0])
  {
    v18 = [v46 BOOLValue];
  }

  else
  {
    v18 = 0;
  }

  MainBundle = CFBundleGetMainBundle();
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"CFBundleName");
  if (!ValueForInfoDictionaryKey)
  {
    ValueForInfoDictionaryKey = [+[NSProcessInfo processInfo](NSProcessInfo processName];
  }

  v21 = [(NSString *)ValueForInfoDictionaryKey stringByReplacingOccurrencesOfString:@"/" withString:@":"];
  v22 = v21;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __49__NSFileManager__URLForReplacingItemAtURL_error___block_invoke;
  v42 = &unk_1E69F3720;
  v45 = v18;
  v43 = &v47;
  v44 = a4;
  if (!v16)
  {
    if ([(NSString *)v21 length]>= 0x41)
    {
      v22 = [(NSString *)v22 substringToIndex:64];
    }

    v30 = [v7 URLByAppendingPathComponent:+[NSString stringWithFormat:](NSString isDirectory:{"stringWithFormat:", @"NSIRD_%@_", v22), 0}];
    bzero(__s, 0x402uLL);
    [v30 getFileSystemRepresentation:__s maxLength:1018];
    if (v48[5])
    {
      goto LABEL_64;
    }

    v31 = &__s[strlen(__s)];
    while (1)
    {
      strcpy(v31, "XXXXXX");
      if (!mktemp(__s))
      {
        break;
      }

      v32 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:__s isDirectory:1 relativeToURL:0];
      v33 = v41(v40, v32);
      if (v33)
      {
        if (v33 != 17)
        {
          if (!a4)
          {
            goto LABEL_64;
          }

          v38 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v33, a3, 0, 0, 0);
          goto LABEL_73;
        }

        if (v48[5])
        {
          goto LABEL_64;
        }
      }

      else
      {
        v48[5] = v32;
        if (v32)
        {
          goto LABEL_64;
        }
      }
    }

    if (!a4)
    {
      goto LABEL_64;
    }

    v37 = __error();
    v38 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v37, a3, 0, 0, 0);
LABEL_73:
    *a4 = v38;
    goto LABEL_64;
  }

  if (v48[5])
  {
    goto LABEL_64;
  }

  v23 = 1;
  v24 = 1;
  while (1)
  {
    if (v24)
    {
      if (v23 < 2)
      {
        v25 = -[NSString initWithFormat:]([NSString alloc], "initWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"(A Document Being Saved By %@)" value:&stru_1EEEFDF90 table:@"Document"], v22);
      }

      else
      {
        v25 = -[NSString initWithFormat:]([NSString alloc], "initWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"(A Document Being Saved By %@ %ld)" value:&stru_1EEEFDF90 table:@"Document"], v22, v23);
      }
    }

    else if (v23 < 2)
    {
      v25 = -[NSString initWithString:]([NSString alloc], "initWithString:", [_NSFoundationBundle() localizedStringForKey:@"(A Document Being Saved)" value:&stru_1EEEFDF90 table:@"Document"]);
    }

    else
    {
      v25 = -[NSString initWithFormat:]([NSString alloc], "initWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"(A Document Being Saved %ld)" value:&stru_1EEEFDF90 table:@"Document"], v23);
    }

    v26 = v25;
    v27 = [v7 URLByAppendingPathComponent:v25 isDirectory:1];

    v28 = v41(v40, v27);
    v29 = v28;
    if (v28 <= 62)
    {
      if (v28)
      {
        if (v28 != 17)
        {
          goto LABEL_68;
        }

        if (v23 >= 1000)
        {
          if (a4)
          {
            v53 = @"NSDebugDescription";
            v54 = [NSString stringWithFormat:@"Too many temporary directories for %@ in %@", v22, v7];
            *a4 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 512, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1]);
          }

          goto LABEL_64;
        }

        ++v23;
      }

      else
      {
        v48[5] = v27;
      }

      goto LABEL_49;
    }

    if (v28 != 63)
    {
      break;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_68;
    }

    v24 = 0;
    v23 = 1;
LABEL_49:
    if (v48[5])
    {
      goto LABEL_64;
    }
  }

  if (v28 == 1000000)
  {
    goto LABEL_64;
  }

LABEL_68:
  if (a4)
  {
    v39 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v28, a3, 0, 0, 0);
    *a4 = v39;
    if (![(NSError *)v39 localizedFailureReason])
    {
      NSLog(@"Foundation called mkdir(%@), it didn't return 0, and errno was set to %i.", [v27 path], v29);
    }
  }

LABEL_64:
  v35 = v48[5];
  _Block_object_dispose(&v47, 8);
  return v35;
}

uint64_t __49__NSFileManager__URLForReplacingItemAtURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1000000;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __49__NSFileManager__URLForReplacingItemAtURL_error___block_invoke_2;
  v10 = &unk_1E69F36F8;
  v11 = a2;
  v12 = &v13;
  if (qword_1ED43F310 != -1)
  {
    dispatch_once(&qword_1ED43F310, &__block_literal_global_283);
  }

  if ((*(a1 + 48) & 1) != 0 || (_MergedGlobals_26 & 1) == 0)
  {
    (v9)(v8, a2);
  }

  else
  {
    v4 = objc_alloc_init(NSFileCoordinator);
    [(NSFileCoordinator *)v4 coordinateWritingItemAtURL:a2 options:0 error:*(a1 + 40) byAccessor:v8];
  }

  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v6;
}

int *__49__NSFileManager__URLForReplacingItemAtURL_error___block_invoke_2(uint64_t a1)
{
  result = mkdir([*(a1 + 32) fileSystemRepresentation], 0x1C0u);
  if (result)
  {
    result = __error();
    v3 = *result;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

uint64_t __49__NSFileManager__URLForReplacingItemAtURL_error___block_invoke_3()
{
  getpid();
  result = sandbox_check();
  _MergedGlobals_26 = result == 0;
  return result;
}

- (id)_URLForTrashingItemAtURL:(id)a3 create:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  v9 = [(NSFileManager *)self fp_trashURLForItemAtURL:a3 error:0];
  v10 = v9;
  if (!a5 || v9)
  {
    if (v9 && v6 && ![(NSFileManager *)self createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:a5])
    {
      return 0;
    }
  }

  else
  {
    *a5 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
  }

  return v10;
}

- (id)_displayPathForPath:(id)a3
{
  v4 = [NSMutableString stringWithCapacity:512];
  v5 = [a3 stringByStandardizingPath];
  if (([v5 isEqualToString:&stru_1EEEFDF90] & 1) == 0)
  {
    do
    {
      if ([v5 isEqualToString:@"/"])
      {
        break;
      }

      -[NSMutableString insertString:atIndex:](v4, "insertString:atIndex:", [+[NSFileManager defaultManager](NSFileManager displayNameAtPath:"displayNameAtPath:", v5], 0);
      v5 = [v5 stringByDeletingLastPathComponent];
      if (([v5 isEqualToString:&stru_1EEEFDF90] & 1) == 0)
      {
        [(NSMutableString *)v4 insertString:@"/" atIndex:0];
      }
    }

    while (![v5 isEqualToString:&stru_1EEEFDF90]);
  }

  if ([(NSString *)v4 isAbsolutePath])
  {
    if ([(NSString *)v4 hasPrefix:@"/Volumes"])
    {
      [(NSMutableString *)v4 deleteCharactersInRange:0, 8];
    }

    else if (![(NSString *)v4 hasPrefix:@"/Network"])
    {
      -[NSMutableString insertString:atIndex:](v4, "insertString:atIndex:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/%@", [+[NSFileManager defaultManager](NSFileManager displayNameAtPath:"displayNameAtPath:", @"/"]), 0);
    }
  }

  return v4;
}

- (BOOL)directoryCanBeCreatedAtPath:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a3 fileSystemRepresentation];
  if (([objc_msgSend(a3 "stringByDeletingLastPathComponent")] & 1) == 0 || access(v6, 3))
  {
    return 0;
  }

  if (!mkdir(v4, 0x1FFu))
  {
    rmdir(v4);
    return 1;
  }

  return *__error() == 17;
}

- (BOOL)isDeletableFileAtPath:(NSString *)path
{
  if (!path)
  {
    path = [(NSFileManager *)self currentDirectoryPath];
  }

  swiftBridge = self->swiftBridge;

  return [(_NSFileManagerBridge *)swiftBridge isDeletableFileAtPath:path];
}

- (NSString)displayNameAtPath:(NSString *)path
{
  if (path)
  {
    return [(_NSFileManagerBridge *)self->swiftBridge displayNameAtPath:?];
  }

  else
  {
    return 0;
  }
}

- (id)directoryContentsAtPath:(id)a3 matchingExtension:(id)a4 options:(int64_t)a5 keepExtension:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v42 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    strcpy(__s, ".");
    if (![(NSFileManager *)self getFileSystemRepresentation:&__s[1] maxLength:1023 withPath:a4])
    {
      return 0;
    }

    v11 = [a3 fileSystemRepresentation];
    v12 = __s;
    v13 = strlen(__s);
  }

  else
  {
    v11 = [a3 fileSystemRepresentation];
    v12 = 0;
    v13 = 0;
  }

  memset(&v41, 0, 512);
  v39 = 0;
  if (!v11)
  {
    if (a7)
    {
      v34 = __error();
      v35 = 0;
      v36 = *v34;
LABEL_34:
      v16 = 0;
      *a7 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v36, v35, 1, @"Folder", 0);
      return v16;
    }

    return 0;
  }

  v14 = opendir(v11);
  if (!v14)
  {
    if (a7)
    {
      v36 = *__error();
      v35 = [NSString stringWithUTF8String:v11];
      goto LABEL_34;
    }

    return 0;
  }

  v15 = v14;
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [objc_allocWithZone(NSCheapMutableString) init];
  if (v8)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  if (!readdir_r(v15, &v41, &v39) && v39)
  {
    d_name = v41.d_name;
    v38 = v16;
    do
    {
      if (v41.d_ino)
      {
        d_namlen = v41.d_namlen;
        if (v41.d_name[0] != 46 || v41.d_namlen != 1 && (v41.d_namlen != 2 || v41.d_name[1] != 46))
        {
          if (v13 < 1)
          {
            goto LABEL_25;
          }

          if (v13 < v41.d_namlen)
          {
            if (a5)
            {
              v21 = CFStringCreateWithFileSystemRepresentation(0, d_name);
              v22 = CFStringCreateWithFileSystemRepresentation(0, v12);
              v23 = d_name;
              v24 = v18;
              v25 = a5;
              v26 = v12;
              v27 = v17;
              v28 = v22;
              Length = CFStringGetLength(v21);
              v43.length = CFStringGetLength(v28);
              v43.location = Length - v43.length;
              v30 = CFStringCompareWithOptions(v21, v28, v43, 0x21uLL);
              v31 = v28;
              v17 = v27;
              v12 = v26;
              a5 = v25;
              v18 = v24;
              d_name = v23;
              v16 = v38;
              CFRelease(v31);
              CFRelease(v21);
              if (v30)
              {
                d_namlen = v41.d_namlen;
LABEL_25:
                v32 = [objc_allocWithZone(NSString) initWithBytes:d_name length:d_namlen - v18 encoding:4];
                if (v32)
                {
                  v33 = v32;
                  [v16 addObject:v32];
                }
              }
            }

            else if (!strcmp(&v41.d_name[v41.d_namlen - v13], v12))
            {
              goto LABEL_25;
            }
          }
        }
      }
    }

    while (!readdir_r(v15, &v41, &v39) && v39);
  }

  closedir(v15);
  return v16;
}

- (NSDirectoryEnumerator)enumeratorAtPath:(NSString *)path
{
  result = [NSFileAttributes attributesAtPath:path traverseLink:1];
  if (result)
  {
    v5 = [NSAllDescendantPathsEnumerator newWithPath:path prepend:0 attributes:result cross:1 depth:1];

    return v5;
  }

  return result;
}

- (NSArray)subpathsAtPath:(NSString *)path
{
  v3 = [(NSFileManager *)self enumeratorAtPath:path];

  return [(NSDirectoryEnumerator *)v3 allObjects];
}

- (BOOL)createDirectoryAtPath:(NSString *)path attributes:(NSDictionary *)attributes
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(NSString *)path getFileSystemRepresentation:v9 maxLength:1024])
  {
    return 0;
  }

  v7 = mkdir(v9, 0x1FFu);
  result = v7 == 0;
  if (attributes)
  {
    if (!v7)
    {
      [(NSFileManager *)self changeFileAttributes:attributes atPath:path];
      return 1;
    }
  }

  return result;
}

- (BOOL)createFileAtPath:(NSString *)path contents:(NSData *)data attributes:(NSDictionary *)attr
{
  if (path)
  {
    if (_NSIsNSString())
    {
      v9 = [(NSData *)data writeToFile:path atomically:1];
      if (attr && v9)
      {
        [(NSFileManager *)self setAttributes:attr ofItemAtPath:path error:0];
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      swiftBridge = self->swiftBridge;

      LOBYTE(v9) = [(_NSFileManagerBridge *)swiftBridge createFileAtPath:path contents:data attributes:attr];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (NSData)contentsAtPath:(NSString *)path
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:path];

  return v3;
}

- (BOOL)getFileSystemRepresentation:(char *)a3 maxLength:(unint64_t)a4 withPath:(id)a5
{
  if (a5)
  {
    return [a5 getFileSystemRepresentation:a3 maxLength:a4];
  }

  *a3 = 0;
  return 0;
}

- (NSArray)componentsToDisplayForPath:(NSString *)path
{
  v21 = *MEMORY[0x1E69E9840];
  if (!path)
  {
    return 0;
  }

  if (![objc_msgSend(MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByResolvingSymlinksInPath](path, "stringByResolvingSymlinksInPath")), "fileReferenceURL"}])
  {
    return 0;
  }

  v3 = _CFURLCreateDisplayPathComponentsArray();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = *MEMORY[0x1E695DC10];
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v15 = 0;
        if ([v11 getResourceValue:&v15 forKey:v9 error:0])
        {
          v12 = v15 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {

          goto LABEL_19;
        }

        [v5 insertObject:? atIndex:?];
        ++v10;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (v5)
  {
    v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  }

  else
  {
LABEL_19:
    v13 = 0;
  }

  CFRelease(v4);
  return v13;
}

- (void)setDelegate:(id)delegate
{
  self->_delegate = delegate;

  if (delegate)
  {
    v5 = [NSValue valueWithWeakObject:delegate];
  }

  else
  {
    v5 = 0;
  }

  self->_weakDelegateValue = v5;
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  if (!a3)
  {
    v9 = _CFExecutableLinkedOnOrAfter();
    if (!v9)
    {
      return v9;
    }

    v10 = [NSString stringWithFormat:@"%@: source path is nil", _NSMethodExceptionProem(self, a2)];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  if (!a4)
  {
    v10 = [NSString stringWithFormat:@"%@: destination path is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_10;
  }

  swiftBridge = self->swiftBridge;

  LOBYTE(v9) = [_NSFileManagerBridge copyItemAtPath:"copyItemAtPath:toPath:options:error:" toPath:? options:? error:?];
  return v9;
}

- (BOOL)copyItemAtURL:(id)a3 toURL:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  if (!a3)
  {
    v9 = _CFExecutableLinkedOnOrAfter();
    if (!v9)
    {
      return v9;
    }

    v10 = [NSString stringWithFormat:@"%@: source URL is nil", _NSMethodExceptionProem(self, a2)];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  if (!a4)
  {
    v10 = [NSString stringWithFormat:@"%@: destination URL is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_10;
  }

  swiftBridge = self->swiftBridge;

  LOBYTE(v9) = [_NSFileManagerBridge copyItemAt:"copyItemAt:to:options:error:" to:? options:? error:?];
  return v9;
}

- (BOOL)_handleFaultedOutCloudDocFromSource:(id)a3 toDestination:(id)a4 handled:(BOOL *)a5 error:(id *)a6
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  v10 = _CFURLPromiseCopyPhysicalURL();
  v11 = v10;
  if (!v10 || v10 == a3)
  {
    if (!v10)
    {
      return 1;
    }

LABEL_13:
    CFRelease(v11);
    return 1;
  }

  if ([a3 checkResourceIsReachableAndReturnError:0])
  {
    goto LABEL_13;
  }

  if (qword_1ED43F308 != -1)
  {
    dispatch_once(&qword_1ED43F308, &__block_literal_global_10);
  }

  +[NSFileManager defaultManager];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = 0;
  if (([+[NSFileManager br_movePromisedItemAtURL:"br_movePromisedItemAtURL:toURL:error:"]!= 0)
  {
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_13;
  }

  if ([v15 code] == 4)
  {
    if ([objc_msgSend(v15 "domain")])
    {
      v13 = 4;
    }

    else
    {
      v13 = 512;
    }
  }

  else
  {
    v13 = 512;
  }

  v16[0] = @"NSFilePath";
  v17[0] = [a3 path];
  v16[1] = @"NSDestinationFilePath";
  v17[1] = [a4 path];
  v17[2] = @"Move";
  v16[2] = @"NSUserStringVariant";
  v16[3] = @"NSUnderlyingError";
  v17[3] = v15;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (a6)
  {
    *a6 = [[NSError alloc] initWithDomain:@"NSCocoaErrorDomain" code:v13 userInfo:v14];
  }

  CFRelease(v11);
  return 0;
}

- (BOOL)moveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError *)error
{
  if (!srcPath && _CFExecutableLinkedOnOrAfter())
  {
    v12 = [NSString stringWithFormat:@"%@: source path is nil", _NSMethodExceptionProem(self, a2)];
LABEL_9:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0]);
  }

  if (!dstPath)
  {
    v12 = [NSString stringWithFormat:@"%@: destination path is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_9;
  }

  swiftBridge = self->swiftBridge;

  return [(_NSFileManagerBridge *)swiftBridge moveItemAtPath:srcPath toPath:dstPath options:0 error:error];
}

- (BOOL)moveItemAtURL:(id)a3 toURL:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  if (!a3)
  {
    v9 = _CFExecutableLinkedOnOrAfter();
    if (!v9)
    {
      return v9;
    }

    v10 = [NSString stringWithFormat:@"%@: source URL is nil", _NSMethodExceptionProem(self, a2)];
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  if (!a4)
  {
    v10 = [NSString stringWithFormat:@"%@: destination URL is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_10;
  }

  swiftBridge = self->swiftBridge;

  LOBYTE(v9) = [_NSFileManagerBridge moveItemAt:"moveItemAt:to:options:error:" to:? options:? error:?];
  return v9;
}

- (BOOL)linkItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError *)error
{
  if (!srcPath && _CFExecutableLinkedOnOrAfter())
  {
    v12 = [NSString stringWithFormat:@"%@: source path is nil", _NSMethodExceptionProem(self, a2)];
LABEL_9:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0]);
  }

  if (!dstPath)
  {
    v12 = [NSString stringWithFormat:@"%@: destination path is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_9;
  }

  swiftBridge = self->swiftBridge;

  return [(_NSFileManagerBridge *)swiftBridge linkItemAtPath:srcPath toPath:dstPath error:error];
}

- (BOOL)linkItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL error:(NSError *)error
{
  if (!srcURL && _CFExecutableLinkedOnOrAfter())
  {
    v12 = [NSString stringWithFormat:@"%@: source URL is nil", _NSMethodExceptionProem(self, a2)];
LABEL_9:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0]);
  }

  if (!dstURL)
  {
    v12 = [NSString stringWithFormat:@"%@: destination URL is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_9;
  }

  swiftBridge = self->swiftBridge;

  return [(_NSFileManagerBridge *)swiftBridge linkItemAt:srcURL to:dstURL error:error];
}

- (BOOL)trashItemAtURL:(NSURL *)url resultingItemURL:(NSURL *)outResultingURL error:(NSError *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!url)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: source URL is nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v16);
  }

  if ([(NSURL *)url isFileURL])
  {
    if (qword_1ED43F3C0 != -1)
    {
      dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
    }

    v17[0] = 0;
    v9 = [(NSFileManager *)self fp_trashItemAtURL:url resultingItemURL:outResultingURL error:v17];
    v10 = v9;
    if (error && (v9 & 1) == 0)
    {
      v11 = v17[0];
      if ([objc_msgSend(v17[0] "domain")])
      {
        v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v11, "userInfo")}];
        v13 = [v11 code];
      }

      else
      {
        v12 = [MEMORY[0x1E695DF90] dictionaryWithObject:v11 forKey:@"NSUnderlyingError"];
        v13 = 512;
      }

      [v12 setObject:url forKey:@"NSURL"];
      [v12 setObject:@"Trash" forKey:@"NSUserStringVariant"];
      v14 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v13 userInfo:v12];
      goto LABEL_14;
    }
  }

  else
  {
    if (error)
    {
      v14 = _NSErrorWithFilePath(262, url);
      v10 = 0;
LABEL_14:
      *error = v14;
      return v10;
    }

    return 0;
  }

  return v10;
}

- (BOOL)createDirectoryAtURL:(NSURL *)url withIntermediateDirectories:(BOOL)createIntermediates attributes:(NSDictionary *)attributes error:(NSError *)error
{
  if (!url)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: URL is nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  swiftBridge = self->swiftBridge;

  return [_NSFileManagerBridge createDirectoryAt:"createDirectoryAt:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:? attributes:? error:?];
}

- (NSArray)contentsOfDirectoryAtPath:(NSString *)path error:(NSError *)error
{
  if (path)
  {
    swiftBridge = self->swiftBridge;

    return [_NSFileManagerBridge contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:?];
  }

  else
  {
    if (error)
    {
      *error = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(14, 0, 1, @"Folder", 0);
    }

    return 0;
  }
}

- (NSArray)subpathsOfDirectoryAtPath:(NSString *)path error:(NSError *)error
{
  if (!path && _CFExecutableLinkedOnOrAfter())
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: path is nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v10);
  }

  swiftBridge = self->swiftBridge;

  return [(_NSFileManagerBridge *)swiftBridge subpathsOfDirectoryAtPath:path error:error];
}

- (BOOL)createSymbolicLinkAtURL:(NSURL *)url withDestinationURL:(NSURL *)destURL error:(NSError *)error
{
  if (!url)
  {
    v7 = [NSString stringWithFormat:@"%@: URL is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  if (!destURL)
  {
    v7 = [NSString stringWithFormat:@"%@: destURL is nil", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  swiftBridge = self->swiftBridge;

  return [_NSFileManagerBridge createSymbolicLinkAt:"createSymbolicLinkAt:withDestinationURL:error:" withDestinationURL:? error:?];
}

- (BOOL)replaceItemAtURL:(NSURL *)originalItemURL withItemAtURL:(NSURL *)newItemURL backupItemName:(NSString *)backupItemName options:(NSFileManagerItemReplacementOptions)options resultingItemURL:(NSURL *)resultingURL error:(NSError *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!originalItemURL)
  {
    v13 = [NSString stringWithFormat:@"%@: original item URL is nil", _NSMethodExceptionProem(self, a2)];
    goto LABEL_12;
  }

  if (!newItemURL)
  {
    v13 = [NSString stringWithFormat:@"%@: new item URL is nil", _NSMethodExceptionProem(self, a2)];
LABEL_12:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  v14 = 0;
  v15[0] = 0;
  v10 = MEMORY[0x1865CFAC0](0, originalItemURL, newItemURL, 0, backupItemName, (8 * options) & 0x10 | (2 * (options & 1)), v15, &v14);
  if (!v10)
  {
    v11 = v14;
    if (error)
    {
      *error = v14;
      return v10 != 0;
    }

LABEL_8:
    CFRelease(v11);
    return v10 != 0;
  }

  v11 = v15[0];
  if (!resultingURL)
  {
    goto LABEL_8;
  }

  *resultingURL = v15[0];
  return v10 != 0;
}

- (BOOL)startDownloadingUbiquitousItemAtURL:(NSURL *)url error:(NSError *)error
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  if (off_1ED43F328)
  {
    v18 = 0;
    v6 = off_1ED43F328(url, &v18);
    v7 = v6;
    if (error)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      v9 = _cocoaDomainErrorForLibrarianError(url, v18, 0);
LABEL_19:
      *error = v9;
    }
  }

  else
  {
    if (qword_1ED43F3C8 != -1)
    {
      dispatch_once(&qword_1ED43F3C8, &__block_literal_global_666);
    }

    if (!off_1ED43F330)
    {
      if (!error)
      {
        return 0;
      }

      v9 = _librarianMissingError(0);
      v7 = 0;
      goto LABEL_19;
    }

    v10 = qos_class_main();
    v11 = dispatch_queue_attr_make_with_qos_class(0, v10, 0);
    v12 = dispatch_queue_create("com.apple.NSFileManager.startDownloadingUbiquitousItemAtURL:error:", v11);
    v13 = dispatch_semaphore_create(0);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    dispatch_retain(v13);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__NSFileManager_startDownloadingUbiquitousItemAtURL_error___block_invoke;
    v17[3] = &unk_1E69F3748;
    v17[4] = v13;
    v17[5] = &v18;
    off_1ED43F330(url, v12, v17);
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v12);
    dispatch_release(v13);
    v14 = v19[5];
    v7 = v14 == 0;
    if (v14)
    {
      if (error)
      {
        *error = _cocoaDomainErrorForLibrarianError(url, v14, 0);
        v14 = v19[5];
      }

      v15 = v14;
    }

    _Block_object_dispose(&v18, 8);
  }

  return v7;
}

void __59__NSFileManager_startDownloadingUbiquitousItemAtURL_error___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  dispatch_semaphore_signal(*(a1 + 32));
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

- (BOOL)setUbiquitous:(BOOL)flag itemAtURL:(NSURL *)url destinationURL:(NSURL *)destinationURL error:(NSError *)error
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F3C8 != -1)
  {
    dispatch_once(&qword_1ED43F3C8, &__block_literal_global_666);
  }

  if (off_1ED43F338)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v19 = __62__NSFileManager_setUbiquitous_itemAtURL_destinationURL_error___block_invoke;
    v20 = &unk_1E69F3770;
    v22 = flag;
    v21 = url;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    if (+[NSFileCoordinator _currentFileCoordinator])
    {
      v10 = v19(v18, url, destinationURL, error);
      *(v15 + 24) = v10;
    }

    else
    {
      v11 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__NSFileManager_setUbiquitous_itemAtURL_destinationURL_error___block_invoke_3;
      v13[3] = &unk_1E69F3798;
      v13[6] = &v14;
      v13[7] = error;
      v13[4] = v11;
      v13[5] = v18;
      [(NSFileCoordinator *)v11 coordinateWritingItemAtURL:url options:2 writingItemAtURL:destinationURL options:0 error:error byAccessor:v13];

      v10 = *(v15 + 24);
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
    if (error)
    {
      *error = _librarianMissingError(0);
    }
  }

  return v10 & 1;
}

BOOL __62__NSFileManager_setUbiquitous_itemAtURL_destinationURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, NSError **a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v8 = qos_class_main();
  v9 = dispatch_queue_attr_make_with_qos_class(0, v8, 0);
  v10 = dispatch_queue_create("com.apple.NSFileManager.setUbiquitous:itemAtURL:destinationURL:error:", v9);
  v11 = dispatch_semaphore_create(0);
  dispatch_retain(v11);
  v12 = *(a1 + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__NSFileManager_setUbiquitous_itemAtURL_destinationURL_error___block_invoke_2;
  v17[3] = &unk_1E69F3748;
  v17[4] = v11;
  v17[5] = &v18;
  off_1ED43F338(a2, v12, a3, v10, v17);
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v10);
  dispatch_release(v11);
  v13 = v19[5];
  if (a4 && v13)
  {
    *a4 = _cocoaDomainErrorForLibrarianError(*(a1 + 32), v13, 0);
    v13 = v19[5];
  }

  v14 = v13;
  v15 = v19[5] == 0;
  _Block_object_dispose(&v18, 8);
  return v15;
}

void __62__NSFileManager_setUbiquitous_itemAtURL_destinationURL_error___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  dispatch_semaphore_signal(*(a1 + 32));
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

uint64_t __62__NSFileManager_setUbiquitous_itemAtURL_destinationURL_error___block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = result;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v7 = a1[4];

    return [v7 itemAtURL:a2 didMoveToURL:a3];
  }

  return result;
}

- (BOOL)isUbiquitousItemAtURL:(NSURL *)url
{
  BOOLean[1] = *MEMORY[0x1E69E9840];
  if (!url)
  {
    return 0;
  }

  BOOLean[0] = 0;
  if (!CFURLCopyResourcePropertyForKey(url, *MEMORY[0x1E695EB88], BOOLean, 0) || BOOLean[0] == 0)
  {
    return 0;
  }

  v4 = CFBooleanGetValue(BOOLean[0]) != 0;
  CFRelease(BOOLean[0]);
  return v4;
}

- (BOOL)evictUbiquitousItemAtURL:(NSURL *)url error:(NSError *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  if (off_1ED43F340)
  {
    v20 = 0;
    v6 = off_1ED43F340(url, &v20);
    v7 = v6;
    if (error)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      v9 = v20;
      v10 = [(NSError *)v20 domain];
      if (![(NSString *)v10 isEqual:@"NSCocoaErrorDomain"])
      {
        if ([(NSString *)v10 isEqual:@"NSPOSIXErrorDomain"]&& [(NSError *)v9 code]== 45)
        {
          v27[0] = @"NSUnderlyingError";
          v21 = v9;
          v11 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3328, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:v27 count:1]);
        }

        else
        {
          v27[0] = @"NSUnderlyingError";
          v21 = v9;
          v11 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 512, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:v27 count:1]);
        }

        v9 = v11;
      }

      *error = v9;
    }
  }

  else
  {
    if (qword_1ED43F3C8 != -1)
    {
      dispatch_once(&qword_1ED43F3C8, &__block_literal_global_666);
    }

    if (off_1ED43F348)
    {
      v12 = qos_class_main();
      v13 = dispatch_queue_attr_make_with_qos_class(0, v12, 0);
      v14 = dispatch_queue_create("com.apple.NSFileManager.evictUbiquitousItemAtURL:error:", v13);
      v15 = dispatch_semaphore_create(0);
      v21 = 0;
      v22 = &v21;
      v23 = 0x3052000000;
      v24 = __Block_byref_object_copy__4;
      v25 = __Block_byref_object_dispose__4;
      v26 = 0;
      dispatch_retain(v15);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __48__NSFileManager_evictUbiquitousItemAtURL_error___block_invoke;
      v19[3] = &unk_1E69F3748;
      v19[4] = v15;
      v19[5] = &v21;
      off_1ED43F348(url, v14, v19);
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v14);
      dispatch_release(v15);
      v16 = v22[5];
      v7 = v16 == 0;
      if (v16)
      {
        if (error)
        {
          *error = _cocoaDomainErrorForLibrarianError(url, v16, 0);
          v16 = v22[5];
        }

        v17 = v16;
      }

      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v7 = 0;
      if (error)
      {
        *error = _librarianMissingError(0);
      }
    }
  }

  return v7;
}

void __48__NSFileManager_evictUbiquitousItemAtURL_error___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  dispatch_semaphore_signal(*(a1 + 32));
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

- (NSURL)URLForUbiquityContainerIdentifier:(NSString *)containerIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F3C8 != -1)
  {
    dispatch_once(&qword_1ED43F3C8, &__block_literal_global_666);
  }

  if (!off_1ED43F350)
  {
    return 0;
  }

  v4 = qos_class_main();
  v5 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
  v6 = dispatch_queue_create("com.apple.NSFileManager.URLForUbiquityContainerIdentifier:", v5);
  v7 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  dispatch_retain(v7);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__NSFileManager_URLForUbiquityContainerIdentifier___block_invoke;
  v10[3] = &unk_1E69F37C0;
  v10[4] = v7;
  v10[5] = &v11;
  off_1ED43F350(containerIdentifier, v6, v10);
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v6);
  dispatch_release(v7);
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

void __51__NSFileManager_URLForUbiquityContainerIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [a2 copy];
  }

  *(*(*(a1 + 40) + 8) + 40) = v4;
  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *(a1 + 32);

  dispatch_release(v5);
}

- (NSURL)URLForPublishingUbiquitousItemAtURL:(NSURL *)url expirationDate:(NSDate *)outDate error:(NSError *)error
{
  v36 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F3C8 != -1)
  {
    dispatch_once(&qword_1ED43F3C8, &__block_literal_global_666);
  }

  if (off_1ED43F358)
  {
    v8 = qos_class_main();
    v9 = dispatch_queue_attr_make_with_qos_class(0, v8, 0);
    v10 = dispatch_queue_create("com.apple.NSFileManager.URLForPublishingUbiquitousItemAtURL:expirationDate:error:", v9);
    v11 = dispatch_semaphore_create(0);
    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = __Block_byref_object_copy__4;
    v34 = __Block_byref_object_dispose__4;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3052000000;
    v27 = __Block_byref_object_copy__4;
    v28 = __Block_byref_object_dispose__4;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    dispatch_retain(v11);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__NSFileManager_URLForPublishingUbiquitousItemAtURL_expirationDate_error___block_invoke;
    v17[3] = &unk_1E69F37E8;
    v17[6] = &v24;
    v17[7] = &v18;
    v17[4] = v11;
    v17[5] = &v30;
    off_1ED43F358(url, v10, v17);
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v10);
    dispatch_release(v11);
    v12 = v25[5];
    v13 = v19[5];
    v14 = v19[5];
    if (v14)
    {
      if (error)
      {
        *error = _cocoaDomainErrorForLibrarianError(url, v14, 1);
      }
    }

    else if (outDate)
    {
      *outDate = v25[5];
    }

    v15 = v31[5];
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v15 = 0;
    if (error)
    {
      *error = _librarianMissingError(1);
    }
  }

  return v15;
}

void __74__NSFileManager_URLForPublishingUbiquitousItemAtURL_expirationDate_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = [a4 copy];
    v6 = 56;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
    v5 = [a3 copy];
    v6 = 48;
  }

  *(*(*(a1 + v6) + 8) + 40) = v5;
  dispatch_semaphore_signal(*(a1 + 32));
  v8 = *(a1 + 32);

  dispatch_release(v8);
}

- (NSURL)containerURLForSecurityApplicationGroupIdentifier:(NSString *)groupIdentifier
{
  [(NSString *)groupIdentifier UTF8String];
  result = container_create_or_lookup_app_group_path_by_app_group_identifier();
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:result isDirectory:1 relativeToURL:0];
    free(v4);
    return v5;
  }

  return result;
}

- (void)pauseSyncForUbiquitousItemAtURL:(id)a3 completionHandler:(id)a4
{
  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  v6 = off_1ED43F380;
  if (off_1ED43F380)
  {

    v6(a3, a4);
  }

  else
  {
    v7 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v8 = *(a4 + 2);

    v8(a4, v7);
  }
}

- (void)resumeSyncForUbiquitousItemAtURL:(id)a3 withBehavior:(int64_t)a4 completionHandler:(id)a5
{
  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  v8 = off_1ED43F388;
  if (off_1ED43F388)
  {

    v8(a3, a4, a5);
  }

  else
  {
    v9 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v10 = *(a5 + 2);

    v10(a5, v9);
  }
}

- (void)fetchLatestRemoteVersionOfItemAtURL:(id)a3 completionHandler:(id)a4
{
  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  v6 = off_1ED43F390;
  if (off_1ED43F390)
  {

    v6(a3, a4);
  }

  else
  {
    v7 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v8 = *(a4 + 2);

    v8(a4, 0, v7);
  }
}

- (void)uploadLocalVersionOfUbiquitousItemAtURL:(id)a3 withConflictResolutionPolicy:(int64_t)a4 completionHandler:(id)a5
{
  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  v8 = off_1ED43F398;
  if (off_1ED43F398)
  {

    v8(a3, a4, a5);
  }

  else
  {
    v9 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v10 = *(a5 + 2);

    v10(a5, 0, v9);
  }
}

- (void)getFileProviderMessageInterfacesForItemAtURL:(id)a3 completionHandler:(id)a4
{
  v9[5] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: completionHandler is NULL", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  if (off_1ED43F3A0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__NSFileManager_getFileProviderMessageInterfacesForItemAtURL_completionHandler___block_invoke;
    v9[3] = &unk_1E69F3848;
    v9[4] = a4;
    off_1ED43F3A0(a3, v9);
  }

  else
  {
    v6 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v7 = *(a4 + 2);

    v7(a4, 0, v6);
  }
}

void __80__NSFileManager_getFileProviderMessageInterfacesForItemAtURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[7] = *MEMORY[0x1E69E9840];
  v6 = qos_class_self();
  global_queue = dispatch_get_global_queue(v6, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__NSFileManager_getFileProviderMessageInterfacesForItemAtURL_completionHandler___block_invoke_2;
  v9[3] = &unk_1E69F3820;
  v8 = *(a1 + 32);
  v9[5] = a3;
  v9[6] = v8;
  v9[4] = a2;
  dispatch_async(global_queue, v9);
}

- (void)getFileProviderServicesForItemAtURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  v9[5] = *MEMORY[0x1E69E9840];
  if (!completionHandler)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: completionHandler is NULL", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  if (off_1ED43F3A8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__NSFileManager_getFileProviderServicesForItemAtURL_completionHandler___block_invoke;
    v9[3] = &unk_1E69F3898;
    v9[4] = completionHandler;
    off_1ED43F3A8(url, 0, v9);
  }

  else
  {
    v6 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v7 = *(completionHandler + 2);

    v7(completionHandler, 0, v6);
  }
}

void __71__NSFileManager_getFileProviderServicesForItemAtURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[9] = *MEMORY[0x1E69E9840];
  v10 = qos_class_self();
  global_queue = dispatch_get_global_queue(v10, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__NSFileManager_getFileProviderServicesForItemAtURL_completionHandler___block_invoke_2;
  v13[3] = &unk_1E69F3870;
  v12 = *(a1 + 32);
  v13[4] = a5;
  v13[5] = a3;
  v13[6] = a2;
  v13[7] = v12;
  v13[8] = a4;
  dispatch_async(global_queue, v13);
}

void __71__NSFileManager_getFileProviderServicesForItemAtURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = dispatch_group_create();
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [[NSFileProviderService alloc] initWithName:v10 endpointCreatingProxy:*(a1 + 48) requestFinishedGroup:v3];
          [v4 setObject:v11 forKey:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
    (*(*(a1 + 56) + 16))();

    global_queue = dispatch_get_global_queue(17, 2uLL);
    dispatch_group_notify(v3, global_queue, *(a1 + 64));
    dispatch_release(v3);
  }
}

- (void)synchronouslyGetFileProviderServicesForItemAtURL:(id)a3 completionHandler:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: completionHandler is NULL", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v20);
  }

  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  if (off_1ED43F3A8)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3052000000;
    v43 = __Block_byref_object_copy__4;
    v44 = __Block_byref_object_dispose__4;
    v45 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3052000000;
    v37 = __Block_byref_object_copy__4;
    v38 = __Block_byref_object_dispose__4;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy__383;
    v32 = __Block_byref_object_dispose__384;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__NSFileManager_synchronouslyGetFileProviderServicesForItemAtURL_completionHandler___block_invoke;
    v21[3] = &unk_1E69F38C0;
    v21[4] = &v22;
    v21[5] = &v40;
    v21[6] = &v34;
    v21[7] = &v28;
    off_1ED43F3A8(a3, 1, v21);
    if (v23[5])
    {
      (*(a4 + 2))(a4, 0);
    }

    else
    {
      v8 = dispatch_group_create();
      v9 = objc_alloc(MEMORY[0x1E695DF90]);
      v10 = [v9 initWithCapacity:{objc_msgSend(v35[5], "count")}];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v11 = v35[5];
      v12 = [v11 countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v12)
      {
        v13 = *v48;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v48 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v47 + 1) + 8 * i);
            v16 = [NSFileProviderService alloc];
            v17 = [(NSFileProviderService *)v16 initWithName:v15 endpointCreatingProxy:v41[5] requestFinishedGroup:v8];
            [v10 setObject:v17 forKey:v15];
          }

          v12 = [v11 countByEnumeratingWithState:&v47 objects:v46 count:16];
        }

        while (v12);
      }

      v18 = [v10 copy];
      (*(a4 + 2))(a4, v18, 0);

      global_queue = dispatch_get_global_queue(17, 2uLL);
      dispatch_group_notify(v8, global_queue, v29[5]);
      dispatch_release(v8);
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v6 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v7 = *(a4 + 2);

    v7(a4, 0, v6);
  }
}

id __84__NSFileManager_synchronouslyGetFileProviderServicesForItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a5)
  {
    result = a5;
    v7 = 32;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *(*(*(a1 + 48) + 8) + 40) = a3;
    result = [a4 copy];
    v7 = 56;
  }

  *(*(*(a1 + v7) + 8) + 40) = result;
  return result;
}

- (void)synchronouslyGetFileProviderServiceWithName:(id)a3 forItemAtURL:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: completionHandler is NULL", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v14);
  }

  if (qword_1ED43F3C0 != -1)
  {
    dispatch_once(&qword_1ED43F3C0, &__block_literal_global_650);
  }

  if (off_1ED43F3B0)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy__4;
    v32 = __Block_byref_object_dispose__4;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__383;
    v26 = __Block_byref_object_dispose__384;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__4;
    v20 = __Block_byref_object_dispose__4;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__NSFileManager_synchronouslyGetFileProviderServiceWithName_forItemAtURL_completionHandler___block_invoke;
    v15[3] = &unk_1E69F38E8;
    v15[4] = &v16;
    v15[5] = &v28;
    v15[6] = &v22;
    off_1ED43F3B0(a4, a3, 1, v15);
    if (v17[5])
    {
      (*(a5 + 2))(a5, 0);
    }

    else
    {
      v10 = dispatch_group_create();
      v11 = [NSFileProviderService alloc];
      v12 = [(NSFileProviderService *)v11 initWithName:a3 endpointCreatingProxy:v29[5] requestFinishedGroup:v10];
      (*(a5 + 2))(a5, v12, 0);

      global_queue = dispatch_get_global_queue(17, 2uLL);
      dispatch_group_notify(v10, global_queue, v23[5]);
      dispatch_release(v10);
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v8 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v9 = *(a5 + 2);

    v9(a5, 0, v8);
  }
}

id __92__NSFileManager_synchronouslyGetFileProviderServiceWithName_forItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    result = a4;
    v6 = 32;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    result = [a3 copy];
    v6 = 48;
  }

  *(*(*(a1 + v6) + 8) + 40) = result;
  return result;
}

- (BOOL)_web_createFileAtPathWithIntermediateDirectories:(id)a3 contents:(id)a4 attributes:(id)a5 directoryAttributes:(id)a6
{
  if ([NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:? attributes:?])
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](self, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [a3 stringByDeletingLastPathComponent], 1, a6, 0);
    if (v11)
    {

      LOBYTE(v11) = [(NSFileManager *)self createFileAtPath:a3 contents:a4 attributes:a5];
    }
  }

  return v11;
}

- (BOOL)_web_createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5
{
  v8 = [(NSFileManager *)self createFileAtPath:a3 contents:a4 attributes:?];
  if (v8)
  {
    [(NSFileManager *)self _web_changeFinderAttributes:a5 forFileAtPath:a3];
  }

  return v8;
}

- (void)_performRemoveFileAtPath:(id)a3
{
  _CFAutoreleasePoolPush();
  [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:a3, 0];

  _CFAutoreleasePoolPop();
}

- (void)_web_backgroundRemoveFileAtPath:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11[0] = 0;
  v9 = 0;
  if (_NSCreateTemporaryFile(a3, v11, &v9, &v10, 0))
  {
    v5 = strdup([(NSString *)v11[0] fileSystemRepresentation]);
    v6 = [a3 fileSystemRepresentation];
    close(v9);
    rename(v6, v5, v7);
    if (!v8)
    {
      v11[0] = [+[NSFileManager defaultManager](NSFileManager stringWithFileSystemRepresentation:"stringWithFileSystemRepresentation:length:" length:v5, strlen(v5)];
      [NSThread detachNewThreadSelector:sel__performRemoveFileAtPath_ toTarget:self withObject:v11[0]];
    }

    free(v5);
    _NSCleanupTemporaryDirectory(v10);
  }
}

- (BOOL)_web_removeFileOnlyAtPath:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = unlink([a3 fileSystemRepresentation]);
  memset(&v7.f_mntonname[392], 0, 32);
  if (!statfs([a3 fileSystemRepresentation], &v7) && (v7.f_flags & 0x8000) == 0)
  {
    v5 = [a3 lastPathComponent];
    if ([v5 length])
    {
      if (([v5 isEqualToString:@"/"] & 1) == 0)
      {
        v4 |= unlink([objc_msgSend(objc_msgSend(a3 "stringByDeletingLastPathComponent")]);
      }
    }
  }

  return v4 == 0;
}

- (void)_web_backgroundRemoveLeftoverFiles:(id)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [a3 stringByDeletingLastPathComponent];
  v7 = [NSString stringWithFormat:@"%@/.tmp%ld", v6, 0];
  if ([(NSFileManager *)v5 fileExistsAtPath:v7])
  {
    v8 = 1;
    do
    {
      [NSThread detachNewThreadSelector:sel__performRemoveFileAtPath_ toTarget:self withObject:v7];
      v7 = [NSString stringWithFormat:@"%@/.tmp%ld", v6, v8++];
    }

    while ([(NSFileManager *)v5 fileExistsAtPath:v7]);
  }
}

- (id)_web_pathWithUniqueFilenameForPath:(id)a3
{
  v3 = [objc_msgSend(a3 "stringByDeletingLastPathComponent")];
  v4 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v4 fileExistsAtPath:v3])
  {
    return v3;
  }

  v5 = [v3 lastPathComponent];
  v6 = [v5 rangeOfString:@"."];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v9 = v6;
    v7 = [v5 substringFromIndex:v6 + 1];
    v3 = [objc_msgSend(v3 "stringByDeletingLastPathComponent")];
  }

  v10 = 1;
  do
  {
    v8 = [NSString stringWithFormat:@"%@-%ld", v3, v10];
    if ([v7 length])
    {
      v8 = [(NSString *)v8 stringByAppendingPathExtension:v7];
    }

    ++v10;
  }

  while ([(NSFileManager *)v4 fileExistsAtPath:v8]);
  return v8;
}

- (BOOL)_web_fileExistsAtPath_nowarn:(id)a3 isDirectory:(BOOL *)a4 traverseLink:(BOOL)a5
{
  if (a5)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v8 = [+[NSFileManager defaultManager](NSFileManager destinationOfSymbolicLinkAtPath:"destinationOfSymbolicLinkAtPath:error:" error:a3, 0];
    v9 = v8;
    if (v8 && ![(NSString *)v8 isAbsolutePath])
    {
      v9 = [objc_msgSend(a3 "stringByDeletingLastPathComponent")];
    }

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = [(NSFileManager *)self attributesOfItemAtPath:v10 error:0];
    if (v11)
    {
      v12 = [-[NSDictionary objectForKey:](v11 objectForKey:{@"NSFileType", "isEqualToString:", @"NSFileTypeDirectory"}];
      LOBYTE(v11) = 1;
      if (a4)
      {
        if (v12)
        {
          *a4 = 1;
        }
      }
    }
  }

  else
  {

    LOBYTE(v11) = [NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:" isDirectory:?];
  }

  return v11;
}

- (id)_web_startupVolumeName_nowarn
{
  v2 = [(NSFileManager *)self _web_carbonPathForPath_nowarn:@"/"];
  v3 = [v2 length] - 1;

  return [v2 substringToIndex:v3];
}

- (BOOL)_web_createIntermediateDirectoriesForPath_nowarn:(id)a3 attributes:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 && [a3 length] && objc_msgSend(a3, "isAbsolutePath"))
  {
    v15 = 0;
    if (-[NSFileManager _web_fileExistsAtPath_nowarn:isDirectory:traverseLink:](self, "_web_fileExistsAtPath_nowarn:isDirectory:traverseLink:", [a3 stringByDeletingLastPathComponent], &v15, 1))
    {
      return v15;
    }

    else
    {
      v8 = a3;
      while (([v8 isEqualToString:@"/"] & 1) == 0)
      {
        v8 = [v8 stringByDeletingLastPathComponent];
        if ([(NSFileManager *)self _web_fileExistsAtPath_nowarn:v8 isDirectory:&v15 traverseLink:1])
        {
          if (!v15)
          {
            return 0;
          }

          break;
        }
      }

      v9 = -[NSMutableString initWithCapacity:]([NSMutableString alloc], "initWithCapacity:", [a3 length]);
      v10 = [a3 componentsSeparatedByString:@"/"];
      v11 = [v10 count];
      v12 = 0;
      v13 = v11 - 1;
      if (v11 != 1)
      {
        while (![(NSString *)v9 isEqualToString:v8])
        {
          if (v12)
          {
            [(NSMutableString *)v9 appendString:@"/"];
          }

          -[NSMutableString appendString:](v9, "appendString:", [v10 objectAtIndex:v12++]);
          if (v13 == v12)
          {
            goto LABEL_29;
          }
        }
      }

      if (v12 >= v13)
      {
LABEL_29:
        v7 = 1;
      }

      else
      {
        v7 = 0;
        do
        {
            ;
          }

          if (v12)
          {
            [(NSMutableString *)v9 appendString:@"/"];
          }

          -[NSMutableString appendString:](v9, "appendString:", [v10 objectAtIndex:v12]);
          if ([(NSFileManager *)self _web_fileExistsAtPath_nowarn:v9 isDirectory:&v15 traverseLink:1])
          {
            if (!v15)
            {
              break;
            }
          }

          else if (![(NSFileManager *)self createDirectoryAtPath:v9 withIntermediateDirectories:0 attributes:a4 error:0])
          {
            break;
          }

          v7 = ++v12 >= v13;
        }

        while (v12 != v13);
      }
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

@end