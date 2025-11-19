@interface NSFileVersion
+ (BOOL)_isTemporaryStorageRequiredForGSError:(id)a3 andURL:(id)a4;
+ (BOOL)_permanentVersionStorageSupportedForURL:(id)a3 temporaryStorageIdentifier:(id *)a4 error:(id *)a5;
+ (BOOL)_removeOtherVersionsOfItemAtURL:(id)a3 temporaryStorageIdentifier:(id)a4 error:(id *)a5;
+ (BOOL)unresolvedConflictsExistForItemAtURL:(id)a3;
+ (NSArray)unresolvedConflictVersionsOfItemAtURL:(NSURL *)url;
+ (NSFileVersion)addVersionOfItemAtURL:(NSURL *)url withContentsOfURL:(NSURL *)contentsURL options:(NSFileVersionAddingOptions)options error:(NSError *)outError;
+ (NSFileVersion)currentVersionOfItemAtURL:(NSURL *)url;
+ (NSURL)temporaryDirectoryURLForNewVersionOfItemAtURL:(NSURL *)url;
+ (id)_addVersionOfItemAtURL:(id)a3 withContentsOfURL:(id)a4 options:(unint64_t)a5 userInfo:(id)a6 temporaryStorageIdentifier:(id *)a7 error:(id *)a8;
+ (id)_autosaveDirectoryURLCreateIfNecessary:(BOOL)a3;
+ (id)_existingLibraryForURL:(id)a3 temporaryStorageIdentifier:(id)a4;
+ (id)_libraryForURL:(id)a3 temporaryStorageIdentifier:(id *)a4;
+ (id)_makePermanentStorageLibraryForURL:(id)a3 temporaryStorageRequired:(BOOL *)a4 error:(id *)a5;
+ (id)_makeTemporaryStorageIdentifier;
+ (id)_otherVersionsOfItemAtURL:(id)a3 temporaryStorageIdentifier:(id)a4 withoutOptions:(unint64_t)a5;
+ (id)_temporaryDirectoryURLForNewVersionOfItemAtURL:(id)a3 temporaryStorageIdentifier:(id)a4;
+ (id)_temporaryStorageLocationForIdentifier:(id)a3;
+ (id)_versionOfItemAtURL:(id)a3 forClientID:(id)a4 name:(id)a5 temporaryStorageIdentifier:(id)a6 evenIfDeleted:(BOOL)a7;
+ (id)_versionOfItemAtURL:(id)a3 forPersistentIdentifier:(id)a4 temporaryStorageIdentifier:(id)a5;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
+ (void)_markConflicts:(id)a3 asHandledForItemAtURL:(id)a4;
+ (void)_removeTemporaryDirectoryAtURL:(id)a3;
+ (void)getNonlocalVersionsOfItemFromBRAtURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
+ (void)getNonlocalVersionsOfItemFromFPAtURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (BOOL)_preserveConflictVersionLocally;
- (BOOL)_setDocumentInfo:(id)a3;
- (BOOL)isConflict;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAndReturnError:(NSError *)outError;
- (NSDate)modificationDate;
- (NSPersonNameComponents)originatorNameComponents;
- (NSString)localizedName;
- (NSString)localizedNameOfSavingComputer;
- (NSString)originalPOSIXName;
- (NSURL)URL;
- (NSURL)replaceItemAtURL:(NSURL *)url options:(NSFileVersionReplacingOptions)options error:(NSError *)error;
- (id)_documentInfo;
- (id)_initWithAddition:(id)a3;
- (id)_initWithFileURL:(id)a3 fileVersion:(id)a4;
- (id)_initWithFileURL:(id)a3 library:(id)a4 clientID:(id)a5 name:(id)a6 contentsURL:(id)a7 isBackup:(BOOL)a8 revision:(id)a9;
- (id)_initWithFileURL:(id)a3 nonLocalVersion:(id)a4;
- (id)description;
- (id)persistentIdentifier;
- (unint64_t)hash;
- (unint64_t)size;
- (void)_overrideModificationDateWithDate:(id)a3;
- (void)dealloc;
- (void)setResolved:(BOOL)resolved;
@end

@implementation NSFileVersion

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"hasThumbnail"])
  {
    v5 = MEMORY[0x1E695DFD8];

    return [v5 setWithObject:@"_nonLocalVersion.hasThumbnail"];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NSFileVersion;
    return objc_msgSendSuper2(&v7, sel_keyPathsForValuesAffectingValueForKey_, a3);
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileVersion;
  [(NSFileVersion *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSFileVersion *)self persistentIdentifier];
  v6 = [a3 persistentIdentifier];

  return [v5 isEqual:v6];
}

- (unint64_t)hash
{
  v2 = [(NSFileVersion *)self persistentIdentifier];

  return [v2 hash];
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_nonLocalVersion)
  {
    v8.receiver = self;
    v8.super_class = NSFileVersion;
    return [NSString stringWithFormat:@"%@ type:NonLocal forURL:'%@', %@", [(NSFileVersion *)&v8 description], [(NSURL *)self->_fileURL path], self->_nonLocalVersion, v5, v6];
  }

  else
  {
    if (self->_isBackup)
    {
      v4 = @"Backup";
    }

    else if (self->_deadVersionIdentifier)
    {
      v4 = @"Dead";
    }

    else if ([(NSFileVersion *)self isConflict])
    {
      v4 = @"Conflict";
    }

    else
    {
      v4 = @"Local";
    }

    v7.receiver = self;
    v7.super_class = NSFileVersion;
    return [NSString stringWithFormat:@"%@ type:%@ forURL:'%@' contentsURL:'%@' name:'%@'", [(NSFileVersion *)&v7 description], v4, [(NSURL *)self->_fileURL path], [(NSURL *)self->_contentsURL path], self->_localizedName];
  }
}

