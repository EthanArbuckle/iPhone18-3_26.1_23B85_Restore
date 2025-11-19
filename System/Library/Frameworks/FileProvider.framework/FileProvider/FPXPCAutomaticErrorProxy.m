@interface FPXPCAutomaticErrorProxy
- (FPXPCAutomaticErrorProxy)initWithRemoteObjectProxy:(id)a3 protocol:(id)a4 orError:(id)a5 name:(id)a6 requestPid:(int)a7 requestWillBegin:(id)a8 requestDidBegin:(id)a9;
- (id)_requestWillBegin:(SEL)a3 requestID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxy;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_requestDidBegin:(SEL)a3 progress:(id)a4 requestID:(id)a5;
- (void)_requestDidFinish:(id)a3 requestDidFinishBlock:(id)a4;
- (void)forwardInvocation:(id)a3;
@end

@implementation FPXPCAutomaticErrorProxy

- (id)synchronousRemoteObjectProxy
{
  if (self->_isSynchronous)
  {
    v2 = self;
  }

  else
  {
    v2 = [(FPXPCAutomaticErrorProxy *)self copy];
    v2->_isSynchronous = 1;
  }

  return v2;
}

- (FPXPCAutomaticErrorProxy)initWithRemoteObjectProxy:(id)a3 protocol:(id)a4 orError:(id)a5 name:(id)a6 requestPid:(int)a7 requestWillBegin:(id)a8 requestDidBegin:(id)a9
{
  v38[1] = *MEMORY[0x1E69E9840];
  v35 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v36.receiver = self;
  v36.super_class = FPXPCAutomaticErrorProxy;
  v20 = [(FPXPCAutomaticErrorProxy *)&v36 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_target, a3);
    objc_storeStrong(&v21->_protocol, a4);
    if (v16)
    {
      v22 = v16;
      error = v21->_error;
      v21->_error = v22;
    }

    else
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A250];
      v37 = *MEMORY[0x1E696A278];
      v38[0] = @"FPXPCAutomaticErrorProxy started out with invalid object";
      error = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v26 = [v24 errorWithDomain:v25 code:4099 userInfo:error];
      v27 = v21->_error;
      v21->_error = v26;
    }

    objc_storeStrong(&v21->_name, a6);
    v21->_pid = a7;
    v28 = [v18 copy];
    requestWillBeginBlock = v21->_requestWillBeginBlock;
    v21->_requestWillBeginBlock = v28;

    v30 = [v19 copy];
    requestDidBeginBlock = v21->_requestDidBeginBlock;
    v21->_requestDidBeginBlock = v30;

    v21->_sanitizeErrors = [objc_opt_class() sanitizeErrors];
  }

  v32 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 8), self->_target);
  objc_storeStrong((v4 + 16), self->_protocol);
  objc_storeStrong((v4 + 24), self->_error);
  objc_storeStrong((v4 + 48), self->_name);
  *(v4 + 84) = self->_pid;
  v5 = [self->_requestWillBeginBlock copy];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  v7 = [self->_requestDidBeginBlock copy];
  v8 = *(v4 + 40);
  *(v4 + 40) = v7;

  *(v4 + 64) = self->_isSynchronous;
  *(v4 + 80) = self->_sanitizeErrors;
  *(v4 + 81) = self->_generateSignposts;
  return v4;
}

- (id)_requestWillBegin:(SEL)a3 requestID:(id)a4
{
  v6 = a4;
  requestWillBeginBlock = self->_requestWillBeginBlock;
  if (requestWillBeginBlock)
  {
    v8 = requestWillBeginBlock[2](requestWillBeginBlock, self, a3, v6);
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  if (!atomic_fetch_add(&self->_retainCounter, 1uLL))
  {
    objc_storeStrong(&self->_retainSelfWhileMessageIsPending, self);
  }

  v10 = _Block_copy(v9);

  return v10;
}

- (void)_requestDidBegin:(SEL)a3 progress:(id)a4 requestID:(id)a5
{
  requestDidBeginBlock = self->_requestDidBeginBlock;
  if (requestDidBeginBlock)
  {
    requestDidBeginBlock[2](requestDidBeginBlock, self, a3, a5, a4);
  }
}

- (void)_requestDidFinish:(id)a3 requestDidFinishBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, self, v9);
  }

  if (atomic_fetch_add(&self->_retainCounter, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    retainSelfWhileMessageIsPending = self->_retainSelfWhileMessageIsPending;
    self->_retainSelfWhileMessageIsPending = 0;
  }
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"FPXPCAutomaticErrorProxy.m" lineNumber:178 description:@"Use the methods from FPXPCAutomaticErrorProxy"];

  return 0;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"FPXPCAutomaticErrorProxy.m" lineNumber:184 description:@"Use the methods from FPXPCAutomaticErrorProxy"];

  return 0;
}

- (id)remoteObjectProxy
{
  if (self->_isSynchronous)
  {
    v2 = [(FPXPCAutomaticErrorProxy *)self copy];
    v2->_isSynchronous = 0;
  }

  else
  {
    v2 = self;
  }

  return v2;
}

