@interface NWURLSessionTask
+ (BOOL)isSubclassOfClass:(Class)class;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)isUpload;
- (NSProgress)progress;
- (NSString)description;
- (NSURLResponse)response;
- (NSURLSessionTaskDelegate)_internalDelegate;
- (NSURLSessionTaskDelegate)delegate;
- (NSURLSessionTaskMetrics)_incompleteTaskMetrics;
- (NSURLSessionTaskTransactionMetrics)_incompleteCurrentTaskTransactionMetrics;
- (NWURLError)error;
- (NWURLError)errorForErrorCode:(id *)code;
- (OS_nw_context)networkContext;
- (OS_nw_protocol_metadata)clientMetadata;
- (id)initWithRequest:(int)request identifier:(void *)identifier session:;
- (id)initWithResumeInfo:(int)info identifier:(void *)identifier session:;
- (id)loaderNeedsEarlyData:(BOOL *)data;
- (id)methodSignatureForSelector:(SEL)selector;
- (int64_t)_countOfBytesReceivedEncoded;
- (int64_t)backgroundSchedulingPriority;
- (int64_t)state;
- (uint64_t)createTimerWithTimeout:(double)timeout retryable:;
- (unint64_t)_expectedProgressTarget;
- (unint64_t)taskIdentifier;
- (void)_adoptEffectiveConfiguration:(id)configuration;
- (void)_setExplicitCookieStorage:(OpaqueCFHTTPCookieStorage *)storage;
- (void)cancel;
- (void)complete:(uint64_t)complete;
- (void)completeTaskWithError:(id)error retryable:(BOOL)retryable;
- (void)dealloc;
- (void)delegateWrapper;
- (void)forwardInvocation:(id)invocation;
- (void)getUnderlyingHTTPConnectionInfoWithCompletionHandler:(id)handler;
- (void)joiningContext;
- (void)loaderCallCustomURLProtocol:(id)protocol;
- (void)loaderConnectedWithHTTPConnectionMetadata:(id)metadata CNAMEChain:(id)chain unlistedTracker:(id)tracker;
- (void)loaderDidReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)loaderDidReceiveClientCertificateChallenge:(id)challenge completionHandler:(id)handler;
- (void)loaderDidReceiveInformationalResponse:(id)response;
- (void)loaderDidReceiveServerTrustChallenge:(id)challenge secProtocolMetadata:(id)metadata completionHandler:(id)handler;
- (void)loaderDidSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send completionHandler:(id)handler;
- (void)loaderFailedToConnect:(id)connect;
- (void)loaderNeedsBodyProviderFromOffset:(unint64_t)offset completionHandler:(id)handler;
- (void)loaderRunDelegateBlock:(id)block;
- (void)loaderToggleRequestTimeoutTimer:(BOOL)timer;
- (void)loaderWaitingForConnectivity;
- (void)loaderWillPerformHSTSUpgradeToURL:(id)l preload:(BOOL)preload completionHandler:(id)handler;
- (void)loaderWillPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)pauseTaskForRetry;
- (void)performNextServerTrustChallenge;
- (void)readResponseBody;
- (void)restartRequestTimer;
- (void)resume;
- (void)resumeTaskAndRetry;
- (void)retryImmediately;
- (void)setBackgroundSchedulingPriority:(int64_t)priority;
- (void)setClientMetadataForMetrics:(uint64_t)metrics;
- (void)setConfiguration:(uint64_t)configuration;
- (void)setCountOfBytesExpectedToReceive:(uint64_t)receive;
- (void)setCountOfBytesExpectedToSend:(uint64_t)send;
- (void)setCountOfBytesReceived:(uint64_t)received;
- (void)setDelegate:(id)delegate;
- (void)setPendingError:(uint64_t)error;
- (void)setPrefersIncrementalDelivery:(BOOL)delivery;
- (void)setPriority:(float)priority;
- (void)set_expectedProgressTarget:(unint64_t)target;
- (void)set_internalDelegate:(id)delegate;
- (void)startNextLoad;
- (void)stopAndRetryWithError:(id)error;
- (void)suspend;
- (void)updateResponse:(uint64_t)response;
@end

@implementation NWURLSessionTask

- (void)resume
{
  v29 = *MEMORY[0x1E69E9840];
  v28 = 0uLL;
  _nw_activity = [(NWURLSessionTask *)self _nw_activity];
  v4 = _nw_activity;
  if (_nw_activity)
  {
    nw_activity_activate(_nw_activity);
    nw_activity_get_token(v4, &v28);
  }

  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v5 = gurlLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    if (self)
    {
      v6 = self->_configuration;
      v7 = v6;
      v8 = 0;
      savedTimeoutIntervalForRequest = 0.0;
      if (v6)
      {
        savedTimeoutIntervalForRequest = v6->_savedTimeoutIntervalForRequest;
      }

      configuration = self->_configuration;
      if (configuration)
      {
        [(NWURLSessionTask *)configuration->_task _timeoutIntervalForResource];
        if (v11 == 0.0)
        {
          [(NSURLSessionConfiguration *)configuration->_configuration timeoutIntervalForResource];
        }

        else
        {
          [(NWURLSessionTask *)configuration->_task _timeoutIntervalForResource];
        }

        v8 = v12;
      }
    }

    else
    {
      v7 = 0;
      savedTimeoutIntervalForRequest = 0.0;
      v8 = 0;
    }

    v13 = qos_class_self();
    *buf = 68290562;
    *&buf[4] = 16;
    LOWORD(v20) = 2098;
    *(&v20 + 2) = &v18;
    WORD5(v20) = 1024;
    HIDWORD(v20) = v17;
    *v21 = 2048;
    *&v21[2] = savedTimeoutIntervalForRequest;
    *&v21[10] = 2048;
    *&v21[12] = v8;
    v22 = 1024;
    v23 = v13;
    v24 = 1042;
    v25 = 16;
    v26 = 2098;
    v27 = &v28;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> resuming, timeouts(%.1f, %.1f), qos(0x%x), activity(%{public,uuid_t}.16P)", buf, 0x42u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __26__NWURLSessionTask_resume__block_invoke;
  v16[3] = &unk_1E6A3A528;
  v16[4] = self;
  *buf = MEMORY[0x1E69E9820];
  *&v20 = 0x40000000;
  *(&v20 + 1) = __nw_http_diag_log_for_level_block_invoke;
  *v21 = &unk_1E6A303F0;
  *&v21[16] = 3;
  LOBYTE(v22) = 0;
  *&v21[8] = v16;
  os_unfair_lock_lock(&lock);
  (*(&v20 + 1))(buf);
  os_unfair_lock_unlock(&lock);
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__NWURLSessionTask_resume__block_invoke_24;
  block[3] = &unk_1E6A3D868;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)restartRequestTimer
{
  if (self)
  {
    v2 = *(self + 424);
    v3 = v2 ? *(v2 + 48) : 0.0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__NWURLSessionTask_restartRequestTimer__block_invoke;
    v6[3] = &unk_1E6A3ACD0;
    v6[4] = self;
    *&v6[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v8 = __nw_http_diag_log_for_level_block_invoke;
    v9 = &unk_1E6A303F0;
    v11 = 3;
    v12 = 0;
    v10 = v6;
    os_unfair_lock_lock(&lock);
    v8(v7);
    os_unfair_lock_unlock(&lock);
    if (v3 > 0.0)
    {
      v4 = *(self + 344);
      if (v4)
      {
        v5 = dispatch_time(0x8000000000000000, (v3 * 1000000000.0));
        if (*v4)
        {
          dispatch_source_set_timer(*v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        }

        else
        {
          *(v4 + 32) = v5;
          *(v4 + 40) = -1;
          if (*(v4 + 48) == 1 && *(v4 + 49) == 1)
          {
            nw_queue_source_run_timer(v4, v5);
          }
        }
      }

      else
      {
        *(self + 344) = [(NWURLSessionTask *)self createTimerWithTimeout:v3 retryable:?];
      }
    }
  }
}

- (void)startNextLoad
{
  v90 = *MEMORY[0x1E69E9840];
  if (self)
  {
    nw_context_assert_queue(self->_sessionContext);
    configuration = self->_configuration;
  }

  else
  {
    nw_context_assert_queue(0);
    configuration = 0;
  }

  v4 = configuration;
  currentRequest = [(NWURLSessionTask *)self currentRequest];
  [(NWURLSessionTaskConfiguration *)v4 updateRequest:currentRequest];

  if (self && (v6 = self->_configuration) != 0)
  {
    protocolClasses = [(NSURLSessionConfiguration *)v6->_configuration protocolClasses];
  }

  else
  {
    protocolClasses = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v9 = protocolClasses;
  v10 = [v9 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v72;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v72 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v71 + 1) + 8 * i);
        if (([v14 isSubclassOfClass:NSClassFromString(@"_NSCFURLProtocol")] & 1) == 0)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v11);
  }

  if (self)
  {
    v15 = self->_requestBody;
    v16 = v15;
    if (v15)
    {
      knownSize = v15->_knownSize;
    }

    else
    {
      knownSize = 0;
    }

    [(NWURLSessionTask *)self setCountOfBytesExpectedToSend:?];
  }

  else
  {
    v16 = 0;
  }

  currentRequest2 = [(NWURLSessionTask *)self currentRequest];
  if (self)
  {
    v19 = self->_requestBody;
    v63 = v19;
    if (v19)
    {
      v20 = v19->_knownSize;
    }

    else
    {
      v20 = 0;
    }

    v21 = self->_configuration;
    queue = self->_queue;
  }

  else
  {
    v20 = 0;
    v63 = 0;
    v21 = 0;
    queue = 0;
  }

  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v68 = __33__NWURLSessionTask_startNextLoad__block_invoke;
  v69 = &unk_1E6A33BA8;
  selfCopy = self;
  v23 = currentRequest2;
  v66 = v21;
  v65 = queue;
  selfCopy2 = self;
  v25 = v8;
  v26 = v67;
  objc_opt_self();
  v27 = [v23 URL];
  scheme = [v27 scheme];

  v62 = scheme;
  if (!scheme)
  {
    v68(v26, 0);
    v36 = v65;
    v42 = v66;
    goto LABEL_60;
  }

  v64 = v25;
  v29 = [v23 URL];
  if ([(NSURL *)v29 _NW_isHTTPish])
  {
    v30 = [v23 URL];
    isWeb = [(NSURL *)v30 _NW_isWebSocket];

    if (!isWeb)
    {
      v36 = v65;
      v42 = v66;
      v34 = [[NWURLLoaderHTTP alloc] initWithRequest:v23 bodyKnownSize:v20 configuration:v66 queue:v65 client:selfCopy2];
      v25 = v64;
      goto LABEL_42;
    }
  }

  else
  {
  }

  v32 = [v23 URL];
  isFileURL = [v32 isFileURL];

  if (!isFileURL)
  {
    v36 = v65;
    if ([scheme caseInsensitiveCompare:@"data"])
    {
      v43 = [scheme caseInsensitiveCompare:@"about"];
      v42 = v66;
      if (v43)
      {
        v34 = 0;
        v25 = v64;
        goto LABEL_42;
      }

      v47 = [NWURLLoaderAbout alloc];
      v45 = [v23 URL];
      v46 = v45;
      if (!v47)
      {
        v34 = 0;
        goto LABEL_41;
      }

      v80.receiver = v47;
      v80.super_class = NWURLLoaderAbout;
      v34 = [(NWURLSessionTask *)&v80 init];
      if (!v34)
      {
LABEL_41:
        v25 = v64;

        goto LABEL_42;
      }
    }

    else
    {
      v44 = [NWURLLoaderData alloc];
      v45 = [v23 URL];
      v46 = v45;
      if (!v44)
      {
        v34 = 0;
        v42 = v66;
        goto LABEL_41;
      }

      v80.receiver = v44;
      v80.super_class = NWURLLoaderData;
      v34 = [(NWURLSessionTask *)&v80 init];
      v42 = v66;
      if (!v34)
      {
        goto LABEL_41;
      }
    }

    objc_storeStrong(&v34->_URL, v45);
    goto LABEL_41;
  }

  v34 = [NWURLLoaderFile alloc];
  v35 = v23;
  v36 = v65;
  v37 = v65;
  if (v34)
  {
    v80.receiver = v34;
    v80.super_class = NWURLLoaderFile;
    v34 = [(NWURLSessionTask *)&v80 init];
    if (v34)
    {
      v38 = [v35 URL];
      URL = v34->_URL;
      v34->_URL = v38;

      objc_storeStrong(&v34->_queue, queue);
      v40 = [MEMORY[0x1E695AC60] propertyForKey:@"NSURLRequestFileProtocolExpectedDevice" inRequest:v35];
      expectedDevice = v34->_expectedDevice;
      v34->_expectedDevice = v40;
    }
  }

  v42 = v66;

  v25 = v64;
LABEL_42:
  if (isWebKitNetworking_onceToken != -1)
  {
    dispatch_once(&isWebKitNetworking_onceToken, &__block_literal_global_262);
  }

  if (isWebKitNetworking_result == 1)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v48 = v25;
    v49 = [v48 countByEnumeratingWithState:&v75 objects:&v80 count:16];
    if (v49)
    {
      v50 = v49;
      v60 = v26;
      v61 = v23;
      v51 = *v76;
      while (2)
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v76 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v75 + 1) + 8 * j);
          loaderTask = [(NWURLSessionTask *)selfCopy2 loaderTask];
          v55 = [v53 canInitWithTask:loaderTask];

          if (v55)
          {
            v23 = v61;
            v36 = v65;
            v42 = v66;
            v59 = [[NWURLLoader alloc] initWithRequest:v61 configuration:v66 queue:v65 client:selfCopy2 protocolClass:v53];

            v34 = v59;
            goto LABEL_57;
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v75 objects:&v80 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }

      v23 = v61;
      v36 = v65;
      v42 = v66;
LABEL_57:
      v25 = v64;
      v26 = v60;
    }

    goto LABEL_59;
  }

  if (![v25 count])
  {
LABEL_59:
    v68(v26, v34);

    goto LABEL_60;
  }

  v80.receiver = MEMORY[0x1E69E9820];
  v80.super_class = 3221225472;
  v81 = __111__NWURLLoader_makeLoaderForRequest_bodyKnownSize_configuration_queue_client_protocolClasses_completionHandler___block_invoke;
  v82 = &unk_1E6A3B580;
  v83 = v34;
  v84 = v25;
  v56 = selfCopy2;
  v85 = v56;
  v86 = v23;
  v87 = v42;
  v88 = v36;
  v89 = v26;
  v57 = v26;
  v58 = v34;
  [(NWURLSessionTask *)v56 loaderCallCustomURLProtocol:&v80];

  v26 = v57;
LABEL_60:
}

void __26__NWURLSessionTask_resume__block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1 || (*(v1 + 18) & 1) == 0)
  {
    return;
  }

  *(v1 + 18) = 0;
  v3 = *(a1 + 32);
  if (v3 && *(v3 + 296))
  {
    if (*(v3 + 19) != 1 || (*(v3 + 19) = 0, [(NWURLSessionTask *)*(a1 + 32) readResponseBody], (v3 = *(a1 + 32)) != 0))
    {
      v18 = *(v3 + 304);
      if (v18)
      {
        v5 = *(a1 + 32);
        if (v5)
        {
          objc_setProperty_nonatomic_copy(v5, v4, 0, 304);
        }

        v18[2]();
      }
    }

    return;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __26__NWURLSessionTask_resume__block_invoke_2;
  v23[3] = &unk_1E6A3A528;
  v23[4] = v3;
  block = MEMORY[0x1E69E9820];
  v25 = 0x40000000;
  v26 = __nw_http_diag_log_for_level_block_invoke;
  v27 = &unk_1E6A303F0;
  LODWORD(v29) = 3;
  BYTE4(v29) = 1;
  v28 = v23;
  os_unfair_lock_lock(&lock);
  v26(&block);
  os_unfair_lock_unlock(&lock);
  v6 = *(a1 + 32);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_23;
  }

  *(v6 + 296) = 1;
  v7 = *(a1 + 32);
  if (!v7)
  {
LABEL_23:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = v7[52];
LABEL_16:
  [(NWURLSession *)v8 taskStarted:v7];
  v9 = [*(a1 + 32) earliestBeginDate];
  [v9 timeIntervalSinceNow];
  v11 = v10;

  v12 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __26__NWURLSessionTask_resume__block_invoke_25;
  v21 = &unk_1E6A3D868;
  v22 = v12;
  v13 = v19;
  v14 = v13;
  if (v12)
  {
    if (v11 > 0.0)
    {
      v15 = dispatch_time(0x8000000000000000, (v11 * 1000000000.0));
      v16 = v12;
      v17 = *(v12 + 232);
      block = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __54__NWURLSessionTask_startDelayTimer_completionHandler___block_invoke;
      v27 = &unk_1E6A3D710;
      v28 = v16;
      v29 = v14;
      dispatch_after(v15, v17, &block);
    }

    else
    {
      v20(v13);
    }
  }
}

void __26__NWURLSessionTask_resume__block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_30;
  }

  if (*(v2 + 296) == 2)
  {
    return;
  }

  v3 = *(v2 + 424);
  if (!v3 || ([*(v3 + 32) _startTimeoutDate], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
LABEL_15:
    v9 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_30;
    }

LABEL_16:
    v14 = *(v9 + 424);
    if (v14)
    {
      [*(v14 + 24) _timeoutIntervalForResource];
      if (v15 == 0.0)
      {
        [*(v14 + 16) timeoutIntervalForResource];
      }

      else
      {
        [*(v14 + 24) _timeoutIntervalForResource];
      }

      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = *(v9 + 464);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (v18 == 0.0)
    {
      *(v9 + 464) = v19;
    }

    else
    {
      v17 = v17 - (v19 - *(v9 + 464));
      if (v17 <= 0.0)
      {
        v17 = 0.0;
      }
    }

    v20 = *(v9 + 424);
    v21 = v20;
    if (v20)
    {
      v22 = [v20[4] _startTimeoutDate];
      if (v22)
      {
        v23 = v22;
        v24 = *(v9 + 424);
        if (v24)
        {
          [*(v24 + 32) _payloadTransmissionTimeout];
          v26 = v25;

          if (v26 != 0.0 || *(v9 + 336))
          {
            goto LABEL_30;
          }

LABEL_43:
          v34 = MEMORY[0x1E69E9820];
          v35 = 3221225472;
          v36 = __38__NWURLSessionTask_startResourceTimer__block_invoke;
          v37 = &unk_1E6A3ACD0;
          v38 = v9;
          v39 = v17;
          v40 = MEMORY[0x1E69E9820];
          v41 = 0x40000000;
          v42 = __nw_http_diag_log_for_level_block_invoke;
          v43 = &unk_1E6A303F0;
          v45 = 3;
          v46 = 0;
          v44 = &v34;
          os_unfair_lock_lock(&lock);
          v42(&v40);
          os_unfair_lock_unlock(&lock);
          *(v9 + 336) = [(NWURLSessionTask *)v9 createTimerWithTimeout:v17 retryable:?];
          goto LABEL_30;
        }
      }
    }

    if (*(v9 + 336))
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  v5 = *(v2 + 424);
  if (v5)
  {
    v6 = [*(v5 + 32) _startTimeoutDate];
  }

  else
  {
    v6 = 0;
  }

  [v6 timeIntervalSinceNow];
  v8 = v7;

  if (v8 <= 0.0)
  {
    v10 = [NWURLError alloc];
    v11 = *(v2 + 264);
    v12 = v2;
    if (v10)
    {
      v13 = [(NWURLError *)v10 initWithErrorCode:-1001];
      v10 = v13;
      if (v13)
      {
        [(NWURLError *)v13 fillErrorForLoader:v11 andTask:v12];
      }
    }

    [v12 completeTaskWithError:v10 retryable:0];
    goto LABEL_15;
  }

  if (*(v2 + 352))
  {
    goto LABEL_15;
  }

  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __35__NWURLSessionTask_startStartTimer__block_invoke;
  v37 = &unk_1E6A3ACD0;
  v38 = v2;
  v39 = v8;
  v40 = MEMORY[0x1E69E9820];
  v41 = 0x40000000;
  v42 = __nw_http_diag_log_for_level_block_invoke;
  v43 = &unk_1E6A303F0;
  v45 = 3;
  v46 = 0;
  v44 = &v34;
  os_unfair_lock_lock(&lock);
  v42(&v40);
  os_unfair_lock_unlock(&lock);
  *(v2 + 352) = [(NWURLSessionTask *)v2 createTimerWithTimeout:v8 retryable:?];
  v9 = *(a1 + 32);
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_30:
  [(NWURLSessionTask *)*(a1 + 32) restartRequestTimer];
  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = v27[55];
    if (v28)
    {
      v34 = 0;
      v29 = v28;
      v30 = [v27 currentRequest];
      v31 = [v29 prepareNextRequest:v30 forTask:*(a1 + 32) error:&v34];

      v33 = *(a1 + 32);
      if (!v31)
      {
        [v33 completeTaskWithError:v34 retryable:0];

        return;
      }

      if (v33)
      {
        objc_setProperty_nonatomic_copy(v33, v32, v31, 56);
      }

      v27 = *(a1 + 32);
    }
  }

  [v27 startNextLoad];
}

void __33__NWURLSessionTask_startNextLoad__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = *(a1 + 32);
  if (!v6)
  {
    if (v4)
    {
      goto LABEL_5;
    }

    v8 = 0;
    goto LABEL_8;
  }

  if (*(v6 + 296) != 2)
  {
    if (v4)
    {
      objc_storeStrong((v6 + 264), a2);
LABEL_5:
      v7 = v5;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __33__NWURLSessionTask_startNextLoad__block_invoke_2;
      v9[3] = &unk_1E6A3D760;
      v9[4] = *(a1 + 32);
      v10 = v7;
      [v7 start:v9];

      goto LABEL_6;
    }

    v8 = [(NWURLSessionTask *)*(a1 + 32) errorForErrorCode:?];
LABEL_8:
    [v6 completeTaskWithError:v8 retryable:0];
  }

LABEL_6:
}

- (OS_nw_protocol_metadata)clientMetadata
{
  if (self)
  {
    self = self->_clientMetadataForMetrics;
  }

  return self;
}

- (int64_t)backgroundSchedulingPriority
{
  if (self)
  {
    return *(self + 328);
  }

  return self;
}

void __33__NWURLSessionTask_startNextLoad__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 264) == *(a1 + 40))
    {
      v3 = *(v2 + 424);
      if (!v3 || ([*(v3 + 24) _preconnect] & 1) == 0 && (v2 = *(a1 + 32)) != 0)
      {
        nw_context_assert_queue(*(v2 + 320));
        v4 = *(v2 + 264);
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __32__NWURLSessionTask_readResponse__block_invoke;
        v6[3] = &unk_1E6A33C70;
        v6[4] = v2;
        v7 = v4;
        v5 = v4;
        [v5 readResponse:v6];
      }
    }
  }
}

