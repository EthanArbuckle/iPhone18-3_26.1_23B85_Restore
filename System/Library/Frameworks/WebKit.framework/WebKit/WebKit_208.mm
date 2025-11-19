void *WebKit::toHTTPBody(void *this, const WebCore::FormData *a2, unsigned int a3)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  if (a3)
  {
    v3 = a2;
    v4 = this;
    v5 = 48 * a3;
    v26 = *MEMORY[0x1E69E24E0];
    do
    {
      v27 = 0;
      *&v28 = 0;
      v31 = 0;
      v6 = *(v3 + 40);
      if (v6 == 255)
      {
        v7 = -1;
      }

      else
      {
        v7 = *(v3 + 40);
      }

      if (v7 == 2)
      {
        if (v6 != 2)
        {
          goto LABEL_56;
        }

        v16 = *v3;
        v31 = -1;
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        v27 = v16;
        v31 = 2;
      }

      else if (v7 == 1)
      {
        if (v6 != 1)
        {
          goto LABEL_56;
        }

        v8 = *v3;
        if (!*v3)
        {
          v10 = *(v3 + 1);
          v17 = *(v3 + 2);
          v11 = v17 != v26;
          v12 = v17 >> 8;
          if (v17 == v26)
          {
            v13 = 0;
          }

          else
          {
            v13 = *(v3 + 2);
          }

          v14 = *(v3 + 24);
          v32[0] = *(v3 + 25);
          *(v32 + 3) = *(v3 + 7);
          v15 = *(v3 + 32);
LABEL_35:
          v27 = v8;
          *&v28 = v10;
          *(&v28 + 1) = v13 | (v12 << 8);
          LOBYTE(v29) = v11;
          BYTE8(v29) = v14;
          *(&v29 + 9) = v32[0];
          HIDWORD(v29) = *(v32 + 3);
          v30 = v15;
          v31 = 1;
          goto LABEL_36;
        }

        atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        v10 = *(v3 + 1);
        v9 = *(v3 + 2);
        v11 = v9 != v26;
        v12 = v9 >> 8;
        if (v9 == v26)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v3 + 2);
        }

        v14 = *(v3 + 24);
        v32[0] = *(v3 + 25);
        *(v32 + 3) = *(v3 + 7);
        v15 = *(v3 + 32);
        if (v31 == 255)
        {
          goto LABEL_35;
        }

        if (v31 != 1)
        {
          this = v27;
          if (v31)
          {
            v27 = 0;
            if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              this = WTF::StringImpl::destroy(this, a2);
            }
          }

          else if (v27)
          {
            v27 = 0;
            LODWORD(v28) = 0;
            this = WTF::fastFree(this, a2);
          }

          goto LABEL_35;
        }

        this = v27;
        v27 = v8;
        if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          this = WTF::StringImpl::destroy(this, a2);
        }

        *&v28 = v10;
        *(&v28 + 1) = v13 | (v12 << 8);
        LOBYTE(v29) = v11;
        BYTE8(v29) = v14;
        *(&v29 + 9) = v32[0];
        HIDWORD(v29) = *(v32 + 3);
        v30 = v15;
      }

      else
      {
        if (*(v3 + 40))
        {
LABEL_56:
          mpark::throw_bad_variant_access(this);
        }

        this = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&v27, v3);
      }

LABEL_36:
      v18 = *(v4 + 5);
      if (v18 != *(v4 + 4))
      {
        v20 = v4[1] + 56 * v18;
        *v20 = 0;
        *(v20 + 48) = -1;
        v19 = v31;
        if (v31 > 1u)
        {
          if (v31 == 2)
          {
            v22 = v27;
            v27 = 0;
            *v20 = v22;
            goto LABEL_44;
          }
        }

        else
        {
          if (v31)
          {
            v23 = v27;
            v27 = 0;
            *v20 = v23;
            v24 = v28;
            v25 = v29;
            *(v20 + 40) = v30;
            *(v20 + 24) = v25;
            *(v20 + 8) = v24;
          }

          else
          {
            *v20 = 0;
            *(v20 + 8) = 0;
            v21 = v27;
            v27 = 0;
            *v20 = v21;
            LODWORD(v21) = v28;
            LODWORD(v28) = 0;
            *(v20 + 8) = v21;
            LODWORD(v21) = DWORD1(v28);
            DWORD1(v28) = 0;
            *(v20 + 12) = v21;
          }

LABEL_44:
          v19 = v31;
          *(v20 + 48) = v31;
        }

        ++*(v4 + 5);
        goto LABEL_46;
      }

      this = WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::HTTPBody::Element>((v4 + 1), &v27);
      v19 = v31;
LABEL_46:
      if (v19 != 255)
      {
        this = v27;
        if (v19 == 2 || v19 == 1)
        {
          v27 = 0;
          if (this)
          {
            if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              this = WTF::StringImpl::destroy(this, a2);
            }
          }
        }

        else if (v27)
        {
          v27 = 0;
          LODWORD(v28) = 0;
          this = WTF::fastFree(this, a2);
        }
      }

      v3 = (v3 + 48);
      v5 -= 48;
    }

    while (v5);
  }

  return this;
}

void WebKit::HTTPBody::~HTTPBody(WTF::StringImpl **this, WTF::StringImpl *a2)
{
  WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((this + 1), a2);
  v4 = *this;
  *this = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }
  }
}

atomic_uint *WebKit::toHistoryItem@<X0>(WebKit *this@<X0>, WebCore::HistoryItemClient *a2@<X1>, void *a3@<X8>)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v7 = *(a2 + 18);
  if (v7)
  {
    v24[0] = *(a2 + 145);
    *(v24 + 7) = *(a2 + 19);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 20);
  if (v9)
  {
    v23[0] = *(a2 + 161);
    *(v23 + 7) = *(a2 + 21);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::fastMalloc(0x1D0);
  v20 = v7;
  *v21 = v24[0];
  *&v21[7] = *(v24 + 7);
  v22 = v8;
  v17 = v9;
  *v18 = v23[0];
  *&v18[7] = *(v23 + 7);
  v19 = v10;
  *a3 = MEMORY[0x19EB03400](v11, this, a2 + 8, a2 + 184, &v16, &v20, &v17);
  v14 = v16;
  v16 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  return WebKit::applyFrameState(this, v11, a2, v13);
}

atomic_uint *WebKit::applyFrameState(WebKit *this, WebCore::HistoryItemClient *a2, WebCore::HistoryItem *a3, const WebKit::FrameState *a4)
{
  v5 = a2;
  v96 = *MEMORY[0x1E69E9840];
  WebCore::HistoryItem::setOriginalURLString(a2, (a3 + 16));
  v7 = *(a3 + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *&v72 = v7;
  WebCore::HistoryItem::setReferrer();
  v9 = v72;
  *&v72 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  WebCore::HistoryItem::setTarget(v5, a3 + 4);
  WebCore::HistoryItem::setFrameID();
  WebCore::HistoryItem::setDocumentState();
  if (*(a3 + 72) == 1)
  {
    v10 = *(a3 + 17);
    v83 = 0;
    v84 = 0;
    v85 = v10;
    if (v10)
    {
      v84 = v10;
      v83 = WTF::fastMalloc(v10);
      memcpy(v83, *(a3 + 7), *(a3 + 17));
    }

    v11 = WTF::fastMalloc(0x120);
    v93 = 0;
    v94 = 0uLL;
    v72 = 0uLL;
    v86 = 0uLL;
    v95 = 0uLL;
    v92[0] = 0;
    v92[1] = 0;
    v91[0] = 0;
    v91[1] = 0;
    v90[0] = 0;
    v90[1] = 0;
    v89[0] = 0;
    v89[1] = 0;
    v88[0] = 0;
    v88[1] = 0;
    WebCore::SerializedScriptValue::SerializedScriptValue();
    WTF::Vector<std::unique_ptr<WebCore::MediaStreamTrackDataHolder>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v88, v12);
    WTF::Vector<WebCore::WebCodecsAudioInternalData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v89, v13);
    WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v90, v14);
    WTF::Vector<WebCore::WebCodecsVideoFrameData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v91, v15);
    WTF::Vector<WTF::RefPtr<WebCore::WebCodecsEncodedVideoChunkStorage,WTF::RawPtrTraits<WebCore::WebCodecsEncodedVideoChunkStorage>,WTF::DefaultRefDerefTraits<WebCore::WebCodecsEncodedVideoChunkStorage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v92, v16);
    WTF::Vector<WTF::RefPtr<WebCore::MediaSourceHandle,WTF::RawPtrTraits<WebCore::MediaSourceHandle>,WTF::DefaultRefDerefTraits<WebCore::MediaSourceHandle>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v94, v17);
    WTF::Vector<WTF::RefPtr<WebCore::RTCRtpTransformableFrame,WTF::RawPtrTraits<WebCore::RTCRtpTransformableFrame>,WTF::DefaultRefDerefTraits<WebCore::RTCRtpTransformableFrame>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v95, v18);
    WTF::Vector<WTF::RefPtr<WebCore::RTCRtpTransformableFrame,WTF::RawPtrTraits<WebCore::RTCRtpTransformableFrame>,WTF::DefaultRefDerefTraits<WebCore::RTCRtpTransformableFrame>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v86, v19);
    WTF::Vector<std::unique_ptr<WebCore::DetachedRTCDataChannel>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, v20);
    v22 = v93;
    v93 = 0;
    if (v22)
    {
      v23 = WTF::Vector<JSC::ArrayBufferContents,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v21);
      WTF::fastFree(v23, v24);
    }

    *&v72 = v11;
    WebCore::HistoryItem::setStateObject();
    v26 = v72;
    *&v72 = 0;
    if (v26)
    {
      WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v26);
    }

    v27 = v83;
    if (v83)
    {
      v83 = 0;
      v84 = 0;
      WTF::fastFree(v27, v25);
    }
  }

  *(v5 + 9) = vextq_s8(*(a3 + 5), *(a3 + 5), 8uLL);
  WebCore::HistoryItem::setScrollPosition(v5, a3 + 12);
  WebCore::HistoryItem::setShouldRestoreScrollPosition(v5);
  WebCore::HistoryItem::setPageScaleFactor(v5, *(a3 + 27));
  if (*(a3 + 136) == 1)
  {
    v28 = WebCore::HistoryItem::setFormContentType(v5, (a3 + 112));
    appended = WebCore::FormData::create(&v86, v28);
    v30 = *(a3 + 33);
    if (v30)
    {
      v31 = 0;
      v32 = *(a3 + 15);
      v33 = 56 * v30;
      do
      {
        v34 = *(v32 + v31 + 48);
        if (v34 == 255)
        {
          v35 = -1;
        }

        else
        {
          v35 = *(v32 + v31 + 48);
        }

        if (v35 == 2)
        {
          if (v34 != 2)
          {
            goto LABEL_97;
          }

          v36 = v86;
          WTF::URL::URL(&v72, (v32 + v31));
          WebCore::FormData::appendBlob(v36, &v72);
          appended = v72;
          *&v72 = 0;
          if (appended && atomic_fetch_add_explicit(appended, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            appended = WTF::StringImpl::destroy(appended, v37);
          }
        }

        else if (v35 == 1)
        {
          if (v34 != 1)
          {
            goto LABEL_97;
          }

          appended = WebCore::FormData::appendFileRange();
        }

        else
        {
          if (*(v32 + v31 + 48))
          {
LABEL_97:
            mpark::throw_bad_variant_access(appended);
          }

          appended = WebCore::FormData::appendData();
        }

        v31 += 56;
      }

      while (v33 != v31);
    }

    v38 = v86;
    *&v86 = 0;
    *&v72 = v38;
    WebCore::HistoryItem::setFormData();
    v39 = v72;
    *&v72 = 0;
    if (v39)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v39);
    }

    v40 = v86;
    *&v86 = 0;
    if (v40)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v40);
    }
  }

  WebCore::HistoryItem::setShouldOpenExternalURLsPolicy();
  v41 = *(a3 + 25);
  if (v41)
  {
    atomic_fetch_add(v41, 1u);
  }

  *&v72 = v41;
  WebCore::HistoryItem::setStateObject();
  result = v72;
  *&v72 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
  }

  *(v5 + 138) = *(a3 + 208);
  *(v5 + 137) = *(a3 + 209);
  LOBYTE(v72) = 0;
  v82 = 0;
  if (*(a3 + 296) == 1)
  {
    result = std::__optional_storage_base<WebCore::PolicyContainer,false>::__construct[abi:sn200100]<WebCore::PolicyContainer const&>(&v72, a3 + 216);
    if (v82)
    {
      v43 = (v5 + 368);
      if (*(v5 + 448) == 1)
      {
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v43, &v72);
        *(v5 + 96) = v73;
        *(v5 + 388) = v74;
        *(v5 + 196) = v75;
        v45 = v76;
        if (v76)
        {
          atomic_fetch_add_explicit(v76, 2u, memory_order_relaxed);
        }

        v46 = *(v5 + 50);
        *(v5 + 50) = v45;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v44);
        }

        v47 = v77;
        if (v77)
        {
          atomic_fetch_add_explicit(v77, 2u, memory_order_relaxed);
        }

        v48 = *(v5 + 51);
        *(v5 + 51) = v47;
        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v44);
        }

        *(v5 + 208) = v78;
        v49 = v79;
        if (v79)
        {
          atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
        }

        v50 = *(v5 + 53);
        *(v5 + 53) = v49;
        if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v44);
        }

        v51 = v80;
        if (v80)
        {
          atomic_fetch_add_explicit(v80, 2u, memory_order_relaxed);
        }

        result = *(v5 + 54);
        *(v5 + 54) = v51;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v44);
        }

        *(v5 + 440) = v81;
      }

      else
      {
        result = std::__optional_storage_base<WebCore::PolicyContainer,false>::__construct[abi:sn200100]<WebCore::PolicyContainer const&>(v43, &v72);
      }

      if (v82)
      {
        v67 = v80;
        v80 = 0;
        if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v67, v44);
        }

        v68 = v79;
        v79 = 0;
        if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v68, v44);
        }

        v69 = v77;
        v77 = 0;
        if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v69, v44);
        }

        v70 = v76;
        v76 = 0;
        if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v70, v44);
        }

        result = WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v72, v44);
      }
    }
  }

  *(v5 + 12) = *(a3 + 19);
  *(v5 + 13) = *(a3 + 20);
  *(v5 + 28) = *(a3 + 42);
  *(v5 + 29) = *(a3 + 43);
  *(v5 + 260) = *(a3 + 352);
  *(v5 + 15) = *(a3 + 356);
  v52 = *(a3 + 97);
  if (v52)
  {
    v53 = *(a3 + 47);
    v71 = this;
    v54 = 8 * v52;
    do
    {
      v55 = *v53;
      v92[0] = 0;
      v91[0] = 0;
      v56 = *(v55 + 18);
      if (v56)
      {
        *&v95 = *(v55 + 145);
        *(&v95 + 7) = *(v55 + 19);
        v57 = 1;
      }

      else
      {
        v57 = 0;
      }

      v58 = v5;
      v59 = *(v55 + 20);
      if (v59)
      {
        *&v94 = *(v55 + 161);
        *(&v94 + 7) = *(v55 + 21);
        v60 = 1;
      }

      else
      {
        v60 = 0;
      }

      v61 = WTF::fastMalloc(0x1D0);
      LOBYTE(v72) = v56;
      *(&v72 + 1) = v95;
      *(&v72 + 1) = *(&v95 + 7);
      LOBYTE(v73) = v57;
      LOBYTE(v86) = v59;
      *(&v86 + 1) = v94;
      *(&v86 + 1) = *(&v94 + 7);
      v87 = v60;
      *&v72 = MEMORY[0x19EB03400](v61, v71, v55 + 8, v92, v91, &v72, &v86);
      v64 = v91[0];
      v91[0] = 0;
      if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v64, v62);
      }

      v65 = v92[0];
      v92[0] = 0;
      v5 = v58;
      if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v62);
      }

      WebKit::applyFrameState(v71, v72, *v53, v63);
      result = WebCore::HistoryItem::addChildItem();
      v66 = v72;
      *&v72 = 0;
      if (v66)
      {
        result = WTF::RefCounted<WebCore::HistoryItem>::deref((v66 + 8));
      }

      ++v53;
      v54 -= 8;
    }

    while (v54);
  }

  return result;
}

void WebKit::WebServiceWorkerProvider::~WebServiceWorkerProvider(WebKit::WebServiceWorkerProvider *this)
{
  WebCore::ServiceWorkerProvider::~ServiceWorkerProvider(this);

  JUMPOUT(0x19EB14CF0);
}

_DWORD *WebKit::WebSharedWorkerObjectConnection::deref(_DWORD *this)
{
  if (this[2] == 1)
  {
    return (*(*this + 8))();
  }

  --this[2];
  return this;
}

uint64_t non-virtual thunk toWebKit::WebSharedWorkerObjectConnection::deref(uint64_t this)
{
  if (*(this - 24) == 1)
  {
    return (*(*(this - 32) + 8))();
  }

  --*(this - 24);
  return this;
}

_DWORD *WebKit::WebUserContentController::deref(_DWORD *this)
{
  if (this[2] == 1)
  {
    return (*(*this + 8))();
  }

  --this[2];
  return this;
}

uint64_t non-virtual thunk toWebKit::WebUserContentController::deref(uint64_t this)
{
  if (*(this - 40) == 1)
  {
    return (*(*(this - 48) + 8))();
  }

  --*(this - 40);
  return this;
}

void WebKit::WebAuthenticatorCoordinator::~WebAuthenticatorCoordinator(WebKit::WebAuthenticatorCoordinator *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

  bmalloc::api::tzoneFree(this, v4);
}

_DWORD *WebKit::RemoteWebLockRegistry::deref(_DWORD *this)
{
  if (this[2] == 1)
  {
    return (*(*this + 8))();
  }

  --this[2];
  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteWebLockRegistry::deref(uint64_t this)
{
  if (*(this - 8) == 1)
  {
    return (*(*(this - 16) + 8))();
  }

  --*(this - 8);
  return this;
}

uint64_t WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          CFRelease(*(v5 + 8));
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>>::destruct(*a1, (*a1 + 16 * v3));
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

_DWORD *WTF::VectorDestructor<true,std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>>::destruct(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *(v3 + 1);
      *(v3 + 1) = 0;
      if (result)
      {
        if (result[2] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[2];
        }
      }

      v3 += 4;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          CFRelease(*(v5 + 8));
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::WebUserStyleSheetData>::destruct(*a1, (*a1 + 120 * v3));
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

uint64_t WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v5)
        {
          CFRelease(*(v5 + 8));
        }
      }

      v4 += 6;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

