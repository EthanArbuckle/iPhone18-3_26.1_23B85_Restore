@interface NSFileWrapper
+ (BOOL)_canSafelyMapFilesAtPath:(id)path;
+ (BOOL)_finishWritingToURL:(id)l byMovingItemAtURL:(id)rL addingAttributes:(id)attributes error:(id *)error;
+ (BOOL)_finishWritingToURL:(id)l byTakingContentsFromItemAtURL:(id)rL addingAttributes:(id)attributes usingTemporaryDirectoryAtURL:(id)uRL backupFileName:(id)name error:(id *)error;
+ (BOOL)_forPath:(id)path getItemKind:(id *)kind modificationDate:(id *)date;
+ (id)_newContentsAtURL:(id)l path:(id)path itemKind:(id)kind oldChildrenByUniqueFileName:(id)name options:(unint64_t)options error:(id *)error;
+ (id)_pathForURL:(id)l reading:(BOOL)reading error:(id *)error;
+ (id)_temporaryDirectoryURLForWritingToURL:(id)l error:(id *)error;
+ (void)_removeTemporaryDirectoryAtURL:(id)l;
+ (void)_writeAttributes:(id)attributes toURL:(id)l;
+ (void)initialize;
- (BOOL)_forWritingToURL:(id)l returnContentsLazyReadingError:(id *)error;
- (BOOL)_matchesItemKind:(id)kind modificationDate:(id)date;
- (BOOL)_readContentsFromURL:(id)l path:(id)path itemKind:(id)kind options:(unint64_t)options error:(id *)error;
- (BOOL)_writeContentsToURL:(id)l path:(id)path originalContentsURL:(id)rL tryHardLinking:(BOOL)linking didHardLinking:(BOOL *)hardLinking error:(id *)error;
- (BOOL)isDirectory;
- (BOOL)isRegularFile;
- (BOOL)isSymbolicLink;
- (BOOL)matchesContentsOfURL:(NSURL *)url;
- (BOOL)readFromURL:(NSURL *)url options:(NSFileWrapperReadingOptions)options error:(NSError *)outError;
- (BOOL)writeToURL:(NSURL *)url options:(NSFileWrapperWritingOptions)options originalContentsURL:(NSURL *)originalContentsURL error:(NSError *)outError;
- (NSData)regularFileContents;
- (NSData)serializedRepresentation;
- (NSDictionary)fileAttributes;
- (NSDictionary)fileWrappers;
- (NSFileWrapper)initDirectoryWithFileWrappers:(NSDictionary *)childrenByPreferredName;
- (NSFileWrapper)initRegularFileWithContents:(NSData *)contents;
- (NSFileWrapper)initSymbolicLinkWithDestinationURL:(NSURL *)url;
- (NSFileWrapper)initWithCoder:(NSCoder *)inCoder;
- (NSFileWrapper)initWithSerializedRepresentation:(NSData *)serializeRepresentation;
- (NSFileWrapper)initWithURL:(NSURL *)url options:(NSFileWrapperReadingOptions)options error:(NSError *)outError;
- (NSString)addFileWrapper:(NSFileWrapper *)child;
- (NSString)addRegularFileWithContents:(NSData *)data preferredFilename:(NSString *)fileName;
- (NSString)filename;
- (NSString)keyForFileWrapper:(NSFileWrapper *)child;
- (NSString)preferredFilename;
- (NSURL)symbolicLinkDestinationURL;
- (id)_addChild:(id)child forUniqueFileName:(id)name;
- (id)_attributesToWrite;
- (id)_fullDescription:(BOOL)description;
- (id)_initWithImpl:(id)impl preferredFileName:(id)name uniqueFileName:(id)fileName docInfo:(id)info iconData:(id)data;
- (id)_newImpl;
- (id)_uniqueFileNameOfChild:(id)child;
- (void)_addParent:(id)parent;
- (void)_initDirectoryContents;
- (void)_observePreferredFileNameOfChild:(id)child;
- (void)_removeChild:(id)child forUniqueFileName:(id)name;
- (void)_removeParent:(id)parent;
- (void)_resetFileModificationDate;
- (void)_updateDescendantFileNames;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeFileWrapper:(NSFileWrapper *)child;
- (void)setFileAttributes:(NSDictionary *)fileAttributes;
- (void)setFilename:(NSString *)filename;
- (void)setPreferredFilename:(NSString *)preferredFilename;
@end

@implementation NSFileWrapper

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    objectEnumerator = [self->_contents objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v10 + 1) + 8 * v7++) _removeParent:self];
        }

        while (v5 != v7);
        v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v5);
    }
  }

  v8.receiver = self;
  v8.super_class = NSFileWrapper;
  [(NSFileWrapper *)&v8 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:46];
  }
}

- (NSFileWrapper)initWithURL:(NSURL *)url options:(NSFileWrapperReadingOptions)options error:(NSError *)outError
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = NSFileWrapper;
  v8 = [(NSFileWrapper *)&v20 init];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_class() _pathForURL:url reading:1 error:outError];
    if (v10)
    {
      v11 = v10;
      if (([(NSURL *)v10 isEqualToString:@"/"]& 1) == 0)
      {
        if ((options & 0x202) == 0)
        {
          v14 = [objc_opt_class() _canSafelyMapFilesAtPath:v11];
          v15 = options | 2;
          if (v14)
          {
            v15 = options;
          }

          options = v15 | 0x200;
        }

        v16 = +[NSFileManager defaultManager];
        v17 = [-[NSFileManager _attributesOfItemAtURL:filterResourceFork:error:](v16 _attributesOfItemAtURL:url filterResourceFork:0 error:{outError), "copy"}];
        v9->_fileAttributes = v17;
        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = [(NSString *)[(NSURL *)v11 lastPathComponent] copy];
        v9->_preferredFileName = v18;
        v9->_fileName = v18;
        if (options)
        {
          if ([(NSFileWrapper *)v9 _readContentsFromURL:url path:v11 itemKind:[(NSDictionary *)v9->_fileAttributes fileType] options:options error:outError])
          {
            return v9;
          }

          goto LABEL_24;
        }

        if (url)
        {
          if ([(NSFileManager *)v16 isReadableFileAtPath:v11]|| (options & 0x100) != 0)
          {
            v9->_contentsURL = url;
            v9->_contentsMustBeReadWithoutMapping = (options & 2) != 0;
            return v9;
          }

          if (!outError)
          {
            goto LABEL_24;
          }

          v12 = 13;
          v13 = url;
        }

        else
        {
          if (!outError)
          {
            goto LABEL_24;
          }

          v12 = 2;
          v13 = 0;
        }

        goto LABEL_6;
      }

      if (outError)
      {
        v12 = 27;
        v13 = v11;
LABEL_6:
        *outError = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v12, v13, 1, 0, 0);
      }
    }

LABEL_24:

    return 0;
  }

  if (!outError)
  {
    return 0;
  }

  v9 = 0;
  *outError = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(12, url, 1, 0, 0);
  return v9;
}

- (NSFileWrapper)initDirectoryWithFileWrappers:(NSDictionary *)childrenByPreferredName
{
  v18 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSFileWrapper;
  v4 = [(NSFileWrapper *)&v12 init];
  if (v4)
  {
    v4->_fileAttributes = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"NSFileTypeDirectory", @"NSFileType", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 511), @"NSFilePosixPermissions", 0}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(NSDictionary *)childrenByPreferredName countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(childrenByPreferredName);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [(NSDictionary *)childrenByPreferredName objectForKey:v9];
          if (![v10 preferredFilename])
          {
            [v10 setPreferredFilename:v9];
          }

          [(NSFileWrapper *)v4 _addChild:v10 forUniqueFileName:0];
        }

        v6 = [(NSDictionary *)childrenByPreferredName countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v6);
    }

    if (!v4->_contents)
    {
      [(NSFileWrapper *)v4 _initDirectoryContents];
    }
  }

  return v4;
}

