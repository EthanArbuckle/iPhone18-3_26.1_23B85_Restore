WTF::StringImpl *WebKit::ServiceWorkerDownloadTask::didReceiveData(WTF::StringImpl *this, const IPC::SharedBufferReference *a2)
{
  if (*(this + 158) != -1)
  {
    v21 = v2;
    v22 = v3;
    v5 = this;
    IPC::SharedBufferReference::span(a2);
    v6 = WTF::FileSystemImpl::FileHandle::write();
    if ((v7 & 1) != 0 && (v8 = v6, v6 == *a2))
    {
      while (1)
      {
        v9 = *(v5 + 8);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v10 = *(v5 + 8);
        atomic_compare_exchange_strong_explicit((v5 + 8), &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_20;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v5 + 8));
LABEL_20:
      v15 = WTF::fastMalloc(0x20);
      *v15 = &unk_1F1107E00;
      *(v15 + 1) = v5;
      *(v15 + 2) = v5;
      *(v15 + 3) = v8;
      v16 = v15;
      WTF::callOnMainRunLoop();
      this = v16;
      v16 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }

    else
    {
      LOBYTE(v16) = 0;
      v20 = 0;
      this = WebKit::ServiceWorkerDownloadTask::didFailDownload(v5, &v16);
      if (v20 == 1)
      {
        v12 = cf;
        cf = 0;
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = v18;
        v18 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v11);
        }

        v14 = v17;
        v17 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v11);
        }

        this = v16;
        v16 = 0;
        if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(this, v11);
        }
      }
    }
  }

  return this;
}

WTF::StringImpl *WebKit::ServiceWorkerDownloadTask::didFailDownload(uint64_t a1, unsigned __int8 *a2)
{
  WTF::FileSystemImpl::FileHandle::FileHandle(&v17);
  WTF::FileSystemImpl::FileHandle::operator=();
  WTF::FileSystemImpl::FileHandle::~FileHandle(&v17);
  v17 = a1;
  while (1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_6:
  v18 = a1;
  v6 = a2[80];
  if (v6)
  {
    WebCore::ResourceErrorBase::isolatedCopy(v28, a2);
    *v19 = v28[0];
    v20 = v28[1];
    v21 = v28[2];
    v22 = v29;
    v23 = v30;
    v24 = v31;
    cf = v32;
    v26 = v33;
    v27 = 1;
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v27 = 0;
  }

  v7 = WTF::fastMalloc(0x70);
  v8 = v7;
  *v7 = &unk_1F1107E50;
  *(v7 + 8) = a1;
  v18 = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 104) = 0;
  if (v6)
  {
    v9 = v19[0];
    v19[0] = 0;
    *(v7 + 24) = v9;
    WTF::URL::URL(v7 + 32, &v19[1]);
    *(v8 + 72) = v22;
    *(v8 + 84) = v24;
    *(v8 + 80) = v23;
    v10 = cf;
    v22 = 0;
    cf = 0;
    *(v8 + 88) = v10;
    *(v8 + 96) = v26;
    *(v8 + 104) = 1;
  }

  *&v28[0] = v8;
  WTF::callOnMainRunLoop();
  result = *&v28[0];
  *&v28[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v27 == 1)
  {
    v14 = cf;
    cf = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = v22;
    v22 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = v19[1];
    v19[1] = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v11);
    }

    result = v19[0];
    v19[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v11);
    }
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v13 + 8));
  }

  return result;
}

WTF::StringImpl *WebKit::ServiceWorkerDownloadTask::didReceiveFormData(uint64_t a1)
{
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v8) = 0;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "ServiceWorkerDownloadTask::didReceiveFormData not implemented", &v8, 2u);
  }

  LOBYTE(v8) = 0;
  v12 = 0;
  result = WebKit::ServiceWorkerDownloadTask::didFailDownload(a1, &v8);
  if (v12 == 1)
  {
    v5 = cf;
    cf = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v10;
    v10 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = v9;
    v9 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  return result;
}

uint64_t WebKit::ServiceWorkerDownloadTask::didFinish(WebKit::ServiceWorkerDownloadTask *this)
{
  WTF::FileSystemImpl::FileHandle::FileHandle(v7);
  WTF::FileSystemImpl::FileHandle::operator=();
  WTF::FileSystemImpl::FileHandle::~FileHandle(v7);
  while (1)
  {
    v2 = *(this + 1);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v4 = WTF::fastMalloc(0x18);
  *v4 = &unk_1F1107E28;
  v4[1] = this;
  v4[2] = this;
  v6 = v4;
  WTF::callOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

WTF::StringImpl *WebKit::ServiceWorkerDownloadTask::didFail(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a2 = 0;
  v12 = v4;
  WTF::URL::URL(&v13, (a2 + 8));
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v14 = v5;
  v15 = *(a2 + 56);
  v16 = *(a2 + 60);
  v6 = *(a2 + 64);
  *(a2 + 64) = 0;
  cf = v6;
  v18 = *(a2 + 72);
  v19 = 1;
  result = WebKit::ServiceWorkerDownloadTask::didFailDownload(a1, &v12);
  if (v19 == 1)
  {
    v9 = cf;
    cf = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v14;
    v14 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v13;
    v13 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

uint64_t WebKit::ServiceWorkerFetchTask::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v113 = *MEMORY[0x1E69E9840];
  v17 = WebKit::ServiceWorkerFetchTask::operator new(0x128, a2);
  *v17 = 0;
  *(v17 + 8) = 1;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v18 = *(a1 + 8);
  atomic_fetch_add(v18, 1u);
  *(v17 + 16) = v18;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v19 = *(a2 + 8);
  atomic_fetch_add(v19, 1u);
  *(v17 + 24) = v19;
  *(v17 + 32) = 0;
  *(v17 + 40) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  WTF::URL::URL(v17 + 64, a3);
  WTF::URL::URL(v17 + 104, (a3 + 40));
  *(v17 + 144) = *(a3 + 80);
  v20 = *(a3 + 88);
  *(a3 + 88) = 0;
  *(v17 + 152) = v20;
  *(v17 + 168) = 0;
  *(v17 + 160) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v17 + 160, (a3 + 96));
  *(v17 + 184) = 0;
  *(v17 + 176) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v17 + 176, (a3 + 112));
  *(v17 + 200) = 0;
  *(v17 + 192) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v17 + 192, (a3 + 128));
  v21 = *(a3 + 144);
  *(v17 + 212) = *(a3 + 148);
  *(v17 + 208) = v21;
  v22 = *(a3 + 152);
  *(a3 + 152) = 0;
  *(v17 + 216) = v22;
  v23 = *(a3 + 160);
  *(a3 + 160) = 0;
  *(v17 + 224) = v23;
  v24 = *(a3 + 168);
  *(a3 + 168) = 0;
  *(v17 + 232) = v24;
  v25 = *(a3 + 176);
  *(v17 + 248) = *(a3 + 184);
  *(v17 + 240) = v25;
  v26 = *(a3 + 192);
  *(a3 + 192) = 0;
  *(v17 + 256) = v26;
  *(v17 + 264) = 0;
  *(v17 + 272) = *(a6 + 16);
  *(v17 + 280) = 0;
  *(v17 + 288) = 0;
  *(v17 + 290) = WebCore::SWServerRegistration::shouldSoftUpdate();
  *(v17 + 291) = 0;
  v27 = qword_1ED641288;
  v28 = os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT);
  if (v28)
  {
    v30 = *(v17 + 48);
    if (!v30)
    {
      __break(0xC471u);
      goto LABEL_101;
    }

    v31 = *(v17 + 272);
    if (!v31)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD6AF20);
    }

    v32 = *(v17 + 56);
    if (!v32)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD6AF40);
    }

    v33 = *(v17 + 40);
    *buf = 134219264;
    v90 = v17;
    v91 = 2048;
    v92 = v33;
    v93 = 2048;
    v94 = v30;
    *v95 = 2048;
    *&v95[2] = v31;
    v96 = 2048;
    v97 = v32;
    v98 = 1024;
    v99 = a8;
    _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::ServiceWorkerFetchTask: (serverConnectionIdentifier=%llu, serviceWorkerRegistrationIdentifier=%llu, serviceWorkerIdentifier=%llu, %d)", buf, 0x3Au);
  }

  if (*(a2 + 251) == 1)
  {
    v34 = WebCore::Timer::operator new(0x38, v29);
    *WebCore::TimerBase::TimerBase(v34) = &unk_1F10EB388;
    v35 = WTF::fastMalloc(0x20);
    *v35 = &unk_1F1107CE8;
    v35[1] = v17;
    v35[2] = WebKit::ServiceWorkerFetchTask::timeoutTimerFired;
    v35[3] = 0;
    *(v34 + 6) = v35;
    v36 = *(v17 + 264);
    *(v17 + 264) = v34;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v28 = WebCore::TimerBase::start();
  }

  if (a7)
  {
    v37 = *(a2 + 3328);
    if (v37 <= 0xB && ((1 << v37) & 0x918) != 0)
    {
      v38 = WebCore::ResourceRequestBase::httpMethod((v17 + 64));
      v28 = MEMORY[0x19EB01EF0](*v38, "GET", 3);
      if (v28)
      {
        if (!a8 || *(a6 + 384) == 1)
        {
          WebKit::NetworkResourceLoadParameters::networkLoadParameters((a2 + 80), buf);
          WebCore::ResourceRequestBase::operator=(&v97 + 4, v17 + 64);
          v40 = *(v17 + 256);
          if (v40)
          {
            CFRetain(*(v17 + 256));
          }

          v41 = cf;
          cf = v40;
          if (v41)
          {
            CFRelease(v41);
          }

          if (WebKit::ServiceWorkerNavigationPreloader::s_heapRef)
          {
            NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ServiceWorkerNavigationPreloader::s_heapRef, v39);
          }

          else
          {
            NonCompact = WebKit::ServiceWorkerNavigationPreloader::operatorNewSlow(0);
          }

          v43 = NonCompact;
          NonCompact[1] = 0;
          v44 = (NonCompact + 1);
          NonCompact[2] = 0x100000000;
          *NonCompact = &unk_1F1107AC8;
          NonCompact[3] = 0;
          WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a7 + 8), a7);
          v45 = *(a7 + 8);
          atomic_fetch_add(v45, 1u);
          *(v43 + 32) = v45;
          WebKit::NetworkLoadParameters::NetworkLoadParameters(v43 + 48, buf);
          *(v43 + 3312) = *(a6 + 384);
          v46 = *(a6 + 392);
          if (v46)
          {
            atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
          }

          *(v43 + 3320) = v46;
          *(v43 + 3328) = 0;
          WebCore::NetworkLoadMetrics::NetworkLoadMetrics((v43 + 3336));
          WebCore::ResourceResponseBase::ResourceResponseBase((v43 + 3464));
          *(v43 + 3712) = 0;
          *(v43 + 3720) = 0;
          *(v43 + 3602) = *(v43 + 3602) & 0xF1 | 4;
          *(v43 + 3728) = 0;
          *(v43 + 3736) = 0u;
          v47 = WTF::URL::invalidate((v43 + 3744));
          *(v43 + 3800) = 0;
          *(v43 + 3784) = 0;
          *(v43 + 3790) = 0;
          *(v43 + 3808) = 1;
          *(v43 + 3835) = 0;
          *(v43 + 3816) = 0u;
          *(v43 + 3832) = 0;
          WTF::MonotonicTime::now(v47);
          *(v43 + 3840) = v48;
          v49 = qword_1ED641288;
          if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v105) = 134217984;
            *(&v105 + 4) = v43;
            _os_log_impl(&dword_19D52D000, v49, OS_LOG_TYPE_DEFAULT, "ServiceWorkerNavigationPreloader::ServiceWorkerNavigationPreloader %p", &v105, 0xCu);
          }

          if ((*(v43 + 3832) & 1) == 0)
          {
            *(v43 + 3832) = 1;
            v50 = *(v43 + 32);
            if (v50)
            {
              v51 = *(v50 + 8);
              if (v51)
              {
                ++*(v51 + 16);
                v52 = *(v51 + 624);
                if (!v52)
                {
                  WebKit::ServiceWorkerNavigationPreloader::loadFromNetwork(v43);
LABEL_36:
                  v60 = *(v51 + 16);
                  if (!v60)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19DD6AF60);
                  }

                  *(v51 + 16) = v60 - 1;
                  goto LABEL_38;
                }

                ++*(v52 + 8);
                if (!*(v43 + 48))
                {
                  __break(0xC471u);
                  JUMPOUT(0x19DD6AF80);
                }

                v53 = *(v43 + 56);
                if (!v53)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19DD6AFA0);
                }

                v54 = *(v43 + 64);
                if (v54)
                {
                  *&v105 = *(v43 + 48);
                  *(&v105 + 1) = v53;
                  *&v106 = v54;
                  BYTE8(v106) = 1;
                  v84 = *(v43 + 3288);
                  v55 = *(v43 + 3291);
                  v83 = *(v43 + 3292);
                  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v44, v43);
                  v56 = *(v43 + 8);
                  atomic_fetch_add(v56, 1u);
                  v57 = WTF::fastMalloc(0x10);
                  *v57 = &unk_1F1107F68;
                  *(v57 + 1) = v56;
                  v86 = v57;
                  WebKit::NetworkCache::Cache::retrieve(v52, v43 + 96, &v105, v84, v55, v83, &v86);
                  v59 = v86;
                  v86 = 0;
                  if (v59)
                  {
                    (*(*v59 + 8))(v59);
                  }

                  WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v52 + 8), v58);
                  goto LABEL_36;
                }

                __break(0xC471u);
LABEL_101:
                JUMPOUT(0x19DD6AF00);
              }
            }

            v72 = *(MEMORY[0x1E69E26C8] + 8);
            if (v72)
            {
              if (v72 == 1)
              {
                v73 = MEMORY[0x1E696EB88];
                atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
              }

              else
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v73 = v105;
              }
            }

            else
            {
              v73 = 0;
            }

            v86 = 0;
            WTF::URL::invalidate(&v86);
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v74 = v105;
            if (v73)
            {
              atomic_fetch_add_explicit(v73, 2u, memory_order_relaxed);
            }

            *&v105 = v73;
            v75 = v86;
            if (v86)
            {
              atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
            }

            *(&v105 + 1) = v75;
            v106 = v87;
            v107 = v88;
            if (v74)
            {
              atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
            }

            v108 = v74;
            v109 = 0;
            v110 = 1;
            v111 = 0;
            v112 = 1;
            WebKit::ServiceWorkerNavigationPreloader::didFailLoading(v43, &v105);
            v77 = v111;
            v111 = 0;
            if (v77)
            {
              CFRelease(v77);
            }

            v78 = v108;
            v108 = 0;
            if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v78, v76);
            }

            v79 = *(&v105 + 1);
            *(&v105 + 1) = 0;
            if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v79, v76);
            }

            v80 = v105;
            *&v105 = 0;
            if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v80, v76);
            }

            if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v74, v76);
            }

            v81 = v86;
            v86 = 0;
            if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v81, v76);
            }

            if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v73, v76);
            }
          }

LABEL_38:
          v61 = *(v17 + 280);
          *(v17 + 280) = v43;
          if (v61)
          {
            if (v61[5] == 1)
            {
              (*(*v61 + 24))(v61);
            }

            else
            {
              --v61[5];
            }
          }

          v86 = *(v17 + 40);
          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::ServiceWorkerFetchTask&>((a7 + 744), &v86, v17, &v105);
          v62 = *(v17 + 280);
          if (v62)
          {
            ++v62[5];
          }

          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v17, v17);
          v63 = *v17;
          atomic_fetch_add(*v17, 1u);
          v64 = WTF::fastMalloc(0x10);
          *v64 = &unk_1F1107EA0;
          v64[1] = v63;
          *&v105 = v64;
          WebKit::ServiceWorkerNavigationPreloader::waitForResponse(v62, &v105);
          if (v105)
          {
            (*(*v105 + 8))(v105);
            if (v62)
            {
LABEL_45:
              if (v62[5] == 1)
              {
                (*(*v62 + 24))(v62);
              }

              else
              {
                --v62[5];
              }
            }
          }

          else if (v62)
          {
            goto LABEL_45;
          }

          if (v104 == 1)
          {
            v82 = v103;
            v103 = 0;
            if (v82)
            {
            }
          }

          WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v102, v65);
          if (v101[2912] == 1)
          {
            WebKit::NavigationActionData::~NavigationActionData(v101, v66);
          }

          WebCore::ResourceRequest::~ResourceRequest((&v97 + 4));
          v68 = *v95;
          *v95 = 0;
          if (v68)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v68, v67);
          }

          v28 = v94;
          v94 = 0;
          if (v28)
          {
            v28 = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v28, v67);
          }
        }
      }
    }
  }

  WTF::MonotonicTime::now(v28);
  result = WebKit::NetworkResourceLoader::setWorkerStart(a2, v69, v70);
  *a9 = v17;
  return result;
}

uint64_t WebKit::ServiceWorkerFetchTask::operator new(WebKit::ServiceWorkerFetchTask *this, void *a2)
{
  if (WebKit::ServiceWorkerFetchTask::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ServiceWorkerFetchTask::s_heapRef, a2);
  }

  else
  {
    return WebKit::ServiceWorkerFetchTask::operatorNewSlow(0x128);
  }
}

void WebKit::ServiceWorkerFetchTask::fromNavigationPreloader(WebKit::ServiceWorkerFetchTask *this@<X0>, WebKit::WebSWServerConnection *a2@<X1>, const WebCore::ResourceRequest *a3@<X3>, uint64_t *a4@<X8>)
{
  if ((*(a2 + 4040) & 1) == 0)
  {
    *a4 = 0;
    return;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v22[0] = *(a2 + 504);
  v9 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3 + 93, v22);
  v11 = v9;
  if (!v9)
  {
LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

  ++*(v9 + 8);
  v12 = *(v9 + 280);
  if (v12 && *(v9 + 291) != 1)
  {
    *(v9 + 280) = 0;
    v15 = WebKit::ServiceWorkerFetchTask::operator new(0x128, v10);
    *v15 = 0;
    *(v15 + 8) = 1;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v16 = *(this + 1);
    atomic_fetch_add(v16, 1u);
    *(v15 + 16) = v16;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
    v17 = *(a2 + 1);
    atomic_fetch_add(v17, 1u);
    *(v15 + 24) = v17;
    *(v15 + 32) = 0;
    IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 40) = IdentifierInternal;
    WebCore::ResourceRequest::ResourceRequest((v15 + 64));
    *(v15 + 264) = 0;
    *(v15 + 272) = 0;
    *(v15 + 280) = v12;
    *(v15 + 288) = 0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v15, v15);
    v19 = *v15;
    atomic_fetch_add(*v15, 1u);
    v20 = WTF::fastMalloc(0x10);
    *v20 = &unk_1F1107E78;
    v20[1] = v19;
    v22[0] = v20;
    WTF::callOnMainRunLoop();
    v21 = v22[0];
    v22[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    *a4 = v15;
    goto LABEL_17;
  }

  v13 = 0;
LABEL_10:
  v14 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22[0]) = 0;
    _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Unable to retrieve preloader, load will go to the network", v22, 2u);
  }

  *a4 = 0;
  if ((v13 & 1) == 0)
  {
LABEL_17:
    WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v11 + 8));
  }
}

_DWORD *WebKit::ServiceWorkerFetchTask::timeoutTimerFired(WebKit::ServiceWorkerFetchTask *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
  {
    v7 = *(this + 4);
    v6 = *(this + 5);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 8) != 0;
    }

    v8 = 134218496;
    v9 = this;
    v10 = 2048;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::timeoutTimerFired: (hasServiceWorkerConnection=%d)", &v8, 0x1Cu);
  }

  WebKit::ServiceWorkerFetchTask::softUpdateIfNeeded(this);
  result = WebKit::ServiceWorkerFetchTask::cannotHandle(this);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++v5[4];
      if (!*(this + 7))
      {
        __break(1u);
      }

      result = WebKit::WebSWServerConnection::fetchTaskTimedOut(v5);
      if (v5[4] == 1)
      {
        return (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[4];
      }
    }
  }

  return result;
}

uint64_t WebKit::ServiceWorkerNavigationPreloader::waitForResponse(uint64_t result, uint64_t *a2)
{
  if (*(result + 3796) || *(result + 3728))
  {
    return (*(**a2 + 16))();
  }

  v2 = *a2;
  *a2 = 0;
  v3 = *(result + 3816);
  *(result + 3816) = v2;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

void WebKit::ServiceWorkerFetchTask::~ServiceWorkerFetchTask(WebKit::ServiceWorkerFetchTask *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    v13 = 134218240;
    v14 = this;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::~ServiceWorkerFetchTask:", &v13, 0x16u);
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++*(v5 + 4);
      WebKit::WebSWServerToContextConnection::unregisterFetch(v5, this);
      if (*(v5 + 4) == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --*(v5 + 4);
      }
    }
  }

  WebKit::ServiceWorkerFetchTask::cancelPreloadIfNecessary(this);
  v6 = *(this + 35);
  *(this + 35) = 0;
  if (v6)
  {
    if (v6[5] == 1)
    {
      (*(*v6 + 24))(v6);
    }

    else
    {
      --v6[5];
    }
  }

  v7 = *(this + 33);
  *(this + 33) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 64));
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v8);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v8);
  }

  v11 = *(this + 2);
  *(this + 2) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v8);
  }

  if (*(this + 2) == 1)
  {
    if (*this)
    {
      *(*this + 8) = 0;
      v12 = *this;
      *this = 0;
      if (v12)
      {
        if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12);
          WTF::fastFree(v12, v8);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::ServiceWorkerFetchTask::cancelPreloadIfNecessary(uint64_t this)
{
  if (*(this + 280))
  {
    v1 = this;
    v2 = WebKit::ServiceWorkerFetchTask::session(*(this + 16));
    if (v2)
    {
      v3 = v2;
      ++*(v2 + 4);
      WebKit::NetworkSession::removeNavigationPreloaderTask(v2, v1);
      v4 = *(v3 + 4);
      if (!v4)
      {
        this = 290;
        __break(0xC471u);
        return this;
      }

      *(v3 + 4) = v4 - 1;
    }

    v5 = *(v1 + 35);
    if (v5)
    {
      ++*(v5 + 5);
      WebKit::ServiceWorkerNavigationPreloader::cancel(v5);
      if (*(v5 + 5) == 1)
      {
        (*(*v5 + 24))(v5);
      }

      else
      {
        --*(v5 + 5);
      }
    }

    else
    {
      WebKit::ServiceWorkerNavigationPreloader::cancel(0);
    }

    this = *(v1 + 35);
    *(v1 + 35) = 0;
    if (this)
    {
      if (*(this + 20) == 1)
      {
        v6 = *(*this + 24);

        return v6();
      }

      else
      {
        --*(this + 20);
      }
    }
  }

  return this;
}

atomic_ullong **WebKit::ServiceWorkerFetchTask::serviceWorkerConnection(atomic_ullong **this, uint64_t a2)
{
  v2 = this;
  if (a2 && (v3 = *(a2 + 8)) != 0)
  {
    ++*(v3 + 16);
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 8)) != 0)
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        while (1)
        {
          v7 = *v6;
          if ((*v6 & 1) == 0)
          {
            break;
          }

          v8 = *v6;
          atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v8 == v7)
          {
            goto LABEL_12;
          }
        }

        this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_12:
    *v2 = v6;
    if (*(v3 + 16) == 1)
    {
      v9 = *(*v3 + 8);

      return v9(v3);
    }

    else
    {
      --*(v3 + 16);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

WTF::StringImpl *WebKit::ServiceWorkerFetchTask::start(WebKit::ServiceWorkerFetchTask *this, WebKit::WebSWServerToContextConnection *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 5);
    *buf = 134218240;
    v12 = this;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::start:", buf, 0x16u);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v7 = *(a2 + 1);
  atomic_fetch_add(v7, 1u);
  v8 = *(this + 4);
  *(this + 4) = v7;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, v6);
  }

  v10 = *(this + 5);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::ServiceWorkerFetchTask&>(a2 + 20, &v10, this, buf);
  return WebKit::ServiceWorkerFetchTask::startFetch(this);
}