_DWORD *WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(_DWORD *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 104 * v3;
    v5 = (*a1 + 16);
    do
    {
      WebCore::UserScript::~UserScript(v5, a2);
      v5 = (v6 + 104);
      v4 -= 104;
    }

    while (v4);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

void WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(uint64_t *a1, uint64_t a2)
{
  qword_1ED642C58 = 0;
  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reserveInitialCapacity(a2);
  if (a2)
  {
    v4 = &a1[3 * a2];
    do
    {
      WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int> const&>(v5, a1, a1 + 1);
      a1 += 3;
    }

    while (a1 != v4);
  }
}

void WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int> const&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v20 = a3;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v5 = qword_1ED642C58;
  if (qword_1ED642C58 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(0), (v5 = qword_1ED642C58) != 0))
  {
    v6 = *(v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2) & v6;
  v8 = (v5 + 24 * v7);
  v9 = *v8;
  v10 = *a2;
  if (*v8)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v9 == v10)
      {
        if (qword_1ED642C58)
        {
          v19 = *(qword_1ED642C58 - 4);
        }

        else
        {
          v19 = 0;
        }

        v16 = 0;
        v15 = qword_1ED642C58 + 24 * v19;
        goto LABEL_9;
      }

      if (v9 == -1)
      {
        v17 = v8;
      }

      v7 = (v7 + v18) & v6;
      v8 = (v5 + 24 * v7);
      v9 = *v8;
      ++v18;
    }

    while (*v8);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      --*(qword_1ED642C58 - 16);
      v10 = *a2;
      v8 = v17;
    }
  }

  WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int> const&>(WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int> const&)::{lambda(void)#1}>( v8,  v10,  &v20);
  v11 = qword_1ED642C58;
  if (qword_1ED642C58)
  {
    v12 = *(qword_1ED642C58 - 12) + 1;
  }

  else
  {
    v12 = 1;
  }

  *(qword_1ED642C58 - 12) = v12;
  v13 = (*(v11 - 16) + v12);
  v14 = *(v11 - 4);
  if (v14 > 0x400)
  {
    if (v14 > 2 * v13)
    {
      goto LABEL_8;
    }

LABEL_21:
    v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8);
    v11 = qword_1ED642C58;
    if (qword_1ED642C58)
    {
      LODWORD(v14) = *(qword_1ED642C58 - 4);
    }

    else
    {
      LODWORD(v14) = 0;
    }

    goto LABEL_8;
  }

  if (3 * v14 <= 4 * v13)
  {
    goto LABEL_21;
  }

LABEL_8:
  v15 = v11 + 24 * v14;
  v16 = 1;
LABEL_9:
  *a1 = v8;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reserveInitialCapacity(uint64_t a1)
{
  v1 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(a1);
  result = WTF::fastZeroedMalloc((24 * v1 + 16));
  qword_1ED642C58 = result + 16;
  *(result + 8) = v1 - 1;
  *(result + 12) = v1;
  *result = 0;
  return result;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E366CBCLL);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t a1)
{
  if (qword_1ED642C58 && (v2 = *(qword_1ED642C58 - 4)) != 0)
  {
    v3 = v2 << (6 * *(qword_1ED642C58 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, a1);
}

void WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int> const&>(WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int> const&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  *a1 = a2;
  v4 = *a3;
  v5 = **a3;
  CFRetain(*(v5 + 8));
  v6 = *(v4 + 2);
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  *(a1 + 16) = v6;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(unsigned int a1, uint64_t a2)
{
  v4 = qword_1ED642C58;
  if (qword_1ED642C58)
  {
    v5 = *(qword_1ED642C58 - 4);
    v6 = *(qword_1ED642C58 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastZeroedMalloc((24 * a1 + 16));
  qword_1ED642C58 = (v7 + 4);
  v7[2] = a1 - 1;
  v7[3] = a1;
  *v7 = 0;
  v7[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v4 + 24 * v9;
      v12 = *v11;
      if (*v11 != -1)
      {
        if (v12)
        {
          if (qword_1ED642C58)
          {
            v14 = *(qword_1ED642C58 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v12 + ~(v12 << 32)) ^ ((v12 + ~(v12 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = qword_1ED642C58 + 24 * v18;
            v18 = (v18 + v19++) & v14;
          }

          while (*v20);
          v21 = *(v20 + 8);
          *(v20 + 8) = 0;
          if (v21)
          {
            CFRelease(*(v21 + 8));
          }

          *v20 = *v11;
          v22 = *(v11 + 8);
          *(v11 + 8) = 0;
          *(v20 + 8) = v22;
          *(v20 + 16) = *(v11 + 16);
          v23 = *(v11 + 8);
          *(v11 + 8) = 0;
          if (v23)
          {
            CFRelease(*(v23 + 8));
          }

          if (v11 == a2)
          {
            v10 = v20;
          }
        }

        else
        {
          v13 = *(v11 + 8);
          *(v11 + 8) = 0;
          if (v13)
          {
            CFRelease(*(v13 + 8));
          }
        }
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
    v10 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v10;
}

uint64_t WebCore::UserStyleSheet::UserStyleSheet(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v5;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 48, a2 + 48);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 64, a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v7;
  return a1;
}

WTF::AtomString *WTF::AtomString::AtomString(WTF::AtomString *this, const WTF::String *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if ((*(v3 + 16) & 0x10) != 0)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    else
    {
      WTF::AtomStringImpl::addSlowCase(&v5, v3, a2);
      v3 = v5;
    }
  }

  *this = v3;
  return this;
}

void WebKit::WebUserMessageHandlerDescriptorProxy::~WebUserMessageHandlerDescriptorProxy(WebKit::WebUserMessageHandlerDescriptorProxy *this)
{
  WebKit::WebUserMessageHandlerDescriptorProxy::~WebUserMessageHandlerDescriptorProxy(this);

  WTF::fastFree(v1, v2);
}

{
  *this = &unk_1F112FF88;
  v2 = *(this + 4);
  *(this + 4) = 0;
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

  MEMORY[0x1EEE59A70](this);
}

void WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(uint64_t a1, uint64_t a2, const OpaqueJSContext *a3, OpaqueJSContext *a4, uint64_t *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++v6[4];
      WebKit::WebFrame::fromCoreFrame(v6, &v39);
      v11 = v39;
      if (v39)
      {
        v12 = WebKit::WebFrame::page(v39);
        if (v12)
        {
          v13 = v12;
          CFRetain(*(v12 + 8));
          GlobalContext = JSContextGetGlobalContext(a3);
          v15 = GlobalContext;
          if (GlobalContext)
          {
            JSGlobalContextRetain(GlobalContext);
          }

          WebKit::JavaScriptEvaluationResult::extract(v15, a4, v37);
          if (v38 == 1)
          {
            {
              v17 = WebKit::WebProcess::singleton(void)::process;
            }

            else
            {
              v34 = WebKit::WebProcess::operator new(0x370, v16);
              v17 = WebKit::WebProcess::WebProcess(v34);
              WebKit::WebProcess::singleton(void)::process = v17;
            }

            WebKit::AuxiliaryProcess::protectedParentProcessConnection(v17, &v36);
            v18 = v36;
            v19 = *(v13 + 1832);
            WebKit::WebFrame::info(v11, 0, v42);
            if ((v38 & 1) == 0)
            {
              __break(1u);
            }

            v35 = v18;
            v20 = *a5;
            *a5 = 0;
            if (v15)
            {
              JSGlobalContextRetain(v15);
            }

            v21 = *(*(a1 + 32) + 64);
            v22 = WTF::fastMalloc(0x18);
            *v22 = &unk_1F112FFB0;
            v22[1] = v20;
            v22[2] = v15;
            if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
            {
              __break(0xC471u);
              return;
            }

            v23 = v22;
            IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
            v26 = IPC::Encoder::operator new(0x238, v25);
            *v26 = 3178;
            *(v26 + 2) = 0;
            *(v26 + 3) = 0;
            *(v26 + 1) = v21;
            *(v26 + 68) = 0;
            *(v26 + 70) = 0;
            *(v26 + 69) = 0;
            IPC::Encoder::encodeHeader(v26);
            v41 = v26;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, v19);
            IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v26, v42);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, *(a1 + 40));
            IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::encode(v26, v37);
            v40[0] = v23;
            v40[1] = IdentifierInternal;
            IPC::Connection::sendMessageWithAsyncReply(v35, &v41, v40, 0, 0);
            v28 = v40[0];
            v40[0] = 0;
            if (v28)
            {
              (*(*v28 + 8))(v28);
            }

            v29 = v41;
            v41 = 0;
            if (v29)
            {
              IPC::Encoder::~Encoder(v29, v27);
              bmalloc::api::tzoneFree(v32, v33);
            }

            WebKit::FrameInfoData::~FrameInfoData(v42);
            v31 = v36;
            v36 = 0;
            if (v31)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v31);
            }

            if (v38)
            {
              WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v37, v30);
            }
          }

          if (v15)
          {
            JSGlobalContextRelease(v15);
          }

          CFRelease(*(v13 + 8));
        }

        CFRelease(v11[1]);
      }

      if (v6[4] == 1)
      {
        (*(*v6 + 8))(v6);
      }

      else
      {
        --v6[4];
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebUserContentControllerProxy::DidPostMessage,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1}>(WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1} &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1},IPC::Connection*)#1},void,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1},IPC::Connection*>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112FFB0;
  v2 = a1[2];
  if (v2)
  {
    JSGlobalContextRelease(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebUserContentControllerProxy::DidPostMessage,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1}>(WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1} &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1},IPC::Connection*)#1},void,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1},IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112FFB0;
  v3 = *(this + 2);
  if (v3)
  {
    JSGlobalContextRelease(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

mpark *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebUserContentControllerProxy::DidPostMessage,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1}>(WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1} &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1},IPC::Connection*)#1},void,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1},IPC::Connection*>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      v6 = a3[1];
      v7 = a3[2];
      if (v6 <= &v7[-v5])
      {
        *a3 = 0;
        a3[1] = 0;
        v28 = a3[3];
        if (v28)
        {
          if (v6)
          {
            (*(*v28 + 16))(v28);
            v5 = *a3;
            v6 = a3[1];
            goto LABEL_56;
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
        a3[2] = (v7 + 1);
        if (v7)
        {
          v8 = *v7;
          if (v8 < 2)
          {
            if (v8)
            {
              IPC::ArgumentCoder<WebKit::JavaScriptEvaluationResult,void>::decode(a3, &v31);
              if (v33 & 1) != 0 || (v18 = *a3, v19 = a3[1], *a3 = 0, a3[1] = 0, (v20 = a3[3]) != 0) && v19 && ((*(*v20 + 16))(v20, v18), (v33))
              {
                WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(v35, &v31);
                v36 = 0;
                v37 = 1;
                if ((v33 & 1) == 0)
                {
                  goto LABEL_16;
                }

                WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(&v31, v9);
                if (v37)
                {
                  goto LABEL_16;
                }

                goto LABEL_35;
              }
            }

            else
            {
              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v31);
              if (v32 & 1) != 0 || (v25 = *a3, v26 = a3[1], *a3 = 0, a3[1] = 0, (v27 = a3[3]) != 0) && v26 && ((*(*v27 + 16))(v27, v25), (v32))
              {
                v35[0] = v31;
                v36 = 1;
                v37 = 1;
                goto LABEL_16;
              }
            }

LABEL_34:
            LOBYTE(v35[0]) = 0;
            v37 = 0;
LABEL_35:
            v21 = *a3;
            v22 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v23 = a3[3];
            if (!v23 || !v22 || ((*(*v23 + 16))(v23, v21), (v37 & 1) == 0))
            {
              LOBYTE(v31) = 0;
              v34 = 0;
LABEL_37:
              v14 = *a3;
              v24 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              result = a3[3];
              if (!result || !v24 || (result = (*(*result + 16))(result, v14), (v34 & 1) == 0))
              {
                v17 = 0;
LABEL_28:
                if (v34 == 1)
                {
                  result = std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(&v31, v14);
                }

                if ((v17 & 1) == 0)
                {
                  return IPC::Connection::cancelReply<Messages::WebUserContentControllerProxy::DidPostMessage,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1}>((a1 + 8));
                }

                return result;
              }

LABEL_18:
              if (v33)
              {
                if (v33 != 1)
                {
                  mpark::throw_bad_variant_access(result);
                }

                result = (*(**(a1 + 8) + 16))(*(a1 + 8), 10, &v31);
              }

              else
              {
                v15 = WebKit::JavaScriptEvaluationResult::toJS(&v31, *(a1 + 16), v13);
                if (v15)
                {
                  v16 = v15;
                }

                else
                {
                  v16 = 2;
                }

                v35[0] = 0;
                (*(**(a1 + 8) + 16))(*(a1 + 8), v16, v35);
                result = v35[0];
                v35[0] = 0;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v14);
                }
              }

              v17 = 1;
              goto LABEL_28;
            }

LABEL_16:
            result = mpark::detail::move_assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult,WTF::String>,(mpark::detail::Trait)1>::move_assignment(&v31, v35);
            v34 = 1;
            if ((v37 & 1) == 0)
            {
              goto LABEL_18;
            }

            result = std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v35, v12);
            if (v34)
            {
              goto LABEL_18;
            }

            goto LABEL_37;
          }

          goto LABEL_59;
        }
      }

LABEL_56:
      *a3 = 0;
      a3[1] = 0;
      v29 = a3[3];
      if (v29)
      {
        if (v6)
        {
          (*(*v29 + 16))(v29, v5);
          v5 = *a3;
          v6 = a3[1];
          goto LABEL_59;
        }
      }

      else
      {
        v6 = 0;
      }

      v5 = 0;
LABEL_59:
      *a3 = 0;
      a3[1] = 0;
      v30 = a3[3];
      if (v30 && v6)
      {
        (*(*v30 + 16))(v30, v5);
      }

      goto LABEL_34;
    }
  }

  v10 = (a1 + 8);

  return IPC::Connection::cancelReply<Messages::WebUserContentControllerProxy::DidPostMessage,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1}>(v10);
}

WebKit::JavaScriptEvaluationResult *IPC::Connection::cancelReply<Messages::WebUserContentControllerProxy::DidPostMessage,WebKit::WebUserMessageHandlerDescriptorProxy::didPostMessage(WebCore::UserMessageHandler &,JSC::JSGlobalObject &,JSC::JSValue,WTF::Function<void ()(JSC::JSValue,WTF::String const&)> &&)::{lambda(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)#1}>(OpaqueJSContext **a1)
{
  v12[0] = 0;
  v13 = 1;
  mpark::detail::move_assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult,WTF::String>,(mpark::detail::Trait)1>::move_assignment(v10, v12);
  v3 = std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v12, v2);
  if (v11)
  {
    if (v11 != 1)
    {
      mpark::throw_bad_variant_access(v3);
    }

    (*(**a1 + 16))(*a1, 10, v10);
  }

  else
  {
    v6 = WebKit::JavaScriptEvaluationResult::toJS(v10, a1[1], v4);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 2;
    }

    v12[0] = 0;
    (*(**a1 + 16))(*a1, v7, v12);
    v8 = v12[0];
    v12[0] = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }

  return std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v10, v5);
}

_BYTE *mpark::detail::move_assignment<mpark::detail::traits<WebKit::JavaScriptEvaluationResult,WTF::String>,(mpark::detail::Trait)1>::move_assignment(_BYTE *result, uint64_t a2)
{
  *result = 0;
  result[128] = -1;
  v2 = *(a2 + 128);
  if (v2 != 255)
  {
    if (*(a2 + 128))
    {
      v4 = *a2;
      *a2 = 0;
      *result = v4;
    }

    else
    {
      result = WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(result, a2);
      LOBYTE(v2) = *(a2 + 128);
    }

    result[128] = v2;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
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

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 24);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v6 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t std::__optional_storage_base<WebCore::PolicyContainer,false>::__construct[abi:sn200100]<WebCore::PolicyContainer const&>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(result, a2);
    v3 = *(a2 + 16);
    *(result + 20) = *(a2 + 20);
    *(result + 16) = v3;
    *(result + 24) = *(a2 + 24);
    v4 = *(a2 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *(result + 32) = v4;
    v5 = *(a2 + 40);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(result + 40) = v5;
    *(result + 48) = *(a2 + 48);
    v6 = *(a2 + 56);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *(result + 56) = v6;
    v7 = *(a2 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *(result + 64) = v7;
    *(result + 72) = *(a2 + 72);
    *(result + 80) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::EstablishSharedWorkerContextConnection,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112FFD8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::EstablishSharedWorkerContextConnection,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112FFD8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::EstablishSharedWorkerContextConnection,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerContextManagerConnection::launchSharedWorker(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::WorkerOptions &&,WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)::$_0,WTF::UniqueRef<WebCore::LocalFrameLoaderClient>,WebCore::LocalFrame &,WebCore::FrameLoader &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1130000;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerContextManagerConnection::launchSharedWorker(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::WorkerOptions &&,WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)::$_0,WTF::UniqueRef<WebCore::LocalFrameLoaderClient>,WebCore::LocalFrame &,WebCore::FrameLoader &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1130000;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebSharedWorkerContextManagerConnection::launchSharedWorker(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::WorkerOptions &&,WebCore::WorkerFetchResult &&,WebCore::WorkerInitializationData &&)::$_0,WTF::UniqueRef<WebCore::LocalFrameLoaderClient>,WebCore::LocalFrame &,WebCore::FrameLoader &>::call@<X0>(uint64_t a1@<X0>, WebCore::FrameLoader *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x50);
  v7 = WebKit::RemoteWorkerFrameLoaderClient::RemoteWorkerFrameLoaderClient(v6, a2, *(a1 + 8), *(a1 + 16), (a1 + 24));
  v9 = 0;
  *a3 = v7;
  return std::unique_ptr<WebKit::RemoteWorkerFrameLoaderClient>::reset[abi:sn200100](&v9, 0);
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SharedWorkerThreadProxy,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
  }

  v9 = WTF::fastMalloc((16 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 16 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  v13 = 0;
  if (v7)
  {
    v15 = v6;
    v7 = v7;
    do
    {
      if (*v15 != -1)
      {
        if (*v15)
        {
          v17 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v15);
          v18 = v15[1];
          v15[1] = 0;
          if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v10);
          }

          if (v15 == a3)
          {
            v13 = v17;
          }
        }

        else
        {
          v16 = v15[1];
          v15[1] = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16);
              WTF::fastFree(v16, v10);
            }
          }
        }
      }

      v15 += 2;
      --v7;
    }

    while (v7);
    goto LABEL_21;
  }

  result = 0;
  if (v6)
  {
LABEL_21:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2 + ~(*a2 << 32);
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = v3 & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = *(a1 + 16 * v7);
    v7 = (v7 + v8++) & v3;
  }

  while (v10);
  v11 = (a1 + 16 * v9);
  v12 = v11[1];
  v11[1] = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, a2);
  }

  *v11 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  v11[1] = v13;
  return v11;
}

