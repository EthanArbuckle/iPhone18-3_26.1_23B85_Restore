uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::PrivateClickMeasurementManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::PrivateClickMeasurementManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
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

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::storeUnattributed(WebCore::PrivateClickMeasurement &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PrivateClickMeasurement &,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11072C8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::storeUnattributed(WebCore::PrivateClickMeasurement &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PrivateClickMeasurement &,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11072C8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::storeUnattributed(WebCore::PrivateClickMeasurement &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PrivateClickMeasurement &,WTF::String const&>::call(WTF::StringImpl *result, WebCore::PrivateClickMeasurement *this, WTF::String *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(result + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++*(v4 + 8);
      if (!*a3 || !*(*a3 + 4))
      {
LABEL_80:
        if (*(v4 + 8) == 1)
        {
          return (*(*v4 + 8))(v4, this);
        }

        --*(v4 + 8);
        return result;
      }

      if (*(v4 + 368) == 1)
      {
        v6 = *(v4 + 304);
        if (v6)
        {
          atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        }

        v7 = *(this + 33);
        *(this + 33) = v6;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, this);
        }
      }

      else
      {
        WebCore::PrivateClickMeasurement::calculateAndUpdateSourceUnlinkableToken(&v51, this, a3);
        if (v52 == 1)
        {
          v8 = qword_1ED640FE0;
          if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
          {
            WTF::String::utf8();
            if (v55)
            {
              v9 = v55 + 16;
            }

            else
            {
              v9 = 0;
            }

            *buf = 136446210;
            *&buf[4] = v9;
            _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_INFO, "Got the following error in calculateAndUpdateSourceUnlinkableToken(): '%{public}s", buf, 0xCu);
            v11 = v55;
            v55 = 0;
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

            if ((v52 & 1) == 0)
            {
              __break(1u);
            }
          }

          v12 = *(v4 + 208);
          v13 = v51;
          if (v51)
          {
            atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
          }

          v50 = v13;
          *buf = "[Private Click Measurement] ";
          *&buf[8] = 29;
          result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(buf, &v50, &v55);
          if (!v55)
          {
            __break(0xC471u);
            return result;
          }

          (*(*v12 + 16))(v12, 2, &v55);
          v14 = v55;
          v55 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, this);
          }

          result = v50;
          v50 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, this);
          }

          if (v52 != 1)
          {
            goto LABEL_80;
          }

          result = v51;
          v51 = 0;
          if (!result)
          {
            goto LABEL_80;
          }

LABEL_49:
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, this);
          }

          goto LABEL_80;
        }
      }

      result = (*(**(v4 + 208) + 24))(*(v4 + 208));
      if (!result)
      {
        goto LABEL_80;
      }

      v57 = 0;
      v55 = 0;
      WTF::URL::invalidate(&v55);
      WebCore::PrivateClickMeasurement::tokenSignatureURL(buf, this);
      LOBYTE(v51) = 0;
      v54 = 0;
      if (buf[40] == 1)
      {
        v15 = *buf;
        if (*buf)
        {
          atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
        }

        v51 = v15;
        v52 = *&buf[8];
        v53 = *&buf[24];
        v54 = 1;
      }

      WebKit::PrivateClickMeasurementManager::configureForTokenSigning(v4, &v57, &v55, &v51);
      if (v54 == 1)
      {
        v16 = v51;
        v51 = 0;
        if (v16)
        {
          if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, this);
          }
        }
      }

      if (buf[40] == 1)
      {
        v17 = *buf;
        *buf = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, this);
          }
        }
      }

      result = v55;
      if (!v55)
      {
        goto LABEL_80;
      }

      if (*(v55 + 1) && (v56 & 1) != 0)
      {
        v18 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_INFO, "About to fire a unlinkable token signing request for the click source.", buf, 2u);
        }

        v19 = *(v4 + 208);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v50 = *buf;
        (*(*v19 + 16))(v19, 0, &v50);
        v21 = v50;
        v50 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v20);
        }

        WebCore::PrivateClickMeasurement::tokenSignatureJSON(&v49, this);
        v22 = v49;
        v49 = 0;
        v50 = v22;
        v23 = v57;
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 16), v4);
        v24 = *(v4 + 16);
        atomic_fetch_add(v24, 1u);
        *buf = v24;
        buf[8] = *this;
        v25 = *(this + 8);
        *(this + 1) = 0;
        *(this + 2) = 0;
        v26 = *(this + 24);
        *&buf[16] = v25;
        *&buf[32] = v26;
        *&buf[41] = *(this + 33);
        v59[0] = 0;
        v60 = 0;
        if (*(this + 184) == 1)
        {
          std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v59, this + 56);
        }

        v27 = *(this + 13);
        v61 = *(this + 12);
        v62 = v27;
        LOBYTE(v63) = 0;
        v64 = 0;
        if (*(this + 232) == 1)
        {
          v28 = *(this + 28);
          *(this + 28) = 0;
          v63 = v28;
          v64 = 1;
        }

        v29 = *(this + 16);
        v65 = *(this + 15);
        *(this + 15) = 0u;
        *(this + 16) = 0u;
        v66 = v29;
        LOBYTE(v67) = 0;
        v69 = 0;
        if (*(this + 296) == 1)
        {
          v30 = *(this + 17);
          *(this + 34) = 0;
          *(this + 35) = 0;
          v67 = v30;
          v31 = *(this + 36);
          *(this + 36) = 0;
          v68 = v31;
          v69 = 1;
        }

        v32 = *(this + 38);
        *(this + 38) = 0;
        v70 = v32;
        v33 = WTF::fastMalloc(0x148);
        *v33 = &unk_1F1107340;
        *(v33 + 8) = *buf;
        *(v33 + 16) = buf[8];
        *(v33 + 24) = *&buf[16];
        v34 = *&buf[24];
        *buf = 0;
        *&buf[16] = 0;
        *&buf[24] = 0;
        *(v33 + 32) = v34;
        v35 = *&buf[32];
        *(v33 + 49) = *&buf[41];
        *(v33 + 40) = v35;
        *(v33 + 72) = 0;
        *(v33 + 200) = 0;
        if (v60 == 1)
        {
          std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v33 + 72, v59);
        }

        v36 = v62;
        *(v33 + 208) = v61;
        *(v33 + 224) = v36;
        *(v33 + 240) = 0;
        *(v33 + 248) = 0;
        if (v64 == 1)
        {
          v37 = v63;
          v63 = 0;
          *(v33 + 240) = v37;
          *(v33 + 248) = 1;
        }

        *(v33 + 256) = v65;
        v38 = *(&v65 + 1);
        v65 = 0u;
        *(v33 + 264) = v38;
        *(v33 + 272) = v66;
        v39 = *(&v66 + 1);
        v66 = 0u;
        *(v33 + 280) = v39;
        *(v33 + 288) = 0;
        *(v33 + 312) = 0;
        if (v69 == 1)
        {
          *(v33 + 288) = v67;
          v40 = *(&v67 + 1);
          v67 = 0uLL;
          *(v33 + 296) = v40;
          v41 = v68;
          v68 = 0;
          *(v33 + 304) = v41;
          *(v33 + 312) = 1;
        }

        v42 = v70;
        v70 = 0;
        *(v33 + 320) = v42;
        v48 = v33;
        WebKit::PCM::NetworkLoader::start(&v55, &v50, v23, &v48);
        v44 = v48;
        v48 = 0;
        if (v44)
        {
          (*(*v44 + 8))(v44);
        }

        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&buf[8], v43);
        v45 = *buf;
        *buf = 0;
        if (v45 && atomic_fetch_add(v45, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v45);
          WTF::fastFree(v45, this);
        }

        v46 = v50;
        v50 = 0;
        if (v46)
        {
          if (*v46 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v46;
          }
        }

        v47 = v49;
        v49 = 0;
        if (v47)
        {
          if (*v47 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v47;
          }
        }

        result = v55;
        v55 = 0;
        if (!result)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v55 = 0;
      }

      goto LABEL_49;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getTokenPublicKey(WebCore::PrivateClickMeasurement &&,WebCore::PCM::AttributionReportEndpoint,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::Function<void ()(WebCore::PrivateClickMeasurement &,WTF::String const&)> &&)::$_0,void,WTF::String const,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11072F0;
  v3 = a1[41];
  a1[41] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getTokenPublicKey(WebCore::PrivateClickMeasurement &&,WebCore::PCM::AttributionReportEndpoint,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::Function<void ()(WebCore::PrivateClickMeasurement &,WTF::String const&)> &&)::$_0,void,WTF::String const,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11072F0;
  v3 = a1[41];
  a1[41] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return WTF::fastFree(a1, v4);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getTokenPublicKey(WebCore::PrivateClickMeasurement &&,WebCore::PCM::AttributionReportEndpoint,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::Function<void ()(WebCore::PrivateClickMeasurement &,WTF::String const&)> &&)::$_0,void,WTF::String const,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> const&>::call(WTF::StringImpl *result, atomic_uint **a2, WTF::JSONImpl::ObjectBase **a3)
{
  v3 = *(result + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v7 = result;
      result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 16), *(v3 + 8));
      v9 = *(v4 + 16);
      if (v9)
      {
        atomic_fetch_add(v9, 1u);
        v10 = *(v9 + 8);
        if (!v10)
        {
LABEL_21:
          if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v9);
            return WTF::fastFree(v9, v8);
          }

          return result;
        }

        v11 = *a2;
        if (*a2)
        {
          v12 = *(v10 + 208);
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
          v18 = v11;
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[Private Click Measurement] Received error: '", 46, &v18, "' for token public key request.", 32, &v19);
          (*(*v12 + 16))(v12, 2, &v19);
LABEL_13:
          v17 = v19;
          v19 = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v8);
          }

          goto LABEL_18;
        }

        v13 = *(v10 + 208);
        if (*a3)
        {
          v19 = "[Private Click Measurement] Got JSON response for token public key request.";
          v20 = 76;
          WTF::tryMakeString<WTF::ASCIILiteral>(&v19, &v18);
          if (v18)
          {
            (*(*v13 + 16))(v13, 0, &v18);
            v15 = v18;
            v18 = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v14);
            }

            v16 = *a3;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WTF::JSONImpl::ObjectBase::getString(&v19, v16, &v18);
            (*(**(v7 + 41) + 16))(*(v7 + 41), v7 + 16, &v19);
            goto LABEL_13;
          }
        }

        else
        {
          v19 = "[Private Click Measurement] JSON response is empty for token public key request.";
          v20 = 81;
          WTF::tryMakeString<WTF::ASCIILiteral>(&v19, &v18);
          if (v18)
          {
            (*(*v13 + 16))(v13, 2, &v18);
LABEL_18:
            result = v18;
            v18 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v8);
            }

            goto LABEL_21;
          }
        }

        __break(0xC471u);
        JUMPOUT(0x19DD59678);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getTokenPublicKey(WebCore::PCM::AttributionTriggerData &&,WebCore::PCM::AttributionReportEndpoint,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::Function<void ()(WebCore::PCM::AttributionTriggerData &,WTF::String const&)> &&)::$_0,void,WTF::String const,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107318;
  v3 = a1[18];
  a1[18] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getTokenPublicKey(WebCore::PCM::AttributionTriggerData &&,WebCore::PCM::AttributionReportEndpoint,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::Function<void ()(WebCore::PCM::AttributionTriggerData &,WTF::String const&)> &&)::$_0,void,WTF::String const,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107318;
  v3 = a1[18];
  a1[18] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((a1 + 2), a2);
  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  return WTF::fastFree(a1, v4);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getTokenPublicKey(WebCore::PCM::AttributionTriggerData &&,WebCore::PCM::AttributionReportEndpoint,WebCore::PrivateClickMeasurement::PcmDataCarried,WTF::Function<void ()(WebCore::PCM::AttributionTriggerData &,WTF::String const&)> &&)::$_0,void,WTF::String const,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> const&>::call(WTF::StringImpl *result, atomic_uint **a2, WTF::JSONImpl::ObjectBase **a3)
{
  v3 = *(result + 1);
  if (!v3)
  {
    return result;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return result;
  }

  ++*(v4 + 8);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v4 + 208);
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    v15 = v5;
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[Private Click Measurement] Received error: '", 46, &v15, "' for token public key request.", 32, &v16);
    (*(*v6 + 16))(v6, 2, &v16);
LABEL_11:
    v14 = v16;
    v16 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v7);
    }

    goto LABEL_16;
  }

  v9 = *(v4 + 208);
  if (*a3)
  {
    v10 = result;
    v16 = "[Private Click Measurement] Got JSON response for token public key request.";
    v17 = 76;
    WTF::tryMakeString<WTF::ASCIILiteral>(&v16, &v15);
    if (v15)
    {
      (*(*v9 + 16))(v9, 0, &v15);
      v12 = v15;
      v15 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

      v13 = *a3;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::ObjectBase::getString(&v16, v13, &v15);
      (*(**(v10 + 18) + 16))(*(v10 + 18), v10 + 16, &v16);
      goto LABEL_11;
    }

LABEL_23:
    __break(0xC471u);
    JUMPOUT(0x19DD59A44);
  }

  v16 = "[Private Click Measurement] JSON response is empty for token public key request.";
  v17 = 81;
  WTF::tryMakeString<WTF::ASCIILiteral>(&v16, &v15);
  if (!v15)
  {
    goto LABEL_23;
  }

  (*(*v9 + 16))(v9, 2, &v15);
LABEL_16:
  result = v15;
  v15 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
  }

  if (*(v4 + 8) == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --*(v4 + 8);
  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!(v6 >> 31))
  {
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v6, 1, *a1, v6, a2);
  }

  result = 161;
  __break(0xC471u);
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _OWORD *a3@<X2>, size_t a4@<X3>, void *a5@<X8>)
{
  v7 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v9 = v20;
        if (v20)
        {
          result = v20 + 20;
          *v20 = 2;
          *(v20 + 4) = v7;
          *(v20 + 8) = v20 + 20;
          *(v20 + 16) = 4;
          if (a4)
          {
            if (a4 == 1)
            {
              *result = *a3;
            }

            else
            {
              result = memcpy(result, a3, a4);
            }
          }
        }

        goto LABEL_19;
      }

LABEL_10:
      v9 = 0;
      goto LABEL_19;
    }

LABEL_11:
    v9 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_19;
  }

  if (!result)
  {
    goto LABEL_11;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_10;
  }

  result = WTF::tryFastCompactMalloc(((2 * result) + 20));
  v9 = v20;
  if (v20)
  {
    v10 = (v20 + 20);
    *v20 = 2;
    *(v20 + 4) = v7;
    *(v20 + 8) = v20 + 20;
    *(v20 + 16) = 0;
    if (a4 >= 0x40)
    {
      v11 = &v10[2 * (a4 & 0x7FFFFFFFFFFFFFC0)];
      v12 = 0uLL;
      do
      {
        v21.val[0] = *a3;
        v13 = *(a3 + 1);
        v22.val[0] = a3[2];
        v14 = a3[3];
        a3 += 4;
        v15 = v14;
        v22.val[1] = 0uLL;
        v23.val[0] = v13;
        v21.val[1] = 0uLL;
        v16 = v10;
        vst2q_s8(v16, v21);
        v16 += 32;
        v23.val[1] = 0uLL;
        vst2q_s8(v16, v23);
        v17 = v10 + 64;
        vst2q_s8(v17, v22);
        v18 = v10 + 96;
        vst2q_s8(v18, *(&v12 - 1));
        v10 += 128;
      }

      while (v10 != v11);
      v10 = v11;
    }

    while (v10 != (v20 + 20 + 2 * a4))
    {
      v19 = *a3;
      a3 = (a3 + 1);
      *v10 = v19;
      v10 += 2;
    }
  }

LABEL_19:
  *a5 = v9;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForSource(WebCore::PrivateClickMeasurement &&)::$_0,void,WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107340;
  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForSource(WebCore::PrivateClickMeasurement &&)::$_0,void,WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107340;
  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

NSObject *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForSource(WebCore::PrivateClickMeasurement &&)::$_0,void,WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl>,WTF::DefaultRefDerefTraits<WTF::JSONImpl>> const&>::call(NSObject *result, atomic_uint **a2, WTF::JSONImpl::ObjectBase **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  isa = result[1].isa;
  if (isa)
  {
    v4 = *(isa + 1);
    if (v4)
    {
      v7 = result;
      result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 16), *(isa + 1));
      v8 = *(v4 + 16);
      if (v8)
      {
        atomic_fetch_add(v8, 1u);
        v9 = *(v8 + 8);
        if (!v9)
        {
LABEL_63:
          if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v8);
            return WTF::fastFree(v8, v9);
          }

          return result;
        }

        result = WebKit::PrivateClickMeasurementManager::getSignatureBase64URLFromTokenSignatureResponse(&v34, v9, *a2, *a3);
        if (v35 != 1)
        {
LABEL_59:
          if (v35 == 1)
          {
            result = v34;
            v34 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v9);
              }
            }
          }

          goto LABEL_63;
        }

        v10 = *(v8 + 8);
        if (v10)
        {
          if (*(v10 + 368) == 1)
          {
            v11 = *(v10 + 312);
            if (v11)
            {
              atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
              v10 = *(v8 + 8);
              *&buf = v11;
              if (!v10)
              {
                __break(0xC471u);
                JUMPOUT(0x19DD5A1DCLL);
              }

              if ((*(v10 + 368) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else
            {
              *&buf = 0;
            }

            v18 = *(v10 + 320);
            if (!v18)
            {
LABEL_40:
              *(&buf + 1) = 0;
LABEL_41:
              v19 = *(v10 + 328);
              if (v19)
              {
                atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
              }

              v37 = v19;
              WebCore::PrivateClickMeasurement::setSourceSecretToken();
              v21 = v37;
              v37 = 0;
              if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v20);
              }

              v22 = *(&buf + 1);
              *(&buf + 1) = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v20);
              }

              v23 = buf;
              *&buf = 0;
              if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v20);
              }

              goto LABEL_52;
            }

            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
            v10 = *(v8 + 8);
            *(&buf + 1) = v18;
            if (!v10)
            {
              __break(0xC471u);
              JUMPOUT(0x19DD5A1FCLL);
            }

            if (*(v10 + 368))
            {
              goto LABEL_41;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          WebCore::PrivateClickMeasurement::calculateAndUpdateSourceSecretToken(&v32, &v7[2], &v34);
          if (v33 != 1)
          {
LABEL_52:
            v24 = *(v8 + 8);
            if (!v24)
            {
              __break(0xC471u);
              JUMPOUT(0x19DD5A19CLL);
            }

            v25 = *(v24 + 208);
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            (*(*v25 + 16))(v25, 0, &buf);
            v27 = buf;
            *&buf = 0;
            if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v26);
            }

            v28 = *(v8 + 8);
            if (!v28)
            {
              __break(0xC471u);
              JUMPOUT(0x19DD5A1BCLL);
            }

            v29 = WTF::fastMalloc(0x10);
            *v29 = &unk_1F1107368;
            *&buf = v29;
            WebKit::PrivateClickMeasurementManager::insertPrivateClickMeasurement(v28, &v7[2], &buf);
            result = buf;
            *&buf = 0;
            if (result)
            {
              result = (*(result->isa + 1))(result);
            }

            goto LABEL_59;
          }

          v7 = qword_1ED640FE0;
          if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
          {
            WTF::String::utf8();
            v12 = v31 ? v31 + 16 : 0;
            LODWORD(buf) = 136446210;
            *(&buf + 4) = v12;
            _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_INFO, "Got the following error in calculateAndUpdateSourceSecretToken(): '%{public}s", &buf, 0xCu);
            v14 = v31;
            v31 = 0;
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
          }

          v10 = *(v8 + 8);
          if (!v10)
          {
            __break(0xC471u);
            JUMPOUT(0x19DD5A21CLL);
          }

          if ((v33 & 1) == 0)
          {
            goto LABEL_39;
          }

          v15 = *(v10 + 208);
          v16 = v32;
          if (v32)
          {
            atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
          }

          v30 = v16;
          *&buf = "[Private Click Measurement] ";
          *(&buf + 1) = 29;
          WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&buf, &v30, &v31);
          if (v31)
          {
            (*(*v15 + 16))(v15, 2, &v31);
            v17 = v31;
            v31 = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v9);
            }

            result = v30;
            v30 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v9);
            }

            if (v33 == 1)
            {
              result = v32;
              v32 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v9);
                }
              }
            }

            goto LABEL_59;
          }

          __break(0xC471u);
        }

        else
        {
          __break(0xC471u);
        }

        JUMPOUT(0x19DD5A17CLL);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0,void,WebCore::PCM::AttributionTriggerData &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0>,WTF::DefaultRefDerefTraits<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0>> const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107390;
  v3 = a1[20];
  a1[20] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((a1 + 4), a2);
  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0,void,WebCore::PCM::AttributionTriggerData &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0>,WTF::DefaultRefDerefTraits<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0>> const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107390;
  v3 = a1[20];
  a1[20] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  WebCore::PCM::AttributionTriggerData::~AttributionTriggerData((a1 + 4), a2);
  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v4);
  }

  return WTF::fastFree(a1, v4);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0,void,WebCore::PCM::AttributionTriggerData &&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0>,WTF::DefaultRefDerefTraits<WebKit::PrivateClickMeasurementManager::getSignedUnlinkableTokenForDestination(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0>> const&>::call(atomic_uint *volatile result, atomic_uint **a2, WTF::JSONImpl::ObjectBase **a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(result + 1);
  if (!v3)
  {
    return result;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  ++*(v4 + 8);
  result = WebKit::PrivateClickMeasurementManager::getSignatureBase64URLFromTokenSignatureResponse(&v34, v4, *a2, *a3);
  if (v35 == 1)
  {
    if (v5[30])
    {
      updated = WebCore::PrivateClickMeasurement::calculateAndUpdateDestinationSecretToken();
      if (v33)
      {
        if (v33 != 1)
        {
          mpark::throw_bad_variant_access(updated);
        }

        v8 = *buf;
        if (*buf && *(*buf + 4))
        {
          atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v8 = v36;
        }

        v29 = v8;
        v17 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          if (v28)
          {
            v18 = v28 + 16;
          }

          else
          {
            v18 = 0;
          }

          LODWORD(v36) = 136446210;
          *(&v36 + 4) = v18;
          _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_INFO, "Got the following error in calculateAndUpdateSourceSecretToken(): '%{public}s", &v36, 0xCu);
          v20 = v28;
          v28 = 0;
          if (v20)
          {
            if (*v20 == 1)
            {
              WTF::fastFree(v20, v19);
            }

            else
            {
              --*v20;
            }
          }

          v8 = v29;
        }

        v21 = *(v4 + 208);
        if (v8)
        {
          atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        }

        v27 = v8;
        *&v36 = "[Private Click Measurement] ";
        *(&v36 + 1) = 29;
        result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&v36, &v27, &v28);
        if (!v28)
        {
          __break(0xC471u);
          return result;
        }

        (*(*v21 + 16))(v21, 2, &v28);
        v22 = v28;
        v28 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v6);
        }

        v23 = v27;
        v27 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v6);
        }

        result = v29;
        v29 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }
      }

      else
      {
        v11 = *(v4 + 208);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        (*(*v11 + 16))(v11, 0, &v36);
        v13 = v36;
        *&v36 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }

        if (*(v5 + 152) == 1)
        {
          if (*buf)
          {
            atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
          }

          v14 = *(v5 + 16);
          *(v5 + 16) = *buf;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v12);
          }

          if (v31)
          {
            atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          }

          v15 = *(v5 + 17);
          *(v5 + 17) = v31;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v12);
          }

          if (v32)
          {
            atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
          }

          v16 = *(v5 + 18);
          *(v5 + 18) = v32;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v12);
          }
        }

        else
        {
          if (*buf)
          {
            atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
          }

          *(v5 + 16) = *buf;
          if (v31)
          {
            atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          }

          *(v5 + 17) = v31;
          if (v32)
          {
            atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
          }

          *(v5 + 18) = v32;
          *(v5 + 152) = 1;
        }

        if (*(v4 + 184))
        {
          v24 = v4 + 176;
        }

        else
        {
          v24 = (v5 + 40);
        }

        result = WebKit::PrivateClickMeasurementManager::attribute(v4, (v5 + 4), (v5 + 6), (v5 + 8), v24);
      }

      if (v33 == 255)
      {
        goto LABEL_75;
      }

      if (!v33)
      {
        v25 = v32;
        v32 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v6);
        }

        v26 = v31;
        v31 = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v6);
        }
      }
    }

    else
    {
      v9 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_INFO, "Destination unlinkable token is missing.", buf, 2u);
      }

      v10 = *(v4 + 208);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      (*(*v10 + 16))(v10, 2, buf);
    }

    result = *buf;
    *buf = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v6);
    }
  }

