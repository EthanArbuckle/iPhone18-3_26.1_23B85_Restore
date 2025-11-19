@interface WKRotationCoordinatorObserver
- (BOOL)isMonitoringCaptureDeviceRotation:(const void *)a3;
- (WKRotationCoordinatorObserver)initWithRequestManagerProxy:(void *)a3;
- (id).cxx_construct;
- (optional<WebCore::VideoFrameRotation>)start:(const void *)a3 layer:(id)a4;
- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(WTF::StringImpl *)a2 change:context:;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:;
- (void)observeValueForKeyPath:(void *)a1 ofObject:(WTF::StringImpl *)a2 change:context:;
- (void)stop:(const void *)a3;
@end

@implementation WKRotationCoordinatorObserver

- (WKRotationCoordinatorObserver)initWithRequestManagerProxy:(void *)a3
{
  v10.receiver = self;
  v10.super_class = WKRotationCoordinatorObserver;
  v4 = [(WKRotationCoordinatorObserver *)&v10 init];
  v6 = v4;
  if (v4)
  {
    v7 = *a3;
    *a3 = 0;
    m_ptr = v4->_managerProxy.m_impl.m_ptr;
    v6->_managerProxy.m_impl.m_ptr = v7;
    if (m_ptr)
    {
      if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, m_ptr);
        WTF::fastFree(m_ptr, v5);
      }
    }
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  m_ptr = self->_managerProxy.m_impl.m_ptr;
  if (!m_ptr || !*(m_ptr + 1) || ![a3 isEqualToString:{@"videoRotationAngleForHorizonLevelPreview", a4, a5, a6}])
  {
    return;
  }

  MEMORY[0x19EB02040](&v21, [objc_msgSend(a4 "device")]);
  v9 = [a4 videoRotationAngleForHorizonLevelPreview];
  if (v10 >= 2147483650.0 || v10 <= -2147483650.0)
  {
    goto LABEL_9;
  }

  v17 = v10;
  if (v10 == 90)
  {
    v12 = 90;
    goto LABEL_10;
  }

  if (v17 == 270)
  {
    v12 = 270;
    goto LABEL_10;
  }

  if (v17 != 180)
  {
LABEL_9:
    v12 = 0;
  }

  else
  {
    v12 = 180;
  }

LABEL_10:
  WTF::RunLoop::mainSingleton(v9);
  *&v18 = self;
  v13 = self;
  *(&v18 + 1) = self;
  WTF::String::isolatedCopy();
  v14 = WTF::fastMalloc(0x28);
  *v14 = &unk_1F1102CD0;
  *(v14 + 8) = v18;
  *(v14 + 24) = v19;
  *(v14 + 32) = v12;
  v20 = v14;
  WTF::RunLoop::dispatch();
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v16 = v21;
  v21 = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }
}

- (BOOL)isMonitoringCaptureDeviceRotation:(const void *)a3
{
  m_table = self->m_coordinators.m_impl.m_table;
  if (m_table)
  {
    v5 = *a3;
    if (*a3 == -1 || !v5)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC98C98);
    }

    v6 = *(m_table - 2);
    v7 = *(v5 + 4);
    if (v7 < 0x100)
    {
      v8 = WTF::StringImpl::hashSlowCase(v5);
    }

    else
    {
      v8 = v7 >> 8;
    }

    for (i = 0; ; v8 = i + v10)
    {
      v10 = v8 & v6;
      v11 = *&m_table[4 * (v8 & v6)];
      if (v11 != -1)
      {
        if (!v11)
        {
          return v11;
        }

        if (WTF::equal(v11, *a3, a3))
        {
          break;
        }
      }

      ++i;
    }

    LOBYTE(v11) = 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (optional<WebCore::VideoFrameRotation>)start:(const void *)a3 layer:(id)a4
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC98FB0);
  }

  m_table = self->m_coordinators.m_impl.m_table;
  if (m_table || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&self->m_coordinators, 0), (m_table = self->m_coordinators.m_impl.m_table) != 0))
  {
    v8 = *(m_table - 2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*a3 + 16);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v8;
    v14 = &m_table[4 * (v10 & v8)];
    v15 = *v14;
    if (*v14 == -1)
    {
      v11 = &m_table[4 * v13];
      goto LABEL_14;
    }

    if (!v15)
    {
      break;
    }

    if (WTF::equal(v15, *a3, a3))
    {
      goto LABEL_25;
    }

LABEL_14:
    v10 = i + v13;
  }

  if (v11)
  {
    *v11 = 0;
    v11[1] = 0;
    --*(self->m_coordinators.m_impl.m_table - 4);
    v14 = v11;
  }

  WTF::String::operator=(v14, a3);
  v16 = v14[1];
  v14[1] = 0;
  if (v16)
  {
  }

  v17 = self->m_coordinators.m_impl.m_table;
  if (v17)
  {
    v18 = *(v17 - 3) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 3) = v18;
  v19 = (*(v17 - 4) + v18);
  v20 = *(v17 - 1);
  if (v20 > 0x400)
  {
    if (v20 <= 2 * v19)
    {
LABEL_24:
      v14 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(&self->m_coordinators, v14);
    }
  }

  else if (3 * v20 <= 4 * v19)
  {
    goto LABEL_24;
  }