void *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(void *a1, void *a2)
{
  if (WebKit::userContentControllers(void)::userContentControllers)
  {
    v2 = (WebKit::userContentControllers(void)::userContentControllers + 16 * *(WebKit::userContentControllers(void)::userContentControllers - 4));
    if (v2 == a1)
    {
      return a1;
    }
  }

  else
  {
    if (!a1)
    {
      return a1;
    }

    v2 = 0;
  }

  if (v2 != a1)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

unsigned int *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(void *a1, void *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>::customDeleteBucket(a1, a2);
  v3 = WebKit::userContentControllers(void)::userContentControllers;
  v4 = vadd_s32(*(WebKit::userContentControllers(void)::userContentControllers - 16), 0xFFFFFFFF00000001);
  *(WebKit::userContentControllers(void)::userContentControllers - 16) = v4;
  v5 = *(v3 - 4);
  if (6 * v4.i32[1] < v5 && v5 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(&WebKit::userContentControllers(void)::userContentControllers, v5 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1)
{
  if (!WebKit::userContentControllers(void)::userContentControllers)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (!result)
  {
    if (WebKit::userContentControllers(void)::userContentControllers)
    {
      return WebKit::userContentControllers(void)::userContentControllers + 16 * *(WebKit::userContentControllers(void)::userContentControllers - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a1);
  v2 = WebKit::userContentControllers(void)::userContentControllers;
  if (WebKit::userContentControllers(void)::userContentControllers)
  {
    v3 = *(WebKit::userContentControllers(void)::userContentControllers - 8);
    v4 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a1) & v3;
    v5 = *(v2 + 16 * v4);
    if (v5 == *a1)
    {
      return v2 + 16 * v4;
    }

    v7 = 1;
    while (v5)
    {
      v4 = (v4 + v7) & v3;
      v5 = *(v2 + 16 * v4);
      ++v7;
      if (v5 == *a1)
      {
        return v2 + 16 * v4;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E3683F8);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( a1,  a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return (v4 + 24 * *(v4 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v4 = *a1;
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 - 8);
  v6 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2) & v5;
  result = (v4 + 24 * v6);
  v8 = *result;
  if (*result != *a2)
  {
    v9 = 1;
    while (v8)
    {
      v6 = (v6 + v9) & v5;
      result = (v4 + 24 * v6);
      v8 = *result;
      ++v9;
      if (*result == *a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E368550);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebUserContentController::addContentWorlds(WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void,WebCore::Page &>::call(uint64_t a1, WebCore::Page *this)
{
  v4 = *(a1 + 8);
  result = WebCore::Page::userContentProvider(this);
  if (result != v4)
  {
    return result;
  }

  v6 = *(this + 22);
  v6[4] += 2;
  v7 = v6;
  do
  {
    v8 = v7[4];
    v7[4] = v8 + 1;
    if (*(v7 + 136) == 1)
    {
      if (v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      (*(**(*(v7 + 26) + 16) + 952))(*(*(v7 + 26) + 16), *(**(a1 + 16) + 24));
      v8 = v7[4] - 1;
      if (v7[4] != 1)
      {
LABEL_5:
        v7[4] = v8;
        goto LABEL_6;
      }
    }

    (*(*v7 + 8))(v7);
LABEL_6:
    result = WebCore::FrameTree::traverseNext((v7 + 10), 0);
    v9 = result;
    if (result)
    {
      ++*(result + 16);
    }

    if (v7[4] == 1)
    {
      result = (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[4];
    }

    v7 = v9;
  }

  while (v9);
  if (v6[4] == 1)
  {
    v10 = *(*v6 + 8);

    return v10(v6);
  }

  else
  {
    --v6[4];
  }

  return result;
}

void *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash( a1,  v5,  a2);
}

void *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 24 * v11);
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

          v18 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = (v16 + 24 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (*v23);
          WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v23 + 1), v10);
          v24 = *v23;
          *v23 = 0;
          if (v24)
          {
            CFRelease(*(v24 + 8));
          }

          v25 = *v13;
          *v13 = 0;
          v23[1] = 0;
          v23[2] = 0;
          *v23 = v25;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v23 + 1), v13 + 2);
          WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v13 + 1), v26);
          v27 = *v13;
          *v13 = 0;
          if (v27)
          {
            CFRelease(*(v27 + 8));
          }

          if (v13 == a3)
          {
            v12 = v23;
          }
        }

        else
        {
          WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v13 + 1), v10);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            CFRelease(*(v15 + 8));
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

_DWORD *WTF::VectorMover<false,std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>>::move(_DWORD *result, void *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = *v5;
      v6 = v5[1];
      v5[1] = 0;
      a3[1] = v6;
      result = v5[1];
      v5[1] = 0;
      if (result)
      {
        if (result[2] == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --result[2];
        }
      }

      a3 += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E368A7CLL);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = (a1 + 24 * v6);
  v8 = *v7;
  if (*v7 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v6 = (v6 + v9) & v2;
      v7 = (a1 + 24 * v6);
      v8 = *v7;
      ++v9;
      if (*v7 == a2)
      {
        return v7;
      }
    }

    return (a1 + 24 * *(a1 - 4));
  }

  return v7;
}

void *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = -1;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  result = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a2 + 1), a2);
  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    return WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash( a1,  v8 >> 1,  0);
  }

  return result;
}

const WebCore::Frame *WTF::Detail::CallableWrapper<WebKit::WebUserContentController::addUserScriptInternal(WebKit::InjectedBundleScriptWorld &,std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&,WebCore::UserScript &&,WebKit::InjectUserScriptImmediately)::$_2,void,WebCore::Page &>::call(void *a1, const WebCore::Frame **this)
{
  v4 = a1[1];
  result = WebCore::Page::userContentProvider(this);
  if (result != v4)
  {
    return result;
  }

  if (*(a1[2] + 81) == 1)
  {
    WebCore::Page::localMainFrame(&v12, this);
    result = v12;
    if (v12)
    {
      WebCore::LocalFrame::injectUserScriptImmediately();
      result = v12;
      v12 = 0;
      if (result)
      {
        if (*(result + 4) == 1)
        {
          return (*(*result + 8))(result);
        }

        else
        {
          --*(result + 4);
        }
      }
    }

    return result;
  }

  v6 = this[22];
  *(v6 + 4) += 2;
  v7 = v6;
  do
  {
    v8 = *(v7 + 4);
    *(v7 + 4) = v8 + 1;
    if (*(v7 + 136) == 1)
    {
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *(a1[3] + 24);
      ++*v10;
      WebCore::LocalFrame::injectUserScriptImmediately();
      WTF::RefCounted<WebCore::DOMWrapperWorld>::deref(v10);
      v8 = *(v7 + 4) - 1;
      if (*(v7 + 4) != 1)
      {
LABEL_10:
        *(v7 + 4) = v8;
        goto LABEL_11;
      }
    }

    (*(*v7 + 8))(v7);
LABEL_11:
    result = WebCore::FrameTree::traverseNext((v7 + 40), v6);
    v9 = result;
    if (result)
    {
      ++*(result + 4);
    }

    if (*(v7 + 4) == 1)
    {
      result = (*(*v7 + 8))(v7);
    }

    else
    {
      --*(v7 + 4);
    }

    v7 = v9;
  }

  while (v9);
  if (*(v6 + 4) == 1)
  {
    v11 = *(*v6 + 8);

    return v11(v6);
  }

  else
  {
    --*(v6 + 4);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 24 * v11);
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

          v18 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = (v16 + 24 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (*v23);
          WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23 + 2, v10);
          v24 = *v23;
          *v23 = 0;
          if (v24)
          {
            CFRelease(*(v24 + 8));
          }

          v25 = *v13;
          *v13 = 0;
          v23[1] = 0;
          v23[2] = 0;
          *v23 = v25;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v23 + 1), v13 + 2);
          WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 2, v26);
          v27 = *v13;
          *v13 = 0;
          if (v27)
          {
            CFRelease(*(v27 + 8));
          }

          if (v13 == a3)
          {
            v12 = v23;
          }
        }

        else
        {
          WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 2, v10);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            CFRelease(*(v15 + 8));
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

unint64_t WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 104 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x2762763)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = *a1;
      v4 = *a1 + 104 * *(a1 + 12);
      v5 = 104 * a2;
      v6 = WTF::fastMalloc((104 * a2));
      *(a1 + 8) = v5 / 0x68;
      *a1 = v6;
      WTF::VectorMover<false,WebKit::WebUserScriptData>::move(v3, v4, v6);
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
}

uint64_t *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E369194);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = (a1 + 24 * v6);
  v8 = *v7;
  if (*v7 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v6 = (v6 + v9) & v2;
      v7 = (a1 + 24 * v6);
      v8 = *v7;
      ++v9;
      if (*v7 == a2)
      {
        return v7;
      }
    }

    return (a1 + 24 * *(a1 - 4));
  }

  return v7;
}

uint64_t *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove(uint64_t *a1, _DWORD *a2)
{
  v4 = *a2;
  *a2 = -1;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  result = WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2 + 2, a2);
  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    return WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash(a1, v8 >> 1, 0);
  }

  return result;
}

void *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = v5 << (6 * *(v3 - 12) >= (2 * v5));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

void *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 24 * v11);
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

          v18 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = (v16 + 24 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (*v23);
          WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v23 + 1), v10);
          v24 = *v23;
          *v23 = 0;
          if (v24)
          {
            CFRelease(*(v24 + 8));
          }

          v25 = *v13;
          *v13 = 0;
          v23[1] = 0;
          v23[2] = 0;
          *v23 = v25;
          WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v23 + 1), v13 + 2);
          WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v13 + 1), v26);
          v27 = *v13;
          *v13 = 0;
          if (v27)
          {
            CFRelease(*(v27 + 8));
          }

          if (v13 == a3)
          {
            v12 = v23;
          }
        }

        else
        {
          WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v13 + 1), v10);
          v15 = *v13;
          *v13 = 0;
          if (v15)
          {
            CFRelease(*(v15 + 8));
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>::pair[abi:sn200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v4;
  WTF::URL::URL(a1 + 24, (a2 + 24));
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 64, (a2 + 64));
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 80, (a2 + 80));
  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  return a1;
}

unint64_t WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 120 * a1[3] <= a3)
  {
    v10 = a1[2];
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

    WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
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

    WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x2222223)
    {
      __break(0xC471u);
      JUMPOUT(0x19E369650);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 120 * *(result + 3));
    v5 = 120 * a2;
    v6 = WTF::fastMalloc((120 * a2));
    *(v2 + 2) = v5 / 0x78;
    *v2 = v6;
    result = WTF::VectorMover<false,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 2) = 0;
      }

      return WTF::fastFree(v3, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>::pair[abi:sn200100](a3, v5);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + 80, v6);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 + 64, v7);
      v9 = *(v5 + 24);
      *(v5 + 24) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }

      result = *(v5 + 16);
      *(v5 + 16) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      a3 += 120;
      v5 += 120;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E3697B8);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = (a1 + 24 * v6);
  v8 = *v7;
  if (*v7 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v6 = (v6 + v9) & v2;
      v7 = (a1 + 24 * v6);
      v8 = *v7;
      ++v9;
      if (*v7 == a2)
      {
        return v7;
      }
    }

    return (a1 + 24 * *(a1 - 4));
  }

  return v7;
}

void *WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = -1;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  result = WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a2 + 1), a2);
  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    return WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::rehash(a1, v8 >> 1, 0);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::MakeCredential,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*)#1},void,void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11300C8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::MakeCredential,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*)#1},void,void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11300C8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::MakeCredential,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*)#1},void,void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData>>(v9, a3);
    if (v12 == 1)
    {
      v4 = v9[160];
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v9, v4, &v10);
      (*(*v5 + 8))(v5);
      if (v12)
      {
        v7 = v11;
        v11 = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v6);
          }
        }

        WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v9, v6);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::MakeCredential,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::MakeCredential,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(v8);
  }
}

void IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::MakeCredential,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(uint64_t *a1)
{
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  v11[0] = 0;
  v12 = 0;
  std::tuple<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData>::tuple[abi:sn200100]<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData,0>(v8, v14, &v13, v11);
  v3 = v12;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v14, v2);
  v4 = v8[160];
  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, v8, v4, &v9);
  (*(*v5 + 8))(v5);
  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v8, v6);
}

void IPC::Decoder::decode<std::tuple<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::AuthenticatorResponseData,void>::decode(a2, v12);
  if (v13)
  {
    while (1)
    {
      v14 = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(a2);
      if ((v14 & 0x100) == 0 || (v5 = IPC::Decoder::decode<WebCore::ExceptionData>(a2, v15), v17 != 1))
      {
        *a1 = 0;
        a1[184] = 0;
        goto LABEL_10;
      }

      if (v13)
      {
        break;
      }

      __break(1u);
LABEL_26:
      (*(*v5 + 16))(v5, v4);
      if ((v13 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    std::tuple<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData>::tuple[abi:sn200100]<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData,0>(a1, v12, &v14, v15);
    a1[184] = 1;
    if (v17)
    {
      v6 = v16;
      v16 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }
    }

LABEL_10:
    if (v13)
    {
      WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v12, v4);
    }
  }

  else
  {
    v4 = *a2;
    v7 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      goto LABEL_26;
    }

LABEL_19:
    *a1 = 0;
    a1[184] = 0;
  }

  if ((a1[184] & 1) == 0)
  {
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v9)
      {
        v11 = *(*v10 + 16);

        v11();
      }
    }
  }
}

uint64_t std::tuple<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData>::tuple[abi:sn200100]<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData,0>(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a1 = *a2;
  v8 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    if (*(a2 + 48) == 1)
    {
      *(a1 + 24) = *(a2 + 24);
      v9 = *(a2 + 32);
      *(a2 + 32) = 0;
      *(a1 + 32) = v9;
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = 1;
    }

    std::__optional_move_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::__optional_move_base[abi:sn200100](a1 + 56, a2 + 56);
    *(a1 + 96) = 1;
  }

  v10 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 104) = v10;
  v11 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 112) = v11;
  v12 = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 120) = v12;
  v13 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 128) = v13;
  v14 = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a1 + 136) = v14;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 144, (a2 + 144));
  *(a1 + 160) = *a3;
  *(a1 + 168) = *a4;
  v15 = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a1 + 176) = v15;
  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::GetAssertion,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*)#1},void,void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11300F0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::GetAssertion,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*)#1},void,void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11300F0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::GetAssertion,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)> &&,WTF::ThreadLikeAssertion)::{lambda(void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*)#1},void,void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&),IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<WebCore::AuthenticatorResponseData,WebCore::AuthenticatorAttachment,WebCore::ExceptionData>>(v9, a3);
    if (v12 == 1)
    {
      v4 = v9[160];
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v9, v4, &v10);
      (*(*v5 + 8))(v5);
      if (v12)
      {
        v7 = v11;
        v11 = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v6);
          }
        }

        WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v9, v6);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::MakeCredential,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::MakeCredential,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData &&,WebCore::AuthenticatorAttachment,WebCore::ExceptionData &&)>>(v8);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::isConditionalMediationAvailable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130118;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::isConditionalMediationAvailable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130118;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::isConditionalMediationAvailable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::IsUserVerifyingPlatformAuthenticatorAvailable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130140;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::IsUserVerifyingPlatformAuthenticatorAvailable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130140;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::IsUserVerifyingPlatformAuthenticatorAvailable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::Cancel,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130168;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::Cancel,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130168;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::Cancel,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::GetClientCapabilities,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130190;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::GetClientCapabilities,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130190;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::GetClientCapabilities,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4)
{
  if (!a3 || (a2 = *a3) == 0)
  {
    v20 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::GetClientCapabilities,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v20, a2, a4);
  }

  v6 = *(a3 + 1);
  v7 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v38 = *(a3 + 3);
    if (v38)
    {
      if (v6)
      {
        (*(*v38 + 16))(v38);
        a2 = *a3;
        v6 = *(a3 + 1);
        goto LABEL_60;
      }
    }

    else
    {
      v6 = 0;
    }

    a2 = 0;
LABEL_60:
    *a3 = 0;
    *(a3 + 1) = 0;
    v39 = *(a3 + 3);
    if (v39 && v6)
    {
      (*(*v39 + 16))(v39, a2);
    }

    goto LABEL_49;
  }

  *(a3 + 2) = v7 + 8;
  if (!v7)
  {
    goto LABEL_60;
  }

  v9 = *v7;
  v48 = 0;
  v49 = 0;
  if (v9 < 0x10000)
  {
    if (!v9)
    {
      v18 = 0;
      v19 = 0;
LABEL_27:
      v40 = v19;
      v48 = 0;
      v49 = 0;
      v44 = 1;
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, a2);
      v43[0] = 0;
      v43[1] = 0;
      v41[0] = v18;
      v41[1] = v40;
      v42 = 1;
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v43, v22);
      v23 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v23 + 16))(v23, v41);
      result = (*(*v23 + 8))(v23);
      if (v42)
      {
        return WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v24);
      }

      return result;
    }

    LODWORD(v49) = v9;
    v48 = WTF::fastMalloc((16 * v9));
    while (1)
    {
      IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,BOOL>>(&v45, a3);
      if (v47 != 1)
      {
        goto LABEL_48;
      }

      if (HIDWORD(v49) != v49)
      {
        break;
      }

      v10 = WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v48, HIDWORD(v49) + 1, &v45);
      v11 = HIDWORD(v49) + 1;
      v12 = v48 + 16 * HIDWORD(v49);
      v13 = *v10;
      *v10 = 0;
      *v12 = v13;
      *(v12 + 8) = *(v10 + 8);
      HIDWORD(v49) = v11;
      if (v47)
      {
        goto LABEL_17;
      }

LABEL_20:
      if (!--v9)
      {
        goto LABEL_21;
      }
    }

    v14 = HIDWORD(v49) + 1;
    v15 = v48 + 16 * HIDWORD(v49);
    v16 = v45;
    v45 = 0;
    *v15 = v16;
    *(v15 + 8) = v46;
    HIDWORD(v49) = v14;
