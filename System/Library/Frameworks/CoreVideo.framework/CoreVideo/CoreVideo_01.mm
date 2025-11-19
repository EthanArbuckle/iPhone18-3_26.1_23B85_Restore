CFTypeRef CVBufferGetAttachment(CVBufferRef buffer, CFStringRef key, CVAttachmentMode *attachmentMode)
{
  result = _getCVBuffer(buffer);
  if (result)
  {
    v4 = *(*result + 96);

    return v4();
  }

  return result;
}

uint64_t CVLocklessBunchPair::freeAgedOutBackings(uint64_t this)
{
  add_explicit = atomic_fetch_add_explicit((this + 240), 0, memory_order_relaxed);
  if (add_explicit)
  {
    v2 = this;
    v7 = *(this + 216);
    v3 = CVGetCurrentHostTime();
    v4[0] = *(v2 + 224);
    v4[1] = v3 - add_explicit;
    v5 = 0;
    v8 = v2;
    v6 = *(v2 + 248);
    return CVAtomicBunchApply(v4[0], _freeAgedOutBackings, v4);
  }

  return this;
}

void _freeAgedOutBackings(void **a1, void *a2)
{
  if (*(a2 + 3))
  {
    (*(*a1[2] + 168))(a1[2]);
    v4 = a1[2];
    if (v4[13] < *(a2 + 1))
    {
      if (*(a2 + 16))
      {
        (*(*v4 + 112))(v4);
        v5 = *(a2 + 4);
        Count = CFArrayGetCount(*(a2 + 5));
        v7 = CFArrayGetCount(*a2);
        CVTracePoolAction(1, v5, a1, "-> aged out", Count, v7 - 1);
        v8 = *a2;
        v10.length = CFArrayGetCount(*a2);
        v10.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v10, a1);
        CFArrayRemoveValueAtIndex(v8, FirstIndexOfValue);
        --*(a2 + 3);
      }

      else
      {
        *(a2 + 16) = 1;
      }
    }
  }
}

uint64_t _freeAgedOutBackings(uint64_t *a1, void **a2)
{
  v4 = a1[3];
  if (v4 >= CVAtomicBunchGetCount(*a1))
  {
    return 0;
  }

  (*(*a2[2] + 168))(a2[2]);
  v5 = a2[2];
  if (v5[13] >= a1[1])
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    (*(*v5 + 112))(v5);
    v6 = a1[4];
    v7 = (*(*a1[5] + 96))(a1[5]);
    v8 = (*(*a1[5] + 104))(a1[5]);
    CVTracePoolAction(1, v6, a2, "-> aged out", v7 + 1, v8 - 1);
    --a1[3];
    CFRelease(a2);
    return 2;
  }

  else
  {
    result = 0;
    *(a1 + 16) = 1;
  }

  return result;
}

void CVPixelBuffer::removeAttachment(CVPixelBuffer *this, const __CFString *a2)
{
  if (_os_feature_enabled_impl())
  {
    v4 = (*(**(this + 15) + 152))(*(this + 15));
    v5 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a2);
    pthread_mutex_lock((this + 16));
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      if (CFEqual(v5, *MEMORY[0x1E696CEE0]))
      {
        setCGColorSpaceID(v4, 0);
      }

      IOSurfaceRemoveValue(v4, v5);
    }

    CFDictionaryRemoveValue(*(this + 10), a2);
    CFDictionaryRemoveValue(*(this + 11), a2);

    pthread_mutex_unlock((this + 16));
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0;
    CVBuffer::removeAttachment(this, a2);
    v7 = (*(**(this + 15) + 152))(*(this + 15));
    if (v7)
    {
      v8 = v7;
      if (convertAttachmentToIOSurfaceStruct(a2, 0, &v13, &v12))
      {
        v10[6] = v19;
        v10[7] = v20;
        v11 = v21;
        v10[2] = v15;
        v10[3] = v16;
        v10[4] = v17;
        v10[5] = v18;
        v10[0] = v13;
        v10[1] = v14;
        setBulkAttachmentsOnIOSurface(v8, v10, v12);
      }

      else
      {
        v9 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a2);
        if (v9)
        {
          IOSurfaceRemoveValue(v8, v9);
        }
      }
    }
  }
}

__IOSurface *CVPixelBufferBacking::resetAgeForRemoteUsage(CVPixelBufferBacking *this)
{
  result = *(this + 57);
  if (result)
  {
    if (*(this + 113))
    {
LABEL_5:
      *(this + 13) = -1;
      return result;
    }

    result = IOOrEXSurfaceIsInUse(result);
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

void *CVPixelBufferBacking::getExtendedPixels(void *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  if (a2)
  {
    *a2 = this[131];
  }

  if (a3)
  {
    *a3 = this[132];
  }

  if (a4)
  {
    *a4 = this[133];
  }

  if (a5)
  {
    *a5 = this[134];
  }

  return this;
}

uint64_t _tryToReuseABacking(_DWORD *a1, void **a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (*(*a2[2] + 128))(a2[2]);
  }

  else if ((v4 & 2) != 0)
  {
    v5 = (*(*a2[2] + 128))(a2[2]) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  if ((*(*a2[2] + 80))(a2[2]))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = 0;
    ++a1[2];
  }

  else
  {
    *a1 = a2;
    return 3;
  }

  return result;
}

uint64_t CVBunchPair::notifyPoolBufferBackingNotInUse(uint64_t this, CVBufferBacking *a2)
{
  if (*(this + 216))
  {
    return (*(**(*(this + 216) + 16) + 80))(*(*(this + 216) + 16), a2);
  }

  return this;
}

IOSurfaceRef IOOrEXSurfaceIsInUse(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceIsInUse(buffer);
  }

  return buffer;
}

void translateCoreVideoAttachmentKeyToIOSurfaceKeyAndStoreIt(const __CFString *a1, CFDictionaryRef *a2, void *a3, __IOSurface *a4)
{
  v8 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a1);
  if (*a2)
  {
    Value = CFDictionaryGetValue(*a2, a1);
    v10 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFDictionaryRemoveValue(*a2, a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = a2[1];
  if (!v11)
  {
    v13 = 0;
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:
    v15 = a2[1];
    if (v15)
    {
      CFDictionarySetValue(v15, a1, a3);
    }

    goto LABEL_15;
  }

  v12 = CFDictionaryGetValue(v11, a1);
  v13 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CFDictionaryRemoveValue(a2[1], a1);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (*MEMORY[0x1E696CEE0] != v8)
  {
    v14 = 0;
LABEL_23:
    CFDictionarySetValue(a2[2], v8, a3);
    goto LABEL_24;
  }

  TypeID = CGColorSpaceGetTypeID();
  if (TypeID != CFGetTypeID(a3))
  {
LABEL_15:
    v14 = 0;
    goto LABEL_24;
  }

  if (_os_feature_enabled_impl())
  {
    v17 = CGColorSpaceGetTypeID();
    if (v17 == CFGetTypeID(a3) && (ID = CGColorSpaceGetID()) != 0)
    {
      CVDictionarySetSInt32Value(a2[2], *MEMORY[0x1E696CEE8], ID);
    }

    else
    {
      IOSurfaceRemoveValue(a4, *MEMORY[0x1E696CEE8]);
    }
  }

  v14 = CVPixelBufferGlobalCacheCreateOrCopyPropertyListFromColorSpace(a3);
  a3 = v14;
  if (v14)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {

    CFRelease(v14);
  }
}

void translateCoreVideoAttachmentKeyToIOSurfaceKeyAndStoreIt(const __CFString *a1, void *a2, CFDictionaryRef *a3)
{
  if (a2)
  {
    translateCoreVideoAttachmentKeyToIOSurfaceKeyAndStoreIt(a1, a3, a2, a3[3]);
  }
}

void CVPixelBufferPool::bufferBackingNotInUse(atomic_uint *this, CVBufferBacking *a2)
{
  CVBufferPool::bufferBackingNotInUse(this, a2);
  if (!a2)
  {
    if (!this)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

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

  if (this)
  {
LABEL_8:
    (*(*this + 24))(this);
  }

LABEL_9:
  v7 = *(this + 2);
  if (v7)
  {
    (*(*v7 + 96))(v7);
    v8 = *(this + 2);
    if (v8)
    {
      (*(*v8 + 104))(v8);
    }
  }

  kdebug_trace();
  (*(**(this + 2) + 136))(*(this + 2));
  if ((*(*a2 + 80))(a2))
  {
    v9 = 1;
    atomic_compare_exchange_strong_explicit(this + 12, &v9, 0, memory_order_relaxed, memory_order_relaxed);
    if (v9 == 1)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      v11 = (*(*this + 24))(this);

      CFNotificationCenterPostNotification(LocalCenter, @"BufferPoolFreeBufferNotification", v11, 0, 1u);
    }
  }
}

uint64_t CVPixelBufferBacking::okToReuse(CVPixelBufferBacking *this)
{
  v2 = *(this + 57);
  if (v2 && IOOrEXSurfaceIsInUse(v2))
  {
    return 0;
  }

  return CVBufferBacking::okToReuse(this);
}

void CVImageBacking::prepareToRemoveFromPool(CVImageBacking *this)
{
  CVBufferBacking::prepareToRemoveFromPool(this);
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 17) = 0;
}

void CVDecrementAtomic(atomic_uint *a1)
{
  do
  {
    v2 = *a1;
    v3 = *a1;
    atomic_compare_exchange_strong(a1, &v3, *a1 - 1);
  }

  while (v3 != v2);
}

uint64_t CVPixelBufferBacking::finalize(CVPixelBufferBacking *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    (*(*v2 + 256))(v2, this);
  }

  if (*(this + 1169) == 1)
  {
    v3 = *(this + 118);
    v4 = *(this + 122);
    pthread_once(&shouldTraceBackingSummary(void)::once, initPixelBufferBackingSummary);
    if (gPixelBufferBackingSummaryBag)
    {
      v5 = (*(*this + 272))(this);
      v6 = (*(*this + 280))(this);
      v7 = (*(*this + 192))(this);
      v8 = (*(*this + 304))(this);
      PoolName = CVBufferBacking::getPoolName(this);
      pthread_mutex_lock(&gPixelBufferBackingSummaryMutex);
      if (gPixelBufferBackingSummaryBag)
      {
        v10 = copyBackingSummaryString(v5, v6, v7, v3, v4, PoolName);
        CFBagRemoveValue(gPixelBufferBackingSummaryBag, v10);
        CFRelease(v10);
        v11 = gPixelBufferBackingTotalDataSize;
        if ((v3 & 2) == 0)
        {
          v11 = gPixelBufferBackingTotalDataSize - v8;
          gPixelBufferBackingTotalDataSize -= v8;
        }

        printPixelBufferBackingSummaryBag(gPixelBufferBackingSummaryBag, v11);
      }

      pthread_mutex_unlock(&gPixelBufferBackingSummaryMutex);
    }
  }

  if (!*(this + 56) && (!*(this + 130) || !*(this + 62)) && !*(this + 57) && !*(this + 142))
  {
    goto LABEL_27;
  }

  if (*(this + 1168) != 1)
  {
    v13 = *(this + 138);
    if (v13)
    {
      if (v13 == 3)
      {
        v14 = *(this + 140);
        v15 = *(this + 141);
        v19 = *(this + 137);
        v17 = *(this + 57);
        v18 = *(this + 142);
        v16 = *(this + 56);
        goto LABEL_26;
      }

      if (v13 != 2)
      {
        goto LABEL_27;
      }
    }

    (*(this + 140))(*(this + 141), *(this + 137), *(this + 56), *(this + 142));
    goto LABEL_27;
  }

  v12 = *(this + 143);
  if (v12)
  {
    v12(*(this + 145), *(this + 56));
    goto LABEL_27;
  }

  v14 = *(this + 144);
  if (v14)
  {
    v15 = *(this + 145);
    v16 = *(this + 129);
    v17 = *(this + 130);
    v18 = this + 496;
    v19 = *(this + 56);
LABEL_26:
    v14(v15, v19, v16, v17, v18);
  }

LABEL_27:
  *(this + 56) = 0;
  *(this + 62) = 0;
  *(this + 142) = 0;
  v20 = *(this + 135);
  if (v20)
  {
    CFRelease(v20);
  }

  *(this + 135) = 0;
  v21 = *(this + 136);
  if (v21)
  {
    CFRelease(v21);
  }

  *(this + 136) = 0;
  v22 = *(this + 137);
  if (v22)
  {
    CFRelease(v22);
  }

  *(this + 137) = 0;
  v23 = *(this + 60);
  if (v23)
  {
    CFRelease(v23);
  }

  *(this + 60) = 0;
  *(this + 122) = 1;
  v24 = *(this + 57);
  if (v24 && *(this + 1168) == 1)
  {
    CFRelease(v24);
  }

  *(this + 57) = 0;
  v25 = *(this + 58);
  if (v25)
  {
    CFRelease(v25);
  }

  *(this + 58) = 0;

  return CVImageBacking::finalize(this);
}

uint64_t CVImageBacking::finalize(CVImageBacking *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  return CVBufferBacking::finalize(this);
}

uint64_t CVBufferBacking::finalize(CVBufferBacking *this)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"BufferBackingWillDeallocate", *(this + 1), 0, 1u);
  v3 = (*(*this + 24))(this);
  CVTracePoolAction(1, 0, v3, "deallocated", 0, 0);
  (*(*this + 96))(this, 0);
  v4 = *(this + 15);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 15) = 0;
  pthread_mutex_destroy((this + 24));

  return CVObject::finalize(this);
}

uint64_t CVPixelBuffer::setAttachment(CVPixelBuffer *this, const __CFString *a2, __CFString *a3, unsigned int a4)
{
  if (_os_feature_enabled_impl())
  {
    result = 4294960635;
    if (a4 <= 1 && a2 && a3)
    {
      CVPixelBuffer::setAttachment(this, a2, a3, a4);
      return 0;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0;
    result = CVBuffer::setAttachment(this, a2, a3, a4);
    if (a4 == 1 && !result)
    {
      result = (*(**(this + 15) + 152))(*(this + 15));
      if (result)
      {
        v9 = result;
        if (!convertAttachmentToIOSurfaceStruct(a2, a3, &v13, &v12))
        {
          CVPixelBuffer::setIOSurfaceAttachmentForCVBufferKey(this, a2, a3);
          return 0;
        }

        v10[6] = v19;
        v10[7] = v20;
        v11 = v21;
        v10[2] = v15;
        v10[3] = v16;
        v10[4] = v17;
        v10[5] = v18;
        v10[0] = v13;
        v10[1] = v14;
        return setBulkAttachmentsOnIOSurface(v9, v10, v12);
      }
    }
  }

  return result;
}

void CVBufferSetAttachment(CVBufferRef buffer, CFStringRef key, CFTypeRef value, CVAttachmentMode attachmentMode)
{
  CVBuffer = _getCVBuffer(buffer);
  if (CVBuffer)
  {
    v5 = *(*CVBuffer + 104);

    v5();
  }
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1, const void *a2)
{

  return CVDictionaryGetIntValueWithDefault(v2, a2, 0);
}

uint64_t *OUTLINED_FUNCTION_1_2(uint64_t a1)
{
  result = *(a1 + 120);
  v2 = *result;
  return result;
}

void translateIOSurfaceKeyToCoreVideoAttachmentKeyAndStoreIt(const __CFString *a1, const void *a2, __CFDictionary **a3)
{
  if (a2)
  {
    v5 = *a3;
    v6 = CVGetCVBufferAttachmentKeyForIOSurfacePropertyKey(a1);
    if (v6)
    {
      v7 = v6;
      if (!CFEqual(a1, *MEMORY[0x1E696CEE0]) || !CFDictionaryContainsKey(v5, @"CGColorSpace"))
      {
        v8 = copyAttachmentDeserializedIfNecessary(a1, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(v5, v7, v8);

          CFRelease(v9);
        }
      }
    }
  }
}

const void *CVGetCVBufferAttachmentKeyForIOSurfacePropertyKey(const __CFString *a1)
{
  pthread_once(&intializeAndGetIOSurfaceTranslationDictionaries(__CFDictionary const**,__CFDictionary const**)::once, initCVBufferKeyToIOSurfaceKeyDictionary);
  if (!a1)
  {
    return 0;
  }

  v2 = iosurfaceKeyToCVBufferKeyDictionary;

  return CFDictionaryGetValue(v2, a1);
}

uint64_t CVBuffer::setAttachments(CVBuffer *this, const __CFDictionary *a2, unsigned int a3)
{
  result = 4294960635;
  if (a2)
  {
    if (a3 <= 1)
    {
      pthread_mutex_lock((this + 16));
      v7 = *(this + 5);
      v8 = a3;
      CFDictionaryApplyFunction(a2, applySetAttachments, &v7);
      pthread_mutex_unlock((this + 16));
      return 0;
    }
  }

  return result;
}

CFDictionaryRef CVBuffer::copyAttachments(CVBuffer *this, unsigned int a2)
{
  if (a2 > 1)
  {
    return 0;
  }

  pthread_mutex_lock((this + 16));
  v5 = *(this + a2 + 10);
  if (v5)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v5);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 16));
  return Copy;
}

