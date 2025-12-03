@interface NWURLSessionDownloadResumeInfo
+ (id)infoWithResumeData:(id)data;
+ (id)infoWithTask:(id)task;
- (NWURLSessionDownloadResumeInfo)initWithCoder:(id)coder;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWURLSessionDownloadResumeInfo

- (NWURLSessionDownloadResumeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NWURLSessionDownloadResumeInfo;
  v5 = [(NWURLSessionResumeInfo *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    [(NWURLSessionDownloadResumeInfo *)v5 setFileURL:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tempFileName"];
    [(NWURLSessionDownloadResumeInfo *)v5 setTempFileName:v7];

    -[NWURLSessionDownloadResumeInfo set_keepDownloadTaskFile:](v5, "set_keepDownloadTaskFile:", [coderCopy decodeBoolForKey:@"_keepDownloadTaskFile"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NWURLSessionDownloadResumeInfo;
  coderCopy = coder;
  [(NWURLSessionResumeInfo *)&v7 encodeWithCoder:coderCopy];
  v5 = [(NWURLSessionDownloadResumeInfo *)self fileURL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"fileURL"];

  tempFileName = [(NWURLSessionDownloadResumeInfo *)self tempFileName];
  [coderCopy encodeObject:tempFileName forKey:@"tempFileName"];

  [coderCopy encodeBool:-[NWURLSessionDownloadResumeInfo _keepDownloadTaskFile](self forKey:{"_keepDownloadTaskFile"), @"_keepDownloadTaskFile"}];
}

- (id)serialize
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v15];
  v4 = v15;
  v5 = [v3 mutableCopy];

  if (!v5)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v11 = gurlLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "URLSessionDownloadTask: resume data archiver returned nil, error: %@", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_20;
  }

  mutableBytes = [v5 mutableBytes];
  if ([v5 length])
  {
    *mutableBytes ^= 0x54u;
    if ([v5 length] >= 2)
    {
      mutableBytes[1] ^= 0x65u;
      if ([v5 length] >= 3)
      {
        mutableBytes[2] ^= 0x64u;
        if ([v5 length] >= 4)
        {
          mutableBytes[3] ^= 0x4Cu;
          if ([v5 length] >= 5)
          {
            mutableBytes[4] ^= 0x61u;
            if ([v5 length] >= 6)
            {
              mutableBytes[5] ^= 0x73u;
              if ([v5 length] >= 7)
              {
                mutableBytes[6] ^= 0x73u;
                if ([v5 length] >= 8)
                {
                  mutableBytes[7] ^= 0x6Fu;
                }
              }
            }
          }
        }
      }
    }
  }

  v7 = [v5 copy];
  if (isWebKitNetworking_onceToken != -1)
  {
    dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
  }

  if (isWebKitNetworking_result)
  {
    v8 = MEMORY[0x1E695DF20];
    fileURL = [(NWURLSessionDownloadResumeInfo *)self fileURL];
    path = [fileURL path];
    v11 = [v8 dictionaryWithObjectsAndKeys:{v7, @"data", path, @"NSURLSessionResumeInfoLocalPath", 0}];

    v12 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v12 encodeObject:v11 forKey:@"NSKeyedArchiveRootObjectKey"];
    encodedData = [v12 encodedData];

    v7 = encodedData;
LABEL_20:
  }

  return v7;
}

+ (id)infoWithResumeData:(id)data
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v4 = dataCopy;
    if (isWebKitNetworking_onceToken != -1)
    {
      dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
    }

    if (isWebKitNetworking_result != 1)
    {
      v8 = 0;
      goto LABEL_15;
    }

    v27 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v27];
    v6 = v27;
    v7 = [v5 objectForKeyedSubscript:@"$archiver"];

    if (v7)
    {
      v8 = [v5 objectForKeyedSubscript:@"NSURLSessionResumeInfoLocalPath"];
      v26 = v6;
      v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:&v26];
      v10 = v26;

      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
      v15 = [v9 decodeObjectOfClasses:v14 forKey:@"NSKeyedArchiveRootObjectKey"];

      [v9 finishDecoding];
      if (v15)
      {
        v5 = v15;
        if (v8)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      v6 = v10;
    }

    else
    {
      if (v5)
      {
        v10 = v6;
LABEL_37:
        v8 = [v5 objectForKeyedSubscript:@"NSURLSessionResumeInfoLocalPath"];
        if (!v8)
        {
LABEL_39:
          v21 = [v5 objectForKeyedSubscript:@"data"];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (__nwlog_url_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
            }

            v23 = gurlLogObj;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "URLSessionDownloadTask: resume data has no data", buf, 2u);
            }

            v16 = 0;
            v4 = v21;
            goto LABEL_58;
          }

          v4 = v21;
LABEL_15:
          v10 = [v4 mutableCopy];
          mutableBytes = [v10 mutableBytes];
          if ([v10 length])
          {
            *mutableBytes ^= 0x54u;
            if ([v10 length]>= 2)
            {
              mutableBytes[1] ^= 0x65u;
              if ([v10 length]>= 3)
              {
                mutableBytes[2] ^= 0x64u;
                if ([v10 length]>= 4)
                {
                  mutableBytes[3] ^= 0x4Cu;
                  if ([v10 length]>= 5)
                  {
                    mutableBytes[4] ^= 0x61u;
                    if ([v10 length]>= 6)
                    {
                      mutableBytes[5] ^= 0x73u;
                      if ([v10 length]>= 7)
                      {
                        mutableBytes[6] ^= 0x73u;
                        if ([v10 length]>= 8)
                        {
                          mutableBytes[7] ^= 0x6Fu;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v25 = 0;
          v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v25];
          v5 = v25;
          if (v16)
          {
            if (v8)
            {
              v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
              [v16 setFileURL:v18];

              [v16 setTempFileName:0];
            }

            v19 = v16;
          }

          else
          {
            if (__nwlog_url_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
            }

            v20 = gurlLogObj;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v29 = v5;
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "URLSessionDownloadTask: resume data unarchiver returned nil, error: %@", buf, 0xCu);
            }
          }

LABEL_58:
          goto LABEL_59;
        }

LABEL_38:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v22 = gurlLogObj;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "URLSessionDownloadTask: resume data local path is not string", buf, 2u);
          }

          v16 = 0;
          goto LABEL_58;
        }

        goto LABEL_39;
      }

      v8 = 0;
    }

    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v5 = gurlLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "URLSessionDownloadTask: resume data deserialization returned nil, error: %@", buf, 0xCu);
    }

    v16 = 0;
    v10 = v6;
    goto LABEL_58;
  }

  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v4 = gurlLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "URLSessionDownloadTask: cannot init with nil resume data", buf, 2u);
  }

  v16 = 0;
LABEL_59:

  return v16;
}

+ (id)infoWithTask:(id)task
{
  taskCopy = task;
  v4 = [(NWURLSessionResumeInfo *)[NWURLSessionDownloadResumeInfo alloc] initWithTask:taskCopy];
  [v4 set_keepDownloadTaskFile:{objc_msgSend(taskCopy, "_keepDownloadTaskFile")}];
  if (taskCopy)
  {
    v5 = taskCopy[55];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 populateDownloadResumeInfo:v4];

  return v4;
}

@end