LABEL_17:
    v17 = v45;
    v45 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, a2);
    }

    goto LABEL_20;
  }

  do
  {
    IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,BOOL>>(&v45, a3);
    if (v47 != 1)
    {
LABEL_48:
      WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, a2);
LABEL_49:
      v33 = *a3;
      v34 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v35 = *(a3 + 3);
      if (v35 && v34)
      {
        (*(*v35 + 16))(v35, v33);
        v36 = *(a3 + 3);
        v33 = *a3;
        v37 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (v36)
        {
          if (v37)
          {
            (*(*v36 + 16))(v36, v33);
          }
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
      }

      return IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::GetClientCapabilities,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v33, a4);
    }

    if (HIDWORD(v49) == v49)
    {
      result = WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v48, HIDWORD(v49) + 1, &v45);
      v25 = HIDWORD(v49) + 1;
      v26 = v48 + 16 * HIDWORD(v49);
      v27 = *result;
      *result = 0;
      *v26 = v27;
      *(v26 + 8) = *(result + 8);
      HIDWORD(v49) = v25;
      if ((v47 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v28 = HIDWORD(v49) + 1;
      v29 = v48 + 16 * HIDWORD(v49);
      v30 = v45;
      v45 = 0;
      *v29 = v30;
      *(v29 + 8) = v46;
      HIDWORD(v49) = v28;
    }

    result = v45;
    v45 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

LABEL_38:
    --v9;
  }

  while (v9);
  v31 = HIDWORD(v49);
  v18 = v48;
  if (v49 <= HIDWORD(v49))
  {
LABEL_22:
    v19 = v49;
    goto LABEL_27;
  }

  v32 = v48;
  if (!HIDWORD(v49))
  {
LABEL_44:
    if (v18)
    {
      if (v32 == v18)
      {
        v48 = 0;
        LODWORD(v49) = 0;
      }

      WTF::fastFree(v18, a2);
LABEL_21:
      v18 = v48;
    }

    else
    {
      v18 = v32;
    }

    goto LABEL_22;
  }

  if (!(HIDWORD(v49) >> 28))
  {
    v32 = WTF::fastMalloc((16 * HIDWORD(v49)));
    LODWORD(v49) = v31;
    v48 = v32;
    if (v32 != v18)
    {
      WTF::VectorTypeOperations<WebCore::ContentType>::move(v18, (v18 + 16 * v31), v32);
      v32 = v48;
    }

    goto LABEL_44;
  }

  __break(0xC471u);
  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::GetClientCapabilities,WTF::CompletionHandler<void ()(WTF::Vector<WTF::KeyValuePair<WTF::String,BOOL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

IPC::Decoder *IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,BOOL>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v19);
  if (v20 & 1) != 0 || ((v9 = *a2, v10 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v11 = *(a2 + 3)) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 && (result = (*(*v11 + 16))(v11, v9), (v20)))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *a2;
    if (v5 <= &v6[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v15 = *(a2 + 3);
      if (v15)
      {
        if (v5)
        {
          (*(*v15 + 16))(v15);
          v5 = *(a2 + 1);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v6 + 1;
      if (v6)
      {
        v8 = *v6;
        if (v8 < 2)
        {
          *a1 = v19;
          *(a1 + 8) = v8;
          *(a1 + 16) = 1;
          return result;
        }

        goto LABEL_23;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v5)
      {
        (*(*v16 + 16))(v16);
        v7 = *a2;
        v5 = *(a2 + 1);
LABEL_23:
        *a2 = 0;
        *(a2 + 1) = 0;
        v17 = *(a2 + 3);
        if (v17 && v5)
        {
          (*(*v17 + 16))(v17, v7);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
        if (v20)
        {
          v18 = v19;
          v19 = 0;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v7);
            }
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_23;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_13:
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11301B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11301B8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, v8);
    if (v11 == 1)
    {
      v12[0] = 0;
      v14 = 0;
      if (v10 == 1)
      {
        v12[0] = v8[0];
        v4 = v9;
        v9 = 0;
        v13 = v4;
        v14 = 1;
      }

      result = WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>::operator()((a1 + 8), v12);
      if (v14 == 1)
      {
        result = v13;
        v13 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }
        }
      }

      if ((v11 & 1) != 0 && v10 == 1)
      {
        result = v9;
        v9 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(v7);
  }

  return result;
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(uint64_t *a1)
{
  v3[0] = 0;
  v5 = 0;
  result = WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>::operator()(a1, v3);
  if (v5 == 1)
  {
    result = v4;
    v4 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v2);
      }
    }
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>::operator()(uint64_t *a1, uint64_t a2)
{
  v9 = *a1;
  *a1 = 0;
  v6[0] = 0;
  v8 = 0;
  if (*(a2 + 16) == 1)
  {
    v6[0] = *a2;
    v2 = *(a2 + 8);
    *(a2 + 8) = 0;
    v7 = v2;
    v8 = 1;
  }

  WTF::Function<void ()(std::optional<WebCore::ExceptionData>)>::operator()(&v9, v6);
  if (v8 == 1)
  {
    v4 = v7;
    v7 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v3);
      }
    }
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WTF::StringImpl *WTF::Function<void ()(std::optional<WebCore::ExceptionData>)>::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v6[0] = 0;
  v8 = 0;
  if (*(a2 + 16) == 1)
  {
    v6[0] = *a2;
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v7 = v3;
    v8 = 1;
  }

  result = (*(*v2 + 16))(v2, v6);
  if (v8 == 1)
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

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalAllAcceptedCredentials,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11301E0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalAllAcceptedCredentials,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11301E0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalAllAcceptedCredentials,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, v8);
    if (v11 == 1)
    {
      v12[0] = 0;
      v14 = 0;
      if (v10 == 1)
      {
        v12[0] = v8[0];
        v4 = v9;
        v9 = 0;
        v13 = v4;
        v14 = 1;
      }

      result = WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>::operator()((a1 + 8), v12);
      if (v14 == 1)
      {
        result = v13;
        v13 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }
        }
      }

      if ((v11 & 1) != 0 && v10 == 1)
      {
        result = v9;
        v9 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalCurrentUserDetails,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130208;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalCurrentUserDetails,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130208;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebAuthenticatorCoordinatorProxy::SignalCurrentUserDetails,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, v8);
    if (v11 == 1)
    {
      v12[0] = 0;
      v14 = 0;
      if (v10 == 1)
      {
        v12[0] = v8[0];
        v4 = v9;
        v9 = 0;
        v13 = v4;
        v14 = 1;
      }

      result = WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>::operator()((a1 + 8), v12);
      if (v14 == 1)
      {
        result = v13;
        v13 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }
        }
      }

      if ((v11 & 1) != 0 && v10 == 1)
      {
        result = v9;
        v9 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebAuthenticatorCoordinatorProxy::SignalUnknownCredential,WTF::CompletionHandler<void ()(std::optional<WebCore::ExceptionData>)>>(v7);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc((48 * a2 + 16));
  if (a2)
  {
    v10 = a2;
    v11 = v8 + 12;
    do
    {
      *(v11 - 4) = 0;
      *(v11 - 3) = 0;
      *(v11 - 2) = 0;
      *v11 = 0;
      v11[1] = 0;
      v11 += 6;
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v5 + 48 * v12;
      v15 = *(v14 + 16);
      if (v15 != -1)
      {
        if (v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = *v14 == 0;
        }

        if (v16)
        {
          v19 = *(v14 + 40);
          if (v19)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v19, v9);
          }

          v20 = *(v14 + 32);
          if (v20)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v20, v9);
          }
        }

        else
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v21 = WTF::UUIDHash::hash((v5 + 48 * v12), v9);
          v22 = 0;
          do
          {
            v23 = v17 + 48 * (v21 & v18);
            v21 = ++v22 + (v21 & v18);
          }

          while (*v23 != 0 || *(v23 + 16) != 0);
          v25 = *(v23 + 40);
          if (v25)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v25, v9);
          }

          v26 = *(v23 + 32);
          if (v26)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v26, v9);
          }

          v27 = *(v14 + 16);
          *v23 = *v14;
          *(v23 + 16) = v27;
          *(v23 + 32) = 0;
          v28 = *(v14 + 32);
          *(v14 + 32) = 0;
          *(v23 + 32) = v28;
          *(v23 + 40) = 0;
          v29 = *(v14 + 40);
          *(v14 + 40) = 0;
          *(v23 + 40) = v29;
          v30 = *(v14 + 40);
          if (v30)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v30, v9);
          }

          v31 = *(v14 + 32);
          if (v31)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v31, v9);
          }

          if (v14 == a3)
          {
            v13 = v23;
          }
        }
      }

      ++v12;
    }

    while (v12 != v6);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v13;
}

void WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc(((32 * a2) | 0x10));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 32 * a2);
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
      v13 = (v4 + 32 * v11);
      v8 = v13[1];
      if (v8 != -1)
      {
        if (*v13 == 0)
        {
          v16 = v13[3];
          v13[3] = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          v17 = v13[2];
          v13[2] = 0;
          if (!v17)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v18 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*v13, v8);
          v19 = 0;
          do
          {
            v20 = v18 & v15;
            v21 = v14 + 32 * v20;
            v18 = ++v19 + v20;
          }

          while (*v21 != 0);
          v22 = *(v21 + 24);
          *(v21 + 24) = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          v23 = *(v21 + 16);
          *(v21 + 16) = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          *v21 = *v13;
          v24 = *(v13 + 1);
          v13[2] = 0;
          v13[3] = 0;
          *(v21 + 16) = v24;
          v25 = v13[3];
          v13[3] = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          v17 = v13[2];
          v13[2] = 0;
          if (!v17)
          {
            goto LABEL_27;
          }
        }

        (*(*v17 + 8))(v17);
      }

LABEL_27:
      if (++v11 == v12)
      {
        goto LABEL_30;
      }
    }
  }

  if (v4)
  {
LABEL_30:

    WTF::fastFree((v4 - 16), v8);
  }
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>(uint64_t *a1, WTF::UUIDHash *this)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *this == 0 && v4 == 0;
  if (v5 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E36BA5CLL);
  }

  v7 = *(v2 - 8);
  v8 = WTF::UUIDHash::hash(this, this);
  v9 = *this;
  v10 = *(this + 1);
  v11 = *(this + 2);
  v12 = v8 & v7;
  result = (v2 + 48 * (v8 & v7));
  v14 = *result;
  v15 = result[1];
  v16 = v15 == v10 && v14 == v9;
  v17 = result[2];
  if (!v16 || v17 != v11)
  {
    v19 = 1;
    while (v14 | v15 || v17)
    {
      v12 = (v12 + v19) & v7;
      result = (v2 + 48 * v12);
      v14 = *result;
      v15 = result[1];
      v20 = v15 == v10 && v14 == v9;
      v17 = result[2];
      ++v19;
      if (v20 && v17 == v11)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 48 * *(*a1 - 4));
    }

    return 0;
  }

  return result;
}

void WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = -1;
  a2[1] = -1;
  v3 = a2[2];
  a2[2] = 0;
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

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v6 >> 1);
  }
}

void WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc((24 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 24 * a2);
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
      v13 = (v4 + 24 * v11);
      v8 = v13[1];
      if (v8 != -1)
      {
        if (*v13 != 0)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v17 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*v13, v8);
          v18 = 0;
          do
          {
            v19 = v14 + 24 * (v17 & v15);
            v17 = ++v18 + (v17 & v15);
          }

          while (*v19 != 0);
          v20 = *(v19 + 16);
          *(v19 + 16) = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

          *v19 = *v13;
          v21 = v13[2];
          v13[2] = 0;
          *(v19 + 16) = v21;
          v16 = v13[2];
          v13[2] = 0;
          if (!v16)
          {
            goto LABEL_21;
          }

LABEL_20:
          (*(*v16 + 8))(v16);
          goto LABEL_21;
        }

        v16 = v13[2];
        v13[2] = 0;
        if (v16)
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

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (!(v5 | v6) || v6 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E36BE20);
  }

  v7 = *(v2 - 8);
  v8 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v5, v6);
  v9 = a2[1];
  v10 = v8 & v7;
  result = (v2 + 24 * (v8 & v7));
  v12 = *result;
  v13 = result[1];
  if (*result != *a2 || v13 != v9)
  {
    v15 = 1;
    while (v12 | v13)
    {
      v10 = (v10 + v15) & v7;
      result = (v2 + 24 * v10);
      v12 = *result;
      v13 = result[1];
      ++v15;
      if (*result == *a2 && v13 == v9)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 24 * *(*a1 - 4));
    }

    return 0;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = 1;
  a2[1] = 0;
  a2[2] = -1;
  v4 = a2[5];
  if (v4)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  result = a2[4];
  if (result)
  {
    result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    return WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::rehash(a1, v8 >> 1, 0);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebLockRegistryProxy::AbortLockRequest,WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1130230;
  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebLockRegistryProxy::AbortLockRequest,WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1130230;
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebLockRegistryProxy::AbortLockRequest,WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder)#1},void,WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = v4 & (v4 << 23 >> 31);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return std::apply[abi:sn200100]<WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,std::tuple<BOOL>>((a1 + 16), v5);
}

uint64_t std::apply[abi:sn200100]<WebKit::RemoteWebLockRegistry::abortLockRequest(PAL::SessionID,WebCore::ClientOrigin const&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,std::tuple<BOOL>>(unint64_t *a1, char a2)
{
  if (!*a1)
  {
    goto LABEL_29;
  }

  v4 = *(*a1 + 8);
  if (!v4 || (a2 & 1) == 0)
  {
    goto LABEL_29;
  }

  v5 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>((v4 + 16), (a1 + 4));
  if (!*a1 || (v6 = *(*a1 + 8)) == 0)
  {
LABEL_32:
    __break(0xC471u);
    JUMPOUT(0x19E36C230);
  }

  v7 = v5;
  v8 = *(v6 + 16);
  if (v8)
  {
    v8 += 6 * *(v8 - 1);
  }

  if (v8 == v5)
  {
    goto LABEL_29;
  }

  v9 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v5 + 4, a1 + 1);
  v10 = v7[4];
  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    v11 = 0;
LABEL_14:
    if (v11 != v9)
    {
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(v7 + 4, v9);
      v10 = v7[4];
    }

    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = (v10 + 32 * *(v10 - 4));
  if (v11 != v9)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (*(v10 - 12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v12 = v7[5];
  if (v12 && *(v12 - 12))
  {
    goto LABEL_29;
  }

  if (!*a1)
  {
    goto LABEL_32;
  }

  v13 = *(*a1 + 8);
  if (!v13)
  {
    goto LABEL_32;
  }

  v16 = *(v13 + 16);
  v14 = (v13 + 16);
  v15 = v16;
  if (v16)
  {
    v17 = (v15 + 48 * *(v15 - 4));
    if (v17 == v7)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_29;
    }

    v17 = 0;
  }

  if (v17 != v7)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove(v14, v7);
  }

LABEL_29:
  v18 = a1[8];
  a1[8] = 0;
  (*(*v18 + 16))(v18, a2 & 1);
  v19 = *(*v18 + 8);

  return v19(v18);
}

void WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  *a2 = -1;
  a2[1] = -1;
  v4 = a2[3];
  a2[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a2[2];
  a2[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *a1;
  v7 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v6 - 16) = v7;
  v8 = *(v6 - 4);
  if (6 * v7.i32[1] < v8 && v8 >= 9)
  {

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v8 >> 1);
  }
}

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *a2;
  v6 = a2[1];
  if (!(v5 | v6) || v6 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E36C410);
  }

  v7 = *(v2 - 8);
  v8 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v5, v6);
  v9 = a2[1];
  v10 = v8 & v7;
  result = (v2 + 32 * v10);
  v12 = *result;
  v13 = result[1];
  if (*result != *a2 || v13 != v9)
  {
    v15 = 1;
    while (v12 | v13)
    {
      v10 = (v10 + v15) & v7;
      result = (v2 + 32 * v10);
      v12 = *result;
      v13 = result[1];
      ++v15;
      if (*result == *a2 && v13 == v9)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 32 * *(*a1 - 4));
    }

    return 0;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebLockRegistryProxy::Snapshot,WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>>(WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1130258;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebLockRegistryProxy::Snapshot,WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>>(WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1130258;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebLockRegistryProxy::Snapshot,WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>>(WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>,IPC::Decoder>::call(uint64_t a1, void *a2, void **a3, __n128 a4)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<WebCore::WebLockManagerSnapshot,void>::decode(a3, &v20);
    if (v22)
    {
      a4.n128_u64[0] = 0;
      v17 = v20;
      v7 = v21;
      v20 = a4;
      v21 = a4;
      v18 = v7;
      v19 = 1;
      WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v6);
      WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v8);
      v9 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v9 + 16))(v9, &v17);
      result = (*(*v9 + 8))(v9);
      if (v19)
      {
        WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v11);
        return WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v12);
      }

      return result;
    }

    a2 = *a3;
    v13 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v14 = a3[3];
    if (v14 && v13)
    {
      (*(*v14 + 16))(v14, a2);
      v15 = a3[3];
      a2 = *a3;
      v16 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      if (v15 && v16)
      {
        (*(*v15 + 16))(v15, a2);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  return IPC::Connection::cancelReply<Messages::WebLockRegistryProxy::Snapshot,WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>>((a1 + 8), a2, a4);
}

uint64_t IPC::Connection::cancelReply<Messages::WebLockRegistryProxy::Snapshot,WTF::CompletionHandler<void ()(WebCore::WebLockManagerSnapshot &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v11 = a3;
  v12 = a3;
  v9 = a3;
  v10 = a3;
  WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, a2);
  WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v4);
  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, &v9);
  (*(*v5 + 8))(v5);
  WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v6);
  return WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v7);
}

void WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::RefCounted<WebCore::HistoryItem>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB03410](result - 2);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::createShareableBitmap(uint64_t a1@<X0>, uint64_t a2@<X1>, WebCore::ShareableBitmap **a3@<X8>)
{
  v4 = *(*(a1 + 24) + 8);
  if (!v4 || (v5 = *(*(*(*(v4 + 48) + 8) + 552) + 8), ++*(v5 + 16), (v6 = *(v5 + 120)) == 0) || (v7 = *(v6 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E36D08CLL);
  }

  ++v7[4];
  v10 = (*(*v7 + 56))(v7);
  WebCore::screenColorSpace(&v78, v10, v11);
  if (v7[4] == 1)
  {
    (*(*v7 + 8))(v7);
  }

  else
  {
    --v7[4];
  }

  if ((*(a1 + 52) & 0x207) == 0x203 || *(*(*(a1 + 88) + 32) + 4) != 0.0 || *(a2 + 13) != 1)
  {
    if (*(a1 + 46) == 48)
    {
      v25 = WebCore::RenderVideo::videoElement(a1);
      *(v25 + 7) += 2;
      WebCore::HTMLVideoElement::nativeImageForCurrentTime(&v75, v25);
      if (!v75)
      {
        *a3 = 0;
LABEL_44:
        if (*(v25 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v25);
        }

        else
        {
          *(v25 + 7) -= 2;
        }

        goto LABEL_68;
      }

      v26 = WebCore::NativeImage::size(v75);
      v74 = v26;
      if (!(v26 >> 33) || v26 < 2 || SHIDWORD(v26) <= 0)
      {
        goto LABEL_34;
      }

      v50 = v78;
      v78 = 0;
      v64 = v50;
      v65 = 1;
      MEMORY[0x19EB0C920](&v69, &v74, &v64, 0, 1.0);
      WebCore::ShareableBitmap::create();
      if (v71 == 1)
      {
        v51 = cf;
        cf = 0;
        if (v51)
        {
          CFRelease(v51);
        }
      }

      if (v65 == 1)
      {
        v52 = v64;
        v64 = 0;
        if (v52)
        {
          CFRelease(v52);
        }
      }

      if (!v72)
      {
LABEL_34:
        *a3 = 0;
        goto LABEL_35;
      }

      WebCore::ShareableBitmap::createGraphicsContext(&v68, v72);
      if (v68)
      {
        v69 = 0;
        cf = vcvt_f32_s32(v74);
        v76 = 0;
        v77 = cf;
        WebCore::GraphicsContext::drawNativeImage();
        v53 = v72;
        v72 = 0;
        *a3 = v53;
        v54 = v68;
        v68 = 0;
        if (!v54)
        {
          goto LABEL_35;
        }

        (*(*v54 + 8))(v54);
      }

      else
      {
        *a3 = 0;
      }

      v55 = v72;
      v72 = 0;
      if (v55)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v55, v27);
      }

LABEL_35:
      v28 = v75;
      v75 = 0;
      if (v28)
      {
        do
        {
          v29 = v28[1];
          if ((v29 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v28[1], v27);
            goto LABEL_44;
          }

          v30 = v28[1];
          atomic_compare_exchange_strong_explicit(v28 + 1, &v30, (v29 - 2), memory_order_relaxed, memory_order_relaxed);
        }

        while (v30 != v29);
        if (v29 == 3)
        {
          (*(*v28 + 1))(v28);
        }
      }

      goto LABEL_44;
    }

    v31 = WebCore::CachedResourceHandleBase::get((*(a1 + 216) + 24));
    if (!v31 || (*(v31 + 572) >> 13) - 3 <= 1 || (v32 = WebCore::CachedImage::imageForRenderer()) == 0)
    {
LABEL_42:
      *a3 = 0;
      goto LABEL_68;
    }

    v33 = v32;
    ++v32[4];
    if ((*(*v32 + 176))(v32, 0) <= 1.0)
    {
      goto LABEL_65;
    }

    (*(*v33 + 176))(v33, 0);
    if (v34 <= 1.0 || (*(a2 + 12) & 1) == 0 && (*(*v33 + 120))(v33))
    {
      goto LABEL_65;
    }

    WebCore::CachedImage::imageSizeForRenderer();
    v76 = __PAIR64__(LODWORD(v37), LODWORD(v36));
    if (*(a2 + 8) == 1)
    {
      v38 = v36;
      v39 = *a2;
      v69 = 0;
      cf = v39;
      WebCore::largestRectWithAspectRatioInsideRect(&v69, v36 / v37, v35);
      v42 = LODWORD(v40) | (v41 << 32);
      if (v40 >= v38)
      {
        v42 = v76;
      }

      v76 = v42;
    }

    WebCore::IntSize::IntSize(&v74, &v76);
    v43 = v78;
    v78 = 0;
    v62 = v43;
    v63 = 1;
    MEMORY[0x19EB0C920](&v69, &v74, &v62, 0, 1.0);
    WebCore::ShareableBitmap::create();
    if (v71 == 1)
    {
      v44 = cf;
      cf = 0;
      if (v44)
      {
        CFRelease(v44);
      }
    }

    if (v63 == 1)
    {
      v45 = v62;
      v62 = 0;
      if (v45)
      {
        CFRelease(v45);
      }
    }

    if (v75)
    {
      WebCore::ShareableBitmap::createGraphicsContext(&v74, v75);
      if (!v74)
      {
        *a3 = 0;
LABEL_89:
        v56 = v75;
        v75 = 0;
        if (v56)
        {
          WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v56, v46);
        }

        goto LABEL_66;
      }

      v69 = 0;
      cf = v76;
      WebCore::RenderElement::imageOrientation(a1);
      WebCore::GraphicsContext::drawImage();
      v47 = v74;
      v48 = v75;
      v74 = 0;
      v75 = 0;
      *a3 = v48;
      if (v47)
      {
        (*(**&v47 + 8))(v47);
        goto LABEL_89;
      }
    }

    else
    {
LABEL_65:
      *a3 = 0;
    }

LABEL_66:
    if (v33[4] == 1)
    {
      (*(*v33 + 8))(v33);
    }

    else
    {
      --v33[4];
    }

    goto LABEL_68;
  }

  v12 = WebCore::RenderObject::absoluteBoundingBoxRect(a1, 1, 0);
  v76 = v12;
  v77 = v13;
  if (v13 < 1 || v13 <= 0)
  {
    goto LABEL_42;
  }

  LOWORD(v69) = 33;
  BYTE2(v69) = 1;
  v14 = *WebCore::DestinationColorSpace::SRGB(v12);
  cf = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  WebCore::snapshotFrameRect();
  v15 = cf;
  cf = 0;
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = v75;
  if (!v75)
  {
    goto LABEL_42;
  }

  v75 = 0;
  v73 = v16;
  WebCore::ImageBuffer::sinkIntoNativeImage();
  v18 = v73;
  v73 = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v18 + 1, v17);
  }

  if (v74)
  {
    v68 = WebCore::NativeImage::size(v74);
    v19 = v78;
    v78 = 0;
    v66 = v19;
    v67 = 1;
    MEMORY[0x19EB0C920](&v69, &v68, &v66, 0, 1.0);
    WebCore::ShareableBitmap::create();
    if (v71 == 1)
    {
      v20 = cf;
      cf = 0;
      if (v20)
      {
        CFRelease(v20);
      }
    }

    if (v67 == 1)
    {
      v21 = v66;
      v66 = 0;
      if (v21)
      {
        CFRelease(v21);
      }
    }

    if (v72)
    {
      WebCore::ShareableBitmap::createGraphicsContext(&v68, v72);
      if (v68)
      {
        v22 = WebCore::NativeImage::size(v74);
        v69 = 0;
        *&cf = v22;
        *(&cf + 1) = SHIDWORD(v22);
        WebCore::GraphicsContext::drawNativeImage();
        v23 = v72;
        v72 = 0;
        *a3 = v23;
        v24 = v68;
        v68 = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }

      else
      {
        *a3 = 0;
      }

      v57 = v72;
      v72 = 0;
      if (v57)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v57, v17);
      }
    }

    else
    {
      *a3 = 0;
    }

    v58 = v74;
    v74 = 0;
    if (v58)
    {
      do
      {
        v59 = v58[1];
        if ((v59 & 1) == 0)
        {
          WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v58[1], v17);
          goto LABEL_102;
        }

        v60 = v58[1];
        atomic_compare_exchange_strong_explicit(v58 + 1, &v60, (v59 - 2), memory_order_relaxed, memory_order_relaxed);
      }

      while (v60 != v59);
      if (v59 == 3)
      {
        (*(*v58 + 1))(v58);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

LABEL_102:
  v61 = v75;
  v75 = 0;
  if (v61)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v61 + 1, v17);
  }

LABEL_68:
  v49 = v78;
  v78 = 0;
  if (v49)
  {
    CFRelease(v49);
  }

  if (v5)
  {
    if (*(v5 + 16) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 16);
    }
  }
}

void WebKit::WebAttachmentElementClient::requestAttachmentIcon(WebKit::WebAttachmentElementClient *this, const WTF::String *a2, const WebCore::FloatSize *a3)
{
  v3 = *(*(this + 1) + 8);
  if (v3)
  {
    CFRetain(*(v3 - 8));
    WebKit::WebPage::requestAttachmentIcon((v3 - 16), a2, a3);
    v6 = *(v3 - 8);

    CFRelease(v6);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::WebBadgeClient::setAppBadge(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v10 = a4;
    v11 = a5;
    v8 = a2;
    v9 = a3;
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v7);
    a2 = v8;
    a3 = v9;
    a4 = v10;
    a5 = v11;
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  WebKit::WebProcess::setAppBadge(v6, a2, a3, a4, a5);
}

uint64_t WebKit::WebBroadcastChannelRegistry::registerChannel(uint64_t a1, uint64_t *a2, WTF::StringImpl **a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v52 = a4;
  if (*a2 == -1)
  {
    goto LABEL_85;
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E36D660);
  }

  v7 = *(a1 + 16);
  if (v7 || (WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::expand((a1 + 16), 0), (v7 = *(a1 + 16)) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = WTF::computeHash<WebCore::PartitionedSecurityOrigin>(*a2, a2[1]);
  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v9 & v8;
    v15 = (v7 + 24 * (v9 & v8));
    if (*v15 == -1)
    {
      v12 = (v7 + 24 * v14);
      goto LABEL_12;
    }

    if (!*v15)
    {
      break;
    }

    if (WTF::PartitionedSecurityOriginHash::equal((v7 + 24 * v14), a2))
    {
      goto LABEL_27;
    }

LABEL_12:
    v9 = i + v14;
  }

  if (v12)
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    --*(*(a1 + 16) - 16);
    v15 = v12;
  }

  v16 = *a2;
  atomic_fetch_add(*a2, 1u);
  v17 = *v15;
  *v15 = v16;
  if (v17)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v17, v10);
  }

  v18 = a2[1];
  atomic_fetch_add(v18, 1u);
  v19 = v15[1];
  v15[1] = v18;
  if (v19)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v19, v10);
  }

  v20 = v15[2];
  v15[2] = 0;
  if (v20)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v20, v10);
  }

  v21 = *(a1 + 16);
  v22 = v21 ? *(v21 - 12) + 1 : 1;
  *(v21 - 12) = v22;
  v23 = (*(v21 - 16) + v22);
  v24 = *(v21 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_26:
      v15 = WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::expand((a1 + 16), v15);
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E36D680);
  }

  if (!*a3)
  {
LABEL_85:
    __break(0xC471u);
    JUMPOUT(0x19E36D640);
  }

  v25 = v15[2];
  if (v25 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v15 + 2, 0), (v25 = v15[2]) != 0))
  {
    v26 = *(v25 - 8);
  }

  else
  {
    v26 = 0;
  }

  v27 = *(*a3 + 4);
  if (v27 < 0x100)
  {
    v28 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v28 = v27 >> 8;
  }

  v29 = 0;
  v30 = 1;
  while (2)
  {
    v31 = v28 & v26;
    v32 = v25 + 24 * (v28 & v26);
    v33 = *v32;
    if (*v32 == -1)
    {
      v29 = (v25 + 24 * v31);
LABEL_40:
      v28 = v30 + v31;
      ++v30;
      continue;
    }

    break;
  }

  if (v33)
  {
    result = WTF::equal(v33, *a3, v11);
    if (result)
    {
      goto LABEL_51;
    }

    goto LABEL_40;
  }

  if (v29)
  {
    *v29 = 0;
    v29[1] = 0;
    v29[2] = 0;
    --*(v15[2] - 16);
    v32 = v29;
  }

  WTF::String::operator=(v32, a3);
  result = *(v32 + 8);
  if (result)
  {
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    result = WTF::fastFree(result, v35);
  }

  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  v36 = v15[2];
  if (v36)
  {
    v37 = *(v36 - 12) + 1;
  }

  else
  {
    v37 = 1;
  }

  *(v36 - 12) = v37;
  v38 = (*(v36 - 16) + v37);
  v39 = *(v36 - 4);
  if (v39 > 0x400)
  {
    if (v39 <= 2 * v38)
    {
LABEL_50:
      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v15 + 2, v32);
      v32 = result;
    }
  }

  else if (3 * v39 <= 4 * v38)
  {
    goto LABEL_50;
  }

LABEL_51:
  v40 = *(v32 + 20);
  if (v40 == *(v32 + 16))
  {
    result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v32 + 8, v40 + 1, &v52);
    v40 = *(v32 + 20);
    v41 = *(v32 + 8);
    v42 = *result;
  }

  else
  {
    v41 = *(v32 + 8);
    v42 = v52;
  }

  *(v41 + 8 * v40) = v42;
  v43 = *(v32 + 20);
  *(v32 + 20) = v43 + 1;
  if (!v43)
  {
    result = WebKit::toClientOrigin(&v53, a2, v43);
    if (v59 == 1)
    {
      {
        v45 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v50 = WebKit::WebProcess::operator new(0x370, v44);
        v45 = WebKit::WebProcess::WebProcess(v50);
        WebKit::WebProcess::singleton(void)::process = v45;
      }

      v46 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v45) + 24);
      v51[0] = &v53;
      v51[1] = a3;
      result = IPC::Connection::send<Messages::NetworkBroadcastChannelRegistry::RegisterChannel>(v46, v51);
      if (v59)
      {
        if (!v58)
        {
          v48 = v57;
          v57 = 0;
          if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v48, v47);
          }

          result = v56;
          v56 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v47);
          }
        }

        v58 = -1;
        if (!v55)
        {
          v49 = v54;
          v54 = 0;
          if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v49, v47);
          }

          result = v53;
          v53 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v47);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::toClientOrigin@<X0>(uint64_t result@<X0>, WTF::StringImpl *a2@<X1>, atomic_uint *a3@<X8>)
{
  v6 = *a2;
  v7 = *(*a2 + 32);
  if (v7 == 1 || (v8 = *(a2 + 1), v9 = *(v8 + 32), v9 == 1))
  {
    *result = 0;
    *(result + 64) = 0;
    return result;
  }

  if (*(*a2 + 32))
  {
    if (v7 == 255)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v6 + 8);
      a3 = *(v6 + 16);
    }
  }

  else
  {
    v10 = *(v6 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    a3 = *(v6 + 16);
    if (a3)
    {
      atomic_fetch_add_explicit(a3, 2u, memory_order_relaxed);
    }

    v3 = *(v6 + 24);
    v7 = *(v6 + 32);
    v8 = *(a2 + 1);
    v9 = *(v8 + 32);
  }

  if (v9)
  {
    if (v9 == 255)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v8 + 8);
      v4 = *(v8 + 16);
    }
  }

  else
  {
    v11 = *(v8 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    v4 = *(v8 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v5 = *(v8 + 24);
    v9 = *(v8 + 32);
  }

  *result = 0;
  *(result + 24) = -1;
  if (!v7)
  {
    *result = v10;
    *(result + 8) = a3;
    *(result + 16) = v3;
    v10 = 0;
    a3 = 0;
LABEL_19:
    *(result + 24) = v7;
    goto LABEL_20;
  }

  if (v7 != 255)
  {
    *result = v10;
    *(result + 8) = a3;
    goto LABEL_19;
  }

LABEL_20:
  *(result + 32) = 0;
  *(result + 56) = -1;
  if (!v9)
  {
    *(result + 32) = v11;
    *(result + 40) = v4;
    *(result + 48) = v5;
LABEL_22:
    *(result + 56) = v9;
    goto LABEL_23;
  }

  if (v9 != 255)
  {
    *(result + 32) = v11;
    *(result + 40) = v4;
    goto LABEL_22;
  }

LABEL_23:
  *(result + 64) = 1;
  if (!v7)
  {
    if (a3 && atomic_fetch_add_explicit(a3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(a3, a2);
    }

    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(v10, a2);
    }
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkBroadcastChannelRegistry::RegisterChannel>(uint64_t *a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 427;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v4, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, a2[1]);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t *WebKit::WebBroadcastChannelRegistry::unregisterChannel(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl **a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  result = WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>>,(WTF::ShouldValidateKey)1,WebCore::PartitionedSecurityOrigin>( (a1 + 16),  a2);
  v10 = result;
  v11 = *(a1 + 16);
  if (v11)
  {
    v11 += 3 * *(v11 - 1);
  }

  if (v11 == result)
  {
    return result;
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(result + 2, a3, v9);
  v12 = result;
  v13 = v10[2];
  if (v13)
  {
    v13 += 3 * *(v13 - 1);
  }

  if (v13 == result)
  {
    return result;
  }

  v14 = *(result + 5);
  if (!v14)
  {
    return result;
  }

  v15 = result[1];
  if (*v15 != a4)
  {
    v16 = 0;
    while (v14 - 1 != v16)
    {
      v18 = v15[++v16];
      if (v18 == a4)
      {
        v17 = v16 < v14;
        goto LABEL_14;
      }
    }

    return result;
  }

  v16 = 0;
  v17 = 1;
LABEL_14:
  result = &v15[v16];
  v19 = result + 1;
  if (result + 1 != &v15[v14])
  {
    result = memmove(result, v19, 8 * (v14 - v16) - 8);
    LODWORD(v14) = *(v12 + 5);
  }

  v20 = v14 - 1;
  *(v12 + 5) = v20;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v17;
  }

  if (!v21)
  {
    return result;
  }

  v22 = v10[2];
  if (v22)
  {
    v22 += 6 * *(v22 - 1);
    if (v22 == v12)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (!v12)
    {
      goto LABEL_37;
    }

    v22 = 0;
  }

  if (v22 != v12)
  {
    v23 = *v12;
    *v12 = -1;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v19);
    }

    v24 = v12[1];
    if (v24)
    {
      v12[1] = 0;
      *(v12 + 4) = 0;
      WTF::fastFree(v24, v19);
    }

    v25 = v10[2];
    v26 = vadd_s32(*(v25 - 16), 0xFFFFFFFF00000001);
    *(v25 - 16) = v26;
    v22 = *(v25 - 4);
    if (6 * v26.i32[1] < v22 && v22 >= 9)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v10 + 2, v22 >> 1, 0);
    }
  }

LABEL_37:
  result = WebKit::toClientOrigin(&v48, a2, v22);
  if (v54 == 1)
  {
    {
      v29 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v46 = WebKit::WebProcess::operator new(0x370, v28);
      v29 = WebKit::WebProcess::WebProcess(v46);
      WebKit::WebProcess::singleton(void)::process = v29;
    }

    v30 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v29) + 24);
    v32 = IPC::Encoder::operator new(0x238, v31);
    *v32 = 428;
    *(v32 + 68) = 0;
    *(v32 + 70) = 0;
    *(v32 + 69) = 0;
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 1) = 0;
    IPC::Encoder::encodeHeader(v32);
    v47 = v32;
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v32, &v48);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v32, a3);
    IPC::Connection::sendMessageImpl(v30, &v47, 0, 0);
    result = v47;
    v47 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v28);
      result = bmalloc::api::tzoneFree(v44, v45);
    }

    if (v54)
    {
      if (!v53)
      {
        v33 = v52;
        v52 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v28);
        }

        result = v51;
        v51 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v28);
        }
      }

      v53 = -1;
      if (!v50)
      {
        v34 = v49;
        v49 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v28);
        }

        result = v48;
        v48 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v28);
        }
      }
    }
  }

  v35 = v10[2];
  if (!v35 || !*(v35 - 12))
  {
    v36 = *(a1 + 16);
    if (v36)
    {
      v37 = (v36 + 24 * *(v36 - 4));
      if (v37 == v10)
      {
        return result;
      }
    }

    else
    {
      if (!v10)
      {
        return result;
      }

      v37 = 0;
    }

    if (v37 != v10)
    {
      v38 = v10[1];
      v10[1] = 0;
      if (v38)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v38, v28);
      }

      v39 = *v10;
      *v10 = 0;
      if (v39)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v39, v28);
      }

      *v10 = -1;
      v10[1] = -1;
      result = v10[2];
      if (result)
      {
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v28);
      }

      v40 = *(a1 + 16);
      v41 = vadd_s32(*(v40 - 16), 0xFFFFFFFF00000001);
      *(v40 - 16) = v41;
      v42 = *(v40 - 4);
      if (6 * v41.i32[1] < v42 && v42 >= 9)
      {
        return WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::rehash((a1 + 16), v42 >> 1, 0);
      }
    }
  }

  return result;
}

