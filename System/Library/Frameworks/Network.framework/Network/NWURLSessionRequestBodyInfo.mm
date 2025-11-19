@interface NWURLSessionRequestBodyInfo
- (id)bodyProviderFromOffset:(void *)a1;
- (id)initWithFileURL:(void *)a3 queue:;
- (id)initWithRequest:(void *)a3 queue:;
- (id)initWithStream:(id *)a1 queue:(void *)a2;
@end

@implementation NWURLSessionRequestBodyInfo

- (id)initWithFileURL:(void *)a3 queue:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = NWURLSessionRequestBodyInfo;
    v8 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a2);
      v16 = 0;
      v9 = *MEMORY[0x1E695DB50];
      v15 = 0;
      v10 = [v6 getResourceValue:&v16 forKey:v9 error:&v15];
      v11 = v16;
      v12 = v15;
      if (v10)
      {
        a1[1] = [v11 longLongValue];
      }

      else
      {
        a1[1] = -1;
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v13 = gurlLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = v6;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "Failed to size file %@: %@", buf, 0x16u);
        }
      }

      objc_storeStrong(a1 + 5, a3);
    }
  }

  return a1;
}

- (id)initWithStream:(id *)a1 queue:(void *)a2
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = NWURLSessionRequestBodyInfo;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 4, 0);
      a1[1] = -1;
      objc_storeStrong(a1 + 5, a2);
    }
  }

  return a1;
}

- (id)initWithRequest:(void *)a3 queue:
{
  v6 = a3;
  if (a1)
  {
    v7 = a2;
    v8 = [v7 HTTPBody];
    v9 = [v7 HTTPBodyStream];

    if (v8 | v9)
    {
      v16.receiver = a1;
      v16.super_class = NWURLSessionRequestBodyInfo;
      v11 = objc_msgSendSuper2(&v16, sel_init);
      if (v11)
      {
        if (v8)
        {
          v12 = [v8 _createDispatchData];
          v13 = *(v11 + 2);
          *(v11 + 2) = v12;

          v14 = [v8 length];
        }

        else
        {
          if (![v9 streamStatus])
          {
            objc_storeStrong(v11 + 4, v9);
          }

          v14 = -1;
        }

        *(v11 + 1) = v14;
        objc_storeStrong(v11 + 5, a3);
      }

      a1 = v11;
      v10 = a1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)bodyProviderFromOffset:(void *)a1
{
  v3 = a1;
  if (!a1)
  {
    goto LABEL_22;
  }

  v4 = a2;
  if (a1[2])
  {
    v5 = [NWURLSessionRequestBodyData alloc];
    v6 = *(v3 + 2);
    v7 = v6;
    if (v5)
    {
      cleanup_handler.receiver = v5;
      cleanup_handler.super_class = NWURLSessionRequestBodyData;
      v8 = objc_msgSendSuper2(&cleanup_handler, sel_init);
      v3 = v8;
      if (v8)
      {
        objc_storeStrong(v8 + 1, v6);
        *(v3 + 2) = dispatch_data_get_size(v7);
        *(v3 + 3) = v4;
      }

      goto LABEL_6;
    }

LABEL_28:
    v3 = 0;
LABEL_6:

    goto LABEL_22;
  }

  if (!a1[3])
  {
    v7 = a1[4];
    if (v7)
    {
      if (a1[6] != a2)
      {
        _os_crash();
        __break(1u);
        goto LABEL_27;
      }

      a1[4] = 0;
      v17 = v7;

      v18 = [NWURLSessionRequestBodyStream alloc];
      v19 = *(v3 + 5);
      v4 = v17;
      v2 = v19;
      if (v18)
      {
        cleanup_handler.receiver = v18;
        cleanup_handler.super_class = NWURLSessionRequestBodyStream;
        v3 = objc_msgSendSuper2(&cleanup_handler, sel_init);
        if (!v3)
        {
LABEL_21:

          goto LABEL_22;
        }

        if (![v4 streamStatus])
        {
          objc_storeStrong(v3 + 2, v7);
          *(v3 + 3) = 0;
          objc_storeStrong(v3 + 4, v19);
          v20 = objc_alloc_init(NWURLSessionReadRequest);
          v21 = *(v3 + 5);
          *(v3 + 5) = v20;

          goto LABEL_21;
        }

LABEL_27:
        _os_crash();
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      _os_crash();
      __break(1u);
    }

    v3 = 0;
    goto LABEL_21;
  }

  v9 = [NWURLSessionRequestBodyFile alloc];
  v10 = *(v3 + 5);
  v11 = *(v3 + 3);
  v12 = v10;
  if (v9)
  {
    v27.receiver = v9;
    v27.super_class = NWURLSessionRequestBodyFile;
    v3 = objc_msgSendSuper2(&v27, sel_init);
    if (v3)
    {
      v13 = open([v11 fileSystemRepresentation], 0);
      if (v13 < 0)
      {
        *(v3 + 2) = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        v14 = v13;
        if (v4)
        {
          lseek(v13, v4, 0);
          *(v3 + 4) = v4;
        }

        cleanup_handler.receiver = MEMORY[0x1E69E9820];
        cleanup_handler.super_class = 3221225472;
        v24 = __60__NWURLSessionRequestBodyFile_initWithFileURL_offset_queue___block_invoke;
        v25 = &__block_descriptor_36_e8_v12__0i8l;
        v26 = v14;
        v15 = dispatch_io_create(0, v14, v12, &cleanup_handler);
        v16 = *(v3 + 2);
        *(v3 + 2) = v15;

        dispatch_io_set_low_water(*(v3 + 2), 0xFFFFFFFFFFFFFFFFLL);
        objc_storeStrong(v3 + 3, v10);
      }
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_22:

  return v3;
}

@end