uint64_t *WebKit::WebServiceWorkerFetchTaskClient::didReceiveFormDataAndFinish(uint64_t a1, WebCore::FormData **a2)
{
  v4 = 0;
  v5 = (a1 + 17);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 17), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 17);
  }

  result = WebKit::WebServiceWorkerFetchTaskClient::didReceiveFormDataAndFinishInternal(a1, a2);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t *WebKit::WebServiceWorkerFetchTaskClient::didReceiveFormDataAndFinishInternal(uint64_t a1, WebCore::FormData **a2)
{
  result = WebCore::FormData::asSharedBuffer(v35, *a2);
  v5 = v35[0];
  if (!v35[0])
  {
    v9 = *(a1 + 24);
    if (!v9)
    {
      return result;
    }

    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_17;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_17:
    if (*(a1 + 65) == 1)
    {
      WebCore::FormData::isolatedCopy(&v36, *a2);
      v12 = *(a1 + 80);
      if (v12 <= 1)
      {
        if (*(a1 + 80))
        {
          v16 = *(a1 + 72);
          *(a1 + 72) = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16 + 2);
              (*(*v16 + 8))(v16);
            }
          }
        }
      }

      else if (v12 != 255)
      {
        if (v12 != 3)
        {
          v27 = v36;
          v36 = 0;
          v28 = *(a1 + 72);
          *(a1 + 72) = v27;
          if (v28)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v28);
            v29 = v36;
            v36 = 0;
            if (v29)
            {
              WTF::RefCounted<WebCore::FormData>::deref(v29);
            }
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
        }

        std::unique_ptr<WebCore::ResourceError>::reset[abi:sn200100]((a1 + 72), 0);
      }

      *(a1 + 72) = v36;
      *(a1 + 80) = 2;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
    }

    WebCore::FormData::asBlobURL(v35, *a2);
    if (v35[0])
    {
      v36 = a1;
      while (1)
      {
        v14 = *(a1 + 8);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v15 = *(a1 + 8);
        atomic_compare_exchange_strong_explicit((a1 + 8), &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_35;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_35:
      v37 = a1;
      WTF::URL::isolatedCopy();
      v22 = WTF::fastMalloc(0x40);
      *v22 = &unk_1F112FA60;
      v22[1] = v36;
      v23 = v37;
      v37 = 0;
      v22[2] = v23;
      WTF::URL::URL((v22 + 3), &v38);
      WTF::callOnMainRunLoop();
      v34 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      v25 = v38;
      v38 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v24);
      }

      v26 = v37;
      v37 = 0;
      if (v26)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v26 + 8));
      }

      goto LABEL_48;
    }

    v17 = *a2;
    if (*(a1 + 217) == 1)
    {
      *a2 = 0;
      v34 = v17;
      v18 = *(a1 + 48);
      v19 = IPC::Encoder::operator new(0x238, v13);
      v20 = v19;
      v21 = 1719;
    }

    else
    {
      *a2 = 0;
      v34 = v17;
      v18 = *(a1 + 48);
      v19 = IPC::Encoder::operator new(0x238, v13);
      v20 = v19;
      v21 = 1724;
    }

    *v19 = v21;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = v18;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    IPC::Encoder::encodeHeader(v19);
    v36 = v20;
    IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(v20, &v34);
    IPC::Connection::sendMessageImpl(v9, &v36, 0, 0);
    v30 = v36;
    v36 = 0;
    if (v30)
    {
      IPC::Encoder::~Encoder(v30, v24);
      bmalloc::api::tzoneFree(v32, v33);
      if (!v17)
      {
        goto LABEL_48;
      }
    }

    else if (!v17)
    {
LABEL_48:
      v31 = v35[0];
      v35[0] = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v24);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9);
    }

    WTF::RefCounted<WebCore::FormData>::deref(v17);
    goto LABEL_48;
  }

  v35[0] = 0;
  WebKit::WebServiceWorkerFetchTaskClient::didReceiveDataInternal(a1, v5);
  if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  WebCore::NetworkLoadMetrics::NetworkLoadMetrics(&v36);
  WebKit::WebServiceWorkerFetchTaskClient::didFinishInternal(a1, &v36);
  v7 = v40;
  v40 = 0;
  if (v7)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v7, v6);
  }

  v8 = v39;
  v39 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  result = v35[0];
  v35[0] = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didFinishInternal(atomic_ullong *this, const WebCore::NetworkLoadMetrics *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = this[3];
  if (v2)
  {
    v4 = this;
    while (1)
    {
      v5 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v6 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
    if (*(v4 + 65) == 1)
    {
      v7 = qword_1ED641288;
      if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v4 + 48);
        LODWORD(v25[0]) = 134217984;
        *(v25 + 4) = v8;
        _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "ServiceWorkerFrameLoaderClient::didFinish while waiting, fetch identifier %llu", v25, 0xCu);
      }

      *(v4 + 216) = 1;
      WebCore::NetworkLoadMetrics::isolatedCopy(v25, a2);
      v10 = v28;
      *(v4 + 120) = v27;
      *(v4 + 136) = v10;
      *(v4 + 152) = v29;
      v11 = v26;
      *(v4 + 88) = *v25;
      *(v4 + 104) = v11;
      v12 = v31;
      v31 = 0;
      v13 = *(v4 + 176);
      *(v4 + 168) = v30;
      *(v4 + 176) = v12;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }

      *(v4 + 184) = v32;
      v14 = v34;
      v34 = 0;
      v15 = *(v4 + 208);
      *(v4 + 200) = v33;
      *(v4 + 208) = v14;
      if (v15)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v15, v9);
        v24 = v34;
        v34 = 0;
        if (v24)
        {
          WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v24, v9);
        }
      }

      v16 = v31;
      v31 = 0;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v9);
        }
      }
    }

    else
    {
      v17 = *(v4 + 48);
      if (*(v4 + 217) == 1)
      {
        v18 = IPC::Encoder::operator new(0x238, a2);
        *v18 = 1717;
        *(v18 + 2) = 0;
        *(v18 + 3) = 0;
        *(v18 + 1) = v17;
        *(v18 + 68) = 0;
        *(v18 + 70) = 0;
        *(v18 + 69) = 0;
        IPC::Encoder::encodeHeader(v18);
        v25[0] = v18;
      }

      else
      {
        v19 = IPC::Encoder::operator new(0x238, a2);
        *v19 = 1721;
        *(v19 + 2) = 0;
        *(v19 + 3) = 0;
        *(v19 + 1) = v17;
        *(v19 + 68) = 0;
        *(v19 + 70) = 0;
        *(v19 + 69) = 0;
        IPC::Encoder::encodeHeader(v19);
        v25[0] = v19;
        IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(v19, a2);
      }

      IPC::Connection::sendMessageImpl(v2, v25, 0, 0);
      v21 = v25[0];
      v25[0] = 0;
      if (v21)
      {
        IPC::Encoder::~Encoder(v21, v20);
        bmalloc::api::tzoneFree(v22, v23);
      }

      WebKit::WebServiceWorkerFetchTaskClient::cleanup(v4);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return this;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didFinish(atomic_uchar *this, const WebCore::NetworkLoadMetrics *a2)
{
  v4 = 0;
  v5 = this + 17;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(this + 17, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 17);
  }

  result = WebKit::WebServiceWorkerFetchTaskClient::didFinishInternal(this, a2);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didFail(atomic_uchar *this, const WebCore::ResourceError *a2)
{
  v4 = 0;
  v5 = this + 17;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(this + 17, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 17);
  }

  result = WebKit::WebServiceWorkerFetchTaskClient::didFailInternal(this, a2);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didFailInternal(atomic_ullong *this, const WebCore::ResourceError *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = this[3];
  if (v2)
  {
    v4 = this;
    while (1)
    {
      v5 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v6 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
    if (*(v4 + 65) != 1)
    {
      v15 = *(v4 + 48);
      if (*(v4 + 217) == 1)
      {
        v16 = IPC::Encoder::operator new(0x238, a2);
        v17 = v16;
        v18 = 1716;
      }

      else
      {
        v16 = IPC::Encoder::operator new(0x238, a2);
        v17 = v16;
        v18 = 1720;
      }

      *v16 = v18;
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 1) = v15;
      *(v16 + 68) = 0;
      *(v16 + 70) = 0;
      *(v16 + 69) = 0;
      IPC::Encoder::encodeHeader(v16);
      *&buf[0] = v17;
      IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v17, a2);
      IPC::Connection::sendMessageImpl(v2, buf, 0, 0);
      v20 = *&buf[0];
      *&buf[0] = 0;
      if (v20)
      {
        IPC::Encoder::~Encoder(v20, v19);
        bmalloc::api::tzoneFree(v29, v30);
      }

      WebKit::WebServiceWorkerFetchTaskClient::cleanup(v4);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
    }

    v7 = qword_1ED641288;
    if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v4 + 48);
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = v8;
      _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "ServiceWorkerFrameLoaderClient::didFail while waiting, fetch identifier %llu", buf, 0xCu);
    }

    WebCore::ResourceErrorBase::isolatedCopy(buf, a2);
    v9 = WebCore::ResourceErrorBase::operatorNewSlow(0x50);
    v10 = *&buf[0];
    *&buf[0] = 0;
    *v9 = v10;
    v11 = WTF::URL::URL(v9 + 8, buf + 1);
    v12 = v33;
    v33 = 0;
    *(v9 + 48) = v12;
    LODWORD(v12) = v34;
    *(v9 + 60) = v35;
    *(v9 + 56) = v12;
    v13 = cf;
    cf = 0;
    *(v9 + 64) = v13;
    *(v9 + 72) = v37;
    v31 = v9;
    v14 = *(v4 + 80);
    if (v14 <= 1)
    {
      if (*(v4 + 80))
      {
        v21 = *(v4 + 72);
        *(v4 + 72) = 0;
        if (v21)
        {
          if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v21 + 2);
            (*(*v21 + 8))(v21, v11);
          }
        }
      }
    }

    else if (v14 == 2)
    {
      v22 = *(v4 + 72);
      *(v4 + 72) = 0;
      if (v22)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v22);
      }
    }

    else if (v14 != 255)
    {
      v31 = 0;
      std::unique_ptr<WebCore::ResourceError>::reset[abi:sn200100]((v4 + 72), v9);
LABEL_27:
      std::unique_ptr<WebCore::ResourceError>::reset[abi:sn200100](&v31, 0);
      v25 = cf;
      cf = 0;
      if (v25)
      {
        CFRelease(v25);
      }

      v26 = v33;
      v33 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v24);
      }

      v27 = *(&buf[0] + 1);
      *(&buf[0] + 1) = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v24);
      }

      v28 = *&buf[0];
      *&buf[0] = 0;
      if (v28)
      {
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v24);
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
    }

    v23 = v31;
    v31 = 0;
    *(v4 + 72) = v23;
    *(v4 + 80) = 3;
    goto LABEL_27;
  }

  return this;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didNotHandle(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 17;
  v4 = 1;
  atomic_compare_exchange_strong_explicit(this + 17, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 17);
  }

  result = WebKit::WebServiceWorkerFetchTaskClient::didNotHandleInternal(this);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::didNotHandleInternal(atomic_ullong *this)
{
  v1 = this[3];
  if (v1)
  {
    v2 = this;
    while (1)
    {
      v3 = *v1;
      if ((*v1 & 1) == 0)
      {
        break;
      }

      v4 = *v1;
      atomic_compare_exchange_strong_explicit(v1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_7:
    IPC::Connection::send<Messages::ServiceWorkerFetchTask::DidNotHandle>(v1, v2[6]);
    WebKit::WebServiceWorkerFetchTaskClient::cleanup(v2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v1);
  }

  return this;
}

uint64_t WebKit::WebServiceWorkerFetchTaskClient::doCancel(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 17;
  atomic_compare_exchange_strong_explicit(this + 17, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 17);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
  }

  result = *(this + 28);
  if (result)
  {
    result = (*(*result + 16))(result);
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WebKit::WebServiceWorkerFetchTaskClient::setCancelledCallback(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 224);
  *(a1 + 224) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::usePreload(atomic_ullong *this, void *a2)
{
  v2 = this;
  v3 = 0;
  v4 = this + 17;
  atomic_compare_exchange_strong_explicit(this + 17, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this + 17);
  }

  v5 = *(v2 + 3);
  if (v5)
  {
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
    v8 = *(v2 + 6);
    v9 = IPC::Encoder::operator new(0x238, a2);
    *v9 = 1727;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = v8;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    IPC::Encoder::encodeHeader(v9);
    v15 = v9;
    IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    WebKit::WebServiceWorkerFetchTaskClient::cleanup(v2);
    this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  v12 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return this;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::contextIsStopping(atomic_ullong *this, void *a2)
{
  v2 = this;
  v3 = 0;
  v4 = this + 17;
  atomic_compare_exchange_strong_explicit(this + 17, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this + 17);
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
    if (*(v2 + 218))
    {
      if ((*(v2 + 216) & 1) == 0)
      {
        v8 = *(v2 + 48);
        v9 = IPC::Encoder::operator new(0x238, a2);
        *v9 = 1728;
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        *(v9 + 1) = v8;
        *(v9 + 68) = 0;
        *(v9 + 70) = 0;
        *(v9 + 69) = 0;
        IPC::Encoder::encodeHeader(v9);
        v15 = v9;
        IPC::Connection::sendMessageImpl(v5, &v15, 0, 0);
        v11 = v15;
        v15 = 0;
        if (v11)
        {
          IPC::Encoder::~Encoder(v11, v10);
          bmalloc::api::tzoneFree(v13, v14);
        }

        WebKit::WebServiceWorkerFetchTaskClient::cleanup(v2);
      }
    }

    else
    {
      WebKit::WebServiceWorkerFetchTaskClient::didNotHandleInternal(v2);
    }

    this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  v12 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return this;
}

void WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::~BlobLoader(WebKit::WebServiceWorkerFetchTaskClient::BlobLoader *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    if (v4[5] == 1)
    {
      (*(*v4 + 64))(v4);
    }

    else
    {
      --v4[5];
    }
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(v5 + 8) = 0;
    v6 = *(this + 1);
    *(this + 1) = 0;
    if (v6)
    {
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, a2);
      }
    }
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::~BlobLoader(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::didReceiveData(atomic_ullong *this, const WebCore::SharedBuffer *a2)
{
  v3 = this[5];
  if (v3)
  {
    this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v13, v3, this[4]);
    v4 = v13;
    if (v13)
    {
      v5 = 0;
      v6 = (v13 + 17);
      atomic_compare_exchange_strong_explicit((v13 + 17), &v5, 1u, memory_order_acquire, memory_order_acquire);
      if (v5)
      {
        this = MEMORY[0x19EB01E30](v4 + 17);
      }

      v7 = *(v4 + 24);
      if (v7)
      {
        while (1)
        {
          v8 = *v7;
          if ((*v7 & 1) == 0)
          {
            break;
          }

          v9 = *v7;
          atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v9 == v8)
          {
            goto LABEL_10;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_10:
        if (*(v4 + 217) == 1)
        {
          v14 = *(a2 + 7);
          v15 = a2;
          atomic_fetch_add(a2 + 2, 1u);
          v16 = 0;
          v17 = &v14;
          IPC::Connection::send<Messages::ServiceWorkerDownloadTask::DidReceiveData>(v7, &v17, *(v4 + 48));
        }

        else
        {
          v14 = *(a2 + 7);
          v15 = a2;
          atomic_fetch_add(a2 + 2, 1u);
          v16 = 0;
          v17 = &v14;
          IPC::Connection::send<Messages::ServiceWorkerFetchTask::DidReceiveData>(v7, &v17, *(v4 + 48));
        }

        v10 = v16;
        v16 = 0;
        if (v10)
        {
          WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v10);
        }

        v11 = v15;
        v15 = 0;
        if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v11 + 2);
          (*(*v11 + 8))(v11);
        }

        this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
      }

      v12 = 1;
      atomic_compare_exchange_strong_explicit(v6, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        this = WTF::Lock::unlockSlow((v4 + 17));
      }

      if (v13)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v13 + 8));
      }
    }
  }

  return this;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::didFail(atomic_ullong *this, const WebCore::ResourceError *a2)
{
  v3 = this[5];
  if (v3)
  {
    this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v5, v3, this[4]);
    v4 = v5;
    if (v5)
    {
      WebKit::WebServiceWorkerFetchTaskClient::didFail(v5, a2);

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref(v4 + 1);
    }
  }

  return this;
}

atomic_ullong *WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::didSucceed(atomic_ullong *this, const WebCore::NetworkLoadMetrics *a2)
{
  v2 = this[5];
  if (v2)
  {
    this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v8, v2, this[4]);
    v3 = v8;
    if (v8)
    {
      WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v9);
      WebKit::WebServiceWorkerFetchTaskClient::didFinish(v3, v9);
      v5 = v11;
      v11 = 0;
      if (v5)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v5, v4);
      }

      v6 = v10;
      v10 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }

      v7 = *(v3 + 56);
      *(v3 + 56) = 0;
      if (v7)
      {
        WTF::RefCounted<WebKit::WebServiceWorkerFetchTaskClient::BlobLoader>::deref((v7 + 16), v4);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v3 + 8));
    }
  }

  return this;
}

void WebKit::WebPluginInfoProvider::~WebPluginInfoProvider(WebKit::WebPluginInfoProvider *this)
{
  WebCore::PluginInfoProvider::~PluginInfoProvider(this);

  WTF::fastFree(v1, v2);
}