atomic_uint *WebKit::WebBroadcastChannelRegistry::postMessage(uint64_t a1, WTF::StringImpl *a2, const WTF::StringImpl **a3, uint64_t a4, atomic_uint *volatile *a5, uint64_t *a6)
{
  v50 = *MEMORY[0x1E69E9840];
  v12 = WTF::fastMalloc(0x10);
  *v12 = 1;
  v13 = *a6;
  *a6 = 0;
  *(v12 + 8) = v13;
  v14 = *a5;
  atomic_fetch_add(*a5, 1u);
  v43 = v14;
  atomic_fetch_add(v12, 1u);
  v38 = v12;
  WebKit::WebBroadcastChannelRegistry::postMessageLocally(a1, a2, a3, a4, 1u, &v43, &v38);
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12);
  if (v43)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v43);
  }

  WebKit::toClientOrigin(&v43, a2, v15);
  if (v49 != 1)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12);
  }

  {
    v17 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v37 = WebKit::WebProcess::operator new(0x370, v16);
    v17 = WebKit::WebProcess::WebProcess(v37);
    WebKit::WebProcess::singleton(void)::process = v17;
  }

  v18 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v17) + 24);
  v19 = *a5;
  *a5 = 0;
  v39 = 0;
  v40 = 0;
  v38 = v19;
  atomic_fetch_add(v12, 1u);
  v20 = WTF::fastMalloc(0x10);
  *v20 = &unk_1F1130B00;
  v20[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
  {
    v21 = v20;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24 = IPC::Encoder::operator new(0x238, v23);
    *v24 = 426;
    *(v24 + 68) = 0;
    *(v24 + 70) = 0;
    *(v24 + 69) = 0;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 1) = 0;
    IPC::Encoder::encodeHeader(v24);
    v42 = v24;
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v24, &v43);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v24, a3);
    IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(v24, &v38);
    IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v24, &v39);
    v41[0] = v21;
    v41[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v18, &v42, v41, 0, 0);
    v26 = v41[0];
    v41[0] = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v42;
    v42 = 0;
    if (v27)
    {
      IPC::Encoder::~Encoder(v27, v25);
      bmalloc::api::tzoneFree(v35, v36);
    }

    v28 = v39;
    if (v39)
    {
      v39 = 0;
      LODWORD(v40) = 0;
      WTF::fastFree(v28, v25);
    }

    v29 = v38;
    v38 = 0;
    if (v29)
    {
      WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v29);
    }

    if (v49)
    {
      if (!v48)
      {
        v30 = v47;
        v47 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v25);
        }

        v31 = v46;
        v46 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v25);
        }
      }

      v48 = -1;
      if (!v45)
      {
        v32 = v44;
        v44 = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v25);
        }

        v33 = v43;
        v43 = 0;
        if (v33)
        {
          if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, v25);
          }
        }
      }
    }

    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v12);
  }

  result = 141;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::WebBroadcastChannelRegistry::postMessageLocally(uint64_t a1, uint64_t a2, const WTF::StringImpl **a3, uint64_t a4, unsigned __int8 a5, atomic_uint *volatile *a6, atomic_uint *volatile *a7)
{
  result = WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::PartitionedSecurityOrigin,WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashMap<WebCore::PartitionedSecurityOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::PartitionedSecurityOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::PartitionedSecurityOrigin>>,(WTF::ShouldValidateKey)1,WebCore::PartitionedSecurityOrigin>( (a1 + 16),  a2);
  v15 = result;
  v16 = *(a1 + 16);
  if (v16)
  {
    v16 += 24 * *(v16 - 4);
  }

  if (v16 != result)
  {
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::BroadcastChannelIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((result + 16), a3, v14);
    v17 = result;
    v18 = *(v15 + 16);
    if (v18)
    {
      v18 += 24 * *(v18 - 4);
    }

    if (v18 != result)
    {
      v19 = *(result + 20);
      if (v19)
      {
        if (v19 >> 29)
        {
          __break(0xC471u);
        }

        else
        {
          v20 = 8 * v19;
          v21 = WTF::fastMalloc((8 * v19));
          v23 = v21;
          v24 = *(v17 + 20);
          if (v24)
          {
            v25 = *(v17 + 8);
            v26 = 8 * v24;
            v27 = v21;
            do
            {
              v28 = *v25++;
              *v27++ = v28;
              v26 -= 8;
            }

            while (v26);
          }

          v29 = 0;
          do
          {
            if ((a5 & (*(v23 + v29) == a4)) == 0)
            {
              v30 = *a6;
              atomic_fetch_add(*a6, 1u);
              v34 = v30;
              v31 = *a7;
              atomic_fetch_add(*a7, 1u);
              v32 = WTF::fastMalloc(0x10);
              *v32 = &unk_1F1130B28;
              v32[1] = v31;
              v33 = v32;
              WebCore::BroadcastChannel::dispatchMessageTo();
              if (v33)
              {
                (*(*v33 + 8))(v33);
              }

              if (v34)
              {
                WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v34);
              }
            }

            v29 += 8;
          }

          while (v20 != v29);
          return WTF::fastFree(v23, v22);
        }
      }
    }
  }

  return result;
}

atomic_uint *WebKit::WebBroadcastChannelRegistry::postMessageToRemote(uint64_t a1, uint64_t a2, const WTF::StringImpl **a3, atomic_uint *volatile *a4, uint64_t *a5)
{
  v10 = WTF::fastMalloc(0x10);
  *v10 = 1;
  v11 = *a5;
  *a5 = 0;
  *(v10 + 8) = v11;
  WebCore::SecurityOriginData::securityOrigin(&v18, a2);
  WebCore::SecurityOriginData::securityOrigin(&v20, (a2 + 32));
  v19 = v18;
  v12 = *a4;
  atomic_fetch_add(*a4, 1u);
  v17 = v10;
  v18 = v12;
  atomic_fetch_add(v10, 1u);
  WebKit::WebBroadcastChannelRegistry::postMessageLocally(a1, &v19, a3, 0, 0, &v18, &v17);
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v10);
  if (v18)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v18);
  }

  v14 = v20;
  v20 = 0;
  if (v14)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v14, v13);
  }

  v15 = v19;
  v19 = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v15, v13);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v10);
}

WTF::StringImpl *WebKit::WebBroadcastChannelRegistry::networkProcessCrashed(WTF::StringImpl *this)
{
  v28 = *MEMORY[0x1E69E9840];
  add_explicit = *(this + 2);
  if (add_explicit)
  {
    v2 = *(add_explicit - 4);
    v3 = (add_explicit + 24 * v2);
    if (*(add_explicit - 12))
    {
      if (v2)
      {
        v4 = 24 * v2;
        v5 = *(this + 2);
        while ((*v5 + 1) <= 1)
        {
          v5 = (v5 + 24);
          v4 -= 24;
          if (!v4)
          {
            v5 = v3;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v5 = *(this + 2);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    LODWORD(v2) = 0;
  }

  v5 = v3;
  v3 = (add_explicit + 24 * v2);
  if (!add_explicit)
  {
    v6 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v6 = (add_explicit + 24 * *(add_explicit - 4));
LABEL_14:
  if (v6 != v5)
  {
    while (1)
    {
      this = WebKit::toClientOrigin(&v21, v5, add_explicit);
      add_explicit = v27;
      if (v27 == 1)
      {
        break;
      }

      do
      {
LABEL_54:
        v5 = (v5 + 24);
        if (v5 == v3)
        {
          break;
        }

        add_explicit = *v5 + 1;
      }

      while (add_explicit <= 1);
      if (v5 == v6)
      {
        return this;
      }
    }

    v8 = *(v5 + 2);
    if (v8)
    {
      v9 = *(v8 - 4);
      v10 = (v8 + 24 * v9);
      if (*(v8 - 12))
      {
        if (v9)
        {
          v11 = 24 * v9;
          v12 = *(v5 + 2);
          while ((*v12 + 1) <= 1)
          {
            v12 += 3;
            v11 -= 24;
            if (!v11)
            {
              v12 = v10;
              goto LABEL_28;
            }
          }
        }

        else
        {
          v12 = *(v5 + 2);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v10 = 0;
      LODWORD(v9) = 0;
    }

    v12 = v10;
    v10 = (v8 + 24 * v9);
    if (!v8)
    {
      v13 = 0;
LABEL_29:
      if (v13 == v12)
      {
        goto LABEL_40;
      }

      do
      {
        {
          v14 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v17 = WebKit::WebProcess::operator new(0x370, v7);
          v14 = WebKit::WebProcess::WebProcess(v17);
          WebKit::WebProcess::singleton(void)::process = v14;
        }

        v15 = WebKit::WebProcess::ensureNetworkProcessConnection(v14);
        if ((v27 & 1) == 0)
        {
          __break(1u);
        }

        v16 = *(v15 + 24);
        v20[0] = &v21;
        v20[1] = v12;
        this = IPC::Connection::send<Messages::NetworkBroadcastChannelRegistry::RegisterChannel>(v16, v20);
        do
        {
          v12 += 3;
        }

        while (v12 != v10 && (*v12 + 1) <= 1);
      }

      while (v12 != v13);
      add_explicit = v27;
      if (v27)
      {
LABEL_40:
        if (!v26)
        {
          v18 = v25;
          v25 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v7);
          }

          this = v24;
          v24 = 0;
          if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v7);
          }
        }

        v26 = -1;
        add_explicit = v23;
        if (!v23)
        {
          v19 = v22;
          v22 = 0;
          if (v19)
          {
            add_explicit = atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed);
            if (add_explicit == 2)
            {
              WTF::StringImpl::destroy(v19, v7);
            }
          }

          this = v21;
          v21 = 0;
          if (this)
          {
            add_explicit = atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed);
            if (add_explicit == 2)
            {
              this = WTF::StringImpl::destroy(this, v7);
            }
          }
        }
      }

      goto LABEL_54;
    }

LABEL_28:
    v13 = (v8 + 24 * *(v8 - 4));
    goto LABEL_29;
  }

  return this;
}

uint64_t WebKit::AXRelayProcessSuspendedNotification::AXRelayProcessSuspendedNotification(uint64_t a1, uint64_t a2, int a3)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v6 = *(a2 + 24);
  atomic_fetch_add(v6, 1u);
  *a1 = v6;
  *(a1 + 8) = a3;
  if (a3)
  {
    WebKit::AXRelayProcessSuspendedNotification::sendProcessSuspendMessage(a1, 1);
  }

  return a1;
}

void WebKit::AXRelayProcessSuspendedNotification::~AXRelayProcessSuspendedNotification(WebKit::AXRelayProcessSuspendedNotification *this, void *a2)
{
  if (*(this + 8) == 1)
  {
    WebKit::AXRelayProcessSuspendedNotification::sendProcessSuspendMessage(this, 0);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

WebKit::WebChromeClient *WebKit::WebChromeClient::WebChromeClient(WebKit::WebChromeClient *this, WebKit::WebPage *a2)
{
  v4 = WebCore::ChromeClient::ChromeClient(this);
  *v4 = &unk_1F11302A8;
  *(v4 + 8) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v5 = *(a2 + 3);
  atomic_fetch_add(v5, 1u);
  *(this + 2) = v5;
  return this;
}

void WebKit::WebChromeClient::~WebChromeClient(WebKit::WebChromeClient *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  MEMORY[0x1EEE54A58](this);
}

{
  WebKit::WebChromeClient::~WebChromeClient(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::WebChromeClient::setWindowRect(WebKit::WebChromeClient *this, const WebCore::FloatRect *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::sendSetWindowFrame((v3 - 16), a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::focus(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v10 = 1;
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2355;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v11 = v5;
      IPC::Encoder::operator<<<BOOL &>(v5, &v10);
      (*(*(v2 + 16) + 32))(v2 + 16, &v11, 0);
      v7 = v11;
      v11 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebChromeClient::unfocus(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v10 = 0;
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2355;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v11 = v5;
      IPC::Encoder::operator<<<BOOL &>(v5, &v10);
      (*(*(v2 + 16) + 32))(v2 + 16, &v11, 0);
      v7 = v11;
      v11 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebChromeClient::elementDidFocus(uint64_t a1, WebCore::Element *a2, char *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      WebKit::WebPage::elementDidFocus((v4 - 16), a2, a3);
      v7 = *(v4 - 8);

      CFRelease(v7);
    }
  }
}

void WebKit::WebChromeClient::elementDidRefocus(uint64_t a1, WebCore::Element *a2, char *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      WebKit::WebPage::elementDidFocus((v4 - 16), a2, a3);
      if (*(v4 + 880) == 1)
      {
        WebKit::WebPage::scheduleFullEditorStateUpdate((v4 - 16));
      }

      v7 = *(v4 - 8);

      CFRelease(v7);
    }
  }
}

void WebKit::WebChromeClient::elementDidBlur(WebKit::WebChromeClient *this, WebCore::Element *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPage::elementDidBlur(v3 - 16, a2);
      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::focusedElementDidChangeInputMode(uint64_t a1, WebKit *a2, char a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      WebKit::WebPage::focusedElementDidChangeInputMode(v4 - 16, a2, a3);
      v7 = *(v4 - 8);

      CFRelease(v7);
    }
  }
}

void WebKit::WebChromeClient::focusedSelectElementDidChangeOptions(WebKit::WebChromeClient *this, const WebCore::HTMLSelectElement *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      if (*(v3 + 888) == a2)
      {
        WebCore::DeferrableOneShotTimer::restart(v3 + 1472);
      }

      v5 = *(v3 - 8);

      CFRelease(v5);
    }
  }
}

void WebKit::WebChromeClient::makeFirstResponder(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2288;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v10 = v5;
      (*(*(v2 + 16) + 32))(v2 + 16, &v10, 0);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebChromeClient::assistiveTechnologyMakeFirstResponder(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      v3 = (*(*(v2 + 16) + 56))(v2 + 16);
      v5 = IPC::Encoder::operator new(0x238, v4);
      *v5 = 2148;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      *(v5 + 1) = v3;
      *(v5 + 68) = 0;
      *(v5 + 70) = 0;
      *(v5 + 69) = 0;
      IPC::Encoder::encodeHeader(v5);
      v10 = v5;
      (*(*(v2 + 16) + 32))(v2 + 16, &v10, 0);
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        IPC::Encoder::~Encoder(v7, v6);
        bmalloc::api::tzoneFree(v8, v9);
      }

      CFRelease(*(v2 - 8));
    }
  }
}

void WebKit::WebChromeClient::takeFocus(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2399;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v12 = v7;
      v13 = a2;
      IPC::Encoder::operator<<<unsigned char>(v7, &v13);
      (*(*(v3 + 16) + 32))(v3 + 16, &v12, 0);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

void WebKit::WebChromeClient::focusedElementChanged(WebKit::WebChromeClient *this, WebCore::Element *a2)
{
  if (a2 && (*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    *(a2 + 7) += 2;
    if (WebCore::HTMLInputElement::isText(a2))
    {
      v4 = *(*(*(a2 + 6) + 8) + 552);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          ++v5[4];
        }
      }

      else
      {
        v5 = 0;
      }

      WebKit::WebFrame::fromCoreFrame(v5, &v8);
      v6 = *(this + 2);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          CFRetain(*(v7 - 8));
          (*(**(v7 + 360) + 16))(*(v7 + 360), v7 - 16, a2, v8);
          CFRelease(*(v7 - 8));
        }
      }

      if (v8)
      {
        CFRelease(*(v8 + 8));
      }

      if (v5[4] == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[4];
      }
    }

    if (*(a2 + 7) == 2)
    {

      WebCore::Node::removedLastRef(a2);
    }

    else
    {
      *(a2 + 7) -= 2;
    }
  }
}

