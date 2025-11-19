uint64_t CVPixelBufferOpenGLESTextureBacking::finalize(CVPixelBufferOpenGLESTextureBacking *this)
{
  if (*(this + 22))
  {
    v2 = *(this + 64);
    v3 = *(this + 65);
    if (v3 & 1 | v2)
    {
      v4 = (this + (v3 >> 1));
      if (v3)
      {
        v2 = *(*v4 + v2);
      }

      (v2)(v4);
    }
  }

  v5 = *(this + 21);
  if (v5 && !(*(*v5 + 152))(v5))
  {
    (*(**(this + 21) + 424))(*(this + 21), 0);
  }

  v6 = *(this + 59);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 28);
  if (v7)
  {
    CFRelease(v7);
  }

  return CVOpenGLESTextureBacking::finalize(this);
}

void CVOpenGLESTextureCache_IOSurfaceNotInNativePixelFormat()
{
  if ((CVOpenGLESTextureCache_IOSurfaceNotInNativePixelFormat::didComplain & 1) == 0)
  {
    CVOpenGLESTextureCache_IOSurfaceNotInNativePixelFormat::didComplain = 1;
  }
}

uint64_t CVPixelBufferOpenGLESTextureBacking::createStandardTexture(CVPixelBufferOpenGLESTextureBacking *this, CVImageBuffer *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(this + 21);
  *(this + 65) = (*(*v3 + 432))(v3, a2);
  *(this + 66) = (*(*v3 + 440))(v3);
  *(this + 67) = (*(*v3 + 448))(v3);
  *(this + 76) = 0;
  *(this + 35) = (*(*v3 + 320))(v3, 1);
  *(this + 72) = 0;
  *(this + 37) = (*(*v3 + 296))(v3);
  *(this + 68) = (*(*v3 + 272))(v3);
  *(this + 69) = (*(*v3 + 280))(v3);
  *(this + 31) = 0x806900000DE1;
  *(this + 39) = 0;
  v4 = *(this + 59);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"TextureParams");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFDataGetTypeID() && CFDataGetLength(v6) == 32)
      {
        v31.length = CFDataGetLength(v6);
        v31.location = 0;
        CFDataGetBytes(v6, v31, buffer);
        *(this + 62) = v26;
        *&v8 = v29;
        *(&v8 + 1) = v27;
        *(this + 69) = v28;
        *(this + 260) = v8;
        *(this + 39) = *buffer;
        if ((*(*v3 + 272))(v3) < SHIDWORD(v8) || (v9 = *(this + 69), (*(*v3 + 280))(v3) < v9))
        {
          v10 = 0;
          *(this + 32) = 0u;
          goto LABEL_18;
        }

        *(this + 27) = CFRetain(v6);
      }
    }
  }

  (*(*v3 + 480))(v3);
  pthread_mutex_lock((*(this + 22) + 16));
  v11 = *(*(this + 22) + 88);
  *(this + 116) = 1;
  (v11[105])(*v11, *(this + 63), v24);
  v24[2] = 0;
  (v11[99])(*v11, 1, this + 256);
  (*(*(*(this + 22) + 88) + 48))(**(*(this + 22) + 88), *(this + 62), *(this + 64));
  snprintf(buffer, 0x40uLL, "CoreVideo #%u", *(this + 64));
  (v11[815])(*v11, 5890, *(this + 64), 0, buffer);
  if ((*(*v3 + 480))(v3))
  {
    (v11[305])(*v11, *(this + 62), 10241, 9729);
    (v11[305])(*v11, *(this + 62), 10240, 9729);
    v12 = *(this + 22);
    v13 = *(this + 62);
    v14 = *(this + 67);
    v15 = *(this + 68);
    v16 = *(this + 69);
    v17 = *(this + 65);
    v18 = *(this + 66);
    v19 = (*(*v3 + 152))(v3);
    v10 = CVOpenGLESContext::texImageIOSurface(v12, v13, v14, v15, v16, v17, v18, v19, *(this + 39));
  }

  else
  {
    if ((*(*v3 + 152))(v3))
    {
      CVOpenGLESTextureCache_IOSurfaceNotInNativePixelFormat();
    }

    (*(*v3 + 416))(v3, 1);
    if ((*(*v3 + 344))(v3))
    {
      v20 = (*(*v3 + 368))(v3, *(this + 39), 1);
    }

    else
    {
      v20 = (*(*v3 + 320))(v3, 1);
    }

    *(this + 35) = v20;
    (v11[305])(*v11, *(this + 62), 10241, 9729);
    (v11[305])(*v11, *(this + 62), 10240, 9729);
    (v11[302])(*v11, *(this + 62), 0, *(this + 67), *(this + 68), *(this + 69), 0, *(this + 65), *(this + 66), *(this + 35) + *(this + 72));
    v10 = 1;
    (*(*v3 + 424))(v3, 1);
    *(this + 35) = 0;
  }

  (*(*(*(this + 22) + 88) + 48))(**(*(this + 22) + 88), *(this + 62), v24[0]);
  pthread_mutex_unlock((*(this + 22) + 16));
  v21 = *(this + 64);
  *(this + 48) = *(this + 62);
  *(this + 49) = v21;
LABEL_18:
  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t CVPixelBufferOpenGLESTextureBacking::updateStandardTexture(uint64_t a1)
{
  v2 = *(a1 + 168);
  result = (*(*v2 + 480))(v2);
  if ((result & 1) == 0)
  {
    pthread_mutex_lock((*(a1 + 176) + 16));
    v4 = *(*(a1 + 176) + 88);
    (v4[105])(*v4, *(a1 + 252), v6);
    v6[2] = 0;
    (*(*v2 + 416))(v2, 1);
    if ((*(*v2 + 344))(v2))
    {
      v5 = (*(*v2 + 368))(v2, *(a1 + 312), 1);
    }

    else
    {
      v5 = (*(*v2 + 320))(v2, 1);
    }

    *(a1 + 280) = v5;
    (*(*(*(a1 + 176) + 88) + 48))(**(*(a1 + 176) + 88), *(a1 + 248), *(a1 + 256));
    (v4[308])(*v4, *(a1 + 248), 0, 0, 0, *(a1 + 272), *(a1 + 276), *(a1 + 260), *(a1 + 264), *(a1 + 280) + *(a1 + 288));
    (*(*v2 + 424))(v2, 1);
    *(a1 + 280) = 0;
    (*(*(*(a1 + 176) + 88) + 48))(**(*(a1 + 176) + 88), *(a1 + 248), v6[0]);
    return pthread_mutex_unlock((*(a1 + 176) + 16));
  }

  return result;
}

uint64_t CVPixelBufferOpenGLESTextureBacking::destroyStandardTexture(CVPixelBufferOpenGLESTextureBacking *this)
{
  pthread_mutex_lock((*(this + 22) + 16));
  (*(*(*(this + 22) + 88) + 480))(**(*(this + 22) + 88), 1, this + 256);
  *(this + 116) = 0;
  v2 = (*(this + 22) + 16);

  return pthread_mutex_unlock(v2);
}

void CVPixelBufferOpenGLESTextureBacking::getTextureFunctions(uint64_t a1, uint64_t a2, void *a3, uint64_t (**a4)(uint64_t a1), void *a5)
{
  *a3 = CVPixelBufferOpenGLESTextureBacking::createStandardTexture;
  a3[1] = 0;
  *a4 = CVPixelBufferOpenGLESTextureBacking::updateStandardTexture;
  a4[1] = 0;
  *a5 = CVPixelBufferOpenGLESTextureBacking::destroyStandardTexture;
  a5[1] = 0;
}

CVPixelBufferOpenGLESTextureBacking *CVPixelBufferOpenGLESTextureBacking::initWithPixelBackingContext(CVPixelBufferOpenGLESTextureBacking *this, CVPixelBufferBacking *a2, CVOpenGLESContext *a3, const __CFDictionary *a4, CVImageBuffer *a5, int *a6)
{
  if (!(*(*a2 + 152))(a2))
  {
    (*(*a2 + 416))(a2, 0);
  }

  *(this + 29) = (*(*a2 + 272))(a2);
  v11 = (*(*a2 + 280))(a2);
  v12 = v11;
  *(this + 30) = v11;
  v13 = *(this + 58);
  v14 = (*(*a2 + 200))(a2);
  CVOpenGLESTextureBacking::initWithBackingContext(this, a2, a3, v13, v12, v14);
  if (a4)
  {
    v16 = CFRetain(a4);
  }

  else
  {
    v16 = 0;
  }

  *(this + 59) = v16;
  *(this + 60) = CVPixelBufferOpenGLESTextureBacking::createStandardTexture;
  *(this + 61) = 0;
  *(this + 62) = CVPixelBufferOpenGLESTextureBacking::updateStandardTexture;
  *(this + 63) = 0;
  *(this + 64) = CVPixelBufferOpenGLESTextureBacking::destroyStandardTexture;
  *(this + 65) = 0;
  if (CVPixelBufferOpenGLESTextureBacking::createStandardTexture(this, v15))
  {
    v17 = 0;
  }

  else
  {
    v17 = -6683;
  }

  *a6 = v17;
  return this;
}

uint64_t CVPixelBufferOpenGLESTextureBacking::updateTexture(uint64_t (**this)(CVPixelBufferOpenGLESTextureBacking *this, CVImageBuffer *a2), CVImageBuffer *a2, CVOpenGLESTexture *a3)
{
  v5 = this;
  v6 = this[60] == CVPixelBufferOpenGLESTextureBacking::createStandardTexture && this[61] == 0;
  if (v6 && (this[62] == CVPixelBufferOpenGLESTextureBacking::updateStandardTexture ? (v7 = this[63] == 0) : (v7 = 0), v7 && (this[64] == CVPixelBufferOpenGLESTextureBacking::destroyStandardTexture ? (v8 = this[65] == 0) : (v8 = 0), v8)))
  {
    v13 = CVPixelBufferOpenGLESTextureBacking::updateStandardTexture;
  }

  else
  {
    v9 = this[64];
    v10 = this[65];
    v11 = (this + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    (v9)(v11);
    v5[60] = CVPixelBufferOpenGLESTextureBacking::createStandardTexture;
    v5[61] = 0;
    v5[62] = CVPixelBufferOpenGLESTextureBacking::updateStandardTexture;
    v5[63] = 0;
    v5[64] = CVPixelBufferOpenGLESTextureBacking::destroyStandardTexture;
    v5[65] = 0;
    CVPixelBufferOpenGLESTextureBacking::createStandardTexture(v5, v12);
    v13 = v5[62];
    v14 = v5[63];
    v5 = (v5 + (v14 >> 1));
    if (v14)
    {
      v13 = *(*v5 + v13);
    }
  }

  return (v13)(v5, a2, a3);
}

uint64_t CVPixelBufferOpenGLESTextureBacking::finishTexture(CVPixelBufferOpenGLESTextureBacking *this)
{
  pthread_mutex_lock((*(this + 22) + 16));
  v2 = *(this + 22);
  if (*(this + 116) >= 1)
  {
    v3 = 0;
    v4 = *(v2 + 88);
    v5 = (this + 256);
    do
    {
      v6 = *v5;
      v5 += 18;
      (*(v4 + 3768))(*v4, 5890, v6);
      ++v3;
    }

    while (v3 < *(this + 116));
    v2 = *(this + 22);
  }

  return pthread_mutex_unlock((v2 + 16));
}

BOOL CVPixelBufferOpenGLESTextureBacking::testTexture(CVPixelBufferOpenGLESTextureBacking *this)
{
  pthread_mutex_lock((*(this + 22) + 16));
  v2 = *(this + 22);
  v3 = *(this + 116);
  if (v3 < 1)
  {
    v7 = 1;
  }

  else
  {
    v4 = 0;
    v5 = *(v2 + 88);
    v6 = (this + 256);
    LOBYTE(v7) = 1;
    do
    {
      if (v7)
      {
        v7 = (*(v5 + 3760))(*v5, 5890, *v6) != 0;
        v3 = *(this + 116);
      }

      else
      {
        v7 = 0;
      }

      ++v4;
      v6 += 18;
    }

    while (v4 < v3);
    v2 = *(this + 22);
  }

  pthread_mutex_unlock((v2 + 16));
  return v7;
}

uint64_t CVObjectGetTypeID()
{
  if (CVObjectGetTypeID::once != -1)
  {
    CVObjectGetTypeID_cold_1();
  }

  return kCVObjectID;
}

uint64_t classInitialize_CVObject(void *a1)
{
  result = _CFRuntimeRegisterClass();
  kCVObjectID = result;
  return result;
}

CFStringRef CVObject::copyDebugDescription(CVObject *this)
{
  v2 = (*(*this + 24))(this);
  v3 = CFGetTypeID(v2);
  v4 = CFCopyTypeIDDescription(v3);
  v5 = (*(*this + 24))(this);
  v6 = (*(*this + 24))(this);
  v7 = CFGetRetainCount(v6);
  v8 = CFStringCreateWithFormat(0, 0, @"< %@Ref %p obj=%p refcnt=%ld>", v4, v5, this, v7);
  CFRelease(v4);
  return v8;
}

void *trackingAllocate(size_t a1, unint64_t a2, atomic_uint *a3)
{
  v4 = malloc_type_malloc(a1, 0xEA92C136uLL);
  v5 = malloc_size(v4);
  CVAddAtomic(v5, a3 + 2);
  v6 = CFStringCreateWithFormat(0, 0, @"%@ allocated: %d  deallocated: %d  diff: %d\n", *a3, a3[2], a3[3], (a3[2] - a3[3]));
  CFShow(v6);
  CFRelease(v6);
  return v4;
}

void *trackingReallocate(void *a1, size_t a2, unint64_t a3, atomic_uint *a4)
{
  v7 = malloc_size(a1);
  CVAddAtomic(v7, a4 + 3);
  v8 = malloc_type_realloc(a1, a2, 0xBBE82D3uLL);
  v9 = malloc_size(v8);
  CVAddAtomic(v9, a4 + 2);
  v10 = CFStringCreateWithFormat(0, 0, @"%@ allocated: %d  deallocated: %d  diff: %d\n", *a4, a4[2], a4[3], (a4[2] - a4[3]));
  CFShow(v10);
  CFRelease(v10);
  return v8;
}

void trackingDeallocate(void *a1, atomic_uint *a2)
{
  v4 = malloc_size(a1);
  CVAddAtomic(v4, a2 + 3);
  free(a1);
  v5 = CFStringCreateWithFormat(0, 0, @"%@ allocated: %d  deallocated: %d  diff: %d\n", *a2, a2[2], a2[3], (a2[2] - a2[3]));
  CFShow(v5);

  CFRelease(v5);
}

CFStringRef classCopyFormatDescription_CVObject(void *a1, const __CFDictionary *a2)
{
  v4 = a1[2];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<CVObjectRef %p obj=%p refcnt=%ld>", a1, v4, v5);
}

uint64_t CVBunchPair::finalize(CVBunchPair *this)
{
  pthread_rwlock_destroy((this + 16));

  return CVObject::finalize(this);
}

uint64_t CVBunchPair::invokeDestroyBackingkTrace(CVBunchPair *this, CVPixelBufferBacking *a2)
{
  if (a2)
  {
    v4 = (*(*a2 + 160))(a2);
    v5 = *a2;
    if (v4)
    {
      v6 = (*(v5 + 160))(a2);
      IOOrEXSurfaceGetID(v6);
    }

    else
    {
      (*(v5 + 24))(a2);
    }
  }

  v7 = *(this + 27);
  (*(*this + 96))(this);
  (*(*this + 104))(this);

  return kdebug_trace();
}

CFTypeID CVMetalTextureCacheGetTypeID(void)
{
  if (CVMetalTextureCacheGetTypeID::once != -1)
  {
    CVMetalTextureCacheGetTypeID_cold_1();
  }

  return kCVMetalTextureCacheID;
}

uint64_t classInitialize_CVMetalTextureCache(void *a1)
{
  result = _CFRuntimeRegisterClass();
  kCVMetalTextureCacheID = result;
  return result;
}

void CVMetalTextureCache::CVMetalTextureCache(CVMetalTextureCache *this, const void *a2)
{
  CVBufferPool::CVBufferPool(this, a2);
  *v2 = &unk_1F1087680;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
}

uint64_t CVMetalTextureCache::finalize(CVMetalTextureCache *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 8) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 7) = 0;
  v4 = *(this + 5);
  if (v4)
  {
    v12.length = CFArrayGetCount(*(this + 5));
    v12.location = 0;
    CFArrayApplyFunction(v4, v12, _invalidateBacking, 0);
  }

  v5 = *(this + 6);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 6) = 0;
  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 5) = 0;
  v7 = *(this + 9);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 9) = 0;
  v8 = *(this + 10);
  if (v8)
  {
    CFRelease(v8);
  }

  *(this + 10) = 0;
  v9 = *(this + 4);
  if (v9)
  {
    CFRelease(v9);
  }

  *(this + 4) = 0;

  return CVBufferPool::finalize(this);
}

uint64_t CVMetalTextureCache::bufferBackingInUse(CVMetalTextureCache *this, CVBufferBacking *a2)
{
  pthread_mutex_lock(CVLockingBunchPair::_bufferPoolMutex);
  Count = CFArrayGetCount(*(*(this + 2) + 224));
  v5 = CFArrayGetCount(*(this + 5));
  v6 = *(*(this + 2) + 232);
  v7 = (*(*a2 + 24))(a2);
  CFArrayAppendValue(v6, v7);
  v8 = CFArrayGetCount(*(this + 8));
  v9 = *(this + 8);
  v10 = (*(*a2 + 24))(a2);
  v26.location = 0;
  v26.length = v8;
  if (CFArrayContainsValue(v9, v26, v10))
  {
    v11 = *(this + 8);
    v12 = (*(*a2 + 24))(a2);
    v13 = v11;
    v14.location = 0;
    v14.length = v8;
LABEL_5:
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13, v14, v12);
    CFArrayRemoveValueAtIndex(v11, FirstIndexOfValue);
    (*(*a2 + 312))(a2);
    goto LABEL_6;
  }

  v15 = *(*(this + 2) + 224);
  v16 = (*(*a2 + 24))(a2);
  v27.location = 0;
  v27.length = Count;
  if (CFArrayContainsValue(v15, v27, v16))
  {
    v11 = *(*(this + 2) + 224);
    v12 = (*(*a2 + 24))(a2);
    v13 = v11;
    v14.location = 0;
    v14.length = Count;
    goto LABEL_5;
  }

  v20 = *(this + 5);
  v21 = (*(*a2 + 24))(a2);
  v28.location = 0;
  v28.length = v5;
  if (CFArrayContainsValue(v20, v28, v21))
  {
    v22 = *(this + 5);
    v23 = (*(*a2 + 24))(a2);
    v29.location = 0;
    v29.length = v5;
    v24 = CFArrayGetFirstIndexOfValue(v22, v29, v23);
    CFArrayRemoveValueAtIndex(v22, v24);
  }

LABEL_6:
  v18 = CVLockingBunchPair::_bufferPoolMutex;

  return pthread_mutex_unlock(v18);
}

uint64_t CVMetalTextureCache::bufferBackingNotInUse(CVMetalTextureCache *this, CVBufferBacking *a2)
{
  pthread_mutex_lock(CVLockingBunchPair::_bufferPoolMutex);
  v4 = *(this + 5);
  v5 = (*(*a2 + 24))(a2);
  CFArrayAppendValue(v4, v5);
  v6 = *(*(this + 2) + 232);
  Count = CFArrayGetCount(v6);
  v8 = (*(*a2 + 24))(a2);
  v20.location = 0;
  v20.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v20, v8);
  CFArrayRemoveValueAtIndex(v6, FirstIndexOfValue);
  if ((*(*a2 + 304))(a2))
  {
    if ((*(*a2 + 336))(a2))
    {
      v10 = (this + 64);
    }

    else
    {
      v10 = (*(this + 2) + 224);
    }

    v11 = *v10;
    v12 = (*(*a2 + 24))(a2);
    CFArrayAppendValue(v11, v12);
    v13 = *(this + 5);
    v14 = CFArrayGetCount(v13);
    v15 = (*(*a2 + 24))(a2);
    v21.location = 0;
    v21.length = v14;
    v16 = CFArrayGetFirstIndexOfValue(v13, v21, v15);
    CFArrayRemoveValueAtIndex(v13, v16);
    (*(*a2 + 320))(a2);
  }

  v17 = CVLockingBunchPair::_bufferPoolMutex;

  return pthread_mutex_unlock(v17);
}

uint64_t CVMetalTextureCache::textureCacheRecycler(CVMetalTextureCache *this, void *a2, void *a3)
{
  v4 = *(this + 2);
  result = (*(*v4 + 304))(v4, a2, a3);
  if (result)
  {
    if ((*(*v4 + 336))(v4))
    {
      v6 = (a2 + 8);
    }

    else
    {
      v6 = (a2[2] + 224);
    }

    v7 = *v6;
    v8 = (*(*v4 + 24))(v4);
    CFArrayAppendValue(v7, v8);
    v9 = a2[5];
    Count = CFArrayGetCount(v9);
    v11 = (*(*v4 + 24))(v4);
    v15.location = 0;
    v15.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v15, v11);
    CFArrayRemoveValueAtIndex(v9, FirstIndexOfValue);
    v13 = *(*v4 + 320);

    return v13(v4);
  }

  return result;
}

void CVMetalTextureCache::freeInvalidTexture(CVMetalTextureCache *this, void *a2, void *a3)
{
  v4 = *(this + 2);
  if (((*v4)[15])(v4, a2, a3))
  {
    v5 = a2[6];
    v6 = (*(*v4[21] + 24))(v4[21]);
    CFDictionaryRemoveValue(v5, v6);
    v7 = *(a2[2] + 224);
    Count = CFArrayGetCount(v7);
    v9 = ((*v4)[3])(v4);
    v12.location = 0;
    v12.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v12, v9);

    CFArrayRemoveValueAtIndex(v7, FirstIndexOfValue);
  }
}

void CVMetalTextureCache::freeUnusedIOSurfaceTextureBackings(CVMetalTextureCache *this, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = *(this + 2);
  v7 = a2[2];
  if (v7)
  {
    (*(*v6 + 112))(*(this + 2));
    v7 = a2[2];
  }

  if ((v7 & 1) != 0 || (*(*v6 + 120))(v6) && v6[13] < a2[1])
  {
    v8 = *(v5 + 56);
    v9 = (*(*v6 + 336))(v6);
    ID = IOSurfaceGetID(v9);
    CFDictionaryRemoveValue(v8, ID);
    v11 = *(v5 + 64);
    v14.length = CFArrayGetCount(v11);
    v14.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v14, this);

    CFArrayRemoveValueAtIndex(v11, FirstIndexOfValue);
  }
}

uint64_t CVMetalTextureCache::flushTextures(uint64_t this, char a2, uint64_t a3)
{
  v4 = this;
  if ((a2 & 1) != 0 || *(this + 88))
  {
    pthread_mutex_lock(CVLockingBunchPair::_bufferPoolMutex);
    if (CFArrayGetCount(*(v4 + 40)))
    {
      v5 = *(v4 + 40);
      Count = CFArrayGetCount(v5);
      CFArrayApplyFunctionReverse(v5, 0, Count, CVMetalTextureCache::textureCacheRecycler, v4);
    }

    if (CFArrayGetCount(*(*(v4 + 16) + 224)))
    {
      v7 = *(*(v4 + 16) + 224);
      v8 = CFArrayGetCount(v7);
      CFArrayApplyFunctionReverse(v7, 0, v8, CVMetalTextureCache::freeInvalidTexture, v4);
    }

    if (CFArrayGetCount(*(v4 + 64)))
    {
      v11[0] = v4;
      v11[1] = CVGetCurrentHostTime() - *(v4 + 88);
      v11[2] = a3;
      v9 = *(v4 + 64);
      v10 = CFArrayGetCount(v9);
      CFArrayApplyFunctionReverse(v9, 0, v10, CVMetalTextureCache::freeUnusedIOSurfaceTextureBackings, v11);
    }

    return pthread_mutex_unlock(CVLockingBunchPair::_bufferPoolMutex);
  }

  return this;
}

CVImageBuffer **CVMetalTextureCache::createTextureFromImageWithParams(CFDictionaryRef *this, const __CFAllocator *a2, CVImageBuffer *a3, const __CFDictionary *cf, uint64_t a5, int a6, int a7, uint64_t a8, unint64_t a9, char a10, int *a11)
{
  theDict = 0;
  *bytes = a6;
  v36 = a7;
  v37 = a8;
  v38 = a9;
  v41 = a10;
  v42 = 0;
  v39 = 0;
  v40 = a5;
  CVCreateMergedDictionary(this[10], cf, &theDict);
  if (theDict)
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(theDict, @"MetalTextureUsage");
    if (Value)
    {
      v15 = Value;
      v16 = CFGetTypeID(Value);
      if (v16 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v15, kCFNumberCFIndexType, &valuePtr))
        {
          LODWORD(v39) = valuePtr;
          LOBYTE(v42) = 1;
        }
      }
    }

    v33 = 0;
    v17 = CFDictionaryGetValue(theDict, @"MetalTextureStorageMode");
    if (v17)
    {
      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v18, kCFNumberCFIndexType, &v33))
        {
          HIDWORD(v39) = v33;
          HIBYTE(v42) = 1;
        }
      }
    }

    v20 = CVDictionaryGetBoolValueWithDefault(theDict, @"MetalTextureCacheDoNotIncrementUseCount", 0) == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 56);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"TextureParams", v21);
  CFRelease(v21);
  pthread_mutex_lock(CVLockingBunchPair::_bufferPoolMutex);
  v23 = (*(*a3 + 160))(a3);
  v24 = (*(*this + 14))(this, a2, v23, a3, Mutable, a11);
  if (v24)
  {
    v25 = v24;
    v26 = (*(*v24 + 24))(v24);
    v28 = CVMetalTexture::alloc(a2, v27);
    v29 = v28;
    if (v28)
    {
      if (!v20)
      {
        CVDataBuffer::setDoNotAutomaticallyBumpUseCount(v28[2]);
      }

      if ((*(*v29[2] + 248))(v29[2], *(v26 + 16)))
      {
        (*(*v29[2] + 144))(v29[2], theDict);
        v30 = (*(*a3 + 24))(a3);
        CVBufferPropagateAttachments(v30, v29);
        (*(*v25 + 288))(v25, a3, v29[2]);
        v31 = 0;
      }

      else
      {
        v31 = -6660;
      }
    }

    else
    {
      v31 = -6690;
    }

    *a11 = v31;
  }

  else
  {
    v29 = 0;
  }

  pthread_mutex_unlock(CVLockingBunchPair::_bufferPoolMutex);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v29;
}