void WebKit::RemoteWorkerFrameLoaderClient::~RemoteWorkerFrameLoaderClient(WebKit::RemoteWorkerFrameLoaderClient *this, WTF::StringImpl *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WebCore::LocalFrameLoaderClient::~LocalFrameLoaderClient(this);
}

{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WebCore::LocalFrameLoaderClient::~LocalFrameLoaderClient(this);

  WTF::fastFree(v4, v5);
}

uint64_t WebKit::RemoteWorkerFrameLoaderClient::userAgent@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(this + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a2 = v3;
  return this;
}

_DWORD *WebKit::WebSWClientConnection::deref(_DWORD *this)
{
  if (this[2] == 1)
  {
    return (*(*this + 8))();
  }

  --this[2];
  return this;
}

uint64_t non-virtual thunk toWebKit::WebSWClientConnection::deref(uint64_t this)
{
  if (*(this - 24) == 1)
  {
    return (*(*(this - 32) + 8))();
  }

  --*(this - 24);
  return this;
}

uint64_t WebKit::WebSWContextManagerConnection::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 24);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 24);
    atomic_compare_exchange_strong_explicit((this + 24), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 24));
}

uint64_t non-virtual thunk toWebKit::WebSWContextManagerConnection::ref(uint64_t this)
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

WebCore::ResourceRequest *std::unique_ptr<WebCore::ResourceRequest const>::reset[abi:sn200100](WebCore::ResourceRequest **a1, WebCore::ResourceRequest *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebCore::ResourceRequest::~ResourceRequest(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WebCore::minimumValueForLengthWithLazyMaximum<WebCore::LayoutUnit,WebCore::LayoutUnit,WebCore::minimumValueForLength(WebCore::Length const&,WebCore::LayoutUnit)::{lambda(void)#1}>(unsigned __int8 *a1, int *a2)
{
  v2 = a1[4];
  switch(v2)
  {
    case 3:
      v7 = *a1;
      if (!a1[6])
      {
        v7 = *a1;
      }

      v3 = ((*a2 * 0.015625) * v7) / 100.0;
      break;
    case 11:
      WebCore::Length::nonNanCalculatedValue(a1, *a2 * 0.015625);
      v5 = v4 * 64.0;
      if (v5 < 2147483650.0)
      {
        goto LABEL_13;
      }

      return 0x7FFFFFFFLL;
    case 4:
      v3 = *a1;
      if (!a1[6])
      {
        v3 = *a1;
      }

      break;
    default:
      return 0;
  }

  v5 = v3 * 64.0;
  if (v5 >= 2147483650.0)
  {
    return 0x7FFFFFFFLL;
  }

LABEL_13:
  if (v5 <= -2147483650.0)
  {
    return 0x80000000;
  }

  else
  {
    return v5;
  }
}

uint64_t *WTF::Vector<WebCore::PluginInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, atomic_uint **a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  if (a3 < 0x4924925)
  {
    v5 = 56 * a3;
    v6 = WTF::fastMalloc((56 * a3));
    *(v3 + 2) = v5 / 0x38;
    *v3 = v6;
    v7 = *(v3 + 3);
    do
    {
      WebCore::PluginInfo::PluginInfo((*v3 + 56 * v7), a2);
      v7 = *(v3 + 3) + 1;
      *(v3 + 3) = v7;
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
    return v3;
  }

  __break(0xC471u);
  return result;
}

WebCore::PluginInfo *WebCore::PluginInfo::PluginInfo(WebCore::PluginInfo *this, atomic_uint **a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 1) = v5;
  v6 = a2[2];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 2) = v6;
  WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 24, (a2 + 3));
  *(this + 40) = *(a2 + 40);
  v7 = a2[6];
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(this + 6) = v7;
  return this;
}

uint64_t WTF::Vector<WebCore::MimeClassInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 27))
  {
    v5 = WTF::fastMalloc((32 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 32 * v6;
      do
      {
        v5 = WebCore::MimeClassInfo::MimeClassInfo(v5, v7) + 4;
        v7 += 4;
        v8 -= 32;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

atomic_uint **WebCore::MimeClassInfo::MimeClassInfo(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a1 = v3;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  a1[1] = v4;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 2), (a2 + 2));
  return a1;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

IPC::Encoder *WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::sourceStopped(WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source *this, void *a2)
{
  v3 = *(this + 6);
  if (*(*(this + 5) + 325) == 1)
  {
    v4 = IPC::Encoder::operator new(0x238, a2);
    v5 = v4;
    v6 = 1745;
  }

  else
  {
    v4 = IPC::Encoder::operator new(0x238, a2);
    v5 = v4;
    v6 = 1746;
  }

  *v4 = v6;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v11 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(this + 4));
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::audioUnitWillStart(WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source *this)
{
  v1 = WebCore::AudioSession::sharedSession(this);
  v2 = (*(*v1 + 72))(v1);
  v4 = v3 / 50.0;
  v5 = WebCore::AudioSession::sharedSession(v2);
  v6 = (*(*v5 + 104))(v5);
  if (v4 < v6)
  {
    v7 = WebCore::AudioSession::sharedSession(v6);
    v6 = (*(*v7 + 112))(v7, v4);
  }

  v8 = *(*WebCore::AudioSession::sharedSession(v6) + 32);

  return v8();
}

uint64_t WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::decrementCheckedPtrCount(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 24) = v1 - 1;
  }

  else
  {
    this = 290;
    __break(0xC471u);
  }

  return this;
}

IPC::Encoder *WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::audioSamplesAvailable(uint64_t a1, uint64_t *a2, const AudioBufferList **a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 144) == 1 && (WebCore::CAAudioStreamDescription::operator==() & 1) != 0)
  {
    goto LABEL_10;
  }

  v10 = (*(*a4 + 16))(a4);
  if (*(v10 + 16) != 1)
  {
LABEL_15:
    mpark::throw_bad_variant_access(v10);
  }

  v10 = std::optional<WebCore::CAAudioStreamDescription>::operator=[abi:sn200100]<AudioStreamBasicDescription const&,void>((a1 + 64), *(v10 + 1));
  if ((*(a1 + 144) & 1) == 0 || (v10 = WebCore::CAAudioStreamDescription::sampleRate((a1 + 64)), (*(a1 + 144) & 1) == 0))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = (v11 + v11);
  v13 = WebCore::CAAudioStreamDescription::streamDescription((a1 + 64));
  WebCore::CAAudioStreamDescription::CAAudioStreamDescription(v34, v13);
  WebKit::ProducerSharedCARingBuffer::allocate(v34, v12, v35);
  WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v34);
  if ((v37 & 1) == 0)
  {
    __break(0xC471u);
LABEL_18:
    JUMPOUT(0x19E34B1DCLL);
  }

  v14 = v35[0];
  v35[0] = 0;
  v32 = v14;
  WTF::MachSendRight::MachSendRight();
  *&v33[8] = v36;
  v15 = v32;
  v32 = 0;
  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100]((a1 + 56), v15);
  v16 = *(a1 + 48);
  WebCore::CAAudioStreamDescription::CAAudioStreamDescription(v34, v13);
  v18 = IPC::Encoder::operator new(0x238, v17);
  *v18 = 1747;
  *(v18 + 68) = 0;
  *(v18 + 70) = 0;
  *(v18 + 69) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 1) = 0;
  IPC::Encoder::encodeHeader(v18);
  v38 = v18;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, *(a1 + 32));
  IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::encode(v18, v33);
  v19 = WebCore::CAAudioStreamDescription::streamDescription(v34);
  IPC::ArgumentCoder<AudioStreamBasicDescription,void>::encode(v18, v19);
  IPC::Connection::sendMessageImpl(v16, &v38, 0, 0);
  v21 = v38;
  v38 = 0;
  if (v21)
  {
    IPC::Encoder::~Encoder(v21, v20);
    bmalloc::api::tzoneFree(v30, v31);
  }

  WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v34);
  WTF::MachSendRight::~MachSendRight(v33);
  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](&v32, 0);
  std::__optional_destruct_base<WebKit::ProducerSharedCARingBuffer::Pair,false>::~__optional_destruct_base[abi:sn200100](v35);
LABEL_10:
  v22 = *(a1 + 56);
  if (((*a3)->mBuffers[0].mData)(a3) != 1)
  {
    __break(0xC471u);
    goto LABEL_18;
  }

  WebCore::CARingBuffer::store(v22, a3[5]);
  v23 = *(a1 + 48);
  v25 = IPC::Encoder::operator new(0x238, v24);
  *v25 = 1744;
  *(v25 + 68) = 0;
  *(v25 + 70) = 0;
  *(v25 + 69) = 0;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 1) = 0;
  IPC::Encoder::encodeHeader(v25);
  v34[0] = v25;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, *(a1 + 32));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v25, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, a5);
  IPC::Connection::sendMessageImpl(v23, v34, 0, 0);
  result = v34[0];
  v34[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v26);
    return bmalloc::api::tzoneFree(v28, v29);
  }

  return result;
}

void non-virtual thunk toWebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::~Source(WebCore::RealtimeMediaSource **this)
{
  WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::~Source(this - 2);
}

{
  WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::operator delete(this - 2);
}

uint64_t non-virtual thunk toWebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::decrementCheckedPtrCount(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    *(this + 8) = v1 - 1;
  }

  else
  {
    this = 290;
    __break(0xC471u);
  }

  return this;
}

void WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::~Source(WebCore::RealtimeMediaSource **this)
{
  WebCore::RealtimeMediaSource::removeAudioSampleObserver();
  WebCore::RealtimeMediaSource::removeObserver(this[5], this);
  if (*(this + 144) == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription((this + 8));
  }

  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](this + 7, 0);
  v2 = this[6];
  this[6] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  v3 = this[5];
  this[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::RealtimeMediaSourceObserver::~RealtimeMediaSourceObserver(this);
}

double WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::operator delete(WebCore::RealtimeMediaSource **a1)
{
  WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source::~Source(a1);
  if (*(v1 + 24))
  {
    *(v1 + 144) = 0;
    result = 0.0;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }

  return result;
}

WTF::StringImpl **std::unique_ptr<WebKit::RemoteWorkerFrameLoaderClient>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 3);
    *(v2 + 3) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    WebCore::LocalFrameLoaderClient::~LocalFrameLoaderClient(v2);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

double WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (v7)
  {
    v8 = *a2;
    if (v6)
    {
      v9 = 24 * v6;
      v8 = *a2;
      while (!*v8)
      {
        v8 += 24;
        v9 -= 24;
        if (!v9)
        {
          goto LABEL_30;
        }
      }
    }

    v10 = v5 + 24 * v6;
    if (v8 != v10)
    {
LABEL_8:
      WTF::String::isolatedCopy();
      v12 = v20;
      v20 = 0;
      v13 = *v8;
      *v8 = v12;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }

      v14 = v20;
      v20 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v14 = WTF::StringImpl::destroy(v14, v11);
      }

      v15 = *(v8 + 16);
      if (v15 == 255)
      {
        mpark::throw_bad_variant_access(v14);
      }

      if (*(v8 + 16) > 1u)
      {
        if (v15 == 2)
        {
          LODWORD(v20) = *(v8 + 8);
        }

        else
        {
          v20 = *(v8 + 8);
        }
      }

      else if (*(v8 + 16))
      {
        LOBYTE(v20) = *(v8 + 8);
      }

      else
      {
        WTF::String::isolatedCopy();
      }

      v21 = v15;
      mpark::variant<WTF::String,BOOL,unsigned int,double>::operator=((v8 + 8), &v20);
      if (!v21)
      {
        v17 = v20;
        v20 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v16);
          }
        }
      }

      while (1)
      {
        v8 += 24;
        if (v8 == v10)
        {
          break;
        }

        if (*v8)
        {
          if (v8 != v10)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      v5 = *a2;
      LODWORD(v6) = *(a2 + 2);
      v7 = *(a2 + 3);
    }
  }

LABEL_30:
  a3.n128_u64[0] = 0;
  *a2 = a3;
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 12) = v7;
  v18 = *(a2 + 4);
  *(a2 + 4) = 0;
  *(a1 + 16) = v18;
  LOBYTE(v18) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 20) = v18;
  return a3.n128_f64[0];
}

WTF::StringImpl *WTF::CrossThreadCopierBase<false,false,std::optional<WebCore::NotificationPayload>>::copy<std::optional<WebCore::NotificationPayload>>(WTF::StringImpl *result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 136))
  {
    WTF::URL::isolatedCopy();
    WTF::String::isolatedCopy();
    *&v10 = *(a2 + 48);
    BYTE8(v10) = *(a2 + 56);
    if (*(a2 + 120) == 1)
    {
      v18 = *(a2 + 64);
      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      v4 = *(a2 + 112);
      v5 = v18;
      v12 = v19;
      v13 = v20;
      v14 = v21;
      v15 = v4;
      v6 = 1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v11 = v5;
    v16 = v6;
    v17 = *(a2 + 128);
    WTF::URL::URL(v2, &v8);
    *(v2 + 40) = v9;
    *(v2 + 48) = v10;
    *(v2 + 64) = 0;
    *(v2 + 120) = 0;
    if (v16)
    {
      *(v2 + 64) = v11;
      *(v2 + 72) = v12;
      *(v2 + 88) = v13;
      *(v2 + 104) = v14;
      *(v2 + 112) = v15;
      *(v2 + 120) = 1;
      *(v2 + 128) = v17;
      *(v2 + 136) = 1;
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    else
    {
      *(v2 + 128) = v17;
      *(v2 + 136) = 1;
    }

    result = v8;
    v9 = 0;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  else
  {
    *result = 0;
    *(result + 136) = 0;
  }

  return result;
}

WTF::StringImpl **std::unique_ptr<WebCore::ResourceError>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[8];
    v2[8] = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[6];
    v2[6] = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = v2[1];
    v2[1] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *v2;
    *v2 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::WebServiceWorkerFetchTaskClient::BlobLoader>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::~BlobLoader((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PluginView::Stream::start(void)::$_0,void,WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WebCore::NetscapePlugInStreamLoader>,WTF::DefaultRefDerefTraits<WebCore::NetscapePlugInStreamLoader>> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112EDB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 56))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PluginView::Stream::start(void)::$_0,void,WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WebCore::NetscapePlugInStreamLoader>,WTF::DefaultRefDerefTraits<WebCore::NetscapePlugInStreamLoader>> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112EDB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 56))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::PluginView::Stream::start(void)::$_0,void,WTF::RefPtr<WebCore::NetscapePlugInStreamLoader,WTF::RawPtrTraits<WebCore::NetscapePlugInStreamLoader>,WTF::DefaultRefDerefTraits<WebCore::NetscapePlugInStreamLoader>> &&>::call(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  result = *(v2 + 248);
  *(v2 + 248) = v3;
  if (result)
  {
    if (result[4] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[4];
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::PluginView>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::PluginView *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++v1[2];
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    result = (*(*v4 + v2))();
  }

  else
  {
    result = v2(v4);
    if (!v1)
    {
      return result;
    }
  }

  if (v1[2] == 1)
  {
    v6 = *(*v1 + 8);

    return v6(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_19;
          }

LABEL_18:
          (*(*v12 + 8))(v12);
          goto LABEL_19;
        }

        v12 = v10[1];
        v10[1] = 0;
        if (v12)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4)
  {
LABEL_22:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::SpeechRecognitionRealtimeMediaSourceManager::Source>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E34BD94);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return *(v2 + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

uint64_t WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::WebSWOriginTable>@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = WebKit::WebSWOriginTable::operator new(0x28, a1);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  result = WebKit::SharedStringHashTableReadOnly::SharedStringHashTableReadOnly(v3);
  *(result + 32) = 0;
  *a2 = result;
  return result;
}

uint64_t WebKit::WebSWOriginTable::operator new(WebKit::WebSWOriginTable *this, void *a2)
{
  if (WebKit::WebSWOriginTable::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSWOriginTable::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSWOriginTable::operatorNewSlow(0x28);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::scheduleJobInServer(WebCore::ServiceWorkerJobData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112EE30;
  WebCore::ServiceWorkerJobData::~ServiceWorkerJobData((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::scheduleJobInServer(WebCore::ServiceWorkerJobData const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112EE30;
  WebCore::ServiceWorkerJobData::~ServiceWorkerJobData((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::scheduleJobInServer(WebCore::ServiceWorkerJobData const&)::$_0,void>::call(IPC::Encoder *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      v4 = *(v2 - 8);
      ++*(v2 - 24);
      v5 = (*(v4 + 56))(v2 - 8);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 3114;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v11 = v7;
      IPC::ArgumentCoder<WebCore::ServiceWorkerJobData,void>::encode(v7, v3 + 32);
      (*(*(v2 - 8) + 32))(v2 - 8, &v11, 0);
      result = v11;
      v11 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v8);
        result = bmalloc::api::tzoneFree(v9, v10);
      }

      if (*(v2 - 24) == 1)
      {
        return (*(*(v2 - 32) + 8))();
      }

      else
      {
        --*(v2 - 24);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::removeServiceWorkerRegistrationInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112EE58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::removeServiceWorkerRegistrationInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112EE58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::removeServiceWorkerRegistrationInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2[3];
  v2 += 3;
  v4 = (*(v3 + 56))(v2);
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 3111;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(a1 + 8));
  (*(*v2 + 32))(v2, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112EE80;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112EE80;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

mpark *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*>::call(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    result = IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>>(v12, a3);
    v6 = v15;
    if (v15 == 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          mpark::throw_bad_variant_access(result);
        }

        v7 = v12[0];
        v8 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        v16[0] = v7;
        v17 = v8;
        v18 = 1;
      }

      else
      {
        v16[0] = v12[0];
        v18 = 0;
      }

      v10 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v10 + 16))(v10, v16);
      (*(*v10 + 8))(v10);
      result = mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v16, v11);
    }

    if (v15 == 1)
    {
      result = mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v12, v5);
    }

    if ((v6 & 1) == 0)
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>((a1 + 8), v5);
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(v9, a2);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::ScheduleUnregisterJobInServer,WebKit::WebSWClientConnection::scheduleUnregisterJobInServer(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(uint64_t *a1, WTF::StringImpl *a2)
{
  v10[0] = 0;
  v12 = 1;
  v7[0] = 0;
  v11 = 0;
  v8 = 0;
  v9 = 1;
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v10, a2);
  v10[0] = 0;
  v11 = 0;
  v12 = 1;
  v3 = *a1;
  *a1 = 0;
  (*(*v3 + 16))(v3, v10);
  (*(*v3 + 8))(v3);
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v10, v4);
  return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v7, v5);
}

uint64_t IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t WTF::Deque<WTF::Function<void ()(void)>,0ul>::removeFirst(uint64_t result)
{
  v1 = *result;
  if (*result == *(result + 8))
  {
    result = 513;
    __break(0xC471u);
    goto LABEL_10;
  }

  v2 = result;
  v3 = *(result + 24);
  if (v1 >= v3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = *(result + 16);
  result = *(v4 + 8 * v1);
  *(v4 + 8 * v1) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
    v1 = *v2;
    v3 = *(v2 + 24);
  }

  if (v1 == v3 - 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1 + 1;
  }

  *v2 = v5;
  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::matchRegistration(WebCore::SecurityOriginData &&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)::$_0,void,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData)> &>::call(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v4 = 0;
  WTF::Function<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::operator()(*a2, v3);
  if (v4 == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v3, v2);
  }
}

void WTF::Function<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v5 = 0;
  if (*(a2 + 352) == 1)
  {
    WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v4, a2);
    v5 = 1;
  }

  (*(*a1 + 16))(a1, v4);
  if (v5 == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v4, v3);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)>,void,std::optional<WebCore::ServiceWorkerRegistrationData>>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112EED0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)>,void,std::optional<WebCore::ServiceWorkerRegistrationData>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112EED0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)>,void,std::optional<WebCore::ServiceWorkerRegistrationData>>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t *WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::~CompletionHandlerWithFinalizer(uint64_t *a1)
{
  if (*a1)
  {
    (*(*a1[1] + 16))(a1[1], a1);
  }

  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::matchRegistration(WebCore::SecurityOriginData &&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)::$_1,void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112EEF8;
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (!*(a1 + 56))
  {
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 56) = -1;
  WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::~CompletionHandlerWithFinalizer((a1 + 16));
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v6);
  }

  return a1;
}

