@interface NSFileManager
- (BOOL)crl_directoryExistsAt:(id)at;
- (BOOL)crl_grantUserWritePosixPermissionAtPath:(id)path error:(id *)error;
@end

@implementation NSFileManager

- (BOOL)crl_directoryExistsAt:(id)at
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  if (URL.isFileURL.getter())
  {
    HIBYTE(v12) = 0;
    URL.path.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [(NSFileManager *)selfCopy fileExistsAtPath:v9 isDirectory:&v12 + 7];

    (*(v5 + 8))(v7, v4);
    return v10 & HIBYTE(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

- (BOOL)crl_grantUserWritePosixPermissionAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v40 = 0;
  v7 = [(NSFileManager *)self attributesOfItemAtPath:pathCopy error:&v40];
  v8 = v40;
  fileType = [v7 fileType];
  if (([fileType isEqualToString:NSFileTypeDirectory] & 1) != 0 || (objc_msgSend(fileType, "isEqualToString:", NSFileTypeRegular) & 1) != 0 || objc_msgSend(fileType, "isEqualToString:", NSFileTypeSymbolicLink))
  {
    errorCopy = error;
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 filePosixPermissions] | 0x80);
    v11 = [NSDictionary dictionaryWithObject:v10 forKey:NSFilePosixPermissions];
    v39 = v8;
    v12 = [(NSFileManager *)self setAttributes:v11 ofItemAtPath:pathCopy error:&v39];
    v13 = v39;

    if (v12)
    {
      if (![fileType isEqualToString:NSFileTypeDirectory])
      {
        v24 = 1;
LABEL_26:
        v8 = v13;
        goto LABEL_27;
      }

      v31 = fileType;
      v14 = objc_autoreleasePoolPush();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v34 = 0;
      v15 = [(NSFileManager *)self contentsOfDirectoryAtPath:pathCopy error:&v34];
      v16 = v34;
      v17 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v28 = v14;
        v29 = v13;
        v30 = v7;
        v19 = *v36;
        while (2)
        {
          v20 = 0;
          v21 = v16;
          do
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v22 = [pathCopy stringByAppendingPathComponent:*(*(&v35 + 1) + 8 * v20)];
            v33 = v21;
            v23 = [(NSFileManager *)self crl_grantUserWritePosixPermissionAtPath:v22 error:&v33];
            v16 = v33;

            if ((v23 & 1) == 0)
            {
              v16 = v16;

              v24 = 0;
              v13 = v16;
              v7 = v30;
              goto LABEL_18;
            }

            v20 = v20 + 1;
            v21 = v16;
          }

          while (v18 != v20);
          v18 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v24 = 1;
        v13 = v29;
        v7 = v30;
LABEL_18:
        v14 = v28;
      }

      else
      {
        v24 = 1;
      }

      objc_autoreleasePoolPop(v14);
      fileType = v31;
    }

    else
    {
      v24 = 0;
    }

    if (errorCopy && !v24)
    {
      if (!v13)
      {
        v27 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
        *errorCopy = v27;

        v24 = 0;
        v8 = 0;
        goto LABEL_27;
      }

      v25 = v13;
      v24 = 0;
      *errorCopy = v13;
    }

    goto LABEL_26;
  }

  v24 = 1;
LABEL_27:

  return v24;
}

@end