void *CVMetalTextureCache::createTextureBackingFromImageBacking(CVMetalTextureCache *this, const __CFAllocator *a2, CVImageBacking *a3, CVImageBuffer *a4, CFDictionaryRef theDict, int *a6)
{
  Value = CFDictionaryGetValue(theDict, @"TextureParams");
  pthread_mutex_lock(CVLockingBunchPair::_bufferPoolMutex);
  v12 = (*(*a3 + 152))(a3);
  if (v12)
  {
    v13 = v12;
    v14 = *(this + 7);
    ID = IOSurfaceGetID(v12);
    v16 = CFDictionaryGetValue(v14, ID);
    v43 = a4;
    if (v16)
    {
      Mutable = v16;
      Count = CFArrayGetCount(v16);
      if (Count >= 1)
      {
        v19 = Count;
        v20 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v20);
          v22 = (*(*ValueAtIndex[2] + 360))(ValueAtIndex[2]);
          if (CFEqual(v22, Value))
          {
            break;
          }

          if (v19 == ++v20)
          {
            goto LABEL_13;
          }
        }

        v37 = (*(*this + 24))(this);
        v38 = (*(*a3 + 24))(a3);
        v39 = CFDictionaryGetCount(*(this + 7));
        v40 = CFArrayGetCount(*(*(this + 2) + 224));
        CVTracePoolAction(1, v37, v38, "CVMetalTextureCache: [IOSurface] Cache hit", v39, v40);
        v41 = ValueAtIndex[2];
        (*(*v41 + 256))(v41, a3);
        if (gCVKTraceEnabled)
        {
          IOSurfaceGetID(v13);
          (*(*v41 + 264))(v41);
          kdebug_trace();
        }

        v32 = a6;
        goto LABEL_22;
      }
    }

    else
    {
      v24 = (*(*a3 + 344))(a3);
      if (v24)
      {
        v25 = 2 * v24;
      }

      else
      {
        v25 = 2;
      }

      Mutable = CFArrayCreateMutable(a2, v25, MEMORY[0x1E695E9C0]);
      v26 = *(this + 7);
      v27 = IOSurfaceGetID(v13);
      CFDictionarySetValue(v26, v27, Mutable);
      CFRelease(Mutable);
    }

LABEL_13:
    v28 = (*(*this + 24))(this);
    v29 = (*(*a3 + 24))(a3);
    v30 = CFDictionaryGetCount(*(this + 7));
    v31 = CFArrayGetCount(*(*(this + 2) + 224));
    CVTracePoolAction(1, v28, v29, "CVMetalTextureCache: [IOSurface] Cache miss", v30, v31);
    {
      CVMetalTextureCache::createTextureBackingFromImageBacking(__CFAllocator const*,CVImageBacking *,CVImageBuffer *,__CFDictionary const*,int *)::ktrace_seed = arc4random();
    }

    ++CVMetalTextureCache::createTextureBackingFromImageBacking(__CFAllocator const*,CVImageBacking *,CVImageBuffer *,__CFDictionary const*,int *)::ktrace_seed;
    IOSurfaceGetID(v13);
    kdebug_trace();
    v32 = a6;
    v33 = (*(*a3 + 232))(a3, a2, *(this + 4), theDict, v43, a6);
    if (v33)
    {
      v34 = v33;
      v35 = *a6;
      v36 = (*(*v33 + 24))(v33);
      ValueAtIndex = v36;
      if (!v35)
      {
        (*(*v34 + 96))(v34, *(this + 2));
        (*(*v34 + 328))(v34, v13);
        CFArrayAppendValue(Mutable, ValueAtIndex);
        CFArrayAppendValue(*(this + 8), ValueAtIndex);
        IOSurfaceGetID(v13);
        (*(*v34 + 264))(v34);
        kdebug_trace();
        CFRelease(ValueAtIndex);
LABEL_22:
        v23 = ValueAtIndex[2];
        *v32 = 0;
        goto LABEL_23;
      }

      CFRelease(v36);
    }

    IOSurfaceGetID(v13);
    kdebug_trace();
    v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_23:
  pthread_mutex_unlock(CVLockingBunchPair::_bufferPoolMutex);
  return v23;
}

CFStringRef CVMetalTextureCache::copyDebugDescription(CVMetalTextureCache *this)
{
  v2 = (*(*this + 24))(this);
  v3 = CFGetTypeID(v2);
  v4 = CFCopyTypeIDDescription(v3);
  v5 = (*(*this + 24))(this);
  v6 = *(this + 10);
  v7 = *(this + 2);
  v8 = *(v7 + 232);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    v7 = *(this + 2);
  }

  else
  {
    Count = -1;
  }

  v10 = *(v7 + 224);
  if (v10)
  {
    v11 = CFArrayGetCount(v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = *(this + 5);
  if (v12)
  {
    v13 = CFArrayGetCount(v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = CFStringCreateWithFormat(0, 0, @"< %@Ref %p cacheAttributes=nil metalBufferAttributes=%@ inUse=%ld free=%ld dirty=%ld>", v4, v5, v6, Count, v11, v13);
  CFRelease(v4);
  return v14;
}

CFStringRef classCopyFormatDescription_CVMetalTextureCache(void *a1, const __CFDictionary *a2)
{
  v4 = a1[2];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<CVMetalTextureCacheRef %p obj=%p refcnt=%ld>", a1, v4, v5);
}

uint64_t CVPixelBufferBackingGetTypeID(void)
{
  if (CVPixelBufferBackingGetTypeID(void)::once != -1)
  {
    CVPixelBufferBackingGetTypeID();
  }

  return kCVPixelBufferBackingID;
}

void CVPixelBufferBacking::CVPixelBufferBacking(CVPixelBufferBacking *this, const void *a2)
{
  CVImageBacking::CVImageBacking(this, a2);
  *v2 = &unk_1F1087728;
  *(v2 + 496) = 0;
  *(v2 + 168) = 0;
  *(v2 + 1080) = 0;
  *(v2 + 1088) = 0u;
  *(v2 + 1112) = 0u;
  *(v2 + 144) = 1;
  *(v2 + 1136) = 0;
  *(v2 + 448) = 0;
  *(v2 + 456) = 0;
  *(v2 + 476) = 0;
}

__IOSurface *CreateChildIOSurface(__CVBuffer *a1, __CFDictionary *a2, unint64_t a3, unsigned int *a4)
{
  valuePtr = 0;
  BufferBacking = CVPixelBufferGetBufferBacking(a1);
  if (!BufferBacking)
  {
    return 0;
  }

  v8 = BufferBacking;
  if (!*(BufferBacking[2] + 456))
  {
    return 0;
  }

  v32 = *(BufferBacking[2] + 456);
  v34 = a4;
  pthread_mutex_lock(&gPixelBufferBackingCachedChildIOSurfaceMutex);
  v33 = v8;
  v9 = *(v8[2] + 464);
  IntValueWithDefault = CVDictionaryGetIntValueWithDefault(a2, *MEMORY[0x1E696D130], 1);
  v36 = CVDictionaryGetIntValueWithDefault(a2, *MEMORY[0x1E696CF58], 1);
  theDict = a2;
  Value = CFDictionaryGetValue(a2, *MEMORY[0x1E696CFC0]);
  if (Value)
  {
    v12 = Value;
    v13 = CFGetTypeID(Value);
    if (v13 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
    }
  }

  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v15 = Count;
      v16 = 0;
      key = *MEMORY[0x1E696D0A8];
      v17 = *MEMORY[0x1E696D0B0];
      v30 = *MEMORY[0x1E696CFA8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v16);
        if (IOSurfaceGetWidth(ValueAtIndex) == IntValueWithDefault && IOSurfaceGetHeight(ValueAtIndex) == v36 && IOSurfaceGetPlaneCount(ValueAtIndex) == a3)
        {
          PixelFormat = IOSurfaceGetPixelFormat(ValueAtIndex);
          if (PixelFormat == valuePtr)
          {
            if (a3)
            {
              v20 = CFDictionaryGetValue(theDict, key);
              v21 = 0;
              v22 = 0;
              while (1)
              {
                v23 = CFArrayGetValueAtIndex(v20, v21);
                v24 = CVDictionaryGetIntValueWithDefault(v23, v17, 0);
                if (IOSurfaceGetOffsetOfPlane() != v24)
                {
                  break;
                }

                v21 = ++v22;
                if (v22 >= a3)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              v25 = CVDictionaryGetIntValueWithDefault(theDict, v30, 0);
              if (IOSurfaceGetOffsetOfPlane() == v25)
              {
LABEL_30:
                CFRetain(ValueAtIndex);
                v27 = v34;
                if (v34)
                {
                  v28 = 6;
LABEL_26:
                  *v27 = v28;
                }

                goto LABEL_27;
              }
            }
          }
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }

  ValueAtIndex = IOSurfaceCreateChildSurface();
  if (ValueAtIndex)
  {
    Mutable = *(v33[2] + 464);
    if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (*(v33[2] + 464) = Mutable) != 0))
    {
      CFArrayAppendValue(Mutable, ValueAtIndex);
    }
  }

  v27 = v34;
  if (v34)
  {
    v28 = 2;
    goto LABEL_26;
  }

LABEL_27:
  pthread_mutex_unlock(&gPixelBufferBackingCachedChildIOSurfaceMutex);
  return ValueAtIndex;
}

void _CVPixelBufferStandardMemoryDispose(void *a1, CFAllocatorRef allocator, void *a3, CFTypeRef cf, void *ptr)
{
  if (ptr)
  {
    CFAllocatorDeallocate(allocator, ptr);
  }

  if (cf)
  {

    CFRelease(cf);
  }
}

uint64_t addBackingSummaryToGlobalBagAndTrace(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, char a6, const __CFString *a7)
{
  pthread_mutex_lock(&gPixelBufferBackingSummaryMutex);
  if (gPixelBufferBackingSummaryBag)
  {
    v14 = copyBackingSummaryString(a1, a2, a3, a5, a6, a7);
    CFBagAddValue(gPixelBufferBackingSummaryBag, v14);
    CFRelease(v14);
    v15 = gPixelBufferBackingTotalDataSize;
    if ((a5 & 2) == 0)
    {
      v15 = gPixelBufferBackingTotalDataSize + a4;
      gPixelBufferBackingTotalDataSize += a4;
    }

    printPixelBufferBackingSummaryBag(gPixelBufferBackingSummaryBag, v15);
  }

  return pthread_mutex_unlock(&gPixelBufferBackingSummaryMutex);
}

CFDictionaryRef CVPixelBufferBacking::copyPixelBufferOptions(CFTypeRef *this)
{
  v2 = CFGetAllocator(this[136]);
  v3 = this[136];

  return CFDictionaryCreateCopy(v2, v3);
}

double CVPixelBufferBacking::getSize(CVPixelBufferBacking *this)
{
  result = *(this + 22);
  v2 = *(this + 23);
  return result;
}

uint64_t CVPixelBufferBacking::getRowPixelsOfPlane(CVPixelBufferBacking *this, unint64_t a2)
{
  v2 = *(this + 130);
  if (!(a2 | v2))
  {
    return (*(*this + 328))();
  }

  if (v2 <= a2)
  {
    return 0;
  }

  return *(this + a2 + 94);
}

uint64_t CVPixelBufferBacking::getBitsPerPixelOfPlane(CVPixelBufferBacking *this, unint64_t a2)
{
  v2 = *(this + 130);
  if (!(a2 | v2))
  {
    return (*(*this + 336))();
  }

  if (v2 <= a2)
  {
    return 0;
  }

  return *(this + a2 + 110);
}

uint64_t CVPixelBufferBacking::fillExtendedPixels(CFDictionaryRef *this, __CVBuffer *a2)
{
  Value = CFDictionaryGetValue(this[135], @"FillExtendedPixelsBlock");
  if (Value)
  {
    Value[2](Value, a2);
    return 1;
  }

  else
  {
    result = CFDictionaryGetValue(this[135], @"FillExtendedPixelsCallback");
    if (result)
    {
      BytePtr = CFDataGetBytePtr(result);
      v8 = *(BytePtr + 1);
      v7 = *(BytePtr + 2);

      return v8(a2, v7);
    }
  }

  return result;
}

CVOpenGLESTextureBacking **CVPixelBufferBacking::createGLESTextureBackingForContext(CVPixelBufferBacking *this, const __CFAllocator *a2, CVOpenGLESContext *a3, const __CFDictionary *a4, CVImageBuffer *a5, int *a6)
{
  if (CVPixelBufferOpenGLESTextureBacking::isPixelBufferBackingSupported(this, a3, a3))
  {
    result = CVPixelBufferOpenGLESTextureBacking::alloc(a2, v12);
    if (result)
    {
      v14 = result;
      result = (*(*result[2] + 376))(result[2], this, a3, a4, a5, a6);
      if (result)
      {
        return *(v14 + 16);
      }
    }
  }

  else
  {
    result = 0;
    *a6 = -6683;
  }

  return result;
}

CVMetalTextureBacking **CVPixelBufferBacking::createTextureBackingForDevice(CVPixelBufferBacking *this, const __CFAllocator *a2, CVBufferBacking *a3, const __CFDictionary *a4, CVImageBuffer *a5, int *a6)
{
  if (CVMetalBufferBacking::isBufferBackingSupported(this, a3, a3))
  {
    result = CVPixelBufferMetalTextureBacking::alloc(a2, v12);
    if (result)
    {
      v14 = result;
      result = (*(*result[2] + 368))(result[2], this, a3, a4, a5, a6);
      if (result)
      {
        return *(v14 + 16);
      }
    }
  }

  else
  {
    result = 0;
    *a6 = -6684;
  }

  return result;
}

uint64_t CVPixelBufferBacking::provideImageData(CVPixelBufferBacking *this, char *a2, size_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  (*(*this + 416))(this, 0);
  v13 = *(this + 126);
  if (v13 == a3 && (a7 + a4) <= *(this + 23))
  {
    v16 = (*(*this + 320))(this, 1);
    memcpy(a2, (a4 + a5 * a3 + v16), a7 * a3);
  }

  else
  {
    if (v13 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = *(this + 126);
    }

    for (; a7; --a7)
    {
      v15 = (*(*this + 320))(this, 1);
      memcpy(a2, (v15 + a4 + *(this + 126) * a5), v14);
      a2 += a3;
      ++a5;
    }
  }

  (*(*this + 424))(this, 0);
  return 1;
}

void *CVPixelBufferBacking::createCVBuffer(CVPixelBufferBacking *this, const __CFAllocator *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CVPixelBuffer::alloc(a2, a2);
  if (result)
  {
    v4 = result;
    if ((*(*result[2] + 248))(result[2], this))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CVPixelBufferBacking::hasIOSurfaceWiringAssertionBeenCreated(CVPixelBufferBacking *this)
{
  if (*(this + 57) && (*(this + 488) & 4) != 0)
  {
    return 1;
  }

  else
  {
    return CVBufferBacking::hasIOSurfaceWiringAssertionBeenCreated(this);
  }
}

void CVPixelBufferBacking::prefetchNonIOSurfacePages(CVPixelBufferBacking *this)
{
  if (sCVSetUpPageSizeOnce != -1)
  {
    CVPixelBufferBacking::prefetchNonIOSurfacePages();
  }

  if (sPageSize && !(*(*this + 416))(this, 0))
  {
    v2 = (*(*this + 304))(this);
    v3 = sPageSize;
    v4 = v2 - 1 + sPageSize;
    v5 = __CFADD__(v2 - 1, sPageSize);
    v6 = (*(*this + 320))(this, 1);
    if (!v5)
    {
      v7 = sPageSize;
      v8 = v6;
      v9 = v4 / v3;
      do
      {
        *v8 = 0;
        v8 += v7;
        --v9;
      }

      while (v9);
    }

    *(v6 + (*(*this + 304))(this) - 1) = 0;
    v10 = *(*this + 424);

    v10(this, 0);
  }
}

uint64_t cvSetUpPageSizeOnce(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *v5 = 0x700000006;
  v4 = 0;
  v3 = 8;
  result = sysctl(v5, 2u, &v4, &v3, 0, 0);
  sPageSize = v4;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void CVPixelBufferBacking::prefetchPages(CVPixelBufferBacking *this)
{
  if (*(this + 57))
  {
    pixelBufferBackingCreateIOSurfaceWiringAssertion(*(this + 57), this + 119, this + 60, this + 122, 1);
  }

  else
  {
    CVPixelBufferBacking::prefetchNonIOSurfacePages(this);
  }
}

CFStringRef classCopyFormatDescription_CVPixelBufferBacking(void *a1, const __CFDictionary *a2)
{
  v4 = a1[2];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<CVPixelBufferBackingRef %p obj=%p refcnt=%ld>", a1, v4, v5);
}

uint64_t initPixelBufferBackingSummary(void)
{
  v4 = *MEMORY[0x1E69E9840];
  result = CFPreferencesGetAppBooleanValue(@"backings_trace", @"com.apple.corevideo", 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315138;
      v3 = "CoreVideo: will trace total backings -- thank you for setting defaults write com.apple.corevideo backings_trace -BOOL YES";
      _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", &v2, 0xCu);
    }

    result = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D0]);
    gPixelBufferBackingSummaryBag = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef copyBackingSummaryString(uint64_t a1, uint64_t a2, unsigned int a3, char a4, char a5, const __CFString *a6)
{
  v20 = 0;
  if (a3 == 32)
  {
    v11 = 1111970369;
  }

  else
  {
    if (a3 <= 0x63)
    {
      snprintf(__str, 5uLL, "%d", a3);
      goto LABEL_7;
    }

    v11 = bswap32(a3);
  }

  *__str = v11;
LABEL_7:
  v12 = "[C]";
  if ((a4 & 2) == 0)
  {
    v12 = "";
  }

  if ((a4 & 4) != 0)
  {
    v13 = "[C:Cached]";
  }

  else
  {
    v13 = v12;
  }

  if ((a5 & 2) != 0)
  {
    v14 = "[W]";
  }

  else
  {
    v14 = "";
  }

  v15 = *MEMORY[0x1E695E480];
  if (a6)
  {
    v16 = CFStringCreateWithFormat(v15, 0, @":%@", a6);
    v17 = CFStringCreateWithFormat(v15, 0, @"%dx%dx%s%s%s%@", a1, a2, __str, v13, v14, v16);
    if (!v16)
    {
      return v17;
    }
  }

  else
  {
    v16 = &stru_1F108B3E8;
    v17 = CFStringCreateWithFormat(v15, 0, @"%dx%dx%s%s%s%@", a1, a2, __str, v13, v14, &stru_1F108B3E8);
  }

  CFRelease(v16);
  return v17;
}

void printPixelBufferBackingSummaryBag(const __CFBag *a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  context = a1;
  theString = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v7 = 0;
  v8 = 1;
  CFStringAppend(theString, @"CoreVideo: ");
  CFBagApplyFunction(a1, appendCountedStringToSummary, &context);
  if (v8)
  {
    CFStringAppend(theString, @" [no backings] ");
  }

  CFStringAppendFormat(theString, 0, @" %1.1f MiB", vcvtd_n_f64_u64(a2, 0x14uLL));
  CFStringGetCString(theString, buffer, 2000, 0x600u);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = buffer;
    _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  CFRelease(theString);
  v4 = *MEMORY[0x1E69E9840];
}

void appendCountedStringToSummary(const void *a1, void *a2)
{
  if (a2[2] != a1)
  {
    v4 = MEMORY[0x19EAF6D10](*a2, a1);
    if (*(a2 + 24))
    {
      v5 = "";
    }

    else
    {
      v5 = ", ";
    }

    CFStringAppendFormat(a2[1], 0, @"%s%dx%@", v5, v4, a1);
    *(a2 + 24) = 0;
    a2[2] = a1;
  }
}

CVMetalTextureBacking **CVPixelBufferMetalTextureBacking::alloc(CVPixelBufferMetalTextureBacking *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVPixelBufferMetalTextureBacking");
  }

  TypeID = CVObjectGetTypeID();
  v4 = CVObject::alloc(TypeID, this, 0x18, 0x168uLL);
  v5 = v4;
  if (v4)
  {
    CVMetalTextureBacking::CVMetalTextureBacking(v4[2], v4);
    *v6 = &unk_1F1087938;
  }

  return v5;
}

uint64_t CVPixelBufferMetalTextureBacking::finalize(CVPixelBufferMetalTextureBacking *this)
{
  v2 = *(this + 21);
  if (v2 && !(*(*v2 + 152))(v2))
  {
    (*(**(this + 21) + 424))(*(this + 21), 0);
  }

  v3 = *(this + 44);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    CFRelease(v4);
  }

  return CVMetalTextureBacking::finalize(this);
}

BOOL CVPixelBufferMetalTextureBacking::createTexture(CVPixelBufferMetalTextureBacking *this, CVImageBuffer *a2)
{
  v3 = *(this + 21);
  *(this + 39) = 0;
  *(this + 32) = (*(*v3 + 320))(v3, 1);
  *(this + 80) = 0;
  *(this + 35) = (*(*v3 + 296))(v3);
  *(this + 33) = (*(*v3 + 272))(v3);
  *(this + 34) = (*(*v3 + 280))(v3);
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 41) = 0;
  *(this + 335) = 0;
  v4 = *(this + 44);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"TextureParams");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFDataGetTypeID() && CFDataGetLength(v6) == 56)
      {
        v28.length = CFDataGetLength(v6);
        v28.location = 0;
        CFDataGetBytes(v6, v28, buffer);
        v8 = v22;
        *(this + 264) = *buffer;
        *(this + 39) = v25;
        *(this + 296) = v8;
        *(this + 336) = v26;
        *(this + 337) = v27;
        v9 = v24;
        *(this + 82) = v23;
        *(this + 83) = v9;
        *(this + 28) = CFRetain(v6);
      }
    }
  }

  *(this + 86) = 1;
  v10 = *(this + 24);
  v11 = *(this + 39);
  v12 = *(this + 33);
  v13 = *(this + 34);
  v14 = *(this + 337);
  v15 = *(this + 82);
  v16 = *(this + 338);
  v17 = *(this + 83);
  v18 = (*(*v3 + 152))(v3);
  v19 = CVMTLTextureCreate(v10, v11, v12, v13, v14, v15, v16, v17, v18, *(this + 37), *(this + 38), *(this + 336));
  *(this + 25) = v19;
  return v19 != 0;
}

CVPixelBufferMetalTextureBacking *CVPixelBufferMetalTextureBacking::initWithPixelBackingDevice(CVPixelBufferMetalTextureBacking *this, CVPixelBufferBacking *a2, void *a3, const __CFDictionary *a4, CVImageBuffer *a5, int *a6)
{
  *(this + 30) = (*(*a2 + 272))(a2);
  v11 = (*(*a2 + 280))(a2);
  *(this + 31) = v11;
  v12 = *(this + 30);
  v13 = (*(*a2 + 200))(a2) != 0;
  CVMetalTextureBacking::initWithBackingDevice(this, a2, a3, v12, v11, v13);
  if (a4)
  {
    v15 = CFRetain(a4);
  }

  else
  {
    v15 = 0;
  }

  *(this + 44) = v15;
  if (CVPixelBufferMetalTextureBacking::createTexture(this, v14))
  {
    v16 = 0;
  }

  else
  {
    v16 = -6684;
  }

  *a6 = v16;
  return this;
}

uint64_t CVMetalBufferCacheGetTypeID()
{
  if (CVMetalBufferCacheGetTypeID::once != -1)
  {
    CVMetalBufferCacheGetTypeID_cold_1();
  }

  return kCVMetalBufferCacheID;
}

uint64_t classInitialize_CVMetalBufferCache(void *a1)
{
  result = _CFRuntimeRegisterClass();
  kCVMetalBufferCacheID = result;
  return result;
}

CVBufferPool **CVMetalBufferCache::alloc(CVMetalBufferCache *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVMetalBufferCache");
  }

  if (CVMetalBufferCacheGetTypeID::once != -1)
  {
    CVMetalBufferCacheGetTypeID_cold_1();
  }

  v3 = CVObject::alloc(kCVMetalBufferCacheID, this, 0x18, 0x30uLL);
  v4 = v3;
  if (v3)
  {
    CVBufferPool::CVBufferPool(v3[2], v3);
    *v5 = &unk_1F1087AD8;
    v5[4] = 0;
  }

  return v4;
}

void CVMetalBufferCache::CVMetalBufferCache(CVMetalBufferCache *this, const void *a2)
{
  CVBufferPool::CVBufferPool(this, a2);
  *v2 = &unk_1F1087AD8;
  v2[4] = 0;
}

uint64_t CVMetalBufferCache::finalize(CVMetalBufferCache *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRetain(v2);
    *(this + 4) = 0;
  }

  return CVBufferPool::finalize(this);
}

CFTypeRef *CVMetalBufferCache::initWithDevice(CFTypeRef *this, void *a2, const __CFDictionary *a3)
{
  v5 = this;
  if (!CVBufferPool::init(this))
  {
    return 0;
  }

  Value = CFRetain(a2);
  v5[4] = Value;
  valuePtr = 1.0;
  v9 = 1000000000.0;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"MaximumMetalBufferAge");
    if (Value)
    {
      v10 = Value;
      v11 = CFGetTypeID(Value);
      Value = CFNumberGetTypeID();
      if (v11 == Value)
      {
        Value = CFNumberGetValue(v10, kCFNumberDoubleType, &valuePtr);
        HIDWORD(v8) = 1104006501;
        v7 = (valuePtr * 1000000000.0);
        v9 = v7;
      }
    }
  }

  if ((CVHostTimeBase::sIsInited & 1) == 0)
  {
    *&v7 = CVHostTimeBase::Initialize(Value);
  }

  LODWORD(v7) = CVHostTimeBase::sToNanosNumerator;
  LODWORD(v8) = CVHostTimeBase::sToNanosDenominator;
  v5[5] = (v9 / v7 * v8);
  return v5;
}

uint64_t CVMetalBufferCache::flushBuffers(uint64_t this, char a2)
{
  v2 = this;
  if ((a2 & 1) != 0 || *(this + 40))
  {
    v3 = CVGetCurrentHostTime();
    pthread_mutex_lock(CVLockingBunchPair::_bufferPoolMutex);
    v4 = *(*(v2 + 16) + 224);
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i < v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (((*(*ValueAtIndex[2] + 120))(ValueAtIndex[2]) & 1) != 0 || *(v2 + 40) + ValueAtIndex[2][13] < v3)
        {
          CFArrayRemoveValueAtIndex(v4, i--);
          --v6;
        }
      }
    }

    v9 = CVLockingBunchPair::_bufferPoolMutex;

    return pthread_mutex_unlock(v9);
  }

  return this;
}