LABEL_75:
  if (v35 == 1)
  {
    result = v34;
    v34 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  if (*(v4 + 8) == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --*(v4 + 8);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::handleAttribution(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::RegistrableDomain &&,WTF::URL const,WTF::String const&)::$_0,void,WebCore::PCM::AttributionTriggerData &,WTF::String>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11073E0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::handleAttribution(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::RegistrableDomain &&,WTF::URL const,WTF::String const&)::$_0,void,WebCore::PCM::AttributionTriggerData &,WTF::String>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11073E0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::handleAttribution(WebCore::PCM::AttributionTriggerData &&,WTF::URL const&,WebCore::RegistrableDomain &&,WTF::URL const,WTF::String const&)::$_0,void,WebCore::PCM::AttributionTriggerData &,WTF::String>::call(uint64_t a1, uint64_t a2, WebCore::PrivateClickMeasurement *a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 16), *(v3 + 8));
      v9 = *(v4 + 16);
      if (v9)
      {
        atomic_fetch_add(v9, 1u);
        v10 = *(v9 + 8);
        if (!v10)
        {
          goto LABEL_149;
        }

        if (*a3 && *(*a3 + 4))
        {
          if (*(v10 + 368) == 1)
          {
            if ((*(a2 + 88) & 1) == 0)
            {
              *(a2 + 72) = 0u;
              *(a2 + 56) = 0u;
              *(a2 + 88) = 1;
            }

            v11 = *(v10 + 336);
            if (v11)
            {
              atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
            }

            v12 = *(a2 + 80);
            *(a2 + 80) = v11;
            if (!v12)
            {
              goto LABEL_149;
            }

            goto LABEL_17;
          }

          updated = WebCore::PrivateClickMeasurement::calculateAndUpdateDestinationUnlinkableToken(&cf, a3, v8);
          if (v84)
          {
            if (v84 != 1)
            {
              mpark::throw_bad_variant_access(updated);
            }

            v17 = cf;
            if (cf && *(cf + 1))
            {
              atomic_fetch_add_explicit(cf, 2u, memory_order_relaxed);
            }

            else
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v17 = *buf;
            }

            v88 = v17;
            v26 = qword_1ED640FE0;
            if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
            {
              WTF::String::utf8();
              v27 = v92 ? v92 + 16 : 0;
              *buf = 136446210;
              *&buf[4] = v27;
              _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_INFO, "Got the following error in calculateAndUpdateDestinationUnlinkableToken(): '%{public}s", buf, 0xCu);
              v29 = v92;
              v92 = 0;
              if (v29)
              {
                if (*v29 == 1)
                {
                  WTF::fastFree(v29, v28);
                }

                else
                {
                  --*v29;
                }
              }
            }

            v30 = *(v9 + 8);
            if (!v30)
            {
              __break(0xC471u);
              JUMPOUT(0x19DD5B5C4);
            }

            v31 = *(v30 + 208);
            v32 = v88;
            if (v88)
            {
              atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
            }

            v87 = v32;
            *buf = "[Private Click Measurement] ";
            *&buf[8] = 29;
            WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(buf, &v87, &v92);
            if (!v92)
            {
              __break(0xC471u);
              JUMPOUT(0x19DD5B5CCLL);
            }

            (*(*v31 + 16))(v31, 2, &v92);
            v33 = v92;
            v92 = 0;
            if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v8);
            }

            v34 = v87;
            v87 = 0;
            if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v34, v8);
            }

            v35 = v88;
            v88 = 0;
            if (!v35)
            {
              goto LABEL_137;
            }

            goto LABEL_89;
          }

          v18 = cf;
          if (*(a2 + 88) == 1)
          {
            if (cf)
            {
              CFRetain(cf);
            }

            v19 = *(a2 + 56);
            *(a2 + 56) = v18;
            if (v19)
            {
              CFRelease(v19);
            }

            v20 = v81;
            if (v81)
            {
              CFRetain(v81);
            }

            v21 = *(a2 + 64);
            *(a2 + 64) = v20;
            if (v21)
            {
              CFRelease(v21);
            }

            v22 = v82;
            if (v82)
            {
              CFRetain(v82);
            }

            v23 = *(a2 + 72);
            *(a2 + 72) = v22;
            if (v23)
            {
              CFRelease(v23);
            }

            v24 = v83;
            if (v83)
            {
              atomic_fetch_add_explicit(v83, 2u, memory_order_relaxed);
            }

            v25 = *(a2 + 80);
            *(a2 + 80) = v24;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v16);
            }
          }

          else
          {
            *(a2 + 56) = cf;
            if (v18)
            {
              CFRetain(v18);
            }

            v36 = v81;
            *(a2 + 64) = v81;
            if (v36)
            {
              CFRetain(v36);
            }

            v37 = v82;
            *(a2 + 72) = v82;
            if (v37)
            {
              CFRetain(v37);
            }

            v38 = v83;
            if (v83)
            {
              atomic_fetch_add_explicit(v83, 2u, memory_order_relaxed);
            }

            *(a2 + 80) = v38;
            *(a2 + 88) = 1;
          }

          v39 = *(v9 + 8);
          if (v39)
          {
            if (!(*(**(v39 + 208) + 24))(*(v39 + 208)))
            {
              goto LABEL_137;
            }

            v94 = 0;
            v92 = 0;
            WTF::URL::invalidate(&v92);
            WebCore::PCM::AttributionTriggerData::tokenSignatureURL(buf, a2);
            LOBYTE(v88) = 0;
            v91 = 0;
            if (v97 == 1)
            {
              v40 = *buf;
              if (*buf)
              {
                atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
              }

              v88 = v40;
              v89 = *&buf[8];
              v90 = v96;
              v91 = 1;
            }

            WebKit::PrivateClickMeasurementManager::configureForTokenSigning(v39, &v94, &v92, &v88);
            if (v91 == 1)
            {
              v41 = v88;
              v88 = 0;
              if (v41)
              {
                if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v41, v8);
                }
              }
            }

            if (v97 == 1)
            {
              v42 = *buf;
              *buf = 0;
              if (v42)
              {
                if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v42, v8);
                }
              }
            }

            v35 = v92;
            if (!v92)
            {
              goto LABEL_137;
            }

            if (*(v92 + 1) && (v93 & 1) != 0)
            {
              v43 = qword_1ED640FE0;
              if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19D52D000, v43, OS_LOG_TYPE_INFO, "About to fire a unlinkable token signing request for the click destination.", buf, 2u);
              }

              v44 = *(v39 + 208);
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v87 = *buf;
              (*(*v44 + 16))(v44, 0, &v87);
              v46 = v87;
              v87 = 0;
              if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v46, v45);
              }

              WebCore::PCM::AttributionTriggerData::tokenSignatureJSON(&v86, a2);
              v47 = v86;
              v86 = 0;
              v87 = v47;
              v48 = v94;
              WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v39 + 16), v39);
              v49 = *(v39 + 16);
              atomic_fetch_add(v49, 1u);
              *buf = v49;
              v50 = *(a1 + 16);
              *(a1 + 16) = 0;
              *(a1 + 24) = 0;
              *&buf[8] = v50;
              LOWORD(v96) = *a2;
              BYTE2(v96) = *(a2 + 2);
              BYTE8(v96) = 0;
              v97 = 0;
              if (*(a2 + 16) == 1)
              {
                v76 = *(a2 + 8);
                *(a2 + 8) = 0;
                *(&v96 + 1) = v76;
                v97 = 1;
              }

              LOBYTE(v98) = 0;
              v99 = 0;
              if (*(a2 + 32) == 1)
              {
                v51 = *(a2 + 24);
                *(a2 + 24) = 0;
                v98 = v51;
                v99 = 1;
              }

              LOBYTE(v100) = 0;
              v101 = 0;
              if (*(a2 + 48) == 1)
              {
                v77 = *(a2 + 40);
                *(a2 + 40) = 0;
                v100 = v77;
                v101 = 1;
              }

              LOBYTE(v102) = 0;
              v104 = 0;
              if (*(a2 + 88) == 1)
              {
                v52 = *(a2 + 56);
                *(a2 + 56) = 0u;
                v53 = *(a2 + 72);
                *(a2 + 72) = 0u;
                v102 = v52;
                v103 = v53;
                v104 = 1;
              }

              LOBYTE(v105) = 0;
              v107 = 0;
              if (*(a2 + 120) == 1)
              {
                v54 = *(a2 + 96);
                *(a2 + 96) = 0;
                *(a2 + 104) = 0;
                v105 = v54;
                v55 = *(a2 + 112);
                *(a2 + 112) = 0;
                v106 = v55;
                v107 = 1;
              }

              WTF::String::isolatedCopy();
              v56 = WTF::fastMalloc(0xA8);
              *v56 = &unk_1F1107390;
              *(v56 + 8) = *buf;
              v57 = *&buf[8];
              *buf = 0;
              *&buf[8] = 0;
              *(v56 + 16) = v57;
              v58 = *&buf[16];
              *&buf[16] = 0;
              *(v56 + 24) = v58;
              *(v56 + 32) = v96;
              *(v56 + 34) = BYTE2(v96);
              *(v56 + 40) = 0;
              *(v56 + 48) = 0;
              if (v97 == 1)
              {
                v78 = *(&v96 + 1);
                *(&v96 + 1) = 0;
                *(v56 + 40) = v78;
                *(v56 + 48) = 1;
              }

              *(v56 + 56) = 0;
              *(v56 + 64) = 0;
              if (v99 == 1)
              {
                v59 = v98;
                v98 = 0;
                *(v56 + 56) = v59;
                *(v56 + 64) = 1;
              }

              *(v56 + 72) = 0;
              *(v56 + 80) = 0;
              if (v101 == 1)
              {
                v79 = v100;
                v100 = 0;
                *(v56 + 72) = v79;
                *(v56 + 80) = 1;
              }

              *(v56 + 88) = 0;
              *(v56 + 120) = 0;
              if (v104 == 1)
              {
                *(v56 + 88) = v102;
                *(v56 + 104) = v103;
                v60 = *(&v103 + 1);
                v102 = 0u;
                v103 = 0u;
                *(v56 + 112) = v60;
                *(v56 + 120) = 1;
              }

              *(v56 + 128) = 0;
              *(v56 + 152) = 0;
              if (v107 == 1)
              {
                *(v56 + 128) = v105;
                v61 = *(&v105 + 1);
                v105 = 0uLL;
                *(v56 + 136) = v61;
                v62 = v106;
                v106 = 0;
                *(v56 + 144) = v62;
                *(v56 + 152) = 1;
              }

              v63 = v108;
              v108 = 0;
              *(v56 + 160) = v63;
              v85 = v56;
              WebKit::PCM::NetworkLoader::start(&v92, &v87, v48, &v85);
              v65 = v85;
              v85 = 0;
              if (v65)
              {
                (*(*v65 + 8))(v65);
              }

              v66 = v108;
              v108 = 0;
              if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v66, v64);
              }

              WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v96, v64);
              v67 = *&buf[16];
              *&buf[16] = 0;
              if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v67, v8);
              }

              v68 = *&buf[8];
              *&buf[8] = 0;
              if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v68, v8);
              }

              v69 = *buf;
              *buf = 0;
              if (v69 && atomic_fetch_add(v69, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v69);
                WTF::fastFree(v69, v8);
              }

              v70 = v87;
              v87 = 0;
              if (v70)
              {
                if (*v70 == 1)
                {
                  WTF::JSONImpl::Value::operator delete();
                }

                else
                {
                  --*v70;
                }
              }

              v71 = v86;
              v86 = 0;
              if (v71)
              {
                if (*v71 == 1)
                {
                  WTF::JSONImpl::Value::operator delete();
                }

                else
                {
                  --*v71;
                }
              }

              v35 = v92;
              v92 = 0;
              if (!v35)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v92 = 0;
            }

LABEL_89:
            if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v35, v8);
            }

LABEL_137:
            if (v84 == 255)
            {
              goto LABEL_149;
            }

            if (!v84)
            {
              v72 = v83;
              v83 = 0;
              if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v72, v8);
              }

              v73 = v82;
              v82 = 0;
              if (v73)
              {
                CFRelease(v73);
              }

              v74 = v81;
              v81 = 0;
              if (v74)
              {
                CFRelease(v74);
              }

              v75 = cf;
              cf = 0;
              if (v75)
              {
                CFRelease(v75);
              }

              goto LABEL_149;
            }

            v12 = cf;
            cf = 0;
            if (!v12)
            {
LABEL_149:
              if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v9);
                WTF::fastFree(v9, v8);
              }

              return;
            }

LABEL_17:
            if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v8);
            }

            goto LABEL_149;
          }

          __break(0xC471u);
        }

        else
        {
          v13 = qword_1ED640FE0;
          if (!os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO) || (*buf = 0, _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_INFO, "The public key URL was empty.", buf, 2u), (v10 = *(v9 + 8)) != 0))
          {
            v14 = *(v10 + 208);
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            (*(*v14 + 16))(v14, 2, buf);
            v12 = *buf;
            *buf = 0;
            if (!v12)
            {
              goto LABEL_149;
            }

            goto LABEL_17;
          }

          __break(0xC471u);
        }

        JUMPOUT(0x19DD5B5A4);
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::attribute(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0,void,std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107408;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::attribute(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0,void,std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107408;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::attribute(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WebCore::PCM::AttributionTriggerData &&,WTF::String const&)::$_0,void,std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&>::call(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v46 = *a3;
  v8 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v47 = v8;
  v9 = *(a1 + 8);
  if (!v9)
  {
    return WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, a2);
  }

  v10 = *(v9 + 8);
  if (!v10)
  {
    return WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v10 + 16), *(v9 + 8));
  v11 = *(v10 + 16);
  if (!v11)
  {
    return WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, a2);
  }

  atomic_fetch_add(v11, 1u);
  v12 = *(v11 + 8);
  if (v12 && (v7 & 1) != 0)
  {
    if ((*(**(v12 + 208) + 32))(*(v12 + 208)) && HIDWORD(v47))
    {
      v24 = v46;
      do
      {
        v25 = *(v11 + 8);
        if (!v25)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD5BCA4);
        }

        v26 = v24 + 16;
        (*(**(v25 + 208) + 16))(*(v25 + 208), *v24, v24 + 8);
        v24 = v26;
      }

      while (v26 != &v46[16 * HIDWORD(v47)]);
    }

    if (v4 & 1) != 0 && (v6)
    {
      if (v5 >= v3)
      {
        v13 = v4;
      }

      else
      {
        v3 = v5;
        v13 = v6;
      }

      if (v13)
      {
        v14 = *(v11 + 8);
        if (v14)
        {
          if (WTF::RunLoop::TimerBase::isActive((v14 + 24)))
          {
            v15 = *(v11 + 8);
            if (!v15)
            {
              __break(0xC471u);
              JUMPOUT(0x19DD5BC84);
            }

            WTF::RunLoop::TimerBase::secondsUntilFire((v15 + 24));
            if (v16 < v3)
            {
              goto LABEL_25;
            }
          }

          v17 = *(v11 + 8);
          if (!v17)
          {
            __break(0xC471u);
            JUMPOUT(0x19DD5BC24);
          }

          v18 = (*(**(v17 + 208) + 32))(*(v17 + 208));
          v19 = *(v11 + 8);
          if (!v18)
          {
            if (!v19)
            {
              __break(0xC471u);
              JUMPOUT(0x19DD5BC64);
            }

            v20 = *(v19 + 208);
            WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral>("[Private Click Measurement] Setting timer for firing attribution request to the timeout of ", 92, " seconds.", 10, v82);
            (*(*v20 + 16))(v20, 0, v82);
            v22 = *&v82[0];
            *&v82[0] = 0;
            if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v21);
            }

LABEL_23:
            if (!*(v11 + 8))
            {
              __break(0xC471u);
              JUMPOUT(0x19DD5BC44);
            }

            WTF::RunLoop::TimerBase::start();
            goto LABEL_25;
          }

          if (v19)
          {
            v27 = *(v19 + 208);
            WTF::numberToStringAndSize();
            HIDWORD(v63) = v28;
            WTF::numberToStringAndSize();
            HIDWORD(v55) = v29;
            if (v29 < 0)
            {
              goto LABEL_69;
            }

            if (__OFADD__(v29, 9))
            {
              goto LABEL_69;
            }

            v30 = v29 + 60;
            if (__OFADD__(v29 + 9, 51))
            {
              goto LABEL_69;
            }

            if ((HIDWORD(v63) & 0x80000000) != 0)
            {
              goto LABEL_69;
            }

            v31 = __OFADD__(HIDWORD(v63), v30);
            v32 = HIDWORD(v63) + v30;
            if (v31)
            {
              goto LABEL_69;
            }

            v33 = (v32 + 102);
            if (__OFADD__(v32, 102))
            {
              goto LABEL_69;
            }

            v76 = v60;
            v77 = v61;
            v78 = v62;
            v79 = v63;
            v72 = v56;
            v73 = v57;
            v74 = v58;
            v75 = v59;
            v66 = v50;
            v67 = v51;
            v64 = v48;
            v65 = v49;
            v70 = v54;
            v71 = v55;
            v68 = v52;
            v69 = v53;
            if (v32 == -102)
            {
              v34 = MEMORY[0x1E696EB88];
              atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
              goto LABEL_56;
            }

            if ((v33 & 0x80000000) != 0 || (WTF::tryFastCompactMalloc((v33 + 20)), (v34 = *&v82[0]) == 0))
            {
LABEL_69:
              __break(0xC471u);
              JUMPOUT(0x19DD5BCACLL);
            }

            qmemcpy((*&v82[0] + 20), "[Private Click Measurement] Setting timer for firing attribution request to the debug mode timeout of ", 102);
            **&v82[0] = 2;
            *(v34 + 4) = v33;
            *(v34 + 8) = v34 + 20;
            *(v34 + 16) = 4;
            if (v33 > 0x65)
            {
              __src[4] = v76;
              __src[5] = v77;
              __src[6] = v78;
              *__n = v79;
              __src[0] = v72;
              __src[1] = v73;
              __src[2] = v74;
              __src[3] = v75;
              v35 = HIDWORD(v79);
              if (HIDWORD(v79) < 0x7D)
              {
                v36 = v33 - 102;
                v37 = (v34 + 122);
                if (HIDWORD(v79))
                {
                  if (HIDWORD(v79) == 1)
                  {
                    *v37 = __src[0];
                  }

                  else
                  {
                    memcpy((v34 + 122), __src, HIDWORD(v79));
                  }
                }

                v38 = v36 - v35;
                if (v36 >= v35)
                {
                  v39 = &v37[v35];
                  qmemcpy(&v37[v35], " seconds where the regular timeout would have been ", 51);
                  if (v38 > 0x32)
                  {
                    v82[4] = v68;
                    v82[5] = v69;
                    v82[6] = v70;
                    v83 = v71;
                    v82[0] = v64;
                    v82[1] = v65;
                    v82[2] = v66;
                    v82[3] = v67;
                    v40 = HIDWORD(v71);
                    if (HIDWORD(v71) < 0x7D)
                    {
                      v41 = v38 - 51;
                      v42 = v39 + 51;
                      if (HIDWORD(v71))
                      {
                        if (HIDWORD(v71) == 1)
                        {
                          *v42 = v82[0];
                        }

                        else
                        {
                          memcpy(v39 + 51, v82, HIDWORD(v83));
                        }
                      }

                      if (v41 >= v40)
                      {
                        v43 = &v42[v40];
                        *v43 = *" seconds.";
                        v43[8] = 46;
LABEL_56:
                        *&v82[0] = v34;
                        (*(*v27 + 16))(v27, 0, v82);
                        v45 = *&v82[0];
                        *&v82[0] = 0;
                        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v45, v44);
                        }

                        goto LABEL_23;
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            __break(0xC471u);
          }

          __break(1u);
        }

        else
        {
          __break(0xC471u);
        }

        JUMPOUT(0x19DD5BC04);
      }
    }
  }

LABEL_25:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, a2);
  }

  return WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, a2);
}