{
  *a1 = &unk_1F112EEF8;
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (!*(a1 + 56))
  {
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 56) = -1;
  WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::~CompletionHandlerWithFinalizer((a1 + 16));
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v6);
  }

  return WTF::fastFree(a1, v6);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::matchRegistration(WebCore::SecurityOriginData &&,WTF::URL const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerRegistrationData> &&)> &&)::$_1,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      v4 = *(v2 - 8);
      ++*(v2 - 24);
      v5 = (*(v4 + 56))(v2 - 8);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 3107;
      *(v7 + 8) = v5;
      *(v7 + 16) = 0u;
      *(v7 + 544) = 0;
      *(v7 + 552) = 0u;
      IPC::Encoder::encodeHeader(v7);
      v15 = v7;
      IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v7, v3 + 32);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, (v3 + 64));
      v14 = *(v3 + 16);
      *(v3 + 16) = 0u;
      v8 = WTF::fastMalloc(0x18);
      *v8 = &unk_1F112EF20;
      v16 = 0u;
      *(v8 + 8) = v14;
      WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::~CompletionHandlerWithFinalizer(&v16);
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        result = 141;
        __break(0xC471u);
      }

      else
      {
        IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        *&v16 = v8;
        *(&v16 + 1) = IdentifierInternal;
        (*(*(v2 - 8) + 40))(v2 - 8, &v15, &v16, 0);
        v11 = v16;
        *&v16 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        result = v15;
        v15 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v10);
          result = bmalloc::api::tzoneFree(v12, v13);
        }

        if (*(v2 - 24) == 1)
        {
          return (*(*(v2 - 32) + 8))();
        }

        else
        {
          --*(v2 - 24);
        }
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::MatchRegistration,WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>>(WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112EF20;
  WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::~CompletionHandlerWithFinalizer(a1 + 1);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::MatchRegistration,WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>>(WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(uint64_t *a1)
{
  *a1 = &unk_1F112EF20;
  WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::~CompletionHandlerWithFinalizer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::MatchRegistration,WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>>(WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerRegistrationData>>>(v6, a3);
    if (v8 == 1)
    {
      v9[0] = 0;
      v10 = 0;
      if (v7 == 1)
      {
        WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v9, v6);
        v10 = 1;
      }

      WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::operator()((a1 + 8), v9);
      if (v10 == 1)
      {
        WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v9, v4);
      }

      if ((v8 & 1) != 0 && v7 == 1)
      {
        WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v6, v4);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebSWServerConnection::MatchRegistration,WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>>((a1 + 8));
    }
  }

  else
  {
    v5 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebSWServerConnection::MatchRegistration,WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>>(v5);
  }
}

void IPC::Connection::cancelReply<Messages::WebSWServerConnection::MatchRegistration,WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>>(uint64_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v3 = 0;
  WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::operator()(a1, v2);
  if (v3 == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v2, v1);
  }
}

void IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerRegistrationData>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_20:
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12)
    {
      if (v6)
      {
        (*(*v12 + 16))(v12, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_23;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_23:
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13 && v6)
    {
      (*(*v13 + 16))(v13, v5);
    }

    goto LABEL_24;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_20;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_23;
  }

  if (!v7)
  {
    v20[0] = 0;
    v21 = 0;
    v22 = 1;
    goto LABEL_10;
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(a2, v23);
  if (v24 == 1)
  {
    WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v20, v23);
    v21 = 1;
    v22 = 1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }

    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v23, v8);
    if (v22)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v20[0] = 0;
  v22 = 0;
LABEL_25:
  v14 = *a2;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v16 = *(a2 + 3);
  if (!v16 || !v15 || ((*(*v16 + 16))(v16, v14), (v22 & 1) == 0))
  {
    *a1 = 0;
    a1[360] = 0;
LABEL_27:
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18 && v17)
    {
      v19 = *(*v18 + 16);

      v19();
    }

    return;
  }

LABEL_10:
  *a1 = 0;
  a1[352] = 0;
  if (v21 != 1)
  {
    a1[360] = 1;
    return;
  }

  WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(a1, v20);
  a1[352] = 1;
  v10 = v22;
  a1[360] = 1;
  if (v10 & 1) != 0 && (v21)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v20, v9);
    if ((a1[360] & 1) == 0)
    {
      goto LABEL_27;
    }
  }
}

void WTF::CompletionHandlerWithFinalizer<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::operator()(uint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *a1 = 0;
  v4[0] = 0;
  v5 = 0;
  if (*(a2 + 352) == 1)
  {
    WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v4, a2);
    v5 = 1;
  }

  WTF::Function<void ()(std::optional<WebCore::ServiceWorkerRegistrationData>)>::operator()(v2, v4);
  if (v5 == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v4, v3);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  (*(*v2 + 8))(v2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::WhenRegistrationReady,WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0>(WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112EF48;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::WhenRegistrationReady,WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0>(WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112EF48;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::WhenRegistrationReady,WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0>(WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebSWClientConnection::whenRegistrationReady(WebCore::SecurityOriginData const&,WTF::URL const&,WTF::Function<void ()(WebCore::ServiceWorkerRegistrationData &&)> &&)::$_0,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (*a3)
    {
      IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerRegistrationData>>>(v5, a3);
      if (v7 == 1)
      {
        v8[0] = 0;
        v9 = 0;
        if (v6 == 1)
        {
          WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v8, v5);
          v9 = 1;
          (*(**(a1 + 8) + 16))(*(a1 + 8), v8);
          if (v9)
          {
            WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v8, v4);
          }
        }

        if ((v7 & 1) != 0 && v6 == 1)
        {
          WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v5, v4);
        }
      }
    }
  }
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::WorkerScriptLoader::ServiceWorkerDataManager,(WTF::DestructionThread)1>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = result;
    atomic_store(add, result);
    v3 = WTF::fastMalloc(0x10);
    *v3 = &unk_1F112EF70;
    *(v3 + 1) = v2;
    v4 = v3;
    WTF::ensureOnMainThread();
    result = v4;
    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebCore::WorkerScriptLoader::ServiceWorkerDataManager,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v2 = MEMORY[0x19EB08140]();

    return WTF::fastFree(v2, v3);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 352 * v3;
    do
    {
      WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v4, a2);
      v4 = (v6 + 352);
      v5 -= 352;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::getRegistrations(WebCore::SecurityOriginData &&,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112EF98;
  WebKit::WebSWClientConnection::getRegistrations(WebCore::SecurityOriginData &&,WTF::URL const&,WebCore::SecurityOriginData &&::CompletionHandler<void ()(WebCore::SecurityOriginData &&::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WebCore::SecurityOriginData &&::CrashOnOverflow,16ul,WebCore::SecurityOriginData &&::FastMalloc> &&)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::getRegistrations(WebCore::SecurityOriginData &&,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112EF98;
  WebKit::WebSWClientConnection::getRegistrations(WebCore::SecurityOriginData &&,WTF::URL const&,WebCore::SecurityOriginData &&::CompletionHandler<void ()(WebCore::SecurityOriginData &&::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WebCore::SecurityOriginData &&::CrashOnOverflow,16ul,WebCore::SecurityOriginData &&::FastMalloc> &&)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWClientConnection::getRegistrations(WebCore::SecurityOriginData &&,WTF::URL const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      v4 = *(v2 - 8);
      ++*(v2 - 24);
      v5 = (*(v4 + 56))(v2 - 8);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 3105;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v15 = v7;
      IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v7, v3 + 24);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, (v3 + 56));
      v8 = *(v3 + 16);
      *(v3 + 16) = 0;
      v9 = WTF::fastMalloc(0x10);
      *v9 = &unk_1F112EFC0;
      v9[1] = v8;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        result = 141;
        __break(0xC471u);
      }

      else
      {
        v14[0] = v9;
        v14[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        (*(*(v2 - 8) + 40))(v2 - 8, &v15, v14, 0);
        v11 = v14[0];
        v14[0] = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        result = v15;
        v15 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v10);
          result = bmalloc::api::tzoneFree(v12, v13);
        }

        if (*(v2 - 24) == 1)
        {
          return (*(*(v2 - 32) + 8))();
        }

        else
        {
          --*(v2 - 24);
        }
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetRegistrations,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112EFC0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetRegistrations,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112EFC0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetRegistrations,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, WTF::StringImpl *a2, WTF::StringImpl **a3, __n128 a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a3 && (a2 = *a3) != 0)
  {
    v6 = a3[1];
    v7 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
    {
      *a3 = 0;
      a3[1] = 0;
      v26 = a3[3];
      if (v26)
      {
        if (v6)
        {
          (*(*v26 + 16))(v26);
          a2 = *a3;
          v6 = a3[1];
          goto LABEL_58;
        }
      }

      else
      {
        v6 = 0;
      }

      a2 = 0;
LABEL_58:
      *a3 = 0;
      a3[1] = 0;
      v27 = a3[3];
      if (v27 && v6)
      {
        (*(*v27 + 16))(v27, a2);
      }

LABEL_38:
      v20 = *a3;
      v21 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v22 = a3[3];
      if (v22 && v21)
      {
        (*(*v22 + 16))(v22, v20);
        v24 = a3[3];
        v20 = *a3;
        v25 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        if (v24)
        {
          if (v25)
          {
            (*(*v24 + 16))(v24, v20);
          }
        }
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }

      IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetRegistrations,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v20, a4);
      return;
    }

    a3[2] = (v7 + 8);
    if (!v7)
    {
      goto LABEL_58;
    }

    v9 = *v7;
    v35 = 0;
    v36 = 0;
    if (v9 >= 0xBA2)
    {
      do
      {
        IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(a3, v37);
        v18 = v38;
        if (v38 == 1)
        {
          v19 = HIDWORD(v36);
          if (HIDWORD(v36) == v36)
          {
            WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRegistrationData>(&v35, v37);
          }

          else
          {
            WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v35 + 352 * HIDWORD(v36), v37);
            HIDWORD(v36) = v19 + 1;
          }
        }

        if (v38 == 1)
        {
          WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v37, a2);
          if ((v18 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if ((v18 & 1) == 0)
        {
          goto LABEL_37;
        }

        --v9;
      }

      while (v9);
      LODWORD(v9) = v36;
      v14 = HIDWORD(v36);
      v13 = v35;
      if (v36 > HIDWORD(v36))
      {
        v23 = v35;
        if (HIDWORD(v36))
        {
          v28 = HIDWORD(v36);
          if (HIDWORD(v36) >= 0xBA2E8C)
          {
            __break(0xC471u);
            return;
          }

          v23 = WTF::fastMalloc((352 * HIDWORD(v36)));
          LODWORD(v9) = 352 * v28 / 0x160;
          v14 = v28;
          if (v23 != v13)
          {
            WTF::VectorMover<false,WebCore::ServiceWorkerRegistrationData>::move(v13, (v13 + 352 * v28), v23);
          }
        }

        if (v13)
        {
          if (v23 == v13)
          {
            LODWORD(v9) = 0;
            v23 = 0;
          }

          WTF::fastFree(v13, a2);
        }

        v13 = v23;
      }
    }

    else
    {
      if (v9)
      {
        LODWORD(v36) = 352 * v9 / 0x160u;
        v35 = WTF::fastMalloc((352 * v9));
        while (1)
        {
          IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(a3, v37);
          v10 = v38;
          if (v38 == 1)
          {
            v11 = HIDWORD(v36);
            if (HIDWORD(v36) == v36)
            {
              WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRegistrationData>(&v35, v37);
            }

            else
            {
              WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v35 + 352 * HIDWORD(v36), v37);
              HIDWORD(v36) = v11 + 1;
            }
          }

          if (v38 == 1)
          {
            WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v37, a2);
          }

          if ((v10 & 1) == 0)
          {
            break;
          }

          if (!--v9)
          {
            v13 = v35;
            LODWORD(v9) = v36;
            v14 = HIDWORD(v36);
            goto LABEL_25;
          }
        }

LABEL_37:
        WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, a2);
        goto LABEL_38;
      }

      v14 = 0;
      v13 = 0;
    }

LABEL_25:
    v35 = 0;
    v36 = 0;
    v34 = 1;
    WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, a2);
    v33[0] = 0;
    v33[1] = 0;
    v29 = v13;
    v30 = v9;
    v31 = v14;
    v32 = 1;
    WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v15);
    v16 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v16 + 16))(v16, &v29);
    (*(*v16 + 8))(v16);
    if (v32)
    {
      WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v17);
    }
  }

  else
  {
    v12 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetRegistrations,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v12, a2, a4);
  }
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetRegistrations,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, WTF::StringImpl *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

uint64_t WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRegistrationData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(*a1 + 352 * *(a1 + 12), v3);
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 352 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::ServiceWorkerRegistrationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xBA2E8C)
    {
      __break(0xC471u);
      JUMPOUT(0x19E34E104);
    }

    v3 = *a1;
    v4 = (*a1 + 352 * *(a1 + 12));
    v5 = 352 * a2;
    v6 = WTF::fastMalloc((352 * a2));
    *(a1 + 8) = v5 / 0x160;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::ServiceWorkerRegistrationData>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }
}

void WTF::VectorMover<false,WebCore::ServiceWorkerRegistrationData>::move(WebCore::ServiceWorkerRegistrationData *a1, WebCore::ServiceWorkerRegistrationData *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(a3, v5);
      WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v5, v6);
      a3 += 352;
      v5 = (v5 + 352);
    }

    while (v5 != a2);
  }
}

uint64_t IPC::MessageSender::sendWithAsyncReply<Messages::WebSWServerConnection::TerminateWorkerFromClient,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3121;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a4;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v23 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
  v11 = *a3;
  *a3 = 0;
  v12 = WTF::fastMalloc(0x10);
  *v12 = &unk_1F112EFE8;
  v12[1] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v13 = v12;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v22[0] = v13;
    v22[1] = IdentifierInternal;
    v16 = (*(*a1 + 40))(a1, &v23, v22, a5);
    v17 = v22[0];
    v22[0] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v23;
    v23 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v15);
      bmalloc::api::tzoneFree(v20, v21);
    }

    if (v16)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::TerminateWorkerFromClient,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112EFE8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::TerminateWorkerFromClient,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112EFE8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::TerminateWorkerFromClient,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::WhenServiceWorkerIsTerminatedForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F010;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::WhenServiceWorkerIsTerminatedForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F010;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::WhenServiceWorkerIsTerminatedForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