- (NSFileWrapper)initRegularFileWithContents:(NSData *)contents
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSFileWrapper;
  v4 = [(NSFileWrapper *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v6 = [NSNumber numberWithInt:438];
    v4->_fileAttributes = [v5 initWithObjectsAndKeys:{@"NSFileTypeRegular", @"NSFileType", v6, @"NSFilePosixPermissions", objc_msgSend(MEMORY[0x1E695DF00], "date"), @"NSFileModificationDate", 0}];
    if (contents)
    {
      v7 = [(NSData *)contents copy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    }

    v4->_contents = v7;
  }

  return v4;
}

- (NSFileWrapper)initSymbolicLinkWithDestinationURL:(NSURL *)url
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileWrapper;
  v4 = [(NSFileWrapper *)&v6 init];
  if (v4)
  {
    v4->_fileAttributes = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"NSFileTypeSymbolicLink", @"NSFileType", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 438), @"NSFilePosixPermissions", 0}];
    v4->_contents = [(NSURL *)url copy];
  }

  return v4;
}

- (NSFileWrapper)initWithSerializedRepresentation:(NSData *)serializeRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [[NSRTFD alloc] initWithDataRepresentation:serializeRepresentation];
  if (!v4)
  {
LABEL_15:

    return 0;
  }

  v5 = v4;
  v6 = [(NSRTFD *)v4 objectForKey:@"__@UTF8PreferredName@__"];
  if (v6)
  {
    v7 = v6;
    v8 = [NSString alloc];
    v9 = v7;
    v10 = 4;
  }

  else
  {
    v11 = [(NSRTFD *)v5 objectForKey:@"__@PreferredName@__"];
    if (!v11)
    {
      goto LABEL_8;
    }

    v8 = [NSString alloc];
    v9 = v11;
    v10 = 2;
  }

  v11 = [(NSString *)v8 initWithData:v9 encoding:v10];
  if (v11)
  {
    [(NSRTFD *)v5 removeObjectForKey:@"__@UTF8PreferredName@__"];
    [(NSRTFD *)v5 removeObjectForKey:@"__@PreferredName@__"];
    if ((_validateFilename(v11) & 1) == 0)
    {
      v20 = _NSOSLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = 138477827;
        v23 = v11;
        _os_log_error_impl(&dword_18075C000, v20, OS_LOG_TYPE_ERROR, "[NSFileWrapper initWithSerializedRepresentation:] encountered an invalid preferredFileName: %{private}@", &v22, 0xCu);
      }

      goto LABEL_15;
    }
  }

LABEL_8:
  if ([(NSRTFD *)v5 isPackage])
  {
    selfCopy2 = self;
    v13 = v5;
    v14 = v11;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = [(NSRTFD *)v5 objectForKey:0x1EEF10430];
    v18 = [(NSRTFD *)v5 _getDocInfoForKey:0x1EEF10430];
    v16 = -[NSRTFD objectForKey:](v5, "objectForKey:", [@".." stringByAppendingPathExtension:@"tiff"]);
    selfCopy2 = self;
    v13 = v17;
    v14 = v11;
    v15 = v18;
  }

  v19 = [(NSFileWrapper *)selfCopy2 _initWithImpl:v13 preferredFileName:v14 uniqueFileName:0 docInfo:v15 iconData:v16];

  return v19;
}

- (BOOL)isDirectory
{
  fileType = [(NSDictionary *)[(NSFileWrapper *)self fileAttributes] fileType];

  return [fileType isEqualToString:@"NSFileTypeDirectory"];
}

- (BOOL)isRegularFile
{
  fileType = [(NSDictionary *)[(NSFileWrapper *)self fileAttributes] fileType];

  return [fileType isEqualToString:@"NSFileTypeRegular"];
}

- (BOOL)isSymbolicLink
{
  fileType = [(NSDictionary *)[(NSFileWrapper *)self fileAttributes] fileType];

  return [fileType isEqualToString:@"NSFileTypeSymbolicLink"];
}

- (void)_observePreferredFileNameOfChild:(id)child
{
  childCopy = child;
  v5 = [(NSArray *)[(NSDictionary *)[(NSFileWrapper *)self fileWrappers] allKeysForObject:child] count];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    do
    {
      [(NSFileWrapper *)self removeFileWrapper:child];
      --v7;
    }

    while (v7);
    do
    {
      [(NSFileWrapper *)self addFileWrapper:child];
      --v6;
    }

    while (v6);
  }
}

- (void)setPreferredFilename:(NSString *)preferredFilename
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(NSString *)preferredFilename length])
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ *** preferredFilename cannot be empty.", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v12);
  }

  v6 = self->_preferredFileName;
  if (v6 != preferredFilename)
  {

    self->_preferredFileName = [(NSString *)preferredFilename copy];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    parents = self->_parents;
    v8 = [(NSHashTable *)parents countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(parents);
          }

          [*(*(&v14 + 1) + 8 * i) _observePreferredFileNameOfChild:self];
        }

        v9 = [(NSHashTable *)parents countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }
  }
}

- (NSString)preferredFilename
{
  v2 = self->_preferredFileName;

  return v2;
}

- (void)setFilename:(NSString *)filename
{
  v3 = self->_fileName;
  if (v3 != filename)
  {

    self->_fileName = [(NSString *)filename copy];
  }
}

- (NSString)filename
{
  v2 = self->_fileName;

  return v2;
}

- (void)setFileAttributes:(NSDictionary *)fileAttributes
{
  if (![(NSDictionary *)fileAttributes objectForKey:@"NSFileType"]|| ![(NSDictionary *)fileAttributes objectForKey:@"NSFilePosixPermissions"])
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ *** file attributes cannot be nil and must contain at least NSFileType and NSFilePosixPermissions.", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  os_unfair_lock_lock_with_options();
  v6 = self->_fileAttributes;
  if (v6 != fileAttributes)
  {

    self->_fileAttributes = [(NSDictionary *)fileAttributes copy];
    self->_attributesMustBeWrittenSoNoHardLinking = 1;
  }

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (NSDictionary)fileAttributes
{
  os_unfair_lock_lock_with_options();
  if (_CFAppVersionCheckLessThan() || _CFAppVersionCheckLessThan())
  {
    v3 = [(NSDictionary *)self->_fileAttributes mutableCopy];
    v4 = [(NSDictionary *)v3 objectForKey:@"NSFileHFSCreatorCode"];
    if (v4 && ![v4 unsignedIntValue])
    {
      [(NSDictionary *)v3 removeObjectForKey:@"NSFileHFSCreatorCode"];
    }

    v5 = [(NSDictionary *)v3 objectForKey:@"NSFileHFSTypeCode"];
    if (v5 && ![v5 unsignedIntValue])
    {
      [(NSDictionary *)v3 removeObjectForKey:@"NSFileHFSTypeCode"];
    }
  }

  else
  {
    v3 = self->_fileAttributes;
  }

  os_unfair_lock_unlock(&self->_propertyLock);

  return v3;
}

+ (BOOL)_forPath:(id)path getItemKind:(id *)kind modificationDate:(id *)date
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v11.st_mtimespec, 0, 96);
  v7 = lstat([path fileSystemRepresentation], &v11);
  if (!v7)
  {
    if (kind)
    {
      if ((v11.st_mode & 0x1000) != 0 || (v8 = (v11.st_mode >> 13) - 1, v8 > 5))
      {
        v9 = &NSFileTypeUnknown;
      }

      else
      {
        v9 = off_1E69F7660[v8];
      }

      *kind = *v9;
    }

    if (date)
    {
      *date = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v11.st_mtimespec.tv_sec];
    }
  }

  return v7 == 0;
}