Boolean CVBufferHasAttachment(CVBufferRef buffer, CFStringRef key)
{
  CVBuffer = _getCVBuffer(buffer);
  if (CVBuffer)
  {
    v3 = *(*CVBuffer + 88);

    LOBYTE(CVBuffer) = v3();
  }

  return CVBuffer;
}

BOOL CVPixelBuffer::hasAttachment(CVPixelBuffer *this, const __CFString *a2)
{
  if (_os_feature_enabled_impl())
  {
    v4 = (*(**(this + 15) + 152))(*(this + 15));
    if (v4)
    {
      v5 = v4;
      v6 = CVGetIOSurfacePropertyKeyForCVBufferAttachmentKey(a2);
      pthread_mutex_lock((this + 16));
      if (v6)
      {
        if (_os_feature_enabled_impl() && CFEqual(v6, *MEMORY[0x1E696CEE0]))
        {
          v7 = IOSurfaceCopyValue(v5, *MEMORY[0x1E696CEE8]);
          v8 = v7;
          if (v7)
          {
            v9 = CFGetTypeID(v7);
            if (v9 == CFNumberGetTypeID())
            {
              valuePtr = 0;
              CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
              if (valuePtr)
              {
                pthread_mutex_unlock((this + 16));
                v10 = 1;
                goto LABEL_21;
              }
            }
          }
        }

        else
        {
          v8 = 0;
        }

        v12 = IOSurfaceCopyValue(v5, v6);
        if (v12)
        {
          CFRelease(v12);
          goto LABEL_18;
        }
      }

      else
      {
        v8 = 0;
      }

      if (!CFDictionaryGetValue(*(this + 11), a2))
      {
        v10 = CFDictionaryGetValue(*(this + 10), a2) != 0;
LABEL_20:
        pthread_mutex_unlock((this + 16));
        if (!v8)
        {
          return v10;
        }

LABEL_21:
        CFRelease(v8);
        return v10;
      }

LABEL_18:
      v10 = 1;
      goto LABEL_20;
    }
  }

  return CVBuffer::hasAttachment(this, a2);
}

void CVBitOrAtomic(int a1, atomic_uint *a2)
{
  do
  {
    v3 = *a2;
    v4 = *a2;
    atomic_compare_exchange_strong(a2, &v4, *a2 | a1);
  }

  while (v4 != v3);
}

CFDictionaryRef CVPixelBufferPoolGetPixelBufferAttributes(CVPixelBufferPoolRef pool)
{
  result = _getCVPixelBufferPool(pool);
  if (result)
  {
    v2 = *(*result + 120);

    return v2();
  }

  return result;
}

uint64_t CVPixelBufferPool::getMinimumBufferCount(pthread_mutex_t *this, const void *a2)
{
  pthread_mutex_lock(this + 1);
  v4 = *&this->__opaque[48];
  if (v4)
  {
    v5 = 0;
    v6 = (this[2].__sig + 8);
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

  pthread_mutex_unlock(this + 1);
  return v5;
}

void *CVPixelBufferPoolGetMinBufferCount(void *a1)
{
  result = _getCVPixelBufferPool(a1);
  if (result)
  {
    v2 = *(*result + 152);

    return v2();
  }

  return result;
}

uint64_t CVPixelBufferPoolSetMinBufferCount(void *a1)
{
  CVPixelBufferPool = _getCVPixelBufferPool(a1);
  if (!CVPixelBufferPool)
  {
    return 4294960635;
  }

  v2 = *(*CVPixelBufferPool + 144);

  return v2();
}

uint64_t CVPixelBufferPool::setMinimumBufferCount(pthread_mutex_t *this, uint64_t a2, const void *a3, int a4, const __CFAllocator *a5)
{
  pthread_mutex_lock(this + 1);
  v10 = *&this->__opaque[48];
  if (v10)
  {
    v11 = (this[2].__sig + 8);
    v12 = *&this->__opaque[48];
    while (*(v11 - 1) != a3)
    {
      v11 += 2;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    v16 = a2 - *v11;
    *v11 = a2;
  }

  else
  {
LABEL_5:
    sig = this[2].__sig;
    if (*&this->__opaque[52] == v10)
    {
      v14 = v10 + 16;
      *&this->__opaque[52] = v14;
      sig = malloc_type_realloc(sig, 16 * v14, 0x10C004028F705ECuLL);
      this[2].__sig = sig;
      v10 = *&this->__opaque[48];
    }

    v15 = &sig[16 * v10];
    *v15 = a3;
    *(v15 + 1) = a2;
    *&this->__opaque[48] = v10 + 1;
    v16 = a2;
  }

  pthread_mutex_unlock(this + 1);
  result = (*(**&this->__opaque[8] + 216))(*&this->__opaque[8], a2);
  if (result)
  {
    v18 = 1;
  }

  else
  {
    v18 = a4 == 0;
  }

  if (!v18)
  {
    if (v16 < 1)
    {
      if (v16 < 0)
      {
        (*(this->__sig + 184))(this, 1);
      }

      return 0;
    }

    else
    {
      v19 = *(this->__sig + 160);

      return v19(this, a5, 1);
    }
  }

  return result;
}

uint64_t CVDataBufferPoolCreate(CVDataBufferPool *this, const __CFAllocator *a2, uint64_t a3, uint64_t a4, uint64_t a5, CVDataBufferPool ***a6)
{
  v15 = -6660;
  if (!a6)
  {
    return 4294960635;
  }

  *a6 = 0;
  result = 4294960635;
  if (a3 && a4)
  {
    v13 = CVDataBufferPool::alloc(this, a2);
    if (v13)
    {
      v14 = v13;
      if ((*(*v13[2] + 96))(v13[2], a2, a3, a4, a5, &v15))
      {
        result = 0;
        *a6 = v14;
      }

      else
      {
        return v15;
      }
    }

    else
    {
      return 4294960634;
    }
  }

  return result;
}

CVDataBufferPool **CVDataBufferPool::alloc(CVDataBufferPool *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVDataBufferPool");
  }

  if (CVDataBufferPoolGetTypeID::once != -1)
  {
    CVDataBufferPoolGetTypeID_cold_1();
  }

  v3 = CVObject::alloc(kCVDataBufferPoolID, this, 0x18, 0x80uLL);
  v4 = v3;
  if (v3)
  {
    CVDataBufferPool::CVDataBufferPool(v3[2], v3);
  }

  return v4;
}

void CVDataBufferPool::CVDataBufferPool(CVDataBufferPool *this, const void *a2)
{
  CVBufferPool::CVBufferPool(this, a2);
  *v3 = &unk_1F1088228;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  pthread_mutex_init((v3 + 56), 0);
  *(this + 13) = 16;
  *(this + 15) = malloc_type_calloc(1uLL, 0x100uLL, 0x10C004028F705ECuLL);
}

CFTypeRef *CVDataBufferPool::initWithSize(CFTypeRef *this, const __CFDictionary *a2, unsigned int a3, uint64_t a4, const __CFDictionary *a5, int *a6)
{
  v11 = this;
  valuePtr[7] = *MEMORY[0x1E69E9840];
  v12 = CFGetAllocator(this[1]);
  if (!CVBufferPool::init(v11))
  {
    v11 = 0;
    *a6 = -6660;
    goto LABEL_28;
  }

  (*(*v11 + 16))(v11, 1.0);
  if (a2)
  {
    Copy = CFDictionaryCreateCopy(v12, a2);
    v11[4] = Copy;
    if (!Copy)
    {
      goto LABEL_23;
    }

    Value = CFDictionaryGetValue(a2, @"MaximumBufferAge");
    if (Value)
    {
      v15 = Value;
      v16 = CFGetTypeID(Value);
      if (v16 != CFNumberGetTypeID())
      {
        goto LABEL_25;
      }

      valuePtr[0] = 0.0;
      CFNumberGetValue(v15, kCFNumberDoubleType, valuePtr);
      (*(*v11 + 16))(v11, valuePtr[0]);
    }

    IntValueWithDefault = CVDictionaryGetIntValueWithDefault(a2, @"MinimumBufferCount", 0);
    if (IntValueWithDefault)
    {
      (*(*v11 + 18))(v11, IntValueWithDefault, 0, 0, *MEMORY[0x1E695E480]);
    }

    v18 = CFDictionaryGetValue(a2, @"DataBufferPoolName");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFStringGetTypeID())
      {
        CFRetain(v19);
        v21 = v11[3];
        if (v21)
        {
          CFRelease(v21);
        }

        v11[3] = v19;
        goto LABEL_14;
      }

LABEL_25:
      v28 = -6691;
      goto LABEL_26;
    }
  }

LABEL_14:
  if (!a4)
  {
LABEL_24:
    v28 = -6661;
    goto LABEL_26;
  }

  MutableCopy = CVDictionaryCreateMutableCopy(v12, a5);
  v11[5] = MutableCopy;
  if (!MutableCopy)
  {
LABEL_23:
    v28 = -6662;
LABEL_26:
    *a6 = v28;
LABEL_27:
    (*(*v11 + 5))(v11);
    v11 = 0;
    goto LABEL_28;
  }

  v23 = CFDictionaryGetValue(MutableCopy, @"IOSurfaceProperties");
  v24 = v23;
  if (v23)
  {
    v25 = CFGetTypeID(v23);
    if (v25 != CFDictionaryGetTypeID())
    {
      goto LABEL_24;
    }
  }

  v26 = CVDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], v24);
  if (!v26)
  {
    goto LABEL_23;
  }

  v27 = v26;
  CFDictionarySetValue(v26, *MEMORY[0x1E696D0F8], *MEMORY[0x1E695E4D0]);
  CVDictionarySetSInt64Value(v27, *MEMORY[0x1E696CE30], a4);
  CVDictionarySetSInt32Value(v27, *MEMORY[0x1E696CFC0], a3);
  CFDictionarySetValue(v11[5], @"IOSurfaceProperties", v27);
  *a6 = 0;
  if (CVTracePools(1))
  {
    v35 = 0;
    if (a3 > 0x63)
    {
      *__str = bswap32(a3);
    }

    else
    {
      snprintf(__str, 5uLL, "%d", a3);
    }

    snprintf(valuePtr, 0x32uLL, "CVDataBuffer allocated (%lld, %s)", a4, __str);
    v31 = (*(*v11 + 3))(v11);
    v32 = (*(*v11[2] + 96))(v11[2]);
    v33 = (*(*v11[2] + 104))(v11[2]);
    CVTracePoolAction(1, v31, 0, valuePtr, v32, v33);
  }

  CFRelease(v27);
  if (*a6)
  {
    goto LABEL_27;
  }

LABEL_28:
  v29 = *MEMORY[0x1E69E9840];
  return v11;
}

CFTypeRef *CVBufferPool::init(CFTypeRef *this)
{
  v1 = this;
  v2 = CFGetAllocator(this[1]);
  v1[3] = 0;
  if (((*(*v1 + 7))(v1, v2) & 1) == 0)
  {
    (*(*v1 + 5))(v1);
    return 0;
  }

  return v1;
}

CVBunchPair **CVDataBufferPool::initBunchPair(CVDataBufferPool *this, const __CFAllocator *a2)
{
  result = CVLocklessBunchPair::alloc(a2, a2);
  if (result)
  {
    v4 = result[2];
    *(this + 2) = v4;
    v5 = *(this + 1);
    v6 = *(*v4 + 272);

    return v6();
  }

  else
  {
    *(this + 2) = 0;
  }

  return result;
}

CVBunchPair **CVLocklessBunchPair::alloc(CVLocklessBunchPair *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVLocklessBunchPair");
  }

  if (CVLocklessBunchPairGetTypeID(void)::once != -1)
  {
    CVLocklessBunchPairGetTypeID();
  }

  v3 = CVObject::alloc(kCVLocklessBunchPairID, this, 0x18, 0x100uLL);
  v4 = v3;
  if (v3)
  {
    CVBunchPair::CVBunchPair(v3[2], v3);
    *v5 = &unk_1F10880C8;
    *(v5 + 224) = 0;
    *(v5 + 232) = 0;
    *(v5 + 240) = 0;
    *(v5 + 248) = 0;
  }

  return v4;
}

void *CVLocklessBunchPair::init(void *a1)
{
  (*(*a1 + 152))(a1);
  result = CVAtomicBunchNew(0x10u, 0);
  a1[28] = result;
  if (result)
  {
    v3 = CVAtomicBunchNew(0x10u, result);
    a1[29] = v3;
    return (v3 != 0);
  }

  return result;
}

uint64_t CVLocklessBunchPair::setMaximumBufferAge(atomic_ullong *this, double a2)
{
  v3 = this + 30;
  add_explicit = atomic_fetch_add_explicit(this + 30, 0, memory_order_relaxed);
  HIDWORD(v5) = 1104006501;
  v6 = a2 * 1000000000.0;
  v7 = v6;
  if ((CVHostTimeBase::sIsInited & 1) == 0)
  {
    v6 = CVHostTimeBase::Initialize(this);
  }

  LODWORD(v6) = CVHostTimeBase::sToNanosNumerator;
  LODWORD(v5) = CVHostTimeBase::sToNanosDenominator;
  v8 = v7 / *&v6 * v5;
  v9 = add_explicit;
  atomic_compare_exchange_strong_explicit(v3, &v9, v8, memory_order_relaxed, memory_order_relaxed);
  if (v9 != add_explicit)
  {
    do
    {
      v10 = atomic_fetch_add_explicit(this + 30, 0, memory_order_relaxed);
      v11 = v10;
      atomic_compare_exchange_strong_explicit(this + 30, &v11, v8, memory_order_relaxed, memory_order_relaxed);
    }

    while (v11 != v10);
  }

  (*(*this + 136))(this);
  return 0;
}

uint64_t CVDataBufferPool::setMinimumBufferCount(CVDataBufferPool *this, uint64_t a2, const void *a3, int a4, const __CFAllocator *a5)
{
  pthread_mutex_lock((this + 56));
  v10 = *(this + 12);
  if (v10)
  {
    v11 = (*(this + 15) + 8);
    v12 = *(this + 12);
    while (*(v11 - 1) != a3)
    {
      v11 += 2;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    v16 = a2 - *v11;
    *v11 = a2;
  }

  else
  {
LABEL_5:
    v13 = *(this + 15);
    if (*(this + 13) == v10)
    {
      v14 = v10 + 16;
      *(this + 13) = v14;
      v13 = malloc_type_realloc(v13, 16 * v14, 0x10C004028F705ECuLL);
      *(this + 15) = v13;
      v10 = *(this + 12);
    }

    v15 = &v13[16 * v10];
    *v15 = a3;
    *(v15 + 1) = a2;
    *(this + 12) = v10 + 1;
    v16 = a2;
  }

  pthread_mutex_unlock((this + 56));
  result = (*(**(this + 2) + 216))(*(this + 2), a2);
  if (result)
  {
    v18 = 1;
  }

  else
  {
    v18 = a4 == 0;
  }

  if (!v18)
  {
    if (v16 < 1)
    {
      if (v16 < 0)
      {
        (*(*this + 184))(this, 1);
      }

      return 0;
    }

    else
    {
      v19 = *(*this + 160);

      return v19(this, a5, 1);
    }
  }

  return result;
}

uint64_t CVLocklessBunchPair::setMinimumBufferCount(CVLocklessBunchPair *this, uint64_t a2)
{
  do
  {
    v4 = (*(*this + 232))(this);
    v5 = (a2 - v4) << 16;
    if (a2 < v4)
    {
      v5 = 0;
    }

    v9 = (((*(this + 62) & 0xFFFF0000) + a2) & 0xFF00FFFF) + v5;
    v6 = *(this + 62);
    v7 = v6;
    atomic_compare_exchange_strong_explicit(this + 62, &v7, v9, memory_order_relaxed, memory_order_relaxed);
  }

  while (v7 != v6);
  return 0;
}

CFMutableDictionaryRef CVDictionaryCreateMutableCopy(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    return CFDictionaryCreateMutableCopy(a1, 0, theDict);
  }

  else
  {
    return CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }
}