uint64_t WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v7[0] = a3;
  v7[1] = a4;
  result = WTF::tryMakeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral>(v8, v7, a5);
  if (!*a5)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral>@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v13[0] = *a1;
  v13[1] = v6;
  if (v6 >> 31)
  {
    goto LABEL_8;
  }

  WTF::numberToStringAndSize();
  v15 = v8;
  v9 = a2[1];
  v5 = v9 != 0;
  v10 = v9 - 1;
  if (!v5)
  {
    v10 = 0;
  }

  v12[0] = *a2;
  v12[1] = v10;
  if (v10 >> 31)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DD5BDECLL);
  }

  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v13, v14, v12, a3);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2[7].i32[3];
  v5 = *(a3 + 8);
  if (((v4 | v5) & 0x80000000) != 0 || ((v6 = result, v7 = *(result + 8), v8 = __OFADD__(v4, v5), v9 = v4 + v5, !v8) ? (v10 = 0) : (v10 = 1), (v7 & 0x80000000) != 0 || (v10 & 1) != 0 || (result = (v7 + v9), __OFADD__(v7, v9))))
  {
    *a4 = 0;
  }

  else
  {
    v11 = *v6;
    v12 = a2[5];
    v16[4] = a2[4];
    v16[5] = v12;
    v13 = a2[7];
    v16[6] = a2[6];
    v16[7] = v13;
    v14 = a2[1];
    v16[0] = *a2;
    v16[1] = v14;
    v15 = a2[3];
    v16[2] = a2[2];
    v16[3] = v15;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(result, 1, v11, v7, v16, *a3, v5, a4);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<double,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, unint64_t a3@<X2>, size_t a4@<X3>, int8x16_t *a5@<X4>, _OWORD *a6@<X5>, size_t a7@<X6>, uint64_t *a8@<X8>)
{
  v14 = result;
  v57 = *MEMORY[0x1E69E9840];
  v16 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v17 = __src.i64[0];
        if (__src.i64[0])
        {
          v8 = (__src.i64[0] + 20);
          *__src.i64[0] = 2;
          *(v17 + 4) = v14;
          *(v17 + 8) = v17 + 20;
          *(v17 + 16) = 4;
          v45 = a5[4];
          v46 = a5[5];
          v47 = a5[6];
          v48 = a5[7];
          v41 = *a5;
          v42 = a5[1];
          v43 = a5[2];
          v44 = a5[3];
          if (a4)
          {
            if (a4 == 1)
            {
              goto LABEL_39;
            }

            result = memcpy((v17 + 20), a3, a4);
          }

          while (1)
          {
            if (v16 >= a4)
            {
              v53 = v45;
              v54 = v46;
              v55 = v47;
              *__n = v48;
              __src = v41;
              v50 = v42;
              v51 = v43;
              v52 = v44;
              a3 = v48.u32[3];
              if (v48.i32[3] < 0x7Du)
              {
                v18 = v16 - a4;
                a4 = &v8[a4];
                if (v48.i32[3])
                {
                  if (v48.i32[3] == 1)
                  {
                    *a4 = __src.i8[0];
                  }

                  else
                  {
                    result = memcpy(a4, &__src, v48.u32[3]);
                  }
                }

                if (v18 >= v48.u32[3])
                {
                  break;
                }
              }
            }

LABEL_38:
            __break(1u);
LABEL_39:
            *v8 = *a3;
          }

          if (a7)
          {
            if (a7 == 1)
            {
              *(a4 + v48.u32[3]) = *a6;
            }

            else
            {
              result = memcpy((a4 + v48.u32[3]), a6, a7);
            }
          }
        }

        goto LABEL_37;
      }

LABEL_19:
      v17 = 0;
      goto LABEL_37;
    }

LABEL_20:
    v17 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_37;
  }

  if (!result)
  {
    goto LABEL_20;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_19;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v17 = __src.i64[0];
  if (__src.i64[0])
  {
    v19 = __src.i64[0] + 20;
    *__src.i64[0] = 2;
    *(v17 + 4) = v14;
    *(v17 + 8) = v17 + 20;
    *(v17 + 16) = 0;
    v45 = a5[4];
    v46 = a5[5];
    v47 = a5[6];
    v48 = a5[7];
    v41 = *a5;
    v42 = a5[1];
    v43 = a5[2];
    v44 = a5[3];
    if (a4 < 0x40)
    {
      v20 = (v17 + 20);
    }

    else
    {
      v20 = (v19 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0));
      v21 = 0uLL;
      v22 = (v17 + 20);
      do
      {
        v58.val[0] = *a3;
        v23 = *(a3 + 16);
        v60.val[0] = *(a3 + 32);
        v24 = *(a3 + 48);
        a3 += 64;
        v25 = v24;
        v60.val[1] = 0uLL;
        v62.val[0] = v23;
        v58.val[1] = 0uLL;
        v26 = v22;
        vst2q_s8(v26, v58);
        v26 += 32;
        v62.val[1] = 0uLL;
        vst2q_s8(v26, v62);
        v27 = v22 + 64;
        vst2q_s8(v27, v60);
        v28 = v22 + 96;
        vst2q_s8(v28, *(&v21 - 1));
        v22 += 128;
      }

      while (v22 != v20);
    }

    while (v20 != (v17 + 20 + 2 * a4))
    {
      v29 = *a3++;
      *v20 = v29;
      v20 += 2;
    }

    if (v16 < a4)
    {
      goto LABEL_38;
    }

    a3 = v16 - a4;
    a4 = v19 + 2 * a4;
    v53 = v45;
    v54 = v46;
    v55 = v47;
    *__n = v48;
    __src = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    result = WTF::StringTypeAdapter<double,void>::writeTo<char16_t>(&__src, a4);
    if (a3 < HIDWORD(__n[1]))
    {
      goto LABEL_38;
    }

    v30 = (a4 + 2 * HIDWORD(__n[1]));
    v31 = &v30[2 * a7];
    if (a7 >= 0x40)
    {
      v32 = &v30[2 * (a7 & 0x7FFFFFFFFFFFFFC0)];
      v33 = 0uLL;
      do
      {
        v59.val[0] = *a6;
        v34 = *(a6 + 1);
        v61.val[0] = a6[2];
        v35 = a6[3];
        a6 += 4;
        v36 = v35;
        v61.val[1] = 0uLL;
        v63.val[0] = v34;
        v59.val[1] = 0uLL;
        v37 = v30;
        vst2q_s8(v37, v59);
        v37 += 32;
        v63.val[1] = 0uLL;
        vst2q_s8(v37, v63);
        v38 = v30 + 64;
        vst2q_s8(v38, v61);
        v39 = v30 + 96;
        vst2q_s8(v39, *(&v33 - 1));
        v30 += 128;
      }

      while (v30 != v32);
      v30 = v32;
    }

    while (v30 != v31)
    {
      v40 = *a6;
      a6 = (a6 + 1);
      *v30 = v40;
      v30 += 2;
    }
  }

LABEL_37:
  *a8 = v17;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0,void,WebCore::PrivateClickMeasurement&&,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107430;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0,void,WebCore::PrivateClickMeasurement&&,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107430;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0,void,WebCore::PrivateClickMeasurement&&,WTF::String const&>::call(WTF *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = result;
      ++v3[2];
      result = WTF::base64Decode();
      if (v22 == 1)
      {
        result = PAL::CryptoDigest::create();
        if ((v22 & 1) == 0)
        {
          goto LABEL_28;
        }

        PAL::CryptoDigest::addBytes();
        PAL::CryptoDigest::computeHash(&v16, v19);
        WTF::base64EncodeToString();
        result = v16;
        if (v16)
        {
          v16 = 0;
          v17 = 0;
          result = WTF::fastFree(result, v6);
        }

        if ((*(a2 + 296) & 1) == 0)
        {
LABEL_28:
          __break(1u);
          return result;
        }

        if (WTF::equal(v18, *(a2 + 288), v7) && *(a2 + 184) == 1)
        {
          v9 = *(v5 + 16);
          if (*(a2 + 176) == 1)
          {
            WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v3 + 4, v3);
            v10 = *(v3 + 2);
            if (v10)
            {
              atomic_fetch_add(v10, 1u);
            }

            v11 = *(v5 + 16);
            v12 = WTF::fastMalloc(0x18);
            *v12 = &unk_1F1107458;
            *(v12 + 8) = v10;
            *(v12 + 16) = v11;
            v16 = v12;
            WebKit::PrivateClickMeasurementManager::getTokenPublicKey(v3, a2, v9, 0, &v16);
            if (v16)
            {
              (*(*v16 + 8))(v16);
            }
          }

          else
          {
            WebKit::PrivateClickMeasurementManager::fireConversionRequestImpl(v3, a2, *(v5 + 16));
          }
        }

        v13 = v18;
        v18 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v8);
        }

        result = v19;
        v19 = 0;
        if (result)
        {
          PAL::CryptoDigest::~CryptoDigest(result);
          result = bmalloc::api::tzoneFree(v14, v15);
        }

        if (v22)
        {
          result = v20;
          if (v20)
          {
            v20 = 0;
            v21 = 0;
            result = WTF::fastFree(result, v8);
          }
        }
      }

      if (v3[2] == 1)
      {
        return (*(*v3 + 8))(v3);
      }

      else
      {
        --v3[2];
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0::operator() const(WebCore::PrivateClickMeasurement&&,WTF::String const&)::{lambda(WebCore::PrivateClickMeasurement&,WTF::String const)#1},void,WebCore::PrivateClickMeasurement&,WTF::String const>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107458;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0::operator() const(WebCore::PrivateClickMeasurement&&,WTF::String const&)::{lambda(WebCore::PrivateClickMeasurement&,WTF::String const)#1},void,WebCore::PrivateClickMeasurement&,WTF::String const>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107458;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0::operator() const(WebCore::PrivateClickMeasurement&&,WTF::String const&)::{lambda(WebCore::PrivateClickMeasurement&,WTF::String const)#1},void,WebCore::PrivateClickMeasurement&,WTF::String const>::call(WTF *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = result;
      ++v3[2];
      result = WTF::base64Decode();
      if (v18 == 1)
      {
        result = PAL::CryptoDigest::create();
        if ((v18 & 1) == 0)
        {
          goto LABEL_23;
        }

        PAL::CryptoDigest::addBytes();
        PAL::CryptoDigest::computeHash(&v12, v15);
        WTF::base64EncodeToString();
        result = v12;
        if (v12)
        {
          v12 = 0;
          v13 = 0;
          result = WTF::fastFree(result, v6);
        }

        if ((*(a2 + 184) & 1) == 0 || (*(a2 + 176) & 1) == 0)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        if (WTF::equal(v14, *(a2 + 168), v7))
        {
          WebKit::PrivateClickMeasurementManager::fireConversionRequestImpl(v3, a2, *(v5 + 16));
        }

        v9 = v14;
        v14 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }

        result = v15;
        v15 = 0;
        if (result)
        {
          PAL::CryptoDigest::~CryptoDigest(result);
          result = bmalloc::api::tzoneFree(v10, v11);
        }

        if (v18)
        {
          result = v16;
          if (v16)
          {
            v16 = 0;
            v17 = 0;
            result = WTF::fastFree(result, v8);
          }
        }
      }

      if (v3[2] == 1)
      {
        return (*(*v3 + 8))(v3);
      }

      else
      {
        --v3[2];
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_1,void,WebCore::PrivateClickMeasurement&&,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1107480;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_1,void,WebCore::PrivateClickMeasurement&&,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107480;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequest(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_1,void,WebCore::PrivateClickMeasurement&&,WTF::String const&>::call(WTF *result, uint64_t a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = result;
      ++v3[2];
      result = WTF::base64Decode();
      if (v17 == 1)
      {
        result = PAL::CryptoDigest::create();
        if ((v17 & 1) == 0)
        {
          goto LABEL_23;
        }

        PAL::CryptoDigest::addBytes();
        PAL::CryptoDigest::computeHash(&v11, v14);
        WTF::base64EncodeToString();
        result = v11;
        if (v11)
        {
          v11 = 0;
          v12 = 0;
          result = WTF::fastFree(result, v6);
        }

        if ((*(a2 + 184) & 1) == 0)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        if (*(a2 + 176) == 1 && WTF::equal(v13, *(a2 + 168), v7))
        {
          WebKit::PrivateClickMeasurementManager::fireConversionRequestImpl(v3, a2, *(v5 + 16));
        }

        v8 = v13;
        v13 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }

        result = v14;
        v14 = 0;
        if (result)
        {
          PAL::CryptoDigest::~CryptoDigest(result);
          result = bmalloc::api::tzoneFree(v9, v10);
        }

        if (v17)
        {
          result = v15;
          if (v15)
          {
            v15 = 0;
            v16 = 0;
            result = WTF::fastFree(result, v6);
          }
        }
      }

      if (v3[2] == 1)
      {
        return (*(*v3 + 8))(v3);
      }

      else
      {
        --v3[2];
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequestImpl(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0,void,WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> const&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11074A8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequestImpl(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0,void,WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> const&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11074A8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::fireConversionRequestImpl(WebCore::PrivateClickMeasurement const&,WebCore::PCM::AttributionReportEndpoint)::$_0,void,WTF::String const&,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> const&>::call(WTF::StringImpl *result, atomic_uint **a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 8);
      *(v3 + 8) = v4 + 1;
      v5 = *a2;
      if (*a2)
      {
        v6 = *(v3 + 208);
        atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
        v9 = v5;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[Private Click Measurement] Received error: '", 46, &v9, "' for ad click attribution request.", 36, &v10);
        (*(*v6 + 16))(v6, 2, &v10);
        v8 = v10;
        v10 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }

        result = v9;
        v9 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }

        v4 = *(v3 + 8) - 1;
      }

      if (v4)
      {
        *(v3 + 8) = v4;
      }

      else
      {
        return (*(*v3 + 8))(v3);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::firePendingAttributionRequests(void)::$_0,void,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11074D0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::firePendingAttributionRequests(void)::$_0,void,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11074D0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::WallTime *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::firePendingAttributionRequests(void)::$_0,void,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(WTF::WallTime *result, uint64_t *a2)
{
  v2 = *(result + 1);
  if (!v2)
  {
    return result;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return result;
  }

  ++*(v3 + 8);
  v4 = *(a2 + 3);
  if (!v4)
  {
    goto LABEL_60;
  }

  v5 = 0;
  v6 = *a2;
  v7 = 312 * v4;
  v8 = INFINITY;
  while (1)
  {
    v9 = *(v6 + 208);
    v31 = *(v6 + 192);
    *v32 = v9;
    if (BYTE8(v31))
    {
      if (!BYTE8(v9) || (v10 = v32, v32[0] >= *&v31))
      {
        v10 = &v31;
      }

LABEL_10:
      v11 = *v10;
      v12 = *(v10 + 2);
      goto LABEL_12;
    }

    v10 = v32;
    if (BYTE8(v9))
    {
      goto LABEL_10;
    }

    v12 = 0;
    v11 = 0.0;
LABEL_12:
    v13 = *(v6 + 216);
    v14 = v13;
    if (*(v6 + 200))
    {
      v13 &= *(v6 + 192) >= *(v6 + 208);
      v14 = 1;
    }

    if ((v12 & v14 & 1) == 0)
    {
      goto LABEL_51;
    }

    WTF::WallTime::now(result);
    if (v15 < v11 && (*(v3 + 72) & 1) == 0)
    {
      v16 = v15;
      result = (*(**(v3 + 208) + 32))(*(v3 + 208));
      if (!result)
      {
        break;
      }
    }

    if (v5)
    {
      WebKit::PrivateClickMeasurementManager::randomlyBetweenFifteenAndThirtyMinutes(v3);
      goto LABEL_59;
    }

    v17 = *(v6 + 208);
    v31 = *(v6 + 192);
    *v32 = v17;
    if (BYTE8(v31))
    {
      if (BYTE8(v17))
      {
        v18 = &v31;
        if (*&v31 < v32[0])
        {
          v18 = v32;
        }
      }

      else
      {
        v18 = &v31;
      }

LABEL_27:
      v20 = *v18;
      v19 = *(v18 + 2);
      goto LABEL_28;
    }

    v18 = v32;
    if (BYTE8(v17))
    {
      goto LABEL_27;
    }

    LOBYTE(v19) = 0;
    v20 = 0.0;
LABEL_28:
    if ((*(**(v3 + 208) + 24))(*(v3 + 208)) && *(v6 + 184) == 1)
    {
      if (*(v6 + 296) & 1) != 0 || (*(v6 + 176))
      {
        WebCore::PrivateClickMeasurement::PrivateClickMeasurement(&v31, v6);
        v21 = (v3 + 16);
        if (*(v6 + 296) == 1)
        {
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v21, v3);
          v22 = *(v3 + 16);
          atomic_fetch_add(v22, 1u);
          v23 = WTF::fastMalloc(0x18);
          v24 = &unk_1F1107430;
        }

        else
        {
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v21, v3);
          v22 = *(v3 + 16);
          atomic_fetch_add(v22, 1u);
          v23 = WTF::fastMalloc(0x18);
          v24 = &unk_1F1107480;
        }

        *v23 = v24;
        *(v23 + 8) = v22;
        *(v23 + 16) = v13 & 1;
        v30 = v23;
        WebKit::PrivateClickMeasurementManager::getTokenPublicKey(v3, &v31, v13 & 1, 0, &v30);
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }

        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&v31, v25);
      }

      else
      {
        WebKit::PrivateClickMeasurementManager::fireConversionRequestImpl(v3, v6, v13 & 1);
      }
    }

    result = (*(**(v3 + 208) + 24))(*(v3 + 208));
    if (result && (WebKit::PrivateClickMeasurementManager::initializeStore(v3), v26 = *(v3 + 192), atomic_fetch_add(v26 + 2, 1u), result = (*(*v26 + 88))(v26, v6, v13 & 1), atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1))
    {
      atomic_store(1u, v26 + 2);
      result = (*(*v26 + 8))(v26);
      if (v19)
      {
LABEL_42:
        WTF::WallTime::now(result);
        v28 = v20 - v27;
        if (v28 < 0.0)
        {
          v28 = WebKit::PrivateClickMeasurementManager::randomlyBetweenFifteenAndThirtyMinutes(v3);
        }

        result = (*(**(v3 + 208) + 32))(*(v3 + 208));
        if (v28 >= v8)
        {
          v29 = v8;
        }

        else
        {
          v29 = v28;
        }

        if (result)
        {
          v8 = 10.0;
        }

        else
        {
          v8 = v29;
        }
      }
    }

    else if (v19)
    {
      goto LABEL_42;
    }

    v5 = 1;
LABEL_51:
    v6 += 312;
    v7 -= 312;
    if (!v7)
    {
      goto LABEL_58;
    }
  }

  if (v11 - v16 < v8)
  {
    v8 = v11 - v16;
  }

LABEL_58:
  if (v8 == INFINITY)
  {
    goto LABEL_60;
  }

LABEL_59:
  result = WTF::RunLoop::TimerBase::start();
LABEL_60:
  if (*(v3 + 8) == 1)
  {
    return (*(*v3 + 8))(v3);
  }

  --*(v3 + 8);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::destroyStoreForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11074F8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::destroyStoreForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11074F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PrivateClickMeasurementManager::destroyStoreForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 192);
      *(v3 + 192) = 0;
      if (v4)
      {
        if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v4 + 2);
          (*(*v4 + 8))(v4);
        }
      }
    }
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v5 + 16))(v5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 16);
    __src = *(v3 + 4);
    WebKit::Daemon::Encoder::encodeFixedLengthData(a1, &__src, 4uLL);
    v12 = (v5 & 4) != 0;
    WebKit::Daemon::Encoder::encodeFixedLengthData(v2, &v12, 1uLL);
    v6 = *a2;
    if ((v5 & 4) != 0)
    {
      if (v6)
      {
        v7 = *(v6 + 8);
        v8 = *(v6 + 4);
        goto LABEL_8;
      }
    }

    else if (v6)
    {
      v7 = *(v6 + 8);
      v8 = 2 * *(v6 + 4);
LABEL_8:
      a1 = v2;
      return WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v7, v8);
    }

    v7 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v10 = -1;
  v7 = &v10;
  v8 = 4;
  return WebKit::Daemon::Encoder::encodeFixedLengthData(a1, v7, v8);
}