- (void)forwardInvocation:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47 = [v4 methodSignature];
  v5 = [v47 fp_indexOfLastArgumentWithType:"@?"];
  v6 = MEMORY[0x1E696AD98];
  atomic_fetch_add_explicit(&_requestIDCounter, 1uLL, memory_order_relaxed);
  v50 = [v6 numberWithUnsignedLongLong:?];
  pthread_main_np();
  v83 = 0;
  v7 = telemetry_default_log();
  spid = os_signpost_id_generate(v7);

  v8 = NSStringFromSelector([v4 selector]);
  if (forwardInvocation__once_token != -1)
  {
    [FPXPCAutomaticErrorProxy forwardInvocation:];
  }

  if (forwardInvocation__internal_build == 1 && self->_generateSignposts)
  {
    v49 = [v8 isEqualToString:@"_t_setFilePresenterObserver:"] ^ 1;
  }

  else
  {
    v49 = 0;
  }

  HIDWORD(v44) = v5 != 0x7FFFFFFFFFFFFFFFLL;
  LODWORD(v44) = v5 == 0x7FFFFFFFFFFFFFFFLL;
  v9 = [MEMORY[0x1E695DF00] now];
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  if (self->_pid)
  {
    section = __fp_create_section();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      pid = self->_pid;
      v14 = FPExecutableNameForProcessIdentifier();
      v15 = self->_pid;
      *buf = 134219010;
      *&buf[4] = section;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v86 = name;
      LOWORD(v87) = 2112;
      *(&v87 + 2) = v14;
      WORD5(v87) = 1024;
      HIDWORD(v87) = v15;
      _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx sending %{public}@ to %@ on behalf of %@[%d]", buf, 0x30u);
    }
  }

  else
  {
    section = __fp_create_section();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v43 = self->_name;
      *buf = 134218498;
      *&buf[4] = section;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v86 = v43;
      _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx sending %{public}@ to %@", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v86 = __Block_byref_object_copy__25;
  *&v87 = __Block_byref_object_dispose__25;
  *(&v87 + 1) = -[FPXPCAutomaticErrorProxy _requestWillBegin:requestID:](self, "_requestWillBegin:requestID:", [v4 selector], v50);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    *v84 = 0;
    [v4 getArgument:v84 atIndex:v5];
    v16 = _Block_copy(*v84);
    v17 = _Block_signature(v16);
    v18 = self->_name;
    objc_initWeak(&location, self);
    v64 = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke_17;
    v67 = &unk_1E793DE60;
    v76 = v49;
    v75[1] = spid;
    v68 = v9;
    v73 = &v79;
    v75[2] = section;
    v69 = v18;
    v70 = v8;
    objc_copyWeak(v75, &location);
    v72 = v16;
    v77 = v45;
    v71 = v50;
    v74 = buf;
    v19 = __NSMakeSpecialForwardingCaptureBlock();
    v20 = v83;
    v83 = v19;

    [v4 _addAttachedObject:v83];
    [v4 _addAttachedObject:self];
    [v4 setArgument:&v83 atIndex:v5];

    objc_destroyWeak(v75);
    objc_destroyWeak(&location);
  }

  v21 = self->_pid;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke_19;
  aBlock[3] = &unk_1E793DE88;
  v62 = v49;
  v58 = &v79;
  v59 = spid;
  v22 = v9;
  v53 = v22;
  v54 = self;
  v23 = v4;
  v63 = v46;
  v55 = v23;
  v60 = v17;
  v56 = v83;
  v61 = v21;
  v24 = v8;
  v57 = v24;
  v25 = _Block_copy(aBlock);
  target = self->_target;
  if (!target)
  {
    v25[2](v25, self->_error);
    v27 = 0;
    v28 = 0;
    goto LABEL_28;
  }

  if (self->_isSynchronous)
  {
    [(NSXPCProxyCreating *)target synchronousRemoteObjectProxyWithErrorHandler:v25];
  }

  else
  {
    [(NSXPCProxyCreating *)target remoteObjectProxyWithErrorHandler:v25];
  }
  v28 = ;
  [v28 forwardInvocation:v23];
  v29 = [v23 methodSignature];
  v30 = v29;
  v31 = [v29 methodReturnType];

  if (*v31 == 64 && !v31[1])
  {
    v51 = 0;
    [v23 getReturnValue:&v51];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v51;
      goto LABEL_28;
    }

    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      *v84 = 138412290;
      *&v84[4] = v33;
      v34 = v33;
      _os_log_impl(&dword_1AAAE1000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] Unexpected return type from XPC call: %@", v84, 0xCu);
    }
  }

  v27 = 0;
