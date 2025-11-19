@interface MDLScene
- (MDLScene)init;
- (__n128)hitTestRayFrom:(uint64_t)a1 withDirection:(uint64_t)a2 usingCamera:(void *)a3;
- (id).cxx_construct;
- (id)raytraceSceneWithCamera:(const RTCamera *)a3 reflection:(id)a4 irradiance:(id)a5 size:;
- (int)acquireLockGuard;
- (void)addObject:(id)a3;
- (void)clear;
- (void)dealloc;
@end

@implementation MDLScene

- (MDLScene)init
{
  v4.receiver = self;
  v4.super_class = MDLScene;
  v2 = [(MDLScene *)&v4 init];
  if (v2)
  {
    v2->_signature = 0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  sceneMutex = self->_sceneMutex;
  std::mutex::lock(sceneMutex);
  begin = self->_sceneObjects.__begin_;
  end = self->_sceneObjects.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      (*(**begin + 24))(*begin);
    }

    ++begin;
  }

  std::mutex::unlock(sceneMutex);
  v6.receiver = self;
  v6.super_class = MDLScene;
  [(MDLScene *)&v6 dealloc];
}

- (int)acquireLockGuard
{
  std::mutex::lock(self->_sceneMutex);
  result = self->_signature + 1;
  self->_signature = result;
  return result;
}

- (__n128)hitTestRayFrom:(uint64_t)a1 withDirection:(uint64_t)a2 usingCamera:(void *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  __asm { FMOV            V0.2S, #1.0 }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13.i64[0] = 0x80000000800000;
  v13.i64[1] = 0x80000000800000;
  v14 = vnegq_f32(v13);
  if (v12 == v11)
  {
    v19 = v14;
  }

  else
  {
    v19 = v14;
    v5.i32[0] = 2139095039;
    do
    {
      v18 = v5;
      sub_239E879CC(*v12);
      v15.i32[0] = 2139095039;
      v5 = v18;
      v19 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v18, v15), 0), 0, v19);
      if (v18.f32[0] > 3.4028e38)
      {
        v5.f32[0] = 3.4028e38;
      }

      ++v12;
    }

    while (v12 != v11);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  objc_msgSend_addObject_(self->_objects, v5, v4);
  sceneMutex = self->_sceneMutex;
  std::mutex::lock(sceneMutex);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v4;
      objc_msgSend_vertexCount(v7, v8, v9);
      objc_msgSend_vertexCount(v7, v10, v11);
      objc_msgSend_vertexCount(v7, v12, v13);
      objc_msgSend_vertexCount(v7, v14, v15);
      objc_msgSend_vertexCount(v7, v16, v17);
      objc_msgSend_vertexCount(v7, v18, v19);
      objc_msgSend_vertexCount(v7, v20, v21);
    }

    operator new();
  }

  v22 = v4;
  sub_239F5469C(&self->_sceneLights.__begin_, &v22);

  std::mutex::unlock(sceneMutex);
}

- (void)clear
{
  sceneMutex = self->_sceneMutex;
  std::mutex::lock(sceneMutex);
  begin = self->_sceneObjects.__begin_;
  end = self->_sceneObjects.__end_;
  if (begin != end)
  {
    do
    {
      if (*begin)
      {
        (*(**begin + 24))(*begin);
      }

      ++begin;
    }

    while (begin != end);
    begin = self->_sceneObjects.__begin_;
  }

  self->_sceneObjects.__end_ = begin;

  std::mutex::unlock(sceneMutex);
}

- (id)raytraceSceneWithCamera:(const RTCamera *)a3 reflection:(id)a4 irradiance:(id)a5 size:
{
  v47 = v5;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277CBEB28]);
  v13 = objc_msgSend_initWithLength_(v11, v12, 4 * v47.i32[1] * v47.i32[0]);
  v14 = v13;
  v17 = objc_msgSend_mutableBytes(v14, v15, v16);
  if ((atomic_load_explicit(&qword_27DF912B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF912B8))
  {
    operator new();
  }

  v18 = objc_autoreleasePoolPush();
  v21 = objc_msgSend_acquireLockGuard(self, v19, v20);
  v22 = clock();
  objc_msgSend_translation(a3->var10, v23, v24);
  v43 = v25;
  v45 = dispatch_queue_create("trace", 0);
  v44 = dispatch_group_create();
  v26 = dispatch_get_global_queue(33, 0);
  v46 = COERCE_DOUBLE(vcvt_f32_s32(v47));
  *&v27 = sub_239F1633C(a3, 0.0, v46);
  v42 = v27;
  *&v28 = sub_239F1633C(a3, COERCE_DOUBLE(LODWORD(v46)), v46);
  v41 = v28;
  DWORD1(v28) = HIDWORD(v46);
  LODWORD(v28) = 0;
  *&v29 = sub_239F1633C(a3, *&v28, v46);
  v40 = v29;
  *&v30 = sub_239F1633C(a3, v46, v46);
  v31 = vrsqrte_f32(1062333316);
  v32 = vmul_f32(vrsqrts_f32(1062333316, vmul_f32(v31, v31)), v31);
  block[1] = 3221225472;
  block[0] = MEMORY[0x277D85DD0];
  block[2] = sub_239F54C00;
  block[3] = &unk_278B41200;
  v60 = v47;
  v49 = v42;
  v50 = v40;
  v51 = v41;
  v52 = v30;
  v55 = self;
  v61 = v17;
  v62 = a3;
  v53 = v43;
  v54 = vmulq_n_f32(xmmword_239F9EB30, vmul_f32(v32, vrsqrts_f32(1062333316, vmul_f32(v32, v32))).f32[0]);
  v33 = v9;
  v56 = v33;
  v34 = v10;
  v57 = v34;
  v35 = v44;
  v58 = v35;
  v36 = v45;
  v59 = v36;
  dispatch_apply(0x20uLL, v26, block);
  dispatch_group_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
  v37 = clock();
  NSLog(&cfstr_FrameTime2fms.isa, (v37 - v22) * 0.0001);
  objc_msgSend_releaseLockGuard_(self, v38, v21);

  objc_autoreleasePoolPop(v18);

  return v13;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end