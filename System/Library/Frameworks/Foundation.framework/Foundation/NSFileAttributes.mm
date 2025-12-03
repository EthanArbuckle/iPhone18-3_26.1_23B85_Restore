@interface NSFileAttributes
+ (BOOL)_populateCatInfo:(id *)info forURL:(id)l statInfo:(stat *)statInfo error:(id *)error;
+ (id)_attributesAtPath:(id)path partialReturn:(BOOL)return filterResourceFork:(BOOL)fork error:(id *)error;
+ (id)_attributesAtURL:(id)l partialReturn:(BOOL)return filterResourceFork:(BOOL)fork error:(id *)error;
+ (id)attributesAtPath:(id)path traverseLink:(BOOL)link;
+ (id)attributesWithStat:(stat *)stat;
- (BOOL)isEqual:(id)equal;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation NSFileAttributes

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileAttributes;
  [(NSFileAttributes *)&v3 dealloc];
}

+ (id)attributesAtPath:(id)path traverseLink:(BOOL)link
{
  pathCopy = path;
  if (link)
  {
    v5 = [+[NSFileManager defaultManager](NSFileManager destinationOfSymbolicLinkAtPath:"destinationOfSymbolicLinkAtPath:error:" error:path, 0];
    v6 = v5;
    if (v5 && ![(NSString *)v5 isAbsolutePath])
    {
      v6 = [objc_msgSend(pathCopy "stringByDeletingLastPathComponent")];
    }

    if (v6)
    {
      path = v6;
    }

    else
    {
      path = pathCopy;
    }
  }

  return [NSFileAttributes _attributesAtPath:path partialReturn:1 filterResourceFork:1 error:0];
}

+ (BOOL)_populateCatInfo:(id *)info forURL:(id)l statInfo:(stat *)statInfo error:(id *)error
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E695DB60];
  v8 = *MEMORY[0x1E695DAA8];
  v13[0] = *MEMORY[0x1E695DB60];
  v13[1] = v8;
  v9 = [l resourceValuesForKeys:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", v13, 2, statInfo), error}];
  v10 = v9;
  if (v9)
  {
    info->var0 = [objc_msgSend(v9 objectForKey:{v7), "BOOLValue"}];
    *&info->var2 |= 1u;
    v11 = [v10 objectForKey:v8];
    if (v11)
    {
      info->var1 = [v11 copy];
      *&info->var2 |= 2u;
    }
  }

  return v10 != 0;
}

+ (id)_attributesAtPath:(id)path partialReturn:(BOOL)return filterResourceFork:(BOOL)fork error:(id *)error
{
  returnCopy = return;
  v21 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  if (![+[NSFileManager getFileSystemRepresentation:"getFileSystemRepresentation:maxLength:withPath:"]
  {
    if (error)
    {
      v11 = _NSErrorWithFilePath(256, path);
      goto LABEL_7;
    }

    return 0;
  }

  if (lstat(v19, &v20))
  {
    if (error)
    {
      v10 = __error();
      v11 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v10, path, 1, 0, 0);
LABEL_7:
      v12 = 0;
      *error = v11;
      return v12;
    }

    return 0;
  }

  v12 = [NSFileAttributes attributesWithStat:&v20];
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];
  if (returnCopy)
  {
    error = 0;
  }

  if (![NSFileAttributes _populateCatInfo:&v12->catInfo forURL:v13 statInfo:&v20 error:error]&& !returnCopy)
  {
    return 0;
  }

  v14 = _attributesAtPath(v19, fork, error);
  v12->extendedAttrs = v14;
  if (!v14 && !returnCopy)
  {
    return 0;
  }

  v16 = v20.st_mode & 0xF000;
  if (v16 == 0x8000 || v16 == 0x4000)
  {
    v17 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v18[0] = 0x4000000000000005;
    if (getattrlist(v19, v18, &v17, 8uLL, 1u) || HIDWORD(v17) == -1)
    {
      v12->fileProtectionClass = 0;
    }

    else
    {
      v12->fileProtectionClass = HIDWORD(v17);
    }
  }

  return v12;
}

