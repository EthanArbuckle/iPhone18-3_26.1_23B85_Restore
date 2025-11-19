@interface MPSComputeEncoder
- (BOOL)respondsToSelector:(SEL)a3;
- (MPSComputeEncoder)initWithCommandBuffer:(id)a3 withDispatchType:(unint64_t)a4 compilationOnly:(BOOL)a5;
- (MPSComputeEncoder)initWithComputeCommandEncoder:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
@end

@implementation MPSComputeEncoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSComputeEncoder;
  [(MPSComputeEncoder *)&v3 dealloc];
}

- (MPSComputeEncoder)initWithCommandBuffer:(id)a3 withDispatchType:(unint64_t)a4 compilationOnly:(BOOL)a5
{
  v40.receiver = self;
  v40.super_class = MPSComputeEncoder;
  v8 = [(MPSComputeEncoder *)&v40 init];
  v9 = objc_autoreleasePoolPush();
  v8->_encoder = objc_msgSend_computeCommandEncoderWithDispatchType_(a3, v10, a4, v11, v12);
  objc_autoreleasePoolPop(v9);
  v8->_dispatchType = a4;
  v17 = objc_msgSend_globalTraceObjectID(v8->_encoder, v13, v14, v15, v16);
  v22 = objc_msgSend_userDictionary(a3, v18, v19, v20, v21);
  v29 = objc_msgSend_objectForKey_(v22, v23, @"_MPSCommandBufferEncoderIDListKey", v24, v25);
  if (!v29)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setObject_forKey_(v22, v30, v29, @"_MPSCommandBufferEncoderIDListKey", v31);

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22E2F1848;
    v41[3] = &unk_2787BE7E8;
    v41[4] = @"_MPSCommandBufferEncoderIDListKey";
    objc_msgSend_addCompletedHandler_(a3, v32, v41, v33, v34);
  }

  v35 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v26, v17, v27, v28);
  objc_msgSend_addObject_(v29, v36, v35, v37, v38);
  v8->_isMultiDispatch = 0;
  v8->_compilationOnly = a5;
  return v8;
}

- (MPSComputeEncoder)initWithComputeCommandEncoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = MPSComputeEncoder;
  v4 = [(MPSComputeEncoder *)&v10 init];
  v4->_encoder = a3;
  v4->_dispatchType = objc_msgSend_dispatchType(a3, v5, v6, v7, v8);
  v4->_isMultiDispatch = 0;
  return v4;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if (objc_opt_respondsToSelector())
  {
    return self->_encoder;
  }

  else
  {
    return 0;
  }
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  if (!self->_compilationOnly)
  {
    if (self->_isMultiDispatch && self->_dispatchType == 1)
    {
      objc_msgSend_memoryBarrierWithScope_(self->_encoder, a2, 3, a4, v4);
    }

    state = self->_state;
    var0 = a4->var0;
    var1 = a4->var1;
    var2 = a4->var2;
    v12 = a3->var0;
    v19 = a3->var1;
    v20 = a3->var2;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_22E2EE648;
    v24 = &unk_2787C0840;
    *v25 = "com.apple.MetalPerformanceShaders";
    *&v25[8] = "MetalPerformanceShaders";
    if (qword_280AFED90 == -1)
    {
      v13 = qword_280AFED98;
      if (os_signpost_enabled(qword_280AFED98))
      {
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_280AFED90, buf);
      v13 = qword_280AFED98;
      if (os_signpost_enabled(qword_280AFED98))
      {
LABEL_7:
        v16 = os_signpost_id_make_with_pointer(v13, state);
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = v16;
          if (os_signpost_enabled(v13))
          {
            *buf = 134219520;
            *&buf[4] = state;
            *&buf[12] = 2048;
            *&buf[14] = var0;
            *&buf[22] = 2048;
            v24 = var1;
            *v25 = 2048;
            *&v25[2] = var2;
            *&v25[10] = 2048;
            *&v25[12] = v12;
            v26 = 2048;
            v27 = v19;
            v28 = 2048;
            v29 = v20;
            _os_signpost_emit_with_name_impl(&dword_22E2EA000, v13, OS_SIGNPOST_EVENT, v17, "MPSKernelDispatch", "PipelineState: %p threads:{%lu,%lu,%lu} threadGroups:{%lu,%lu,%lu}", buf, 0x48u);
          }
        }
      }
    }

    encoder = self->_encoder;
    *buf = *&a3->var0;
    *&buf[16] = a3->var2;
    v21 = *&a4->var0;
    v22 = a4->var2;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v14, buf, &v21, v15, v19, v20);
    self->_isMultiDispatch = 1;
  }
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  if (!self->_compilationOnly)
  {
    encoder = self->_encoder;
    v7 = *a3;
    v6 = *a4;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(encoder, a2, &v7, &v6, v4);
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MPSComputeEncoder;
  return [(MPSComputeEncoder *)&v6 respondsToSelector:a3];
}

@end