- (BOOL)_matchesItemKind:(id)kind modificationDate:(id)date
{
  fileModificationDate = [(NSDictionary *)[(NSFileWrapper *)self fileAttributes] fileModificationDate];
  result = 0;
  if (date && fileModificationDate)
  {
    [date timeIntervalSinceReferenceDate];
    v10 = v9;
    [fileModificationDate timeIntervalSinceReferenceDate];
    return vabdd_f64(v10, v11) < 1.0 && ([kind isEqualToString:@"NSFileTypeDirectory"] && -[NSFileWrapper isDirectory](self, "isDirectory") || objc_msgSend(kind, "isEqualToString:", @"NSFileTypeRegular") && -[NSFileWrapper isRegularFile](self, "isRegularFile") || objc_msgSend(kind, "isEqualToString:", @"NSFileTypeSymbolicLink") && -[NSFileWrapper isSymbolicLink](self, "isSymbolicLink"));
  }

  return result;
}

- (BOOL)matchesContentsOfURL:(NSURL *)url
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() _pathForURL:url reading:1 error:0];
  if (v4)
  {
    v5 = v4;
    v16 = 0;
    v17 = 0;
    LODWORD(v4) = [objc_opt_class() _forPath:v4 getItemKind:&v17 modificationDate:&v16];
    if (v4)
    {
      LODWORD(v4) = [(NSFileWrapper *)self _matchesItemKind:v17 modificationDate:v16];
      if (v4)
      {
        if (-[NSFileWrapper isDirectory](self, "isDirectory") && (contents = self->_contents, v19 = 0u, v20 = 0u, v21 = 0u, v22 = 0u, (v7 = [contents countByEnumeratingWithState:&v19 objects:v18 count:16]) != 0))
        {
          v8 = v7;
          v9 = *v20;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(contents);
              }

              v11 = *(*(&v19 + 1) + 8 * i);
              v12 = objc_alloc_init(NSAutoreleasePool);
              v13 = [contents objectForKey:v11];
              v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:{objc_msgSend(v5, "stringByAppendingPathComponent:", v11)}];
              LODWORD(v13) = [v13 matchesContentsOfURL:v14];

              [(NSAutoreleasePool *)v12 drain];
              if (!v13)
              {
                LOBYTE(v4) = 0;
                return v4;
              }
            }

            v8 = [contents countByEnumeratingWithState:&v19 objects:v18 count:16];
            LOBYTE(v4) = 1;
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          LOBYTE(v4) = 1;
        }
      }
    }
  }

  return v4;
}

+ (BOOL)_canSafelyMapFilesAtPath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  IsSafeForMapping = [path getFileSystemRepresentation:v11 maxLength:1024];
  if (IsSafeForMapping)
  {
    v10 = 0;
    v7 = 0;
    v8 = 5;
    v9 = 2147500032;
    v4 = getattrlist(v11, &v8, &v7, 8uLL, 0);
    LOBYTE(IsSafeForMapping) = 0;
    if (!v4 && (WORD2(v7) & 0x1200) == 0x1000)
    {
      IsSafeForMapping = _NSFileCompressionTypeIsSafeForMapping(v11);
      if (IsSafeForMapping)
      {
        v7 = 0;
        v9 = 0;
        v10 = 0;
        v8 = 0x4000000000000005;
        if (getattrlist(v11, &v8, &v7, 8uLL, 1u))
        {
          v5 = 0;
        }

        else
        {
          v5 = HIDWORD(v7) == 1;
        }

        LOBYTE(IsSafeForMapping) = !v5;
      }
    }
  }

  return IsSafeForMapping;
}

+ (id)_newContentsAtURL:(id)l path:(id)path itemKind:(id)kind oldChildrenByUniqueFileName:(id)name options:(unint64_t)options error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  v13 = +[NSFileManager defaultManager];
  if ([kind isEqualToString:@"NSFileTypeDirectory"])
  {
    v14 = [(NSFileManager *)v13 contentsOfDirectoryAtURL:l includingPropertiesForKeys:0 options:0 error:error];
    if (v14)
    {
      v15 = v14;
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v17 = [v15 countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v44 = *v52;
        optionsCopy = options;
        errorCopy = error;
        v41 = v16;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v52 != v44)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v51 + 1) + 8 * i);
            v22 = objc_alloc_init(NSAutoreleasePool);
            lastPathComponent = [v21 lastPathComponent];
            if (![objc_msgSend(lastPathComponent "pathExtension")])
            {
              goto LABEL_51;
            }

            if (!v19)
            {
              v19 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v15, "count")}];
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v24 = [v15 countByEnumeratingWithState:&v46 objects:v45 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v47;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v47 != v26)
                    {
                      objc_enumerationMutation(v15);
                    }

                    lastPathComponent2 = [*(*(&v46 + 1) + 8 * j) lastPathComponent];
                    if (lastPathComponent2)
                    {
                      [v19 addObject:lastPathComponent2];
                    }
                  }

                  v25 = [v15 countByEnumeratingWithState:&v46 objects:v45 count:16];
                }

                while (v25);
                options = optionsCopy;
                error = errorCopy;
              }

              v16 = v41;
            }

            if (([v19 containsObject:{objc_msgSend(lastPathComponent, "stringByDeletingPathExtension", optionsCopy, errorCopy)}] & 1) == 0)
            {
LABEL_51:
              if (lastPathComponent && (v29 = [name objectForKey:lastPathComponent]) != 0)
              {
                if (![v29 readFromURL:v21 options:options | 0x100 error:error])
                {
                  goto LABEL_40;
                }

                [name removeObjectForKey:lastPathComponent];
              }

              else
              {
                v30 = [[self alloc] initWithURL:v21 options:options | 0x100 error:error];
                if (!v30)
                {
LABEL_40:
                  if (error)
                  {
                    v37 = *error;
                    [(NSAutoreleasePool *)v22 drain];
                    v38 = *error;
                  }

                  else
                  {
                    [(NSAutoreleasePool *)v22 drain];
                  }

                  return 0;
                }

                v31 = v30;
                [v16 addObject:v30];
              }
            }

            [(NSAutoreleasePool *)v22 drain:optionsCopy];
          }

          v18 = [v15 countByEnumeratingWithState:&v51 objects:v50 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      return v16;
    }

    return 0;
  }

  if ([kind isEqualToString:@"NSFileTypeRegular"])
  {
    v32 = objc_alloc(MEMORY[0x1E695DEF0]);

    return [v32 initWithContentsOfURL:l options:~(options >> 1) & 1 error:error];
  }

  if (![kind isEqualToString:@"NSFileTypeSymbolicLink"])
  {
    if (error)
    {
      v16 = 0;
      *error = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(5, l, 1, 0, 0);
      return v16;
    }

    return 0;
  }

  v34 = [(NSFileManager *)v13 destinationOfSymbolicLinkAtPath:path error:error];
  if (!v34)
  {
    return 0;
  }

  v35 = v34;
  v36 = objc_alloc(MEMORY[0x1E695DFF8]);

  return [v36 initFileURLWithPath:v35];
}