WTF::StringImpl *WebKit::ServiceWorkerFetchTask::startFetch(WebKit::ServiceWorkerFetchTask *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 5);
    *buf = 134218240;
    v41 = this;
    v42 = 2048;
    v43 = v5;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::startFetch", buf, 0x16u);
  }

  v6 = *(this + 3);
  if (!v6 || (v7 = *(v6 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_43;
  }

  ++*(v7 + 20);
  if ((*(v7 + 4465) & 1) == 0)
  {
    WebKit::NetworkResourceLoader::consumeSandboxExtensions(v7, v3, v4);
  }

  WebCore::ResourceRequestBase::httpReferrer(&v38, (this + 64));
  WebCore::ResourceRequest::ResourceRequest(buf, (this + 64));
  WebCore::cleanHTTPRequestHeadersForAccessControl();
  v37 = 0;
  if (*(v7 + 3329))
  {
    v26 = *(v7 + 3344);
    if (v26 != 0)
    {
      WTF::UUID::toString(&v37, &v26);
    }
  }

  v36 = 0;
  if (*(v7 + 3360) != 0)
  {
    WTF::UUID::toString(&v36, (v7 + 3360));
  }

  WebKit::ServiceWorkerFetchTask::serviceWorkerConnection(&v35, *(this + 4));
  v9 = v35;
  if (v35)
  {
    if (!*(this + 6))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD6BD3CLL);
    }

    if (*(this + 7))
    {
      WebCore::ResourceRequestBase::httpBody(&v24, (this + 64));
      v11 = v24;
      v24 = 0;
      v25 = v11;
      v12 = *(this + 35);
      if (v12)
      {
        LOBYTE(v12) = *(v12 + 3312);
      }

      *&v26 = this + 48;
      *(&v26 + 1) = this + 56;
      v27 = this + 40;
      v28 = buf;
      v29 = v7 + 3328;
      v30 = &v25;
      v31 = &v38;
      v32[0] = v12 & 1;
      v33 = &v37;
      v34 = &v36;
      v13 = IPC::Encoder::operator new(0x238, v10);
      *v13 = 3083;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = 0;
      IPC::Encoder::encodeHeader(v13);
      v39 = v13;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, *(this + 6));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, *(this + 7));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, *(this + 5));
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v13, buf);
      IPC::ArgumentCoder<WebCore::FetchOptions,void>::encode(v13, v7 + 3328);
      IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(v13, &v25);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, &v38);
      IPC::Encoder::operator<<<BOOL &>(v13, v32);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, v33);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, v34);
      IPC::Connection::sendMessageImpl(v9, &v39, 0, 0);
      v14 = v39;
      v39 = 0;
      if (v14)
      {
        IPC::Encoder::~Encoder(v14, v8);
        bmalloc::api::tzoneFree(v22, v23);
      }

      v15 = v25;
      v25 = 0;
      if (v15)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v15);
      }

      v16 = v24;
      v24 = 0;
      if (v16)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v16);
      }

      goto LABEL_23;
    }

    __break(0xC471u);
LABEL_43:
    JUMPOUT(0x19DD6BD1CLL);
  }

LABEL_23:
  v17 = *(this + 35);
  if (v17 && *(v17 + 3835) == 1)
  {
    WebKit::ServiceWorkerFetchTask::sendNavigationPreloadUpdate(this);
  }

  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
  }

  v18 = v36;
  v36 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v8);
  }

  v19 = v37;
  v37 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v8);
  }

  WebCore::ResourceRequest::~ResourceRequest(buf);
  result = v38;
  v38 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v20);
  }

  if (*(v7 + 20) == 1)
  {
    return (*(*v7 + 24))(v7);
  }

  --*(v7 + 20);
  return result;
}

unsigned int *WebKit::ServiceWorkerFetchTask::workerClosed(WebKit::ServiceWorkerFetchTask *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 4);
      WebKit::WebSWServerToContextConnection::unregisterFetch(v3, this);
      if (*(v3 + 4) == 1)
      {
        (*(*v3 + 8))(v3);
      }

      else
      {
        --*(v3 + 4);
      }
    }
  }

  return WebKit::ServiceWorkerFetchTask::contextClosed(this);
}

unsigned int *WebKit::ServiceWorkerFetchTask::contextClosed(WebKit::ServiceWorkerFetchTask *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 5);
    v5 = *(this + 289);
    v6 = *(this + 288);
    *buf = 134218752;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    *&buf[22] = 1024;
    *&buf[24] = v5;
    *&buf[28] = 1024;
    *&buf[30] = v6;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::contextClosed: (m_isDone=%d, m_wasHandled=%d)", buf, 0x22u);
  }

  result = *(this + 4);
  *(this + 4) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v3);
  }

  if ((*(this + 289) & 1) == 0)
  {
    if (*(this + 288) == 1 && (*(this + 291) & 1) == 0)
    {
      v8 = *(MEMORY[0x1E69E26C8] + 8);
      if (v8)
      {
        if (v8 == 1)
        {
          v9 = MEMORY[0x1E696EB88];
          atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v9 = *buf;
        }
      }

      else
      {
        v9 = 0;
      }

      v17 = 0;
      WTF::URL::invalidate(&v17);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = *buf;
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      *buf = v9;
      v11 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      *&buf[8] = v11;
      *&buf[16] = v18;
      *&buf[32] = v19;
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      v21 = v10;
      v22 = 0;
      v23 = 1;
      cf = 0;
      v25 = 1;
      WebKit::ServiceWorkerFetchTask::didFail(this, buf);
      v13 = cf;
      cf = 0;
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = v21;
      v21 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v15 = *&buf[8];
      *&buf[8] = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }

      v16 = *buf;
      *buf = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v12);
      }

      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v12);
      }

      result = v17;
      v17 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }

      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(v9, v12);
        }
      }
    }

    else
    {
      return WebKit::ServiceWorkerFetchTask::cannotHandle(this);
    }
  }

  return result;
}

uint64_t WebKit::ServiceWorkerFetchTask::didFail(WebKit::ServiceWorkerFetchTask *this, const WebCore::ResourceError *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  *(this + 289) = 1;
  v4 = *(this + 33);
  if (v4 && (*(v4 + 4) & 0xFFFFFFFFFFFFLL) != 0 && *((*(v4 + 4) & 0xFFFFFFFFFFFFLL) + 8) != 0.0)
  {
    WebCore::TimerBase::stopSlowCase(v4);
    WebKit::ServiceWorkerFetchTask::softUpdateIfNeeded(this);
  }

  WebKit::ServiceWorkerFetchTask::cancelPreloadIfNecessary(this);
  v5 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
  {
    v9 = *(this + 5);
    MEMORY[0x19EB12BA0](a2);
    WTF::String::utf8();
    v10 = v13 ? v13 + 16 : 0;
    MEMORY[0x19EB12BA0](a2);
    v11 = *(a2 + 14);
    *buf = 134218754;
    v15 = this;
    v16 = 2048;
    v17 = v9;
    v18 = 2082;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::didFail: (error.domain=%{public}s, error.code=%d)", buf, 0x26u);
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::fastFree(v13, v12);
      }

      else
      {
        --*v13;
      }
    }
  }

  v6 = *(this + 3);
  if (!v6)
  {
    return WebKit::NetworkResourceLoader::didFailLoading(0, a2);
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return WebKit::NetworkResourceLoader::didFailLoading(0, a2);
  }

  ++*(v7 + 5);
  result = WebKit::NetworkResourceLoader::didFailLoading(v7, a2);
  if (*(v7 + 5) == 1)
  {
    return (*(*v7 + 24))(v7);
  }

  --*(v7 + 5);
  return result;
}

uint64_t WebKit::ServiceWorkerFetchTask::cannotHandle(WebKit::ServiceWorkerFetchTask *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  v3 = os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v4 = *(this + 5);
    *v8 = 134218240;
    *&v8[4] = this;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::cannotHandle:", v8, 0x16u);
  }

  WTF::RunLoop::mainSingleton(v3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
  v5 = *this;
  atomic_fetch_add(v5, 1u);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F1107EC8;
  v6[1] = v5;
  *v8 = v6;
  WTF::RunLoop::dispatch();
  result = *v8;
  *v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_ullong **WebKit::ServiceWorkerFetchTask::sendNavigationPreloadUpdate(WebKit::ServiceWorkerFetchTask *this)
{
  result = WebKit::ServiceWorkerFetchTask::serviceWorkerConnection(&v13, *(this + 4));
  v4 = v13;
  if (!v13)
  {
    return result;
  }

  v5 = *(this + 35);
  v6 = *(this + 6);
  if (v5[3796])
  {
    if (v6)
    {
      if (!*(this + 7))
      {
        __break(0xC471u);
        JUMPOUT(0x19DD6C570);
      }

      v7 = IPC::Encoder::operator new(0x238, v3);
      *v7 = 3075;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v14 = v7;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(this + 6));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(this + 7));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(this + 5));
      IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v7, (v5 + 3736));
      goto LABEL_9;
    }

LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19DD6C550);
  }

  if (!v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD6C590);
  }

  if (!*(this + 7))
  {
    goto LABEL_16;
  }

  v8 = IPC::Encoder::operator new(0x238, v3);
  *v8 = 3076;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(this + 6));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(this + 7));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(this + 5));
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v8, (v5 + 3464));
LABEL_9:
  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
}

void WebKit::ServiceWorkerFetchTask::didReceiveRedirectResponse(uint64_t a1, uint64_t a2)
{
  WebKit::ServiceWorkerFetchTask::cancelPreloadIfNecessary(a1);

  WebKit::ServiceWorkerFetchTask::processRedirectResponse(a1, a2, 1);
}

void WebKit::ServiceWorkerFetchTask::processRedirectResponse(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 289) & 1) == 0)
  {
    v6 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 134218240;
      v13 = a1;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::processRedirectResponse:", buf, 0x16u);
    }

    *(a1 + 288) = 1;
    v8 = *(a1 + 264);
    if (v8 && (*(v8 + 4) & 0xFFFFFFFFFFFFLL) != 0)
    {
      WebCore::TimerBase::stopSlowCase(v8);
    }

    WebKit::ServiceWorkerFetchTask::softUpdateIfNeeded(a1);
    if (a3)
    {
      *(a2 + 240) = *(a2 + 240) & 0xC3FF | 0x1800;
    }

    v9 = *(a1 + 24);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      ++v10[5];
      WebCore::ResourceRequestBase::redirectedRequest();
      WebCore::ResourceRequest::ResourceRequest(v11, (a1 + 64));
      WebKit::NetworkResourceLoader::willSendServiceWorkerRedirectedRequest(v10, v11, buf, a2);
      WebCore::ResourceRequest::~ResourceRequest(v11);
      WebCore::ResourceRequest::~ResourceRequest(buf);
      if (v10[5] == 1)
      {
        (*(*v10 + 24))(v10);
      }

      else
      {
        --v10[5];
      }
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::ServiceWorkerFetchTask::softUpdateIfNeeded(WebKit::ServiceWorkerFetchTask *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    v4 = *(this + 290);
    v15 = 134218496;
    v16 = this;
    v17 = 2048;
    v18 = v3;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::softUpdateIfNeeded: (m_shouldSoftUpdate=%d)", &v15, 0x1Cu);
  }

  if (*(this + 290) == 1)
  {
    v5 = *(this + 3);
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = *(v5 + 8);
    if (!v6)
    {
      goto LABEL_25;
    }

    ++*(v6 + 20);
    v7 = *(v6 + 4144);
    ++*(v7 + 5);
    v8 = WebKit::NetworkConnectionToWebProcess::swConnection(v7);
    v9 = v8;
    if (v8)
    {
      ++*(v8 + 16);
    }

    if (*(v7 + 5) == 1)
    {
      (*(*v7 + 8))(v7);
      if (v9)
      {
LABEL_10:
        v10 = *(v9 + 24);
        if (!v10 || (v11 = *(v10 + 8)) == 0)
        {
LABEL_16:
          if (*(v9 + 16) == 1)
          {
            (*(*v9 + 8))(v9);
          }

          else
          {
            --*(v9 + 16);
          }

          goto LABEL_18;
        }

        v12 = (v11 + 8);
        ++*(v11 + 8);
        if (*(this + 34))
        {
          Registration = WebCore::SWServer::getRegistration();
          if (Registration)
          {
            v14 = (Registration + 8);
            ++*(Registration + 8);
            WebCore::SWServerRegistration::scheduleSoftUpdate();
            WTF::RefCounted<WebCore::SWServerRegistration>::deref(v14);
          }

          WTF::RefCounted<WebCore::SWServer>::deref(v12);
          goto LABEL_16;
        }

LABEL_25:
        __break(0xC471u);
        JUMPOUT(0x19DD6CA1CLL);
      }
    }

    else
    {
      --*(v7 + 5);
      if (v8)
      {
        goto LABEL_10;
      }
    }

LABEL_18:
    if (*(v6 + 20) == 1)
    {
      (*(*v6 + 24))(v6);
    }

    else
    {
      --*(v6 + 20);
    }
  }
}

void WebKit::ServiceWorkerFetchTask::didReceiveResponse(WebKit::ServiceWorkerFetchTask *this, uint64_t a2, int a3)
{
  v6 = *(this + 35);
  if (v6 && (*(v6 + 3312) & 1) == 0)
  {
    WebKit::ServiceWorkerFetchTask::cancelPreloadIfNecessary(this);
  }

  WebKit::ServiceWorkerFetchTask::processResponse(this, a2, a3, 1);
}

void WebKit::ServiceWorkerFetchTask::processResponse(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 289) & 1) == 0)
  {
    v5 = *(a1 + 24);
    if (!v5 || (v6 = *(v5 + 8)) == 0)
    {
      __break(0xC471u);
      return;
    }

    ++*(v6 + 20);
    if (!WebKit::NetworkResourceLoader::continueAfterServiceWorkerReceivedResponse(v6, a2))
    {
      goto LABEL_42;
    }

    v10 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = WebCore::ResourceResponseBase::httpStatusCode(a2);
      WebCore::ResourceResponseBase::mimeType(a2);
      WTF::String::utf8();
      v13 = v32 ? v32 + 16 : 0;
      *buf = 134219522;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      v34 = 1024;
      v35 = v12;
      v36 = 2082;
      v37 = v13;
      v38 = 2048;
      v39 = WebCore::ResourceResponseBase::expectedContentLength(a2);
      LOWORD(v40) = 1024;
      *(&v40 + 2) = a3;
      HIWORD(v40) = 1024;
      v41 = WebCore::ResourceResponseBase::source(a2);
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::processResponse: (httpStatusCode=%d, MIMEType=%{public}s, expectedContentLength=%lld, needsContinueDidReceiveResponseMessage=%d, source=%u)", buf, 0x3Cu);
      if (v32)
      {
        if (*v32 == 1)
        {
          WTF::fastFree(v32, v14);
        }

        else
        {
          --*v32;
        }
      }
    }

    *(a1 + 288) = 1;
    v15 = *(a1 + 264);
    if (v15 && (*(v15 + 4) & 0xFFFFFFFFFFFFLL) != 0)
    {
      WebCore::TimerBase::stopSlowCase(v15);
    }

    WebKit::ServiceWorkerFetchTask::softUpdateIfNeeded(a1);
    v16 = *(v6 + 3329);
    if (!*(v6 + 3329))
    {
      if (*(v6 + 3588))
      {
        v17 = **(v6 + 3576);
        atomic_fetch_add(v17, 1u);
        if (v17)
        {
          WebCore::ResourceRequestBase::url((a1 + 64));
          WebCore::validateCrossOriginResourcePolicy();
          if (v43 == 1)
          {
            goto LABEL_20;
          }

          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v17, v27);
        }
      }

      v16 = *(v6 + 3329);
    }

    if (v16 == 2)
    {
      v17 = *(v6 + 312);
      atomic_fetch_add(v17, 1u);
      WebCore::ResourceRequestBase::url((a1 + 64));
      WebCore::validateCrossOriginResourcePolicy();
      if (v43 == 1)
      {
LABEL_20:
        WebKit::ServiceWorkerFetchTask::didFail(a1, buf);
        if (v43 == 1)
        {
          v28 = cf;
          cf = 0;
          if (v28)
          {
            CFRelease(v28);
          }

          v29 = v40;
          v40 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v19);
          }

          v30 = *&buf[8];
          *&buf[8] = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v19);
          }

          v31 = *buf;
          *buf = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v19);
          }
        }

        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v17, v19);
LABEL_42:
        if (*(v6 + 20) == 1)
        {
          (*(*v6 + 24))(v6);
        }

        else
        {
          --*(v6 + 20);
        }

        return;
      }

      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v17, v18);
    }

    WebKit::NetworkResourceLoader::doCrossOriginOpenerHandlingOfResponse(v6, a2, buf);
    if (v43 == 1)
    {
      WebKit::ServiceWorkerFetchTask::didFail(a1, buf);
      if (v43 == 1)
      {
        v21 = cf;
        cf = 0;
        if (v21)
        {
          CFRelease(v21);
        }

        v22 = v40;
        v40 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }

        v23 = *&buf[8];
        *&buf[8] = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v20);
        }

        v24 = *buf;
        *buf = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v20);
        }
      }
    }

    else
    {
      if (a4)
      {
        *(a2 + 240) = *(a2 + 240) & 0xC3FF | 0x1800;
      }

      WebKit::NetworkResourceLoader::sendDidReceiveResponsePotentiallyInNewBrowsingContextGroup(v6, a2, 0, a3);
      if (a3)
      {
        WebCore::ResourceResponseBase::operator=(v6 + 4160, a2);
        v25 = *(a2 + 248);
        *(a2 + 248) = 0;
        v26 = *(v6 + 4408);
        *(v6 + 4408) = v25;
        if (v26)
        {
          CFRelease(v26);
        }

        *(v6 + 4416) = *(a2 + 256);
      }
    }

    goto LABEL_42;
  }
}

uint64_t WebKit::ServiceWorkerFetchTask::didReceiveData(uint64_t this, atomic_uint **a2)
{
  if (*(this + 289))
  {
    return this;
  }

  v3 = this;
  this = IPC::SharedBufferReference::unsafeBuffer(a2, &v15);
  v4 = v15;
  if (!v15)
  {
    return this;
  }

  v5 = *(v3 + 24);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    ++*(v6 + 5);
    this = WebKit::NetworkResourceLoader::continueAfterServiceWorkerReceivedData(v6, v4);
    v7 = this;
    if (*(v6 + 5) != 1)
    {
      --*(v6 + 5);
      if (this)
      {
        goto LABEL_7;
      }

LABEL_19:
      v15 = 0;
LABEL_20:
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 2);
        return (*(*v4 + 8))(v4);
      }

      return this;
    }

    this = (*(*v6 + 24))(v6);
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    this = WebKit::NetworkResourceLoader::continueAfterServiceWorkerReceivedData(0, v15);
    if ((this & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_7:
  v8 = a2[1];
  v11 = *a2;
  if (v8)
  {
    atomic_fetch_add((v8 + 8), 1u);
  }

  v12 = v8;
  v9 = a2[2];
  if (v9)
  {
    atomic_fetch_add(v9, 1u);
  }

  v13 = v9;
  v14[0] = &v11;
  v14[1] = 0;
  WebKit::ServiceWorkerFetchTask::sendToClient<Messages::WebResourceLoader::DidReceiveData>(*(v3 + 24), v14);
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v10);
  }

  this = v12;
  v12 = 0;
  if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (this + 8));
    this = (*(*this + 8))(this);
  }

  v4 = v15;
  v15 = 0;
  if (v4)
  {
    goto LABEL_20;
  }

  return this;
}

IPC::Encoder *WebKit::ServiceWorkerFetchTask::sendToClient<Messages::WebResourceLoader::DidReceiveData>(uint64_t a1, uint64_t *a2)
{
  if (!a1 || (v2 = *(a1 + 8)) == 0 || (++*(v2 + 20), v3 = *(v2 + 4144), ++*(v3 + 20), (v4 = *(v2 + 3280)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DD6D28CLL);
  }

  v6 = *(v3 + 80);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3032;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v4;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v7, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2[1]);
  IPC::Connection::sendMessageImpl(v6, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  if (*(v3 + 20) == 1)
  {
    result = (*(*v3 + 8))(v3);
  }

  else
  {
    --*(v3 + 20);
  }

  if (*(v2 + 20) == 1)
  {
    return (*(*v2 + 24))(v2);
  }

  --*(v2 + 20);
  return result;
}

uint64_t WebKit::ServiceWorkerFetchTask::didFinish(WebKit::ServiceWorkerFetchTask *this, const WebCore::NetworkLoadMetrics *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 5);
    *v21 = 134218240;
    *&v21[4] = this;
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::didFinish:", v21, 0x16u);
  }

  *(this + 289) = 1;
  v6 = *(this + 33);
  if (v6 && (*(v6 + 4) & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase(v6);
  }

  v7 = *(this + 3);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    ++v8[5];
    WebKit::NetworkResourceLoader::serviceWorkerDidFinish(v8);
    if (v8[5] == 1)
    {
      (*(*v8 + 24))(v8);
    }

    else
    {
      --v8[5];
    }
  }

  else
  {
    WebKit::NetworkResourceLoader::serviceWorkerDidFinish(0);
  }

  v10 = *(this + 3);
  if (!v10 || (v11 = *(v10 + 8)) == 0 || (++*(v11 + 20), v12 = *(v11 + 4144), ++*(v12 + 20), (v13 = *(v11 + 3280)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DD6D544);
  }

  v14 = *(v12 + 80);
  v15 = IPC::Encoder::operator new(0x238, v9);
  *v15 = 3031;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 1) = v13;
  *(v15 + 68) = 0;
  *(v15 + 70) = 0;
  *(v15 + 69) = 0;
  IPC::Encoder::encodeHeader(v15);
  *v21 = v15;
  IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(v15, a2);
  IPC::Connection::sendMessageImpl(v14, v21, 0, 0);
  v17 = *v21;
  *v21 = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v16);
    bmalloc::api::tzoneFree(v19, v20);
  }

  if (*(v12 + 20) == 1)
  {
    (*(*v12 + 8))(v12);
  }

  else
  {
    --*(v12 + 20);
  }

  if (*(v11 + 20) == 1)
  {
    (*(*v11 + 24))(v11);
  }

  else
  {
    --*(v11 + 20);
  }

  return WebKit::ServiceWorkerFetchTask::cancelPreloadIfNecessary(this);
}

void WebKit::ServiceWorkerFetchTask::didNotHandle(WebKit::ServiceWorkerFetchTask *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(this + 289) & 1) == 0)
  {
    v2 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(this + 5);
      v8 = 134218240;
      v9 = this;
      v10 = 2048;
      v11 = v3;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::didNotHandle:", &v8, 0x16u);
    }

    v4 = *(this + 33);
    if (v4 && (*(v4 + 4) & 0xFFFFFFFFFFFFLL) != 0)
    {
      WebCore::TimerBase::stopSlowCase(v4);
    }

    WebKit::ServiceWorkerFetchTask::softUpdateIfNeeded(this);
    v5 = *(this + 35);
    if (v5 && (*(v5 + 3312) & 1) == 0)
    {
      WebKit::ServiceWorkerFetchTask::loadResponseFromPreloader(this);
    }

    else
    {
      *(this + 289) = 1;
      v6 = *(this + 3);
      if (v6 && (v7 = *(v6 + 8)) != 0)
      {
        ++*(v7 + 5);
        WebKit::NetworkResourceLoader::serviceWorkerDidNotHandle(v7, this);
        if (*(v7 + 5) == 1)
        {
          (*(*v7 + 24))(v7);
        }

        else
        {
          --*(v7 + 5);
        }
      }

      else
      {
        WebKit::NetworkResourceLoader::serviceWorkerDidNotHandle(0, this);
      }
    }
  }
}