+ (NSFileVersion)currentVersionOfItemAtURL:(NSURL *)url
{
  if (![(NSURL *)url checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  v5 = [[a1 alloc] _initWithFileURL:url library:0 clientID:0 name:0 contentsURL:url isBackup:0 revision:0];

  return v5;
}

+ (NSFileVersion)addVersionOfItemAtURL:(NSURL *)url withContentsOfURL:(NSURL *)contentsURL options:(NSFileVersionAddingOptions)options error:(NSError *)outError
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___NSFileVersion;
  objc_msgSendSuper2(&v7, sel_doesNotRecognizeSelector_, a2, contentsURL, options, outError);
  return 0;
}

+ (NSURL)temporaryDirectoryURLForNewVersionOfItemAtURL:(NSURL *)url
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSFileVersion;
  objc_msgSendSuper2(&v4, sel_doesNotRecognizeSelector_, a2);
  return 0;
}

+ (NSArray)unresolvedConflictVersionsOfItemAtURL:(NSURL *)url
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v5 = *MEMORY[0x1E695DCA8];
  [(NSURL *)url removeCachedResourceValueForKey:*MEMORY[0x1E695DCA8]];
  if (![(NSURL *)url getResourceValue:&v16 forKey:v5 error:0])
  {
    return 0;
  }

  if (![v16 BOOLValue])
  {
    return MEMORY[0x1E695E0F0];
  }

  v6 = [gsDefaultStorageManager() permanentStorageForItemAtURL:url allocateIfNone:0 error:0];
  v7 = [objc_msgSend(v6 enumeratorForAdditionsInNameSpace:@"com.apple.ubiquity" withOptions:0 withoutOptions:0 ordering:{0), "allObjects"}];
  v8 = [objc_msgSend(v6 enumeratorForAdditionsInNameSpace:@"com.apple.FileProvider.conflict" withOptions:0 withoutOptions:0 ordering:{0), "allObjects"}];
  if (v7)
  {
    v8 = [v7 arrayByAddingObjectsFromArray:v8];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [[a1 alloc] _initWithAddition:*(*(&v18 + 1) + 8 * i)];
        [(NSArray *)v9 addObject:v14];
      }

      v11 = [v8 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v11);
  }

  return v9;
}

- (NSURL)URL
{
  v3 = [(NSURL *)self->_contentsURL isFileReferenceURL];
  contentsURL = self->_contentsURL;
  if (v3)
  {

    return [(NSURL *)contentsURL filePathURL];
  }

  else
  {
    v6 = contentsURL;

    return v6;
  }
}

- (NSString)originalPOSIXName
{
  if (self->_addition)
  {
    return [(GSAddition *)self->_addition originalPOSIXName];
  }

  if (self->_nonLocalVersion || self->_isBackup || self->_deadVersionIdentifier)
  {
    return 0;
  }

  return [(NSURL *)self->_contentsURL lastPathComponent];
}

- (NSString)localizedName
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = self->_localizedName;
  v4[0] = result;
  if (!result)
  {
    [(NSURL *)self->_contentsURL getResourceValue:v4 forKey:*MEMORY[0x1E695DC10] error:0];
    return v4[0];
  }

  return result;
}

- (NSString)localizedNameOfSavingComputer
{
  nonLocalVersion = self->_nonLocalVersion;
  if (nonLocalVersion)
  {

    return [nonLocalVersion lastEditorDeviceName];
  }

  else if ([(NSFileVersion *)self isConflict]|| [+[NSFileManager isUbiquitousItemAtURL:"isUbiquitousItemAtURL:"]
  {
    if (qword_1ED440208 != -1)
    {
      dispatch_once(&qword_1ED440208, &__block_literal_global_263);
    }

    result = [(GSAddition *)self->_addition fp_lastEditorDeviceName];
    if (!result)
    {
      contentsURL = self->_contentsURL;

      return [(NSURL *)contentsURL fp_lastEditorDeviceName];
    }
  }

  else
  {
    return 0;
  }

  return result;
}

- (NSPersonNameComponents)originatorNameComponents
{
  nonLocalVersion = self->_nonLocalVersion;
  if (nonLocalVersion)
  {

    return [nonLocalVersion lastEditorNameComponents];
  }

  else if ([(NSFileVersion *)self isConflict]|| [+[NSFileManager isUbiquitousItemAtURL:"isUbiquitousItemAtURL:"]
  {
    if (qword_1ED440208 != -1)
    {
      dispatch_once(&qword_1ED440208, &__block_literal_global_263);
    }

    result = [(GSAddition *)self->_addition fp_lastEditorNameComponents];
    if (!result)
    {
      contentsURL = self->_contentsURL;

      return [(NSURL *)contentsURL fp_lastEditorNameComponents];
    }
  }

  else
  {
    return 0;
  }

  return result;
}

- (NSDate)modificationDate
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = self->_modificationDate;
  v4[0] = result;
  if (!result)
  {
    [(NSURL *)self->_contentsURL getResourceValue:v4 forKey:*MEMORY[0x1E695DA98] error:0];
    return v4[0];
  }

  return result;
}

- (unint64_t)size
{
  nonLocalVersion = self->_nonLocalVersion;
  if (nonLocalVersion)
  {

    return [nonLocalVersion size];
  }

  else if (self->_addition && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(GSAddition *)self->_addition performSelector:sel_size];

    return [v5 unsignedLongLongValue];
  }

  else
  {
    return 0;
  }
}

- (id)persistentIdentifier
{
  if (self->_addition)
  {
    addition = self->_addition;

    return [addition persistentIdentifier];
  }

  if (self->_deadVersionIdentifier)
  {
    return self->_deadVersionIdentifier;
  }

  if (self->_isBackup)
  {
    v5 = [(NSURL *)self->_contentsURL path];
    return [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v5, @"path", 0}];
  }

  else
  {
    addition = self->_nonLocalVersion;
    if (addition)
    {

      return [addition persistentIdentifier];
    }

    v6 = MEMORY[0x1E695DF20];

    return [v6 dictionary];
  }
}

- (BOOL)isConflict
{
  if ([-[GSAddition nameSpace](self->_addition "nameSpace")] & 1) != 0 || (objc_msgSend(-[GSAddition nameSpace](self->_addition, "nameSpace"), "isEqualToString:", @"com.apple.FileProvider.conflict"))
  {
    return 1;
  }

  addition = self->_addition;

  return [(GSAddition *)addition isSavedConflict];
}

- (void)setResolved:(BOOL)resolved
{
  v8 = *MEMORY[0x1E69E9840];
  if (!resolved)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-[NSFileVersion setResolved:]: You can't make a conflict version unresolved once it's been resolved." userInfo:0]);
  }

  if (([-[GSAddition nameSpace](self->_addition "nameSpace")] & 1) != 0 || objc_msgSend(-[GSAddition nameSpace](self->_addition, "nameSpace"), "isEqualToString:", @"com.apple.FileProvider.conflict"))
  {
    if (qword_1ED440208 != -1)
    {
      dispatch_once(&qword_1ED440208, &__block_literal_global_263);
    }

    v5 = 0;
    if (([(GSAddition *)self->_addition fp_markResolvedWithError:&v5]& 1) == 0)
    {
      v4 = _NSOSLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v7 = v5;
        _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "[NSFileVersion setResolved:] tried but failed. The error is:\n%@", buf, 0xCu);
      }
    }
  }
}

