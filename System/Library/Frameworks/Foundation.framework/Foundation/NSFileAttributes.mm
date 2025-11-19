@interface NSFileAttributes
+ (BOOL)_populateCatInfo:(id *)a3 forURL:(id)a4 statInfo:(stat *)a5 error:(id *)a6;
+ (id)_attributesAtPath:(id)a3 partialReturn:(BOOL)a4 filterResourceFork:(BOOL)a5 error:(id *)a6;
+ (id)_attributesAtURL:(id)a3 partialReturn:(BOOL)a4 filterResourceFork:(BOOL)a5 error:(id *)a6;
+ (id)attributesAtPath:(id)a3 traverseLink:(BOOL)a4;
+ (id)attributesWithStat:(stat *)a3;
- (BOOL)isEqual:(id)a3;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
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

+ (id)attributesAtPath:(id)a3 traverseLink:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v5 = [+[NSFileManager defaultManager](NSFileManager destinationOfSymbolicLinkAtPath:"destinationOfSymbolicLinkAtPath:error:" error:a3, 0];
    v6 = v5;
    if (v5 && ![(NSString *)v5 isAbsolutePath])
    {
      v6 = [objc_msgSend(v4 "stringByDeletingLastPathComponent")];
    }

    if (v6)
    {
      a3 = v6;
    }

    else
    {
      a3 = v4;
    }
  }

  return [NSFileAttributes _attributesAtPath:a3 partialReturn:1 filterResourceFork:1 error:0];
}

+ (BOOL)_populateCatInfo:(id *)a3 forURL:(id)a4 statInfo:(stat *)a5 error:(id *)a6
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E695DB60];
  v8 = *MEMORY[0x1E695DAA8];
  v13[0] = *MEMORY[0x1E695DB60];
  v13[1] = v8;
  v9 = [a4 resourceValuesForKeys:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", v13, 2, a5), a6}];
  v10 = v9;
  if (v9)
  {
    a3->var0 = [objc_msgSend(v9 objectForKey:{v7), "BOOLValue"}];
    *&a3->var2 |= 1u;
    v11 = [v10 objectForKey:v8];
    if (v11)
    {
      a3->var1 = [v11 copy];
      *&a3->var2 |= 2u;
    }
  }

  return v10 != 0;
}

+ (id)_attributesAtPath:(id)a3 partialReturn:(BOOL)a4 filterResourceFork:(BOOL)a5 error:(id *)a6
{
  v8 = a4;
  v21 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  if (![+[NSFileManager getFileSystemRepresentation:"getFileSystemRepresentation:maxLength:withPath:"]
  {
    if (a6)
    {
      v11 = _NSErrorWithFilePath(256, a3);
      goto LABEL_7;
    }

    return 0;
  }

  if (lstat(v19, &v20))
  {
    if (a6)
    {
      v10 = __error();
      v11 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v10, a3, 1, 0, 0);
LABEL_7:
      v12 = 0;
      *a6 = v11;
      return v12;
    }

    return 0;
  }

  v12 = [NSFileAttributes attributesWithStat:&v20];
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3 isDirectory:0];
  if (v8)
  {
    a6 = 0;
  }

  if (![NSFileAttributes _populateCatInfo:&v12->catInfo forURL:v13 statInfo:&v20 error:a6]&& !v8)
  {
    return 0;
  }

  v14 = _attributesAtPath(v19, a5, a6);
  v12->extendedAttrs = v14;
  if (!v14 && !v8)
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

+ (id)_attributesAtURL:(id)a3 partialReturn:(BOOL)a4 filterResourceFork:(BOOL)a5 error:(id *)a6
{
  v8 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v10 = +[NSFileManager defaultManager];
  if (![a3 isFileURL])
  {
    if (!a6)
    {
      return 0;
    }

    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:@"NSURL"];
    v16 = 262;
LABEL_11:
    v14 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v16 userInfo:v15];
    goto LABEL_12;
  }

  v11 = [a3 path];
  if (!v11)
  {
    if (!a6)
    {
      return 0;
    }

    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:@"NSURL"];
    v16 = 260;
    goto LABEL_11;
  }

  v12 = v11;
  memset(&v23, 0, sizeof(v23));
  if (![(NSFileManager *)v10 getFileSystemRepresentation:v22 maxLength:1024 withPath:v11])
  {
    if (a6)
    {
      v14 = _NSErrorWithFilePath(256, v12);
      goto LABEL_12;
    }

    return 0;
  }

  if (lstat(v22, &v23))
  {
    if (a6)
    {
      v13 = __error();
      v14 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v13, v12, 1, 0, 0);
LABEL_12:
      v17 = 0;
      *a6 = v14;
      return v17;
    }

    return 0;
  }

  v17 = [NSFileAttributes attributesWithStat:&v23];
  if (v8)
  {
    a6 = 0;
  }

  if (![NSFileAttributes _populateCatInfo:&v17->catInfo forURL:a3 statInfo:&v23 error:a6]&& !v8)
  {
    return 0;
  }

  v18 = _attributesAtPath(v22, a5, a6);
  v17->extendedAttrs = v18;
  if (!v18 && !v8)
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