void WebKit::ServiceWorkerFetchTask::loadResponseFromPreloader(WebKit::ServiceWorkerFetchTask *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    *v7 = 134218240;
    *&v7[4] = this;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::loadResponseFromPreloader", v7, 0x16u);
  }

  if ((*(this + 291) & 1) == 0)
  {
    *(this + 291) = 1;
    v4 = *(this + 35);
    if (v4)
    {
      ++v4[5];
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
    v5 = *this;
    atomic_fetch_add(v5, 1u);
    v6 = WTF::fastMalloc(0x10);
    *v6 = &unk_1F1107EF0;
    v6[1] = v5;
    *v7 = v6;
    WebKit::ServiceWorkerNavigationPreloader::waitForResponse(v4, v7);
    if (*v7)
    {
      (*(**v7 + 8))(*v7);
      if (!v4)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    if (v4[5] == 1)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      --v4[5];
    }
  }
}

void WebKit::ServiceWorkerFetchTask::usePreload(WebKit::ServiceWorkerFetchTask *this)
{
  if ((*(this + 289) & 1) == 0)
  {
    if (*(this + 35))
    {

      WebKit::ServiceWorkerFetchTask::loadResponseFromPreloader(this);
    }

    else
    {
      *(this + 289) = 1;
      v1 = *(this + 3);
      if (v1 && (v2 = *(v1 + 8)) != 0)
      {
        ++*(v2 + 5);
        WebKit::NetworkResourceLoader::serviceWorkerDidNotHandle(v2, this);
        if (*(v2 + 5) == 1)
        {
          v3 = *(*v2 + 24);

          v3(v2);
        }

        else
        {
          --*(v2 + 5);
        }
      }

      else
      {

        WebKit::NetworkResourceLoader::serviceWorkerDidNotHandle(0, this);
      }
    }
  }
}

void WebKit::ServiceWorkerFetchTask::cancelFromClient(WebKit::ServiceWorkerFetchTask *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    v4 = *(this + 289);
    *buf = 134218496;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    v8 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::cancelFromClient: isDone=%d", buf, 0x1Cu);
  }

  if ((*(this + 289) & 1) == 0)
  {
    if (*(this + 291) == 1)
    {
      WebKit::ServiceWorkerFetchTask::cancelPreloadIfNecessary(this);
    }

    else
    {
      WebKit::ServiceWorkerFetchTask::serviceWorkerConnection(&v6, *(this + 4));
      v5 = v6;
      if (v6)
      {
        if (!*(this + 6) || !*(this + 7))
        {
          __break(0xC471u);
          JUMPOUT(0x19DD6DAB0);
        }

        *buf = this + 48;
        *&buf[8] = this + 56;
        *&buf[16] = this + 40;
        IPC::Connection::send<Messages::WebSWContextManagerConnection::CancelFetch>(v6, buf, 0, 0, 0);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
      }
    }
  }
}

uint64_t IPC::Connection::send<Messages::WebSWContextManagerConnection::CancelFetch>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3059;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::WebSWContextManagerConnection::CancelFetch::encode<IPC::Encoder>(a2, v10);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

atomic_ullong **WebKit::ServiceWorkerFetchTask::continueDidReceiveFetchResponse(WebKit::ServiceWorkerFetchTask *this)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::continueDidReceiveFetchResponse:", buf, 0x16u);
  }

  if (*(this + 291) == 1)
  {
    v4 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 5);
      *buf = 134218240;
      *&buf[4] = this;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::loadBodyFromPreloader", buf, 0x16u);
    }

    v6 = *(this + 35);
    if (v6)
    {
      ++*(v6 + 20);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
      v7 = *this;
      atomic_fetch_add(*this, 1u);
      v8 = WTF::fastMalloc(0x10);
      v9 = v8;
      *v8 = &unk_1F1107F18;
      *(v8 + 8) = v7;
      if (*(v6 + 3796) || (v28 = *(v6 + 3728)) == 0)
      {
        *buf = 0;
        WTF::Detail::CallableWrapper<WebKit::ServiceWorkerFetchTask::loadBodyFromPreloader(void)::$_0,void,WTF::RefPtr<WebCore::FragmentedSharedBuffer const,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer const>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer const>> &&>::call(v8, buf);
        v10 = *buf;
        *buf = 0;
        if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v10 + 2);
          (*(*v10 + 8))(v10);
        }

        result = (*(*v9 + 8))(v9);
      }

      else
      {
        v29 = *(v6 + 3824);
        *(v6 + 3824) = v9;
        if (v29)
        {
          (*(*v29 + 8))(v29);
          v28 = *(v6 + 3728);
        }

        *(v6 + 3728) = 0;
        (*(*v28 + 16))(v28, 0);
        result = (*(*v28 + 8))(v28);
      }

      if (*(v6 + 20) == 1)
      {
        return (*(*v6 + 24))(v6);
      }

      --*(v6 + 20);
      return result;
    }

    v17 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_ERROR))
    {
      v32 = *(this + 5);
      *buf = 134218240;
      *&buf[4] = this;
      *&buf[12] = 2048;
      *&buf[14] = v32;
      _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::loadBodyFromPreloader preloader is null", buf, 0x16u);
    }

    v18 = *(MEMORY[0x1E69E26C8] + 8);
    if (v18)
    {
      if (v18 == 1)
      {
        v19 = MEMORY[0x1E696EB88];
        atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
      }

      else
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v19 = *buf;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = WebCore::ResourceRequestBase::url((this + 64));
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v21 = *buf;
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    }

    *buf = v19;
    v22 = *v20;
    if (*v20)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    *&buf[8] = v22;
    v23 = *(v20 + 24);
    *&buf[16] = *(v20 + 8);
    v35 = v23;
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v36 = v21;
    v37 = 0;
    v38 = 3;
    cf = 0;
    v40 = 1;
    WebKit::ServiceWorkerFetchTask::didFail(this, buf);
    v25 = cf;
    cf = 0;
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = v36;
    v36 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v24);
    }

    v27 = *&buf[8];
    *&buf[8] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v24);
    }

    result = *buf;
    *buf = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v24);
      if (v21)
      {
LABEL_40:
        if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(v21, v24);
        }
      }
    }

    else if (v21)
    {
      goto LABEL_40;
    }

    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v19, v24);
    }

    return result;
  }

  result = WebKit::ServiceWorkerFetchTask::serviceWorkerConnection(&v33, *(this + 4));
  v13 = v33;
  if (v33)
  {
    if (!*(this + 6) || !*(this + 7))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD6E108);
    }

    v14 = IPC::Encoder::operator new(0x238, v12);
    *v14 = 3062;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = 0;
    IPC::Encoder::encodeHeader(v14);
    *buf = v14;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, *(this + 6));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, *(this + 7));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, *(this + 5));
    IPC::Connection::sendMessageImpl(v13, buf, 0, 0);
    v16 = *buf;
    *buf = 0;
    if (v16)
    {
      IPC::Encoder::~Encoder(v16, v15);
      bmalloc::api::tzoneFree(v30, v31);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v13);
  }

  return result;
}

void WebKit::ServiceWorkerFetchTask::continueFetchTaskWith(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v6)
    {
      LODWORD(v6) = *(v6 + 8) != 0;
    }

    v20 = 134218496;
    v21 = a1;
    v22 = 2048;
    v23 = v5;
    v24 = 1024;
    v25 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [fetchIdentifier=%llu] ServiceWorkerFetchTask::continueFetchTaskWith: (hasServiceWorkerConnection=%d)", &v20, 0x1Cu);
  }

  v7 = *(a1 + 24);
  if (v7 && (v8 = *(v7 + 8)) != 0)
  {
    ++*(v8 + 5);
    v9 = *(a1 + 32);
    if (v9 && *(v9 + 8))
    {
      if (*(a1 + 264))
      {
        WebCore::TimerBase::start();
      }

      WebCore::ResourceRequestBase::RequestData::operator=(a1 + 64, a2);
      v11 = *(a2 + 152);
      *(a2 + 152) = 0;
      v12 = *(a1 + 216);
      *(a1 + 216) = v11;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      v13 = *(a2 + 160);
      *(a2 + 160) = 0;
      v14 = *(a1 + 224);
      *(a1 + 224) = v13;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v10);
      }

      v15 = *(a2 + 168);
      *(a2 + 168) = 0;
      v16 = *(a1 + 232);
      *(a1 + 232) = v15;
      if (v16)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v16);
      }

      v17 = *(a2 + 176);
      *(a1 + 248) = *(a2 + 184);
      *(a1 + 240) = v17;
      v18 = *(a2 + 192);
      *(a2 + 192) = 0;
      v19 = *(a1 + 256);
      *(a1 + 256) = v18;
      if (v19)
      {
        CFRelease(v19);
      }

      WebKit::ServiceWorkerFetchTask::startFetch(a1);
    }

    else
    {
      WebKit::NetworkResourceLoader::serviceWorkerDidNotHandle(v8, a1);
    }

    if (*(v8 + 5) == 1)
    {
      (*(*v8 + 24))(v8);
    }

    else
    {
      --*(v8 + 5);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::ServiceWorkerFetchTask::preloadResponseIsReady(WebKit::ServiceWorkerFetchTask *this)
{
  v2 = *(this + 35);
  if (*(this + 291))
  {
    if (*(v2 + 3796))
    {
      v3 = *(v2 + 3736);
      if (v3)
      {
        atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      }

      v16 = v3;
      v4 = *(v2 + 3744);
      if (v4)
      {
        atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      }

      v17 = v4;
      v5 = *(v2 + 3768);
      v18 = *(v2 + 3752);
      v19 = v5;
      v6 = *(v2 + 3784);
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      v20 = v6;
      v21 = *(v2 + 3792);
      v22 = *(v2 + 3796);
      v7 = *(v2 + 3800);
      v23 = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v24 = *(v2 + 3808);
      WebKit::ServiceWorkerFetchTask::didFail(this, &v16);
      v9 = v23;
      v23 = 0;
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = v20;
      v20 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v8);
      }

      v11 = v17;
      v17 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }

      v12 = v16;
      v16 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v8);
        }
      }
    }

    else
    {
      WebCore::ResourceResponse::ResourceResponse(&v16, (v2 + 3464));
      if (WebCore::ResourceResponseBase::isRedirection(&v16) && (WebCore::ResourceResponseBase::httpHeaderFields(&v16), WebCore::HTTPHeaderMap::contains()))
      {
        WebKit::ServiceWorkerFetchTask::processRedirectResponse(this, &v16, 0);
      }

      else
      {
        WebKit::ServiceWorkerFetchTask::processResponse(this, &v16, 1, 0);
      }

      v15 = cf;
      cf = 0;
      if (v15)
      {
        CFRelease(v15);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v16, v14);
    }
  }

  else if (v2)
  {
    if (*(v2 + 3312) == 1)
    {
      v13 = *(this + 4);
      if (v13)
      {
        if (*(v13 + 8))
        {

          WebKit::ServiceWorkerFetchTask::sendNavigationPreloadUpdate(this);
        }
      }
    }
  }
}

uint64_t WebKit::ServiceWorkerFetchTask::session(WebKit::ServiceWorkerFetchTask *this)
{
  if (!this)
  {
    return 0;
  }

  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  ++*(v1 + 4);
  v2 = WebKit::WebSWServerConnection::session(v1);
  if (*(v1 + 4) == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --*(v1 + 4);
  }

  return v2;
}

_DWORD *WebKit::ServiceWorkerNavigationPreloader::cancel(WebKit::ServiceWorkerNavigationPreloader *this)
{
  *(this + 3833) = 1;
  v2 = *(this + 466);
  if (v2)
  {
    *(this + 466) = 0;
    (*(*v2 + 16))(v2, 2);
    (*(*v2 + 8))(v2);
  }

  result = *(this + 3);
  if (result)
  {
    v4 = result + 4;
    ++result[4];
    WebKit::NetworkLoad::cancel(result);

    return WTF::RefCounted<WebKit::NetworkLoad>::deref(v4, v5);
  }

  return result;
}

BOOL WebKit::ServiceWorkerFetchTask::convertToDownload(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *a4, WebCore::ResourceResponseBase *a5)
{
  v9 = *(a1 + 280);
  if (!v9)
  {
    v17 = WebKit::ServiceWorkerFetchTask::session(*(a1 + 16));
    if (!v17)
    {
      return 0;
    }

    v19 = v17;
    v20 = *(v17 + 16) + 1;
    *(v17 + 16) = v20;
    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = *(v21 + 8);
      v12 = v22 != 0;
      if (v22)
      {
        ++*(v22 + 16);
        *(a1 + 289) = 1;
        v23 = *(a1 + 24);
        v51 = v22;
        if (v23)
        {
          v24 = *(v23 + 8);
          if (v24)
          {
            ++*(v24 + 20);
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = WebKit::NetworkLoad::operator new(0xDD0, v18);
        *(v25 + 16) = 1;
        *v25 = &unk_1F1100EF0;
        *(v25 + 8) = 0;
        WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v24 + 8), v24);
        v50 = v24;
        v26 = *(v24 + 8);
        atomic_fetch_add(v26, 1u);
        *(v25 + 24) = v26;
        v27 = *(v19 + 32);
        atomic_fetch_add((v27 + 144), 1u);
        *(v25 + 32) = v27;
        *(v25 + 48) = 0u;
        *(v25 + 64) = 0u;
        *(v25 + 76) = 0u;
        WebCore::ResourceRequest::ResourceRequest((v25 + 96));
        *(v25 + 296) = 0;
        *(v25 + 300) = 1;
        *(v25 + 302) = 0;
        *(v25 + 304) = 0;
        *(v25 + 3216) = 0;
        *(v25 + 3256) = 0;
        *(v25 + 3280) = 0;
        *(v25 + 3232) = 0u;
        *(v25 + 3248) = 0;
        *(v25 + 3288) = 16777472;
        *(v25 + 3292) = 0;
        *(v25 + 3296) = 0;
        v29 = *(a1 + 56);
        if (!v29)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD6EC78);
        }

        v30 = *(a1 + 48);
        if (!v30)
        {
          __break(0xC471u);
          goto LABEL_61;
        }

        v52 = v19;
        v48 = *(a1 + 40);
        if (WebKit::ServiceWorkerDownloadTask::s_heapRef)
        {
          NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ServiceWorkerDownloadTask::s_heapRef, v28);
        }

        else
        {
          NonCompact = WebKit::ServiceWorkerDownloadTask::operatorNewSlow(0);
        }

        v32 = NonCompact;
        v33 = WebKit::NetworkDataTask::NetworkDataTask(NonCompact, v52, v25, a4, 0, 0, 0);
        v34 = WTF::FunctionDispatcher::FunctionDispatcher((v33 + 552));
        *(v32 + 568) = 0;
        *v32 = &unk_1F11079C8;
        v49 = v34;
        *(v32 + 552) = &unk_1F1107A58;
        *(v32 + 560) = &unk_1F1107A80;
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v51 + 8), v51);
        v35 = *(v51 + 8);
        atomic_fetch_add(v35, 1u);
        *(v32 + 576) = v35;
        *(v32 + 584) = v29;
        *(v32 + 592) = v30;
        *(v32 + 600) = v48;
        *(v32 + 608) = a3;
        v36 = *(v51 + 152);
        if (v36)
        {
          v36 = *(v36 + 8);
          if (v36)
          {
            v36 = *(v36 + 32);
          }
        }

        atomic_fetch_add((v36 + 144), 1u);
        *(v32 + 616) = v36;
        *(v32 + 624) = 0;
        v37 = 1;
        WTF::FileSystemImpl::FileHandle::FileHandle((v32 + 632));
        *(v32 + 640) = 0;
        *(v32 + 648) = 0;
        *(v32 + 656) = 0;
        *(v32 + 664) = 1;
        v38 = WebCore::ResourceResponseBase::expectedContentLength(a5);
        if (v38 != -1)
        {
          if ((*(v32 + 656) & 1) == 0)
          {
            *(v32 + 656) = 1;
          }

          *(v32 + 648) = v38;
        }

        v56 = *(v32 + 600);
        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::ServiceWorkerDownloadTask,WTF::NoTaggingTraits<WebKit::ServiceWorkerDownloadTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::ServiceWorkerDownloadTask,WTF::NoTaggingTraits<WebKit::ServiceWorkerDownloadTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::ServiceWorkerDownloadTask&>((v51 + 168), &v56, v32, &v54);
        v39 = *(v32 + 576);
        if (v39)
        {
          v40 = *(v39 + 8);
          if (v40)
          {
            v37 = 0;
            ++v40[4];
          }
        }

        else
        {
          v40 = 0;
        }

        WebKit::WebSWServerToContextConnection::protectedIPCConnection(v40, &v54);
        v41 = v54;
        IPC::Connection::addMessageReceiver(v54, v49, v32 + 560, 139, *(v32 + 600));
        if (v41)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v41);
        }

        if ((v37 & 1) == 0)
        {
          if (v40[4] == 1)
          {
            (*(*v40 + 8))(v40);
          }

          else
          {
            --v40[4];
          }
        }

        while (1)
        {
          v42 = *(v32 + 8);
          if ((v42 & 1) == 0)
          {
            break;
          }

          v43 = *(v32 + 8);
          atomic_compare_exchange_strong_explicit((v32 + 8), &v43, v42 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v43 == v42)
          {
            goto LABEL_39;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v32 + 8));
LABEL_39:
        *(v25 + 3312) = v32;
        *(v25 + 3320) = 0;
        WebCore::ResourceRequest::ResourceRequest((v25 + 3328));
        v56 = v25;
        if (v50[5] == 1)
        {
          (*(*v50 + 24))(v50);
        }

        else
        {
          --v50[5];
        }

        v44 = WTF::fastMalloc(0x10);
        *v44 = &unk_1F1107F40;
        v44[1] = v32;
        v53 = v44;
        v54 = 0;
        v55 = 0;
        WebKit::DownloadManager::convertNetworkLoadToDownload(a2, a3, &v56, &v53, &v54, a4, a5);
        WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v45);
        v47 = v53;
        v53 = 0;
        if (v47)
        {
          (*(*v47 + 8))(v47);
        }

        v19 = v52;
        if (v56)
        {
          WTF::RefCounted<WebKit::NetworkLoad>::deref((v56 + 16), v46);
        }

        if (*(v51 + 16) == 1)
        {
          (*(*v51 + 8))(v51);
        }

        else
        {
          --*(v51 + 16);
        }
      }

      v20 = *(v19 + 16);
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      *(v19 + 16) = v20 - 1;
      return v12;
    }

    __break(0xC471u);
LABEL_61:
    JUMPOUT(0x19DD6EC58);
  }

  v10 = *(v9 + 20);
  *(v9 + 20) = v10 + 1;
  v11 = *(v9 + 24);
  v12 = v11 != 0;
  if (v11)
  {
    *(v9 + 24) = 0;
    v56 = v11;
    v54 = 0;
    v55 = 0;
    WebKit::DownloadManager::convertNetworkLoadToDownload(a2, a3, &v56, (v9 + 3728), &v54, a4, a5);
    WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v13);
    if (v56)
    {
      WTF::RefCounted<WebKit::NetworkLoad>::deref((v56 + 16), v14);
    }

    v10 = *(v9 + 20) - 1;
  }

  if (v10)
  {
    *(v9 + 20) = v10;
  }

  else
  {
    (*(*v9 + 24))(v9);
  }

  return v12;
}

_DWORD *WebKit::ServiceWorkerNavigationPreloader::didFailLoading(WebKit::ServiceWorkerNavigationPreloader *this, const WebCore::ResourceError *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = this;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "ServiceWorkerNavigationPreloader::didFailLoading %p", &v11, 0xCu);
  }

  *(this + 3835) = 1;
  WTF::String::operator=(this + 467, a2);
  WTF::String::operator=(this + 468, a2 + 1);
  v5 = *(a2 + 2);
  *(this + 3752) = *(a2 + 1);
  *(this + 3768) = v5;
  WTF::String::operator=(this + 473, a2 + 6);
  v7 = *(a2 + 14);
  *(this + 1898) = *(a2 + 30);
  *(this + 948) = v7;
  v8 = *(a2 + 8);
  if (v8)
  {
    CFRetain(*(a2 + 8));
  }

  v9 = *(this + 475);
  *(this + 475) = v8;
  if (v9)
  {
    CFRelease(v9);
  }

  *(this + 3808) = *(a2 + 72);
  return WebKit::ServiceWorkerNavigationPreloader::didComplete(this, v6);
}

_DWORD *WebKit::ServiceWorkerNavigationPreloader::loadFromNetwork(WebKit::ServiceWorkerNavigationPreloader *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "ServiceWorkerNavigationPreloader::loadFromNetwork %p", &v12, 0xCu);
  }

  if (*(this + 3312) == 1)
  {
    WebCore::ResourceRequestBase::addHTTPHeaderField();
  }

  v4 = *(this + 4);
  if (!v4 || (v5 = *(v4 + 8)) == 0 || (++*(v5 + 4), v6 = WebKit::NetworkLoad::operator new(0xDD0, v3), WebKit::NetworkLoad::NetworkLoad(v6, this, this + 3, v5), (v8 = *(v5 + 4)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DD6EF38);
  }

  *(v5 + 4) = v8 - 1;
  ++*(v6 + 16);
  v9 = *(this + 3);
  *(this + 3) = v6;
  if (v9)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v9 + 16), v7);
  }

  WebKit::NetworkLoad::start(v6);
  return WTF::RefCounted<WebKit::NetworkLoad>::deref((v6 + 16), v10);
}

void WebKit::ServiceWorkerNavigationPreloader::~ServiceWorkerNavigationPreloader(WebKit::ServiceWorkerNavigationPreloader *this, WTF::StringImpl *a2)
{
  v3 = *(this + 478);
  *(this + 478) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 477);
  *(this + 477) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 475);
  *(this + 475) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 473);
  *(this + 473) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 468);
  *(this + 468) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 467);
  *(this + 467) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 466);
  *(this + 466) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 464);
  *(this + 464) = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 3464), a2);
  v12 = *(this + 432);
  *(this + 432) = 0;
  if (v12)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v12, v11);
  }

  v13 = *(this + 428);
  *(this + 428) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](this + 416, 0);
  v15 = *(this + 415);
  *(this + 415) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  if (*(this + 3280) == 1)
  {
    v22 = *(this + 409);
    *(this + 409) = 0;
    if (v22)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 3232, v14);
  if (*(this + 3216) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData((this + 304), v16);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 96));
  v18 = *(this + 10);
  *(this + 10) = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v18, v17);
  }

  v19 = *(this + 9);
  *(this + 9) = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v19, v17);
  }

  v20 = *(this + 4);
  *(this + 4) = 0;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    WTF::fastFree(v20, v17);
  }

  v21 = *(this + 3);
  *(this + 3) = 0;
  if (v21)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v21 + 16), v17);
  }

  if (*(this + 5) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v17);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::ServiceWorkerNavigationPreloader::~ServiceWorkerNavigationPreloader(this, a2);
  if (atomic_load(v2 + 4))
  {

    bzero(v2, 0xF10uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }
}