uint64_t CVPixelBufferPool::preallocate(CVPixelBufferPool *this, const __CFAllocator *a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v6 = *(this + 2);
  v22[0] = this;
  v22[1] = v6;
  v22[2] = a2;
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
      v25 = 0;
      __str[0].__sig = 0x300000006;
      *v26 = 4;
      v9 = 0;
      if ((sysctl(__str, 2u, &v25, v26, 0, 0) & 0x80000000) == 0 && v25 >= 2)
      {
        v10 = pthread_self();
        v25 = 0;
        if (pthread_getschedparam(v10, &v25, v26))
        {
          v11 = 0;
        }

        else
        {
          v11 = __str;
          pthread_attr_init(__str);
          pthread_attr_setschedparam(__str, v26);
          pthread_attr_setschedpolicy(__str, v25);
        }

        v9 = pthread_create(&v24, v11, preAllocateThread, v22) == 0;
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
      pthread_join(v24, 0);
      v15 = v23;
      if (v23 == -6699)
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
    v16 = (*(*this + 24))(this);
    v17 = (*(**(this + 2) + 232))(*(this + 2));
    v18 = (*(**(this + 2) + 224))(*(this + 2));
    v19 = (*(**(this + 2) + 240))(*(this + 2));
    snprintf(__str, 0x96uLL, "CVPixelBufferPool::preallocate complete for pool %p, allocated %d requested %d _targetBufferCountsBitfield 0x%x \n", v16, v17, v18, v19);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 136315138;
      *&v26[4] = __str;
      _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", v26, 0xCu);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t CVDictionarySetSInt32Value(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v6 = v5;
  if (a1 && v5)
  {
    CFDictionarySetValue(a1, a2, v5);
    v7 = 0;
LABEL_5:
    CFRelease(v6);
    return v7;
  }

  v7 = 4294960634;
  if (v5)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t CVPixelBufferPoolPreAllocate(int a1, __CVPixelBufferPool *a2)
{
  CVPixelBufferPool = _getCVPixelBufferPool(a2);
  if (!CVPixelBufferPool)
  {
    return 4294960635;
  }

  v3 = *(*CVPixelBufferPool + 160);

  return v3();
}

uint64_t CVPixelBufferPool::allocateNewBacking(CVPixelBufferPool *this, const __CFAllocator *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = CVPixelBufferBacking::alloc(a2, a2);
  if (!v5)
  {
    v19 = -6660;
LABEL_14:
    v13 = (*(*this + 24))(this);
    v14 = (*(**(this + 2) + 232))(*(this + 2));
    v15 = (*(**(this + 2) + 224))(*(this + 2));
    v16 = (*(**(this + 2) + 240))(*(this + 2));
    snprintf(__str, 0x96uLL, "CVPixelBufferPool::allocateNewBacking return failure for pool %p, allocated %d requested %d _targetBufferCountsBitfield 0x%x \n", v13, v14, v15, v16);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = __str;
      _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v8 = v19;
    goto LABEL_17;
  }

  v6 = v5;
  v7 = (*(**(this + 2) + 112))(*(this + 2), 0, 0, a3);
  v19 = v7;
  if (v7)
  {
    v8 = v7;
    CFRelease(v6);
  }

  else
  {
    if ((*(*v6[2] + 248))(v6[2], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, *(this + 5), *(this + 4), 0, 0, 0, 0, &v19))
    {
      if (*(this + 136))
      {
        (*(*v6[2] + 88))(v6[2]);
      }

      (*(*v6[2] + 96))(v6[2], *(this + 2));
      (*(**(this + 2) + 88))(*(this + 2), v6[2]);
      v9 = (*(*this + 24))(this);
      v10 = (*(**(this + 2) + 96))(*(this + 2));
      v11 = (*(**(this + 2) + 104))(*(this + 2));
      CVTracePoolAction(1, v9, v6, "created", v10 + 1, v11);
    }

    v8 = v19;
  }

  if (v8 != -6699 && v8 != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t preAllocateThread(_DWORD *a1)
{
  a1[6] = 0;
  pthread_setname_np("CVPreAllocateThread");
  if (!a1[6])
  {
    do
    {
      v2 = (*(**a1 + 168))(*a1, *(a1 + 2), 1);
      a1[6] = v2;
    }

    while (!v2);
  }

  return 0;
}

{
  a1[6] = 0;
  pthread_setname_np("CVPreAllocateThread");
  if (!a1[6])
  {
    do
    {
      v2 = (*(**a1 + 168))(*a1, *(a1 + 2), 1);
      a1[6] = v2;
    }

    while (!v2);
  }

  return 0;
}

CVReturn CVMetalTextureCacheCreate(CFAllocatorRef allocator, CFDictionaryRef cacheAttributes, id metalDevice, CFDictionaryRef textureAttributes, CVMetalTextureCacheRef *cacheOut)
{
  result = -6661;
  if (metalDevice && cacheOut)
  {
    if (cacheAttributes)
    {
      v11 = CFGetTypeID(cacheAttributes);
      if (v11 != CFDictionaryGetTypeID())
      {
        return -6661;
      }
    }

    if (textureAttributes && (v12 = CFGetTypeID(textureAttributes), v12 != CFDictionaryGetTypeID()))
    {
      return -6661;
    }

    else
    {
      *cacheOut = 0;
      v13 = CVMetalTextureCache::alloc(allocator, cacheAttributes);
      if (v13 && (v14 = v13, (*(*v13[2] + 96))(v13[2], metalDevice, cacheAttributes, textureAttributes)))
      {
        result = 0;
        *cacheOut = v14;
      }

      else
      {
        return -6662;
      }
    }
  }

  return result;
}

CVBufferPool **CVMetalTextureCache::alloc(CVMetalTextureCache *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVMetalTextureCache");
  }

  if (CVMetalTextureCacheGetTypeID::once != -1)
  {
    CVMetalTextureCacheGetTypeID_cold_1();
  }

  v3 = CVObject::alloc(kCVMetalTextureCacheID, this, 0x18, 0x60uLL);
  v4 = v3;
  if (v3)
  {
    CVBufferPool::CVBufferPool(v3[2], v3);
    *v5 = &unk_1F1087680;
    v5[5] = 0;
    v5[6] = 0;
    v5[4] = 0;
  }

  return v4;
}

CFTypeRef *CVMetalTextureCache::initWithDevice(CFTypeRef *this, void *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v7 = this;
  v8 = CFGetAllocator(this[1]);
  if (!CVBufferPool::init(v7))
  {
    return 0;
  }

  v7[4] = CFRetain(a2);
  Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  v7[5] = Mutable;
  if (!Mutable)
  {
    goto LABEL_15;
  }

  v10 = CFDictionaryCreateMutable(v8, 0, 0, MEMORY[0x1E695E9E8]);
  v7[6] = v10;
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = CFDictionaryCreateMutable(v8, 0, 0, MEMORY[0x1E695E9E8]);
  v7[7] = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  v7[8] = v12;
  if (!v12)
  {
    goto LABEL_15;
  }

  if ((CVHostTimeBase::sIsInited & 1) == 0)
  {
    v13 = CVHostTimeBase::Initialize(v12);
  }

  LODWORD(v13) = CVHostTimeBase::sToNanosNumerator;
  LODWORD(v14) = CVHostTimeBase::sToNanosDenominator;
  v7[11] = (1000000000.0 / *&v13 * v14);
  if (!a3)
  {
    goto LABEL_13;
  }

  Copy = CFDictionaryCreateCopy(v8, a3);
  v7[9] = Copy;
  if (!Copy)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(Copy, @"MaximumMetalTextureAge");
  if (!Value)
  {
    goto LABEL_13;
  }

  v17 = Value;
  valuePtr = 0.0;
  v18 = CFGetTypeID(Value);
  if (v18 != CFNumberGetTypeID())
  {
LABEL_15:
    (*(*v7 + 5))(v7);
    return 0;
  }

  CFNumberGetValue(v17, kCFNumberDoubleType, &valuePtr);
  v7[11] = CVHostTimeBase::ConvertFromNanos((valuePtr * 1000000000.0), valuePtr * 1000000000.0, v19);
LABEL_13:
  if (a4)
  {
    v7[10] = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a4);
  }

  return v7;
}

CVLockingBunchPair **CVLockingBunchPair::alloc(CVLockingBunchPair *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVLockingBunchPair");
  }

  if (CVLockingBunchPairGetTypeID(void)::once != -1)
  {
    CVLockingBunchPairGetTypeID();
  }

  v3 = CVObject::alloc(kCVLockingBunchPairID, this, 0x18, 0x138uLL);
  v4 = v3;
  if (v3)
  {
    CVLockingBunchPair::CVLockingBunchPair(v3[2], v3);
  }

  return v4;
}

CVLockingBunchPair **CVBufferPool::initBunchPair(CVBufferPool *this, const __CFAllocator *a2)
{
  result = CVLockingBunchPair::alloc(a2, a2);
  if (result)
  {
    v4 = result[2];
    *(this + 2) = v4;
    v5 = *(this + 1);
    v6 = *(*v4 + 272);

    return v6();
  }

  else
  {
    *(this + 2) = 0;
  }

  return result;
}

CFMutableArrayRef CVLockingBunchPair::init(void *a1, uint64_t a2, const __CFAllocator *a3)
{
  (*(*a1 + 152))(a1);
  result = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
  a1[28] = result;
  if (result)
  {
    Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    a1[29] = Mutable;
    return (Mutable != 0);
  }

  return result;
}

unint64_t CVHostTimeBase::ConvertFromNanos(CVHostTimeBase *this, double a2, double a3)
{
  if ((CVHostTimeBase::sIsInited & 1) == 0)
  {
    a2 = CVHostTimeBase::Initialize(this);
  }

  LODWORD(a2) = CVHostTimeBase::sToNanosNumerator;
  LODWORD(a3) = CVHostTimeBase::sToNanosDenominator;
  return (this / *&a2 * *&a3);
}

void setIOSurfaceIntValue(__IOSurface *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  IOSurfaceSetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CVPixelBufferPoolScanIOSurfaces(void *a1)
{
  CVPixelBufferPool = _getCVPixelBufferPool(a1);
  if (!CVPixelBufferPool)
  {
    return 4294960635;
  }

  v2 = *(*CVPixelBufferPool + 192);

  return v2();
}

uint64_t CVLocklessBunchPair::applyFunction(CVLocklessBunchPair *this, void (*a2)(const void *, void *), void *a3, char a4)
{
  v8[0] = a2;
  v8[1] = a3;
  if ((a4 & 2) != 0)
  {
    v6 = *(this + 28);
    if (v6)
    {
      if (CVAtomicBunchApply(v6, _applyFunction, v8) == 2)
      {
        return 4294960604;
      }
    }
  }

  if ((a4 & 4) == 0)
  {
    return 0;
  }

  result = *(this + 29);
  if (result)
  {
    if (CVAtomicBunchApply(result, _applyFunction, v8) == 2)
    {
      return 4294960604;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CVPixelBufferPool::scanIOSurfaces(CVPixelBufferPool *this, void (*a2)(__IOSurface *, void *), void *a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return (*(**(this + 2) + 248))(*(this + 2), scanIOSurfacesCallback, v4);
}

uint64_t CVPixelBufferPoolCopyIOSurfaceCreationProperties(void *a1, void *a2)
{
  v5 = 0;
  CVPixelBufferPool = _getCVPixelBufferPool(a1);
  (*(*CVPixelBufferPool + 208))(CVPixelBufferPool, &v5);
  *a2 = v5;
  return 0;
}

uint64_t CVPixelBufferPool::copyDerivedIOSurfaceCreationProperties(const void **this, const __CFDictionary **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695E480];
  IntValueWithDefault = CVDictionaryGetIntValueWithDefault(this[5], @"Width", 0);
  v23 = CVDictionaryGetIntValueWithDefault(this[5], @"Height", 0);
  v22 = CVDictionaryGetIntValueWithDefault(this[5], @"ExtendedPixelsLeft", 0);
  v4 = CVDictionaryGetIntValueWithDefault(this[5], @"ExtendedPixelsTop", 0);
  v5 = CVDictionaryGetIntValueWithDefault(this[5], @"ExtendedPixelsRight", 0);
  v6 = CVDictionaryGetIntValueWithDefault(this[5], @"ExtendedPixelsBottom", 0);
  DefaultBytesPerRowAlignment = CVPixelBufferBacking::getDefaultBytesPerRowAlignment(v6);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  v26 = 0;
  PixelFormatDescription = CVPixelBufferBacking::getPixelFormatDescription(this[5], &v26, v8);
  v10 = this[4];
  if (v10)
  {
    Value = CFDictionaryGetValue(v10, @"MetalCompatibility");
    if (Value)
    {
      if (CFBooleanGetValue(Value))
      {
        DefaultBytesPerRowAlignment = 64;
        v12 = 64;
      }

      else
      {
        v12 = 16;
      }
    }

    else
    {
      v12 = 16;
    }

    v10 = this[4];
    if (v10)
    {
      v13 = CVDictionaryGetIntValueWithDefault(v10, @"WorstCaseBytesPerRow", 0);
      v14 = CVDictionaryGetIntValueWithDefault(this[4], @"AdjustableBaseAddressGranularity", 0);
      v10 = this[4];
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 16;
  }

  v15 = *v3;
  v16 = CVDictionaryGetIntValueWithDefault(v10, @"BytesPerRowAlignment", 0);
  if (v16)
  {
    DefaultBytesPerRowAlignment = CVLowestCommonMultiple(DefaultBytesPerRowAlignment, v16);
  }

  v17 = CVDictionaryGetIntValueWithDefault(this[4], @"PlaneAlignment", 0);
  if (v17)
  {
    v12 = CVLowestCommonMultiple(v12, v17);
  }

  v18 = CVLowestCommonMultiple(v12, DefaultBytesPerRowAlignment);
  *&v21 = v22;
  *(&v21 + 1) = v4;
  result = CVPixelBufferBacking::performStandardMemoryLayoutAndCopyIOSurfaceCreationProperties(0, 0, v15, this[5], this[4], 0, PixelFormatDescription, IntValueWithDefault, v23, v21, v5, v6, DefaultBytesPerRowAlignment, v18, v13, v14, 0, 0, 0, 0, v29, v28, 0, 0, 0, 0, 0, &v27, a2, v22);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CVLowestCommonMultiple(int a1, int a2)
{
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= v3)
  {
    v2 = v3;
  }

  if (v2)
  {
    if (v2 < 1)
    {
      v5 = v4;
    }

    else
    {
      do
      {
        v5 = v2;
        v2 = v4 % v2;
        v4 = v5;
      }

      while (v2);
    }
  }

  else if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return (a2 * a1 / v5);
}

uint64_t CVAtomicBunchIncreaseSizeAndReserveElement(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = 24 * a2;
  v7 = malloc_type_malloc(v6 + 8, 0x2004093837F09uLL);
  if (!v7)
  {
    return 3;
  }

  v8 = v7;
  bzero(v7, v6 + 8);
  OSAtomicEnqueue(a1, v8, 0);
  if (a3)
  {
    *a3 = v8 + 2;
    do
    {
      v9 = v8[6];
      v10 = v9;
      atomic_compare_exchange_strong_explicit(v8 + 6, &v10, (v9 | 1) + 0x10000, memory_order_relaxed, memory_order_relaxed);
    }

    while (v10 != v9);
  }

  if (a2)
  {
    v11 = 0;
    v12 = v8 + 2;
    do
    {
      do
      {
        v13 = *(a1 + 16);
        *&v12[6 * v11] = v13;
      }

      while (!CVAtomicCompareAndSwapPtrBarrier(v13, &v12[6 * v11], (a1 + 16)));
      ++v11;
    }

    while (v11 != a2);
  }

  atomic_fetch_add_explicit((a1 + 24), a2, memory_order_relaxed);
  return 1;
}

size_t CVPixelBufferGetDataSize(CVPixelBufferRef pixelBuffer)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v2 = *(**(result + 120) + 304);

    return v2();
  }

  return result;
}

void CVLockingBunchPair::CVLockingBunchPair(CVLockingBunchPair *this, const void *a2)
{
  CVBunchPair::CVBunchPair(this, a2);
  *v2 = &unk_1F1086A10;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  v3 = pthread_cond_init((v2 + 264), 0);
  if (!CVLockingBunchPair::_bufferPoolMutex)
  {
    CVLockingBunchPair::initCVBufferPoolMutex(v3);
  }
}

void CVBunchPair::CVBunchPair(CVBunchPair *this, const void *a2)
{
  CVObject::CVObject(this, a2);
  *v2 = &unk_1F1087548;
  pthread_rwlock_init((v2 + 16), 0);
}

void *__cdecl CVPixelBufferGetBaseAddress(CVPixelBufferRef pixelBuffer)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v2 = *(*result + 264);

    return v2();
  }

  return result;
}

IOSurfaceRef CVPixelBufferBacking::getBaseAddress(CVPixelBufferBacking *this, char a2)
{
  if (!*(this + 42) && (a2 & 1) != 0)
  {
    return 0;
  }

  if (*(this + 57))
  {
    return IOOrEXSurfaceGetBaseAddress(*(this + 57));
  }

  return *(this + 56);
}

CFTypeRef *CVPixelBufferPool::initWithOptions(CFTypeRef *this, const __CFDictionary *a2, const __CFDictionary *a3, int *a4)
{
  v7 = this;
  v59 = *MEMORY[0x1E69E9840];
  v8 = CFGetAllocator(this[1]);
  v54 = 0;
  v55 = 0;
  v53 = 0;
  buffer[0] = 0;
  if (!CVBufferPool::init(v7))
  {
    v7 = 0;
    *a4 = -6660;
    goto LABEL_70;
  }

  (*(*v7 + 16))(v7, 1.0);
  if (a2)
  {
    *__str = 0;
    Copy = CFDictionaryCreateCopy(v8, a2);
    v7[4] = Copy;
    if (!Copy)
    {
LABEL_67:
      v32 = -6662;
      goto LABEL_68;
    }

    Value = CFDictionaryGetValue(a2, @"MaximumBufferAge");
    if (Value)
    {
      v11 = Value;
      *valuePtr = 0;
      v12 = CFGetTypeID(Value);
      if (v12 != CFNumberGetTypeID())
      {
        goto LABEL_30;
      }

      CFNumberGetValue(v11, kCFNumberDoubleType, valuePtr);
      (*(*v7 + 16))(v7, *valuePtr);
    }

    v13 = CFDictionaryGetValue(a2, @"MinimumBufferCount");
    if (v13)
    {
      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 != CFNumberGetTypeID())
      {
        goto LABEL_30;
      }

      CFNumberGetValue(v14, kCFNumberCFIndexType, __str);
      (*(*v7 + 18))(v7, *__str, 0, 0, *MEMORY[0x1E695E480]);
    }

    v16 = CFDictionaryGetValue(a2, @"PixelBufferPoolNameKey");
    if (!v16)
    {
LABEL_15:
      v20 = CFDictionaryGetValue(a2, @"PrefetchOnAllocation");
      if (v20 && CFEqual(v20, *MEMORY[0x1E695E4D0]))
      {
        *(v7 + 136) = 1;
      }

      goto LABEL_18;
    }

    v17 = v16;
    v18 = CFGetTypeID(v16);
    if (v18 == CFStringGetTypeID())
    {
      CFRetain(v17);
      v19 = v7[3];
      if (v19)
      {
        CFRelease(v19);
      }

      v7[3] = v17;
      CFStringGetCString(v17, buffer, 256, 0x600u);
      goto LABEL_15;
    }

LABEL_30:
    v32 = -6691;
LABEL_68:
    *a4 = v32;
    goto LABEL_69;
  }

LABEL_18:
  if (!a3)
  {
    *a4 = -6682;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CVPixelBufferPool::initWithOptions();
    }

    goto LABEL_69;
  }

  v21 = CFDictionaryGetValue(a3, @"Width");
  if (!v21 || (v22 = v21, v23 = CFGetTypeID(v21), v23 != CFNumberGetTypeID()))
  {
    *a4 = -6682;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CVPixelBufferPool::initWithOptions();
    }

    goto LABEL_69;
  }

  CFNumberGetValue(v22, kCFNumberCFIndexType, &v55);
  if (v55 <= 0)
  {
    *a4 = -6682;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CVPixelBufferPool::initWithOptions();
    }

    goto LABEL_69;
  }

  v24 = CFDictionaryGetValue(a3, @"Height");
  if (!v24 || (v25 = v24, v26 = CFGetTypeID(v24), v26 != CFNumberGetTypeID()))
  {
    *a4 = -6682;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CVPixelBufferPool::initWithOptions();
    }

    goto LABEL_69;
  }

  CFNumberGetValue(v25, kCFNumberCFIndexType, &v54);
  if (v54 <= 0)
  {
    *a4 = -6682;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CVPixelBufferPool::initWithOptions();
    }

    goto LABEL_69;
  }

  v27 = CFDictionaryGetValue(a3, @"PixelFormatType");
  if (v27)
  {
    ValueAtIndex = v27;
    v29 = CFGetTypeID(v27);
    v31 = 1;
    if (v29 != CFNumberGetTypeID())
    {
      v30 = CFGetTypeID(ValueAtIndex);
      if (v30 != CFArrayGetTypeID())
      {
        v31 = 0;
      }
    }

    v33 = CFGetTypeID(ValueAtIndex);
    if (v33 != CFArrayGetTypeID() || !CFArrayGetCount(ValueAtIndex) || (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0)
    {
      v34 = CFGetTypeID(ValueAtIndex);
      if (v34 == CFNumberGetTypeID())
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &v53);
      }
    }
  }

  else
  {
    v31 = 0;
  }

  v35 = CFDictionaryGetValue(a3, @"PixelFormatDescription");
  if (v35)
  {
    v36 = CFGetTypeID(v35);
    v37 = v36 == CFDictionaryGetTypeID();
  }

  else
  {
    v37 = 0;
  }

  if (!v31 && !v37)
  {
    *a4 = -6682;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CVPixelBufferPool::initWithOptions();
    }

    goto LABEL_69;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, a3);
  v7[5] = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_67;
  }

  v39 = CFDictionaryGetValue(MutableCopy, @"IOSurfaceProperties");
  if (v39)
  {
    v40 = v39;
    v41 = CFGetTypeID(v39);
    if (v41 != CFDictionaryGetTypeID() && !forceIOSurfaceBackingByDefault())
    {
      goto LABEL_64;
    }

    v42 = CFGetTypeID(v40);
    if (v42 == CFDictionaryGetTypeID())
    {
      Mutable = CFDictionaryCreateMutableCopy(v8, 0, v40);
      goto LABEL_62;
    }
  }

  else if (!forceIOSurfaceBackingByDefault())
  {
    if (!CVIsPixelFormatCompressed(v53))
    {
      goto LABEL_64;
    }

    v51 = v53;
    v52 = HIBYTE(v53);
    *a4 = -6662;
    snprintf(__str, 0x80uLL, "CoreVideo: Error, CVPixelBufferPoolCreate() for non-IOSurface backed compressed format %c%c%c%c is not allowed.", v52, BYTE2(v51), BYTE1(v51), v51);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = __str;
      _os_log_impl(&dword_19D11B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s", valuePtr, 0xCu);
    }

LABEL_69:
    (*(*v7 + 5))(v7);
    v7 = 0;
    goto LABEL_70;
  }

  Mutable = CFDictionaryCreateMutable(v8, 0, 0, MEMORY[0x1E695E9E8]);
