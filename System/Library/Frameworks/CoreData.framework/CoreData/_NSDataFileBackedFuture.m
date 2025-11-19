@interface _NSDataFileBackedFuture
- (BOOL)isEqual:(id)a3;
- (NSURL)fileURL;
- (_NSDataFileBackedFuture)initWithCoder:(id)a3;
- (_NSDataFileBackedFuture)initWithStoreMetadata:(id)a3 directory:(id)a4 originalFileURL:(id)a5;
- (const)bytes;
- (id)_storeMetadata;
- (id)description;
- (unint64_t)_bytesLengthForStore;
- (unint64_t)length;
- (void)_bytesPtrForStore;
- (void)_copyToInterimLocation;
- (void)_moveToPermanentLocation;
- (void)_underlyingData;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initWithDirectoryURL:(void *)a3 UUID:(void *)a4 originalURL:;
- (void)initWithURL:(void *)a3 UUID:(unint64_t)a4 size:;
@end

@implementation _NSDataFileBackedFuture

- (void)dealloc
{
  self->_fileURL = 0;

  self->_uuid = 0;
  self->_realData = 0;

  self->_originalFileURL = 0;
  self->_bytes = 0;
  v3.receiver = self;
  v3.super_class = _NSDataFileBackedFuture;
  [(_NSDataFileBackedFuture *)&v3 dealloc];
}

- (_NSDataFileBackedFuture)initWithStoreMetadata:(id)a3 directory:(id)a4 originalFileURL:(id)a5
{
  v9 = [a3 bytes];
  if (!strncmp(v9, "\x03###", 4uLL) && (!a5 || [a5 isFileURL]))
  {
    v11 = *(v9 + 4);
    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v9 + 12];
    v10 = -[_NSDataFileBackedFuture initWithURL:UUID:size:](self, [a4 URLByAppendingPathComponent:{-[_NSDataFileBackedFuture UUIDString](v12, "UUIDString")}], v12, v11);
    if (v10)
    {
      v10->_bytes = a3;
      v10->_originalFileURL = a5;
    }

    self = v12;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithURL:(void *)a3 UUID:(unint64_t)a4 size:
{
  v4 = a1;
  if (a1)
  {
    if (!a2 || ([a2 isFileURL]) && a4 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v9.receiver = v4;
      v9.super_class = _NSDataFileBackedFuture;
      v4 = objc_msgSendSuper2(&v9, sel_init);
      if (v4)
      {
        v4[1] = a2;
        v4[4] = a3;
        v4[3] = a4;
      }
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)initWithDirectoryURL:(void *)a3 UUID:(void *)a4 originalURL:
{
  v4 = a1;
  if (a1)
  {
    if (a4 && ([a4 isFileURL] & 1) == 0)
    {
      goto LABEL_10;
    }

    v14.receiver = v4;
    v14.super_class = _NSDataFileBackedFuture;
    v4 = objc_msgSendSuper2(&v14, sel_init);
    if (v4)
    {
      v13 = 0;
      v8 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      if (!v8 || (v9 = v8, ![v8 valueForKey:@"NSFileSize"]))
      {

        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"No file exists at URL '%@'", a2), 0}]);
      }

      if ((v4[3] = [objc_msgSend(v9 valueForKey:{@"NSFileSize", "unsignedIntegerValue"}], v10 = a3, v4[4] = v10, v4[1] = objc_msgSend(a2, "URLByAppendingPathComponent:isDirectory:", objc_msgSend(v10, "UUIDString"), 0), v4[2] = a4, (v11 = v4[1]) != 0) && (objc_msgSend(v11, "isFileURL") & 1) == 0 || v4[3] >= 0x7FFFFFFFFFFFFFFFuLL)
      {
LABEL_10:

        return 0;
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  fileURL = self->_fileURL;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_NSDataFileBackedFuture : <%@, %llu, %@ (%@)>", self->_uuid, self->_fileSize, fileURL, self->_originalFileURL];
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (NSURL)fileURL
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  fileURL = self->_fileURL;
  if (!fileURL || !-[NSURL isFileURL](fileURL, "isFileURL") || ![v3 fileExistsAtPath:{-[NSURL path](self->_fileURL, "path")}])
  {
    return 0;
  }

  v5 = self->_fileURL;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v5 = [a3 delegate];
    if (v5 && (v6 = v5, (objc_opt_respondsToSelector() & 1) != 0) && ([v6 _allowCoreDataFutures] & 1) != 0 || (objc_msgSend(objc_msgSend(a3, "allowedClasses"), "containsObject:", objc_opt_class()) & 1) != 0)
    {
      [a3 encodeObject:self->_uuid forKey:@"NSUUID"];
      [a3 encodeInt64:self->_fileSize forKey:@"NSFileSize"];
      [a3 encodeObject:self->_fileURL forKey:@"NSFileURL"];
      originalFileURL = self->_originalFileURL;

      [a3 encodeObject:originalFileURL forKey:@"NSOriginalFileURL"];
      return;
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v10 = &unk_1EF4358F0;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v10 = &unk_1EF4358C8;
  }

  v11 = [v8 errorWithDomain:v9 code:4866 userInfo:v10];

  [a3 failWithError:v11];
}

- (_NSDataFileBackedFuture)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = _NSDataFileBackedFuture;
  v4 = [(_NSDataFileBackedFuture *)&v13 init];
  if (v4)
  {
    if (![a3 allowsKeyedCoding])
    {
      v11 = &unk_1EF435918;
      goto LABEL_19;
    }

    v5 = [a3 delegate];
    if (!v5 || (v6 = v5, (objc_opt_respondsToSelector() & 1) == 0) || ([v6 _allowCoreDataFutures] & 1) == 0)
    {
      if (![objc_msgSend(a3 "allowedClasses")])
      {
        v11 = &unk_1EF435940;
        goto LABEL_19;
      }
    }

    v4->_uuid = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSUUID"];
    v4->_fileSize = [a3 decodeInt64ForKey:@"NSFileSize"];
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSFileURL"];
    if (v7)
    {
      v8 = v7;
      if (![v7 isFileURL])
      {
        v11 = &unk_1EF435968;
        goto LABEL_19;
      }

      v4->_fileURL = v8;
    }

    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSOriginalFileURL"];
    if (v9)
    {
      v10 = v9;
      if (![v9 isFileURL])
      {
        v11 = &unk_1EF435990;
        goto LABEL_19;
      }

      v4->_originalFileURL = v10;
    }

    if (v4->_fileSize >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = &unk_1EF4359B8;
LABEL_19:
      [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, v11)}];

      return 0;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_fileSize != *(a3 + 3))
  {
LABEL_16:
    LOBYTE(v8) = 0;
    return v8;
  }

  uuid = self->_uuid;
  v6 = *(a3 + 4);
  if (uuid != v6)
  {
    if (uuid)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_16;
    }

    v8 = [(NSUUID *)uuid isEqual:?];
    if (!v8)
    {
      return v8;
    }
  }

  fileURL = self->_fileURL;
  v10 = *(a3 + 1);
  if (fileURL == v10)
  {
LABEL_17:
    LOBYTE(v8) = 1;
    return v8;
  }

  if (fileURL)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_16;
  }

  LOBYTE(v8) = [(NSURL *)fileURL isEqual:?];
  return v8;
}

