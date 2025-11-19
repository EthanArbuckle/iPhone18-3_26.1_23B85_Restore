@interface NWURLLoaderHTTP
- (BOOL)allowsWriteAfterBecomingStream;
- (BOOL)canHandleRedirectionToRequest:(id)a3;
- (NSString)multipartMixedReplaceBoundary;
- (NWConcrete_nw_connection)underlyingConnection;
- (NWURLError)errorForErrorCode:(id *)a1;
- (OS_nw_http_fields)trailerFields;
- (OS_sec_trust)peerTrust;
- (id)errorForClientMetadataError;
- (id)errorForNWError:(id *)a1;
- (id)takeCachedResponse;
- (void)addProgressObserverForResponseStallTimer;
- (void)cancelConnection;
- (void)continueLoading:(nw_protocol_options_t)a1;
- (void)notifyRequestCompletion:(id)a3;
- (void)readDataOfMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5;
- (void)readResponse;
- (void)readResponse:(id)a3;
- (void)responseFromMetadata:(*-[NWURLLoaderHTTP responseFromMetadata:(void *)a2 ](uint64_t)a1;
- (void)restartStallTimer:(id)a3;
- (void)setPendingError:(uint64_t)a1;
- (void)start:(id)a3;
- (void)stop;
- (void)stopResponseStallTimer;
- (void)updateClient:(id)a3;
- (void)writeData:(id)a3 complete:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation NWURLLoaderHTTP

- (id)takeCachedResponse
{
  if (self)
  {
    v3 = self->_cachedResponseToStore;
    cachedResponseToStore = self->_cachedResponseToStore;
    self->_cachedResponseToStore = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addProgressObserverForResponseStallTimer
{
  if (a1 && *(a1 + 160) && *(a1 + 152))
  {
    if (HTTPNotificationCenter_onceToken != -1)
    {
      v3 = a1;
      dispatch_once(&HTTPNotificationCenter_onceToken, &__block_literal_global_233);
      a1 = v3;
    }

    v1 = *(a1 + 152);
    v2 = a1;
    v4 = HTTPNotificationCenter_center;
    [v4 addObserver:v2 selector:sel_restartStallTimer_ name:@"NWURLLoaderHTTPConnectionProgressNotification" object:v1];
  }
}

- (void)stop
{
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __23__NWURLLoaderHTTP_stop__block_invoke;
  v26[3] = &unk_1E6A3A528;
  v26[4] = self;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v28 = __nw_http_diag_log_for_level_block_invoke;
  v29 = &unk_1E6A303F0;
  v31 = 2;
  v32 = 0;
  v30 = v26;
  os_unfair_lock_lock(&lock);
  v28(v27);
  os_unfair_lock_unlock(&lock);
  [(NWURLLoaderHTTP *)self stopResponseStallTimer];
  [(NWURLLoaderHTTP *)self cancelConnection];
  if (self)
  {
    connection = self->_connection;
    self->_connection = 0;

    [(NWURLSessionRequestBodyProvider *)self->_requestBodyProvider close];
    requestBodyProvider = self->_requestBodyProvider;
    self->_requestBodyProvider = 0;

    [(NWURLBackgroundScheduler *)self->_scheduler complete];
    scheduler = self->_scheduler;
    self->_scheduler = 0;

    client = self->_client;
    self->_client = 0;

    request = self->_request;
    self->_request = 0;

    configuration = self->_configuration;
    self->_configuration = 0;

    requestContext = self->_requestContext;
    self->_requestContext = 0;

    cache = self->_cache;
    self->_cache = 0;

    httpConnectionMetadata = self->_httpConnectionMetadata;
    self->_httpConnectionMetadata = 0;

    peerTrustInternal = self->_peerTrustInternal;
    self->_peerTrustInternal = 0;

    pendingError = self->_pendingError;
    self->_pendingError = 0;

    v16 = self->_responseCompletionHandler;
    objc_setProperty_nonatomic_copy(self, v17, 0, 136);
    if (v16)
    {
      v18 = [NWURLError alloc];
      v19 = [(NWURLLoaderClient *)self->_client loaderTask];
      v20 = self;
      v21 = v19;
      if (v18)
      {
        v22 = [(NWURLError *)v18 initWithErrorCode:-999];
        v18 = v22;
        if (v22)
        {
          [(NWURLError *)v22 fillErrorForLoader:v20 andTask:v21];
        }
      }

      v16[2](v16, 0, v18);
    }

    v23 = self->_requestCompletionHandler;
    objc_setProperty_nonatomic_copy(self, v24, 0, 144);
    if (v23)
    {
      v23[2](v23);
    }
  }

  else
  {
    [0 close];
    [(NWURLBackgroundScheduler *)0 complete];
    v16 = 0;
  }
}

- (void)cancelConnection
{
  if (a1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__NWURLLoaderHTTP_cancelConnection__block_invoke;
    v6[3] = &unk_1E6A3A528;
    v6[4] = a1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v8 = __nw_http_diag_log_for_level_block_invoke;
    v9 = &unk_1E6A303F0;
    v11 = 2;
    v12 = 0;
    v10 = v6;
    os_unfair_lock_lock(&lock);
    v8(v7);
    os_unfair_lock_unlock(&lock);
    if ((*(a1 + 15) & 1) == 0)
    {
      *(a1 + 15) = 1;
      v2 = *(a1 + 72);
      if (v2)
      {
        v3 = *(a1 + 40);
        v4 = v2;
        v5 = [(NWURLSessionTaskConfiguration *)v3 activity];
        nw_connection_end_activity(v4, v5);

        nw_connection_cancel(*(a1 + 72));
      }
    }
  }
}

- (void)stopResponseStallTimer
{
  if (a1)
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      nw_queue_cancel_source(v3, a2);
      *(a1 + 160) = 0;
      if (*(a1 + 152))
      {
        if (HTTPNotificationCenter_onceToken != -1)
        {
          dispatch_once(&HTTPNotificationCenter_onceToken, &__block_literal_global_233);
        }

        v4 = *(a1 + 152);
        v5 = HTTPNotificationCenter_center;
        [v5 removeObserver:a1 name:@"NWURLLoaderHTTPConnectionProgressNotification" object:v4];
      }
    }
  }
}

- (void)restartStallTimer:(id)a3
{
  if (self)
  {
    responseStallTimer = self->_responseStallTimer;
    if (responseStallTimer)
    {
      v4 = dispatch_time(0x8000000000000000, 3000000000);
      v5 = *responseStallTimer;
      if (*responseStallTimer)
      {

        dispatch_source_set_timer(v5, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      else
      {
        responseStallTimer[4] = v4;
        responseStallTimer[5] = -1;
        if (*(responseStallTimer + 48) == 1 && *(responseStallTimer + 49) == 1)
        {

          nw_queue_source_run_timer(responseStallTimer, v4);
        }
      }
    }
  }
}

- (NWConcrete_nw_connection)underlyingConnection
{
  if (self)
  {
    self = self->_connection;
  }

  return self;
}

- (void)writeData:(id)a3 complete:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!self)
  {
    v13 = 0;
LABEL_9:
    v9[2](v9, v13);

    goto LABEL_10;
  }

  if (!self->_protocolSwitched || !self->_becameStream)
  {
    v13 = [NWURLError alloc];
    v14 = [(NWURLLoaderClient *)self->_client loaderTask];
    v15 = self;
    v16 = v14;
    if (v13)
    {
      v17 = [(NWURLError *)v13 initWithErrorCode:-1005];
      v13 = v17;
      if (v17)
      {
        [(NWURLError *)v17 fillErrorForLoader:v15 andTask:v16];
      }
    }

    goto LABEL_9;
  }

  v10 = self->_connection;
  connection = self->_connection;
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __56__NWURLLoaderHTTP_writeData_complete_completionHandler___block_invoke;
  completion[3] = &unk_1E6A3A6A0;
  v19 = v10;
  v20 = self;
  v21 = v9;
  v12 = v10;
  nw_connection_send(&connection->super, v8, &__block_literal_global_8_44676, a4, completion);

LABEL_10:
}

void __56__NWURLLoaderHTTP_writeData_complete_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  if (v4)
  {
    if (v5 != *(v4 + 72))
    {
      goto LABEL_13;
    }

LABEL_3:
    v10 = v3;
    if (v3)
    {
      if (v4 && *(v4 + 88))
      {
        v6 = a1[6];
        goto LABEL_11;
      }

      v7 = [(NWURLLoaderHTTP *)v4 errorForNWError:v3];
      v8 = a1[5];
      if (v8)
      {
        objc_storeStrong((v8 + 88), v7);
      }

      v4 = a1[5];
    }

    v6 = a1[6];
    if (!v4)
    {
      v9 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v9 = *(v4 + 88);
LABEL_12:
    (*(v6 + 16))(v6, v9);
    v3 = v10;
    goto LABEL_13;
  }

  if (!v5)
  {
    goto LABEL_3;
  }

LABEL_13:
}

- (id)errorForNWError:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(NWURLLoaderHTTP *)a1 errorForClientMetadataError];
    v5 = v4;
    if (v4)
    {
      a1 = v4;
    }

    else
    {
      v6 = [NWURLError alloc];
      v7 = [a1[6] loaderTask];
      a1 = [(NWURLError *)v6 initWithNWError:v3 forLoader:a1 andTask:v7];
    }
  }

  return a1;
}

- (id)errorForClientMetadataError
{
  v39 = *MEMORY[0x1E69E9840];
  if (p_isa)
  {
    v1 = p_isa;
    v2 = [p_isa[6] clientMetadata];

    if (!v2)
    {
      goto LABEL_13;
    }

    v3 = [v1[6] clientMetadata];
    v4 = v3;
    if (v3)
    {
      v5 = nw_protocol_copy_http_client_definition_onceToken;
      v6 = v3;
      if (v5 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
      }

      v7 = nw_protocol_metadata_matches_definition(v6, nw_protocol_copy_http_client_definition_definition);

      if (v7)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v38 = 0;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v32 = __nw_http_client_metadata_get_client_error_block_invoke;
        v33 = &unk_1E6A3A858;
        v34 = buf;
        if (_nw_protocol_metadata_get_handle(v6))
        {
          (v32)(v31);
        }

        v8 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);

        v9 = v8 - 1;
        if (v9 <= 4)
        {
          v10 = qword_182BD33A8[v9];
          v11 = [NWURLError alloc];
          v12 = [v1[6] loaderTask];
          v13 = v1;
          v4 = v12;
          if (v11 && (v14 = [(NWURLError *)v11 initWithErrorCode:v10]) != 0)
          {
            v15 = v14;
            [(NWURLError *)v14 fillErrorForLoader:v13 andTask:v4];
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_16;
        }

LABEL_13:
        p_isa = 0;
        goto LABEL_17;
      }

      v21 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_client_metadata_get_client_error";
      v18 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v35 = 0;
      if (__nwlog_fault(v18, &type, &v35))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v19 = __nwlog_obj();
          v22 = type;
          if (os_log_type_enabled(v19, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_client_metadata_get_client_error";
            _os_log_impl(&dword_181A37000, v19, v22, "%{public}s metadata must be http_client", buf, 0xCu);
          }
        }

        else if (v35 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v19 = __nwlog_obj();
          v27 = type;
          v28 = os_log_type_enabled(v19, type);
          if (backtrace_string)
          {
            if (v28)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http_client_metadata_get_client_error";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v19, v27, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v18)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

          if (v28)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_client_metadata_get_client_error";
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
            *&buf[4] = "nw_http_client_metadata_get_client_error";
            _os_log_impl(&dword_181A37000, v19, v30, "%{public}s metadata must be http_client, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_52;
      }

LABEL_53:
      if (!v18)
      {
LABEL_55:

        v15 = 0;
LABEL_16:

        p_isa = &v15->super.super.isa;
        goto LABEL_17;
      }

LABEL_54:
      free(v18);
      goto LABEL_55;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_get_client_error";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v18, &type, &v35))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_get_client_error";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null metadata", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_client_metadata_get_client_error";
          *&buf[12] = 2082;
          *&buf[14] = v23;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_53;
      }

      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_get_client_error";
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
        *&buf[4] = "nw_http_client_metadata_get_client_error";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_17:

  return p_isa;
}

- (BOOL)allowsWriteAfterBecomingStream
{
  if (!self)
  {
    return 0;
  }

  self->_becameStream = 1;
  return self->_protocolSwitched;
}

- (OS_nw_http_fields)trailerFields
{
  if (self)
  {
    self = self->_trailerFieldsInternal;
  }

  return self;
}

- (void)notifyRequestCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    newValue = v4;
    if (self->_requestCompleteInternal)
    {
      (*(v4 + 2))(v4);
    }

    else
    {
      objc_setProperty_nonatomic_copy(self, v4, v4, 144);
    }

    v5 = newValue;
  }
}

- (OS_sec_trust)peerTrust
{
  if (self)
  {
    self = self->_peerTrustInternal;
  }

  return self;
}

- (NSString)multipartMixedReplaceBoundary
{
  if (self)
  {
    self = self->_multipartBoundary;
  }

  return self;
}

- (BOOL)canHandleRedirectionToRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [(NSURL *)v3 _NW_isHTTPish];

  return v4;
}

- (void)readDataOfMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (!self)
  {
    connection = 0;
    goto LABEL_9;
  }

  if (!self->_pendingCompletion && (!self->_protocolSwitched || self->_becameStream))
  {
    connection = self->_connection;
LABEL_9:
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__NWURLLoaderHTTP_readDataOfMinimumIncompleteLength_maximumLength_completionHandler___block_invoke;
    v20[3] = &unk_1E6A3A670;
    v20[4] = self;
    v21 = v8;
    nw_connection_receive_internal(connection, 0, v6, a4, v20);

    goto LABEL_15;
  }

  if (self->_loadingFromCache)
  {
    v10 = self->_cachedResponseFound;
    v11 = [(NSCachedURLResponse *)v10 data];
    v12 = [v11 length];
    cachedResponseDataOffset = self->_cachedResponseDataOffset;

    v14 = [(NSCachedURLResponse *)self->_cachedResponseFound data];
    v15 = [v14 _createDispatchData];

    if (v12 <= cachedResponseDataOffset + a4)
    {
      if (v15)
      {
        v18 = self->_cachedResponseDataOffset;
        if (v18)
        {
          subrange = dispatch_data_create_subrange(v15, v18, a4);

          v15 = subrange;
        }
      }

      (v9)[2](v9, v15, 1, 0);
    }

    else
    {
      v16 = dispatch_data_create_subrange(v15, self->_cachedResponseDataOffset, a4);

      self->_cachedResponseDataOffset += a4;
      (v9)[2](v9, v16, 0, 0);
    }
  }

  else
  {
    (*(v8 + 2))(v8, 0, 1, self->_pendingError);
  }

LABEL_15:
}

void __85__NWURLLoaderHTTP_readDataOfMinimumIncompleteLength_maximumLength_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v86 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (gLogDatapath != 1)
  {
    v12 = *(a1 + 32);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_3;
  }

  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v46 = gurlLogObj;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v47 = *(a1 + 32);
    if (v47 && (v48 = *(v47 + 48)) != 0)
    {
      v49 = v48;
      [v48 logDescription];
    }

    else
    {
      v49 = 0;
      v70[0] = 0;
      v70[1] = 0;
      v71 = 0;
    }

    v53 = *(a1 + 32);
    if (v53 && (v54 = *(v53 + 48)) != 0)
    {
      v55 = v54;
      [v54 logDescription];
      v56 = v69;
    }

    else
    {
      v56 = 0;
      v55 = 0;
    }

    if (v9)
    {
      size = dispatch_data_get_size(v9);
    }

    else
    {
      size = 0;
    }

    *buf = 136447746;
    v73 = "[NWURLLoaderHTTP readDataOfMinimumIncompleteLength:maximumLength:completionHandler:]_block_invoke";
    v74 = 1042;
    v75 = 16;
    v76 = 2098;
    v77 = v70;
    v78 = 1024;
    v79 = v56;
    v80 = 2048;
    v81 = size;
    v82 = 1024;
    v83 = a4;
    v84 = 2112;
    v85 = v11;
    _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Task <%{public,uuid_t}.16P>.<%u> received body: %zu, complete: %{BOOL}d, error: %@", buf, 0x3Cu);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
LABEL_3:
    if (*(v12 + 152))
    {
      if (HTTPNotificationCenter_onceToken != -1)
      {
        dispatch_once(&HTTPNotificationCenter_onceToken, &__block_literal_global_233);
      }

      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 152);
      }

      else
      {
        v14 = 0;
      }

      v15 = HTTPNotificationCenter_center;
      [v15 postNotificationName:@"NWURLLoaderHTTPConnectionProgressNotification" object:v14];
    }
  }