uint64_t WebKit::PCM::DaemonClient::operator new(WebKit::PCM::DaemonClient *this, void *a2)
{
  if (this == 16 && WebKit::PCM::DaemonClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::PCM::DaemonClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::PCM::DaemonClient::operatorNewSlow(this);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo17storeUnattributedEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107520;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo17storeUnattributedEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107520;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo17storeUnattributedEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEE4callEv(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, &v4);
  (*(*v1 + 8))(v1);
  result = v4;
  if (v4)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    return WTF::fastFree(result, v2);
  }

  return result;
}

WTF::StringImpl *WebKit::Daemon::Coder<WTF::URL,void>::decode<WebKit::Daemon::Decoder>(_BYTE *a1, uint64_t *a2)
{
  LOBYTE(v6) = 0;
  v7 = 0;
  result = WebKit::Daemon::Decoder::operator>><WTF::String>(a2, &v6);
  if (v7 == 1)
  {
    MEMORY[0x19EB01DD0](v5, &v6, 0);
    WTF::URL::URL(a1, v5);
    a1[40] = 1;
    result = v5[0];
    v5[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v4);
    }

    if (v7)
    {
      result = v6;
      v6 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[40] = 0;
  }

  return result;
}

uint64_t *WebKit::Daemon::Decoder::operator>><WTF::String>(uint64_t *a1, WTF::StringImpl *a2)
{
  WebKit::Daemon::Coder<WTF::String,void>::decode<WebKit::Daemon::Decoder>(a1, &v7);
  std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::String,false>>(a2, &v7);
  if (v8 == 1)
  {
    v5 = v7;
    v7 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  return a1;
}

uint64_t *WebKit::Daemon::Coder<WTF::String,void>::decode<WebKit::Daemon::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 - v2 < 4)
  {
    goto LABEL_5;
  }

  if (v3 < v2)
  {
    goto LABEL_11;
  }

  v4 = *result;
  v5 = *(*result + v2);
  v6 = v2 + 4;
  result[2] = v2 + 4;
  if (v5 == -1)
  {
    *a2 = 0;
    *(a2 + 8) = 1;
    return result;
  }

  if (v3 == v6)
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 0;
    return result;
  }

  if (v3 < v6)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    v7 = *(v4 + v6);
    result[2] = v2 + 5;
    if (v7)
    {
      return WebKit::Daemon::Coder<WTF::String,void>::decodeStringText<unsigned char,WebKit::Daemon::Decoder>(result, v5, a2);
    }

    else
    {
      return WebKit::Daemon::Coder<WTF::String,void>::decodeStringText<char16_t,WebKit::Daemon::Decoder>(result, v5, a2);
    }
  }

  return result;
}

uint64_t WebKit::Daemon::Coder<WTF::String,void>::decodeStringText<unsigned char,WebKit::Daemon::Decoder>@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (*(result + 8) - *(result + 16) >= a2)
  {
    v4 = result;
    result = WTF::StringImpl::createUninitialized();
    v5 = *(v4 + 16);
    if (*(v4 + 8) < v5)
    {
      __break(1u);
    }

    else
    {
      result = 0;
      *(v4 + 16) = *(v4 + 16);
      *a3 = v6;
      *(a3 + 8) = 1;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t WebKit::Daemon::Coder<WTF::String,void>::decodeStringText<char16_t,WebKit::Daemon::Decoder>@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (*(result + 8) - *(result + 16) >= 2 * a2)
  {
    v4 = result;
    result = WTF::StringImpl::createUninitialized();
    if (*(v4 + 8) < *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      result = 0;
      *(v4 + 16) = *(v4 + 16);
      *a3 = v5;
      *(a3 + 8) = 1;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo5clearEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107548;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo5clearEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107548;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo5clearEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEE4callEv(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, &v4);
  (*(*v1 + 8))(v1);
  result = v4;
  if (v4)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    return WTF::fastFree(result, v2);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo25clearForRegistrableDomainEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107570;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo25clearForRegistrableDomainEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107570;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo25clearForRegistrableDomainEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEE4callEv(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, &v4);
  (*(*v1 + 8))(v1);
  result = v4;
  if (v4)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    return WTF::fastFree(result, v2);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo18toStringForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJNS_6StringEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107598;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo18toStringForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJNS_6StringEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107598;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo18toStringForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJNS_6StringEEE4callESO_(uint64_t a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  v10 = v3;
  v13 = 0;
  v14 = 0;
  WebKit::Daemon::Coder<WTF::String,void>::encode<WebKit::Daemon::Encoder>(&v13, &v10);
  WebKit::Daemon::Encoder::takeBuffer(&v13, &v11);
  v5 = v13;
  if (v13)
  {
    v13 = 0;
    LODWORD(v14) = 0;
    WTF::fastFree(v5, v4);
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, &v11);
  (*(*v6 + 8))(v6);
  v8 = v11;
  if (v11)
  {
    v11 = 0;
    v12 = 0;
    WTF::fastFree(v8, v7);
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t *WebKit::Daemon::Decoder::operator>><std::tuple<WTF::URL>>(uint64_t *a1, uint64_t a2)
{
  WebKit::Daemon::Coder<WTF::URL,void>::decode<WebKit::Daemon::Decoder>(&v14, a1);
  if (v17)
  {
    v5 = v14;
    v14 = 0;
    v10 = v5;
    v11 = v15;
    v12 = v16;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    LOBYTE(v10) = 0;
  }

  v13 = v6;
  if (*(a2 + 40) == v6)
  {
    if (*(a2 + 40))
    {
      WTF::URL::operator=(a2, &v10);
    }
  }

  else if (*(a2 + 40))
  {
    v7 = *a2;
    *a2 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    *(a2 + 40) = 0;
  }

  else
  {
    WTF::URL::URL(a2, &v10);
    *(a2 + 40) = 1;
  }

  if (v13 == 1)
  {
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo57markAttributedPrivateClickMeasurementsAsExpiredForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11075C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo57markAttributedPrivateClickMeasurementsAsExpiredForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11075C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo57markAttributedPrivateClickMeasurementsAsExpiredForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEE4callEv(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, &v4);
  (*(*v1 + 8))(v1);
  result = v4;
  if (v4)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    return WTF::fastFree(result, v2);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo22destroyStoreForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11075E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo22destroyStoreForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11075E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF *_ZN3WTF6Detail15CallableWrapperIZN6WebKit3PCM25handlePCMMessageWithReplyINS3_11MessageInfo22destroyStoreForTestingEEEvNSt3__14spanIKhLm18446744073709551615EEEONS_17CompletionHandlerIFvONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEUlDpOT_E_vJEE4callEv(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, &v4);
  (*(*v1 + 8))(v1);
  result = v4;
  if (v4)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    return WTF::fastFree(result, v2);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE0EJRN7WebCore23PrivateClickMeasurementEEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107610;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE0EJRN7WebCore23PrivateClickMeasurementEEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107610;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE0EJRN7WebCore23PrivateClickMeasurementEEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEE4callESP_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3);
  result = (*(*v3 + 8))(v3);
  if (v2)
  {

    return WTF::fastFree(v2, v5);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE2EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107638;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE2EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107638;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE2EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEE4callESM_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3);
  result = (*(*v3 + 8))(v3);
  if (v2)
  {

    return WTF::fastFree(v2, v5);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE3EJRN7WebCore17RegistrableDomainEEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107660;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE3EJRN7WebCore17RegistrableDomainEEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107660;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE3EJRN7WebCore17RegistrableDomainEEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEE4callESP_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3);
  result = (*(*v3 + 8))(v3);
  if (v2)
  {

    return WTF::fastFree(v2, v5);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE6EJEJNS_6StringEEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1107688;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE6EJEJNS_6StringEEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1107688;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE6EJEJNS_6StringEEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEE4callESN_(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v4 = *a2;
  v5 = *(a2 + 12);
  *a2 = a3;
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = 0;
  v6 = WTF::fastMalloc(0x10);
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  *v6 = &unk_1F1102268;
  v6[1] = v7;
  LOBYTE(v12) = 0;
  v13 = 0;
  WebKit::Daemon::Decoder::operator>><WTF::String>(v10, &v12);
  if (v13)
  {
    (*(*v6 + 16))(v6, &v12);
    result = (*(*v6 + 8))(v6);
  }

  else
  {
    v11 = 0;
    (*(*v6 + 16))(v6, &v11);
    (*(*v6 + 8))(v6);
    result = v11;
    v11 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v9);
    }
  }

  if (v13 != 1 || (result = v12, v12 = 0, !result) || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v4)
    {
      return result;
    }

    return WTF::fastFree(v4, v9);
  }

  result = WTF::StringImpl::destroy(result, v9);
  if (v4)
  {
    return WTF::fastFree(v4, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE12EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11076B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE12EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11076B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE12EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEE4callESM_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3);
  result = (*(*v3 + 8))(v3);
  if (v2)
  {

    return WTF::fastFree(v2, v5);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE16EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11076D8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE16EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11076D8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNK6WebKit3PCM12ManagerProxy20sendMessageWithReplyILNS3_11MessageTypeE16EJEJEEEvONS_17CompletionHandlerIFvDpT1_EEEDpOT0_EUlT_E_vJONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEE4callESM_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v3 + 16))(v3);
  result = (*(*v3 + 8))(v3);
  if (v2)
  {

    return WTF::fastFree(v2, v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::PersistentStore(WTF::String const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107700;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::PersistentStore(WTF::String const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1107700;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::PersistentStore(WTF::String const&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (qword_1ED642698)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED642698, a2);
  }

  else
  {
    NonCompact = WebKit::PCM::Database::operatorNewSlow(0);
  }

  v4 = NonCompact;
  WTF::FileSystemImpl::pathByAppendingComponent();
  WebKit::DatabaseUtilities::DatabaseUtilities(v4, &v29);
  v6 = v29;
  v29 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  *(v4 + 96) = 0;
  *(v4 + 104) = 1;
  *v4 = &unk_1F1106FD0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  WebKit::DatabaseUtilities::openDatabaseAndCreateSchemaIfNecessary(v4, v5);
  WebKit::DatabaseUtilities::enableForeignKeys(v4);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v7 = v29;
  WebKit::DatabaseUtilities::columnsForTable(v4, "AttributedPrivateClickMeasurement", 34, &v29);
  if (!v30 || (WTF::equal(*(v29 + v30 - 1), v7, v8) & 1) == 0)
  {
    WebKit::DatabaseUtilities::addMissingColumnToTable(v4, "AttributedPrivateClickMeasurement", 34, "destinationToken TEXT", 22);
    WebKit::DatabaseUtilities::addMissingColumnToTable(v4, "AttributedPrivateClickMeasurement", 34, "destinationSignature TEXT", 26);
    WebKit::DatabaseUtilities::addMissingColumnToTable(v4, "AttributedPrivateClickMeasurement", 34, "destinationKeyID TEXT", 22);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v9);
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v10);
  }

  if ((byte_1ED642691 & 1) == 0)
  {
    *&dword_1ED6426A8 = 0;
    qword_1ED6426A0 = 0;
    byte_1ED642691 = 1;
    goto LABEL_26;
  }

  if (++dword_1ED6426A8 > dword_1ED6426AC)
  {
    v11 = qword_1ED6426A0;
    if (qword_1ED6426A0)
    {
      v12 = *(qword_1ED6426A0 - 4);
      if (!v12)
      {
LABEL_27:
        v18 = *(v11 - 4);
        if (6 * *(v11 - 12) < v18 && v18 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(&qword_1ED6426A0);
          v11 = qword_1ED6426A0;
          dword_1ED6426A8 = 0;
          if (!qword_1ED6426A0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          dword_1ED6426A8 = 0;
        }

        LODWORD(v11) = *(v11 - 12);
        if (v11 > 0x7FFFFFFE)
        {
          v20 = -2;
          goto LABEL_36;
        }

LABEL_34:
        v20 = 2 * v11;
LABEL_36:
        dword_1ED6426AC = v20;
        goto LABEL_37;
      }

      v13 = 0;
      v14 = 8 * v12;
      v15 = qword_1ED6426A0 - 8;
      do
      {
        v16 = *(v15 + v14);
        if ((v16 + 1) >= 2 && !*(v16 + 8))
        {
          *(v15 + v14) = 0;
          if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v16);
            WTF::fastFree(v16, v10);
          }

          *(v15 + v14) = -1;
          ++v13;
        }

        v14 -= 8;
      }

      while (v14);
      v11 = qword_1ED6426A0;
      if (v13)
      {
        v17 = *(qword_1ED6426A0 - 12) - v13;
        *(qword_1ED6426A0 - 16) += v13;
        *(v11 - 12) = v17;
        goto LABEL_27;
      }

      if (qword_1ED6426A0)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    LODWORD(v11) = 0;
    dword_1ED6426A8 = 0;
    goto LABEL_34;
  }

LABEL_37:
  if (!*(v4 + 96))
  {
    v22 = WTF::fastCompactMalloc(0x10);
    *v22 = 1;
    *(v22 + 8) = v4;
    v23 = *(v4 + 96);
    *(v4 + 96) = v22;
    if (v23)
    {
      if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, v21);
      }
    }
  }

  v24 = *(v4 + 96);
  atomic_fetch_add(v24, 1u);
  v31 = v24;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&qword_1ED6426A0, &v31, &v29);
  v26 = v31;
  v31 = 0;
  if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26);
    WTF::fastFree(v26, v25);
  }

  result = *(v2 + 16);
  *(v2 + 16) = v4;
  if (result)
  {
    if (result[26] == 1)
    {
      v28 = *(*result + 64);

      return v28();
    }

    else
    {
      --result[26];
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::insertPrivateClickMeasurement(WebCore::PrivateClickMeasurement &&,WebKit::PrivateClickMeasurementAttributionType,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107728;
  v3 = a1[43];
  a1[43] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::insertPrivateClickMeasurement(WebCore::PrivateClickMeasurement &&,WebKit::PrivateClickMeasurementAttributionType,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107728;
  v3 = a1[43];
  a1[43] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 3), a2);
  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::insertPrivateClickMeasurement(WebCore::PrivateClickMeasurement &&,WebKit::PrivateClickMeasurementAttributionType,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 16);
  if (v2)
  {
    ++v2[26];
    WebKit::PCM::Database::insertPrivateClickMeasurement(v2, a1 + 24, *(a1 + 336));
    if (v2[26] == 1)
    {
      (*(*v2 + 64))(v2);
    }

    else
    {
      --v2[26];
    }
  }

  v3 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 344), &v5);
  WTF::RunLoop::mainSingleton(v3);
  WTF::RunLoop::dispatch();
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::markAllUnattributedPrivateClickMeasurementAsExpiredForTesting(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107750;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::markAllUnattributedPrivateClickMeasurementAsExpiredForTesting(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107750;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::markAllUnattributedPrivateClickMeasurementAsExpiredForTesting(void)::$_0,void>::call(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(result + 8) + 16);
  if (v1)
  {
    ++*(v1 + 104);
    WebKit::DatabaseUtilities::scopedStatement(v1, (v1 + 112), "markAllUnattributedPrivateClickMeasurementAsExpiredForTesting", &v5);
    if (!v5 || WebCore::SQLiteStatement::step(v5) != 101)
    {
      v2 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v1 + 16));
        *buf = 134218243;
        v7 = v1;
        v8 = 2081;
        v9 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "%p - Database::markAllUnattributedPrivateClickMeasurementAsExpiredForTesting, error message: %{private}s", buf, 0x16u);
      }
    }

    result = MEMORY[0x19EB0CD50](&v5);
    if (*(v1 + 104) == 1)
    {
      v4 = *(*v1 + 64);

      return v4(v1);
    }

    else
    {
      --*(v1 + 104);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107778;
  WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WebCore::PCM::AttributionDestinationSite &::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::~$_0(a1 + 1, a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107778;
  WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WebCore::PCM::AttributionDestinationSite &::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::~$_0(a1 + 1, a2);

  return WTF::fastFree(a1, v3);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v101 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 8) + 16);
  if (v2)
  {
    ++*(v2 + 104);
    WebKit::PCM::Database::clearExpiredPrivateClickMeasurement(v2);
    v3 = *(a1 + 48);
    if (v3 > 0xF || (v4 = *(a1 + 49), v4 >= 0x40))
    {
      v32 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_INFO, "Got an invalid attribution.", buf, 2u);
      }

      LOBYTE(v92) = 2;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v33 = WTF::fastMalloc(0x10);
      v35 = v33;
      *v33 = v92;
      v36 = v93;
      if (v93)
      {
        atomic_fetch_add_explicit(v93, 2u, memory_order_relaxed);
      }

      *(v33 + 8) = v36;
      v96[0] = 0;
      v97 = 0;
      *buf = 0;
      *&buf[8] = 0;
      v98 = v33;
      v99 = 0x100000001;
      WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v34);
      v38 = v93;
      v93 = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v37);
      }

      *buf = *v96;
      *&buf[16] = *&v96[16];
      LOBYTE(v86) = v97;
      v39 = v35 + 16;
      goto LABEL_79;
    }

    v81 = 0;
    v82 = 0;
    v5 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v3;
      *&buf[8] = 1024;
      *&buf[10] = v4;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_INFO, "Got an attribution with attribution trigger data: %u and priority: %u.", buf, 0xEu);
    }

    buf[0] = 4;
    WTF::makeString<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(&buf[8], "[Private Click Measurement] Got an attribution with attribution trigger data: '", 80, v3, v4, "'.", 3);
    v6 = WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v81, 1uLL, buf);
    v8 = HIDWORD(v82);
    v9 = v81;
    v10 = v81 + 16 * HIDWORD(v82);
    *v10 = *v6;
    v11 = *(v6 + 8);
    *(v6 + 8) = 0;
    *(v10 + 8) = v11;
    v12 = (v8 + 1);
    HIDWORD(v82) = v8 + 1;
    v13 = *&buf[8];
    *&buf[8] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }

    v14 = WebKit::PCM::Database::domainID(v2, (a1 + 24));
    v15 = WebKit::PCM::Database::domainID(v2, (a1 + 32));
    if (HIDWORD(v14) && HIDWORD(v15))
    {
      v79 = v9;
      WebKit::DatabaseUtilities::scopedStatement(v2, (v2 + 120), "findPrivateClickMeasurement", &v84);
      if (!v84 || WebCore::SQLiteStatement::bindInt(v84) || WebCore::SQLiteStatement::bindInt(v84) || WebCore::SQLiteStatement::bindText())
      {
        v17 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
        {
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v2 + 16));
          *buf = 134218243;
          *&buf[4] = v2;
          *&buf[12] = 2081;
          *&buf[14] = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "%p - Database::findPrivateClickMeasurement findUnattributedQuery, error message: %{private}s", buf, 0x16u);
        }
      }

      WebKit::DatabaseUtilities::scopedStatement(v2, (v2 + 128), "findPrivateClickMeasurement", &v83);
      if (!v83 || WebCore::SQLiteStatement::bindInt(v83) || WebCore::SQLiteStatement::bindInt(v83) || WebCore::SQLiteStatement::bindText())
      {
        v18 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
        {
          v68 = WebCore::SQLiteDatabase::lastErrorMsg((v2 + 16));
          *buf = 134218243;
          *&buf[4] = v2;
          *&buf[12] = 2081;
          *&buf[14] = v68;
          _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "%p - Database::findPrivateClickMeasurement findAttributedQuery, error message: %{private}s", buf, 0x16u);
        }
      }

      v96[0] = 0;
      v100 = 0;
      if (WebCore::SQLiteStatement::step(v84) == 100)
      {
        WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v84, v2, 0, buf);
        std::optional<WebCore::PrivateClickMeasurement>::operator=[abi:sn200100]<WebCore::PrivateClickMeasurement,void>(v96, buf);
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v19);
      }

      LOBYTE(v92) = 0;
      v95 = 0;
      if (WebCore::SQLiteStatement::step(v83) == 100)
      {
        WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v83, v2, 1, buf);
        std::optional<WebCore::PrivateClickMeasurement>::operator=[abi:sn200100]<WebCore::PrivateClickMeasurement,void>(&v92, buf);
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v21);
      }

      buf[0] = 0;
      v89 = 0;
      v9 = v79;
      if (v100 == 1)
      {
        WebCore::PrivateClickMeasurement::PrivateClickMeasurement(buf, v96);
        v89 = 1;
      }

      v90[0] = 0;
      v91 = 0;
      if (v95 == 1)
      {
        WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v90, &v92);
        v91 = 1;
        if (v95)
        {
          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&v92, v20);
        }
      }

      if (v100 == 1)
      {
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v96, v20);
      }

      MEMORY[0x19EB0CD50](&v83);
      MEMORY[0x19EB0CD50](&v84);
      if (v89)
      {
        v22 = WebKit::PCM::Database::domainID(v2, &buf[8]);
        v23 = WebKit::PCM::Database::domainID(v2, &buf[16]);
        if (HIDWORD(v22) && HIDWORD(v23))
        {
          WebKit::DatabaseUtilities::scopedStatement(v2, (v2 + 136), "removeUnattributed", &v92);
          if (!v92 || WebCore::SQLiteStatement::bindInt(v92) || WebCore::SQLiteStatement::bindInt(v92) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v92) != 101)
          {
            v24 = qword_1ED640FE0;
            if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
            {
              v73 = WebCore::SQLiteDatabase::lastErrorMsg((v2 + 16));
              *v96 = 134218243;
              *&v96[4] = v2;
              *&v96[12] = 2081;
              *&v96[14] = v73;
              _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "%p - Database::removeUnattributed, error message: %{private}s", v96, 0x16u);
            }
          }

          MEMORY[0x19EB0CD50](&v92);
        }

        if ((v89 & 1) == 0)
        {
          goto LABEL_121;
        }

        WebCore::PrivateClickMeasurement::attributeAndGetEarliestTimeToSend();
        LODWORD(v92) = *&v96[1];
        *(&v92 + 3) = *&v96[4];
        v25 = v96[8];
        LODWORD(v84) = *&v96[9];
        *(&v84 + 3) = *&v96[12];
        LODWORD(v83) = *&v96[17];
        *(&v83 + 3) = *&v96[20];
        v26 = v96[24];
        *&v80[3] = *&v96[28];
        *v80 = *&v96[25];
        if (v96[8] & 1) != 0 && (v96[24])
        {
          v77 = v96[16];
          v78 = v96[0];
          v27 = qword_1ED640FE0;
          if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
          {
            *v96 = 67109376;
            *&v96[4] = v3;
            *&v96[8] = 1024;
            *&v96[10] = v4;
            _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_INFO, "Converted a stored ad click with attribution trigger data: %u and priority: %u.", v96, 0xEu);
          }

          v96[0] = 4;
          v28 = &v96[8];
          WTF::makeString<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(&v96[8], "[Private Click Measurement] Converted a stored ad click with attribution trigger data: '", 89, v3, v4, "'.", 3);
          if (v12 == v82)
          {
            v30 = WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v81, v12 + 1, v96);
            LODWORD(v12) = HIDWORD(v82);
            v79 = v81;
            v31 = v81 + 16 * HIDWORD(v82);
            v28 = (v30 + 8);
            *v31 = *v30;
          }

          else
          {
            v31 = v79 + 16 * v12;
            *v31 = v96[0];
          }

          v61 = *v28;
          *v28 = 0;
          *(v31 + 8) = v61;
          v12 = (v12 + 1);
          HIDWORD(v82) = v12;
          v62 = *&v96[8];
          *&v96[8] = 0;
          if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v62, v29);
          }

          if (v91 != 1)
          {
LABEL_101:
            if (v89)
            {
              WebKit::PCM::Database::insertPrivateClickMeasurement(v2, buf, 1);
              v63 = qword_1ED640FE0;
              if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
              {
                *v96 = 67109376;
                *&v96[4] = v3;
                *&v96[8] = 1024;
                *&v96[10] = v4;
                _os_log_impl(&dword_19D52D000, v63, OS_LOG_TYPE_INFO, "Replaced a previously converted ad click with a new one with attribution data: %u and priority: %u because it had higher priority.", v96, 0xEu);
              }

              v96[0] = 4;
              v64 = &v96[8];
              WTF::makeString<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(&v96[8], "[Private Click Measurement] Replaced a previously converted ad click with a new one with attribution trigger data: '", 117, v3, v4, "' because it had higher priority.", 34);
              if (v12 == v82)
              {
                v65 = WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v81, v12 + 1, v96);
                LODWORD(v12) = HIDWORD(v82);
                v79 = v81;
                v66 = v81 + 16 * HIDWORD(v82);
                v64 = (v65 + 8);
                *v66 = *v65;
              }

              else
              {
                v66 = v79 + 16 * v12;
                *v66 = v96[0];
              }

              v69 = *v64;
              *v64 = 0;
              *(v66 + 8) = v69;
              LODWORD(v12) = v12 + 1;
              HIDWORD(v82) = v12;
              v70 = *&v96[8];
              *&v96[8] = 0;
              if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v70, v16);
              }

              goto LABEL_110;
            }