IPC::Encoder *IPC::MessageSender::send<Messages::WebSWServerConnection::SetThrottleState>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3117;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v6, *a2);
  (*(*a1 + 32))(a1, &v11, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::StoreRegistrationsOnDisk,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F038;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::StoreRegistrationsOnDisk,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F038;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::StoreRegistrationsOnDisk,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::SubscribeToPushService,WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0>(WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F060;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::SubscribeToPushService,WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0>(WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F060;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::SubscribeToPushService,WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0>(WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a3, v11);
    if (v12 & 1) != 0 || (v8 = *a3, v9 = a3[1], *a3 = 0, a3[1] = 0, (v10 = a3[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v12))
    {
      result = WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)>,std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>>((a1 + 8), v11);
      if (v12)
      {
        return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v11, v6);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerConnection::SubscribeToPushService,WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerConnection::SubscribeToPushService,WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0>(v7);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::SubscribeToPushService,WebKit::WebSWClientConnection::subscribeToPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)> &&)::$_0>(mpark *a1)
{
  v6[0] = 0;
  v7 = 0;
  v8 = 1;
  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::expected(v5, v6);
  std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v6, v2);
  WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)>,std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>>(a1, v5);
  return std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>::~expected(v5, v3);
}

WTF::StringImpl *WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushSubscriptionData> &&)>,std::experimental::fundamentals_v3::expected<WebCore::PushSubscriptionData,WebCore::ExceptionData>>(mpark *a1, char *a2)
{
  if (a2[80])
  {
    if (a2[80] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v2 = *a2;
    v3 = *(a2 + 1);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    LOBYTE(v16) = v2;
    v17 = v3;
    v25 = 1;
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    *(a2 + 1) = 0;
    v16 = v4;
    v17 = v5;
    v18 = *(a2 + 1);
    v6 = *(a2 + 5);
    v19 = *(a2 + 4);
    v20 = v6;
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    v21 = v7;
    v22 = v8;
    v23 = *(a2 + 8);
    v9 = *(a2 + 9);
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    v24 = v9;
    v25 = 0;
  }

  v10 = *a1;
  *a1 = 0;
  (*(*v10 + 16))(v10, &v16);
  result = (*(*v10 + 8))(v10);
  if (v25 != 255)
  {
    if (!v25)
    {
      v13 = v23;
      if (v23)
      {
        v23 = 0;
        LODWORD(v24) = 0;
        WTF::fastFree(v13, v12);
      }

      v14 = v21;
      if (v21)
      {
        v21 = 0;
        LODWORD(v22) = 0;
        WTF::fastFree(v14, v12);
      }

      v15 = v19;
      if (v19)
      {
        v19 = 0;
        LODWORD(v20) = 0;
        WTF::fastFree(v15, v12);
      }
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::UnsubscribeFromPushService,WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F088;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::UnsubscribeFromPushService,WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F088;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::UnsubscribeFromPushService,WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&,IPC::Connection*>::call(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>>(v9, a3);
    v5 = (a1 + 8);
    if (v10 == 1)
    {
      result = WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>(v5, v9);
      if (v10)
      {
        return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v9, v7);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerConnection::UnsubscribeFromPushService,WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(v5, v4);
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerConnection::UnsubscribeFromPushService,WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(v8, a2);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::UnsubscribeFromPushService,WebKit::WebSWClientConnection::unsubscribeFromPushService(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PushSubscriptionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)> &&)::$_0>(mpark *a1, WTF::StringImpl *a2)
{
  v8[0] = 0;
  v10 = 1;
  v5[0] = 0;
  v9 = 0;
  v6 = 0;
  v7 = 1;
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v8, a2);
  WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>(a1, v5);
  return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v5, v3);
}

uint64_t WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<BOOL> &&)>,std::experimental::fundamentals_v3::expected<BOOL,WebCore::ExceptionData>>(mpark *a1, char *a2)
{
  if (a2[16])
  {
    if (a2[16] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v2 = *a2;
    v3 = *(a2 + 1);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    v7[0] = v2;
    v8 = v3;
    v9 = 1;
  }

  else
  {
    v7[0] = *a2;
    v9 = 0;
  }

  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, v7);
  (*(*v4 + 8))(v4);
  return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v7, v5);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetPushSubscription,WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F0B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetPushSubscription,WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F0B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetPushSubscription,WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a3, v11);
    if (v12 & 1) != 0 || (v8 = *a3, v9 = a3[1], *a3 = 0, a3[1] = 0, (v10 = a3[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v12))
    {
      result = WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)>,std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>>((a1 + 8), v11);
      if (v12)
      {
        return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v11, v6);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetPushSubscription,WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetPushSubscription,WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0>(v7);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetPushSubscription,WebKit::WebSWClientConnection::getPushSubscription(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)> &&)::$_0>(mpark *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v7 = 0;
  v8 = 1;
  std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>,0>(v5, v6);
  std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v6, v2);
  WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)>,std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>>(a1, v5);
  return std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>::~expected(v5, v3);
}

uint64_t std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>,0>(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 88) = -1;
  v2 = *(a2 + 88);
  if (v2 != 255)
  {
    if (*(a2 + 88))
    {
      *result = *a2;
      v4 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(result + 8) = v4;
    }

    else
    {
      result = std::optional<WebCore::PushSubscriptionData>::optional[abi:sn200100](result, a2);
      LOBYTE(v2) = *(a2 + 88);
    }

    *(result + 88) = v2;
  }

  return result;
}

WTF::StringImpl *WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::PushSubscriptionData>> &&)>,std::experimental::fundamentals_v3::expected<std::optional<WebCore::PushSubscriptionData>,WebCore::ExceptionData>>(mpark *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a2 + 88))
  {
    if (*(a2 + 88) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v3 = *a2;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v11[0] = v3;
    v12 = v4;
    v20 = 1;
  }

  else
  {
    std::optional<WebCore::PushSubscriptionData>::optional[abi:sn200100](v11, a2);
    v20 = 0;
  }

  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, v11);
  result = (*(*v5 + 8))(v5);
  if (v20 != 255)
  {
    if (!v20)
    {
      if (v19 != 1)
      {
        return result;
      }

      v8 = v17;
      if (v17)
      {
        v17 = 0;
        v18 = 0;
        WTF::fastFree(v8, v7);
      }

      v9 = v15;
      if (v15)
      {
        v15 = 0;
        v16 = 0;
        WTF::fastFree(v9, v7);
      }

      v10 = v13;
      if (v13)
      {
        v13 = 0;
        v14 = 0;
        WTF::fastFree(v10, v7);
      }
    }

    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetPushPermissionState,WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F0D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetPushPermissionState,WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F0D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

mpark *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetPushPermissionState,WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&,IPC::Connection*>::call(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    result = IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a3, v16);
    if (v19 & 1) != 0 || (v11 = *a3, v15 = a3[1], *a3 = 0, a3[1] = 0, (result = a3[3]) != 0) && v15 && (result = (*(*result + 16))(result, v11), (v19))
    {
      if (v18)
      {
        if (v18 != 1)
        {
          mpark::throw_bad_variant_access(result);
        }

        v6 = v16[0];
        v7 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        v20[0] = v6;
        v21 = v7;
        v8 = 1;
        v22 = 1;
        v9 = *(a1 + 8);
        *(a1 + 8) = 0;
        (*(*v9 + 16))(v9, v20);
        (*(*v9 + 8))(v9);
        result = mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v20, v10);
      }

      else
      {
        v20[0] = v16[0];
        v22 = 0;
        v13 = *(a1 + 8);
        *(a1 + 8) = 0;
        (*(*v13 + 16))(v13, v20);
        (*(*v13 + 8))(v13);
        result = mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v20, v14);
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    if (v19 == 1)
    {
      result = mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v16, v11);
    }

    if ((v8 & 1) == 0)
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetPushPermissionState,WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0>((a1 + 8), v11);
    }
  }

  else
  {
    v12 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetPushPermissionState,WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0>(v12, a2);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetPushPermissionState,WebKit::WebSWClientConnection::getPushPermissionState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::PushPermissionState> &&)> &&)::$_0>(uint64_t *a1, WTF::StringImpl *a2)
{
  v10[0] = 0;
  v12 = 1;
  v7[0] = 0;
  v11 = 0;
  v8 = 0;
  v9 = 1;
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v10, a2);
  v10[0] = 0;
  v11 = 0;
  v12 = 1;
  v3 = *a1;
  *a1 = 0;
  (*(*v3 + 16))(v3, v10);
  (*(*v3 + 8))(v3);
  mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v10, v4);
  return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v7, v5);
}

uint64_t IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData>,void>::decode<IPC::Decoder>(a1, v11);
  if (v14 & 1) != 0 || ((v8 = *a1, v9 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v14)))
  {
    *a2 = 0;
    *(a2 + 16) = -1;
    v5 = v13;
    if (v13 != 255)
    {
      if (v13)
      {
        *a2 = v11[0];
        v6 = v12;
        v12 = 0;
        *(a2 + 8) = v6;
      }

      else
      {
        *a2 = v11[0];
      }

      *(a2 + 16) = v5;
    }

    *(a2 + 24) = 1;
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~move_constructor(v11, v4);
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<unsigned char,WebCore::ExceptionData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v14 = result;
    v9 = result[3];
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9);
        v5 = *v14;
        v3 = v14[1];
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_15:
    *v14 = 0;
    v14[1] = 0;
    v10 = v14[3];
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *v14;
        v3 = v14[1];
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_19:
    *v14 = 0;
    v14[1] = 0;
    result = v14[3];
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

LABEL_25:
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  v6 = v4 + 1;
  result[2] = (v4 + 1);
  if (!v4)
  {
    v14 = result;
    goto LABEL_15;
  }

  if (*v4 >= 2u)
  {
    v14 = result;
    goto LABEL_19;
  }

  if (*v4)
  {
    if (v3 <= &v6[-v5])
    {
      v11 = 0;
      v12 = 0;
      *result = 0;
      result[1] = 0;
      v15 = result;
      v13 = result[3];
      if (v13)
      {
        (*(*v13 + 16))(v13);
        v12 = *v15;
        v11 = v15[1];
      }
    }

    else
    {
      result[2] = (v4 + 2);
      if (v4 != -1)
      {
        *a2 = *v6;
        *(a2 + 16) = 0;
        *(a2 + 24) = 1;
        return result;
      }

      v15 = result;
      v11 = v3;
      v12 = v5;
    }

    *v15 = 0;
    v15[1] = 0;
    result = v15[3];
    if (result)
    {
      if (v11)
      {
        result = (*(*result + 16))(result, v12, v11);
      }
    }

    goto LABEL_25;
  }

  result = IPC::Decoder::decode<WebCore::ExceptionData>(result, v16);
  if (v18 == 1)
  {
    v7 = v16[0];
    *(a2 + 8) = v17;
    v8 = 1;
    *(a2 + 16) = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a2 = v7;
  *(a2 + 24) = v8;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetNotifications,WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F100;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetNotifications,WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F100;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetNotifications,WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::call(uint64_t a1, double a2, __n128 a3, uint64_t a4, IPC::Decoder *a5)
{
  if (a5 && *a5)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a5, v13, a3);
    if (v14 & 1) != 0 || (v10 = *a5, v11 = *(a5 + 1), *a5 = 0, *(a5 + 1) = 0, (v12 = *(a5 + 3)) != 0) && v11 && ((*(*v12 + 16))(v12, v10), (v14))
    {
      result = std::apply[abi:sn200100]<WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>>((a1 + 8), v13);
      if (v14)
      {
        return mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(v13, v8);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetNotifications,WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>((a1 + 8));
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetNotifications,WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(v9);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetNotifications,WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(mpark *a1)
{
  v6[0] = 0;
  v7 = 0;
  v8 = 1;
  std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,0>(v5, v6);
  mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(v6, v2);
  std::apply[abi:sn200100]<WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>>(a1, v5);
  return mpark::detail::copy_constructor<mpark::detail::traits<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,(mpark::detail::Trait)1>::~copy_constructor(v5, v3);
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebSWClientConnection::getNotifications(WTF::URL const&,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>>(mpark *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v12, a2);
    v14 = v12;
    v9 = v13;
    v12 = 0;
    v13 = 0;
    v15 = v9;
    v16 = 0;
    v10 = *a1;
    *a1 = 0;
    (*(*v10 + 16))(v10, &v14);
    (*(*v10 + 8))(v10);
    if (v16 != 255)
    {
      if (v16)
      {
        v11 = v15;
        v15 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v7);
        }
      }

      else
      {
        WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v7);
      }
    }

    v16 = -1;
    v8 = &v12;
    return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v7);
  }

  if (*(a2 + 16) != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  LOBYTE(v14) = v3;
  v15 = v4;
  v16 = 1;
  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, &v14);
  result = (*(*v5 + 8))(v5);
  if (v16 != 255)
  {
    if (!v16)
    {
      v8 = &v14;
      return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, v7);
    }

    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(char *a1, IPC::Decoder *a2, double a3, __n128 a4)
{
  result = IPC::VectorArgumentCoder<false,WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, a1, a4);
  if ((a1[16] & 1) == 0)
  {
    v7 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v7 != 0)
    {
      v9 = *(*result + 16);

      return v9();
    }
  }

  return result;
}

uint64_t std::tuple<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>,0>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  v3 = *(a2 + 16);
  if (v3 != 255)
  {
    if (*(a2 + 16))
    {
      *a1 = *a2;
      v5 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 8) = v5;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
      LOBYTE(v3) = *(a2 + 16);
    }

    *(a1 + 16) = v3;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessProxy::GetNotifications,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>>(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F128;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessProxy::GetNotifications,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>>(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F128;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessProxy::GetNotifications,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>>(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,IPC::Decoder>::call(uint64_t a1, void *a2, IPC::Decoder *a3, double a4, __n128 a5)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v22, a3, a4, a5);
    if (v23)
    {
      *&v8 = 0;
      v9 = v22[0];
      v10 = v22[1];
      v19 = v8;
      *v22 = v8;
      WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v7);
      v21 = 1;
      v20 = v19;
      v22[0] = v9;
      v22[1] = v10;
      v23 = 0;
      v11 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v11 + 16))(v11, v22);
      (*(*v11 + 8))(v11);
      if (v23 != 255)
      {
        if (v23)
        {
          v18 = v22[1];
          v22[1] = 0;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v12);
            }
          }
        }

        else
        {
          WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v12);
        }
      }

      return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v12);
    }

    else
    {
      v15 = *a3;
      v16 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v17 = *(a3 + 3);
      if (v17 && v16)
      {
        (*(*v17 + 16))(v17, v15);
      }

      return IPC::Connection::cancelReply<Messages::WebProcessProxy::GetNotifications,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>>((a1 + 8), v15);
    }
  }

  else
  {
    v13 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebProcessProxy::GetNotifications,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>>(v13, a2);
  }
}