_DWORD *WebKit::ServiceWorkerNavigationPreloader::loadWithCacheEntry(WebKit::ServiceWorkerNavigationPreloader *this, WebKit::NetworkCache::Entry *a2)
{
  WebCore::ResourceResponse::ResourceResponse(v12, (a2 + 80));
  v4 = *(a2 + 71);
  if (v4 || (WebKit::NetworkCache::Entry::initializeBufferFromStorageRecord(a2), (v4 = *(a2 + 71)) != 0))
  {
    atomic_fetch_add((v4 + 8), 1u);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v5 = *(this + 1);
  atomic_fetch_add(v5, 1u);
  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F1107F90;
  v6[1] = v4;
  v6[2] = v5;
  v11 = v6;
  WebKit::ServiceWorkerNavigationPreloader::didReceiveResponse(this, v12, 0, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v8 = cf;
  cf = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v12, v7);
  return WebKit::ServiceWorkerNavigationPreloader::didComplete(this, v9);
}

uint64_t WebKit::ServiceWorkerNavigationPreloader::didReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = a1;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "ServiceWorkerNavigationPreloader::didReceiveResponse %p", &v18, 0xCu);
  }

  *(a1 + 3835) = 1;
  if (WebCore::ResourceResponseBase::isRedirection(a2))
  {
    *(a2 + 240) |= 0x300u;
  }

  if (WebCore::ResourceResponseBase::httpStatusCode(a2) == 304 && (v8 = *(a1 + 3328)) != 0)
  {
    *(a1 + 3328) = 0;
    WebKit::ServiceWorkerNavigationPreloader::loadWithCacheEntry(a1, v8);
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, 2);
    (*(*v9 + 8))(v9);
    WebKit::NetworkCache::Entry::~Entry(v8, v10);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  else
  {
    WebCore::ResourceResponseBase::operator=(a1 + 3464, a2);
    v14 = *(a2 + 248);
    *(a2 + 248) = 0;
    v15 = *(a1 + 3712);
    *(a1 + 3712) = v14;
    if (v15)
    {
      CFRelease(v15);
    }

    *(a1 + 3720) = *(a2 + 256);
    *(a1 + 3704) &= ~0x40u;
    v16 = *a4;
    *a4 = 0;
    result = *(a1 + 3728);
    *(a1 + 3728) = v16;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v17 = *(a1 + 3816);
    *(a1 + 3816) = 0;
    if (v17)
    {
      (*(*v17 + 16))(v17);
      return (*(*v17 + 8))(v17);
    }
  }

  return result;
}

_DWORD *WebKit::ServiceWorkerNavigationPreloader::didComplete(_DWORD *this, void *a2)
{
  v2 = this;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    this = WTF::RefCounted<WebKit::NetworkLoad>::deref((v3 + 16), a2);
  }

  v4 = v2 + 954;
  v5 = *(v2 + 477);
  v6 = *(v2 + 478);
  *v4 = 0u;
  if (v5)
  {
    this = (*(*v5 + 16))(v5);
  }

  if (v6)
  {
    v8 = 0;
    (*(*v6 + 16))(v6, &v8);
    v7 = v8;
    v8 = 0;
    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7 + 2);
      (*(*v7 + 8))(v7);
    }

    this = (*(*v6 + 8))(v6);
  }

  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return this;
}

uint64_t WebKit::ServiceWorkerNavigationPreloader::willSendRedirectedRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v8 = *(a1 + 8);
  atomic_fetch_add(v8, 1u);
  v9 = *a5;
  *a5 = 0;
  v10 = WTF::fastMalloc(0x18);
  *v10 = &unk_1F1107FB8;
  v10[1] = v8;
  v10[2] = v9;
  v13 = v10;
  WebKit::ServiceWorkerNavigationPreloader::didReceiveResponse(a1, a4, 0, &v13);
  result = v13;
  if (v13)
  {
    v12 = *(*v13 + 8);

    return v12();
  }

  return result;
}

uint64_t WebKit::ServiceWorkerNavigationPreloader::didReceiveBuffer(uint64_t result, uint64_t a2)
{
  if (*(result + 3824))
  {
    atomic_fetch_add((a2 + 8), 1u);
    v2 = a2;
    (*(**(result + 3824) + 16))(*(result + 3824), &v2);
    result = v2;
    v2 = 0;
    if (result)
    {
      if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (result + 8));
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

_DWORD *WebKit::ServiceWorkerNavigationPreloader::didFinishLoading(WebKit::ServiceWorkerNavigationPreloader *this, const WebCore::NetworkLoadMetrics *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = this;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "ServiceWorkerNavigationPreloader::didFinishLoading %p", &v14, 0xCu);
  }

  v5 = *(a2 + 1);
  *(this + 3336) = *a2;
  *(this + 3352) = v5;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  *(this + 427) = *(a2 + 10);
  *(this + 3384) = v7;
  *(this + 3400) = v8;
  *(this + 3368) = v6;
  WTF::String::operator=(this + 428, a2 + 11);
  v10 = *(a2 + 6);
  *(this + 431) = *(a2 + 14);
  *(this + 3432) = v10;
  v11 = *(a2 + 15);
  if (v11)
  {
    ++*v11;
  }

  v12 = *(this + 432);
  *(this + 432) = v11;
  if (v12)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v12, v9);
  }

  return WebKit::ServiceWorkerNavigationPreloader::didComplete(this, v9);
}

uint64_t WebKit::ServiceWorkerSoftUpdateLoader::operator new(WebKit::ServiceWorkerSoftUpdateLoader *this, void *a2)
{
  if (this == 432 && WebKit::ServiceWorkerSoftUpdateLoader::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ServiceWorkerSoftUpdateLoader::s_heapRef, a2);
  }

  else
  {
    return WebKit::ServiceWorkerSoftUpdateLoader::operatorNewSlow(this);
  }
}

uint64_t WebKit::ServiceWorkerSoftUpdateLoader::ServiceWorkerSoftUpdateLoader(uint64_t a1, uint64_t a2, uint64_t a3, char a4, const WebCore::ResourceRequest *a5, uint64_t *a6)
{
  *(a1 + 8) = 0;
  v11 = (a1 + 8);
  *(a1 + 16) = 0x100000000;
  *a1 = &unk_1F1107B58;
  v12 = *a6;
  *a6 = 0;
  *(a1 + 24) = v12;
  WTF::URL::URL(a1 + 32, a3);
  WTF::URL::URL(a1 + 72, (a3 + 40));
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 112));
  WTF::URL::URL(a1 + 144, (a3 + 112));
  v13 = *(a3 + 160);
  v14 = *(a3 + 176);
  v15 = *(a3 + 192);
  *(a1 + 240) = *(a3 + 208);
  *(a1 + 208) = v14;
  *(a1 + 224) = v15;
  *(a1 + 192) = v13;
  v16 = *(a3 + 216);
  *(a3 + 216) = 0;
  *(a1 + 248) = v16;
  *(a1 + 256) = *(a3 + 224);
  *(a1 + 264) = 0;
  *(a1 + 280) = 0;
  if (*(a3 + 248) == 1)
  {
    v17 = *(a3 + 232);
    *(a3 + 232) = 0;
    *(a1 + 264) = v17;
    *(a1 + 272) = *(a3 + 240);
    *(a1 + 280) = 1;
  }

  *(a1 + 288) = *(a3 + 256);
  *(a1 + 304) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v18 = *(a2 + 8);
  atomic_fetch_add(v18, 1u);
  *(a1 + 312) = v18;
  *(a1 + 360) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 349) = 0;
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 420) = 1;
  *(a1 + 424) = 0;
  v19 = *(a2 + 624);
  if (v19)
  {
    ++*(v19 + 8);
    WebCore::ResourceRequestBase::setCachePolicy();
    LOBYTE(v49) = 0;
    v50 = 0;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, a1);
    v20 = *(a1 + 8);
    atomic_fetch_add(v20, 1u);
    v33 = v20;
    WebCore::ResourceRequest::ResourceRequest(v34, a5);
    v47 = a4;
    v21 = WTF::fastMalloc(0xE8);
    *v21 = &unk_1F1107FE0;
    *(v21 + 8) = a1;
    *(v21 + 16) = v33;
    WTF::URL::URL(v21 + 24, v34);
    WTF::URL::URL(v21 + 64, v35);
    *&v22 = 0;
    *(v21 + 104) = v35[5];
    v23 = v37;
    v37 = 0;
    *(v21 + 112) = v36;
    v24 = *(&v36 + 1);
    v36 = 0u;
    *(v21 + 120) = v24;
    *(v21 + 128) = v23;
    v25 = v38;
    v38 = v22;
    *(v21 + 136) = v25;
    v26 = v39;
    v39 = v22;
    *(v21 + 152) = v26;
    LODWORD(v24) = v40;
    *(v21 + 172) = v41;
    *(v21 + 168) = v24;
    *(v21 + 176) = v42;
    v27 = *(&v42 + 1);
    v42 = 0u;
    *(v21 + 184) = v27;
    *(v21 + 192) = v43;
    v28 = v44;
    *(v21 + 208) = v45;
    *(v21 + 200) = v28;
    v29 = v46;
    v43 = 0;
    v46 = 0;
    *(v21 + 216) = v29;
    *(v21 + 224) = v47;
    v48 = v21;
    WebKit::NetworkCache::Cache::retrieve(v19, a5, &v49, 256, 1, 0, &v48);
    v30 = v48;
    v48 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    WebCore::ResourceRequest::~ResourceRequest(v34);
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v19 + 8), v31);
  }

  else
  {
    WebKit::ServiceWorkerSoftUpdateLoader::loadFromNetwork(a1, a2, a5);
  }

  return a1;
}

uint64_t WebKit::ServiceWorkerSoftUpdateLoader::loadFromNetwork(uint64_t a1, WebKit::NetworkSession *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  memset(v27, 0, 44);
  WebCore::ResourceRequest::ResourceRequest(v28);
  v35 = 65537;
  v36 = 257;
  v37 = 0;
  v38[0] = 0;
  v39 = 0;
  v42 = 0;
  v44 = 0;
  v40 = 0u;
  v41 = 0;
  v45 = 16777472;
  v46 = 0;
  v47 = 0;
  WebCore::ResourceRequestBase::RequestData::operator=(v28, a3);
  v7 = *(a3 + 152);
  *(a3 + 152) = 0;
  v8 = v29;
  v29 = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(a3 + 160);
  *(a3 + 160) = 0;
  v10 = v30;
  v30 = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  v11 = *(a3 + 168);
  *(a3 + 168) = 0;
  v12 = v31;
  v31 = v11;
  if (v12)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v12);
  }

  v32 = *(a3 + 176);
  v33 = *(a3 + 184);
  v13 = *(a3 + 192);
  *(a3 + 192) = 0;
  v14 = cf;
  cf = v13;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = WebKit::NetworkLoad::operator new(0xDD0, v6);
  v16 = WebKit::NetworkLoad::NetworkLoad(v15, a1, v27, a2);
  v18 = (v16 + 16);
  ++*(v16 + 16);
  v19 = *(a1 + 304);
  *(a1 + 304) = v16;
  if (v19)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v19 + 16), v17);
  }

  WebKit::NetworkLoad::start(v15);
  *(a2 + 1066) = 1;
  WTF::RefCounted<WebKit::NetworkLoad>::deref(v18, v20);
  if (v44 == 1)
  {
    v26 = v43;
    v43 = 0;
    if (v26)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v21);
  if (v39 == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData(v38, v22);
  }

  WebCore::ResourceRequest::~ResourceRequest(v28);
  v24 = *&v27[2];
  *&v27[2] = 0;
  if (v24)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v24, v23);
  }

  result = *(&v27[1] + 1);
  *(&v27[1] + 1) = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, v23);
  }

  return result;
}

void WebKit::ServiceWorkerSoftUpdateLoader::~ServiceWorkerSoftUpdateLoader(WebKit::ServiceWorkerSoftUpdateLoader *this, WTF::StringImpl *a2)
{
  if (*(this + 3))
  {
    v24 = 0;
    WTF::URL::invalidate(&v24);
    v27 = 0;
    v28 = 0;
    v29 = 3;
    cf = 0;
    v31 = 1;
    v32 = 0;
    v33[0] = 0;
    WTF::URL::invalidate(v33);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v40 = 0;
    v3 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    v41 = v3;
    v42 = v25;
    v43 = v26;
    v4 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
    }

    v44 = v4;
    v45 = v28;
    v46 = v29;
    v47 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v48 = v31;
    v5 = *(this + 3);
    *(this + 3) = 0;
    (*(*v5 + 16))(v5, &v32);
    (*(*v5 + 8))(v5);
    WebCore::WorkerFetchResult::~WorkerFetchResult(&v32, v6);
    v7 = cf;
    cf = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = v27;
    v27 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = v24;
    v24 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }

  v10 = *(this + 53);
  *(this + 53) = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 51);
  *(this + 51) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(this + 50);
  *(this + 50) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(this + 49);
  *(this + 49) = 0;
  if (v13)
  {
    WTF::RefCounted<WebCore::TextResourceDecoder>::deref(v13);
  }

  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](this + 48, 0);
  v15 = *(this + 47);
  *(this + 47) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = *(this + 46);
  *(this + 46) = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 336, v14);
  v18 = *(this + 41);
  *(this + 41) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  v19 = *(this + 40);
  *(this + 40) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  v20 = *(this + 39);
  *(this + 39) = 0;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    WTF::fastFree(v20, v17);
  }

  v21 = *(this + 38);
  *(this + 38) = 0;
  if (v21)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v21 + 16), v17);
  }

  WebCore::ServiceWorkerJobData::~ServiceWorkerJobData((this + 32), v17);
  v23 = *(this + 3);
  *(this + 3) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (*(this + 5) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v22);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::ServiceWorkerSoftUpdateLoader::~ServiceWorkerSoftUpdateLoader(this, a2);
  if (atomic_load((v2 + 16)))
  {
    *(v2 + 400) = 0u;
    *(v2 + 416) = 0u;
    *(v2 + 368) = 0u;
    *(v2 + 384) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 352) = 0u;
    *(v2 + 304) = 0u;
    *(v2 + 320) = 0u;
    *(v2 + 272) = 0u;
    *(v2 + 288) = 0u;
    *(v2 + 240) = 0u;
    *(v2 + 256) = 0u;
    *(v2 + 208) = 0u;
    *(v2 + 224) = 0u;
    *(v2 + 176) = 0u;
    *(v2 + 192) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }
}

void *WebKit::ServiceWorkerSoftUpdateLoader::fail(void *result, uint64_t a2)
{
  if (result[3])
  {
    v3 = result;
    v12 = 0;
    v13[0] = 0;
    WTF::URL::invalidate(v13);
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v4 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v20 = v4;
    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v21 = v5;
    v6 = *(a2 + 32);
    v22 = *(a2 + 16);
    v23 = v6;
    v7 = *(a2 + 48);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v24 = v7;
    v25 = *(a2 + 56);
    v26 = *(a2 + 60);
    v8 = *(a2 + 64);
    v27 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v28 = *(a2 + 72);
    v9 = v3[3];
    v3[3] = 0;
    (*(*v9 + 16))(v9, &v12);
    (*(*v9 + 8))(v9);
    WebCore::WorkerFetchResult::~WorkerFetchResult(&v12, v10);
    return WebKit::ServiceWorkerSoftUpdateLoader::didComplete(v3, v11);
  }

  return result;
}

void *WebKit::ServiceWorkerSoftUpdateLoader::didComplete(void *this, void *a2)
{
  v2 = this;
  v3 = *(this + 38);
  *(this + 38) = 0;
  if (v3)
  {
    this = WTF::RefCounted<WebKit::NetworkLoad>::deref((v3 + 16), a2);
  }

  v4 = *(v2 + 39);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = *(v5 + 16) + 1;
      *(v5 + 16) = v6;
      v7 = *(v5 + 736);
      if (v7)
      {
        if (v2 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD70628);
        }

        if (!v2)
        {
          goto LABEL_31;
        }

        v8 = *(v7 - 8);
        v9 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
        v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
        v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
        v12 = v8 & ((v11 >> 31) ^ v11);
        v13 = *(v7 + 8 * v12);
        if (v13 != v2)
        {
          v14 = 1;
          while (v13)
          {
            v12 = (v12 + v14) & v8;
            v13 = *(v7 + 8 * v12);
            ++v14;
            if (v13 == v2)
            {
              goto LABEL_14;
            }
          }

          v12 = *(v7 - 4);
        }

LABEL_14:
        if (v12 != *(v7 - 4))
        {
          this = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = -1;
          if (this)
          {
            if (*(this + 5) == 1)
            {
              this = (*(*this + 24))(this);
              v7 = *(v5 + 736);
            }

            else
            {
              --*(this + 5);
            }
          }

          v15 = vadd_s32(*(v7 - 16), 0xFFFFFFFF00000001);
          *(v7 - 16) = v15;
          v16 = *(v7 - 4);
          if (6 * v15.i32[1] < v16 && v16 >= 9)
          {
            this = WTF::HashTable<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::HashTraits<WTF::RefPtr<WebKit::ServiceWorkerSoftUpdateLoader,WTF::RawPtrTraits<WebKit::ServiceWorkerSoftUpdateLoader>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerSoftUpdateLoader>>>,WTF::FastMalloc>::rehash((v5 + 736), v16 >> 1, 0);
          }
        }

        v6 = *(v5 + 16);
      }

      if (v6)
      {
        *(v5 + 16) = v6 - 1;
        return this;
      }

LABEL_31:
      __break(0xC471u);
      JUMPOUT(0x19DD70608);
    }
  }

  return this;
}

WTF::StringImpl *WebKit::ServiceWorkerSoftUpdateLoader::loadWithCacheEntry(WebKit::ServiceWorkerSoftUpdateLoader *this, WebKit::NetworkCache::Entry *a2)
{
  WebKit::ServiceWorkerSoftUpdateLoader::processResponse(&v16, this, (a2 + 80));
  if (v19)
  {
    WebKit::ServiceWorkerSoftUpdateLoader::fail(this, &v16);
  }

  else
  {
    v5 = *(a2 + 71);
    if (v5 || (WebKit::NetworkCache::Entry::initializeBufferFromStorageRecord(a2), (v5 = *(a2 + 71)) != 0))
    {
      atomic_fetch_add(v5 + 2, 1u);
      WebKit::ServiceWorkerSoftUpdateLoader::didReceiveBuffer(this, v5);
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5 + 2);
        (*(*v5 + 8))(v5);
      }
    }

    WebCore::NetworkLoadMetrics::NetworkLoadMetrics(&v13);
    WebKit::ServiceWorkerSoftUpdateLoader::didFinishLoading(this, v6);
    v7 = v15;
    v15 = 0;
    if (v7)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v7, v4);
    }

    v8 = v14;
    v14 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }

  v9 = cf;
  cf = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = v18;
  v18 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = v17;
  v17 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::ServiceWorkerSoftUpdateLoader::processResponse(WebKit::ServiceWorkerSoftUpdateLoader *this, const WebCore::ResourceResponse *a2, WebCore *a3)
{
  WebCore::WorkerScriptLoader::validateWorkerResponse();
  if (v56)
  {
    v6 = v52;
    v52 = 0;
    *this = v6;
    WTF::URL::URL(this + 8, v53);
    v8 = v54;
    v54 = 0;
    *(this + 6) = v8;
    *(this + 14) = v55;
    *(this + 30) = v56;
    *(this + 8) = cf;
LABEL_19:
    *(this + 72) = v58;
    cf = 0;
    goto LABEL_20;
  }

  WebCore::ServiceWorkerJob::validateServiceWorkerResponse();
  v10 = v44;
  v44 = 0;
  v11 = v52;
  v52 = v10;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  WTF::URL::operator=(v53, &v45);
  v13 = v47;
  v47 = 0;
  v14 = v54;
  v54 = v13;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  v55 = v48;
  v56 = v49;
  v15 = v50;
  v50 = 0;
  v16 = cf;
  cf = v15;
  if (v16)
  {
    CFRelease(v16);
    v43 = v50;
    v58 = v51;
    v50 = 0;
    if (v43)
    {
      CFRelease(v43);
    }
  }

  else
  {
    v58 = v51;
    v50 = 0;
  }

  v17 = v47;
  v47 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v12);
  }

  v18 = v45;
  v45 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v12);
  }

  v44 = 0;
  if (v56)
  {
    v19 = v52;
    v52 = 0;
    *this = v19;
    WTF::URL::URL(this + 8, v53);
    v20 = v54;
    v21 = cf;
    v54 = 0;
    *(this + 6) = v20;
    *(this + 14) = v55;
    *(this + 30) = v56;
    *(this + 8) = v21;
    goto LABEL_19;
  }

  MEMORY[0x19EB0D930](&v44, a3);
  v26 = *(a2 + 87);
  if (v26)
  {
    WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*(a2 + 42), (*(a2 + 42) + 16 * v26));
  }

  v27 = *(a2 + 42);
  if (v27)
  {
    *(a2 + 42) = 0;
    *(a2 + 86) = 0;
    WTF::fastFree(v27, v25);
  }

  *(a2 + 42) = v44;
  v28 = v45;
  v44 = 0;
  v45 = 0;
  *(a2 + 43) = v28;
  *(a2 + 88) = v46;
  *(a2 + 356) = BYTE4(v46);
  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v25);
  WebCore::obtainCrossOriginEmbedderPolicy(&v44, a3, 0, v29);
  *(a2 + 180) = v44;
  v31 = v45;
  v45 = 0;
  v32 = *(a2 + 46);
  *(a2 + 46) = v31;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v30);
  }

  v33 = v46;
  v46 = 0;
  v34 = *(a2 + 47);
  *(a2 + 47) = v33;
  if (v34)
  {
    if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v30);
    }

    v35 = v46;
    v46 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v30);
    }
  }

  v36 = v45;
  v45 = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v30);
  }

  WebCore::ResourceResponseBase::httpHeaderField();
  v38 = v44;
  v44 = 0;
  v39 = *(a2 + 41);
  *(a2 + 41) = v38;
  if (v39)
  {
    if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v37);
    }

    v40 = v44;
    v44 = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v37);
    }
  }

  v41 = WebCore::ResourceResponseBase::textEncodingName(a3);
  WTF::String::operator=(a2 + 40, v41);
  *this = 0;
  *(this + 1) = 0;
  WTF::URL::invalidate((this + 8));
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 54) = 0;
  *(this + 72) = 1;
  v42 = cf;
  cf = 0;
  if (v42)
  {
    CFRelease(v42);
  }

LABEL_20:
  v22 = v54;
  v54 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v7);
  }

  v23 = v53[0];
  v53[0] = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v7);
  }

  result = v52;
  v52 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t WebKit::ServiceWorkerSoftUpdateLoader::didReceiveBuffer(WebKit::ServiceWorkerSoftUpdateLoader *this, const WebCore::FragmentedSharedBuffer *a2)
{
  if (!*(this + 49))
  {
    v3 = *(this + 40);
    if (v3 && *(v3 + 4))
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      PAL::TextEncoding::TextEncoding(v11, (this + 320));
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      PAL::TextEncoding::TextEncoding();
    }

    WebCore::TextResourceDecoder::create(&v12, v11, 0);
    v5 = v13;
    v13 = 0;
    v6 = *(this + 49);
    *(this + 49) = v5;
    if (v6)
    {
      WTF::RefCounted<WebCore::TextResourceDecoder>::deref(v6);
      v7 = v13;
      v13 = 0;
      if (v7)
      {
        WTF::RefCounted<WebCore::TextResourceDecoder>::deref(v7);
      }
    }

    v8 = v12;
    v12 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }

  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F1108008;
  v9[1] = this;
  v11[0] = v9;
  WebCore::FragmentedSharedBuffer::forEachSegment();
  result = v11[0];
  if (v11[0])
  {
    return (*(*v11[0] + 8))(v11[0]);
  }

  return result;
}