LABEL_120:
            __break(1u);
          }

          if (v89)
          {
            if (!WebCore::PrivateClickMeasurement::hasHigherPriorityThan(buf, v90))
            {
LABEL_110:
              v96[0] = v78;
              *&v96[1] = v92;
              *&v96[4] = *(&v92 + 3);
              v96[8] = v25;
              *&v96[9] = v84;
              *&v96[12] = *(&v84 + 3);
              v96[16] = v77;
              *&v96[17] = v83;
              *&v96[20] = *(&v83 + 3);
              v96[24] = v26;
              *&v96[28] = *&v80[3];
              *&v96[25] = *v80;
              v97 = 1;
              v98 = v79;
              v44 = v82;
              v81 = 0;
              v82 = 0;
              goto LABEL_72;
            }

            goto LABEL_101;
          }

LABEL_121:
          v76 = std::__throw_bad_optional_access[abi:sn200100]();
          return WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(v76);
        }

        v96[0] = 0;
        v97 = 0;
        v81 = 0;
        v98 = v79;
LABEL_71:
        v44 = v82;
        v82 = 0;
LABEL_72:
        v99 = __PAIR64__(v12, v44);
LABEL_73:
        if (v91 == 1)
        {
          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v90, v16);
        }

        if (v89 == 1)
        {
          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v16);
        }

        WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v81, v16);
        v35 = v98;
        *buf = *v96;
        *&buf[16] = *&v96[16];
        LOBYTE(v86) = v97;
        if (!HIDWORD(v99))
        {
          v50 = 0;
LABEL_87:
          v51 = v99;
          v99 = 0;
          v98 = 0;
          v52 = *(a1 + 184);
          *(a1 + 184) = 0;
          v87[0] = v35;
          v88 = v52;
          v53 = WTF::fastMalloc(0x48);
          *v53 = &unk_1F11077C8;
          v54 = v86;
          v55 = *buf;
          *(v53 + 24) = *&buf[16];
          *(v53 + 8) = v55;
          *(v53 + 40) = v54;
          *(v53 + 48) = v35;
          v87[0] = 0;
          v87[1] = 0;
          *(v53 + 56) = v51;
          *(v53 + 60) = v50;
          *(v53 + 64) = v52;
          v81 = v53;
          WTF::RunLoop::mainSingleton(v53);
          WTF::RunLoop::dispatch();
          v57 = v81;
          v81 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }

          v88 = 0;
          WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v87, v56);
          result = WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v98, v58);
          if (*(v2 + 104) == 1)
          {
            return (*(*v2 + 64))(v2);
          }

          --*(v2 + 104);
          return result;
        }

        v39 = v98 + 16 * HIDWORD(v99);
        do
        {
LABEL_79:
          LOBYTE(v92) = *v35;
          v45 = v35 + 8;
          WTF::String::isolatedCopy();
          *v35 = v92;
          v47 = v93;
          v93 = 0;
          v48 = *(v35 + 8);
          *(v35 + 8) = v47;
          if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v48, v46);
          }

          v49 = v93;
          v93 = 0;
          if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v49, v46);
          }

          v35 += 16;
        }

        while (v45 + 8 != v39);
        v35 = v98;
        v50 = HIDWORD(v99);
        goto LABEL_87;
      }

      if ((v91 & 1) != 0 && (WebCore::PrivateClickMeasurement::hasPreviouslyBeenReported(v90) & 1) == 0)
      {
        if ((v91 & 1) == 0)
        {
          goto LABEL_121;
        }

        WebCore::PrivateClickMeasurement::attributeAndGetEarliestTimeToSend();
        if (v93 != 1 || (v94 & 1) == 0)
        {
          v96[0] = 0;
          v97 = 0;
          v98 = v79;
          v60 = v82;
          v81 = 0;
          v82 = 0;
          v99 = __PAIR64__(v12, v60);
          goto LABEL_73;
        }

        if ((v91 & 1) == 0)
        {
          goto LABEL_120;
        }

        WebKit::PCM::Database::insertPrivateClickMeasurement(v2, v90, 1);
        v40 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_INFO))
        {
          *v96 = 67109376;
          *&v96[4] = v3;
          *&v96[8] = 1024;
          *&v96[10] = v4;
          _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_INFO, "Re-converted an ad click with a new one with attribution trigger data: %u and priority: %u because it had higher priority.", v96, 0xEu);
        }

        v96[0] = 4;
        v41 = &v96[8];
        WTF::makeString<WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral,unsigned char,WTF::ASCIILiteral>(&v96[8], "[Private Click Measurement] Re-converted an ad click with a new one with attribution trigger data: '", 101, v3, v4, "'' because it had higher priority.", 35);
        if (v12 == v82)
        {
          v42 = WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v81, v12 + 1, v96);
          LODWORD(v12) = HIDWORD(v82);
          v9 = v81;
          v43 = v81 + 16 * HIDWORD(v82);
          v41 = (v42 + 8);
          *v43 = *v42;
        }

        else
        {
          v43 = v79 + 16 * v12;
          *v43 = v96[0];
        }

        v71 = *v41;
        *v41 = 0;
        *(v43 + 8) = v71;
        LODWORD(v12) = v12 + 1;
        HIDWORD(v82) = v12;
        v72 = *&v96[8];
        *&v96[8] = 0;
        if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v72, v16);
        }
      }
    }

    else
    {
      buf[0] = 0;
      v89 = 0;
      v90[0] = 0;
      v91 = 0;
    }

    v96[0] = 0;
    v97 = 0;
    v81 = 0;
    v98 = v9;
    goto LABEL_71;
  }

  v74 = *(a1 + 184);
  *(a1 + 184) = 0;
  v75 = WTF::fastMalloc(0x10);
  *v75 = &unk_1F11077A0;
  *(v75 + 1) = v74;
  *buf = v75;
  WTF::RunLoop::mainSingleton(v75);
  WTF::RunLoop::dispatch();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11077A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11077A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v5[0] = 0;
  v5[32] = 0;
  v4[0] = 0;
  v4[1] = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, v5, v4);
  (*(*v1 + 8))(v1);
  return WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11077C8;
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 48), a2);
  return a1;
}

{
  *a1 = &unk_1F11077C8;
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebKit::PCM::DebugInfo::Message,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 48), a2);

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::attributePrivateClickMeasurement(WebCore::PCM::SourceSite &&,WebCore::PCM::AttributionDestinationSite &&,WTF::String const&,WebCore::PCM::AttributionTriggerData &&,WebCore::PrivateClickMeasurement::IsRunningLayoutTest,WTF::CompletionHandler<void ()(std::optional<WebCore::PCM::AttributionSecondsUntilSendData> &&,WebKit::PCM::DebugInfo &&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::call(uint64_t a1)
{
  v1 = *(a1 + 64);
  *(a1 + 64) = 0;
  (*(*v1 + 16))(v1, a1 + 8, a1 + 48);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::privateClickMeasurementToStringForTesting(WTF::CompletionHandler<void ()(WTF::String)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11077F0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::privateClickMeasurementToStringForTesting(WTF::CompletionHandler<void ()(WTF::String)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11077F0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::privateClickMeasurementToStringForTesting(WTF::CompletionHandler<void ()(WTF::String)> &&)::$_0,void>::call(unint64_t a1)
{
  v1 = a1;
  v118 = *MEMORY[0x1E69E9840];
  v105 = 0;
  v2 = *(*(a1 + 8) + 16);
  if (!v2)
  {
    goto LABEL_80;
  }

  ++*(v2 + 104);
  WebCore::SQLiteDatabase::prepareStatement();
  if (v114 || (v3 = WebCore::SQLiteStatement::step(v113), v3 != 100))
  {
    v49 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v2 + 16));
      *buf = 134218243;
      *&buf[4] = v2;
      *&buf[12] = 2081;
      *&buf[14] = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v49, OS_LOG_TYPE_ERROR, "%p - Database::privateClickMeasurementToStringForTesting failed, error message: %{private}s", buf, 0x16u);
    }

    v105 = 0;
  }

  else
  {
    if (v114)
    {
      goto LABEL_169;
    }

    v3 = WebCore::SQLiteStatement::columnInt(v113);
    if (v3)
    {
LABEL_8:
      WebKit::DatabaseUtilities::scopedStatement(v2, (v2 + 152), "privateClickMeasurementToStringForTesting", &v112);
      if (v112)
      {
        v102 = v1;
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v111 = 1;
        v4 = 0;
        if (WebCore::SQLiteStatement::step(v112) == 100)
        {
          v4 = 0;
          do
          {
            v5 = v4++;
            WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v112, v2, 0, buf);
            WebKit::PCM::Database::attributionToStringForTesting(&v107, buf);
            v6 = 0;
            v7 = v107;
            v8 = v4;
            do
            {
              ++v6;
              v9 = v8 > 9;
              v8 /= 0xAu;
            }

            while (v9);
            if (v5)
            {
              v1 = 0;
            }

            else
            {
              v1 = 40;
            }

            if (v107)
            {
              v10 = *(v107 + 1);
            }

            else
            {
              v10 = 0;
            }

            v11 = __CFADD__(v10, 1);
            v12 = v10 + 1;
            if (v11)
            {
              v12 = -1;
            }

            v11 = __CFADD__(v6, v12);
            v13 = v6 + v12;
            if (v11)
            {
              v13 = -1;
            }

            v11 = __CFADD__(v13, 34);
            v14 = v13 + 34;
            if (v11)
            {
              v14 = -1;
            }

            v11 = __CFADD__(v1, v14);
            v15 = v1 + v14;
            if (v11)
            {
              v15 = -1;
            }

            if (__CFADD__(v110, v15))
            {
              v16 = 0xFFFFFFFFLL;
            }

            else
            {
              v16 = (v110 + v15);
            }

            v17 = v109;
            if ((v109 || (v17 = v108) != 0) && (*(v17 + 16) & 4) == 0 || v107 && (*(v107 + 16) & 4) == 0)
            {
              v18 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v108);
              if (v18)
              {
                if (!v5)
                {
                  v20 = 2 * v1;
                  v21 = "Unattributed Private Click Measurements:";
                  v22 = v18;
                  do
                  {
                    v23 = *v21++;
                    *v22++ = v23;
                    v20 -= 2;
                  }

                  while (v20);
                }

                v24 = v19 - v1;
                if (v19 < v1)
                {
                  goto LABEL_167;
                }

                v25 = 0;
                v26 = v18 + 2 * v1;
                v27 = "\nWebCore::PrivateClickMeasurement ";
                do
                {
                  v28 = *v27++;
                  *(v26 + v25) = v28;
                  v25 += 2;
                }

                while (v25 != 68);
                if (v24 <= 0x21)
                {
                  goto LABEL_167;
                }

                v29 = v26 + 68;
                v30 = v24 - 34;
                LODWORD(v106) = v4;
                WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(&v106, (v26 + 68), v24 - 34);
                LODWORD(v31) = 0;
                v32 = v106;
                do
                {
                  v31 = (v31 + 1);
                  v9 = v32 > 9;
                  v32 /= 0xAu;
                }

                while (v9);
                if (v30 < v31 || v30 == v31)
                {
                  goto LABEL_167;
                }

                v33 = v29 + 2 * v31;
                *v33 = 10;
                v116[0] = v7;
                WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v116, (v33 + 2));
              }
            }

            else
            {
              v34 = MEMORY[0x19EB01170](&v108, v16);
              if (v34)
              {
                if (!v5)
                {
                  qmemcpy(v34, "Unattributed Private Click Measurements:", 40);
                }

                v35 = v19 - v1;
                if (v19 < v1)
                {
                  goto LABEL_167;
                }

                qmemcpy(&v34[v1], "\nWebCore::PrivateClickMeasurement ", 34);
                if (v35 <= 0x21)
                {
                  goto LABEL_167;
                }

                v36 = 0;
                v37 = v35 - 34;
                v38 = &v34[v1 + 34];
                v39 = 13;
                v40 = 12;
                v41 = v4;
                do
                {
                  if (v36 == -13)
                  {
                    goto LABEL_167;
                  }

                  v42 = v40;
                  v43 = v39;
                  v44 = v116 + v36--;
                  v44[12] = (v41 % 0xA) | 0x30;
                  v40 = v42 - 1;
                  --v39;
                  v9 = v41 > 9;
                  v41 /= 0xAu;
                }

                while (v9);
                v45 = v37;
                v46 = &v34[v1 + 34];
                do
                {
                  if (!v45)
                  {
                    goto LABEL_167;
                  }

                  *v46++ = *(v116 + v42++);
                  ++v43;
                  --v45;
                }

                while (v43 != 14);
                LODWORD(v47) = 0;
                v48 = v4;
                do
                {
                  v47 = (v47 + 1);
                  v9 = v48 > 9;
                  v48 /= 0xAu;
                }

                while (v9);
                if (v37 < v47 || v37 == v47)
                {
LABEL_167:
                  __break(1u);
                  goto LABEL_168;
                }

                *(v38 + v47) = 10;
                v116[0] = v7;
                WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v116, (v38 + v47 + 1));
              }
            }

            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, v19);
            }

            WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v19);
          }

          while (WebCore::SQLiteStatement::step(v112) == 100);
        }

        WebKit::DatabaseUtilities::scopedStatement(v2, (v2 + 144), "privateClickMeasurementToStringForTesting", &v107);
        if (v107)
        {
          if (WebCore::SQLiteStatement::step(v107) == 100)
          {
            v57 = 0;
            if (v4)
            {
              v58 = "\n";
            }

            else
            {
              v58 = "";
            }

            v59 = 1;
            if (v4)
            {
              v59 = 2;
            }

            v103 = v59;
            v104 = v58;
            do
            {
              if (!v57)
              {
                *buf = v104;
                *&buf[8] = v103;
                v116[0] = "Attributed Private Click Measurements:";
                v116[1] = 39;
                WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::ASCIILiteral>(&v108, buf, v116);
              }

              v1 = ++v57 + v4;
              WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v107, v2, 1, buf);
              WebKit::PCM::Database::attributionToStringForTesting(&v106, buf);
              v60 = 0;
              v61 = v106;
              v62 = v57 + v4;
              do
              {
                ++v60;
                v9 = v62 > 9;
                v62 /= 0xAu;
              }

              while (v9);
              if (v106)
              {
                v63 = *(v106 + 4);
              }

              else
              {
                v63 = 0;
              }

              v11 = __CFADD__(v63, 1);
              v64 = v63 + 1;
              if (v11)
              {
                v64 = -1;
              }

              v11 = __CFADD__(v60, v64);
              v65 = v60 + v64;
              if (v11)
              {
                v65 = -1;
              }

              v11 = __CFADD__(v65, 34);
              v66 = v65 + 34;
              if (v11)
              {
                v66 = -1;
              }

              v11 = __CFADD__(v110, v66);
              v67 = v110 + v66;
              if (v11)
              {
                v68 = 0xFFFFFFFFLL;
              }

              else
              {
                v68 = v67;
              }

              v69 = v109;
              if ((v109 || (v69 = v108) != 0) && (*(v69 + 16) & 4) == 0 || v106 && (*(v106 + 16) & 4) == 0)
              {
                v70 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v108);
                if (v70)
                {
                  v72 = 0;
                  v73 = "\nWebCore::PrivateClickMeasurement ";
                  do
                  {
                    v74 = *v73++;
                    *(v70 + v72) = v74;
                    v72 += 2;
                  }

                  while (v72 != 68);
                  if (v71 <= 0x21)
                  {
                    goto LABEL_167;
                  }

                  v75 = v70 + 68;
                  v76 = v71 - 34;
                  v115 = v57 + v4;
                  WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(&v115, (v70 + 68), v71 - 34);
                  LODWORD(v77) = 0;
                  v78 = v115;
                  do
                  {
                    v77 = (v77 + 1);
                    v9 = v78 > 9;
                    v78 /= 0xAu;
                  }

                  while (v9);
                  if (v76 < v77 || v76 == v77)
                  {
                    goto LABEL_167;
                  }

                  v79 = v75 + 2 * v77;
                  *v79 = 10;
                  v116[0] = v61;
                  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v116, (v79 + 2));
                }
              }

              else
              {
                v80 = MEMORY[0x19EB01170](&v108, v68);
                if (v80)
                {
                  qmemcpy(v80, "\nWebCore::PrivateClickMeasurement ", 34);
                  if (v71 > 0x21)
                  {
                    v81 = 0;
                    v82 = v71 - 34;
                    v83 = v80 + 34;
                    v84 = 13;
                    v85 = 12;
                    v86 = v57 + v4;
                    while (v81 != -13)
                    {
                      v87 = v85;
                      v88 = v84;
                      v89 = v116 + v81--;
                      v89[12] = (v86 % 0xA) | 0x30;
                      v85 = v87 - 1;
                      --v84;
                      v9 = v86 > 9;
                      v86 /= 0xAu;
                      if (!v9)
                      {
                        v90 = v71 - 34;
                        v91 = v80 + 34;
                        while (v90)
                        {
                          *v91++ = *(v116 + v87++);
                          ++v88;
                          --v90;
                          if (v88 == 14)
                          {
                            LODWORD(v92) = 0;
                            do
                            {
                              v92 = (v92 + 1);
                              v9 = v1 > 9;
                              v1 = v1 / 0xAuLL;
                            }

                            while (v9);
                            if (v82 >= v92 && v82 != v92)
                            {
                              v83[v92] = 10;
                              v116[0] = v61;
                              WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v116, &v83[v92 + 1]);
                              goto LABEL_144;
                            }

                            goto LABEL_167;
                          }
                        }

                        goto LABEL_167;
                      }
                    }
                  }

                  goto LABEL_167;
                }
              }

