@interface NSFileManager
- (BOOL)crl_directoryExistsAt:(id)a3;
- (BOOL)crl_grantUserWritePosixPermissionAtPath:(id)a3 error:(id *)a4;
@end

@implementation NSFileManager

- (BOOL)crl_directoryExistsAt:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  if (URL.isFileURL.getter())
  {
    HIBYTE(v12) = 0;
    URL.path.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [(NSFileManager *)v8 fileExistsAtPath:v9 isDirectory:&v12 + 7];

    (*(v5 + 8))(v7, v4);
    return v10 & HIBYTE(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

- (BOOL)crl_grantUserWritePosixPermissionAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v40 = 0;
  v7 = [(NSFileManager *)self attributesOfItemAtPath:v6 error:&v40];
  v8 = v40;
  v9 = [v7 fileType];
  if (([v9 isEqualToString:NSFileTypeDirectory] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", NSFileTypeRegular) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", NSFileTypeSymbolicLink))
  {
    v32 = a4;
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 filePosixPermissions] | 0x80);
    v11 = [NSDictionary dictionaryWithObject:v10 forKey:NSFilePosixPermissions];
    v39 = v8;
    v12 = [(NSFileManager *)self setAttributes:v11 ofItemAtPath:v6 error:&v39];
    v13 = v39;

    if (v12)
    {
      if (![v9 isEqualToString:NSFileTypeDirectory])
      {
        v24 = 1;
LABEL_26:
        v8 = v13;
        goto LABEL_27;
      }

      v31 = v9;
      v14 = objc_autoreleasePoolPush();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v34 = 0;
      v15 = [(NSFileManager *)self contentsOfDirectoryAtPath:v6 error:&v34];
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

            v22 = [v6 stringByAppendingPathComponent:*(*(&v35 + 1) + 8 * v20)];
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
      v9 = v31;
    }

    else
    {
      v24 = 0;
    }

    if (v32 && !v24)
    {
      if (!v13)
      {
        v27 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
        *v32 = v27;

        v24 = 0;
        v8 = 0;
        goto LABEL_27;
      }

      v25 = v13;
      v24 = 0;
      *v32 = v13;
    }

    goto LABEL_26;
  }

  v24 = 1;
LABEL_27:

  return v24;
}

@end