- (void)_underlyingData
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = result[5];
    if (!result)
    {
      v2 = [v1 fileURL];
      if (!v2)
      {
        v6 = MEMORY[0x1E695DF30];
        v19 = @"URL";
        v20[0] = @"<null url>";
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        objc_exception_throw([v6 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Underlying file for this file backed future has not been downloaded." userInfo:v7]);
      }

      v3 = v2;
      if (([v2 isFileURL] & 1) == 0)
      {
        v8 = MEMORY[0x1E695DF30];
        v17 = @"URL";
        v18 = v3;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        objc_exception_throw([v8 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Underlying url for this file backed future is not a file url." userInfo:v9]);
      }

      v14 = 0;
      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v3 options:0 error:&v14];
      v1[5] = v4;
      if (!v4)
      {
        v10 = *MEMORY[0x1E696AA08];
        v15[0] = @"URL";
        v15[1] = v10;
        v11 = v14;
        if (!v14)
        {
          v11 = @"<no error>";
        }

        v12 = MEMORY[0x1E695DF30];
        v16[0] = v3;
        v16[1] = v11;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
        objc_exception_throw([v12 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Underlying file for this file backed future has not been downloaded." userInfo:v13]);
      }

      v1[3] = [v4 length];
      result = v1[5];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_storeMetadata
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
      [v2 appendBytes:"\x03###" length:4];
      [v2 appendBytes:a1 + 24 length:8];
      v6[0] = 0;
      v6[1] = 0;
      [*(a1 + 32) getUUIDBytes:v6];
      [v2 appendBytes:v6 length:16];
      v3 = [objc_msgSend(*(a1 + 8) "lastPathComponent")];
      [v2 appendBytes:v3 length:strlen(v3)];
      *(a1 + 48) = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_bytesPtrForStore
{
  v2 = [(_NSDataFileBackedFuture *)self _storeMetadata];

  return [v2 bytes];
}

- (unint64_t)_bytesLengthForStore
{
  v2 = [(_NSDataFileBackedFuture *)self _storeMetadata];

  return [v2 length];
}

- (void)_copyToInterimLocation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (self)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByAppendingString:](-[NSURL path](self->_fileURL, "path"), "stringByAppendingString:", @".interim"}];
  }

  else
  {
    v4 = 0;
  }

  v13 = 0;
  if ([v3 copyItemAtURL:self->_originalFileURL toURL:v4 error:&v13])
  {
    goto LABEL_16;
  }

  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v13;
        v7 = "CoreData: error: %@: First attempt at moving file to interim location failed: %@\n";
LABEL_18:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v7, buf, 0x16u);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = self;
        v18 = 2112;
        v19 = v13;
        v7 = "CoreData: warning: %@: First attempt at moving file to interim location failed: %@\n";
        goto LABEL_18;
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  _NSCoreDataLog_console(v8, "%@: First attempt at moving file to interim location failed: %@", self, v13);
  objc_autoreleasePoolPop(v5);
  if ([v13 code] != 516 || (v13 = 0, !objc_msgSend(v3, "removeItemAtURL:error:", v4, &v13)) || (objc_msgSend(v3, "copyItemAtURL:toURL:error:", self->_originalFileURL, v4, &v13) & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to copy file from %@ to %@ (%@)", self->_originalFileURL, v4, v13];
    v14 = *MEMORY[0x1E696AA08];
    v15 = v13;
    objc_exception_throw([v10 exceptionWithName:v11 reason:v12 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }

LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_moveToPermanentLocation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if (self)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByAppendingString:](-[NSURL path](self->_fileURL, "path"), "stringByAppendingString:", @".interim"}];
  }

  else
  {
    v4 = 0;
  }

  v14 = 0;
  if ([v3 moveItemAtURL:v4 toURL:self->_fileURL error:&v14])
  {
    goto LABEL_18;
  }

  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = self;
        v21 = 2112;
        v22 = v14;
        v7 = "CoreData: error: %@: First attempt at moving in to place failed with error: %@\n";
LABEL_20:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v7, buf, 0x16u);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = self;
        v21 = 2112;
        v22 = v14;
        v7 = "CoreData: warning: %@: First attempt at moving in to place failed with error: %@\n";
        goto LABEL_20;
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  _NSCoreDataLog_console(v8, "%@: First attempt at moving in to place failed with error: %@", self, v14);
  objc_autoreleasePoolPop(v5);
  if ([v14 code] != 516 || (v14 = 0, (v9 = objc_msgSend(v3, "attributesOfItemAtPath:error:", -[NSURL path](self->_fileURL, "path"), &v14)) == 0) || objc_msgSend(objc_msgSend(v9, "objectForKey:", *MEMORY[0x1E696A3B8]), "unsignedLongValue") != self->_fileSize && (!objc_msgSend(v3, "removeItemAtURL:error:", self->_fileURL, &v14) || (objc_msgSend(v3, "moveItemAtURL:toURL:error:", v4, self->_fileURL, &v14) & 1) == 0))
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to copy file from %@ to %@ (%@)", v4, self->_fileURL, v14];
    v17 = *MEMORY[0x1E696AA08];
    v18 = v14;
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}]);
  }

LABEL_18:
  v15 = *MEMORY[0x1E696A370];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:292];
  [v3 setAttributes:objc_msgSend(MEMORY[0x1E695DF20] ofItemAtPath:"dictionaryWithObjects:forKeys:count:" error:{&v16, &v15, 1), -[NSURL path](self->_fileURL, "path"), &v14}];

  self->_originalFileURL = 0;
  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)length
{
  v2 = [(_NSDataFileBackedFuture *)self _underlyingData];

  return [v2 length];
}

- (const)bytes
{
  v2 = [(_NSDataFileBackedFuture *)self _underlyingData];

  return [v2 bytes];
}

@end