CVBuffer **CVMetalBufferCache::createBufferFromImage(CVBufferBacking **this, const __CFAllocator *a2, CVImageBuffer *a3, int *a4)
{
  v8 = (*(*a3 + 160))(a3);
  if (!v8)
  {
    v15 = 0;
    v17 = -6661;
    goto LABEL_12;
  }

  v10 = v8;
  if (!CVMetalBufferBacking::isBufferBackingSupported(v8, this[4], v9))
  {
    v15 = 0;
    v17 = -6684;
    goto LABEL_12;
  }

  v11 = (*(*this + 15))(this, a2, a3, v10, a4);
  if (v11)
  {
    v13 = v11;
    v14 = CVMetalBuffer::alloc(a2, v12);
    v15 = v14;
    if (v14)
    {
      if ((*(*v14[2] + 160))(v14[2], v13))
      {
        (*(*v13 + 40))(v13);
        v16 = (*(*a3 + 24))(a3);
        CVBufferPropagateAttachments(v16, v15);
        v17 = 0;
LABEL_12:
        *a4 = v17;
        return v15;
      }

      (*(*v15[2] + 40))(v15[2]);
      v15 = 0;
    }

    v17 = -6662;
    goto LABEL_12;
  }

  return 0;
}

void *CVMetalBufferCache::createBufferBackingFromImageBacking(CVMetalBufferCache *this, const __CFAllocator *a2, CVImageBuffer *a3, CVImageBacking *a4, int *a5)
{
  result = (*(*a4 + 152))(a4, a2, a3);
  if (!result)
  {
    *a5 = -6661;
    return result;
  }

  v10 = result;
  pthread_mutex_lock(CVLockingBunchPair::_bufferPoolMutex);
  v11 = *(*(this + 2) + 224);
  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
LABEL_6:
    v16 = *(*(this + 2) + 232);
    v17 = CFArrayGetCount(v16);
    if (v17 < 1)
    {
LABEL_10:
      v21 = CVMetalBufferBacking::alloc(a2, v18);
      if (!v21)
      {
        *a5 = -6662;
        pthread_mutex_unlock(CVLockingBunchPair::_bufferPoolMutex);
        return 0;
      }

      ValueAtIndex = v21;
      if ((*(*v21[2] + 176))(v21[2], a4, *(this + 4)))
      {
        (*(*ValueAtIndex[2] + 96))(ValueAtIndex[2], *(this + 2));
      }

      else
      {
        *a5 = -6662;
      }
    }

    else
    {
      v19 = v17;
      v20 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v20);
        if ((*(*ValueAtIndex[2] + 200))(ValueAtIndex[2]) == v10)
        {
          break;
        }

        if (v19 == ++v20)
        {
          goto LABEL_10;
        }
      }

      (*(*ValueAtIndex[2] + 32))(ValueAtIndex[2]);
    }
  }

  else
  {
    v13 = Count;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
      if ((*(*ValueAtIndex[2] + 200))(ValueAtIndex[2]) == v10)
      {
        break;
      }

      if (v13 == ++v14)
      {
        goto LABEL_6;
      }
    }

    (*(*ValueAtIndex[2] + 32))(ValueAtIndex[2]);
    CFArrayRemoveValueAtIndex(v11, v14);
  }

  pthread_mutex_unlock(CVLockingBunchPair::_bufferPoolMutex);
  return ValueAtIndex[2];
}

CFStringRef CVMetalBufferCache::copyDebugDescription(CVMetalBufferCache *this)
{
  v2 = (*(*this + 24))(this);
  v3 = CFGetTypeID(v2);
  v4 = CFCopyTypeIDDescription(v3);
  v5 = (*(*this + 24))(this);
  v6 = *(this + 5);
  v7 = *(this + 2);
  v8 = *(v7 + 232);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    v7 = *(this + 2);
  }

  else
  {
    Count = -1;
  }

  v10 = *(v7 + 224);
  if (v10)
  {
    v11 = CFArrayGetCount(v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = CFStringCreateWithFormat(0, 0, @"<%@Ref %p maxAge=%llu inUse=%ld free=%ld>", v4, v5, v6, Count, v11);
  CFRelease(v4);
  return v12;
}

CFStringRef classCopyFormatDescription_CVMetalBufferCache(void *a1, const __CFDictionary *a2)
{
  v4 = a1[2];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<CVMetalBufferCacheRef %p obj=%p refcnt=%ld>", a1, v4, v5);
}

const void *CVBuffer::getAttachment(CVBuffer *this, const __CFString *a2, CVAttachmentMode *a3)
{
  pthread_mutex_lock((this + 16));
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    Value = CFDictionaryGetValue(*(this + v6 + 10), a2);
    if (Value)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (a3)
  {
    *a3 = v6;
  }

LABEL_7:
  pthread_mutex_unlock((this + 16));
  return Value;
}

const void *CVBuffer::copyAttachment(CVBuffer *this, const __CFString *a2, CVAttachmentMode *a3)
{
  pthread_mutex_lock((this + 16));
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    Value = CFDictionaryGetValue(*(this + v6 + 10), a2);
    v10 = Value;
    if (Value)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (a3)
  {
    *a3 = v6;
  }

  CFRetain(Value);
LABEL_8:
  pthread_mutex_unlock((this + 16));
  return v10;
}

BOOL CVBuffer::hasAttachment(CVBuffer *this, const __CFString *a2)
{
  pthread_mutex_lock((this + 16));
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    Value = CFDictionaryGetValue(*(this + v5 + 10), a2);
    if (Value)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while ((v6 & 1) == 0);
  v8 = Value != 0;
  pthread_mutex_unlock((this + 16));
  return v8;
}

uint64_t CVBuffer::setAttachment(CVBuffer *this, const __CFString *a2, const void *a3, unsigned int a4)
{
  if (a4 > 1)
  {
    return 4294960635;
  }

  result = 4294960635;
  if (a2 && a3)
  {
    pthread_mutex_lock((this + 16));
    Value = CFDictionaryGetValue(*(this + 10), a2);
    v10 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFDictionaryRemoveValue(*(this + 10), a2);
    v11 = CFDictionaryGetValue(*(this + 11), a2);
    v12 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    CFDictionaryRemoveValue(*(this + 11), a2);
    CFDictionarySetValue(*(this + a4 + 10), a2, a3);
    if (v10)
    {
      CFRelease(v10);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    pthread_mutex_unlock((this + 16));
    return 0;
  }

  return result;
}

uint64_t CVBuffer::removeAttachment(CVBuffer *this, const __CFString *a2)
{
  pthread_mutex_lock((this + 16));
  CFDictionaryRemoveValue(*(this + 10), a2);
  CFDictionaryRemoveValue(*(this + 11), a2);

  return pthread_mutex_unlock((this + 16));
}

uint64_t CVBuffer::removeAllAttachments(CVBuffer *this)
{
  pthread_mutex_lock((this + 16));
  CFDictionaryRemoveAllValues(*(this + 10));
  CFDictionaryRemoveAllValues(*(this + 11));

  return pthread_mutex_unlock((this + 16));
}

uint64_t CVBuffer::getAttachments(CVBuffer *this, unsigned int a2)
{
  if (a2 <= 1)
  {
    return *(this + a2 + 10);
  }

  else
  {
    return 0;
  }
}

const void *CVBuffer::setDefaultAttachments(const void *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v3 = this;
    Value = CFDictionaryGetValue(theDict, @"PropagatedAttachments");
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFDictionaryGetTypeID())
      {
        (*(*v3 + 136))(v3, v5, 1);
      }
    }

    this = CFDictionaryGetValue(theDict, @"NonPropagatedAttachments");
    if (this)
    {
      v7 = this;
      v8 = CFGetTypeID(this);
      this = CFDictionaryGetTypeID();
      if (v8 == this)
      {
        v9 = *(*v3 + 136);

        return v9(v3, v7, 0);
      }
    }
  }

  return this;
}

uint64_t CVImageBuffer::getEncodedSize(CVImageBuffer *this)
{
  v1 = *(*(*(*this + 160))(this) + 176);

  return v1();
}

const void *CVImageBuffer::getColorSpace(CVImageBuffer *this)
{
  v1 = (*(*this + 96))(this, @"CGColorSpace", 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 != CGColorSpaceGetTypeID())
  {
    return 0;
  }

  return v2;
}

uint64_t CVImageBuffer::setDisplayDimensions(CVImageBuffer *this, unint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a3;
  valuePtr = a2;
  v4 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  cf = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
  keys[0] = @"Width";
  keys[1] = @"Height";
  v5 = CFDictionaryCreate(v4, keys, &values, 2, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v6 = (*(*this + 104))(this, @"CVDisplayDimensions", v5, 1);
  CFRelease(v5);
  CFRelease(values);
  CFRelease(cf);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

double CVImageBuffer::getDisplaySize(CVImageBuffer *this)
{
  v2 = (*(*this + 96))(this, @"CVDisplayDimensions", 0);
  if (v2 && (v3 = v2, v4 = CFGetTypeID(v2), v4 == CFDictionaryGetTypeID()))
  {
    v12 = 0.0;
    v13 = 0.0;
    if (cvGetDoubleFromDictionary(v3, @"Width", &v13))
    {
      v5 = 0.0;
      if (cvGetDoubleFromDictionary(v3, @"Height", &v12))
      {
        return v13;
      }
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    v5 = (*(*this + 176))(this);
    if ((*(*this + 200))(this))
    {
      (*(*this + 192))(this);
      v5 = v7;
    }

    v8 = (*(*this + 96))(this, @"CVPixelAspectRatio", 0);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFDictionaryGetTypeID())
      {
        v12 = 1.0;
        v13 = 1.0;
        if (cvGetDoubleFromDictionary(v9, @"VerticalSpacing", &v13))
        {
          if (cvGetDoubleFromDictionary(v9, @"HorizontalSpacing", &v12) && v13 > 0.0 && v12 > 0.0 && v12 != v13)
          {
            return v5 * (v12 / v13);
          }
        }
      }
    }
  }

  return v5;
}

uint64_t CVImageBuffer::setCleanAperture(CVImageBuffer *this, double a2, double a3, double a4, double a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = a3;
  valuePtr = a2;
  v11 = a5;
  v12 = a4;
  v6 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  v17 = CFNumberCreate(v6, kCFNumberDoubleType, &v13);
  v18 = CFNumberCreate(v6, kCFNumberDoubleType, &v12);
  v19 = CFNumberCreate(v6, kCFNumberDoubleType, &v11);
  keys[0] = @"Width";
  keys[1] = @"Height";
  keys[2] = @"HorizontalOffset";
  keys[3] = @"VerticalOffset";
  v7 = CFDictionaryCreate(v6, keys, &values, 4, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v8 = (*(*this + 104))(this, @"CVCleanAperture", v7, 1);
  CFRelease(v7);
  CFRelease(values);
  CFRelease(v17);
  CFRelease(v18);
  CFRelease(v19);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL CVImageBuffer::hasCleanRect(CVImageBuffer *this)
{
  v1 = (*(*this + 96))(this, @"CVCleanAperture", 0);
  result = 0;
  if (v1)
  {
    v2 = CFGetTypeID(v1);
    if (v2 == CFDictionaryGetTypeID())
    {
      return 1;
    }
  }

  return result;
}

const __CFDictionary *CVImageBuffer::getCleanRect(CVImageBuffer *this)
{
  v2 = (*(*this + 160))(this);
  (*(*v2 + 176))(v2);
  v3 = (*(*this + 96))(this, @"CVCleanAperture", 0);
  if (!v3 || (v4 = v3, v5 = CFGetTypeID(v3), v5 != CFDictionaryGetTypeID()) || (v11 = 0.0, v12 = 0.0, v9 = 0, v10 = 0.0, !cvGetDoubleFromDictionary(v4, @"Width", &v12)) || !cvGetDoubleFromDictionary(v4, @"Height", &v11) || !cvGetDoubleFromDictionary(v4, @"HorizontalOffset", &v10) || (result = cvGetDoubleFromDictionary(v4, @"VerticalOffset", &v9), !result))
  {
    result = (*(*this + 96))(this, @"CleanAperture", 0);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {
        v11 = 0.0;
        v12 = 0.0;
        v9 = 0;
        v10 = 0.0;
        result = cvGetDoubleFromDictionary(v7, @"Width", &v12);
        if (result)
        {
          result = cvGetDoubleFromDictionary(v7, @"Height", &v11);
          if (result)
          {
            result = cvGetDoubleFromDictionary(v7, @"OffsetX", &v10);
            if (result)
            {
              return cvGetDoubleFromDictionary(v7, @"OffsetY", &v9);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CVImageBuffer::setPixelAspectRatio(CVImageBuffer *this, unint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a3;
  valuePtr = a2;
  v4 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  cf = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
  keys[0] = @"HorizontalSpacing";
  keys[1] = @"VerticalSpacing";
  v5 = CFDictionaryCreate(v4, keys, &values, 2, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v6 = (*(*this + 104))(this, @"CVPixelAspectRatio", v5, 1);
  CFRelease(v5);
  CFRelease(values);
  CFRelease(cf);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CVImageBuffer::setFieldCount(CVImageBuffer *this, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v4 = (*(*this + 104))(this, @"CVFieldCount", v3, 1);
  CFRelease(v3);
  return v4;
}

CVBufferBacking **CVDataBufferBacking::alloc(CVDataBufferBacking *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVDataBufferBacking");
  }

  TypeID = CVObjectGetTypeID();
  v4 = CVObject::alloc(TypeID, this, 0x18, 0xC0uLL);
  v5 = v4;
  if (v4)
  {
    CVBufferBacking::CVBufferBacking(v4[2], v4);
    *v6 = &unk_1F1087D68;
    *(v6 + 144) = 0;
    *(v6 + 160) = 0;
    *(v6 + 168) = 0;
  }

  return v5;
}

void CVDataBufferBacking::CVDataBufferBacking(CVDataBufferBacking *this, const void *a2)
{
  CVBufferBacking::CVBufferBacking(this, a2);
  *v2 = &unk_1F1087D68;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
}

uint64_t CVDataBufferBacking::finalize(CVDataBufferBacking *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 17) = 0;
  v3 = *(this + 22);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 22) = 0;
  *(this + 46) = 1;
  v4 = *(this + 20);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 20) = 0;

  return CVBufferBacking::finalize(this);
}

CVBufferBacking *CVDataBufferBacking::retainUsage(CVDataBufferBacking *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    IOSurfaceIncrementUseCount(v2);
  }

  return CVBufferBacking::retainUsage(this);
}

void CVDataBufferBacking::releaseUsage(CVDataBufferBacking *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    IOSurfaceDecrementUseCount(v2);
  }

  CVBufferBacking::releaseUsage(this);
}

uint64_t CVDataBufferBacking::okToReuse(CVDataBufferBacking *this)
{
  v2 = *(this + 20);
  if (v2 && IOSurfaceIsInUse(v2))
  {
    return 0;
  }

  return CVBufferBacking::okToReuse(this);
}

uint64_t CVDataBufferBacking::resetAgeForRemoteUsage(CVDataBufferBacking *this)
{
  result = *(this + 20);
  if (result)
  {
    if (*(this + 113))
    {
LABEL_5:
      *(this + 13) = -1;
      return result;
    }

    result = IOSurfaceIsInUse(result);
    if (result)
    {
      *(this + 112) = 1;
      goto LABEL_5;
    }

    if (*(this + 112))
    {
      result = CVGetCurrentHostTime();
      *(this + 13) = result;
      *(this + 112) = 0;
    }
  }

  return result;
}

CFTypeRef *CVDataBufferBacking::initWithSize(CFTypeRef *this, int a2, const void *a3, const __CFDictionary *a4, const __CFDictionary *a5, __IOSurface *a6, int *a7)
{
  v13 = this;
  v14 = CFGetAllocator(this[1]);
  *a7 = -6660;
  if (!CVBufferBacking::init(v13))
  {
    v13 = 0;
    *a7 = -6662;
    return v13;
  }

  if (!a4)
  {
    v15 = -6660;
LABEL_23:
    *a7 = v15;
LABEL_24:
    (*(*v13 + 5))(v13);
    return 0;
  }

  v13[18] = a3;
  *(v13 + 39) = a2;
  if (a6)
  {
    *(v13 + 152) = 1;
    v13[20] = a6;
    CFRetain(a6);
    *a7 = 0;
    return v13;
  }

  v13[17] = CFDictionaryCreateCopy(v14, a4);
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"DataBufferPoolName");
    if (Value)
    {
      CVBufferBacking::setPoolName(v13, Value);
    }
  }

  else
  {
    Value = 0;
  }

  v17 = CFDictionaryGetValue(a4, @"IOSurfaceProperties");
  if (!v17 || (v18 = v17, v19 = CFGetTypeID(v17), v19 != CFDictionaryGetTypeID()))
  {
    v15 = -6662;
    goto LABEL_23;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v18);
  v21 = *MEMORY[0x1E695E4D0];
  if (v21 != CFDictionaryGetValue(a4, @"IOSurfacePurgeable"))
  {
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696CFA0], v21);
  }

  CVDictionarySetSInt32Value(MutableCopy, *MEMORY[0x1E696D130], 0);
  CVDictionarySetSInt32Value(MutableCopy, *MEMORY[0x1E696CF58], 0);
  CVDictionarySetSInt32Value(MutableCopy, *MEMORY[0x1E696CE58], 0);
  CVDictionarySetSInt32Value(MutableCopy, *MEMORY[0x1E696CFA8], 0);
  CVDictionarySetSInt64Value(MutableCopy, *MEMORY[0x1E696CE30], v13[18]);
  CVDictionarySetSInt32Value(MutableCopy, *MEMORY[0x1E696CE50], 1);
  CVDictionarySetSInt32Value(MutableCopy, *MEMORY[0x1E696CF10], 1);
  CVDictionarySetSInt32Value(MutableCopy, *MEMORY[0x1E696CF08], 1);
  CVDictionarySetSInt32Value(MutableCopy, *MEMORY[0x1E696CFC0], a2);
  v22 = *MEMORY[0x1E696CE60];
  v23 = CFDictionaryGetValue(v18, *MEMORY[0x1E696CE60]);
  if (v23)
  {
    CFDictionarySetValue(MutableCopy, v22, v23);
  }

  if (Value)
  {
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696CF98], Value);
  }

  v24 = IOSurfaceCreate(MutableCopy);
  v13[20] = v24;
  if (v24)
  {
    if (v21 == CFDictionaryGetValue(a4, @"IOSurfaceWiringAssertion"))
    {
      v25 = 0;
      *(v13 + 46) |= 2u;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = -6662;
  }

  *a7 = v25;
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
    v25 = *a7;
  }

  if (v25)
  {
    goto LABEL_24;
  }

  return v13;
}

CVBuffer **CVDataBufferBacking::createCVBuffer(CVDataBufferBacking *this, const __CFAllocator *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CVDataBuffer::alloc(a2, a2);
  if (result)
  {
    v4 = result;
    if ((*(*result[2] + 160))(result[2], this))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CVPixelBufferRef CVPixelBufferRetain(CVPixelBufferRef texture)
{
  if (texture)
  {
    CFRetain(texture);
  }

  return texture;
}

void CVPixelBufferRelease(CVPixelBufferRef texture)
{
  if (texture)
  {
    CFRelease(texture);
  }
}

void CVPixelBuffer::CVPixelBuffer(CVPixelBuffer *this, const void *a2)
{
  CVImageBuffer::CVImageBuffer(this, a2);
  *v3 = &unk_1F1087E68;
  CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(0);
  *(this + 104) = 1;
  *(this + 108) = 0;
  *(this + 15) = 0;
  *(this + 12) = 0;
}

void CVPixelBuffer::pushAttachmentsToIOSurface(CVPixelBuffer *this)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v2 = (*(**(this + 15) + 152))(*(this + 15));
  if (v2)
  {
    v3 = v2;
    v4 = (*(*this + 128))(this, 1);
    v5 = CVGetNumberOfEntriesInCVBufferAttachmentKeyMappingTable();
    if (v5 >= 1)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      Mutable = 0;
      v10 = MEMORY[0x1E695E9D8];
      v11 = MEMORY[0x1E695E9E8];
      do
      {
        v18 = 0;
        v12 = CVGetCVBufferAttachmentKeyAtIndexInMappingTable(v8);
        Value = CFDictionaryGetValue(v4, v12);
        if (Value)
        {
          v14 = Value;
          v15 = CVGetCVBufferAttachmentKeyAtIndexInMappingTable(v8);
          v16 = convertAttachmentToIOSurfaceStruct(v15, v14, v19, &v18);
          v7 |= v18;
          if (!v16)
          {
            if (!Mutable)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, v10, v11);
            }

            v17 = CVGetCVBufferAttachmentKeyAtIndexInMappingTable(v8);
            CVPixelBuffer::addIOSurfaceAttachmentToDictionary(this, Mutable, v17, v14);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      if (v7)
      {
        IOSurfaceSetBulkAttachments2();
      }

      if (Mutable)
      {
        IOSurfaceSetValues(v3, Mutable);
        CFRelease(Mutable);
      }
    }
  }
}

void CVPixelBuffer::pullAttachmentsFromIOSurface(CVPixelBuffer *this, const __CFDictionary *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(**(this + 15) + 152))(*(this + 15)))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    context[1] = 132;
    cf = 0;
    context[0] = 0;
    if (IOSurfaceGetBulkAttachments())
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "IOSurfaceGetBulkAttachments Error: mismatch in struct size in CoreVideo vs IOSurface.";
        _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }
    }

    else
    {
      createAttachmentsDictionaryFromIOSurfaceStruct(v17, &cf);
      if (cf)
      {
        CVBuffer::setAttachments(this, cf, 1u);
        CFRelease(cf);
      }
    }

    if (a2)
    {
      CFDictionaryApplyFunction(a2, addMissingValuesToDictionary, context);
      v4 = context[0];
      if (context[0])
      {
        v5 = CVGetNumberOfEntriesInCVBufferAttachmentKeyMappingTable();
        if (v5 >= 1)
        {
          v6 = v5;
          v7 = 0;
          v8 = *MEMORY[0x1E696CEE0];
          do
          {
            v9 = CVGetIOSurfacePropertyKeyAtIndexInMappingTable(v7);
            Value = CFDictionaryGetValue(v4, v9);
            if (Value)
            {
              v11 = Value;
              if (v8 != CVGetIOSurfacePropertyKeyAtIndexInMappingTable(v7))
              {
                v12 = 0;
LABEL_15:
                v13 = CVGetCVBufferAttachmentKeyAtIndexInMappingTable(v7);
                CVBuffer::setAttachment(this, v13, v11, 1u);
                if (v12)
                {
                  CFRelease(v12);
                }

                goto LABEL_17;
              }

              v11 = CGColorSpaceCreateWithPropertyList(v11);
              v12 = v11;
              if (v11)
              {
                goto LABEL_15;
              }
            }

LABEL_17:
            ++v7;
          }

          while (v6 != v7);
        }

        if (context[0])
        {
          CFRelease(context[0]);
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void addMissingValuesToDictionary(const void *a1, const __CFString *a2, __CFDictionary **a3)
{
  v9 = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (!convertAttachmentToIOSurfaceStruct(a1, a2, v7, &v9))
  {
    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a3 = Mutable;
    }

    CFDictionarySetValue(Mutable, a1, a2);
  }
}

CFStringRef CVPixelBuffer::copyDebugDescription(CVPixelBuffer *this)
{
  v2 = (*(*this + 24))(this);
  v3 = CFGetTypeID(v2);
  v4 = CFCopyTypeIDDescription(v3);
  v5 = (*(**(this + 15) + 192))(*(this + 15));
  *__str = 0;
  v6 = _os_feature_enabled_impl();
  if (v5 > 0x28)
  {
    *__str = bswap32(v5);
  }

  else
  {
    snprintf(__str, 4uLL, "%i", v5);
  }

  PoolName = CVBufferBacking::getPoolName(*(this + 15));
  v8 = (*(**(this + 15) + 152))(*(this + 15));
  v9 = v8;
  if (v8)
  {
    ID = IOSurfaceGetID(v8);
    if (v6)
    {
LABEL_6:
      v11 = (*(*this + 72))(this, 1);
      v12 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    ID = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
  v12 = *(this + 11);
LABEL_9:
  if ((*(**(this + 15) + 312))(*(this + 15)))
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v14 = (*(**(this + 15) + 344))(*(this + 15));
    if (Mutable)
    {
      v15 = v14;
      v43 = v12;
      v16 = (*(*this + 24))(this);
      v17 = (*(**(this + 15) + 272))(*(this + 15));
      v18 = (*(**(this + 15) + 280))();
      v19 = " poolName=";
      if (!PoolName)
      {
        v19 = "";
      }

      v20 = &stru_1F108B3E8;
      if (PoolName)
      {
        v20 = PoolName;
      }

      v21 = CFStringCreateWithFormat(0, 0, @"<%@ %p width=%ld height=%ld pixelFormat=%.4s iosurface=%p surfaceid=%d planes=%ld%s%@>", v4, v16, v17, v18, __str, v9, ID, v15, v19, v20);
      if (v21)
      {
        v22 = v21;
        CFArrayAppendValue(Mutable, v21);
        CFRelease(v22);
      }

      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          v24 = (*(**(this + 15) + 352))(*(this + 15), i);
          v25 = (*(**(this + 15) + 360))();
          v26 = (*(**(this + 15) + 376))();
          v27 = CFStringCreateWithFormat(0, 0, @"<Plane %ld width=%ld height=%ld bytesPerRow=%ld>", i, v24, v25, v26);
          if (v27)
          {
            v28 = v27;
            CFArrayAppendValue(Mutable, v27);
            CFRelease(v28);
          }
        }
      }

      v29 = (*(**(this + 15) + 256))(*(this + 15));
      v30 = CFStringCreateWithFormat(0, 0, @"<attributes=%@ propagatedAttachments=%@ nonPropagatedAttachments=%@>", v29, v43, *(this + 10));
      if (v30)
      {
        v31 = v30;
        CFArrayAppendValue(Mutable, v30);
        CFRelease(v31);
      }

      v32 = CFStringCreateByCombiningStrings(0, Mutable, @"\n");
      CFRelease(Mutable);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v44 = (*(*this + 24))(this);
    v42 = (*(**(this + 15) + 272))(*(this + 15));
    v33 = v11;
    v34 = (*(**(this + 15) + 280))();
    v35 = (*(**(this + 15) + 296))();
    v36 = v4;
    if (PoolName)
    {
      v37 = " poolName=";
    }

    else
    {
      v37 = "";
    }

    if (!PoolName)
    {
      PoolName = &stru_1F108B3E8;
    }

    v38 = (*(**(this + 15) + 256))();
    v41 = v37;
    v4 = v36;
    v40 = v34;
    v11 = v33;
    v32 = CFStringCreateWithFormat(0, 0, @"<%@ %p width=%ld height=%ld bytesPerRow=%ld pixelFormat=%.4s iosurface=%p%s%@ surfaceid=%d attributes=%@ propagatedAttachments=%@ nonPropagatedAttachments=%@>", v36, v44, v42, v40, v35, __str, v9, v41, PoolName, ID, v38, v12, *(this + 10));
  }

  CFRelease(v4);
  if (v11)
  {
    CFRelease(v11);
  }

  return v32;
}

uint64_t setBulkAttachmentsOnIOSurface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 != 32)
  {
    return IOSurfaceSetBulkAttachments2();
  }

  result = IOSurfaceGetYCbCrMatrix();
  if (!result)
  {
    if (*(a2 + 58))
    {
      return IOSurfaceSetBulkAttachments2();
    }
  }

  return result;
}

