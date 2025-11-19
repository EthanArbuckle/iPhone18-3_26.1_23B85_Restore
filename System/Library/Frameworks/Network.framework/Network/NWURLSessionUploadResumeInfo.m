@interface NWURLSessionUploadResumeInfo
+ (id)infoWithResumeData:(id)a3;
+ (id)infoWithTask:(id)a3;
- (NWURLSessionUploadResumeInfo)initWithCoder:(id)a3;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NWURLSessionUploadResumeInfo

- (NWURLSessionUploadResumeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NWURLSessionUploadResumeInfo;
  v5 = [(NWURLSessionResumeInfo *)&v14 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resumeURL"];
  if (v6)
  {
    v7 = v6;
    [(NWURLSessionUploadResumeInfo *)v5 setResumeURL:v6];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(NWURLSessionUploadResumeInfo *)v5 setData:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
    [(NWURLSessionUploadResumeInfo *)v5 setFileURL:v9];

LABEL_4:
    v10 = v5;
    goto LABEL_10;
  }

  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v11 = gurlLogObj;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "Cannot init upload resume info without resume URL", v13, 2u);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NWURLSessionUploadResumeInfo;
  v4 = a3;
  [(NWURLSessionResumeInfo *)&v8 encodeWithCoder:v4];
  v5 = [(NWURLSessionUploadResumeInfo *)self resumeURL:v8.receiver];
  [v4 encodeObject:v5 forKey:@"resumeURL"];

  v6 = [(NWURLSessionUploadResumeInfo *)self data];
  [v4 encodeObject:v6 forKey:@"data"];

  v7 = [(NWURLSessionUploadResumeInfo *)self fileURL];
  [v4 encodeObject:v7 forKey:@"fileURL"];
}

- (id)serialize
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v3 = v9;
  v4 = [v2 mutableCopy];

  if (v4)
  {
    v5 = [v4 mutableBytes];
    if ([v4 length])
    {
      *v5 ^= 0x43u;
      if ([v4 length] >= 2)
      {
        v5[1] ^= 0x6Fu;
        if ([v4 length] >= 3)
        {
          v5[2] ^= 0x6Cu;
          if ([v4 length] >= 4)
          {
            v5[3] ^= 0x6Fu;
            if ([v4 length] >= 5)
            {
              v5[4] ^= 0x72u;
              if ([v4 length] >= 6)
              {
                v5[5] ^= 0x61u;
                if ([v4 length] >= 7)
                {
                  v5[6] ^= 0x64u;
                  if ([v4 length] >= 8)
                  {
                    v5[7] ^= 0x6Fu;
                  }
                }
              }
            }
          }
        }
      }
    }

    v6 = [v4 copy];
  }

  else
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v7 = gurlLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "URLSessionUploadTask: resume data archiver returned nil, error: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)infoWithResumeData:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [a3 mutableCopy];
    v4 = [v3 mutableBytes];
    if ([v3 length])
    {
      *v4 ^= 0x43u;
      if ([v3 length]>= 2)
      {
        v4[1] ^= 0x6Fu;
        if ([v3 length]>= 3)
        {
          v4[2] ^= 0x6Cu;
          if ([v3 length]>= 4)
          {
            v4[3] ^= 0x6Fu;
            if ([v3 length]>= 5)
            {
              v4[4] ^= 0x72u;
              if ([v3 length]>= 6)
              {
                v4[5] ^= 0x61u;
                if ([v3 length]>= 7)
                {
                  v4[6] ^= 0x64u;
                  if ([v3 length]>= 8)
                  {
                    v4[7] ^= 0x6Fu;
                  }
                }
              }
            }
          }
        }
      }
    }

    v10 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
    v6 = v10;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v8 = gurlLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "URLSessionUploadTask: resume data unarchiver returned nil, error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v3 = gurlLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "URLSessionUploadTask: cannot init with nil resume data", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)infoWithTask:(id)a3
{
  v3 = a3;
  v4 = [v3 resumeURL];
  if (v4)
  {
    v5 = [(NWURLSessionResumeInfo *)[NWURLSessionUploadResumeInfo alloc] initWithTask:v3];
    [v5 setResumeURL:v4];
    if (v3)
    {
      v6 = v3[54];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v5;
    v9 = v8;
    if (v7)
    {
      if (v7[2])
      {
        [v8 setData:?];
      }

      else if (v7[3])
      {
        [v8 setFileURL:?];
      }
    }
  }

  else
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v10 = gurlLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "Cannot create upload resume data without a resume URL", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

@end