- (void)performNextServerTrustChallenge
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 24) == 1)
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v2 = gurlLogObj;
      *buf = 136446466;
      v17 = "[NWURLSessionTask performNextServerTrustChallenge]";
      v18 = 2112;
      selfCopy5 = self;
      v3 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v14 = 0;
      if (__nwlog_fault(v3, &type, &v14))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v4 = gurlLogObj;
          v5 = type;
          if (os_log_type_enabled(v4, type))
          {
            *buf = 136446466;
            v17 = "[NWURLSessionTask performNextServerTrustChallenge]";
            v18 = 2112;
            selfCopy5 = self;
            v6 = "%{public}s Already performing server trust challenge %@";
LABEL_30:
            v11 = v4;
            v12 = v5;
LABEL_31:
            _os_log_impl(&dword_181A37000, v11, v12, v6, buf, 0x16u);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        if (v14 != 1)
        {
          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v4 = gurlLogObj;
          v5 = type;
          if (os_log_type_enabled(v4, type))
          {
            *buf = 136446466;
            v17 = "[NWURLSessionTask performNextServerTrustChallenge]";
            v18 = 2112;
            selfCopy5 = self;
            v6 = "%{public}s Already performing server trust challenge %@, backtrace limit exceeded";
            goto LABEL_30;
          }

LABEL_32:

          if (!v3)
          {
            return;
          }

LABEL_24:
          free(v3);
          return;
        }

        backtrace_string = __nw_create_backtrace_string();
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v4 = gurlLogObj;
        v9 = type;
        v10 = os_log_type_enabled(v4, type);
        if (!backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v17 = "[NWURLSessionTask performNextServerTrustChallenge]";
            v18 = 2112;
            selfCopy5 = self;
            v6 = "%{public}s Already performing server trust challenge %@, no backtrace";
            v11 = v4;
            v12 = v9;
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        if (v10)
        {
          *buf = 136446722;
          v17 = "[NWURLSessionTask performNextServerTrustChallenge]";
          v18 = 2112;
          selfCopy5 = self;
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v9, "%{public}s Already performing server trust challenge %@, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
      }

      if (!v3)
      {
        return;
      }

      goto LABEL_24;
    }

    firstObject = [*(self + 400) firstObject];
    if (firstObject)
    {
      v13 = firstObject;
      [*(self + 400) removeObjectAtIndex:0];
      v13[2](v13);
      firstObject = v13;
    }
  }
}

uint64_t __43__NWURLSessionTask_finishProgressReporting__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 368);
  }

  else
  {
    v3 = 0;
  }

  [v3 setCancellationHandler:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 368);
  }

  else
  {
    v5 = 0;
  }

  [v5 setPausingHandler:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 368);
  }

  else
  {
    v7 = 0;
  }

  return [v7 setResumingHandler:0];
}

- (NWURLError)error
{
  if (self)
  {
    self = self->_responseConsumer;
  }

  return [(NWURLSessionTask *)self error];
}

- (void)dealloc
{
  [(NWURLSessionTask *)self setSecTrust:0];
  v3.receiver = self;
  v3.super_class = NWURLSessionTask;
  [(NWURLSessionTask *)&v3 dealloc];
}

- (void)set_expectedProgressTarget:(unint64_t)target
{
  v13 = *MEMORY[0x1E69E9840];
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v4 = gurlLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    *buf = 68289282;
    v8 = 16;
    v9 = 2098;
    v10 = &v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "Task <%{public,uuid_t}.16P>.<%u> expected progress target not supported", buf, 0x18u);
  }
}

- (unint64_t)_expectedProgressTarget
{
  v13 = *MEMORY[0x1E69E9840];
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v3 = gurlLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    *buf = 68289282;
    v8 = 16;
    v9 = 2098;
    v10 = &v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "Task <%{public,uuid_t}.16P>.<%u> expected progress target not supported", buf, 0x18u);
  }

  return 0;
}

- (int64_t)_countOfBytesReceivedEncoded
{
  clientMetadata = [(NWURLSessionTask *)self clientMetadata];
  v3 = nw_http_client_metadata_copy_current_transaction_metadata(clientMetadata);

  inbound_body_transfer_size = nw_http_transaction_metadata_get_inbound_body_transfer_size(v3);
  return inbound_body_transfer_size;
}

- (void)_adoptEffectiveConfiguration:(id)configuration
{
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (!self || !self->_internalState)
  {
    uRLCredentialStorage = [configurationCopy URLCredentialStorage];

    if (uRLCredentialStorage)
    {
      if (!self)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!self)
      {
LABEL_20:
        v12 = v6;
LABEL_18:

        goto LABEL_19;
      }

      self->_disabledCredentialStorage = 1;
    }

    configuration = self->_configuration;
    v10 = v6;
    if (configuration)
    {
      objc_storeStrong(&configuration->_configuration, configuration);
      if ([(NSURLRequest *)configuration->_request _explicitlySetTimeoutInterval])
      {
        [(NSURLRequest *)configuration->_request timeoutInterval];
      }

      else
      {
        [(NSURLSessionConfiguration *)configuration->_configuration timeoutIntervalForRequest];
      }

      configuration->_savedTimeoutIntervalForRequest = v11;
    }

    goto LABEL_18;
  }

  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v7 = gurlLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    *buf = 68289282;
    v16 = 16;
    v17 = 2098;
    v18 = &v14;
    v19 = 1024;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "Task <%{public,uuid_t}.16P>.<%u> cannot adopt effective configuration after resuming the task", buf, 0x18u);
  }

LABEL_19:
}

- (void)_setExplicitCookieStorage:(OpaqueCFHTTPCookieStorage *)storage
{
  if (!self)
  {
    if (!storage)
    {
      return;
    }

    goto LABEL_3;
  }

  self->_explicitlySetCookieStorage = 1;
  if (storage)
  {
LABEL_3:
    v7 = [objc_alloc(MEMORY[0x1E695AC00]) _initWithCFHTTPCookieStorage:storage];
    v4 = objc_alloc_init(NWConcrete_nw_http_cookie_storage);
    cookieStorage = v4->cookieStorage;
    v4->cookieStorage = v7;

    if (self)
    {
      objc_storeStrong(&self->_cookieStorage, v4);
    }

    v6 = v7;
    goto LABEL_7;
  }

  v6 = self->_cookieStorage;
  self->_cookieStorage = 0;
LABEL_7:
}

- (NSURLSessionTaskTransactionMetrics)_incompleteCurrentTaskTransactionMetrics
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 456, 1);
    v3 = Property;
    if (Property)
    {
      v4 = nw_http_client_metadata_copy_current_transaction_metadata(Property[2]);
      v3 = [[NWURLSessionTaskTransactionMetrics alloc] initWithTransactionMetadata:v4 clientMetadata:v3[2]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURLSessionTaskMetrics)_incompleteTaskMetrics
{
  if (self)
  {
    self = objc_getProperty(self, a2, 456, 1);
    v2 = vars8;
  }

  return self;
}

- (void)getUnderlyingHTTPConnectionInfoWithCompletionHandler:(id)handler
{
  if (self)
  {
    objc_setProperty_atomic_copy(self, a2, handler, 312);
  }
}

- (void)setBackgroundSchedulingPriority:(int64_t)priority
{
  if (self)
  {
    if (self->_backgroundSchedulingPriorityInternal == priority)
    {
      return;
    }

    self->_backgroundSchedulingPriorityInternal = priority;
    queue = self->_queue;
    goto LABEL_4;
  }

  if (priority)
  {
    queue = 0;
LABEL_4:
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__NWURLSessionTask_setBackgroundSchedulingPriority___block_invoke;
    block[3] = &unk_1E6A3D868;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __52__NWURLSessionTask_setBackgroundSchedulingPriority___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(v1 + 264);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      v6 = v5 ? *(v5 + 264) : 0;
      v7 = [v6 underlyingConnection];

      if (!v7)
      {
        [(NWURLSessionTask *)*(a1 + 32) pauseTaskForRetry];
        v9 = *(a1 + 32);

        [(NWURLSessionTask *)v9 resumeTaskAndRetry];
      }
    }
  }
}

- (void)pauseTaskForRetry
{
  if (!self)
  {
    return;
  }

  v2 = self[53];
  if (v2)
  {
    if (*(v2 + 48) > 0.0)
    {
      v3 = self[43];
      if (v3)
      {
        if (*v3)
        {
          selfCopy2 = self;
          dispatch_source_set_timer(*v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
LABEL_7:
          self = selfCopy2;
          goto LABEL_11;
        }

        *(v3 + 32) = -1;
        *(v3 + 40) = -1;
        if (*(v3 + 48) == 1 && *(v3 + 49) == 1)
        {
          selfCopy2 = self;
          nw_queue_source_run_timer(v3, a2);
          goto LABEL_7;
        }
      }
    }
  }

LABEL_11:
  v5 = self[33];
  self[33] = 0;
  v6 = v5;

  [v6 stop];
}

- (void)resumeTaskAndRetry
{
  if (self)
  {
    v7 = 0;
    v2 = *(self + 440);
    currentRequest = [self currentRequest];
    v4 = [v2 prepareNextRequest:currentRequest forTask:self error:&v7];

    if (v4)
    {
      objc_setProperty_nonatomic_copy(self, v5, v4, 56);
      v6 = *(self + 280);
      *(self + 280) = 0;

      nw_http_client_metadata_create_next_transaction(*(self + 256), 3);
      [(NWURLSessionTask *)self restartRequestTimer];
      [self startNextLoad];
    }

    else
    {
      [self completeTaskWithError:v7 retryable:0];
    }
  }
}

void __39__NWURLSessionTask_restartRequestTimer__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
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
      [v3 logDescription];
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 logDescription];
        v5 = v7;
LABEL_9:
        v6 = *(a1 + 40);
        *buf = 68289538;
        v11 = 16;
        v12 = 2098;
        v13 = v8;
        v14 = 1024;
        v15 = v5;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Restarting request timeout for %f seconds.", buf, 0x22u);
        goto LABEL_10;
      }
    }

    else
    {
      v8[0] = 0;
      v8[1] = 0;
      v9 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (uint64_t)createTimerWithTimeout:(double)timeout retryable:
{
  if (timeout > 31536000.0)
  {
    return 0;
  }

  v5 = *(self + 320);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__NWURLSessionTask_createTimerWithTimeout_retryable___block_invoke;
  v9[3] = &unk_1E6A3A258;
  v9[4] = self;
  v10 = a2;
  source = nw_queue_context_create_source(v5, 2, 3, 0, v9, 0);
  v7 = dispatch_time(0x8000000000000000, (timeout * 1000000000.0));
  nw_queue_set_timer_values(source, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  nw_queue_activate_source(source, v8);
  return source;
}

void __53__NWURLSessionTask_createTimerWithTimeout_retryable___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [NWURLError alloc];
    v4 = v2[33];
    v5 = v2;
    if (v3 && (v6 = [(NWURLError *)v3 initWithErrorCode:-1001]) != 0)
    {
      v7 = v6;
      [(NWURLError *)v6 fillErrorForLoader:v4 andTask:v5];
    }

    else
    {
      v7 = 0;
    }

    [v2 completeTaskWithError:v7 retryable:*(a1 + 40)];
  }

  else
  {
    v7 = 0;
    [0 completeTaskWithError:0 retryable:*(a1 + 40)];
  }
}

- (void)stopAndRetryWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__NWURLSessionTask_stopAndRetryWithError___block_invoke;
  v7[3] = &unk_1E6A3D760;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

uint64_t __42__NWURLSessionTask_stopAndRetryWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) automaticRetry];
  if (result)
  {
    result = *(a1 + 32);
    if (!result || (*(result + 21) & 1) == 0 && *(result + 296) != 2)
    {
      v3 = *(a1 + 40);

      return [result completeTaskWithError:v3 retryable:1];
    }
  }

  return result;
}

- (void)retryImmediately
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__NWURLSessionTask_retryImmediately__block_invoke;
  block[3] = &unk_1E6A3D868;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__NWURLSessionTask_retryImmediately__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) automaticRetry])
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (*(v2 + 21) == 1 && *(v2 + 296) != 2)
      {
        v3 = *(v2 + 280);
        *(v2 + 280) = 0;

        v4 = *(a1 + 32);
        if (v4 && (*(v4 + 21) = 0, (v5 = *(a1 + 32)) != 0))
        {
          *(v5 + 20) = 0;
          v6 = *(a1 + 32);
        }

        else
        {
          v6 = 0;
        }

        [(NWURLSessionTask *)v6 resumeTaskAndRetry];
      }
    }
  }
}

- (NSProgress)progress
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__NWURLSessionTask_progress__block_invoke;
  v5[3] = &unk_1E6A3D868;
  v5[4] = self;
  os_unfair_lock_lock(&self->progressLock);
  __28__NWURLSessionTask_progress__block_invoke(v5);
  os_unfair_lock_unlock(&self->progressLock);
  if (self)
  {
    internalProgress = self->_internalProgress;
  }

  else
  {
    internalProgress = 0;
  }

  return internalProgress;
}

void __28__NWURLSessionTask_progress__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 368))
  {
    return;
  }

  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 368), v3);
  }

  v5 = [*(a1 + 32) countOfBytesExpectedToSend];
  v6 = *(a1 + 32);
  if (v5 <= 0)
  {
    v8 = 0;
    if (v6)
    {
      v6[22] = 1;
    }

    v7 = 100;
  }

  else
  {
    v7 = [v6 countOfBytesExpectedToSend];
    v8 = [*(a1 + 32) countOfBytesSent];
  }

  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v7];
  v10 = *(a1 + 32);
  if (v10)
  {
    objc_storeStrong((v10 + 376), v9);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 376);
  }

  else
  {
    v12 = 0;
  }

  [v12 setCompletedUnitCount:v8];
  v13 = [*(a1 + 32) countOfBytesExpectedToReceive];
  v14 = *(a1 + 32);
  if (v13 <= 0)
  {
    v16 = 0;
    if (v14)
    {
      v14[23] = 1;
    }

    v15 = 100;
  }

  else
  {
    v15 = [v14 countOfBytesExpectedToReceive];
    v16 = [*(a1 + 32) countOfBytesReceived];
  }

  v17 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v15];
  v18 = *(a1 + 32);
  if (v18)
  {
    objc_storeStrong((v18 + 384), v17);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 384);
  }

  else
  {
    v20 = 0;
  }

  [v20 setCompletedUnitCount:v16];
  v21 = [*(a1 + 32) isUpload];
  if (v21)
  {
    v22 = 95;
  }

  else
  {
    v22 = 5;
  }

  if (v21)
  {
    v23 = 5;
  }

  else
  {
    v23 = 95;
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = *(v24 + 368);
    v26 = *(v24 + 376);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = v25;
  [v27 addChild:v26 withPendingUnitCount:v22];

  v28 = *(a1 + 32);
  if (v28)
  {
    v29 = *(v28 + 368);
    v30 = *(v28 + 384);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v31 = v29;
  [v31 addChild:v30 withPendingUnitCount:v23];

  v32 = *(a1 + 32);
  if (v32)
  {
    v33 = *(v32 + 368);
  }

  else
  {
    v33 = 0;
  }

  [v33 setKind:*MEMORY[0x1E696A888]];
  v34 = *(a1 + 32);
  if (v34)
  {
    v35 = *(v34 + 368);
  }

  else
  {
    v35 = 0;
  }

  [v35 setFileTotalCount:&unk_1EF011D38];
  if ([*(a1 + 32) countOfBytesReceived] >= 1)
  {
    v36 = *(a1 + 32);
    if (!v36)
    {
      v40 = 0;
      v39 = *MEMORY[0x1E696A848];
      goto LABEL_41;
    }

    v37 = *(v36 + 376);
    [*(v36 + 376) setCompletedUnitCount:{objc_msgSend(v37, "totalUnitCount")}];

    v38 = *(a1 + 32);
    v39 = *MEMORY[0x1E696A848];
    if (v38)
    {
      goto LABEL_40;
    }

LABEL_50:
    v40 = 0;
    goto LABEL_41;
  }

  v39 = *MEMORY[0x1E696A870];
  v38 = *(a1 + 32);
  if (!v38)
  {
    goto LABEL_50;
  }

LABEL_40:
  v40 = *(v38 + 368);
LABEL_41:
  [v40 setFileOperationKind:v39];
  objc_initWeak(&location, *(a1 + 32));
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __28__NWURLSessionTask_progress__block_invoke_103;
  v51[3] = &unk_1E6A3A6C8;
  objc_copyWeak(&v52, &location);
  v41 = *(a1 + 32);
  if (v41)
  {
    v41 = v41[46];
  }

  v42 = v41;
  [v42 setCancellationHandler:v51];

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __28__NWURLSessionTask_progress__block_invoke_2;
  v49[3] = &unk_1E6A3A6C8;
  objc_copyWeak(&v50, &location);
  v43 = *(a1 + 32);
  if (v43)
  {
    v43 = v43[46];
  }

  v44 = v43;
  [v44 setPausingHandler:v49];

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __28__NWURLSessionTask_progress__block_invoke_3;
  v47[3] = &unk_1E6A3A6C8;
  objc_copyWeak(&v48, &location);
  v45 = *(a1 + 32);
  if (v45)
  {
    v45 = v45[46];
  }

  v46 = v45;
  [v46 setResumingHandler:v47];

  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

void __28__NWURLSessionTask_progress__block_invoke_103(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void __28__NWURLSessionTask_progress__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained suspend];
}

void __28__NWURLSessionTask_progress__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resume];
}

- (BOOL)isUpload
{
  currentRequest = [(NWURLSessionTask *)self currentRequest];
  hTTPBody = [currentRequest HTTPBody];
  if (hTTPBody)
  {
    v4 = 1;
  }

  else
  {
    hTTPBodyStream = [currentRequest HTTPBodyStream];
    if (hTTPBodyStream)
    {
      v4 = 1;
    }

    else
    {
      hTTPMethod = [currentRequest HTTPMethod];
      if ([hTTPMethod caseInsensitiveCompare:@"POST"])
      {
        hTTPMethod2 = [currentRequest HTTPMethod];
        if ([hTTPMethod2 caseInsensitiveCompare:@"PUT"])
        {
          hTTPMethod3 = [currentRequest HTTPMethod];
          v4 = [hTTPMethod3 caseInsensitiveCompare:@"PATCH"] == 0;
        }

        else
        {
          v4 = 1;
        }
      }

      else
      {
        v4 = 1;
      }
    }
  }

  return v4;
}

- (void)setPrefersIncrementalDelivery:(BOOL)delivery
{
  if (self->_prefersIncrementalDelivery != delivery)
  {
    self->_prefersIncrementalDelivery = delivery;
  }
}

- (void)setPriority:(float)priority
{
  if (priority >= 0.0 && priority <= 1.0 && self->_priority != priority)
  {
    self->_priority = priority;
  }
}

- (void)loaderDidSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send completionHandler:(id)handler
{
  handlerCopy = handler;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __100__NWURLSessionTask_loaderDidSendBodyData_totalBytesSent_totalBytesExpectedToSend_completionHandler___block_invoke;
  v38[3] = &unk_1E6A33E70;
  v38[4] = self;
  v38[5] = sent;
  v38[6] = send;
  v39 = MEMORY[0x1E69E9820];
  v40 = 0x40000000;
  v41 = __nw_http_diag_log_for_level_block_invoke;
  v42 = &unk_1E6A303F0;
  LODWORD(v44) = 2;
  BYTE4(v44) = 0;
  v43 = v38;
  os_unfair_lock_lock(&lock);
  v41(&v39);
  os_unfair_lock_unlock(&lock);
  if (self)
  {
    [(NWURLSessionTask *)self willChangeValueForKey:@"countOfBytesSent"];
    self->_countOfBytesSent = sent;
    [(NWURLSessionTask *)self didChangeValueForKey:@"countOfBytesSent"];
    v11 = self->_internalProgress;
    if (v11)
    {
      internalState = self->_internalState;

      if (internalState != 2)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithLongLong:sent];
        progress = [(NWURLSessionTask *)self progress];
        [progress setByteCompletedCount:v13];

        uploadProgress = self->_uploadProgress;
        if (self->_defaultUploadProgressState)
        {
          v16 = uploadProgress;
          completedUnitCount = [(NSProgress *)v16 completedUnitCount];
          v18 = [(NSProgress *)self->_uploadProgress totalUnitCount]- 1;

          if (completedUnitCount < v18)
          {
            v19 = self->_uploadProgress;
            [(NSProgress *)v19 setCompletedUnitCount:[(NSProgress *)v19 completedUnitCount]+ 1];
          }
        }

        else
        {
          [(NSProgress *)uploadProgress setCompletedUnitCount:sent];
        }
      }
    }

    [(NWURLSessionTask *)self setCountOfBytesExpectedToSend:send];
    [(NWURLSessionTask *)self restartRequestTimer];
    v20 = 248;
    if (!self->_internalDelegateWrapper)
    {
      v20 = 240;
    }

    v21 = *(&self->super.isa + v20);
  }

  else
  {
    [(NWURLSessionTask *)0 setCountOfBytesExpectedToSend:send];
    [(NWURLSessionTask *)0 restartRequestTimer];
    v21 = 0;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __100__NWURLSessionTask_loaderDidSendBodyData_totalBytesSent_totalBytesExpectedToSend_completionHandler___block_invoke_91;
  v35 = &unk_1E6A3D710;
  selfCopy = self;
  v37 = handlerCopy;
  v22 = handlerCopy;
  selfCopy2 = self;
  v25 = v33;
  if (v21)
  {
    delegateFor_didSendBodyData = [(NWURLSessionDelegateWrapper *)v21 delegateFor_didSendBodyData];
    if (delegateFor_didSendBodyData)
    {
      v27 = v21[5];
      v28 = v21[6];
      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __110__NWURLSessionDelegateWrapper_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend_completionHandler___block_invoke;
      v42 = &unk_1E6A3B698;
      v43 = delegateFor_didSendBodyData;
      v44 = v27;
      v29 = selfCopy2;
      dataCopy = data;
      sentCopy = sent;
      sendCopy = send;
      v45 = v29;
      v46 = v28;
      v47 = v25;
      v30 = v21[7];
      v31 = v28;
      v32 = v27;
      [(NWURLSessionDelegateQueue *)v30 runDelegateBlock:?];
    }

    else
    {
      (v34)(v25);
    }
  }
}

void __100__NWURLSessionTask_loaderDidSendBodyData_totalBytesSent_totalBytesExpectedToSend_completionHandler___block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v2 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    if (v3)
    {
      [v3 logDescription];
      v4 = a1[4];
      if (v4)
      {
        [v4 logDescription];
        v5 = v8;
LABEL_9:
        v6 = a1[5];
        v7 = a1[6];
        *buf = 68289794;
        v12 = 16;
        v13 = 2098;
        v14 = v9;
        v15 = 1024;
        v16 = v5;
        v17 = 2048;
        v18 = v6;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> sent %lld request body bytes of expected %lld", buf, 0x2Cu);
        goto LABEL_10;
      }
    }

    else
    {
      v9[0] = 0;
      v9[1] = 0;
      v10 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setCountOfBytesExpectedToSend:(uint64_t)send
{
  if (send)
  {
    [send willChangeValueForKey:@"countOfBytesExpectedToSend"];
    *(send + 104) = a2;
    [send didChangeValueForKey:@"countOfBytesExpectedToSend"];
    v4 = *(send + 368);
    if (v4)
    {
      v5 = *(send + 296);

      if (v5 != 2)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
        progress = [send progress];
        [progress setByteTotalCount:v6];

        if (a2 >= 1)
        {
          v8 = a2;
        }

        else
        {
          v8 = 100;
        }

        *(send + 22) = a2 < 1;
        v9 = *(send + 376);

        [v9 setTotalUnitCount:v8];
      }
    }
  }
}