+ (id)attributesWithStat:(stat *)a3
{
  v4 = objc_allocWithZone(a1);
  memmove(v4 + 16, a3, 0x90uLL);

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

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (self->statInfo.st_ino == *(a3 + 3) && self->statInfo.st_dev == *(a3 + 4) && self->statInfo.st_mtimespec.tv_sec == *(a3 + 8) && self->statInfo.st_mtimespec.tv_nsec == *(a3 + 9) && self->statInfo.st_mode == *(a3 + 10) && self->statInfo.st_size == *(a3 + 14) && self->statInfo.st_nlink == *(a3 + 11) && self->statInfo.st_uid == *(a3 + 8) && self->statInfo.st_gid == *(a3 + 9))
    {
      return self->statInfo.st_flags == *(a3 + 33);
    }

    return 0;
  }

  dict = self->dict;
  if (!dict)
  {
    dict = _fillDictionary(&self->statInfo.st_dev, &self->catInfo, self->extendedAttrs, self->fileProtectionClass);
    self->dict = dict;
  }

  return [a3 isEqual:dict];
}

- (id)objectForKey:(id)a3
{
  dict = self->dict;
  if (dict)
  {

    return [(NSMutableDictionary *)dict objectForKey:?];
  }

  if ([a3 isEqual:@"NSFileModificationDate"])
  {
    v7 = MEMORY[0x1E695DF00];
    v8 = self->statInfo.st_mtimespec.tv_sec - *MEMORY[0x1E695E468] + self->statInfo.st_mtimespec.tv_nsec * 0.000000001;

    return [v7 dateWithTimeIntervalSinceReferenceDate:v8];
  }

  if ([a3 isEqual:@"NSFileSize"])
  {
    st_size = self->statInfo.st_size;

    return [NSNumber numberWithUnsignedLongLong:st_size];
  }

  if ([a3 isEqual:@"NSFilePosixPermissions"])
  {
    st_nlink = self->statInfo.st_mode & 0xFFF;
LABEL_15:

    return [NSNumber numberWithUnsignedLong:st_nlink];
  }

  if ([a3 isEqual:@"NSFileType"])
  {
    st_mode = self->statInfo.st_mode;

    return NSStatFileType(st_mode);
  }

  if ([a3 isEqual:@"NSFileReferenceCount"])
  {
    st_nlink = self->statInfo.st_nlink;
    goto LABEL_15;
  }

  if ([a3 isEqual:@"NSFileSystemNumber"])
  {
    st_nlink = self->statInfo.st_dev;
    goto LABEL_15;
  }

  if ([a3 isEqual:@"NSFileSystemFileNumber"])
  {
    st_nlink = self->statInfo.st_ino;
    goto LABEL_15;
  }

  if ([a3 isEqual:@"NSFileOwnerAccountName"])
  {
    st_uid = self->statInfo.st_uid;

    return __NSUserAccountNumberToName(st_uid);
  }

  if ([a3 isEqual:@"NSFileGroupOwnerAccountName"])
  {
    st_gid = self->statInfo.st_gid;

    return __NSGroupAccountNumberToName(st_gid);
  }

  if ([a3 isEqual:@"NSFileDeviceIdentifier"])
  {
    if ((self->statInfo.st_mode & 0xB000 | 0x4000) == 0x6000)
    {
      st_nlink = self->statInfo.st_rdev;
      goto LABEL_15;
    }

    return 0;
  }

  if ([a3 isEqual:@"NSFileExtensionHidden"])
  {
    if ((*&self->catInfo.validFields & 1) == 0)
    {
      return 0;
    }

    extensionHidden = self->catInfo.extensionHidden;
    goto LABEL_53;
  }

  if ([a3 isEqual:@"NSFileCreationDate"])
  {
    if ((*&self->catInfo.validFields & 2) != 0)
    {
      return self->catInfo.creationDate;
    }

    return 0;
  }

  if ([a3 isEqual:@"NSFileImmutable"])
  {
    v15 = (self->statInfo.st_flags & 0x20002) == 0;
    goto LABEL_50;
  }

  if ([a3 isEqual:@"NSFileAppendOnly"])
  {
    v15 = (self->statInfo.st_flags & 0x40004) == 0;
LABEL_50:
    extensionHidden = !v15;
LABEL_53:

    return [NSNumber numberWithBool:extensionHidden];
  }

  if ([a3 isEqual:@"NSFileOwnerAccountID"])
  {
    v16 = self->statInfo.st_uid;
  }

  else
  {
    if (![a3 isEqual:@"NSFileGroupOwnerAccountID"])
    {
      if ([a3 isEqual:@"NSFileExtendedAttributes"])
      {
        return self->extendedAttrs;
      }

      if ([a3 isEqual:@"NSFileProtectionKey"])
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