uint64_t IPC::Connection::cancelReply<Messages::WebProcessProxy::GetNotifications,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>>(uint64_t *a1, void *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, a2);
  *&v3 = 0;
  v8 = v3;
  *v9 = v3;
  v10 = 0;
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, v9);
  (*(*v4 + 8))(v4);
  if (v10 != 255)
  {
    if (v10)
    {
      v6 = v9[1];
      v9[1] = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }

    else
    {
      WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v5);
    }
  }

  return WTF::Vector<WebCore::NotificationData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v5);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::EnableNavigationPreload,WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F150;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::EnableNavigationPreload,WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F150;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::EnableNavigationPreload,WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, v6), v9 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
    if ((v9 & 1) != 0 && v8 == 1)
    {
      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    v6[0] = 0;
    v8 = 0;
    return std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<std::optional<WebCore::ExceptionData>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>(uint64_t *a1, char *a2)
{
  if (a2[16] == 1)
  {
    v2 = *a2;
    v3 = *(a2 + 1);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    LOBYTE(v7) = v2;
    v8 = v3;
    LOBYTE(v9) = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  result = (*(*v4 + 8))(v4);
  if (v9 == 1)
  {
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<std::optional<WebCore::ExceptionData>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::ExceptionData>,void>::decode<IPC::Decoder>(a1, v9);
  if (v12 & 1) != 0 || ((v6 = *a1, v7 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v12)))
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    v5 = 1;
    if (v11)
    {
      *a2 = v9[0];
      *(a2 + 8) = v10;
      *(a2 + 16) = 1;
    }
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v5;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::ExceptionData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  if (v3 <= &v4[-*result])
  {
    *result = 0;
    result[1] = 0;
    v11 = result;
    v9 = result[3];
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9);
        v5 = *v11;
        v3 = v11[1];
LABEL_14:
        *v11 = 0;
        v11[1] = 0;
        v10 = v11[3];
        if (v10)
        {
          if (v3)
          {
            (*(*v10 + 16))(v10, v5);
            v5 = *v11;
            v3 = v11[1];
            goto LABEL_18;
          }
        }

        else
        {
          v3 = 0;
        }

        v5 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_14;
  }

  result[2] = (v4 + 1);
  if (!v4)
  {
    v11 = result;
    goto LABEL_14;
  }

  v6 = *v4;
  if (v6 < 2)
  {
    if (v6)
    {
      result = IPC::Decoder::decode<WebCore::ExceptionData>(result, v12);
      if (v14 == 1)
      {
        v7 = v12[0];
        *(a2 + 8) = v13;
        v8 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      *a2 = v7;
      *(a2 + 24) = v8;
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 1;
    }

    return result;
  }

  v11 = result;
LABEL_18:
  *v11 = 0;
  v11[1] = 0;
  result = v11[3];
  if (result && v3)
  {
    result = (*(*result + 16))(result, v5);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::DisableNavigationPreload,WebKit::WebSWClientConnection::disableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::disableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F178;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::DisableNavigationPreload,WebKit::WebSWClientConnection::disableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::disableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F178;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::DisableNavigationPreload,WebKit::WebSWClientConnection::disableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::disableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, v6), v9 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
    if ((v9 & 1) != 0 && v8 == 1)
    {
      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    v6[0] = 0;
    v8 = 0;
    return std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::String &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::SetNavigationPreloadHeaderValue,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F1A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::String &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::SetNavigationPreloadHeaderValue,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F1A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::String &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::SetNavigationPreloadHeaderValue,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::setNavigationPreloadHeaderValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, v6), v9 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
    if ((v9 & 1) != 0 && v8 == 1)
    {
      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    v6[0] = 0;
    v8 = 0;
    return std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetNavigationPreloadState,WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F1C8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetNavigationPreloadState,WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F1C8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::GetNavigationPreloadState,WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0>(WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&,IPC::Connection*>::call(uint64_t a1, WTF::StringImpl *a2, WTF::StringImpl **a3)
{
  if (a3)
  {
    a2 = *a3;
    if (*a3)
    {
      v5 = a3[1];
      v6 = a3[2];
      if (v5 <= v6 - a2)
      {
        *a3 = 0;
        a3[1] = 0;
        v24 = a3[3];
        if (v24)
        {
          if (v5)
          {
            (*(*v24 + 16))(v24);
            a2 = *a3;
            v5 = a3[1];
            goto LABEL_31;
          }
        }

        else
        {
          v5 = 0;
        }

        a2 = 0;
      }

      else
      {
        a3[2] = (v6 + 1);
        if (v6)
        {
          v7 = *v6;
          if (v7 < 2)
          {
            if (v7)
            {
              IPC::ArgumentCoder<WebCore::NavigationPreloadState,void>::decode(a3, v35);
              if ((v37 & 1) == 0)
              {
                v15 = *a3;
                v16 = a3[1];
                *a3 = 0;
                a3[1] = 0;
                v17 = a3[3];
                if (!v17)
                {
                  goto LABEL_17;
                }

                if (!v16)
                {
                  goto LABEL_17;
                }

                (*(*v17 + 16))(v17, v15);
                if ((v37 & 1) == 0)
                {
                  goto LABEL_17;
                }
              }

              v9 = 0;
              v10 = v35[0];
              v31[0] = v35[0];
              v11 = v36;
              v33 = 0;
              v34 = 1;
            }

            else
            {
              IPC::Decoder::decode<WebCore::ExceptionData>(a3, v35);
              v9 = v37;
              if (v37 != 1)
              {
LABEL_17:
                v18 = *a3;
                v19 = a3[1];
                *a3 = 0;
                a3[1] = 0;
                v20 = a3[3];
                if (v20 && v19)
                {
                  (*(*v20 + 16))(v20, v18);
                }

                v21 = *a3;
                v22 = a3[1];
                *a3 = 0;
                a3[1] = 0;
                v23 = a3[3];
                if (v23 && v22)
                {
                  (*(*v23 + 16))(v23, v21);
                }

                return IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetNavigationPreloadState,WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0>((a1 + 8), v21);
              }

              v10 = v35[0];
              v11 = v36;
              v33 = 1;
              v31[0] = v35[0];
              v34 = 1;
            }

            v27[0] = v10;
            v32 = 0;
            v28 = v11;
            v29 = v9;
            v30 = 1;
            std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(v31, v8);
            result = WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)>,std::experimental::fundamentals_v3::expected<WebCore::NavigationPreloadState,WebCore::ExceptionData>>((a1 + 8), v27);
            if (v30)
            {
              return std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(v27, v14);
            }

            return result;
          }

          goto LABEL_34;
        }
      }

LABEL_31:
      *a3 = 0;
      a3[1] = 0;
      v25 = a3[3];
      if (v25)
      {
        if (v5)
        {
          (*(*v25 + 16))(v25, a2);
          a2 = *a3;
          v5 = a3[1];
          goto LABEL_34;
        }
      }

      else
      {
        v5 = 0;
      }

      a2 = 0;
LABEL_34:
      *a3 = 0;
      a3[1] = 0;
      v26 = a3[3];
      if (v26 && v5)
      {
        (*(*v26 + 16))(v26, a2);
      }

      goto LABEL_17;
    }
  }

  v12 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetNavigationPreloadState,WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0>(v12, a2);
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::GetNavigationPreloadState,WebKit::WebSWClientConnection::getNavigationPreloadState(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)> &&)::$_0>(mpark *a1, WTF::StringImpl *a2)
{
  v8[0] = 0;
  v10 = 1;
  v5[0] = 0;
  v9 = 0;
  v6 = 0;
  v7 = 1;
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(v8, a2);
  WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)>,std::experimental::fundamentals_v3::expected<WebCore::NavigationPreloadState,WebCore::ExceptionData>>(a1, v5);
  return std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(v5, v3);
}

WTF::StringImpl *WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::NavigationPreloadState> &&)>,std::experimental::fundamentals_v3::expected<WebCore::NavigationPreloadState,WebCore::ExceptionData>>(mpark *a1, char *a2)
{
  if (a2[16])
  {
    if (a2[16] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v2 = *a2;
    v3 = *(a2 + 1);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    v8[0] = v2;
    v9 = v3;
    v10 = 1;
  }

  else
  {
    v8[0] = *a2;
    v4 = *(a2 + 1);
    *(a2 + 1) = 0;
    v9 = v4;
    v10 = 0;
  }

  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, v8);
  result = (*(*v5 + 8))(v5);
  if (v10 != 255)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebCore::BackgroundFetchOptions &<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::StartBackgroundFetch,WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F1F0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::BackgroundFetchOptions &<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::StartBackgroundFetch,WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F1F0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebCore::BackgroundFetchOptions &<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::StartBackgroundFetch,WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&>::call(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>>>(v6, a3), v7 == 1))
  {
    result = WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>>((a1 + 8), v6);
    if (v7)
    {
      return std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>::~expected(v6, v5);
    }
  }

  else
  {

    return IPC::Connection::cancelReply<Messages::WebSWServerConnection::StartBackgroundFetch,WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>((a1 + 8), a2);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::StartBackgroundFetch,WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>(mpark *a1, WTF::StringImpl *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v10 = 1;
  v5[0] = 0;
  v9 = 0;
  v6 = 0;
  v7 = 1;
  std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>::~expected(v8, a2);
  WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>>(a1, v5);
  return std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>::~expected(v5, v3);
}

uint64_t IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>>>(uint64_t a1, uint64_t *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    a2[1] = 0;
    v23 = a2[3];
    if (v23)
    {
      if (v6)
      {
        (*(*v23 + 16))(v23);
        v5 = *a2;
        v6 = a2[1];
LABEL_35:
        *a2 = 0;
        a2[1] = 0;
        v24 = a2[3];
        if (v24)
        {
          if (v6)
          {
LABEL_47:
            (*(*v24 + 16))(v24, v5);
LABEL_17:
            v5 = *a2;
            v6 = a2[1];
            goto LABEL_18;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_35;
  }

  v7 = v4 + 1;
  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_35;
  }

  if (*v4 >= 2u)
  {
LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    v17 = a2[3];
    if (v17 && v6)
    {
      (*(*v17 + 16))(v17, v5);
    }

    goto LABEL_19;
  }

  if (*v4)
  {
    if (v6 <= v7 - v5)
    {
      v25 = 0;
      v26 = 0;
      *a2 = 0;
      a2[1] = 0;
      v27 = a2[3];
      if (v27)
      {
        (*(*v27 + 16))(v27);
        v26 = *a2;
        v25 = a2[1];
      }
    }

    else
    {
      a2[2] = (v4 + 2);
      if (v4 != -1)
      {
        v8 = *v7;
        if (v8 < 2)
        {
          if (*v7)
          {
            IPC::ArgumentCoder<WebCore::BackgroundFetchInformation,void>::decode(a2, &v29);
            if ((v33 & 1) == 0)
            {
              v14 = *a2;
              v15 = a2[1];
              *a2 = 0;
              a2[1] = 0;
              v16 = a2[3];
              if (!v16)
              {
                goto LABEL_17;
              }

              if (!v15)
              {
                goto LABEL_17;
              }

              (*(*v16 + 16))(v16, v14);
              if ((v33 & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            LOBYTE(v8) = 0;
            v9 = v30;
            *&v37[15] = *&v32[15];
            v10 = v31;
            *v37 = *v32;
            v36 = v31;
            v38 = 1;
            v39 = 0;
            v40 = 1;
            v34 = v29;
            v35 = 0;
            *a1 = v29;
            *(a1 + 8) = v9;
            v11 = *v37;
            *(a1 + 16) = v10;
            *(a1 + 32) = v11;
            *(a1 + 47) = *&v37[15];
            *(a1 + 56) = 1;
          }

          else
          {
            LOBYTE(v34) = 0;
            v38 = 0;
            v39 = 0;
            v40 = 1;
            *a1 = 0;
            *(a1 + 56) = 0;
          }

LABEL_14:
          *(a1 + 64) = v8;
          *(a1 + 72) = 1;
          return std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>::~expected(&v34, v5);
        }

        goto LABEL_42;
      }

      v25 = v6;
      v26 = v5;
    }

    *a2 = 0;
    a2[1] = 0;
    v28 = a2[3];
    if (v28 && v25)
    {
      (*(*v28 + 16))(v28, v26, v25);
      v5 = *a2;
      v6 = a2[1];
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

LABEL_42:
    *a2 = 0;
    a2[1] = 0;
    v24 = a2[3];
    if (!v24 || !v6)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

  IPC::Decoder::decode<WebCore::ExceptionData>(a2, &v29);
  if (v31)
  {
    v12 = v30;
    LOBYTE(v8) = 1;
    v39 = 1;
    LOBYTE(v34) = v29;
    v40 = 1;
    *a1 = v29;
    v35 = 0;
    *(a1 + 8) = v12;
    goto LABEL_14;
  }

LABEL_19:
  v18 = *a2;
  v19 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v20 = a2[3];
  if (v20 && v19)
  {
    (*(*v20 + 16))(v20, v18);
  }

  *a1 = 0;
  *(a1 + 72) = 0;
  v21 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v21)
  {
    v22 = *(*result + 16);

    return v22();
  }

  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 64) != 255 && (*(a1 + 64) || *(a1 + 56) == 1))
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}

WTF::StringImpl *WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>>(mpark *a1, char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2[64])
  {
    if (a2[64] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v2 = *a2;
    v3 = *(a2 + 1);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    LOBYTE(v10) = v2;
    v11 = v3;
    v15 = 1;
  }

  else
  {
    LOBYTE(v10) = 0;
    v14 = 0;
    if (a2[56] == 1)
    {
      v4 = *a2;
      v5 = *(a2 + 1);
      *(a2 + 1) = 0;
      v10 = v4;
      v11 = v5;
      v6 = *(a2 + 2);
      v12 = *(a2 + 1);
      *v13 = v6;
      *&v13[15] = *(a2 + 47);
      v14 = 1;
    }

    v15 = 0;
  }

  v7 = *a1;
  *a1 = 0;
  (*(*v7 + 16))(v7, &v10);
  result = (*(*v7 + 8))(v7);
  if (v15 != 255 && (v15 || v14 == 1))
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::BackgroundFetchInformation,WebKit::WebSWClientConnection::backgroundFetchInformation(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::backgroundFetchInformation(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F218;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::BackgroundFetchInformation,WebKit::WebSWClientConnection::backgroundFetchInformation(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::backgroundFetchInformation(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F218;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::BackgroundFetchInformation,WebKit::WebSWClientConnection::backgroundFetchInformation(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::backgroundFetchInformation(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&,IPC::Connection*>::call(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>>>(v6, a3), v7 == 1))
  {
    result = WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)>,std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>>((a1 + 8), v6);
    if (v7)
    {
      return std::experimental::fundamentals_v3::expected<std::optional<WebCore::BackgroundFetchInformation>,WebCore::ExceptionData>::~expected(v6, v5);
    }
  }

  else
  {

    return IPC::Connection::cancelReply<Messages::WebSWServerConnection::StartBackgroundFetch,WebKit::WebSWClientConnection::startBackgroundFetch(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Vector<WebCore::BackgroundFetchRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::BackgroundFetchOptions &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::BackgroundFetchInformation>> &&)> &&)::$_0>((a1 + 8), a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::BackgroundFetchIdentifiers,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F240;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::BackgroundFetchIdentifiers,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F240;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::BackgroundFetchIdentifiers,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, v11);
    if (v12 == 1)
    {
      v7 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v7 + 16))(v7, v11);
      result = (*(*v7 + 8))(v7);
      if (v12)
      {
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v9);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebProcess::GetActivePagesOriginsForTesting,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v5, v6);
    }
  }

  else
  {
    v10 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebProcess::GetActivePagesOriginsForTesting,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v10, a2, a4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::AbortBackgroundFetch,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F268;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::AbortBackgroundFetch,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F268;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::AbortBackgroundFetch,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::MatchBackgroundFetch,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F290;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::MatchBackgroundFetch,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F290;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::MatchBackgroundFetch,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3, __n128 a4)
{
  v107 = *MEMORY[0x1E69E9840];
  if (a3 && (a2 = *a3) != 0)
  {
    v6 = a3[1];
    v7 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
    {
      *a3 = 0;
      a3[1] = 0;
      v62 = a3[3];
      if (v62)
      {
        if (v6)
        {
          (*(*v62 + 16))(v62);
          a2 = *a3;
          v6 = a3[1];
          goto LABEL_69;
        }
      }

      else
      {
        v6 = 0;
      }

      a2 = 0;
LABEL_69:
      *a3 = 0;
      a3[1] = 0;
      v63 = a3[3];
      if (v63 && v6)
      {
        (*(*v63 + 16))(v63, a2);
      }

      goto LABEL_59;
    }

    a3[2] = (v7 + 8);
    if (!v7)
    {
      goto LABEL_69;
    }

    v9 = *v7;
    v70 = 0;
    v71 = 0;
    if (v9 >= 0xD79)
    {
      while (1)
      {
        IPC::Decoder::decode<WebCore::BackgroundFetchRecordInformation>(&v72, a3);
        v36 = v106;
        if (v106 == 1)
        {
          if (HIDWORD(v71) == v71)
          {
            WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BackgroundFetchRecordInformation>(&v70, &v72);
          }

          else
          {
            v37 = v70 + 304 * HIDWORD(v71);
            *v37 = v72;
            WTF::URL::URL((v37 + 8), v73);
            WTF::URL::URL((v37 + 48), v74);
            *(v37 + 11) = v75;
            v38 = v76;
            v76 = 0;
            *(v37 + 13) = 0;
            *(v37 + 14) = 0;
            *(v37 + 12) = v38;
            v39 = v77;
            v77 = 0;
            *(v37 + 13) = v39;
            LODWORD(v39) = v78;
            v78 = 0;
            *(v37 + 28) = v39;
            LODWORD(v39) = v79;
            v79 = 0;
            *(v37 + 29) = v39;
            *(v37 + 15) = 0;
            *(v37 + 16) = 0;
            v40 = v80;
            v80 = 0;
            *(v37 + 15) = v40;
            LODWORD(v40) = v81;
            v81 = 0;
            *(v37 + 32) = v40;
            LODWORD(v40) = v82;
            v82 = 0;
            *(v37 + 33) = v40;
            *(v37 + 17) = 0;
            *(v37 + 18) = 0;
            v41 = v83;
            v83 = 0;
            *(v37 + 17) = v41;
            LODWORD(v41) = v84;
            v84 = 0;
            *(v37 + 36) = v41;
            LODWORD(v41) = v85;
            v85 = 0;
            *(v37 + 37) = v41;
            LODWORD(v41) = v86;
            v37[156] = v87;
            *(v37 + 38) = v41;
            v42 = v88;
            v88 = 0;
            *(v37 + 20) = v42;
            v43 = v89;
            v89 = 0;
            *(v37 + 21) = v43;
            v44 = v90;
            v90 = 0;
            *(v37 + 22) = v44;
            v45 = v91;
            v37[192] = v92;
            *(v37 + 23) = v45;
            v46 = v93;
            v93 = 0;
            *(v37 + 25) = v46;
            LODWORD(v46) = v94[0];
            *(v37 + 211) = *(v94 + 3);
            *(v37 + 52) = v46;
            v47 = v95;
            v95 = 0;
            *(v37 + 27) = v47;
            v48 = v97;
            *(v37 + 14) = v96;
            *(v37 + 15) = v48;
            v37[256] = v98;
            *(v37 + 33) = 0;
            *(v37 + 34) = 0;
            v49 = v99;
            v99 = 0;
            *(v37 + 33) = v49;
            LODWORD(v49) = v100;
            v100 = 0;
            *(v37 + 68) = v49;
            LODWORD(v49) = v101;
            v101 = 0;
            *(v37 + 69) = v49;
            *(v37 + 35) = 0;
            *(v37 + 36) = 0;
            v50 = v102;
            v102 = 0;
            *(v37 + 35) = v50;
            LODWORD(v50) = v103;
            v103 = 0;
            *(v37 + 72) = v50;
            LODWORD(v50) = v104;
            v104 = 0;
            *(v37 + 73) = v50;
            v51 = v105;
            v105 = 0;
            *(v37 + 37) = v51;
            ++HIDWORD(v71);
          }
        }

        if (v106 == 1)
        {
          v52 = v105;
          v105 = 0;
          if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v52, a2);
          }

          WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v102, a2);
          WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v99, v53);
          v55 = v95;
          v95 = 0;
          if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v55, v54);
          }

          WebCore::ResourceRequest::~ResourceRequest(v73);
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_58;
        }

        if (!--v9)
        {
          LODWORD(v9) = v71;
          v31 = HIDWORD(v71);
          v30 = v70;
          if (v71 <= HIDWORD(v71))
          {
            goto LABEL_31;
          }

          v56 = v70;
          if (HIDWORD(v71))
          {
            if (HIDWORD(v71) >= 0xD79436)
            {
              __break(0xC471u);
              return;
            }

            v56 = WTF::fastMalloc((304 * HIDWORD(v71)));
            LODWORD(v9) = 304 * v31 / 0x130;
            if (v56 != v30)
            {
              WTF::VectorMover<false,WebCore::BackgroundFetchRecordInformation>::move(v30, v30 + 304 * v31, v56);
            }
          }

          if (v30)
          {
            if (v56 == v30)
            {
              LODWORD(v9) = 0;
              v56 = 0;
            }

            WTF::fastFree(v30, a2);
          }

          v30 = v56;
          goto LABEL_31;
        }
      }
    }

    if (v9)
    {
      LODWORD(v71) = 304 * v9 / 0x130u;
      v70 = WTF::fastMalloc((304 * v9));
      while (1)
      {
        IPC::Decoder::decode<WebCore::BackgroundFetchRecordInformation>(&v72, a3);
        v10 = v106;
        if (v106 == 1)
        {
          if (HIDWORD(v71) == v71)
          {
            WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BackgroundFetchRecordInformation>(&v70, &v72);
          }

          else
          {
            v11 = v70 + 304 * HIDWORD(v71);
            *v11 = v72;
            WTF::URL::URL((v11 + 8), v73);
            WTF::URL::URL((v11 + 48), v74);
            *(v11 + 11) = v75;
            v12 = v76;
            v76 = 0;
            *(v11 + 13) = 0;
            *(v11 + 14) = 0;
            *(v11 + 12) = v12;
            v13 = v77;
            v77 = 0;
            *(v11 + 13) = v13;
            LODWORD(v13) = v78;
            v78 = 0;
            *(v11 + 28) = v13;
            LODWORD(v13) = v79;
            v79 = 0;
            *(v11 + 29) = v13;
            *(v11 + 15) = 0;
            *(v11 + 16) = 0;
            v14 = v80;
            v80 = 0;
            *(v11 + 15) = v14;
            LODWORD(v14) = v81;
            v81 = 0;
            *(v11 + 32) = v14;
            LODWORD(v14) = v82;
            v82 = 0;
            *(v11 + 33) = v14;
            *(v11 + 17) = 0;
            *(v11 + 18) = 0;
            v15 = v83;
            v83 = 0;
            *(v11 + 17) = v15;
            LODWORD(v15) = v84;
            v84 = 0;
            *(v11 + 36) = v15;
            LODWORD(v15) = v85;
            v85 = 0;
            *(v11 + 37) = v15;
            LODWORD(v15) = v86;
            v11[156] = v87;
            *(v11 + 38) = v15;
            v16 = v88;
            v88 = 0;
            *(v11 + 20) = v16;
            v17 = v89;
            v89 = 0;
            *(v11 + 21) = v17;
            v18 = v90;
            v90 = 0;
            *(v11 + 22) = v18;
            v19 = v91;
            v11[192] = v92;
            *(v11 + 23) = v19;
            v20 = v93;
            v93 = 0;
            *(v11 + 25) = v20;
            LODWORD(v20) = v94[0];
            *(v11 + 211) = *(v94 + 3);
            *(v11 + 52) = v20;
            v21 = v95;
            v95 = 0;
            *(v11 + 27) = v21;
            v22 = v97;
            *(v11 + 14) = v96;
            *(v11 + 15) = v22;
            v11[256] = v98;
            *(v11 + 33) = 0;
            *(v11 + 34) = 0;
            v23 = v99;
            v99 = 0;
            *(v11 + 33) = v23;
            LODWORD(v23) = v100;
            v100 = 0;
            *(v11 + 68) = v23;
            LODWORD(v23) = v101;
            v101 = 0;
            *(v11 + 69) = v23;
            *(v11 + 35) = 0;
            *(v11 + 36) = 0;
            v24 = v102;
            v102 = 0;
            *(v11 + 35) = v24;
            LODWORD(v24) = v103;
            v103 = 0;
            *(v11 + 72) = v24;
            LODWORD(v24) = v104;
            v104 = 0;
            *(v11 + 73) = v24;
            v25 = v105;
            v105 = 0;
            *(v11 + 37) = v25;
            ++HIDWORD(v71);
          }
        }

        if (v106 == 1)
        {
          v26 = v105;
          v105 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, a2);
          }

          WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v102, a2);
          WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v99, v27);
          v29 = v95;
          v95 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v28);
          }

          WebCore::ResourceRequest::~ResourceRequest(v73);
        }

        if ((v10 & 1) == 0)
        {
          break;
        }

        if (!--v9)
        {
          v30 = v70;
          LODWORD(v9) = v71;
          v31 = HIDWORD(v71);
          goto LABEL_31;
        }
      }

