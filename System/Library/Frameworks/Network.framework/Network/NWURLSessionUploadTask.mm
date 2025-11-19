@interface NWURLSessionUploadTask
+ (BOOL)isSubclassOfClass:(Class)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)supportsResumableUpload;
- (NSURL)resumeURL;
- (id)errorWithResumeData:(id)a3;
- (id)initWithUploadResumeInfo:(int)a3 identifier:(void *)a4 session:;
- (id)uploadResumeURL;
- (void)cancelByProducingResumeData:(id)a3;
@end

@implementation NWURLSessionUploadTask

- (id)uploadResumeURL
{
  if (self)
  {
    self = objc_getProperty(self, a2, 496, 1);
    v2 = vars8;
  }

  return self;
}

- (BOOL)supportsResumableUpload
{
  v2 = self;
  v3 = [(NWURLSessionTask *)self currentRequest];
  v4 = [v3 valueForHTTPHeaderField:@"Upload-Complete"];
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = [(NWURLSessionTask *)v2 currentRequest];
  v6 = [v5 valueForHTTPHeaderField:@"Upload-Draft-Interop-Version"];

  if (v6)
  {
    LOBYTE(v2) = 0;
    return v2;
  }

  if (!v2)
  {
    v4 = 0;
    v3 = 0;
    goto LABEL_3;
  }

  v8 = v2->super.super._requestBody;
  v3 = v8;
  if (v8 && (v8->_data || v8->_fileURL))
  {
    LOBYTE(v2) = 1;
    goto LABEL_4;
  }

  v9 = 248;
  if (!v2->super.super._internalDelegateWrapper)
  {
    v9 = 240;
  }

  v4 = *(&v2->super.super.super.isa + v9);
  if (!v4)
  {
LABEL_2:
    LOBYTE(v2) = 0;
  }

  else
  {
    v11 = v4;
    v12 = [(NWURLSessionDelegateWrapper *)v4 delegateFor_needNewBodyStreamFromOffset];
    LOBYTE(v2) = v12 != 0;

    v4 = v11;
  }

LABEL_3:

LABEL_4:
  return v2;
}

- (void)cancelByProducingResumeData:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super.super._queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__NWURLSessionUploadTask_cancelByProducingResumeData___block_invoke;
  v7[3] = &unk_1E6A3D710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __54__NWURLSessionUploadTask_cancelByProducingResumeData___block_invoke(uint64_t a1)
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

    if (*(a1 + 32))
    {
      v8 = [NWURLSessionUploadResumeInfo infoWithTask:?];
      v9 = [v8 serialize];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v4 = 0;
    v9 = 0;
  }

  [(NWURLError *)v4 setUploadTaskResumeData:v9];
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
  v21 = __54__NWURLSessionUploadTask_cancelByProducingResumeData___block_invoke_2;
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
  [v18 task:v15 deliverData:0 complete:1 error:v17 completionHandler:{&__block_literal_global_541, v19, v20, v21, v22}];
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
        v7 = [v5 uploadTaskResumeData];

        if (v7)
        {
          goto LABEL_7;
        }

        v8 = [NWURLSessionUploadResumeInfo infoWithTask:self];
        v6 = [v8 serialize];

        [v5 setUploadTaskResumeData:v6];
      }
    }
  }

LABEL_7:

  return v5;
}

- (NSURL)resumeURL
{
  v42 = *MEMORY[0x1E69E9840];
  if (self && objc_getProperty(self, a2, 496, 1))
  {
    v4 = objc_getProperty(self, v3, 496, 1);
    goto LABEL_52;
  }

  v5 = [(NWURLSessionTask *)self clientMetadata];
  v6 = v5;
  if (!v5)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v18, &type, &v36))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null metadata", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_47:
        if (!v18)
        {
LABEL_49:

          v10 = 0;
          goto LABEL_50;
        }

LABEL_48:
        free(v18);
        goto LABEL_49;
      }

      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_46:

    goto LABEL_47;
  }

  v7 = nw_protocol_copy_http_client_definition_onceToken;
  v8 = v5;
  if (v7 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v9 = nw_protocol_metadata_matches_definition(v8, nw_protocol_copy_http_client_definition_definition);

  if ((v9 & 1) == 0)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v18, &type, &v36))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s metadata must be http_client", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v19, type);
      if (v26)
      {
        if (v28)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v26;
          _os_log_impl(&dword_181A37000, v19, v27, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        if (!v18)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v28)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s metadata must be http_client, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_get_upload_resume_endpoint";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s metadata must be http_client, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_46;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__75915;
  v40 = __Block_byref_object_dispose__75916;
  v41 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = __nw_http_client_metadata_get_upload_resume_endpoint_block_invoke;
  v34 = &unk_1E6A3A858;
  v35 = buf;
  if (_nw_protocol_metadata_get_handle(v8))
  {
    (v33)(v32);
  }

  v10 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  if (v10)
  {
    v11 = nw_endpoint_copy_cfurl(v10);
    v13 = v11;
    if (self)
    {
      objc_setProperty_atomic(self, v12, v11, 496);

      Property = objc_getProperty(self, v14, 496, 1);
    }

    else
    {

      Property = 0;
    }

    v16 = Property;
    goto LABEL_51;
  }

LABEL_50:
  v16 = 0;
LABEL_51:

  v4 = v16;
LABEL_52:

  return v4;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = NWURLSessionUploadTask;
  if ([(NWURLSessionDataTask *)&v5 isKindOfClass:?])
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
  v5.super_class = &OBJC_METACLASS___NWURLSessionUploadTask;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

- (id)initWithUploadResumeInfo:(int)a3 identifier:(void *)a4 session:
{
  v7 = a2;
  if (a1)
  {
    v8 = [(NWURLSessionTask *)a1 initWithResumeInfo:v7 identifier:a3 session:a4];
    if (v8)
    {
      v9 = [v7 resumeURL];
      objc_setProperty_atomic(v8, v10, v9, 496);

      v11 = [v7 data];

      if (v11)
      {
        v12 = [NWURLSessionRequestBodyInfo alloc];
        v13 = [v7 data];
        if (v12)
        {
          v23.receiver = v12;
          v23.super_class = NWURLSessionRequestBodyInfo;
          v12 = objc_msgSendSuper2(&v23, sel_init);
          if (v12)
          {
            v14 = [v13 _createDispatchData];
            data = v12->_data;
            v12->_data = v14;

            v12->_knownSize = [v13 length];
          }
        }

        v16 = v8[54];
        v8[54] = v12;
      }

      else
      {
        v17 = [v7 fileURL];

        v18 = [NWURLSessionRequestBodyInfo alloc];
        if (v17)
        {
          v13 = [v7 fileURL];
          v16 = v8[29];
          v19 = [(NWURLSessionRequestBodyInfo *)&v18->super.isa initWithFileURL:v13 queue:v16];
          v20 = v8[54];
          v8[54] = v19;
        }

        else
        {
          v13 = v8[29];
          v21 = [NWURLSessionRequestBodyInfo initWithStream:v13 queue:?];
          v16 = v8[54];
          v8[54] = v21;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end