- (BOOL)_readContentsFromURL:(id)l path:(id)path itemKind:(id)kind options:(unint64_t)options error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  startAccessingSecurityScopedResource = [l startAccessingSecurityScopedResource];
  if (!path)
  {
    path = [objc_opt_class() _pathForURL:l reading:1 error:error];
    if (!path)
    {
      v27 = 0;
      if (!startAccessingSecurityScopedResource)
      {
        return v27;
      }

      goto LABEL_30;
    }
  }

  if ([(NSFileWrapper *)self isDirectory])
  {
    v14 = [self->_contents mutableCopy];
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_opt_class() _newContentsAtURL:l path:path itemKind:kind oldChildrenByUniqueFileName:v14 options:options error:error];
  v16 = options & 0x100 | v15;
  v17 = v16 == 0;
  if (v16)
  {
    v18 = v15;
    v29 = startAccessingSecurityScopedResource;
    if (error && !v15)
    {
      *error = 0;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = [v14 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v14);
          }

          -[NSFileWrapper _removeChild:forUniqueFileName:](self, "_removeChild:forUniqueFileName:", [v14 objectForKey:*(*(&v36 + 1) + 8 * i)], *(*(&v36 + 1) + 8 * i));
        }

        v20 = [v14 countByEnumeratingWithState:&v36 objects:v35 count:16];
      }

      while (v20);
    }

    if ([kind isEqualToString:@"NSFileTypeDirectory"])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = [v18 countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v32;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v32 != v25)
            {
              objc_enumerationMutation(v18);
            }

            [(NSFileWrapper *)self _addChild:*(*(&v31 + 1) + 8 * j) forUniqueFileName:0];
          }

          v24 = [v18 countByEnumeratingWithState:&v31 objects:v30 count:16];
        }

        while (v24);
      }

      startAccessingSecurityScopedResource = v29;
      if (v18 && !self->_contents)
      {
        [(NSFileWrapper *)self _initDirectoryContents];
      }
    }

    else
    {

      self->_contents = v18;
      startAccessingSecurityScopedResource = v29;
    }
  }

  v27 = !v17;

  if (startAccessingSecurityScopedResource)
  {
LABEL_30:
    [l stopAccessingSecurityScopedResource];
  }

  return v27;
}

- (BOOL)readFromURL:(NSURL *)url options:(NSFileWrapperReadingOptions)options error:(NSError *)outError
{
  v9 = [objc_opt_class() _pathForURL:url reading:1 error:outError];
  if (v9)
  {
    v10 = v9;
    if ((options & 0x202) == 0)
    {
      v11 = [objc_opt_class() _canSafelyMapFilesAtPath:v9];
      v12 = options | 2;
      if (v11)
      {
        v12 = options;
      }

      options = v12 | 0x200;
    }

    v13 = +[NSFileManager defaultManager];
    v9 = [(NSFileManager *)v13 _attributesOfItemAtURL:url filterResourceFork:0 error:outError];
    if (v9)
    {
      v14 = v9;
      contents = self->_contents;
      if (contents)
      {
        if (!-[NSFileWrapper _matchesItemKind:modificationDate:](self, "_matchesItemKind:modificationDate:", [v9 fileType], objc_msgSend(v9, "fileModificationDate")) || -[NSFileWrapper isDirectory](self, "isDirectory"))
        {
LABEL_13:
          LODWORD(v9) = -[NSFileWrapper _readContentsFromURL:path:itemKind:options:error:](self, "_readContentsFromURL:path:itemKind:options:error:", url, v10, [v14 fileType], options, outError);
          if (!v9)
          {
            return v9;
          }

LABEL_19:
          [(NSFileWrapper *)self setFileAttributes:v14];
          self->_attributesMustBeWrittenSoNoHardLinking = 0;

          self->_cachedDirectoryChildrenAsDictionary = 0;
          LOBYTE(v9) = 1;
          return v9;
        }

        LOBYTE(contents) = self->_contents != 0;
      }

      if (contents & 1) == 0 && (options)
      {
        goto LABEL_13;
      }

      if (options)
      {
        goto LABEL_19;
      }

      if (url)
      {
        if ([(NSFileManager *)v13 isReadableFileAtPath:v10])
        {

          self->_contentsURL = url;
          self->_contentsMustBeReadWithoutMapping = (options & 2) != 0;
          goto LABEL_19;
        }

        if (outError)
        {
          v16 = 13;
          v17 = url;
          goto LABEL_25;
        }
      }

      else if (outError)
      {
        v16 = 2;
        v17 = 0;
LABEL_25:
        v18 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v16, v17, 1, 0, 0);
        LOBYTE(v9) = 0;
        *outError = v18;
        return v9;
      }

      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)_forWritingToURL:(id)l returnContentsLazyReadingError:(id *)error
{
  if (error)
  {
    contentsLazyReadingError = self->_contentsLazyReadingError;
    if (contentsLazyReadingError)
    {
      v7 = contentsLazyReadingError;
    }

    else
    {
      v7 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(9, l, 0, 0, 0);
    }

    *error = v7;
  }

  self->_contentsLazyReadingError = 0;
  return 0;
}

- (BOOL)_writeContentsToURL:(id)l path:(id)path originalContentsURL:(id)rL tryHardLinking:(BOOL)linking didHardLinking:(BOOL *)hardLinking error:(id *)error
{
  linkingCopy = linking;
  v61 = *MEMORY[0x1E69E9840];
  v14 = objc_opt_class();
  v15 = v14;
  if (rL)
  {
    v16 = [v14 _pathForURL:rL reading:1 error:0];
    if (!hardLinking)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  if (hardLinking)
  {
LABEL_3:
    *hardLinking = 0;
  }

LABEL_4:
  v17 = +[NSFileManager defaultManager];
  if (![(NSFileWrapper *)self isDirectory])
  {
    if ([(NSFileWrapper *)self isRegularFile])
    {
      if (v16)
      {
        if (linkingCopy && !self->_attributesMustBeWrittenSoNoHardLinking)
        {
          v54 = 0;
          v55 = 0;
          if ([v15 _forPath:v16 getItemKind:&v55 modificationDate:&v54])
          {
            if ([(NSFileWrapper *)self _matchesItemKind:v55 modificationDate:v54])
            {
              v37 = link([v16 fileSystemRepresentation], objc_msgSend(path, "fileSystemRepresentation"));
              if (hardLinking && !v37)
              {
                result = 1;
                *hardLinking = 1;
                return result;
              }

              if (!v37)
              {
                return 1;
              }
            }
          }
        }
      }

      self->_contentsLazyReadingError = 0;
      regularFileContents = [(NSFileWrapper *)self regularFileContents];
      if (regularFileContents)
      {
        return [(NSData *)regularFileContents writeToURL:l options:0 error:error];
      }
    }

    else
    {
      if (![(NSFileWrapper *)self isSymbolicLink])
      {
        if (error)
        {
          v40 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(5, l, 1, 0, 0);
          result = 0;
          *error = v40;
          return result;
        }

        return 0;
      }

      self->_contentsLazyReadingError = 0;
      symbolicLinkDestinationURL = [(NSFileWrapper *)self symbolicLinkDestinationURL];
      if (symbolicLinkDestinationURL)
      {
        relativePath = [(NSURL *)symbolicLinkDestinationURL relativePath];

        return [(NSFileManager *)v17 createSymbolicLinkAtPath:path withDestinationPath:relativePath error:error];
      }
    }

    [(NSFileWrapper *)self _forWritingToURL:l returnContentsLazyReadingError:error];
    return 0;
  }

  v51 = v17;
  if (![(NSFileManager *)v17 createDirectoryAtPath:path withIntermediateDirectories:0 attributes:0 error:error])
  {
LABEL_47:
    [(NSFileManager *)v51 removeItemAtPath:path error:0];
    return 0;
  }

  self->_contentsLazyReadingError = 0;
  fileWrappers = [(NSFileWrapper *)self fileWrappers];
  if (!fileWrappers)
  {
    [(NSFileWrapper *)self _forWritingToURL:l returnContentsLazyReadingError:error];
    goto LABEL_47;
  }

  v19 = fileWrappers;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v52 = [(NSDictionary *)fileWrappers countByEnumeratingWithState:&v57 objects:v56 count:16];
  if (!v52)
  {
    return 1;
  }

  v20 = *v58;
  v50 = *v58;
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v58 != v20)
      {
        objc_enumerationMutation(v19);
      }

      v22 = *(*(&v57 + 1) + 8 * v21);
      v23 = objc_alloc_init(NSAutoreleasePool);
      v24 = [(NSDictionary *)v19 objectForKey:v22];
      isDirectory = [v24 isDirectory];
      v26 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:objc_msgSend(path isDirectory:{"stringByAppendingPathComponent:", v22), isDirectory}];
      if (v16 && (v27 = [v24 filename]) != 0)
      {
        v28 = v27;
        errorCopy = error;
        v30 = objc_alloc(MEMORY[0x1E695DFF8]);
        v31 = [v16 stringByAppendingPathComponent:v28];
        v32 = v30;
        error = errorCopy;
        v20 = v50;
        v33 = [v32 initFileURLWithPath:v31 isDirectory:isDirectory];
      }

      else
      {
        v33 = 0;
      }

      v34 = [v24 writeToURL:v26 options:256 originalContentsURL:v33 error:error];

      if (error && (v34 & 1) == 0)
      {
        if (*error)
        {
          domain = [*error domain];
          code = [*error code];
          if ([domain isEqualToString:@"NSCocoaErrorDomain"] && code == 640)
          {
            errorCopy2 = error;
            v44 = [NSError alloc];
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{path, @"NSFilePath", *errorCopy2, @"NSUnderlyingError", 0}];
            v46 = v44;
            error = errorCopy2;
            *errorCopy2 = [(NSError *)v46 initWithDomain:domain code:640 userInfo:v45];
          }

          else
          {
            v47 = *error;
          }
        }

        [(NSAutoreleasePool *)v23 drain];
        v48 = *error;
        goto LABEL_47;
      }

      [(NSAutoreleasePool *)v23 drain];
      if (!v34)
      {
        goto LABEL_47;
      }

      ++v21;
    }

    while (v52 != v21);
    v35 = [(NSDictionary *)v19 countByEnumeratingWithState:&v57 objects:v56 count:16];
    result = 1;
    v52 = v35;
    if (v35)
    {
      continue;
    }

    return result;
  }
}