LABEL_25:
  v21 = v14[1];
  if (v21)
  {
LABEL_26:
    [v21 videoRotationAngleForHorizonLevelPreview];
    if (v22 >= 2147483650.0 || v22 <= -2147483650.0)
    {
      goto LABEL_31;
    }

    v24 = v22;
    if (v22 == 90)
    {
      goto LABEL_32;
    }

    if (v24 != 270)
    {
      if (v24 == 180)
      {
LABEL_32:
        v25 = 0;
        goto LABEL_33;
      }

LABEL_31:
      v24 = 0;
      goto LABEL_32;
    }

    v25 = 256;
    v24 = 14;
LABEL_33:
    v26 = 0x10000;
  }

  else
  {
    v27 = MEMORY[0x1E69E2428];
    if ((*MEMORY[0x1E69E2428])())
    {
      v28 = (*MEMORY[0x1E69E22A8])();
      v29 = *a3;
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v38, v29);
        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v30);
        }
      }

      else
      {
        v38 = &stru_1F1147748;
        v31 = &stru_1F1147748;
      }

      v32 = [v28 deviceWithUniqueID:v38];
      v33 = v32;
      if (v32)
      {
        v32 = v32;
      }

      v34 = v38;
      v38 = 0;
      if (v34)
      {
      }

      if (v33)
      {
        v35 = [objc_alloc((*v27)(v32)) initWithDevice:v33 previewLayer:a4];
        [v35 addObserver:self forKeyPath:@"videoRotationAngleForHorizonLevelPreview" options:1 context:0];
        v36 = v14[1];
        v14[1] = v35;
        if (v36)
        {
        }

        v21 = v14[1];
        goto LABEL_26;
      }
    }

    v26 = 0;
    v24 = 0;
    v25 = 0;
  }

  return (v24 | v26 | v25);
}

- (void)stop:(const void *)a3
{
  p_m_coordinators = &self->m_coordinators;
  m_table = self->m_coordinators.m_impl.m_table;
  if (m_table)
  {
    v7 = *a3;
    if (*a3 == -1 || !v7)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC99214);
    }

    v8 = *(m_table - 2);
    v9 = *(v7 + 4);
    if (v9 < 0x100)
    {
      v10 = WTF::StringImpl::hashSlowCase(v7);
    }

    else
    {
      v10 = v9 >> 8;
    }

    for (i = 0; ; v10 = i + v12)
    {
      v12 = v10 & v8;
      v13 = *&m_table[4 * v12];
      if (v13 != -1)
      {
        if (!v13)
        {
          v14 = *p_m_coordinators;
          if (!*p_m_coordinators)
          {
            return;
          }

          v15 = (v14 + 16 * *(v14 - 4));
          goto LABEL_14;
        }

        if (WTF::equal(v13, *a3, a3))
        {
          break;
        }
      }

      ++i;
    }

    v15 = &m_table[4 * v12];
    v14 = *p_m_coordinators;
    if (!*p_m_coordinators)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 += 16 * *(v14 - 4);
LABEL_15:
    if (v14 != v15)
    {
      v23 = *(v15 + 1);
      *(v15 + 1) = 0;
      v16 = *p_m_coordinators;
      if (!*p_m_coordinators || (v16 += 16 * *(v16 - 4), v16 != v15))
      {
        if (v16 != v15)
        {
          v17 = *v15;
          *v15 = -1;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, a2);
          }

          v18 = *(v15 + 1);
          *(v15 + 1) = 0;
          if (v18)
          {
          }

          v19 = *p_m_coordinators;
          v20 = vadd_s32(*(*p_m_coordinators - 16), 0xFFFFFFFF00000001);
          *(v19 - 16) = v20;
          v21 = *(v19 - 4);
          if (6 * v20.i32[1] < v21 && v21 >= 9)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(p_m_coordinators, v21 >> 1, 0);
          }
        }
      }

      if (v23)
      {
        [v23 removeObserver:self forKeyPath:@"videoRotationAngleForHorizonLevelPreview"];
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:(WTF::StringImpl *)a2 change:context:
{
  *a1 = &unk_1F1102CD0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
  }

  return a1;
}

- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(WTF::StringImpl *)a2 change:context:
{
  *this = &unk_1F1102CD0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:
{
  v1 = *(*(a1 + 16) + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      WebKit::UserMediaPermissionRequestManagerProxy::rotationAngleForCaptureDeviceChanged(*(v2 + 72), a1 + 24, *(a1 + 32));
    }
  }
}

@end