void __100__NWURLSessionTask_loaderDidSendBodyData_totalBytesSent_totalBytesExpectedToSend_completionHandler___block_invoke_91(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (v3[18] & 1) != 0)
  {
    objc_setProperty_nonatomic_copy(v3, a2, *(a1 + 40), 304);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)loaderDidReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  handlerCopy = handler;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v8 = gurlLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    v9 = v30;
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    proposedCredential = [challengeCopy proposedCredential];
    *buf = 68289794;
    v33 = 16;
    v34 = 2098;
    v35 = &v31;
    v36 = 1024;
    v37 = v9;
    v38 = 2114;
    v39 = authenticationMethod;
    v40 = 1024;
    v41 = proposedCredential != 0;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> received auth challenge {method=%{public}@, proposed=%{BOOL}d}", buf, 0x28u);
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  if ([protectionSpace2 isProxy])
  {
    goto LABEL_6;
  }

  previousFailureCount = [challengeCopy previousFailureCount];

  if (previousFailureCount)
  {
    goto LABEL_8;
  }

  currentRequest = [(NWURLSessionTask *)self currentRequest];
  protectionSpace2 = [currentRequest URL];

  user = [protectionSpace2 user];
  password = [protectionSpace2 password];
  v21 = password;
  if (!user || !password)
  {

LABEL_6:
LABEL_8:
    if (self)
    {
      configuration = self->_configuration;
      if (configuration)
      {
        if (configuration->_savedTimeoutIntervalForRequest > 0.0)
        {
          requestTimeoutTimer = self->_requestTimeoutTimer;
          if (requestTimeoutTimer)
          {
            if (*requestTimeoutTimer)
            {
              dispatch_source_set_timer(*requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
            }

            else
            {
              requestTimeoutTimer[4] = -1;
              requestTimeoutTimer[5] = -1;
              if (*(requestTimeoutTimer + 48) == 1 && *(requestTimeoutTimer + 49) == 1)
              {
                nw_queue_source_run_timer(requestTimeoutTimer, v14);
              }
            }
          }
        }
      }

      v24 = 248;
      if (!self->_internalDelegateWrapper)
      {
        v24 = 240;
      }

      v25 = *(&self->super.isa + v24);
    }

    else
    {
      v25 = 0;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__NWURLSessionTask_loaderDidReceiveChallenge_completionHandler___block_invoke;
    v26[3] = &unk_1E6A33E48;
    v26[4] = self;
    v27 = handlerCopy;
    [(NWURLSessionDelegateWrapper *)v25 task:challengeCopy didReceiveChallenge:v26 completionHandler:?];

    goto LABEL_28;
  }

  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v22 = gurlLogObj;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    *buf = 68289282;
    v33 = 16;
    v34 = 2098;
    v35 = &v29;
    v36 = 1024;
    v37 = v28;
    _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> responding to auth challenge using URL credential", buf, 0x18u);
  }

  v23 = [MEMORY[0x1E695AC48] credentialWithUser:user password:v21 persistence:1];
  (*(handlerCopy + 2))(handlerCopy, 0, v23);

LABEL_28:
}

void __64__NWURLSessionTask_loaderDidReceiveChallenge_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v6 = gurlLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 logDescription];
      v8 = *(a1 + 32);
      if (v8)
      {
        [v8 logDescription];
        v9 = v13;
LABEL_9:
        *buf = 68289794;
        v17 = 16;
        v18 = 2098;
        v19 = v14;
        v20 = 1024;
        v21 = v9;
        v22 = 2048;
        v23 = a2;
        v24 = 1024;
        v25 = v5 != 0;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> responding to auth challenge {disposition=%ld, credential=%{BOOL}d}", buf, 0x28u);
        goto LABEL_10;
      }
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0;
      v15 = 0;
    }

    v9 = 0;
    goto LABEL_9;
  }

LABEL_10:

  [(NWURLSessionTask *)*(a1 + 32) restartRequestTimer];
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v10, v11, v12);
}

- (void)loaderDidReceiveClientCertificateChallenge:(id)challenge completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  challengeCopy = challenge;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v8 = gurlLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    *buf = 68289282;
    v31 = 16;
    v32 = 2098;
    v33 = &v29;
    v34 = 1024;
    v35 = v28;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> received client cert challenge", buf, 0x18u);
  }

  currentRequest = [(NWURLSessionTask *)self currentRequest];
  v10 = [currentRequest URL];
  host = [v10 host];

  currentRequest2 = [(NWURLSessionTask *)self currentRequest];
  v13 = [currentRequest2 URL];
  port = [v13 port];

  v15 = objc_alloc(MEMORY[0x1E695AC58]);
  if (port)
  {
    v16 = v15;
    integerValue = [port integerValue];
    v15 = v16;
  }

  else
  {
    integerValue = 443;
  }

  v18 = [v15 initWithHost:host port:integerValue protocol:*MEMORY[0x1E695ABA0] realm:0 authenticationMethod:*MEMORY[0x1E695AB40]];
  [v18 _setDistinguishedNames:challengeCopy];

  v20 = [objc_alloc(MEMORY[0x1E695AC30]) initWithProtectionSpace:v18 proposedCredential:0 previousFailureCount:0 failureResponse:0 error:0 sender:0];
  if (self)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      if (configuration->_savedTimeoutIntervalForRequest > 0.0)
      {
        requestTimeoutTimer = self->_requestTimeoutTimer;
        if (requestTimeoutTimer)
        {
          if (*requestTimeoutTimer)
          {
            dispatch_source_set_timer(*requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          }

          else
          {
            requestTimeoutTimer[4] = -1;
            requestTimeoutTimer[5] = -1;
            if (*(requestTimeoutTimer + 48) == 1 && *(requestTimeoutTimer + 49) == 1)
            {
              nw_queue_source_run_timer(requestTimeoutTimer, v19);
            }
          }
        }
      }
    }

    v23 = 248;
    if (!self->_internalDelegateWrapper)
    {
      v23 = 240;
    }

    v24 = *(&self->super.isa + v23);
  }

  else
  {
    v24 = 0;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__NWURLSessionTask_loaderDidReceiveClientCertificateChallenge_completionHandler___block_invoke;
  v26[3] = &unk_1E6A33E48;
  v26[4] = self;
  v27 = handlerCopy;
  v25 = handlerCopy;
  [(NWURLSessionDelegateWrapper *)v24 task:v20 didReceiveChallenge:v26 completionHandler:?];
}

void __81__NWURLSessionTask_loaderDidReceiveClientCertificateChallenge_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v6 = gurlLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 logDescription];
      v8 = *(a1 + 32);
      if (v8)
      {
        [v8 logDescription];
        v9 = v22;
        if (!a2)
        {
LABEL_7:
          v10 = [v5 identity] != 0;
LABEL_11:
          *buf = 68289538;
          v27 = 16;
          v28 = 2098;
          v29 = &v23;
          v30 = 1024;
          v31 = v9;
          v32 = 1024;
          v33 = v10;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> responding to client cert challenge {credential=%{BOOL}d}", buf, 0x1Eu);
          goto LABEL_12;
        }

LABEL_10:
        v10 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v23 = 0;
      v24 = 0;
      LODWORD(v25) = 0;
    }

    v9 = 0;
    v20 = 0;
    v21 = 0;
    LODWORD(v22) = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_12:

  [(NWURLSessionTask *)*(a1 + 32) restartRequestTimer];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = [NWURLError alloc];
        v16 = v14[33];
        v17 = v14;
        if (v15)
        {
          v18 = [(NWURLError *)v15 initWithErrorCode:-999];
          v15 = v18;
          if (v18)
          {
            [(NWURLError *)v18 fillErrorForLoader:v16 andTask:v17];
          }
        }

        v19 = *(a1 + 32);
        if (v19)
        {
          objc_storeStrong((v19 + 280), v15);
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else if (a2 != 3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (![v5 identity])
  {
LABEL_28:
    (*(*(a1 + 40) + 16))();
    goto LABEL_29;
  }

  v11 = [v5 identity];
  v12 = [v5 certificates];
  v13 = sec_identity_create_with_certificates(v11, v12);

  (*(*(a1 + 40) + 16))();
LABEL_29:
}

- (void)loaderDidReceiveServerTrustChallenge:(id)challenge secProtocolMetadata:(id)metadata completionHandler:(id)handler
{
  v92 = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  metadataCopy = metadata;
  handlerCopy = handler;
  v11 = sec_trust_copy_ref(challengeCopy);
  currentRequest = [(NWURLSessionTask *)self currentRequest];
  v13 = [currentRequest URL];
  host = [v13 host];

  if (self && (configuration = self->_configuration) != 0 && (v16 = configuration->_atsState) != 0)
  {
    v75 = v16;
    v77 = [MEMORY[0x1E696AE40] propertyListWithData:v16 options:0 format:0 error:0];
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  policies = 0;
  v76 = v11;
  v17 = SecTrustCopyPolicies(v11, &policies);
  if (v17)
  {
    v18 = v17;
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v19 = gurlLogObj;
    *buf = 136446466;
    v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
    v90 = 1024;
    *v91 = v18;
    LODWORD(v73) = 18;
    v72 = buf;
    v20 = _os_log_send_and_compose_impl();

    v86 = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (!__nwlog_fault(v20, &v86, &v85))
    {
LABEL_48:
      if (!v20)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (v86 == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v21 = gurlLogObj;
      v22 = v86;
      if (!os_log_type_enabled(v21, v86))
      {
        goto LABEL_47;
      }

      *buf = 136446466;
      v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
      v90 = 1024;
      *v91 = v18;
      v23 = "%{public}s SecTrustCopyPolicies failed %d";
LABEL_46:
      _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0x12u);
LABEL_47:

      goto LABEL_48;
    }

    if (v85 != 1)
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v21 = gurlLogObj;
      v22 = v86;
      if (!os_log_type_enabled(v21, v86))
      {
        goto LABEL_47;
      }

      *buf = 136446466;
      v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
      v90 = 1024;
      *v91 = v18;
      v23 = "%{public}s SecTrustCopyPolicies failed %d, backtrace limit exceeded";
      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v31 = gurlLogObj;
    v32 = v86;
    v33 = os_log_type_enabled(v31, v86);
    if (backtrace_string)
    {
      if (v33)
      {
        *buf = 136446722;
        v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
        v90 = 1024;
        *v91 = v18;
        *&v91[4] = 2082;
        *&v91[6] = backtrace_string;
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s SecTrustCopyPolicies failed %d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(backtrace_string);
      if (!v20)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v33)
      {
        *buf = 136446466;
        v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
        v90 = 1024;
        *v91 = v18;
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s SecTrustCopyPolicies failed %d, no backtrace", buf, 0x12u);
      }

      if (!v20)
      {
LABEL_50:
        v41 = v76;
        if (self)
        {
          goto LABEL_51;
        }

LABEL_131:
        [0 setSecTrust:{v41, v72, v73}];
        _tlsTrustPinningPolicyName = 0;
        goto LABEL_132;
      }
    }

LABEL_49:
    free(v20);
    goto LABEL_50;
  }

  v24 = policies;
  if ([(__CFArray *)policies count]!= 1)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v34 = gurlLogObj;
    v35 = [(__CFArray *)v24 count];
    *buf = 136446466;
    v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
    v90 = 2048;
    *v91 = v35;
    LODWORD(v73) = 22;
    v72 = buf;
    v36 = _os_log_send_and_compose_impl();

    v86 = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (!__nwlog_fault(v36, &v86, &v85))
    {
LABEL_77:
      if (!v36)
      {
        goto LABEL_130;
      }

      goto LABEL_129;
    }

    if (v86 == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v37 = gurlLogObj;
      v38 = v86;
      if (!os_log_type_enabled(v37, v86))
      {
        goto LABEL_76;
      }

      v39 = [(__CFArray *)v24 count:buf];
      *buf = 136446466;
      v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
      v90 = 2048;
      *v91 = v39;
      v40 = "%{public}s SecTrust has an unexpected number of policies %lu";
    }

    else
    {
      if (v85 == 1)
      {
        v48 = __nw_create_backtrace_string();
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v49 = gurlLogObj;
        v50 = v86;
        v51 = os_log_type_enabled(v49, v86);
        if (v48)
        {
          if (v51)
          {
            v52 = [(__CFArray *)v24 count:buf];
            *buf = 136446722;
            v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
            v90 = 2048;
            *v91 = v52;
            *&v91[8] = 2082;
            *&v91[10] = v48;
            _os_log_impl(&dword_181A37000, v49, v50, "%{public}s SecTrust has an unexpected number of policies %lu, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v48);
          if (!v36)
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v51)
          {
            v58 = [(__CFArray *)v24 count:buf];
            *buf = 136446466;
            v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
            v90 = 2048;
            *v91 = v58;
            _os_log_impl(&dword_181A37000, v49, v50, "%{public}s SecTrust has an unexpected number of policies %lu, no backtrace", buf, 0x16u);
          }

          if (!v36)
          {
            goto LABEL_130;
          }
        }

LABEL_129:
        free(v36);
        goto LABEL_130;
      }

      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v37 = gurlLogObj;
      v38 = v86;
      if (!os_log_type_enabled(v37, v86))
      {
        goto LABEL_76;
      }

      v53 = [(__CFArray *)v24 count:buf];
      *buf = 136446466;
      v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
      v90 = 2048;
      *v91 = v53;
      v40 = "%{public}s SecTrust has an unexpected number of policies %lu, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v37, v38, v40, buf, 0x16u);
LABEL_76:

    goto LABEL_77;
  }

  [(__CFArray *)v24 firstObject];

  if (!host || (SecPolicySetSSLHostname() & 1) != 0)
  {
    goto LABEL_99;
  }

  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v25 = gurlLogObj;
  *buf = 136446210;
  v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
  LODWORD(v73) = 12;
  v72 = buf;
  v26 = _os_log_send_and_compose_impl();

  v86 = OS_LOG_TYPE_ERROR;
  v85 = 0;
  if (!__nwlog_fault(v26, &v86, &v85))
  {
    goto LABEL_97;
  }

  if (v86 == OS_LOG_TYPE_FAULT)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v27 = gurlLogObj;
    v28 = v86;
    if (!os_log_type_enabled(v27, v86))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
    v29 = "%{public}s SecPolicySetSSLHostname failed";
  }

  else
  {
    if (v85 == 1)
    {
      v74 = v26;
      v54 = __nw_create_backtrace_string();
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v55 = gurlLogObj;
      v56 = v86;
      v57 = os_log_type_enabled(v55, v86);
      if (v54)
      {
        if (v57)
        {
          *buf = 136446466;
          v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
          v90 = 2082;
          *v91 = v54;
          _os_log_impl(&dword_181A37000, v55, v56, "%{public}s SecPolicySetSSLHostname failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v54);
        v26 = v74;
        if (v74)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v57)
        {
          *buf = 136446210;
          v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
          _os_log_impl(&dword_181A37000, v55, v56, "%{public}s SecPolicySetSSLHostname failed, no backtrace", buf, 0xCu);
        }

        v26 = v74;
        if (v74)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_99;
    }

    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v27 = gurlLogObj;
    v28 = v86;
    if (!os_log_type_enabled(v27, v86))
    {
      goto LABEL_96;
    }

    *buf = 136446210;
    v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
    v29 = "%{public}s SecPolicySetSSLHostname failed, backtrace limit exceeded";
  }

  _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
LABEL_96:

LABEL_97:
  if (v26)
  {
LABEL_98:
    free(v26);
  }

LABEL_99:
  if (v77 && (SecPolicySetATSPinning() & 1) == 0)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v59 = gurlLogObj;
    *buf = 136446210;
    v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
    LODWORD(v73) = 12;
    v72 = buf;
    v36 = _os_log_send_and_compose_impl();

    v86 = OS_LOG_TYPE_ERROR;
    v85 = 0;
    if (__nwlog_fault(v36, &v86, &v85))
    {
      if (v86 == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v60 = gurlLogObj;
        v61 = v86;
        if (!os_log_type_enabled(v60, v86))
        {
          goto LABEL_127;
        }

        *buf = 136446210;
        v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
        v62 = "%{public}s SecPolicySetATSPinning failed";
        goto LABEL_126;
      }

      if (v85 == 1)
      {
        v63 = __nw_create_backtrace_string();
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v60 = gurlLogObj;
        v61 = v86;
        v64 = os_log_type_enabled(v60, v86);
        if (v63)
        {
          if (v64)
          {
            *buf = 136446466;
            v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
            v90 = 2082;
            *v91 = v63;
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s SecPolicySetATSPinning failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v63);
          goto LABEL_128;
        }

        if (!v64)
        {
LABEL_127:

          goto LABEL_128;
        }

        *buf = 136446210;
        v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
        v62 = "%{public}s SecPolicySetATSPinning failed, no backtrace";
      }

      else
      {
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v60 = gurlLogObj;
        v61 = v86;
        if (!os_log_type_enabled(v60, v86))
        {
          goto LABEL_127;
        }

        *buf = 136446210;
        v89 = "[NWURLSessionTask loaderDidReceiveServerTrustChallenge:secProtocolMetadata:completionHandler:]";
        v62 = "%{public}s SecPolicySetATSPinning failed, backtrace limit exceeded";
      }

LABEL_126:
      _os_log_impl(&dword_181A37000, v60, v61, v62, buf, 0xCu);
      goto LABEL_127;
    }

LABEL_128:
    if (!v36)
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

LABEL_130:

  v41 = v76;
  if (!self)
  {
    goto LABEL_131;
  }

LABEL_51:
  v42 = self->_configuration;
  if (v42)
  {
    _tlsTrustPinningPolicyName = [(NSURLSessionConfiguration *)v42->_configuration _tlsTrustPinningPolicyName];
    if (_tlsTrustPinningPolicyName)
    {
      SecTrustSetPinningPolicyName();
    }
  }

  else
  {
    _tlsTrustPinningPolicyName = 0;
  }

  [(NWURLSessionTask *)self setSecTrust:v41, v72, v73];
  v44 = self->_configuration;
  if (v44 && [(NSURLSessionConfiguration *)v44->_configuration _alwaysPerformDefaultTrustEvaluation])
  {
    queue = self->_queue;
    result[0] = MEMORY[0x1E69E9820];
    result[1] = 3221225472;
    result[2] = __95__NWURLSessionTask_loaderDidReceiveServerTrustChallenge_secProtocolMetadata_completionHandler___block_invoke;
    result[3] = &unk_1E6A33DD0;
    v46 = handlerCopy;
    v84 = v46;
    if (SecTrustEvaluateAsyncWithError(v41, queue, result))
    {
      v46[2](v46, 0);
    }

    v47 = v84;
    goto LABEL_139;
  }

LABEL_132:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__NWURLSessionTask_loaderDidReceiveServerTrustChallenge_secProtocolMetadata_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E6A356D0;
  aBlock[4] = self;
  v82 = handlerCopy;
  v79 = metadataCopy;
  v80 = challengeCopy;
  v81 = host;
  v65 = _Block_copy(aBlock);
  v66 = v65;
  if (self && self->_performingServerTrustCallback)
  {
    serverTrustCallbackQueue = self->_serverTrustCallbackQueue;
    if (!serverTrustCallbackQueue)
    {
      v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v69 = self->_serverTrustCallbackQueue;
      self->_serverTrustCallbackQueue = v68;

      serverTrustCallbackQueue = self->_serverTrustCallbackQueue;
    }

    v70 = serverTrustCallbackQueue;
    v71 = _Block_copy(v66);
    [(NSMutableArray *)v70 addObject:v71];
  }

  else
  {
    (*(v65 + 2))(v65);
  }

  v47 = v82;
LABEL_139:

  CFRelease(v41);
}

void __95__NWURLSessionTask_loaderDidReceiveServerTrustChallenge_secProtocolMetadata_completionHandler___block_invoke_2(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_74;
  }

  if (*(v2 + 296) == 2)
  {
    (*(*(a1 + 64) + 16))();
LABEL_10:
    v9 = *(a1 + 32);

    [(NWURLSessionTask *)v9 performNextServerTrustChallenge];
    return;
  }

  v3 = *(v2 + 408);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = v5 ? *(v5 + 408) : 0;
    v7 = sec_protocol_metadata_peers_are_equal(v6, *(a1 + 40));

    if (v7)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        LOBYTE(v8) = *(v8 + 25);
      }

      (*(*(a1 + 64) + 16))(*(a1 + 64), v8 & 1);
      goto LABEL_10;
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    *(v10 + 24) = 1;
    v11 = *(a1 + 32);
  }

  else
  {
LABEL_74:
    v11 = 0;
  }

  v12 = [v11 currentRequest];
  v13 = [v12 URL];
  v14 = [v13 port];

  v15 = [*(a1 + 32) clientMetadata];
  v16 = *(a1 + 40);
  v17 = v15;
  v18 = v16;
  if (v17)
  {
    if (nw_protocol_copy_http_client_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    if (nw_protocol_metadata_matches_definition(v17, nw_protocol_copy_http_client_definition_definition))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_client_metadata_set_sec_metadata_block_invoke;
      v58 = &unk_1E6A3A950;
      v59 = v18;
      handle = _nw_protocol_metadata_get_handle(v17);
      if (handle)
      {
        (*&buf[16])(buf, handle);
      }

      goto LABEL_22;
    }

    v47 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
    LODWORD(v53) = 12;
    v52 = buf;
    v43 = _os_log_send_and_compose_impl();

    v66[0] = OS_LOG_TYPE_ERROR;
    v64[0] = 0;
    if (__nwlog_fault(v43, v66, v64))
    {
      if (v66[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = v66[0];
        if (os_log_type_enabled(v44, v66[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
          v46 = "%{public}s metadata must be http_client";
          goto LABEL_70;
        }
      }

      else
      {
        if (v64[0] == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v44 = __nwlog_obj();
          v45 = v66[0];
          v51 = os_log_type_enabled(v44, v66[0]);
          if (backtrace_string)
          {
            if (v51)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v44, v45, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v43)
            {
              goto LABEL_22;
            }

            goto LABEL_73;
          }

          if (!v51)
          {
            goto LABEL_71;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
          v46 = "%{public}s metadata must be http_client, no backtrace";
          goto LABEL_70;
        }

        v44 = __nwlog_obj();
        v45 = v66[0];
        if (os_log_type_enabled(v44, v66[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
          v46 = "%{public}s metadata must be http_client, backtrace limit exceeded";
          goto LABEL_70;
        }
      }

      goto LABEL_71;
    }
  }

  else
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
    LODWORD(v53) = 12;
    v52 = buf;
    v43 = _os_log_send_and_compose_impl();

    v66[0] = OS_LOG_TYPE_ERROR;
    v64[0] = 0;
    if (!__nwlog_fault(v43, v66, v64))
    {
      goto LABEL_72;
    }

    if (v66[0] == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = v66[0];
      if (os_log_type_enabled(v44, v66[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
        v46 = "%{public}s called with null metadata";
LABEL_70:
        _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
      }

LABEL_71:

      goto LABEL_72;
    }

    if (v64[0] != 1)
    {
      v44 = __nwlog_obj();
      v45 = v66[0];
      if (os_log_type_enabled(v44, v66[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
        v46 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    v48 = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = v66[0];
    v49 = os_log_type_enabled(v44, v66[0]);
    if (!v48)
    {
      if (v49)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
        v46 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v49)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_client_metadata_set_sec_metadata";
      *&buf[12] = 2082;
      *&buf[14] = v48;
      _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v48);
  }

LABEL_72:
  if (v43)
  {
LABEL_73:
    free(v43);
  }

LABEL_22:

  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __95__NWURLSessionTask_loaderDidReceiveServerTrustChallenge_secProtocolMetadata_completionHandler___block_invoke_3;
  v54[3] = &unk_1E6A33E20;
  v23 = *(a1 + 64);
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v56 = v23;
  v54[4] = v24;
  v55 = v25;
  v26 = v21;
  v27 = v22;
  v28 = v14;
  v29 = v54;
  if (v20)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v30 = gurlLogObj;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      [v20 logDescription];
      [v20 logDescription];
      *buf = 68289282;
      *&buf[4] = 16;
      *&buf[8] = 2098;
      *&buf[10] = v66;
      *&buf[18] = 1024;
      *&buf[20] = v65;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "Task <%{public,uuid_t}.16P>.<%u> received server trust challenge", buf, 0x18u);
    }

    v31 = objc_alloc(MEMORY[0x1E695AC58]);
    if (v28)
    {
      v32 = v31;
      v33 = [v28 integerValue];
      v31 = v32;
    }

    else
    {
      v33 = 443;
    }

    v34 = [v31 initWithHost:v27 port:v33 protocol:*MEMORY[0x1E695ABA0] realm:0 authenticationMethod:{*MEMORY[0x1E695AB80], v52, v53}];
    v35 = sec_trust_copy_ref(v26);
    [v34 _setServerTrust:v35];
    CFRelease(v35);
    v37 = [objc_alloc(MEMORY[0x1E695AC30]) initWithProtectionSpace:v34 proposedCredential:0 previousFailureCount:0 failureResponse:0 error:0 sender:0];
    v38 = v20[53];
    if (v38)
    {
      if (*(v38 + 48) > 0.0)
      {
        v39 = v20[43];
        if (v39)
        {
          if (*v39)
          {
            dispatch_source_set_timer(*v39, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          }

          else
          {
            *(v39 + 32) = -1;
            *(v39 + 40) = -1;
            if (*(v39 + 48) == 1 && *(v39 + 49) == 1)
            {
              nw_queue_source_run_timer(v39, v36);
            }
          }
        }
      }
    }

    v40 = 31;
    if (!v20[31])
    {
      v40 = 30;
    }

    v41 = v20[v40];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __80__NWURLSessionTask_challengeDelegateForServerTrust_host_port_completionHandler___block_invoke;
    v58 = &unk_1E6A33DF8;
    v59 = v20;
    v60 = v26;
    v61 = v27;
    v62 = v28;
    v63 = v29;
    [(NWURLSessionDelegateWrapper *)v41 task:v20 didReceiveChallenge:v37 completionHandler:buf];
  }
}

void __95__NWURLSessionTask_loaderDidReceiveServerTrustChallenge_secProtocolMetadata_completionHandler___block_invoke_3(uint64_t a1, char a2)
{
  (*(*(a1 + 48) + 16))();
  v4 = *(a1 + 32);
  if (v4 && (objc_storeStrong((v4 + 408), *(a1 + 40)), (v5 = *(a1 + 32)) != 0) && (*(v5 + 25) = a2, (v6 = *(a1 + 32)) != 0))
  {
    *(v6 + 24) = 0;
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  [(NWURLSessionTask *)v7 performNextServerTrustChallenge];
}

void __80__NWURLSessionTask_challengeDelegateForServerTrust_host_port_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v6 = gurlLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 logDescription];
      v8 = *(a1 + 32);
      if (v8)
      {
        [v8 logDescription];
        v9 = v34;
LABEL_9:
        *buf = 68289794;
        v38 = 16;
        v39 = 2098;
        v40 = v35;
        v41 = 1024;
        v42 = v9;
        v43 = 2048;
        v44 = a2;
        v45 = 1024;
        v46 = v5 != 0;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "Task <%{public,uuid_t}.16P>.<%u> responding to server trust challenge {disposition=%ld, credential=%{BOOL}d}", buf, 0x28u);
        goto LABEL_10;
      }
    }

    else
    {
      v35[0] = 0;
      v35[1] = 0;
      v36 = 0;
    }

    v9 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_9;
  }

LABEL_10:

  [(NWURLSessionTask *)*(a1 + 32) restartRequestTimer];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_39;
      }
    }

    else if (v5)
    {
      v10 = sec_trust_copy_ref(*(a1 + 40));
      v16 = SecTrustCopyExceptions(v10);
      v12 = v16;
      if (v16)
      {
        v17 = *(a1 + 32);
        if (v17)
        {
          v18 = *(v17 + 416);
          if (v18)
          {
            v20 = *(a1 + 48);
            v19 = *(a1 + 56);
            v21 = MEMORY[0x1E696AEC0];
            v22 = v16;
            v23 = [v21 stringWithFormat:@"%@ %@", v20, v19];
            [*(v18 + 120) setObject:v22 forKeyedSubscript:v23];
          }
        }
      }

      (*(*(a1 + 64) + 16))();
      goto LABEL_31;
    }

LABEL_16:
    v10 = sec_trust_copy_ref(*(a1 + 40));
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 416);
      if (v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", *(a1 + 48), *(a1 + 56)];
        v12 = [v12[15] objectForKeyedSubscript:v13];

        if (v12)
        {
          SecTrustSetExceptions(v10, v12);
        }
      }

      v14 = *(a1 + 32);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
      v14 = *(a1 + 32);
      if (v14)
      {
LABEL_21:
        v15 = *(v14 + 232);
LABEL_22:
        result[0] = MEMORY[0x1E69E9820];
        result[1] = 3221225472;
        result[2] = __80__NWURLSessionTask_challengeDelegateForServerTrust_host_port_completionHandler___block_invoke_85;
        result[3] = &unk_1E6A33DD0;
        v31 = *(a1 + 64);
        if (SecTrustEvaluateAsyncWithError(v10, v15, result))
        {
          (*(*(a1 + 64) + 16))();
        }

LABEL_31:
        CFRelease(v10);

        goto LABEL_39;
      }
    }

    v15 = 0;
    goto LABEL_22;
  }

  if (a2 == 2)
  {
    v24 = *(a1 + 32);
    if (v24)
    {
      v25 = [NWURLError alloc];
      v26 = v24[33];
      v27 = v24;
      if (v25)
      {
        v28 = [(NWURLError *)v25 initWithErrorCode:-999];
        v25 = v28;
        if (v28)
        {
          [(NWURLError *)v28 fillErrorForLoader:v26 andTask:v27];
        }
      }

      v29 = *(a1 + 32);
      if (v29)
      {
        objc_storeStrong((v29 + 280), v25);
      }
    }

    else
    {
      v25 = 0;
    }

    (*(*(a1 + 64) + 16))();
  }

  else if (a2 == 3)
  {
    goto LABEL_16;
  }