- (id)_attributesToWrite
{
  v13[5] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  fileAttributes = [(NSFileWrapper *)self fileAttributes];
  if (([-[NSDictionary fileType](fileAttributes "fileType")] & 1) == 0)
  {
    v5 = [(NSDictionary *)fileAttributes objectForKey:@"NSFileCreationDate"];
    if (v5)
    {
      [dictionary setObject:v5 forKey:@"NSFileCreationDate"];
    }

    v6 = [(NSDictionary *)fileAttributes objectForKey:@"NSFileModificationDate"];
    if (v6)
    {
      [dictionary setObject:v6 forKey:@"NSFileModificationDate"];
    }

    v7 = [(NSDictionary *)fileAttributes objectForKey:@"NSFileExtensionHidden"];
    if (v7)
    {
      [dictionary setObject:v7 forKey:@"NSFileExtensionHidden"];
    }

    v8 = [(NSDictionary *)fileAttributes objectForKey:@"NSFilePosixPermissions"];
    if (v8)
    {
      [dictionary setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", objc_msgSend(v8, "unsignedLongValue") & ~+[NSPageData _umask](NSPageData, "_umask")), @"NSFilePosixPermissions"}];
    }

    v9 = [(NSDictionary *)fileAttributes objectForKey:@"NSFileExtendedAttributes"];
    if (v9)
    {
      [dictionary setObject:v9 forKey:@"NSFileExtendedAttributes"];
    }
  }

  if ([-[NSDictionary fileType](fileAttributes "fileType")])
  {
    v10 = [(NSDictionary *)fileAttributes objectForKey:@"NSFileHFSCreatorCode"];
    if ([v10 unsignedIntValue])
    {
      [dictionary setObject:v10 forKey:@"NSFileHFSCreatorCode"];
    }

    v11 = [(NSDictionary *)fileAttributes objectForKey:@"NSFileHFSTypeCode"];
    if ([v11 unsignedIntValue])
    {
      [dictionary setObject:v11 forKey:@"NSFileHFSTypeCode"];
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__NSFileWrapper__attributesToWrite__block_invoke;
  v13[3] = &unk_1E69F67F8;
  v13[4] = dictionary;
  [(NSDictionary *)fileAttributes enumerateKeysAndObjectsUsingBlock:v13];
  return dictionary;
}

uint64_t __35__NSFileWrapper__attributesToWrite__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 hasPrefix:@"NSFile"];
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 32);

    return [v7 setObject:a3 forKey:a2];
  }

  return result;
}

- (void)_updateDescendantFileNames
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSFileWrapper *)self isDirectory])
  {
    fileWrappers = [(NSFileWrapper *)self fileWrappers];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(NSDictionary *)fileWrappers countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(fileWrappers);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = [(NSDictionary *)fileWrappers objectForKey:v8];
          [v9 setFilename:v8];
          [v9 _updateDescendantFileNames];
        }

        v5 = [(NSDictionary *)fileWrappers countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)writeToURL:(NSURL *)url options:(NSFileWrapperWritingOptions)options originalContentsURL:(NSURL *)originalContentsURL error:(NSError *)outError
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = [objc_opt_class() _pathForURL:url reading:0 error:outError];
  if (!v11)
  {
    return v11;
  }

  v12 = v11;
  v13 = objc_opt_class();
  if (options)
  {
    v15 = [(NSURL *)originalContentsURL isEqual:url];
    v11 = [v13 _temporaryDirectoryURLForWritingToURL:url error:outError];
    if (!v11)
    {
      return v11;
    }

    v16 = v11;
    v17 = [v11 URLByAppendingPathComponent:{-[NSURL lastPathComponent](url, "lastPathComponent")}];
    v22 = 0;
    if (!-[NSFileWrapper _writeContentsToURL:path:originalContentsURL:tryHardLinking:didHardLinking:error:](self, "_writeContentsToURL:path:originalContentsURL:tryHardLinking:didHardLinking:error:", v17, [v17 path], originalContentsURL, (options >> 8) & 1, &v22, outError))
    {
LABEL_22:
      [v13 _removeTemporaryDirectoryAtURL:v16];
      LOBYTE(v11) = 0;
      return v11;
    }

    if (v22 == 1)
    {
      dictionary = [MEMORY[0x1E695DF20] dictionary];
    }

    else
    {
      dictionary = [(NSFileWrapper *)self _attributesToWrite];
    }

    if (v15)
    {
      if (([v13 _finishWritingToURL:url byTakingContentsFromItemAtURL:v17 addingAttributes:dictionary usingTemporaryDirectoryAtURL:v16 backupFileName:0 error:outError] & 1) == 0)
      {
LABEL_19:
        if (![+[NSFileManager removeItemAtURL:0]error:"removeItemAtURL:error:", v17, &v21])
        {
          v19 = _NSOSLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v24 = v17;
            v25 = 2112;
            v26 = v21;
            _os_log_error_impl(&dword_18075C000, v19, OS_LOG_TYPE_ERROR, "NSFileWrapper could not delete the temporary item at %@. Here's the error:\n%@", buf, 0x16u);
          }
        }

        goto LABEL_22;
      }
    }

    else if (([v13 _finishWritingToURL:url byMovingItemAtURL:v17 addingAttributes:dictionary error:outError] & 1) == 0)
    {
      goto LABEL_19;
    }

    [v13 _removeTemporaryDirectoryAtURL:v16];
    if (!originalContentsURL)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  buf[0] = 0;
  LODWORD(v11) = [(NSFileWrapper *)self _writeContentsToURL:url path:v12 originalContentsURL:originalContentsURL tryHardLinking:(options >> 8) & 1 didHardLinking:buf error:outError];
  if (!v11)
  {
    return v11;
  }

  if (buf[0] == 1)
  {
    dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  }

  else
  {
    dictionary2 = [(NSFileWrapper *)self _attributesToWrite];
  }

  [v13 _writeAttributes:dictionary2 toURL:url];
  if (!originalContentsURL)
  {
    goto LABEL_13;
  }

LABEL_12:
  self->_attributesMustBeWrittenSoNoHardLinking = 0;