void WebKit::WebChromeClient::focusedFrameChanged(WebKit::WebChromeClient *this, WebCore::Frame *a2)
{
  v2 = *(this + 2);
  if (v2 && *(v2 + 8))
  {
    if (a2)
    {
      WebKit::WebFrame::fromCoreFrame(a2, &v19);
    }

    else
    {
      v19 = 0;
    }

    {
      v4 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v16 = WebKit::WebProcess::operator new(0x370, a2);
      v4 = WebKit::WebProcess::WebProcess(v16);
      WebKit::WebProcess::singleton(void)::process = v4;
    }

    v5 = v19;
    if (v19)
    {
      v17 = *(v19 + 88);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      LOBYTE(v17) = 0;
    }

    v7 = *(v4 + 5);
    v18 = v6;
    v8 = *(this + 2);
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      v10 = *(v9 + 32);
      v11 = IPC::Encoder::operator new(0x238, a2);
      *v11 = 2257;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 1) = v10;
      *(v11 + 68) = 0;
      *(v11 + 70) = 0;
      *(v11 + 69) = 0;
      IPC::Encoder::encodeHeader(v11);
      v20 = v11;
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v11, &v17);
      IPC::Connection::sendMessageImpl(v7, &v20, 0, 0);
      v13 = v20;
      v20 = 0;
      if (v13)
      {
        IPC::Encoder::~Encoder(v13, v12);
        bmalloc::api::tzoneFree(v14, v15);
      }

      if (v5)
      {
        CFRelease(*(v5 + 8));
      }
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::WebChromeClient::createWindow(WebKit::WebChromeClient *this, WebCore::LocalFrame *a2, const WTF::String *a3, const WebCore::WindowFeatures *a4, const WebCore::NavigationAction *a5)
{
  v5 = MEMORY[0x1EEE9AC00](this);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v6;
  v14 = v5;
  v16 = v15;
  v426[28] = *MEMORY[0x1E69E9840];
  v17 = v6[28];
  if (v17)
  {
    *(v17 + 7) += 2;
    v18 = WebCore::Document::fullscreen(v17);
    WebCore::DocumentFullscreen::fullyExitFullscreen(v18);
    if (*(v17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v17);
    }

    else
    {
      *(v17 + 7) -= 2;
    }
  }

  {
    v19 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, v6);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v19);
  }

  WebKit::WebFrame::fromCoreFrame(v13, &v267);
  v20 = *(v14 + 16);
  if (!v20 || (v21 = *(v20 + 8)) == 0)
  {
    *v16 = 0;
    goto LABEL_179;
  }

  CFRetain(*(v21 - 8));
  v382[0] = v8[868];
  if (v8[445])
  {
    if (v8[442])
    {
      v24 = v8[441] & 1 | 2;
    }

    else
    {
      v24 = v8[441] & 1;
    }

    if (v8[443])
    {
      v24 |= 4u;
    }

    if (v8[444])
    {
      v24 |= 8u;
    }

    if ((v8[440] & 1) == 0)
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v382[1] = v24;
  v25 = v8[476];
  if (v25 == 1)
  {
    if (v8[474] == 1 && v8[448] == 1)
    {
      v144 = WebKit::kit(v8[472]);
      v145 = v8[476];
      v383 = v144;
      if ((v145 & 1) == 0)
      {
        goto LABEL_257;
      }

      goto LABEL_254;
    }

    v25 = 1;
  }

  v383 = -2;
  if (v25)
  {
LABEL_254:
    if (v8[474] == 1 && v8[448] == 1)
    {
      LOBYTE(v25) = v8[473];
      goto LABEL_12;
    }

LABEL_257:
    LOBYTE(v25) = 0;
  }

LABEL_12:
  v384 = v25;
  v26 = v8[224];
  if ((v26 & 1) == 0)
  {
    goto LABEL_259;
  }

  v17 = v16;
  v26 = v382;
  v22 = *(v8 + 19);
  v23 = *(v8 + 20);
  v16 = *(v8 + 60);
  if (v16)
  {
    goto LABEL_260;
  }

  while (1)
  {
    v266 = v16;
    v27 = v19;
    WebKit::WebProcess::userGestureTokenIdentifier(v19, v22, v23, &v266, (v26 | 8));
    v19 = *(v8 + 60);
    if (v19)
    {
      *(v19 + 8) += 2;
      v148 = *(v19 + 96);
      v385 = *(v19 + 80);
      v386 = v148;
    }

    else
    {
      LOBYTE(v385) = 0;
      LOBYTE(v386) = 0;
    }

    v163 = v21;
    canHandleRequest = WebKit::WebPage::canHandleRequest((v8 + 240), v28);
    v388 = v8[871];
    v29 = *(v8 + 61);
    if (v29)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    }

    if (v8[476])
    {
      v30 = *(v8 + 58);
    }

    else
    {
      v30 = 0;
    }

    v389 = v29;
    v390 = v30;
    WebCore::ResourceResponseBase::ResourceResponseBase(&v391);
    v393 = 0;
    v394 = 0;
    v392 = v392 & 0xF1 | 4;
    v395 = v8[876];
    v396 = 0;
    v397 = 0;
    v398 = v8[881] == 1;
    v399 = *(*(v13 + 208) + 402);
    v400 = *(v8 + 877);
    v31 = *v12;
    if (*v12)
    {
      atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
    }

    v401 = v31;
    v407 = 0;
    v408 = 0;
    v409 = 0;
    v410 = 0;
    v411 = 0;
    v402 = 0u;
    v403 = 0u;
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
    v412 = WebCore::LocalFrame::effectiveSandboxFlags(v13);
    v413 = 0;
    v414 = 0;
    v415[0] = 0;
    v416 = 0;
    if (v8[856] == 1)
    {
      WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v415, (v8 + 544));
      v416 = 1;
    }

    v417 = 0;
    v418 = 0;
    v419 = 0;
    v420 = 0;
    v421 = 0;
    v32 = v267;
    WebKit::WebFrame::info(v267, 0, v422);
    v422[44] = *(WebKit::WebFrame::page(v32) + 1832);
    v423 = 1;
    WebKit::WebFrame::info(v32, 0, v424);
    v424[352] = 0;
    v424[360] = 0;
    WebCore::ResourceRequest::ResourceRequest(&v425, (v8 + 240));
    WebCore::ResourceRequest::ResourceRequest(v426, (v8 + 240));
    if (*(WebCore::ResourceRequestBase::url((v8 + 240)) + 8))
    {
      v33 = 0;
    }

    else
    {
      v33 = *WebCore::ResourceRequestBase::url((v8 + 240));
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }
    }

    v426[25] = v33;
    if (v19)
    {
      WTF::RefCounted<WebCore::UserGestureToken>::deref((v19 + 8));
      WTF::RefCounted<WebCore::UserGestureToken>::deref((v19 + 8));
    }

    v266 = 0;
    if (v16)
    {
      WTF::RefCounted<WebCore::UserGestureToken>::deref((v16 + 8));
    }

    v16 = v27;
    v8 = *(v27 + 40);
    IPC::Connection::createSyncMessageEncoder(0x102D, *(v21 + 32), v372);
    v13 = v372[0];
    IPC::ArgumentCoder<WebCore::WindowFeatures,void>::encode(v372[0], v10);
    IPC::ArgumentCoder<WebKit::NavigationActionData,void>::encode(v13, v382);
    v34 = IPC::Connection::sendSyncMessage(v8, v372[1], v372, 4, &v370, INFINITY);
    if (v371)
    {
      if (v371 != 1)
      {
        mpark::throw_bad_variant_access(v34);
      }

      v12 = v17;
      v164[0] = v370;
      v265 = 1;
      goto LABEL_158;
    }

    v10 = v370;
    v370 = 0;
    v12 = v17;
    if (*(v10 + 25) == 3194)
    {
      v164[0] = 11;
      v265 = 1;
LABEL_39:
      IPC::Decoder::~Decoder(v10);
      bmalloc::api::tzoneFree(v35, v36);
      goto LABEL_155;
    }

    LOBYTE(v268) = 0;
    v369 = 0;
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v10, &v373);
    if ((v374 & 1) == 0)
    {
      v149 = *v10;
      v150 = *(v10 + 1);
      *v10 = 0;
      *(v10 + 1) = 0;
      v151 = *(v10 + 3);
      if (!v151 || !v150 || ((*(*v151 + 16))(v151, v149), (v374 & 1) == 0))
      {
LABEL_190:
        v39 = 0;
        v164[0] = 0;
        v264 = 0;
        goto LABEL_191;
      }
    }

    v23 = *(v10 + 1);
    v37 = *(v10 + 2);
    v22 = *v10;
    if (v23 <= &v37[-*v10])
    {
      *v10 = 0;
      *(v10 + 1) = 0;
      v158 = *(v10 + 3);
      if (v158)
      {
        if (v23)
        {
          (*(*v158 + 16))(v158);
          v23 = *(v10 + 1);
        }
      }

      else
      {
        v23 = 0;
      }

LABEL_283:
      *v10 = 0;
      *(v10 + 1) = 0;
      v159 = *(v10 + 3);
      if (v159)
      {
        if (v23)
        {
          (*(*v159 + 16))(v159);
          v22 = *v10;
          v23 = *(v10 + 1);
LABEL_286:
          *v10 = 0;
          *(v10 + 1) = 0;
          v160 = *(v10 + 3);
          if (v160 && v23)
          {
            (*(*v160 + 16))(v160, v22);
          }

          v375[0] = 0;
          v379 = 0;
          v12 = v17;
          v16 = v27;
          goto LABEL_189;
        }
      }

      else
      {
        v23 = 0;
      }

      v22 = 0;
      goto LABEL_286;
    }

    *(v10 + 2) = v37 + 1;
    if (!v37)
    {
      goto LABEL_283;
    }

    v38 = *v37;
    if (v38 >= 2)
    {
      goto LABEL_286;
    }

    if (!v38)
    {
      v375[0] = 0;
      v378 = 0;
      v379 = 1;
      goto LABEL_50;
    }

    IPC::ArgumentCoder<WebKit::WebPageCreationParameters,void>::decode();
    if (v261 & 1) != 0 || (v112 = *v10, v113 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v114 = *(v10 + 3)) != 0) && v113 && ((*(*v114 + 16))(v114, v112), (v261))
    {
      WebKit::WebPageCreationParameters::WebPageCreationParameters(v375, v164);
      v378 = 1;
      v379 = 1;
      if ((v261 & 1) == 0)
      {
        goto LABEL_50;
      }

      WebKit::WebPageCreationParameters::~WebPageCreationParameters(v164, v22);
      if (v379)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v375[0] = 0;
      v379 = 0;
    }

LABEL_189:
    v115 = *v10;
    v116 = *(v10 + 1);
    *v10 = 0;
    *(v10 + 1) = 0;
    v117 = *(v10 + 3);
    if (!v117)
    {
      goto LABEL_190;
    }

    if (!v116)
    {
      goto LABEL_190;
    }

    (*(*v117 + 16))(v117, v115);
    if ((v379 & 1) == 0)
    {
      goto LABEL_190;
    }

LABEL_50:
    v26 = v374;
    if ((v374 & 1) == 0)
    {
      goto LABEL_259;
    }

    *v164 = v373;
    v164[16] = 0;
    v263 = 0;
    if (v378 != 1)
    {
      v264 = 1;
LABEL_57:
      v39 = 1;
      goto LABEL_58;
    }

    WebKit::WebPageCreationParameters::WebPageCreationParameters(&v164[16], v375);
    v263 = 1;
    v264 = 1;
    if ((v379 & 1) == 0 || (v378 & 1) == 0)
    {
      goto LABEL_57;
    }

    WebKit::WebPageCreationParameters::~WebPageCreationParameters(v375, v22);
    v39 = v264;
    if (v264)
    {
      goto LABEL_58;
    }

LABEL_191:
    v22 = *v10;
    v23 = *(v10 + 1);
    *v10 = 0;
    *(v10 + 1) = 0;
    v118 = *(v10 + 3);
    if (v118 && v23)
    {
      (*(*v118 + 16))(v118, v22);
      v39 = v264;
    }

LABEL_58:
    if (v369 == v39)
    {
      if (v369)
      {
        *&v268 = *v164;
        BYTE8(v268) = v164[8];
        if (v368 == v263)
        {
          if (v368)
          {
            v269 = *&v164[16];
            v270 = v165;
            v40 = v168;
            v168 = 0;
            v41 = v169;
            v169 = 0;
            v42 = v271;
            v271 = v166;
            v43 = v272;
            v44 = v167;
            v166 = 0;
            v167 = 0;
            v272 = v44;
            v273 = v40;
            v274 = v41;
            if (v42)
            {
              WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v42, v43);
            }

            v45 = v172;
            v172 = 0;
            v46 = v173;
            v173 = 0;
            v47 = v275;
            v275 = v170;
            v48 = v276;
            v49 = v171;
            v170 = 0;
            v171 = 0;
            v276 = v49;
            v277 = v45;
            v278 = v46;
            if (v47)
            {
              WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v47, v48);
            }

            v279 = v174;
            v50 = v176;
            v176 = 0;
            v51 = v281;
            v280 = v175;
            v281 = v50;
            if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v51, v48);
            }

            v282 = v177;
            v283 = v178;
            if ((v284 & 0x8000000000000) != 0)
            {
              v161 = (v284 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v284 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v161);
                WTF::fastFree(v161, v48);
              }
            }

            v287 = v182;
            v288 = v183;
            v289 = v184;
            v290 = v185;
            v285 = v180;
            v286 = v181;
            v52 = v179;
            v53 = v186;
            v179 = 0;
            v186 = 0;
            v54 = v291;
            v284 = v52;
            v291 = v53;
            if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v54, v48);
            }

            v292 = v187;
            v293 = v188;
            v294 = v189;
            v295 = v190;
            v296 = v191;
            v297[0] = v192[0];
            *(v297 + 13) = *(v192 + 13);
            if (HIDWORD(v299))
            {
              WTF::VectorDestructor<true,WTF::String>::destruct(v298, (v298 + 8 * HIDWORD(v299)));
            }

            v55 = v298;
            if (v298)
            {
              v298 = 0;
              LODWORD(v299) = 0;
              WTF::fastFree(v55, v48);
            }

            v298 = v193;
            *&v56 = v194;
            v193 = 0;
            v194 = 0;
            v299 = v56;
            v306 = v201;
            v307 = v202;
            v302 = v197;
            v303 = v198;
            v304 = v199;
            v305 = v200;
            *(&v56 + 1) = *(&v196 + 1);
            v300 = v195;
            v301 = v196;
            v308 = v203;
            if ((v309 & 0x8000000000000) != 0)
            {
              v162 = (v309 & 0xFFFFFFFFFFFFLL);
              if (atomic_fetch_add((v309 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v162);
                WTF::fastFree(v162, v48);
              }
            }

            v57 = v204;
            v204 = 0;
            v309 = v57;
            v310 = v205;
            if (HIDWORD(v311))
            {
              WTF::VectorDestructor<true,WTF::String>::destruct(v311, (v311 + 8 * HIDWORD(v311)));
            }

            v58 = v311;
            if (v311)
            {
              *&v311 = 0;
              DWORD2(v311) = 0;
              WTF::fastFree(v58, v48);
            }

            *&v56 = 0;
            v59 = v206;
            v206 = v56;
            v311 = v59;
            if (HIDWORD(v312))
            {
              v152 = v312;
              v153 = 8 * HIDWORD(v312);
              do
              {
                WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v152);
                v152 = (v154 + 8);
                v153 -= 8;
              }

              while (v153);
            }

            v60 = v312;
            if (v312)
            {
              *&v312 = 0;
              DWORD2(v312) = 0;
              WTF::fastFree(v60, v48);
            }

            *&v56 = 0;
            v61 = v207;
            v207 = v56;
            v312 = v61;
            if (HIDWORD(v314))
            {
              v155 = v313;
              v156 = 8 * HIDWORD(v314);
              do
              {
                WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v155);
                v155 = (v157 + 8);
                v156 -= 8;
              }

              while (v156);
            }

            v62 = v313;
            if (v313)
            {
              v313 = 0;
              LODWORD(v314) = 0;
              WTF::fastFree(v62, v48);
            }

            v63 = v208;
            *(&v64 + 1) = 0;
            v65 = *(&v208 + 1);
            v208 = 0u;
            v313 = v63;
            v314 = v65;
            v315 = v209;
            v66 = v210;
            v210 = 0;
            v67 = v316;
            v316 = v66;
            if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v67, v48);
            }

            v317 = v211;
            v318 = v212;
            v68 = v213;
            v213 = 0;
            v69 = v319;
            v319 = v68;
            if (v69)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v69, v48);
            }

            if (HIDWORD(v320))
            {
              WTF::VectorDestructor<true,WTF::String>::destruct(v320, (v320 + 8 * HIDWORD(v320)));
            }

            v70 = v320;
            if (v320)
            {
              *&v320 = 0;
              DWORD2(v320) = 0;
              WTF::fastFree(v70, v48);
            }

            *&v64 = 0;
            v71 = v214;
            v214 = v64;
            v320 = v71;
            std::__optional_storage_base<WebCore::ApplicationManifest,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ApplicationManifest,false>>(v321, v215);
            v321[70] = v216;
            v322 = v217;
            if (HIDWORD(v323))
            {
              WTF::VectorDestructor<true,WebCore::TextList>::destruct(v323, (v323 + 24 * HIDWORD(v323)));
            }

            v74 = v323;
            if (v323)
            {
              *&v323 = 0;
              DWORD2(v323) = 0;
              WTF::fastFree(v74, v72);
            }

            *&v73 = 0;
            v75 = v218;
            v218 = v73;
            v323 = v75;
            if (HIDWORD(v324))
            {
              v76 = 104 * HIDWORD(v324);
              v77 = (v324 + 16);
              do
              {
                WebCore::UserScript::~UserScript(v77, v72);
                v77 = (v78 + 104);
                v76 -= 104;
              }

              while (v76);
            }

            v79 = v324;
            if (v324)
            {
              *&v324 = 0;
              DWORD2(v324) = 0;
              WTF::fastFree(v79, v72);
            }

            *&v73 = 0;
            v80 = v219;
            v219 = v73;
            v324 = v80;
            if (HIDWORD(v325))
            {
              WTF::VectorTypeOperations<WebKit::WebUserStyleSheetData>::destruct(v325, (v325 + 120 * HIDWORD(v325)));
            }

            v81 = v325;
            if (v325)
            {
              *&v325 = 0;
              DWORD2(v325) = 0;
              WTF::fastFree(v81, v72);
            }

            *&v73 = 0;
            v82 = v220;
            v220 = v73;
            v325 = v82;
            if (HIDWORD(v326))
            {
              WTF::VectorDestructor<true,WebCore::DOMCacheEngine::CacheInfo>::destruct(v326, (v326 + 24 * HIDWORD(v326)));
            }

            v83 = v326;
            if (v326)
            {
              *&v326 = 0;
              DWORD2(v326) = 0;
              WTF::fastFree(v83, v72);
            }

            *&v73 = 0;
            v84 = v221;
            v221 = v73;
            v326 = v84;
            if (HIDWORD(v327))
            {
              v85 = v327;
              v86 = 120 * HIDWORD(v327);
              v13 = 4294967294;
              do
              {
                v87 = *(v85 + 80);
                *(v85 + 80) = 0;
                if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v87, v72);
                }

                v88 = *(v85 + 8);
                *(v85 + 8) = 0;
                if (v88)
                {
                  WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v88);
                }

                v89 = *v85;
                *v85 = 0;
                if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v89, v72);
                }

                v85 += 120;
                v86 -= 120;
              }

              while (v86);
            }

            v90 = v327;
            if (v327)
            {
              *&v327 = 0;
              DWORD2(v327) = 0;
              WTF::fastFree(v90, v72);
            }

            *&v73 = 0;
            v91 = v222;
            v222 = v73;
            v327 = v91;
            if (v331 == v226)
            {
              if (v331)
              {
                v328 = v223;
                v329 = v224;
                if (HIDWORD(v330))
                {
                  v92 = v330;
                  v93 = 160 * HIDWORD(v330);
                  do
                  {
                    WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v92, v72);
                    v92 = (v94 + 160);
                    v93 -= 160;
                  }

                  while (v93);
                }

                v95 = v330;
                if (v330)
                {
                  *&v330 = 0;
                  DWORD2(v330) = 0;
                  WTF::fastFree(v95, v72);
                }

                *&v73 = 0;
                v96 = v225;
                v225 = v73;
                v330 = v96;
              }
            }

            else if (v331)
            {
              WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v330, v72);
              v331 = 0;
            }

            else
            {
              *&v73 = 0;
              v328 = v223;
              v329 = v224;
              v119 = v225;
              v225 = v73;
              v330 = v119;
              v331 = 1;
            }

            std::__optional_storage_base<WebCore::Color,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::Color,false>>(v332, v227);
            v333 = v228;
            v334 = v229;
            v121 = v230;
            v230 = 0;
            v122 = v335;
            v335 = v121;
            if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v122, v120);
            }

            if (HIDWORD(v336))
            {
              WTF::VectorDestructor<true,WTF::String>::destruct(v336, (v336 + 8 * HIDWORD(v336)));
            }

            v123 = v336;
            if (v336)
            {
              *&v336 = 0;
              DWORD2(v336) = 0;
              WTF::fastFree(v123, v120);
            }

            v124 = v231;
            v231 = 0u;
            v336 = v124;
            v125 = v232;
            v232 = 0;
            v126 = v337;
            v337 = v125;
            if (v126)
            {
              WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v126, v120);
            }

            v338 = v233;
            std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>>(&v339, &v234);
            if (v341 == v236)
            {
              if (v341)
              {
                v340 = v235;
              }
            }

            else if (v341)
            {
              v341 = 0;
            }

            else
            {
              v340 = v235;
              v341 = 1;
            }

            v342 = v237;
            v128 = v238;
            v238 = 0;
            v129 = v343;
            v343 = v128;
            if (v129 && atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v129, v127);
            }

            v344 = v239;
            v345 = v240;
            v8 = v164;
            std::__optional_storage_base<WebKit::RemotePageParameters,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::RemotePageParameters,false>>(v346, v241);
            v348 = v243;
            v349 = v244;
            v350 = v245;
            v351 = v246;
            v347 = v242;
            v130 = v247;
            v247 = 0;
            v131 = v352;
            v352 = v130;
            if (v131 && atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v131, v22);
            }

            *(&v132 + 1) = *(&v248 + 1);
            v353 = v248;
            v354 = v249;
            if (v359 == v254)
            {
              v21 = v163;
              if (v359)
              {
                v355 = v250;
                v356 = v251;
                v357[0] = v252[0];
                *(&v132 + 1) = *(&v252[1] + 2);
                *(v357 + 10) = *(v252 + 10);
                if (HIDWORD(v358))
                {
                  WTF::VectorDestructor<true,WTF::String>::destruct(v358, (v358 + 8 * HIDWORD(v358)));
                }

                v133 = v358;
                if (v358)
                {
                  *&v358 = 0;
                  DWORD2(v358) = 0;
                  WTF::fastFree(v133, v22);
                }

                *&v132 = 0;
                v134 = v253;
                v253 = v132;
                v358 = v134;
              }
            }

            else
            {
              v21 = v163;
              if (v359)
              {
                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v358, v22);
                v359 = 0;
              }

              else
              {
                *&v132 = 0;
                v355 = v250;
                v356 = v251;
                v357[0] = v252[0];
                *(v357 + 10) = *(v252 + 10);
                v135 = v253;
                v253 = v132;
                v358 = v135;
                v359 = 1;
              }
            }

            if (HIDWORD(v360))
            {
              WTF::VectorTypeOperations<WebCore::LinkDecorationFilteringData>::destruct(v360, (v360 + 24 * HIDWORD(v360)));
            }

            v136 = v360;
            if (v360)
            {
              *&v360 = 0;
              DWORD2(v360) = 0;
              WTF::fastFree(v136, v22);
            }

            *&v132 = 0;
            v137 = v255;
            v255 = v132;
            v360 = v137;
            if (HIDWORD(v361))
            {
              WTF::VectorTypeOperations<WebCore::LinkDecorationFilteringData>::destruct(v361, (v361 + 24 * HIDWORD(v361)));
            }

            v138 = v361;
            if (v361)
            {
              *&v361 = 0;
              DWORD2(v361) = 0;
              WTF::fastFree(v138, v22);
            }

            v139 = v256;
            v256 = 0u;
            v361 = v139;
            v140 = v257;
            v257 = 0;
            v141 = v362;
            v362 = v140;
            if (v141)
            {
              WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v141);
              bmalloc::api::tzoneFree(v146, v147);
            }

            v363 = v258;
            v364 = v259;
            v365 = v260;
            v142 = v261;
            v261 = 0;
            v143 = v366;
            v366 = v142;
            if (v143 && atomic_fetch_add_explicit(v143, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v143, v22);
            }

            v367 = v262;
          }
        }

        else if (v368)
        {
          WebKit::WebPageCreationParameters::~WebPageCreationParameters(&v269, v22);
          v368 = 0;
        }

        else
        {
          WebKit::WebPageCreationParameters::WebPageCreationParameters(&v269, &v164[16]);
          v368 = 1;
        }
      }
    }

    else if (v369)
    {
      if (v368 == 1)
      {
        WebKit::WebPageCreationParameters::~WebPageCreationParameters(&v269, v22);
      }

      v369 = 0;
    }

    else
    {
      v268 = *v164;
      LOBYTE(v269) = 0;
      v368 = 0;
      if (v263 == 1)
      {
        WebKit::WebPageCreationParameters::WebPageCreationParameters(&v269, &v164[16]);
        v368 = 1;
      }

      v369 = 1;
    }

    if (v264 == 1 && v263 == 1)
    {
      WebKit::WebPageCreationParameters::~WebPageCreationParameters(&v164[16], v22);
    }

    if (v369 == 1)
    {
      *v375 = v10;
      *&v375[8] = v268;
      LOBYTE(v376[0]) = 0;
      v381 = 0;
      if (v368)
      {
        WebKit::WebPageCreationParameters::WebPageCreationParameters(v376, &v269);
        v381 = 1;
        v97 = *v375;
        *v375 = 0;
        *v164 = v97;
        *&v164[8] = *&v375[8];
        LOBYTE(v165) = 0;
        v264 = 0;
        WebKit::WebPageCreationParameters::WebPageCreationParameters(&v165, v376);
        v264 = 1;
        v265 = 0;
        if (v381)
        {
          WebKit::WebPageCreationParameters::~WebPageCreationParameters(v376, v22);
        }
      }

      else
      {
        *v375 = 0;
        *v164 = v10;
        *&v164[8] = v268;
        LOBYTE(v165) = 0;
        v264 = 0;
        v265 = 0;
      }

      v98 = *v375;
      *v375 = 0;
      v21 = v163;
      if (v98)
      {
        IPC::Decoder::~Decoder(v98);
        bmalloc::api::tzoneFree(v110, v111);
      }

      if ((v369 & 1) != 0 && v368 == 1)
      {
        WebKit::WebPageCreationParameters::~WebPageCreationParameters(&v269, v22);
      }

      goto LABEL_155;
    }

    v164[0] = 14;
    v265 = 1;
    if (v10)
    {
      goto LABEL_39;
    }