LABEL_62:
  v44 = Mutable;
  if (!Mutable)
  {
    goto LABEL_67;
  }

  CFDictionarySetValue(Mutable, @"IOSurfacePurgeWhenNotInUse", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(v7[5], @"IOSurfaceProperties", v44);
  CFRelease(v44);
LABEL_64:
  *a4 = 0;
  if (CVTracePools(1))
  {
    valuePtr[4] = 0;
    if (v53 > 0x63)
    {
      *valuePtr = bswap32(v53);
    }

    else
    {
      snprintf(valuePtr, 5uLL, "%d", v53);
    }

    snprintf(__str, 0x32uLL, "allocated (%d x %d, %s)", v55, v54, valuePtr);
    v47 = (*(*v7 + 3))(v7);
    v48 = (*(*v7[2] + 96))(v7[2]);
    v49 = (*(*v7[2] + 104))(v7[2]);
    CVTracePoolAction(1, v47, 0, __str, v48, v49);
  }

  v50 = v7[1];
  (*(*v7 + 3))(v7, buffer, v53, v55, v54);
  kdebug_trace();
LABEL_70:
  v45 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CVPixelBufferBacking::getHeightOfPlane(CVPixelBufferBacking *this, unint64_t a2)
{
  v2 = *(this + 130);
  if (!(a2 | v2))
  {
    return (*(*this + 280))();
  }

  if (v2 <= a2)
  {
    return 0;
  }

  return *(this + a2 + 40);
}

CVReturn CVPixelBufferLockBaseAddress(CVPixelBufferRef pixelBuffer, CVPixelBufferLockFlags lockFlags)
{
  CVPixelBuffer = _getCVPixelBuffer(pixelBuffer);
  if (!CVPixelBuffer)
  {
    return -6661;
  }

  result = (*(*CVPixelBuffer[15] + 416))(CVPixelBuffer[15], lockFlags);
  if (lockFlags != 1 && !result)
  {
    CVBufferRemoveAttachment(pixelBuffer, @"ExtendedPixelsFilledKey");
    return 0;
  }

  return result;
}

uint64_t CVPixelBufferBacking::lockBaseAddress(CVPixelBufferBacking *this, char a2)
{
  {
    CVPixelBufferBacking::lockBaseAddress(unsigned long long)::ktrace_seed = arc4random();
  }

  if (gCVKTraceEnabled)
  {
    ++CVPixelBufferBacking::lockBaseAddress(unsigned long long)::ktrace_seed;
    if (this)
    {
      v4 = (*(*this + 160))(this);
      v5 = *this;
      if (v4)
      {
        v6 = (*(v5 + 160))(this);
        IOOrEXSurfaceGetID(v6);
      }

      else
      {
        (*(v5 + 24))(this);
      }
    }

    v7 = *(this + 42);
    kdebug_trace();
  }

  pthread_mutex_lock((this + 24));
  v8 = *(this + 57);
  v9 = *(this + 42);
  if (v8 && !v9)
  {
    if (IOSurfaceLock(v8, a2 & 1, 0))
    {
      v10 = 4294960636;
      goto LABEL_15;
    }

    v9 = *(this + 42);
  }

  v10 = 0;
  *(this + 42) = v9 + 1;
LABEL_15:
  (*(*this + 224))(this);
  pthread_mutex_unlock((this + 24));
  if (gCVKTraceEnabled)
  {
    v11 = (*(*this + 160))(this);
    v12 = *this;
    if (v11)
    {
      v13 = (*(v12 + 160))(this);
      IOOrEXSurfaceGetID(v13);
    }

    else
    {
      (*(v12 + 24))(this);
    }

    v14 = *(this + 42);
    kdebug_trace();
  }

  return v10;
}

uint64_t CVImageBacking::flushCachedGLESTexture(CVImageBacking *this)
{
  result = *(this + 19);
  if (result)
  {
    result = (*(*result + 328))(result);
    *(this + 19) = 0;
  }

  return result;
}

Boolean CVPixelBufferIsPlanar(CVPixelBufferRef pixelBuffer)
{
  CVPixelBuffer = _getCVPixelBuffer(pixelBuffer);
  if (CVPixelBuffer)
  {
    v2 = *(*CVPixelBuffer[15] + 312);

    LOBYTE(CVPixelBuffer) = v2();
  }

  return CVPixelBuffer;
}

IOSurfaceRef CVPixelBufferBacking::getBaseAddressOfPlane(CVPixelBufferBacking *this, size_t a2, uint64_t a3)
{
  if (!*(this + 42) && (a3 & 1) != 0)
  {
    return 0;
  }

  v4 = *(this + 130);
  if (!(a2 | v4))
  {
    return (*(*this + 320))(this, a3);
  }

  if (v4 <= a2)
  {
    return 0;
  }

  if (*(this + 57))
  {
    return IOOrEXSurfaceGetBaseAddressOfPlane(*(this + 57), a2);
  }

  else
  {
    return *(this + a2 + 62);
  }
}

void applySetAttachments(const void *key, const void *a2, CFDictionaryRef *a3)
{
  if (a2)
  {
    Value = CFDictionaryGetValue(*a3, key);
    v7 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFDictionaryRemoveValue(*a3, key);
    v8 = CFDictionaryGetValue(a3[1], key);
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    CFDictionaryRemoveValue(a3[1], key);
    CFDictionarySetValue(a3[*(a3 + 4)], key, a2);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

size_t CVPixelBufferGetWidthOfPlane(CVPixelBufferRef pixelBuffer, size_t planeIndex)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v3 = *(**(result + 120) + 352);

    return v3();
  }

  return result;
}

size_t CVPixelBufferGetHeightOfPlane(CVPixelBufferRef pixelBuffer, size_t planeIndex)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v3 = *(**(result + 120) + 360);

    return v3();
  }

  return result;
}

uint64_t CVPixelBufferBacking::getWidthOfPlane(CVPixelBufferBacking *this, unint64_t a2)
{
  v2 = *(this + 130);
  if (!(a2 | v2))
  {
    return (*(*this + 272))();
  }

  if (v2 <= a2)
  {
    return 0;
  }

  return *(this + a2 + 24);
}

void *__cdecl CVPixelBufferGetBaseAddressOfPlane(CVPixelBufferRef pixelBuffer, size_t planeIndex)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v3 = *(**(result + 15) + 368);

    return v3();
  }

  return result;
}

size_t CVPixelBufferGetBytesPerRowOfPlane(CVPixelBufferRef pixelBuffer, size_t planeIndex)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v3 = *(**(result + 120) + 376);

    return v3();
  }

  return result;
}

IOSurfaceRef CVPixelBufferBacking::getBytesPerRowOfPlane(CVPixelBufferBacking *this, size_t a2)
{
  v2 = *(this + 130);
  if (!(a2 | v2))
  {
    return (*(*this + 296))();
  }

  if (v2 <= a2)
  {
    return 0;
  }

  if (*(this + 57))
  {
    return IOOrEXSurfaceGetBytesPerRowOfPlane(*(this + 57), a2);
  }

  return *(this + a2 + 78);
}