LABEL_39:
}

- (void)loaderDidReceiveInformationalResponse:(id)response
{
  if (self)
  {
    v5 = 248;
    if (!self->_internalDelegateWrapper)
    {
      v5 = 240;
    }

    v6 = *(&self->super.isa + v5);
    [(NWURLSessionDelegateWrapper *)v6 task:response didReceiveInformationalResponse:?];
  }

  else
  {
    [(NWURLSessionDelegateWrapper *)0 task:response didReceiveInformationalResponse:?];
    v6 = 0;
  }
}

- (void)loaderWillPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v68 = *MEMORY[0x1E69E9840];
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v11 = gurlLogObj;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    statusCode = [redirectionCopy statusCode];
    if (self)
    {
      redirectCount = self->_redirectCount;
    }

    else
    {
      redirectCount = 0;
    }

    *buf = 68289794;
    *&buf[4] = 16;
    LOWORD(v58) = 2098;
    *(&v58 + 2) = &v56;
    WORD5(v58) = 1024;
    HIDWORD(v58) = v55;
    LOWORD(v59) = 1024;
    *(&v59 + 2) = statusCode;
    HIWORD(v59) = 2048;
    v60 = redirectCount;
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "Task <%{public,uuid_t}.16P>.<%u> will perform redirect {status=%hu, previous_redirects=%zu}", buf, 0x28u);
  }

  if (self)
  {
    v15 = self->_redirectCount + 1;
    self->_redirectCount = v15;
    if (v15 >= 0x15)
    {
      v16 = [NWURLError alloc];
      v17 = self->_loader;
      selfCopy = self;
      if (v16)
      {
        v19 = [(NWURLError *)v16 initWithErrorCode:-1007];
        v20 = v19;
        if (v19)
        {
          [(NWURLError *)v19 fillErrorForLoader:v17 andTask:selfCopy];
        }
      }

      else
      {
        v20 = 0;
      }

      [(NWURLSessionTask *)selfCopy completeTaskWithError:v20 retryable:0];
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_37;
    }

    configuration = self->_configuration;
    if (configuration)
    {
      if (configuration->_savedTimeoutIntervalForRequest > 0.0)
      {
        requestTimeoutTimer = self->_requestTimeoutTimer;
        if (requestTimeoutTimer)
        {
          if (*requestTimeoutTimer)
          {
            dispatch_source_set_timer(*requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          }

          else
          {
            requestTimeoutTimer[4] = -1;
            requestTimeoutTimer[5] = -1;
            if (*(requestTimeoutTimer + 48) == 1 && *(requestTimeoutTimer + 49) == 1)
            {
              nw_queue_source_run_timer(requestTimeoutTimer, v14);
            }
          }
        }
      }
    }

    v23 = 248;
    if (!self->_internalDelegateWrapper)
    {
      v23 = 240;
    }

    v24 = *(&self->super.isa + v23);
  }

  else
  {
    v24 = 0;
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v51 = __82__NWURLSessionTask_loaderWillPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  v52 = &unk_1E6A33DA8;
  selfCopy2 = self;
  v54 = handlerCopy;
  selfCopy3 = self;
  v26 = redirectionCopy;
  v49 = requestCopy;
  v28 = v50;
  if (v24)
  {
    delegateFor_willPerformHTTPRedirection = [(NWURLSessionDelegateWrapper *)v24 delegateFor_willPerformHTTPRedirection];
    if (delegateFor_willPerformHTTPRedirection)
    {
      v45 = v26;
      v46 = selfCopy3;
      v47 = requestCopy;
      v48 = redirectionCopy;
      v30 = v24[5];
      v31 = v24[6];
      v32 = [NWURLSessionDelegateDeallocBomb alloc];
      v33 = *(v24 + 16);
      v34 = delegateFor_willPerformHTTPRedirection;
      v44 = handlerCopy;
      if (v32 && (*buf = v32, *&v58 = NWURLSessionDelegateDeallocBomb, v35 = [(uint8_t *)buf init], (v32 = v35) != 0))
      {
        objc_storeStrong(&v35->__object, delegateFor_willPerformHTTPRedirection);
        if (sel_task_willPerformHTTPRedirection_newRequest_completionHandler_)
        {
          v36 = sel_task_willPerformHTTPRedirection_newRequest_completionHandler_;
        }

        else
        {
          v36 = 0;
        }

        v37 = v28;
        v32->__method = v36;
        v32->__strict = v33;
      }

      else
      {
        v37 = v28;
      }

      *buf = MEMORY[0x1E69E9820];
      *&v58 = 3221225472;
      *(&v58 + 1) = __92__NWURLSessionDelegateWrapper_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
      v59 = &unk_1E6A3B5D0;
      v60 = v34;
      v61 = v30;
      v62 = v46;
      v38 = v30;
      v26 = v45;
      v63 = v45;
      v64 = v49;
      v65 = v32;
      v66 = v31;
      v67 = v37;
      v39 = v24[7];
      v40 = v31;
      v41 = v32;
      v42 = v38;
      v28 = v37;
      v43 = v42;
      [(NWURLSessionDelegateQueue *)v39 runDelegateBlock:buf];

      selfCopy3 = v46;
      requestCopy = v47;
      redirectionCopy = v48;
      handlerCopy = v44;
    }

    else
    {
      v51(v28, v49);
    }
  }

LABEL_37:
}

void __82__NWURLSessionTask_loaderWillPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v4 = gurlLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 logDescription];
      v6 = *(a1 + 32);
      if (v6)
      {
        [v6 logDescription];
        v7 = v35;
LABEL_9:
        *buf = 68289538;
        v40 = 16;
        v41 = 2098;
        v42 = &v36;
        v43 = 1024;
        v44 = v7;
        v45 = 1024;
        v46 = v3 != 0;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "Task <%{public,uuid_t}.16P>.<%u> performing redirect {take=%{BOOL}d}", buf, 0x1Eu);
        goto LABEL_10;
      }
    }

    else
    {
      v36 = 0;
      v37 = 0;
      LODWORD(v38) = 0;
    }

    v7 = 0;
    v33 = 0;
    v34 = 0;
    LODWORD(v35) = 0;
    goto LABEL_9;
  }

LABEL_10:

  v12 = *(a1 + 32);
  if (!v12)
  {
    if (v3)
    {
      v13 = 0;
LABEL_14:
      v15 = [v13 canHandleRedirectionToRequest:{v3, v33, v34, v35, v36, v37, v38}];
      v16 = *(a1 + 32);
      if (v15)
      {
        if (v16)
        {
          objc_setProperty_nonatomic_copy(v16, v14, v3, 56);
          v17 = *(a1 + 32);
          if (v17)
          {
            v16 = *(v17 + 424);
          }

          else
          {
            v16 = 0;
          }
        }

        [(NWURLSessionTaskConfiguration *)v16 updateRequest:v3];
        v18 = *(*(a1 + 40) + 16);
        goto LABEL_37;
      }

      if (v16)
      {
        v19 = v16[33];
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = *(a1 + 32);
      if (v21)
      {
        v22 = *(v21 + 264);
        *(v21 + 264) = 0;
      }

      (*(*(a1 + 40) + 16))();
      [v20 stop];
      v24 = *(a1 + 32);
      if (v24)
      {
        objc_setProperty_nonatomic_copy(v24, v23, v3, 56);
      }

      v25 = [v3 HTTPMethod];
      v26 = [v25 caseInsensitiveCompare:@"GET"];

      if (!v26 || ([v3 HTTPMethod], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "caseInsensitiveCompare:", @"HEAD"), v31, !v32))
      {
        v27 = *(a1 + 32);
        if (!v27)
        {
          goto LABEL_40;
        }

        v28 = *(v27 + 432);
        *(v27 + 432) = 0;
      }

      v29 = *(a1 + 32);
      if (v29)
      {
        v30 = *(v29 + 256);
LABEL_30:
        nw_http_client_metadata_create_next_transaction(v30, 1);
        [*(a1 + 32) startNextLoad];

LABEL_38:
        [(NWURLSessionTask *)*(a1 + 32) restartRequestTimer];
        goto LABEL_39;
      }

LABEL_40:
      v30 = 0;
      goto LABEL_30;
    }

LABEL_36:
    v18 = *(*(a1 + 40) + 16);
LABEL_37:
    v18();
    goto LABEL_38;
  }

  if (*(v12 + 296) != 2)
  {
    if (v3)
    {
      v13 = *(v12 + 264);
      goto LABEL_14;
    }

    goto LABEL_36;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v8, v9, v10, v11);
LABEL_39:
}

- (void)loaderWillPerformHSTSUpgradeToURL:(id)l preload:(BOOL)preload completionHandler:(id)handler
{
  preloadCopy = preload;
  v54 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  lCopy = l;
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v10 = gurlLogObj;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    *buf = 68289538;
    *&buf[4] = 16;
    LOWORD(v45) = 2098;
    *(&v45 + 2) = &v43;
    WORD5(v45) = 1024;
    HIDWORD(v45) = v42;
    LOWORD(v46) = 1024;
    *(&v46 + 2) = preloadCopy;
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> scheme upgraded to https by HSTS {preload=%{BOOL}d}", buf, 0x1Eu);
  }

  currentRequest = [(NWURLSessionTask *)self currentRequest];
  v12 = [currentRequest mutableCopy];

  [v12 setURL:lCopy];
  [v12 _setSchemeWasUpgradedDueToDynamicHSTS:!preloadCopy];
  if (self)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      if (configuration->_savedTimeoutIntervalForRequest > 0.0)
      {
        requestTimeoutTimer = self->_requestTimeoutTimer;
        if (requestTimeoutTimer)
        {
          if (*requestTimeoutTimer)
          {
            dispatch_source_set_timer(*requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          }

          else
          {
            requestTimeoutTimer[4] = -1;
            requestTimeoutTimer[5] = -1;
            if (*(requestTimeoutTimer + 48) == 1 && *(requestTimeoutTimer + 49) == 1)
            {
              nw_queue_source_run_timer(requestTimeoutTimer, v13);
            }
          }
        }
      }
    }

    v16 = 248;
    if (!self->_internalDelegateWrapper)
    {
      v16 = 240;
    }

    v17 = *(&self->super.isa + v16);
  }

  else
  {
    v17 = 0;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __80__NWURLSessionTask_loaderWillPerformHSTSUpgradeToURL_preload_completionHandler___block_invoke;
  v39 = &unk_1E6A33DA8;
  selfCopy = self;
  v41 = handlerCopy;
  v18 = handlerCopy;
  selfCopy2 = self;
  v20 = v12;
  v22 = v37;
  if (v17)
  {
    delegateFor__schemeUpgraded = [(NWURLSessionDelegateWrapper *)v17 delegateFor__schemeUpgraded];
    if (delegateFor__schemeUpgraded)
    {
      v35 = selfCopy2;
      v24 = v17[5];
      v25 = v17[6];
      v26 = [NWURLSessionDelegateDeallocBomb alloc];
      v27 = *(v17 + 16);
      v28 = delegateFor__schemeUpgraded;
      v36 = v18;
      if (v26)
      {
        *buf = v26;
        *&v45 = NWURLSessionDelegateDeallocBomb;
        v29 = [(uint8_t *)buf init];
        v26 = v29;
        if (v29)
        {
          objc_storeStrong(v29 + 2, delegateFor__schemeUpgraded);
          if (sel_task__schemeUpgraded_completionHandler_)
          {
            v30 = sel_task__schemeUpgraded_completionHandler_;
          }

          else
          {
            v30 = 0;
          }

          v26->__method = v30;
          v26->__strict = v27;
        }
      }

      *buf = MEMORY[0x1E69E9820];
      *&v45 = 3221225472;
      *(&v45 + 1) = __70__NWURLSessionDelegateWrapper_task__schemeUpgraded_completionHandler___block_invoke;
      v46 = &unk_1E6A3B580;
      v47 = v28;
      v48 = v24;
      selfCopy2 = v35;
      v49 = v35;
      v50 = v20;
      v51 = v26;
      v52 = v25;
      v53 = v22;
      v31 = v17[7];
      v32 = v25;
      v33 = v26;
      v34 = v24;
      [(NWURLSessionDelegateQueue *)v31 runDelegateBlock:buf];

      v18 = v36;
    }

    else
    {
      v38(v22, v20);
    }
  }
}

void __80__NWURLSessionTask_loaderWillPerformHSTSUpgradeToURL_preload_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  newValue = v3;
  if (v4)
  {
    if (*(v4 + 296) == 2)
    {
      goto LABEL_9;
    }

    [(NWURLSessionTask *)v4 restartRequestTimer];
    v6 = *(a1 + 32);
    v3 = newValue;
    if (v6)
    {
      objc_setProperty_nonatomic_copy(v6, v5, newValue, 56);
      v3 = newValue;
    }
  }

  if (v3)
  {
    v7 = [v3 HTTPMethod];
    v8 = [v7 caseInsensitiveCompare:@"GET"];

    if (!v8 || ([newValue HTTPMethod], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "caseInsensitiveCompare:", @"HEAD"), v11, !v12))
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = *(v9 + 432);
        *(v9 + 432) = 0;
      }
    }
  }

LABEL_9:
  (*(*(a1 + 40) + 16))();
}

- (void)loaderFailedToConnect:(id)connect
{
  connectCopy = connect;
  if (self)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      if ([(NWURLSessionTask *)configuration->_task _preconnect])
      {
        [(NWURLSessionTask *)self completeTaskWithError:connectCopy retryable:0];
      }
    }
  }
}