LABEL_13:
  if ((options & 2) != 0)
  {
    [(NSFileWrapper *)self _updateDescendantFileNames];
  }

  LOBYTE(v11) = 1;
  return v11;
}

- (id)_initWithImpl:(id)impl preferredFileName:(id)name uniqueFileName:(id)fileName docInfo:(id)info iconData:(id)data
{
  v43 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = NSFileWrapper;
  v11 = [(NSFileWrapper *)&v40 init:impl];
  if (!v11)
  {
    return v11;
  }

  if (!info)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = objc_alloc(MEMORY[0x1E695DF20]);
    if (isKindOfClass)
    {
      v18 = @"NSFileTypeDirectory";
      v19 = 511;
    }

    else
    {
      v18 = @"NSFileTypeRegular";
      v19 = 438;
    }

    v11->_fileAttributes = [v17 initWithObjectsAndKeys:{v18, @"NSFileType", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v19), @"NSFilePosixPermissions", 0}];
    if (name)
    {
      goto LABEL_11;
    }

LABEL_14:
    v21 = [fileName rangeOfString:@"__#$!@%!#__"];
    if (v22)
    {
      nameCopy = [fileName substringFromIndex:v21 + v22];
    }

    else
    {
      nameCopy = fileName;
    }

    goto LABEL_17;
  }

  v12 = objc_alloc(MEMORY[0x1E695DF20]);
  v13 = [NSNumber numberWithUnsignedShort:*(info + 8)];
  v14 = *(info + 9);
  if ((v14 & 4) != 0)
  {
    v15 = &NSFileTypeSymbolicLink;
  }

  else if (v14)
  {
    v15 = &NSFileTypeDirectory;
  }

  else
  {
    v15 = &NSFileTypeRegular;
  }

  v11->_fileAttributes = [v12 initWithObjectsAndKeys:{v13, @"NSFilePosixPermissions", *v15, @"NSFileType", objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSince1970:", *(info + 1)), @"NSFileModificationDate", 0}];
  if (!name)
  {
    goto LABEL_14;
  }

LABEL_11:
  nameCopy = name;
LABEL_17:
  v11->_preferredFileName = [nameCopy copy];
  v11->_fileName = [fileName copy];
  fileType = [(NSDictionary *)v11->_fileAttributes fileType];
  if (![fileType isEqualToString:@"NSFileTypeDirectory"])
  {
    if ([fileType isEqualToString:@"NSFileTypeRegular"])
    {
      v11->_contents = [impl data];
    }

    else if ([fileType isEqualToString:@"NSFileTypeSymbolicLink"])
    {
      v37 = [[NSString alloc] initWithData:impl encoding:4];
      v11->_contents = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v37];
    }

    return v11;
  }

  v24 = [objc_msgSend(impl "allKeys")];
  if (![v24 count])
  {
LABEL_31:

    if (!v11->_contents)
    {
      [(NSFileWrapper *)v11 _initDirectoryContents];
    }

    return v11;
  }

  while (1)
  {
    v25 = [v24 objectAtIndex:0];
    if ([v25 isEqualToString:0x1EEF028D0])
    {
      goto LABEL_30;
    }

    if ((_validateFilename(v25) & 1) == 0)
    {
      break;
    }

    if ([objc_msgSend(v25 "pathExtension")] && (v26 = objc_msgSend(v25, "stringByDeletingPathExtension"), v27 = objc_msgSend(v24, "indexOfObject:", v26), v27 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v34 = v27;
      v35 = [objc_alloc(objc_opt_class()) _initWithImpl:objc_msgSend(impl preferredFileName:"objectForKey:" uniqueFileName:v26) docInfo:0 iconData:{v26, objc_msgSend(impl, "_getDocInfoForKey:", v26), objc_msgSend(impl, "objectForKey:", v25)}];
      if (!v35)
      {
        goto LABEL_39;
      }

      v36 = v35;
      [(NSFileWrapper *)v11 _addChild:v35 forUniqueFileName:v26];

      [v24 removeObjectAtIndex:v34];
    }

    else
    {
      v28 = [v25 stringByAppendingPathExtension:@"tiff"];
      v29 = [v24 indexOfObject:v28];
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = 0;
      }

      else
      {
        v31 = v29;
        v30 = [impl objectForKey:v28];
        [v24 removeObjectAtIndex:v31];
      }

      v32 = [objc_alloc(objc_opt_class()) _initWithImpl:objc_msgSend(impl preferredFileName:"objectForKey:" uniqueFileName:v25) docInfo:0 iconData:{v25, objc_msgSend(impl, "_getDocInfoForKey:", v25), v30}];
      if (!v32)
      {
        goto LABEL_39;
      }

      v33 = v32;
      [(NSFileWrapper *)v11 _addChild:v32 forUniqueFileName:v25];
    }

LABEL_30:
    [v24 removeObjectAtIndex:0];
    if (![v24 count])
    {
      goto LABEL_31;
    }
  }

  v38 = _NSOSLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    v42 = v25;
    _os_log_error_impl(&dword_18075C000, v38, OS_LOG_TYPE_ERROR, "[NSFileWrapper initWithSerializedRepresentation:] encountered an invalid preferredFileName: %{private}@", buf, 0xCu);
  }

LABEL_39:

  return 0;
}

- (id)_newImpl
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(NSFileWrapper *)self isDirectory])
  {
    regularFileContents = objc_alloc_init(NSRTFD);
    fileWrappers = [(NSFileWrapper *)self fileWrappers];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(NSDictionary *)fileWrappers countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(fileWrappers);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [(NSDictionary *)fileWrappers objectForKey:v9];
          _newImpl = [v10 _newImpl];
          v12 = _NSDocInfoFromFileAttributes([v10 fileAttributes], 1);
          [(NSRTFD *)regularFileContents setObject:_newImpl forKey:v9];
          if (v12)
          {
            [-[NSRTFD getDirInfo:](regularFileContents getDirInfo:{1), "setObject:forKey:", v12, v9}];
          }
        }

        v6 = [(NSDictionary *)fileWrappers countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v6);
    }

    return regularFileContents;
  }

  if ([(NSFileWrapper *)self isRegularFile])
  {
    regularFileContents = [(NSFileWrapper *)self regularFileContents];
    if (regularFileContents)
    {
      v13 = [NSPageData alloc];

      return [(NSPageData *)v13 initWithDataNoCopy:regularFileContents];
    }

    return regularFileContents;
  }

  if (![(NSFileWrapper *)self isSymbolicLink])
  {
    return 0;
  }

  symbolicLinkDestinationURL = [(NSFileWrapper *)self symbolicLinkDestinationURL];
  if (!symbolicLinkDestinationURL)
  {
    return 0;
  }

  v16 = symbolicLinkDestinationURL;
  v17 = [NSPageData alloc];
  v18 = [-[NSURL relativePath](v16 "relativePath")];

  return [(NSPageData *)v17 initWithData:v18];
}

- (NSData)serializedRepresentation
{
  _newImpl = [(NSFileWrapper *)self _newImpl];
  isDirectory = [(NSFileWrapper *)self isDirectory];
  v5 = _newImpl;
  if (!isDirectory)
  {
    v6 = [(NSFileWrapper *)self zone];
    v7 = _NSDocInfoFromFileAttributes(self->_fileAttributes, 0);
    v5 = [[NSRTFD allocWithZone:?]];
    [(NSRTFD *)v5 setObject:_newImpl forKey:0x1EEF10430];
    if (v7)
    {
      *(&v7->mode + 1) |= 2u;
      [-[NSRTFD getDirInfo:](v5 getDirInfo:{1), "setObject:forKey:", v7, 0x1EEF10430}];
    }
  }

  if (self->_preferredFileName)
  {
    v8 = [[NSData allocWithZone:?], "initWithData:", [(NSString *)self->_preferredFileName dataUsingEncoding:2 allowLossyConversion:1]];
    [(NSRTFD *)v5 setObject:v8 forKey:@"__@PreferredName@__"];

    v9 = [[NSData allocWithZone:?], "initWithData:", [(NSString *)self->_preferredFileName dataUsingEncoding:4 allowLossyConversion:1]];
    [(NSRTFD *)v5 setObject:v9 forKey:@"__@UTF8PreferredName@__"];
  }

  dataRepresentation = [(NSRTFD *)v5 dataRepresentation];
  if (self->_preferredFileName)
  {
    [(NSRTFD *)v5 removeObjectForKey:@"__@PreferredName@__"];
    [(NSRTFD *)v5 removeObjectForKey:@"__@UTF8PreferredName@__"];
  }

  if (!isDirectory)
  {
  }

  return dataRepresentation;
}