LABEL_155:
    if (!v371)
    {
      v99 = v370;
      v370 = 0;
      if (v99)
      {
        IPC::Decoder::~Decoder(v99);
        bmalloc::api::tzoneFree(v106, v107);
      }
    }

LABEL_158:
    v100 = v372[0];
    v372[0] = 0;
    if (v100)
    {
      IPC::Encoder::~Encoder(v100, v22);
      bmalloc::api::tzoneFree(v104, v105);
    }

    if (v265)
    {
      *v12 = 0;
      goto LABEL_178;
    }

    *v375 = *&v164[8];
    v10 = v375;
    v375[16] = 0;
    v380 = 0;
    if (v264 == 1)
    {
      break;
    }

    v26 = v375[8];
    if (v375[8] != 1)
    {
LABEL_170:
      v102 = 0;
      goto LABEL_171;
    }

LABEL_259:
    __break(1u);
LABEL_260:
    ++*(v16 + 8);
  }

  WebKit::WebPageCreationParameters::WebPageCreationParameters(&v375[16], &v165);
  v380 = 1;
  if ((v375[8] & 1) == 0)
  {
    goto LABEL_170;
  }

  v101 = *(v21 + 32);
  if ((v377 & 1) == 0)
  {
    v377 = 1;
  }

  v376[128] = v101;
  WebKit::WebProcess::createWebPage(v16, *v375, &v375[16]);
  v26 = v375[8];
  if ((v375[8] & 1) == 0)
  {
    goto LABEL_259;
  }

  *&v268 = *v375;
  v102 = *(WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v16 + 136), &v268) + 56);
  if (v102)
  {
    ++v102[2];
  }

LABEL_171:
  *v12 = v102;
  if (v380 == 1)
  {
    WebKit::WebPageCreationParameters::~WebPageCreationParameters(&v375[16], v22);
  }

  if (!v265)
  {
    if (v264 == 1)
    {
      WebKit::WebPageCreationParameters::~WebPageCreationParameters(&v165, v22);
    }

    v103 = *v164;
    *v164 = 0;
    if (v103)
    {
      IPC::Decoder::~Decoder(v103);
      bmalloc::api::tzoneFree(v108, v109);
    }
  }

LABEL_178:
  WebKit::NavigationActionData::~NavigationActionData(v382, v22);
  CFRelease(*(v21 - 8));
LABEL_179:
  if (v267)
  {
    CFRelease(v267[1]);
  }
}

uint64_t WebKit::WebChromeClient::testProcessIncomingSyncMessagesWhenWaitingForSyncReply(WebKit::WebChromeClient *this, void *a2)
{
  v2 = *(this + 2);
  if (!v2 || !*(v2 + 8))
  {
    return 0;
  }

  atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 1u);
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v28 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v28);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = WebKit::WebProcess::ensureNetworkProcessConnection(v4);
  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = *(v5 + 24);
      v9 = *(v7 + 1816);
      IPC::Connection::createSyncMessageEncoder(0xFA8, 0, v31);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v31[0], v9);
      v10 = IPC::Connection::sendSyncMessage(v8, v31[1], v31, 0, &v29, INFINITY);
      if (v30)
      {
        if (v30 != 1)
        {
          mpark::throw_bad_variant_access(v10);
        }

        v12 = v29;
        v13 = 1;
LABEL_19:
        v20 = v31[0];
        v31[0] = 0;
        if (v20)
        {
          IPC::Encoder::~Encoder(v20, v11);
          bmalloc::api::tzoneFree(v22, v23);
        }

        v14 = (v13 == 0) & v9;
        if (!v13)
        {
          if (v12)
          {
            IPC::Decoder::~Decoder(v12);
            bmalloc::api::tzoneFree(v26, v27);
          }
        }

        atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 0xFFFFFFFF);
        return v14;
      }

      v12 = v29;
      v29 = 0;
      if (*(v12 + 50) == 3194)
      {
        v15 = 11;
      }

      else
      {
        v18 = IPC::Decoder::decode<std::tuple<BOOL>>(v12);
        if (v18 >= 0x100u)
        {
          LOBYTE(v9) = v18;
          v13 = 0;
          goto LABEL_16;
        }

        v15 = 14;
      }

      IPC::Decoder::~Decoder(v12);
      bmalloc::api::tzoneFree(v16, v17);
      v13 = 1;
      v12 = v15;
LABEL_16:
      if (!v30)
      {
        v19 = v29;
        v29 = 0;
        if (v19)
        {
          IPC::Decoder::~Decoder(v19);
          bmalloc::api::tzoneFree(v24, v25);
        }
      }

      goto LABEL_19;
    }
  }

  result = 121;
  __break(0xC471u);
  return result;
}

void WebKit::WebChromeClient::show(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::show((v2 - 16));
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

uint64_t WebKit::WebChromeClient::canRunModal(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    CFRetain(*(v2 - 8));
    v3 = *(v2 + 753);
    CFRelease(*(v2 - 8));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void WebKit::WebChromeClient::runModal(WebKit::WebChromeClient *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      WebKit::WebPage::runModal(v2 - 16);
      v3 = *(v2 - 8);

      CFRelease(v3);
    }
  }
}

IPC::Encoder *WebKit::WebChromeClient::reportProcessCPUTime(double a1, uint64_t a2, void *a3)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = a3;
    v4 = WebKit::WebProcess::operator new(0x370, a3);
    v12 = WebKit::WebProcess::WebProcess(v4);
    a3 = v11;
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  v5 = a3;
  v6 = IPC::Encoder::operator new(0x238, a3);
  *v6 = 2897;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v6, a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, v5);
  (*(*(v4 + 3) + 32))(v4 + 3, &v13, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WebKit::WebChromeClient::setToolbarsVisible(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v12 = a2;
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2369;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::Encoder::operator<<<BOOL &>(v7, &v12);
      (*(*(v3 + 16) + 32))(v3 + 16, &v13, 0);
      v9 = v13;
      v13 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

BOOL WebKit::WebChromeClient::toolbarsVisible(WebKit::WebChromeClient *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v4 = (*(**(v3 + 384) + 88))(*(v3 + 384), v3 - 16);
      if (v4)
      {
        v1 = v4 == 1;
LABEL_25:
        CFRelease(*(v3 - 8));
        return v1;
      }

      {
        v6 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v25 = WebKit::WebProcess::operator new(0x370, v5);
        v6 = WebKit::WebProcess::WebProcess(v25);
        WebKit::WebProcess::singleton(void)::process = v6;
      }

      v7 = *(v6 + 5);
      IPC::Connection::createSyncMessageEncoder(0x1038, *(v3 + 32), v28);
      v8 = IPC::Connection::sendSyncMessage(v7, v28[1], v28, 0, &v26, INFINITY);
      if (v27)
      {
        if (v27 != 1)
        {
          mpark::throw_bad_variant_access(v8);
        }

        v10 = v26;
        v11 = 1;
        goto LABEL_19;
      }

      v10 = v26;
      v26 = 0;
      if (*(v10 + 50) == 3194)
      {
        v12 = 11;
      }

      else
      {
        v15 = IPC::Decoder::decode<std::tuple<BOOL>>(v10);
        if (v15 >= 0x100u)
        {
          v1 = v15;
          v11 = 0;
          goto LABEL_16;
        }

        v12 = 14;
      }

      IPC::Decoder::~Decoder(v10);
      bmalloc::api::tzoneFree(v13, v14);
      v11 = 1;
      v10 = v12;
LABEL_16:
      if (!v27)
      {
        v16 = v26;
        v26 = 0;
        if (v16)
        {
          IPC::Decoder::~Decoder(v16);
          bmalloc::api::tzoneFree(v21, v22);
        }
      }

LABEL_19:
      v17 = v28[0];
      v28[0] = 0;
      if (v17)
      {
        IPC::Encoder::~Encoder(v17, v9);
        bmalloc::api::tzoneFree(v18, v19);
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else if (v11)
      {
LABEL_21:
        v1 = 1;
        goto LABEL_25;
      }

      if (v10)
      {
        IPC::Decoder::~Decoder(v10);
        bmalloc::api::tzoneFree(v23, v24);
      }

      goto LABEL_25;
    }
  }

  return 0;
}

void WebKit::WebChromeClient::setStatusbarVisible(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v12 = a2;
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2367;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::Encoder::operator<<<BOOL &>(v7, &v12);
      (*(*(v3 + 16) + 32))(v3 + 16, &v13, 0);
      v9 = v13;
      v13 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

BOOL WebKit::WebChromeClient::statusbarVisible(WebKit::WebChromeClient *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v4 = (*(**(v3 + 384) + 72))(*(v3 + 384), v3 - 16);
      if (v4)
      {
        v1 = v4 == 1;
LABEL_25:
        CFRelease(*(v3 - 8));
        return v1;
      }

      {
        v6 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v25 = WebKit::WebProcess::operator new(0x370, v5);
        v6 = WebKit::WebProcess::WebProcess(v25);
        WebKit::WebProcess::singleton(void)::process = v6;
      }

      v7 = *(v6 + 5);
      IPC::Connection::createSyncMessageEncoder(0x1037, *(v3 + 32), v28);
      v8 = IPC::Connection::sendSyncMessage(v7, v28[1], v28, 0, &v26, INFINITY);
      if (v27)
      {
        if (v27 != 1)
        {
          mpark::throw_bad_variant_access(v8);
        }

        v10 = v26;
        v11 = 1;
        goto LABEL_19;
      }

      v10 = v26;
      v26 = 0;
      if (*(v10 + 50) == 3194)
      {
        v12 = 11;
      }

      else
      {
        v15 = IPC::Decoder::decode<std::tuple<BOOL>>(v10);
        if (v15 >= 0x100u)
        {
          v1 = v15;
          v11 = 0;
          goto LABEL_16;
        }

        v12 = 14;
      }

      IPC::Decoder::~Decoder(v10);
      bmalloc::api::tzoneFree(v13, v14);
      v11 = 1;
      v10 = v12;
LABEL_16:
      if (!v27)
      {
        v16 = v26;
        v26 = 0;
        if (v16)
        {
          IPC::Decoder::~Decoder(v16);
          bmalloc::api::tzoneFree(v21, v22);
        }
      }

LABEL_19:
      v17 = v28[0];
      v28[0] = 0;
      if (v17)
      {
        IPC::Encoder::~Encoder(v17, v9);
        bmalloc::api::tzoneFree(v18, v19);
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else if (v11)
      {
LABEL_21:
        v1 = 1;
        goto LABEL_25;
      }

      if (v10)
      {
        IPC::Decoder::~Decoder(v10);
        bmalloc::api::tzoneFree(v23, v24);
      }

      goto LABEL_25;
    }
  }

  return 0;
}

void WebKit::WebChromeClient::setMenubarVisible(WebKit::WebChromeClient *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v12 = a2;
      v5 = (*(*(v3 + 16) + 56))(v3 + 16);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 2360;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::Encoder::operator<<<BOOL &>(v7, &v12);
      (*(*(v3 + 16) + 32))(v3 + 16, &v13, 0);
      v9 = v13;
      v13 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v10, v11);
      }

      CFRelease(*(v3 - 8));
    }
  }
}

BOOL WebKit::WebChromeClient::menubarVisible(WebKit::WebChromeClient *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      v4 = (*(**(v3 + 384) + 80))(*(v3 + 384), v3 - 16);
      if (v4)
      {
        v1 = v4 == 1;
LABEL_25:
        CFRelease(*(v3 - 8));
        return v1;
      }

      {
        v6 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v25 = WebKit::WebProcess::operator new(0x370, v5);
        v6 = WebKit::WebProcess::WebProcess(v25);
        WebKit::WebProcess::singleton(void)::process = v6;
      }

      v7 = *(v6 + 5);
      IPC::Connection::createSyncMessageEncoder(0x1036, *(v3 + 32), v28);
      v8 = IPC::Connection::sendSyncMessage(v7, v28[1], v28, 0, &v26, INFINITY);
      if (v27)
      {
        if (v27 != 1)
        {
          mpark::throw_bad_variant_access(v8);
        }

        v10 = v26;
        v11 = 1;
        goto LABEL_19;
      }

      v10 = v26;
      v26 = 0;
      if (*(v10 + 50) == 3194)
      {
        v12 = 11;
      }

      else
      {
        v15 = IPC::Decoder::decode<std::tuple<BOOL>>(v10);
        if (v15 >= 0x100u)
        {
          v1 = v15;
          v11 = 0;
          goto LABEL_16;
        }

        v12 = 14;
      }

      IPC::Decoder::~Decoder(v10);
      bmalloc::api::tzoneFree(v13, v14);
      v11 = 1;
      v10 = v12;
LABEL_16:
      if (!v27)
      {
        v16 = v26;
        v26 = 0;
        if (v16)
        {
          IPC::Decoder::~Decoder(v16);
          bmalloc::api::tzoneFree(v21, v22);
        }
      }

LABEL_19:
      v17 = v28[0];
      v28[0] = 0;
      if (v17)
      {
        IPC::Encoder::~Encoder(v17, v9);
        bmalloc::api::tzoneFree(v18, v19);
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else if (v11)
      {
LABEL_21:
        v1 = 1;
        goto LABEL_25;
      }

      if (v10)
      {
        IPC::Decoder::~Decoder(v10);
        bmalloc::api::tzoneFree(v23, v24);
      }

      goto LABEL_25;
    }
  }

  return 0;
}