LABEL_58:
      WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, a2);
LABEL_59:
      v57 = *a3;
      v58 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v59 = a3[3];
      if (v59 && v58)
      {
        (*(*v59 + 16))(v59, v57);
        v60 = a3[3];
        v57 = *a3;
        v61 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        if (v60)
        {
          if (v61)
          {
            (*(*v60 + 16))(v60, v57);
          }
        }
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }

      IPC::Connection::cancelReply<Messages::WebSWServerConnection::MatchBackgroundFetch,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v57, a4);
      return;
    }

    v31 = 0;
    v30 = 0;
LABEL_31:
    v70 = 0;
    v71 = 0;
    v69 = 1;
    WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, a2);
    v68[0] = 0;
    v68[1] = 0;
    v64 = v30;
    v65 = v9;
    v66 = v31;
    v67 = 1;
    WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68, v33);
    v34 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v34 + 16))(v34, &v64);
    (*(*v34 + 8))(v34);
    if (v67)
    {
      WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v64, v35);
    }
  }

  else
  {
    v32 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebSWServerConnection::MatchBackgroundFetch,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v32, a2, a4);
  }
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::MatchBackgroundFetch,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

void IPC::Decoder::decode<WebCore::BackgroundFetchRecordInformation>(uint64_t a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebCore::BackgroundFetchRecordInformation,void>::decode(a2, a1);
  if ((*(a1 + 304) & 1) == 0)
  {
    v4 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v5 = a2[3];
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::BackgroundFetchRecordInformation>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 304 * *(a1 + 12);
  *v4 = *v3;
  WTF::URL::URL(v4 + 8, (v3 + 8));
  WTF::URL::URL(v4 + 48, (v3 + 48));
  *(v4 + 88) = *(v3 + 88);
  v5 = *(v3 + 96);
  *(v3 + 96) = 0;
  *(v4 + 96) = v5;
  *(v4 + 112) = 0;
  *(v4 + 104) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 104, (v3 + 104));
  *(v4 + 128) = 0;
  *(v4 + 120) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 120, (v3 + 120));
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  v4 += 136;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 136));
  v6 = *(v3 + 152);
  *(v4 + 20) = *(v3 + 156);
  *(v4 + 16) = v6;
  v7 = *(v3 + 160);
  *(v3 + 160) = 0;
  *(v4 + 24) = v7;
  v8 = *(v3 + 168);
  *(v3 + 168) = 0;
  *(v4 + 32) = v8;
  v9 = *(v3 + 176);
  *(v3 + 176) = 0;
  *(v4 + 40) = v9;
  v10 = *(v3 + 184);
  *(v4 + 56) = *(v3 + 192);
  *(v4 + 48) = v10;
  v11 = *(v3 + 200);
  *(v3 + 200) = 0;
  *(v4 + 64) = v11;
  LODWORD(v11) = *(v3 + 208);
  *(v4 + 75) = *(v3 + 211);
  *(v4 + 72) = v11;
  v12 = *(v3 + 216);
  *(v3 + 216) = 0;
  *(v4 + 80) = v12;
  v13 = *(v3 + 224);
  *(v4 + 104) = *(v3 + 240);
  *(v4 + 88) = v13;
  *(v4 + 120) = *(v3 + 256);
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 128, (v3 + 264));
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 144, (v3 + 280));
  v15 = *(v3 + 296);
  *(v3 + 296) = 0;
  *(v4 + 160) = v15;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 304 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xD79436)
    {
      __break(0xC471u);
      JUMPOUT(0x19E352958);
    }

    v3 = *a1;
    v4 = *a1 + 304 * *(a1 + 12);
    v5 = 304 * a2;
    v6 = WTF::fastMalloc((304 * a2));
    *(a1 + 8) = v5 / 0x130;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::BackgroundFetchRecordInformation>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }
}

void WTF::VectorMover<false,WebCore::BackgroundFetchRecordInformation>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6);
      v8 = a1 + v6;
      *(a3 + v6) = *(a1 + v6);
      WTF::URL::URL(a3 + v6 + 8, (a1 + v6 + 8));
      WTF::URL::URL(a3 + v6 + 48, (a1 + v6 + 48));
      v7[11] = *(a1 + v6 + 88);
      v9 = *(a1 + v6 + 96);
      *(v8 + 96) = 0;
      v7[12] = v9;
      v7[14] = 0;
      v7[13] = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 104, (a1 + v6 + 104));
      v7[16] = 0;
      v7[15] = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 120, (a1 + v6 + 120));
      v7[17] = 0;
      v7[18] = 0;
      v10 = a3 + v6 + 136;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v10, (a1 + v6 + 136));
      v11 = *(a1 + v6 + 152);
      *(v10 + 20) = *(a1 + v6 + 156);
      *(v10 + 16) = v11;
      v12 = *(a1 + v6 + 160);
      *(v8 + 160) = 0;
      *(v10 + 24) = v12;
      v13 = *(a1 + v6 + 168);
      *(v8 + 168) = 0;
      *(v10 + 32) = v13;
      v14 = *(a1 + v6 + 176);
      *(v8 + 176) = 0;
      *(v10 + 40) = v14;
      v15 = *(a1 + v6 + 184);
      *(v10 + 56) = *(a1 + v6 + 192);
      *(v10 + 48) = v15;
      v16 = *(a1 + v6 + 200);
      *(v8 + 200) = 0;
      *(v10 + 64) = v16;
      LODWORD(v16) = *(a1 + v6 + 208);
      *(v10 + 75) = *(a1 + v6 + 211);
      *(v10 + 72) = v16;
      v17 = *(a1 + v6 + 216);
      *(v8 + 216) = 0;
      *(v10 + 80) = v17;
      v18 = *(a1 + v6 + 224);
      *(v10 + 104) = *(a1 + v6 + 240);
      *(v10 + 88) = v18;
      *(v10 + 120) = *(a1 + v6 + 256);
      *(v10 + 128) = 0;
      *(v10 + 136) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 264, (a1 + v6 + 264));
      *(v10 + 144) = 0;
      *(v10 + 152) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a3 + v6 + 280, (a1 + v6 + 280));
      v20 = *(a1 + v6 + 296);
      *(v8 + 296) = 0;
      *(v10 + 160) = v20;
      v21 = *(a1 + v6 + 296);
      *(v8 + 296) = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v19);
      }

      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((v8 + 280), v19);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v8 + 264, v22);
      v24 = *(v8 + 216);
      *(v8 + 216) = 0;
      if (v24)
      {
        if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v23);
        }
      }

      WebCore::ResourceRequest::~ResourceRequest((v8 + 8));
      v6 += 304;
    }

    while (v8 + 304 != a2);
  }
}

void WTF::VectorTypeOperations<WebCore::BackgroundFetchRecordInformation>::destruct(WTF::StringImpl *a1, WTF::StringImpl *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 37);
      *(v3 + 37) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v3 + 70, a2);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v3 + 264, v5);
      v7 = *(v3 + 27);
      *(v3 + 27) = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }
      }

      WebCore::ResourceRequest::~ResourceRequest((v3 + 8));
      v3 = (v3 + 304);
    }

    while (v3 != a2);
  }
}

uint64_t WTF::Vector<WebCore::BackgroundFetchRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::BackgroundFetchRecordInformation>::destruct(*a1, (*a1 + 304 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::RetrieveRecordResponse,WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0>(WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F2B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::RetrieveRecordResponse,WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0>(WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F2B8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::RetrieveRecordResponse,WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0>(WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      if (v6 <= &v7[-v5])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v28 = *(a3 + 3);
        if (v28)
        {
          if (v6)
          {
            (*(*v28 + 16))(v28);
            v5 = *a3;
            v6 = *(a3 + 1);
            goto LABEL_38;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
      }

      else
      {
        *(a3 + 2) = v7 + 1;
        if (v7)
        {
          v8 = *v7;
          if (v8 < 2)
          {
            if (v8)
            {
              IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, &v31);
              if ((v54 & 1) == 0)
              {
                v19 = *a3;
                v20 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v21 = *(a3 + 3);
                if (!v21)
                {
                  goto LABEL_22;
                }

                if (!v20)
                {
                  goto LABEL_22;
                }

                (*(*v21 + 16))(v21, v19);
                if ((v54 & 1) == 0)
                {
                  goto LABEL_22;
                }
              }

              v58 = v32;
              LODWORD(v32) = v32 & 0xFFFFFFFE;
              v57 = v31;
              v60 = v34;
              v31 = 0;
              v59 = v33;
              v34 = 0;
              v61 = v35;
              v11 = v36;
              v10 = v37;
              v36 = 0u;
              v37 = 0u;
              v62 = v11;
              v63 = v10;
              *&v10 = v38;
              v38 = 0;
              v64 = v10;
              v12 = v39;
              v39 = 0;
              v65 = v12;
              *&v10 = v40;
              v40 = 0;
              v66 = v10;
              v13 = v41;
              v41 = 0;
              v67 = v13;
              LOBYTE(v68) = 0;
              v69 = 0;
              if (v43 == 1)
              {
                v18 = v42;
                v42 = 0;
                v68 = v18;
                v69 = 1;
              }

              v70 = v44;
              v71 = v45;
              v75 = v49;
              v76 = v50;
              v77[0] = v51[0];
              *(v77 + 11) = *(v51 + 11);
              v73 = v47;
              v14 = v46;
              v46 = 0;
              v74 = v48;
              v72 = v14;
              v78 = v52;
              v79 = v53;
              v80 = 0;
              v81 = 1;
              if (v54)
              {
                v52 = 0;
                WebCore::ResourceResponseBase::~ResourceResponseBase(&v31, v9);
              }
            }

            else
            {
              IPC::Decoder::decode<WebCore::ExceptionData>(a3, &v31);
              if (BYTE8(v32) != 1)
              {
LABEL_22:
                v22 = *a3;
                v23 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v24 = *(a3 + 3);
                if (v24 && v23)
                {
                  (*(*v24 + 16))(v24, v22);
                }

                v55[0] = 0;
                v56 = 0;
                goto LABEL_24;
              }

              *&v58 = v32;
              v80 = 1;
              LOBYTE(v57) = v31;
              v81 = 1;
            }

            mpark::detail::move_assignment<mpark::detail::traits<WebCore::ResourceResponse,WebCore::ExceptionData>,(mpark::detail::Trait)1>::move_assignment(v55, &v57);
            v56 = 1;
            if (v81 & 1) == 0 || (std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData>::~expected(&v57, v16), (v56))
            {
LABEL_19:
              WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)>,std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData>>((a1 + 8), v55);
              if (v56)
              {
                std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData>::~expected(v55, v17);
              }

              return;
            }

LABEL_24:
            v25 = *a3;
            v26 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v27 = *(a3 + 3);
            if (!v27 || !v26 || ((*(*v27 + 16))(v27, v25), (v56 & 1) == 0))
            {
              IPC::Connection::cancelReply<Messages::WebSWServerConnection::RetrieveRecordResponse,WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0>((a1 + 8));
              return;
            }

            goto LABEL_19;
          }

          goto LABEL_41;
        }
      }

LABEL_38:
      *a3 = 0;
      *(a3 + 1) = 0;
      v29 = *(a3 + 3);
      if (v29)
      {
        if (v6)
        {
          (*(*v29 + 16))(v29, v5);
          v5 = *a3;
          v6 = *(a3 + 1);
          goto LABEL_41;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_41:
      *a3 = 0;
      *(a3 + 1) = 0;
      v30 = *(a3 + 3);
      if (v30 && v6)
      {
        (*(*v30 + 16))(v30, v5);
      }

      goto LABEL_22;
    }
  }

  v15 = (a1 + 8);

  IPC::Connection::cancelReply<Messages::WebSWServerConnection::RetrieveRecordResponse,WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0>(v15);
}

WebCore::ResourceResponseBase *IPC::Connection::cancelReply<Messages::WebSWServerConnection::RetrieveRecordResponse,WebKit::WebSWClientConnection::retrieveRecordResponse(WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)> &&)::$_0>(mpark *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v7 = 0;
  v8 = 1;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::ResourceResponse,WebCore::ExceptionData>,(mpark::detail::Trait)1>::move_assignment(v5, v6);
  std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData>::~expected(v6, v2);
  WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)>,std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData>>(a1, v5);
  return std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData>::~expected(v5, v3);
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WebCore::ResourceResponse,WebCore::ExceptionData>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 264) = -1;
  LODWORD(v3) = *(a2 + 264);
  if (v3 != 255)
  {
    if (*(a2 + 264))
    {
      *a1 = *a2;
      v18 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a1 + 8) = v18;
    }

    else
    {
      WTF::URL::URL(a1, a2);
      v5 = *(a2 + 40);
      v6 = *(a2 + 48);
      *(a2 + 40) = 0;
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      v7 = *(a2 + 56);
      *(a2 + 56) = 0;
      *(a1 + 56) = v7;
      v8 = *(a2 + 64);
      *(a2 + 64) = 0;
      *(a1 + 64) = v8;
      v9 = *(a2 + 72);
      *(a2 + 72) = 0;
      *(a1 + 72) = v9;
      *(a1 + 88) = 0;
      *(v10 + 80) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v10 + 80, (a2 + 80));
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
      v11 = *(a2 + 112);
      *(a2 + 112) = 0;
      *(a1 + 112) = v11;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      if (*(a2 + 128) == 1)
      {
        v20 = *(a2 + 120);
        *(a2 + 120) = 0;
        *(a1 + 120) = v20;
        *(a1 + 128) = 1;
      }

      v12 = *(a2 + 136);
      *(a1 + 138) = *(a2 + 138);
      *(a1 + 136) = v12;
      v13 = *(a2 + 144);
      *(a2 + 144) = 0;
      *(a1 + 144) = v13;
      v14 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v14;
      v15 = *(a2 + 184);
      v16 = *(a2 + 200);
      v17 = *(a2 + 216);
      *(a1 + 227) = *(a2 + 227);
      *(a1 + 216) = v17;
      *(a1 + 200) = v16;
      *(a1 + 184) = v15;
      v3 = *(a2 + 248);
      *(a2 + 248) = 0;
      *(a1 + 248) = v3;
      *(a1 + 256) = *(a2 + 256);
      LOBYTE(v3) = *(a2 + 264);
    }

    *(a1 + 264) = v3;
  }

  return a1;
}