- (void)_addParent:(id)parent
{
  os_unfair_lock_lock(&NSFileWrapperLock);
  parents = self->_parents;
  if (!parents)
  {
    parents = +[NSHashTable weakObjectsHashTable];
    self->_parents = parents;
  }

  [(NSHashTable *)parents addObject:parent];

  os_unfair_lock_unlock(&NSFileWrapperLock);
}

- (void)_removeParent:(id)parent
{
  os_unfair_lock_lock(&NSFileWrapperLock);
  [(NSHashTable *)self->_parents removeObject:parent];

  os_unfair_lock_unlock(&NSFileWrapperLock);
}

- (void)_initDirectoryContents
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(MEMORY[0x1E695E9D8] + 16);
  *&v3.version = *MEMORY[0x1E695E9D8];
  *&v3.release = v2;
  v3.equal = NSFileWrapperChildNameIsEqual_CFDictionary;
  v3.hash = NSFileWrapperChildNameHash_CFDictionary;
  self->_contents = CFDictionaryCreateMutable(0, 0, &v3, MEMORY[0x1E695E9E8]);
}

- (id)_addChild:(id)child forUniqueFileName:(id)name
{
  nameCopy = name;
  if (!name)
  {
    nameCopy = [child preferredFilename];
    v7 = [self->_contents objectForKey:nameCopy];
    if (!nameCopy || v7)
    {
      v8 = 1;
      do
      {
        v9 = v8 + 1;
        nameCopy = [NSString stringWithFormat:@"%lu%@%@", v8, @"__#$!@%!#__", nameCopy];
        v11 = [self->_contents objectForKey:nameCopy];
        if (nameCopy)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 0;
        }

        v8 = v9;
      }

      while (!v12);
      nameCopy = nameCopy;
    }
  }

  contents = self->_contents;
  if (!contents)
  {
    [(NSFileWrapper *)self _initDirectoryContents];
    contents = self->_contents;
  }

  [contents setObject:child forKey:nameCopy];
  [child _addParent:self];
  return nameCopy;
}

- (void)_resetFileModificationDate
{
  fileAttributes = [(NSFileWrapper *)self fileAttributes];
  if ([(NSDictionary *)fileAttributes objectForKey:@"NSFileModificationDate"])
  {
    v4 = [(NSDictionary *)fileAttributes mutableCopy];
    [v4 removeObjectForKey:@"NSFileModificationDate"];
    [(NSFileWrapper *)self setFileAttributes:v4];
  }
}

- (NSString)addFileWrapper:(NSFileWrapper *)child
{
  v19 = *MEMORY[0x1E69E9840];
  preferredFilename = [(NSFileWrapper *)child preferredFilename];
  if (![(NSFileWrapper *)self isDirectory])
  {
    v12 = [NSString stringWithFormat:@"%@ *** this method is only for directory type NSFileWrappers.", _NSFullMethodName(self, a2)];
    v13 = MEMORY[0x1E695DF30];
    v14 = MEMORY[0x1E695D930];
LABEL_16:
    objc_exception_throw([v13 exceptionWithName:*v14 reason:v12 userInfo:0]);
  }

  if (!preferredFilename || [(NSString *)preferredFilename isEqualToString:&stru_1EEEFDF90])
  {
    v12 = [NSString stringWithFormat:@"%@ *** a document must have a preferredFilename before it can be added as the subdocument of another document.", _NSFullMethodName(self, a2)];
    v13 = MEMORY[0x1E695DF30];
    v14 = MEMORY[0x1E695D940];
    goto LABEL_16;
  }

  if (!self->_contents)
  {
    if (self->_contentsURL)
    {
      if (!-[NSFileWrapper _readContentsFromURL:path:itemKind:options:error:](self, "_readContentsFromURL:path:itemKind:options:error:") && ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] & 1) == 0 && (addFileWrapper__alreadyWarned & 1) == 0)
      {
        addFileWrapper__alreadyWarned = 1;
        v9 = _NSOSLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = _NSFullMethodName(self, a2);
          localizedDescription = [0 localizedDescription];
          *buf = 138412546;
          v16 = v10;
          v17 = 2112;
          v18 = localizedDescription;
          _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "%@ tried to read the file wrapper's contents lazily but an error occurred: %@", buf, 0x16u);
        }
      }
    }
  }

  v7 = [(NSFileWrapper *)self keyForFileWrapper:child];
  if (!v7)
  {
    v7 = [(NSFileWrapper *)self _addChild:child forUniqueFileName:0];
    [(NSFileWrapper *)self _resetFileModificationDate];
  }

  self->_cachedDirectoryChildrenAsDictionary = 0;
  return v7;
}

- (NSString)addRegularFileWithContents:(NSData *)data preferredFilename:(NSString *)fileName
{
  if (![(NSFileWrapper *)self isDirectory])
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ *** this method is only for directory type NSFileWrappers", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  result = [objc_alloc(objc_opt_class()) initRegularFileWithContents:data];
  if (result)
  {
    v9 = result;
    [(NSString *)result setPreferredFilename:fileName];
    v10 = [(NSFileWrapper *)self addFileWrapper:v9];

    return v10;
  }

  return result;
}

- (id)_uniqueFileNameOfChild:(id)child
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  contents = self->_contents;
  v6 = [contents countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(contents);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([self->_contents objectForKey:v10] == child)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [contents countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_removeChild:(id)child forUniqueFileName:(id)name
{
  [child _removeParent:self];
  contents = self->_contents;

  [contents removeObjectForKey:name];
}

- (void)removeFileWrapper:(NSFileWrapper *)child
{
  if (![(NSFileWrapper *)self isDirectory])
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ *** this method is only for directory type NSFileWrappers", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  v6 = [(NSFileWrapper *)self _uniqueFileNameOfChild:child];
  if (v6)
  {
    [(NSFileWrapper *)self _removeChild:child forUniqueFileName:v6];
    [(NSFileWrapper *)self _resetFileModificationDate];
  }

  self->_cachedDirectoryChildrenAsDictionary = 0;
}

- (NSDictionary)fileWrappers
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(NSFileWrapper *)self isDirectory])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ *** this method is only for directory type NSFileWrappers", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  if (!self->_contents)
  {
    if (self->_contentsURL)
    {
      if (![NSFileWrapper _readContentsFromURL:"_readContentsFromURL:path:itemKind:options:error:" path:? itemKind:? options:? error:?])
      {

        self->_contentsLazyReadingError = 0;
        if (([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] & 1) == 0 && (fileWrappers_alreadyWarned & 1) == 0)
        {
          fileWrappers_alreadyWarned = 1;
          v5 = _NSOSLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v6 = _NSFullMethodName(self, a2);
            localizedDescription = [0 localizedDescription];
            *buf = 138412546;
            v10 = v6;
            v11 = 2112;
            v12 = localizedDescription;
            _os_log_error_impl(&dword_18075C000, v5, OS_LOG_TYPE_ERROR, "%@ tried to read the file wrapper's contents lazily but an error occurred: %@", buf, 0x16u);
          }
        }
      }
    }
  }

  result = self->_cachedDirectoryChildrenAsDictionary;
  if (!result)
  {
    result = [self->_contents copy];
    self->_cachedDirectoryChildrenAsDictionary = result;
  }

  return result;
}