LABEL_9:
  if (v11)
  {
    v50 = [(NWURLLoaderHTTP *)*(a1 + 32) errorForNWError:v11];
    v17 = v50;
    if (!v50)
    {
      goto LABEL_14;
    }

    v51 = *(a1 + 32);
    if (v51)
    {
      if (*(v51 + 88))
      {
        goto LABEL_14;
      }

      v17 = v50;
      v52 = *(v51 + 88);
      *(v51 + 88) = v17;
      goto LABEL_43;
    }

    v18 = 0;
  }

  else
  {
    if (!a4)
    {
LABEL_13:
      v17 = 0;
LABEL_14:
      v18 = *(a1 + 32);
      goto LABEL_15;
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      if (*(v16 + 8) != 1)
      {
        goto LABEL_13;
      }

      v17 = 0;
      v52 = *(v16 + 88);
      *(v16 + 88) = 0;
LABEL_43:

      goto LABEL_14;
    }

    v18 = 0;
    v17 = 0;
  }

LABEL_15:
  if (v9)
  {
    if (v18)
    {
      v19 = *(v18 + 96);
      v20 = v9;
      if (v19)
      {
        v21 = v19[3];
        if (v21)
        {
          v22 = v20;
          v23 = v21;
          concat = dispatch_data_create_concat(v23, v22);
          v25 = v19[3];
          v19[3] = concat;

          v26 = v19[3];
          if (dispatch_data_get_size(v26) > v19[4])
          {
            v19[3] = 0;

            v27 = v19[5];
            v19[4] = 0;
            v19[5] = 0;
          }
        }
      }
    }

    else
    {
      v58 = v9;
    }

    v18 = *(a1 + 32);
  }

  if (v18)
  {
    if (*(v18 + 88))
    {
      v28 = *(v18 + 96);
      if (v28)
      {
        v29 = v28[3];
        v28[3] = 0;

        v30 = v28[5];
        v28[4] = 0;
        v28[5] = 0;

        v18 = *(a1 + 32);
      }
    }
  }

  if (!a4)
  {
    goto LABEL_75;
  }

  if (!v18)
  {
    v32 = 0;
LABEL_58:
    v44 = 0;
    goto LABEL_59;
  }

  v31 = *(v18 + 96);
  v32 = v31;
  if (!v31)
  {
    goto LABEL_58;
  }

  v33 = v31[5];
  if (!v33)
  {
    goto LABEL_58;
  }

  v34 = v32[3];

  if (!v34)
  {
    goto LABEL_58;
  }

  v35 = objc_alloc(MEMORY[0x1E695ABF0]);
  v68 = v9;
  v36 = a4;
  v37 = v17;
  v38 = v11;
  v39 = v10;
  v41 = v32[2];
  v40 = v32[3];
  v42 = v32[5];
  v43 = v40;
  v10 = v39;
  v11 = v38;
  v17 = v37;
  a4 = v36;
  v9 = v68;
  v44 = [v35 initWithResponse:v42 data:v43 userInfo:0 storagePolicy:v41];

  v45 = v32[3];
  v32[3] = 0;

LABEL_59:
  v59 = *(a1 + 32);
  if (v59)
  {
    objc_storeStrong((v59 + 120), v44);
  }

  if (v10)
  {
    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v60 = nw_protocol_copy_http_definition_http_definition;
    v61 = nw_content_context_copy_protocol_metadata(v10, v60);

    if (v61)
    {
      v62 = nw_http_metadata_copy_trailer_fields(v61);
      v63 = *(a1 + 32);
      if (v63)
      {
        objc_storeStrong((v63 + 168), v62);
      }
    }
  }

  v18 = *(a1 + 32);
  if (v18 && *(v18 + 88))
  {
    v64 = *(a1 + 40);
    goto LABEL_76;
  }

  v65 = [(NWURLLoaderHTTP *)v18 errorForClientMetadataError];
  v66 = *(a1 + 32);
  if (v66)
  {
    objc_storeStrong((v66 + 88), v65);
  }

  v18 = *(a1 + 32);
LABEL_75:
  v64 = *(a1 + 40);
  if (!v18)
  {
    v67 = 0;
    goto LABEL_77;
  }

LABEL_76:
  v67 = *(v18 + 88);
LABEL_77:
  (*(v64 + 16))(v64, v9, a4, v67);
}

- (void)setPendingError:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

- (void)readResponse:(id)a3
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, a3, 136);

    [(NWURLLoaderHTTP *)self readResponse];
  }
}

- (void)readResponse
{
  if (a1)
  {
    v2 = *(a1 + 136);
    if (v2)
    {
      if (*(a1 + 12) == 1)
      {
        v12 = v2;
        objc_setProperty_nonatomic_copy(a1, v3, 0, 136);
        (*(v12 + 2))(v12, 0, *(a1 + 88));
      }

      else
      {
        if (*(a1 + 17) != 1 || (*(a1 + 18) & 1) != 0)
        {
          v4 = *(a1 + 72);
          v5 = *(a1 + 72);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __31__NWURLLoaderHTTP_readResponse__block_invoke;
          v13[3] = &unk_1E6A3A648;
          v14 = v4;
          v15 = a1;
          v6 = v4;
          nw_connection_receive_internal(v5, 0, 0, 0, v13);

          return;
        }

        v12 = v2;
        objc_setProperty_nonatomic_copy(a1, v7, 0, 136);
        *(a1 + 12) = 1;
        *(a1 + 19) = 1;
        v8 = *(a1 + 144);
        objc_setProperty_nonatomic_copy(a1, v9, 0, 144);
        if (v8)
        {
          v8[2](v8);
        }

        v10 = *(a1 + 104);
        v11 = [v10 response];
        (*(v12 + 2))(v12, v11, 0);
      }
    }
  }
}

void __31__NWURLLoaderHTTP_readResponse__block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v140 = *MEMORY[0x1E69E9840];
  v118 = a2;
  v9 = a3;
  v10 = a5;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (!v11)
  {
    if (v12)
    {
      goto LABEL_97;
    }

    goto LABEL_161;
  }

  if (v12 == *(v11 + 72))
  {
    v13 = *(v11 + 136);
    if (v13)
    {
      newValue = v13;
      v15 = *(a1 + 40);
      if (v15)
      {
        objc_setProperty_nonatomic_copy(v15, v14, 0, 136);
        v16 = *(a1 + 40);
        if (v16)
        {
          *(v16 + 11) = 1;
          v15 = *(a1 + 40);
        }

        else
        {
          v15 = 0;
        }
      }

      [(NWURLLoaderHTTP *)v15 stopResponseStallTimer];
      v17 = *(a1 + 40);
      if (v17 && *(v17 + 152))
      {
        if (HTTPNotificationCenter_onceToken != -1)
        {
          dispatch_once(&HTTPNotificationCenter_onceToken, &__block_literal_global_233);
        }

        v18 = *(a1 + 40);
        if (v18)
        {
          v19 = *(v18 + 152);
        }

        else
        {
          v19 = 0;
        }

        v20 = HTTPNotificationCenter_center;
        [v20 postNotificationName:@"NWURLLoaderHTTPConnectionProgressNotification" object:v19];
      }

      v119 = v10;
      if (!v10 && a4 && (v21 = *(a1 + 40)) != 0 && *(v21 + 8) == 1)
      {
        objc_storeStrong((v21 + 88), 0);
        v10 = 0;
        if (v9)
        {
LABEL_19:
          if (nw_protocol_copy_http_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
          }

          v22 = nw_protocol_copy_http_definition_http_definition;
          v23 = nw_content_context_copy_protocol_metadata(v9, v22);

          v117 = v23;
          v24 = [(NWURLLoaderHTTP *)*(a1 + 40) responseFromMetadata:v23];
          if (gLogDatapath == 1)
          {
            if (__nwlog_url_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
            }

            v77 = gurlLogObj;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
            {
              v78 = *(a1 + 40);
              if (v78 && (v79 = *(v78 + 48)) != 0)
              {
                v80 = v79;
                [v79 logDescription];
              }

              else
              {
                v80 = 0;
                v126[0] = 0;
                v126[1] = 0;
                v127 = 0;
              }

              v98 = *(a1 + 40);
              if (v98 && (v99 = *(v98 + 48)) != 0)
              {
                v100 = v99;
                [v99 logDescription];
                v101 = v125;
              }

              else
              {
                v101 = 0;
                v100 = 0;
                v123 = 0;
                v124 = 0;
                v125 = 0;
              }

              *v128 = 136447746;
              *&v128[4] = "[NWURLLoaderHTTP readResponse]_block_invoke";
              *&v128[12] = 1042;
              *&v128[14] = 16;
              *&v128[18] = 2098;
              *&v128[20] = v126;
              *&v128[28] = 1024;
              *&v128[30] = v101;
              *&v128[34] = 2112;
              *&v128[36] = v24;
              v129 = 1024;
              v130 = a4;
              v131 = 2112;
              v132 = v119;
              _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s Task <%{public,uuid_t}.16P>.<%u> received response: %@, complete: %{BOOL}d, error: %@", v128, 0x3Cu);
            }
          }

          v25 = [v24 statusCode];
          v26 = *(a1 + 40);
          if (v26)
          {
            *(v26 + 13) = v25 == 101;
          }

          v27 = [v24 statusCode];
          v28 = *(a1 + 40);
          if ((v27 - 100) > 0x63)
          {
            if (!v28)
            {
              v32 = 0;
LABEL_33:
              v33 = [v32 clientMetadata];
              v34 = v33;
              if (v33)
              {
                v35 = nw_protocol_copy_http_client_definition_onceToken;
                v36 = v33;
                if (v35 != -1)
                {
                  dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
                }

                v37 = nw_protocol_metadata_matches_definition(v36, nw_protocol_copy_http_client_definition_definition);

                if (v37)
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2020000000;
                  v139 = 0;
                  *v128 = MEMORY[0x1E69E9820];
                  *&v128[8] = 3221225472;
                  *&v128[16] = __nw_http_client_metadata_get_sniffed_media_type_block_invoke;
                  *&v128[24] = &unk_1E6A3A858;
                  *&v128[32] = buf;
                  if (_nw_protocol_metadata_get_handle(v36))
                  {
                    (*&v128[16])(v128);
                  }

                  v38 = *(*&buf[8] + 24);
                  _Block_object_dispose(buf, 8);

                  if (!v38)
                  {
LABEL_42:
                    if (v119)
                    {
                      v85 = [(NWURLLoaderHTTP *)*(a1 + 40) errorForNWError:v119];
                    }

                    else
                    {
                      v39 = *(a1 + 40);
                      if (v24)
                      {
                        v40 = 0;
                        goto LABEL_45;
                      }

                      v85 = [(NWURLLoaderHTTP *)v39 errorForErrorCode:?];
                    }

                    v40 = v85;
                    v39 = *(a1 + 40);
                    if (v40)
                    {
                      if (!v39)
                      {
                        goto LABEL_87;
                      }

                      if (*(v39 + 88))
                      {
LABEL_46:
                        *(v39 + 12) = a4;
                        v41 = *(a1 + 40);
                        if (!v41)
                        {
                          goto LABEL_166;
                        }

                        if (*(v41 + 16) != 1)
                        {
LABEL_78:
                          v39 = *(a1 + 40);
                          if (!v39 || *(v39 + 18) != 1)
                          {
LABEL_87:
                            v70 = [v39 multipartMixedReplaceBoundary];
                            v71 = v70 == 0;

                            v72 = *(a1 + 40);
                            if (!v71)
                            {
                              if (!v72)
                              {
                                goto LABEL_164;
                              }

                              v73 = *(v72 + 96);
                              if (!v73)
                              {
LABEL_92:
                                v76 = *(v72 + 88);
LABEL_93:
                                newValue[2](newValue, v24, v76);
LABEL_94:

LABEL_95:
LABEL_96:

                                v10 = v119;
                                goto LABEL_97;
                              }

                              v74 = v73[3];
                              v73[3] = 0;

                              v75 = v73[5];
                              v73[4] = 0;
                              v73[5] = 0;

                              v72 = *(a1 + 40);
                            }

                            if (v72)
                            {
                              goto LABEL_92;
                            }

LABEL_164:
                            v76 = 0;
                            goto LABEL_93;
                          }

                          v66 = [v24 statusCode];
                          v67 = *(a1 + 40);
                          if (v66 == 304)
                          {
                            if (v67)
                            {
                              *(v67 + 12) = 1;
                              v67 = *(a1 + 40);
                              if (v67)
                              {
                                v67 = *(v67 + 104);
                              }
                            }

                            v68 = v67;
                            v69 = [v68 response];
                            newValue[2](newValue, v69, 0);

                            goto LABEL_94;
                          }

                          if (v67)
                          {
                            *(v67 + 17) = 0;
                            v39 = *(a1 + 40);
                            goto LABEL_87;
                          }

LABEL_166:
                          v39 = 0;
                          goto LABEL_87;
                        }

                        v42 = *(v41 + 88);
                        if (v42)
                        {
LABEL_77:

                          goto LABEL_78;
                        }

                        v43 = *(a1 + 40);
                        if (v43)
                        {
                          if (*(v43 + 18))
                          {
                            goto LABEL_78;
                          }

                          v44 = *(v43 + 96);
                          v45 = *(v43 + 24);
                        }

                        else
                        {
                          v44 = 0;
                          v45 = 0;
                        }

                        v42 = v44;
                        v115 = v45;
                        v116 = v24;
                        if (!v42)
                        {
LABEL_76:

                          goto LABEL_77;
                        }

                        *(v42 + 2) = 0;
                        objc_storeStrong(v42 + 6, v45);
                        objc_storeStrong(v42 + 5, v24);
                        objc_storeStrong(v42 + 3, MEMORY[0x1E69E9668]);
                        v46 = *(v42 + 2);
                        if (v46)
                        {
                          if (v46 != 1)
                          {
                            v46 = 0;
                            goto LABEL_60;
                          }

                          v47 = *(v42 + 1);
                          v48 = [v47 memoryCapacity];
                          [*(v42 + 1) _maxCacheableEntrySizeRatio];
                          v50 = v49;

                          v46 = (v50 * v48);
                        }

                        v51 = *(v42 + 1);
                        v52 = [v51 diskCapacity];
                        [*(v42 + 1) _maxCacheableEntrySizeRatio];
                        v54 = v53;

                        v55 = v54 * v52;
                        if (v46 <= v55)
                        {
                          v46 = v55;
                        }

LABEL_60:
                        *(v42 + 4) = v46;
                        v56 = [*(v42 + 5) statusCode];
                        if (v56 <= 300)
                        {
                          if (v56 != 200 && v56 != 203)
                          {
                            goto LABEL_75;
                          }
                        }

                        else if (((v56 - 301) > 7 || ((1 << (v56 - 45)) & 0x89) == 0) && v56 != 410 && v56 != 404)
                        {
                          goto LABEL_75;
                        }

                        v57 = [*(v42 + 5) valueForHTTPHeaderField:@"Cache-Control"];
                        v58 = v57;
                        if (!v57 || ([v57 rangeOfString:@"no-store" options:1], !v59))
                        {
                          v60 = [*(v42 + 6) valueForHTTPHeaderField:@"Cache-Control"];
                          v61 = v60;
                          if (!v60 || ([v60 rangeOfString:@"no-store" options:1], !v62) && (objc_msgSend(v61, "rangeOfString:options:", @"no-cache", 1), !v63))
                          {

                            if ([v116 expectedContentLength] <= v46)
                            {
                              goto LABEL_76;
                            }

                            goto LABEL_75;
                          }
                        }

LABEL_75:
                        v64 = *(v42 + 3);
                        *(v42 + 3) = 0;

                        v65 = *(v42 + 5);
                        *(v42 + 4) = 0;
                        *(v42 + 5) = 0;

                        goto LABEL_76;
                      }

                      objc_storeStrong((v39 + 88), v40);
                      v39 = *(a1 + 40);
                    }

LABEL_45:
                    if (!v39)
                    {
                      goto LABEL_87;
                    }

                    goto LABEL_46;
                  }

                  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v38];
                  [v24 _setMIMEType:v34];
LABEL_41:

                  goto LABEL_42;
                }

                v86 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                LODWORD(v114) = 12;
                v113 = buf;
                v82 = _os_log_send_and_compose_impl();

                type = OS_LOG_TYPE_ERROR;
                v121 = 0;
                if (__nwlog_fault(v82, &type, &v121))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v83 = __nwlog_obj();
                    v87 = type;
                    if (os_log_type_enabled(v83, type))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                      _os_log_impl(&dword_181A37000, v83, v87, "%{public}s metadata must be http_client", buf, 0xCu);
                    }
                  }

                  else if (v121 == 1)
                  {
                    backtrace_string = __nw_create_backtrace_string();
                    v83 = __nwlog_obj();
                    v96 = type;
                    v97 = os_log_type_enabled(v83, type);
                    if (backtrace_string)
                    {
                      if (v97)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                        *&buf[12] = 2082;
                        *&buf[14] = backtrace_string;
                        _os_log_impl(&dword_181A37000, v83, v96, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(backtrace_string);
                      if (!v82)
                      {
                        goto LABEL_159;
                      }

                      goto LABEL_158;
                    }

                    if (v97)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                      _os_log_impl(&dword_181A37000, v83, v96, "%{public}s metadata must be http_client, no backtrace", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v83 = __nwlog_obj();
                    v103 = type;
                    if (os_log_type_enabled(v83, type))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                      _os_log_impl(&dword_181A37000, v83, v103, "%{public}s metadata must be http_client, backtrace limit exceeded", buf, 0xCu);
                    }
                  }

                  goto LABEL_156;
                }

LABEL_157:
                if (!v82)
                {
LABEL_159:

                  goto LABEL_41;
                }

LABEL_158:
                free(v82);
                goto LABEL_159;
              }

              v81 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
              LODWORD(v114) = 12;
              v113 = buf;
              v82 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v121 = 0;
              if (!__nwlog_fault(v82, &type, &v121))
              {
                goto LABEL_157;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                v83 = __nwlog_obj();
                v84 = type;
                if (os_log_type_enabled(v83, type))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                  _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null metadata", buf, 0xCu);
                }
              }

              else if (v121 == 1)
              {
                v92 = __nw_create_backtrace_string();
                v83 = __nwlog_obj();
                v93 = type;
                v94 = os_log_type_enabled(v83, type);
                if (v92)
                {
                  if (v94)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                    *&buf[12] = 2082;
                    *&buf[14] = v92;
                    _os_log_impl(&dword_181A37000, v83, v93, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v92);
                  goto LABEL_157;
                }

                if (v94)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                  _os_log_impl(&dword_181A37000, v83, v93, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v83 = __nwlog_obj();
                v102 = type;
                if (os_log_type_enabled(v83, type))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_http_client_metadata_get_sniffed_media_type";
                  _os_log_impl(&dword_181A37000, v83, v102, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
                }
              }

LABEL_156:

              goto LABEL_157;
            }
          }

          else
          {
            if (!v28)
            {
              v29 = 0;
              goto LABEL_28;
            }

            if ((*(v28 + 13) & 1) == 0)
            {
              v29 = *(v28 + 48);
LABEL_28:
              [v29 loaderDidReceiveInformationalResponse:v24];
              v31 = *(a1 + 40);
              if (v31)
              {
                objc_setProperty_nonatomic_copy(v31, v30, newValue, 136);
                v31 = *(a1 + 40);
              }

              [(NWURLLoaderHTTP *)v31 readResponse];
              goto LABEL_95;
            }
          }

          v32 = *(v28 + 48);
          goto LABEL_33;
        }
      }

      else if (v9)
      {
        goto LABEL_19;
      }

      v88 = *(a1 + 40);
      if (v88)
      {
        v89 = *(v88 + 88);
        if (v89)
        {
LABEL_171:
          if (gLogDatapath == 1)
          {
            v104 = v89;
            if (__nwlog_url_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
            }

            v105 = gurlLogObj;
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
            {
              v106 = *(a1 + 40);
              if (v106 && (v107 = *(v106 + 48)) != 0)
              {
                v108 = v107;
                [v107 logDescription];
              }

              else
              {
                v108 = 0;
                v136[0] = 0;
                v136[1] = 0;
                v137 = 0;
              }

              v109 = *(a1 + 40);
              if (v109 && (v110 = *(v109 + 48)) != 0)
              {
                v111 = v110;
                [v110 logDescription];
                v112 = v135;
              }

              else
              {
                v112 = 0;
                v111 = 0;
                v133 = 0;
                v134 = 0;
                v135 = 0;
              }

              *v128 = 136447234;
              *&v128[4] = "[NWURLLoaderHTTP readResponse]_block_invoke";
              *&v128[12] = 1042;
              *&v128[14] = 16;
              *&v128[18] = 2098;
              *&v128[20] = v136;
              *&v128[28] = 1024;
              *&v128[30] = v112;
              *&v128[34] = 2112;
              *&v128[36] = v119;
              _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s Task <%{public,uuid_t}.16P>.<%u> received no response with error: %@", v128, 0x2Cu);
            }

            v89 = v104;
          }

          v117 = v89;
          (newValue)[2](newValue, 0, v89);
          goto LABEL_96;
        }

        v90 = *(a1 + 40);
        if (v10)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v90 = 0;
        if (v10)
        {
LABEL_126:
          v91 = [(NWURLLoaderHTTP *)v90 errorForNWError:v10];
LABEL_170:
          v89 = v91;
          goto LABEL_171;
        }
      }

      v91 = [(NWURLLoaderHTTP *)v90 errorForErrorCode:?];
      goto LABEL_170;
    }