uint64_t CVPixelBuffer::getAttachments(CVPixelBuffer *this, unsigned int a2)
{
  if (_os_feature_enabled_impl())
  {
    context = 0;
    v4 = (*(**(this + 15) + 152))(*(this + 15));
    pthread_mutex_lock((this + 16));
    if (a2 == 1 && v4)
    {
      v5 = IOSurfaceCopyAllValues(v4);
      if (!v5)
      {
        Attachments = CVBuffer::getAttachments(this, 1u);
LABEL_19:
        pthread_mutex_unlock((this + 16));
        return Attachments;
      }

      v6 = v5;
      context = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      insertColorSpaceIntoDictionaryUsingID(v6, context);
      CFDictionaryApplyFunction(v6, translateIOSurfaceKeyToCoreVideoAttachmentKeyAndStoreIt, &context);
      CFDictionaryRemoveValue(context, @"ProResRAW_BayerPattern");
      CVBuffer::setAttachments(this, context, 1u);
      Attachments = CVBuffer::getAttachments(this, 1u);
      CFRelease(v6);
      Mutable = context;
      if (!context)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Mutable = 0;
      if (!a2 && v4)
      {
        v10 = IOSurfaceCopyValue(v4, *MEMORY[0x1E696D128]);
        if (v10 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()))
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          context = Mutable;
          CFDictionarySetValue(Mutable, @"ProResRAW_BayerPattern", v11);
          CVBuffer::setAttachments(this, Mutable, 0);
        }

        else
        {
          Mutable = 0;
        }
      }

      Attachments = CVBuffer::getAttachments(this, a2);
      if (!Mutable)
      {
        goto LABEL_19;
      }
    }

    CFRelease(Mutable);
    goto LABEL_19;
  }

  return CVBuffer::getAttachments(this, a2);
}

uint64_t CVPixelBuffer::incrementUseCountForCategory(CVPixelBuffer *this, unsigned int a2)
{
  v5 = 0;
  result = (*(**(this + 15) + 152))(*(this + 15));
  if (result)
  {
    CVIncrementAtomicCounter(this + a2 + 27, &v5);
    if (v5)
    {
      IOSurfaceIncrementUseCountForCategory();
      return 0;
    }

    else
    {
      return 4294960636;
    }
  }

  return result;
}

uint64_t CVPixelBuffer::decrementUseCountForCategory(CVPixelBuffer *this, unsigned int a2)
{
  v5 = 0;
  result = (*(**(this + 15) + 152))(*(this + 15));
  if (result)
  {
    CVDecrementAtomicCounter(this + a2 + 27, &v5);
    if (v5)
    {
      IOSurfaceDecrementUseCountForCategory();
      return 0;
    }

    else
    {
      return 4294960636;
    }
  }

  return result;
}

uint64_t CVPixelBuffer::dumpToQTES(CVPixelBuffer *this, char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = (*(**(this + 15) + 192))(*(this + 15));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  (*(**(this + 15) + 416))();
  v5 = (*(**(this + 15) + 312))();
  v6 = **(this + 15);
  if (!v5)
  {
    v8 = 1;
    *&v15[0] = (*(v6 + 320))();
    v14[0] = (*(**(this + 15) + 296))();
    v18[0] = (*(**(this + 15) + 272))();
    v17[0] = (*(**(this + 15) + 280))();
LABEL_8:
    v9 = dumpToQTESWithParams(a2, v4, v8, v18, v17, v14, v15, *(this + 11));
    goto LABEL_9;
  }

  v7 = (*(v6 + 344))();
  v8 = v7;
  if (v7 <= 5)
  {
    if (v7 >= 1)
    {
      v10 = 0;
      v11 = v7 & 0x7FFFFFFF;
      do
      {
        *(v15 + v10) = (*(**(this + 15) + 368))(*(this + 15), v10, 1);
        v14[v10] = (*(**(this + 15) + 376))();
        v18[v10] = (*(**(this + 15) + 352))();
        v17[v10++] = (*(**(this + 15) + 360))();
      }

      while (v11 != v10);
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:
  (*(**(this + 15) + 424))(*(this + 15), 1);
  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t CVPixelBuffer::drawColorBars(CVPixelBuffer *this)
{
  v2 = (*(**(this + 15) + 192))(*(this + 15));
  v3 = (*(**(this + 15) + 272))();
  v4 = (*(**(this + 15) + 280))();
  v5 = (*(*this + 96))(this, @"CVImageBufferYCbCrMatrix", 0);
  v6 = flt_19D17BEA0;
  if (v2 > 2016686639)
  {
    if (v2 > 2019963441)
    {
      if (v2 > 2033463855)
      {
        if (v2 == 2037741171)
        {
          goto LABEL_44;
        }

        if (v2 == 2037741158)
        {
          goto LABEL_47;
        }

        v7 = 2033463856;
        goto LABEL_43;
      }

      if (v2 != 2019963442 && v2 != 2019963956 && v2 != 2019964016)
      {
        goto LABEL_61;
      }

LABEL_28:
      if (v5 && CFEqual(v5, @"ITU_R_709_2"))
      {
        v6 = &unk_19D17C1A0;
      }

      else
      {
        v6 = &unk_19D17C140;
      }

      goto LABEL_61;
    }

    if (v2 <= 2016687155)
    {
      if (v2 != 2016686640 && v2 != 2016686642)
      {
        goto LABEL_61;
      }
    }

    else if (v2 != 2016687156 && v2 != 2016687216)
    {
      if (v2 != 2019963440)
      {
        goto LABEL_61;
      }

      goto LABEL_28;
    }

    if (v5 && CFEqual(v5, @"ITU_R_709_2"))
    {
      v6 = &unk_19D17C0E0;
    }

    else
    {
      v6 = &unk_19D17C080;
    }

    goto LABEL_61;
  }

  if (v2 <= 875704949)
  {
    if (v2 > 875704421)
    {
      if (v2 != 875704422)
      {
        if (v2 == 875704438)
        {
          goto LABEL_44;
        }

        if (v2 != 875704934)
        {
          goto LABEL_61;
        }
      }

LABEL_47:
      if (v5 && CFEqual(v5, @"ITU_R_709_2"))
      {
        v6 = &unk_19D17C020;
      }

      else
      {
        v6 = &unk_19D17BFC0;
      }

      goto LABEL_61;
    }

    if (v2 == 846624102)
    {
      goto LABEL_47;
    }

    v7 = 846624121;
LABEL_43:
    if (v2 != v7)
    {
      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v2 <= 1630697080)
  {
    if (v2 != 875704950)
    {
      if (v2 != 875836518)
      {
        v7 = 875836534;
        goto LABEL_43;
      }

      goto LABEL_47;
    }

LABEL_44:
    if (v5 && CFEqual(v5, @"ITU_R_709_2"))
    {
      v6 = "O@4Cp";
    }

    else
    {
      v6 = "P@4Cp";
    }

    goto LABEL_61;
  }

  if (v2 == 1630697081)
  {
    goto LABEL_44;
  }

  if (v2 == 1714696752 || v2 == 1983000880)
  {
    goto LABEL_47;
  }

LABEL_61:
  (*(**(this + 15) + 416))(*(this + 15), 0);
  v13 = 4294960633;
  if (v2 > 1630697080)
  {
    if (v2 > 2016687155)
    {
      if (v2 <= 2019963955)
      {
        v60 = v2 == 2016687156 || v2 == 2019963440;
        v61 = 2019963442;
LABEL_165:
        if (!v60 && v2 != v61)
        {
          goto LABEL_209;
        }

LABEL_170:
        v89 = (*(**(this + 15) + 376))(*(this + 15), 0);
        v90 = (*(**(this + 15) + 368))();
        if (v4)
        {
          for (i = 0; i != v4; ++i)
          {
            if (v3)
            {
              v92 = 0;
              for (j = 0; j != v3; ++j)
              {
                *(v90 + 2 * j) = (*&v6[12 * (v92 / v3)] + 0.5) << 6;
                v92 += 8;
              }
            }

            v90 += v89 & 0xFFFFFFFFFFFFFFFELL;
          }
        }

        v94 = (*(**(this + 15) + 352))(*(this + 15), 1);
        v95 = (*(**(this + 15) + 360))();
        v96 = (*(**(this + 15) + 376))();
        v97 = (*(**(this + 15) + 368))();
        if (v95)
        {
          v98 = 0;
          v99 = (v97 + 2);
          do
          {
            if (v94)
            {
              v100 = 0;
              v101 = v94;
              v102 = v99;
              do
              {
                v103 = 3 * (v100 / v94);
                v104 = (*&v6[4 * (v103 + 2)] + 0.5);
                *(v102 - 1) = (*&v6[4 * (v103 + 1)] + 0.5) << 6;
                *v102 = v104 << 6;
                v102 += 2;
                v100 += 8;
                --v101;
              }

              while (v101);
            }

            ++v98;
            v99 = (v99 + (v96 & 0xFFFFFFFFFFFFFFFELL));
          }

          while (v98 != v95);
        }

        goto LABEL_208;
      }

      if (v2 > 2037741157)
      {
        if (v2 == 2037741158 || v2 == 2037741171)
        {
          v106 = (*(**(this + 15) + 320))(*(this + 15), 1);
          v107 = (*(**(this + 15) + 296))();
          if (v4)
          {
            v108 = 0;
            v109 = (v106 + 3);
            do
            {
              if (v3)
              {
                v110 = 0;
                v111 = 0;
                v112 = v109;
                do
                {
                  v113 = 3 * (v110 / v3);
                  *(v112 - 3) = (*&v6[4 * v113] + 0.5);
                  *(v112 - 2) = (*&v6[4 * (v113 + 1)] + 0.5);
                  *(v112 - 1) = (*&v6[4 * v113] + 0.5);
                  *v112 = (*&v6[4 * (v113 + 2)] + 0.5);
                  v112 += 4;
                  v111 += 2;
                  v110 += 16;
                }

                while (v3 > v111);
              }

              ++v108;
              v109 += v107;
            }

            while (v108 != v4);
          }

          goto LABEL_208;
        }

        goto LABEL_209;
      }

      if (v2 == 2019963956)
      {
        goto LABEL_170;
      }

      v22 = 2033463856;
      goto LABEL_116;
    }

    if (v2 > 1983000879)
    {
      if (v2 <= 2016686639)
      {
        if (v2 != 1983000880)
        {
          if (v2 != 1999843442)
          {
            goto LABEL_209;
          }

          goto LABEL_195;
        }

        v154 = (*(**(this + 15) + 376))(*(this + 15), 0);
        v155 = (*(**(this + 15) + 320))();
        if (v4)
        {
          v156 = 0;
          v157 = vdupq_n_s64(0x408FF80000000000uLL);
          v158 = vdupq_n_s64(0x406FE00000000000uLL);
          __asm { FMOV            V6.2D, #0.5 }

          do
          {
            if (v3)
            {
              v162 = 0;
              v163 = 0;
              v164 = v155;
              do
              {
                v165 = 3 * (v162 / v3);
                v166 = *&v6[4 * (v165 + 1)];
                v167 = ((*&v6[4 * v165] * 1023.0 / 255.0 + 0.5) + 32) >> 6;
                v168 = vmulq_f64(vcvtq_f64_f32(vrev64_s32(v166)), v157);
                if (v167 >= 0x3FF)
                {
                  v167 = 1023;
                }

                v169 = vcvtq_s64_f64(vaddq_f64(vdivq_f64(v168, v158), _Q6));
                *v169.i8 = vmin_u32(vshr_n_u32(vadd_s32(vmovn_s64(v169), 0x2000000020), 6uLL), 0x300000003);
                v170 = vzip1q_s32(v169, vrev64q_s32(v169));
                v171 = vuzp2q_s32(v169, vzip1q_s32(v169, v169));
                LODWORD(v172) = v167 << 10;
                HIDWORD(v172) = v167;
                v171.i32[1] = v167 << 20;
                v171.i32[3] = v167 << 20;
                *v164++ = vorrq_s8(vorrq_s8(vshlq_u32(v170, xmmword_19D17BE90), vdupq_lane_s64(v172, 0)), v171);
                v163 += 6;
                v162 += 48;
              }

              while (v3 > v163);
            }

            v13 = 0;
            v155 += v154;
            ++v156;
          }

          while (v156 != v4);
          goto LABEL_209;
        }

LABEL_208:
        v13 = 0;
        goto LABEL_209;
      }

      v60 = v2 == 2016686640;
      v61 = 2016686642;
      goto LABEL_165;
    }

    if (v2 != 1630697081)
    {
      if (v2 == 1647534392)
      {
LABEL_195:
        v114 = (*(**(this + 15) + 376))(*(this + 15), 0);
        v115 = (*(**(this + 15) + 368))();
        if (v4)
        {
          v116 = 0;
          v117 = vdupq_n_s64(0x407FF00000000000uLL);
          v118 = vdupq_n_s64(0x406FE00000000000uLL);
          v119 = vdupq_n_s64(0x4078080000000000uLL);
          do
          {
            if (v3)
            {
              v120 = 0;
              for (k = 0; k != v3; ++k)
              {
                v122 = vshl_u32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(*&v6[12 * (v120 / v3)]), v117), v118), v119))), 0xA00000014);
                *(v115 + 4 * k) = vorr_s8(vdup_lane_s32(v122, 1), v122).u32[0] | (*&v6[12 * (v120 / v3) + 8] * 511.0 / 255.0 + 384.5);
                v120 += 8;
              }
            }

            v115 += v114;
            ++v116;
          }

          while (v116 != v4);
        }

        goto LABEL_208;
      }

      v22 = 1714696752;
LABEL_116:
      if (v2 == v22)
      {
        v41 = (*(**(this + 15) + 368))(*(this + 15), 0, 1);
        v42 = (*(**(this + 15) + 376))();
        if (v4)
        {
          for (m = 0; m != v4; ++m)
          {
            if (v3)
            {
              v44 = 0;
              for (n = 0; n != v3; ++n)
              {
                *(v41 + n) = (*&v6[12 * (v44 / v3)] + 0.5);
                v44 += 8;
              }
            }

            v41 += v42;
          }
        }

        v46 = (*(**(this + 15) + 352))(*(this + 15), 1);
        v47 = (*(**(this + 15) + 360))();
        v48 = (*(**(this + 15) + 376))();
        v49 = (*(**(this + 15) + 368))();
        if (v47)
        {
          for (ii = 0; ii != v47; ++ii)
          {
            if (v46)
            {
              v51 = 0;
              for (jj = 0; jj != v46; ++jj)
              {
                *(v49 + jj) = (*&v6[12 * (v51 / v46) + 4] + 0.5);
                v51 += 8;
              }
            }

            v49 += v48;
          }
        }

        v53 = (*(**(this + 15) + 352))(*(this + 15), 2);
        v54 = (*(**(this + 15) + 360))();
        v55 = (*(**(this + 15) + 376))();
        v56 = (*(**(this + 15) + 368))();
        if (v54)
        {
          for (kk = 0; kk != v54; ++kk)
          {
            if (v53)
            {
              v58 = 0;
              for (mm = 0; mm != v53; ++mm)
              {
                *(v56 + mm) = (*&v6[12 * (v58 / v53) + 8] + 0.5);
                v58 += 8;
              }
            }

            v56 += v55;
          }
        }

        goto LABEL_208;
      }

      goto LABEL_209;
    }

LABEL_140:
    v62 = **(this + 15);
    if (v2 == 1630697081)
    {
      v63 = (*(v62 + 368))();
      v64 = (*(**(this + 15) + 376))();
      if (!v4)
      {
        goto LABEL_208;
      }
    }

    else
    {
      v63 = (*(v62 + 320))();
      v64 = 0;
      if (!v4)
      {
        goto LABEL_208;
      }
    }

    v123 = 0;
    v124 = (v63 + 3);
    do
    {
      if (v3)
      {
        v125 = 0;
        v126 = 0;
        v127 = v124;
        do
        {
          v128 = 3 * (v125 / v3);
          *(v127 - 3) = (*&v6[4 * (v128 + 1)] + 0.5);
          *(v127 - 2) = (*&v6[4 * v128] + 0.5);
          *(v127 - 1) = (*&v6[4 * (v128 + 2)] + 0.5);
          *v127 = (*&v6[4 * v128] + 0.5);
          v127 += 4;
          v126 += 2;
          v125 += 16;
        }

        while (v3 > v126);
      }

      ++v123;
      v124 += v64;
    }

    while (v123 != v4);
    goto LABEL_208;
  }

  if (v2 > 875704933)
  {
    if (v2 > 875836533)
    {
      if (v2 > 1380410944)
      {
        if (v2 == 1380410945)
        {
          v146 = (*(**(this + 15) + 296))(*(this + 15));
          v147 = (*(**(this + 15) + 320))();
          if (!v4)
          {
            goto LABEL_208;
          }

          v148 = 0;
          v149 = v147 + 8;
          do
          {
            if (v3)
            {
              v150 = 0;
              v151 = v3;
              v152 = v149;
              do
              {
                v153 = 3 * (v150 / v3);
                *(v152 - 8) = *&v6[4 * v153] / 255.0;
                *(v152 - 4) = *&v6[4 * (v153 + 1)] / 255.0;
                *v152 = *&v6[4 * (v153 + 2)] / 255.0;
                *(v152 + 4) = 1065353216;
                v150 += 8;
                v152 += 16;
                --v151;
              }

              while (v151);
            }

            v13 = 0;
            ++v148;
            v149 += v146;
          }

          while (v148 != v4);
        }

        else
        {
          if (v2 != 1380411457)
          {
            goto LABEL_209;
          }

          v65 = (*(**(this + 15) + 296))(*(this + 15));
          v66 = (*(**(this + 15) + 320))();
          if (!v4)
          {
            goto LABEL_208;
          }

          for (nn = 0; nn != v4; ++nn)
          {
            if (v3)
            {
              v68 = 0;
              v69 = v3;
              do
              {
                v70 = 3 * (v68 / v3);
                v71 = *&v6[4 * v70] / 255.0;
                v72 = (LODWORD(v71) >> 23);
                v73 = 127 - v72;
                if ((127 - v72) <= -15)
                {
                  v73 = -15;
                }

                v74 = 15360 - (v73 << 10);
                if (v72 < 0x70)
                {
                  v74 = 0;
                }

                v75 = HIWORD(LODWORD(v71)) & 0x8000 | (LODWORD(v71) >> 13) & 0x3FF | v74;
                v76 = *&v6[4 * (v70 + 1)] / 255.0;
                v77 = (LODWORD(v76) >> 23);
                v78 = 127 - v77;
                if ((127 - v77) <= -15)
                {
                  v78 = -15;
                }

                _CF = v77 >= 0x70;
                v80 = HIWORD(LODWORD(v76)) & 0x8000 | (LODWORD(v76) >> 13) & 0x3FF;
                v81 = 15360 - (v78 << 10);
                v82 = *&v6[4 * (v70 + 2)] / 255.0;
                v83 = (LODWORD(v82) >> 23);
                if (!_CF)
                {
                  v81 = 0;
                }

                v84 = 127 - v83;
                if ((127 - v83) <= -15)
                {
                  v84 = -15;
                }

                v85 = HIWORD(LODWORD(v82)) & 0x8000 | (LODWORD(v82) >> 13) & 0x3FF;
                v86 = (v66 + v68);
                *(v66 + v68) = v75;
                v87 = 15360 - (v84 << 10);
                if (v83 < 0x70)
                {
                  v87 = 0;
                }

                v86[1] = v80 | v81;
                v86[2] = v85 | v87;
                v86[3] = 15360;
                v68 += 8;
                --v69;
              }

              while (v69);
            }

            v13 = 0;
            v66 += v65;
          }
        }

        goto LABEL_209;
      }

      if (v2 != 875836534)
      {
        if (v2 != 1111970369)
        {
          goto LABEL_209;
        }

        v14 = (*(**(this + 15) + 320))(*(this + 15), 1);
        v15 = (*(**(this + 15) + 296))();
        if (!v4)
        {
          goto LABEL_208;
        }

        v16 = 0;
        v17 = (v14 + 3);
        do
        {
          if (v3)
          {
            v18 = 0;
            v19 = v3;
            v20 = v17;
            do
            {
              v21 = 3 * (v18 / v3);
              *(v20 - 3) = (flt_19D17BEA0[v21 + 2] + 0.5);
              *(v20 - 2) = (flt_19D17BEA0[v21 + 1] + 0.5);
              *(v20 - 1) = (flt_19D17BEA0[v21] + 0.5);
              *v20 = -1;
              v20 += 4;
              v18 += 8;
              --v19;
            }

            while (v19);
          }

          v13 = 0;
          ++v16;
          v17 += v15;
        }

        while (v16 != v4);
        goto LABEL_209;
      }

LABEL_100:
      v26 = (*(**(this + 15) + 368))(*(this + 15), 0, 1);
      v27 = (*(**(this + 15) + 376))();
      if (v4)
      {
        for (i1 = 0; i1 != v4; ++i1)
        {
          if (v3)
          {
            v29 = 0;
            for (i2 = 0; i2 != v3; ++i2)
            {
              *(v26 + i2) = (*&v6[12 * (v29 / v3)] + 0.5);
              v29 += 8;
            }
          }

          v26 += v27;
        }
      }

      v31 = (*(**(this + 15) + 352))(*(this + 15), 1);
      v32 = (*(**(this + 15) + 360))();
      v33 = (*(**(this + 15) + 376))();
      v34 = (*(**(this + 15) + 368))();
      if (v32)
      {
        v35 = 0;
        v36 = (v34 + 1);
        do
        {
          if (v31)
          {
            v37 = 0;
            v38 = v31;
            v39 = v36;
            do
            {
              v40 = 3 * (v37 / v31);
              *(v39 - 1) = (*&v6[4 * (v40 + 1)] + 0.5);
              *v39 = (*&v6[4 * (v40 + 2)] + 0.5);
              v39 += 2;
              v37 += 8;
              --v38;
            }

            while (v38);
          }

          ++v35;
          v36 += v33;
        }

        while (v35 != v32);
      }

      goto LABEL_208;
    }

    v23 = v2 == 875704934 || v2 == 875704950;
    v24 = 875836518;
LABEL_95:
    if (!v23 && v2 != v24)
    {
      goto LABEL_209;
    }

    goto LABEL_100;
  }

  if (v2 > 846624120)
  {
    if (v2 == 846624121)
    {
      goto LABEL_140;
    }

    v23 = v2 == 875704422;
    v24 = 875704438;
    goto LABEL_95;
  }

  switch(v2)
  {
    case 24:
      v138 = (*(**(this + 15) + 320))(*(this + 15), 1);
      v139 = (*(**(this + 15) + 296))();
      if (!v4)
      {
        goto LABEL_208;
      }

      v140 = 0;
      v141 = (v138 + 2);
      do
      {
        if (v3)
        {
          v142 = 0;
          v143 = v3;
          v144 = v141;
          do
          {
            v145 = 3 * (v142 / v3);
            *(v144 - 2) = (flt_19D17BEA0[v145] + 0.5);
            *(v144 - 1) = (flt_19D17BEA0[v145 + 1] + 0.5);
            *v144 = (flt_19D17BEA0[v145 + 2] + 0.5);
            v144 += 3;
            v142 += 8;
            --v143;
          }

          while (v143);
        }

        v13 = 0;
        ++v140;
        v141 += v139;
      }

      while (v140 != v4);
      break;
    case 32:
      v130 = (*(**(this + 15) + 320))(*(this + 15), 1);
      v131 = (*(**(this + 15) + 296))();
      if (!v4)
      {
        goto LABEL_208;
      }

      v132 = 0;
      v133 = (v130 + 3);
      do
      {
        if (v3)
        {
          v134 = 0;
          v135 = v3;
          v136 = v133;
          do
          {
            *(v136 - 3) = -1;
            v137 = 3 * (v134 / v3);
            *(v136 - 2) = (flt_19D17BEA0[v137] + 0.5);
            *(v136 - 1) = (flt_19D17BEA0[v137 + 1] + 0.5);
            *v136 = (flt_19D17BEA0[v137 + 2] + 0.5);
            v136 += 4;
            v134 += 8;
            --v135;
          }

          while (v135);
        }

        v13 = 0;
        ++v132;
        v133 += v131;
      }

      while (v132 != v4);
      break;
    case 846624102:
      goto LABEL_140;
    default:
      break;
  }

LABEL_209:
  (*(**(this + 15) + 424))(*(this + 15), 0);
  return v13;
}

CFStringRef classCopyFormatDescription_CVPixelBuffer(void *a1, const __CFDictionary *a2)
{
  v4 = a1[2];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<CVPixelBufferRef %p obj=%p refcnt=%ld>", a1, v4, v5);
}