- (NSURL)replaceItemAtURL:(NSURL *)url options:(NSFileVersionReplacingOptions)options error:(NSError *)error
{
  v7 = url;
  v22 = *MEMORY[0x1E69E9840];
  addition = self->_addition;
  if (addition)
  {
    v7 = [(GSAddition *)addition replaceItemAtURL:url error:error];
    if (v7)
    {
      if (replaceItemAtURL_options_error__onceToken != -1)
      {
        dispatch_once(&replaceItemAtURL_options_error__onceToken, &__block_literal_global_82);
      }

      v10 = objc_lookUpClass("QLThumbnailAddition");
      if (v10)
      {
        [(objc_class *)v10 associateThumbnailsForDocumentAtURL:[(NSFileVersion *)self URL:0] withDocumentAtURL:v7 error:&v21];
      }

      if ((options & 1) != 0 && ![(NSFileVersion *)self removeAndReturnError:0])
      {
        v11 = _NSOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v21) = 0;
          _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "[NSFileVersion replaceItemAtURL:options:error:] failed to remove the version that it replaced a file with.", &v21, 2u);
        }
      }

      goto LABEL_19;
    }

    return v7;
  }

  if (self->_nonLocalVersion)
  {
    v12 = [objc_opt_class() versionOfItemAtURL:self->_fileURL forPersistentIdentifier:{objc_msgSend(self->_nonLocalVersion, "persistentIdentifier")}];
    if (v12)
    {
      v7 = [v12 replaceItemAtURL:v7 options:options error:error];
      goto LABEL_18;
    }

    v16 = _NSOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_18075C000, v16, OS_LOG_TYPE_ERROR, "[NSFileVersion replaceItemAtURL:optionsError:] for a non-local NSFileVersion failed. Did you forget a coordinated read?", &v21, 2u);
      if (error)
      {
        goto LABEL_22;
      }
    }

    else if (error)
    {
LABEL_22:
      v7 = 0;
      *error = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:4 userInfo:0];
      return v7;
    }

    return 0;
  }

  if (!self->_isBackup)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D920];
    v20 = @"[NSFileVersion replaceItemAtURL:options:error:]: You can't use it with current versions.";
    goto LABEL_28;
  }

  if (options)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D920];
    v20 = @"[NSFileVersion replaceItemAtURL:options:error:]: NSFileVersionReplacingByMoving with this kind of version isn't supported.";
LABEL_28:
    objc_exception_throw([v18 exceptionWithName:v19 reason:v20 userInfo:0]);
  }

  v13 = [[NSFileWrapper alloc] initWithURL:self->_contentsURL options:0 error:error];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = [(NSFileWrapper *)v13 writeToURL:v7 options:1 originalContentsURL:0 error:error];

  if (!v15)
  {
    return 0;
  }

LABEL_18:
  if (v7)
  {
LABEL_19:
    CFURLClearResourcePropertyCache(v7);
  }

  return v7;
}

- (BOOL)removeAndReturnError:(NSError *)outError
{
  v23[1] = *MEMORY[0x1E69E9840];
  addition = self->_addition;
  if (!addition)
  {
    if (self->_isBackup)
    {
      v11 = _NSOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v12 = "[NSFileVersion removeAndReturnError:]: You can't use it with a backup version.";
        goto LABEL_23;
      }

LABEL_20:
      if (!outError)
      {
        return 0;
      }

LABEL_21:
      v10 = 0;
      *outError = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:512 userInfo:0];
      return v10;
    }

    nonLocalVersion = self->_nonLocalVersion;
    v11 = _NSOSLog();
    v14 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (nonLocalVersion)
    {
      if (!v14)
      {
        goto LABEL_20;
      }

      *buf = 0;
      v12 = "[NSFileVersion removeAndReturnError:]: You can't use it with a non-local version.";
    }

    else
    {
      if (!v14)
      {
        goto LABEL_20;
      }

      *buf = 0;
      v12 = "[NSFileVersion removeAndReturnError:]: You can't use it with a current version.";
    }

LABEL_23:
    _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    if (!outError)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (([-[GSAddition nameSpace](addition "nameSpace")] & 1) != 0 || objc_msgSend(-[GSAddition nameSpace](self->_addition, "nameSpace"), "isEqualToString:", @"com.apple.FileProvider.conflict"))
  {
    if (qword_1ED440208 != -1)
    {
      dispatch_once(&qword_1ED440208, &__block_literal_global_263);
    }

    if (![(GSAddition *)self->_addition fp_markResolvedWithError:outError])
    {
      return 0;
    }
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__31;
  v21 = __Block_byref_object_dispose__31;
  v22 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [(GSAddition *)self->_addition storage];
  v23[0] = self->_addition;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__NSFileVersion_removeAndReturnError___block_invoke;
  v16[3] = &unk_1E69F9EA0;
  v16[4] = v6;
  v16[5] = buf;
  [v7 removeAdditions:v8 completionHandler:v16];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v6);
  v9 = *(v18 + 5);
  v10 = v9 == 0;
  if (v9)
  {
    if (outError)
    {
      *outError = v9;
    }

    else
    {
    }
  }

  else
  {
    [NSFileCoordinator __itemAtURL:self->_fileURL didLoseVersionWithClientID:[(GSAddition *)self->_addition nameSpace] name:[(GSAddition *)self->_addition name] purposeID:0];
  }

  _Block_object_dispose(buf, 8);
  return v10;
}

