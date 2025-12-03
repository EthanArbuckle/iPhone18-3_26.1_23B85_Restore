@interface NSData(INImageFilePersistence)
- (void)_in_writeDataToPathForImage:()INImageFilePersistence storeType:error:;
@end

@implementation NSData(INImageFilePersistence)

- (void)_in_writeDataToPathForImage:()INImageFilePersistence storeType:error:
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 _in_writeableFilePersistenceConfigurationForStoreType:a4];
  v10 = v9;
  if (v9)
  {
    filePath = [v9 filePath];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager fileExistsAtPath:filePath];

    v14 = INSiriLogContextIntents;
    v15 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v15)
      {
        *buf = 136315394;
        v29 = "[NSData(INImageFilePersistence) _in_writeDataToPathForImage:storeType:error:]";
        v30 = 2112;
        v31 = filePath;
        v16 = "%s File already exists at path %@, overwriting";
        v17 = v14;
        v18 = 22;
LABEL_9:
        _os_log_impl(&dword_18E991000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
      }
    }

    else if (v15)
    {
      *buf = 136315650;
      v29 = "[NSData(INImageFilePersistence) _in_writeDataToPathForImage:storeType:error:]";
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = filePath;
      v16 = "%s Writing image %@ to new file path %@";
      v17 = v14;
      v18 = 32;
      goto LABEL_9;
    }

    [self writeToFile:filePath options:1 error:a5];
    v23 = _INImageFilePersistenceUpdateModifiedDateAtFilePath(filePath);
    a5 = [v10 identifier];
    goto LABEL_11;
  }

  if (!a5)
  {
    goto LABEL_12;
  }

  v19 = MEMORY[0x1E696ABC0];
  v26 = *MEMORY[0x1E696A578];
  v20 = MEMORY[0x1E696AEC0];
  filePath = [v8 description];
  v21 = [v20 stringWithFormat:@"No writable file configuration available for image: %@", filePath];
  v27 = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  *a5 = [v19 errorWithDomain:@"IntentsErrorDomain" code:6002 userInfo:v22];

  a5 = 0;
LABEL_11:

LABEL_12:
  v24 = *MEMORY[0x1E69E9840];

  return a5;
}

@end