CVReturn CVPixelBufferCreateResolvedAttributesDictionary(CFAllocatorRef allocator, CFArrayRef attributes, CFDictionaryRef *resolvedDictionaryOut)
{
  v5 = allocator;
  v286 = *MEMORY[0x1E69E9840];
  *resolvedDictionaryOut = 0;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_390;
  }

  v7 = Mutable;
  Count = CFArrayGetCount(attributes);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(attributes, i);
      v11 = CFDictionaryGetValue(ValueAtIndex, @"PixelFormatType");
      if (v11 && restrictToPixelFormatTypeListIntersection(v5, v7, v11, @"PixelFormatType"))
      {
        v13 = "no common pixel format type";
        goto LABEL_61;
      }
    }
  }

  PixelFormatTypes = CVPixelFormatDescriptionGetPixelFormatTypes();
  if (restrictToPixelFormatTypeListIntersection(v5, v7, PixelFormatTypes, @"PixelFormatType"))
  {
    v13 = "no known common pixel format type";
    goto LABEL_61;
  }

  v267 = resolvedDictionaryOut;
  theDict = v7;
  theArray = attributes;
  if (Count < 1)
  {
    goto LABEL_67;
  }

  for (j = 0; j != Count; ++j)
  {
    v15 = CFArrayGetValueAtIndex(attributes, j);
    v16 = CFDictionaryGetValue(v15, @"MemoryAllocator");
    if (v16)
    {
      v17 = v16;
      v18 = CFDictionaryGetValue(v7, @"MemoryAllocator");
      if (v18)
      {
        if (!CFEqual(v17, v18))
        {
          v13 = "allocator mismatch";
          goto LABEL_61;
        }
      }

      else
      {
        CFDictionarySetValue(v7, @"MemoryAllocator", v17);
      }
    }
  }

  for (k = 0; k != Count; ++k)
  {
    v20 = CFArrayGetValueAtIndex(attributes, k);
    v21 = CFDictionaryGetValue(v20, @"CustomMemoryLayoutCallBacks");
    if (v21)
    {
      v22 = v21;
      v23 = CFDictionaryGetValue(v7, @"CustomMemoryLayoutCallBacks");
      if (v23)
      {
        v24 = v23;
        Length = CFDataGetLength(v22);
        if (Length != CFDataGetLength(v24))
        {
          v13 = "custom layout size mismatch";
LABEL_61:
          reportResolutionFailure(attributes, v13);
          goto LABEL_62;
        }

        BytePtr = CFDataGetBytePtr(v22);
        v27 = CFDataGetBytePtr(v24);
        v28 = CFDataGetLength(v22);
        if (!memcmp(BytePtr, v27, v28))
        {
          v13 = "custom layout mismatch";
          goto LABEL_61;
        }
      }

      else
      {
        CFDictionarySetValue(v7, @"CustomMemoryLayoutCallBacks", v22);
      }
    }
  }

  v29 = 0;
  value = 0;
  v271 = 0;
  key = *MEMORY[0x1E696CE60];
  v30 = *MEMORY[0x1E695E4D0];
  v268 = *MEMORY[0x1E695E480];
  do
  {
    v31 = CFArrayGetValueAtIndex(attributes, v29);
    v32 = CFDictionaryGetValue(v31, @"IOSurfaceProperties");
    v33 = CFDictionaryGetValue(v31, @"CacheMode");
    if (v33)
    {
      v34 = v33;
      CFRetain(v33);
    }

    else
    {
      if (!v32)
      {
        v34 = 0;
        if (v30 != CFDictionaryGetValue(v31, @"PreferRealTimeCacheModeIfEveryoneDoes"))
        {
          goto LABEL_38;
        }

LABEL_40:
        ++v271;
        if (!v34)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      }

      *&valuePtr[0] = CFDictionaryGetValue(v32, key);
      if (*&valuePtr[0])
      {
        v34 = CFArrayCreate(v5, valuePtr, 1, MEMORY[0x1E695E9C0]);
      }

      else
      {
        v34 = 0;
      }
    }

    if (v30 == CFDictionaryGetValue(v31, @"PreferRealTimeCacheModeIfEveryoneDoes"))
    {
      goto LABEL_40;
    }

    if (!v34 || CFArrayGetCount(v34) <= 0)
    {
LABEL_38:
      ++value;
      if (!v34)
      {
        goto LABEL_51;
      }

      goto LABEL_41;
    }

    v35 = CFArrayGetValueAtIndex(v34, 0);
    LODWORD(valuePtr[0]) = 0;
    CFNumberGetValue(v35, kCFNumberSInt32Type, valuePtr);
    v36 = value;
    if (LODWORD(valuePtr[0]) != 1792)
    {
      v36 = value + 1;
    }

    value = v36;
LABEL_41:
    v37 = CFDictionaryGetValue(v7, @"CacheMode");
    if (v37)
    {
      v38 = v37;
      v39 = CFArrayGetCount(v37);
      if (v39 >= 1)
      {
        v40 = v39 + 1;
        do
        {
          v41 = CFArrayGetCount(v34);
          v42 = CFArrayGetValueAtIndex(v38, v40 - 2);
          v287.location = 0;
          v287.length = v41;
          if (!CFArrayContainsValue(v34, v287, v42))
          {
            CFArrayRemoveValueAtIndex(v38, v40 - 2);
          }

          --v40;
        }

        while (v40 > 1);
      }

      v7 = theDict;
      attributes = theArray;
      if (!CFArrayGetCount(v38))
      {
        reportResolutionFailure(theArray, "no common cache mode");
        CFRelease(v34);
LABEL_62:
        v46 = v7;
LABEL_63:
        CFRelease(v46);
        v47 = -6660;
        goto LABEL_391;
      }
    }

    else
    {
      MutableCopy = CFArrayCreateMutableCopy(v268, 0, v34);
      CFDictionarySetValue(v7, @"CacheMode", MutableCopy);
      CFRelease(MutableCopy);
    }

    CFRelease(v34);
LABEL_51:
    if (v32)
    {
      v44 = CFDictionaryGetValue(v7, @"IOSurfaceProperties");
      if (v44)
      {
        v45 = v44;
        valuePtr[0] = v44;
        CFDictionaryApplyFunction(v32, mergeCFDictionariesUnlessTheyConflict, valuePtr);
        if (BYTE8(valuePtr[0]))
        {
          v13 = "unmergeable IOSurfaceProperties";
          goto LABEL_61;
        }
      }

      else
      {
        v45 = CFDictionaryCreateMutableCopy(0, 0, v32);
        CFDictionarySetValue(v7, @"IOSurfaceProperties", v45);
        CFRelease(v45);
      }

      CFDictionaryRemoveValue(v45, key);
    }

    ++v29;
  }

  while (v29 != Count);
  if (v271 >= 1 && !value)
  {
    LODWORD(valuePtr[0]) = 1792;
    v48 = CFNumberCreate(v268, kCFNumberSInt32Type, valuePtr);
    v49 = CFArrayCreateMutable(v268, 1, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v49, v48);
    CFDictionarySetValue(v7, @"CacheMode", v49);
    CFRelease(v49);
    CFRelease(v48);
    CFDictionarySetValue(v7, @"PreferRealTimeCacheModeIfEveryoneDoes", v30);
    goto LABEL_68;
  }

LABEL_67:
  CFDictionaryRemoveValue(v7, @"PreferRealTimeCacheModeIfEveryoneDoes");
LABEL_68:
  if (Count < 1)
  {
LABEL_299:
    v206 = CFDictionaryGetValue(v7, @"ExactHeight");
    allocatorb = v5;
    if (v206)
    {
      *&valuePtr[0] = 0;
      CFNumberGetValue(v206, kCFNumberLongType, valuePtr);
      if (Count >= 1)
      {
        v207 = 0;
        while (1)
        {
          v208 = CFArrayGetValueAtIndex(attributes, v207);
          v209 = CFDictionaryGetValue(v208, @"Height");
          if (v209)
          {
            v210 = v209;
            v211 = CFDictionaryGetValue(v208, @"ExtendedPixelsTop");
            v212 = CFDictionaryGetValue(v208, @"ExtendedPixelsBottom");
            v283 = 0;
            v284 = 0;
            v282 = 0;
            CFNumberGetValue(v210, kCFNumberLongType, &v284);
            if (v211)
            {
              CFNumberGetValue(v211, kCFNumberLongType, &v283);
              v284 += v283;
            }

            if (v212)
            {
              CFNumberGetValue(v212, kCFNumberLongType, &v282);
              v213 = v284 + v282;
              v284 += v282;
            }

            else
            {
              v213 = v284;
            }

            if (*&valuePtr[0] != v213)
            {
              break;
            }
          }

          v273 = v207;
          v214 = CFDictionaryGetValue(v7, @"PlaneAlignment");
          v215 = CFDictionaryGetValue(v208, @"Width");
          if (v214)
          {
            v216 = v215;
            if (v215)
            {
              v217 = CFDictionaryGetValue(v208, @"ExtendedPixelsLeft");
              v218 = CFDictionaryGetValue(v208, @"ExtendedPixelsRight");
              v283 = 0;
              v284 = 0;
              v281 = 16;
              v282 = 0;
              v280 = 0;
              CFNumberGetValue(v214, kCFNumberLongType, &v280);
              if (v280 >= 2)
              {
                CFNumberGetValue(v216, kCFNumberLongType, &v284);
                if (v217)
                {
                  CFNumberGetValue(v217, kCFNumberLongType, &v283);
                  v284 += v283;
                }

                if (v218)
                {
                  CFNumberGetValue(v218, kCFNumberLongType, &v282);
                  v284 += v282;
                }

                v219 = CFDictionaryGetValue(v7, @"BytesPerRowAlignment");
                if (v219)
                {
                  CFNumberGetValue(v219, kCFNumberLongType, &v281);
                }

                v220 = CFDictionaryGetValue(v7, @"PixelFormatType");
                v221 = CFArrayGetCount(v220);
                v222 = CFArrayCreateMutable(allocatorb, 0, MEMORY[0x1E695E9C0]);
                if (!v222)
                {
                  goto LABEL_393;
                }

                v223 = v222;
                if (v221 >= 1)
                {
                  for (m = 0; m != v221; ++m)
                  {
                    v279 = 0;
                    v278 = 0;
                    v225 = CFArrayGetValueAtIndex(v220, m);
                    CFNumberGetValue(v225, kCFNumberSInt32Type, &v279);
                    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(v279);
                    if (DescriptionWithPixelFormatType)
                    {
                      v227 = CFDictionaryGetValue(DescriptionWithPixelFormatType, @"Planes");
                      if (v227 && (v228 = v227, v229 = CFArrayGetCount(v227), v229 >= 2))
                      {
                        v230 = 0;
                        v231 = (v229 - 1);
                        while (1)
                        {
                          v232 = CFArrayGetValueAtIndex(v228, v230);
                          v233 = CFDictionaryGetValue(v232, @"BitsPerBlock");
                          CFNumberGetValue(v233, kCFNumberLongType, &v278);
                          v234 = (v278 * v284 + 8 * v281 - 1) / (8 * v281) * 8 * v281;
                          if (v234 < 0)
                          {
                            v234 |= 7uLL;
                          }

                          if ((v234 >> 3) * *&valuePtr[0] % v280)
                          {
                            break;
                          }

                          if (v231 == ++v230)
                          {
                            goto LABEL_329;
                          }
                        }
                      }

                      else
                      {
LABEL_329:
                        CFArrayAppendValue(v223, v225);
                      }
                    }
                  }
                }

                if (!CFArrayGetCount(v223))
                {
                  reportResolutionFailure(theArray, "exact height incompatible with other attributes");
                  v266 = v223;
                  goto LABEL_397;
                }

                v7 = theDict;
                CFDictionarySetValue(theDict, @"PixelFormatType", v223);
                CFRelease(v223);
                attributes = theArray;
                v5 = allocatorb;
              }
            }
          }

          v207 = v273 + 1;
          if ((v273 + 1) == Count)
          {
            goto LABEL_334;
          }
        }

LABEL_388:
        v263 = v7;
        goto LABEL_389;
      }
    }

LABEL_334:
    v235 = CFSetCreateMutable(v5, 0, MEMORY[0x1E695E530]);
    if (Count >= 1)
    {
      for (n = 0; n != Count; ++n)
      {
        v237 = CFArrayGetValueAtIndex(attributes, n);
        v238 = CFDictionaryGetValue(v237, @"QDCompatibility");
        if (v238 && CFBooleanGetValue(v238))
        {
          CFSetAddValue(v235, @"QDCompatibility");
        }

        v239 = CFDictionaryGetValue(v237, @"CGBitmapContextCompatibility");
        if (v239 && CFBooleanGetValue(v239))
        {
          CFSetAddValue(v235, @"CGBitmapContextCompatibility");
        }

        v240 = CFDictionaryGetValue(v237, @"CGImageCompatibility");
        if (v240 && CFBooleanGetValue(v240))
        {
          CFSetAddValue(v235, @"CGImageCompatibility");
        }

        v241 = CFDictionaryGetValue(v237, @"IOSurfaceCoreAnimationCompatibility");
        if (v241 && CFBooleanGetValue(v241))
        {
          CFSetAddValue(v235, @"IOSurfaceCoreAnimationCompatibility");
        }

        v242 = CFDictionaryGetValue(v237, @"IOSurfaceCoreAnimationCompatibilityHTPCOK");
        if (v242 && CFBooleanGetValue(v242))
        {
          CFSetAddValue(v235, @"IOSurfaceCoreAnimationCompatibilityHTPCOK");
        }

        v243 = CFDictionaryGetValue(v237, @"OpenGLESCompatibility");
        if (v243 && CFBooleanGetValue(v243))
        {
          CFSetAddValue(v235, @"OpenGLESCompatibility");
        }

        v244 = CFDictionaryGetValue(v237, @"IOSurfaceOpenGLESTextureCompatibility");
        if (v244 && CFBooleanGetValue(v244))
        {
          CFSetAddValue(v235, @"IOSurfaceOpenGLESTextureCompatibility");
        }

        v245 = CFDictionaryGetValue(v237, @"IOSurfaceOpenGLESFBOCompatibility");
        if (v245 && CFBooleanGetValue(v245))
        {
          CFSetAddValue(v235, @"IOSurfaceOpenGLESFBOCompatibility");
        }
      }
    }

    v246 = CFSetGetCount(v235);
    v7 = theDict;
    if (!v246)
    {
      goto LABEL_383;
    }

    v247 = v246;
    memset(valuePtr, 0, sizeof(valuePtr));
    CFSetGetValues(v235, valuePtr);
    v248 = CFDictionaryGetValue(theDict, @"PixelFormatType");
    v249 = CFArrayGetCount(v248);
    if (v247 >= 1)
    {
      v250 = *MEMORY[0x1E695E4D0];
      v251 = valuePtr;
      v252 = v247;
      do
      {
        v253 = *v251++;
        CFDictionarySetValue(theDict, v253, v250);
        --v252;
      }

      while (v252);
    }

    v254 = CFArrayCreateMutable(allocatorb, 0, MEMORY[0x1E695E9C0]);
    if (v254)
    {
      v274 = v254;
      if (v249 >= 1)
      {
        for (ii = 0; ii != v249; ++ii)
        {
          LODWORD(v284) = 0;
          v256 = CFArrayGetValueAtIndex(v248, ii);
          CFNumberGetValue(v256, kCFNumberSInt32Type, &v284);
          v257 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(v284);
          if (v257)
          {
            if (v247 >= 1)
            {
              v258 = v257;
              v259 = 0;
              v260 = 0;
LABEL_371:
              v261 = v260;
              do
              {
                v262 = CFDictionaryGetValue(v258, *(valuePtr + v261));
                if (!v262 || !CFBooleanGetValue(v262))
                {
                  v260 = v261 + 1;
                  v259 = 1;
                  if (v247 - 1 != v261)
                  {
                    goto LABEL_371;
                  }

                  goto LABEL_380;
                }

                ++v261;
              }

              while (v247 != v261);
              if (v259)
              {
                continue;
              }
            }

            CFArrayAppendValue(v274, v256);
          }

LABEL_380:
          ;
        }
      }

      if (CFArrayGetCount(v274))
      {
        v7 = theDict;
        CFDictionarySetValue(theDict, @"PixelFormatType", v274);
        CFRelease(v274);
LABEL_383:
        CFRelease(v235);
        v47 = 0;
        *v267 = v7;
        goto LABEL_391;
      }

      reportResolutionFailure(theArray, "no compatible pixel format");
      CFRelease(v235);
      v266 = v274;
LABEL_397:
      CFRelease(v266);
      v47 = -6660;
      v7 = theDict;
    }

    else
    {
      CFRelease(v235);
LABEL_393:
      v47 = -6662;
    }

    CFRelease(v7);
    goto LABEL_391;
  }

  v50 = 0;
  while (1)
  {
    v51 = CFArrayGetValueAtIndex(attributes, v50);
    v52 = CFDictionaryGetValue(v51, @"IOSurfaceWiringAssertion");
    if (v52)
    {
      if (CFBooleanGetValue(v52))
      {
        break;
      }
    }

    if (Count == ++v50)
    {
      goto LABEL_75;
    }
  }

  CFDictionarySetValue(v7, @"IOSurfaceWiringAssertion", *MEMORY[0x1E695E4D0]);
LABEL_75:
  v53 = 0;
  while (1)
  {
    v54 = CFArrayGetValueAtIndex(attributes, v53);
    v55 = CFDictionaryGetValue(v54, @"MetalCompatibility");
    if (v55)
    {
      if (CFBooleanGetValue(v55))
      {
        break;
      }
    }

    if (Count == ++v53)
    {
      goto LABEL_81;
    }
  }

  CFDictionarySetValue(v7, @"MetalCompatibility", *MEMORY[0x1E695E4D0]);