LABEL_144:
              if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v61, v71);
              }

              WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v71);
            }

            while (WebCore::SQLiteStatement::step(v107) == 100);
          }

          v94 = v108;
          v1 = v102;
          if (v108 || (WTF::StringBuilder::shrinkToFit(&v108), WTF::StringBuilder::reifyString(&v108), (v94 = v108) != 0))
          {
            atomic_fetch_add_explicit(v94, 2u, memory_order_relaxed);
          }
        }

        else
        {
          v96 = qword_1ED640FE0;
          if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
          {
            v101 = WebCore::SQLiteDatabase::lastErrorMsg((v2 + 16));
            *buf = 134218243;
            *&buf[4] = v2;
            *&buf[12] = 2081;
            *&buf[14] = v101;
            _os_log_error_impl(&dword_19D52D000, v96, OS_LOG_TYPE_ERROR, "%p - Database::privateClickMeasurementToStringForTesting, error message: %{private}s", buf, 0x16u);
          }

          v94 = 0;
          v1 = v102;
        }

        v105 = v94;
        MEMORY[0x19EB0CD50](&v107);
        v98 = v109;
        v109 = 0;
        if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v98, v97);
        }

        v99 = v108;
        v108 = 0;
        if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v99, v97);
        }
      }

      else
      {
        v93 = qword_1ED640FE0;
        if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
        {
          v100 = WebCore::SQLiteDatabase::lastErrorMsg((v2 + 16));
          *buf = 134218243;
          *&buf[4] = v2;
          *&buf[12] = 2081;
          *&buf[14] = v100;
          _os_log_error_impl(&dword_19D52D000, v93, OS_LOG_TYPE_ERROR, "%p - Database::privateClickMeasurementToStringForTesting, error message: %{private}s", buf, 0x16u);
        }

        v105 = 0;
      }

      MEMORY[0x19EB0CD50](&v112);
      goto LABEL_76;
    }

    if (v114)
    {
LABEL_169:
      mpark::throw_bad_variant_access(v3);
    }

    if (WebCore::SQLiteStatement::columnInt(v113))
    {
      goto LABEL_8;
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

LABEL_76:
  if (!v114)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v113);
  }

  if (*(v2 + 104) == 1)
  {
LABEL_168:
    (*(*v2 + 64))(v2);
  }

  else
  {
    --*(v2 + 104);
  }

LABEL_80:
  WTF::String::isolatedCopy();
  v50 = *(v1 + 24);
  *(v1 + 24) = 0;
  *&buf[8] = v50;
  v51 = WTF::fastMalloc(0x18);
  *v51 = &unk_1F1107818;
  *(v51 + 8) = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v113[0] = v51;
  WTF::RunLoop::mainSingleton(v51);
  WTF::RunLoop::dispatch();
  v53 = v113[0];
  v113[0] = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *&buf[8];
  *&buf[8] = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *buf;
  *buf = 0;
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v52);
  }

  result = v105;
  if (v105)
  {
    if (atomic_fetch_add_explicit(v105, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v105, v52);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::privateClickMeasurementToStringForTesting(WTF::CompletionHandler<void ()(WTF::String)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107818;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::privateClickMeasurementToStringForTesting(WTF::CompletionHandler<void ()(WTF::String)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1107818;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::privateClickMeasurementToStringForTesting(WTF::CompletionHandler<void ()(WTF::String)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 2u, memory_order_relaxed);
  }

  v4 = v1;
  WTF::CompletionHandler<void ()(WTF::String)>::operator()((a1 + 16), &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::allAttributedPrivateClickMeasurement(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107840;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::allAttributedPrivateClickMeasurement(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107840;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::allAttributedPrivateClickMeasurement(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v34 = 0;
  v35 = 0;
  v3 = *(v2 + 16);
  if (v3)
  {
    ++*(v3 + 104);
    WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 144), "allAttributedPrivateClickMeasurement", &v36);
    if (v36)
    {
      v32 = 0;
      v33 = 0;
      while (WebCore::SQLiteStatement::step(v36) == 100)
      {
        WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v36, v3, 1, buf);
        if (HIDWORD(v33) == v33)
        {
          WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PrivateClickMeasurement>(&v32, buf);
        }

        else
        {
          v5 = v32 + 312 * HIDWORD(v33);
          *v5 = buf[0];
          v6 = *&buf[8];
          *&buf[8] = 0;
          *(v5 + 1) = v6;
          v7 = *&buf[16];
          *&buf[16] = 0;
          *(v5 + 2) = v7;
          v8 = v38[0];
          *(v5 + 33) = *(v38 + 9);
          *(v5 + 24) = v8;
          v5[56] = 0;
          v5[184] = 0;
          if (v39[128] == 1)
          {
            std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>((v5 + 56), v39);
          }

          v9 = v41;
          *(v5 + 12) = v40;
          *(v5 + 13) = v9;
          v5[224] = 0;
          v5[232] = 0;
          if (v43 == 1)
          {
            v10 = v42;
            v42 = 0;
            *(v5 + 28) = v10;
            v5[232] = 1;
          }

          v11 = v44;
          v44 = 0;
          *(v5 + 30) = v11;
          v12 = v45;
          v45 = 0;
          *(v5 + 31) = v12;
          v13 = v46;
          v46 = 0;
          *(v5 + 32) = v13;
          v14 = v47;
          v47 = 0;
          *(v5 + 33) = v14;
          v5[272] = 0;
          v5[296] = 0;
          if (v51 == 1)
          {
            v15 = v48;
            v48 = 0;
            *(v5 + 34) = v15;
            v16 = v49;
            v49 = 0;
            *(v5 + 35) = v16;
            v17 = v50;
            v50 = 0;
            *(v5 + 36) = v17;
            v5[296] = 1;
          }

          v18 = v52;
          v52 = 0;
          *(v5 + 38) = v18;
          ++HIDWORD(v33);
        }

        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v4);
      }
    }

    else
    {
      v19 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
        *buf = 134218243;
        *&buf[4] = v3;
        *&buf[12] = 2081;
        *&buf[14] = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "%p - Database::allAttributedPrivateClickMeasurement, error message: %{private}s", buf, 0x16u);
      }

      v32 = 0;
      v33 = 0;
    }

    MEMORY[0x19EB0CD50](&v36);
    v34 = v32;
    v20 = v33;
    v32 = 0;
    v33 = 0;
    v35 = v20;
    WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v21);
    if (*(v3 + 104) == 1)
    {
      (*(*v3 + 64))(v3);
    }

    else
    {
      --*(v3 + 104);
    }
  }

  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v34, buf);
  v22 = *(a1 + 24);
  *(a1 + 24) = 0;
  *&buf[16] = v22;
  v23 = WTF::fastMalloc(0x20);
  *v23 = &unk_1F1107868;
  *(v23 + 1) = *buf;
  v24 = *&buf[8];
  *buf = 0;
  *&buf[8] = 0;
  *(v23 + 2) = v24;
  v25 = *&buf[16];
  *&buf[16] = 0;
  *(v23 + 3) = v25;
  v32 = v23;
  WTF::RunLoop::mainSingleton(v23);
  WTF::RunLoop::dispatch();
  v27 = v32;
  v32 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *&buf[16];
  *&buf[16] = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v26);
  return WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v29);
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::allAttributedPrivateClickMeasurement(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107868;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::allAttributedPrivateClickMeasurement(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107868;
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::allAttributedPrivateClickMeasurement(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::markAttributedPrivateClickMeasurementsAsExpiredForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107890;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::markAttributedPrivateClickMeasurementsAsExpiredForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107890;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::markAttributedPrivateClickMeasurementsAsExpiredForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1[1] + 16);
  if (v2)
  {
    ++v2[26];
    WTF::WallTime::now(a1);
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v2, v14);
    WebCore::SQLiteDatabase::prepareStatement();
    WebCore::SQLiteDatabase::prepareStatement();
    if (v13)
    {
      goto LABEL_6;
    }

    v3 = WebCore::SQLiteStatement::bindInt(v12);
    if (v3)
    {
      goto LABEL_6;
    }

    if (v13)
    {
      mpark::throw_bad_variant_access(v3);
    }

    if (WebCore::SQLiteStatement::step(v12) != 101)
    {
LABEL_6:
      v4 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v2 + 4));
        *buf = 134218243;
        v16 = v2;
        v17 = 2081;
        v18 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - Database::markAttributedPrivateClickMeasurementsAsExpiredForTesting, error message: %{private}s", buf, 0x16u);
      }
    }

    if (v11 || WebCore::SQLiteStatement::step(v10) != 101)
    {
      v5 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        v9 = WebCore::SQLiteDatabase::lastErrorMsg((v2 + 4));
        *buf = 134218243;
        v16 = v2;
        v17 = 2081;
        v18 = v9;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - Database::markAttributedPrivateClickMeasurementsAsExpiredForTesting, error message: %{private}s", buf, 0x16u);
      }
    }

    if (!v11)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v10);
    }

    if (!v13)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v12);
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v14);
    if (v2[26] == 1)
    {
      (*(*v2 + 64))(v2);
    }

    else
    {
      --v2[26];
    }
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 3, v12);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v12[0];
  v12[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearPrivateClickMeasurement(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11078B8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearPrivateClickMeasurement(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11078B8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearPrivateClickMeasurement(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 16);
  if (v2)
  {
    ++*(v2 + 104);
    v6[0] = 0;
    v6[8] = 0;
    WebKit::PCM::Database::clearPrivateClickMeasurement(v2, v6);
    if (*(v2 + 104) == 1)
    {
      (*(*v2 + 64))(v2);
    }

    else
    {
      --*(v2 + 104);
    }
  }

  v3 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 24), &v5);
  WTF::RunLoop::mainSingleton(v3);
  WTF::RunLoop::dispatch();
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearPrivateClickMeasurementForRegistrableDomain(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11078E0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearPrivateClickMeasurementForRegistrableDomain(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11078E0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearPrivateClickMeasurementForRegistrableDomain(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(void *a1)
{
  v2 = *(a1[1] + 16);
  if (v2)
  {
    ++*(v2 + 104);
    v3 = a1[3];
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      v8 = v3;
      v9 = 1;
      WebKit::PCM::Database::clearPrivateClickMeasurement(v2, &v8);
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v4);
      }
    }

    else
    {
      v8 = 0;
      v9 = 1;
      WebKit::PCM::Database::clearPrivateClickMeasurement(v2, &v8);
    }

    if (*(v2 + 104) == 1)
    {
      (*(*v2 + 64))(v2);
    }

    else
    {
      --*(v2 + 104);
    }
  }

  v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 4, &v7);
  WTF::RunLoop::mainSingleton(v5);
  WTF::RunLoop::dispatch();
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearExpiredPrivateClickMeasurement(void)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107908;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearExpiredPrivateClickMeasurement(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107908;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearExpiredPrivateClickMeasurement(void)::$_0,void>::call(uint64_t result)
{
  v1 = *(*(result + 8) + 16);
  if (v1)
  {
    ++*(v1 + 104);
    result = WebKit::PCM::Database::clearExpiredPrivateClickMeasurement(v1);
    if (*(v1 + 104) == 1)
    {
      v2 = *(*v1 + 64);

      return v2(v1);
    }

    else
    {
      --*(v1 + 104);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearSentAttribution(WebCore::PrivateClickMeasurement &&,WebCore::PCM::AttributionReportEndpoint)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107930;
  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 3), a2);
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearSentAttribution(WebCore::PrivateClickMeasurement &&,WebCore::PCM::AttributionReportEndpoint)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1107930;
  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::clearSentAttribution(WebCore::PrivateClickMeasurement &&,WebCore::PCM::AttributionReportEndpoint)::$_0,void>::call(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 8) + 16);
  if (!v1)
  {
    return;
  }

  ++*(v1 + 104);
  v3 = *(a1 + 336);
  v4 = WebKit::PCM::Database::domainID(v1, (a1 + 32));
  v5 = WebKit::PCM::Database::domainID(v1, (a1 + 40)) >> 32;
  if (HIDWORD(v4))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  WebKit::DatabaseUtilities::scopedStatement(v1, (v1 + 176), "earliestTimesToSend", v26);
  if (!*v26 || WebCore::SQLiteStatement::bindInt(*v26) || WebCore::SQLiteStatement::bindInt(*v26) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(*v26) != 100)
  {
    v11 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v1 + 16));
      *buf = 136446210;
      v30 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Database::earliestTimesToSend, error message: %{public}s", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_20;
  }

  WebCore::SQLiteStatement::columnDouble(*v26);
  v7 = v9 > 0.0;
  if (v9 > 0.0)
  {
    WebCore::SQLiteStatement::columnDouble(*v26);
  }

  WebCore::SQLiteStatement::columnDouble(*v26);
  if (v10 <= 0.0)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  v8 = 1;
  WebCore::SQLiteStatement::columnDouble(*v26);
LABEL_21:
  MEMORY[0x19EB0CD50](v26);
LABEL_22:
  v12 = WebKit::PCM::Database::domainID(v1, (a1 + 32));
  v13 = WebKit::PCM::Database::domainID(v1, (a1 + 40));
  v15 = *(a1 + 328);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  if (HIDWORD(v12))
  {
    v16 = HIDWORD(v13) == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_29;
  }

  if (v3)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_29;
    }

    WebKit::DatabaseUtilities::scopedStatement(v1, (v1 + 192), "markReportAsSentToDestination", v26);
    if (!*v26 || WebCore::SQLiteStatement::bindInt(*v26) || WebCore::SQLiteStatement::bindInt(*v26) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(*v26) != 101)
    {
      v17 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        v23 = WebCore::SQLiteDatabase::lastErrorMsg((v1 + 16));
        *buf = 136446210;
        v30 = v23;
        _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Database::markReportAsSentToDestination, error message: %{public}s", buf, 0xCu);
      }
    }

    MEMORY[0x19EB0CD50](v26);
    if (v7)
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

    WebKit::DatabaseUtilities::scopedStatement(v1, (v1 + 184), "markReportAsSentToSource", v26);
    if (!*v26 || WebCore::SQLiteStatement::bindInt(*v26) || WebCore::SQLiteStatement::bindInt(*v26) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(*v26) != 101)
    {
      v18 = qword_1ED640FE0;
      if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
      {
        v24 = WebCore::SQLiteDatabase::lastErrorMsg((v1 + 16));
        *buf = 136446210;
        v30 = v24;
        _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Database::markReportAsSentToSource, error message: %{public}s", buf, 0xCu);
      }
    }

    MEMORY[0x19EB0CD50](v26);
    if (v8)
    {
      goto LABEL_29;
    }
  }

  WebCore::SQLiteDatabase::prepareStatement();
  if (v31)
  {
    goto LABEL_63;
  }

  v19 = WebCore::SQLiteStatement::bindInt(buf);
  if (v19)
  {
    goto LABEL_63;
  }

  if (v31)
  {
    goto LABEL_70;
  }

  v19 = WebCore::SQLiteStatement::bindInt(buf);
  if (v19)
  {
    goto LABEL_63;
  }

  if (v31)
  {
    goto LABEL_70;
  }

  v19 = WebCore::SQLiteStatement::bindText();
  if (v19)
  {
    goto LABEL_63;
  }

  if (v31)
  {
LABEL_70:
    mpark::throw_bad_variant_access(v19);
  }

  if (WebCore::SQLiteStatement::step(buf) != 101)
  {
LABEL_63:
    v20 = qword_1ED640FE0;
    if (os_log_type_enabled(qword_1ED640FE0, OS_LOG_TYPE_ERROR))
    {
      v22 = WebCore::SQLiteDatabase::lastErrorMsg((v1 + 16));
      *v26 = 134218243;
      *&v26[4] = v1;
      v27 = 2081;
      v28 = v22;
      _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "%p - Database::clearSentAttribution failed to step, error message: %{private}s", v26, 0x16u);
    }
  }

  if (!v31)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(buf);
  }