intptr_t __38__NSFileVersion_removeAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (!a3)
  {
    a3 = [objc_msgSend(a2 "objectEnumerator")];
  }

  *(*(*(a1 + 40) + 8) + 40) = a3;
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (id)_initWithFileURL:(id)a3 library:(id)a4 clientID:(id)a5 name:(id)a6 contentsURL:(id)a7 isBackup:(BOOL)a8 revision:(id)a9
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = NSFileVersion;
  v15 = [(NSFileVersion *)&v20 init];
  if (v15)
  {
    v15->_fileURL = [a3 copy];
    v15->_contentsURL = [a7 copy];
    v15->_isBackup = a8;
    v15->_name = [a6 copy];
    if (a4)
    {
      v16 = [gsDefaultStorageManager() persistentIdentifierInStorage:a4 forAdditionNamed:a6 inNameSpace:a5];
      v15->_deadVersionIdentifier = v16;
      v17 = v16;
    }

    if (v15->_isBackup)
    {
      v19 = 0;
      if ([(NSURL *)v15->_contentsURL getResourceValue:&v19 forKey:*MEMORY[0x1E695DC10] error:0])
      {
        v15->_localizedName = [v19 copy];
      }

      if (v15->_isBackup)
      {
        v19 = 0;
        if ([(NSURL *)v15->_contentsURL getResourceValue:&v19 forKey:*MEMORY[0x1E695DA98] error:0])
        {
          v15->_modificationDate = [v19 copy];
        }
      }
    }
  }

  return v15;
}

- (id)_initWithAddition:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSFileVersion;
  v4 = [(NSFileVersion *)&v10 init];
  if (v4)
  {
    v5 = a3;
    v4->_addition = v5;
    v4->_fileURL = [objc_msgSend(-[GSAddition storage](v5 "storage")];
    v4->_contentsURL = [(GSAddition *)v4->_addition url];
    v4->_isBackup = 0;
    v6 = [(GSAddition *)v4->_addition displayName];
    v4->_localizedName = v6;
    if (!v6)
    {
      v9 = 0;
      if ([(NSURL *)v4->_fileURL getResourceValue:&v9 forKey:*MEMORY[0x1E695DC10] error:0])
      {
        v4->_localizedName = [v9 copy];
      }
    }

    v7 = [-[NSFileVersion _documentInfo](v4 "_documentInfo")];
    v4->_modificationDate = v7;
    if (!v7)
    {
      v9 = 0;
      if ([(NSURL *)v4->_contentsURL getResourceValue:&v9 forKey:*MEMORY[0x1E695DA98] error:0])
      {
        v4->_modificationDate = [v9 copy];
      }
    }
  }

  return v4;
}

- (id)_initWithFileURL:(id)a3 nonLocalVersion:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFileVersion;
  v6 = [(NSFileVersion *)&v8 init];
  if (v6)
  {
    v6->_nonLocalVersion = a4;
    v6->_fileURL = [a3 copy];
    v6->_contentsURL = [objc_msgSend(a4 "url")];
    v6->_localizedName = [objc_msgSend(a4 "displayName")];
    v6->_modificationDate = [objc_msgSend(a4 "modificationDate")];
    v6->_isBackup = 0;
  }

  return v6;
}

- (id)_initWithFileURL:(id)a3 fileVersion:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFileVersion;
  v6 = [(NSFileVersion *)&v8 init];
  if (v6)
  {
    v6->_nonLocalVersion = a4;
    v6->_fileURL = [a3 copy];
    v6->_contentsURL = [objc_msgSend(a4 "url")];
    v6->_localizedName = [objc_msgSend(a4 "displayName")];
    v6->_modificationDate = [objc_msgSend(a4 "modificationDate")];
    v6->_isBackup = 0;
  }

  return v6;
}

+ (void)getNonlocalVersionsOfItemFromBRAtURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a4;
  v15[6] = *MEMORY[0x1E69E9840];
  if (qword_1ED440210 != -1)
  {
    dispatch_once(&qword_1ED440210, &__block_literal_global_277);
  }

  v8 = objc_lookUpClass("BRListNonLocalVersionsOperation");
  if (v8)
  {
    v9 = [[v8 alloc] initWithDocumentURL:a3];
    v10 = v9;
    if (v6)
    {
      [v9 setIncludeCachedVersions:1];
    }

    v11 = objc_alloc_init(NSOperationQueue);
    [(NSOperationQueue *)v11 setName:@"NSFileVersion Non-Local Version Fetching Queue"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__NSFileVersion_NSPrivate__getNonlocalVersionsOfItemFromBRAtURL_options_completionHandler___block_invoke;
    v15[3] = &unk_1E69F9EC8;
    v15[4] = a3;
    v15[5] = a5;
    [v10 setFetchingVersionsDoneBlock:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__NSFileVersion_NSPrivate__getNonlocalVersionsOfItemFromBRAtURL_options_completionHandler___block_invoke_157;
    v14[3] = &unk_1E69F2C00;
    v14[4] = v11;
    [v10 setCompletionBlock:v14];
    [(NSOperationQueue *)v11 addOperation:v10];
  }

  else
  {
    v12 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v13 = *(a5 + 2);

    v13(a5, 0, v12);
  }
}

uint64_t __91__NSFileVersion_NSPrivate__getNonlocalVersionsOfItemFromBRAtURL_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  if (a3)
  {
    v7 = _NSOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = a3;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Fetch error occurred: %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = v6;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(a2);
          }

          v14 = [[NSFileVersion alloc] _initWithFileURL:*(a1 + 32) nonLocalVersion:*(*(&v18 + 1) + 8 * i)];
          if (v14)
          {
            v15 = v14;
            [v9 addObject:v14];
          }
        }

        v11 = [a2 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v11);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  return v8();
}