- (void)loaderConnectedWithHTTPConnectionMetadata:(id)metadata CNAMEChain:(id)chain unlistedTracker:(id)tracker
{
  metadataCopy = metadata;
  chainCopy = chain;
  trackerCopy = tracker;
  if (self)
  {
    startTimeoutTimer = self->_startTimeoutTimer;
    if (startTimeoutTimer)
    {
      self->_startTimeoutTimer = 0;
      nw_queue_cancel_source(startTimeoutTimer, v10);
    }

    configuration = self->_configuration;
    if (configuration)
    {
      [(NSURLRequest *)configuration->_request _payloadTransmissionTimeout];
      if (*&v14 > 0.0 && !self->_payloadTimeoutTimer)
      {
        v42.receiver = MEMORY[0x1E69E9820];
        v42.super_class = 3221225472;
        v43 = __37__NWURLSessionTask_startPayloadTimer__block_invoke;
        v44 = &unk_1E6A3ACD0;
        selfCopy = self;
        v46 = v14;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 0x40000000;
        v39[2] = __nw_http_diag_log_for_level_block_invoke;
        v39[3] = &unk_1E6A303F0;
        v40 = 3;
        v41 = 0;
        v39[4] = &v42;
        v15 = *&v14;
        os_unfair_lock_lock(&lock);
        __nw_http_diag_log_for_level_block_invoke(v39);
        os_unfair_lock_unlock(&lock);
        self->_payloadTimeoutTimer = [(NWURLSessionTask *)self createTimerWithTimeout:v15 retryable:?];
      }
    }

    if (objc_getProperty(self, v10, 312, 1))
    {
      v17 = [_NWHTTPConnectionInfo alloc];
      v18 = 248;
      if (!self->_internalDelegateWrapper)
      {
        v18 = 240;
      }

      v19 = *(&self->super.isa + v18);
      v20 = v19;
      v21 = metadataCopy;
      v22 = v20;
      if (v17)
      {
        v42.receiver = v17;
        v42.super_class = _NWHTTPConnectionInfo;
        v23 = [(NWURLSessionTask *)&v42 init];
        v17 = v23;
        if (v23)
        {
          objc_storeStrong(v23 + 1, metadata);
          objc_storeStrong(&v17->_delegateWrapper, v19);
        }
      }

      Property = objc_getProperty(self, v24, 312, 1);
      Property[2](Property, v17);
    }

    objc_setProperty_atomic(self, v16, chainCopy, 184);
    if (trackerCopy)
    {
      backtrace = self->_backtrace;
      if (backtrace)
      {
        v27 = backtrace;
        v28 = trackerCopy;
        [v28 UTF8String];
        [(NSData *)v27 bytes];
        [(NSData *)v27 length];
        ne_tracker_create_xcode_issue();
      }
    }

    v29 = self->_configuration;
    if (v29 && [(NWURLSessionTask *)v29->_task _preconnect])
    {
      [(NWURLSessionResponseConsumer *)self->_responseConsumer task:self deliverData:0 complete:1 error:0 completionHandler:&__block_literal_global_81];
      goto LABEL_29;
    }

    v30 = 248;
    if (!self->_internalDelegateWrapper)
    {
      v30 = 240;
    }

    v31 = *(&self->super.isa + v30);
    selfCopy2 = self;
    if (v31)
    {
      delegateFor__didConnect = [(NWURLSessionDelegateWrapper *)v31 delegateFor__didConnect];
      if (delegateFor__didConnect)
      {
        v35 = v31[5];
        v42.receiver = MEMORY[0x1E69E9820];
        v42.super_class = 3221225472;
        v43 = __43__NWURLSessionDelegateWrapper__didConnect___block_invoke;
        v44 = &unk_1E6A3B4E0;
        selfCopy = delegateFor__didConnect;
        v46 = v35;
        v47 = selfCopy2;
        v36 = v31[7];
        v37 = v35;
        [(NWURLSessionDelegateQueue *)v36 runDelegateBlock:?];
      }
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_29:
}

void __37__NWURLSessionTask_startPayloadTimer__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
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
      [v3 logDescription];
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 logDescription];
        v5 = v7;
LABEL_9:
        v6 = *(a1 + 40);
        *buf = 68289538;
        v11 = 16;
        v12 = 2098;
        v13 = v8;
        v14 = 1024;
        v15 = v5;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Starting paylod timeout for %f seconds.", buf, 0x22u);
        goto LABEL_10;
      }
    }

    else
    {
      v8[0] = 0;
      v8[1] = 0;
      v9 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)loaderWaitingForConnectivity
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__NWURLSessionTask_loaderWaitingForConnectivity__block_invoke;
  v15[3] = &unk_1E6A3A528;
  v15[4] = self;
  v16 = MEMORY[0x1E69E9820];
  v17 = 0x40000000;
  v18 = __nw_http_diag_log_for_level_block_invoke;
  v19 = &unk_1E6A303F0;
  LODWORD(v21) = 2;
  BYTE4(v21) = 0;
  v20 = v15;
  os_unfair_lock_lock(&lock);
  v18(&v16);
  os_unfair_lock_unlock(&lock);
  if (self)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      if ([(NSURLSessionConfiguration *)configuration->_configuration waitsForConnectivity])
      {
        v5 = self->_configuration;
        if (v5)
        {
          if (v5->_savedTimeoutIntervalForRequest > 0.0)
          {
            requestTimeoutTimer = self->_requestTimeoutTimer;
            if (requestTimeoutTimer)
            {
              if (*requestTimeoutTimer)
              {
                dispatch_source_set_timer(*requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
              }

              else
              {
                requestTimeoutTimer[4] = -1;
                requestTimeoutTimer[5] = -1;
                if (*(requestTimeoutTimer + 48) == 1 && *(requestTimeoutTimer + 49) == 1)
                {
                  nw_queue_source_run_timer(requestTimeoutTimer, v4);
                }
              }
            }
          }
        }

        v7 = 248;
        if (!self->_internalDelegateWrapper)
        {
          v7 = 240;
        }

        v8 = *(&self->super.isa + v7);
        selfCopy = self;
        if (v8)
        {
          delegateFor_isWaitingForConnectivity = [(NWURLSessionDelegateWrapper *)v8 delegateFor_isWaitingForConnectivity];
          if (delegateFor_isWaitingForConnectivity)
          {
            v12 = v8[5];
            v16 = MEMORY[0x1E69E9820];
            v17 = 3221225472;
            v18 = __60__NWURLSessionDelegateWrapper_taskIsWaitingForConnectivity___block_invoke;
            v19 = &unk_1E6A3B4E0;
            v20 = delegateFor_isWaitingForConnectivity;
            v21 = v12;
            v22 = selfCopy;
            v13 = v8[7];
            v14 = v12;
            [(NWURLSessionDelegateQueue *)v13 runDelegateBlock:?];
          }
        }
      }
    }
  }
}

void __48__NWURLSessionTask_loaderWaitingForConnectivity__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
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
      [v3 logDescription];
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 logDescription];
        v5 = v6;
LABEL_9:
        *buf = 68289282;
        v10 = 16;
        v11 = 2098;
        v12 = v7;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Waiting for connectivity.", buf, 0x18u);
        goto LABEL_10;
      }
    }

    else
    {
      v7[0] = 0;
      v7[1] = 0;
      v8 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)loaderToggleRequestTimeoutTimer:(BOOL)timer
{
  if (timer)
  {
    [(NWURLSessionTask *)self restartRequestTimer];
  }

  else if (self)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      if (configuration->_savedTimeoutIntervalForRequest > 0.0)
      {
        requestTimeoutTimer = self->_requestTimeoutTimer;
        if (requestTimeoutTimer)
        {
          if (*requestTimeoutTimer)
          {
            dispatch_source_set_timer(*requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          }

          else
          {
            requestTimeoutTimer[4] = -1;
            requestTimeoutTimer[5] = -1;
            if (*(requestTimeoutTimer + 48) == 1 && *(requestTimeoutTimer + 49) == 1)
            {
              nw_queue_source_run_timer(requestTimeoutTimer, a2);
            }
          }
        }
      }
    }
  }
}

- (void)loaderNeedsBodyProviderFromOffset:(unint64_t)offset completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!self || (requestBody = self->_requestBody) == 0)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v8 = requestBody->_data;
  if (v8 || requestBody->_fileURL)
  {

LABEL_6:
    v10 = self->_requestBody;
LABEL_7:
    v11 = v10;
    v12 = [(NWURLSessionRequestBodyInfo *)v11 bodyProviderFromOffset:offset];
    handlerCopy[2](handlerCopy, v12);

    goto LABEL_8;
  }

  if (requestBody->_stream && requestBody->_streamOffset == offset)
  {
    goto LABEL_6;
  }

  configuration = self->_configuration;
  if (configuration)
  {
    if (configuration->_savedTimeoutIntervalForRequest > 0.0)
    {
      requestTimeoutTimer = self->_requestTimeoutTimer;
      if (requestTimeoutTimer)
      {
        if (*requestTimeoutTimer)
        {
          dispatch_source_set_timer(*requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        }

        else
        {
          requestTimeoutTimer[4] = -1;
          requestTimeoutTimer[5] = -1;
          if (*(requestTimeoutTimer + 48) == 1 && *(requestTimeoutTimer + 49) == 1)
          {
            nw_queue_source_run_timer(requestTimeoutTimer, v9);
          }
        }
      }
    }
  }

  v15 = 248;
  if (!self->_internalDelegateWrapper)
  {
    v15 = 240;
  }

  v16 = *(&self->super.isa + v15);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v48 = __72__NWURLSessionTask_loaderNeedsBodyProviderFromOffset_completionHandler___block_invoke;
  v49 = &unk_1E6A33D80;
  selfCopy = self;
  offsetCopy = offset;
  v51 = handlerCopy;
  selfCopy2 = self;
  v18 = v47;
  if (v16)
  {
    delegateFor_needNewBodyStreamFromOffset = [(NWURLSessionDelegateWrapper *)v16 delegateFor_needNewBodyStreamFromOffset];
    if (delegateFor_needNewBodyStreamFromOffset)
    {
      v44 = v18;
      v21 = v16[5];
      v22 = v16[6];
      v23 = [NWURLSessionDelegateDeallocBomb alloc];
      v24 = *(v16 + 16);
      v25 = delegateFor_needNewBodyStreamFromOffset;
      if (v23)
      {
        v53.receiver = v23;
        v53.super_class = NWURLSessionDelegateDeallocBomb;
        v26 = [(NWURLSessionTask *)&v53 init];
        v23 = v26;
        if (v26)
        {
          objc_storeStrong(v26 + 2, delegateFor_needNewBodyStreamFromOffset);
          if (sel_task_needNewBodyStreamFromOffset_completionHandler_)
          {
            v27 = sel_task_needNewBodyStreamFromOffset_completionHandler_;
          }

          else
          {
            v27 = 0;
          }

          v23->__method = v27;
          v23->__strict = v24;
        }
      }

      v53.receiver = MEMORY[0x1E69E9820];
      v53.super_class = 3221225472;
      v54 = __82__NWURLSessionDelegateWrapper_task_needNewBodyStreamFromOffset_completionHandler___block_invoke;
      v55 = &unk_1E6A3B670;
      v56 = v25;
      v57 = v21;
      v58 = selfCopy2;
      v59 = v23;
      offsetCopy2 = offset;
      v60 = v22;
      v18 = v44;
      v61 = v44;
      v28 = v16[7];
      v29 = v22;
      v30 = v23;
      v31 = v21;
      [(NWURLSessionDelegateQueue *)v28 runDelegateBlock:?];
    }

    else if (offset)
    {
      v48(v18, 0);
    }

    else
    {
      delegateFor_needNewBodyStream = [(NWURLSessionDelegateWrapper *)v16 delegateFor_needNewBodyStream];
      if (delegateFor_needNewBodyStream)
      {
        v45 = v18;
        v33 = v16[5];
        v34 = v16[6];
        v35 = [NWURLSessionDelegateDeallocBomb alloc];
        v36 = *(v16 + 16);
        v37 = delegateFor_needNewBodyStream;
        if (v35)
        {
          v53.receiver = v35;
          v53.super_class = NWURLSessionDelegateDeallocBomb;
          v38 = [(NWURLSessionTask *)&v53 init];
          v35 = v38;
          if (v38)
          {
            objc_storeStrong(v38 + 2, delegateFor_needNewBodyStream);
            if (sel_task_needNewBodyStreamFromOffset_completionHandler_)
            {
              v39 = sel_task_needNewBodyStreamFromOffset_completionHandler_;
            }

            else
            {
              v39 = 0;
            }

            v35->__method = v39;
            v35->__strict = v36;
          }
        }

        v53.receiver = MEMORY[0x1E69E9820];
        v53.super_class = 3221225472;
        v54 = __82__NWURLSessionDelegateWrapper_task_needNewBodyStreamFromOffset_completionHandler___block_invoke_4;
        v55 = &unk_1E6A3B620;
        v56 = v37;
        v57 = v33;
        v58 = selfCopy2;
        v59 = v35;
        v60 = v34;
        v18 = v45;
        v61 = v45;
        v40 = v16[7];
        v41 = v34;
        v42 = v35;
        v43 = v33;
        [(NWURLSessionDelegateQueue *)v40 runDelegateBlock:?];
      }

      else
      {
        v48(v18, 0);
      }
    }
  }

LABEL_8:
}

void __72__NWURLSessionTask_loaderNeedsBodyProviderFromOffset_completionHandler___block_invoke(uint64_t *a1, void *a2)
{
  v15 = a2;
  [(NWURLSessionTask *)a1[4] restartRequestTimer];
  if (v15)
  {
    v4 = a1[4];
    if (v4)
    {
      v5 = *(v4 + 432);
      v6 = (a1 + 6);
      v7 = a1[6];
      v8 = v15;
      if (v5)
      {
        objc_storeStrong((v5 + 32), a2);
        *(v5 + 48) = v7;
      }
    }

    else
    {
      v6 = (a1 + 6);
      v14 = v15;
    }

    v9 = a1[4];
    v10 = a1[5];
    if (v9)
    {
      v9 = v9[54];
    }

    v11 = *v6;
    v12 = v9;
    v13 = [(NWURLSessionRequestBodyInfo *)v12 bodyProviderFromOffset:v11];
    (*(v10 + 16))(v10, v13);
  }

  else
  {
    (*(a1[5] + 16))();
  }
}

- (id)loaderNeedsEarlyData:(BOOL *)data
{
  if (self)
  {
    requestBody = self->_requestBody;
    if (requestBody)
    {
      if (requestBody->_data)
      {
        if (requestBody->_knownSize <= 0x4000)
        {
          *data = 1;
          self = requestBody->_data;
        }

        else
        {
          *data = 0;
          self = dispatch_data_create_subrange(requestBody->_data, 0, 0x4000uLL);
        }
      }

      else
      {
        self = 0;
      }

      return self;
    }

    self = 0;
  }

  return self;
}

- (void)loaderCallCustomURLProtocol:(id)protocol
{
  block = protocol;
  if (self)
  {
    session = self->_session;
    if (session && [(NSURLSessionConfiguration *)session->_internalConfiguration usesClassicLoadingMode])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      if (([bundleIdentifier isEqualToString:@"pinterest"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.ubercab.UberClient") & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.ubercab.UberEats") & 1) != 0 || objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.alibaba.iAliexpress"))
      {
        resourceLoaderRunLoop = [MEMORY[0x1E695AC40] resourceLoaderRunLoop];
        CFRunLoopPerformBlock(resourceLoaderRunLoop, *MEMORY[0x1E695E8D0], block);
        CFRunLoopWakeUp([MEMORY[0x1E695AC40] resourceLoaderRunLoop]);
        goto LABEL_14;
      }
    }

    v8 = 248;
    if (!self->_internalDelegateWrapper)
    {
      v8 = 240;
    }

    v9 = *(&self->super.isa + v8);
    bundleIdentifier = v9;
    if (v9)
    {
      [(NWURLSessionDelegateQueue *)*(v9 + 7) runDelegateBlock:?];
    }
  }

  else
  {
    bundleIdentifier = 0;
  }

LABEL_14:
}

- (void)loaderRunDelegateBlock:(id)block
{
  if (!self)
  {
    goto LABEL_9;
  }

  v4 = 248;
  if (!self->_internalDelegateWrapper)
  {
    v4 = 240;
  }

  v5 = *(&self->super.isa + v4);
  if (v5)
  {
    v6 = v5;
    [(NWURLSessionDelegateQueue *)*(v5 + 7) runDelegateBlock:block];
  }

  else
  {
LABEL_9:
    v6 = 0;
  }
}

- (OS_nw_context)networkContext
{
  if (self)
  {
    self = self->_sessionContext;
  }

  return self;
}

- (void)joiningContext
{
  if (self)
  {
    return *(self + 52);
  }

  return self;
}

- (NSString)description
{
  v17 = *MEMORY[0x1E69E9840];
  v14[23] = 0;
  v15 = unk_182B0DFE0;
  v16 = xmmword_182B0DFF0;
  strcpy(v14, "Task <00000000-0000-0000-0000-000000000000>.<");
  if (self)
  {
    session = self->_session;
  }

  else
  {
    session = 0;
  }

  v4 = session;
  [(NWURLSessionTask *)self logDescription];
  uuid_unparse(uu, &v14[3]);
  LOBYTE(v14[21]) = 62;
  [(NWURLSessionTask *)self logDescription];
  v5 = 0;
  v6 = v12;
  v7 = v12;
  do
  {
    v8 = v5++;
    v9 = v7 > 9;
    v7 /= 0xAu;
  }

  while (v9);
  do
  {
    *(&v14[22] + v5--) = (v6 % 0xA) | 0x30;
    v6 /= 0xAu;
  }

  while (v5 > 0);
  *(v14 + (v8 + 46)) = 62;
  v10 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:1];

  return v10;
}

- (void)completeTaskWithError:(id)error retryable:(BOOL)retryable
{
  retryableCopy = retryable;
  v36 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self)
  {
    nw_context_assert_queue(self->_sessionContext);
    if (self->_internalState == 2)
    {
      goto LABEL_10;
    }

    if (!retryableCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    nw_context_assert_queue(0);
    if (!retryableCopy)
    {
      goto LABEL_5;
    }
  }

  if (![(NWURLSessionTask *)self automaticRetry])
  {
LABEL_5:
    v7 = [(NWURLSessionTask *)self errorWithResumeData:errorCopy];

    if (self)
    {
      if (!self->_pendingError)
      {
        objc_storeStrong(&self->_pendingError, v7);
      }

      responseConsumer = self->_responseConsumer;
    }

    else
    {
      responseConsumer = 0;
    }

    [(NWURLSessionResponseConsumer *)responseConsumer task:self deliverData:0 complete:1 error:v7 completionHandler:&__block_literal_global_61_48120];
    errorCopy = v7;
    goto LABEL_10;
  }

  if (!self)
  {
    [(NWURLSessionTask *)0 setPendingError:errorCopy];
LABEL_15:
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v9 = gurlLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NWURLSessionTask *)self logDescription];
      [(NWURLSessionTask *)self logDescription];
      if (self)
      {
        retryCount = self->_retryCount;
      }

      else
      {
        retryCount = 0;
      }

      code = [errorCopy code];
      *buf = 68290050;
      v25 = 16;
      v26 = 2098;
      v27 = &v23;
      v28 = 1024;
      v29 = v22;
      v30 = 1024;
      v31 = retryCount;
      v32 = 2048;
      v33 = code;
      v34 = 2112;
      v35 = errorCopy;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "Task <%{public,uuid_t}.16P>.<%u> auto-retries enabled (%d retries attempted) and encountered retryable error [%ld] %@.", buf, 0x32u);
    }

    if (self)
    {
      self->_backoffInProgress = 1;
      [(NWURLSessionTask *)self pauseTaskForRetry];
      v13 = self->_retryCount;
    }

    else
    {
      v13 = 0;
    }

    v14 = ldexp(1.0, v13);
    v15 = fmin(v14 + v14 * (arc4random() / 2147483650.0 * 0.1), 1800.0);
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v16 = gurlLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [(NWURLSessionTask *)self logDescription];
      [(NWURLSessionTask *)self logDescription];
      *buf = 68289538;
      v25 = 16;
      v26 = 2098;
      v27 = &v21;
      v28 = 1024;
      v29 = v20;
      v30 = 1024;
      v31 = v15;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> scheduling auto-retry in %u s", buf, 0x1Eu);
    }

    v17 = dispatch_time(0x8000000000000000, 1000000000 * v15);
    if (self)
    {
      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__NWURLSessionTask_completeTaskWithError_retryable___block_invoke;
    block[3] = &unk_1E6A3D868;
    block[4] = self;
    dispatch_after(v17, queue, block);
    goto LABEL_10;
  }

  if (!self->_pendingError)
  {
    [(NWURLSessionTask *)self setPendingError:errorCopy];
  }

  if (!self->_backoffInProgress)
  {
    goto LABEL_15;
  }

LABEL_10:
}

- (void)setPendingError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 280), a2);
  }
}

void __52__NWURLSessionTask_completeTaskWithError_retryable___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 21) == 1)
    {
      *(v1 + 21) = 0;
      [(NWURLSessionTask *)*(a1 + 32) resumeTaskAndRetry];
    }
  }
}

- (NWURLError)errorForErrorCode:(id *)code
{
  if (code)
  {
    v4 = [NWURLError alloc];
    v5 = code[33];
    codeCopy = code;
    if (v4)
    {
      v7 = [(NWURLError *)v4 initWithErrorCode:a2];
      v8 = v7;
      if (v7)
      {
        [(NWURLError *)v7 fillErrorForLoader:v5 andTask:codeCopy];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __32__NWURLSessionTask_readResponse__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (*(v7 + 264) != *(a1 + 40) || *(v7 + 296) == 2)
    {
      goto LABEL_11;
    }

    if (!v6 || *(v7 + 280) || (objc_storeStrong((v7 + 280), a3), (v7 = *(a1 + 32)) != 0))
    {
      v8 = *(v7 + 280);
      if (v8)
      {
        [v7 completeTaskWithError:v8 retryable:1];
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      goto LABEL_11;
    }

    v7 = 0;
  }

  [(NWURLSessionTask *)v7 restartRequestTimer];
  [(NWURLSessionTask *)*(a1 + 32) updateResponse:v5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__NWURLSessionTask_readResponse__block_invoke_2;
  v15[3] = &unk_1E6A33C20;
  v9 = v5;
  v10 = *(a1 + 32);
  v16 = v9;
  v17 = v10;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v19 = __nw_http_diag_log_for_level_block_invoke;
  v20 = &unk_1E6A303F0;
  v22 = 3;
  v23 = 0;
  v21 = v15;
  os_unfair_lock_lock(&lock);
  v19(v18);
  os_unfair_lock_unlock(&lock);
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 440);
  }

  else
  {
    v12 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __32__NWURLSessionTask_readResponse__block_invoke_39;
  v13[3] = &unk_1E6A33C48;
  v13[4] = v11;
  v14 = v9;
  [v12 task:v11 deliverResponse:v14 completionHandler:v13];

LABEL_11:
}

- (void)updateResponse:(uint64_t)response
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (response)
  {
    peerTrust = [*(response + 264) peerTrust];
    v5 = peerTrust;
    if (peerTrust)
    {
      v8 = *MEMORY[0x1E695AE78];
      v6 = sec_trust_copy_ref(peerTrust);
      v9[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [v3 _setSSLCertificateContext:v7];
    }
  }
}

void __32__NWURLSessionTask_readResponse__block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v5 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 logDescription];
      v7 = *(a1 + 40);
      if (v7)
      {
        [v7 logDescription];
        v8 = v15;
LABEL_11:
        *buf = 68289282;
        v19 = 16;
        v20 = 2098;
        v21 = v16;
        v22 = 1024;
        v23 = v8;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Delivering response with headers:", buf, 0x18u);
        goto LABEL_12;
      }
    }

    else
    {
      v16[0] = 0;
      v16[1] = 0;
      v17 = 0;
    }

    v8 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_11;
  }

LABEL_12:

  v9 = [*(a1 + 32) _allHTTPHeaderFieldsAsArrays];
  v10 = v9;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __32__NWURLSessionTask_readResponse__block_invoke_34;
    v11[3] = &unk_1E6A33BF8;
    v12 = a3;
    v11[4] = *(a1 + 40);
    [v9 enumerateKeysAndObjectsUsingBlock:v11];
  }
}