+ (id)_attributesAtURL:(id)l partialReturn:(BOOL)return filterResourceFork:(BOOL)fork error:(id *)error
{
  returnCopy = return;
  v24 = *MEMORY[0x1E69E9840];
  v10 = +[NSFileManager defaultManager];
  if (![l isFileURL])
  {
    if (!error)
    {
      return 0;
    }

    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:l forKey:@"NSURL"];
    v16 = 262;
LABEL_11:
    v14 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v16 userInfo:v15];
    goto LABEL_12;
  }

  path = [l path];
  if (!path)
  {
    if (!error)
    {
      return 0;
    }

    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:l forKey:@"NSURL"];
    v16 = 260;
    goto LABEL_11;
  }

  v12 = path;
  memset(&v23, 0, sizeof(v23));
  if (![(NSFileManager *)v10 getFileSystemRepresentation:v22 maxLength:1024 withPath:path])
  {
    if (error)
    {
      v14 = _NSErrorWithFilePath(256, v12);
      goto LABEL_12;
    }

    return 0;
  }

  if (lstat(v22, &v23))
  {
    if (error)
    {
      v13 = __error();
      v14 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v13, v12, 1, 0, 0);
LABEL_12:
      v17 = 0;
      *error = v14;
      return v17;
    }

    return 0;
  }

  v17 = [NSFileAttributes attributesWithStat:&v23];
  if (returnCopy)
  {
    error = 0;
  }

  if (![NSFileAttributes _populateCatInfo:&v17->catInfo forURL:l statInfo:&v23 error:error]&& !returnCopy)
  {
    return 0;
  }

  v18 = _attributesAtPath(v22, fork, error);
  v17->extendedAttrs = v18;
  if (!v18 && !returnCopy)
  {
    return 0;
  }

  v20 = v23.st_mode & 0xF000;
  if (v20 == 0x8000 || v20 == 0x4000)
  {
    v21 = _NSFileProtectionValueForPath(v22);
    if (v21 == -1)
    {
      v17->fileProtectionClass = 0;
    }

    else
    {
      v17->fileProtectionClass = v21;
    }
  }

  return v17;
}

+ (id)attributesWithStat:(stat *)stat
{
  v4 = objc_allocWithZone(self);
  memmove(v4 + 16, stat, 0x90uLL);

  return v4;
}

- (unint64_t)hash
{
  dict = self->dict;
  if (!dict)
  {
    dict = _fillDictionary(&self->statInfo.st_dev, &self->catInfo, self->extendedAttrs, self->fileProtectionClass);
    self->dict = dict;
  }

  return [(NSMutableDictionary *)dict hash];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (self->statInfo.st_ino == *(equal + 3) && self->statInfo.st_dev == *(equal + 4) && self->statInfo.st_mtimespec.tv_sec == *(equal + 8) && self->statInfo.st_mtimespec.tv_nsec == *(equal + 9) && self->statInfo.st_mode == *(equal + 10) && self->statInfo.st_size == *(equal + 14) && self->statInfo.st_nlink == *(equal + 11) && self->statInfo.st_uid == *(equal + 8) && self->statInfo.st_gid == *(equal + 9))
    {
      return self->statInfo.st_flags == *(equal + 33);
    }

    return 0;
  }

  dict = self->dict;
  if (!dict)
  {
    dict = _fillDictionary(&self->statInfo.st_dev, &self->catInfo, self->extendedAttrs, self->fileProtectionClass);
    self->dict = dict;
  }

  return [equal isEqual:dict];
}