WebCore::ResourceResponseBase *std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData>::~expected(WebCore::ResourceResponseBase *this, WTF::StringImpl *a2)
{
  if (*(this + 264) != 255)
  {
    if (*(this + 264))
    {
      v4 = *(this + 1);
      *(this + 1) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else
    {
      v3 = *(this + 31);
      *(this + 31) = 0;
      if (v3)
      {
        CFRelease(v3);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(this, a2);
    }
  }

  *(this + 264) = -1;
  return this;
}

void WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WebCore::ResourceResponse> &&)>,std::experimental::fundamentals_v3::expected<WebCore::ResourceResponse,WebCore::ExceptionData>>(mpark *a1, char *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2[264])
  {
    if (a2[264] != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v4 = *a2;
    v5 = *(a2 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v20[0] = v4;
    v21 = v5;
    v42 = 1;
    v6 = *a1;
    *a1 = 0;
    (*(*v6 + 16))(v6, v20);
    (*(*v6 + 8))(v6);
    if (v42 != 255)
    {
      if (!v42)
      {
LABEL_7:
        v8 = cf;
        cf = 0;
        if (v8)
        {
          CFRelease(v8);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(v20, v7);
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    WTF::URL::URL(v20, a2);
    v9 = *(a2 + 56);
    *(a2 + 56) = 0u;
    v10 = *(a2 + 72);
    *(a2 + 72) = 0u;
    v11 = *(a2 + 5);
    v12 = *(a2 + 6);
    *(a2 + 5) = 0;
    v22 = v11;
    v23 = v12;
    v24 = v9;
    v25 = v10;
    *&v10 = *(a2 + 11);
    *(a2 + 11) = 0;
    v26 = v10;
    v13 = *(a2 + 12);
    *&v10 = *(a2 + 13);
    *(a2 + 6) = 0u;
    v27 = v13;
    v28 = v10;
    v14 = *(a2 + 14);
    *(a2 + 14) = 0;
    v29 = v14;
    LOBYTE(v30) = 0;
    v31 = 0;
    if (a2[128] == 1)
    {
      v19 = *(a2 + 15);
      *(a2 + 15) = 0;
      v30 = v19;
      v31 = 1;
    }

    v32 = *(a2 + 68);
    v33 = a2[138];
    v15 = *(a2 + 18);
    *(a2 + 18) = 0;
    v37 = *(a2 + 184);
    v38 = *(a2 + 200);
    v39[0] = *(a2 + 216);
    *(v39 + 11) = *(a2 + 227);
    v35 = *(a2 + 152);
    v36 = *(a2 + 168);
    v16 = *(a2 + 31);
    *(a2 + 31) = 0;
    v34 = v15;
    cf = v16;
    v41 = a2[256];
    v42 = 0;
    v17 = *a1;
    *a1 = 0;
    (*(*v17 + 16))(v17, v20);
    (*(*v17 + 8))(v17);
    if (v42 != 255)
    {
      if (!v42)
      {
        goto LABEL_7;
      }

LABEL_14:
      v18 = v21;
      v21 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v7);
      }
    }
  }
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((16 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 16 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    while (1)
    {
      v13 = (v4 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            (*(*v26 + 8))(v26);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v15 = v13[1];
          v13[1] = 0;
          if (!v15)
          {
            goto LABEL_21;
          }

LABEL_20:
          (*(*v15 + 8))(v15);
          goto LABEL_21;
        }

        v15 = v13[1];
        v13[1] = 0;
        if (v15)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      if (++v11 == v12)
      {
        goto LABEL_24;
      }
    }
  }

  if (v4)
  {
LABEL_24:

    WTF::fastFree((v4 - 16), v8);
  }
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash>,(WTF::HashTableTraits)1,WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E353958);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 16 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::remove(uint64_t *a1, void *a2)
{
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RetrieveRecordResponseBodyCallbackIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(a1, v6 >> 1);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::FocusFromServiceWorker,WebKit::WebSWClientConnection::focusServiceWorkerClient(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)::$_0>(WebKit::WebSWClientConnection::focusServiceWorkerClient(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F2E0;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebPageProxy::FocusFromServiceWorker,WebKit::WebSWClientConnection::focusServiceWorkerClient(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)::$_0>(WebKit::WebSWClientConnection::focusServiceWorkerClient(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F2E0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebSWClientConnection::focusServiceWorkerClient(WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&)::$_0,std::tuple<>>(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  v3 = WebCore::Document::allDocumentsMap(a1);
  v4 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WTF::WeakRef<WebCore::Document,WebCore::WeakPtrImplWithEventTargetData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(v3, a1);
  if (v4 && (v5 = v4[4]) != 0 && (v6 = *(v5 + 8)) != 0)
  {
    *(v6 + 7) += 2;
    WebCore::Document::eventLoop(v6);
    *(v6 + 7) += 2;
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F112F330;
    v7[1] = v6;
    v7[2] = v2;
    *&v17[0] = v7;
    WebCore::EventLoopTaskGroup::queueTask();
    result = *&v17[0];
    *&v17[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (*(v6 + 7) == 2)
    {
      return WebCore::Node::removedLastRef(v6);
    }

    else
    {
      *(v6 + 7) -= 2;
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v9;
    v10 = WebCore::DocumentLoader::fromScriptExecutionContextIdentifier();
    if (v10)
    {
      v11 = v10;
      ++*(v10 + 24);
      v12 = WTF::fastMalloc(0x10);
      *v12 = &unk_1F112F308;
      v12[1] = v2;
      *&v17[0] = v12;
      WebCore::DocumentLoader::whenDocumentIsCreated();
      result = *&v17[0];
      *&v17[0] = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (v11[6] == 1)
      {
        return (*(*v11 + 24))(v11);
      }

      else
      {
        --v11[6];
      }
    }

    else
    {
      LOBYTE(v17[0]) = 0;
      v21 = 0;
      v13 = *(a1 + 32);
      *(a1 + 32) = 0;
      (*(*v13 + 16))(v13, v17);
      result = (*(*v13 + 8))(v13);
      if (v21 == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v14);
        v16 = v19;
        v19 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v15);
        }

        result = v18;
        v18 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v15);
        }
      }

      if (v2)
      {
        return (*(*v2 + 8))(v2);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit21WebSWClientConnection24focusServiceWorkerClientEN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINS4_23ServiceWorkerClientDataEEEEEEEN3__0clEvEUlPT_E_vJPNS4_8DocumentEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F308;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21WebSWClientConnection24focusServiceWorkerClientEN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINS4_23ServiceWorkerClientDataEEEEEEEN3__0clEvEUlPT_E_vJPNS4_8DocumentEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F308;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit21WebSWClientConnection24focusServiceWorkerClientEN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINS4_23ServiceWorkerClientDataEEEEEEEN3__0clEvEUlPT_E_vJPNS4_8DocumentEEE4callESM_(uint64_t a1, WebCore::Document *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (this)
  {
    WebCore::Document::eventLoop(this);
    *(this + 7) += 2;
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v5 = WTF::fastMalloc(0x18);
    *v5 = &unk_1F112F330;
    *(v5 + 1) = this;
    *(v5 + 2) = v4;
    v11 = v5;
    WebCore::EventLoopTaskGroup::queueTask();
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
    v15 = 0;
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v7 + 16))(v7, &v11);
    result = (*(*v7 + 8))(v7);
    if (v15 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v8);
      v10 = v13;
      v13 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      result = v12;
      v12 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit21WebSWClientConnection24focusServiceWorkerClientEN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINS4_23ServiceWorkerClientDataEEEEEEEN3__0clEvENUlPT_E_clINS4_8DocumentEEEDaSJ_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F112F330;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    if (*(v3 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v3);
    }

    else
    {
      *(v3 + 7) -= 2;
    }
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit21WebSWClientConnection24focusServiceWorkerClientEN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINS4_23ServiceWorkerClientDataEEEEEEEN3__0clEvENUlPT_E_clINS4_8DocumentEEEDaSJ_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F112F330;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v4);
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit21WebSWClientConnection24focusServiceWorkerClientEN7WebCore16ProcessQualifiedINS_4UUIDEEEONS_17CompletionHandlerIFvONSt3__18optionalINS4_23ServiceWorkerClientDataEEEEEEEN3__0clEvENUlPT_E_clINS4_8DocumentEEEDaSJ_EUlvE_vJEE4callEv(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (!v2 || (v3 = *(v2 + 552)) == 0)
  {
    v4 = 0;
    goto LABEL_23;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
LABEL_23:
    v18 = 1;
    goto LABEL_24;
  }

  ++*(v4 + 16);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v8 = *(v6 + 8);
      v7 = (v6 + 8);
      *v7 = v8 + 1;
      WebCore::FocusController::setFocusedFrame();
      WebCore::ServiceWorkerClientData::from(v23, (*(a1 + 8) + 208), v9);
      std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100]<WebCore::ServiceWorkerClientData,0>(v27, v23);
      v10 = *(a1 + 16);
      *(a1 + 16) = 0;
      (*(*v10 + 16))(v10, v27);
      (*(*v10 + 8))(v10);
      if (v31 == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v11);
        v12 = v29;
        v29 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v11);
        }

        v13 = v28;
        v28 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v11);
        }
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v11);
      v15 = v25;
      v25 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }

      v16 = v24;
      v24 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v14);
      }

      result = WTF::RefCounted<WebCore::Page>::deref(v7);
LABEL_20:
      if (*(v4 + 16) == 1)
      {
        return (*(*v4 + 8))(v4);
      }

      --*(v4 + 16);
      return result;
    }
  }

  v18 = 0;