void *retrievePixelFormat_kCVPixelFormatType_14Bayer_GBRG(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D2E8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr10(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D1F8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_444YpCbCr10(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D220;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_4444AYpCbCrFloat(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D248;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_14Bayer_GRBG(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D270;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_14Bayer_RGGB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D298;
  }
}

uint64_t calculatePixelFormatVariantBitfieldForBiPlanarFormatOnThisDevice(int a1, int a2)
{
  if (a2)
  {
    if (areHTPCFormatsSupportedByCA())
    {
      v3 = 196608;
    }

    else
    {
      v3 = 0x10000;
    }

    if (!a1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if (!a1)
    {
      goto LABEL_19;
    }
  }

  if ((isDeviceTypeH6orH7(void)::didCheck & 1) == 0)
  {
    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      if (CFStringCompare(@"s5l8960x", v4, 0) == kCFCompareEqualTo || CFStringCompare(@"t7000", v5, 0) == kCFCompareEqualTo || CFStringCompare(@"t7001", v5, 0) == kCFCompareEqualTo)
      {
        isDeviceTypeH6orH7(void)::deviceTypeH6orH7 = 1;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      calculatePixelFormatVariantBitfieldForBiPlanarFormatOnThisDevice();
    }

    isDeviceTypeH6orH7(void)::didCheck = 1;
  }

  if (isDeviceTypeH6orH7(void)::deviceTypeH6orH7)
  {
    v3 |= 0x40000u;
  }

LABEL_19:
  result = v3 | 0x80000;
  if (doesThisDeviceSupportOpenGLES(void)::didCheck)
  {
    if (doesThisDeviceSupportOpenGLES(void)::supportOpenGLES)
    {
      return result;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    doesThisDeviceSupportOpenGLES(void)::supportOpenGLES = 1;
    doesThisDeviceSupportOpenGLES(void)::didCheck = 1;
  }

  return result;
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6058[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr8BiPlanarFullRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1E75D60B8[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_411YpCbCr8BiPlanarVideoRange(int a1)
{
  v1 = &unk_1F108D518;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 0x80000)
  {
    return &unk_1F108D4F0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_411YpCbCr8BiPlanarFullRange(int a1)
{
  v1 = &unk_1F108D568;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 0x80000)
  {
    return &unk_1F108D540;
  }

  else
  {
    return v1;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr8BiPlanarVideoRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6118[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr8BiPlanarFullRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6178[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr8BiPlanarVideoRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D61D8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr8BiPlanarFullRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6258[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr8VideoRange_8A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1E75D62D8[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_420YpCbCr8Planar(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108DC20;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_420YpCbCr8PlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108DC48;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr_4A_8BiPlanar(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108DC70;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_OneComponent32Float(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6338[a1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_TwoComponent16Half(int a1)
{
  v1 = &unk_1F108DD60;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return &unk_1F108DD38;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_TwoComponent32Float(int a1)
{
  v1 = &unk_1F108DDB0;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return &unk_1F108DD88;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_TwoComponentHalfAndOneComponentHalfBiPlanar(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108DDD8;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarFullRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 2;
  if (v1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6440[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D64C0[a1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_14Bayer_BGGR(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108D2C0;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_64RGBAHalf(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 3;
  if (v1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6370[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_ARGB2101010LEPacked(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108DFB8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_40ARGBLEWideGamutPremultiplied(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108E0D0;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 2;
  if (v1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6400[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6480[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D64A0[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedFullRange(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6598[a1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108E788;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108E7B0;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6608[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6628[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_RGBPlanarHalf(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6038[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_128RGBAFloat(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 3;
  if (v1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1E75D63B0[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_RGBPlanarFloat(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108DF90;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_30RGBLEPackedWideGamut(int a1)
{
  v1 = &unk_1F108DFE0;
  v2 = &unk_1F108E008;
  if (a1 != 12)
  {
    v2 = 0;
  }

  if (a1 != 4)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F108E030;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6520[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6540[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedVideoRange(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6560[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedWideGamut(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E75D65D0[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_40ARGBLEWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D63E0[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr10BiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D64E0[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10BiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6500[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_30RGBLE_8A_BiPlanar(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6728[a1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_160BayerPacked10_BGGR(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108ECB0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_160BayerPacked10_GRBG(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108ECD8;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6648[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6668[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6688[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D66A8[a1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_400YpCbCr10PackedVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EAA8;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr10PackedBiPlanarWideRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D66C8[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr10PackedBiPlanarWideRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D66E8[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10PackedBiPlanarWideRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6708[a1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_12BayerCompandedIn8_RGGB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EE18;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_160BayerPacked10_GBRG(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108ED28;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_96BayerPacked12_BGGR(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108ED50;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_96VersatileBayerPacked12(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108ED78;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_224BayerPacked14_BGGR(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EDA0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_160BayerPacked10_RGGB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108ED00;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_12BayerCompandedIn8_BGGR(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EDC8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_12BayerCompandedIn8_GRBG(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EDF0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1091230;
  v2 = &unk_1F1091208;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10911E0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr16BiPlanarFullRange(int a1)
{
  v1 = &unk_1F1091398;
  v2 = &unk_1F1091370;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091348;
  }

  else
  {
    return v1;
  }
}

uint64_t calculatePixelFormatVariantBitfieldForCompressedTiledFormatOnThisDevice(uint64_t a1, uint64_t a2, _DWORD *a3, char a4)
{
  v8 = shouldThisDeviceIncludeVariantCategoryIndexConditionChecker(a1, a2, a3, shouldThisDeviceIncludeVariantCategoryIndexForNonUniversalCompressionForThisPixelFormat(unsigned long,CVPixelFormatCompressionTypeAndFootprint const*,CVPixelFormatTiledAddressFormatType const*)::$_0::__invoke) != 0;
  if (shouldThisDeviceIncludeVariantCategoryIndexConditionChecker(a1, a2, a3, shouldThisDeviceIncludeVariantCategoryIndexForUniversalCompressionForThisPixelFormat(unsigned long,CVPixelFormatCompressionTypeAndFootprint const*,CVPixelFormatTiledAddressFormatType const*)::$_0::__invoke))
  {
    v9 = ((v8 & 1) << 16) | 0x20000u;
  }

  else
  {
    v9 = (v8 << 16);
  }

  if ((a4 & 0x20) != 0 && (areUniversalCompressionFormatsSupported() || areUniversalLossyCompressionFormatsSupported()))
  {
    if ((shouldSupportCAForInterchange(void)::didCheckCAForInterchange & 1) == 0)
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"support_ca_interchange", @"com.apple.corevideo", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        shouldSupportCAForInterchange(void)::supportCAForInterchange = AppBooleanValue;
        v11 = "enable";
        if (!AppBooleanValue)
        {
          v11 = "disable";
        }

        v12 = "YES";
        if (!AppBooleanValue)
        {
          v12 = "NO";
        }

        syslog(3, "CoreVideo: Will %s kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey for Interchange compressed and tiled uncompressed formats  -- thank you for setting defaults write com.apple.corevideo support_ca_interchange -BOOL %s\n", v11, v12);
      }

      shouldSupportCAForInterchange(void)::didCheckCAForInterchange = 1;
    }

    if (shouldSupportCAForInterchange(void)::supportCAForInterchange)
    {
      v9 = v9 | 0x40000;
    }

    else
    {
      v9 = v9;
    }
  }

  if ((a4 & 0x10) != 0)
  {
    if (areHTPCFormatsSupportedByCA())
    {
      return v9 | 0x80000;
    }

    else
    {
      return v9;
    }
  }

  return v9;
}

uint64_t shouldThisDeviceIncludeVariantCategoryIndexConditionChecker(uint64_t result, uint64_t a2, _DWORD *a3, unsigned int (*a4)(void, unint64_t))
{
  if (result)
  {
    v8 = result;
    do
    {
      if ((*a2 - 2) < 3 || !*a2 && *a3 == 5)
      {
        v4 = v4 & 0xFFFFFFFF00000000 | *(a2 + 8);
        if (a4(*a2, v4))
        {
          return 1;
        }
      }

      ++a3;
      a2 += 12;
      --v8;
    }

    while (v8);
    return 0;
  }

  return result;
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr16BiPlanarFullRange(int a1)
{
  v1 = &unk_1F10912A8;
  v2 = &unk_1F1091280;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091258;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr16BiPlanarFullRange(int a1)
{
  v1 = &unk_1F1091320;
  v2 = &unk_1F10912F8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10912D0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_12BayerCompandedIn8_GBRG(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EE40;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_SpecialPassthrough1(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EE68;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6908[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6928[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6948[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6968[a1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1091050;
  v2 = &unk_1F1091028;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091000;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F10910C8;
  v2 = &unk_1F10910A0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091078;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1091140;
  v2 = &unk_1F1091118;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10910F0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F10911B8;
  v2 = &unk_1F1091190;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091168;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_30RGBLE_8A_BiPlanar(int a1)
{
  v1 = &unk_1F1091848;
  v2 = &unk_1F1091820;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10917F8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_30RGBLEFullRange_8A_BiPlanar(int a1)
{
  v1 = &unk_1F10918C0;
  v2 = &unk_1F1091898;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091870;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent12(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F10918E8;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_TwoComponent8(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1091910;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr8VideoRange_8A_TriPlanar(int a1)
{
  v1 = &unk_1F1091988;
  v2 = &unk_1F1091960;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091938;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8VideoRange_8A_TriPlanar(int a1)
{
  v1 = &unk_1F1091A00;
  v2 = &unk_1F10919D8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10919B0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr8VideoRange_8A_TriPlanar(int a1)
{
  v1 = &unk_1F1091A78;
  v2 = &unk_1F1091A50;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091A28;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange_16A_TriPlanar(int a1)
{
  v1 = &unk_1F1091AF0;
  v2 = &unk_1F1091AC8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091AA0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr12PackedVideoRange_16A_TriPlanar(int a1)
{
  v1 = &unk_1F1091B68;
  v2 = &unk_1F1091B40;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091B18;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr16VideoRange_16A_TriPlanar(int a1)
{
  v1 = &unk_1F1091BE0;
  v2 = &unk_1F1091BB8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091B90;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedVideoRange_16A_TriPlanar(int a1)
{
  v1 = &unk_1F1091C58;
  v2 = &unk_1F1091C30;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091C08;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_SpecialPassthrough2(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EE90;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_SpecialPassthrough3(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EEB8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_64RGBALE(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108EEE0;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6748[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6768[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6788[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D67A8[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D67C8[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D67E8[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr12BiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6808[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr12BiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6828[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr12BiPlanarWideGamut(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6848[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6868[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6888[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr12PackedBiPlanarVideoRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D68A8[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr12PackedBiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D68C8[a1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr12PackedBiPlanarFullRange(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1E75D68E8[a1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC128x1_14Bayer_BGGR(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F778;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_32BGRA_Universal(int a1)
{
  v1 = &unk_1F108FFE8;
  v2 = &unk_1F108FFC0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F108FF98;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_30RGBLEPackedWideGamut_Universal(int a1)
{
  v1 = &unk_1F1090100;
  v2 = &unk_1F10900D8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10900B0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_40ARGBLEWideGamut_Universal(int a1)
{
  v1 = &unk_1F1090218;
  v2 = &unk_1F10901F0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10901C8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent8_Universal(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1090308;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent10_Universal(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1090380;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_64RGBAHalf_Universal(int a1)
{
  v1 = &unk_1F1090498;
  v2 = &unk_1F1090470;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090448;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarVideoRange_Universal(int a1)
{
  v1 = &unk_1F10905B0;
  v2 = &unk_1F1090588;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090560;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarVideoRange_Universal(int a1)
{
  v1 = &unk_1F10906C8;
  v2 = &unk_1F10906A0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090678;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarVideoRange_Universal(int a1)
{
  v1 = &unk_1F10907E0;
  v2 = &unk_1F10907B8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090790;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr8BiPlanarFullRange_Universal(int a1)
{
  v1 = &unk_1F10908F8;
  v2 = &unk_1F10908D0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10908A8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8BiPlanarFullRange_Universal(int a1)
{
  v1 = &unk_1F1090A10;
  v2 = &unk_1F10909E8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10909C0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr8BiPlanarFullRange_Universal(int a1)
{
  v1 = &unk_1F1090B28;
  v2 = &unk_1F1090B00;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090AD8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1090BA0;
  v2 = &unk_1F1090B78;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090B50;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1090C18;
  v2 = &unk_1F1090BF0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090BC8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1090C90;
  v2 = &unk_1F1090C68;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090C40;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1090D08;
  v2 = &unk_1F1090CE0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090CB8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1090D80;
  v2 = &unk_1F1090D58;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090D30;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1090DF8;
  v2 = &unk_1F1090DD0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090DA8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr10PackedBiPlanarWideRange(int a1)
{
  v1 = &unk_1F1090E70;
  v2 = &unk_1F1090E48;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090E20;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10PackedBiPlanarWideRange(int a1)
{
  v1 = &unk_1F1090EE8;
  v2 = &unk_1F1090EC0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090E98;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedBiPlanarWideRange(int a1)
{
  v1 = &unk_1F1090F60;
  v2 = &unk_1F1090F38;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090F10;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr12PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1090FD8;
  v2 = &unk_1F1090FB0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1090F88;
  }

  else
  {
    return v1;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr16VideoRange_16A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6EE8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr10VideoRange_8A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6F68[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr10VideoRange_8A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6FE8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10VideoRange_8A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D7068[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr16BiPlanarVideoRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D70E8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr16BiPlanarVideoRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D7168[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr16BiPlanarVideoRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D71E8[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_64RGBA_DownscaledProResRAW(int a1)
{
  v1 = &unk_1F1094FE8;
  v2 = &unk_1F1095010;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F1095038;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_30RGB_DownscaledBayer(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1095060;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_420YpCbCrFloat16BiPlanarFullRange(int a1)
{
  v1 = &unk_1F1095088;
  v2 = &unk_1F10950B0;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F10950D8;
  }
}

void initCVBufferKeyToIOSurfaceKeyDictionary(void)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *keys = 0u;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v2 = 0;
  v3 = &byte_1E75D3F98;
  do
  {
    v4 = *(v3 - 1);
    keys[v2] = **(v3 - 2);
    v5 = *v4;
    *(v9 + v2 * 8) = *v4;
    if (!*v3)
    {
      CFArrayAppendValue(Mutable, v5);
    }

    v3 += 24;
    ++v2;
  }

  while (v2 != 31);
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  cvBufferKeyToIOSurfaceKeyDictionary = CFDictionaryCreate(v0, keys, v9, 31, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  iosurfaceKeyToCVBufferKeyDictionary = CFDictionaryCreate(v0, v9, keys, 31, v6, v7);
  IOSurfaceSetCoreVideoBridgedKeys();
  CFRelease(Mutable);
  v8 = *MEMORY[0x1E69E9840];
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_OneComponent8(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092C20;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_OneComponent8(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092C48;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_TwoComponent8(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092C70;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_TwoComponent8(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092C98;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1092540;
  v2 = &unk_1F1092518;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10924F0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F10925B8;
  v2 = &unk_1F1092590;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092568;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1092630;
  v2 = &unk_1F1092608;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10925E0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F10926A8;
  v2 = &unk_1F1092680;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092658;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1092720;
  v2 = &unk_1F10926F8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10926D0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1092798;
  v2 = &unk_1F1092770;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092748;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_422YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1092810;
  v2 = &unk_1F10927E8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10927C0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1092888;
  v2 = &unk_1F1092860;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092838;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_422YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F1092900;
  v2 = &unk_1F10928D8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10928B0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_32BGRA(int a1)
{
  v1 = &unk_1F1092AE0;
  v2 = &unk_1F1092AB8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092A90;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1092978;
  v2 = &unk_1F1092950;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092928;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_422YpCbCr10PackedBiPlanarFullRange(int a1)
{
  v1 = &unk_1F10929F0;
  v2 = &unk_1F10929C8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10929A0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_32BGRA(int a1)
{
  v1 = &unk_1F1092A68;
  v2 = &unk_1F1092A40;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092A18;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_32BGRA(int a1)
{
  v1 = &unk_1F1092B58;
  v2 = &unk_1F1092B30;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092B08;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_OneComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092B80;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_OneComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092BA8;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_OneComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092BD0;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_OneComponent8(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092BF8;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr16BiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1091410;
  v2 = &unk_1F10913E8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10913C0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr16BiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1091488;
  v2 = &unk_1F1091460;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091438;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr16BiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1091500;
  v2 = &unk_1F10914D8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10914B0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedVideoRange(int a1)
{
  v1 = &unk_1F1091578;
  v2 = &unk_1F1091550;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091528;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10PackedFullRange(int a1)
{
  v1 = &unk_1F10915F0;
  v2 = &unk_1F10915C8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10915A0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8VideoRange(int a1)
{
  v1 = &unk_1F1091668;
  v2 = &unk_1F1091640;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091618;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr8FullRange(int a1)
{
  v1 = &unk_1F10916E0;
  v2 = &unk_1F10916B8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091690;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent16(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1091708;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_OneComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1091730;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_TwoComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1091758;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_ARGB2101010LEPacked(int a1)
{
  v1 = &unk_1F10917D0;
  v2 = &unk_1F10917A8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091780;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_444YpCbCr10VideoRange_8A_TriPlanar(int a1)
{
  v1 = &unk_1F1091EB0;
  v2 = &unk_1F1091E88;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091E60;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr10VideoRange_8A_TriPlanar(int a1)
{
  v1 = &unk_1F1091E38;
  v2 = &unk_1F1091E10;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091DE8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr16VideoRange_16A_TriPlanar(int a1)
{
  v1 = &unk_1F1091D48;
  v2 = &unk_1F1091D20;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091CF8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_420YpCbCr10VideoRange_8A_TriPlanar(int a1)
{
  v1 = &unk_1F1091DC0;
  v2 = &unk_1F1091D98;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091D70;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_AGX_422YpCbCr12PackedVideoRange_16A_TriPlanar(int a1)
{
  v1 = &unk_1F1091CD0;
  v2 = &unk_1F1091CA8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1091C80;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1091F00;
  if (a1 != 0x20000)
  {
    v1 = 0;
  }

  if (a1 == 0x10000)
  {
    return &unk_1F1091ED8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossless_RegroupedSenselArray10CompandedIn8(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092040;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarFullRange(int a1)
{
  v1 = &unk_1F10921F8;
  v2 = &unk_1F10921D0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10921A8;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCrFloat16BiPlanarFullRange(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092248;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossless_RegroupedSenselArray12CompandedIn8(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092018;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr8BiPlanarVideoRange(int a1)
{
  v1 = &unk_1F1092180;
  v2 = &unk_1F1092158;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092130;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCrFloat16BiPlanarFullRange(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092220;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCrFloat16BiPlanarFullRange(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092270;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarVideoRange(int a1)
{
  v1 = &unk_1F10922E8;
  v2 = &unk_1F10922C0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092298;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_420YpCbCr8BiPlanarFullRange(int a1)
{
  v1 = &unk_1F1092360;
  v2 = &unk_1F1092338;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092310;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_MultiSlice_UncompressedTiled_OneComponent16Half(int a1)
{
  v1 = &unk_1F1092108;
  if (a1 != 0x20000)
  {
    v1 = 0;
  }

  if (a1 == 0x10000)
  {
    return &unk_1F10920E0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_MultiSlice_Lossless_OneComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F10920B8;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossless_64SixteenRegroupedSenselArray(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092068;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossless_DisparityFloat16(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092090;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossless_420YpCbCrFloat16BiPlanarFullRange(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1091F78;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_UncompressedTiled_420YpCbCr8BiPlanarFullRange(int a1)
{
  v1 = &unk_1F1091F50;
  if (a1 != 0x20000)
  {
    v1 = 0;
  }

  if (a1 == 0x10000)
  {
    return &unk_1F1091F28;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossless_422YpCbCrFloat16BiPlanarFullRange(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1091FA0;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossless_64HalfRegroupedSenselArray(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1091FF0;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossless_444YpCbCrFloat16BiPlanarFullRange(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1091FC8;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarVideoRange(int a1)
{
  v1 = &unk_1F10923D8;
  v2 = &unk_1F10923B0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092388;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_420YpCbCr8BiPlanarFullRange(int a1)
{
  v1 = &unk_1F1092450;
  v2 = &unk_1F1092428;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092400;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_420YpCbCr10PackedBiPlanarVideoRange(int a1)
{
  v1 = &unk_1F10924C8;
  v2 = &unk_1F10924A0;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092478;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_TwoComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092CC0;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_TwoComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092CE8;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_TwoComponent16Half(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092D10;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_64RGBAHalf(int a1)
{
  v1 = &unk_1F1092D88;
  v2 = &unk_1F1092D60;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092D38;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_64RGBAHalf(int a1)
{
  v1 = &unk_1F1092E00;
  v2 = &unk_1F1092DD8;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092DB0;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_64HalfRegroupedSenselArray(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092EF0;
  }

  else
  {
    return 0;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr8VideoRange_8A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6B68[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr8VideoRange_8A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6BE8[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_444YpCbCr8PackedFullRange(int a1)
{
  v1 = &unk_1F10932D8;
  v2 = &unk_1F1093300;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F1093328;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr10VideoRange_16A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6C68[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy50_64RGBAHalf(int a1)
{
  v1 = &unk_1F1092E78;
  v2 = &unk_1F1092E50;
  if (a1 != 0x40000)
  {
    v2 = 0;
  }

  if (a1 != 393216)
  {
    v1 = v2;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1092E28;
  }

  else
  {
    return v1;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr12VideoRange_16A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6CE8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr16VideoRange_16A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6D68[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr10VideoRange_16A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6DE8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr12VideoRange_16A_TriPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D6E68[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_444YpCbCrFloat16BiPlanarFullRange(int a1)
{
  v1 = &unk_1F1095178;
  v2 = &unk_1F10951A0;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F10951C8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_OneComponent10_Packed88882222(int a1)
{
  v1 = &unk_1F10951F0;
  v2 = &unk_1F1095218;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F1095240;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_420YpCbCr16BiPlanarFullRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D7268[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_422YpCbCr16BiPlanarFullRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D72E8[v1];
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_444YpCbCr16BiPlanarFullRange(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D7368[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy75_64HalfRegroupedSenselArray(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092EA0;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_Lossy62_64HalfRegroupedSenselArray(int a1)
{
  if (a1 == 0x20000)
  {
    return &unk_1F1092EC8;
  }

  else
  {
    return 0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_12RLSB_12G12BMSB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1094F70;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16VersatileBayer(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1094F98;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16VersatileBayerQuadPlanar(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1094FC0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_422YpCbCrFloat16BiPlanarFullRange(int a1)
{
  v1 = &unk_1F1095100;
  v2 = &unk_1F1095128;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F1095150;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_VersatileSenselArrayUnpacked10LSB(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1095268;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_VersatileSenselArrayPacked10_88882222(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1095290;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16HalfVersatileSenselArray(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F10952B8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_64HalfRegroupedSenselArray(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F10952E0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_16HalfVersatileSenselArrayQuadPlanar(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1095308;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_VersatileSenselArray12CompandedIn8(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1095330;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_VersatileSenselArray10CompandedIn8(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1095358;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_48RGBLE(int a1)
{
  v1 = &unk_1F1095380;
  v2 = &unk_1F10953A8;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F10953D0;
  }
}

uint64_t retrievePixelFormat_kCVPixelFormatType_30RGBLEFullRange_8A_BiPlanar(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 > 0xF)
  {
    return 0;
  }

  else
  {
    return qword_1E75D73E8[v1];
  }
}

void *retrievePixelFormat_kCVPixelFormatType_40ARGBLEFullRange(int a1)
{
  v1 = &unk_1F10955D8;
  v2 = &unk_1F1095600;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F1095628;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_OneComponent1(int a1)
{
  v1 = &unk_1F1095650;
  v2 = &unk_1F1095678;
  if (a1 != 196608)
  {
    v2 = 0;
  }

  if (a1 != 0x10000)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return &unk_1F10956A0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_1VersatileSensel(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F10956C8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_12RGBLEPacked_R12L(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F10956F0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_12RGBPacked_R12B(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F1095718;
  }
}

BOOL CVAtomicCompareAndSwapPtrBarrier(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong(a3, &v3, a2);
  return v3 == a1;
}

CVReturn CVPixelBufferUnlockBaseAddress(CVPixelBufferRef pixelBuffer, CVPixelBufferLockFlags unlockFlags)
{
  CVPixelBuffer = _getCVPixelBuffer(pixelBuffer);
  if (!CVPixelBuffer)
  {
    return -6661;
  }

  v3 = *(*CVPixelBuffer[15] + 424);

  return v3();
}

uint64_t CVPixelBufferBacking::unlockBaseAddress(CVPixelBufferBacking *this, char a2)
{
  pthread_mutex_lock((this + 24));
  v4 = *(this + 42);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 != v5)
  {
    v9 = 4294960636;
  }

  else
  {
    *(this + 42) = v6;
    v7 = *(this + 57);
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      if (IOSurfaceUnlock(v7, a2 & 1, 0))
      {
        v9 = 4294960636;
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
  }

  pthread_mutex_unlock((this + 24));
  if (gCVKTraceEnabled)
  {
    v10 = (*(*this + 160))(this);
    v11 = *this;
    if (v10)
    {
      v12 = (*(v11 + 160))(this);
      IOOrEXSurfaceGetID(v12);
    }

    else
    {
      (*(v11 + 24))(this);
    }

    v13 = *(this + 42);
    kdebug_trace();
  }

  return v9;
}

size_t CVPixelBufferGetBytesPerRow(CVPixelBufferRef pixelBuffer)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v2 = *(**(result + 120) + 296);

    return v2();
  }

  return result;
}

CVPixelBufferPool **CVPixelBufferPool::alloc(CVPixelBufferPool *this, const __CFAllocator *a2)
{
  if (_cvUseTrackingAllocator)
  {
    this = _cvTrackingGetCFAllocator(@"CVPixelBufferPool");
  }

  if (CVPixelBufferPoolGetTypeID::once != -1)
  {
    CVPixelBufferPoolGetTypeID_cold_1();
  }

  v3 = CVObject::alloc(kCVPixelBufferPoolID, this, 0x18, 0x90uLL);
  v4 = v3;
  if (v3)
  {
    CVPixelBufferPool::CVPixelBufferPool(v3[2], v3);
  }

  return v4;
}

CVReturn CVPixelBufferPoolCreate(CFAllocatorRef allocator, CFDictionaryRef poolAttributes, CFDictionaryRef pixelBufferAttributes, CVPixelBufferPoolRef *poolOut)
{
  v10 = -6660;
  if (!poolOut)
  {
    return -6661;
  }

  *poolOut = 0;
  v7 = CVPixelBufferPool::alloc(allocator, poolAttributes);
  if (!v7)
  {
    return -6662;
  }

  v8 = v7;
  if (!(*(*v7[2] + 96))(v7[2], poolAttributes, pixelBufferAttributes, &v10))
  {
    return v10;
  }

  result = 0;
  *poolOut = v8;
  return result;
}

void CVPixelBufferPool::CVPixelBufferPool(CVPixelBufferPool *this, const void *a2)
{
  CVBufferPool::CVBufferPool(this, a2);
  *v3 = &unk_1F1087198;
  v3[4] = 0;
  v3[5] = 0;
  if ((shouldPrefetchOnAllocationByDefault(void)::sDidCheck & 1) == 0)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"pool_prefetch", @"com.apple.corevideo", 0);
    shouldPrefetchOnAllocationByDefault(void)::sShouldPrefetchOnAllocation = AppBooleanValue;
    if (AppBooleanValue)
    {
      syslog(3, "CoreVideo: Will enable CVPixelBufferPool allocation prefetch by default -- thank you for setting defaults write com.apple.corevideo pool_prefetch -BOOL YES\n");
    }

    shouldPrefetchOnAllocationByDefault(void)::sDidCheck = 1;
  }

  *(this + 136) = shouldPrefetchOnAllocationByDefault(void)::sShouldPrefetchOnAllocation;
  pthread_mutex_init(this + 1, 0);
  *(this + 15) = 16;
  *(this + 16) = malloc_type_calloc(1uLL, 0x100uLL, 0x10C004028F705ECuLL);
}

CVBunchPair **CVPixelBufferPool::initBunchPair(CVPixelBufferPool *this, const __CFAllocator *a2)
{
  result = CVLocklessBunchPair::alloc(a2, a2);
  if (result)
  {
    v4 = result[2];
    *(this + 2) = v4;
    v5 = *(this + 1);
    v6 = *(*v4 + 272);

    return v6();
  }

  else
  {
    *(this + 2) = 0;
  }

  return result;
}

void *CVAtomicBunchNew(unsigned int a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B00403F1EF37AuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    if (a2)
    {
      v6 = *(a2 + 32);
      if (v6 != (a2 + 28))
      {
        CVAtomicBunchNew();
      }

      v7 = 16;
    }

    else
    {
      v7 = 0;
      v6 = v4 + 28;
    }

    v4[4] = v6;
    *(v4 + 40) = v7;
    CVAtomicBunchIncreaseSizeAndReserveElement(v4, a1, 0);
  }

  return v5;
}

void CVLocklessBunchPair::setBufferPool(uint64_t a1, unint64_t a2)
{
  do
  {
    v2 = *(a1 + 216);
    v3 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 216), &v3, a2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
}

CVReturn CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(CFAllocatorRef allocator, CVPixelBufferPoolRef pixelBufferPool, CFDictionaryRef auxAttributes, CVPixelBufferRef *pixelBufferOut)
{
  v10 = -6660;
  CVPixelBufferPool = _getCVPixelBufferPool(pixelBufferPool);
  v8 = -6661;
  if (pixelBufferOut && CVPixelBufferPool)
  {
    *pixelBufferOut = (*(*CVPixelBufferPool + 104))(CVPixelBufferPool, allocator, auxAttributes, &v10);
    return v10;
  }

  return v8;
}

size_t CVPixelBufferGetPlaneCount(CVPixelBufferRef pixelBuffer)
{
  result = _getCVPixelBuffer(pixelBuffer);
  if (result)
  {
    v2 = *(**(result + 120) + 344);

    return v2();
  }

  return result;
}

void *retrievePixelFormat_kCVPixelFormatType_FixedPointUnsigned13_3(int a1)
{
  v1 = &unk_1F1095768;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1095740;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_FixedPointUnsigned11_5(int a1)
{
  v1 = &unk_1F10957B8;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F1095790;
  }

  else
  {
    return v1;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_FixedPointSigned7_5(int a1)
{
  v1 = &unk_1F1095808;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 0x20000)
  {
    return &unk_1F10957E0;
  }

  else
  {
    return v1;
  }
}

CFTypeRef CVPixelBufferGlobalCacheCreateOrCopyPropertyListFromColorSpace(CGColorSpace *a1)
{
  pthread_mutex_lock(&sCVPixelBufferGlobalCache_Mutex);
  if (sCVPixelBufferGlobalCache_ColorSpace == a1 || a1 && sCVPixelBufferGlobalCache_ColorSpace && CFEqual(sCVPixelBufferGlobalCache_ColorSpace, a1))
  {
    if (sCVPixelBufferGlobalCache_CFPropertyList)
    {
      v2 = CFRetain(sCVPixelBufferGlobalCache_CFPropertyList);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v3 = CGColorSpaceCopyPropertyList(a1);
    v2 = v3;
    if (a1 && v3)
    {
      CFRetain(a1);
      if (sCVPixelBufferGlobalCache_ColorSpace)
      {
        CFRelease(sCVPixelBufferGlobalCache_ColorSpace);
      }

      sCVPixelBufferGlobalCache_ColorSpace = a1;
      CFRetain(v2);
      if (sCVPixelBufferGlobalCache_CFPropertyList)
      {
        CFRelease(sCVPixelBufferGlobalCache_CFPropertyList);
      }

      sCVPixelBufferGlobalCache_CFPropertyList = v2;
    }
  }

  pthread_mutex_unlock(&sCVPixelBufferGlobalCache_Mutex);
  return v2;
}

void setCGColorSpaceID(__IOSurface *a1, const void *a2)
{
  if (_os_feature_enabled_impl())
  {
    valuePtr = 0;
    if (a2 && (TypeID = CGColorSpaceGetTypeID(), TypeID == CFGetTypeID(a2)) && (valuePtr = CGColorSpaceGetID()) != 0 && (v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr)) != 0)
    {
      v6 = v5;
      IOSurfaceSetValue(a1, *MEMORY[0x1E696CEE8], v5);
      CFRelease(v6);
    }

    else
    {
      IOSurfaceRemoveValue(a1, *MEMORY[0x1E696CEE8]);
    }
  }
}

void *CVPixelBufferGetAttributes(void *a1)
{
  result = _getCVPixelBuffer(a1);
  if (result)
  {
    v2 = *(*result[15] + 256);

    return v2();
  }

  return result;
}

IOSurfaceRef IOOrEXSurfaceGetBytesPerElement(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetBytesPerElement(buffer);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetElementWidth(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetElementWidth(buffer);
  }

  return buffer;
}

IOSurfaceRef IOOrEXSurfaceGetElementHeight(IOSurfaceRef buffer)
{
  if (buffer)
  {
    return IOSurfaceGetElementHeight(buffer);
  }

  return buffer;
}

void CVBufferPropagateAttachments(CVBufferRef sourceBuffer, CVBufferRef destinationBuffer)
{
  CVBuffer = _getCVBuffer(sourceBuffer);
  v4 = _getCVBuffer(destinationBuffer);
  if (CVBuffer)
  {
    if (v4)
    {
      if (CVBuffer != v4)
      {
        v5 = (*(*CVBuffer + 72))(CVBuffer, 1);
        if (v5)
        {
          v6 = v5;
          v7 = _getCVBuffer(destinationBuffer);
          if (v7 && (*(*v7 + 88))(v7, @"ProResRAW_BayerPattern"))
          {
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
            CFDictionaryRemoveValue(MutableCopy, @"ProResRAW_BayerPattern");
            v9 = _getCVBuffer(destinationBuffer);
            if (v9)
            {
              (*(*v9 + 136))(v9, MutableCopy, 1);
            }

            CFRelease(MutableCopy);
          }

          else
          {
            v10 = _getCVBuffer(destinationBuffer);
            if (v10)
            {
              (*(*v10 + 136))(v10, v6, 1);
            }
          }

          CFRelease(v6);
        }
      }
    }
  }
}

CGColorSpaceRef CVImageBufferCreateColorSpaceFromAttachments(CFDictionaryRef attachments)
{
  v83 = *MEMORY[0x1E69E9840];
  if ((CVImageBufferCreateColorSpaceFromAttachments::sDidCheck & 1) == 0)
  {
    CVImageBufferCreateColorSpaceFromAttachments::sForceColorSyncOff = CFPreferencesGetAppBooleanValue(@"force_colorsync_off", @"com.apple.corevideo", 0) != 0;
    CVImageBufferCreateColorSpaceFromAttachments::sUseCGConstColorSpace = CFPreferencesGetAppBooleanValue(@"use_cg_const_colorspaces", @"com.apple.corevideo", 0) != 0;
    CVImageBufferCreateColorSpaceFromAttachments::sDidCheck = 1;
  }

  if (CVImageBufferCreateColorSpaceFromAttachments::sForceColorSyncOff)
  {
    goto LABEL_4;
  }

  Value = CFDictionaryGetValue(attachments, @"CVImageBufferICCProfile");
  if (!Value || (v4 = Value, v5 = CFGetTypeID(Value), v5 != CFDataGetTypeID()) || CFDataGetLength(v4) < 1)
  {
    v11 = CVImageBufferCreateColorSpaceFromAttachments::sUseCGConstColorSpace;
    v66 = 0;
    v67[1] = 0;
    v67[0] = 0x3FFCCCCCCCCCCCCDLL;
    v67[2] = 0x3FF0000000000000;
    v67[3] = 0;
    valuePtr = 0.0;
    memset(bytes, 0, 32);
    v12 = CFDictionaryGetValue(attachments, @"CVImageBufferGammaLevel");
    v13 = CFDictionaryGetValue(attachments, @"CVImageBufferColorPrimaries");
    v14 = CFDictionaryGetValue(attachments, @"CVImageBufferTransferFunction");
    v15 = CFDictionaryGetValue(attachments, @"CVImageBufferYCbCrMatrix");
    IntValueWithDefault = CVDictionaryGetIntValueWithDefault(attachments, @"PixelFormatType", 0);
    v17 = *MEMORY[0x1E695E480];
    v18 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], IntValueWithDefault);
    v19 = v18;
    v20 = 0;
    if (v13)
    {
      cf1 = v15;
      v21 = 0;
      MutableCopy = 0;
      ICCBased = 0;
      if (v14)
      {
        if (CVDictionaryGetBoolValueWithDefault(v18, @"ContainsGrayscale", 0) && (CFEqual(v13, @"ITU_R_709_2") && CFEqual(v14, @"Linear") || CFEqual(v13, @"P3_D65") && CFEqual(v14, @"Linear")))
        {
          v23 = MEMORY[0x1E695F1A0];
LABEL_63:
          ICCBased = CGColorSpaceCreateWithName(*v23);
          v20 = 0;
          v21 = 0;
          MutableCopy = 0;
          goto LABEL_64;
        }

        if (CFEqual(v13, @"P3_D65") && CFEqual(v14, @"Linear"))
        {
          v23 = MEMORY[0x1E695F0F0];
          goto LABEL_63;
        }

        if (CFEqual(v13, @"P3_D65") && CFEqual(v14, @"SMPTE_ST_2084_PQ"))
        {
          v23 = MEMORY[0x1E695F0D0];
          goto LABEL_63;
        }

        if (CFEqual(v13, @"P3_D65") && CFEqual(v14, @"ITU_R_2100_HLG"))
        {
          v23 = MEMORY[0x1E695F0C0];
          goto LABEL_63;
        }

        if (CFEqual(v13, @"ITU_R_2020") && CFEqual(v14, @"Linear"))
        {
          v23 = MEMORY[0x1E695F100];
          goto LABEL_63;
        }

        if (CFEqual(v13, @"ITU_R_2020") && CFEqual(v14, @"ITU_R_2100_HLG"))
        {
          v23 = MEMORY[0x1E695F170];
          goto LABEL_63;
        }

        if (CFEqual(v13, @"ITU_R_2020") && CFEqual(v14, @"SMPTE_ST_2084_PQ"))
        {
          v23 = MEMORY[0x1E695F178];
          goto LABEL_63;
        }

        if (CFEqual(v13, @"ITU_R_709_2") && CFEqual(v14, @"ITU_R_709_2"))
        {
          v23 = MEMORY[0x1E695F0A8];
          goto LABEL_63;
        }

        if (v11)
        {
          if (CFEqual(v13, @"ITU_R_709_2") && CFEqual(v14, @"ITU_R_709_2") || CFEqual(v13, @"ITU_R_709_2") && CFEqual(v14, @"ITU_R_2020"))
          {
            v23 = MEMORY[0x1E695F180];
            goto LABEL_63;
          }

          if (CFEqual(v13, @"ITU_R_709_2") && (CFEqual(v14, @"IEC_sRGB") || CFEqual(v14, @"sRGB")))
          {
            v23 = MEMORY[0x1E695F1C0];
            goto LABEL_63;
          }

          if (CFEqual(v13, @"ITU_R_709_2") && CFEqual(v14, @"Linear"))
          {
            v23 = MEMORY[0x1E695F1B0];
            goto LABEL_63;
          }

          if (CFEqual(v13, @"P3_D65") && (CFEqual(v14, @"IEC_sRGB") || CFEqual(v14, @"sRGB")))
          {
LABEL_57:
            v23 = MEMORY[0x1E695F0B8];
            goto LABEL_63;
          }

          if (CFEqual(v13, @"ITU_R_2020") && CFEqual(v14, @"ITU_R_2020") || CFEqual(v13, @"ITU_R_2020") && CFEqual(v14, @"ITU_R_709_2"))
          {
            v23 = MEMORY[0x1E695F150];
            goto LABEL_63;
          }

          if (CFEqual(v13, @"DCI_P3") && CFEqual(v14, @"SMPTE_ST_428_1"))
          {
            v23 = MEMORY[0x1E695F0B0];
            goto LABEL_63;
          }
        }

        if (CFEqual(v13, @"ITU_R_709_2"))
        {
          v60 = 1;
          v26 = &kQTPrimaries_ITU_R709_2_Info;
          goto LABEL_91;
        }

        if (CFEqual(v13, @"EBU_3213"))
        {
          v60 = 5;
          v26 = &kQTPrimaries_EBU_3213_Info;
          goto LABEL_91;
        }

        if (CFEqual(v13, @"SMPTE_C"))
        {
          v60 = 6;
          v26 = &kQTPrimaries_SMPTE_C_Info;
          goto LABEL_91;
        }

        if (CFEqual(v13, @"P22"))
        {
          v27 = 22;
LABEL_86:
          v60 = v27;
          v26 = &kQTPrimaries_GenericRGB_Info;
          goto LABEL_91;
        }

        if (CFEqual(v13, @"ITU_R_2020"))
        {
          v60 = 9;
          v26 = &kQTPrimaries_ITU_R_2020_Info;
        }

        else if (CFEqual(v13, @"DCI_P3"))
        {
          v60 = 11;
          v26 = &kQTPrimaries_DCI_P3_Info;
        }

        else
        {
          if (!CFEqual(v13, @"P3_D65"))
          {
            v27 = 2;
            goto LABEL_86;
          }

          if (CFEqual(v14, @"ITU_R_709_2"))
          {
            goto LABEL_57;
          }

          v60 = 12;
          v26 = &kQTPrimaries_P3_D65_Info;
        }

LABEL_91:
        v62 = v26;
        if (CFEqual(v14, @"ITU_R_709_2"))
        {
          if (v11)
          {
            v28 = &kCVCGTransferFunction_CG709_Info;
          }

          else
          {
            v28 = &kQTTransferFunction_ITU_R2020_Info;
          }

          v61 = 1;
          goto LABEL_101;
        }

        if (CFEqual(v14, @"SMPTE_240M_1995"))
        {
          v29 = 7;
        }

        else
        {
          if (!CFEqual(v14, @"ITU_R_2020"))
          {
            if (CFEqual(v14, @"SMPTE_ST_428_1"))
            {
              v61 = 17;
              v28 = &kQTTransferFunction_SMPTE_ST_428_1_Info;
            }

            else if (CFEqual(v14, @"Linear"))
            {
              v61 = 8;
              v28 = &kCVTransferFunction_Linear_Info;
            }

            else if (CFEqual(v14, @"IEC_sRGB") || CFEqual(v14, @"sRGB"))
            {
              v61 = 13;
              v28 = &kCVCGTransferFunction_sRGB_Info;
            }

            else
            {
              v61 = 2;
              v28 = &kQTTransferFunction_GenericRGB_Info;
              if (CFEqual(v14, @"UseGamma") && v12)
              {
                CFNumberGetValue(v12, kCFNumberDoubleType, v67);
                v61 = 2;
                v28 = &v66;
              }
            }

LABEL_101:
            if (cf1)
            {
              if (CFEqual(cf1, @"ITU_R_709_2"))
              {
                v30 = 1;
              }

              else if (CFEqual(cf1, @"ITU_R_601_4"))
              {
                v30 = 6;
              }

              else if (CFEqual(cf1, @"SMPTE_240M_1995"))
              {
                v30 = 7;
              }

              else if (CFEqual(cf1, @"DCI_P3"))
              {
                v30 = 11;
              }

              else if (CFEqual(cf1, @"P3_D65"))
              {
                v30 = 12;
              }

              else if (CFEqual(cf1, @"ITU_R_2020"))
              {
                v30 = 9;
              }

              else
              {
                v30 = 2;
              }
            }

            else
            {
              v30 = 2;
            }

            v31 = *(v28 + 1);
            if (*v28)
            {
              v31 = 1.0 / v31;
            }

            valuePtr = v31;
            v80 = xmmword_1E75D7D90;
            v81 = *&off_1E75D7DA0;
            v82 = xmmword_1E75D7DB0;
            *range = xmmword_1E75D7D50;
            v77 = *&off_1E75D7D60;
            v78 = xmmword_1E75D7D70;
            v79 = *&off_1E75D7D80;
            v75 = 0;
            v74 = 0u;
            v73 = 0u;
            v72 = 0u;
            v71 = 0u;
            v70 = 0u;
            v69 = 0u;
            values = CFRetain(@"displayRGB");
            if (CFEqual(v13, @"ITU_R_709_2") && (v32 = CFEqual(v14, @"ITU_R_709_2"), cf1) && v32 && CFEqual(cf1, @"ITU_R_709_2"))
            {
              v33 = @"HDTV";
            }

            else if (CFEqual(v13, @"SMPTE_C") && (v34 = CFEqual(v14, @"ITU_R_709_2"), cf1) && v34 && CFEqual(cf1, @"ITU_R_601_4"))
            {
              v33 = @"Composite NTSC";
            }

            else if (CFEqual(v13, @"EBU_3213") && (v35 = CFEqual(v14, @"ITU_R_709_2"), cf1) && v35 && CFEqual(cf1, @"ITU_R_601_4"))
            {
              v33 = @"Composite PAL";
            }

            else if (CFEqual(v13, @"SMPTE_C") && (v36 = CFEqual(v14, @"SMPTE_240M_1995"), cf1) && v36 && CFEqual(cf1, @"SMPTE_240M_1995"))
            {
              v33 = @"HDTV Interim Color Implementation";
            }

            else if (CFEqual(v13, @"DCI_P3") && CFEqual(v14, @"SMPTE_ST_428_1"))
            {
              v33 = @"Digital Cinema P3";
            }

            else if (CFEqual(v13, @"P3_D65") && CFEqual(v14, @"ITU_R_709_2"))
            {
              v33 = @"Apple P3";
            }

            else if (CFEqual(v13, @"ITU_R_2020") && CFEqual(v14, @"ITU_R_2020"))
            {
              v33 = @"UHD";
            }

            else if (CFEqual(v14, @"SMPTE_ST_2084_PQ"))
            {
              v33 = @"HDR (PQ)";
            }

            else
            {
              if (!CFEqual(v14, @"ITU_R_2100_HLG"))
              {
                v37 = CFStringCreateWithFormat(v17, 0, @"QuickTime 'nclc' Video (%d,%d,%d)", v60, v61, v30);
                goto LABEL_159;
              }

              v33 = @"HDR (HLG)";
            }

            v37 = CFRetain(v33);
LABEL_159:
            *&v69 = v37;
            v38 = 13;
            *(&v69 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
            *&v70 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
            *(&v70 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
            *&v71 = CFNumberCreate(0, kCFNumberDoubleType, v62 + 32);
            *(&v71 + 1) = CFNumberCreate(0, kCFNumberDoubleType, v62 + 40);
            *&v72 = CFNumberCreate(0, kCFNumberDoubleType, v62);
            *(&v72 + 1) = CFNumberCreate(0, kCFNumberDoubleType, v62 + 8);
            *&v73 = CFNumberCreate(0, kCFNumberDoubleType, v62 + 16);
            *(&v73 + 1) = CFNumberCreate(0, kCFNumberDoubleType, v62 + 24);
            *&v74 = CFNumberCreate(0, kCFNumberDoubleType, v62 + 48);
            *(&v74 + 1) = CFNumberCreate(0, kCFNumberDoubleType, v62 + 56);
            v75 = CFStringCreateWithCString(0, "Copyright 2007 Apple Inc.", 0);
            v20 = CFDictionaryCreate(0, range, &values, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            do
            {
              CFRelease(*(&values + v38));
              v39 = v38-- + 1;
            }

            while (v39 > 1);
            if (v20 && (Profile = ColorSyncMakeProfile()) != 0)
            {
              v41 = Profile;
              MutableCopy = ColorSyncProfileCreateMutableCopy(Profile);
              CFRelease(v41);
              if (MutableCopy && (v42 = ColorSyncProfileCopyHeader(MutableCopy)) != 0)
              {
                v43 = v42;
                v21 = CFDataCreateMutableCopy(0, 128, v42);
                CFRelease(v43);
                if (v21)
                {
                  CFDataSetLength(v21, 128);
                  MutableBytePtr = CFDataGetMutableBytePtr(v21);
                  if (MutableBytePtr)
                  {
                    v45 = MutableBytePtr;
                    if (*v28 != 3)
                    {
LABEL_170:
                      *(v45 + 3) = 0x10001000407D5;
                      *(v45 + 8) = 65537;
                      ColorSyncProfileSetHeader(MutableCopy, v21);
                      ICCBased = CGColorSpaceCreateWithPlatformColorSpace(MutableCopy);
                      goto LABEL_64;
                    }

                    v46 = *(v28 + 3);
                    v47.f64[0] = *(v28 + 4) + 1.0;
                    __asm { FMOV            V4.2D, #1.0 }

                    v53.f64[0] = *(v28 + 1);
                    v54 = *(v28 + 2);
                    v53.f64[1] = v47.f64[0];
                    v55 = vdivq_f64(_Q4, v53);
                    _Q4.f64[0] = *(v28 + 4);
                    *bytes = 1634886000;
                    v47.f64[1] = v46;
                    v56 = vdupq_n_s64(0x40EFFFE000000000uLL);
                    __asm { FMOV            V2.2D, #0.5 }

                    *&bytes[8] = 768;
                    *&bytes[12] = vrev32q_s8(vuzp1q_s32(vcvtq_u64_f64(vmlaq_f64(_Q2, v56, v55)), vcvtq_u64_f64(vmlaq_f64(_Q2, v56, vdivq_f64(_Q4, v47)))));
                    *&bytes[28] = bswap32((v46 * v54 * 65535.0 + 0.5));
                    v58 = CFDataCreateWithBytesNoCopy(0, bytes, 32, *MEMORY[0x1E695E498]);
                    if (v58)
                    {
                      v59 = v58;
                      ColorSyncProfileSetTag(MutableCopy, @"rTRC", v58);
                      ColorSyncProfileSetTag(MutableCopy, @"gTRC", v59);
                      ColorSyncProfileSetTag(MutableCopy, @"bTRC", v59);
                      CFRelease(v59);
                      *(v45 + 2) = 0x4000000;
                      goto LABEL_170;
                    }
                  }
                }
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = 0;
              MutableCopy = 0;
            }

            ICCBased = 0;
            goto LABEL_64;
          }

          v29 = 14;
        }

        v61 = v29;
        v28 = &kQTTransferFunction_ITU_R2020_Info;
        goto LABEL_101;
      }
    }

    else
    {
      v21 = 0;
      MutableCopy = 0;
      ICCBased = 0;
    }

LABEL_64:
    if (v19)
    {
      CFRelease(v19);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    v10 = 0;
    goto LABEL_73;
  }

  range[0] = 0.0;
  *&v77 = 0;
  range[1] = 1.0;
  *(&v77 + 1) = 0x3FF0000000000000;
  *&v78 = 0;
  *(&v78 + 1) = 0x3FF0000000000000;
  CFRetain(v4);
  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(v4);
  v8 = CGDataProviderCreateWithData(v4, BytePtr, Length, _releaseCFDataForCGDataProvider);
  if (v8)
  {
    v9 = v8;
    ICCBased = CGColorSpaceCreateICCBased(3uLL, range, v8, 0);
    v10 = v9;
LABEL_73:
    CGDataProviderRelease(v10);
    goto LABEL_74;
  }

  CGDataProviderRelease(0);
  CFRelease(v4);
LABEL_4:
  ICCBased = 0;
LABEL_74:
  v24 = *MEMORY[0x1E69E9840];
  return ICCBased;
}

void CVBufferRemoveAllAttachments(CVBufferRef buffer)
{
  CVBuffer = _getCVBuffer(buffer);
  if (CVBuffer)
  {
    v2 = *(*CVBuffer + 120);

    v2();
  }
}

__IOSurface *CVPixelBuffer::removeAllAttachments(CVPixelBuffer *this)
{
  if (_os_feature_enabled_impl())
  {
    pthread_mutex_lock((this + 16));
    if ((*(**(this + 15) + 152))(*(this + 15)))
    {
      IOSurfaceRemoveCoreVideoBridgedValues();
    }

    CFDictionaryRemoveAllValues(*(this + 10));
    CFDictionaryRemoveAllValues(*(this + 11));

    return pthread_mutex_unlock((this + 16));
  }

  else
  {
    CVBuffer::removeAllAttachments(this);
    result = (*(**(this + 15) + 152))(*(this + 15));
    if (result)
    {
      v3 = result;
      v4 = CVGetNumberOfEntriesInCVBufferAttachmentKeyMappingTable();
      if (v4 >= 1)
      {
        v5 = v4;
        for (i = 0; i != v5; ++i)
        {
          if (!CVDoesIOSurfacePropertyKeyAtIndexInMappingTableHaveCorrespondingBulkAttachment(i))
          {
            v7 = CVGetIOSurfacePropertyKeyAtIndexInMappingTable(i);
            IOSurfaceRemoveValue(v3, v7);
          }
        }
      }

      return IOSurfaceSetBulkAttachments2();
    }
  }

  return result;
}

void *getBaseAddressOfPlaneWithoutLock(__CVBuffer *a1, uint64_t a2)
{
  result = _getCVPixelBuffer(a1);
  if (result)
  {
    v4 = result;
    result = (*(*result[15] + 368))(result[15], a2, 0);
    if (!result)
    {
      v5 = *(*v4[15] + 368);

      return v5();
    }
  }

  return result;
}

uint64_t CVPixelBufferIsCompatibleWithAttributes(__CVBuffer *a1, const __CFDictionary *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType(PixelFormatType);
  Value = CFDictionaryGetValue(a2, @"MetalCompatibility");
  if (Value && CFBooleanGetValue(Value))
  {
    if (!CVPixelBufferGetIOSurface(a1))
    {
      v10 = "IOSurface backing for Metal compatibility not satisfied";
      goto LABEL_167;
    }

    if (CVPixelBufferIsPlanar(a1))
    {
      PlaneCount = CVPixelBufferGetPlaneCount(a1);
      if (PlaneCount)
      {
        v8 = PlaneCount;
        v9 = 0;
        while ((CVPixelBufferGetBytesPerRowOfPlane(a1, v9) & 0x3F) == 0)
        {
          if ((getBaseAddressOfPlaneWithoutLock(a1, v9) & 0x3F) != 0)
          {
            goto LABEL_15;
          }

          if (v8 == ++v9)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      if ((CVPixelBufferGetBytesPerRow(a1) & 0x3F) != 0)
      {
LABEL_13:
        v10 = "rowbytes alignment for Metal compatibility not satisfied";
        goto LABEL_167;
      }

      if ((getBaseAddressWithoutLock(a1) & 0x3F) != 0)
      {
LABEL_15:
        v10 = "plane alignment for Metal compatibility not satisfied";
        goto LABEL_167;
      }
    }
  }

LABEL_16:
  v11 = CFDictionaryGetValue(a2, @"IOSurfaceOpenGLFBOCompatibility");
  if (v11)
  {
    if (!DescriptionWithPixelFormatType)
    {
      v10 = "unknown pixel format -- not IOSurfaceOpenGLFBO compatible";
      goto LABEL_167;
    }

    v12 = v11;
    v13 = CFDictionaryGetValue(DescriptionWithPixelFormatType, @"IOSurfaceOpenGLFBOCompatibility");
    v14 = *MEMORY[0x1E695E4C0];
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = *MEMORY[0x1E695E4C0];
    }

    if (!CFEqual(v12, v15))
    {
      v10 = "pixel format not IOSurfaceOpenGLFBO compatible";
      goto LABEL_167;
    }
  }

  v16 = CFDictionaryGetValue(a2, @"OpenGLESCompatibility");
  if (v16)
  {
    if (!DescriptionWithPixelFormatType)
    {
      v10 = "unknown pixel format -- not OpenGLES compatible";
      goto LABEL_167;
    }

    v17 = v16;
    v18 = CFDictionaryGetValue(DescriptionWithPixelFormatType, @"OpenGLESCompatibility");
    v19 = *MEMORY[0x1E695E4C0];
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = *MEMORY[0x1E695E4C0];
    }

    if (!CFEqual(v17, v20))
    {
      v10 = "pixel format not OpenGLES compatible";
      goto LABEL_167;
    }
  }

  v21 = CFDictionaryGetValue(a2, @"IOSurfaceOpenGLESTextureCompatibility");
  if (v21)
  {
    if (!DescriptionWithPixelFormatType)
    {
      v10 = "unknown pixel format -- not IOSurfaceOpenGLESTexture compatible";
      goto LABEL_167;
    }

    v22 = v21;
    v23 = CFDictionaryGetValue(DescriptionWithPixelFormatType, @"IOSurfaceOpenGLESTextureCompatibility");
    v24 = *MEMORY[0x1E695E4C0];
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = *MEMORY[0x1E695E4C0];
    }

    if (!CFEqual(v22, v25))
    {
      v10 = "pixel format not IOSurfaceOpenGLESTexture compatible";
      goto LABEL_167;
    }
  }

  v26 = CFDictionaryGetValue(a2, @"IOSurfaceOpenGLESFBOCompatibility");
  if (v26)
  {
    if (!DescriptionWithPixelFormatType)
    {
      v10 = "unknown pixel format -- not IOSurfaceOpenGLESFBO compatible";
      goto LABEL_167;
    }

    v27 = v26;
    v28 = CFDictionaryGetValue(DescriptionWithPixelFormatType, @"IOSurfaceOpenGLESFBOCompatibility");
    v29 = *MEMORY[0x1E695E4C0];
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = *MEMORY[0x1E695E4C0];
    }

    if (!CFEqual(v27, v30))
    {
      v10 = "pixel format not IOSurfaceOpenGLESFBO compatible";
      goto LABEL_167;
    }
  }

  v31 = CFDictionaryGetValue(a2, @"IOSurfaceCoreAnimationCompatibility");
  if (v31)
  {
    if (!DescriptionWithPixelFormatType)
    {
      v10 = "unknown pixel format -- not IOSurfaceCoreAnimation compatible";
      goto LABEL_167;
    }

    v32 = v31;
    v33 = CFDictionaryGetValue(DescriptionWithPixelFormatType, @"IOSurfaceCoreAnimationCompatibility");
    v34 = *MEMORY[0x1E695E4C0];
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = *MEMORY[0x1E695E4C0];
    }

    if (!CFEqual(v32, v35))
    {
      v10 = "pixel format not IOSurfaceCoreAnimation compatible";
      goto LABEL_167;
    }
  }

  v36 = CFDictionaryGetValue(a2, @"MemoryAllocator");
  if (v36)
  {
    v37 = v36;
    Attributes = CVPixelBufferGetAttributes(a1);
    v39 = CFDictionaryGetValue(Attributes, @"MemoryAllocator");
    if (!v39)
    {
      v10 = "not using custom memory allocator";
      goto LABEL_167;
    }

    if (!CFEqual(v37, v39))
    {
      v10 = "custom memory allocator mismatch";
      goto LABEL_167;
    }
  }

  v40 = CFDictionaryGetValue(a2, @"PixelFormatType");
  if (v40)
  {
    v41 = v40;
    v42 = CVPixelBufferGetPixelFormatType(a1);
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v41))
    {
      valuePtr = 0;
      if (!CFNumberGetValue(v41, kCFNumberLongType, &valuePtr) || valuePtr != v42)
      {
        v10 = "wrong pixel format";
        goto LABEL_167;
      }
    }

    else
    {
      v44 = CFArrayGetTypeID();
      if (v44 == CFGetTypeID(v41) && !numberIsInCFArrayOfCFNumbers(v42, v41))
      {
        v10 = "pixel format not in list";
        goto LABEL_167;
      }
    }
  }

  v45 = CFDictionaryGetValue(a2, @"Width");
  v46 = CFDictionaryGetValue(a2, @"Height");
  if (v45)
  {
    v47 = CFNumberGetTypeID();
    if (v47 == CFGetTypeID(v45))
    {
      Width = CVPixelBufferGetWidth(a1);
      valuePtr = 0;
      if (!CFNumberGetValue(v45, kCFNumberLongType, &valuePtr) || valuePtr != Width)
      {
        v10 = "wrong width";
        goto LABEL_167;
      }
    }
  }

  if (v46)
  {
    v49 = CFNumberGetTypeID();
    if (v49 == CFGetTypeID(v46))
    {
      Height = CVPixelBufferGetHeight(a1);
      valuePtr = 0;
      if (!CFNumberGetValue(v46, kCFNumberLongType, &valuePtr) || valuePtr != Height)
      {
        v10 = "wrong height";
        goto LABEL_167;
      }
    }
  }

  v51 = CFDictionaryGetValue(a2, @"ExtendedPixelsLeft");
  v52 = CFDictionaryGetValue(a2, @"ExtendedPixelsTop");
  v53 = CFDictionaryGetValue(a2, @"ExtendedPixelsRight");
  v54 = CFDictionaryGetValue(a2, @"ExtendedPixelsBottom");
  v55 = v54;
  if (v51 || v52 || v53 || v54)
  {
    extraRowsOnTop = 0;
    extraColumnsOnLeft = 0;
    extraRowsOnBottom = 0;
    extraColumnsOnRight = 0;
    CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
    if (v51)
    {
      v60 = CFNumberGetTypeID();
      if (v60 == CFGetTypeID(v51))
      {
        v61 = extraColumnsOnLeft;
        valuePtr = 0;
        if (CFNumberGetValue(v51, kCFNumberLongType, &valuePtr))
        {
          if (valuePtr > v61)
          {
            v10 = "insufficient extended-left";
            goto LABEL_167;
          }
        }
      }
    }

    if (v52)
    {
      v62 = CFNumberGetTypeID();
      if (v62 == CFGetTypeID(v52))
      {
        v63 = extraRowsOnTop;
        valuePtr = 0;
        if (CFNumberGetValue(v52, kCFNumberLongType, &valuePtr))
        {
          if (valuePtr > v63)
          {
            v10 = "insufficient extended-top";
            goto LABEL_167;
          }
        }
      }
    }

    if (v53)
    {
      v64 = CFNumberGetTypeID();
      if (v64 == CFGetTypeID(v53))
      {
        v65 = extraColumnsOnRight;
        valuePtr = 0;
        if (CFNumberGetValue(v53, kCFNumberLongType, &valuePtr))
        {
          if (valuePtr > v65)
          {
            v10 = "insufficient extended-right";
            goto LABEL_167;
          }
        }
      }
    }

    if (v55)
    {
      v66 = CFNumberGetTypeID();
      if (v66 == CFGetTypeID(v55))
      {
        v67 = extraRowsOnBottom;
        valuePtr = 0;
        if (CFNumberGetValue(v55, kCFNumberLongType, &valuePtr))
        {
          if (valuePtr > v67)
          {
            v10 = "insufficient extended-bottom";
            goto LABEL_167;
          }
        }
      }
    }
  }

  v56 = CFDictionaryGetValue(a2, @"ExactBytesPerRow");
  if (v56)
  {
    v57 = v56;
    v58 = CFNumberGetTypeID();
    if (v58 == CFGetTypeID(v57))
    {
      if (!CVPixelBufferIsPlanar(a1))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        valuePtr = 0;
        if (!CFNumberGetValue(v57, kCFNumberLongType, &valuePtr) || valuePtr != BytesPerRow)
        {
          v10 = "exact bytes per row not satisfied";
          goto LABEL_167;
        }
      }
    }

    else
    {
      v68 = CFArrayGetTypeID();
      if (v68 == CFGetTypeID(v57))
      {
        if (CVPixelBufferIsPlanar(a1))
        {
          v69 = CVPixelBufferGetPlaneCount(a1);
          if (CFArrayGetCount(v57) == v69)
          {
            if (v69)
            {
              v70 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v57, v70);
                BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v70);
                v73 = CFNumberGetTypeID();
                if (v73 == CFGetTypeID(ValueAtIndex))
                {
                  valuePtr = 0;
                  if (!CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr) || valuePtr != BytesPerRowOfPlane)
                  {
                    break;
                  }
                }

                if (v69 == ++v70)
                {
                  goto LABEL_115;
                }
              }

              v10 = "exact bytes per row not satisfied (planar)";
              goto LABEL_167;
            }
          }
        }
      }
    }
  }

LABEL_115:
  v74 = CFDictionaryGetValue(a2, @"BytesPerRowAlignment");
  if (v74)
  {
    v75 = v74;
    v76 = CFNumberGetTypeID();
    if (v76 == CFGetTypeID(v75))
    {
      if (CVPixelBufferIsPlanar(a1))
      {
        v77 = CVPixelBufferGetPlaneCount(a1);
        if (v77)
        {
          v78 = v77;
          v79 = 0;
          while (1)
          {
            v80 = CVPixelBufferGetBytesPerRowOfPlane(a1, v79);
            if (!numberIsMultipleOfCFNumber(v80, v75))
            {
              break;
            }

            if (v78 == ++v79)
            {
              goto LABEL_127;
            }
          }

          v10 = "bytes per row alignment not satisfied (planar)";
          goto LABEL_167;
        }
      }

      else
      {
        v81 = CVPixelBufferGetBytesPerRow(a1);
        if (!numberIsMultipleOfCFNumber(v81, v75))
        {
          v10 = "bytes per row alignment not satisfied";
          goto LABEL_167;
        }
      }
    }
  }

LABEL_127:
  v82 = CFDictionaryGetValue(a2, @"PlaneAlignment");
  if (v82)
  {
    v83 = v82;
    v84 = CFNumberGetTypeID();
    if (v84 == CFGetTypeID(v83))
    {
      if (CVPixelBufferIsPlanar(a1))
      {
        v85 = CVPixelBufferGetPlaneCount(a1);
        if (v85)
        {
          v86 = v85;
          v87 = 0;
          do
          {
            BaseAddressOfPlaneWithoutLock = getBaseAddressOfPlaneWithoutLock(a1, v87);
            if (!addressIsMultipleOfCFNumber(BaseAddressOfPlaneWithoutLock, v83))
            {
              goto LABEL_155;
            }
          }

          while (v86 != ++v87);
        }
      }

      else
      {
        BaseAddressWithoutLock = getBaseAddressWithoutLock(a1);
        if (!addressIsMultipleOfCFNumber(BaseAddressWithoutLock, v83))
        {
LABEL_155:
          v10 = "plane alignment not satisfied";
          goto LABEL_167;
        }
      }
    }
  }

  v90 = CFDictionaryGetValue(a2, @"ExactHeight");
  if (!v90)
  {
    goto LABEL_143;
  }

  v91 = v90;
  v92 = CFNumberGetTypeID();
  if (v92 != CFGetTypeID(v91))
  {
    goto LABEL_143;
  }

  v93 = CVPixelBufferGetHeight(a1);
  extraRowsOnTop = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v94 = extraRowsOnTop + v93 + extraRowsOnBottom;
  valuePtr = 0;
  if (CFNumberGetValue(v91, kCFNumberLongType, &valuePtr) && valuePtr == v94)
  {
LABEL_143:
    v96 = CFDictionaryGetValue(a2, @"IOSurfaceProperties");
    v97 = CFDictionaryGetValue(a2, @"CacheMode");
    if (v96 | v97)
    {
      v98 = v97;
      IOSurface = CVPixelBufferGetIOSurface(a1);
      if (v96)
      {
        v100 = CFDictionaryGetTypeID();
        if (v100 == CFGetTypeID(v96))
        {
          if (!IOSurface)
          {
            v10 = "not IOSurface backed";
            goto LABEL_167;
          }

          v96 = CFDictionaryGetValue(v96, *MEMORY[0x1E696CE60]);
        }

        else
        {
          v96 = 0;
        }
      }

      if (v98 | v96)
      {
        if (!IOSurface)
        {
          v10 = "not IOSurface backed -- no custom cache mode";
          goto LABEL_167;
        }

        CacheMode = IOSurfaceGetCacheMode();
        if (v98 && (v102 = CFArrayGetTypeID(), v102 == CFGetTypeID(v98)))
        {
          if (!numberIsInCFArrayOfCFNumbers(CacheMode, v98))
          {
            v10 = "cache mode not in list";
            goto LABEL_167;
          }
        }

        else if (v96)
        {
          v103 = CFNumberGetTypeID();
          if (v103 == CFGetTypeID(v96))
          {
            valuePtr = 0;
            if (!CFNumberGetValue(v96, kCFNumberLongType, &valuePtr) || valuePtr != CacheMode)
            {
              v10 = "wrong cache mode";
              goto LABEL_167;
            }
          }
        }
      }
    }

    return 1;
  }

  v10 = "exact height not satisfied";
LABEL_167:
  reportIncompatiblePixelBuffer(a1, a2, v10);
  return 0;
}

uint64_t numberIsInCFArrayOfCFNumbers(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(ValueAtIndex))
    {
      valuePtr = 0;
      if (CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr))
      {
        if (valuePtr == a1)
        {
          break;
        }
      }
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return 1;
}

BOOL numberIsMultipleOfCFNumber(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  Value = CFNumberGetValue(number, kCFNumberLongType, &valuePtr);
  result = 0;
  if (Value)
  {
    if (valuePtr)
    {
      return a1 % valuePtr == 0;
    }
  }

  return result;
}

BOOL addressIsMultipleOfCFNumber(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  Value = CFNumberGetValue(number, kCFNumberCFIndexType, &valuePtr);
  result = 0;
  if (Value)
  {
    if (valuePtr)
    {
      return a1 % valuePtr == 0;
    }
  }

  return result;
}

const void *_cvTrackingGetCFAllocator(const void *a1)
{
  pthread_mutex_lock(&_cvAllocatorMutex);
  Mutable = _cvAllocatorDictionary;
  if (!_cvAllocatorDictionary)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    _cvAllocatorDictionary = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    v4 = malloc_type_calloc(0x10uLL, 1uLL, 0x1060040C2E02434uLL);
    *v4 = CFRetain(a1);
    context.version = 0;
    context.info = v4;
    memset(&context.retain, 0, 24);
    context.allocate = trackingAllocate;
    context.reallocate = trackingReallocate;
    context.deallocate = trackingDeallocate;
    context.preferredSize = trackingPreferredSize;
    Value = CFAllocatorCreate(0, &context);
    CFDictionarySetValue(_cvAllocatorDictionary, a1, Value);
  }

  pthread_mutex_unlock(&_cvAllocatorMutex);
  return Value;
}

uint64_t sub_19D1358E0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

int64x2_t sub_19D135A00@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(1uLL);
  *a1 = result;
  return result;
}

uint64_t sub_19D135A10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_9CoreVideo24CVPixelFormatDescriptionV11CompressionV20UncompressedMetadataVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_19D135A90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_19D135AA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = CVPixelBufferAttributes.pixelFormatTypes.getter();
  *a2 = result;
  return result;
}

unint64_t sub_19D135AE4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_19D135AF4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

double sub_19D135B04(_OWORD *a1)
{
  result = 0.0;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 332) = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9CoreVideo31CVPixelBufferCreationAttributesV7BackingO_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_DWORD *sub_19D135C6C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

_OWORD *sub_19D135C7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F7A0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr8BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F7C8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F7F0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr8BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F818;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F840;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F868;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_420YpCbCr10BiPlanarWideRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F890;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F8B8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F8E0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_422YpCbCr10BiPlanarWideRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F908;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F930;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F958;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC32x4_444YpCbCr10BiPlanarWideRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F980;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F9A8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F9D0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108F9F8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr8BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108FA20;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr8BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108FA48;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr8BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108FA70;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108FA98;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_422YpCbCr10BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108FAC0;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_444YpCbCr10BiPlanarVideoRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108FAE8;
  }
}

void *retrievePixelFormat_kCVPixelFormatType_HTPC16x8LumaOnly_420YpCbCr10BiPlanarFullRange(int a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return &unk_1F108FB10;
  }
}