+ (void)getNonlocalVersionsOfItemFromFPAtURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a4;
  v15[6] = *MEMORY[0x1E69E9840];
  if (qword_1ED440208 != -1)
  {
    dispatch_once(&qword_1ED440208, &__block_literal_global_263);
  }

  if (qword_1ED440200 && (v8 = objc_lookUpClass("FPListRemoteVersionsOperation")) != 0)
  {
    v9 = [[v8 alloc] initWithDocumentURL:a3];
    v10 = v9;
    if (v6)
    {
      [v9 setIncludeCachedVersions:1];
    }

    v11 = objc_alloc_init(NSOperationQueue);
    [(NSOperationQueue *)v11 setName:@"NSFileVersion Non-Local Version Fetching Queue"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__NSFileVersion_NSPrivate__getNonlocalVersionsOfItemFromFPAtURL_options_completionHandler___block_invoke;
    v15[3] = &unk_1E69F9EC8;
    v15[4] = a3;
    v15[5] = a5;
    [v10 setFinishedBlock:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__NSFileVersion_NSPrivate__getNonlocalVersionsOfItemFromFPAtURL_options_completionHandler___block_invoke_159;
    v14[3] = &unk_1E69F2C00;
    v14[4] = v11;
    [v10 setCompletionBlock:v14];
    [(NSOperationQueue *)v11 addOperation:v10];
  }

  else
  {
    v12 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    v13 = *(a5 + 2);

    v13(a5, 0, v12);
  }
}

uint64_t __91__NSFileVersion_NSPrivate__getNonlocalVersionsOfItemFromFPAtURL_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  if (a3)
  {
    v7 = _NSOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = a3;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Fetch error occurred: %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = v6;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(a2);
          }

          v14 = [[NSFileVersion alloc] _initWithFileURL:*(a1 + 32) fileVersion:*(*(&v18 + 1) + 8 * i)];
          if (v14)
          {
            v15 = v14;
            [v9 addObject:v14];
          }
        }

        v11 = [a2 countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v11);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  return v8();
}

+ (id)_autosaveDirectoryURLCreateIfNecessary:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [+[NSFileManager defaultManager](NSFileManager URLForDirectory:"URLForDirectory:inDomain:appropriateForURL:create:error:" inDomain:11 appropriateForURL:1 create:0 error:a3, &v8];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = !v3;
  }

  if (!v5)
  {
    v6 = _NSOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "NSFileVersions's invocation of [NSFileManager URLForDirectory:inDomain:appropriateForURL:create:error:] returned nil for NSAutosavedInformationDirectory. Here's the error:\n%@", buf, 0xCu);
    }
  }

  return v4;
}

+ (id)_temporaryStorageLocationForIdentifier:(id)a3
{
  v4 = [objc_opt_class() _autosaveDirectoryURLCreateIfNecessary:1];
  v5 = [a3 stringByAppendingPathExtension:@"genstore.noindex"];

  return [v4 URLByAppendingPathComponent:v5];
}

+ (BOOL)_isTemporaryStorageRequiredForGSError:(id)a3 andURL:(id)a4
{
  if (!a3)
  {
    return 1;
  }

  v6 = [a3 domain];
  if (![v6 isEqualToString:_MergedGlobals_149] || objc_msgSend(a3, "code") == 5 || objc_msgSend(a3, "code") != 2)
  {
    return 1;
  }

  return [a4 checkResourceIsReachableAndReturnError:0];
}

+ (id)_makePermanentStorageLibraryForURL:(id)a3 temporaryStorageRequired:(BOOL *)a4 error:(id *)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v9 = [gsDefaultStorageManager() permanentStorageForItemAtURL:a3 allocateIfNone:1 error:v12];
  v10 = v9;
  if (a4)
  {
    if (!v9)
    {
      *a4 = [a1 _isTemporaryStorageRequiredForGSError:v12[0] andURL:a3];
      if (a5)
      {
        *a5 = v12[0];
      }
    }
  }

  return v10;
}

+ (id)_makeTemporaryStorageIdentifier
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  CFRelease(v2);
  return v3;
}

+ (BOOL)_permanentVersionStorageSupportedForURL:(id)a3 temporaryStorageIdentifier:(id *)a4 error:(id *)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v9 = [gsDefaultStorageManager() isPermanentStorageSupportedAtURL:a3 error:v11];
  if ((v9 & 1) == 0)
  {
    if (a4 && [a1 _isTemporaryStorageRequiredForGSError:v11[0] andURL:a3])
    {
      *a4 = [a1 _makeTemporaryStorageIdentifier];
    }

    if (a5)
    {
      *a5 = v11[0];
    }
  }

  return v9;
}

+ (id)_existingLibraryForURL:(id)a3 temporaryStorageIdentifier:(id)a4
{
  if (a4)
  {
    v5 = [a1 _temporaryStorageLocationForIdentifier:a4];
    if ([v5 checkResourceIsReachableAndReturnError:0])
    {
      v6 = gsDefaultStorageManager();

      return [v6 temporaryStorageForItemAtURL:a3 locatedAtURL:v5 error:0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = gsDefaultStorageManager();

    return [v8 permanentStorageForItemAtURL:a3 allocateIfNone:0 error:0];
  }
}

+ (id)_libraryForURL:(id)a3 temporaryStorageIdentifier:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v12 = 0;
  if (a4 && [*a4 isEqualToString:@"com.apple.NSFileVersionTestTempID"])
  {
    v7 = 1;
    v13 = 1;
  }

  else
  {
    result = [a1 _makePermanentStorageLibraryForURL:a3 temporaryStorageRequired:&v13 error:{0, v12}];
    if (result)
    {
      return result;
    }

    v7 = v13;
  }

  result = 0;
  if (a4 && (v7 & 1) != 0)
  {
    v9 = *a4;
    if (!*a4)
    {
      v9 = [a1 _makeTemporaryStorageIdentifier];
    }

    result = [a1 _temporaryStorageLocationForIdentifier:{v9, v12}];
    if (result)
    {
      v10 = result;
      -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [result path], 0, 0, 0);
      result = [gsDefaultStorageManager() temporaryStorageForItemAtURL:a3 locatedAtURL:v10 error:&v12];
      if (result)
      {
        *a4 = v9;
      }

      else
      {
        v11 = _NSOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v12;
          _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "NSDocument could not create temporary version storage at %@. Here's the error:\n%@", buf, 0x16u);
        }

        return 0;
      }
    }
  }

  return result;
}