LABEL_81:
  for (jj = 0; jj != Count; ++jj)
  {
    v57 = CFArrayGetValueAtIndex(attributes, jj);
    v58 = CFDictionaryGetValue(v57, @"PropagatedAttachments");
    if (v58)
    {
      v59 = v58;
      v60 = CFDictionaryGetValue(v7, @"PropagatedAttachments");
      if (v60)
      {
        CFDictionaryApplyFunction(v59, mergeCFDictionaries, v60);
      }

      else
      {
        v61 = CFDictionaryCreateMutableCopy(0, 0, v59);
        CFDictionarySetValue(v7, @"PropagatedAttachments", v61);
        CFRelease(v61);
      }
    }

    v62 = CFDictionaryGetValue(v57, @"NonPropagatedAttachments");
    if (v62)
    {
      v63 = v62;
      v64 = CFDictionaryGetValue(v7, @"NonPropagatedAttachments");
      if (v64)
      {
        CFDictionaryApplyFunction(v63, mergeCFDictionaries, v64);
      }

      else
      {
        v65 = CFDictionaryCreateMutableCopy(0, 0, v63);
        CFDictionarySetValue(v7, @"NonPropagatedAttachments", v65);
        CFRelease(v65);
      }
    }
  }

  for (kk = 0; kk != Count; ++kk)
  {
    v67 = CFArrayGetValueAtIndex(attributes, kk);
    v68 = CFDictionaryGetValue(v67, @"Width");
    if (v68)
    {
      v69 = v68;
      v70 = CFDictionaryGetValue(v7, @"Width");
      if (v70)
      {
        if (!CFEqual(v69, v70))
        {
          v13 = "width mismatch";
          goto LABEL_61;
        }
      }

      else
      {
        CFDictionarySetValue(v7, @"Width", v69);
      }
    }
  }

  for (mm = 0; mm != Count; ++mm)
  {
    v72 = CFArrayGetValueAtIndex(attributes, mm);
    v73 = CFDictionaryGetValue(v72, @"Height");
    if (v73)
    {
      v74 = v73;
      v75 = CFDictionaryGetValue(v7, @"Height");
      if (v75)
      {
        if (!CFEqual(v74, v75))
        {
          v13 = "height mismatch";
          goto LABEL_61;
        }
      }

      else
      {
        CFDictionarySetValue(v7, @"Height", v74);
      }
    }
  }

  allocatora = v5;
  for (nn = 0; nn != Count; ++nn)
  {
    v77 = CFArrayGetValueAtIndex(attributes, nn);
    v78 = CFDictionaryGetValue(v77, @"ExactBytesPerRow");
    if (v78)
    {
      v79 = v78;
      v80 = CFDictionaryGetValue(v7, @"ExactBytesPerRow");
      if (v80)
      {
        if (!CFEqual(v79, v80))
        {
          v13 = "exact bytes per row mismatch";
          goto LABEL_61;
        }
      }

      else
      {
        v284 = 0;
        *&valuePtr[0] = 0;
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v79) && CFArrayGetCount(v79) == 2)
        {
          v82 = CFArrayGetValueAtIndex(v79, 0);
          v83 = CFArrayGetValueAtIndex(v79, 1);
          v84 = CFNumberGetTypeID();
          if (v84 == CFGetTypeID(v82))
          {
            v85 = CFNumberGetTypeID();
            if (v85 == CFGetTypeID(v83))
            {
              CFNumberGetValue(v82, kCFNumberLongType, valuePtr);
              CFNumberGetValue(v83, kCFNumberLongType, &v284);
            }
          }
        }

        v86 = CFDictionaryGetValue(v7, @"PixelFormatType");
        v87 = CFArrayGetCount(v86);
        v88 = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
        if (v87 >= 1)
        {
          for (i1 = 0; i1 != v87; ++i1)
          {
            LODWORD(v282) = 0;
            v90 = CFArrayGetValueAtIndex(v86, i1);
            CFNumberGetValue(v90, kCFNumberSInt32Type, &v282);
            v91 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(v282);
            if (v91)
            {
              v92 = CFDictionaryGetValue(v91, @"ExactRatioBetweenBytesPerRowOfPlanes");
              if (v92)
              {
                v93 = v92;
                v94 = CFNumberGetTypeID();
                v95 = v94 == CFGetTypeID(v93);
                attributes = theArray;
                if (v95)
                {
                  v283 = 0;
                  CFNumberGetValue(v93, kCFNumberLongType, &v283);
                  if (*&valuePtr[0])
                  {
                    if (v284 && v283 * *&valuePtr[0] != v284)
                    {
                      continue;
                    }
                  }
                }
              }
            }

            CFArrayAppendValue(v88, v90);
          }
        }

        if (!CFArrayGetCount(v88))
        {
          reportResolutionFailure(attributes, "exact rowbytes incompatible with exact rowbytes ratio.");
          CFRelease(v88);
          v46 = theDict;
          goto LABEL_63;
        }

        v7 = theDict;
        CFDictionarySetValue(theDict, @"PixelFormatType", v88);
        CFRelease(v88);
        CFDictionarySetValue(theDict, @"ExactBytesPerRow", v79);
      }
    }
  }

  v96 = 0;
  v97 = "bytes per row alignemnt vs exact bytes per row mismatch";
  v5 = allocatora;
  while (2)
  {
    v98 = CFArrayGetValueAtIndex(theArray, v96);
    v99 = CFDictionaryGetValue(v98, @"BytesPerRowAlignment");
    if (!v99)
    {
      goto LABEL_166;
    }

    v100 = v99;
    v101 = CFDictionaryGetValue(theDict, @"ExactBytesPerRow");
    if (!v101)
    {
      v104 = CFDictionaryGetValue(theDict, @"BytesPerRowAlignment");
      if (v104)
      {
        v105 = v104;
        v284 = 0;
        *&valuePtr[0] = 0;
        v283 = 0;
        CFNumberGetValue(v100, kCFNumberLongType, valuePtr);
        CFNumberGetValue(v105, kCFNumberLongType, &v284);
        if (*&valuePtr[0] >= 0)
        {
          v106 = *&valuePtr[0];
        }

        else
        {
          v106 = -*&valuePtr[0];
        }

        if (v284 >= 0)
        {
          v107 = v284;
        }

        else
        {
          v107 = -v284;
        }

        if (v106 <= v107)
        {
          v108 = v107;
        }

        else
        {
          v108 = v106;
        }

        if (v106 >= v107)
        {
          v106 = v107;
        }

        if (v106)
        {
          v109 = v108;
          if (v106 >= 1)
          {
            do
            {
              v109 = v106;
              v106 = v108 % v106;
              v108 = v109;
            }

            while (v106);
          }
        }

        else if (v108 <= 1)
        {
          v109 = 1;
        }

        else
        {
          v109 = v108;
        }

        v283 = v284 * *&valuePtr[0] / v109;
        v115 = CFNumberCreate(allocatora, kCFNumberLongType, &v283);
        if (!v115)
        {
          goto LABEL_387;
        }

        v116 = v115;
        CFDictionarySetValue(theDict, @"BytesPerRowAlignment", v115);
        CFRelease(v116);
      }

      else
      {
        CFDictionarySetValue(theDict, @"BytesPerRowAlignment", v100);
      }

      goto LABEL_166;
    }

    v102 = v101;
    v284 = 0;
    *&valuePtr[0] = 0;
    CFNumberGetValue(v100, kCFNumberLongType, valuePtr);
    v103 = CFNumberGetTypeID();
    if (v103 == CFGetTypeID(v102))
    {
      CFNumberGetValue(v102, kCFNumberLongType, &v284);
      if (*&valuePtr[0] < 1 || v284 % *&valuePtr[0])
      {
        goto LABEL_386;
      }

      goto LABEL_166;
    }

    v110 = CFArrayGetTypeID();
    if (v110 != CFGetTypeID(v102) || (v111 = CFArrayGetCount(v102), v111 < 1))
    {
LABEL_166:
      if (++v96 == Count)
      {
        v117 = 0;
        v7 = theDict;
        attributes = theArray;
        do
        {
          v118 = CFArrayGetValueAtIndex(theArray, v117);
          v119 = CFDictionaryGetValue(v118, @"ExactHeight");
          if (v119)
          {
            v120 = v119;
            v121 = CFDictionaryGetValue(theDict, @"ExactHeight");
            if (v121)
            {
              if (!CFEqual(v120, v121))
              {
                v13 = "exact height mismatch";
                goto LABEL_61;
              }
            }

            else
            {
              CFDictionarySetValue(theDict, @"ExactHeight", v120);
            }
          }

          ++v117;
        }

        while (Count != v117);
        v122 = 0;
        while (1)
        {
          v123 = CFArrayGetValueAtIndex(theArray, v122);
          v124 = CFDictionaryGetValue(v123, @"PlaneAlignment");
          if (v124)
          {
            v125 = v124;
            v126 = CFDictionaryGetValue(theDict, @"PlaneAlignment");
            if (v126)
            {
              v127 = v126;
              v284 = 0;
              *&valuePtr[0] = 0;
              v283 = 0;
              CFNumberGetValue(v125, kCFNumberLongType, valuePtr);
              CFNumberGetValue(v127, kCFNumberLongType, &v284);
              if (*&valuePtr[0] >= 0)
              {
                v128 = *&valuePtr[0];
              }

              else
              {
                v128 = -*&valuePtr[0];
              }

              if (v284 >= 0)
              {
                v129 = v284;
              }

              else
              {
                v129 = -v284;
              }

              if (v128 <= v129)
              {
                v130 = v129;
              }

              else
              {
                v130 = v128;
              }

              if (v128 >= v129)
              {
                v128 = v129;
              }

              if (v128)
              {
                v131 = v130;
                if (v128 >= 1)
                {
                  do
                  {
                    v131 = v128;
                    v128 = v130 % v128;
                    v130 = v131;
                  }

                  while (v128);
                }
              }

              else if (v130 <= 1)
              {
                v131 = 1;
              }

              else
              {
                v131 = v130;
              }

              v283 = v284 * *&valuePtr[0] / v131;
              v132 = CFNumberCreate(allocatora, kCFNumberLongType, &v283);
              if (!v132)
              {
                goto LABEL_388;
              }

              v133 = v132;
              CFDictionarySetValue(theDict, @"PlaneAlignment", v132);
              CFRelease(v133);
            }

            else
            {
              CFDictionarySetValue(theDict, @"PlaneAlignment", v125);
            }
          }

          if (++v122 == Count)
          {
            v134 = 0;
            while (1)
            {
              v135 = CFArrayGetValueAtIndex(theArray, v134);
              v136 = CFDictionaryGetValue(v135, @"CompressedDataRegionAlignment");
              if (v136)
              {
                v137 = v136;
                v138 = CFDictionaryGetValue(theDict, @"CompressedDataRegionAlignment");
                if (v138)
                {
                  v139 = v138;
                  v284 = 0;
                  *&valuePtr[0] = 0;
                  v283 = 0;
                  CFNumberGetValue(v137, kCFNumberLongType, valuePtr);
                  CFNumberGetValue(v139, kCFNumberLongType, &v284);
                  if (*&valuePtr[0] >= 0)
                  {
                    v140 = *&valuePtr[0];
                  }

                  else
                  {
                    v140 = -*&valuePtr[0];
                  }

                  if (v284 >= 0)
                  {
                    v141 = v284;
                  }

                  else
                  {
                    v141 = -v284;
                  }

                  if (v140 <= v141)
                  {
                    v142 = v141;
                  }

                  else
                  {
                    v142 = v140;
                  }

                  if (v140 >= v141)
                  {
                    v140 = v141;
                  }

                  if (v140)
                  {
                    v143 = v142;
                    if (v140 >= 1)
                    {
                      do
                      {
                        v143 = v140;
                        v140 = v142 % v140;
                        v142 = v143;
                      }

                      while (v140);
                    }
                  }

                  else if (v142 <= 1)
                  {
                    v143 = 1;
                  }

                  else
                  {
                    v143 = v142;
                  }

                  v283 = v284 * *&valuePtr[0] / v143;
                  v144 = CFNumberCreate(allocatora, kCFNumberLongType, &v283);
                  if (!v144)
                  {
                    goto LABEL_388;
                  }

                  v145 = v144;
                  CFDictionarySetValue(theDict, @"CompressedDataRegionAlignment", v144);
                  CFRelease(v145);
                }

                else
                {
                  CFDictionarySetValue(theDict, @"CompressedDataRegionAlignment", v137);
                }
              }

              if (++v134 == Count)
              {
                v146 = 0;
                while (1)
                {
                  v147 = CFArrayGetValueAtIndex(theArray, v146);
                  v148 = CFDictionaryGetValue(v147, @"CompressedTileHeaderGroupBytesPerRowAlignment");
                  if (v148)
                  {
                    v149 = v148;
                    v150 = CFDictionaryGetValue(theDict, @"CompressedTileHeaderGroupBytesPerRowAlignment");
                    if (v150)
                    {
                      v151 = v150;
                      v284 = 0;
                      *&valuePtr[0] = 0;
                      v283 = 0;
                      CFNumberGetValue(v149, kCFNumberLongType, valuePtr);
                      CFNumberGetValue(v151, kCFNumberLongType, &v284);
                      if (*&valuePtr[0] >= 0)
                      {
                        v152 = *&valuePtr[0];
                      }

                      else
                      {
                        v152 = -*&valuePtr[0];
                      }

                      if (v284 >= 0)
                      {
                        v153 = v284;
                      }

                      else
                      {
                        v153 = -v284;
                      }

                      if (v152 <= v153)
                      {
                        v154 = v153;
                      }

                      else
                      {
                        v154 = v152;
                      }

                      if (v152 >= v153)
                      {
                        v152 = v153;
                      }

                      if (v152)
                      {
                        v155 = v154;
                        if (v152 >= 1)
                        {
                          do
                          {
                            v155 = v152;
                            v152 = v154 % v152;
                            v154 = v155;
                          }

                          while (v152);
                        }
                      }

                      else if (v154 <= 1)
                      {
                        v155 = 1;
                      }

                      else
                      {
                        v155 = v154;
                      }

                      v283 = v284 * *&valuePtr[0] / v155;
                      v156 = CFNumberCreate(allocatora, kCFNumberLongType, &v283);
                      if (!v156)
                      {
                        goto LABEL_388;
                      }

                      v157 = v156;
                      CFDictionarySetValue(theDict, @"CompressedTileHeaderGroupBytesPerRowAlignment", v156);
                      CFRelease(v157);
                    }

                    else
                    {
                      CFDictionarySetValue(theDict, @"CompressedTileHeaderGroupBytesPerRowAlignment", v149);
                    }
                  }

                  if (++v146 == Count)
                  {
                    v158 = 0;
                    v159 = *MEMORY[0x1E696D0A0];
                    do
                    {
                      v160 = CFArrayGetValueAtIndex(theArray, v158);
                      v161 = CFDictionaryGetValue(v160, v159);
                      if (v161)
                      {
                        v162 = v161;
                        v163 = CFDictionaryGetValue(theDict, v159);
                        if (v163)
                        {
                          if (!CFEqual(v162, v163))
                          {
                            v13 = "kIOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray mismatch";
                            goto LABEL_61;
                          }
                        }

                        else
                        {
                          CFDictionarySetValue(theDict, v159, v162);
                        }
                      }

                      ++v158;
                    }

                    while (Count != v158);
                    v164 = 0;
                    v165 = *MEMORY[0x1E696D0C0];
                    while (1)
                    {
                      v166 = CFArrayGetValueAtIndex(theArray, v164);
                      v167 = CFDictionaryGetValue(v166, v165);
                      if (v167)
                      {
                        v168 = v167;
                        v169 = CFDictionaryGetValue(theDict, v165);
                        if (v169)
                        {
                          if (!CFEqual(v168, v169))
                          {
                            v13 = "kIOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray mismatch";
                            goto LABEL_61;
                          }
                        }

                        else
                        {
                          CFDictionarySetValue(theDict, v165, v168);
                        }
                      }

                      if (Count == ++v164)
                      {
                        v170 = 0;
                        while (1)
                        {
                          v171 = CFArrayGetValueAtIndex(theArray, v170);
                          v172 = CFDictionaryGetValue(v171, @"ExtendedPixelsLeft");
                          if (v172)
                          {
                            v173 = v172;
                            v174 = CFDictionaryGetValue(theDict, @"ExtendedPixelsLeft");
                            if (v174)
                            {
                              v175 = v174;
                              v284 = 0;
                              *&valuePtr[0] = 0;
                              v283 = 0;
                              CFNumberGetValue(v173, kCFNumberLongType, valuePtr);
                              CFNumberGetValue(v175, kCFNumberLongType, &v284);
                              v176 = *&valuePtr[0];
                              if (*&valuePtr[0] <= v284)
                              {
                                v176 = v284;
                              }

                              v283 = v176;
                              v177 = CFNumberCreate(allocatora, kCFNumberLongType, &v283);
                              if (!v177)
                              {
                                goto LABEL_388;
                              }

                              v178 = v177;
                              CFDictionarySetValue(theDict, @"ExtendedPixelsLeft", v177);
                              CFRelease(v178);
                            }

                            else
                            {
                              CFDictionarySetValue(theDict, @"ExtendedPixelsLeft", v173);
                            }
                          }

                          if (Count == ++v170)
                          {
                            v179 = 0;
                            while (1)
                            {
                              v180 = CFArrayGetValueAtIndex(theArray, v179);
                              v181 = CFDictionaryGetValue(v180, @"ExtendedPixelsRight");
                              if (v181)
                              {
                                v182 = v181;
                                v183 = CFDictionaryGetValue(theDict, @"ExtendedPixelsRight");
                                if (v183)
                                {
                                  v184 = v183;
                                  v284 = 0;
                                  *&valuePtr[0] = 0;
                                  v283 = 0;
                                  CFNumberGetValue(v182, kCFNumberLongType, valuePtr);
                                  CFNumberGetValue(v184, kCFNumberLongType, &v284);
                                  v185 = *&valuePtr[0];
                                  if (*&valuePtr[0] <= v284)
                                  {
                                    v185 = v284;
                                  }

                                  v283 = v185;
                                  v186 = CFNumberCreate(allocatora, kCFNumberLongType, &v283);
                                  if (!v186)
                                  {
                                    goto LABEL_388;
                                  }

                                  v187 = v186;
                                  CFDictionarySetValue(theDict, @"ExtendedPixelsRight", v186);
                                  CFRelease(v187);
                                }

                                else
                                {
                                  CFDictionarySetValue(theDict, @"ExtendedPixelsRight", v182);
                                }
                              }

                              if (Count == ++v179)
                              {
                                v188 = 0;
                                while (1)
                                {
                                  v189 = CFArrayGetValueAtIndex(theArray, v188);
                                  v190 = CFDictionaryGetValue(v189, @"ExtendedPixelsTop");
                                  if (v190)
                                  {
                                    v191 = v190;
                                    v192 = CFDictionaryGetValue(theDict, @"ExtendedPixelsTop");
                                    if (v192)
                                    {
                                      v193 = v192;
                                      v284 = 0;
                                      *&valuePtr[0] = 0;
                                      v283 = 0;
                                      CFNumberGetValue(v191, kCFNumberLongType, valuePtr);
                                      CFNumberGetValue(v193, kCFNumberLongType, &v284);
                                      v194 = *&valuePtr[0];
                                      if (*&valuePtr[0] <= v284)
                                      {
                                        v194 = v284;
                                      }

                                      v283 = v194;
                                      v195 = CFNumberCreate(allocatora, kCFNumberLongType, &v283);
                                      if (!v195)
                                      {
                                        goto LABEL_388;
                                      }

                                      v196 = v195;
                                      CFDictionarySetValue(theDict, @"ExtendedPixelsTop", v195);
                                      CFRelease(v196);
                                    }

                                    else
                                    {
                                      CFDictionarySetValue(theDict, @"ExtendedPixelsTop", v191);
                                    }
                                  }

                                  if (Count == ++v188)
                                  {
                                    v197 = 0;
                                    while (1)
                                    {
                                      v198 = CFArrayGetValueAtIndex(theArray, v197);
                                      v199 = CFDictionaryGetValue(v198, @"ExtendedPixelsBottom");
                                      if (v199)
                                      {
                                        v200 = v199;
                                        v201 = CFDictionaryGetValue(theDict, @"ExtendedPixelsBottom");
                                        if (v201)
                                        {
                                          v202 = v201;
                                          v284 = 0;
                                          *&valuePtr[0] = 0;
                                          v283 = 0;
                                          CFNumberGetValue(v200, kCFNumberLongType, valuePtr);
                                          CFNumberGetValue(v202, kCFNumberLongType, &v284);
                                          v203 = *&valuePtr[0];
                                          if (*&valuePtr[0] <= v284)
                                          {
                                            v203 = v284;
                                          }

                                          v283 = v203;
                                          v204 = CFNumberCreate(allocatora, kCFNumberLongType, &v283);
                                          if (!v204)
                                          {
                                            goto LABEL_388;
                                          }

                                          v205 = v204;
                                          CFDictionarySetValue(theDict, @"ExtendedPixelsBottom", v204);
                                          CFRelease(v205);
                                        }

                                        else
                                        {
                                          CFDictionarySetValue(theDict, @"ExtendedPixelsBottom", v200);
                                        }
                                      }

                                      if (Count == ++v197)
                                      {
                                        goto LABEL_299;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      continue;
    }

    break;
  }

  v112 = v111;
  v113 = 0;
  while (1)
  {
    v114 = CFArrayGetValueAtIndex(v102, v113);
    CFNumberGetValue(v114, kCFNumberLongType, &v284);
    if (*&valuePtr[0] < 1 || v284 % *&valuePtr[0])
    {
      break;
    }

    if (v112 == ++v113)
    {
      goto LABEL_166;
    }
  }

  v97 = "planar bytes per row alignemnt vs exact bytes per row mismatch";
LABEL_386:
  reportResolutionFailure(theArray, v97);
LABEL_387:
  v263 = theDict;
LABEL_389:
  CFRelease(v263);
LABEL_390:
  v47 = -6662;
LABEL_391:
  v264 = *MEMORY[0x1E69E9840];
  return v47;
}

void reportResolutionFailure(const __CFArray *a1, const char *a2)
{
  if ((reportResolutionFailure(__CFArray const*,char const*)::sDidCheck & 1) == 0)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"verbose_resolve", @"com.apple.corevideo", 0);
    reportResolutionFailure(__CFArray const*,char const*)::sVerboseCompatibility = AppBooleanValue != 0;
    if (AppBooleanValue)
    {
      syslog(3, "CoreVideo: will explain CVPixelBufferCreateResolvedAttributesDictionary' decisions -- thank you for setting defaults write com.apple.corevideo verbose_resolve -BOOL YES\n");
    }

    reportResolutionFailure(__CFArray const*,char const*)::sDidCheck = 1;
  }

  if (reportResolutionFailure(__CFArray const*,char const*)::sVerboseCompatibility == 1)
  {
    syslog(3, "CVPixelBufferCreateResolvedAttributesDictionary: (%p) %s\n", a1, a2);
  }
}

BOOL restrictToPixelFormatTypeListIntersection(const __CFAllocator *a1, __CFDictionary *a2, void *cf, const __CFString *a4)
{
  values = cf;
  v8 = CFGetTypeID(cf);
  if (v8 == CFArrayGetTypeID())
  {
    v9 = CFRetain(cf);
  }

  else
  {
    v10 = CFGetTypeID(cf);
    if (v10 != CFNumberGetTypeID())
    {
      return 0;
    }

    v9 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  }

  v11 = v9;
  if (!v9)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a2, a4);
  if (Value)
  {
    v13 = Value;
    Count = CFArrayGetCount(v11);
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    v16 = CFArrayGetCount(v13);
    if (v16 >= 1)
    {
      v17 = v16;
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
        v23.location = 0;
        v23.length = Count;
        if (CFArrayContainsValue(v11, v23, ValueAtIndex))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }

    CFDictionarySetValue(a2, a4, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    CFDictionarySetValue(a2, a4, v11);
  }

  CFRelease(v11);
  v21 = CFDictionaryGetValue(a2, a4);
  return !v21 || CFArrayGetCount(v21) == 0;
}

void mergeCFDictionariesUnlessTheyConflict(const void *key, const void *a2, CFDictionaryRef *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*a3, key);
  if (Value)
  {
    v7 = Value;
    if (!CFEqual(Value, a2))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"CVPixelBufferCreateResolvedAttributesDictionary: conflict merging IOSurfaceProperties: key %@, values %@ and %@", key, v7, a2);
      CFStringGetCString(v8, buffer, 300, 0x600u);
      fprintf(*MEMORY[0x1E69E9848], "%s\n", buffer);
      CFRelease(v8);
      *(a3 + 8) = 1;
    }

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = *a3;
    v11 = *MEMORY[0x1E69E9840];

    CFDictionarySetValue(v10, key, a2);
  }
}

void *CVMTLBufferCreate(void *a1, uint64_t a2)
{
  v3 = [a1 newBufferWithIOSurface:a2];
  [v3 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CVMetalBuffer: %p", a2)}];
  return v3;
}

void *CVMTLTextureCreate(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, unsigned int a6, int a7, unsigned int a8, IOSurfaceRef buffer, size_t a10, uint64_t a11, char a12)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_5;
  }

  v19 = [a1 maxTextureWidth2D];
  v20 = 0;
  if (a4 && v19 >= a3)
  {
    if ([a1 maxTextureHeight2D] < a4)
    {
LABEL_5:
      v20 = 0;
      goto LABEL_6;
    }

    v23 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a2 width:a3 height:a4 mipmapped:0];
    [v23 setUsage:a6];
    if (a7)
    {
      [v23 setStorageMode:a8];
    }

    MTLPixelFormatGetInfoForDevice();
    v24 = IOSurfaceCopyValue(buffer, *MEMORY[0x1E696CEF8]);
    if (v24)
    {
      v25 = v24;
      v26 = [v24 objectForKeyedSubscript:@"kMetalRegistryID"] != 0;
    }

    else
    {
      v26 = 0;
    }

    PixelFormat = IOSurfaceGetPixelFormat(buffer);
    BytesPerRow = IOSurfaceGetBytesPerRow(buffer);
    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(buffer, a10);
    if (!IOSurfaceGetPlaneCount(buffer) && !v26)
    {
      v30 = a6 == 1 ? [a1 iosurfaceReadOnlyTextureAlignmentBytes] : objc_msgSend(a1, "iosurfaceTextureAlignmentBytes");
      if (BytesPerRow % v30)
      {
        snprintf(__str, 0x200uLL, "CVMTLTextureCreate texture rowbytes alignment validation failed   PixelFormat=%c%c%c%c  MetalFormat=%lu  minalignment=%zu  planeBytesPerRow=%zu  overallBytesPerRow=%zu  width=%zu  planeIndex=%zu", HIBYTE(PixelFormat), BYTE2(PixelFormat), BYTE1(PixelFormat), PixelFormat, a2, v30, BytesPerRowOfPlane, BytesPerRow, a3, a10);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v33 = __str;
          _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        }

        goto LABEL_5;
      }
    }

    if (a12)
    {
      v29 = [a1 newTextureWithDescriptor:v23 iosurface:buffer plane:a10 slice:a11];
    }

    else
    {
      v29 = [a1 newTextureWithDescriptor:v23 iosurface:buffer plane:a10];
    }

    v20 = v29;
    [v29 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CVMetalTexture %p", buffer)}];
  }

LABEL_6:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

const __CFArray *CFArrayApplyFunctionReverse(const __CFArray *theArray, uint64_t a2, uint64_t a3, uint64_t (*a4)(const void *, uint64_t), uint64_t a5)
{
  if (a3 >= 1)
  {
    v8 = theArray;
    v9 = a2 + a3;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, --v9);
      theArray = a4(ValueAtIndex, a5);
    }

    while (v9 > a2);
  }

  return theArray;
}

uint64_t CVImageBacking::flushMetalTexture(CVImageBacking *this)
{
  result = *(this + 20);
  if (result)
  {
    result = (*(*result + 320))(result);
    *(this + 20) = 0;
  }

  return result;
}

double CVGetHostClockFrequency(void)
{
  if ((CVHostTimeBase::sIsInited & 1) == 0)
  {
    CVHostTimeBase::Initialize(v0);
  }

  return *&CVHostTimeBase::sFrequency;
}

uint32_t CVGetHostClockMinimumTimeDelta(void)
{
  if ((CVHostTimeBase::sIsInited & 1) == 0)
  {
    CVHostTimeBase::Initialize(v0);
  }

  return CVHostTimeBase::sMinDelta;
}

uint64_t CVLocklessBunchPairGetTypeID(void)
{
  if (CVLocklessBunchPairGetTypeID(void)::once != -1)
  {
    CVLocklessBunchPairGetTypeID();
  }

  return kCVLocklessBunchPairID;
}

uint64_t classInitialize_CVLocklessBunchPair(void *a1)
{
  result = _CFRuntimeRegisterClass();
  kCVLocklessBunchPairID = result;
  return result;
}

void CVLocklessBunchPair::CVLocklessBunchPair(CVLocklessBunchPair *this, const void *a2)
{
  CVBunchPair::CVBunchPair(this, a2);
  *v2 = &unk_1F10880C8;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
}

uint64_t CVLocklessBunchPair::finalize(CVLocklessBunchPair *this)
{
  (*(*this + 56))(this);

  return CVBunchPair::finalize(this);
}

void CVLocklessBunchPair::cleanup(CVLocklessBunchPair *this)
{
  v18 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  (*(*this + 184))(this);
  v3 = *(this + 27);
  v4 = (*(*this + 96))(this);
  v5 = (*(*this + 104))(this);
  CVTracePoolAction(1, v3, 0, "being deallocated", v4, v5);
  v6 = *(this + 27);
  LODWORD(v3) = (*(*this + 96))(this);
  LODWORD(v4) = (*(*this + 104))(this);
  v7 = (*(*this + 240))(this);
  snprintf(__str, 0x64uLL, "pool %p being deallocated [%d in use, %d free] _targetBufferCountsBitfield 0x%x \n", v6, v3, v4, v7);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = __str;
    _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = *(this + 29);
  if (v8)
  {
    CVAtomicBunchApply(v8, _invalidateBacking, Mutable);
    CVAtomicBunchDestroy(*(this + 29));
  }

  *(this + 29) = 0;
  v9 = *(this + 28);
  if (v9)
  {
    CVAtomicBunchApply(v9, _invalidateBacking, Mutable);
    CVAtomicBunchDestroy(*(this + 28));
  }

  *(this + 28) = 0;
  (*(*this + 152))(this, 0);
  (*(*this + 192))(this);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v11 = Count;
    for (i = 0; i != v11; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
      CFRelease(ValueAtIndex);
    }
  }

  CFRelease(Mutable);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t _invalidateBacking(__CFArray *a1, void *a2)
{
  CFArrayAppendValue(a1, a2);
  (*(**(a2 + 2) + 112))(*(a2 + 2));
  return 2;
}

uint64_t CVLocklessBunchPair::freeExcessBackingsNotInUse(CVLocklessBunchPair *this)
{
  v2[0] = this + 248;
  v2[1] = this;
  v2[2] = *(this + 27);
  v2[3] = 1;
  return CVAtomicBunchApply(*(this + 28), _freeExcessBackings, v2);
}

uint64_t _freeExcessBackings(const void *a1, CVBufferBacking **a2)
{
  if (!CVBufferBacking::okToAgeOutBacking(a2[2]))
  {
    return 0;
  }

  v4 = 1;
  if (CVLocklessBunchPair::shouldFlush(*(a1 + 1)))
  {
    (*(*a2[2] + 112))(a2[2]);
    *(a1 + 24) = 1;
    v5 = *(a1 + 2);
    v6 = (*(**(a1 + 1) + 96))(*(a1 + 1));
    v7 = (*(**(a1 + 1) + 104))(*(a1 + 1));
    CVTracePoolAction(1, v5, a2, "-> is in excess, freed.", v6 + 1, v7 - 1);
    CFRelease(a2);
    atomic_fetch_add_explicit(*a1, 0xFF000000, memory_order_relaxed);
    return 2;
  }

  return v4;
}

double CVLocklessBunchPair::getMaximumBufferAge(atomic_ullong *this, double a2, double a3)
{
  add_explicit = atomic_fetch_add_explicit(this + 30, 0, memory_order_relaxed);
  if ((CVHostTimeBase::sIsInited & 1) == 0)
  {
    a2 = CVHostTimeBase::Initialize(this);
  }

  LODWORD(a2) = CVHostTimeBase::sToNanosNumerator;
  LODWORD(a3) = CVHostTimeBase::sToNanosDenominator;
  return (add_explicit / *&a3 * *&a2) / 1000000000.0;
}

BOOL CVLocklessBunchPair::shouldFlush(CVLocklessBunchPair *this)
{
  do
  {
    v8 = *(this + 62);
    v7 = v8;
    v2 = (*(*this + 232))(this);
    v3 = v8 - BYTE2(v8) + HIBYTE(v8);
    if (v2 > v3)
    {
      v7 = v8 + 0x1000000;
    }

    if (v8 == v7)
    {
      break;
    }

    v4 = v8;
    v5 = v8;
    atomic_compare_exchange_strong_explicit(this + 62, &v5, v7, memory_order_relaxed, memory_order_relaxed);
  }

  while (v5 != v4);
  return v2 > v3;
}

CFStringRef classCopyFormatDescription_CVLocklessBunchPair(void *a1, const __CFDictionary *a2)
{
  v4 = a1[2];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<CVLocklessBunchPairRef %p obj=%p refcnt=%ld>", a1, v4, v5);
}

CFArrayRef CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(CFAllocatorRef allocator)
{
  v2 = _pixelFormatTypes;
  if (!_pixelFormatTypes)
  {
    pthread_once(&once, _pixelFormatDictionaryInit);
    v2 = _pixelFormatTypes;
    if (!_pixelFormatTypes)
    {
      return 0;
    }
  }

  return CFArrayCreateCopy(allocator, v2);
}

uint64_t CVPixelFormatDescriptionGetPixelFormatTypes()
{
  result = _pixelFormatTypes;
  if (!_pixelFormatTypes)
  {
    pthread_once(&once, _pixelFormatDictionaryInit);
    return _pixelFormatTypes;
  }

  return result;
}

uint64_t CVSetRestrictions(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (_pixelFormatTypes)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "CVSetRestrictions called too late to be effective.";
      _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
    }

    result = 4294960636;
  }

  else
  {
    setRestrictions(a1);
    result = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CVPixelFormatTypeIsSubsampled(unsigned int a1)
{
  v19 = 0;
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(a1);
  if (!DescriptionWithPixelFormatType)
  {
    return 0;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], DescriptionWithPixelFormatType);
  if (!Copy)
  {
    return 0;
  }

  v3 = Copy;
  Value = CFDictionaryGetValue(Copy, @"Planes");
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFArrayGetTypeID()) && CFArrayGetCount(v5) >= 1)
  {
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFDictionaryGetTypeID() && (getNumberValueIfPresent(v9, @"HorizontalSubsampling", &v19) && v19 > 1 || getNumberValueIfPresent(v9, @"VerticalSubsampling", &v19) && v19 > 1))
        {
          break;
        }
      }

      if (CFArrayGetCount(v5) <= ++v7)
      {
        goto LABEL_14;
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  NumberValueIfPresent = getNumberValueIfPresent(v3, @"HorizontalSubsampling", &v19);
  v13 = v19;
  if (getNumberValueIfPresent(v3, @"VerticalSubsampling", &v19))
  {
    v14 = v19 <= 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (NumberValueIfPresent)
  {
    v16 = v13 <= 1;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v15 = 1;
  }

  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = v11;
  }

  CFRelease(v3);
  return v17;
}

uint64_t getNumberValueIfPresent(const __CFDictionary *a1, const __CFString *a2, int *a3)
{
  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, a2, &value);
  result = 0;
  if (ValueIfPresent && value)
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      return CFNumberGetValue(value, kCFNumberSInt32Type, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFStringRef CVPixelFormatTypeCopyFourCharCodeString(uint64_t a1)
{
  v2 = 0;
  *bytes = bswap32(a1);
  v3 = MEMORY[0x1E69E9830];
  while (1)
  {
    v4 = bytes[v2];
    if (v4 < 0)
    {
      break;
    }

    if ((*(v3 + 4 * v4 + 60) & 0x40000) == 0)
    {
      return CFStringCreateWithFormat(0, 0, @"%u", a1);
    }

LABEL_6:
    if (++v2 == 4)
    {
      return CFStringCreateWithBytes(0, bytes, 4, 0x600u, 0);
    }
  }

  if (__maskrune(bytes[v2], 0x40000uLL))
  {
    goto LABEL_6;
  }

  return CFStringCreateWithFormat(0, 0, @"%u", a1);
}

void CVAddAtomic(int a1, atomic_uint *a2)
{
  do
  {
    v3 = *a2;
    v4 = *a2;
    atomic_compare_exchange_strong(a2, &v4, *a2 + a1);
  }

  while (v4 != v3);
}

void CVBitAndAtomic(int a1, atomic_uint *a2)
{
  do
  {
    v3 = *a2;
    v4 = *a2;
    atomic_compare_exchange_strong(a2, &v4, *a2 & a1);
  }

  while (v4 != v3);
}

uint64_t CVIncrementAtomicCounter(atomic_uint *a1, BOOL *a2)
{
  do
  {
    result = *a1;
    if (result == -1)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong(a1, &v4, result + 1);
  }

  while (v4 != result);
  *a2 = result != -1;
  return result;
}

uint64_t CVDataBufferPoolGetTypeID()
{
  if (CVDataBufferPoolGetTypeID::once != -1)
  {
    CVDataBufferPoolGetTypeID_cold_1();
  }

  return kCVDataBufferPoolID;
}

uint64_t classInitialize_CVDataBufferPool(void *a1)
{
  result = _CFRuntimeRegisterClass();
  kCVDataBufferPoolID = result;
  return result;
}

uint64_t CVDataBufferPool::finalize(CVDataBufferPool *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 4) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 5) = 0;
  v4 = *(this + 15);
  if (v4)
  {
    free(v4);
  }

  pthread_mutex_destroy((this + 56));
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;

  return CVBufferPool::finalize(this);
}

uint64_t CVDataBufferPool::getMinimumBufferCount(CVDataBufferPool *this, const void *a2)
{
  pthread_mutex_lock((this + 56));
  v4 = *(this + 12);
  if (v4)
  {
    v5 = 0;
    v6 = (*(this + 15) + 8);
    do
    {
      if (*(v6 - 1) == a2)
      {
        v5 = *v6;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock((this + 56));
  return v5;
}

uint64_t CVDataBufferPool::allocateNewBacking(CFDictionaryRef *this, const __CFAllocator *a2, uint64_t a3)
{
  v16 = 0;
  v5 = CVDataBufferBacking::alloc(a2, a2);
  if (v5)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(this[5], @"IOSurfaceProperties");
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFDictionaryGetTypeID()))
    {
      IntValueWithDefault = CVDictionaryGetIntValueWithDefault(v8, *MEMORY[0x1E696CFC0], 0);
      v11 = CVDictionaryGetIntValueWithDefault(v8, *MEMORY[0x1E696CE30], 0);
    }

    else
    {
      IntValueWithDefault = 0;
      v11 = 0;
    }

    if ((*(*v6[2] + 176))(v6[2], IntValueWithDefault, v11, this[5], this[4], 0, &v16))
    {
      v16 = (*(*this[2] + 112))(this[2], v6[2], 0, a3);
      if (v16)
      {
        CFRelease(v6);
      }

      else
      {
        v12 = (*(*this + 3))(this);
        v13 = (*(*this[2] + 96))(this[2]);
        v14 = (*(*this[2] + 104))(this[2]);
        CVTracePoolAction(1, v12, v6, "created", v13 + 1, v14 - 1);
      }
    }
  }

  else
  {
    return -6660;
  }

  return v16;
}

uint64_t CVDataBufferPool::assignNewBacking(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294960635;
  }

  v4 = (*(**(a2 + 16) + 208))(*(a2 + 16));
  if (!v4)
  {
    return 4294960635;
  }

  v5 = v4;
  (*(**(a1 + 16) + 112))(*(a1 + 16), *(a2 + 16), 0, 0);
  v6 = (*(*a1 + 24))(a1);
  v7 = (*(**(a1 + 16) + 96))(*(a1 + 16));
  v8 = (*(**(a1 + 16) + 104))(*(a1 + 16));
  CVTracePoolAction(1, v6, a2, "CVDataBuffer backing claimed", v7, v8);
  v9 = *MEMORY[0x1E696CF98];
  v10 = IOSurfaceCopyValue(v5, *MEMORY[0x1E696CF98]);
  v11 = v10;
  if (v10 && CFStringCompare(v10, @"CoreVideo", 0))
  {
    goto LABEL_9;
  }

  if (*(a1 + 24))
  {
    v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Assigned-To-%@", *(a1 + 24));
    if (v12)
    {
      v13 = v12;
      IOSurfaceSetValue(v5, v9, v12);
      CFRelease(v13);
    }
  }

  if (v11)
  {
LABEL_9:
    CFRelease(v11);
  }

  CVBufferBacking::setNeverAgeOutBacking(*(a2 + 16));
  return 0;
}

uint64_t CVDataBufferPool::preallocate(CVDataBufferPool *this, const __CFAllocator *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v6 = *(this + 2);
  v18[0] = this;
  v18[1] = v6;
  v18[2] = a2;
  v7 = (*(*v6 + 232))(v6);
  if (v7 >= (*(**(this + 2) + 224))(*(this + 2)))
  {
    v12 = 0;
  }

  else
  {
    (*(**(this + 2) + 160))(*(this + 2));
    if (a3 && (v8 = (*(**(this + 2) + 224))(*(this + 2)), v8 > (*(**(this + 2) + 232))(*(this + 2)) + 1))
    {
      v22 = 0;
      v23.__sig = 0x300000006;
      v21 = 4;
      v9 = 0;
      if ((sysctl(&v23, 2u, &v22, &v21, 0, 0) & 0x80000000) == 0 && v22 >= 2)
      {
        v10 = pthread_self();
        v22 = 0;
        if (pthread_getschedparam(v10, &v22, &v21))
        {
          v11 = 0;
        }

        else
        {
          v11 = &v23;
          pthread_attr_init(&v23);
          pthread_attr_setschedparam(&v23, &v21);
          pthread_attr_setschedpolicy(&v23, v22);
        }

        v9 = pthread_create(&v20, v11, preAllocateThread, v18) == 0;
      }
    }

    else
    {
      v9 = 0;
    }

    do
    {
      v13 = (*(*this + 168))(this, a2, 1);
    }

    while (!v13);
    v14 = v13;
    if (v13 == -6699)
    {
      v12 = 0;
    }

    else
    {
      v12 = v13;
    }

    if (v9)
    {
      pthread_join(v20, 0);
      v15 = v19;
      if (v19 == -6699)
      {
        v15 = 0;
      }

      if (v14 == -6699)
      {
        v12 = v15;
      }

      else
      {
        v12 = v14;
      }
    }

    (*(**(this + 2) + 168))(*(this + 2));
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t CVDataBufferPool::prefetchPages(CVDataBufferPool *this)
{
  (*(**(this + 2) + 160))(*(this + 2));
  (*(**(this + 2) + 264))();
  (*(**(this + 2) + 168))(*(this + 2));
  return 0;
}

CVBuffer **CVDataBufferPool::createDataBuffer(CFDictionaryRef *this, const __CFAllocator *a2, const __CFDictionary *a3, int *a4)
{
  v31 = 0;
  Value = CFDictionaryGetValue(this[5], @"IOSurfaceProperties");
  if (Value && (v9 = Value, v10 = CFGetTypeID(Value), v10 == CFDictionaryGetTypeID()))
  {
    IntValueWithDefault = CVDictionaryGetIntValueWithDefault(v9, *MEMORY[0x1E696CFC0], 0);
    v12 = CVDictionaryGetIntValueWithDefault(v9, *MEMORY[0x1E696CE30], 0);
  }

  else
  {
    IntValueWithDefault = 0;
    v12 = 0;
  }

  (*(*this[2] + 160))(this[2]);
  v13 = (*(*this[2] + 128))(this[2], &v31, 0);
  v15 = (*(*this[2] + 96))(this[2]);
  if (v31 && (v16 = (*(*v31 + 24))(v31)) != 0)
  {
    v17 = v16;
    if ((*(**(v16 + 16) + 208))(*(v16 + 16)))
    {
      IOSurfaceClearDataProperties();
    }
  }

  else
  {
    if (a3)
    {
      v19 = CFDictionaryGetValue(a3, @"BufferPoolAllocationThreshold");
      v30 = 0;
      if (v19)
      {
        v20 = v19;
        v21 = CFGetTypeID(v19);
        if (v21 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v20, kCFNumberLongType, &v30);
          if (v30 >= 1 && v30 <= v15 + v13)
          {
            v22 = 0;
            v23 = -6689;
LABEL_24:
            *a4 = v23;
            goto LABEL_25;
          }
        }
      }
    }

    v24 = CVDataBufferBacking::alloc(a2, v14);
    if (!v24)
    {
      v22 = 0;
      goto LABEL_23;
    }

    v17 = v24;
    if (!(*(*v24[2] + 176))(v24[2], IntValueWithDefault, v12, this[5], this[4], 0, a4))
    {
      v22 = 0;
      goto LABEL_25;
    }

    (*(*this[2] + 112))(this[2], *(v17 + 16), 1, 0);
    v25 = (*(*this + 3))(this);
    v26 = (*(*this[2] + 96))(this[2]);
    v27 = (*(*this[2] + 104))(this[2]);
    CVTracePoolAction(1, v25, v17, "CVDataBuffer backing created", v26 + 1, v27 - 1);
  }

  v28 = CVDataBuffer::alloc(a2, v18);
  v22 = v28;
  if (!v28 || !(*(*v28[2] + 160))(v28[2], *(v17 + 16)))
  {
    (*(*this[2] + 120))(this[2], *(v17 + 16));
LABEL_23:
    v23 = -6660;
    goto LABEL_24;
  }

  (*(*v22[2] + 144))(v22[2], this[5]);
  *a4 = 0;
LABEL_25:
  (*(*this[2] + 168))(this[2]);
  (*(*this[2] + 136))(this[2]);
  return v22;
}

CFStringRef CVDataBufferPool::copyDebugDescription(CVDataBufferPool *this)
{
  v2 = (*(*this + 24))(this);
  v3 = CFGetTypeID(v2);
  v4 = CFCopyTypeIDDescription(v3);
  v5 = (*(*this + 24))(this);
  v6 = *(this + 3);
  if (v6)
  {
    v7 = " name=";
  }

  else
  {
    v7 = "";
  }

  if (v6)
  {
    v8 = *(this + 3);
  }

  else
  {
    v8 = &stru_1F108B3E8;
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  v11 = (*(**(this + 2) + 96))(*(this + 2));
  v12 = (*(**(this + 2) + 104))(*(this + 2));
  v13 = CFStringCreateWithFormat(0, 0, @"< %@Ref %p%s%@ poolAttributes=%@ dataBufferAttributes=%@ inUse=%ld free=%ld>", v4, v5, v7, v8, v9, v10, v11, v12);
  CFRelease(v4);
  return v13;
}

uint64_t CVDataBufferPool::flush(CVDataBufferPool *this, char a2)
{
  v2 = **(this + 2);
  if (a2)
  {
    return (*(v2 + 144))();
  }

  else
  {
    return (*(v2 + 136))();
  }
}

uint64_t CVDataBufferPool::scanIOSurfaces(CVDataBufferPool *this, void (*a2)(__IOSurface *, void *), void *a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return (*(**(this + 2) + 248))(*(this + 2), scanIOSurfacesCallbackForCVDatabuffer, v4);
}

uint64_t CVDataBufferPool::bufferBackingNotInUse(CVDataBufferPool *this, CVBufferBacking *a2)
{
  CVBufferPool::bufferBackingNotInUse(this, a2);
  v3 = *(**(this + 2) + 136);

  return v3();
}

CFStringRef classCopyFormatDescription_CVDataBufferPool(void *a1, const __CFDictionary *a2)
{
  v4 = a1[2];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<CVDataBufferPoolRef %p obj=%p refcnt=%ld>", a1, v4, v5);
}

double sub_19D154614(uint64_t a1, uint64_t a2, double (*a3)(void))
{
  v4 = _s9CoreVideo21CVBufferRepresentablePAARi_zrlE12unsafeBuffer0F0Qzvg(a1, *(a2 + 8));
  v5 = a3();

  return v5;
}

double _s9CoreVideo26CVImageBufferRepresentablePAARi_zrlE9cleanRectSo6CGRectVvg(uint64_t a1, uint64_t a2)
{
  v2 = _s9CoreVideo21CVBufferRepresentablePAARi_zrlE12unsafeBuffer0F0Qzvg(a1, *(a2 + 8));
  *&v3 = CVImageBufferGetCleanRect(v2);

  return v3;
}

void _s9CoreVideo26CVImageBufferRepresentablePAARi_zrlE14originPositionAA0cd6OriginG0Ovg(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = _s9CoreVideo21CVBufferRepresentablePAARi_zrlE12unsafeBuffer0F0Qzvg(a1, *(a2 + 8));
  IsFlipped = CVImageBufferIsFlipped(v4);

  *a3 = IsFlipped == 0;
}

CGColorSpaceRef _s9CoreVideo26CVImageBufferRepresentablePAARi_zrlE10colorSpaceSo07CGColorG3RefaSgvg(uint64_t a1, uint64_t a2)
{
  v2 = _s9CoreVideo21CVBufferRepresentablePAARi_zrlE12unsafeBuffer0F0Qzvg(a1, *(a2 + 8));
  ColorSpace = CVImageBufferGetColorSpace(v2);

  if (ColorSpace)
  {
    v4 = ColorSpace;
  }

  return ColorSpace;
}

uint64_t CVImageBufferOriginPosition.hashValue.getter()
{
  v1 = *v0;
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  return sub_19D1716C0();
}

uint64_t sub_19D1547F4()
{
  v1 = *v0;
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  return sub_19D1716C0();
}

uint64_t sub_19D154868()
{
  v1 = *v0;
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  return sub_19D1716C0();
}

CoreVideo::CVImageSize __swiftcall CVImageSize.init(width:height:)(Swift::Int width, Swift::Int height)
{
  *v2 = width;
  v2[1] = height;
  result.height = height;
  result.width = width;
  return result;
}

__int128 *sub_19D154924()
{
  if (qword_1EB00F470 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB00F480;
}

double static CVImageSize.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EB00F470 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EB00F480;
  *a1 = xmmword_1EB00F480;
  return result;
}

uint64_t CVImageSize.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x19EAF6B50](*v0);
  return MEMORY[0x19EAF6B50](v1);
}

uint64_t CVImageSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  MEMORY[0x19EAF6B50](v2);
  return sub_19D1716C0();
}

uint64_t sub_19D154A9C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  MEMORY[0x19EAF6B50](v2);
  return sub_19D1716C0();
}

uint64_t sub_19D154AF8()
{
  v1 = v0[1];
  MEMORY[0x19EAF6B50](*v0);
  return MEMORY[0x19EAF6B50](v1);
}

uint64_t sub_19D154B34()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  MEMORY[0x19EAF6B50](v2);
  return sub_19D1716C0();
}