LABEL_161:
    _os_crash();
    __break(1u);
  }

LABEL_97:
}

- (NWURLError)errorForErrorCode:(id *)a1
{
  if (a1)
  {
    v4 = [NWURLError alloc];
    v5 = [a1[6] loaderTask];
    v6 = a1;
    v7 = v5;
    if (v4)
    {
      v8 = [(NWURLError *)v4 initWithErrorCode:a2];
      v9 = v8;
      if (v8)
      {
        [(NWURLError *)v8 fillErrorForLoader:v6 andTask:v7];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)responseFromMetadata:(*-[NWURLLoaderHTTP responseFromMetadata:(void *)a2 ](uint64_t)a1
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = nw_http_metadata_copy_response(v3);
    if (!v6)
    {
      v5 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v47 = v6;
    v7 = v6;
    objc_opt_self();
    v48 = v7;
    if (nw_http_response_get_status_code(v7) - 200 > 0x63)
    {
      v22 = 0;
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v56 = __Block_byref_object_copy__75382;
      v57 = __Block_byref_object_dispose__75383;
      v58 = 0;
      *type = MEMORY[0x1E69E9820];
      v50 = 3221225472;
      v51 = __61__NWURLLoaderHTTP_multipartMixedReplaceBoundaryFromResponse___block_invoke;
      v52 = &unk_1E6A3AA78;
      v53 = buf;
      nw_http_fields_access_value_by_name(v7, "Content-Type", type);
      v8 = *(*&buf[8] + 40);
      if (v8)
      {
        v9 = [v8 componentsSeparatedByString:@""];;
        v46 = [v9 objectAtIndexedSubscript:0];
        v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v11 = [v46 stringByTrimmingCharactersInSet:v10];
        v12 = [v11 isEqualToString:@"multipart/x-mixed-replace"];

        if (v12)
        {
          for (i = 1; i < [v9 count]; ++i)
          {
            v14 = [v9 objectAtIndexedSubscript:i];
            v15 = [v14 rangeOfString:@"="];
            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v16 = [v14 substringToIndex:v15];
              v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v18 = [v16 stringByTrimmingCharactersInSet:v17];

              v19 = [v14 substringFromIndex:v15 + 1];
              v20 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v21 = [v19 stringByTrimmingCharactersInSet:v20];

              if ([v18 isEqualToString:@"boundary"])
              {
                v30 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                v31 = [v21 stringByTrimmingCharactersInSet:v30];
                v22 = [v31 mutableCopy];

                if ([v22 length] >= 2 && objc_msgSend(v22, "hasPrefix:", @") && objc_msgSend(v22, "hasSuffix:", @"))
                {
                  [v22 deleteCharactersInRange:{0, 1}];
                  [v22 deleteCharactersInRange:{objc_msgSend(v22, "length") - 1, 1}];
                }

                goto LABEL_16;
              }
            }
          }
        }

        v22 = 0;
LABEL_16:
      }

      else
      {
        v22 = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    v23 = *(a1 + 128);
    *(a1 + 128) = v22;

    version = nw_http_metadata_get_version(v4);
    v25 = *(a1 + 24);
    v5 = nw_http_response_copy_url_response(v48, 0, v25, **(&unk_1E6A3DCA8 + version));

    v26 = [*(a1 + 48) clientMetadata];
    v27 = nw_http_client_metadata_copy_current_transaction_metadata(v26);

    v28 = v27;
    if (v28)
    {
      if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
      }

      if (nw_protocol_metadata_matches_definition(v28, nw_protocol_copy_http_transaction_definition_definition))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_http_transaction_metadata_set_converted_url_response_block_invoke;
        v56 = &__block_descriptor_40_e9_B16__0_v8l;
        v57 = v5;
        if (_nw_protocol_metadata_get_handle(v28))
        {
          (*&buf[16])(buf);
        }

        goto LABEL_25;
      }

      v36 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
      v33 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (__nwlog_fault(v33, type, &v54))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v34 = __nwlog_obj();
          v37 = type[0];
          if (os_log_type_enabled(v34, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
            _os_log_impl(&dword_181A37000, v34, v37, "%{public}s metadata must be http_transaction", buf, 0xCu);
          }
        }

        else if (v54 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v34 = __nwlog_obj();
          v42 = type[0];
          v43 = os_log_type_enabled(v34, type[0]);
          if (backtrace_string)
          {
            if (v43)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v34, v42, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v33)
            {
              goto LABEL_25;
            }

            goto LABEL_69;
          }

          if (v43)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
            _os_log_impl(&dword_181A37000, v34, v42, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v34 = __nwlog_obj();
          v45 = type[0];
          if (os_log_type_enabled(v34, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
            _os_log_impl(&dword_181A37000, v34, v45, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_67;
      }

LABEL_68:
      if (!v33)
      {
LABEL_25:

        v6 = v47;
        goto LABEL_26;
      }

LABEL_69:
      free(v33);
      goto LABEL_25;
    }

    v32 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
    v33 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v33, type, &v54))
    {
      goto LABEL_68;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type[0];
      if (os_log_type_enabled(v34, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null metadata", buf, 0xCu);
      }
    }

    else if (v54 == 1)
    {
      v38 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v39 = type[0];
      v40 = os_log_type_enabled(v34, type[0]);
      if (v38)
      {
        if (v40)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v38);
        goto LABEL_68;
      }

      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
        _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v44 = type[0];
      if (os_log_type_enabled(v34, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_converted_url_response";
        _os_log_impl(&dword_181A37000, v34, v44, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_67:

    goto LABEL_68;
  }

LABEL_27:

  return v5;
}

void __61__NWURLLoaderHTTP_multipartMixedReplaceBoundaryFromResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (void)updateClient:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_storeStrong(&self->_client, a3);
  }
}

void __23__NWURLLoaderHTTP_stop__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v2 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 72);
    }

    else
    {
      v4 = 0;
    }

    v5 = 134217984;
    id = nw_connection_get_id(v4);
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "[C%llu] HTTP loader stopping", &v5, 0xCu);
  }
}

void __35__NWURLLoaderHTTP_cancelConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v2 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 72);
    }

    else
    {
      v4 = 0;
    }

    v5 = 134217984;
    id = nw_connection_get_id(v4);
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "[C%llu] HTTP loader connection cancelled", &v5, 0xCu);
  }
}