void *WebKit::ServiceWorkerSoftUpdateLoader::didFinishLoading(WebKit::ServiceWorkerSoftUpdateLoader *this, const WebCore::NetworkLoadMetrics *a2)
{
  v3 = *(this + 49);
  if (v3)
  {
    ++*v3;
    WebCore::TextResourceDecoder::flush(v21, v3);
    if (*(this + 104) || *(this + 51))
    {
      if (v21[0])
      {
        v19 = *(v21[0] + 1);
        v20 = *(v21[0] + 1) | (((*(v21[0] + 4) >> 2) & 1) << 32);
      }

      else
      {
        v19 = 0;
        v20 = 0x100000000;
      }

      WTF::StringBuilder::append(this + 400, v19, v20);
      v7 = v21[0];
    }

    else
    {
      v5 = v21[0];
      if (v21[0])
      {
        atomic_fetch_add_explicit(v21[0], 2u, memory_order_relaxed);
      }

      v6 = *(this + 50);
      *(this + 50) = v5;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = v21[0];
      if (v21[0])
      {
        v8 = *(v21[0] + 1);
      }

      else
      {
        v8 = 0;
      }

      *(this + 104) = v8;
    }

    v21[0] = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    WTF::RefCounted<WebCore::TextResourceDecoder>::deref(v3);
  }

  if (!*(this + 50))
  {
    WTF::StringBuilder::shrinkToFit((this + 400));
    WTF::StringBuilder::reifyString((this + 400));
  }

  WebCore::ScriptBuffer::ScriptBuffer(v21, (this + 400));
  v9 = *(this + 4);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v21[1] = v9;
  v10 = *(this + 56);
  v22 = *(this + 40);
  v23 = v10;
  v11 = *(this + 53);
  v24 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v25, this + 42);
  v25[4] = *(this + 88);
  v26 = *(this + 356);
  v27 = *(this + 180);
  v12 = *(this + 46);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  v28 = v12;
  v13 = *(this + 47);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v29 = v13;
  v14 = *(this + 41);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  v31 = 0;
  v32[0] = 0;
  v30 = v14;
  WTF::URL::invalidate(v32);
  v32[7] = 0;
  memset(&v32[5], 0, 14);
  v33 = 1;
  v15 = *(this + 3);
  *(this + 3) = 0;
  (*(*v15 + 16))(v15, v21);
  (*(*v15 + 8))(v15);
  WebCore::WorkerFetchResult::~WorkerFetchResult(v21, v16);
  return WebKit::ServiceWorkerSoftUpdateLoader::didComplete(this, v17);
}

void WebKit::ServiceWorkerSoftUpdateLoader::willSendRedirectedRequest(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v13 = 0;
  v14 = 0;
  WTF::URL::invalidate(&v14);
  v15 = 0;
  v16 = 0;
  v17 = 3;
  cf = 0;
  v19 = 1;
  WebKit::ServiceWorkerSoftUpdateLoader::fail(a1, &v13);
  v8 = cf;
  cf = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v15;
  v15 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v14;
  v14 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  WebCore::ResourceRequest::ResourceRequest(&v13);
  v12 = *a5;
  *a5 = 0;
  (*(*v12 + 16))(v12, &v13);
  (*(*v12 + 8))(v12);
  WebCore::ResourceRequest::~ResourceRequest(&v13);
}

WTF::StringImpl *WebKit::ServiceWorkerSoftUpdateLoader::didReceiveResponse(void *a1, WebCore::ResourceResponseBase *this, uint64_t a3, uint64_t *a4)
{
  if ((*(this + 128) & 1) == 0)
  {
    __break(1u);
LABEL_26:
    CFRelease(a1);
    goto LABEL_5;
  }

  v4 = a4;
  v6 = this;
  v5 = a1;
  v7 = *(this + 15);
  if (v7)
  {
    CFRetain(*(this + 15));
  }

  a1 = *(v5 + 53);
  *(v5 + 53) = v7;
  if (a1)
  {
    goto LABEL_26;
  }

LABEL_5:
  if (WebCore::ResourceResponseBase::httpStatusCode(v6) == 304 && (v8 = *(v5 + 48)) != 0)
  {
    WebKit::ServiceWorkerSoftUpdateLoader::loadWithCacheEntry(v5, v8);
    v9 = *v4;
    *v4 = 0;
    (*(*v9 + 16))(v9, 2);
    v10 = *(*v9 + 8);

    return v10(v9);
  }

  else
  {
    WebKit::ServiceWorkerSoftUpdateLoader::processResponse(&v18, v5, v6);
    if (v21)
    {
      WebKit::ServiceWorkerSoftUpdateLoader::fail(v5, &v18);
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v13 = *v4;
    *v4 = 0;
    (*(*v13 + 16))(v13, v12);
    (*(*v13 + 8))(v13);
    v15 = cf;
    cf = 0;
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = v20;
    v20 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    v17 = v19;
    v19 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    result = v18;
    v18 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

void WebKit::ServiceWorkerSoftUpdateLoader::didFailLoading(WebKit::ServiceWorkerSoftUpdateLoader *this, atomic_uint **a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v10[0] = v4;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v10[1] = v5;
  v6 = *(a2 + 2);
  v11 = *(a2 + 1);
  v12 = v6;
  v7 = a2[6];
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v13 = v7;
  v14 = *(a2 + 14);
  v15 = *(a2 + 30);
  v8 = a2[8];
  v16 = v8;
  if (v8)
  {
    CFRetain(v8);
    v17 = *(a2 + 72);
    WebKit::ServiceWorkerSoftUpdateLoader::fail(this, v10);
    CFRelease(v8);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v17 = *(a2 + 72);
    WebKit::ServiceWorkerSoftUpdateLoader::fail(this, v10);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v9);
  }

LABEL_11:
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v9);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    WTF::StringImpl::destroy(v4, v9);
  }
}

WebKit::WebSWRegistrationStore *WebKit::WebSWRegistrationStore::create@<X0>(WebKit::WebSWRegistrationStore *this@<X0>, WebCore::SWServer *a2@<X1>, WebKit::WebSWRegistrationStore **a3@<X8>)
{
  v7 = WebKit::WebSWRegistrationStore::operator new(0x70, a2);
  result = WebKit::WebSWRegistrationStore::WebSWRegistrationStore(v7, this, a2);
  *a3 = result;
  return result;
}

uint64_t WebKit::WebSWRegistrationStore::operator new(WebKit::WebSWRegistrationStore *this, void *a2)
{
  if (WebKit::WebSWRegistrationStore::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSWRegistrationStore::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSWRegistrationStore::operatorNewSlow(0x70);
  }
}

WebKit::WebSWRegistrationStore *WebKit::WebSWRegistrationStore::WebSWRegistrationStore(WebKit::WebSWRegistrationStore *this, WebCore::SWServer *a2, atomic_ullong *a3)
{
  *(this + 4) = 1;
  *this = &unk_1F1107BE8;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v6 = *a2;
  atomic_fetch_add(*a2, 1u);
  *(this + 3) = v6;
  *(this + 4) = a3;
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a3 + 1);
  *(this + 5) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  WebCore::Timer::Timer<WebKit::WebSWRegistrationStore,WebKit::WebSWRegistrationStore>((this + 48), this);
  *(this + 13) = 0;
  return this;
}

uint64_t WebKit::WebSWRegistrationStore::updateTimerFired(WebKit::WebSWRegistrationStore *this)
{
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F1107D10;
  v5 = v2;
  WebKit::WebSWRegistrationStore::updateToStorage(this, &v5);
  result = v5;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

atomic_ullong *WebKit::WebSWRegistrationStore::clearAll(uint64_t *a1, WTF::StringImpl *a2)
{
  v4 = a1[13];
  if (v4)
  {
    a1[13] = 0;
    WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  if ((a1[10] & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((a1 + 6));
  }

  v5 = a1[5];
  if (!v5)
  {
    v9 = 0;
LABEL_7:
    v6 = *a2;
    *a2 = 0;
    (*(*v6 + 16))(v6);
    result = (*(*v6 + 8))(v6);
    goto LABEL_8;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, a1[4], &v9);
  if (!v9)
  {
    goto LABEL_7;
  }

  result = WebKit::NetworkStorageManager::clearServiceWorkerRegistrations(v9, a2);
LABEL_8:
  v8 = v9;
  v9 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  return result;
}

uint64_t WebKit::WebSWRegistrationStore::flushChanges(void *a1, WTF::StringImpl *a2)
{
  if ((a1[10] & 0xFFFFFFFFFFFFLL) == 0 || *((a1[10] & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
  {
  }

  else
  {
    v4 = a2;
    v5 = a1;
    WebCore::TimerBase::stopSlowCase((a1 + 6));
    a2 = v4;
    a1 = v5;
  }

  return WebKit::WebSWRegistrationStore::updateToStorage(a1, a2);
}

uint64_t WebKit::WebSWRegistrationStore::updateToStorage(void *a1, WTF::StringImpl *a2)
{
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v4 = a1[13];
  if (v4)
  {
    v5 = *(v4 - 1);
    v6 = (v4 + 688 * v5);
    if (*(v4 - 3))
    {
      if (v5)
      {
        v7 = 688 * v5;
        while (WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4))
        {
          v4 = (v4 + 688);
          v7 -= 688;
          if (!v7)
          {
            v4 = v6;
            break;
          }
        }

        v8 = v4;
        v4 = a1[13];
        if (!v4)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v8 = a1[13];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v8 = v6;
  v6 = (v4 + 688 * v5);
  if (!v4)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v9 = v4 + 688 * *(v4 - 1);
LABEL_15:
  if (v9 != v8)
  {
    do
    {
      if (*(v8 + 672))
      {
        if (HIDWORD(v45) == v45)
        {
          WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerContextData>(&v44, v8 + 80);
        }

        else
        {
          v15 = v44 + 592 * HIDWORD(v45);
          v16 = *(v8 + 80);
          *(v15 + 16) = *(v8 + 96);
          *v15 = v16;
          WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v15 + 24, v8 + 104);
          *(v15 + 376) = *(v8 + 456);
          v17 = *(v8 + 464);
          *(v8 + 464) = 0;
          *(v15 + 384) = v17;
          v18 = *(v8 + 472);
          *(v8 + 472) = 0;
          *(v15 + 400) = 0;
          *(v15 + 408) = 0;
          *(v15 + 392) = v18;
          WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v15 + 400, (v8 + 480));
          v19 = *(v8 + 496);
          *(v15 + 420) = *(v8 + 500);
          *(v15 + 416) = v19;
          *(v15 + 424) = *(v8 + 504);
          v20 = *(v8 + 512);
          *(v8 + 512) = 0;
          *(v15 + 432) = v20;
          v21 = *(v8 + 520);
          *(v8 + 520) = 0;
          *(v15 + 440) = v21;
          v22 = *(v8 + 528);
          *(v8 + 528) = 0;
          *(v15 + 448) = v22;
          WTF::URL::URL(v15 + 456, (v8 + 536));
          *(v15 + 496) = *(v8 + 576);
          *(v15 + 517) = 0;
          *(v15 + 504) = 0;
          *(v15 + 512) = 0;
          v23 = *(v8 + 584);
          *(v8 + 584) = 0;
          *(v15 + 504) = v23;
          LODWORD(v23) = *(v8 + 592);
          *(v8 + 592) = 0;
          *(v15 + 512) = v23;
          LODWORD(v23) = *(v8 + 596);
          *(v8 + 596) = 0;
          *(v15 + 516) = v23;
          LODWORD(v23) = *(v8 + 600);
          *(v8 + 600) = 0;
          *(v15 + 520) = v23;
          LOBYTE(v23) = *(v8 + 604);
          *(v8 + 604) = 0;
          *(v15 + 524) = v23;
          v24 = *(v8 + 608);
          v25 = *(v8 + 640);
          *(v15 + 544) = *(v8 + 624);
          *(v15 + 560) = v25;
          *(v15 + 528) = v24;
          *(v15 + 576) = *(v8 + 656);
          v26 = *(v8 + 664);
          *(v8 + 664) = 0;
          *(v15 + 584) = v26;
          ++HIDWORD(v45);
        }
      }

      else
      {
        if (HIDWORD(v47) == v47)
        {
          v10 = WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v46, HIDWORD(v47) + 1, v8);
          v11 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v46 + 72 * HIDWORD(v47)), v10);
          v12 = *(v10 + 32);
          if (v12)
          {
            atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          }

          *(v11 + 4) = v12;
          v13 = *(v10 + 56);
          v14 = *(v10 + 40);
        }

        else
        {
          v11 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v46 + 72 * HIDWORD(v47)), v8);
          v27 = *(v8 + 32);
          if (v27)
          {
            atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          }

          *(v11 + 4) = v27;
          v13 = *(v8 + 56);
          v14 = *(v8 + 40);
        }

        *(v11 + 40) = v14;
        *(v11 + 56) = v13;
        ++HIDWORD(v47);
      }

      do
      {
        v8 += 688;
      }

      while (v8 != v6 && WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v8));
    }

    while (v8 != v9);
    v4 = a1[13];
  }

  if (v4)
  {
    a1[13] = 0;
    WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v28 = a1[5];
  if (!v28)
  {
    v43 = 0;
LABEL_36:
    v29 = *a2;
    *a2 = 0;
    (*(*v29 + 16))(v29);
    (*(*v29 + 8))(v29);
    goto LABEL_37;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v28, a1[4], &v43);
  v34 = v43;
  if (!v43)
  {
    goto LABEL_36;
  }

  if (!a1[1])
  {
    v36 = WTF::fastCompactMalloc(0x10);
    *v36 = 1;
    *(v36 + 8) = a1;
    v37 = a1[1];
    a1[1] = v36;
    if (v37)
    {
      if (atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v37);
        WTF::fastFree(v37, v35);
      }
    }
  }

  v38 = a1[1];
  atomic_fetch_add(v38, 1u);
  v39 = *a2;
  *a2 = 0;
  v40 = WTF::fastMalloc(0x18);
  *v40 = &unk_1F1108058;
  v40[1] = v38;
  v40[2] = v39;
  v42 = v40;
  WebKit::NetworkStorageManager::updateServiceWorkerRegistrations(v34, &v44, &v46, &v42);
  v41 = v42;
  v42 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

LABEL_37:
  v31 = v43;
  v43 = 0;
  if (v31)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v31 + 8));
  }

  WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v30);
  return WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v32);
}

atomic_ullong *WebKit::WebSWRegistrationStore::closeFiles(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    v8 = 0;
LABEL_3:
    v5 = *a2;
    *a2 = 0;
    (*(*v5 + 16))(v5);
    result = (*(*v5 + 8))(v5);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v4, *(a1 + 32), &v8);
  if (!v8)
  {
    goto LABEL_3;
  }

  result = WebKit::NetworkStorageManager::closeServiceWorkerRegistrationFiles(v8, a2);
LABEL_4:
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v7 + 8));
  }

  return result;
}

atomic_ullong *WebKit::WebSWRegistrationStore::importRegistrations(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v4, *(a1 + 32), &v11);
    if (v11)
    {
      result = WebKit::NetworkStorageManager::importServiceWorkerRegistrations(v11, a2);
      goto LABEL_5;
    }
  }

  else
  {
    v11 = 0;
  }

  v9[0] = 0;
  v10 = 0;
  v5 = *a2;
  *a2 = 0;
  (*(*v5 + 16))(v5, v9);
  result = (*(*v5 + 8))(v5);
  if (v10 == 1)
  {
    result = WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v7);
  }

LABEL_5:
  v8 = v11;
  v11 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v8 + 8));
  }

  return result;
}

double WebKit::WebSWRegistrationStore::updateRegistration(WebKit::WebSWRegistrationStore *this, const WebCore::ServiceWorkerContextData *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>((a2 + 24));
  if (v4)
  {
    goto LABEL_52;
  }

  if (*(a2 + 48))
  {
    if (*(a2 + 48) != 1)
    {
LABEL_17:
      mpark::throw_bad_variant_access(v4);
    }

    goto LABEL_4;
  }

  if (*(a2 + 3) == -1)
  {
LABEL_52:
    __break(0xC471u);
    JUMPOUT(0x19DD721A8);
  }

LABEL_4:
  v6 = *(this + 13);
  if (v6 || (WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::expand(this + 13, 0), (v6 = *(this + 13)) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = WTF::ServiceWorkerRegistrationKeyHash::hash((a2 + 24), v5) & v7;
  v9 = v6 + 688 * v8;
  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>(v9);
  if (v4)
  {
    goto LABEL_20;
  }

  v10 = 0;
  v11 = 1;
  do
  {
    if (*(v9 + 24))
    {
      if (*(v9 + 24) != 1)
      {
        goto LABEL_17;
      }
    }

    else if (*v9 == -1)
    {
      v10 = v9;
      goto LABEL_14;
    }

    if (WebCore::operator==(v9, a2 + 24))
    {
      if (*(v9 + 672))
      {
        v19 = *a2;
        *(v9 + 96) = *(a2 + 16);
        *(v9 + 80) = v19;
        mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((v9 + 104), (a2 + 24));
        WTF::String::operator=((v9 + 136), a2 + 7);
        v20 = *(a2 + 5);
        *(v9 + 144) = *(a2 + 4);
        *(v9 + 160) = v20;
        *(v9 + 176) = *(a2 + 12);
        WTF::String::operator=((v9 + 184), a2 + 13);
        v21 = *(a2 + 8);
        *(v9 + 192) = *(a2 + 7);
        *(v9 + 208) = v21;
        *(v9 + 224) = *(a2 + 9);
        std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::ServiceWorkerData,false> const&>(v9 + 240, a2 + 160);
        std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::ServiceWorkerData,false> const&>(v9 + 312, a2 + 232);
        v22 = std::__optional_storage_base<WebCore::ServiceWorkerData,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::ServiceWorkerData,false> const&>(v9 + 384, a2 + 304);
        *(v9 + 456) = *(a2 + 47);
        v23 = *(a2 + 48);
        if (v23)
        {
          atomic_fetch_add((v23 + 8), 1u);
        }

        v24 = *(v9 + 464);
        *(v9 + 464) = v23;
        if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v24 + 2);
          (*(*v24 + 8))(v24, v22);
        }

        v25 = *(a2 + 49);
        if (v25)
        {
          CFRetain(*(a2 + 49));
        }

        v26 = *(v9 + 472);
        *(v9 + 472) = v25;
        if (v26)
        {
          CFRelease(v26);
        }

        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v9 + 480), a2 + 100);
        v27 = *(a2 + 104);
        *(v9 + 500) = *(a2 + 420);
        *(v9 + 496) = v27;
        *(v9 + 504) = *(a2 + 212);
        WTF::String::operator=((v9 + 512), a2 + 54);
        WTF::String::operator=((v9 + 520), a2 + 55);
        WTF::String::operator=((v9 + 528), a2 + 56);
        WTF::String::operator=((v9 + 536), a2 + 57);
        v28 = *(a2 + 30);
        *(v9 + 544) = *(a2 + 29);
        *(v9 + 560) = v28;
        *(v9 + 576) = *(a2 + 124);
        WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(&v34, a2 + 504);
        v29 = *(v9 + 584);
        *(v9 + 584) = v34;
        v34 = v29;
        v30 = *(v9 + 592);
        *(v9 + 592) = v35;
        v35 = v30;
        v31 = *(v9 + 600);
        *(v9 + 600) = v36;
        v36 = v31;
        LOBYTE(v31) = *(v9 + 604);
        *(v9 + 604) = v37;
        v37 = v31;
        if (v29)
        {
          WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v29, v30);
        }

        v32 = *(a2 + 33);
        v33 = *(a2 + 34);
        *(v9 + 640) = *(a2 + 560);
        *(v9 + 608) = v32;
        *(v9 + 624) = v33;
        *(v9 + 656) = *(a2 + 576);
        WTF::String::operator=((v9 + 664), a2 + 73);
      }

      else
      {
        WebCore::ServiceWorkerContextData::ServiceWorkerContextData((v9 + 80), a2);
        *(v9 + 672) = 1;
      }

      goto LABEL_28;
    }

LABEL_14:
    v8 = (v8 + v11) & v7;
    v9 = v6 + 688 * v8;
    v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>(v9);
    ++v11;
  }

  while (!v4);
  if (v10)
  {
    WebCore::ServiceWorkerRegistrationKey::emptyKey(v10, v4);
    *(v10 + 80) = 0;
    *(v10 + 672) = 0;
    --*(*(this + 13) - 16);
    v9 = v10;
  }

LABEL_20:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v9, (a2 + 24));
  WTF::String::operator=((v9 + 32), a2 + 7);
  v12 = *(a2 + 5);
  *(v9 + 40) = *(a2 + 4);
  *(v9 + 56) = v12;
  WebCore::ServiceWorkerContextData::ServiceWorkerContextData(&v34, a2);
  v38 = 1;
  std::__optional_storage_base<WebCore::ServiceWorkerContextData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ServiceWorkerContextData,false>>((v9 + 80), &v34);
  if (v38 == 1)
  {
    WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(&v34, v13);
  }

  v14 = *(this + 13);
  if (v14)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 <= 2 * v16)
    {
LABEL_27:
      WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::expand(this + 13, v9);
    }
  }

  else if (3 * v17 <= 4 * v16)
  {
    goto LABEL_27;
  }

LABEL_28:
  if ((*(this + 10) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(this + 10) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
  {
    WebCore::TimerBase::start();
  }

  return result;
}

double WebKit::WebSWRegistrationStore::removeRegistration(WebKit::WebSWRegistrationStore *this, const WebCore::ServiceWorkerRegistrationKey *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>(a2);
  if (v4)
  {
    goto LABEL_40;
  }

  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
LABEL_17:
      mpark::throw_bad_variant_access(v4);
    }

    goto LABEL_4;
  }

  if (*a2 == -1)
  {
LABEL_40:
    __break(0xC471u);
    JUMPOUT(0x19DD72444);
  }

LABEL_4:
  v6 = *(this + 13);
  if (v6 || (WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::expand(this + 13, 0), (v6 = *(this + 13)) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = WTF::ServiceWorkerRegistrationKeyHash::hash(a2, v5) & v7;
  v9 = v6 + 688 * v8;
  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>(v9);
  if (v4)
  {
    goto LABEL_20;
  }

  v10 = 0;
  v11 = 1;
  do
  {
    if (*(v9 + 24))
    {
      if (*(v9 + 24) != 1)
      {
        goto LABEL_17;
      }
    }

    else if (*v9 == -1)
    {
      v10 = v9;
      goto LABEL_14;
    }

    if (WebCore::operator==(v9, a2))
    {
      if (*(v9 + 672))
      {
        WebCore::ServiceWorkerContextData::~ServiceWorkerContextData((v9 + 80), v12);
        *(v9 + 672) = 0;
      }

      goto LABEL_28;
    }

LABEL_14:
    v8 = (v8 + v11) & v7;
    v9 = v6 + 688 * v8;
    v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,false>::isEmptyValue<WebCore::ServiceWorkerRegistrationKey>(v9);
    ++v11;
  }

  while (!v4);
  if (v10)
  {
    WebCore::ServiceWorkerRegistrationKey::emptyKey(v10, v4);
    *(v10 + 80) = 0;
    *(v10 + 672) = 0;
    --*(*(this + 13) - 16);
    v9 = v10;
  }

LABEL_20:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v9, a2);
  WTF::String::operator=((v9 + 32), a2 + 4);
  v13 = *(a2 + 56);
  *(v9 + 40) = *(a2 + 40);
  *(v9 + 56) = v13;
  v20[0] = 0;
  v21 = 0;
  std::__optional_storage_base<WebCore::ServiceWorkerContextData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ServiceWorkerContextData,false>>((v9 + 80), v20);
  if (v21 == 1)
  {
    WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v20, v14);
  }

  v15 = *(this + 13);
  if (v15)
  {
    v16 = *(v15 - 12) + 1;
  }

  else
  {
    v16 = 1;
  }

  *(v15 - 12) = v16;
  v17 = (*(v15 - 16) + v16);
  v18 = *(v15 - 4);
  if (v18 > 0x400)
  {
    if (v18 <= 2 * v17)
    {
LABEL_27:
      WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::expand(this + 13, v9);
    }
  }

  else if (3 * v18 <= 4 * v17)
  {
    goto LABEL_27;
  }

