@interface _LTStabilizationTranslationRequest
+ (id)_synchronizationQueue;
- (_LTStabilizationTranslationRequest)initWithLocalePair:(id)pair completion:(id)completion;
- (id)requestContext;
- (void)_startTranslationWithService:(id)service done:(id)done;
- (void)_translationFailedWithError:(id)error;
@end

@implementation _LTStabilizationTranslationRequest

+ (id)_synchronizationQueue
{
  if (_synchronizationQueue_onceToken != -1)
  {
    +[_LTStabilizationTranslationRequest _synchronizationQueue];
  }

  v3 = _synchronizationQueue_synchronizationQueue;

  return v3;
}

- (_LTStabilizationTranslationRequest)initWithLocalePair:(id)pair completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _LTStabilizationTranslationRequest;
  v7 = [(_LTTranslationRequest *)&v14 initWithLocalePair:pair];
  if (v7)
  {
    _synchronizationQueue = [objc_opt_class() _synchronizationQueue];
    queue = v7->_queue;
    v7->_queue = _synchronizationQueue;

    [(_LTTranslationRequest *)v7 setForcedOfflineTranslation:1];
    v10 = [completionCopy copy];
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v10;

    v12 = v7;
  }

  return v7;
}

- (void)_startTranslationWithService:(id)service done:(id)done
{
  serviceCopy = service;
  doneCopy = done;
  v8 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_INFO, "Stabilization Text Translation: start with service", buf, 2u);
  }

  objc_initWeak(buf, self);
  input = [(_LTStabilizationTranslationRequest *)self input];
  requestContext = [(_LTStabilizationTranslationRequest *)self requestContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke;
  v12[3] = &unk_278B6D660;
  objc_copyWeak(&v14, buf);
  v11 = doneCopy;
  v13 = v11;
  [serviceCopy translateStreamingInput:input withContext:requestContext completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_translationFailedWithError:(id)error
{
  errorCopy = error;
  v5 = _LTOSLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_LTStabilizationTranslationRequest *)errorCopy _translationFailedWithError:v5];
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___LTStabilizationTranslationRequest__translationFailedWithError___block_invoke;
  block[3] = &unk_278B6CD08;
  objc_copyWeak(&v10, &location);
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)requestContext
{
  v4.receiver = self;
  v4.super_class = _LTStabilizationTranslationRequest;
  requestContext = [(_LTTranslationRequest *)&v4 requestContext];
  [requestContext setEnableOfflineStreamStabilizer:1];

  return requestContext;
}

- (void)_translationFailedWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23AAF5000, a2, OS_LOG_TYPE_ERROR, "Failed stabilization request with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end