LABEL_29:
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  if (*(v1 + 104) == 1)
  {
    v25 = *(*v1 + 64);

    v25(v1);
  }

  else
  {
    --*(v1 + 104);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::close(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1107958;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::close(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1107958;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::PCM::PersistentStore::close(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v3)
  {
    if (v3[26] == 1)
    {
      (*(*v3 + 64))(v3);
    }

    else
    {
      --v3[26];
    }
  }

  v4 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 24), &v6);
  WTF::RunLoop::mainSingleton(v4);
  WTF::RunLoop::dispatch();
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void WebKit::createItemRecursive(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 29)];
  v7 = *(a1 + 29);
  if (v7)
  {
    v8 = *(a1 + 13);
    v9 = 120 * v7;
    do
    {
      WebKit::createItemRecursive(&v75, v8, a2);
      v10 = v75;
      if (v75)
      {
        [v6 addObject:v75];
      }

      v8 += 120;
      v9 -= 120;
    }

    while (v9);
  }

  LODWORD(v75) = (*(**a2 + 16))(*a2, a1 + 88);
  HIDWORD(v75) = v11;
  v76 = v13;
  v77 = v14;
  v15 = a1[80];
  if (v15 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = a1[80];
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      if (v15 == 2)
      {
        v21 = [WKTextExtractionScrollableItem alloc];
        WebCore::FloatSize::operator CGSize();
        v23 = v22;
        v25 = v24;
        WebCore::FloatRect::operator CGRect();
        v20 = [(WKTextExtractionScrollableItem *)v21 initWithContentSize:v6 rectInWebView:v23 children:v25, v26, v27, v28, v29];
LABEL_19:
        *a3 = v20;
        goto LABEL_78;
      }

LABEL_82:
      mpark::throw_bad_variant_access(v12);
    }

    if (v15 != 3)
    {
      goto LABEL_82;
    }

    v41 = [WKTextExtractionImageItem alloc];
    v42 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v79, v42);
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v43);
      }
    }

    else
    {
      v79 = &stru_1F1147748;
      v45 = &stru_1F1147748;
    }

    v46 = v79;
    v47 = *(a1 + 1);
    if (v47)
    {
      atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v78, v47);
      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v48);
      }
    }

    else
    {
      v78 = &stru_1F1147748;
      v49 = &stru_1F1147748;
    }

    v50 = v78;
    WebCore::FloatRect::operator CGRect();
    *a3 = [(WKTextExtractionImageItem *)v41 initWithName:v46 altText:v50 rectInWebView:v6 children:?];
    v51 = v78;
    v78 = 0;
    if (v51)
    {
    }

    v52 = v79;
    v79 = 0;
    if (v52)
    {
    }
  }

  else
  {
    if (!v16)
    {
      if (!a1[80])
      {
        v17 = *a1;
        v18 = [WKTextExtractionContainerItem alloc];
        WebCore::FloatRect::operator CGRect();
        if (((v17 - 1) & 0xF8) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = (v17 - 1) + 1;
        }

        v20 = [(WKTextExtractionContainerItem *)v18 initWithContainer:v19 rectInWebView:v6 children:?];
        goto LABEL_19;
      }

      goto LABEL_82;
    }

    if (v15 != 1)
    {
      goto LABEL_82;
    }

    WebCore::FloatRect::operator CGRect();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    if (a1[72] == 1)
    {
      v12 = [WKTextExtractionEditable alloc];
      if ((a1[72] & 1) == 0)
      {
        goto LABEL_81;
      }

      v38 = v12;
      v39 = *(a1 + 6);
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
        v12 = MEMORY[0x19EB00B70](&v79, v39);
        if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v12 = WTF::StringImpl::destroy(v39, v40);
        }
      }

      else
      {
        v79 = &stru_1F1147748;
        v12 = &stru_1F1147748;
      }

      if ((a1[72] & 1) == 0)
      {
        goto LABEL_81;
      }

      v53 = v79;
      v54 = *(a1 + 7);
      if (v54)
      {
        atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
        v12 = MEMORY[0x19EB00B70](&v78, v54);
        if (atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v12 = WTF::StringImpl::destroy(v54, v55);
        }
      }

      else
      {
        v78 = &stru_1F1147748;
        v12 = &stru_1F1147748;
      }

      if ((a1[72] & 1) == 0)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v44 = [(mpark *)v38 initWithLabel:v53 placeholder:v78 isSecure:a1[64] isFocused:a1[65]];
      v56 = v78;
      v78 = 0;
      if (v56)
      {
      }

      v57 = v79;
      v79 = 0;
      if (v57)
      {
      }
    }

    else
    {
      v44 = 0;
    }

    if ((a1[32] & 1) == 0)
    {
      goto LABEL_55;
    }

    v59 = *(a1 + 2);
    v58 = *(a1 + 3);
    v60 = *(a1 + 5);
    if (v60)
    {
      v60 = *(v60 + 4);
    }

    if (v58 + v59 > v60)
    {
LABEL_55:
      v58 = 0;
      v59 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 3)];
    v62 = *(a1 + 3);
    if (v62)
    {
      v63 = *a1;
      v64 = 56 * v62;
      do
      {
        v65 = *(a1 + 5);
        if (v65)
        {
          v65 = *(v65 + 4);
        }

        if (*(v63 + 6) + *(v63 + 5) <= v65)
        {
          WTF::URL::createCFURL(&v79, v63);
          if (v79)
          {
            v66 = [WKTextExtractionLink alloc];
            v67 = [(WKTextExtractionLink *)v66 initWithURL:v79 range:*(v63 + 5), *(v63 + 6)];
            v68 = v79;
            v79 = 0;
            if (v68)
            {
            }

            if (v67)
            {
              [v61 addObject:v67];
            }
          }
        }

        v63 = (v63 + 56);
        v64 -= 56;
      }

      while (v64);
    }

    v69 = [WKTextExtractionTextItem alloc];
    v70 = *(a1 + 5);
    if (v70)
    {
      atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v79, v70);
      if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, v71);
      }
    }

    else
    {
      v79 = &stru_1F1147748;
      v72 = &stru_1F1147748;
    }

    v73 = [(WKTextExtractionTextItem *)v69 initWithContent:v79 selectedRange:v59 links:v58 editable:v61 rectInWebView:v44 children:v6, v31, v33, v35, v37];
    v74 = v79;
    v79 = 0;
    if (v74)
    {
    }

    if (v61)
    {
    }

    if (v44)
    {
    }

    *a3 = v73;
  }

LABEL_78:
  if (v6)
  {
  }
}

void sub_19DD6479C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
  }

  if (v14)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DD6541C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, id location)
{
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(&location, a2);
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v30);
  }

  if (v26)
  {
  }

  v31 = *(v28 - 104);
  *(v28 - 104) = 0;
  if (v31)
  {
  }

  if (a23)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DD6567C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26 - 104, a2);
  if (v25)
  {
  }

  if (a25)
  {

    if (a21)
    {

      if (!a19)
      {
        JUMPOUT(0x19DD65640);
      }

      JUMPOUT(0x19DD6563CLL);
    }

    JUMPOUT(0x19DD65638);
  }

  JUMPOUT(0x19DD65634);
}

void sub_19DD65690(uint64_t a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27 - 104, a2);
  if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v28);
    if (!v25)
    {
LABEL_6:
      if (a25)
      {

        if (a21)
        {

          if (!a19)
          {
            JUMPOUT(0x19DD65640);
          }

          JUMPOUT(0x19DD6563CLL);
        }

        JUMPOUT(0x19DD65638);
      }

      JUMPOUT(0x19DD65634);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  goto LABEL_6;
}

void sub_19DD656B8(uint64_t a1, void *a2)
{
  v4 = *(v3 - 112);
  *(v3 - 112) = 0;
  if (v4)
  {
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 - 104, a2);
  if (v2)
  {
    JUMPOUT(0x19DD65738);
  }

  JUMPOUT(0x19DD65748);
}

void sub_19DD656C8()
{
  if (!v1 || atomic_fetch_add_explicit(v1, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (v0)
    {
      JUMPOUT(0x19DD6574CLL);
    }

    JUMPOUT(0x19DD65750);
  }

  JUMPOUT(0x19DD65774);
}

void sub_19DD656E0(int a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, a2);
  }

  JUMPOUT(0x19DD6572CLL);
}

void sub_19DD65704()
{
  if (v0)
  {
  }

  JUMPOUT(0x19DD6571CLL);
}

void sub_19DD65C3C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  std::experimental::fundamentals_v3::expected<WebCore::DigitalCredentialsResponseData,WebCore::ExceptionData>::~expected(&a14, a2);
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v17);
  }

  if (v14)
  {
  }

  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, v17);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DD661A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13, char a14)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (v15)
  {
  }

  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::makeString<WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a5;
  v9[1] = a6;
  result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(a1, v10, a4, v9, a7);
  if (!*a7)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::UIGamepadProvider::platformSetDefaultGamepadProvider(WebKit::UIGamepadProvider *this)
{
  v1 = WebCore::GamepadProvider::singleton(this);
  result = (*(*v1 + 40))(v1);
  if ((result & 1) == 0)
  {
    v3 = WebCore::GameControllerGamepadProvider::singleton(result);

    return WebCore::GamepadProvider::setSharedProvider(v3, v4);
  }

  return result;
}

uint64_t WebKit::UIGamepadProvider::platformWebPageProxyForGamepadInput(WebKit::UIGamepadProvider *this)
{
  v1 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 page];
}

void sub_19DD667C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DD66A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void layerPathWithHole(CAShapeLayer *a1, const WebCore::FloatQuad *a2, const WebCore::FloatQuad *this)
{
  v6 = *a2 == *this && *(a2 + 1) == *(this + 1);
  if (v6 && (*(a2 + 2) == *(this + 2) ? (v7 = *(a2 + 3) == *(this + 3)) : (v7 = 0), v7 && (*(a2 + 4) == *(this + 4) ? (v8 = *(a2 + 5) == *(this + 5)) : (v8 = 0), v8 && (*(a2 + 6) == *(this + 6) ? (v9 = *(a2 + 7) == *(this + 7)) : (v9 = 0), v9))) || WebCore::FloatQuad::containsQuad(this, a2))
  {

    [(CAShapeLayer *)a1 setPath:0];
  }

  else
  {
    if (WebCore::FloatQuad::containsQuad(a2, this))
    {
      v10 = *this;
      v11 = *(this + 1);
      v12 = *(this + 2);
      v13 = *(this + 3);
      v14 = *(this + 4);
      v15 = *(this + 5);
      v16 = *(this + 6);
      v17 = *(this + 7);
    }

    else
    {
      v18 = *(a2 + 1);
      v38 = *a2;
      v39 = v18;
      v19 = *(this + 1);
      v36 = *this;
      v37 = v19;
      v42 = 0;
      *v43 = 0;
      v40 = 0;
      v41 = 0;
      v21 = WebCore::FloatQuad::containsPoint(&v38, &v36);
      v35 = a1;
      if (v21 || (findIntersectionOnLineBetweenPoints(&v38, (&v38 + 8), &v36, (&v37 + 8), v43, v20) & 1) == 0)
      {
        v22 = 0;
        *v43 = v36;
      }

      else
      {
        v22 = 1;
      }

      v24 = WebCore::FloatQuad::containsPoint(&v38, (&v36 + 8));
      if (v24 || (findIntersectionOnLineBetweenPoints(&v38, (&v38 + 8), (&v36 + 8), &v37, &v42, v23) & 1) == 0)
      {
        v25 = 0;
        v42 = *(&v36 + 1);
      }

      else
      {
        v25 = 1;
      }

      v27 = WebCore::FloatQuad::containsPoint(&v38, &v37);
      if (v27 || (findIntersectionOnLineBetweenPoints((&v39 + 8), &v39, (&v36 + 8), &v37, &v41, v26) & 1) == 0)
      {
        v28 = 0;
        v41 = v37;
      }

      else
      {
        v28 = 1;
      }

      v30 = WebCore::FloatQuad::containsPoint(&v38, (&v37 + 8));
      if (v30 || (findIntersectionOnLineBetweenPoints((&v39 + 8), &v39, &v36, (&v37 + 8), &v40, v29) & 1) == 0)
      {
        v31 = 0;
        v40 = *(&v37 + 1);
      }

      else
      {
        v31 = 1;
      }

      v32 = v22;
      v33 = v22 | v21 | v25 ^ 1;
      a1 = v35;
      if (v33)
      {
        if (((v24 | v32 ^ 1 | v25) & 1) == 0)
        {
          v42 = *(&v38 + 1);
          v24 = 1;
        }
      }

      else
      {
        *v43 = v38;
        v21 = 1;
      }

      if ((v30 | v28 ^ 1 | v31))
      {
        if (((v28 | v31 ^ 1 | v27) & 1) == 0)
        {
          v41 = v39;
          v27 = 1;
        }
      }

      else
      {
        v40 = *(&v39 + 1);
        v30 = 1;
      }

      if (((v25 | v24) & 1) == 0)
      {
        findIntersectionOnLineBetweenPoints((&v38 + 8), &v39, v43, &v42, &v42, v29);
      }

      if (((v28 | v27) & 1) == 0)
      {
        findIntersectionOnLineBetweenPoints((&v38 + 8), &v39, &v40, &v41, &v41, v29);
      }

      if (((v32 | v21) & 1) == 0)
      {
        findIntersectionOnLineBetweenPoints(&v38, (&v39 + 8), v43, &v42, v43, v29);
      }

      if (((v31 | v30) & 1) == 0)
      {
        findIntersectionOnLineBetweenPoints(&v38, (&v39 + 8), &v40, &v41, &v40, v29);
      }

      v11 = v43[1];
      v10 = v43[0];
      v13 = *(&v42 + 1);
      v12 = *&v42;
      v15 = *(&v41 + 1);
      v14 = *&v41;
      v17 = *(&v40 + 1);
      v16 = *&v40;
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v10, v11);
    CGPathAddLineToPoint(Mutable, 0, v12, v13);
    CGPathAddLineToPoint(Mutable, 0, v14, v15);
    CGPathAddLineToPoint(Mutable, 0, v16, v17);
    CGPathMoveToPoint(Mutable, 0, *a2, *(a2 + 1));
    CGPathAddLineToPoint(Mutable, 0, *(a2 + 6), *(a2 + 7));
    CGPathAddLineToPoint(Mutable, 0, *(a2 + 4), *(a2 + 5));
    CGPathAddLineToPoint(Mutable, 0, *(a2 + 2), *(a2 + 3));
    [(CAShapeLayer *)a1 setPath:Mutable];
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void sub_19DD66EA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void layerPath(CAShapeLayer *a1, const WebCore::FloatQuad *a2)
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, *a2, *(a2 + 1));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 6), *(a2 + 7));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 4), *(a2 + 5));
  CGPathAddLineToPoint(Mutable, 0, *(a2 + 2), *(a2 + 3));
  CGPathCloseSubpath(Mutable);
  [(CAShapeLayer *)a1 setPath:Mutable];
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void sub_19DD66F84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DD670D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DD67C68(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  v6 = v3[6];
  if (v6)
  {
    v3[6] = 0;
    *(v3 + 14) = 0;
    WTF::fastFree(v6, v5);
  }

  v7 = v3[4];
  if ((v7 & 0x8000000000000) != 0)
  {
    v12 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v5);
    }
  }

  v8 = v3[3];
  if ((v8 & 0x8000000000000) != 0)
  {
    v13 = (v8 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v5);
    }
  }

  v9 = v3[2];
  if ((v9 & 0x8000000000000) != 0)
  {
    v14 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v5);
    }
  }

  v10 = v3[1];
  if ((v10 & 0x8000000000000) != 0)
  {
    v15 = (v10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15);
      WTF::fastFree(v15, v5);
    }
  }

  v11 = *v3;
  if ((*v3 & 0x8000000000000) != 0)
  {
    v16 = (v11 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v5);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebCore::CertificateInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (!(v3 >> 29))
  {
    v5 = WTF::fastMalloc((8 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = v5;
      v8 = *a2;
      v9 = 8 * v6;
      do
      {
        v10 = *v8;
        *v7 = *v8;
        if (v10)
        {
          CFRetain(v10);
        }

        ++v7;
        ++v8;
        v9 -= 8;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD67ECC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ISO18013PresentmentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (v3 < 0xAAAAAAB)
  {
    v5 = 24 * v3;
    v6 = WTF::fastMalloc((24 * v3));
    *(v2 + 8) = v5 / 0x18;
    *v2 = v6;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = v6 + 8;
      v9 = 24 * v7;
      v10 = *a2 + 8;
      do
      {
        *(v8 - 8) = *(v10 - 8);
        v8 = WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v8, v10) + 24;
        v10 += 24;
        v9 -= 24;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD67FAC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ISO18013DocumentRequestSet,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (!(v3 >> 28))
  {
    v5 = WTF::fastMalloc((16 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 12);
    if (v6)
    {
      v7 = *a2;
      v8 = 16 * v6;
      do
      {
        v5 = WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, v7) + 16;
        v7 += 2;
        v8 -= 16;
      }

      while (v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD68054(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::ISO18013DocumentRequest,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0xAAAAAAB)
  {
    v5 = 24 * v3;
    v6 = WTF::fastMalloc((24 * v3));
    *(v2 + 8) = v5 / 0x18;
    *v2 = v6;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = *a2;
      v9 = v6 + 8;
      v10 = 24 * v7;
      v11 = v8 + 8;
      do
      {
        v12 = *(v11 - 8);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        *(v9 - 8) = v12;
        WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v9, v11);
        v9 += 24;
        v11 += 24;
        v10 -= 24;
      }

      while (v10);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD6814C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = *(v3 - 8);
  *(v3 - 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (v3 < 0xAAAAAAB)
  {
    v5 = 24 * v3;
    v6 = WTF::fastMalloc((24 * v3));
    *(v2 + 8) = v5 / 0x18;
    *v2 = v6;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = *a2;
      v9 = 24 * v7;
      do
      {
        v6 = std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100](v6, v8) + 3;
        v8 += 24;
        v9 -= 24;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD6823C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **std::pair<WTF::String,WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::pair[abi:sn200100](atomic_uint **a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a1 = v3;
  WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 1), (a2 + 8));
  return a1;
}

void sub_19DD682A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::pair<WTF::String,WebCore::ISO18013ElementInfo>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *(a2 + 3);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 28))
  {
    v5 = WTF::fastMalloc((16 * v3));
    *(v2 + 8) = v3;
    *v2 = v5;
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *a2;
      v8 = *a2 + 16 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        }

        *v5 = v9;
        *(v5 + 8) = *(v7 + 8);
        v5 += 16;
        v7 += 16;
      }

      while (v7 != v8);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t findIntersectionOnLineBetweenPoints(const WebCore::FloatPoint *a1, const WebCore::FloatPoint *a2, const WebCore::FloatPoint *a3, const WebCore::FloatPoint *a4, WebCore::FloatPoint *a5, WebCore::FloatPoint *a6)
{
  v18 = 0;
  result = WebCore::findIntersection(a1, a2, a3, a4, &v18, a6);
  if (result)
  {
    v10 = *a1;
    v11 = *a2;
    if (*a1 >= *a2)
    {
      if (*&v18 <= v10 && *&v18 >= v11)
      {
LABEL_13:
        v14 = *(a1 + 1);
        v15 = *(a2 + 1);
        if (v14 >= v15)
        {
          if (*(&v18 + 1) <= v14 && *(&v18 + 1) >= v15)
          {
            goto LABEL_18;
          }
        }

        else if (*(&v18 + 1) <= v15 && *(&v18 + 1) >= v14)
        {
LABEL_18:
          *a5 = v18;
          return 1;
        }
      }
    }

    else if (*&v18 <= v11 && *&v18 >= v10)
    {
      goto LABEL_13;
    }

    return 0;
  }

  return result;
}

WebCore::InspectorOverlayHighlight::GridHighlightOverlay *WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(WebCore::InspectorOverlayHighlight::GridHighlightOverlay *this, const GridHighlightOverlay *a2)
{
  v4 = *a2;
  *this = *a2;
  if ((v4 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v5 = *(a2 + 5);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 5) = v5;
  if (v5)
  {
    if (v5 >= 0xCCCCCCD)
    {
      goto LABEL_16;
    }

    v6 = 20 * v5;
    v7 = WTF::fastMalloc((20 * v5));
    *(this + 4) = v6 / 0x14;
    *(this + 1) = v7;
    v8 = *(a2 + 5);
    if (v8)
    {
      v9 = *(a2 + 1);
      v10 = 20 * v8;
      do
      {
        v11 = *v9;
        *(v7 + 16) = *(v9 + 4);
        *v7 = v11;
        v7 += 20;
        v9 = (v9 + 20);
        v10 -= 20;
      }

      while (v10);
    }
  }

  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 24, a2 + 24);
  v12 = *(a2 + 13);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 13) = v12;
  if (!v12)
  {
    goto LABEL_15;
  }

  if (v12 >= 0x6666667)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19DD68630);
  }

  v13 = 40 * v12;
  v14 = WTF::fastMalloc((40 * v12));
  *(this + 12) = v13 / 0x28;
  *(this + 5) = v14;
  v15 = *(a2 + 13);
  if (v15)
  {
    v16 = *(a2 + 5);
    v17 = v16 + 40 * v15;
    do
    {
      v18 = *v16;
      if (*v16)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      *v14 = v18;
      v19 = *(v16 + 8);
      *(v14 + 24) = *(v16 + 24);
      *(v14 + 8) = v19;
      v14 += 40;
      v16 += 40;
    }

    while (v16 != v17);
  }

LABEL_15:
  WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 56, a2 + 56);
  return this;
}

void sub_19DD6863C(_Unwind_Exception *exception_object, void *a2)
{
  v5 = v2[3];
  if (v5)
  {
    v2[3] = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *v3;
  if (*v3)
  {
    v2[1] = 0;
    *(v2 + 4) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *v2;
  if ((*v2 & 0x8000000000000) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
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

  if (v3 < 0x6666667)
  {
    v5 = 40 * v3;
    v6 = WTF::fastMalloc((40 * v3));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel>::uninitializedCopy(*a2, *a2 + 40 * *(a2 + 12), v6);
    return v2;
  }

  __break(0xC471u);
  return result;
}

void sub_19DD68754(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel>::uninitializedCopy(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = *(v5 + v6 + 12);
      v9 = a3 + v6;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 12) = v8;
      if (v8)
      {
        if (v8 >> 27)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD68854);
        }

        v10 = WTF::fastMalloc((32 * v8));
        v11 = a3 + v6;
        *(v11 + 8) = v8;
        *v11 = v10;
        result = WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel::Content>::uninitializedCopy(*v7, *v7 + 32 * *(v7 + 12), v10);
      }

      *(v9 + 16) = *(v7 + 16);
      v12 = *(v7 + 24);
      *(v9 + 24) = v12;
      if ((v12 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 1u);
      }

      *(a3 + v6 + 32) = *(v5 + v6 + 32);
      v6 += 40;
    }

    while (v5 + v6 != a2);
  }

  return result;
}

uint64_t WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel::Content>::uninitializedCopy(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; result != a2; result += 32)
  {
    v3 = *result;
    if (*result)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    v4 = *(result + 8);
    *a3 = v3;
    *(a3 + 8) = v4;
    if ((v4 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 1u);
    }

    *(a3 + 16) = *(result + 16);
    v5 = *(result + 24);
    *(a3 + 24) = v5;
    if ((v5 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 1u);
    }

    a3 += 32;
  }

  return result;
}