LABEL_28:
  if ((*(this + 10) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(this + 10) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
  {
    WebCore::TimerBase::start();
  }

  return result;
}

void WebKit::WebSharedWorker::~WebSharedWorker(WebKit::WebSharedWorker *this)
{
  v2 = WebKit::WebSharedWorker::contextConnection(this);
  if (v2)
  {
    v4 = v2;
    v5 = (v2 + 24);
    ++*(v2 + 24);
    for (i = *(this + 21); i; i = i[9])
    {
      WebKit::WebSharedWorkerServerToContextConnection::removeSharedWorkerObject(v4, *i, i[1]);
    }

    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v5);
  }

  if (_MergedGlobals_77)
  {
    if (qword_1ED6426D8)
    {
      v7 = *(this + 2);
      if (v7 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD72760);
      }

      if (!v7)
      {
LABEL_51:
        __break(0xC471u);
        JUMPOUT(0x19DD72740);
      }

      v8 = *(qword_1ED6426D8 - 8);
      v9 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
      v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
      v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
      v12 = v8 & ((v11 >> 31) ^ v11);
      v13 = *(qword_1ED6426D8 + 16 * v12);
      if (v13 != v7)
      {
        v14 = 1;
        while (v13)
        {
          v12 = (v12 + v14) & v8;
          v13 = *(qword_1ED6426D8 + 16 * v12);
          ++v14;
          if (v13 == v7)
          {
            goto LABEL_15;
          }
        }

        v12 = *(qword_1ED6426D8 - 4);
      }

LABEL_15:
      if (v12 != *(qword_1ED6426D8 - 4))
      {
        v15 = (qword_1ED6426D8 + 16 * v12);
        v16 = v15[1];
        *v15 = -1;
        v15[1] = 0;
        if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          WTF::fastFree(v16, v3);
        }

        v17 = qword_1ED6426D8;
        v18 = vadd_s32(*(qword_1ED6426D8 - 16), 0xFFFFFFFF00000001);
        *(qword_1ED6426D8 - 16) = v18;
        v19 = *(v17 - 4);
        if (6 * v18.i32[1] < v19 && v19 >= 9)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v19 >> 1);
        }
      }
    }
  }

  else
  {
    qword_1ED6426D8 = 0;
    _MergedGlobals_77 = 1;
  }

  v21 = *(this + 65);
  *(this + 65) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v3);
  }

  if (*(this + 448) == 1)
  {
    v22 = *(this + 50);
    *(this + 50) = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v3);
      }
    }
  }

  WebCore::WorkerFetchResult::~WorkerFetchResult((this + 184), v3);
  v24 = *(this + 21);
  if (v24)
  {
    do
    {
      v25 = *(v24 + 9);
      WTF::fastFree(v24, v23);
      v24 = v25;
    }

    while (v25);
  }

  v26 = *(this + 20);
  if (v26)
  {
    WTF::fastFree((v26 - 16), v23);
  }

  v27 = *(this + 19);
  *(this + 19) = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v23);
  }

  WebCore::SharedWorkerKey::~SharedWorkerKey((this + 32), v23);
  v29 = *(this + 3);
  *(this + 3) = 0;
  if (v29 && atomic_fetch_add(v29, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v29);
    WTF::fastFree(v29, v28);
  }

  if (*(this + 2) != 1)
  {
    goto LABEL_51;
  }

  if (*this)
  {
    *(*this + 8) = 0;
    v30 = *this;
    *this = 0;
    if (v30)
    {
      if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30);
        WTF::fastFree(v30, v28);
      }
    }
  }
}

uint64_t WebKit::WebSharedWorker::contextConnection(WebKit::WebSharedWorker *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  ++*(v2 + 8);
  WebCore::RegistrableDomain::RegistrableDomain(&v9, (this + 32));
  v5 = WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>((v2 + 32), &v9, v3);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  v7 = *(v2 + 8);
  if (v7)
  {
    *(v2 + 8) = v7 - 1;
    return v5;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

WebCore::RegistrableDomain *WebCore::RegistrableDomain::RegistrableDomain(WebCore::RegistrableDomain *this, const WebCore::SecurityOriginData *a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

    v3 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v3 = (a2 + 8);
  }

  WebCore::PublicSuffixStore::singleton(this);
  WebCore::PublicSuffixStore::topPrivatelyControlledDomain();
  v5 = *v3;
  if (!*v3 || !v5[1])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v9;
    v5 = v10;
    v9 = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (!v9 || !*(v9 + 1))
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    v7 = v9;
    v9 = v5;
    if (!v7)
    {
LABEL_10:
      *this = v5;
      return this;
    }

LABEL_13:
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }

  v5 = v9;
LABEL_8:
  if (v5 && v5[1])
  {
    goto LABEL_10;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *this = v10;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  return this;
}

IPC::Encoder *WebKit::WebSharedWorker::launch(WebKit::WebSharedWorker *this, WebKit::WebSharedWorkerServerToContextConnection *a2)
{
  result = WebKit::WebSharedWorkerServerToContextConnection::launchSharedWorker(a2, this);
  if (*(this + 529) == 1)
  {
    v5 = *(this + 2);

    return WebKit::WebSharedWorkerServerToContextConnection::suspendSharedWorker(a2, v5);
  }

  return result;
}

_DWORD *WebKit::WebSharedWorker::resumeIfNeeded(_DWORD *this)
{
  if (*(this + 529) == 1)
  {
    v1 = this;
    *(this + 529) = 0;
    this = WebKit::WebSharedWorker::contextConnection(this);
    if (this)
    {
      v2 = this + 6;
      ++this[6];
      WebKit::WebSharedWorkerServerToContextConnection::resumeSharedWorker(this, *(v1 + 2));

      return WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v2);
    }
  }

  return this;
}

_DWORD *WebKit::WebSharedWorker::removeSharedWorkerObject(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v6 = WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,(WTF::ShouldValidateKey)1,WebKit::WebSharedWorker::Object>(a1 + 20, v32);
  v8 = a1[20];
  if (v8)
  {
    v9 = (v8 + 8 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v6)
  {
    v10 = *v6;
    if (*v6)
    {
      if (v8)
      {
        if (v10 == -1 || !v10)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD72C3CLL);
        }

        v11 = *(v8 - 8);
        v12 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*v10, v10[1]);
        for (i = 0; ; v12 = i + v14)
        {
          v14 = v12 & v11;
          v15 = *(v8 + 8 * v14);
          if (v15 != -1)
          {
            if (!v15)
            {
              v19 = a1[20];
              if (!v19)
              {
                goto LABEL_28;
              }

              v20 = &v19[*(v19 - 1)];
              goto LABEL_20;
            }

            v17 = *v15;
            v16 = v15[1];
            if (v17 == *v10 && v16 == v10[1])
            {
              break;
            }
          }

          ++i;
        }

        v20 = (v8 + 8 * v14);
        v19 = a1[20];
        if (!v19)
        {
          goto LABEL_21;
        }

LABEL_20:
        v19 += *(v19 - 1);
LABEL_21:
        if (v19 != v20)
        {
          *v20 = -1;
          v21 = a1[20];
          v22 = vadd_s32(*(v21 - 16), 0xFFFFFFFF00000001);
          *(v21 - 16) = v22;
          v23 = *(v21 - 4);
          if (6 * v22.i32[1] < v23 && v23 >= 9)
          {
            WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::rehash(a1 + 20, v23 >> 1, 0);
          }
        }
      }

LABEL_28:
      v25 = v10[8];
      v26 = v10[9];
      v27 = (v25 + 72);
      if (!v25)
      {
        v27 = (a1 + 21);
      }

      *v27 = v26;
      if (v26)
      {
        v28 = (v26 + 64);
      }

      else
      {
        v28 = (a1 + 22);
      }

      *v28 = v25;
      WTF::fastFree(v10, v7);
    }
  }

  v29 = WebKit::WebSharedWorker::contextConnection(a1);
  if (v29)
  {
    v30 = (v29 + 24);
    ++*(v29 + 24);
    WebKit::WebSharedWorkerServerToContextConnection::removeSharedWorkerObject(v29, a2, a3);
    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v30);
  }

  return WebKit::WebSharedWorker::suspendIfNeeded(a1);
}

_DWORD *WebKit::WebSharedWorker::suspendIfNeeded(_DWORD *this)
{
  if ((*(this + 529) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 21);
    if (v2)
    {
      while ((*(v2 + 16) & 1) != 0)
      {
        v2 = *(v2 + 72);
        if (!v2)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      *(this + 529) = 1;
      this = WebKit::WebSharedWorker::contextConnection(this);
      if (this)
      {
        v3 = this + 6;
        ++this[6];
        WebKit::WebSharedWorkerServerToContextConnection::suspendSharedWorker(this, *(v1 + 2));

        return WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v3);
      }
    }
  }

  return this;
}

uint64_t WebKit::WebSharedWorker::forEachSharedWorkerObject(uint64_t result, void *a2)
{
  v2 = *(result + 168);
  if (v2)
  {
    while ((*(v2 + 56) & 1) != 0)
    {
      result = (*(**a2 + 16))(*a2, *v2, *(v2 + 8), v2 + 24);
      v2 = *(v2 + 72);
      if (!v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

double WebKit::WebSharedWorkerServer::WebSharedWorkerServer(WebKit::WebSharedWorkerServer *this, WebKit::NetworkSession *a2)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = a2;
  ++*(a2 + 4);
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return result;
}

void WebKit::WebSharedWorkerServer::~WebSharedWorkerServer(WebKit::WebSharedWorkerServer *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 4);
  if (v5)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    v8 = *(v7 + 16);
    if (!v8)
    {
      __break(0xC471u);
      return;
    }

    *(v7 + 16) = v8 - 1;
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
}

_DWORD *WebKit::WebSharedWorkerServer::requestSharedWorker(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v166 = *MEMORY[0x1E69E9840];
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(a2))
  {
    __break(0xC471u);
    goto LABEL_214;
  }

  if (*(a2 + 64) == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD73F2CLL);
  }

  v152 = a6;
  v11 = *(a1 + 48);
  if (v11 || (WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::expand((a1 + 48), 0), (v11 = *(a1 + 48)) != 0))
  {
    v12 = *(v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  *buf = -1640531527;
  *&buf[4] = 0;
  buf[6] = 0;
  v150 = (a2 + 64);
  WTF::add<WebCore::ClientOrigin,WTF::URL,WTF::String>(buf, a2, (a2 + 64), (a2 + 104));
  v13 = WTF::SuperFastHash::hash(buf) & v12;
  v14 = v11 + 120 * v13;
  v151 = a3;
  if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v14) & 1) == 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (*(v14 + 64) == -1)
      {
        v15 = v14;
      }

      else if (WebCore::operator==(v14, a2))
      {
        goto LABEL_51;
      }

      v13 = (v13 + v16) & v12;
      v14 = v11 + 120 * v13;
      ++v16;
    }

    while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v14));
    if (v15)
    {
      *(v15 + 80) = 0u;
      *(v15 + 96) = 0u;
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 64) = 0u;
      WTF::URL::invalidate((v15 + 64));
      *(v15 + 104) = 0;
      *(v15 + 112) = 0;
      --*(*(a1 + 48) - 16);
      v14 = v15;
    }
  }

  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v14, a2);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((v14 + 32), (a2 + 32));
  WTF::String::operator=((v14 + 64), v150);
  v17 = *(a2 + 88);
  *(v14 + 72) = *(a2 + 72);
  *(v14 + 88) = v17;
  WTF::String::operator=((v14 + 104), (a2 + 104));
  if (qword_1ED6426D0)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6426D0, v18);
  }

  else
  {
    NonCompact = WebKit::WebSharedWorker::operatorNewSlow(0);
  }

  v20 = NonCompact;
  *NonCompact = 0;
  *(NonCompact + 8) = 1;
  *(NonCompact + 16) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  v21 = *a1;
  atomic_fetch_add(*a1, 1u);
  *(v20 + 24) = v21;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v20 + 32), a2);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v20 + 64), a2 + 32);
  v22 = *(a2 + 64);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  *(v20 + 96) = v22;
  v23 = *(a2 + 72);
  *(v20 + 120) = *(a2 + 88);
  *(v20 + 104) = v23;
  v24 = *(a2 + 104);
  if (v24)
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
  }

  *(v20 + 136) = v24;
  *(v20 + 144) = *v152;
  v25 = *(v152 + 1);
  if (v25)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  *(v20 + 192) = 0;
  *(v20 + 152) = v25;
  *(v20 + 160) = 0u;
  *(v20 + 176) = 0u;
  WTF::URL::invalidate((v20 + 192));
  *(v20 + 264) = 0;
  *(v20 + 240) = 0;
  *(v20 + 248) = 0;
  *(v20 + 232) = 0;
  *(v20 + 253) = 0;
  *(v20 + 272) = 0u;
  *(v20 + 288) = 0u;
  *(v20 + 304) = 0;
  WTF::URL::invalidate((v20 + 304));
  *(v20 + 360) = 0;
  *(v20 + 344) = 0;
  *(v20 + 350) = 0;
  *(v20 + 368) = 1;
  *(v20 + 384) = 0;
  *(v20 + 448) = 0;
  *(v20 + 464) = 0;
  *(v20 + 496) = 0;
  *(v20 + 512) = 0;
  *(v20 + 520) = 0;
  *(v20 + 528) = 0;
  if ((_MergedGlobals_77 & 1) == 0)
  {
    qword_1ED6426D8 = 0;
    _MergedGlobals_77 = 1;
  }

  v26 = *(v20 + 16);
  if (v26 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD73F4CLL);
  }

  if (!v26)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD73F6CLL);
  }

  v27 = qword_1ED6426D8;
  if (!qword_1ED6426D8)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    v27 = qword_1ED6426D8;
  }

  v28 = *(v27 - 8);
  v29 = (v26 + ~(v26 << 32)) ^ ((v26 + ~(v26 << 32)) >> 22);
  v30 = 9 * ((v29 + ~(v29 << 13)) ^ ((v29 + ~(v29 << 13)) >> 8));
  v31 = (v30 ^ (v30 >> 15)) + ~((v30 ^ (v30 >> 15)) << 27);
  v32 = v28 & ((v31 >> 31) ^ v31);
  v33 = (v27 + 16 * v32);
  v34 = *v33;
  if (!*v33)
  {
LABEL_37:
    *v33 = v26;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v20, v20);
    v38 = *v20;
    atomic_fetch_add(*v20, 1u);
    v39 = v33[1];
    v33[1] = v38;
    if (v39 && atomic_fetch_add(v39, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v39);
      WTF::fastFree(v39, v37);
    }

    v40 = qword_1ED6426D8;
    if (qword_1ED6426D8)
    {
      v41 = *(qword_1ED6426D8 - 12) + 1;
    }

    else
    {
      v41 = 1;
    }

    *(qword_1ED6426D8 - 12) = v41;
    v42 = (*(v40 - 16) + v41);
    v43 = *(v40 - 4);
    if (v43 > 0x400)
    {
      if (v43 > 2 * v42)
      {
        goto LABEL_44;
      }
    }

    else if (3 * v43 > 4 * v42)
    {
      goto LABEL_44;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand();
    goto LABEL_44;
  }

  v35 = 0;
  v36 = 1;
  while (v34 != v26)
  {
    if (v34 == -1)
    {
      v35 = v33;
    }

    v32 = (v32 + v36) & v28;
    v33 = (v27 + 16 * v32);
    v34 = *v33;
    ++v36;
    if (!*v33)
    {
      if (v35)
      {
        *v35 = 0;
        v35[1] = 0;
        --*(v27 - 16);
        v33 = v35;
      }

      goto LABEL_37;
    }
  }

LABEL_44:
  v44 = *(v14 + 112);
  *(v14 + 112) = v20;
  if (v44)
  {
    WTF::RefCounted<WebKit::WebSharedWorker>::deref((v44 + 8));
  }

  v45 = *(a1 + 48);
  if (v45)
  {
    v46 = *(v45 - 12) + 1;
  }

  else
  {
    v46 = 1;
  }

  *(v45 - 12) = v46;
  v47 = (*(v45 - 16) + v46);
  v48 = *(v45 - 4);
  if (v48 > 0x400)
  {
    if (v48 > 2 * v47)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (3 * v48 <= 4 * v47)
  {
LABEL_50:
    v14 = WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::expand((a1 + 48), v14);
  }

LABEL_51:
  v49 = *(v14 + 112);
  v50 = (v49 + 8);
  ++*(v49 + 8);
  v51 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, v151, &v153);
    WTF::String::utf8();
    if (v154)
    {
      v52 = v154 + 16;
    }

    else
    {
      v52 = 0;
    }

    v53 = *(v49 + 16);
    *buf = 136380931;
    *&buf[4] = v52;
    *&buf[12] = 2048;
    *&buf[14] = v53;
    _os_log_impl(&dword_19D52D000, v51, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::requestSharedWorker: sharedWorkerObjectIdentifier=%{private}s, sharedWorkerIdentifier=%llu", buf, 0x16u);
    v55 = v154;
    v154 = 0;
    if (v55)
    {
      if (*v55 == 1)
      {
        WTF::fastFree(v55, v54);
      }

      else
      {
        --*v55;
      }
    }

    v56 = v153;
    v153 = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v54);
    }
  }

  if (*(v49 + 144) != *v152 || *(v49 + 145) != v152[1])
  {
    v70 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v70, OS_LOG_TYPE_ERROR, "WebSharedWorkerServer::requestSharedWorker: A worker already exists with this name but has different type / credentials", buf, 2u);
    }

    v71 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), a4);
    if (v71)
    {
      v72 = v71;
      ++*(v71 + 24);
      *buf = 0;
      *&buf[8] = 0;
      WTF::URL::invalidate(&buf[8]);
      *&v156[8] = 0;
      *&v156[16] = 0;
      *&v156[20] = 2;
      cf = 0;
      LOBYTE(v158) = 1;
      WebKit::WebSharedWorkerServerConnection::notifyWorkerObjectOfLoadCompletion(v72, v151, a4, buf);
      v74 = cf;
      cf = 0;
      if (v74)
      {
        CFRelease(v74);
      }

      v75 = *&v156[8];
      *&v156[8] = 0;
      if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v75, v73);
      }

      v76 = *&buf[8];
      *&buf[8] = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v73);
      }

      v77 = *buf;
      *buf = 0;
      if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, v73);
      }

      if (*(v72 + 24) == 1)
      {
        (*(*v72 + 8))(v72);
      }

      else
      {
        --*(v72 + 24);
      }
    }

    return WTF::RefCounted<WebKit::WebSharedWorker>::deref(v50);
  }

  v58 = (v49 + 160);
  v57 = *(v49 + 160);
  v59 = *(a5 + 16);
  *&buf[7] = *a5;
  *&buf[23] = v59;
  if (v57 || (WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::expand((v49 + 160), 0), (v57 = *v58) != 0))
  {
    v60 = *(v57 - 8);
  }

  else
  {
    v60 = 0;
  }

  v61 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v151, a4);
  v62 = 0;
  for (i = 1; ; ++i)
  {
    v64 = v61 & v60;
    v65 = (v57 + 8 * (v61 & v60));
    v66 = *v65;
    if (*v65 == -1)
    {
      v62 = (v57 + 8 * v64);
      goto LABEL_76;
    }

    if (!v66)
    {
      break;
    }

    v68 = *v66;
    v67 = v66[1];
    if (v68 == v151 && v67 == a4)
    {
      goto LABEL_105;
    }

LABEL_76:
    v61 = i + v64;
  }

  if (v62)
  {
    *v62 = 0;
    --*(*v58 - 16);
    v65 = v62;
  }

  v78 = WTF::fastMalloc(0x50);
  *v78 = v151;
  *(v78 + 8) = a4;
  *(v78 + 16) = 0;
  *(v78 + 17) = *buf;
  *(v78 + 33) = *&buf[16];
  *(v78 + 48) = *&buf[31];
  v79 = 1;
  *(v78 + 56) = 1;
  *(v78 + 64) = 0;
  *(v78 + 72) = 0;
  *v65 = v78;
  v80 = *v58;
  if (*v58)
  {
    v79 = *(v80 - 12) + 1;
  }

  *(v80 - 12) = v79;
  v81 = (*(v80 - 16) + v79);
  v82 = *(v80 - 4);
  if (v82 > 0x400)
  {
    if (v82 <= 2 * v81)
    {
LABEL_100:
      v78 = *WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::expand((v49 + 160), v65);
    }
  }

  else if (3 * v82 <= 4 * v81)
  {
    goto LABEL_100;
  }

  v83 = *(v49 + 176);
  *(v78 + 64) = v83;
  *(v78 + 72) = 0;
  if (v83)
  {
    v84 = (v83 + 72);
  }

  else
  {
    v84 = (v49 + 168);
  }

  *v84 = v78;
  *(v49 + 176) = v78;
LABEL_105:
  v85 = WebKit::WebSharedWorker::contextConnection(v49);
  if (v85)
  {
    v86 = (v85 + 24);
    ++*(v85 + 24);
    WebKit::WebSharedWorkerServerToContextConnection::addSharedWorkerObject(v85, v151, a4);
    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v86);
  }

  WebKit::WebSharedWorker::resumeIfNeeded(v49);
  v87 = *(v49 + 160);
  v50 = (v49 + 8);
  if (!v87 || (v88 = *(v87 - 12), v88 < 2))
  {
    v125 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), a4);
    if (!v125)
    {
      WebKit::WebSharedWorker::removeSharedWorkerObject(v49, v151, a4);
      return WTF::RefCounted<WebKit::WebSharedWorker>::deref(v50);
    }

    v126 = v125;
    ++*(v125 + 24);
    v127 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v127, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::requestSharedWorker: Fetching shared worker script in client", buf, 2u);
    }

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v128 = *a1;
    atomic_fetch_add(*a1, 1u);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v49, v49);
    v129 = *v49;
    atomic_fetch_add(*v49, 1u);
    v130 = WTF::fastMalloc(0x18);
    *v130 = &unk_1F11080A8;
    v130[1] = v128;
    v130[2] = v129;
    v131 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      v132 = *(v126 + 7);
      WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, v151, &v153);
      WTF::String::utf8();
      if (v154)
      {
        v133 = v154 + 16;
      }

      else
      {
        v133 = 0;
      }

      *buf = 134218498;
      *&buf[4] = v126;
      *&buf[12] = 2048;
      *&buf[14] = v132;
      *&buf[22] = 2082;
      *&buf[24] = v133;
      _os_log_impl(&dword_19D52D000, v131, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::fetchScriptInClient: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
      v135 = v154;
      v154 = 0;
      if (v135)
      {
        if (*v135 == 1)
        {
          WTF::fastFree(v135, v134);
        }

        else
        {
          --*v135;
        }
      }

      v136 = v153;
      v153 = 0;
      if (v136 && atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v136, v134);
      }
    }

    v137 = (*(*v126 + 56))(v126);
    v139 = IPC::Encoder::operator new(0x238, v138);
    *v139 = 3156;
    *(v139 + 2) = 0;
    *(v139 + 3) = 0;
    *(v139 + 1) = v137;
    *(v139 + 68) = 0;
    *(v139 + 70) = 0;
    *(v139 + 69) = 0;
    IPC::Encoder::encodeHeader(v139);
    v154 = v139;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v139, (v49 + 96));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v139, v151);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v139, a4);
    IPC::ArgumentCoder<WebCore::WorkerOptions,void>::encode(v139, v49 + 144);
    v140 = WTF::fastMalloc(0x10);
    *v140 = &unk_1F1108198;
    v140[1] = v130;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
    {
      v141 = v140;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      *buf = v141;
      *&buf[8] = IdentifierInternal;
      (*(*v126 + 40))(v126, &v154, buf, 0);
      v144 = *buf;
      *buf = 0;
      v50 = (v49 + 8);
      if (v144)
      {
        (*(*v144 + 8))(v144);
      }

      v145 = v154;
      v154 = 0;
      if (v145)
      {
        IPC::Encoder::~Encoder(v145, v143);
        bmalloc::api::tzoneFree(v147, v148);
      }

      if (v126[6] == 1)
      {
        (*(*v126 + 8))(v126);
      }

      else
      {
        --v126[6];
      }

      return WTF::RefCounted<WebKit::WebSharedWorker>::deref(v50);
    }

    __break(0xC471u);