void __32__NWURLSessionTask_readResponse__block_invoke_39(uint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    nw_context_assert_queue(*(v3 + 320));
    if (*(v3 + 296) != 2)
    {
      switch(a2)
      {
        case 1:
          v5 = [*(v3 + 264) multipartMixedReplaceBoundary];
          if (!v5)
          {
LABEL_24:
            [(NWURLSessionTask *)v3 readResponseBody];
LABEL_25:

            break;
          }

          v6 = [NWURLSessionMultipartParser alloc];
          v7 = *(v3 + 440);
          v8 = *(v3 + 232);
          v9 = v8;
          v10 = v7;
          v80 = v5;
          v11 = v10;
          v12 = v9;
          if (!v6 || (v87.receiver = v6, v87.super_class = NWURLSessionMultipartParser, v13 = objc_msgSendSuper2(&v87, sel_init), (v6 = v13) == 0))
          {
LABEL_23:

            v36 = *(v3 + 272);
            *(v3 + 272) = v6;

            goto LABEL_24;
          }

          v13->_parserState = 0;
          v13->_dispositionState = 0;
          objc_storeStrong(&v13->_responseConsumer, v7);
          objc_storeStrong(&v6->_boundary, v5);
          objc_storeStrong(&v6->_data, MEMORY[0x1E69E9668]);
          v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
          headers = v6->_headers;
          v6->_headers = v14;

          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          parts = v6->_parts;
          v6->_parts = v16;

          objc_storeStrong(&v6->_queue, v8);
          v18 = [(NSString *)v6->_boundary mutableCopy];
          if ([(NSString *)v6->_boundary length]< 3 || [(NSString *)v6->_boundary characterAtIndex:0]!= 45 || [(NSString *)v6->_boundary characterAtIndex:1]!= 45)
          {
            [v18 insertString:@"--" atIndex:0];
          }

          v6->_boundaryPatternSize = [v18 lengthOfBytesUsingEncoding:5];
          v19 = [NWURLSessionMultipartBoundaryRecognizer alloc];
          v20 = v18;
          if (!v19)
          {
            v21 = 0;
            goto LABEL_22;
          }

          v81.receiver = v19;
          v81.super_class = NWURLSessionMultipartBoundaryRecognizer;
          v21 = objc_msgSendSuper2(&v81, sel_init);
          if (!v21)
          {
LABEL_22:

            boundaryRecognizer = v6->_boundaryRecognizer;
            v6->_boundaryRecognizer = v21;

            v32 = objc_alloc_init(NWURLSessionMultipartPartBoundarySuffixRecognizer);
            boundarySuffixRecognizer = v6->_boundarySuffixRecognizer;
            v6->_boundarySuffixRecognizer = v32;

            v34 = objc_alloc_init(NWURLSessionMultipartHeaderRecognizer);
            headerRecognizer = v6->_headerRecognizer;
            v6->_headerRecognizer = v34;

            *&v6->_isFirstBoundary = 1;
            goto LABEL_23;
          }

          v22 = [v20 lengthOfBytesUsingEncoding:1];
          v21->_patternLength = v22;
          v23 = __CFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            v78 = v4;
            v4 = v24;
            v69 = __nwlog_obj();
            os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
            *v89 = 136446210;
            *&v89[4] = "[NWURLSessionMultipartBoundaryRecognizer initWithPattern:]";
            LODWORD(v75) = 12;
            v74 = v89;
            v70 = _os_log_send_and_compose_impl();

            if (__nwlog_should_abort(v70))
            {
              goto LABEL_53;
            }

            free(v70);
            v24 = v4;
            v4 = v78;
          }

          v25 = malloc_type_malloc(v24, 0xB3108712uLL);
          if (!v25)
          {
            v76 = v4;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v4 = gLogObj;
            os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
            *v89 = 136446210;
            *&v89[4] = "[NWURLSessionMultipartBoundaryRecognizer initWithPattern:]";
            LODWORD(v75) = 12;
            v74 = v89;
            v26 = _os_log_send_and_compose_impl();

            if (__nwlog_should_abort(v26))
            {
              goto LABEL_53;
            }

            free(v26);
            v4 = v76;
          }

          v21->_pattern = v25;
          [v20 getCString:v25 maxLength:v21->_patternLength + 1 encoding:{1, v74, v75}];
          v27 = [v20 lengthOfBytesUsingEncoding:1];
          v23 = __CFADD__(v27, 1);
          v28 = v27 + 1;
          v21->_rollbackBufferCapacity = v28;
          if (!v23)
          {
LABEL_18:
            v29 = malloc_type_malloc(v28, 0x3826ECA7uLL);
            if (v29)
            {
LABEL_21:
              v21->_rollbackBuffer = v29;
              goto LABEL_22;
            }

            v77 = v4;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v4 = gLogObj;
            os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
            *v89 = 136446210;
            *&v89[4] = "[NWURLSessionMultipartBoundaryRecognizer initWithPattern:]";
            LODWORD(v75) = 12;
            v74 = v89;
            v30 = _os_log_send_and_compose_impl();

            if (!__nwlog_should_abort(v30))
            {
              free(v30);
              v29 = 0;
              v4 = v77;
              goto LABEL_21;
            }

            goto LABEL_53;
          }

          v79 = v4;
          v71 = v28;
          v4 = __nwlog_obj();
          os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
          *v89 = 136446210;
          *&v89[4] = "[NWURLSessionMultipartBoundaryRecognizer initWithPattern:]";
          LODWORD(v75) = 12;
          v74 = v89;
          v72 = _os_log_send_and_compose_impl();

          if (!__nwlog_should_abort(v72))
          {
            free(v72);
            v28 = v71;
            v4 = v79;
            goto LABEL_18;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        case 3:
          v55 = [NWURLSessionStreamTask alloc];
          v56 = *(v3 + 264);
          [v3 logDescription];
          v57 = [(NWURLSessionStreamTask *)&v55->super.super.isa initWithLoader:v56 identifier:v88 session:*(v3 + 416)];

          [(NWURLSessionTask *)v57 setConfiguration:?];
          v59 = [v3 originalRequest];
          if (v57)
          {
            objc_setProperty_nonatomic_copy(v57, v58, v59, 48);
          }

          v60 = [v3 currentRequest];
          v62 = v60;
          if (v57)
          {
            objc_setProperty_nonatomic_copy(v57, v61, v60, 56);

            objc_storeStrong(v57 + 30, *(v3 + 240));
            objc_storeStrong(v57 + 31, *(v3 + 248));
          }

          else
          {
          }

          [v3 priority];
          [v57 setPriority:?];
          [v57 setPrefersIncrementalDelivery:{objc_msgSend(v3, "prefersIncrementalDelivery")}];
          [(NWURLSessionTask *)v57 setClientMetadataForMetrics:?];
          Property = objc_getProperty(v3, v63, 456, 1);
          if (v57)
          {
            objc_setProperty_atomic(v57, v65, Property, 456);
            *(v57 + 18) = 0;
            v57[37] = 1;
            v66 = [v3 response];
            objc_setProperty_nonatomic_copy(v57, v67, v66, 504);
          }

          else
          {
            v66 = [v3 response];
          }

          [*(v3 + 264) updateClient:v57];
          [NWURLSessionTask setLoader:v3];
          v68 = [(NWURLSessionTask *)v3 delegateWrapper];
          v81.receiver = MEMORY[0x1E69E9820];
          v81.super_class = 3221225472;
          v82 = __55__NWURLSessionTask_handleResponseDisposition_response___block_invoke_3;
          v83 = &unk_1E6A3D760;
          v84 = v3;
          v85 = v57;
          v5 = v57;
          [(NWURLSessionDelegateWrapper *)v68 dataTask:v3 didBecomeStreamTask:v5 completionHandler:&v81];

          v54 = v85;
          goto LABEL_47;
        case 2:
          v38 = [NWURLSessionDownloadTask alloc];
          v39 = *(v3 + 264);
          [v3 logDescription];
          v5 = [(NWURLSessionDownloadTask *)&v38->super.super.isa initWithLoader:v39 identifier:v88 session:*(v3 + 416)];

          [(NWURLSessionTask *)v5 setConfiguration:?];
          v41 = [v3 originalRequest];
          if (v5)
          {
            objc_setProperty_nonatomic_copy(v5, v40, v41, 48);
          }

          v11 = [v3 currentRequest];
          if (v5)
          {
            objc_setProperty_nonatomic_copy(v5, v42, v11, 56);

            objc_storeStrong(v5 + 30, *(v3 + 240));
            objc_storeStrong(v5 + 31, *(v3 + 248));
LABEL_35:
            [v3 priority];
            [v5 setPriority:?];
            [v5 setPrefersIncrementalDelivery:0];
            [(NWURLSessionTask *)v5 setClientMetadataForMetrics:?];
            v44 = objc_getProperty(v3, v43, 456, 1);
            if (v5)
            {
              objc_setProperty_atomic(v5, v45, v44, 456);
              v46 = objc_alloc_init(NWURLSessionResponseConsumerDownload);
              objc_storeStrong(v5 + 55, v46);

              v47 = v5[55];
            }

            else
            {

              v47 = 0;
            }

            *v89 = 0;
            v48 = v47;
            v49 = [v5 currentRequest];
            v50 = [v48 prepareNextRequest:v49 forTask:v5 error:v89];

            if (v5)
            {
              v51 = v5[55];
              v52 = [v3 response];
              [v51 task:v5 deliverResponse:v52 completionHandler:&__block_literal_global_46];

              *(v5 + 18) = 0;
              v5[37] = 1;
            }

            else
            {
              v73 = [v3 response];
              [0 task:0 deliverResponse:v73 completionHandler:&__block_literal_global_46];
            }

            [*(v3 + 264) updateClient:v5];
            [NWURLSessionTask setLoader:v3];
            v53 = [(NWURLSessionTask *)v3 delegateWrapper];
            v81.receiver = MEMORY[0x1E69E9820];
            v81.super_class = 3221225472;
            v82 = __55__NWURLSessionTask_handleResponseDisposition_response___block_invoke_2;
            v83 = &unk_1E6A3B4E0;
            v84 = v3;
            v85 = v5;
            v86 = *v89;
            v5 = v5;
            [(NWURLSessionDelegateWrapper *)v53 dataTask:v3 didBecomeDownloadTask:v5 completionHandler:&v81];

            v54 = *v89;
LABEL_47:

            goto LABEL_25;
          }

LABEL_54:

          goto LABEL_35;
        case 0:
          v37 = [(NWURLSessionTask *)v3 errorForErrorCode:?];
          [v3 completeTaskWithError:v37 retryable:0];

          break;
      }
    }
  }
}

- (void)readResponseBody
{
  if (self)
  {
    nw_context_assert_queue(*(self + 320));
    if (*(self + 296) != 2)
    {
      if (*(self + 18))
      {
        *(self + 19) = 1;
      }

      else
      {
        v2 = *(self + 264);
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = __36__NWURLSessionTask_readResponseBody__block_invoke;
        v4[3] = &unk_1E6A3A620;
        v4[4] = self;
        v5 = v2;
        v3 = v2;
        [v3 readDataOfMinimumIncompleteLength:1 maximumLength:0x100000 completionHandler:v4];
      }
    }
  }
}

- (void)setConfiguration:(uint64_t)configuration
{
  if (configuration)
  {
    objc_storeStrong((configuration + 424), a2);
  }
}

- (void)setClientMetadataForMetrics:(uint64_t)metrics
{
  if (metrics)
  {
    objc_storeStrong((metrics + 256), a2);
  }
}

- (void)delegateWrapper
{
  if (self)
  {
    v2 = 31;
    if (!self[31])
    {
      v2 = 30;
    }

    self = self[v2];
    v1 = vars8;
  }

  return self;
}

void __55__NWURLSessionTask_handleResponseDisposition_response___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 296) = 2, (v3 = *(a1 + 32)) != 0))
  {
    v4 = *(v3 + 416);
  }

  else
  {
    v4 = 0;
  }

  [(NWURLSession *)v4 taskStarted:?];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5[52];
  }

  else
  {
    v6 = 0;
  }

  [(NWURLSession *)v6 taskCompleted:v5];
  v7 = *(a1 + 40);
  if (*(a1 + 48))
  {

    [v7 completeTaskWithError:? retryable:?];
  }

  else
  {

    [(NWURLSessionTask *)v7 readResponseBody];
  }
}

void __55__NWURLSessionTask_handleResponseDisposition_response___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 296) = 2, (v3 = *(a1 + 32)) != 0))
  {
    v4 = *(v3 + 416);
  }

  else
  {
    v4 = 0;
  }

  [(NWURLSession *)v4 taskStarted:?];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5[52];
  }

  else
  {
    v6 = 0;
  }

  [(NWURLSession *)v6 taskCompleted:v5];
}

- (id)initWithRequest:(int)request identifier:(void *)identifier session:
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = a2;
  identifierCopy = identifier;
  if (!self)
  {
    goto LABEL_40;
  }

  v77.receiver = self;
  v77.super_class = NWURLSessionTask;
  v10 = objc_msgSendSuper2(&v77, sel_init);
  self = v10;
  if (!v10)
  {
    goto LABEL_40;
  }

  v11 = identifierCopy + 8;
  if (!identifierCopy)
  {
    v11 = 0;
  }

  *(v10 + 472) = *v11;
  *(v10 + 122) = request;
  objc_storeStrong(v10 + 6, a2);
  objc_storeStrong(self + 7, a2);
  v12 = *MEMORY[0x1E695ABD8];
  self[9] = *MEMORY[0x1E695ABD8];
  self[10] = v12;
  self[13] = v12;
  self[14] = v12;
  objc_storeStrong(self + 52, identifier);
  v13 = [NWURLSessionTaskConfiguration alloc];
  p_isa = &v13->super.isa;
  if (identifierCopy)
  {
    v15 = *(identifierCopy + 12);
    v16 = [(NWURLSessionTaskConfiguration *)p_isa initWithConfiguration:v15 task:self request:v8];
    v17 = self[53];
    self[53] = v16;

    v18 = *(identifierCopy + 18);
  }

  else
  {
    v70 = [(NWURLSessionTaskConfiguration *)&v13->super.isa initWithConfiguration:self task:v8 request:?];
    v71 = self[53];
    self[53] = v70;

    v18 = 0;
  }

  objc_storeStrong(self + 29, v18);
  if (identifierCopy)
  {
    v19 = *(identifierCopy + 20);
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong(self + 40, v19);
  *(self + 7) = *MEMORY[0x1E695ABC0];
  *(self + 12) = 1;
  if (v8)
  {
    v20 = [NWURLSessionDelegateWrapper alloc];
    if (identifierCopy)
    {
      v21 = *(identifierCopy + 19);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [(NWURLSessionDelegateWrapper *)&v20->super.isa initWithFallbackDelegateWrapper:v22];
    v24 = self[30];
    self[30] = v23;

    if (nw_protocol_copy_http_client_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    singleton = _nw_protocol_metadata_create_singleton();
    v26 = self[32];
    self[32] = singleton;

    nw_http_client_metadata_create_next_transaction(self[32], 0);
    v27 = self[32];
    if (v27)
    {
      if (nw_protocol_copy_http_client_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
      }

      if (nw_protocol_metadata_matches_definition(v27, nw_protocol_copy_http_client_definition_definition))
      {
        *v80 = MEMORY[0x1E69E9820];
        *&v80[8] = 3221225472;
        *&v80[16] = __nw_http_client_metadata_set_initial_request_block_invoke;
        v81 = &__block_descriptor_40_e9_B16__0_v8l;
        v82 = v8;
        if (_nw_protocol_metadata_get_handle(v27))
        {
          (*&v80[16])(v80);
        }

        goto LABEL_20;
      }

      v48 = __nwlog_obj();
      *v80 = 136446210;
      *&v80[4] = "nw_http_client_metadata_set_initial_request";
      LODWORD(v73) = 12;
      v72 = v80;
      v45 = _os_log_send_and_compose_impl();

      LOBYTE(location) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v45, &location, &type))
      {
        goto LABEL_101;
      }

      if (location == 17)
      {
        v46 = __nwlog_obj();
        v49 = location;
        if (os_log_type_enabled(v46, location))
        {
          *v80 = 136446210;
          *&v80[4] = "nw_http_client_metadata_set_initial_request";
          _os_log_impl(&dword_181A37000, v46, v49, "%{public}s metadata must be http_client", v80, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        HIDWORD(v73) = location;
        v59 = os_log_type_enabled(v46, location);
        if (backtrace_string)
        {
          if (v59)
          {
            *v80 = 136446466;
            *&v80[4] = "nw_http_client_metadata_set_initial_request";
            *&v80[12] = 2082;
            *&v80[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v46, BYTE4(v73), "%{public}s metadata must be http_client, dumping backtrace:%{public}s", v80, 0x16u);
          }

          free(backtrace_string);
          if (!v45)
          {
LABEL_20:

            v28 = [v8 URL];
            _NW_isHTTPish = [(NSURL *)v28 _NW_isHTTPish];

            if (!_NW_isHTTPish)
            {
              goto LABEL_29;
            }

            objc_initWeak(&location, self);
            v30 = self[32];
            v74[0] = MEMORY[0x1E69E9820];
            v74[1] = 3221225472;
            v74[2] = __55__NWURLSessionTask_initWithRequest_identifier_session___block_invoke;
            v74[3] = &unk_1E6A3A6C8;
            objc_copyWeak(&v75, &location);
            v31 = v30;
            v32 = v74;
            if (v31)
            {
              if (nw_protocol_copy_http_client_definition_onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
              }

              if (nw_protocol_metadata_matches_definition(v31, nw_protocol_copy_http_client_definition_definition))
              {
                *v80 = MEMORY[0x1E69E9820];
                *&v80[8] = 3221225472;
                *&v80[16] = __nw_http_client_metadata_set_prevent_timeout_callback_block_invoke;
                v81 = &unk_1E6A3A978;
                v82 = v32;
                if (_nw_protocol_metadata_get_handle(v31))
                {
                  (*&v80[16])(v80);
                }

                goto LABEL_28;
              }

              v56 = __nwlog_obj();
              *v80 = 136446210;
              *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
              LODWORD(v73) = 12;
              v72 = v80;
              v51 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v78 = 0;
              if (__nwlog_fault(v51, &type, &v78))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v52 = __nwlog_obj();
                  v57 = type;
                  if (os_log_type_enabled(v52, type))
                  {
                    *v80 = 136446210;
                    *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
                    _os_log_impl(&dword_181A37000, v52, v57, "%{public}s metadata must be http_client", v80, 0xCu);
                  }
                }

                else if (v78 == 1)
                {
                  v65 = __nw_create_backtrace_string();
                  v52 = __nwlog_obj();
                  v66 = type;
                  v67 = os_log_type_enabled(v52, type);
                  if (v65)
                  {
                    if (v67)
                    {
                      *v80 = 136446466;
                      *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
                      *&v80[12] = 2082;
                      *&v80[14] = v65;
                      _os_log_impl(&dword_181A37000, v52, v66, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", v80, 0x16u);
                    }

                    free(v65);
                    if (!v51)
                    {
                      goto LABEL_28;
                    }

                    goto LABEL_110;
                  }

                  if (v67)
                  {
                    *v80 = 136446210;
                    *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
                    _os_log_impl(&dword_181A37000, v52, v66, "%{public}s metadata must be http_client, no backtrace", v80, 0xCu);
                  }
                }

                else
                {
                  v52 = __nwlog_obj();
                  v69 = type;
                  if (os_log_type_enabled(v52, type))
                  {
                    *v80 = 136446210;
                    *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
                    _os_log_impl(&dword_181A37000, v52, v69, "%{public}s metadata must be http_client, backtrace limit exceeded", v80, 0xCu);
                  }
                }

                goto LABEL_108;
              }

LABEL_109:
              if (!v51)
              {
LABEL_28:

                objc_destroyWeak(&v75);
                objc_destroyWeak(&location);
LABEL_29:
                v33 = [NWURLSessionTaskMetrics alloc];
                v34 = self[32];
                v35 = v34;
                if (v33)
                {
                  *v80 = v33;
                  *&v80[8] = NWURLSessionTaskMetrics;
                  v36 = objc_msgSendSuper2(v80, sel_init);
                  v33 = v36;
                  if (v36)
                  {
                    objc_storeStrong(&v36->_clientMetadata, v34);
                  }
                }

                v37 = self[57];
                self[57] = v33;

                goto LABEL_33;
              }

LABEL_110:
              free(v51);
              goto LABEL_28;
            }

            v50 = __nwlog_obj();
            *v80 = 136446210;
            *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
            LODWORD(v73) = 12;
            v72 = v80;
            v51 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v78 = 0;
            if (!__nwlog_fault(v51, &type, &v78))
            {
              goto LABEL_109;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v52 = __nwlog_obj();
              v53 = type;
              if (os_log_type_enabled(v52, type))
              {
                *v80 = 136446210;
                *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
                _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null metadata", v80, 0xCu);
              }
            }

            else if (v78 == 1)
            {
              v61 = __nw_create_backtrace_string();
              v52 = __nwlog_obj();
              v62 = type;
              v63 = os_log_type_enabled(v52, type);
              if (v61)
              {
                if (v63)
                {
                  *v80 = 136446466;
                  *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
                  *&v80[12] = 2082;
                  *&v80[14] = v61;
                  _os_log_impl(&dword_181A37000, v52, v62, "%{public}s called with null metadata, dumping backtrace:%{public}s", v80, 0x16u);
                }

                free(v61);
                goto LABEL_109;
              }

              if (v63)
              {
                *v80 = 136446210;
                *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
                _os_log_impl(&dword_181A37000, v52, v62, "%{public}s called with null metadata, no backtrace", v80, 0xCu);
              }
            }

            else
            {
              v52 = __nwlog_obj();
              v68 = type;
              if (os_log_type_enabled(v52, type))
              {
                *v80 = 136446210;
                *&v80[4] = "nw_http_client_metadata_set_prevent_timeout_callback";
                _os_log_impl(&dword_181A37000, v52, v68, "%{public}s called with null metadata, backtrace limit exceeded", v80, 0xCu);
              }
            }

LABEL_108:

            goto LABEL_109;
          }

LABEL_102:
          free(v45);
          goto LABEL_20;
        }

        if (v59)
        {
          *v80 = 136446210;
          *&v80[4] = "nw_http_client_metadata_set_initial_request";
          _os_log_impl(&dword_181A37000, v46, BYTE4(v73), "%{public}s metadata must be http_client, no backtrace", v80, 0xCu);
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v64 = location;
        if (os_log_type_enabled(v46, location))
        {
          *v80 = 136446210;
          *&v80[4] = "nw_http_client_metadata_set_initial_request";
          _os_log_impl(&dword_181A37000, v46, v64, "%{public}s metadata must be http_client, backtrace limit exceeded", v80, 0xCu);
        }
      }
    }

    else
    {
      v44 = __nwlog_obj();
      *v80 = 136446210;
      *&v80[4] = "nw_http_client_metadata_set_initial_request";
      LODWORD(v73) = 12;
      v72 = v80;
      v45 = _os_log_send_and_compose_impl();

      LOBYTE(location) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v45, &location, &type))
      {
        goto LABEL_101;
      }

      if (location == 17)
      {
        v46 = __nwlog_obj();
        v47 = location;
        if (os_log_type_enabled(v46, location))
        {
          *v80 = 136446210;
          *&v80[4] = "nw_http_client_metadata_set_initial_request";
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null metadata", v80, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v54 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        HIDWORD(v73) = location;
        v55 = os_log_type_enabled(v46, location);
        if (v54)
        {
          if (v55)
          {
            *v80 = 136446466;
            *&v80[4] = "nw_http_client_metadata_set_initial_request";
            *&v80[12] = 2082;
            *&v80[14] = v54;
            _os_log_impl(&dword_181A37000, v46, BYTE4(v73), "%{public}s called with null metadata, dumping backtrace:%{public}s", v80, 0x16u);
          }

          free(v54);
LABEL_101:
          if (!v45)
          {
            goto LABEL_20;
          }

          goto LABEL_102;
        }

        if (v55)
        {
          *v80 = 136446210;
          *&v80[4] = "nw_http_client_metadata_set_initial_request";
          _os_log_impl(&dword_181A37000, v46, BYTE4(v73), "%{public}s called with null metadata, no backtrace", v80, 0xCu);
        }
      }

      else
      {
        v46 = __nwlog_obj();
        v60 = location;
        if (os_log_type_enabled(v46, location))
        {
          *v80 = 136446210;
          *&v80[4] = "nw_http_client_metadata_set_initial_request";
          _os_log_impl(&dword_181A37000, v46, v60, "%{public}s called with null metadata, backtrace limit exceeded", v80, 0xCu);
        }
      }
    }

    goto LABEL_101;
  }

LABEL_33:
  if (ne_tracker_should_save_stacktrace())
  {
    if (identifierCopy)
    {
      v38 = *(identifierCopy + 12);
    }

    else
    {
      v38 = 0;
    }

    _skipsStackTraceCapture = [v38 _skipsStackTraceCapture];

    if ((_skipsStackTraceCapture & 1) == 0)
    {
      *v80 = 0;
      v40 = ne_tracker_copy_current_stacktrace();
      if (v40)
      {
        v41 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v40 length:*v80];
        v42 = self[49];
        self[49] = v41;
      }
    }
  }

  *(self + 18) = 1;
  self[37] = 0;
LABEL_40:

  return self;
}