WebCore::InspectorOverlayHighlight::FlexHighlightOverlay *WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(WebCore::InspectorOverlayHighlight::FlexHighlightOverlay *this, const FlexHighlightOverlay *a2)
{
  v4 = *a2;
  *this = *a2;
  if ((v4 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v5 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v5;
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 40, a2 + 40);
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 56, a2 + 56);
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 72, a2 + 72);
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 88, a2 + 88);
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 104, a2 + 104);
  WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 120, a2 + 120);
  return this;
}

void sub_19DD68960(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v2[13];
  if (v4)
  {
    v2[13] = 0;
    *(v2 + 28) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = v2[11];
  if (v5)
  {
    v2[11] = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = v2[9];
  if (v6)
  {
    v2[9] = 0;
    *(v2 + 20) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = v2[7];
  if (v7)
  {
    v2[7] = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v7, a2);
  }

  v8 = v2[5];
  if (v8)
  {
    v2[5] = 0;
    *(v2 + 12) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *v2;
  if ((*v2 & 0x8000000000000) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, unsigned int *a2)
{
  if (a2 != a1)
  {
    v4 = a1[3];
    v5 = a2[3];
    if (v4 <= v5)
    {
      if (v5 > a1[2])
      {
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, a2[3]);
        v4 = a1[3];
      }
    }

    else
    {
      WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel>::destruct(*a1 + 40 * v5, (*a1 + 40 * v4));
      a1[3] = v5;
      v4 = v5;
    }

    v6 = *a2;
    v7 = *a1;
    if (v4)
    {
      v8 = &v6[5 * v4];
      do
      {
        if (v6 != v7)
        {
          v9 = *(v7 + 12);
          v10 = *(v6 + 3);
          if (v9 <= v10)
          {
            if (v10 > *(v7 + 8))
            {
              WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v7, 0);
              WTF::Vector<WebCore::InspectorOverlayLabel::Content,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v7, *(v6 + 3));
              v9 = *(v7 + 12);
            }
          }

          else
          {
            WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel::Content>::destruct((*v7 + 32 * v10), (*v7 + 32 * v9));
            *(v7 + 12) = v10;
            v9 = v10;
          }

          v11 = *v6;
          v12 = *v7;
          if (v9)
          {
            v13 = 32 * v9;
            do
            {
              WTF::String::operator=(v12, v11);
              v15 = *(v12 + 8);
              if (v15 != *(v11 + 8))
              {
                if ((v15 & 0x8000000000000) != 0)
                {
                  v19 = (v15 & 0xFFFFFFFFFFFFLL);
                  if (atomic_fetch_add((v15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v19);
                    WTF::fastFree(v19, v14);
                  }
                }

                v16 = *(v11 + 8);
                *(v12 + 8) = v16;
                if ((v16 & 0x8000000000000) != 0)
                {
                  atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 1u);
                }
              }

              *(v12 + 16) = *(v11 + 16);
              v17 = *(v12 + 24);
              if (v17 != *(v11 + 24))
              {
                if ((v17 & 0x8000000000000) != 0)
                {
                  v20 = (v17 & 0xFFFFFFFFFFFFLL);
                  if (atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v20);
                    WTF::fastFree(v20, v14);
                  }
                }

                v18 = *(v11 + 24);
                *(v12 + 24) = v18;
                if ((v18 & 0x8000000000000) != 0)
                {
                  atomic_fetch_add((v18 & 0xFFFFFFFFFFFFLL), 1u);
                }
              }

              v11 += 32;
              v12 += 32;
              v13 -= 32;
            }

            while (v13);
            v11 = *v6;
            v9 = *(v7 + 12);
            v12 = *v7;
          }

          WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel::Content>::uninitializedCopy(v11 + 32 * v9, v11 + 32 * *(v6 + 3), v12 + 32 * v9);
          *(v7 + 12) = *(v6 + 3);
        }

        *(v7 + 16) = v6[2];
        v21 = *(v7 + 24);
        if (v21 != v6[3])
        {
          if ((v21 & 0x8000000000000) != 0)
          {
            v23 = (v21 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v23);
              WTF::fastFree(v23, a2);
            }
          }

          v22 = v6[3];
          *(v7 + 24) = v22;
          if ((v22 & 0x8000000000000) != 0)
          {
            atomic_fetch_add((v22 & 0xFFFFFFFFFFFFLL), 1u);
          }
        }

        *(v7 + 32) = *(v6 + 16);
        v6 += 5;
        v7 += 40;
      }

      while (v6 != v8);
      v6 = *a2;
      v24 = a1[3];
      v7 = *a1;
    }

    else
    {
      v24 = 0;
    }

    WTF::VectorTypeOperations<WebCore::InspectorOverlayLabel>::uninitializedCopy(&v6[5 * v24], &v6[5 * a2[3]], v7 + 40 * v24);
    a1[3] = a2[3];
  }

  return a1;
}

void sub_19DD68F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::tryMakeString<WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v15 = *a1;
  v5 = a2[1];
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v14[0] = *a2;
  v14[1] = v7;
  if (v7 >> 31)
  {
    goto LABEL_8;
  }

  v8 = *a3;
  v9 = a4[1];
  v6 = v9 != 0;
  v10 = v9 - 1;
  if (!v6)
  {
    v10 = 0;
  }

  v12[0] = *a4;
  v12[1] = v10;
  v13 = v8;
  if (v10 >> 31)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DD690D4);
  }

  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v15, v14, &v13, v12, a5);
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *result;
  if (*result)
  {
    v7 = *(v6 + 4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *a3;
  if (*a3)
  {
    v9 = *(v8 + 4);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 8);
  if (((v9 | v10) & 0x80000000) != 0 || ((v11 = *(a2 + 8), v12 = __OFADD__(v9, v10), v13 = v9 + v10, !v12) ? (v14 = 0) : (v14 = 1), (v11 & 0x80000000) != 0 || (v14 & 1) != 0 || ((v12 = __OFADD__(v11, v13), v15 = v11 + v13, !v12) ? (v16 = 0) : (v16 = 1), v7 < 0 || (v16 & 1) != 0 || (result = (v7 + v15), __OFADD__(v7, v15)))))
  {
    *a5 = 0;
  }

  else
  {
    v17 = (!v6 || (*(v6 + 16) & 4) != 0) && (!v8 || (*(v8 + 16) & 4) != 0);
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(result, v17, v6, *a2, v11, v8, *a4, v10, a5);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, int8x16_t *a4@<X3>, size_t a5@<X4>, _DWORD *a6@<X5>, _OWORD *a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = result;
  v17 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v18 = v51;
        if (!v51)
        {
          goto LABEL_41;
        }

        __n = a8;
        a8 = a9;
        *v51 = 2;
        v18[1] = v15;
        *(v18 + 1) = v18 + 5;
        v18[4] = 4;
        v50 = a3;
        result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v50, v18 + 20);
        v19 = v50;
        if (!v50 || (v19 = *(v50 + 4), v19 <= v15))
        {
          v20 = v17 - v19;
          v21 = v18 + v19 + 20;
          if (a5)
          {
            if (a5 == 1)
            {
              v19 = a4->u8[0];
              *v21 = v19;
            }

            else
            {
              result = memcpy(v18 + v19 + 20, a4, a5);
            }
          }

          if (v20 >= a5)
          {
            v22 = v20 - a5;
            a5 = &v21[a5];
            v51 = a6;
            result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v51, a5);
            v19 = v51;
            if (!v51)
            {
LABEL_43:
              a9 = a8;
LABEL_13:
              if (__n)
              {
                if (__n == 1)
                {
                  *(a5 + v19) = *a7;
                }

                else
                {
                  result = memcpy((a5 + v19), a7, __n);
                }
              }

              goto LABEL_41;
            }

            v19 = v51[1];
            a9 = a8;
            if (v22 >= v19)
            {
              goto LABEL_13;
            }
          }
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_18:
      v18 = 0;
      goto LABEL_41;
    }

LABEL_19:
    v18 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_41;
  }

  if (!result)
  {
    goto LABEL_19;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_18;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v18 = v51;
  if (!v51)
  {
    goto LABEL_41;
  }

  __n = a9;
  *v51 = 2;
  v18[1] = v15;
  *(v18 + 1) = v18 + 5;
  v18[4] = 0;
  v50 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v50, v18 + 20);
  v19 = v50;
  if (v50)
  {
    v24 = *(v50 + 4);
    if (v24 > v15)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v24 = 0;
  }

  v23 = v18 + 5;
  v19 = v18 + 2 * v24 + 20;
  if (a5 < 0x40)
  {
    v25 = v23 + 2 * v24;
  }

  else
  {
    v25 = (v19 + 2 * (a5 & 0x7FFFFFFFFFFFFFC0));
    v26 = 0uLL;
    v27 = v23 + 2 * v24;
    do
    {
      v52.val[0] = *a4;
      v28 = a4[1];
      v54.val[0] = a4[2];
      v29 = a4[3];
      a4 += 4;
      v30 = v29;
      v54.val[1] = 0uLL;
      v56.val[0] = v28;
      v52.val[1] = 0uLL;
      v31 = v27;
      vst2q_s8(v31, v52);
      v31 += 32;
      v56.val[1] = 0uLL;
      vst2q_s8(v31, v56);
      v32 = v27 + 64;
      vst2q_s8(v32, v54);
      v33 = v27 + 96;
      vst2q_s8(v33, *(&v26 - 1));
      v27 += 128;
    }

    while (v27 != v25);
  }

  v34 = v17 - v24;
  while (v25 != (v19 + 2 * a5))
  {
    v35 = a4->u8[0];
    a4 = (a4 + 1);
    *v25 = v35;
    v25 += 2;
  }

  if (v34 < a5)
  {
    goto LABEL_42;
  }

  v36 = a5;
  a5 = v34 - a5;
  v37 = (v19 + 2 * v36);
  v51 = a6;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v51, v37);
  v19 = v51;
  if (v51)
  {
    v19 = v51[1];
    if (a5 < v19)
    {
      goto LABEL_42;
    }
  }

  v38 = &v37[2 * v19];
  v39 = &v38[2 * a8];
  if (a8 < 0x40)
  {
    a9 = __n;
  }

  else
  {
    v40 = &v38[2 * (a8 & 0x7FFFFFFFFFFFFFC0)];
    v41 = 0uLL;
    a9 = __n;
    do
    {
      v53.val[0] = *a7;
      v42 = *(a7 + 1);
      v55.val[0] = a7[2];
      v43 = a7[3];
      a7 += 4;
      v44 = v43;
      v55.val[1] = 0uLL;
      v57.val[0] = v42;
      v53.val[1] = 0uLL;
      v45 = v38;
      vst2q_s8(v45, v53);
      v45 += 32;
      v57.val[1] = 0uLL;
      vst2q_s8(v45, v57);
      v46 = v38 + 64;
      vst2q_s8(v46, v55);
      v47 = v38 + 96;
      vst2q_s8(v47, *(&v41 - 1));
      v38 += 128;
    }

    while (v38 != v40);
    v38 = v40;
  }

  while (v38 != v39)
  {
    v48 = *a7;
    a7 = (a7 + 1);
    *v38 = v48;
    v38 += 2;
  }

LABEL_41:
  *a9 = v18;
  return result;
}

void sub_19DD694E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ServiceWorkerDownloadTask::~ServiceWorkerDownloadTask(WebKit::ServiceWorkerDownloadTask *this)
{
  *this = &unk_1F11079C8;
  v2 = (this + 552);
  *(this + 69) = &unk_1F1107A58;
  *(this + 70) = &unk_1F1107A80;
  WTF::FileSystemImpl::FileHandle::~FileHandle((this + 632));
  v4 = *(this + 78);
  *(this + 78) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v4);
  }

  v5 = *(this + 77);
  *(this + 77) = 0;
  if (v5 && atomic_fetch_add(v5 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 36);
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 72);
  *(this + 72) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v3);
  }

  *(this + 70) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 71, v3);
  WTF::FunctionDispatcher::~FunctionDispatcher(v2);

  WebKit::NetworkDataTask::~NetworkDataTask(this, v7);
}

{
  WebKit::ServiceWorkerDownloadTask::~ServiceWorkerDownloadTask(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::ServiceWorkerDownloadTask::~ServiceWorkerDownloadTask(WebKit::ServiceWorkerDownloadTask *this)
{
  WebKit::ServiceWorkerDownloadTask::~ServiceWorkerDownloadTask((this - 552));
}

{
  WebKit::ServiceWorkerDownloadTask::~ServiceWorkerDownloadTask((this - 560));
}

{
  WebKit::ServiceWorkerDownloadTask::~ServiceWorkerDownloadTask((this - 552));

  bmalloc::api::tzoneFree(v1, v2);
}

{
  WebKit::ServiceWorkerDownloadTask::~ServiceWorkerDownloadTask((this - 560));

  bmalloc::api::tzoneFree(v1, v2);
}

WebKit::ServiceWorkerDownloadTask *WebKit::ServiceWorkerDownloadTask::close(WebKit::ServiceWorkerDownloadTask *this)
{
  v1 = *(this + 72);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = this;
      ++*(v2 + 4);
      WebKit::WebSWServerToContextConnection::protectedIPCConnection(v2, &v7);
      v4 = v7;
      v5 = *(v3 + 75);
      if (v5)
      {
        v9 = *(v3 + 75);
        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }

      v8 = 395;
      v10 = v5;
      IPC::Connection::removeMessageReceiveQueue(v7, &v8);
      if (v4)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4);
      }

      WebKit::WebSWServerToContextConnection::unregisterDownload(v2, v3);
      this = *(v3 + 72);
      *(v3 + 72) = 0;
      if (this && atomic_fetch_add(this, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        this = WTF::fastFree(this, v6);
      }

      if (*(v2 + 4) == 1)
      {
        return (*(*v2 + 8))(v2);
      }

      else
      {
        --*(v2 + 4);
      }
    }
  }

  return this;
}

uint64_t WebKit::ServiceWorkerDownloadTask::dispatch(atomic_ullong *a1, uint64_t *a2)
{
  v4 = WebKit::serviceWorkerDownloadTaskQueueSingleton(a1);
  while (1)
  {
    v5 = a1[1];
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = a1[1];
    atomic_compare_exchange_strong_explicit(a1 + 1, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[1]);
LABEL_6:
  v7 = *a2;
  *a2 = 0;
  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F1107D38;
  v8[1] = a1;
  v8[2] = v7;
  v10 = v8;
  (*(*v4 + 48))(v4, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::serviceWorkerDownloadTaskQueueSingleton(WebKit *this)
{
  {
    return WebKit::serviceWorkerDownloadTaskQueueSingleton(void)::queue;
  }

  WTF::WorkQueue::create();
  result = v2;
  WebKit::serviceWorkerDownloadTaskQueueSingleton(void)::queue = v2;
  return result;
}

WebKit::ServiceWorkerDownloadTask *WebKit::ServiceWorkerDownloadTask::cancel(atomic_ullong *this)
{
  v2 = WebKit::serviceWorkerDownloadTaskQueueSingleton(this);
  while (1)
  {
    v3 = this[1];
    if ((v3 & 1) == 0)
    {
      break;
    }

    v4 = this[1];
    atomic_compare_exchange_strong_explicit(this + 1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(this[1]);
LABEL_6:
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F1107D60;
  v5[1] = this;
  v5[2] = this;
  v10[0] = v5;
  (*(*v2 + 48))(v2, v10);
  v6 = v10[0];
  v10[0] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = this[78];
  this[78] = 0;
  if (v7)
  {
    v8 = *(v7 + 2) - 1;
    *(v7 + 2) = v8;
    if (!v8)
    {
      *(*(v7 + 1) + 8) = 0;
      sandbox_extension_release();
    }

    WTF::RefCounted<WebKit::SandboxExtension>::deref(v7);
  }

  v10[0] = this + 74;
  v10[1] = this + 73;
  v10[2] = this + 75;
  WebKit::ServiceWorkerDownloadTask::sendToServiceWorker<Messages::WebSWContextManagerConnection::CancelFetch>(this, v10);
  *(this + 166) = 3;
  return WebKit::ServiceWorkerDownloadTask::close(this);
}

BOOL WebKit::ServiceWorkerDownloadTask::sendToServiceWorker<Messages::WebSWContextManagerConnection::CancelFetch>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 576);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  ++v3[4];
  WebKit::WebSWServerToContextConnection::protectedIPCConnection(v3, &v8);
  v5 = v8;
  v6 = IPC::Connection::send<Messages::WebSWContextManagerConnection::CancelFetch>(v8, a2, 0, 0, 0) == 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
  }

  if (v3[4] == 1)
  {
    (*(*v3 + 8))(v3);
  }

  else
  {
    --v3[4];
  }

  return v6;
}

WebKit::SandboxExtensionImpl *WebKit::ServiceWorkerDownloadTask::setPendingDownloadLocation(atomic_ullong *a1, atomic_uint **a2, uint64_t *a3, char a4)
{
  v5 = a1[2];
  if (v5 && *(v5 + 8))
  {
    v25 = 0;
    WTF::String::operator=(a1 + 15, a2);
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v25);
    v8 = 0;
    if (*a3)
    {
      v8 = WTF::fastMalloc(0x18);
      *v8 = 1;
      v9 = *a3;
      *a3 = 0;
      *(v8 + 8) = v9;
      *(v8 + 16) = 0;
    }

    v10 = a1[78];
    a1[78] = v8;
    if (v10)
    {
      v10 = WTF::RefCounted<WebKit::SandboxExtension>::deref(v10);
      v8 = a1[78];
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else if (!v8)
    {
      goto LABEL_7;
    }

    ++*v8;
    v24 = *(v8 + 16);
    *(v8 + 16) = v24 + 1;
    if (!v24)
    {
      WebKit::SandboxExtensionImpl::consume(*(v8 + 8));
    }

    v10 = WTF::RefCounted<WebKit::SandboxExtension>::deref(v8);
LABEL_7:
    v11 = WebKit::serviceWorkerDownloadTaskQueueSingleton(v10);
    v25 = a1;
    while (1)
    {
      v12 = a1[1];
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = a1[1];
      atomic_compare_exchange_strong_explicit(a1 + 1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[1]);
LABEL_12:
    v26 = a1;
    v27 = a4;
    WTF::String::isolatedCopy();
    v14 = WTF::fastMalloc(0x28);
    *v14 = &unk_1F1107DB0;
    *(v14 + 8) = v25;
    *(v14 + 16) = v26;
    *(v14 + 24) = v27;
    v15 = v28;
    v26 = 0;
    v28 = 0;
    v29 = v14;
    *(v14 + 32) = v15;
    (*(*v11 + 48))(v11, &v29);
    v17 = v29;
    v29 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    result = v28;
    v28 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v16);
    }

    v19 = v26;
    v26 = 0;
    if (v19)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v19 + 1);
    }

    return result;
  }

  v20 = WebKit::serviceWorkerDownloadTaskQueueSingleton(a1);
  while (1)
  {
    v21 = a1[1];
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = a1[1];
    atomic_compare_exchange_strong_explicit(a1 + 1, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v22 == v21)
    {
      goto LABEL_24;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a1[1]);
LABEL_24:
  v23 = WTF::fastMalloc(0x18);
  *v23 = &unk_1F1107D88;
  *(v23 + 1) = a1;
  *(v23 + 2) = a1;
  v25 = v23;
  (*(*v20 + 48))(v20, &v25);
  result = v25;
  v25 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}