+ (id)_otherVersionsOfItemAtURL:(id)a3 temporaryStorageIdentifier:(id)a4 withoutOptions:(unint64_t)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v23 = [a1 _existingLibraryForURL:a3 temporaryStorageIdentifier:a4];
  if (!v23)
  {
    return MEMORY[0x1E695E0F0];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [&unk_1EEF59FF0 countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v36;
    *&v8 = 138412546;
    v21 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(&unk_1EEF59FF0);
        }

        v12 = [v23 enumeratorForAdditionsInNameSpace:*(*(&v35 + 1) + 8 * v11) withOptions:0 withoutOptions:a5 ordering:{0, v21}];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v31;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [[a1 alloc] _initWithAddition:*(*(&v30 + 1) + 8 * i)];
              [v6 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v30 objects:v29 count:16];
          }

          while (v14);
        }

        if ([v12 error])
        {
          v18 = _NSOSLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [v12 error];
            *buf = v21;
            v26 = a3;
            v27 = 2112;
            v28 = v19;
            _os_log_error_impl(&dword_18075C000, v18, OS_LOG_TYPE_ERROR, "Enumeration of versions for %@ failed. Here's the error:\n%@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [&unk_1EEF59FF0 countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)_versionOfItemAtURL:(id)a3 forPersistentIdentifier:(id)a4 temporaryStorageIdentifier:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v9 = [gsDefaultStorageManager() additionForItemAtURL:a3 forPersistentIdentifier:a4 error:&v21];
  if (v9)
  {
    v10 = [[a1 alloc] _initWithAddition:v9];
    return v10;
  }

  if (v21)
  {
    v13 = _NSOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = a4;
      v24 = 2112;
      v25 = v21;
      _os_log_error_impl(&dword_18075C000, v13, OS_LOG_TYPE_ERROR, "Failed to get a GSAddition with persistent identifier: %@. Here's the error: %@", buf, 0x16u);
    }

    return 0;
  }

  v15 = [a4 objectForKey:@"clientID"];
  v16 = [a4 objectForKey:@"name"];
  v17 = [a4 objectForKey:@"path"];
  if (v15)
  {
    if (v16)
    {
      v18 = [a1 _existingLibraryForURL:a3 temporaryStorageIdentifier:a5];
      if (v18)
      {
        v19 = [gsDefaultStorageManager() persistentIdentifierInStorage:v18 forAdditionNamed:v16 inNameSpace:v15];
        if (v19)
        {
          return [a1 _versionOfItemAtURL:a3 forPersistentIdentifier:v19 temporaryStorageIdentifier:v19];
        }
      }
    }

    return 0;
  }

  if (!v17)
  {
    if ([a3 checkResourceIsReachableAndReturnError:0])
    {
      v10 = [[a1 alloc] _initWithFileURL:a3 library:0 clientID:0 name:0 contentsURL:a3 isBackup:0 revision:0];
      return v10;
    }

    return 0;
  }

  v20 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v17];
  v12 = 0;
  if ([v20 checkResourceIsReachableAndReturnError:0])
  {
    v12 = [[a1 alloc] _initWithFileURL:a3 library:0 clientID:0 name:0 contentsURL:v20 isBackup:1 revision:0];
  }

  return v12;
}

+ (id)_addVersionOfItemAtURL:(id)a3 withContentsOfURL:(id)a4 options:(unint64_t)a5 userInfo:(id)a6 temporaryStorageIdentifier:(id *)a7 error:(id *)a8
{
  v10 = a5;
  v53[1] = *MEMORY[0x1E69E9840];
  v14 = [a1 _libraryForURL:a3 temporaryStorageIdentifier:a7];
  if (v14)
  {
    v15 = v14;
    v16 = [a4 path];
    v17 = [v16 pathExtension];
    if ([v17 hasPrefix:@"sb-"])
    {
      v17 = [objc_msgSend(v16 "stringByDeletingPathExtension")];
    }

    v18 = [+[NSUUID UUID](NSUUID UUIDString];
    if ([v17 length])
    {
      v18 = [(NSString *)v18 stringByAppendingPathExtension:v17];
    }

    v19 = [MEMORY[0x1E695DF90] dictionary];
    [v19 setObject:@"com.apple.documentVersions" forKey:qword_1ED4401E0];
    [v19 setObject:v18 forKey:qword_1ED4401E8];
    if (a6)
    {
      v52 = @"NSDocumentInfo";
      v53[0] = a6;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      [v19 setObject:v20 forKey:qword_1ED4401F0];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3052000000;
    v49 = __Block_byref_object_copy__31;
    v50 = __Block_byref_object_dispose__31;
    v51 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3052000000;
    v38 = __Block_byref_object_copy__31;
    v39 = __Block_byref_object_dispose__31;
    v40 = 0;
    v21 = [v15 prepareAdditionCreationWithItemAtURL:a4 byMoving:v10 & 1 creationInfo:v19 error:&v51];
    if (v21)
    {
      v22 = dispatch_semaphore_create(0);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __119__NSFileVersion_NSPrivate___addVersionOfItemAtURL_withContentsOfURL_options_userInfo_temporaryStorageIdentifier_error___block_invoke;
      v34[3] = &unk_1E69F9EF0;
      v34[4] = a3;
      v34[5] = a1;
      v34[9] = &v35;
      v34[10] = &buf;
      v34[6] = v15;
      v34[7] = v21;
      v34[8] = v22;
      [v15 createAdditionStagedAtURL:v21 creationInfo:v19 completionHandler:v34];
      dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v22);
      v23 = v36[5];
      if (v23)
      {
        v24 = v23;
LABEL_24:
        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&buf, 8);
        return v24;
      }

      v29 = _NSOSLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = *(*(&buf + 1) + 40);
        *v41 = 138412802;
        v42 = a3;
        v43 = 2112;
        v44 = a4;
        v45 = 2112;
        v46 = v33;
        _os_log_error_impl(&dword_18075C000, v29, OS_LOG_TYPE_ERROR, "NSFileVersion tried to tried to add a new generation and failed. Versioned file URL: %@, contents URL: %@, error: %@", v41, 0x20u);
      }

      v30 = *(*(&buf + 1) + 40);
      if (a8)
      {
        v28 = v30;
        goto LABEL_21;
      }

LABEL_23:
      v24 = 0;
      goto LABEL_24;
    }

    v27 = _NSOSLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v32 = *(*(&buf + 1) + 40);
      *v41 = 138412802;
      v42 = a3;
      v43 = 2112;
      v44 = a4;
      v45 = 2112;
      v46 = v32;
      _os_log_error_impl(&dword_18075C000, v27, OS_LOG_TYPE_ERROR, "NSFileVersion tried to tried to add a new generation and failed. Versioned file URL: %@, contents URL: %@, error: %@", v41, 0x20u);
      if (!a8)
      {
        goto LABEL_23;
      }
    }

    else if (!a8)
    {
      goto LABEL_23;
    }

    v28 = *(*(&buf + 1) + 40);