void __55__NWURLSessionTask_initWithRequest_identifier_session___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NWURLSessionTask *)WeakRetained restartRequestTimer];
}

- (void)complete:(uint64_t)complete
{
  v128 = *MEMORY[0x1E69E9840];
  if (complete)
  {
    v3 = *(complete + 320);
    v4 = a2;
    nw_context_assert_queue(v3);
    v6 = *(complete + 344);
    if (v6)
    {
      *(complete + 344) = 0;
      nw_queue_cancel_source(v6, v5);
    }

    v7 = *(complete + 336);
    if (v7)
    {
      *(complete + 336) = 0;
      nw_queue_cancel_source(v7, v5);
    }

    v8 = *(complete + 360);
    if (v8)
    {
      *(complete + 360) = 0;
      nw_queue_cancel_source(v8, v5);
    }

    v9 = *(complete + 352);
    if (v9)
    {
      *(complete + 352) = 0;
      nw_queue_cancel_source(v9, v5);
    }

    v10 = *(complete + 368);
    if (v10)
    {
      v11 = v10;
      error = [complete error];

      if (!error)
      {
        v13 = *(complete + 376);
        [*(complete + 376) setCompletedUnitCount:{objc_msgSend(v13, "totalUnitCount")}];

        v14 = *(complete + 384);
        [*(complete + 384) setCompletedUnitCount:{objc_msgSend(v14, "totalUnitCount")}];
      }
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __43__NWURLSessionTask_finishProgressReporting__block_invoke;
    *v122 = &unk_1E6A3D868;
    *&v122[8] = complete;
    os_unfair_lock_lock((complete + 8));
    __43__NWURLSessionTask_finishProgressReporting__block_invoke(buf);
    os_unfair_lock_unlock((complete + 8));
    *(complete + 296) = 2;
    v4[2](v4);

    [*(complete + 264) stop];
    v15 = *(complete + 264);
    *(complete + 264) = 0;

    error2 = [complete error];
    v17 = error2;
    if (error2)
    {
      v18 = 16 * ([error2 code] != -999);
      v19 = *(complete + 424);
      if (v19)
      {
        v20 = [*(v19 + 16) _loggingPrivacyLevel] < 3;
      }

      else
      {
        v20 = 1;
      }

      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v21 = gurlLogObj;
      v22 = os_log_type_enabled(v21, v18);
      if (v20)
      {
        if (v22)
        {
          [complete logDescription];
          [complete logDescription];
          code = [v17 code];
          *buf = 68289794;
          *&buf[4] = 16;
          *&buf[8] = 2098;
          *&buf[10] = &v116;
          *&buf[18] = 1024;
          *&buf[20] = v115;
          *v122 = 2048;
          *&v122[2] = code;
          *&v122[10] = 2112;
          *&v122[12] = v17;
          v24 = "Task <%{public,uuid_t}.16P>.<%u> finished with error [%ld] %@";
LABEL_27:
          v25 = v21;
          v26 = v18;
          v27 = 44;
          goto LABEL_28;
        }
      }

      else if (v22)
      {
        [complete logDescription];
        [complete logDescription];
        code2 = [v17 code];
        *buf = 68289795;
        *&buf[4] = 16;
        *&buf[8] = 2098;
        *&buf[10] = &v114;
        *&buf[18] = 1024;
        *&buf[20] = v113;
        *v122 = 2048;
        *&v122[2] = code2;
        *&v122[10] = 2117;
        *&v122[12] = v17;
        v24 = "Task <%{public,uuid_t}.16P>.<%u> finished with error [%ld] %{sensitive}@";
        goto LABEL_27;
      }
    }

    else
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v21 = gurlLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        [complete logDescription];
        [complete logDescription];
        *buf = 68289282;
        *&buf[4] = 16;
        *&buf[8] = 2098;
        *&buf[10] = &v118;
        *&buf[18] = 1024;
        *&buf[20] = v117;
        v24 = "Task <%{public,uuid_t}.16P>.<%u> finished successfully";
        v25 = v21;
        v26 = OS_LOG_TYPE_DEFAULT;
        v27 = 24;
LABEL_28:
        _os_log_impl(&dword_181A37000, v25, v26, v24, buf, v27);
      }
    }

    activity = [(NWURLSessionTaskConfiguration *)*(complete + 424) activity];
    v31 = *(complete + 424);
    if (v31)
    {
      activity2 = [(NWURLSessionTaskConfiguration *)*(complete + 424) activity];
      _nw_activity = [*(v31 + 24) _nw_activity];
      v34 = activity2 == _nw_activity;

      if (!v34)
      {
        if (v17)
        {
          if ([v17 code] == -999)
          {
            v35 = 4;
          }

          else
          {
            v35 = 3;
          }
        }

        else
        {
          v35 = 2;
        }

        nw_activity_complete_with_reason_and_underlying_error(activity, v35, 1, [v17 code]);
      }
    }

    Property = objc_getProperty(complete, v29, 456, 1);
    completeCopy = complete;
    v38 = activity;
    v39 = v38;
    if (!Property || !nw_activity_is_selected_for_reporting(v38))
    {
      goto LABEL_89;
    }

    v40 = Property[2];
    v41 = v40;
    v101 = v39;
    if (!v40)
    {
      v83 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_client_metadata_get_transaction_count";
      LODWORD(v98) = 12;
      v97 = buf;
      v84 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v105) = 0;
      if (!__nwlog_fault(v84, type, &v105))
      {
        goto LABEL_124;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v85 = __nwlog_obj();
        v86 = type[0];
        if (os_log_type_enabled(v85, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_transaction_count";
          _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null metadata", buf, 0xCu);
        }
      }

      else if (v105 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v85 = __nwlog_obj();
        v90 = type[0];
        v91 = os_log_type_enabled(v85, type[0]);
        if (backtrace_string)
        {
          if (v91)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_client_metadata_get_transaction_count";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v85, v90, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v84)
          {
            goto LABEL_126;
          }

          goto LABEL_125;
        }

        if (v91)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_transaction_count";
          _os_log_impl(&dword_181A37000, v85, v90, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v85 = __nwlog_obj();
        v95 = type[0];
        if (os_log_type_enabled(v85, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_transaction_count";
          _os_log_impl(&dword_181A37000, v85, v95, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_123;
    }

    v42 = nw_protocol_copy_http_client_definition_onceToken;
    v43 = v40;
    if (v42 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    v44 = nw_protocol_metadata_matches_definition(v43, nw_protocol_copy_http_client_definition_definition);

    if (v44)
    {
      *type = 0;
      v110 = type;
      v111 = 0x2020000000;
      v112 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_client_metadata_get_transaction_count_block_invoke;
      *v122 = &unk_1E6A3A858;
      *&v122[8] = type;
      if (_nw_protocol_metadata_get_handle(v43))
      {
        (*&buf[16])(buf);
      }

      v100 = *(v110 + 12);
      _Block_object_dispose(type, 8);
LABEL_46:

      v45 = malloc_type_calloc(1uLL, 80 * v100 + 88, 0x62E88BF1uLL);
      if (!v45)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        *&buf[4] = "[NWURLSessionTaskMetrics reportToSymptoms:activity:]";
        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        *v122 = 80 * v100 + 88;
        LODWORD(v98) = 32;
        v97 = buf;
        v47 = _os_log_send_and_compose_impl();

        if (__nwlog_should_abort(v47))
        {
          __break(1u);
          return;
        }

        free(v47);
      }

      v126 = 0uLL;
      v127 = 0;
      [completeCopy logDescription];
      v45[1] = v126;
      *(v45 + 18) = v127;
      start_time = nw_http_client_metadata_get_start_time(Property[2]);
      v49 = dword_1ED4117CC;
      if (!dword_1ED4117CC)
      {
        v50 = start_time;
        mach_timebase_info(&time_base);
        start_time = v50;
        v49 = dword_1ED4117CC;
      }

      *(v45 + 4) = start_time * time_base / v49 / 0xF4240;
      end_time = nw_http_client_metadata_get_end_time(Property[2]);
      if (end_time)
      {
        v52 = dword_1ED4117CC;
        if (dword_1ED4117CC)
        {
          goto LABEL_53;
        }
      }

      else
      {
        end_time = mach_continuous_time();
        if (end_time <= 1)
        {
          end_time = 1;
        }

        v52 = dword_1ED4117CC;
        if (dword_1ED4117CC)
        {
LABEL_53:
          *(v45 + 5) = end_time * time_base / v52 / 0xF4240;
          error3 = [completeCopy error];
          *(v45 + 6) = [error3 code];
          userInfo = [error3 userInfo];
          v99 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

          *(v45 + 7) = [v99 code];
          nw_activity_get_token(v101, v45);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = *(v45 + 82) & 0xF0 | 3;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v55 = *(v45 + 82) & 0xF0 | 2;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v55 = *(v45 + 82) & 0xF0 | 4;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v55 = *(v45 + 82) & 0xF0 | 5;
                }

                else
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  v58 = *(v45 + 82) & 0xF0;
                  if (isKindOfClass)
                  {
                    v55 = v58 | 6;
                  }

                  else
                  {
                    v55 = v58 | 1;
                  }
                }
              }
            }
          }

          *(v45 + 82) = v55;
          *(v45 + 82) = v55 & 0xCF | 0x20;
          v59 = *(complete + 424);
          v60 = v59;
          if (v59)
          {
            if ([v59[2] _disableAPWakeOnIdleConnections])
            {
              v61 = 64;
            }

            else
            {
              v61 = 0;
            }
          }

          else
          {
            v61 = 0;
          }

          *(v45 + 82) = *(v45 + 82) & 0xBF | v61;

          *(v45 + 82) &= ~0x80u;
          *type = 0;
          v110 = type;
          v111 = 0x2020000000;
          LOWORD(v112) = 0;
          v105 = 0;
          v106 = &v105;
          v107 = 0x2020000000;
          v108 = 0;
          v103[0] = 0;
          v103[1] = v103;
          v103[2] = 0x2020000000;
          v104 = 0;
          v62 = Property[2];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __53__NWURLSessionTaskMetrics_reportToSymptoms_activity___block_invoke;
          *v122 = &unk_1E6A2FF98;
          *&v122[16] = v103;
          v123 = type;
          v124 = &v105;
          v125 = v45;
          *&v122[8] = completeCopy;
          nw_http_client_metadata_enumerate_transactions(v62, buf);

          *(v45 + 38) = *(v106 + 12);
          *(v45 + 39) = *(v110 + 12);
          *(v45 + 40) = v100;
          if (reportToSymptoms_activity__onceToken[0] != -1)
          {
            dispatch_once(reportToSymptoms_activity__onceToken, &__block_literal_global_29078);
          }

          symptom_new();
          symptom_set_qualifier();
          symptom_set_additional_qualifier();
          if (!os_variant_has_internal_diagnostics() || !networkd_settings_get_BOOL(nw_setting_activity_write_metric_stream_to_log))
          {
            symptom_send();
LABEL_88:
            free(v45);

            _Block_object_dispose(v103, 8);
            _Block_object_dispose(&v105, 8);
            _Block_object_dispose(type, 8);

            v39 = v101;
LABEL_89:

            v81 = *(complete + 424);
            *(complete + 424) = 0;

            [completeCopy setSecTrust:0];
            objc_setProperty_atomic_copy(completeCopy, v82, 0, 312);
            [(NWURLSession *)completeCopy[52] taskCompleted:completeCopy];

            return;
          }

          v63 = NWCreateDictionaryFromCFNetworkTaskMetrics(v45);
          v64 = MEMORY[0x1E696AD98];
          v65 = v101;
          v66 = v63;
          v67 = [v64 numberWithUnsignedInt:nw_activity_get_label(v65)];
          [v66 setObject:v67 forKeyedSubscript:@"activityLabel"];

          v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:nw_activity_get_domain(v65)];
          [v66 setObject:v68 forKeyedSubscript:@"activityDomain"];

          v69 = MEMORY[0x1E696AD98];
          investigation_identifier = nw_activity_get_investigation_identifier(v65);

          v71 = [v69 numberWithUnsignedLongLong:investigation_identifier];
          [v66 setObject:v71 forKeyedSubscript:@"identifier"];

          v102 = 0;
          v72 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v66 options:0 error:&v102];
          v73 = v102;
          if (v72)
          {
            if (__nwlog_metricstream_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_metricstream_log::onceToken, &__block_literal_global_68);
            }

            v74 = gmetricstreamLogObj;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_87;
            }

            v75 = [v72 length];
            bytes = [v72 bytes];
            *v119 = 68157954;
            *v120 = v75;
            *&v120[4] = 2082;
            *&v120[6] = bytes;
            v77 = "%{public}.*s";
            v78 = v74;
            v79 = OS_LOG_TYPE_DEFAULT;
            v80 = 18;
          }

          else
          {
            if (__nwlog_url_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
            }

            v74 = gurlLogObj;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_87;
            }

            *v119 = 138412290;
            *v120 = v73;
            v77 = "Failed to serialize metrics to JSON: %@";
            v78 = v74;
            v79 = OS_LOG_TYPE_ERROR;
            v80 = 12;
          }

          _os_log_impl(&dword_181A37000, v78, v79, v77, v119, v80);
LABEL_87:

          goto LABEL_88;
        }
      }

      v56 = end_time;
      mach_timebase_info(&time_base);
      end_time = v56;
      v52 = dword_1ED4117CC;
      goto LABEL_53;
    }

    v87 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_client_metadata_get_transaction_count";
    LODWORD(v98) = 12;
    v97 = buf;
    v84 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v105) = 0;
    if (__nwlog_fault(v84, type, &v105))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v85 = __nwlog_obj();
        v88 = type[0];
        if (os_log_type_enabled(v85, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_transaction_count";
          _os_log_impl(&dword_181A37000, v85, v88, "%{public}s metadata must be http_client", buf, 0xCu);
        }

LABEL_123:

        goto LABEL_124;
      }

      if (v105 != 1)
      {
        v85 = __nwlog_obj();
        v96 = type[0];
        if (os_log_type_enabled(v85, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_transaction_count";
          _os_log_impl(&dword_181A37000, v85, v96, "%{public}s metadata must be http_client, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_123;
      }

      v92 = __nw_create_backtrace_string();
      v85 = __nwlog_obj();
      v93 = type[0];
      v94 = os_log_type_enabled(v85, type[0]);
      if (!v92)
      {
        if (v94)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_client_metadata_get_transaction_count";
          _os_log_impl(&dword_181A37000, v85, v93, "%{public}s metadata must be http_client, no backtrace", buf, 0xCu);
        }

        goto LABEL_123;
      }

      if (v94)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_client_metadata_get_transaction_count";
        *&buf[12] = 2082;
        *&buf[14] = v92;
        _os_log_impl(&dword_181A37000, v85, v93, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v92);
    }

LABEL_124:
    if (!v84)
    {
LABEL_126:
      v100 = 0;
      goto LABEL_46;
    }

LABEL_125:
    free(v84);
    goto LABEL_126;
  }
}

+ (BOOL)isSubclassOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NWURLSessionTask;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isEqual:objc_opt_class()];
  }
}

void __36__NWURLSessionTask_readResponseBody__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = (a1 + 40);
    if (*(v10 + 264) == *(a1 + 40) && *(v10 + 296) != 2)
    {
      goto LABEL_4;
    }

LABEL_35:
    v27 = v8;
    goto LABEL_29;
  }

  v11 = (a1 + 40);
  if (*(a1 + 40))
  {
    goto LABEL_35;
  }

LABEL_4:
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __36__NWURLSessionTask_readResponseBody__block_invoke_2;
  v55[3] = &unk_1E6A33CB8;
  v12 = v7;
  v13 = *(a1 + 32);
  v56 = v12;
  v57 = v13;
  v58 = a3;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 0x40000000;
  v60 = __nw_http_diag_log_for_level_block_invoke;
  v61 = &unk_1E6A303F0;
  v63 = 3;
  v64 = 1;
  v62 = v55;
  os_unfair_lock_lock(&lock);
  v60(v59);
  os_unfair_lock_unlock(&lock);
  if (!a3)
  {
    goto LABEL_12;
  }

  v14 = [*v11 trailerFields];
  if (v14)
  {
    v39 = v7;
    v15 = objc_alloc(MEMORY[0x1E695DF90]);
    v16 = v14;
    count = _nw_http_fields_get_count();

    v18 = [v15 initWithCapacity:count];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __36__NWURLSessionTask_readResponseBody__block_invoke_49;
    v53[3] = &unk_1E6A33CE0;
    v19 = v18;
    v54 = v19;
    v20 = v16;
    v21 = v53;
    _nw_http_fields_enumerate(v20, v21);

    v23 = [v19 copy];
    v24 = *(a1 + 32);
    if (v24)
    {
      objc_setProperty_atomic(v24, v22, v23, 216);
    }

    v7 = v39;
  }

  if ([*v11 requestComplete])
  {
    v25 = 1;
    v26 = *(a1 + 32);
    if (!v9)
    {
LABEL_11:
      v27 = 0;
      goto LABEL_18;
    }
  }

  else
  {
LABEL_12:
    v25 = v9 != 0;
    v26 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (v26 && v26[35])
  {
    v27 = v9;
  }

  else
  {
    v27 = [v26 errorWithResumeData:{v9, v39}];

    v28 = *(a1 + 32);
    if (v28)
    {
      objc_storeStrong((v28 + 280), v27);
      v26 = *(a1 + 32);
    }

    else
    {
      v26 = 0;
    }
  }

LABEL_18:
  [(NWURLSessionTask *)v26 restartRequestTimer];
  v29 = *(a1 + 32);
  if (!v29)
  {
    v35 = v7;
    v33 = 0;
    LODWORD(v39) = 0;
    v34 = 0;
    v36 = 0;
    goto LABEL_26;
  }

  v30 = v29[34];
  v31 = v29[35];
  if (!v30)
  {
    v33 = v31;
    if (v33 && [*(a1 + 32) automaticRetry])
    {

      v25 = 0;
      v33 = 0;
      LOBYTE(a3) = 0;
      v34 = 1;
      LODWORD(v39) = 1;
    }

    else
    {
      v34 = 0;
      LODWORD(v39) = 0;
    }

    v35 = v7;
    v29 = *(a1 + 32);
    if (v29)
    {
      v36 = v29[55];
    }

    else
    {
      v36 = 0;
    }

LABEL_26:
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __36__NWURLSessionTask_readResponseBody__block_invoke_5;
    v43 = &unk_1E6A33D30;
    v44 = v29;
    v46 = v25;
    v47 = v34;
    v48 = a3;
    v45 = *v11;
    [v36 task:v29 deliverData:v12 complete:v25 error:v33 completionHandler:&v40];
    v7 = v35;
    if (v39)
    {
      v37 = *(a1 + 32);
      if (v37)
      {
        v38 = v37[35];
      }

      else
      {
        v38 = 0;
      }

      [v37 completeTaskWithError:v38 retryable:{1, v39, v40, v41, v42, v43, v44}];
    }

    goto LABEL_28;
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __36__NWURLSessionTask_readResponseBody__block_invoke_2_54;
  v49[3] = &unk_1E6A33D08;
  v49[4] = v29;
  v51 = v25;
  v52 = a3;
  v50 = *v11;
  v32 = v30;
  [(NWURLSessionMultipartParser *)v32 task:v29 handleMultipartData:v12 complete:v25 error:v31 completionHandler:v49];

LABEL_28:
LABEL_29:
}

void __36__NWURLSessionTask_readResponseBody__block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    size = dispatch_data_get_size(*(a1 + 32));
    if (size >= 1)
    {
      v4 = v1;
      if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
      }

      v5 = ghttp_diagnosticsLogObj;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v6 = *(a1 + 40);
      if (v6)
      {
        [v6 logDescription];
        v7 = *(a1 + 40);
        if (v7)
        {
          [v7 logDescription];
          v8 = v13;
LABEL_11:
          v9 = *(a1 + 48);
          v10 = [v4 bytes];
          *buf = 68290050;
          v18 = 16;
          v19 = 2098;
          v20 = &v14;
          v21 = 1024;
          v22 = v8;
          v23 = 1024;
          v24 = v9;
          v25 = 1040;
          v26 = size;
          v27 = 2096;
          v28 = v10;
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Reading response body (complete: %{BOOL}d) with data:\n%{network:data}.*P", buf, 0x2Eu);
LABEL_12:

          return;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        LODWORD(v16) = 0;
      }

      v8 = 0;
      v11 = 0;
      v12 = 0;
      LODWORD(v13) = 0;
      goto LABEL_11;
    }
  }
}

uint64_t __36__NWURLSessionTask_readResponseBody__block_invoke_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %s", v7, a4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
  }
  v8 = ;
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];

  return 1;
}