- (id)objectForKey:(id)key
{
  dict = self->dict;
  if (dict)
  {

    return [(NSMutableDictionary *)dict objectForKey:?];
  }

  if ([key isEqual:@"NSFileModificationDate"])
  {
    v7 = MEMORY[0x1E695DF00];
    v8 = self->statInfo.st_mtimespec.tv_sec - *MEMORY[0x1E695E468] + self->statInfo.st_mtimespec.tv_nsec * 0.000000001;

    return [v7 dateWithTimeIntervalSinceReferenceDate:v8];
  }

  if ([key isEqual:@"NSFileSize"])
  {
    st_size = self->statInfo.st_size;

    return [NSNumber numberWithUnsignedLongLong:st_size];
  }

  if ([key isEqual:@"NSFilePosixPermissions"])
  {
    st_nlink = self->statInfo.st_mode & 0xFFF;
LABEL_15:

    return [NSNumber numberWithUnsignedLong:st_nlink];
  }

  if ([key isEqual:@"NSFileType"])
  {
    st_mode = self->statInfo.st_mode;

    return NSStatFileType(st_mode);
  }

  if ([key isEqual:@"NSFileReferenceCount"])
  {
    st_nlink = self->statInfo.st_nlink;
    goto LABEL_15;
  }

  if ([key isEqual:@"NSFileSystemNumber"])
  {
    st_nlink = self->statInfo.st_dev;
    goto LABEL_15;
  }

  if ([key isEqual:@"NSFileSystemFileNumber"])
  {
    st_nlink = self->statInfo.st_ino;
    goto LABEL_15;
  }

  if ([key isEqual:@"NSFileOwnerAccountName"])
  {
    st_uid = self->statInfo.st_uid;

    return __NSUserAccountNumberToName(st_uid);
  }

  if ([key isEqual:@"NSFileGroupOwnerAccountName"])
  {
    st_gid = self->statInfo.st_gid;

    return __NSGroupAccountNumberToName(st_gid);
  }

  if ([key isEqual:@"NSFileDeviceIdentifier"])
  {
    if ((self->statInfo.st_mode & 0xB000 | 0x4000) == 0x6000)
    {
      st_nlink = self->statInfo.st_rdev;
      goto LABEL_15;
    }

    return 0;
  }

  if ([key isEqual:@"NSFileExtensionHidden"])
  {
    if ((*&self->catInfo.validFields & 1) == 0)
    {
      return 0;
    }

    extensionHidden = self->catInfo.extensionHidden;
    goto LABEL_53;
  }

  if ([key isEqual:@"NSFileCreationDate"])
  {
    if ((*&self->catInfo.validFields & 2) != 0)
    {
      return self->catInfo.creationDate;
    }

    return 0;
  }

  if ([key isEqual:@"NSFileImmutable"])
  {
    v15 = (self->statInfo.st_flags & 0x20002) == 0;
    goto LABEL_50;
  }

  if ([key isEqual:@"NSFileAppendOnly"])
  {
    v15 = (self->statInfo.st_flags & 0x40004) == 0;
LABEL_50:
    extensionHidden = !v15;
LABEL_53:

    return [NSNumber numberWithBool:extensionHidden];
  }

  if ([key isEqual:@"NSFileOwnerAccountID"])
  {
    v16 = self->statInfo.st_uid;
  }

  else
  {
    if (![key isEqual:@"NSFileGroupOwnerAccountID"])
    {
      if ([key isEqual:@"NSFileExtendedAttributes"])
      {
        return self->extendedAttrs;
      }

      if ([key isEqual:@"NSFileProtectionKey"])
      {
        v17 = self->fileProtectionClass - 1;
        if (v17 < 7)
        {
          return off_1E69F3AA8[v17];
        }
      }

      return 0;
    }

    v16 = self->statInfo.st_gid;
  }

  return [NSNumber numberWithUnsignedInteger:v16];
}

- (unint64_t)count
{
  dict = self->dict;
  if (!dict)
  {
    dict = _fillDictionary(&self->statInfo.st_dev, &self->catInfo, self->extendedAttrs, self->fileProtectionClass);
    self->dict = dict;
  }

  return [(NSMutableDictionary *)dict count];
}

- (id)keyEnumerator
{
  dict = self->dict;
  if (!dict)
  {
    dict = _fillDictionary(&self->statInfo.st_dev, &self->catInfo, self->extendedAttrs, self->fileProtectionClass);
    self->dict = dict;
  }

  return [(NSMutableDictionary *)dict keyEnumerator];
}

@end