LABEL_28:
  if (v49)
  {
    QoSValueForThread = getQoSValueForThread(0);
    v36 = v80;
    v37 = v80[3] | QoSValueForThread;
    v80[3] = v37;
    if (!self->_isSynchronous)
    {
      v36[3] = v37 | 0x80;
    }

    if (pthread_main_np())
    {
      v80[3] |= 0x40uLL;
    }

    v38 = telemetry_default_log();
    v39 = v38;
    if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      v40 = v24;
      v41 = [v24 UTF8String];
      *v84 = 136446210;
      *&v84[4] = v41;
      _os_signpost_emit_with_name_impl(&dword_1AAAE1000, v39, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ClientXPC", "selector=%{public,signpost.telemetry:string1,name=selector}s", v84, 0xCu);
    }
  }

  -[FPXPCAutomaticErrorProxy _requestDidBegin:progress:requestID:](self, "_requestDidBegin:progress:requestID:", [v23 selector], v27, v50);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(FPXPCAutomaticErrorProxy *)self _requestDidFinish:v50 requestDidFinishBlock:*(*&buf[8] + 40)];
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v79, 8);
  v42 = *MEMORY[0x1E69E9840];
}

uint64_t __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke()
{
  result = os_variant_has_internal_content();
  forwardInvocation__internal_build = result;
  return result;
}

void __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 112) == 1)
  {
    emitFinalSignPost(*(a1 + 96), *(a1 + 32), *(*(*(a1 + 72) + 8) + 24));
  }

  v4 = *(a1 + 104);
  v10 = v4;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke_17_cold_1(a1, v4, v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = [WeakRetained sanitizeErrors];

  if (v7)
  {
    [v3 fp_sanitizeError];
  }

  v8 = _Block_copy(*(a1 + 64));
  [v3 setTarget:v8];

  [v3 invoke];
  if ((*(a1 + 113) & 1) == 0)
  {
    v9 = objc_loadWeakRetained((a1 + 88));
    [v9 _requestDidFinish:*(a1 + 56) requestDidFinishBlock:*(*(*(a1 + 80) + 8) + 40)];
  }

  __fp_leave_section_Debug(&v10);
}

void __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke_19(uint64_t a1, void *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 100) == 1)
  {
    *(*(*(a1 + 72) + 8) + 24) |= 0x100uLL;
    emitFinalSignPost(*(a1 + 80), *(a1 + 32), *(*(*(a1 + 72) + 8) + 24));
  }

  if (![*(a1 + 40) sanitizeErrors])
  {
    v17 = v3;
    goto LABEL_13;
  }

  v4 = *(a1 + 48);
  v5 = v3;
  v6 = v4;
  v7 = [v5 domain];
  v8 = *MEMORY[0x1E696A250];
  if (![v7 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(v5, "code") <= 4096 || objc_msgSend(v5, "code") > 4223)
  {

    goto LABEL_11;
  }

  v9 = [v6 selector];

  if (!v9)
  {
LABEL_11:
    v17 = v5;
    goto LABEL_12;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromSelector([v6 selector]);
  v12 = [v10 stringWithFormat:@"Error while sending %@", v11];

  v13 = MEMORY[0x1E696ABC0];
  v14 = [v5 code];
  v15 = *MEMORY[0x1E696A278];
  v34[0] = *MEMORY[0x1E696AA08];
  v34[1] = v15;
  *buf = v5;
  *&buf[8] = v12;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v34 count:2];
  v17 = [v13 errorWithDomain:v8 code:v14 userInfo:v16];

LABEL_12:
LABEL_13:
  if (*(a1 + 101) == 1)
  {
    v18 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:*(a1 + 88)];
    v19 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v18];
    [v19 fp_zeroOutReplyBlockArgumentsWithError:v17];
    [v19 setTarget:*(a1 + 56)];
    [v19 invoke];
    v20 = *(a1 + 96);
    v21 = fp_current_or_default_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if (v22)
      {
        v23 = [v3 fp_prettyDescription];
        v24 = *(a1 + 64);
        v25 = *(a1 + 96);
        v26 = FPExecutableNameForProcessIdentifier();
        v27 = *(a1 + 96);
        *buf = 138413058;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        v30 = 2114;
        v31 = v26;
        v32 = 1024;
        v33 = v27;
        _os_log_debug_impl(&dword_1AAAE1000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Received error %@ while sending %{public}@ on behalf of %{public}@[%d]", buf, 0x26u);
      }
    }

    else if (v22)
    {
      __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke_19_cold_1(v3, a1, v21);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  target = self->_target;
  if (target)
  {
    [(NSXPCProxyCreating *)target methodSignatureForSelector:a3];
  }

  else
  {
    [MEMORY[0x1E695DF68] signatureWithObjCTypes:{protocol_getMethodDescription(self[16], a3, 1, 1).types}];
  }
  v5 = ;

  return v5;
}

void __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke_17_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = 134218498;
  v7 = a2;
  v8 = 2112;
  v9 = v3;
  v10 = 2114;
  v11 = v4;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx received reply from %@ for %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __46__FPXPCAutomaticErrorProxy_forwardInvocation___block_invoke_19_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 fp_prettyDescription];
  v6 = *(a2 + 64);
  v8 = 138412546;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Received error %@ while sending %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end