LABEL_21:
    v24 = 0;
    *a8 = v28;
    goto LABEL_24;
  }

  v25 = _NSOSLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a3;
    _os_log_error_impl(&dword_18075C000, v25, OS_LOG_TYPE_ERROR, "NSFileVersion couldn't find the library for a file. URL: %@", &buf, 0xCu);
    if (a8)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!a8)
  {
    return 0;
  }

LABEL_13:
  v26 = _NSErrorWithFilePath(512, a3);
  v24 = 0;
  *a8 = v26;
  return v24;
}

intptr_t __119__NSFileVersion_NSPrivate___addVersionOfItemAtURL_withContentsOfURL_options_userInfo_temporaryStorageIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    +[NSFileCoordinator __itemAtURL:didGainVersionWithClientID:name:purposeID:](NSFileCoordinator, "__itemAtURL:didGainVersionWithClientID:name:purposeID:", *(a1 + 32), [a2 nameSpace], objc_msgSend(a2, "name"), 0);
    *(*(*(a1 + 72) + 8) + 40) = [objc_alloc(*(a1 + 40)) _initWithAddition:a2];
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 40) = a3;
    [*(a1 + 48) cleanupStagingURL:*(a1 + 56)];
  }

  v5 = *(a1 + 64);

  return dispatch_semaphore_signal(v5);
}

+ (id)_temporaryDirectoryURLForNewVersionOfItemAtURL:(id)a3 temporaryStorageIdentifier:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    a3 = [a1 _temporaryStorageLocationForIdentifier:a4];
  }

  if (a3)
  {
    v7 = 0;
    a3 = [+[NSFileManager defaultManager](NSFileManager URLForDirectory:"URLForDirectory:inDomain:appropriateForURL:create:error:" inDomain:99 appropriateForURL:1 create:a3 error:1, &v7];
    if (!a3)
    {
      v5 = _NSOSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v7;
        _os_log_error_impl(&dword_18075C000, v5, OS_LOG_TYPE_ERROR, "NSFileVersion invoked [NSFileManager URLForDirectory:inDomain:appropriateForURL:create:error:] and that failed. Here's the error:\n%@", buf, 0xCu);
      }
    }
  }

  return a3;
}

+ (BOOL)_removeOtherVersionsOfItemAtURL:(id)a3 temporaryStorageIdentifier:(id)a4 error:(id *)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = [a1 _existingLibraryForURL:a3 temporaryStorageIdentifier:a4];
  if (v6)
  {
    v7 = v6;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3052000000;
    v47 = __Block_byref_object_copy__31;
    v48 = __Block_byref_object_dispose__31;
    v49 = 0;
    if (qword_1ED440208 != -1)
    {
      dispatch_once(&qword_1ED440208, &__block_literal_global_263);
    }

    v8 = [v7 enumeratorForAdditionsInNameSpace:@"com.apple.ubiquity" withOptions:0 withoutOptions:0 ordering:0];
    v42 = v7;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v67 objects:v66 count:16];
    if (v9)
    {
      v10 = *v68;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v68 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v67 + 1) + 8 * i);
          if (([v12 fp_markResolvedWithError:v45 + 5] & 1) == 0)
          {
            v13 = _NSOSLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [v12 name];
              v15 = v45[5];
              *buf = 138412802;
              v61 = a3;
              v62 = 2112;
              v63 = v14;
              v64 = 2112;
              v65 = v15;
              _os_log_error_impl(&dword_18075C000, v13, OS_LOG_TYPE_ERROR, "marking version %@ for %@ as resolved failed. The error is:\n%@", buf, 0x20u);
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v67 objects:v66 count:16];
      }

      while (v9);
    }

    if ([v8 error])
    {
      v16 = _NSOSLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v37 = [v8 error];
        *buf = 138412546;
        v61 = a3;
        v62 = 2112;
        v63 = v37;
        _os_log_error_impl(&dword_18075C000, v16, OS_LOG_TYPE_ERROR, "Enumeration of versions for %@ failed. Here's the error:\n%@", buf, 0x16u);
      }
    }

    v17 = [v42 enumeratorForAdditionsInNameSpace:@"com.apple.FileProvider.conflict" withOptions:0 withoutOptions:0 ordering:0];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v56 objects:v55 count:16];
    if (v18)
    {
      v19 = *v57;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v57 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v56 + 1) + 8 * j);
          if (([v21 fp_markResolvedWithError:v45 + 5] & 1) == 0)
          {
            v22 = _NSOSLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [v21 name];
              v24 = v45[5];
              *buf = 138412802;
              v61 = a3;
              v62 = 2112;
              v63 = v23;
              v64 = 2112;
              v65 = v24;
              _os_log_error_impl(&dword_18075C000, v22, OS_LOG_TYPE_ERROR, "marking version %@ for %@ as resolved failed. The error is:\n%@", buf, 0x20u);
            }
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v56 objects:v55 count:16];
      }

      while (v18);
    }

    if ([v17 error])
    {
      v25 = _NSOSLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v38 = [v17 error];
        *buf = 138412546;
        v61 = a3;
        v62 = 2112;
        v63 = v38;
        _os_log_error_impl(&dword_18075C000, v25, OS_LOG_TYPE_ERROR, "Enumeration of versions for %@ failed. Here's the error:\n%@", buf, 0x16u);
      }
    }

    v26 = [v42 enumeratorForAdditionsInNameSpace:@"com.apple.documentVersions" withOptions:0 withoutOptions:0 ordering:0];
    v27 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v26, "allObjects")}];
    if ([v26 error])
    {
      v28 = _NSOSLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v39 = [v26 error];
        *buf = 138412546;
        v61 = a3;
        v62 = 2112;
        v63 = v39;
        _os_log_error_impl(&dword_18075C000, v28, OS_LOG_TYPE_ERROR, "Enumeration of versions for %@ failed. Here's the error:\n%@", buf, 0x16u);
      }
    }

    objc_lookUpClass("GSTemporaryStorage");
    if (objc_opt_isKindOfClass())
    {
      if ([gsDefaultStorageManager() removeTemporaryStorage:v42 error:v45 + 5])
      {
LABEL_35:
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v29 = [v27 countByEnumeratingWithState:&v51 objects:v50 count:16];
        if (v29)
        {
          v30 = *v52;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v52 != v30)
              {
                objc_enumerationMutation(v27);
              }

              +[NSFileCoordinator __itemAtURL:didLoseVersionWithClientID:name:purposeID:](NSFileCoordinator, "__itemAtURL:didLoseVersionWithClientID:name:purposeID:", a3, [*(*(&v51 + 1) + 8 * k) nameSpace], objc_msgSend(*(*(&v51 + 1) + 8 * k), "name"), 0);
            }

            v29 = [v27 countByEnumeratingWithState:&v51 objects:v50 count:16];
          }

          while (v29);
        }

        v32 = 1;