LABEL_214:
    JUMPOUT(0x19DD73F0CLL);
  }

  v89 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v88;
    _os_log_impl(&dword_19D52D000, v89, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::requestSharedWorker: A shared worker with this URL already exists (now shared by %u shared worker objects)", buf, 8u);
  }

  if (*(v49 + 184))
  {
    v90 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), a4);
    if (v90)
    {
      v91 = v90;
      ++*(v90 + 24);
      *buf = 0;
      *&buf[8] = 0;
      WTF::URL::invalidate(&buf[8]);
      cf = 0;
      *&v156[8] = 0;
      *&v156[14] = 0;
      LOBYTE(v158) = 1;
      WebKit::WebSharedWorkerServerConnection::notifyWorkerObjectOfLoadCompletion(v91, v151, a4, buf);
      v93 = cf;
      cf = 0;
      if (v93)
      {
        CFRelease(v93);
      }

      v94 = *&v156[8];
      *&v156[8] = 0;
      if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v94, v92);
      }

      v95 = *&buf[8];
      *&buf[8] = 0;
      if (v95 && atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v95, v92);
      }

      v96 = *buf;
      *buf = 0;
      if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v96, v92);
      }

      if (*(v91 + 24) == 1)
      {
        (*(*v91 + 8))(v91);
      }

      else
      {
        --*(v91 + 24);
      }
    }
  }

  if (*(v49 + 528) == 1)
  {
    v97 = WebKit::WebSharedWorker::contextConnection(v49);
    if (v97)
    {
      v98 = v97;
      v99 = (v97 + 24);
      ++*(v97 + 24);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
      v100 = *a1;
      atomic_fetch_add(v100, 1u);
      *buf = v100;
      buf[8] = 0;
      buf[32] = -1;
      v101 = *(a2 + 24);
      if (*(a2 + 24))
      {
        if (v101 != 255)
        {
          *&buf[8] = *a2;
          goto LABEL_134;
        }
      }

      else
      {
        v102 = *a2;
        if (*a2)
        {
          atomic_fetch_add_explicit(v102, 2u, memory_order_relaxed);
        }

        *&buf[8] = v102;
        v103 = *(a2 + 8);
        if (v103)
        {
          atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
        }

        *&buf[16] = v103;
        *&buf[24] = *(a2 + 16);
        v101 = *(a2 + 24);
LABEL_134:
        buf[32] = v101;
      }

      v156[0] = 0;
      LOBYTE(cf) = -1;
      v104 = *(a2 + 56);
      if (*(a2 + 56))
      {
        if (v104 != 255)
        {
          *v156 = *(a2 + 32);
          goto LABEL_141;
        }
      }

      else
      {
        v105 = *(a2 + 32);
        if (v105)
        {
          atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed);
        }

        *v156 = v105;
        v106 = *(a2 + 40);
        if (v106)
        {
          atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
        }

        *&v156[8] = v106;
        *&v156[16] = *(a2 + 48);
        v104 = *(a2 + 56);
LABEL_141:
        LOBYTE(cf) = v104;
      }

      v107 = *v150;
      if (*v150)
      {
        atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
      }

      v158 = v107;
      v108 = *(a2 + 88);
      v159 = *(a2 + 72);
      v160 = v108;
      v109 = *(a2 + 104);
      if (v109)
      {
        atomic_fetch_add_explicit(v109, 2u, memory_order_relaxed);
      }

      v161 = v109;
      *&v162 = v151;
      *(&v162 + 1) = a4;
      *v163 = *(v49 + 16);
      v110 = *(a5 + 16);
      *&v163[8] = *a5;
      *&v163[24] = v110;
      v164 = *v152;
      v111 = *(v152 + 1);
      if (v111)
      {
        atomic_fetch_add_explicit(v111, 2u, memory_order_relaxed);
      }

      v165 = v111;
      v112 = WTF::fastMalloc(0xC8);
      v113 = v112;
      *v112 = &unk_1F1108080;
      *(v112 + 8) = v100;
      *buf = 0;
      *(v112 + 16) = 0;
      *(v112 + 40) = -1;
      if (!v101)
      {
        *(v112 + 16) = *&buf[8];
        v114 = *&buf[16];
        *&buf[8] = 0;
        *&buf[16] = 0;
        *(v112 + 24) = v114;
        *(v112 + 32) = *&buf[24];
        goto LABEL_150;
      }

      if (v101 != 255)
      {
        *(v112 + 16) = *&buf[8];
LABEL_150:
        *(v112 + 40) = v101;
      }

      *(v112 + 48) = 0;
      *(v112 + 72) = -1;
      if (!v104)
      {
        *(v112 + 48) = *v156;
        v115 = *&v156[8];
        *v156 = 0;
        *&v156[8] = 0;
        *(v112 + 56) = v115;
        *(v112 + 64) = *&v156[16];
        goto LABEL_153;
      }

      if (v104 != 255)
      {
        *(v112 + 48) = *v156;
LABEL_153:
        *(v112 + 72) = v104;
      }

      WTF::URL::URL(v112 + 80, &v158);
      *(v113 + 120) = v161;
      v116 = v162;
      v117 = *v163;
      v118 = *&v163[16];
      *(v113 + 176) = *&v163[32];
      *(v113 + 144) = v117;
      *(v113 + 160) = v118;
      *(v113 + 128) = v116;
      *(v113 + 184) = v164;
      v119 = v165;
      v161 = 0;
      v165 = 0;
      *(v113 + 192) = v119;
      v154 = v113;
      WebKit::WebSharedWorkerServerToContextConnection::postConnectEvent(v98, v49, a5, &v154);
      v121 = v154;
      v154 = 0;
      if (v121)
      {
        (*(*v121 + 8))(v121);
      }

      v122 = v165;
      v165 = 0;
      if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v122, v120);
      }

      WebCore::SharedWorkerKey::~SharedWorkerKey(&buf[8], v120);
      v124 = *buf;
      *buf = 0;
      if (v124 && atomic_fetch_add(v124, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v124);
        WTF::fastFree(v124, v123);
      }

      WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v99);
    }
  }

  return WTF::RefCounted<WebKit::WebSharedWorker>::deref(v50);
}

IPC::Encoder *WebKit::WebSharedWorkerServerConnection::notifyWorkerObjectOfLoadCompletion(void *a1, unint64_t a2, uint64_t a3, WebCore::ResourceError *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[7];
    WTF::makeString<unsigned long long,char,unsigned long long>(a3, 45, a2, &v22);
    WTF::String::utf8();
    if (v23)
    {
      v10 = v23 + 16;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a4 + 60) == 0;
    *buf = 134218754;
    *&buf[4] = a1;
    v25 = 2048;
    v26 = v9;
    v27 = 2082;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::notifyWorkerObjectOfLoadCompletion: sharedWorkerObjectIdentifier=%{public}s, success=%d", buf, 0x26u);
    v13 = v23;
    v23 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::fastFree(v13, v12);
      }

      else
      {
        --*v13;
      }
    }

    v14 = v22;
    v22 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }
  }

  v15 = (*(*a1 + 56))(a1);
  v17 = IPC::Encoder::operator new(0x238, v16);
  *v17 = 3157;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 1) = v15;
  *(v17 + 68) = 0;
  *(v17 + 70) = 0;
  *(v17 + 69) = 0;
  IPC::Encoder::encodeHeader(v17);
  *buf = v17;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v17, a3);
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v17, a4);
  (*(*a1 + 32))(a1, buf, 0);
  result = *buf;
  *buf = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v18);
    return bmalloc::api::tzoneFree(v20, v21);
  }

  return result;
}

atomic_ullong *WebKit::WebSharedWorkerServer::createContextConnection(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v43[0] = a3;
  v43[1] = a4;
  v6 = (a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_10;
  }

  if (WTF::equal(*(a2 + 8), 0, a3))
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  v8 = *(a2 + 8);
  if (v8 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD74570);
  }

  v9 = *v6;
  if (!*v6 || (v10 = *(v9 - 8), v11 = WTF::ASCIICaseInsensitiveHash::hash(v8, v7) & v10, v12 = (v9 + 8 * v11), (WTF::equal(*v12, 0, v13) & 1) != 0))
  {
LABEL_10:
    v17 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::createContextConnection will create a connection", buf, 2u);
    }

    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v6, (a2 + 8), v18, buf);
    v19 = *(a1 + 16);
    if (!v19)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD74590);
    }

    WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(v19 + 32), &v42);
    v20 = v42;
    buf[0] = 0;
    v47 = 0;
    v21 = *(a1 + 16);
    if (!v21)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD745B0);
    }

    v36 = *(v21 + 24);
    v37[0] = 2;
    v38 = a2;
    v39 = v43;
    v40 = buf;
    v41 = &v36;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
    v22 = *a1;
    atomic_fetch_add(*a1, 1u);
    v23 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v24 = *(a2 + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    v25 = WTF::fastMalloc(0x20);
    v27 = v25;
    *v25 = &unk_1F11080F8;
    v25[1] = v22;
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v25[2] = v23;
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      v25[3] = v24;
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v26);
      }
    }

    else
    {
      v25[3] = 0;
    }

    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v26);
    }

    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
    {
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v30 = IPC::Encoder::operator new(0x238, v29);
      *v30 = 536;
      *(v30 + 68) = 0;
      *(v30 + 70) = 0;
      *(v30 + 69) = 0;
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 1) = 0;
      IPC::Encoder::encodeHeader(v30);
      v45 = v30;
      Messages::NetworkProcessProxy::EstablishRemoteWorkerContextConnectionToNetworkProcess::encode<IPC::Encoder>(v37, v30);
      v44[0] = v27;
      v44[1] = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v20, &v45, v44, 0, 0);
      v32 = v44[0];
      v44[0] = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      v33 = v45;
      v45 = 0;
      if (v33)
      {
        IPC::Encoder::~Encoder(v33, v31);
        bmalloc::api::tzoneFree(v34, v35);
        if (v24)
        {
LABEL_36:
          if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v31);
          }
        }
      }

      else if (v24)
      {
        goto LABEL_36;
      }

      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v31);
      }

      result = v42;
      v42 = 0;
      if (result)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
      }

      return result;
    }

    __break(0xC471u);
LABEL_50:
    JUMPOUT(0x19DD74550);
  }

  v15 = 1;
  while (1)
  {
    if (*v12 != -1)
    {
      result = WTF::equalIgnoringASCIICase(*v12, *(a2 + 8), v14);
      if (result)
      {
        return result;
      }
    }

    v11 = (v11 + v15) & v10;
    v12 = (v9 + 8 * v11);
    ++v15;
    if (WTF::equal(*v12, 0, v14))
    {
      goto LABEL_10;
    }
  }
}

uint64_t WebKit::WebSharedWorkerServer::addContextConnection(WebKit::WebSharedWorkerServer *this, WebKit::WebSharedWorkerServerToContextConnection *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 4);
    if (v6)
    {
      v6 = *(v6 + 8);
      if (v6)
      {
        v6 = *(v6 + 216);
      }
    }

    *v38 = 134218240;
    *&v38[4] = a2;
    v39 = 2048;
    v40 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::addContextConnection(%p) webProcessIdentifier=%llu", v38, 0x16u);
  }

  v7 = (a2 + 56);
  if (WTF::equal(*(a2 + 7), 0, v5) || *v7 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD74994);
  }

  v9 = *(this + 4);
  if (v9 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(this + 4), (v9 = *(this + 4)) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::ASCIICaseInsensitiveHash::hash(*v7, v8) & v10;
  v12 = (v9 + 16 * v11);
  if (WTF::equal(*v12, 0, v13))
  {
LABEL_18:
    WTF::String::operator=(v12, a2 + 7);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 4, a2 + 8);
    v19 = *(a2 + 2);
    atomic_fetch_add(v19, 1u);
    v20 = v12[1];
    v12[1] = v19;
    if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v20);
      WTF::fastFree(v20, v18);
    }

    v21 = *(this + 4);
    if (v21)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v23 = (*(v21 - 16) + v22);
    v24 = *(v21 - 4);
    if (v24 > 0x400)
    {
      if (v24 > 2 * v23)
      {
        goto LABEL_25;
      }
    }

    else if (3 * v24 > 4 * v23)
    {
      goto LABEL_25;
    }

    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(this + 4);
    goto LABEL_25;
  }

  v15 = 0;
  v16 = 1;
  while (1)
  {
    v17 = v12;
    if (*v12 != -1)
    {
      v17 = v15;
      if (WTF::equalIgnoringASCIICase(*v12, *v7, v14))
      {
        break;
      }
    }

    v11 = (v11 + v16) & v10;
    v12 = (v9 + 16 * v11);
    ++v16;
    v15 = v17;
    if (WTF::equal(*v12, 0, v14))
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(*(this + 4) - 16);
        v12 = v17;
      }

      goto LABEL_18;
    }
  }

LABEL_25:
  v25 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a2 + 4);
    if (v26)
    {
      v26 = *(v26 + 8);
      if (v26)
      {
        v26 = *(v26 + 216);
      }
    }

    *v38 = 134218240;
    *&v38[4] = a2;
    v39 = 2048;
    v40 = v26;
    _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::contextConnectionCreated(%p) webProcessIdentifier=%llu", v38, 0x16u);
  }

  result = WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::begin(*(this + 6));
  v28 = result;
  v30 = v29;
  v31 = *(this + 6);
  if (v31)
  {
    v32 = v31 + 120 * *(v31 - 4);
  }

  else
  {
    v32 = 0;
  }

  if (v32 != result)
  {
    do
    {
      WebCore::RegistrableDomain::RegistrableDomain(v38, (*(v28 + 112) + 32));
      v35 = WTF::equal(*v7, *v38, v33);
      result = *v38;
      *v38 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v34);
        if (v35)
        {
LABEL_36:
          v36 = *(v28 + 112);
          for (i = *(v36 + 21); i; i = i[9])
          {
            result = WebKit::WebSharedWorkerServerToContextConnection::addSharedWorkerObject(a2, *i, i[1]);
          }

          if (*(v36 + 23))
          {
            result = WebKit::WebSharedWorker::launch(v36, a2);
          }

          goto LABEL_40;
        }
      }

      else if (v35)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_40:
        v28 += 120;
        if (v28 == v30)
        {
          break;
        }

        result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v28);
      }

      while ((result & 1) != 0 || *(v28 + 64) == -1);
    }

    while (v28 != v32);
  }

  return result;
}

WTF::StringImpl *WebKit::WebSharedWorkerServer::removeContextConnection(WebKit::WebSharedWorkerServer *this, WebKit::WebSharedWorkerServerToContextConnection *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 4);
    if (v7)
    {
      v7 = *(v7 + 8);
      if (v7)
      {
        v7 = *(v7 + 216);
      }
    }

    *v31 = 134218240;
    *&v31[4] = a2;
    *&v31[12] = 2048;
    *&v31[14] = v7;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::removeContextConnection(%p) webProcessIdentifier=%llu", v31, 0x16u);
  }

  v8 = *(a2 + 6);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *v31 = v8;
  v9 = *(a2 + 7);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *&v31[8] = v9;
  v10 = (this + 32);
  if (*(this + 4))
  {
    if (WTF::equal(v9, 0, v6) || v9 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD74CC4);
    }

    v11 = *v10;
    if (*v10)
    {
      v12 = *(v11 - 8);
      v13 = WTF::ASCIICaseInsensitiveHash::hash(v9, v5) & v12;
      v14 = v11 + 16 * v13;
      if (WTF::equal(*v14, 0, v15))
      {
LABEL_19:
        v18 = *v10;
        if (!*v10)
        {
          goto LABEL_33;
        }

        v14 = v18 + 16 * *(v18 - 4);
      }

      else
      {
        v17 = 1;
        while (*v14 == -1 || (WTF::equalIgnoringASCIICase(*v14, v9, v16) & 1) == 0)
        {
          v13 = (v13 + v17) & v12;
          v14 = v11 + 16 * v13;
          ++v17;
          if (WTF::equal(*v14, 0, v16))
          {
            goto LABEL_19;
          }
        }

        v18 = *v10;
        if (!*v10)
        {
LABEL_22:
          if (v18 != v14)
          {
            v19 = *v14;
            *v14 = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v5);
            }

            v20 = *(v14 + 8);
            *v14 = -1;
            *(v14 + 8) = 0;
            if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v20);
              WTF::fastFree(v20, v5);
            }

            v21 = *v10;
            v22 = vadd_s32(*(*v10 - 16), 0xFFFFFFFF00000001);
            *(v21 - 16) = v22;
            v23 = *(v21 - 4);
            if (6 * v22.i32[1] < v23 && v23 >= 9)
            {
              WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(this + 4, v23 >> 1);
            }
          }

          goto LABEL_33;
        }
      }

      v18 += 16 * *(v18 - 4);
      if (v18 == v14)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }
  }

LABEL_33:
  v25 = *(a2 + 8);
  if (v25 && *(v25 - 3))
  {
    v26 = *(v25 - 1);
    if (v26)
    {
      v27 = 16 * v26;
      v28 = &v25[2 * v26];
      while (*v25 + 1 <= 1)
      {
        v25 += 2;
        v27 -= 16;
        if (!v27)
        {
          v25 = v28;
          break;
        }
      }
    }

    WebKit::WebSharedWorkerServer::createContextConnection(this, v31, *v25, 1);
  }

  v29 = *&v31[8];
  *&v31[8] = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v5);
  }

  result = *v31;
  *v31 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebSharedWorkerServer::sharedWorkerObjectIsGoingAway(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SharedWorkerKey>>,WebCore::SharedWorkerKey>((a1 + 48), a2);
  v9 = v8;
  if (v8)
  {
    ++*(v8 + 8);
  }

  v10 = qword_1ED641300;
  result = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    goto LABEL_12;
  }

  WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v25);
  WTF::String::utf8();
  if (v26)
  {
    v12 = v26 + 16;
  }

  else
  {
    v12 = 0;
  }

  *buf = 136446466;
  v28 = v12;
  v29 = 2048;
  v30 = v9;
  _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::sharedWorkerObjectIsGoingAway: sharedWorkerObjectIdentifier=%{public}s, sharedWorker=%p", buf, 0x16u);
  v14 = v26;
  v26 = 0;
  if (v14)
  {
    if (*v14 == 1)
    {
      WTF::fastFree(v14, v13);
    }

    else
    {
      --*v14;
    }
  }

  result = v25;
  v25 = 0;
  if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
LABEL_12:
    if (!v9)
    {
      return result;
    }

LABEL_13:
    WebKit::WebSharedWorker::removeSharedWorkerObject(v9, a3, a4);
    v15 = *(v9 + 160);
    if (!v15 || !*(v15 - 12))
    {
      v16 = WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SharedWorkerKey>>,(WTF::ShouldValidateKey)1,WebCore::SharedWorkerKey>((a1 + 48), a2);
      v17 = *(a1 + 48);
      if (v17)
      {
        v18 = (v17 + 120 * *(v17 - 4));
      }

      else
      {
        v18 = 0;
      }

      if (v18 != v16)
      {
        v19 = *(v16 + 14);
        if (v19)
        {
          *(v16 + 14) = 0;
          v17 = *(a1 + 48);
        }

        if (v17)
        {
          v20 = (v17 + 120 * *(v17 - 4));
          if (v20 == v16)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_25;
          }

          v20 = 0;
        }

        if (v20 != v16)
        {
          WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::remove((a1 + 48), v16);
        }

LABEL_25:
        v21 = qword_1ED641300;
        if (!os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        if (v19)
        {
          v22 = *(v19 + 16);
LABEL_31:
          *buf = 134218240;
          v28 = v22;
          v29 = 2048;
          v30 = v19;
          _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::shutDownSharedWorker: sharedWorkerIdentifier=%llu, sharedWorker=%p", buf, 0x16u);
LABEL_32:
          if (v19)
          {
            v23 = WebKit::WebSharedWorker::contextConnection(v19);
            if (v23)
            {
              v24 = v23 + 6;
              ++v23[6];
              WebKit::WebSharedWorkerServerToContextConnection::terminateSharedWorker(v23, v19);
              WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v24);
            }

            WTF::RefCounted<WebKit::WebSharedWorker>::deref((v19 + 8));
          }

          return WTF::RefCounted<WebKit::WebSharedWorker>::deref((v9 + 8));
        }

LABEL_30:
        v22 = 0;
        goto LABEL_31;
      }

      v21 = qword_1ED641300;
      if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        goto LABEL_30;
      }
    }

    return WTF::RefCounted<WebKit::WebSharedWorker>::deref((v9 + 8));
  }

  result = WTF::StringImpl::destroy(result, v13);
  if (v9)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t WebKit::WebSharedWorkerServer::addConnection(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(*a2 + 56);
  v8 = v5;
  v6 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::addConnection(%p): processIdentifier=%llu", buf, 0x16u);
  }

  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>(buf, (a1 + 24), &v8, a2);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v24 = a4;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v7 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v10 = result & v8;
  v11 = (v7 + 16 * (result & v8));
  v12 = *v11;
  v13 = *a3;
  if (*v11)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v12 == v13)
      {
        v22 = *a2;
        if (*a2)
        {
          v23 = *(v22 - 4);
        }

        else
        {
          v23 = 0;
        }

        v19 = 0;
        v18 = v22 + 16 * v23;
        goto LABEL_10;
      }

      if (v12 == -1)
      {
        v20 = v11;
      }

      v10 = (v10 + v21) & v8;
      v11 = (v7 + 16 * v10);
      v12 = *v11;
      ++v21;
    }

    while (*v11);
    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      --*(*a2 - 16);
      v13 = *a3;
      v11 = v20;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>> &&)::{lambda(void)#1}>( v11,  v13,  &v24);
  v14 = *a2;
  if (*a2)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 > 2 * v16)
    {
      goto LABEL_9;
    }

LABEL_13:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v14 = *a2;
    if (*a2)
    {
      v17 = *(v14 - 4);
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_13;
  }

LABEL_9:
  v18 = v14 + 16 * v17;
  v19 = 1;
LABEL_10:
  *a1 = v11;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  return result;
}

