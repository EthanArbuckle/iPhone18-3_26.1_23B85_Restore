@interface NWURLSessionDownloadTask
+ (BOOL)isSubclassOfClass:(Class)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (NSURL)fileURL;
- (id)createResumeData;
- (id)errorWithResumeData:(id)a3;
- (id)initWithLoader:(int)a3 identifier:(void *)a4 session:;
- (void)cancelByProducingResumeData:(id)a3;
@end

@implementation NWURLSessionDownloadTask

- (id)initWithLoader:(int)a3 identifier:(void *)a4 session:
{
  v8 = a2;
  if (a1)
  {
    v9 = [(NWURLSessionTask *)a1 initWithRequest:a3 identifier:a4 session:?];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 33, a2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)fileURL
{
  if (self)
  {
    self = self->super._responseConsumer;
  }

  return [(NWURLSessionDownloadTask *)self downloadFileURL];
}

- (void)cancelByProducingResumeData:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__NWURLSessionDownloadTask_cancelByProducingResumeData___block_invoke;
  v7[3] = &unk_1E6A3D710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __56__NWURLSessionDownloadTask_cancelByProducingResumeData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 296) == 2)
    {
      v3 = *(*(a1 + 40) + 16);

      v3();
      return;
    }

    v4 = [NWURLError alloc];
    v5 = *(v2 + 264);
    v6 = v2;
    if (v4)
    {
      v7 = [(NWURLError *)v4 initWithErrorCode:-999];
      v4 = v7;
      if (v7)
      {
        [(NWURLError *)v7 fillErrorForLoader:v5 andTask:v6];
      }
    }

    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
    v4 = 0;
  }

  v9 = [(NWURLSessionDownloadTask *)v8 createResumeData];
  [(NWURLError *)v4 setDownloadTaskResumeData:v9];
  v10 = *(a1 + 32);
  if (v10 && (objc_storeStrong((v10 + 280), v4), (v11 = *(a1 + 32)) != 0))
  {
    v12 = 248;
    if (!*(v11 + 248))
    {
      v12 = 240;
    }

    v13 = *(v11 + v12);
  }

  else
  {
    v13 = 0;
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __56__NWURLSessionDownloadTask_cancelByProducingResumeData___block_invoke_2;
  v22 = &unk_1E6A3D710;
  v24 = *(a1 + 40);
  v14 = v9;
  v23 = v14;
  if (v13)
  {
    [(NWURLSessionDelegateQueue *)v13[7] runDelegateBlock:?];
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 440);
    v17 = *(v15 + 280);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = v16;
  [v18 task:v15 deliverData:0 complete:1 error:v17 completionHandler:{&__block_literal_global_583, v19, v20, v21, v22}];
}

- (id)createResumeData
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 currentRequest];
    v3 = [v2 URL];
    if ([(NSURL *)v3 _NW_isHTTPish])
    {
      v4 = [v2 URL];
      isWeb = [(NSURL *)v4 _NW_isWebSocket];

      if (!isWeb)
      {
        v6 = [v2 HTTPMethod];
        v7 = [v6 caseInsensitiveCompare:@"GET"];

        if (v7)
        {
          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v8 = gurlLogObj;
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_15;
          }

          v33 = 0;
          v9 = "Cannot create download resume data for non-GET request";
          v10 = &v33;
LABEL_14:
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, v9, v10, 2u);
LABEL_15:
          v1 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v12 = [v1 originalRequest];
        v8 = [v12 valueForHTTPHeaderField:@"Range"];

        if (v8 && (-[NSObject componentsSeparatedByString:](v8, "componentsSeparatedByString:", @"-"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 count], v13, v14 >= 3))
        {
          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v15 = gurlLogObj;
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_45;
          }

          v32 = 0;
          v16 = "Cannot create download resume data because original request has multiple ranges";
          v17 = &v32;
        }

        else
        {
          v18 = [v1 response];

          if (!v18)
          {
            if (__nwlog_url_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
            }

            v24 = gurlLogObj;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *v31 = 0;
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "Creating download resume data with nil response", v31, 2u);
            }

            v15 = [NWURLSessionDownloadResumeInfo infoWithTask:v1];
            v1 = [v15 serialize];
            goto LABEL_55;
          }

          v19 = [v1 response];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = [v1 response];
            v21 = [v15 valueForHTTPHeaderField:@"Content-Encoding"];
            v22 = v21;
            if (v21 && [v21 caseInsensitiveCompare:@"identity"])
            {
              if (__nwlog_url_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
              }

              v23 = gurlLogObj;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *v29 = 0;
                _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "Cannot create download resume data due to Content-Encoding", v29, 2u);
              }

              v1 = 0;
            }

            else
            {
              v23 = [v15 valueForHTTPHeaderField:@"ETag"];
              v25 = [v15 valueForHTTPHeaderField:@"Last-Modified"];
              if (v23 | v25)
              {
                v27 = [NWURLSessionDownloadResumeInfo infoWithTask:v1];
                v1 = [v27 serialize];
              }

              else
              {
                if (__nwlog_url_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
                }

                v26 = gurlLogObj;
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *v28 = 0;
                  _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "Cannot create download resume data without ETag or Last-Modified", v28, 2u);
                }

                v1 = 0;
              }
            }

            goto LABEL_55;
          }

          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v15 = gurlLogObj;
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
LABEL_45:
            v1 = 0;
LABEL_55:

            goto LABEL_16;
          }

          *v30 = 0;
          v16 = "Cannot create download resume data with non-HTTP response";
          v17 = v30;
        }

        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, v16, v17, 2u);
        goto LABEL_45;
      }
    }

    else
    {
    }

    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v8 = gurlLogObj;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v9 = "Cannot create download resume data for non-HTTP(S) request";
    v10 = buf;
    goto LABEL_14;
  }

LABEL_17:

  return v1;
}

- (id)errorWithResumeData:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4;
  if (self)
  {
    v6 = v4;
    if (v4)
    {
      v6 = v4;
      if ([v4 code] != -999)
      {
        v7 = [v5 downloadTaskResumeData];

        if (v7)
        {
          goto LABEL_7;
        }

        v6 = [(NWURLSessionDownloadTask *)self createResumeData];
        [v5 setDownloadTaskResumeData:v6];
      }
    }
  }

LABEL_7:

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = NWURLSessionDownloadTask;
  if ([(NWURLSessionTask *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

+ (BOOL)isSubclassOfClass:(Class)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NWURLSessionDownloadTask;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

@end