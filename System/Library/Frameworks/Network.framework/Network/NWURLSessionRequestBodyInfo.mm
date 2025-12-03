@interface NWURLSessionRequestBodyInfo
- (id)bodyProviderFromOffset:(void *)offset;
- (id)initWithFileURL:(void *)l queue:;
- (id)initWithRequest:(void *)request queue:;
- (id)initWithStream:(id *)stream queue:(void *)queue;
@end

@implementation NWURLSessionRequestBodyInfo

- (id)initWithFileURL:(void *)l queue:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  lCopy = l;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = NWURLSessionRequestBodyInfo;
    v8 = objc_msgSendSuper2(&v17, sel_init);
    self = v8;
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
        self[1] = [v11 longLongValue];
      }

      else
      {
        self[1] = -1;
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

      objc_storeStrong(self + 5, l);
    }
  }

  return self;
}

- (id)initWithStream:(id *)stream queue:(void *)queue
{
  queueCopy = queue;
  if (stream)
  {
    v7.receiver = stream;
    v7.super_class = NWURLSessionRequestBodyInfo;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    stream = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 4, 0);
      stream[1] = -1;
      objc_storeStrong(stream + 5, queue);
    }
  }

  return stream;
}

- (id)initWithRequest:(void *)request queue:
{
  requestCopy = request;
  if (self)
  {
    v7 = a2;
    hTTPBody = [v7 HTTPBody];
    hTTPBodyStream = [v7 HTTPBodyStream];

    if (hTTPBody | hTTPBodyStream)
    {
      v16.receiver = self;
      v16.super_class = NWURLSessionRequestBodyInfo;
      v11 = objc_msgSendSuper2(&v16, sel_init);
      if (v11)
      {
        if (hTTPBody)
        {
          _createDispatchData = [hTTPBody _createDispatchData];
          v13 = *(v11 + 2);
          *(v11 + 2) = _createDispatchData;

          v14 = [hTTPBody length];
        }

        else
        {
          if (![hTTPBodyStream streamStatus])
          {
            objc_storeStrong(v11 + 4, hTTPBodyStream);
          }

          v14 = -1;
        }

        *(v11 + 1) = v14;
        objc_storeStrong(v11 + 5, request);
      }

      self = v11;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)bodyProviderFromOffset:(void *)offset
{
  offsetCopy = offset;
  if (!offset)
  {
    goto LABEL_22;
  }

  v4 = a2;
  if (offset[2])
  {
    v5 = [NWURLSessionRequestBodyData alloc];
    v6 = *(offsetCopy + 2);
    v7 = v6;
    if (v5)
    {
      cleanup_handler.receiver = v5;
      cleanup_handler.super_class = NWURLSessionRequestBodyData;
      v8 = objc_msgSendSuper2(&cleanup_handler, sel_init);
      offsetCopy = v8;
      if (v8)
      {
        objc_storeStrong(v8 + 1, v6);
        *(offsetCopy + 2) = dispatch_data_get_size(v7);
        *(offsetCopy + 3) = v4;
      }

      goto LABEL_6;
    }

LABEL_28:
    offsetCopy = 0;
LABEL_6:

    goto LABEL_22;
  }

  if (!offset[3])
  {
    v7 = offset[4];
    if (v7)
    {
      if (offset[6] != a2)
      {
        _os_crash();
        __break(1u);
        goto LABEL_27;
      }

      offset[4] = 0;
      v17 = v7;

      v18 = [NWURLSessionRequestBodyStream alloc];
      v19 = *(offsetCopy + 5);
      v4 = v17;
      v2 = v19;
      if (v18)
      {
        cleanup_handler.receiver = v18;
        cleanup_handler.super_class = NWURLSessionRequestBodyStream;
        offsetCopy = objc_msgSendSuper2(&cleanup_handler, sel_init);
        if (!offsetCopy)
        {
LABEL_21:

          goto LABEL_22;
        }

        if (![v4 streamStatus])
        {
          objc_storeStrong(offsetCopy + 2, v7);
          *(offsetCopy + 3) = 0;
          objc_storeStrong(offsetCopy + 4, v19);
          v20 = objc_alloc_init(NWURLSessionReadRequest);
          v21 = *(offsetCopy + 5);
          *(offsetCopy + 5) = v20;

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

    offsetCopy = 0;
    goto LABEL_21;
  }

  v9 = [NWURLSessionRequestBodyFile alloc];
  v10 = *(offsetCopy + 5);
  v11 = *(offsetCopy + 3);
  v12 = v10;
  if (v9)
  {
    v27.receiver = v9;
    v27.super_class = NWURLSessionRequestBodyFile;
    offsetCopy = objc_msgSendSuper2(&v27, sel_init);
    if (offsetCopy)
    {
      v13 = open([v11 fileSystemRepresentation], 0);
      if (v13 < 0)
      {
        *(offsetCopy + 2) = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        v14 = v13;
        if (v4)
        {
          lseek(v13, v4, 0);
          *(offsetCopy + 4) = v4;
        }

        cleanup_handler.receiver = MEMORY[0x1E69E9820];
        cleanup_handler.super_class = 3221225472;
        v24 = __60__NWURLSessionRequestBodyFile_initWithFileURL_offset_queue___block_invoke;
        v25 = &__block_descriptor_36_e8_v12__0i8l;
        v26 = v14;
        v15 = dispatch_io_create(0, v14, v12, &cleanup_handler);
        v16 = *(offsetCopy + 2);
        *(offsetCopy + 2) = v15;

        dispatch_io_set_low_water(*(offsetCopy + 2), 0xFFFFFFFFFFFFFFFFLL);
        objc_storeStrong(offsetCopy + 3, v10);
      }
    }
  }

  else
  {
    offsetCopy = 0;
  }

LABEL_22:

  return offsetCopy;
}

@end