CGSize __swiftcall CGSize.init(_:)(CoreVideo::CVImageSize a1)
{
  v1 = *a1.width;
  v2 = *(a1.width + 8);
  result.height = v2;
  result.width = v1;
  return result;
}

uint64_t sub_19D154BC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7048];
  v3 = sub_19D1715F0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t CVImageSize.init(_:rounded:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_19D1715F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v18 = MEMORY[0x1EEE9AC00](v8, v11, v12, v13, v14, v15, v16, v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21, v22, v23, v24, v25, v26, v27);
  v29 = &v41 - v28;
  v44 = a3;
  v30 = *(v9 + 16);
  v43 = a1;
  v30(&v41 - v28, a1, v8);
  v31 = *(v9 + 88);
  result = v31(v29, v8);
  v33 = *MEMORY[0x1E69E7038];
  if (result == *MEMORY[0x1E69E7038])
  {
    v34 = round(a3);
  }

  else if (result == *MEMORY[0x1E69E7030])
  {
    v34 = rint(a3);
  }

  else if (result == *MEMORY[0x1E69E7040])
  {
    v34 = ceil(a3);
  }

  else if (result == *MEMORY[0x1E69E7048])
  {
    v34 = floor(a3);
  }

  else if (result == *MEMORY[0x1E69E7020])
  {
    v34 = trunc(a3);
  }

  else if (result == *MEMORY[0x1E69E7028])
  {
    v35 = ceil(a3);
    v36 = floor(a3);
    if (a3 < 0.0)
    {
      v34 = v36;
    }

    else
    {
      v34 = v35;
    }
  }

  else
  {
    v42 = a2;
    sub_19D171410();
    a2 = v42;
    result = (*(v9 + 8))(v29, v8);
    v34 = v44;
  }

  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v44 = a4;
  v37 = v43;
  v30(v20, v43, v8);
  v38 = v31(v20, v8);
  if (v38 == v33)
  {
    v39 = round(a4);
LABEL_29:
    result = (*(v9 + 8))(v37, v8);
    goto LABEL_30;
  }

  if (v38 == *MEMORY[0x1E69E7030])
  {
    v39 = rint(a4);
    goto LABEL_29;
  }

  if (v38 == *MEMORY[0x1E69E7040])
  {
    v39 = ceil(a4);
    goto LABEL_29;
  }

  if (v38 == *MEMORY[0x1E69E7048])
  {
    v39 = floor(a4);
    goto LABEL_29;
  }

  if (v38 == *MEMORY[0x1E69E7020])
  {
    v39 = trunc(a4);
    goto LABEL_29;
  }

  if (v38 == *MEMORY[0x1E69E7028])
  {
    result = (*(v9 + 8))(v37, v8);
    if ((*&a4 & 0x8000000000000000) != 0)
    {
      v39 = floor(a4);
    }

    else
    {
      v39 = ceil(a4);
    }
  }

  else
  {
    sub_19D171410();
    v40 = *(v9 + 8);
    v40(v37, v8);
    result = (v40)(v20, v8);
    v39 = v44;
  }

LABEL_30:
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v39 < 9.22337204e18)
  {
    *a2 = v34;
    a2[1] = v39;
    return result;
  }

LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_19D15504C()
{
  result = qword_1EB00F060;
  if (!qword_1EB00F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F060);
  }

  return result;
}

unint64_t sub_19D1550A4()
{
  result = qword_1EB00F068;
  if (!qword_1EB00F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F068);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CVImageBufferOriginPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CVImageBufferOriginPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CVImageSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CVImageSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t CVMutablePixelBuffer.Pool.Configuration.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CVMutablePixelBuffer.Pool.Configuration.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CVMutablePixelBuffer.Pool.Configuration.init(ageOutDuration:minimumBufferCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = a3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_19D155420()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F070, &qword_19D17C5B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19D17C580;
  *(v6 + 32) = @"MaximumBufferAge";
  v7 = MEMORY[0x1E69E63B0];
  *(v6 + 40) = v3;
  *(v6 + 64) = v7;
  *(v6 + 72) = @"MinimumBufferCount";
  v8 = MEMORY[0x1E69E6530];
  *(v6 + 80) = v4;
  *(v6 + 104) = v8;
  *(v6 + 112) = @"PrefetchOnAllocation";
  *(v6 + 144) = MEMORY[0x1E69E6370];
  *(v6 + 120) = v5;

  v9 = @"MaximumBufferAge";
  v10 = @"MinimumBufferCount";
  v11 = @"PrefetchOnAllocation";
  v15[2] = sub_19D16047C(v6);
  v15[0] = v2;
  v15[1] = v1;
  v12 = @"PixelBufferPoolNameKey";
  sub_19D160B48(v15, v12, MEMORY[0x1E69E6158]);
  v13 = sub_19D1603F4();

  return v13;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CVMutablePixelBuffer.Pool.AllocationAttributes.allocationThreshold.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CVMutablePixelBuffer.Pool.AllocationAttributes.allocationThreshold.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t CVMutablePixelBuffer.Pool.AllocationAttributes.init(allocationThreshold:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t sub_19D155678()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v12 = sub_19D16047C(MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    LOBYTE(v10) = 1;
    v9 = @"PreferIOSurfaceWithWiringAssertion";
    sub_19D160B48(&v10, v9, MEMORY[0x1E69E6370]);
    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = v1;
  v11 = 0;
  v8 = @"BufferPoolAllocationThreshold";
  sub_19D160B48(&v10, v8, MEMORY[0x1E69E6530]);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v4)
  {
LABEL_4:
    LOBYTE(v10) = 1;
    v5 = @"RequireIOSurfaceWithoutWiringAssertion";
    sub_19D160B48(&v10, v5, MEMORY[0x1E69E6370]);
  }

LABEL_5:
  v6 = sub_19D1603F4();

  return v6;
}

uint64_t CVMutablePixelBuffer.Pool.__allocating_init(unsafePool:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v5 = a1;
  type metadata accessor for CVPixelBufferPool(0);
  sub_19D157A14(&v5, v3, &v6);
  *(v2 + 16) = v6;
  return v2;
}

uint64_t CVMutablePixelBuffer.Pool.init(unsafePool:)(uint64_t a1)
{
  v4 = a1;
  type metadata accessor for CVPixelBufferPool(0);
  sub_19D157A14(&v4, v2, &v5);
  *(v1 + 16) = v5;
  return v1;
}

void sub_19D155858(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
}

uint64_t CVMutablePixelBuffer.Pool.__allocating_init(pixelBufferAttributes:configuration:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CVMutablePixelBuffer.Pool.init(pixelBufferAttributes:configuration:)(a1, a2);
  return v4;
}

uint64_t *CVMutablePixelBuffer.Pool.init(pixelBufferAttributes:configuration:)(void *__src, uint64_t a2)
{
  v5 = *v2;
  memcpy(__dst, __src, 0x15CuLL);
  v6 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v6;
  v16 = *(a2 + 32);
  type metadata accessor for CVPixelBufferPool(0);
  v8 = v7;
  sub_19D157724(sub_19D156188, v7, &v13, &v14);
  if (v3)
  {
    v9 = v13;
    sub_19D156210(v15);
    sub_19D156240(__dst);
    sub_19D156294();
    swift_allocError();
    *v10 = v9;
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_19D156210(v15);
    sub_19D156240(__dst);
    v12 = v14;
    sub_19D157A14(&v12, v8, &v18);
    v2[2] = v18;
  }

  return v2;
}

const __CFDictionary *CVMutablePixelBuffer.Pool.pixelBufferAttributes.getter@<X0>(void *a1@<X8>)
{
  result = CVPixelBufferPoolGetPixelBufferAttributes(*(v1 + 16));
  if (result)
  {
    CVPixelBufferAttributes.init(dictionaryRepresentation:)(result);
    CVPixelBufferCreationAttributes.init(_:)(&v4, __src);
    result = sub_19D1562E8(__src);
    if (result != 1)
    {
      return memcpy(a1, __src, 0x15CuLL);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*CVMutablePixelBuffer.Pool.ageOutDuration.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  *a1 = CVPixelBufferPoolGetMaxBufferAge(v3);
  return sub_19D155B30;
}

void *sub_19D155B4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = CVPixelBufferPoolGetMinBufferCount(*(*a1 + 16));
  *a2 = result;
  return result;
}

uint64_t (*CVMutablePixelBuffer.Pool.minimumBufferCount.modify(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = CVPixelBufferPoolGetMinBufferCount(v3);
  return sub_19D155C08;
}

void sub_19D155C20(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 0;
}

uint64_t CVMutablePixelBuffer.Pool.makeMutablePixelBuffer(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = *(a1 + 10);
  type metadata accessor for CVBuffer(0);
  sub_19D157724(sub_19D156300, v4, &v12, &v13);
  if (!v2)
  {
    return CVMutablePixelBuffer.init(unsafeBuffer:)(v13, a2);
  }

  v5 = v12;
  sub_19D156294();
  result = swift_allocError();
  *v7 = v5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CVMutablePixelBuffer.Pool.preallocate(allowMultipleThreads:)(Swift::Bool allowMultipleThreads)
{
  v3 = CVPixelBufferPoolPreAllocate(0, *(v1 + 16));
  v4 = _s9CoreVideo7CVErrorV5checkyys5Int32VACYKFZ(v3);
  if (v2)
  {
    v5 = v4;
    sub_19D156294();
    swift_allocError();
    *v6 = v5;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CVMutablePixelBuffer.Pool.prefetchPages()()
{
  v2 = CVPixelBufferPoolPrefetchPages(*(v0 + 16));
  v3 = _s9CoreVideo7CVErrorV5checkyys5Int32VACYKFZ(v2);
  if (v1)
  {
    v4 = v3;
    sub_19D156294();
    swift_allocError();
    *v5 = v4;
  }
}

uint64_t CVMutablePixelBuffer.Pool.scanIOSurfaces(includeFree:includeUsed:_:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F070, &qword_19D17C5B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19D17C590;
  v10 = MEMORY[0x1E69E6370];
  *(v9 + 40) = a1;
  *(v9 + 32) = @"ScanFreeIOSurfaces";
  *(v9 + 64) = v10;
  *(v9 + 72) = @"ScanUsedIOSurfaces";
  *(v9 + 104) = v10;
  *(v9 + 80) = a2;
  v11 = @"ScanFreeIOSurfaces";
  v12 = @"ScanUsedIOSurfaces";
  sub_19D16047C(v9);
  v13 = *(v4 + 16);
  v14 = sub_19D1603F4();

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_19D1563B0;
  *(v16 + 24) = v15;
  v20[4] = sub_19D156404;
  v20[5] = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_19D155FC0;
  v20[3] = &block_descriptor;
  v17 = _Block_copy(v20);

  v18 = CVPixelBufferPoolScanIOSurfacesUsingBlock(v13, v14, v17);

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v18 == 0;
  }

  __break(1u);
  return result;
}

void sub_19D155FC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t CVMutablePixelBuffer.Pool.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t _s9CoreVideo20CVMutablePixelBufferV4PoolC13ConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v7)
  {
    if (v4 == v8 && v5 == v9)
    {
      return v6 ^ v10 ^ 1u;
    }

    return 0;
  }

  v12 = sub_19D171610();
  result = 0;
  if ((v12 & 1) == 0)
  {
    return result;
  }

LABEL_10:
  if (v4 == v8 && v5 == v9)
  {
    return v6 ^ v10 ^ 1u;
  }

  return result;
}

uint64_t _s9CoreVideo20CVMutablePixelBufferV4PoolC20AllocationAttributesV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 10);
  if (*(a1 + 8))
  {
    result = 0;
    if (!*(a2 + 8))
    {
      return result;
    }

    goto LABEL_8;
  }

  result = 0;
  if (*a1 == *a2)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
LABEL_8:
    if (((v2 ^ *(a2 + 9)) & 1) == 0)
    {
      return v3 ^ *(a2 + 10) ^ 1u;
    }
  }

  return result;
}

uint64_t sub_19D156188(CVPixelBufferPoolRef *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = sub_19D155420();
  memcpy(v9, v3, sizeof(v9));
  v6 = CVPixelBufferCreationAttributes.dictionaryRepresentation.getter();
  v7 = CVPixelBufferPoolCreate(0, v5, v6, a1);

  return v7;
}

unint64_t sub_19D156294()
{
  result = qword_1EB00F078;
  if (!qword_1EB00F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F078);
  }

  return result;
}