LABEL_49:
        _Block_object_dispose(&v44, 8);
        return v32;
      }
    }

    else
    {
      v33 = dispatch_semaphore_create(0);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __93__NSFileVersion_NSPrivate___removeOtherVersionsOfItemAtURL_temporaryStorageIdentifier_error___block_invoke;
      v43[3] = &unk_1E69F9F18;
      v43[4] = v33;
      v43[5] = &v44;
      [v42 removeAllAdditionsForNamespaces:&unk_1EEF5A008 completionHandler:v43];
      dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v33);
      v34 = v45[5];
      if (!v45[5])
      {
        goto LABEL_35;
      }
    }

    v35 = _NSOSLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v40 = v45[5];
      *buf = 138412546;
      v61 = a3;
      v62 = 2112;
      v63 = v40;
      _os_log_error_impl(&dword_18075C000, v35, OS_LOG_TYPE_ERROR, "NSFileVersion tried to tried to delete temporary version storage and failed. Versioned file URL: %@, error: %@", buf, 0x16u);
    }

    v32 = 0;
    if (a5)
    {
      *a5 = v45[5];
    }

    goto LABEL_49;
  }

  return 1;
}

id __93__NSFileVersion_NSPrivate___removeOtherVersionsOfItemAtURL_temporaryStorageIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  dispatch_semaphore_signal(*(a1 + 32));
  result = a2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)_versionOfItemAtURL:(id)a3 forClientID:(id)a4 name:(id)a5 temporaryStorageIdentifier:(id)a6 evenIfDeleted:(BOOL)a7
{
  v7 = a7;
  v12 = [a1 _existingLibraryForURL:a3 temporaryStorageIdentifier:a6];
  v13 = [v12 additionWithName:a5 inNameSpace:a4 error:0];
  if (v13)
  {
    v14 = [[a1 alloc] _initWithAddition:v13];
  }

  else if (v7)
  {
    v14 = [[a1 alloc] _initWithFileURL:a3 library:v12 clientID:a4 name:a5 contentsURL:0 isBackup:0 revision:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)_removeTemporaryDirectoryAtURL:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 path];
  if (v4)
  {
    v5 = v4;
    if (!rmdir([v4 fileSystemRepresentation]))
    {
      return;
    }

    v6 = *__error();
    v7 = _NSOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 1024;
      v11 = v6;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "NSDocument called rmdir(%@), it didn't return 0, and errno was set to %{errno}d.", &v8, 0x12u);
    }
  }

  [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:a3, 0];
}

- (id)_documentInfo
{
  result = [-[GSAddition userInfo](self->_addition "userInfo")];
  if (!result)
  {
    return MEMORY[0x1E695E0F8];
  }

  return result;
}

- (BOOL)_setDocumentInfo:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  addition = self->_addition;
  v5 = @"NSDocumentInfo";
  v6[0] = a3;
  return -[GSAddition mergeUserInfo:error:](addition, "mergeUserInfo:error:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1], 0);
}

- (void)_overrideModificationDateWithDate:(id)a3
{
  if (self->_modificationDate != a3)
  {
    if (self->_addition)
    {
      v5 = [(NSFileVersion *)self _documentInfo];
      if (v5)
      {
        v6 = [v5 mutableCopy];
        [v6 setObject:a3 forKey:@"modificationDate"];
        if ([(NSFileVersion *)self _setDocumentInfo:v6])
        {

          self->_modificationDate = [a3 copy];
        }
      }
    }
  }
}

- (BOOL)_preserveConflictVersionLocally
{
  if (![(NSFileVersion *)self isConflict])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"-[NSFileVersion _preserveConflictVersionLocally]: You can only use it with conflict versions." userInfo:0]);
  }

  [(NSFileVersion *)self setResolved:1];
  return 1;
}

+ (BOOL)unresolvedConflictsExistForItemAtURL:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v3 = [a3 getResourceValue:v5 forKey:*MEMORY[0x1E695DCA8] error:0];
  if (v3)
  {
    LOBYTE(v3) = [v5[0] BOOLValue];
  }

  return v3;
}

+ (void)_markConflicts:(id)a3 asHandledForItemAtURL:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: URL parameter may not be nil", NSStringFromSelector(a2)), 0}];
    objc_exception_throw(v9);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [*(*(&v11 + 1) + 8 * v8++) setResolved:1];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

@end