_DWORD *WebKit::WebSharedWorkerServer::removeConnection(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 24),  &v20);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorkerServerConnection,WTF::RawPtrTraits<WebKit::WebSharedWorkerServerConnection>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorkerServerConnection>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v19, (a1 + 24), v3);
  v4 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::removeConnection(%p): processIdentifier=%llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  v5 = WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::begin(*(a1 + 48));
  v7 = v5;
  v8 = v6;
  v9 = 0;
  v10 = *(a1 + 48);
  if (v10)
  {
    v9 = v10 + 120 * *(v10 - 4);
  }

  if (v9 != v5)
  {
    do
    {
      v12 = *(v7 + 112);
      ++*(v12 + 8);
      v18 = v12;
      v13 = WTF::fastMalloc(0x20);
      *v13 = &unk_1F1108120;
      v13[1] = &v20;
      v13[2] = buf;
      v13[3] = &v18;
      v17 = v13;
      WebKit::WebSharedWorker::forEachSharedWorkerObject(v12, &v17);
      (*(*v13 + 8))(v13);
      v14 = v18;
      v18 = 0;
      if (v14)
      {
        WTF::RefCounted<WebKit::WebSharedWorker>::deref((v14 + 8));
      }

      do
      {
        v7 += 120;
      }

      while (v7 != v8 && ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v7) & 1) != 0 || *(v7 + 64) == -1));
    }

    while (v7 != v9);
    if (*&buf[12])
    {
      v15 = *buf;
      v16 = *&buf[12] << 7;
      do
      {
        WebKit::WebSharedWorkerServer::sharedWorkerObjectIsGoingAway(a1, v15, *(v15 + 112), *(v15 + 120));
        v15 += 128;
        v16 -= 128;
      }

      while (v16);
    }
  }

  WTF::Vector<std::pair<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v6);
  result = v19;
  if (v19)
  {
    if (v19[6] == 1)
    {
      return (*(*v19 + 8))();
    }

    else
    {
      --v19[6];
    }
  }

  return result;
}

void WebKit::WebSharedWorkerServer::postErrorToWorkerObject(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, char a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = a5;
  v17 = a4;
  v15 = a7;
  if ((_MergedGlobals_77 & 1) == 0)
  {
    qword_1ED6426D8 = 0;
    _MergedGlobals_77 = 1;
  }

  v11 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v12 = v11;
  if (v11)
  {
    ++*(v11 + 8);
  }

  v13 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    *&buf[4] = a2;
    v19 = 2048;
    v20 = v12;
    _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "WebSharedWorkerServer::postErrorToWorkerObject: sharedWorkerIdentifier=%llu, sharedWorker=%p", buf, 0x16u);
    if (!v12)
    {
      return;
    }
  }

  else if (!v12)
  {
    return;
  }

  v14 = WTF::fastMalloc(0x38);
  *v14 = &unk_1F1108148;
  v14[1] = a1;
  v14[2] = a3;
  v14[3] = &v17;
  v14[4] = &v16;
  v14[5] = a6;
  v14[6] = &v15;
  *buf = v14;
  WebKit::WebSharedWorker::forEachSharedWorkerObject(v12, buf);
  (*(*v14 + 8))(v14);
  WTF::RefCounted<WebKit::WebSharedWorker>::deref((v12 + 8));
}

void WebKit::WebSharedWorkerServer::sharedWorkerTerminated(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_ERROR))
  {
    v20 = 134217984;
    v21 = a2;
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "WebSharedWorkerServer::sharedWorkerTerminated: sharedWorkerIdentifier=%llu", &v20, 0xCu);
  }

  v7 = *(a1 + 48);
  v6 = (a1 + 48);
  v5 = v7;
  if (v7)
  {
    v8 = *(v5 - 4);
    if (v8)
    {
      v9 = 0;
      v10 = (v5 + 120 * v8 - 120);
      do
      {
        if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::SharedWorkerKey>,false>::isEmptyValue<WebCore::SharedWorkerKey>(v10) & 1) == 0 && *(v10 + 8) != -1 && *(*(v10 + 14) + 16) == a2)
        {
          WTF::KeyValuePairHashTraits<WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>::customDeleteBucket(v10, v11);
          ++v9;
        }

        v10 = (v10 - 120);
        --v8;
      }

      while (v8);
      v5 = *v6;
      if (v9)
      {
        v12 = *(v5 - 12) - v9;
        *(v5 - 16) += v9;
        *(v5 - 12) = v12;
      }

      else if (!v5)
      {
        return;
      }
    }

    v13 = *(v5 - 12);
    v14 = *(v5 - 4);
    if (6 * v13 < v14 && v14 >= 9)
    {
      if (v13 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v16 = __clz(v13 - 1);
        if (!v16)
        {
          __break(1u);
        }

        v17 = (1 << -v16);
        if (v13 > 0x400)
        {
          if (v17 > 2 * v13)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      if (3 * v17 > 4 * v13)
      {
LABEL_25:
        if (v17 > 0x400)
        {
          v18 = 0.416666667;
        }

        else
        {
          v18 = 0.604166667;
        }

        if (v17 * v18 <= v13)
        {
          LODWORD(v17) = 2 * v17;
        }

        if (v17 <= 8)
        {
          v19 = 8;
        }

        else
        {
          v19 = v17;
        }

        WTF::HashTable<WebCore::SharedWorkerKey,WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::FastMalloc>::rehash(v6, v19, 0);
        return;
      }

LABEL_24:
      LODWORD(v17) = 2 * v17;
      goto LABEL_25;
    }
  }
}

void WebKit::WebSharedWorkerServer::terminateContextConnectionWhenPossible(uint64_t a1, WTF **a2, const WTF::StringImpl *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorkerServerToContextConnection,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>((a1 + 32), a2, a3);
  v5 = v4;
  if (v4)
  {
    ++*(v4 + 24);
  }

  v6 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = a3;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::terminateContextConnectionWhenPossible: processIdentifier=%llu, contextConnection=%p", &v9, 0x16u);
  }

  if (v5)
  {
    v7 = *(v5 + 32);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        if (*(v8 + 216) == a3)
        {
          *(v5 + 128) = 1;
        }
      }
    }

    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref((v5 + 24));
  }
}

void WebKit::WebSharedWorkerServer::reportNetworkUsageToAllSharedWorkerObjects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ((_MergedGlobals_77 & 1) == 0)
  {
    qword_1ED6426D8 = 0;
    _MergedGlobals_77 = 1;
  }

  v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebSharedWorker,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v7 = v6;
  if (v6)
  {
    ++*(v6 + 8);
  }

  v8 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = a2;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::reportNetworkUsageToAllSharedWorkerObjects: sharedWorkerIdentifier=%llu, sharedWorker=%p, bytesTransferredOverNetworkDelta=%zu", buf, 0x20u);
  }

  if (v7)
  {
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F1108170;
    v9[1] = a1;
    v9[2] = &v10;
    *buf = v9;
    WebKit::WebSharedWorker::forEachSharedWorkerObject(v7, buf);
    (*(*v9 + 8))(v9);
    WTF::RefCounted<WebKit::WebSharedWorker>::deref((v7 + 8));
  }
}

uint64_t WebKit::WebSharedWorkerServerConnection::create@<X0>(uint64_t a1@<X0>, void *a2@<X1>, atomic_ullong *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = WebKit::WebSharedWorkerServerConnection::operator new(0x40, a2);
  result = WebKit::WebSharedWorkerServerConnection::WebSharedWorkerServerConnection(v10, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t WebKit::WebSharedWorkerServerConnection::operator new(WebKit::WebSharedWorkerServerConnection *this, void *a2)
{
  if (WebKit::WebSharedWorkerServerConnection::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSharedWorkerServerConnection::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSharedWorkerServerConnection::operatorNewSlow(0x40);
  }
}

uint64_t WebKit::WebSharedWorkerServerConnection::WebSharedWorkerServerConnection(uint64_t a1, uint64_t a2, unsigned int *a3, atomic_ullong *a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 1;
  *a1 = &unk_1F1107C38;
  *(a1 + 8) = &unk_1F1107CA0;
  *(a1 + 16) = 0;
  while (1)
  {
    v10 = *a4;
    if ((*a4 & 1) == 0)
    {
      break;
    }

    v14 = *a4;
    atomic_compare_exchange_strong_explicit(a4, &v14, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v10)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a4);
LABEL_4:
  *(a1 + 32) = a4;
  atomic_fetch_add((a2 + 144), 1u);
  *(a1 + 40) = a2;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3, a3);
  v11 = *a3;
  atomic_fetch_add(*a3, 1u);
  *(a1 + 48) = v11;
  *(a1 + 56) = a5;
  v12 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    v16 = a1;
    v17 = 2048;
    v18 = a5;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::WebSharedWorkerServerConnection:", &v15, 0x16u);
  }

  return a1;
}

void WebKit::WebSharedWorkerServerConnection::~WebSharedWorkerServerConnection(WebKit::WebSharedWorkerServerConnection *this)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F1107C38;
  *(this + 1) = &unk_1F1107CA0;
  v2 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 7);
    v8 = 134218240;
    v9 = this;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::~WebSharedWorkerServerConnection:", &v8, 0x16u);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v3);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 && atomic_fetch_add(v6 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 36);
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }

  if (*(this + 6) == 1)
  {
    *(this + 1) = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v3);
    WTF::isIntegralOrPointerType(this);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebSharedWorkerServerConnection::~WebSharedWorkerServerConnection(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::WebSharedWorkerServerConnection::~WebSharedWorkerServerConnection(WebKit::WebSharedWorkerServerConnection *this)
{
  WebKit::WebSharedWorkerServerConnection::~WebSharedWorkerServerConnection((this - 8));
}

{
  WebKit::WebSharedWorkerServerConnection::~WebSharedWorkerServerConnection((this - 8));

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebSharedWorkerServerConnection::server(WebKit::WebSharedWorkerServerConnection *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::WebSharedWorkerServerConnection::session(WebKit::WebSharedWorkerServerConnection *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  ++*(v2 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_10;
  }

  v4 = *(this + 5);
  v7 = *(v3 + 24);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 240), &v7);
  v6 = *(v2 + 8);
  if (!v6)
  {
    __break(0xC471u);
LABEL_10:
    JUMPOUT(0x19DD75F6CLL);
  }

  *(v2 + 8) = v6 - 1;
  return result;
}

void WebKit::WebSharedWorkerServerConnection::requestSharedWorker(mpark *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 5);
  v13 = *(a1 + 7);
  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v14 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v14 = (a2 + 8);
  }

  WebCore::RegistrableDomain::uncheckedCreateFromHost(v14, buf);
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(v12, v13, buf);
  v18 = *buf;
  *buf = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v15);
  }

  if (PartyForCookies == 2)
  {
    v30 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebSharedWorkerServerConnection::requestSharedWorker(WebCore::SharedWorkerKey &&, WebCore::SharedWorkerObjectIdentifier, WebCore::TransferredMessagePort &&, WebCore::WorkerOptions &&)";
      _os_log_fault_impl(&dword_19D52D000, v30, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/SharedWorker/WebSharedWorkerServerConnection.cpp 94: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 4) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      goto LABEL_40;
    }
  }

  else if (a4 == *(a1 + 7))
  {
    if (WTF::equal(*(a2 + 104), *(a6 + 8), v16))
    {
      v19 = qword_1ED641300;
      if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 7);
        WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v33);
        WTF::String::utf8();
        if (v34)
        {
          v21 = v34 + 16;
        }

        else
        {
          v21 = 0;
        }

        *buf = 134218498;
        *&buf[4] = a1;
        v36 = 2048;
        v37 = v20;
        v38 = 2082;
        v39 = v21;
        _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::requestSharedWorker: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
        v23 = v34;
        v34 = 0;
        if (v23)
        {
          if (*v23 == 1)
          {
            WTF::fastFree(v23, v22);
          }

          else
          {
            --*v23;
          }
        }

        v24 = v33;
        v33 = 0;
        if (v24)
        {
          if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v22);
          }
        }
      }

      v25 = WebKit::WebSharedWorkerServerConnection::session(a1);
      if (v25)
      {
        v27 = v25;
        ++*(v25 + 4);
        WebKit::NetworkSession::ensureSharedWorkerServer(v25, v26);
        WebKit::WebSharedWorkerServer::requestSharedWorker(v28, a2, a3, a4, a5, a6);
        v29 = *(v27 + 4);
        if (v29)
        {
          *(v27 + 4) = v29 - 1;
          return;
        }

        __break(0xC471u);
LABEL_40:
        JUMPOUT(0x19DD761E0);
      }
    }

    else
    {
      v32 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::WebSharedWorkerServerConnection::requestSharedWorker(WebCore::SharedWorkerKey &&, WebCore::SharedWorkerObjectIdentifier, WebCore::TransferredMessagePort &&, WebCore::WorkerOptions &&)";
        _os_log_fault_impl(&dword_19D52D000, v32, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/SharedWorker/WebSharedWorkerServerConnection.cpp 96: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      *(*(a1 + 4) + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD76258);
      }
    }
  }

  else
  {
    v31 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebSharedWorkerServerConnection::requestSharedWorker(WebCore::SharedWorkerKey &&, WebCore::SharedWorkerObjectIdentifier, WebCore::TransferredMessagePort &&, WebCore::WorkerOptions &&)";
      _os_log_fault_impl(&dword_19D52D000, v31, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/SharedWorker/WebSharedWorkerServerConnection.cpp 95: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 4) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD7621CLL);
    }
  }
}

void WebKit::WebSharedWorkerServerConnection::sharedWorkerObjectIsGoingAway(char *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 == *(a1 + 7))
  {
    v8 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v19);
      WTF::String::utf8();
      if (v20)
      {
        v9 = v20 + 16;
      }

      else
      {
        v9 = 0;
      }

      *buf = 134218498;
      v22 = a1;
      v23 = 2048;
      v24 = a4;
      v25 = 2082;
      v26 = v9;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::sharedWorkerObjectIsGoingAway: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
      v11 = v20;
      v20 = 0;
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v10);
        }

        else
        {
          --*v11;
        }
      }

      v12 = v19;
      v19 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }
      }
    }

    v13 = WebKit::WebSharedWorkerServerConnection::session(a1);
    if (v13)
    {
      v15 = v13;
      ++*(v13 + 4);
      WebKit::NetworkSession::ensureSharedWorkerServer(v13, v14);
      WebKit::WebSharedWorkerServer::sharedWorkerObjectIsGoingAway(v16, a2, a3, a4);
      v17 = *(v15 + 4);
      if (v17)
      {
        *(v15 + 4) = v17 - 1;
        return;
      }

      __break(0xC471u);
LABEL_22:
      JUMPOUT(0x19DD76524);
    }
  }

  else
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v22 = "void WebKit::WebSharedWorkerServerConnection::sharedWorkerObjectIsGoingAway(WebCore::SharedWorkerKey &&, WebCore::SharedWorkerObjectIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/SharedWorker/WebSharedWorkerServerConnection.cpp 104: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 4) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      goto LABEL_22;
    }
  }
}

void WebKit::WebSharedWorkerServerConnection::suspendForBackForwardCache(WebKit::WebSharedWorkerServerConnection *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4 == *(a1 + 7))
  {
    v8 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v28);
      WTF::String::utf8();
      if (v29)
      {
        v9 = v29 + 16;
      }

      else
      {
        v9 = 0;
      }

      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      v31 = 2082;
      v32 = v9;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::suspendForBackForwardCache: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
      v11 = v29;
      v29 = 0;
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v10);
        }

        else
        {
          --*v11;
        }
      }

      v12 = v28;
      v28 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }
    }

    v13 = WebKit::WebSharedWorkerServerConnection::session(a1);
    if (v13)
    {
      v15 = v13;
      ++*(v13 + 4);
      WebKit::NetworkSession::ensureSharedWorkerServer(v13, v14);
      v17 = WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SharedWorkerKey>>,WebCore::SharedWorkerKey>((v16 + 48), a2);
      v18 = v17;
      if (v17)
      {
        ++*(v17 + 8);
      }

      v19 = qword_1ED641300;
      if (!os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v28);
      WTF::String::utf8();
      if (v29)
      {
        v20 = v29 + 16;
      }

      else
      {
        v20 = 0;
      }

      *buf = 136446466;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = v18;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::suspendForBackForwardCache: sharedWorkerObjectIdentifier=%{public}s, sharedWorker=%p", buf, 0x16u);
      v22 = v29;
      v29 = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          WTF::fastFree(v22, v21);
        }

        else
        {
          --*v22;
        }
      }

      v23 = v28;
      v28 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
        if (v18)
        {
          goto LABEL_25;
        }
      }

      else
      {
LABEL_24:
        if (v18)
        {
LABEL_25:
          *buf = a3;
          *&buf[8] = a4;
          buf[16] = 0;
          LOBYTE(v32) = 0;
          v33 = 0;
          v24 = WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,(WTF::ShouldValidateKey)1,WebKit::WebSharedWorker::Object>((v18 + 160), buf);
          v25 = *(v18 + 160);
          if (v25)
          {
            v25 += 8 * *(v25 - 4);
          }

          if (v25 != v24)
          {
            if (*v24)
            {
              *(*v24 + 16) = 1;
              WebKit::WebSharedWorker::suspendIfNeeded(v18);
            }
          }

          WTF::RefCounted<WebKit::WebSharedWorker>::deref((v18 + 8));
        }
      }

      v26 = *(v15 + 4);
      if (v26)
      {
        *(v15 + 4) = v26 - 1;
        return;
      }

      __break(0xC471u);
LABEL_43:
      JUMPOUT(0x19DD76894);
    }
  }

  else
  {
    v27 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebSharedWorkerServerConnection::suspendForBackForwardCache(WebCore::SharedWorkerKey &&, WebCore::SharedWorkerObjectIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v27, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/SharedWorker/WebSharedWorkerServerConnection.cpp 112: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 4) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      goto LABEL_43;
    }
  }
}

void WebKit::WebSharedWorkerServerConnection::resumeForBackForwardCache(WebKit::WebSharedWorkerServerConnection *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4 == *(a1 + 7))
  {
    v8 = qword_1ED641300;
    if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
    {
      WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v28);
      WTF::String::utf8();
      if (v29)
      {
        v9 = v29 + 16;
      }

      else
      {
        v9 = 0;
      }

      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      v31 = 2082;
      v32 = v9;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerServerConnection::resumeForBackForwardCache: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
      v11 = v29;
      v29 = 0;
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v10);
        }

        else
        {
          --*v11;
        }
      }

      v12 = v28;
      v28 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }
    }

    v13 = WebKit::WebSharedWorkerServerConnection::session(a1);
    if (v13)
    {
      v15 = v13;
      ++*(v13 + 4);
      WebKit::NetworkSession::ensureSharedWorkerServer(v13, v14);
      v17 = WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SharedWorkerKey,WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>,WTF::DefaultHash<WebCore::SharedWorkerKey>,WTF::HashTraits<WebCore::SharedWorkerKey>,WTF::HashTraits<WTF::Ref<WebKit::WebSharedWorker,WTF::RawPtrTraits<WebKit::WebSharedWorker>,WTF::DefaultRefDerefTraits<WebKit::WebSharedWorker>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SharedWorkerKey>>,WebCore::SharedWorkerKey>((v16 + 48), a2);
      v18 = v17;
      if (v17)
      {
        ++*(v17 + 8);
      }

      v19 = qword_1ED641300;
      if (!os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v28);
      WTF::String::utf8();
      if (v29)
      {
        v20 = v29 + 16;
      }

      else
      {
        v20 = 0;
      }

      *buf = 136446466;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = v18;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerServer::resumeForBackForwardCache: sharedWorkerObjectIdentifier=%{public}s, sharedWorker=%p", buf, 0x16u);
      v22 = v29;
      v29 = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          WTF::fastFree(v22, v21);
        }

        else
        {
          --*v22;
        }
      }

      v23 = v28;
      v28 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
        if (v18)
        {
          goto LABEL_25;
        }
      }

      else
      {
LABEL_24:
        if (v18)
        {
LABEL_25:
          *buf = a3;
          *&buf[8] = a4;
          buf[16] = 0;
          LOBYTE(v32) = 0;
          v33 = 0;
          v24 = WTF::HashTable<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::HashTraits<WTF::ListHashSetNode<WebKit::WebSharedWorker::Object> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WebKit::WebSharedWorker::Object>>,(WTF::ShouldValidateKey)1,WebKit::WebSharedWorker::Object>((v18 + 160), buf);
          v25 = *(v18 + 160);
          if (v25)
          {
            v25 += 8 * *(v25 - 4);
          }

          if (v25 != v24)
          {
            if (*v24)
            {
              *(*v24 + 16) = 0;
              WebKit::WebSharedWorker::resumeIfNeeded(v18);
            }
          }

          WTF::RefCounted<WebKit::WebSharedWorker>::deref((v18 + 8));
        }
      }

      v26 = *(v15 + 4);
      if (v26)
      {
        *(v15 + 4) = v26 - 1;
        return;
      }

      __break(0xC471u);
LABEL_43:
      JUMPOUT(0x19DD76C00);
    }
  }

  else
  {
    v27 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebSharedWorkerServerConnection::resumeForBackForwardCache(WebCore::SharedWorkerKey &&, WebCore::SharedWorkerObjectIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v27, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/SharedWorker/WebSharedWorkerServerConnection.cpp 120: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 4) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      goto LABEL_43;
    }
  }
}

uint64_t WebKit::WebSharedWorkerServerConnection::sharedPreferencesForWebProcess@<X0>(WebKit::NetworkProcess **this@<X0>, const IPC::Connection *a2@<X1>, uint64_t a3@<X8>)
{
  WebKit::NetworkProcess::protectedWebProcessConnection(this[5], a2, &v6);
  result = v6;
  if (v6)
  {
    *(a3 + 16) = *(v6 + 344);
    *a3 = *(result + 328);
    *(a3 + 24) = 1;
    if (*(result + 20) == 1)
    {
      v5 = *(*result + 8);

      return v5();
    }

    else
    {
      --*(result + 20);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t WebKit::ServiceWorkerDownloadTask::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 8);
    atomic_compare_exchange_strong_explicit((this + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 8));
}

uint64_t non-virtual thunk toWebKit::ServiceWorkerDownloadTask::ref(uint64_t this)
{
  v1 = (this - 552);
  while (1)
  {
    v2 = *v1;
    if ((*v1 & 1) == 0)
    {
      break;
    }

    v3 = *v1;
    atomic_compare_exchange_strong_explicit(v1, &v3, v2 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
}

_DWORD *WebKit::ServiceWorkerNavigationPreloader::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

_DWORD *WebKit::ServiceWorkerSoftUpdateLoader::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

void WebKit::WebSWRegistrationStore::~WebSWRegistrationStore(WebKit::WebSWRegistrationStore *this, WTF::StringImpl *a2)
{
  WebKit::WebSWRegistrationStore::~WebSWRegistrationStore(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  v3 = *(this + 13);
  if (v3)
  {
    WTF::HashTable<WebCore::ServiceWorkerRegistrationKey,WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>>>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashMap<WebCore::ServiceWorkerRegistrationKey,std::optional<WebCore::ServiceWorkerContextData>,WTF::DefaultHash<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::HashTraits<std::optional<WebCore::ServiceWorkerContextData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ServiceWorkerRegistrationKey>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  *(this + 6) = &unk_1F10EB388;
  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WebCore::TimerBase::~TimerBase((this + 48));
  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v5);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v5);
  }

  if (*(this + 4) == 1)
  {
    v8 = *(this + 1);
    if (v8)
    {
      *(v8 + 8) = 0;
      v9 = *(this + 1);
      *(this + 1) = 0;
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9);
          WTF::fastFree(v9, v5);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

_DWORD *WebKit::WebSharedWorkerServerConnection::deref(_DWORD *this)
{
  if (this[6] == 1)
  {
    return (*(*this + 8))();
  }

  --this[6];
  return this;
}

uint64_t non-virtual thunk toWebKit::WebSharedWorkerServerConnection::deref(uint64_t this)
{
  if (*(this + 16) == 1)
  {
    return (*(*(this - 8) + 8))();
  }

  --*(this + 16);
  return this;
}

_DWORD *WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::ServiceWorkerFetchTask,WebKit::ServiceWorkerFetchTask>(WebKit::ServiceWorkerFetchTask &,void (WebKit::ServiceWorkerFetchTask::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  v6 = *(v2 + 8);
  v5 = (v2 + 8);
  *v5 = v6 + 1;
  if (v3)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);

  return WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref(v5);
}

uint64_t WTF::StringBuilder::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {
    return WTF::StringBuilder::append();
  }

  else
  {
    return MEMORY[0x1EEDCA9E0]();
  }
}