LABEL_24:
  v27[0] = 0;
  v31 = 0;
  v19 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v19 + 16))(v19, v27);
  result = (*(*v19 + 8))(v19);
  if (v31 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v20);
    v22 = v29;
    v29 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    result = v28;
    v28 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v21);
    }
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100]<WebCore::ServiceWorkerClientData,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 16);
  *a1 = v4;
  *(a1 + 16) = v5;
  WTF::URL::URL(a1 + 40, a2 + 5);
  WTF::URL::URL(a1 + 80, a2 + 10);
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 176) = 0;
  *(a1 + 168) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 168, a2 + 42);
  *(a1 + 192) = 1;
  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::AddCookieChangeSubscriptions,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F358;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::AddCookieChangeSubscriptions,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F358;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::AddCookieChangeSubscriptions,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::addCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, v6), v9 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
    if ((v9 & 1) != 0 && v8 == 1)
    {
      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    v6[0] = 0;
    v8 = 0;
    return std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::RemoveCookieChangeSubscriptions,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F380;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::RemoveCookieChangeSubscriptions,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F380;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::RemoveCookieChangeSubscriptions,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &,WebKit::WebSWClientConnection::removeCookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3 && (IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, v6), v9 == 1))
  {
    result = std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
    if ((v9 & 1) != 0 && v8 == 1)
    {
      result = v7;
      v7 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    v6[0] = 0;
    v8 = 0;
    return std::apply[abi:sn200100]<WebKit::WebSWClientConnection::enableNavigationPreload(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0,std::tuple<std::optional<WebCore::ExceptionData>>>((a1 + 8), v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::CookieChangeSubscriptions,WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F3A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::CookieChangeSubscriptions,WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F3A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerConnection::CookieChangeSubscriptions,WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&,IPC::Connection*>::call(uint64_t a1, WTF::StringImpl *a2, WTF::StringImpl **a3, double a4, __n128 a5)
{
  if (a3)
  {
    a2 = *a3;
    if (*a3)
    {
      v7 = a3[1];
      v8 = a3[2];
      if (v7 <= v8 - a2)
      {
        *a3 = 0;
        a3[1] = 0;
        v27 = a3[3];
        if (v27)
        {
          if (v7)
          {
            (*(*v27 + 16))(v27);
            a2 = *a3;
            v7 = a3[1];
            goto LABEL_31;
          }
        }

        else
        {
          v7 = 0;
        }

        a2 = 0;
      }

      else
      {
        a3[2] = (v8 + 1);
        if (v8)
        {
          v9 = *v8;
          if (v9 < 2)
          {
            if (v9)
            {
              IPC::VectorArgumentCoder<false,WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, &v37, a5);
              if ((v38 & 1) == 0)
              {
                v18 = *a3;
                v19 = a3[1];
                *a3 = 0;
                a3[1] = 0;
                v20 = a3[3];
                if (!v20)
                {
                  goto LABEL_17;
                }

                if (!v19)
                {
                  goto LABEL_17;
                }

                (*(*v20 + 16))(v20, v18);
                if ((v38 & 1) == 0)
                {
                  goto LABEL_17;
                }
              }

              *&v11 = 0;
              v12 = v37;
              v30 = v11;
              v37 = v11;
              v35 = 0;
              v36 = 1;
              WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v10);
              v14 = 0;
              v34 = v30;
              v31 = v12;
            }

            else
            {
              IPC::Decoder::decode<WebCore::ExceptionData>(a3, &v37);
              if ((v38 & 1) == 0)
              {
LABEL_17:
                v21 = *a3;
                v22 = a3[1];
                *a3 = 0;
                a3[1] = 0;
                v23 = a3[3];
                if (v23 && v22)
                {
                  (*(*v23 + 16))(v23, v21);
                }

                v24 = *a3;
                v25 = a3[1];
                *a3 = 0;
                a3[1] = 0;
                v26 = a3[3];
                if (v26 && v25)
                {
                  (*(*v26 + 16))(v26, v24);
                }

                return IPC::Connection::cancelReply<Messages::WebSWServerConnection::CookieChangeSubscriptions,WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>((a1 + 8), v24);
              }

              v14 = 1;
              v35 = 1;
              LOBYTE(v34) = v37;
              v36 = 1;
              LOBYTE(v31) = v37;
              *(&v34 + 1) = 0;
              *(&v31 + 1) = *(&v37 + 1);
            }

            v32 = v14;
            v33 = 1;
            std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>::~expected(&v34, v13);
            result = WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>((a1 + 8), &v31);
            if (v33)
            {
              return std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>::~expected(&v31, v17);
            }

            return result;
          }

          goto LABEL_34;
        }
      }

LABEL_31:
      *a3 = 0;
      a3[1] = 0;
      v28 = a3[3];
      if (v28)
      {
        if (v7)
        {
          (*(*v28 + 16))(v28, a2);
          a2 = *a3;
          v7 = a3[1];
          goto LABEL_34;
        }
      }

      else
      {
        v7 = 0;
      }

      a2 = 0;
LABEL_34:
      *a3 = 0;
      a3[1] = 0;
      v29 = a3[3];
      if (v29 && v7)
      {
        (*(*v29 + 16))(v29, a2);
      }

      goto LABEL_17;
    }
  }

  v15 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::WebSWServerConnection::CookieChangeSubscriptions,WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(v15, a2);
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerConnection::CookieChangeSubscriptions,WebKit::WebSWClientConnection::cookieChangeSubscriptions(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0>(mpark *a1, WTF::StringImpl *a2)
{
  v7[0] = 0;
  v9 = 1;
  LOBYTE(v5[0]) = 0;
  v8 = 0;
  v5[1] = 0;
  v6 = 1;
  std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>::~expected(v7, a2);
  WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>(a1, v5);
  return std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>::~expected(v5, v3);
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) != 255)
  {
    if (*(a1 + 16))
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }

    else
    {
      WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

WTF::StringImpl *WebKit::callExceptionOrResultCallback<WTF::CompletionHandler<void ()(WebCore::ExceptionOr<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::CookieChangeSubscription,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::ExceptionData>>(mpark *a1, uint64_t *a2)
{
  if (!*(a2 + 16))
  {
    v9 = *a2;
    v7 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v10 = v7;
    v11 = 0;
    v8 = *a1;
    *a1 = 0;
    (*(*v8 + 16))(v8, &v9);
    result = (*(*v8 + 8))(v8);
    if (v11 == 255)
    {
      return result;
    }

    if (!v11)
    {
      return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v6);
    }

    goto LABEL_10;
  }

  if (*(a2 + 16) != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  LOBYTE(v9) = v2;
  v10 = v3;
  v11 = 1;
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v9);
  result = (*(*v4 + 8))(v4);
  if (v11 != 255)
  {
    if (!v11)
    {
      return WTF::Vector<std::pair<WTF::AtomString,WTF::AtomString>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v6);
    }

LABEL_10:
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

uint64_t WTF::NativePromise<void,WebCore::ExceptionData,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 124);
  if (v4)
  {
    v5 = *(v1 + 112);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<void,WebCore::ExceptionData,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<void,WebCore::ExceptionData,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v37[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v33, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v32, a1);
    *buf = v33;
    v31[0] = v32;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v31, &v34);
    if (!v34)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v32;
    v32 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v33;
    v33 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v31[0] ? v31[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v31[0];
      v31[0] = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*v4 && v4[16] >= 4u)
    {
      v13 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v14 = *v13;
        if (v14)
        {
          break;
        }

        v15 = *v13;
        atomic_compare_exchange_strong_explicit(v13, &v15, v14 | 1, memory_order_acquire, memory_order_acquire);
        if (v15 == v14)
        {
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v36 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v37, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v31, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v31);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
                }
              }

              ++v18;
            }

            while (v18 != v19);
          }

          v24 = 1;
          atomic_compare_exchange_strong_explicit(v13, &v24, 0, memory_order_release, memory_order_relaxed);
          if (v24 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v34;
    v34 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<void,WebCore::ExceptionData,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 88, v27);
  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v30 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }
  }

  else if (*(a1 + 80))
  {
    if (*(a1 + 72) == 1)
    {
      v29 = *(a1 + 64);
      *(a1 + 64) = 0;
      if (v29)
      {
        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v28);
        }
      }
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<void,WebCore::ExceptionData,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebSWClientConnection::addRoutes(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::PromiseConverter,Messages::WebSWServerConnection::AddRoutes,WTF::NativePromise<void,WebCore::ExceptionData,0u>>(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112F3F8;
  WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebSWClientConnection::addRoutes(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::PromiseConverter,Messages::WebSWServerConnection::AddRoutes,WTF::NativePromise<void,WebCore::ExceptionData,0u>>(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112F3F8;
  WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebSWClientConnection::addRoutes(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::PromiseConverter,Messages::WebSWServerConnection::AddRoutes,WTF::NativePromise<void,WebCore::ExceptionData,0u>>(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  *a3 = 0;
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F112F448;
  *(v5 + 1) = v4;
  v36[3] = 0;
  v37 = v5;
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = "operator()";
  v6 = *(a1 + 8);
  v7 = 1;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  atomic_fetch_add((v6 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v6 + 48), &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    v5 = MEMORY[0x19EB01E30](v6 + 48);
  }

  v9 = *(v6 + 80);
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v6 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    v5 = WTF::Lock::unlockSlow((v6 + 48));
  }

  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v6 + 8));
    v5 = (*(*v6 + 16))(v6);
  }

  v11 = *(a1 + 8);
  if (v9)
  {
    if (v11)
    {
      atomic_fetch_add(v11 + 2, 1u);
      v7 = 0;
    }

LABEL_12:
    v12 = WTF::NativePromiseBase::logChannel(v5);
    if (*v12)
    {
      v13 = v12;
      if (v12[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v41, v36);
        WTF::String::String(&v40, " ignored already resolved or rejected ");
        WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v39, v11);
        WTF::makeString<WTF::String,WTF::String,WTF::String>(&v41, &v40, &v39, &v42);
        v15 = v39;
        v39 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v14);
        }

        v16 = v40;
        v40 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v14);
        }

        v17 = v41;
        v41 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        v18 = *(v13 + 4);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          WTF::String::utf8();
          v21 = v38[0] ? v38[0] + 16 : 0;
          *buf = 136446210;
          v44 = v21;
          _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v19 = v38[0];
          v38[0] = 0;
          if (v19)
          {
            if (*v19 == 1)
            {
              v19 = WTF::fastFree(v19, v20);
            }

            else
            {
              --*v19;
            }
          }
        }

        if (*v13 && v13[16] >= 4u)
        {
          v22 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v23 = *v22;
            if (v23)
            {
              break;
            }

            v24 = *v22;
            atomic_compare_exchange_strong_explicit(v22, &v24, v23 | 1, memory_order_acquire, memory_order_acquire);
            if (v24 == v23)
            {
              v25 = WTF::Logger::observers(v19);
              v26 = *(v25 + 12);
              if (v26)
              {
                v27 = *v25;
                v28 = *v25 + 8 * v26;
                do
                {
                  v29 = *v27;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString((&v44 + 4), v36);
                  v45 = 0;
                  WTF::String::String(v46, " ignored already resolved or rejected ");
                  v46[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v47, v11);
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v38, buf, 3uLL);
                  (*(*v29 + 16))(v29, v13, 4, v38);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v30);
                  for (i = 40; i != -8; i -= 16)
                  {
                    v32 = *&buf[i];
                    *&buf[i] = 0;
                    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v32, v20);
                    }
                  }

                  ++v27;
                }

                while (v27 != v28);
              }

              v33 = 1;
              atomic_compare_exchange_strong_explicit(v22, &v33, 0, memory_order_release, memory_order_relaxed);
              if (v33 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v34 = v42;
        v42 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v20);
        }
      }
    }

    if ((v7 & 1) == 0 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_53:
      atomic_store(1u, v11 + 2);
      (*(*v11 + 16))(v11);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (v11)
  {
    atomic_fetch_add(v11 + 2, 1u);
    WTF::NativePromise<void,WebCore::ExceptionData,0u>::settleWithFunction(v11, &v37, v36);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<void,WebCore::ExceptionData,0u>::settleWithFunction(0, &v37, v36);
LABEL_54:
  result = v37;
  if (v37)
  {
    return (*(*v37 + 8))(v37);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,WebCore::ExceptionData,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v48[2] = *MEMORY[0x1E69E9840];
  v7 = (a1 + 48);
  v37 = v7;
  v38 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v8;
    WTF::Logger::LogSiteIdentifier::toString(&v42, a3);
    WTF::String::String(&v41, " settling ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v40, a1);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v42, &v41, &v40, &v43);
    v13 = v40;
    v40 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v41;
    v41 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v42;
    v42 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = *(v11 + 4);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      WTF::String::utf8();
      v18 = v39[0] ? v39[0] + 16 : 0;
      *buf = 136446210;
      v45 = v18;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v17 = v39[0];
      v39[0] = 0;
      if (v17)
      {
        if (*v17 == 1)
        {
          v17 = WTF::fastFree(v17, v9);
        }

        else
        {
          --*v17;
        }
      }
    }

    if (*v11 && v11[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v17);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v45 + 4), a3);
              v46 = 0;
              WTF::String::String(v47, " settling ");
              v47[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v48, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v39, buf, 3uLL);
              (*(*v26 + 16))(v26, v11, 4, v39);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v27);
              for (i = 40; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v9);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v31 = v43;
    v43 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v9);
    }
  }

  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v33 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }
    }
  }

  else if (*(a1 + 80))
  {
    if (*(a1 + 72) == 1)
    {
      v32 = *(a1 + 64);
      *(a1 + 64) = 0;
      if (v32)
      {
        if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v9);
        }
      }
    }
  }

  v34 = *a2;
  *a2 = 0;
  *(a1 + 56) = v34;
  *(a1 + 80) = 2;
  result = WTF::NativePromise<void,WebCore::ExceptionData,0u>::dispatchAll(a1, &v37);
  v36 = v38;
  if (v38 == 1)
  {
    result = v37;
    atomic_compare_exchange_strong_explicit(v37, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<void,WebCore::ExceptionData,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  *v41 = &v41[16];
  *&v41[8] = 1;
  __dst = &v36;
  v35 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), v41);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v31 = v7;
  v8 = *(a1 + 124);
  v32 = *(a1 + 120);
  v33 = v8;
  *v41 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = WTF::Vector<WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v9);
  if (HIDWORD(v35))
  {
    v12 = __dst;
    v13 = 8 * HIDWORD(v35);
    do
    {
      v14 = *v12;
      if (!*(*v12 + 16) || (v15 = atomic_load((a1 + 129)), v15 == 1) && (v10 = (*(**(v14 + 16) + 24))(*(v14 + 16)), v10))
      {
        if (*(v14 + 56) == 1)
        {
          *v41 = v14;
          v10 = WTF::NativePromiseBase::logChannel(v10);
          if (*v10)
          {
            v18 = v10[16] >= 4u;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v10 = WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(v10, a1, v41, (v14 + 24));
          }
        }

        else
        {
          v19 = *a2;
          v20 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v20, 0, memory_order_release, memory_order_relaxed);
          if (v20 != 1)
          {
            WTF::Lock::unlockSlow(v19);
          }

          if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v37, a1);
            v21 = v37;
            (*(*v37 + 16))(v41, v37);
            (*(*v14 + 24))(v14, a1, v41);
            if (v41[16] == 1)
            {
              v23 = *&v41[8];
              *&v41[8] = 0;
              if (v23)
              {
                if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v22);
                }
              }
            }

            (*(*v21 + 8))(v21);
          }

          else
          {
            WTF::NativePromise<void,WebCore::ExceptionData,0u>::takeResult(v41, a1);
            (*(*v14 + 24))(v14, a1, v41);
            if (v41[16] == 1)
            {
              v24 = *&v41[8];
              *&v41[8] = 0;
              if (v24)
              {
                if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v24, v11);
                }
              }
            }
          }

          v25 = 0;
          v10 = *a2;
          atomic_compare_exchange_strong_explicit(*a2, &v25, 1u, memory_order_acquire, memory_order_acquire);
          if (v25)
          {
            v10 = MEMORY[0x19EB01E30](v10, v11);
          }
        }
      }

      else
      {
        v16 = *(v14 + 16);
        atomic_fetch_add((v14 + 8), 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F112F420;
        v17[1] = v14;
        v17[2] = a1;
        *v41 = v17;
        (*(*v16 + 16))(v16, v41);
        v10 = *v41;
        *v41 = 0;
        if (v10)
        {
          v10 = (*(*v10 + 8))(v10);
        }
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  if (v8)
  {
    v26 = v7 + 40 * v8;
    do
    {
      v27 = *v7;
      *v7 = 0;
      *v41 = v27;
      v28 = *(v7 + 24);
      *&v41[8] = *(v7 + 8);
      v42 = v28;
      if (v27)
      {
        atomic_fetch_add(v27 + 2, 1u);
        v37 = 0;
        v38 = 0;
        v39 = "<chained promise>";
        v40 = 0;
        WTF::NativePromise<void,WebCore::ExceptionData,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::ExceptionData,0u>::Storage>(v27, (a1 + 56), &v37);
        if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v27 + 2);
          (*(*v27 + 16))(v27);
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = "<chained promise>";
        v40 = 0;
        WTF::NativePromise<void,WebCore::ExceptionData,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::ExceptionData,0u>::Storage>(0, (a1 + 56), &v37);
      }

      WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::~NativePromiseProducer(v41);
      v7 += 40;
    }

    while (v7 != v26);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v11);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v29);
}

mpark *WTF::NativePromise<void,WebCore::ExceptionData,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 80) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *v3 = 0;
  *(v3 + 16) = 0;
  if (*(a2 + 72) == 1)
  {
    *v3 = *(a2 + 56);
    v6 = *(a2 + 64);
    *(a2 + 64) = 0;
    *(v3 + 1) = v6;
    *(v3 + 16) = 1;
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::ExceptionData,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::ExceptionData,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F420;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::ExceptionData,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::ExceptionData,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F420;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::ExceptionData,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::ExceptionData,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v14 = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v14, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v13, v8);
      v9 = v13;
      (*(*v13 + 16))(&v14, v13);
      (*(*v7 + 24))(v7, v8, &v14);
      if (v16 == 1)
      {
        v11 = v15;
        v15 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }
        }
      }

      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<void,WebCore::ExceptionData,0u>::takeResult(&v14, v8);
      result = (*(*v7 + 24))(v7, v8, &v14);
      if (v16 == 1)
      {
        result = v15;
        v15 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v12);
          }
        }
      }
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,WebCore::ExceptionData,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::ExceptionData,0u>::Storage>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v29 = v7;
  v30 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 24);
  if (v11 == 255 && v12 == 255)
  {
    goto LABEL_29;
  }

  if (v12 == 255)
  {
    if (*(a1 + 80) > 1u)
    {
      if (v11 == 2)
      {
        v16 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }
    }

    else if (*(a1 + 80))
    {
      if (*(a1 + 72) == 1)
      {
        v13 = *(a1 + 64);
        *(a1 + 64) = 0;
        if (v13)
        {
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v9);
          }
        }
      }
    }

    v17 = -1;
    goto LABEL_28;
  }

  if (v12 == 2)
  {
    if (*(a1 + 80) > 1u)
    {
      if (v11 != 255)
      {
        v26 = *a2;
        *a2 = 0;
        v27 = *(a1 + 56);
        *(a1 + 56) = v26;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        goto LABEL_29;
      }
    }

    else if (*(a1 + 80))
    {
      if (*(a1 + 72) == 1)
      {
        v20 = *(a1 + 64);
        *(a1 + 64) = 0;
        if (v20)
        {
          if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v9);
          }
        }
      }
    }

    v24 = *a2;
    *a2 = 0;
    *(a1 + 56) = v24;
    v17 = 2;
LABEL_28:
    *(a1 + 80) = v17;
    goto LABEL_29;
  }

  if (v12 != 1)
  {
    if (*(a1 + 80) > 1u)
    {
      if (v11 == 2)
      {
        v25 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }
    }

    else
    {
      if (!*(a1 + 80))
      {
        goto LABEL_29;
      }

      if (*(a1 + 72) == 1)
      {
        v21 = *(a1 + 64);
        *(a1 + 64) = 0;
        if (v21)
        {
          if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v9);
          }
        }
      }
    }

    *(a1 + 80) = 0;
    goto LABEL_29;
  }

  if (*(a1 + 80) > 1u)
  {
    if (v11 == 2)
    {
      v22 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    goto LABEL_47;
  }

  if (!*(a1 + 80))
  {
LABEL_47:
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    if (*(a2 + 16) == 1)
    {
      *(a1 + 56) = *a2;
      v23 = a2[1];
      a2[1] = 0;
      *(a1 + 64) = v23;
      *(a1 + 72) = 1;
    }

    v17 = 1;
    goto LABEL_28;
  }

  if (*(a2 + 16) == 1)
  {
    v14 = *a2;
    v12 = a2[1];
    v15 = 1;
    a2[1] = 0;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  if (v15 == *(a1 + 72))
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    v28 = *(a1 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v12;
  }

  else
  {
    if (v15)
    {
      *(a1 + 56) = v14;
      *(a1 + 64) = v12;
      *(a1 + 72) = 1;
      goto LABEL_29;
    }

    v28 = *(a1 + 64);
    *(a1 + 64) = 0;
    std::__optional_destruct_base<WebCore::ExceptionData,false>::reset[abi:sn200100](a1 + 56, v9);
  }

  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v9);
  }

LABEL_29:
  result = WTF::NativePromise<void,WebCore::ExceptionData,0u>::dispatchAll(a1, &v29);
  v19 = v30;
  if (v30 == 1)
  {
    result = v29;
    atomic_compare_exchange_strong_explicit(v29, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebSWClientConnection::addRoutes(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::PromiseConverter,Messages::WebSWServerConnection::AddRoutes,WTF::NativePromise<void,WebCore::ExceptionData,0u>>(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1}::operator()(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WTF::NativePromise>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112F448;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebSWClientConnection::addRoutes(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::PromiseConverter,Messages::WebSWServerConnection::AddRoutes,WTF::NativePromise<void,WebCore::ExceptionData,0u>>(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1}::operator()(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WTF::NativePromise>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112F448;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebKit::WebSWClientConnection::addRoutes(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::ServiceWorkerRoute,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::PromiseConverter,Messages::WebSWServerConnection::AddRoutes,WTF::NativePromise<void,WebCore::ExceptionData,0u>>(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1}::operator()(WTF::NativePromise<void,WebCore::ExceptionData,0u>::Producer &&,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WTF::NativePromise>>::call@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_26:
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    *a2 = 33;
    *(a2 + 8) = v21;
    goto LABEL_27;
  }

  v5 = v3[1];
  v6 = v3[2];
  if (v5 <= &v6[-v4])
  {
    *v3 = 0;
    v3[1] = 0;
    v9 = v3[3];
    if (v9)
    {
      if (v5)
      {
        (*(*v9 + 16))(v9);
        v4 = *v3;
        v5 = v3[1];
LABEL_13:
        *v3 = 0;
        v3[1] = 0;
        v10 = v3[3];
        if (v10)
        {
          if (v5)
          {
            (*(*v10 + 16))(v10, v4);
            v4 = *v3;
            v5 = v3[1];
LABEL_16:
            *v3 = 0;
            v3[1] = 0;
            v11 = v3[3];
            if (v11)
            {
              v12 = v5 == 0;
            }

            else
            {
              v12 = 1;
            }

            if (!v12)
            {
              (*(*v11 + 16))(v11, v4, v5);
            }

LABEL_21:
            v13 = *v3;
            v14 = v3[1];
            *v3 = 0;
            v3[1] = 0;
            v15 = v3[3];
            if (v15)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              (*(*v15 + 16))(v15, v13);
              v17 = *v3;
              v18 = v3[1];
              v19 = v3[3];
              *v3 = 0;
              v3[1] = 0;
              if (v19)
              {
                if (v18)
                {
                  (*(*v19 + 16))(v19, v17);
                }
              }
            }

            goto LABEL_26;
          }
        }

        else
        {
          v5 = 0;
        }

        v4 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_13;
  }

  v3[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = *v6;
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  result = IPC::Decoder::decode<WebCore::ExceptionData>(v3, v20);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = v21;
  *a2 = v20[0];
  *(a2 + 8) = v8;
LABEL_27:
  *(a2 + 16) = 1;
  return result;
}