uint64_t __36__NWURLSessionTask_readResponseBody__block_invoke_2_54(uint64_t a1)
{
  result = *(a1 + 32);
  if ((!result || *(result + 296) != 2) && (*(a1 + 48) & 1) == 0)
  {
    if (*(a1 + 49) == 1)
    {
      v6[5] = v1;
      v6[6] = v2;
      v5 = *(a1 + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __36__NWURLSessionTask_readResponseBody__block_invoke_3;
      v6[3] = &unk_1E6A3D868;
      v6[4] = result;
      return [v5 notifyRequestCompletion:v6];
    }

    else
    {

      return [NWURLSessionTask readResponseBody];
    }
  }

  return result;
}

uint64_t __36__NWURLSessionTask_readResponseBody__block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if ((!result || *(result + 296) != 2) && (*(a1 + 48) & 1) == 0 && (*(a1 + 49) & 1) == 0)
  {
    if (*(a1 + 50) == 1)
    {
      v6[5] = v1;
      v6[6] = v2;
      v5 = *(a1 + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __36__NWURLSessionTask_readResponseBody__block_invoke_6;
      v6[3] = &unk_1E6A3D868;
      v6[4] = result;
      return [v5 notifyRequestCompletion:v6];
    }

    else
    {

      return [NWURLSessionTask readResponseBody];
    }
  }

  return result;
}

uint64_t __36__NWURLSessionTask_readResponseBody__block_invoke_6(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1)
  {
    v2 = 0;
    return [v2 task:? deliverData:? complete:? error:? completionHandler:?];
  }

  if (*(v1 + 296) != 2)
  {
    v2 = *(v1 + 440);
    return [v2 task:? deliverData:? complete:? error:? completionHandler:?];
  }

  return result;
}

void __36__NWURLSessionTask_readResponseBody__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_4;
  }

  if (v1[37] != 2)
  {
    v2 = v1[34];
LABEL_4:
    [(NWURLSessionMultipartParser *)v2 task:v1 handleMultipartData:0 complete:1 error:0 completionHandler:&__block_literal_global_56_48162];
  }
}

void __32__NWURLSessionTask_readResponse__block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) != 1)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __32__NWURLSessionTask_readResponse__block_invoke_35;
    v16[3] = &unk_1E6A33BD0;
    v7 = v11;
    v17 = v7;
    [v6 enumerateObjectsUsingBlock:v16];
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v12 = ghttp_diagnosticsLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      [v13 logDescription];
      v14 = *(a1 + 32);
      if (v14)
      {
        [v14 logDescription];
        v15 = v20;
LABEL_17:
        *buf = 68289794;
        v29 = 16;
        v30 = 2098;
        v31 = v21;
        v32 = 1024;
        v33 = v15;
        v34 = 2112;
        v35 = v5;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> ├ %@: %@", buf, 0x2Cu);
LABEL_18:

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
      v21[0] = 0;
      v21[1] = 0;
      v22 = 0;
    }

    v15 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  if (v5)
  {
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v7 = ghttp_diagnosticsLogObj;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      [v8 logDescription];
      v9 = *(a1 + 32);
      if (v9)
      {
        [v9 logDescription];
        v10 = v25;
LABEL_21:
        *buf = 68289794;
        v29 = 16;
        v30 = 2098;
        v31 = v26;
        v32 = 1024;
        v33 = v10;
        v34 = 2112;
        v35 = v5;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> ├ %@: %@", buf, 0x2Cu);
        goto LABEL_22;
      }
    }

    else
    {
      v26[0] = 0;
      v26[1] = 0;
      v27 = 0;
    }

    v10 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_21;
  }

LABEL_23:
}

void __32__NWURLSessionTask_readResponse__block_invoke_35(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v8 = 0;
  v3 = a2;
  v4 = [v3 UTF8String];
  v5 = strlen(v4);
  __nwlog_salted_hash(v4, v5, &v8);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v8];
  [v6 addObject:v7];
}

- (int64_t)state
{
  if (!self)
  {
    return 1;
  }

  internalState = self->_internalState;
  if (internalState != 2)
  {
    if (internalState == 1)
    {
      return self->_suspended;
    }

    return 1;
  }

  return 3;
}

- (void)set_internalDelegate:(id)delegate
{
  newValue = delegate;
  if (newValue)
  {
    if (self)
    {
      internalDelegateWrapper = self->_internalDelegateWrapper;
      if (internalDelegateWrapper)
      {
LABEL_7:
        objc_setProperty_atomic(internalDelegateWrapper, v4, newValue, 24);
        goto LABEL_10;
      }

      v6 = [NWURLSessionDelegateWrapper alloc];
      publicDelegateWrapper = self->_publicDelegateWrapper;
    }

    else
    {
      v6 = [NWURLSessionDelegateWrapper alloc];
      publicDelegateWrapper = 0;
    }

    v8 = publicDelegateWrapper;
    v9 = [(NWURLSessionDelegateWrapper *)&v6->super.isa initWithFallbackDelegateWrapper:v8];
    v10 = v9;
    if (!self)
    {

      goto LABEL_10;
    }

    objc_storeStrong(&self->_internalDelegateWrapper, v9);

    internalDelegateWrapper = self->_internalDelegateWrapper;
    v4 = newValue;
    if (!internalDelegateWrapper)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (!self)
  {
    goto LABEL_11;
  }

  v11 = self->_internalDelegateWrapper;
  self->_internalDelegateWrapper = 0;

LABEL_10:
  v4 = newValue;
LABEL_11:
}

- (NSURLSessionTaskDelegate)_internalDelegate
{
  if (self && (internalDelegateWrapper = self->_internalDelegateWrapper) != 0)
  {
    return objc_getProperty(internalDelegateWrapper, a2, 24, 1);
  }

  else
  {
    return 0;
  }
}

- (void)setDelegate:(id)delegate
{
  if (self)
  {
    publicDelegateWrapper = self->_publicDelegateWrapper;
    if (publicDelegateWrapper)
    {
      objc_setProperty_atomic(publicDelegateWrapper, a2, delegate, 24);
    }
  }
}

- (NSURLSessionTaskDelegate)delegate
{
  if (self && (publicDelegateWrapper = self->_publicDelegateWrapper) != 0)
  {
    return objc_getProperty(publicDelegateWrapper, a2, 24, 1);
  }

  else
  {
    return 0;
  }
}

- (NSURLResponse)response
{
  if (self)
  {
    self = self->_responseConsumer;
  }

  return [(NWURLSessionTask *)self response];
}

- (unint64_t)taskIdentifier
{
  v4 = *MEMORY[0x1E69E9840];
  [(NWURLSessionTask *)self logDescription];
  return v3;
}

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v3 = gurlLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    *buf = 68289282;
    v9 = 16;
    v10 = 2098;
    v11 = &v7;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> cancelling", buf, 0x18u);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__NWURLSessionTask_cancel__block_invoke;
  v5[3] = &unk_1E6A3D868;
  v5[4] = self;
  dispatch_async(queue, v5);
}

void __26__NWURLSessionTask_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NWURLError alloc];
    v3 = v1[33];
    v4 = v1;
    if (v2 && (v5 = [(NWURLError *)v2 initWithErrorCode:-999]) != 0)
    {
      v6 = v5;
      [(NWURLError *)v5 fillErrorForLoader:v3 andTask:v4];
    }

    else
    {
      v6 = 0;
    }

    [v1 completeTaskWithError:v6 retryable:0];
  }

  else
  {
    v6 = 0;
    [0 completeTaskWithError:0 retryable:0];
  }
}

- (void)suspend
{
  v14 = *MEMORY[0x1E69E9840];
  if (__nwlog_url_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
  }

  v3 = gurlLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [(NWURLSessionTask *)self logDescription];
    [(NWURLSessionTask *)self logDescription];
    *buf = 68289282;
    v9 = 16;
    v10 = 2098;
    v11 = &v7;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> suspending", buf, 0x18u);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__NWURLSessionTask_suspend__block_invoke;
  v5[3] = &unk_1E6A3D868;
  v5[4] = self;
  dispatch_async(queue, v5);
}

uint64_t __27__NWURLSessionTask_suspend__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 18) = 1;
  }

  return result;
}

void __26__NWURLSessionTask_resume__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v5 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      [v6 logDescription];
      v7 = *(a1 + 32);
      if (v7)
      {
        [v7 logDescription];
        v8 = v39;
        v9 = *(a1 + 32);
LABEL_9:
        v10 = [v9 currentRequest];
        v11 = [v10 HTTPMethod];
        *buf = 68289538;
        v43 = 16;
        v44 = 2098;
        v45 = v40;
        v46 = 1024;
        v47 = v8;
        v48 = 2112;
        v49 = v11;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Current Request Method: %@", buf, 0x22u);

        goto LABEL_10;
      }
    }

    else
    {
      v40[0] = 0;
      v40[1] = 0;
      v41 = 0;
    }

    v9 = 0;
    v8 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_9;
  }

LABEL_10:

  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v12 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      [v13 logDescription];
      v14 = *(a1 + 32);
      if (v14)
      {
        [v14 logDescription];
        v15 = v34;
        v16 = *(a1 + 32);
LABEL_18:
        v17 = [v16 currentRequest];
        v18 = [v17 URL];
        *buf = 68289538;
        v43 = 16;
        v44 = 2098;
        v45 = v35;
        v46 = 1024;
        v47 = v15;
        v48 = 2112;
        v49 = v18;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Current Request URL: %@", buf, 0x22u);

        goto LABEL_19;
      }
    }

    else
    {
      v35[0] = 0;
      v35[1] = 0;
      v36 = 0;
    }

    v16 = 0;
    v15 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_18;
  }

LABEL_19:

  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v19 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    if (v20)
    {
      [v20 logDescription];
      v21 = *(a1 + 32);
      if (v21)
      {
        [v21 logDescription];
        v22 = v29;
LABEL_27:
        *buf = 68289282;
        v43 = 16;
        v44 = 2098;
        v45 = v30;
        v46 = 1024;
        v47 = v22;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Current Request Headers:", buf, 0x18u);
        goto LABEL_28;
      }
    }

    else
    {
      v30[0] = 0;
      v30[1] = 0;
      v31 = 0;
    }

    v22 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_27;
  }

LABEL_28:

  v23 = MEMORY[0x1E695AC78];
  v24 = [*(a1 + 32) currentRequest];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __26__NWURLSessionTask_resume__block_invoke_21;
  v25[3] = &unk_1E6A33B80;
  v26 = a3;
  v25[4] = *(a1 + 32);
  [v23 _enumerateHTTPHeaderFieldsWithRequest:v24 usingBlock:v25];
}

void __26__NWURLSessionTask_resume__block_invoke_2(uint64_t a1)
{
  *&v41[7] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentRequest];
  v3 = [v2 HTTPBody];

  if (v3)
  {
    v4 = [*(a1 + 32) currentRequest];
    v5 = [v4 HTTPBody];

    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v6 = ghttp_diagnosticsLogObj;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 logDescription];
      v8 = *(a1 + 32);
      if (v8)
      {
        [v8 logDescription];
        v9 = v30;
LABEL_10:
        v10 = [v5 length];
        v11 = [v5 bytes];
        *buf = 68289794;
        v35 = 16;
        v36 = 2098;
        v37 = &v31;
        v38 = 1024;
        v39 = v9;
        v40 = 1040;
        *v41 = v10;
        v41[2] = 2096;
        *&v41[3] = v11;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Current Request Body:\n%{network:data}.*P", buf, 0x28u);
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      LODWORD(v33) = 0;
    }

    v9 = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v30) = 0;
    goto LABEL_10;
  }

LABEL_12:
  v12 = [*(a1 + 32) currentRequest];
  v13 = [v12 HTTPBodyStream];

  if (!v13)
  {
    return;
  }

  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v14 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      [v15 logDescription];
      v16 = *(a1 + 32);
      if (v16)
      {
        [v16 logDescription];
        v17 = v24;
        v18 = *(a1 + 32);
LABEL_21:
        v19 = [v18 currentRequest];
        v20 = [v19 HTTPBodyStream];
        v21 = [v20 description];
        *buf = 68289538;
        v35 = 16;
        v36 = 2098;
        v37 = &v25;
        v38 = 1024;
        v39 = v17;
        v40 = 2112;
        *v41 = v21;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Current Request Body Stream: %@", buf, 0x22u);

        goto LABEL_22;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
      LODWORD(v27) = 0;
    }

    v18 = 0;
    v17 = 0;
    v22 = 0;
    v23 = 0;
    LODWORD(v24) = 0;
    goto LABEL_21;
  }

LABEL_22:
}

void __54__NWURLSessionTask_startDelayTimer_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v5 = 0;
    v4 = 0;
LABEL_6:
    v6 = [v5 currentRequest];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v26 = __54__NWURLSessionTask_startDelayTimer_completionHandler___block_invoke_2;
    v27 = &unk_1E6A33D58;
    v7 = *(a1 + 40);
    v28 = *(a1 + 32);
    v29 = v7;
    v8 = v5;
    v9 = v6;
    v11 = v25;
    if (v4)
    {
      v12 = [(NWURLSessionDelegateWrapper *)v4 delegateFor_willBeginDelayedRequest];
      if (v12)
      {
        v13 = v4[5];
        v14 = v4[6];
        v15 = [NWURLSessionDelegateDeallocBomb alloc];
        v16 = *(v4 + 16);
        v17 = v12;
        if (v15)
        {
          v30.receiver = v15;
          v30.super_class = NWURLSessionDelegateDeallocBomb;
          v18 = objc_msgSendSuper2(&v30, sel_init);
          v15 = v18;
          if (v18)
          {
            objc_storeStrong(&v18->__object, v12);
            if (sel_task_willBeginDelayedRequest_completionHandler_)
            {
              v19 = sel_task_willBeginDelayedRequest_completionHandler_;
            }

            else
            {
              v19 = 0;
            }

            v15->__method = v19;
            v15->__strict = v16;
          }
        }

        v30.receiver = MEMORY[0x1E69E9820];
        v30.super_class = 3221225472;
        v31 = __78__NWURLSessionDelegateWrapper_task_willBeginDelayedRequest_completionHandler___block_invoke;
        v32 = &unk_1E6A3B580;
        v33 = v17;
        v34 = v13;
        v35 = v8;
        v36 = v9;
        v37 = v15;
        v38 = v14;
        v39 = v11;
        v20 = v4[7];
        v21 = v14;
        v22 = v15;
        v23 = v13;
        [(NWURLSessionDelegateQueue *)v20 runDelegateBlock:?];
      }

      else
      {
        v26(v11, 0, 0);
      }
    }

    return;
  }

  if (*(v2 + 296) != 2)
  {
    v3 = 248;
    if (!*(v2 + 248))
    {
      v3 = 240;
    }

    v4 = *(v2 + v3);
    v5 = *(a1 + 32);
    goto LABEL_6;
  }

  v24 = *(*(a1 + 40) + 16);

  v24();
}

void __54__NWURLSessionTask_startDelayTimer_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  newValue = a3;
  v6 = *(a1 + 32);
  if (!v6 || *(v6 + 296) != 2)
  {
    if (a2 == 2)
    {
      goto LABEL_8;
    }

    if (a2 != 1)
    {
      goto LABEL_14;
    }

    if (!newValue)
    {
LABEL_8:
      if (v6)
      {
        v7 = [NWURLError alloc];
        v8 = *(v6 + 264);
        v9 = v6;
        if (v7)
        {
          v10 = [(NWURLError *)v7 initWithErrorCode:-999];
          v7 = v10;
          if (v10)
          {
            [(NWURLError *)v10 fillErrorForLoader:v8 andTask:v9];
          }
        }
      }

      else
      {
        v7 = 0;
      }

      [v6 completeTaskWithError:v7 retryable:0];
    }

    else if (v6)
    {
      objc_setProperty_nonatomic_copy(*(a1 + 32), v5, newValue, 56);
    }
  }

LABEL_14:
  (*(*(a1 + 40) + 16))();
}

void __38__NWURLSessionTask_startResourceTimer__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
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
      [v3 logDescription];
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 logDescription];
        v5 = v7;
LABEL_9:
        v6 = *(a1 + 40);
        *buf = 68289538;
        v11 = 16;
        v12 = 2098;
        v13 = v8;
        v14 = 1024;
        v15 = v5;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Starting resource timeout for %f seconds.", buf, 0x22u);
        goto LABEL_10;
      }
    }

    else
    {
      v8[0] = 0;
      v8[1] = 0;
      v9 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

void __35__NWURLSessionTask_startStartTimer__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
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
      [v3 logDescription];
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 logDescription];
        v5 = v7;
LABEL_9:
        v6 = *(a1 + 40);
        *buf = 68289538;
        v11 = 16;
        v12 = 2098;
        v13 = v8;
        v14 = 1024;
        v15 = v5;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> Starting start timeout for %f seconds.", buf, 0x22u);
        goto LABEL_10;
      }
    }

    else
    {
      v8[0] = 0;
      v8[1] = 0;
      v9 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

void __26__NWURLSessionTask_resume__block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40) != 1)
  {
    v34 = 0;
    v33 = 0;
    v12 = [v6 UTF8String];
    v13 = strlen(v12);
    __nwlog_salted_hash(v12, v13, &v33);
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v8 = ghttp_diagnosticsLogObj;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      [v14 logDescription];
      v15 = *(a1 + 32);
      if (v15)
      {
        [v15 logDescription];
        v16 = v20;
LABEL_19:
        *buf = 68290050;
        v24 = 16;
        v25 = 2098;
        v26 = v21;
        v27 = 1024;
        v28 = v16;
        v29 = 2112;
        v30 = v5;
        v31 = 1040;
        LODWORD(v32[0]) = 9;
        WORD2(v32[0]) = 2080;
        *(v32 + 6) = &v33;
        v17 = "Task <%{public,uuid_t}.16P>.<%u> ├ %@: %.*s";
        v18 = v8;
        v19 = 50;
        goto LABEL_20;
      }
    }

    else
    {
      v21[0] = 0;
      v21[1] = 0;
      v22 = 0;
    }

    v16 = 0;
    goto LABEL_19;
  }

  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v8 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      [v9 logDescription];
      v10 = *(a1 + 32);
      if (v10)
      {
        [v10 logDescription];
        v11 = v37;
LABEL_16:
        *buf = 68289794;
        v24 = 16;
        v25 = 2098;
        v26 = v38;
        v27 = 1024;
        v28 = v11;
        v29 = 2112;
        v30 = v5;
        v31 = 2112;
        v32[0] = v7;
        v17 = "Task <%{public,uuid_t}.16P>.<%u> ├ %@: %@";
        v18 = v8;
        v19 = 44;
LABEL_20:
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        goto LABEL_21;
      }
    }

    else
    {
      v38[0] = 0;
      v38[1] = 0;
      v39 = 0;
    }

    v11 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_16;
  }

LABEL_21:
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v16.receiver = self;
  v16.super_class = NWURLSessionTask;
  v5 = [(NWURLSessionTask *)&v16 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_11;
  }

  if (self)
  {
    session = self->_session;
    if (session)
    {
      if ([(NSURLSessionConfiguration *)session->_internalConfiguration usesClassicLoadingMode])
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v12 = [bundleIdentifier isEqualToString:@"com.plexapp.plex"];

        if (v12)
        {
          v13 = objc_opt_class();
          InstanceMethod = class_getInstanceMethod(v13, selector);
          if (InstanceMethod)
          {
            v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:method_getTypeEncoding(InstanceMethod)];
            goto LABEL_3;
          }
        }
      }
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (self && (session = self->_session) != 0 && -[NSURLSessionConfiguration usesClassicLoadingMode](session->_internalConfiguration, "usesClassicLoadingMode") && ([MEMORY[0x1E696AAE8] mainBundle], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.plexapp.plex"), v7, v6, (v8 & 1) != 0))
  {
    if (forwardInvocation__onceToken != -1)
    {
      dispatch_once(&forwardInvocation__onceToken, &__block_literal_global_48199);
    }

    [invocationCopy invoke];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NWURLSessionTask;
    [(NWURLSessionTask *)&v9 forwardInvocation:invocationCopy];
  }
}

void __38__NWURLSessionTask_forwardInvocation___block_invoke()
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();

  addCategories(v0, v1);
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = NWURLSessionTask;
  if ([(NWURLSessionTask *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isEqual:objc_opt_class()];
  }
}

- (id)initWithResumeInfo:(int)info identifier:(void *)identifier session:
{
  v7 = a2;
  if (self)
  {
    identifierCopy = identifier;
    originalRequest = [v7 originalRequest];
    v10 = [(NWURLSessionTask *)self initWithRequest:originalRequest identifier:info session:identifierCopy];

    if (v10)
    {
      [v7 startTime];
      v10[58] = v11;
      currentRequest = [v7 currentRequest];
      objc_setProperty_nonatomic_copy(v10, v13, currentRequest, 56);

      earliestBeginDate = [v7 earliestBeginDate];
      [v10 setEarliestBeginDate:earliestBeginDate];

      [v10 setCountOfBytesClientExpectsToSend:{objc_msgSend(v7, "countOfBytesClientExpectsToSend")}];
      [v10 setCountOfBytesClientExpectsToReceive:{objc_msgSend(v7, "countOfBytesClientExpectsToReceive")}];
      taskDescription = [v7 taskDescription];
      [v10 setTaskDescription:taskDescription];

      [v7 priority];
      [v10 setPriority:?];
      [v10 setPrefersIncrementalDelivery:{objc_msgSend(v7, "prefersIncrementalDelivery")}];
      if ([v7 taskIdentifier])
      {
        *(v10 + 122) = [v7 taskIdentifier];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setCountOfBytesExpectedToReceive:(uint64_t)receive
{
  if (receive)
  {
    [receive willChangeValueForKey:@"countOfBytesExpectedToReceive"];
    *(receive + 112) = a2;
    [receive didChangeValueForKey:@"countOfBytesExpectedToReceive"];
    v4 = *(receive + 368);
    if (v4)
    {
      v5 = *(receive + 296);

      if (v5 != 2)
      {
        v6 = *(receive + 376);
        [*(receive + 376) setCompletedUnitCount:{objc_msgSend(v6, "totalUnitCount")}];

        v7 = *MEMORY[0x1E696A848];
        progress = [receive progress];
        [progress setFileOperationKind:v7];

        v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(receive, "countOfBytesReceived")}];
        progress2 = [receive progress];
        [progress2 setByteCompletedCount:v9];

        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
        progress3 = [receive progress];
        [progress3 setByteTotalCount:v11];

        if (a2 >= 1)
        {
          v13 = a2;
        }

        else
        {
          v13 = 100;
        }

        *(receive + 23) = a2 < 1;
        v14 = *(receive + 384);

        [v14 setTotalUnitCount:v13];
      }
    }
  }
}

- (void)setCountOfBytesReceived:(uint64_t)received
{
  if (received)
  {
    [received willChangeValueForKey:@"countOfBytesReceived"];
    *(received + 96) = a2;
    [received didChangeValueForKey:@"countOfBytesReceived"];
    v4 = *(received + 368);
    if (v4)
    {
      v5 = *(received + 296);

      if (v5 != 2)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
        progress = [received progress];
        [progress setByteCompletedCount:v6];

        v8 = *(received + 384);
        if (*(received + 23) == 1)
        {
          v9 = v8;
          completedUnitCount = [v9 completedUnitCount];
          v11 = [*(received + 384) totalUnitCount] - 1;

          if (completedUnitCount < v11)
          {
            v12 = *(received + 384);
            [v12 setCompletedUnitCount:{objc_msgSend(v12, "completedUnitCount") + 1}];
          }
        }

        else
        {

          [v8 setCompletedUnitCount:a2];
        }
      }
    }
  }
}

@end