- (void)start:(id)a3
{
  v4 = a3;
  if (bumpProcessFDLimit_onceToken[0] == -1)
  {
    if (self)
    {
LABEL_3:
      client = self->_client;
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once(bumpProcessFDLimit_onceToken, &__block_literal_global_231);
    if (self)
    {
      goto LABEL_3;
    }
  }

  client = 0;
LABEL_4:
  v6 = [(NWURLLoaderClient *)client loaderDataTask];

  if (v6)
  {
    if (self)
    {
      v7 = self->_cache;
      v8 = self->_request;
      v9 = self->_configuration;
      v10 = v9;
      if (v9)
      {
        v11 = [(NWURLSessionTask *)v9->_task _preconnect];
      }

      else
      {
        v11 = 0;
      }

      v12 = self->_configuration;
      p_isa = &v12->super.isa;
      if (v12)
      {
        if ([(NSURLRequest *)v12->_request _explicitlySetCachePolicy])
        {
          v14 = [p_isa[4] cachePolicy];
        }

        else
        {
          v14 = [p_isa[2] requestCachePolicy];
        }

        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v8;
      v17 = v16;
      if (v7 && v7->_cache)
      {
        v18 = [(NSURLRequest *)v16 HTTPMethod];
        v19 = [v18 caseInsensitiveCompare:@"GET"];

        v20 = 0;
        if (!v19)
        {
          v21 = v11 ? 1 : v15;
          if (v21 != 1 && v21 != 4)
          {
            v22 = [(NSURLRequest *)v17 valueForHTTPHeaderField:@"Range"];
            v20 = v22 == 0;
          }
        }
      }

      else
      {
        v20 = 0;
      }

      self->_allowCaching = v20;
    }

    else
    {
      p_isa = 0;
      v10 = 0;
      v7 = 0;
      v17 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __25__NWURLLoaderHTTP_start___block_invoke;
    aBlock[3] = &unk_1E6A3A190;
    aBlock[4] = self;
    v23 = _Block_copy(aBlock);
    v24 = v23;
    if (self && self->_allowCaching)
    {
      v25 = self->_cache;
      v26 = self->_client;
      v27 = [(NWURLLoaderClient *)v26 loaderDataTask];

      v28 = self->_client;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __25__NWURLLoaderHTTP_start___block_invoke_2;
      v31[3] = &unk_1E6A3A208;
      v32 = v25;
      v33 = v27;
      v34 = self;
      v35 = v4;
      v36 = v24;
      v29 = v27;
      v30 = v25;
      [(NWURLLoaderClient *)v28 loaderRunDelegateBlock:v31];
    }

    else
    {
      (*(v23 + 2))(v23, 0, v4);
    }
  }

  else
  {
    [(NWURLLoaderHTTP *)&self->super continueLoading:v4];
  }
}

- (void)continueLoading:(nw_protocol_options_t)a1
{
  v316 = *MEMORY[0x1E69E9840];
  v260 = a2;
  if (!a1)
  {
    goto LABEL_230;
  }

  isa = a1[3].isa;
  BYTE1(a1[1].isa) = 1;
  v7 = isa;
  v8 = fixInvalidURLRequest(v7);
  v9 = a1[3].isa;
  a1[3].isa = v8;

  v10 = [(objc_class *)a1[3].isa URL];
  v11 = nw_endpoint_create_with_cfurl(v10);

  if (!v11 || (v12 = v11, hostname = _nw_endpoint_get_hostname(v12), v12, !hostname))
  {
    _os_crash();
    __break(1u);
LABEL_89:
    dispatch_once(&nw_protocol_copy_http_connection_state_definition_onceToken, &__block_literal_global_21_76499);
    goto LABEL_9;
  }

  v14 = a1[5].isa;
  v15 = v14;
  if (v14)
  {
    v16 = [v14[3] _hostOverride];
  }

  else
  {
    v16 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  aBlock[1] = 3221225472;
  aBlock[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke;
  aBlock[3] = &unk_1E6A3A280;
  aBlock[4] = a1;
  v17 = _Block_copy(aBlock);
  v300[0] = MEMORY[0x1E69E9820];
  v300[1] = 3221225472;
  v300[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_4;
  v300[3] = &unk_1E6A3A320;
  v269 = v16;
  v301 = v269;
  v2 = v12;
  v302 = v2;
  v303 = a1;
  v299[0] = MEMORY[0x1E69E9820];
  v299[1] = 3221225472;
  v299[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_10;
  v299[3] = &unk_1E6A3A230;
  v299[4] = a1;
  v297[0] = MEMORY[0x1E69E9820];
  v297[1] = 3221225472;
  v297[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_11;
  v297[3] = &unk_1E6A3A348;
  v297[4] = a1;
  v3 = v17;
  v298 = v3;
  parameters = nw_parameters_create_secure_http_messaging(v300, &__block_literal_global_75412, &__block_literal_global_41, v299, v297);
  if (v269)
  {
    nw_parameters_set_url_endpoint(parameters, v2);
    v18 = v269;

    v2 = v18;
  }

  stack = nw_parameters_copy_default_protocol_stack(parameters);
  if (nw_protocol_copy_http_connection_state_definition_onceToken != -1)
  {
    goto LABEL_89;
  }

LABEL_9:
  protocol = nw_protocol_create_options(nw_protocol_copy_http_connection_state_definition_http_connection_state_definition);
  v19 = [(NWURLSessionTaskConfiguration *)a1[5].isa connectionStateStorage];
  nw_http_connection_state_options_set_connection_state_storage(protocol, v19);

  v20 = a1[5].isa;
  if (v20)
  {
    v21 = [*(v20 + 4) assumesHTTP3Capable];
  }

  else
  {
    v21 = 0;
  }

  nw_http_connection_state_options_set_assumes_http3_capable(protocol, v21);
  nw_protocol_stack_prepend_application_protocol(stack, protocol);
  if (nw_protocol_copy_http_joining_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_joining_definition_onceToken, &__block_literal_global_92_78715);
  }

  options = nw_protocol_create_options(nw_protocol_copy_http_joining_definition_definition);
  nw_protocol_stack_prepend_application_protocol(stack, options);

  if (nw_protocol_copy_http_cookie_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
  }

  v282 = nw_protocol_create_options(nw_protocol_copy_http_cookie_definition_http_cookie_definition);
  v23 = [(NWURLSessionTaskConfiguration *)a1[5].isa HTTPCookieStorage];
  nw_http_cookie_options_set_cookie_storage(v282, v23);

  v24 = a1[5].isa;
  if (!v24)
  {
    v31 = 0;
    v268 = 0;
    goto LABEL_33;
  }

  v268 = [*(v24 + 3) _cookieTransformCallback];
  if (v268)
  {
    v25 = v282;
    v26 = v268;
    if (v25)
    {
      if (nw_protocol_copy_http_cookie_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
      }

      if (nw_protocol_options_matches_definition(v25, nw_protocol_copy_http_cookie_definition_http_cookie_definition))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = v4;
        *&buf[16] = __nw_http_cookie_options_set_transform_callback_block_invoke;
        v311 = &unk_1E6A3A978;
        v312 = v26;
        nw_protocol_options_access_handle(v25, buf);

LABEL_22:
        goto LABEL_23;
      }

      v79 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_cookie_options_set_transform_callback";
      LODWORD(v251) = 12;
      v250 = buf;
      v72 = _os_log_send_and_compose_impl();

      v306[0] = 16;
      LOBYTE(v305) = 0;
      if (!__nwlog_fault(v72, v306, &v305))
      {
        goto LABEL_153;
      }

      if (v306[0] == 17)
      {
        v73 = __nwlog_obj();
        v80 = v306[0];
        if (os_log_type_enabled(v73, v306[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_cookie_options_set_transform_callback";
          _os_log_impl(&dword_181A37000, v73, v80, "%{public}s protocol options are not http_cookie", buf, 0xCu);
        }

LABEL_140:

        goto LABEL_153;
      }

      if (v305 != 1)
      {
        v73 = __nwlog_obj();
        v98 = v306[0];
        if (os_log_type_enabled(v73, v306[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_cookie_options_set_transform_callback";
          _os_log_impl(&dword_181A37000, v73, v98, "%{public}s protocol options are not http_cookie, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_140;
      }

      v276 = a1;
      backtrace_string = __nw_create_backtrace_string();
      v84 = __nwlog_obj();
      v91 = v306[0];
      v92 = os_log_type_enabled(v84, v306[0]);
      if (backtrace_string)
      {
        if (v92)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_cookie_options_set_transform_callback";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v84, v91, "%{public}s protocol options are not http_cookie, dumping backtrace:%{public}s", buf, 0x16u);
        }

        a1 = v276;
        free(backtrace_string);
        if (!v72)
        {
          goto LABEL_22;
        }

        goto LABEL_154;
      }

      if (v92)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_options_set_transform_callback";
        _os_log_impl(&dword_181A37000, v84, v91, "%{public}s protocol options are not http_cookie, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v71 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_cookie_options_set_transform_callback";
      LODWORD(v251) = 12;
      v250 = buf;
      v72 = _os_log_send_and_compose_impl();

      v306[0] = 16;
      LOBYTE(v305) = 0;
      if (!__nwlog_fault(v72, v306, &v305))
      {
        goto LABEL_153;
      }

      if (v306[0] == 17)
      {
        v73 = __nwlog_obj();
        v74 = v306[0];
        if (os_log_type_enabled(v73, v306[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_cookie_options_set_transform_callback";
          _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_140;
      }

      if (v305 != 1)
      {
        v73 = __nwlog_obj();
        v96 = v306[0];
        if (os_log_type_enabled(v73, v306[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_cookie_options_set_transform_callback";
          _os_log_impl(&dword_181A37000, v73, v96, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_140;
      }

      v276 = a1;
      v83 = __nw_create_backtrace_string();
      v84 = __nwlog_obj();
      v85 = v306[0];
      v86 = os_log_type_enabled(v84, v306[0]);
      if (v83)
      {
        if (v86)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_cookie_options_set_transform_callback";
          *&buf[12] = 2082;
          *&buf[14] = v83;
          _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        a1 = v276;
        free(v83);
LABEL_153:
        if (!v72)
        {
          goto LABEL_22;
        }

LABEL_154:
        free(v72);
        goto LABEL_22;
      }

      if (v86)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_options_set_transform_callback";
        _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    a1 = v276;
    goto LABEL_153;
  }

LABEL_23:
  v27 = a1[5].isa;
  if (!v27)
  {
    v31 = 0;
    goto LABEL_33;
  }

  v28 = [*(v27 + 3) _storagePartitionIdentifier];
  v29 = v28 == 0;

  if (v29)
  {
    goto LABEL_34;
  }

  v30 = a1[5].isa;
  if (v30)
  {
    v31 = [*(v30 + 3) _storagePartitionIdentifier];
  }

  else
  {
    v31 = 0;
  }

  v32 = [v31 cStringUsingEncoding:{4, v250, v251}];
  v33 = v282;
  if (!v33)
  {
    v75 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
    LODWORD(v251) = 12;
    v250 = buf;
    v76 = _os_log_send_and_compose_impl();

    v306[0] = 16;
    LOBYTE(v305) = 0;
    if (!__nwlog_fault(v76, v306, &v305))
    {
      goto LABEL_158;
    }

    if (v306[0] == 17)
    {
      v77 = __nwlog_obj();
      v78 = v306[0];
      if (os_log_type_enabled(v77, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
        _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v305 == 1)
    {
      v87 = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v88 = v306[0];
      v89 = os_log_type_enabled(v77, v306[0]);
      if (v87)
      {
        if (v89)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
          *&buf[12] = 2082;
          *&buf[14] = v87;
          _os_log_impl(&dword_181A37000, v77, v88, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v87);
LABEL_158:
        if (!v76)
        {
          goto LABEL_32;
        }

LABEL_159:
        free(v76);
        goto LABEL_32;
      }

      if (v89)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
        _os_log_impl(&dword_181A37000, v77, v88, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v77 = __nwlog_obj();
      v97 = v306[0];
      if (os_log_type_enabled(v77, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
        _os_log_impl(&dword_181A37000, v77, v97, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_157:

    goto LABEL_158;
  }

  if (nw_protocol_copy_http_cookie_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
  }

  if ((nw_protocol_options_matches_definition(v33, nw_protocol_copy_http_cookie_definition_http_cookie_definition) & 1) == 0)
  {
    v81 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
    LODWORD(v251) = 12;
    v250 = buf;
    v76 = _os_log_send_and_compose_impl();

    v306[0] = 16;
    LOBYTE(v305) = 0;
    if (!__nwlog_fault(v76, v306, &v305))
    {
      goto LABEL_158;
    }

    if (v306[0] == 17)
    {
      v77 = __nwlog_obj();
      v82 = v306[0];
      if (os_log_type_enabled(v77, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
        _os_log_impl(&dword_181A37000, v77, v82, "%{public}s protocol options are not http_cookie", buf, 0xCu);
      }
    }

    else if (v305 == 1)
    {
      v93 = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v94 = v306[0];
      v95 = os_log_type_enabled(v77, v306[0]);
      if (v93)
      {
        if (v95)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
          *&buf[12] = 2082;
          *&buf[14] = v93;
          _os_log_impl(&dword_181A37000, v77, v94, "%{public}s protocol options are not http_cookie, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v93);
        if (!v76)
        {
          goto LABEL_32;
        }

        goto LABEL_159;
      }

      if (v95)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
        _os_log_impl(&dword_181A37000, v77, v94, "%{public}s protocol options are not http_cookie, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v77 = __nwlog_obj();
      v99 = v306[0];
      if (os_log_type_enabled(v77, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_cookie_options_set_cookie_partition_identifier";
        _os_log_impl(&dword_181A37000, v77, v99, "%{public}s protocol options are not http_cookie, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_157;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = v4;
  *&buf[16] = __nw_http_cookie_options_set_cookie_partition_identifier_block_invoke;
  v311 = &__block_descriptor_40_e9_B16__0_v8l;
  v312 = v32;
  nw_protocol_options_access_handle(v33, buf);
LABEL_32:

LABEL_33:
LABEL_34:
  v34 = a1[5].isa;
  if (v34)
  {
    if ([*(v34 + 4) _allowOnlyPartitionedCookies])
    {
      nw_http_cookie_options_set_allow_only_partitioned_cookies(v282, 1);
    }

    v35 = a1[5].isa;
    if (v35)
    {
      v36 = [*(v35 + 3) _siteForCookies];
      v37 = v36 == 0;

      if (!v37)
      {
        v38 = a1[5].isa;
        if (v38)
        {
          v39 = [*(v38 + 3) _siteForCookies];
        }

        else
        {
          v39 = 0;
        }

        nw_http_cookie_options_set_site_for_cookies(v282, v39);

        v40 = a1[5].isa;
        if (v40)
        {
          v41 = [*(v40 + 3) _isTopLevelNavigation];
        }

        else
        {
          v41 = 0;
        }

        nw_http_cookie_options_set_is_top_level_navigation(v282, v41);
      }
    }
  }

  v42 = a1[5].isa;
  if (!v42 || (([*(v42 + 4) _explicitlySetShouldHandleCookies] & 1) == 0 ? (v43 = objc_msgSend(*(v42 + 2), "HTTPShouldSetCookies")) : (v43 = objc_msgSend(*(v42 + 4), "HTTPShouldHandleCookies")), (v43 & 1) == 0))
  {
    nw_http_cookie_options_set_should_not_send_cookies(v282);
  }

  v44 = a1[5].isa;
  if (!v44 || [*(v44 + 4) _explicitlySetShouldHandleCookies] && (objc_msgSend(*(v44 + 4), "HTTPShouldHandleCookies") & 1) == 0)
  {
    nw_http_cookie_options_set_should_not_save_cookies(v282);
  }

  nw_protocol_stack_prepend_application_protocol(stack, v282);
  if ([(objc_class *)a1[6].isa supportsResumableUpload])
  {
    if (nw_protocol_copy_http_resumable_upload_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_resumable_upload_definition_onceToken, &__block_literal_global_44_76913);
    }

    v45 = nw_protocol_create_options(nw_protocol_copy_http_resumable_upload_definition_http_resumable_upload_definition);
    v46 = [(objc_class *)a1[6].isa uploadResumeURL];
    v47 = v46;
    if (v46)
    {
      v48 = _nw_endpoint_create_with_cfurl(v46);
      nw_http_resumable_upload_options_set_resume_endpoint(v45, v48);
    }

    v49 = a1[4].isa;
    if ((v49 & 0x8000000000000000) == 0)
    {
      nw_http_resumable_upload_options_set_original_content_length(v45, v49);
    }

    nw_protocol_stack_prepend_application_protocol(stack, v45);
  }

  if (nw_protocol_copy_http_retry_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_retry_definition_onceToken, &__block_literal_global_46_76999);
  }

  v50 = nw_protocol_create_options(nw_protocol_copy_http_retry_definition_http_retry_definition);
  nw_http_retry_options_set_limit(v50, 3);
  nw_protocol_stack_prepend_application_protocol(stack, v50);

  if (nw_protocol_copy_http_authentication_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
  }

  v281 = nw_protocol_create_options(nw_protocol_copy_http_authentication_definition_http_authentication_definition);
  v296[0] = MEMORY[0x1E69E9820];
  v296[1] = v4;
  v296[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_12;
  v296[3] = &unk_1E6A3A370;
  v296[4] = a1;
  nw_http_authentication_options_set_challenge_handler(v281, v296, a1[7].isa);
  v259 = [(NWURLSessionTaskConfiguration *)a1[5].isa URLCredentialStorage];
  nw_http_authentication_options_set_credential_storage(v281, v259);
  if (a1[5].isa)
  {
    v51 = *(a1[5].isa + 3);
    if (v51)
    {
      v52 = *(v51 + 416);
      v53 = v52;
      if (v52)
      {
        v54 = v52[8];
        if (!v54)
        {
          v55 = _nw_array_create();
          v56 = v53[8];
          v53[8] = v55;

          v54 = v53[8];
        }

        v267 = v54;
      }

      else
      {
        v267 = 0;
      }
    }

    else
    {
      v53 = 0;
      v267 = 0;
    }

    if (v267)
    {
      nw_http_authentication_options_set_credential_cache(v281, v267);
    }

    v57 = a1[5].isa;
    if (v57)
    {
      v58 = *(v57 + 3);
      if (v58)
      {
        v59 = *(v58 + 32);
        if (v59)
        {
          v60 = v59;
          if (v60)
          {
LABEL_78:
            v255 = v60;
            nw_http_authentication_options_set_h1_fallback_cache(v281, v60);
            goto LABEL_81;
          }
        }

        else
        {
          v61 = _nw_array_create();
          v63 = *(v58 + 32);
          v62 = (v58 + 32);
          *v62 = v61;

          v60 = *v62;
          if (v60)
          {
            goto LABEL_78;
          }
        }
      }
    }

    v255 = 0;
LABEL_81:
    v64 = a1[5].isa;
    if (!v64)
    {
      goto LABEL_165;
    }

    goto LABEL_82;
  }

  v255 = 0;
  v267 = 0;
  v64 = a1[5].isa;
  if (!v64)
  {
    goto LABEL_165;
  }

LABEL_82:
  v65 = *(v64 + 3);
  if (v65)
  {
    v66 = *(v65 + 40);
    if (v66)
    {
      v67 = v66;
      if (!v67)
      {
        goto LABEL_165;
      }

LABEL_87:
      v254 = v67;
      nw_http_authentication_options_set_appsso_h1_fallback_headers(v281, v67);
      goto LABEL_166;
    }

    v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v70 = *(v65 + 40);
    v69 = (v65 + 40);
    *v69 = v68;

    v67 = *v69;
    if (v67)
    {
      goto LABEL_87;
    }
  }

LABEL_165:
  v254 = 0;
LABEL_166:
  nw_protocol_stack_prepend_application_protocol(stack, v281);
  if (nw_protocol_copy_http_encoding_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_encoding_definition_onceToken, &__block_literal_global_40_76731);
  }

  v100 = nw_protocol_create_options(nw_protocol_copy_http_encoding_definition_http_encoding_definition);
  nw_protocol_stack_prepend_application_protocol(stack, v100);

  if (nw_protocol_copy_http_security_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  v101 = nw_protocol_create_options(nw_protocol_copy_http_security_definition_http_security_definition);
  v102 = a1[5].isa;
  if (v102 && ([*(v102 + 2) _hstsStorage], (v103 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v257 = v103;
    v104 = objc_alloc_init(NWConcrete_nw_hsts_storage);
    HSTSStorage = v104->HSTSStorage;
    v104->HSTSStorage = v257;

    nw_http_security_options_set_hsts_storage(v101, v104);
  }

  else
  {
    v257 = 0;
  }

  v106 = [(NWURLSessionTaskConfiguration *)a1[5].isa connectionStateStorage];
  v107 = v101;
  v108 = v106;
  if (!v107)
  {
    v199 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_security_options_set_connection_state_storage";
    LODWORD(v251) = 12;
    v250 = buf;
    v278 = _os_log_send_and_compose_impl();

    v306[0] = 16;
    LOBYTE(v305) = 0;
    v200 = v278;
    if (!__nwlog_fault(v278, v306, &v305))
    {
      goto LABEL_402;
    }

    if (v306[0] == 17)
    {
      v201 = __nwlog_obj();
      v202 = v306[0];
      if (os_log_type_enabled(v201, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_connection_state_storage";
        _os_log_impl(&dword_181A37000, v201, v202, "%{public}s called with null options", buf, 0xCu);
      }

      goto LABEL_400;
    }

    if (v305 != 1)
    {
      v201 = __nwlog_obj();
      v242 = v306[0];
      if (os_log_type_enabled(v201, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_connection_state_storage";
        _os_log_impl(&dword_181A37000, v201, v242, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_400;
    }

    v223 = __nw_create_backtrace_string();
    v201 = __nwlog_obj();
    v271 = v306[0];
    v224 = os_log_type_enabled(v201, v306[0]);
    if (!v223)
    {
      if (v224)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_connection_state_storage";
        _os_log_impl(&dword_181A37000, v201, v271, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }

      goto LABEL_400;
    }

    if (v224)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_security_options_set_connection_state_storage";
      *&buf[12] = 2082;
      *&buf[14] = v223;
      _os_log_impl(&dword_181A37000, v201, v271, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_344;
  }

  if (nw_protocol_copy_http_security_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  if (nw_protocol_options_matches_definition(v107, nw_protocol_copy_http_security_definition_http_security_definition))
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = v4;
    *&buf[16] = __nw_http_security_options_set_connection_state_storage_block_invoke;
    v311 = &unk_1E6A3A950;
    v312 = v108;
    nw_protocol_options_access_handle(v107, buf);

    goto LABEL_179;
  }

  v215 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_security_options_set_connection_state_storage";
  LODWORD(v251) = 12;
  v250 = buf;
  v278 = _os_log_send_and_compose_impl();

  v306[0] = 16;
  LOBYTE(v305) = 0;
  v200 = v278;
  if (__nwlog_fault(v278, v306, &v305))
  {
    if (v306[0] == 17)
    {
      v201 = __nwlog_obj();
      v216 = v306[0];
      if (os_log_type_enabled(v201, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_connection_state_storage";
        _os_log_impl(&dword_181A37000, v201, v216, "%{public}s protocol options are not http security", buf, 0xCu);
      }

LABEL_400:

      goto LABEL_401;
    }

    if (v305 != 1)
    {
      v201 = __nwlog_obj();
      v246 = v306[0];
      if (os_log_type_enabled(v201, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_connection_state_storage";
        _os_log_impl(&dword_181A37000, v201, v246, "%{public}s protocol options are not http security, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_400;
    }

    v223 = __nw_create_backtrace_string();
    v201 = __nwlog_obj();
    v272 = v306[0];
    v234 = os_log_type_enabled(v201, v306[0]);
    if (!v223)
    {
      if (v234)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_connection_state_storage";
        _os_log_impl(&dword_181A37000, v201, v272, "%{public}s protocol options are not http security, no backtrace", buf, 0xCu);
      }

      goto LABEL_400;
    }

    if (v234)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_security_options_set_connection_state_storage";
      *&buf[12] = 2082;
      *&buf[14] = v223;
      _os_log_impl(&dword_181A37000, v201, v272, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_344:

    free(v223);
LABEL_401:
    v200 = v278;
  }

LABEL_402:
  if (v200)
  {
    free(v200);
  }

LABEL_179:

  v295[0] = MEMORY[0x1E69E9820];
  v295[1] = v4;
  v295[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_13;
  v295[3] = &unk_1E6A3A398;
  v295[4] = a1;
  nw_http_security_options_set_handler(v107, v295, a1[7].isa);
  v109 = a1[5].isa;
  if (v109)
  {
    v110 = [*(v109 + 4) _ignoreHSTS];
  }

  else
  {
    v110 = 0;
  }

  nw_http_security_options_set_skip_hsts_lookup(v107, v110);
  v111 = a1[5].isa;
  if (v111)
  {
    v112 = [*(v111 + 2) _allowsHSTSWithUntrustedRootCertificate];
  }

  else
  {
    v112 = 0;
  }

  v277 = v107;
  if (!v107)
  {
    v203 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
    LODWORD(v251) = 12;
    v250 = buf;
    v204 = _os_log_send_and_compose_impl();

    v306[0] = 16;
    LOBYTE(v305) = 0;
    if (!__nwlog_fault(v204, v306, &v305))
    {
      goto LABEL_407;
    }

    if (v306[0] == 17)
    {
      v205 = __nwlog_obj();
      v206 = v306[0];
      if (os_log_type_enabled(v205, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
        _os_log_impl(&dword_181A37000, v205, v206, "%{public}s called with null options", buf, 0xCu);
      }

      goto LABEL_406;
    }

    if (v305 != 1)
    {
      v205 = __nwlog_obj();
      v243 = v306[0];
      if (os_log_type_enabled(v205, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
        _os_log_impl(&dword_181A37000, v205, v243, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_406;
    }

    v225 = __nw_create_backtrace_string();
    v205 = __nwlog_obj();
    v226 = v306[0];
    v227 = os_log_type_enabled(v205, v306[0]);
    if (!v225)
    {
      if (v227)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
        _os_log_impl(&dword_181A37000, v205, v226, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }

      goto LABEL_406;
    }

    if (v227)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
      *&buf[12] = 2082;
      *&buf[14] = v225;
      _os_log_impl(&dword_181A37000, v205, v226, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v225);
LABEL_407:
    if (!v204)
    {
      goto LABEL_188;
    }

    goto LABEL_408;
  }

  if (nw_protocol_copy_http_security_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  if (nw_protocol_options_matches_definition(v277, nw_protocol_copy_http_security_definition_http_security_definition))
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = v4;
    *&buf[16] = __nw_http_security_options_set_save_hsts_with_untrusted_root_cert_block_invoke;
    v311 = &__block_descriptor_33_e9_B16__0_v8l;
    LOBYTE(v312) = v112;
    nw_protocol_options_access_handle(v277, buf);
    goto LABEL_188;
  }

  v217 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
  LODWORD(v251) = 12;
  v250 = buf;
  v204 = _os_log_send_and_compose_impl();

  v306[0] = 16;
  LOBYTE(v305) = 0;
  if (!__nwlog_fault(v204, v306, &v305))
  {
    goto LABEL_407;
  }

  if (v306[0] == 17)
  {
    v205 = __nwlog_obj();
    v218 = v306[0];
    if (os_log_type_enabled(v205, v306[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
      _os_log_impl(&dword_181A37000, v205, v218, "%{public}s protocol options are not http security", buf, 0xCu);
    }

LABEL_406:

    goto LABEL_407;
  }

  if (v305 != 1)
  {
    v205 = __nwlog_obj();
    v247 = v306[0];
    if (os_log_type_enabled(v205, v306[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
      _os_log_impl(&dword_181A37000, v205, v247, "%{public}s protocol options are not http security, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_406;
  }

  v235 = __nw_create_backtrace_string();
  v205 = __nwlog_obj();
  v236 = v306[0];
  v237 = os_log_type_enabled(v205, v306[0]);
  if (!v235)
  {
    if (v237)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
      _os_log_impl(&dword_181A37000, v205, v236, "%{public}s protocol options are not http security, no backtrace", buf, 0xCu);
    }

    goto LABEL_406;
  }

  if (v237)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_security_options_set_save_hsts_with_untrusted_root_cert";
    *&buf[12] = 2082;
    *&buf[14] = v235;
    _os_log_impl(&dword_181A37000, v205, v236, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v235);
  if (v204)
  {
LABEL_408:
    free(v204);
  }

LABEL_188:

  nw_protocol_stack_prepend_application_protocol(stack, v277);
  if (nw_protocol_copy_http_redirect_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
  }

  v270 = nw_protocol_create_options(nw_protocol_copy_http_redirect_definition_http_redirect_definition);
  nw_http_redirect_options_set_limit(v270, 20);
  v294[0] = MEMORY[0x1E69E9820];
  v294[1] = v4;
  v294[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_15;
  v294[3] = &unk_1E6A3A3E8;
  v294[4] = a1;
  nw_http_redirect_options_set_handler(v270, v294, a1[7].isa);
  nw_protocol_stack_prepend_application_protocol(stack, v270);
  v266 = [(objc_class *)a1[3].isa _propertyForKey:*MEMORY[0x1E695AD60]];
  if ((!v266 || [MEMORY[0x1E695E118] isEqual:v266]) && (-[objc_class isWebSocket](a1[6].isa, "isWebSocket", v250, v251) & 1) == 0)
  {
    if (nw_protocol_copy_http_sniffing_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_sniffing_definition_onceToken, &__block_literal_global_50_77483);
    }

    v113 = nw_protocol_create_options(nw_protocol_copy_http_sniffing_definition_http_sniffing_definition);
    nw_protocol_stack_prepend_application_protocol(stack, v113);
  }

  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v114 = nw_protocol_create_options(nw_protocol_copy_http_client_definition_definition);
  v293[0] = MEMORY[0x1E69E9820];
  v293[1] = v4;
  v293[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_18;
  v293[3] = &unk_1E6A3A410;
  v293[4] = a1;
  v115 = v114;
  v116 = v293;
  if (!v115)
  {
    v207 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_options_set_resend_handler";
    v275 = _os_log_send_and_compose_impl();

    v306[0] = 16;
    LOBYTE(v305) = 0;
    v208 = v275;
    if (!__nwlog_fault(v275, v306, &v305))
    {
      goto LABEL_413;
    }

    if (v306[0] == 17)
    {
      v209 = __nwlog_obj();
      v210 = v306[0];
      if (os_log_type_enabled(v209, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_options_set_resend_handler";
        _os_log_impl(&dword_181A37000, v209, v210, "%{public}s called with null options", buf, 0xCu);
      }

      goto LABEL_382;
    }

    if (v305 != 1)
    {
      v209 = __nwlog_obj();
      v244 = v306[0];
      if (os_log_type_enabled(v209, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_options_set_resend_handler";
        _os_log_impl(&dword_181A37000, v209, v244, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_382;
    }

    v228 = __nw_create_backtrace_string();
    v229 = __nwlog_obj();
    typea = v306[0];
    v230 = os_log_type_enabled(v229, v306[0]);
    if (v228)
    {
      if (v230)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_options_set_resend_handler";
        *&buf[12] = 2082;
        *&buf[14] = v228;
        _os_log_impl(&dword_181A37000, v229, typea, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_355;
    }

    if (v230)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_client_options_set_resend_handler";
      _os_log_impl(&dword_181A37000, v229, typea, "%{public}s called with null options, no backtrace", buf, 0xCu);
    }

LABEL_411:

    goto LABEL_412;
  }

  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  if (nw_protocol_options_matches_definition(v115, nw_protocol_copy_http_client_definition_definition))
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = v4;
    *&buf[16] = __nw_http_client_options_set_resend_handler_block_invoke;
    v311 = &unk_1E6A3A978;
    v312 = v116;
    nw_protocol_options_access_handle(v115, buf);

    goto LABEL_203;
  }

  v219 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_client_options_set_resend_handler";
  v275 = _os_log_send_and_compose_impl();

  v306[0] = 16;
  LOBYTE(v305) = 0;
  v208 = v275;
  if (__nwlog_fault(v275, v306, &v305))
  {
    if (v306[0] == 17)
    {
      v209 = __nwlog_obj();
      v220 = v306[0];
      if (os_log_type_enabled(v209, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_options_set_resend_handler";
        _os_log_impl(&dword_181A37000, v209, v220, "%{public}s protocol options are not http_client", buf, 0xCu);
      }

LABEL_382:

      goto LABEL_412;
    }

    if (v305 != 1)
    {
      v209 = __nwlog_obj();
      v248 = v306[0];
      if (os_log_type_enabled(v209, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_options_set_resend_handler";
        _os_log_impl(&dword_181A37000, v209, v248, "%{public}s protocol options are not http_client, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_382;
    }

    v228 = __nw_create_backtrace_string();
    v229 = __nwlog_obj();
    typeb = v306[0];
    v238 = os_log_type_enabled(v229, v306[0]);
    if (v228)
    {
      if (v238)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_options_set_resend_handler";
        *&buf[12] = 2082;
        *&buf[14] = v228;
        _os_log_impl(&dword_181A37000, v229, typeb, "%{public}s protocol options are not http_client, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_355:

      free(v228);
LABEL_412:
      v208 = v275;
      goto LABEL_413;
    }

    if (v238)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_client_options_set_resend_handler";
      _os_log_impl(&dword_181A37000, v229, typeb, "%{public}s protocol options are not http_client, no backtrace", buf, 0xCu);
    }

    goto LABEL_411;
  }

LABEL_413:
  if (v208)
  {
    free(v208);
  }

LABEL_203:

  v274 = v115;
  v117 = v3;
  if (!v115)
  {
    v211 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
    v212 = _os_log_send_and_compose_impl();

    v306[0] = 16;
    LOBYTE(v305) = 0;
    if (!__nwlog_fault(v212, v306, &v305))
    {
      goto LABEL_418;
    }

    if (v306[0] == 17)
    {
      v213 = __nwlog_obj();
      v214 = v306[0];
      if (os_log_type_enabled(v213, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
        _os_log_impl(&dword_181A37000, v213, v214, "%{public}s called with null options", buf, 0xCu);
      }

      goto LABEL_417;
    }

    if (v305 != 1)
    {
      v213 = __nwlog_obj();
      v245 = v306[0];
      if (os_log_type_enabled(v213, v306[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
        _os_log_impl(&dword_181A37000, v213, v245, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_417;
    }

    v231 = __nw_create_backtrace_string();
    v213 = __nwlog_obj();
    v232 = v306[0];
    v233 = os_log_type_enabled(v213, v306[0]);
    if (!v231)
    {
      if (v233)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
        _os_log_impl(&dword_181A37000, v213, v232, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }

      goto LABEL_417;
    }

    if (v233)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
      *&buf[12] = 2082;
      *&buf[14] = v231;
      _os_log_impl(&dword_181A37000, v213, v232, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v231);
LABEL_418:
    if (!v212)
    {
      goto LABEL_208;
    }

    goto LABEL_419;
  }

  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  if (nw_protocol_options_matches_definition(v274, nw_protocol_copy_http_client_definition_definition))
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = v4;
    *&buf[16] = __nw_http_client_options_set_retry_with_h1_handler_block_invoke;
    v311 = &unk_1E6A3A978;
    v312 = v117;
    nw_protocol_options_access_handle(v274, buf);

    goto LABEL_208;
  }

  v221 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
  v212 = _os_log_send_and_compose_impl();

  v306[0] = 16;
  LOBYTE(v305) = 0;
  if (!__nwlog_fault(v212, v306, &v305))
  {
    goto LABEL_418;
  }

  if (v306[0] == 17)
  {
    v213 = __nwlog_obj();
    v222 = v306[0];
    if (os_log_type_enabled(v213, v306[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
      _os_log_impl(&dword_181A37000, v213, v222, "%{public}s protocol options are not http_client", buf, 0xCu);
    }

LABEL_417:

    goto LABEL_418;
  }

  if (v305 != 1)
  {
    v213 = __nwlog_obj();
    v249 = v306[0];
    if (os_log_type_enabled(v213, v306[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
      _os_log_impl(&dword_181A37000, v213, v249, "%{public}s protocol options are not http_client, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_417;
  }

  v239 = __nw_create_backtrace_string();
  v213 = __nwlog_obj();
  v240 = v306[0];
  v241 = os_log_type_enabled(v213, v306[0]);
  if (!v239)
  {
    if (v241)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
      _os_log_impl(&dword_181A37000, v213, v240, "%{public}s protocol options are not http_client, no backtrace", buf, 0xCu);
    }

    goto LABEL_417;
  }

  if (v241)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_client_options_set_retry_with_h1_handler";
    *&buf[12] = 2082;
    *&buf[14] = v239;
    _os_log_impl(&dword_181A37000, v213, v240, "%{public}s protocol options are not http_client, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v239);
  if (v212)
  {
LABEL_419:
    free(v212);
  }

LABEL_208:

  nw_protocol_stack_prepend_application_protocol(stack, v274);
  if (nw_proxy_copy_http_connect_definition::onceToken != -1)
  {
    dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
  }

  v118 = nw_proxy_copy_http_connect_definition::proxy_definition;
  v119 = nw_proxy_create_options(v118);

  v292[0] = MEMORY[0x1E69E9820];
  v292[1] = v4;
  v292[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_49;
  v292[3] = &unk_1E6A3A370;
  v292[4] = a1;
  nw_proxy_options_set_authentication_challenge_handler(v119, v292);
  v265 = [(objc_class *)a1[3].isa valueForHTTPHeaderField:@"Proxy-Authorization"];
  if (v265)
  {
    nw_proxy_options_set_http_proxy_authorization_header(v119, [v265 cStringUsingEncoding:5]);
  }

  nw_parameters_add_proxy_options(parameters, v119);
  [(NWURLSessionTaskConfiguration *)a1[5].isa configureParameters:?];
  BYTE5(a1[2].isa) = nw_parameters_has_custom_proxy_configs(parameters);
  [(NWURLBackgroundScheduler *)a1[23].isa complete];
  v252 = v117;
  v121 = a1[5].isa;
  v122 = v2;
  v124 = a1[6].isa;
  v123 = a1[7].isa;
  v291[0] = MEMORY[0x1E69E9820];
  v291[1] = v4;
  v291[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_2_56;
  v291[3] = &unk_1E6A3D868;
  v291[4] = a1;
  v284[0] = MEMORY[0x1E69E9820];
  v284[1] = v4;
  v285 = __35__NWURLLoaderHTTP_continueLoading___block_invoke_58;
  v286 = &unk_1E6A3A460;
  v287 = a1;
  v290 = v260;
  v125 = v122;
  v288 = v125;
  v126 = parameters;
  v289 = v126;
  v127 = v123;
  v128 = v124;
  v129 = v121;
  parametersa = v128;
  v261 = v125;
  type = v126;
  v130 = v127;
  v256 = v291;
  v258 = v284;
  objc_opt_self();
  if (v129)
  {
    if (([v129[2] _duetPreauthorized] & 1) == 0)
    {
      if ([v129[3] backgroundSchedulingPriority])
      {
        gotLoadHelper_x8__OBJC_CLASS___BGSystemTaskScheduler(v131);
        if (objc_opt_class())
        {
          v253 = objc_alloc_init(NWURLBackgroundScheduler);
          v132 = MEMORY[0x1E696AEC0];
          v133 = getpid();
          v134 = [v132 stringWithFormat:@"com.apple.URLSession-%d-%u-%@", v133, ++schedulerWithConfiguration_description_endpoint_parameters_queue_stopHandler_completionHandler__serialNumber, parametersa];
          v135 = v253;
          if (v253)
          {
            objc_storeStrong(&v253->_identifier, v134);
            v135 = v253;
          }

          v136 = v135 == 0;

          gotLoadHelper_x8__OBJC_CLASS___BGNonRepeatingSystemTaskRequest(v137);
          v139 = objc_alloc(*(v138 + 1152));
          if (v136)
          {
            identifier = 0;
          }

          else
          {
            identifier = v253->_identifier;
          }

          v141 = [v139 initWithIdentifier:identifier];
          if (([v129[2] _duetPreauthorized] & 1) == 0)
          {
            v142 = [v129[3] backgroundSchedulingPriority];
            if (v142 > 1)
            {
              if (v142 == 2)
              {
                [v141 setPriority:2];
                v143 = v129;
                objc_opt_self();
                [v129[3] _timeoutIntervalForResource];
                if (v149 == 0.0)
                {
                  [v129[2] timeoutIntervalForResource];
                }

                else
                {
                  [v129[3] _timeoutIntervalForResource];
                }

                v151 = v150;
                [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
                v153 = v156;
                v157 = v129[3];
                if (v157)
                {
                  v155 = v157[58];
                }

                else
                {
                  v155 = 0.0;
                }

LABEL_243:

                v148 = v151 * 0.9 - (v153 - v155);
                if (v148 < 0.0)
                {
                  v148 = 0.0;
                }

                goto LABEL_245;
              }

              if (v142 == 3)
              {
                [v141 setPriority:1];
                v143 = v129;
                objc_opt_self();
                [v129[3] _timeoutIntervalForResource];
                if (v144 == 0.0)
                {
                  [v129[2] timeoutIntervalForResource];
                }

                else
                {
                  [v129[3] _timeoutIntervalForResource];
                }

                v151 = v145;
                [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
                v153 = v152;
                v154 = v129[3];
                if (v154)
                {
                  v155 = v154[58];
                }

                else
                {
                  v155 = 0.0;
                }

                goto LABEL_243;
              }

LABEL_246:
              v158 = v129 + 3;
              [v129[3] backgroundSchedulingDelay];
              [v141 setScheduleAfter:?];
              [v141 setRequiresNetworkConnectivity:1];
              [v141 setPreventsDeviceSleep:1];
              [v141 setRequiresExternalPower:{objc_msgSend(v129[2], "_requiresPowerPluggedIn")}];
              v159 = [v129[4] _explicitlySetAllowsExpensiveNetworkAccess];
              v160 = 2;
              if (v159)
              {
                v160 = 4;
              }

              [v141 setRequiresInexpensiveNetworkConnectivity:{objc_msgSend(v129[v160], "allowsExpensiveNetworkAccess") ^ 1}];
              v161 = [v129[4] _explicitlySetAllowsConstrainedNetworkAccess];
              v162 = 2;
              if (v161)
              {
                v162 = 4;
              }

              [v141 setRequiresUnconstrainedNetworkConnectivity:{objc_msgSend(v129[v162], "allowsConstrainedNetworkAccess") ^ 1}];
              v163 = [*v158 countOfBytesClientExpectsToSend];
              v164 = *v158;
              if (v163)
              {
                v165 = [v164 countOfBytesClientExpectsToSend];
              }

              else if ([v164 isUpload])
              {
                v165 = 5242880;
              }

              else
              {
                v165 = 10240;
              }

              [v141 setNetworkUploadSize:v165];
              v166 = [v129[3] countOfBytesClientExpectsToReceive];
              v167 = v129[3];
              if (v166)
              {
                v168 = [v167 countOfBytesClientExpectsToReceive];
              }

              else if ([v167 isUpload])
              {
                v168 = 10240;
              }

              else
              {
                v168 = 5242880;
              }

              [v141 setNetworkDownloadSize:v168];
              v169 = MEMORY[0x1E695DEC8];
              v170 = [(NWURLSessionTaskConfiguration *)v129 sourceApplicationBundleIdentifier];
              v171 = [v129[2] _sourceApplicationSecondaryIdentifier];
              v172 = [v169 arrayWithObjects:{v170, v171, 0}];
              [v141 setRelatedApplications:v172];

              [v141 setNetworkEndpointPrimitive:v261];
              v173 = _nw_parameters_copy(type);
              [v141 setNetworkParametersPrimitive:v173];

              [v141 setGroupName:@"NSURLSessionBackgroundPoolName"];
              [v141 setGroupConcurrencyLimit:3];
              if (__nwlog_url_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
              }

              v174 = gurlLogObj;
              if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
              {
                if (v253)
                {
                  v175 = v253->_identifier;
                }

                else
                {
                  v175 = 0;
                }

                *buf = 138412290;
                *&buf[4] = v175;
                _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEFAULT, "Submitting background system task %@", buf, 0xCu);
              }

              Helper_x8__OBJC_CLASS___BGSystemTaskScheduler = gotLoadHelper_x8__OBJC_CLASS___BGSystemTaskScheduler(v176);
              v179 = [*(v178 + 1216) sharedScheduler];
              if (v253)
              {
                v180 = v253;
                v181 = v253->_identifier;
              }

              else
              {
                v181 = 0;
                v180 = 0;
              }

              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = v4;
              *&buf[16] = __123__NWURLBackgroundScheduler_schedulerWithConfiguration_description_endpoint_parameters_queue_stopHandler_completionHandler___block_invoke;
              v311 = &unk_1E6A38878;
              v182 = v180;
              v312 = v182;
              v183 = v130;
              v313 = v183;
              v314 = v256;
              v184 = v258;
              v315 = v184;
              [v179 registerForTaskWithIdentifier:v181 usingQueue:v183 launchHandler:buf];

              v186 = gotLoadHelper_x8__OBJC_CLASS___BGSystemTaskScheduler(v185);
              v188 = [*(v187 + 1216) sharedScheduler];
              v305 = 0;
              v189 = [v188 submitTaskRequest:v141 error:&v305];
              v190 = v305;

              if (v189)
              {
                v146 = v182;
              }

              else
              {
                if (__nwlog_url_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
                }

                v191 = gurlLogObj;
                if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                {
                  v192 = v253;
                  if (v253)
                  {
                    v192 = v182->_identifier;
                  }

                  *v306 = 138412546;
                  v307 = v192;
                  v308 = 2112;
                  v309 = v190;
                  _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_ERROR, "Failed to submit background system task %@: %@", v306, 0x16u);
                }

                v194 = gotLoadHelper_x8__OBJC_CLASS___BGSystemTaskScheduler(v193);
                v196 = [*(v195 + 1216) sharedScheduler];
                v197 = v196;
                if (v253)
                {
                  v198 = v182->_identifier;
                }

                else
                {
                  v198 = 0;
                }

                [v196 deregisterTaskWithIdentifier:v198];

                v285(v184, 0);
                v146 = 0;
              }

              goto LABEL_227;
            }

            if (v142 == 1)
            {
              [v141 setPriority:3];
              v148 = 10.0;
LABEL_245:
              [v141 setTrySchedulingBefore:v148];
              goto LABEL_246;
            }

            if (v142)
            {
              goto LABEL_246;
            }
          }

          abort();
        }
      }
    }
  }

  v285(v258, 1);
  v146 = 0;
LABEL_227:

  v147 = a1[23].isa;
  a1[23].isa = v146;

  if (a1[23].isa)
  {
    [(objc_class *)a1[6].isa loaderToggleRequestTimeoutTimer:0];
  }

LABEL_230:
}

void __25__NWURLLoaderHTTP_start___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = a2;
  v6 = a3;
  if (!v58)
  {
    goto LABEL_16;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v7[12];
    v9 = v7[3];
    v7 = v7[5];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v9;
  v12 = v8;
  if (v10)
  {
    if ([v10[4] _explicitlySetCachePolicy])
    {
      v13 = [v10[4] cachePolicy];
    }

    else
    {
      v13 = [v10[2] requestCachePolicy];
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v58;
  v16 = v11;
  if (!v12)
  {
    goto LABEL_15;
  }

  if ([v15 storagePolicy] == 2)
  {
    goto LABEL_15;
  }

  v17 = [v15 response];

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = [v16 HTTPBody];
  if (v18)
  {

LABEL_15:
    goto LABEL_16;
  }

  v19 = [v16 HTTPBodyStream];

  if (v19)
  {
    goto LABEL_15;
  }

  v23 = [v15 response];
  v24 = [v23 valueForHTTPHeaderField:@"Vary"];

  if (v24)
  {
    v25 = [v23 valueForHTTPHeaderField:@"Vary"];
    if (([v25 isEqualToString:@"*"] & 1) == 0)
    {
      v26 = [v15 _wrappedRequest];
      if (v26)
      {
        v56 = v26;
        v27 = _CFURLRequestCopyProtocolPropertyForKey();
        v26 = v56;
        v54 = v27;
        if (v27)
        {
          v28 = [NWURLLoaderCache copyVaryStateFromRequest:v16 varyValueToCopy:v25];
          if (v28)
          {
            v50 = v28;
            v51 = [v54 isEqualToDictionary:v28];

            if (!v51)
            {
              goto LABEL_47;
            }

            goto LABEL_30;
          }

          v26 = v56;
        }
      }
    }

    goto LABEL_47;
  }

LABEL_30:
  if (!v23 || [v23 statusCode] != 301 && objc_msgSend(v23, "statusCode") != 308)
  {
    if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v29 = 1;
    }

    else if (_CFURLResponseMustRevalidate() == 1)
    {
      v29 = 3;
    }

    else
    {
      CFURLResponseGetExpirationTime();
      v29 = 3;
      if (v30 - CFAbsoluteTimeGetCurrent() >= 1.0)
      {
        v57 = [v16 valueForHTTPHeaderField:@"Must-Revalidate"];

        v55 = [v16 valueForHTTPHeaderField:@"Proxy-Revalidate"];

        v52 = [v16 valueForHTTPHeaderField:@"If-Modified-Since"];

        v31 = [v16 valueForHTTPHeaderField:@"Cache-Control"];
        v53 = v31 | v52;

        if (v53 | v55 | v57)
        {
          v32 = 3;
        }

        else
        {
          v32 = 1;
        }

        if (v14 == 5)
        {
          v29 = 3;
        }

        else
        {
          v29 = v32;
        }
      }
    }

    goto LABEL_48;
  }

LABEL_47:
  v29 = 2;
LABEL_48:

  if ((v29 | 2) == 3)
  {
    v33 = *(a1 + 32);
    if (v33)
    {
      objc_storeStrong((v33 + 104), a2);
      v34 = *(a1 + 32);
      if (v34)
      {
        *(v34 + 17) = 1;
      }
    }

    if (v29 == 3)
    {
      v35 = *(a1 + 32);
      if (v35)
      {
        *(v35 + 18) = 1;
        v36 = *(a1 + 32);
      }

      else
      {
        v36 = 0;
      }

      [(NWURLLoaderHTTP *)v36 continueLoading:v6];
    }

    else
    {
      v6[2](v6);
    }
  }

LABEL_16:
  v20 = *(a1 + 32);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_58;
  }

  if (*(v20 + 17))
  {
    goto LABEL_70;
  }

  v21 = *(v20 + 40);
  v22 = v21;
  if (v21)
  {
    if ([v21[4] _explicitlySetCachePolicy])
    {
      if ([v22[4] cachePolicy] != 3)
      {
        goto LABEL_58;
      }
    }

    else if ([v22[2] requestCachePolicy] != 3)
    {
      goto LABEL_58;
    }

    goto LABEL_61;
  }

LABEL_58:
  v37 = *(a1 + 32);
  if (v37)
  {
    v38 = *(v37 + 24);
  }

  else
  {
    v38 = 0;
  }

  v39 = [v38 valueForHTTPHeaderField:@"Cache-Control"];
  [v39 rangeOfString:@"only-if-cached" options:1];
  v41 = v40;

  if (!v41)
  {
    [(NWURLLoaderHTTP *)*(a1 + 32) continueLoading:v6];
    goto LABEL_70;
  }

LABEL_61:
  v42 = *(a1 + 32);
  if (v42)
  {
    v43 = [NWURLError alloc];
    v44 = [v42[6] loaderTask];
    v45 = v42;
    v46 = v44;
    if (v43)
    {
      v47 = [(NWURLError *)v43 initWithErrorCode:-1008];
      v43 = v47;
      if (v47)
      {
        [(NWURLError *)v47 fillErrorForLoader:v45 andTask:v46];
      }
    }

    v48 = *(a1 + 32);
    if (v48)
    {
      objc_storeStrong((v48 + 88), v43);
    }
  }

  else
  {
    v43 = 0;
  }

  v49 = *(a1 + 32);
  if (v49)
  {
    *(v49 + 12) = 1;
  }

  v6[2](v6);
LABEL_70:
}

void __25__NWURLLoaderHTTP_start___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __25__NWURLLoaderHTTP_start___block_invoke_3;
  v10 = &unk_1E6A3A1E0;
  v4 = *(a1 + 56);
  v11 = *(a1 + 48);
  v12 = v4;
  v13 = *(a1 + 64);
  v5 = v2;
  v6 = v8;
  if (v3)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      [v7 getCachedResponseForDataTask:v5 completionHandler:v6];
    }

    else
    {
      v9(v6, 0);
    }
  }
}

void __25__NWURLLoaderHTTP_start___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__NWURLLoaderHTTP_start___block_invoke_4;
  v7[3] = &unk_1E6A3A1B8;
  v7[4] = v4;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __25__NWURLLoaderHTTP_start___block_invoke_4(void *a1)
{
  v1 = a1[4];
  if (v1 && *(v1 + 15) == 1)
  {
    return (*(a1[6] + 16))();
  }

  else
  {
    return (*(a1[7] + 16))(a1[7], a1[5], a1[6]);
  }
}

uint64_t __35__NWURLLoaderHTTP_continueLoading___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a3);
  v4 = *(a1 + 32);
  if (v4)
  {
    if (*(v4 + 15))
    {
      return 0;
    }

    v4 = *(v4 + 72);
  }

  v7 = v4;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 72);
    *(v8 + 72) = 0;

    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
  }

  [(NWURLLoaderHTTP *)v10 stopResponseStallTimer];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 64);
  }

  else
  {
    v12 = 0;
  }

  [v12 close];
  v13 = *(a1 + 32);
  if (v13 && (v14 = *(v13 + 64), *(v13 + 64) = 0, v14, (v13 = *(a1 + 32)) != 0))
  {
    *(v13 + 20) = 1;
    v15 = *(a1 + 32);
    if (v15)
    {
      LOBYTE(v13) = *(v15 + 9);
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __35__NWURLLoaderHTTP_continueLoading___block_invoke_2;
  v27 = &unk_1E6A3A258;
  v29 = v13 & 1;
  v28 = v15;
  [NWURLLoaderHTTP continueLoading:];
  v16 = *(a1 + 32);
  if (v16)
  {
    v16 = v16[5];
  }

  v17 = v16;
  v18 = [(NWURLSessionTaskConfiguration *)v17 activity];
  nw_connection_end_activity(v7, v18);

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 56);
  }

  else
  {
    v20 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_3;
  block[3] = &unk_1E6A3D868;
  v23 = v7;
  v21 = v7;
  dispatch_async(v20, block);

  return 1;
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    hostname = nw_endpoint_get_hostname(*(a1 + 40));
    sec_protocol_options_set_tls_server_name(v5, hostname);
  }

  verify_block = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __35__NWURLLoaderHTTP_continueLoading___block_invoke_5;
  v24 = &unk_1E6A3A2A8;
  v7 = *(a1 + 48);
  v25 = v7;
  if (v7)
  {
    v8 = *(v7 + 56);
  }

  else
  {
    v8 = 0;
  }

  sec_protocol_options_set_verify_block(v5, &verify_block, v8);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __35__NWURLLoaderHTTP_continueLoading___block_invoke_6;
  v19 = &unk_1E6A3A2F8;
  v9 = *(a1 + 48);
  v20 = v9;
  if (v9)
  {
    v10 = *(v9 + 56);
  }

  else
  {
    v10 = 0;
  }

  sec_protocol_options_set_challenge_block(v5, &v16, v10);
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(v11 + 40);
  }

  else
  {
    v12 = 0;
  }

  [(NWURLSessionTaskConfiguration *)v12 configureSecProtocolOptions:v5 QUIC:a3];
  v13 = sec_protocol_configuration_copy_singleton();
  sec_protocol_options_set_sec_protocol_configuration();
  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(v14 + 48);
  }

  else
  {
    v15 = 0;
  }

  [v15 joiningContext];
  sec_protocol_options_set_nw_protocol_joining_context();
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_10(uint64_t a1, void *a2)
{
  v5 = a2;
  _nw_tcp_options_set_no_delay(v5, 1);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      if ([*(v4 + 16) _allowsTCPFastOpen])
      {
        _nw_tcp_options_set_enable_fast_open(v5, 1);
      }
    }
  }
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_11(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 clientMetadata];
  nw_http_client_metadata_set_sniffed_media_type(v6, 0);

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 48);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 clientMetadata];
  nw_http_messaging_options_set_client_metadata(v3, v9);

  v10 = *(a1 + 32);
  if (v10 && (v11 = *(v10 + 40)) != 0)
  {
    if ([*(v11 + 16) enablesEarlyData])
    {
      v12 = 1;
    }

    else
    {
      if (enablesEarlyData_onceToken != -1)
      {
        dispatch_once(&enablesEarlyData_onceToken, &__block_literal_global_7);
      }

      v12 = enablesEarlyData_earlyDataEnabled;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v3;
  if (!v13)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
    LODWORD(v66) = 12;
    v65 = buf;
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v36, &type, &v68))
    {
      goto LABEL_127;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
        v39 = "%{public}s called with null options";
LABEL_125:
        _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      }

LABEL_126:

      goto LABEL_127;
    }

    if (v68 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
        v39 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v54 = os_log_type_enabled(v37, type);
    if (!backtrace_string)
    {
      if (v54)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
        v39 = "%{public}s called with null options, no backtrace";
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    if (v54)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_127:
    if (!v36)
    {
      goto LABEL_17;
    }

    goto LABEL_128;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  if (nw_protocol_options_matches_definition(v13, nw_protocol_copy_http_messaging_definition_definition))
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_http_messaging_options_set_early_data_enabled_block_invoke;
    v71 = &__block_descriptor_33_e9_B16__0_v8l;
    LOBYTE(v72) = v12 & 1;
    nw_protocol_options_access_handle(v13, buf);
    goto LABEL_17;
  }

  v46 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
  LODWORD(v66) = 12;
  v65 = buf;
  v36 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v68 = 0;
  if (!__nwlog_fault(v36, &type, &v68))
  {
    goto LABEL_127;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v37 = __nwlog_obj();
    v38 = type;
    if (os_log_type_enabled(v37, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
      v39 = "%{public}s protocol options are not http_messaging";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  if (v68 != 1)
  {
    v37 = __nwlog_obj();
    v38 = type;
    if (os_log_type_enabled(v37, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
      v39 = "%{public}s protocol options are not http_messaging, backtrace limit exceeded";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  v57 = __nw_create_backtrace_string();
  v37 = __nwlog_obj();
  v38 = type;
  v58 = os_log_type_enabled(v37, type);
  if (!v57)
  {
    if (v58)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
      v39 = "%{public}s protocol options are not http_messaging, no backtrace";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  if (v58)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_messaging_options_set_early_data_enabled";
    *&buf[12] = 2082;
    *&buf[14] = v57;
    _os_log_impl(&dword_181A37000, v37, v38, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v57);
  if (v36)
  {
LABEL_128:
    free(v36);
  }

LABEL_17:

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 40);
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NWURLSessionTaskConfiguration *)v15 connectionStateStorage];
  v67 = v13;
  v17 = v16;
  if (!v13)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_set_storage";
    LODWORD(v66) = 12;
    v65 = buf;
    v41 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v41, &type, &v68))
    {
      goto LABEL_115;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v42, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_storage";
        v44 = "%{public}s called with null options";
LABEL_112:
        v63 = v42;
        v64 = v43;
LABEL_113:
        _os_log_impl(&dword_181A37000, v63, v64, v44, buf, 0xCu);
      }

LABEL_114:

      goto LABEL_115;
    }

    if (v68 != 1)
    {
      v42 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v42, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_storage";
        v44 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_112;
      }

      goto LABEL_114;
    }

    v55 = __nw_create_backtrace_string();
    v42 = __nwlog_obj();
    HIDWORD(v66) = type;
    v56 = os_log_type_enabled(v42, type);
    if (v55)
    {
      if (v56)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_set_storage";
        *&buf[12] = 2082;
        *&buf[14] = v55;
        _os_log_impl(&dword_181A37000, v42, BYTE4(v66), "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v55);
LABEL_115:
      if (!v41)
      {
        goto LABEL_24;
      }

LABEL_116:
      free(v41);
      goto LABEL_24;
    }

    if (!v56)
    {
      goto LABEL_114;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_set_storage";
    v44 = "%{public}s called with null options, no backtrace";
LABEL_131:
    v63 = v42;
    v64 = BYTE4(v66);
    goto LABEL_113;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  if (nw_protocol_options_matches_definition(v67, nw_protocol_copy_http_messaging_definition_definition))
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_http_messaging_options_set_storage_block_invoke;
    v71 = &unk_1E6A3A950;
    v72 = v17;
    nw_protocol_options_access_handle(v67, buf);

    goto LABEL_24;
  }

  v47 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_messaging_options_set_storage";
  LODWORD(v66) = 12;
  v65 = buf;
  v41 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v68 = 0;
  if (!__nwlog_fault(v41, &type, &v68))
  {
    goto LABEL_115;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v42 = __nwlog_obj();
    v43 = type;
    if (os_log_type_enabled(v42, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_messaging_options_set_storage";
      v44 = "%{public}s protocol options are not http_messaging";
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  if (v68 != 1)
  {
    v42 = __nwlog_obj();
    v43 = type;
    if (os_log_type_enabled(v42, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_messaging_options_set_storage";
      v44 = "%{public}s protocol options are not http_messaging, backtrace limit exceeded";
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  v59 = __nw_create_backtrace_string();
  v42 = __nwlog_obj();
  HIDWORD(v66) = type;
  v60 = os_log_type_enabled(v42, type);
  if (!v59)
  {
    if (!v60)
    {
      goto LABEL_114;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_set_storage";
    v44 = "%{public}s protocol options are not http_messaging, no backtrace";
    goto LABEL_131;
  }

  if (v60)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_messaging_options_set_storage";
    *&buf[12] = 2082;
    *&buf[14] = v59;
    _os_log_impl(&dword_181A37000, v42, BYTE4(v66), "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v59);
  if (v41)
  {
    goto LABEL_116;
  }

LABEL_24:

  v18 = *(a1 + 32);
  if (v18 && (v19 = *(v18 + 40)) != 0)
  {
    [*(v19 + 16) _connectionCachePurgeTimeout];
    v21 = v20 - 1;
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  nw_http1_set_idle_timeout(v67, v21);
  v22 = *(a1 + 32);
  if (v22 && (v23 = *(v22 + 40)) != 0)
  {
    [*(v23 + 16) _longLivedConnectionCachePurgeTimeout];
    v25 = 2 * v24;
  }

  else
  {
    v25 = 0;
  }

  nw_http2_set_idle_timeout(v67, v25);
  nw_http3_set_idle_timeout(v67, v25);
  v26 = *(a1 + 32);
  if (v26 && (v27 = *(v26 + 40)) != 0)
  {
    v28 = [*(v27 + 16) HTTPMaximumConnectionsPerHost];
  }

  else
  {
    v28 = 0;
  }

  nw_http1_set_connection_pool_width(v67, v28);
  v29 = *(a1 + 32);
  if (!v29)
  {
    goto LABEL_142;
  }

  if ((*(v29 + 20) & 1) == 0)
  {
    v30 = *(v29 + 40);
    if (v30)
    {
      v31 = [*(v30 + 32) _allowedProtocolTypes];
      if (!v31)
      {
        goto LABEL_44;
      }

      v32 = (v31 >> 4) & 4 | (v31 >> 3) & 2 | v31 & 1;
      if (v31)
      {
        if (((v31 >> 3) & 2) != 0)
        {
          goto LABEL_39;
        }

        goto LABEL_144;
      }

LABEL_143:
      nw_http_messaging_options_set_http1_options(v67, 0);
      if ((v32 & 2) != 0)
      {
LABEL_39:
        if (v32 > 3)
        {
          goto LABEL_44;
        }

LABEL_40:
        if (nw_get_http3_override_onceToken != -1)
        {
          dispatch_once(&nw_get_http3_override_onceToken, &__block_literal_global_11_76433);
        }

        if (nw_get_http3_override_value != 1)
        {
          nw_http_messaging_options_set_http3_options(v67, 0);
        }

        goto LABEL_44;
      }

LABEL_144:
      nw_http_messaging_options_set_http2_options(v67, 0);
      if (v32 > 3)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

LABEL_142:
    v32 = 0;
    goto LABEL_143;
  }

  nw_http_messaging_options_set_http2_options(v67, 0);
  nw_http_messaging_options_set_http3_options(v67, 0);
  v45 = *(a1 + 32);
  if (!v45)
  {
    goto LABEL_146;
  }

  *(v45 + 20) = 0;
LABEL_44:
  v33 = *(a1 + 32);
  if (v33)
  {
    if (![*(v33 + 48) isWebSocket])
    {
      goto LABEL_52;
    }

LABEL_46:
    v34 = v67;
    if (v13)
    {
      if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
      }

      if (nw_protocol_options_matches_definition(v34, nw_protocol_copy_http_messaging_definition_definition))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_http_messaging_options_set_is_websocket_block_invoke;
        v71 = &__block_descriptor_33_e9_B16__0_v8l;
        LOBYTE(v72) = 1;
        nw_protocol_options_access_handle(v34, buf);
      }

LABEL_51:

      goto LABEL_52;
    }

    v48 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_set_is_websocket";
    v49 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v49, &type, &v68))
    {
LABEL_136:
      if (v49)
      {
        free(v49);
      }

      goto LABEL_51;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v50, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_is_websocket";
        v52 = "%{public}s called with null options";
LABEL_134:
        _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
      }
    }

    else
    {
      if (v68 == 1)
      {
        v61 = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        v51 = type;
        v62 = os_log_type_enabled(v50, type);
        if (v61)
        {
          if (v62)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_messaging_options_set_is_websocket";
            *&buf[12] = 2082;
            *&buf[14] = v61;
            _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v61);
          goto LABEL_136;
        }

        if (!v62)
        {
          goto LABEL_135;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_is_websocket";
        v52 = "%{public}s called with null options, no backtrace";
        goto LABEL_134;
      }

      v50 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v50, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_set_is_websocket";
        v52 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_134;
      }
    }

LABEL_135:

    goto LABEL_136;
  }

LABEL_146:
  if ([0 isWebSocket])
  {
    goto LABEL_46;
  }

LABEL_52:
  nw_http_messaging_options_set_retry_with_h1_handler(v67, *(a1 + 40));
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = a3;
  v9 = a2;
  v10 = [v7 URL];
  [(NWURLLoaderHTTP *)v5 handleAuthenticationChallenge:v9 url:v10 cancel:1 completionHandler:v8];
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_13(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = nw_endpoint_copy_cfurl(a2);
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 48);
  }

  else
  {
    v13 = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_14;
  v16[3] = &unk_1E6A3B5A8;
  v16[4] = v12;
  v17 = v9;
  v18 = v10;
  v14 = v10;
  v15 = v9;
  [v13 loaderWillPerformHSTSUpgradeToURL:v11 preload:a4 completionHandler:v16];
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_15(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v71 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v16 = a6;
  v17 = *(a1 + 32);
  if (!v17)
  {
    goto LABEL_5;
  }

  if ((*(v17 + 15) & 1) == 0)
  {
    [(NWURLLoaderHTTP *)v17 stopResponseStallTimer];
    v17 = *(a1 + 32);
LABEL_5:
    v59 = v11;
    v58 = [(NWURLLoaderHTTP *)v17 responseFromMetadata:v11];
    v18 = nw_endpoint_copy_cfurl(v12);
    v19 = *(a1 + 32);
    v60 = v13;
    if (v19)
    {
      v20 = *(v19 + 24);
    }

    else
    {
      v20 = 0;
    }

    v21 = [v20 mutableCopy];
    [v21 setURL:v18];
    if (!v18)
    {
      goto LABEL_20;
    }

    if (([v18 isFileURL] & 1) == 0)
    {
      v25 = [v18 scheme];
      v29 = [v25 length] - 7;
      if (v29 > 3)
      {
LABEL_19:

        goto LABEL_20;
      }

      v30 = [v25 caseInsensitiveCompare:off_1E6A2D7E0[v29]];

      if (v30)
      {
LABEL_20:
        if ([(NSURL *)v18 _NW_isHTTPish])
        {
          v57 = v14;
          v31 = nw_http_metadata_copy_request(v14);
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v32 = [v21 _allHTTPHeaderFieldsAsArrays];
          v33 = [v32 countByEnumeratingWithState:&v66 objects:v70 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v67;
            do
            {
              v36 = 0;
              do
              {
                if (*v67 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                [v21 setValue:0 forHTTPHeaderField:{*(*(&v66 + 1) + 8 * v36++), v57}];
              }

              while (v34 != v36);
              v34 = [v32 countByEnumeratingWithState:&v66 objects:v70 count:16];
            }

            while (v34);
          }

          v37 = nw_http_request_copy_url_request(v31, *MEMORY[0x1E695ADB8], v18);
          v38 = [v37 HTTPMethod];
          [v21 setHTTPMethod:v38];

          v39 = [v37 _allHTTPHeaderFieldsAsArrays];
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_16;
          v64[3] = &unk_1E6A3A3C0;
          v40 = v21;
          v65 = v40;
          [v39 enumerateKeysAndObjectsUsingBlock:v64];

          if (v40)
          {
            v41 = [v40 HTTPMethod];
            v42 = [v41 caseInsensitiveCompare:@"GET"];

            if (!v42 || ([v40 HTTPMethod], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "caseInsensitiveCompare:", @"HEAD"), v55, !v56))
            {
              [v40 setHTTPBody:{0, v57}];
              [v40 setHTTPBodyStream:0];
              v43 = *(a1 + 32);
              if (v43)
              {
                *(v43 + 32) = 0;
              }
            }
          }

          v14 = v57;
        }

        v44 = *(a1 + 32);
        if (v44)
        {
          v44 = v44[6];
        }

        v13 = v60;
        v45 = v44;
        v46 = [v21 copy];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_17;
        v61[3] = &unk_1E6A3B5A8;
        v61[4] = *(a1 + 32);
        v62 = v60;
        v63 = v16;
        v47 = v58;
        [v45 loaderWillPerformHTTPRedirection:v58 newRequest:v46 completionHandler:v61];

        goto LABEL_47;
      }
    }

    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 24);
    }

    else
    {
      v23 = 0;
    }

    v24 = [v23 URL];
    v25 = v24;
    if (!v24)
    {
      goto LABEL_37;
    }

    if (([v24 isFileURL] & 1) == 0)
    {
      v26 = [v25 scheme];
      v27 = [v26 length] - 7;
      if (v27 < 4)
      {
        v28 = [v26 caseInsensitiveCompare:off_1E6A2D7E0[v27]];

        if (!v28)
        {
          goto LABEL_20;
        }

LABEL_38:
        v48 = *(a1 + 32);
        if (v48)
        {
          v13 = v60;
          if (*(v48 + 88))
          {
LABEL_46:
            (*(v16 + 2))(v16, 0, 0, 0);
            v47 = v58;
LABEL_47:

            v11 = v59;
            goto LABEL_48;
          }

          v49 = [NWURLError alloc];
          v50 = [*(v48 + 48) loaderTask];
          v51 = v48;
          v52 = v50;
          if (v49)
          {
            v53 = [(NWURLError *)v49 initWithErrorCode:-1102];
            v49 = v53;
            if (v53)
            {
              [(NWURLError *)v53 fillErrorForLoader:v51 andTask:v52];
            }
          }

          v54 = *(a1 + 32);
          if (v54)
          {
            objc_storeStrong((v54 + 88), v49);
          }
        }

        else
        {
          v49 = 0;
        }

        v13 = v60;

        goto LABEL_46;
      }

LABEL_37:
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  (*(v16 + 2))(v16, 0, 0, 0);
LABEL_48:
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_18(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a5;
  v11 = *(a1 + 32);
  if (!v11)
  {
LABEL_4:
    v12 = v11;
    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = v13[9];
    }

    v14 = v13;
    v15 = nw_connection_create_with_connection(v14, v9);
    v16 = *(a1 + 32);
    if (v16)
    {
      objc_storeStrong((v16 + 72), v15);
    }

    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v17 = gurlLogObj;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:

      v29 = *(a1 + 32);
      if (v29 && *(v29 + 72))
      {
        [(NWURLLoaderHTTP *)v29 stopResponseStallTimer];
        v30 = *(a1 + 32);
        if (v30)
        {
          v31 = *(v30 + 64);
        }

        else
        {
          v31 = 0;
        }

        [v31 close];
        v32 = *(a1 + 32);
        if (v32)
        {
          v33 = *(v32 + 64);
          *(v32 + 64) = 0;
        }

        v34 = nw_content_context_create("http resend context");
        v35 = *(a1 + 32);
        if (v35)
        {
          objc_storeStrong((v35 + 80), v34);
        }

        v36 = *(a1 + 32);
        if (v36)
        {
          v37 = *(v36 + 80);
        }

        else
        {
          v37 = 0;
        }

        v10[2](v10, v37);
        v38 = *(a1 + 32);
        if (v38)
        {
          v39 = *(v38 + 72);
        }

        else
        {
          v39 = 0;
        }

        [(NWURLLoaderHTTP *)v38 configureAndStartConnection:v39];
        v40 = *(a1 + 32);
        if (a4)
        {
          if (v40)
          {
            *(v40 + 19) = 1;
            v41 = *(v40 + 144);
            objc_setProperty_nonatomic_copy(v40, v42, 0, 144);
            if (v41)
            {
              v41[2](v41);
            }

            if (*(v40 + 10) == 1)
            {
              [(NWURLLoaderHTTP *)v40 startResponseStallTimer];
            }
          }
        }

        else
        {
          [(NWURLLoaderHTTP *)*(a1 + 32) needRequestBodyFromOffset:a3];
        }

        [(NWURLLoaderHTTP *)*(a1 + 32) readResponse];
        v43 = *(a1 + 32);
        if (!v43)
        {
          goto LABEL_42;
        }
      }

      else
      {
        [(NWURLLoaderHTTP *)v29 setConnection:v12];
        v43 = *(a1 + 32);
        if (!v43)
        {
          goto LABEL_42;
        }
      }

      v43 = v43[5];
LABEL_42:
      v44 = v43;
      v45 = [(NWURLSessionTaskConfiguration *)v44 activity];
      nw_connection_end_activity(v12, v45);

      nw_connection_cancel(v12);
      goto LABEL_43;
    }

    v18 = *(a1 + 32);
    if (v18 && (v19 = *(v18 + 48)) != 0)
    {
      v20 = v19;
      [v19 logDescription];
      v21 = *(a1 + 32);
      if (!v21)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v20 = 0;
      v49 = 0;
      v50 = 0;
      LODWORD(v51) = 0;
      v21 = *(a1 + 32);
      if (!v21)
      {
        goto LABEL_44;
      }
    }

    v22 = *(v21 + 48);
    if (v22)
    {
      v23 = v22;
      [v22 logDescription];
      v24 = v48;
      v25 = *(a1 + 32);
      if (!v25)
      {
LABEL_45:
        v26 = 0;
        goto LABEL_19;
      }

LABEL_18:
      v26 = *(v25 + 72);
LABEL_19:
      id = nw_connection_get_id(v26);
      *buf = 68289538;
      v53 = 16;
      v54 = 2098;
      v55 = &v49;
      v56 = 1024;
      v57 = v24;
      v58 = 2048;
      v59 = id;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> created [C%llu]", buf, 0x22u);

      goto LABEL_20;
    }

LABEL_44:
    v24 = 0;
    v23 = 0;
    v46 = 0;
    v47 = 0;
    LODWORD(v48) = 0;
    v25 = *(a1 + 32);
    if (!v25)
    {
      goto LABEL_45;
    }

    goto LABEL_18;
  }

  if ((*(v11 + 15) & 1) == 0)
  {
    v11 = *(v11 + 72);
    goto LABEL_4;
  }

LABEL_43:
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v39 = a3;
  v6 = nw_authentication_challenge_copy_http_message(v5);
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v8 = nw_authentication_challenge_copy_protection_space(v5);
  v9 = nw_authentication_protection_space_copy_endpoint(v8);
  v10 = nw_endpoint_copy_cfurl(v9);
  if (v10)
  {
    _CFHTTPMessageSetResponseProxyURL();
  }

  v11 = CFHTTPAuthenticationCreateFromResponse(*MEMORY[0x1E695E480], v7);
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  v13 = nw_http_authentication_parse_schemes(v11, v9, 1, 1, 0);
  v14 = v13;
  if (v13 && _nw_array_get_count(v13))
  {
    nw_authentication_challenge_set_protection_space_array(v5, v14);
    type = nw_authentication_challenge_get_type(v5);
    if (type != 4)
    {
      v16 = type;
      v17 = *(a1 + 32);
      if (v17)
      {
        v18 = *(v17 + 40);
      }

      else
      {
        v18 = 0;
      }

      v19 = [(NWURLSessionTaskConfiguration *)v18 URLCredentialStorage];

      if (v19)
      {
        v20 = *(a1 + 32);
        if (v20)
        {
          v21 = *(v20 + 40);
        }

        else
        {
          v21 = 0;
        }

        v22 = [(NWURLSessionTaskConfiguration *)v21 URLCredentialStorage];
        v38 = a1;
        v23 = nw_authentication_credential_storage_copy_default_credential(v22, v5);

        if (v23)
        {
          v24 = v23;
          v37 = v24[3];

          if (v37)
          {
            nw_authentication_challenge_set_proposed_credential(v5, v24);
          }
        }

        a1 = v38;
      }

      if (v16 == 5)
      {
        IsSecondNTLMTransaction = _CFHTTPAuthenticationIsSecondNTLMTransaction();

        CFRelease(v12);
        CFRelease(v7);

        if (IsSecondNTLMTransaction)
        {
          goto LABEL_40;
        }

LABEL_25:
        v27 = *(a1 + 32);
        if (v27)
        {
          v28 = *(v27 + 40);
          v29 = v28;
          if (v28 && ([v28[2] _requiresSecureHTTPSProxyConnection] & 1) != 0)
          {
            goto LABEL_32;
          }

          v30 = *(a1 + 32);
          if (!v30)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v29 = 0;
          v30 = *(a1 + 32);
          if (!v30)
          {
LABEL_37:
            if (nw_proxy_options_authbroker_is_available::onceToken != -1)
            {
              dispatch_once(&nw_proxy_options_authbroker_is_available::onceToken, &__block_literal_global_38322);
            }

            v36 = nw_proxy_options_authbroker_is_available::available;

            if ((v36 & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_40:
            (*(v39 + 2))(v39, 0, 0);
            goto LABEL_41;
          }
        }

        if (*(v30 + 21) & 1) != 0 || (v31 = *(v30 + 40)) != 0 && ([*(v31 + 16) _preventsSystemHTTPProxyAuthentication])
        {
LABEL_32:

LABEL_33:
          v32 = *(a1 + 32);
          if (v32)
          {
            v33 = *(v32 + 24);
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;
          v35 = [v34 URL];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __35__NWURLLoaderHTTP_continueLoading___block_invoke_50;
          v40[3] = &unk_1E6A3A438;
          v40[4] = *(a1 + 32);
          v41 = v39;
          [(NWURLLoaderHTTP *)v32 handleAuthenticationChallenge:v5 url:v35 cancel:0 completionHandler:v40];

          goto LABEL_41;
        }

        goto LABEL_37;
      }
    }

    CFRelease(v12);
LABEL_24:
    CFRelease(v7);

    goto LABEL_25;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = gLogObj;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v43 = "[NWURLLoaderHTTP continueLoading:]_block_invoke";
    _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s Unable to determine authentication type", buf, 0xCu);
  }

  CFRelease(v12);
  CFRelease(v7);
  (*(v39 + 2))(v39, 0, 1);

LABEL_41:
}

void __35__NWURLLoaderHTTP_continueLoading___block_invoke_2_56(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v4 = 0;
LABEL_8:

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 88);
    }

    else
    {
      v11 = 0;
    }

    [v11 setBackgroundTaskCancelledReason:&unk_1EF011D50];
    v12 = *(a1 + 32);
    if (v12)
    {
      *(v12 + 12) = 1;
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_12;
  }

  if (!*(v2 + 88))
  {
    v3 = v2;
    v4 = [NWURLError alloc];
    v5 = [v3[6] loaderTask];
    v6 = v3;
    v7 = v5;
    if (v4)
    {
      v8 = [(NWURLError *)v4 initWithErrorCode:-999];
      v4 = v8;
      if (v8)
      {
        [(NWURLError *)v8 fillErrorForLoader:v6 andTask:v7];
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      objc_storeStrong((v9 + 88), v4);
    }

    goto LABEL_8;
  }

LABEL_12:

  [(NWURLLoaderHTTP *)v2 cancelConnection];
}

uint64_t __35__NWURLLoaderHTTP_continueLoading___block_invoke_58(uint64_t a1, char a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a2)
  {
    if (v4 && *(v4 + 184))
    {
      [*(v4 + 48) loaderToggleRequestTimeoutTimer:1];
    }

    v5 = nw_connection_create_without_parameters_copy(*(a1 + 40), *(a1 + 48));
    v6 = *(a1 + 32);
    if (v6)
    {
      objc_storeStrong((v6 + 72), v5);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v9 = &nw_protocol_http_retry_identifier::protocol_identifier;
    v10 = gurlLogObj;
    v11 = v10;
    if (!v8)
    {
      v109 = 136446210;
      *buf = 136446210;
      v2 = "[NWURLLoaderHTTP continueLoading:]_block_invoke";
      *&buf[4] = "[NWURLLoaderHTTP continueLoading:]_block_invoke";
      v22 = _os_log_send_and_compose_impl();

      __str[0] = 16;
      v111 = 0;
      if (!__nwlog_fault(v22, __str, &v111))
      {
        goto LABEL_127;
      }

      if (__str[0] != 17)
      {
        if (v111 != 1)
        {
          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v41 = gurlLogObj;
          v42 = __str[0];
          if (!os_log_type_enabled(v41, __str[0]))
          {
            goto LABEL_126;
          }

          *buf = 136446210;
          *&buf[4] = "[NWURLLoaderHTTP continueLoading:]_block_invoke";
          v43 = "%{public}s failed to create connection, backtrace limit exceeded";
          goto LABEL_124;
        }

        backtrace_string = __nw_create_backtrace_string();
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v41 = gurlLogObj;
        v45 = __str[0];
        v46 = os_log_type_enabled(v41, __str[0]);
        if (backtrace_string)
        {
          if (v46)
          {
            *buf = 136446466;
            *&buf[4] = "[NWURLLoaderHTTP continueLoading:]_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v41, v45, "%{public}s failed to create connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_127:
          if (v22)
          {
            free(v22);
          }

          v93 = [(NWURLLoaderHTTP *)*(a1 + 32) errorForErrorCode:?];
          [(NWURLLoaderHTTP *)*(a1 + 32) setPendingError:v93];

          v94 = *(a1 + 32);
          if (!v94)
          {
            return (*(*(a1 + 56) + 16))();
          }

          *(v94 + 12) = 1;
          v90 = *(a1 + 32);
          if (!v90)
          {
            return (*(*(a1 + 56) + 16))();
          }

LABEL_117:
          *(v90 + 9) = 0;
          return (*(*(a1 + 56) + 16))();
        }

        if (v46)
        {
          *buf = 136446210;
          *&buf[4] = "[NWURLLoaderHTTP continueLoading:]_block_invoke";
          v43 = "%{public}s failed to create connection, no backtrace";
          v91 = v41;
          v92 = v45;
          goto LABEL_125;
        }

LABEL_126:

        goto LABEL_127;
      }

      if (__nwlog_url_log::onceToken == -1)
      {
LABEL_49:
        v41 = v9[6];
        v42 = __str[0];
        if (os_log_type_enabled(v41, __str[0]))
        {
          *buf = v109;
          *&buf[4] = v2;
          v43 = "%{public}s failed to create connection";
LABEL_124:
          v91 = v41;
          v92 = v42;
LABEL_125:
          _os_log_impl(&dword_181A37000, v91, v92, v43, buf, 0xCu);
          goto LABEL_126;
        }

        goto LABEL_126;
      }

LABEL_143:
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      goto LABEL_49;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_22:

      v22 = *(a1 + 32);
      if (!v22)
      {
        goto LABEL_113;
      }

      v23 = *(v22 + 40);
      if (v23)
      {
        v24 = [*(v23 + 24) _preconnect];
        v22 = *(a1 + 32);
        if (v24)
        {
          goto LABEL_114;
        }

        if (!v22)
        {
LABEL_113:
          v22 = *(a1 + 32);
LABEL_114:
          if (v22)
          {
            v88 = *(v22 + 72);
            v89 = v22;
          }

          else
          {
            v89 = 0;
            v88 = 0;
          }

          [(NWURLLoaderHTTP *)v89 configureAndStartConnection:v88];
          v90 = *(a1 + 32);
          if (!v90)
          {
            return (*(*(a1 + 56) + 16))();
          }

          goto LABEL_117;
        }
      }

      if (!*(v22 + 32) || (v25 = *(v22 + 24)) == 0 || ([*(v22 + 24) HTTPMethod], v26 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v26, "caseInsensitiveCompare:", @"GET"), v26, v9) && (objc_msgSend(v25, "HTTPMethod"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "caseInsensitiveCompare:", @"HEAD"), v47, v48))
      {
        v49 = nw_content_context_create("http request");
        v50 = *(v22 + 80);
        *(v22 + 80) = v49;

        v51 = *(v22 + 24);
        if (!v51)
        {
          v95 = __nwlog_obj();
          os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
          *__str = 136446210;
          v121 = "nw_http_request_create_from_url_request";
          LODWORD(v107) = 12;
          v106 = __str;
          v96 = _os_log_send_and_compose_impl();

          result = __nwlog_should_abort(v96);
          if (result)
          {
LABEL_148:
            __break(1u);
            return result;
          }

          free(v96);
          v51 = 0;
        }

        _nw_http_request_create_from_url_request(v51);
        v53 = v52;
        if (v53)
        {
          goto LABEL_61;
        }

        v97 = __nwlog_obj();
        os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);
        *__str = 136446210;
        v121 = "nw_http_request_is_safe";
        LODWORD(v107) = 12;
        v106 = __str;
        v98 = _os_log_send_and_compose_impl();

        result = __nwlog_should_abort(v98);
        if (!result)
        {
          free(v98);
LABEL_61:
          is_safe = _nw_http_request_is_safe();

          if (is_safe)
          {
            v55 = 1;
          }

          else
          {
            v56 = *(v22 + 40);
            if (v56)
            {
              v55 = [*(v56 + 32) _unsafeAllowedInEarlyData];
            }

            else
            {
              v55 = 0;
            }
          }

          if (*(v22 + 32) >= 1 && (nw_http_fields_have_field_with_name(v53, "Content-Length") & 1) == 0)
          {
            snprintf(__str, 0x15uLL, "%lld", *(v22 + 32));
            nw_http_fields_append(v53, "Content-Length", __str);
          }

          if ((nw_http_fields_have_field_with_name(v53, "User-Agent") & 1) == 0)
          {
            if (nw_utilities_get_user_agent::onceToken != -1)
            {
              dispatch_once(&nw_utilities_get_user_agent::onceToken, &__block_literal_global_13_47236);
            }

            nw_http_fields_append(v53, "User-Agent", nw_utilities_get_user_agent::user_agent_string);
          }

          if ((nw_http_fields_have_field_with_name(v53, "Accept") & 1) == 0)
          {
@end