- (NSString)keyForFileWrapper:(NSFileWrapper *)child
{
  if (![(NSFileWrapper *)self isDirectory])
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ *** this method is only for directory type NSFileWrappers", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  return [(NSFileWrapper *)self _uniqueFileNameOfChild:child];
}

- (NSData)regularFileContents
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(NSFileWrapper *)self isRegularFile])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ *** this method is only for regular file type NSFileWrappers", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  contents = self->_contents;
  if (!contents)
  {
    if (self->_contentsURL)
    {
      if (![NSFileWrapper _readContentsFromURL:"_readContentsFromURL:path:itemKind:options:error:" path:? itemKind:? options:? error:?])
      {

        self->_contentsLazyReadingError = 0;
        if (([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] & 1) == 0 && (regularFileContents_alreadyWarned & 1) == 0)
        {
          regularFileContents_alreadyWarned = 1;
          v5 = _NSOSLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v7 = _NSFullMethodName(self, a2);
            localizedDescription = [0 localizedDescription];
            *buf = 138412546;
            v11 = v7;
            v12 = 2112;
            v13 = localizedDescription;
            _os_log_error_impl(&dword_18075C000, v5, OS_LOG_TYPE_ERROR, "%@ tried to read the file wrapper's contents lazily but an error occurred: %@", buf, 0x16u);
          }
        }
      }

      contents = self->_contents;
    }

    else
    {
      contents = 0;
    }
  }

  return contents;
}

- (NSURL)symbolicLinkDestinationURL
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(NSFileWrapper *)self isSymbolicLink])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ *** this method is only for symbolic link type NSFileWrappers", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  contents = self->_contents;
  if (!contents)
  {
    if (self->_contentsURL)
    {
      if (![NSFileWrapper _readContentsFromURL:"_readContentsFromURL:path:itemKind:options:error:" path:? itemKind:? options:? error:?])
      {

        self->_contentsLazyReadingError = 0;
        if (([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] & 1) == 0 && (symbolicLinkDestinationURL_alreadyWarned & 1) == 0)
        {
          symbolicLinkDestinationURL_alreadyWarned = 1;
          v5 = _NSOSLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v7 = _NSFullMethodName(self, a2);
            localizedDescription = [0 localizedDescription];
            *buf = 138412546;
            v11 = v7;
            v12 = 2112;
            v13 = localizedDescription;
            _os_log_error_impl(&dword_18075C000, v5, OS_LOG_TYPE_ERROR, "%@ tried to read the file wrapper's contents lazily but an error occurred: %@", buf, 0x16u);
          }
        }
      }

      contents = self->_contents;
    }

    else
    {
      contents = 0;
    }
  }

  return contents;
}

- (void)encodeWithCoder:(id)coder
{
  serializedRepresentation = [(NSFileWrapper *)self serializedRepresentation];
  if ([coder allowsKeyedCoding])
  {

    [coder encodeObject:serializedRepresentation forKey:@"NSFileWrapperData"];
  }

  else
  {

    [coder encodeObject:serializedRepresentation];
  }
}

- (NSFileWrapper)initWithCoder:(NSCoder *)inCoder
{
  if ([(NSCoder *)inCoder allowsKeyedCoding])
  {
    decodeObject = [(NSCoder *)inCoder decodeObjectOfClass:objc_opt_class() forKey:@"NSFileWrapperData"];
  }

  else
  {
    decodeObject = [(NSCoder *)inCoder decodeObject];
  }

  if (decodeObject)
  {

    return [(NSFileWrapper *)self initWithSerializedRepresentation:decodeObject];
  }

  else
  {

    return 0;
  }
}

+ (id)_pathForURL:(id)l reading:(BOOL)reading error:(id *)error
{
  readingCopy = reading;
  if (![l isFileURL])
  {
    if (!error)
    {
      return 0;
    }

    if (l)
    {
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:l forKey:@"NSURL"];
    }

    else
    {
      v10 = 0;
    }

    if (readingCopy)
    {
      v11 = 262;
    }

    else
    {
      v11 = 518;
    }

    goto LABEL_16;
  }

  result = [l path];
  if (error && !result)
  {
    if (readingCopy)
    {
      v9 = 260;
    }

    else
    {
      v9 = 4;
    }

    v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:l forKey:@"NSURL"];
    v11 = v9;
LABEL_16:
    v12 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v11 userInfo:v10];
    result = 0;
    *error = v12;
  }

  return result;
}

+ (id)_temporaryDirectoryURLForWritingToURL:(id)l error:(id *)error
{
  v6 = +[NSFileManager defaultManager];

  return [(NSFileManager *)v6 URLForDirectory:99 inDomain:1 appropriateForURL:l create:1 error:error];
}

+ (void)_writeAttributes:(id)attributes toURL:(id)l
{
  v10[6] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__NSFileWrapper_NSInternalForAppKit___writeAttributes_toURL___block_invoke;
  v10[3] = &unk_1E69F7640;
  v10[4] = dictionary;
  v10[5] = dictionary2;
  [attributes enumerateKeysAndObjectsUsingBlock:v10];
  v8 = [dictionary objectForKey:@"NSFileExtensionHidden"];
  if ([dictionary count] != (v8 != 0) || objc_msgSend(v8, "BOOLValue"))
  {
    path = [l path];
    if (path)
    {
      [+[NSFileManager defaultManager](NSFileManager setAttributes:"setAttributes:ofItemAtPath:error:" ofItemAtPath:dictionary error:path, 0];
    }
  }

  [l setResourceValues:dictionary2 error:0];
}

uint64_t __61__NSFileWrapper_NSInternalForAppKit___writeAttributes_toURL___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = _NSIsNSString();
  if (result)
  {
    v7 = [a2 hasPrefix:@"NSFile"];
    v8 = 40;
    if (v7)
    {
      v8 = 32;
    }

    v9 = *(a1 + v8);

    return [v9 setObject:a3 forKey:a2];
  }

  return result;
}

+ (BOOL)_finishWritingToURL:(id)l byMovingItemAtURL:(id)rL addingAttributes:(id)attributes error:(id *)error
{
  v11 = +[NSFileManager defaultManager];
  path = [l path];
  if (![(NSFileManager *)v11 fileExistsAtPath:path]|| (v13 = [(NSFileManager *)v11 removeItemAtPath:path error:error]))
  {
    [self _writeAttributes:attributes toURL:rL];
    path2 = [rL path];

    LOBYTE(v13) = [(NSFileManager *)v11 moveItemAtPath:path2 toPath:path error:error];
  }

  return v13;
}

+ (BOOL)_finishWritingToURL:(id)l byTakingContentsFromItemAtURL:(id)rL addingAttributes:(id)attributes usingTemporaryDirectoryAtURL:(id)uRL backupFileName:(id)name error:(id *)error
{
  error = [+[NSFileManager replaceItemAtURL:l]resultingItemURL:"replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:" error:l, rL, name, 2 * (name != 0), 0, error];
  if (error)
  {
    [self _writeAttributes:attributes toURL:l];
  }

  return error;
}

+ (void)_removeTemporaryDirectoryAtURL:(id)l
{
  v12 = *MEMORY[0x1E69E9840];
  path = [l path];
  if (path)
  {
    v5 = path;
    if (!rmdir([path fileSystemRepresentation]))
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
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "AppKit called rmdir(%@), it didn't return 0, and errno was set to %i.", &v8, 0x12u);
    }
  }

  [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:l, 0];
}

- (id)_fullDescription:(BOOL)description
{
  descriptionCopy = description;
  v5 = [NSMutableString stringWithCapacity:50];
  _NSDescribeFileContentsInstance(v5, &self->super.isa, 0, 0, descriptionCopy);
  return v5;
}

@end