uint64_t sub_19D1562E8(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19D156300(CVPixelBufferRef *a1)
{
  if (*(v1 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v8 = *(v1 + 24);
  v10 = *(v1 + 34) != 0;
  v9 = v3 | *(v1 + 32);
  v4 = *(*(v1 + 16) + 16);
  v5 = sub_19D155678();
  PixelBufferWithAuxAttributes = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(0, v4, v5, a1);

  return PixelBufferWithAuxAttributes;
}

void sub_19D1563B0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1;
  v2();
}

uint64_t sub_19D156404()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19D1564D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19D15652C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t _s4PoolC20AllocationAttributesVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s4PoolC20AllocationAttributesVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

void sub_19D15667C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t _s9CoreVideo21CVBufferRepresentablePAARi_zrlE12unsafeBuffer0F0Qzvg(uint64_t a1, uint64_t a2)
{
  v9[6] = a1;
  v9[7] = a2;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = KeyPath;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = sub_19D156824;
  v9[5] = v5;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  v6(&v10, sub_19D156830, v9, AssociatedTypeWitness, a1, a2);

  return v10;
}

uint64_t sub_19D1567D8(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_19D156824(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_19D1567D8(a1);
}

uint64_t sub_19D156830@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t _s9CoreVideo7CVErrorV5checkyys5Int32VACYKFZ(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_19D156294();
    swift_willThrowTypedImpl();
    return v1;
  }

  return result;
}

unint64_t CVError.description.getter(int a1)
{
  switch(a1)
  {
    case -6692:
    case -6660:
      sub_19D1714D0();

      v3 = 0xD000000000000010;
      break;
    case -6691:
    case -6672:
      sub_19D1714D0();

      v3 = 0xD000000000000020;
      break;
    case -6690:
      sub_19D1714D0();

      v3 = 0xD00000000000001FLL;
      break;
    case -6689:
    case -6683:
      sub_19D1714D0();

      v3 = 0xD000000000000029;
      break;
    case -6684:
      sub_19D1714D0();

      v3 = 0xD000000000000028;
      break;
    case -6682:
      sub_19D1714D0();

      v3 = 0xD000000000000027;
      break;
    case -6681:
    case -6663:
      sub_19D1714D0();

      v3 = 0xD000000000000016;
      break;
    case -6680:
      sub_19D1714D0();

      v3 = 0xD00000000000001DLL;
      break;
    case -6673:
      sub_19D1714D0();

      v3 = 0xD000000000000025;
      break;
    case -6671:
      sub_19D1714D0();

      v3 = 0xD000000000000024;
      break;
    case -6670:
      sub_19D1714D0();

      v3 = 0xD000000000000019;
      break;
    case -6662:
      sub_19D1714D0();

      v3 = 0xD00000000000001BLL;
      break;
    case -6661:
      sub_19D1714D0();

      v3 = 0xD00000000000001ALL;
      break;
    default:
      v3 = 0x206E776F6E6B6E55;
      break;
  }

  v1 = sub_19D1715E0();
  MEMORY[0x19EAF6850](v1);

  MEMORY[0x19EAF6850](41, 0xE100000000000000);
  return v3;
}

uint64_t CVError.errorDescription.getter(int a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:a1 userInfo:0];
  v2 = [v1 localizedDescription];

  v3 = sub_19D171370();
  return v3;
}

uint64_t sub_19D157000(uint64_t a1, uint64_t a2)
{
  v4 = sub_19D157FB4();
  v5 = sub_19D158008();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

_DWORD *sub_19D157060@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_19D157078()
{
  v1 = *v0;
  sub_19D171680();
  sub_19D1716B0();
  return sub_19D1716C0();
}

uint64_t sub_19D1570EC()
{
  v1 = *v0;
  sub_19D171680();
  sub_19D1716B0();
  return sub_19D1716C0();
}

uint64_t sub_19D157150(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 < 1)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t (*sub_19D157190(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return sub_19D1580AC;
}

uint64_t (*sub_19D1571BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CVTime.flagOptions.modify(v2);
  return sub_19D1580C8;
}

uint64_t (*CVTime.flagOptions.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return sub_19D1580AC;
}

uint64_t (*sub_19D157300(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_19D1580B0;
}

uint64_t (*sub_19D15732C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CVSMPTETime.typeOptions.modify(v2);
  return sub_19D1580C8;
}

_DWORD *(*CVSMPTETime.typeOptions.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_19D1573C8;
}

uint64_t (*sub_19D1573E8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CVSMPTETime.flagOptions.modify(v2);
  return sub_19D157458;
}

_DWORD *(*CVSMPTETime.flagOptions.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return sub_19D157488;
}

__n128 sub_19D1574CC@<Q0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unint64_t a11, unint64_t a12, __int16 a13, __int16 a14, __int16 a15, __int16 a16, char a17, char a18, char a19)
{
  sub_19D157A4C(a1, a2, a3 & 1, a4, a5 & 1, a6, a7 & 1, a8, v22, a10 & 1, a11, a12, a13, a14, a15, a16, a17 & 1, a18, a19);
  v20 = v22[3];
  *(a9 + 32) = v22[2];
  *(a9 + 48) = v20;
  *(a9 + 64) = v22[4];
  result = v22[1];
  *a9 = v22[0];
  *(a9 + 16) = result;
  return result;
}

uint64_t (*sub_19D15760C(void *a1))()
{
  *a1 = *(v1 + 64);
  a1[1] = v1;
  return sub_19D1580B4;
}

uint64_t (*sub_19D157634(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CVTimeStamp.flagOptions.modify(v2);
  return sub_19D1580C8;
}

void sub_19D1576A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *(*CVTimeStamp.flagOptions.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 64);
  a1[1] = v1;
  return sub_19D157718;
}

uint64_t sub_19D157724@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, int *a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a3;
  v7 = sub_19D171460();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v17 = MEMORY[0x1EEE9AC00](v7, v10, v11, v12, v13, v14, v15, v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20, v21, v22, v23, v24, v25, v26);
  v28 = &v35 - v27;
  v29 = *(a2 - 8);
  (*(v29 + 56))(&v35 - v27, 1, 1, a2);
  v30 = a1(v28);
  if (v30)
  {
    v31 = v30;
    v38 = v30;
    sub_19D156294();
    swift_willThrowTypedImpl();
    result = (*(v8 + 8))(v28, v7);
  }

  else
  {
    (*(v8 + 16))(v19, v28, v7);
    v33 = (*(v29 + 48))(v19, 1, a2);
    v34 = *(v8 + 8);
    if (v33 != 1)
    {
      v34(v28, v7);
      return (*(v29 + 32))(a4, v19, a2);
    }

    v34(v19, v7);
    v31 = -6662;
    v37 = -6662;
    sub_19D156294();
    swift_willThrowTypedImpl();
    result = (v34)(v28, v7);
  }

  *v36 = v31;
  return result;
}

uint64_t sub_19D157A4C@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unint64_t a11, unint64_t a12, __int16 a13, __int16 a14, __int16 a15, __int16 a16, char a17, char a18, char a19)
{
  if (a5)
  {
    v19 = (a3 & 1) == 0;
  }

  else
  {
    v19 = ((a3 & 1) == 0) | 2;
  }

  if ((a7 & 1) == 0)
  {
    v19 |= 0x10uLL;
  }

  if ((a10 & 1) == 0)
  {
    v19 |= 8uLL;
  }

  v20 = a11 >> 16;
  v21 = HIDWORD(a11);
  v22 = HIDWORD(a12);
  if (a17)
  {
    v23 = 0;
  }

  else
  {
    v23 = a11;
  }

  if (a17)
  {
    LOWORD(v20) = 0;
    LODWORD(v21) = 0;
    v24 = 0;
  }

  else
  {
    v24 = a12;
  }

  if (a17)
  {
    LODWORD(v22) = 0;
    v25 = 0;
  }

  else
  {
    v25 = a13;
  }

  if (a17)
  {
    v26 = 0;
  }

  else
  {
    v26 = a14;
  }

  if (a17)
  {
    v27 = 0;
  }

  else
  {
    v27 = a15;
  }

  if (a17)
  {
    v28 = 0;
  }

  else
  {
    v28 = a16;
  }

  if ((a17 & 1) == 0)
  {
    v19 |= 4uLL;
  }

  if (a10)
  {
    v29 = 0;
  }

  else
  {
    v29 = a8;
  }

  if (a7)
  {
    a6 = 0.0;
  }

  if (a5)
  {
    a4 = 0;
  }

  if (a3)
  {
    a2 = 0;
  }

  *a9 = 0;
  *(a9 + 4) = a2;
  if (a3)
  {
    result = 0;
  }

  *(a9 + 8) = result;
  *(a9 + 16) = a4;
  *(a9 + 24) = a6;
  *(a9 + 32) = v29;
  *(a9 + 40) = v23;
  *(a9 + 42) = v20;
  *(a9 + 44) = v21;
  *(a9 + 48) = v24;
  *(a9 + 52) = v22;
  if (a18)
  {
    v31 = v19 | 0x10000;
  }

  else
  {
    v31 = v19;
  }

  *(a9 + 56) = v25;
  *(a9 + 58) = v26;
  *(a9 + 60) = v27;
  *(a9 + 62) = v28;
  if (a19)
  {
    v32 = v31 | 0x20000;
  }

  else
  {
    v32 = v31;
  }

  *(a9 + 64) = v32;
  *(a9 + 72) = 0;
  return result;
}

unint64_t sub_19D157B78()
{
  result = qword_1EB00F0A0;
  if (!qword_1EB00F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F0A0);
  }

  return result;
}

uint64_t sub_19D157BE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19D157C54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_19D157D94(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_19D157FB4()
{
  result = qword_1EB00F0A8;
  if (!qword_1EB00F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F0A8);
  }

  return result;
}

unint64_t sub_19D158008()
{
  result = qword_1EB00F0B0;
  if (!qword_1EB00F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F0B0);
  }

  return result;
}

uint64_t CVReadOnlyPixelBuffer.__allocating_init(_:)(id *a1)
{
  v2 = swift_allocObject();
  CVReadOnlyPixelBuffer.init(_:)(a1);
  return v2;
}

uint64_t *CVReadOnlyPixelBuffer.init(_:)(id *a1)
{
  v2 = *v1;
  v8 = *a1;
  swift_getKeyPath();
  type metadata accessor for CVBuffer(0);
  v4 = v3;

  _s9CoreVideo20CVMutablePixelBufferV010withUnsafeE0yxxSo11CVBufferRefaKYTXEKRi_zlF(sub_19D15828C);

  v6[0] = v6[2];
  sub_19D157A14(v6, v4, &v7);
  v1[2] = v7;

  return v1;
}

uint64_t sub_19D158244(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_19D15828C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t CVReadOnlyPixelBuffer.__allocating_init(unsafeBuffer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v5 = a1;
  type metadata accessor for CVBuffer(0);
  sub_19D157A14(&v5, v3, &v6);
  *(v2 + 16) = v6;
  return v2;
}

uint64_t CVReadOnlyPixelBuffer.init(unsafeBuffer:)(uint64_t a1)
{
  v4 = a1;
  type metadata accessor for CVBuffer(0);
  sub_19D157A14(&v4, v2, &v5);
  *(v1 + 16) = v5;
  return v1;
}

uint64_t CVReadOnlyPixelBuffer.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_19D1584FC()
{
  result = qword_1EB00F0B8;
  if (!qword_1EB00F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB00F0B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CVPixelFormatType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CVPixelFormatType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_19D1585B4()
{
  type metadata accessor for CVPixelFormatDescription.Registry();
  result = swift_initStaticObject();
  qword_1EB00FC28 = result;
  return result;
}

uint64_t *sub_19D1585E0()
{
  if (qword_1EB00FC20 != -1)
  {
    swift_once();
  }

  return &qword_1EB00FC28;
}

void CVPixelFormatDescription.Registry.register(_:)(uint64_t a1)
{
  v1 = *a1;
  v13 = *(a1 + 164);
  v14 = *(a1 + 180);
  *v15 = *(a1 + 196);
  *&v15[13] = *(a1 + 209);
  v9 = *(a1 + 100);
  v10 = *(a1 + 116);
  v11 = *(a1 + 132);
  v12 = *(a1 + 148);
  v5 = *(a1 + 36);
  v6 = *(a1 + 52);
  v7 = *(a1 + 68);
  v8 = *(a1 + 84);
  v3 = *(a1 + 4);
  v4 = *(a1 + 20);
  sub_19D158724();
  description = sub_19D1603F4();

  CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(description, v1);
}

uint64_t sub_19D158724()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  v6 = *(v0 + 38);
  v7 = *(v0 + 46);
  v40 = *(v0 + 42);
  v41[0] = v7;
  *(v41 + 9) = *(v0 + 193);
  v8 = *(v0 + 22);
  v9 = *(v0 + 30);
  v36 = *(v0 + 26);
  v37 = v9;
  v38 = *(v0 + 34);
  v39 = v6;
  v10 = *(v0 + 14);
  v32 = *(v0 + 10);
  v33 = v10;
  v34 = *(v0 + 18);
  v35 = v8;
  v11 = *(v0 + 27);
  v12 = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB00F070, &qword_19D17C5B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19D17C590;
  v14 = MEMORY[0x1E69E7668];
  *(v13 + 32) = @"PixelFormat";
  *(v13 + 40) = v1;
  *(v13 + 64) = v14;
  *(v13 + 72) = @"Name";
  *(v13 + 104) = MEMORY[0x1E69E6158];
  *(v13 + 80) = v3;
  *(v13 + 88) = v2;

  v15 = @"PixelFormat";
  v16 = @"Name";
  v31 = sub_19D16047C(v13);
  *&v29[0] = v11;
  BYTE8(v29[0]) = v12;
  v17 = @"ExactRatioBetweenBytesPerRowOfPlanes";
  sub_19D160B48(v29, v17, MEMORY[0x1E69E6530]);
  *&v29[0] = v4;
  sub_19D15B2AC();
  if (v5 != 3)
  {
    sub_19D160888(*off_1E75D7E88[v5], @"ComponentRange");
  }

  v27 = v40;
  *v28 = v41[0];
  *&v28[9] = *(v41 + 9);
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  sub_19D15D010(&v32, v29);
  sub_19D15CDA0();
  v29[8] = v27;
  v30[0] = *v28;
  *(v30 + 9) = *&v28[9];
  v29[4] = v23;
  v29[5] = v24;
  v29[6] = v25;
  v29[7] = v26;
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  sub_19D15D048(v29);
  return v31;
}

uint64_t CVPixelFormatDescription.Registry.formatDescriptions.getter()
{
  v0 = CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(0);
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_19D1713E0();
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_19D159398(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = 1;
  v4 = sub_19D15D078();
  sub_19D1611A0(@"PixelFormat", a1, &type metadata for CVPixelFormatType, v4, &v53);
  if (BYTE4(v53) != 1)
  {
    v5 = v53;
    sub_19D160A80(@"Name", a1, MEMORY[0x1E69E6158], &v51);
    v6 = v52;
    if (v52)
    {
      v7 = v51;

      sub_19D15C8E8(v8, v49);
      if (sub_19D15D998(v49) != 1)
      {

        sub_19D15B134(v16, &v53);
        v17 = v53;
        sub_19D15B408(a1, &v53);
        *&v58[119] = v49[7];
        *&v58[135] = v49[8];
        *&v58[151] = v50[0];
        *&v58[160] = *(v50 + 9);
        *&v58[55] = v49[3];
        *&v58[71] = v49[4];
        *&v58[87] = v49[5];
        *&v58[103] = v49[6];
        *&v58[7] = v49[0];
        *&v58[23] = v49[1];
        *&v58[39] = v49[2];
        *&v31[113] = *&v58[112];
        *&v31[129] = *&v58[128];
        *&v31[145] = *&v58[144];
        *&v31[161] = *(v50 + 9);
        *&v31[49] = *&v58[48];
        *&v31[65] = *&v58[64];
        *&v31[81] = *&v58[80];
        *&v31[97] = *&v58[96];
        *&v31[1] = *v58;
        v18 = v53;
        LODWORD(v29) = v5;
        *(&v29 + 1) = v7;
        *&v30 = v6;
        *(&v30 + 1) = v17;
        v31[0] = v53;
        *&v31[17] = *&v58[16];
        *&v31[33] = *&v58[32];
        v32 = 0;
        v19 = v57;
        v33 = v57;
        v48 = v57;
        v42 = *&v31[96];
        v43 = *&v31[112];
        v44 = *&v31[128];
        v45 = *&v31[144];
        v38 = *&v31[32];
        v39 = *&v31[48];
        v40 = *&v31[64];
        v41 = *&v31[80];
        v34 = v29;
        v35 = v30;
        v36 = *v31;
        v37 = *&v31[16];
        v46 = *&v31[160];
        v47 = *&v31[176];
        CVOpenGLESContext::operator delete(&v34);
        v20 = v47;
        *(a2 + 192) = v46;
        *(a2 + 208) = v20;
        v21 = v43;
        *(a2 + 128) = v42;
        *(a2 + 144) = v21;
        v22 = v45;
        *(a2 + 160) = v44;
        *(a2 + 176) = v22;
        v23 = v39;
        *(a2 + 64) = v38;
        *(a2 + 80) = v23;
        v24 = v41;
        *(a2 + 96) = v40;
        *(a2 + 112) = v24;
        v25 = v35;
        *a2 = v34;
        *(a2 + 16) = v25;
        v26 = v37;
        *(a2 + 32) = v36;
        *(a2 + 48) = v26;
        *&v55[113] = *&v58[112];
        *&v55[129] = *&v58[128];
        *&v55[145] = *&v58[144];
        *&v55[161] = *&v58[160];
        v27 = *&v58[32];
        *&v55[49] = *&v58[48];
        *&v55[65] = *&v58[64];
        *&v55[81] = *&v58[80];
        *&v55[97] = *&v58[96];
        *&v55[1] = *v58;
        *&v55[17] = *&v58[16];
        *(a2 + 224) = v48;
        LODWORD(v53) = v5;
        *(&v53 + 1) = v7;
        *&v54 = v6;
        *(&v54 + 1) = v17;
        v55[0] = v18;
        *&v55[33] = v27;
        *&v55[184] = 0;
        v56 = v19;
        sub_19D15D9B0(&v29, &v28);
        sub_19D15D9E8(&v53);
        return;
      }
    }
  }

  sub_19D15D970(&v53);
  v9 = *&v55[176];
  *(a2 + 192) = *&v55[160];
  *(a2 + 208) = v9;
  *(a2 + 224) = v56;
  v10 = *&v55[112];
  *(a2 + 128) = *&v55[96];
  *(a2 + 144) = v10;
  v11 = *&v55[144];
  *(a2 + 160) = *&v55[128];
  *(a2 + 176) = v11;
  v12 = *&v55[48];
  *(a2 + 64) = *&v55[32];
  *(a2 + 80) = v12;
  v13 = *&v55[80];
  *(a2 + 96) = *&v55[64];
  *(a2 + 112) = v13;
  v14 = v54;
  *a2 = v53;
  *(a2 + 16) = v14;
  v15 = *&v55[16];
  *(a2 + 32) = *v55;
  *(a2 + 48) = v15;
}

__n128 CVPixelFormatDescription.Registry.subscript.getter@<Q0>(OSType *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, *a1);
  if (v3)
  {
    v12 = v3;
    v4 = sub_19D160530();
    sub_19D159398(v4, a2);
  }

  else
  {
    sub_19D15D970(v13);
    v6 = v13[13];
    *(a2 + 192) = v13[12];
    *(a2 + 208) = v6;
    *(a2 + 224) = v14;
    v7 = v13[9];
    *(a2 + 128) = v13[8];
    *(a2 + 144) = v7;
    v8 = v13[11];
    *(a2 + 160) = v13[10];
    *(a2 + 176) = v8;
    v9 = v13[5];
    *(a2 + 64) = v13[4];
    *(a2 + 80) = v9;
    v10 = v13[7];
    *(a2 + 96) = v13[6];
    *(a2 + 112) = v10;
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    result = v13[3];
    *(a2 + 32) = v13[2];
    *(a2 + 48) = result;
  }

  return result;
}

CoreVideo::CVPixelFormatDescription::Dimensions __swiftcall CVPixelFormatDescription.Dimensions.init(horizontal:vertical:)(Swift::Int horizontal, Swift::Int vertical)
{
  *v2 = horizontal;
  v2[1] = vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

uint64_t CVPixelFormatDescription.Dimensions.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x19EAF6B50](*v0);
  return MEMORY[0x19EAF6B50](v1);
}

uint64_t CVPixelFormatDescription.Dimensions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  MEMORY[0x19EAF6B50](v2);
  return sub_19D1716C0();
}

uint64_t sub_19D15999C()
{
  sub_19D171680();
  sub_19D1716B0();
  return sub_19D1716C0();
}

uint64_t sub_19D159A14()
{
  sub_19D171680();
  sub_19D1716B0();
  return sub_19D1716C0();
}

BOOL sub_19D159A9C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_19D159ACC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_19D159AF8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_19D159BE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19D159C2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_19D159CD4()
{
  v1 = *v0;
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  return sub_19D1716C0();
}

uint64_t sub_19D159D1C()
{
  v1 = *v0;
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  return sub_19D1716C0();
}

uint64_t CVPixelFormatDescription.ComponentRange.hashValue.getter()
{
  v1 = *v0;
  sub_19D171680();
  MEMORY[0x19EAF6B50](v1);
  return sub_19D1716C0();
}

uint64_t sub_19D159DFC()
{
  v1 = *v0;
  sub_19D171680();
  sub_19D1716B0();
  return sub_19D1716C0();
}

uint64_t sub_19D159E44()
{
  v1 = *v0;
  sub_19D171680();
  sub_19D1716B0();
  return sub_19D1716C0();
}

int *sub_19D159E88@<X0>(int *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 4)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

CoreVideo::CVPixelFormatDescription::Compression::Algorithm::Footprint_optional __swiftcall CVPixelFormatDescription.Compression.Algorithm.Footprint.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CVPixelFormatDescription.Compression.Algorithm.hash(into:)()
{
  v1 = *v0 >> 62;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x19EAF6B50](3);
      sub_19D1716A0();
      return sub_19D1716B0();
    }

    v3 = 1;
  }

  else
  {
    if (v1)
    {
      MEMORY[0x19EAF6B50](2);
      return sub_19D1716A0();
    }

    v2 = v0[1];
    MEMORY[0x19EAF6B50](0);
    sub_19D15DE7C();
    sub_19D171340();
    v3 = v2;
  }

  return MEMORY[0x19EAF6B50](v3);
}

uint64_t CVPixelFormatDescription.Compression.Algorithm.hashValue.getter()
{
  v2 = *v0;
  sub_19D171680();
  CVPixelFormatDescription.Compression.Algorithm.hash(into:)();
  return sub_19D1716C0();
}

uint64_t sub_19D159FD4()
{
  v2 = *v0;
  sub_19D171680();
  CVPixelFormatDescription.Compression.Algorithm.hash(into:)();
  return sub_19D1716C0();
}

uint64_t sub_19D15A024()
{
  v2 = *v0;
  sub_19D171680();
  CVPixelFormatDescription.Compression.Algorithm.hash(into:)();
  return sub_19D1716C0();
}

CoreVideo::CVPixelFormatDescription::Compression::TiledAddressFormat_optional __swiftcall CVPixelFormatDescription.Compression.TiledAddressFormat.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 6)
  {
    v2 = 6;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CVPixelFormatDescription.Compression.UncompressedMetadata.pattern.getter()
{
  v1 = *v0;
  sub_19D15DED0(*v0, *(v0 + 8));
  return v1;
}

uint64_t CVPixelFormatDescription.Compression.UncompressedMetadata.pattern.setter(uint64_t a1, uint64_t a2)
{
  result = sub_19D15DF24(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t CVPixelFormatDescription.Compression.UncompressedMetadata.init(pattern:signallingConstant:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static CVPixelFormatDescription.Compression.UncompressedMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_19D15DBFC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t CVPixelFormatDescription.Compression.UncompressedMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_19D1712E0();
  return sub_19D1716A0();
}

uint64_t CVPixelFormatDescription.Compression.UncompressedMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_19D171680();
  sub_19D1712E0();
  sub_19D1716A0();
  return sub_19D1716C0();
}

uint64_t sub_19D15A294()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_19D171680();
  sub_19D1712E0();
  sub_19D1716A0();
  return sub_19D1716C0();
}

uint64_t sub_19D15A2F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_19D1712E0();
  return sub_19D1716A0();
}

uint64_t sub_19D15A330()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_19D171680();
  sub_19D1712E0();
  sub_19D1716A0();
  return sub_19D1716C0();
}

uint64_t sub_19D15A390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_19D15DBFC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}